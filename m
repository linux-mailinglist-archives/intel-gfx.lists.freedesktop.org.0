Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2333E7FC1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 19:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E42CC89F1B;
	Tue, 10 Aug 2021 17:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741B56E081;
 Tue, 10 Aug 2021 17:44:02 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id BB04A6120A;
 Tue, 10 Aug 2021 17:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1628617442;
 bh=1T/6Xo0twH7hiCGgekOpRE3hRSp1CaIe2VhKAXGYQsk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FWaxEIudwZLLtiKV71fvNYYXI42AEcpnXTb0C/kMmdWQiyh0OqdGP0biDC9xq4fKB
 Mnoo0WNSn6Sk5JgWhsOaza7oUjxUfJPUKvcahqUap+oCVRGv/8ny3gN91KbcJUQ7Lj
 N+2cs19XQq7fOInP+tEeGbfl0vGiaGYx0sPHm/6o=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Sasha Levin <sashal@kernel.org>
Date: Tue, 10 Aug 2021 19:29:27 +0200
Message-Id: <20210810173002.892794186@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210810173000.928681411@linuxfoundation.org>
References: <20210810173000.928681411@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5.13 059/175] drm/i915: fix i915_globals_exit()
 section mismatch error
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Randy Dunlap <rdunlap@infradead.org>

[ Upstream commit a07296453bf2778952a09b6244a695bf7607babb ]

Fix modpost Section mismatch error in i915_globals_exit().
Since both an __init function and an __exit function can call
i915_globals_exit(), any function that i915_globals_exit() calls
should not be marked as __init or __exit. I.e., it needs to be
available for either of them.

WARNING: modpost: vmlinux.o(.text+0x8b796a): Section mismatch in reference from the function i915_globals_exit() to the function .exit.text:__i915_globals_flush()
The function i915_globals_exit() references a function in an exit section.
Often the function __i915_globals_flush() has valid usage outside the exit section
and the fix is to remove the __exit annotation of __i915_globals_flush.

ERROR: modpost: Section mismatches detected.
Set CONFIG_SECTION_MISMATCH_WARN_ONLY=y to allow them.

Fixes: 1354d830cb8f ("drm/i915: Call i915_globals_exit() if pci_register_device() fails")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Dave Airlie <airlied@redhat.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20210804204147.2070-1-rdunlap@infradead.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/i915/i915_globals.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index e27739a50bee..57d2943884ab 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -139,7 +139,7 @@ void i915_globals_unpark(void)
 	atomic_inc(&active);
 }
 
-static void __exit __i915_globals_flush(void)
+static void  __i915_globals_flush(void)
 {
 	atomic_inc(&active); /* skip shrinking */
 
-- 
2.30.2



