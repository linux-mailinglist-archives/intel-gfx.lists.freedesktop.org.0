Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B85570B5E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 22:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF6F18A782;
	Mon, 11 Jul 2022 20:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59F614A105;
 Mon, 11 Jul 2022 20:25:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EAC69B81222;
 Mon, 11 Jul 2022 20:25:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 412D8C36AE2;
 Mon, 11 Jul 2022 20:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1657571123;
 bh=CrSqO3fSe6yf4vn/c0T/g27RToJEZxHW6YdBDF3Y6+8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XKbFDoARjJ3cHK5YZPFTNHu48QLFgCMqOjny9bdUSrRnxz6HZmXTILmOlYHKA3KqM
 NA1k/DgDsUST9fkNs6t3u5e7QZe0H1hfogETNcnvDBPYEoBeECWsTdsHT6AePfUCr1
 tNdZJTQ/HDwmxNZRHgZwg4nip4mirE475NWdcHK/FQOoVKt7WLYaC97VYN9Q2XLVho
 eWSzGWEeZYJmGcX1lfhF5k1g/SNENEIC9kWRgvBlwvpJ0T0PAd9KA1PQXkvmLoAKpM
 D/FNVi3pTp9IojpefVQY6G/H2IkgYI+BlK3Vziehzc3B99J/jtC2pnfsilltG03qZn
 JDmOQHo11/6ZQ==
Received: from mchehab by mail.kernel.org with local (Exim 4.95)
 (envelope-from <mchehab@kernel.org>) id 1oAzy3-004e8u-R1;
 Mon, 11 Jul 2022 21:25:19 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Date: Mon, 11 Jul 2022 21:25:10 +0100
Message-Id: <96fa00f5f2eff91926659e8367d61788e4385624.1657565224.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657565224.git.mchehab@kernel.org>
References: <cover.1657565224.git.mchehab@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 25/32] drm/i915: i915_deps: use a shorter title
 markup
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The DOC: tag waits for a one-line short title for the doc
section. Using multiple lines will produce a weird output.
So, add a shorter description for the title, while keeping
the current content below it.

Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH 00/32] at: https://lore.kernel.org/all/cover.1657565224.git.mchehab@kernel.org/

 drivers/gpu/drm/i915/i915_deps.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_deps.c b/drivers/gpu/drm/i915/i915_deps.c
index 297b8e4e42ee..df6af832e3f2 100644
--- a/drivers/gpu/drm/i915/i915_deps.c
+++ b/drivers/gpu/drm/i915/i915_deps.c
@@ -11,7 +11,9 @@
 #include "i915_deps.h"
 
 /**
- * DOC: Set of utilities to dynamically collect dependencies into a
+ * DOC: Utilities to collect dependencies for GT migration code
+ *
+ * Set of utilities to dynamically collect dependencies into a
  * structure which is fed into the GT migration code.
  *
  * Once we can do async unbinding, this is also needed to coalesce
-- 
2.36.1

