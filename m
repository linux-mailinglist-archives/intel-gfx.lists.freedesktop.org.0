Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A121B9439
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 23:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC81D89F97;
	Sun, 26 Apr 2020 21:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com
 [IPv6:2607:f8b0:4864:20::b4a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA10389F97
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 21:42:24 +0000 (UTC)
Received: by mail-yb1-xb4a.google.com with SMTP id d206so18374307ybh.7
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 14:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=wP3YUSwt75lpebH/kLrQdqblssHhZZ89gAzPrZ9VKZs=;
 b=fG5gI4J7oDbK8qs78tZgGY0NlRU6gceYYgCJ0eoJqEZzSts21/GsCXHGIEajLEe8RM
 Z+9O8Tz6sDXSt8WAoEYiKxexdBnP6zHgKmOIhsm65DVRHBMZq2xg5l5+gLbjJq5LnBp8
 ZZbKoyPzNKR9uBYzWNh7SdQdLQXmoOIJOOBJcHdmQM3hzWSI9UF3UMl8222Dynxu5aNq
 BvDLcDhsmONYCp10xG0z3gUKrrmFyUEixlveJEeM24MVNrN70+khd1+xqoEjiCIyw66Q
 Ovywqm+KREClud//DTN73yY25tOlNOxGVcn0VF0tHbyvwXYm5MGwVmrGH9u63vE9sQuH
 vguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=wP3YUSwt75lpebH/kLrQdqblssHhZZ89gAzPrZ9VKZs=;
 b=H2X4ygLA2LNciKc+rE4pGW7BMFibUOHQjwnQchMTT/MFsWMukys8Z6g2055QTcSiLe
 xlJyJEGQ1zE1r71liyWrnLhCKbYus4df98XLn9SVbzm3/fd6CA8muXnhYodEhqB1q94k
 IEcQwyRtDPRoasL6OqbtsJCw/gEZzqKlk/sO+tuUa9wxEBEHgXaKx93+5qICcb40TrcM
 W9VD6hIRro7N/rggszRHOmqlFXiJuzzFFlfes+tUkLJ5zHYhQzLoj42ghP6rOmGCwvjV
 jj3OqkqvNDF7yAoJekNY3nUJfQHkA13h87XArb5QqPRVNlLzrwc8ntlidZ9IpkGfRTkR
 59VQ==
X-Gm-Message-State: AGi0PuanULt/ZRV5RXzkC9nbwPTnaWSvXlGSAWUeIuuxdyrIq1KtfJAZ
 jTyBuSr2jIHUQIQqfnX22kaYUYKVPhNJ5dE5UD0=
X-Google-Smtp-Source: APiQypKkUtSeaiUIVHxuzqmehWg/q5NMUry/6HHvoHkGlurMd144EQeQWrgree6KD13oOGVZbT0VX40GqJ1gqaig0cQ=
X-Received: by 2002:a25:bbd0:: with SMTP id c16mr31683706ybk.296.1587937343841; 
 Sun, 26 Apr 2020 14:42:23 -0700 (PDT)
Date: Sun, 26 Apr 2020 14:42:15 -0700
Message-Id: <20200426214215.139435-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
From: Nick Desaulniers <ndesaulniers@google.com>
To: jani.nikula@linux.intel.com, airlied@linux.ie, daniel@ffwll.ch
Subject: [Intel-gfx] [PATCH] drm/i915: re-disable -Wframe-address
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
Cc: intel-gfx@lists.freedesktop.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The top level Makefile disables this warning. When building an
i386_defconfig with Clang, this warning is triggered a whole bunch via
includes of headers from perf.

Link: https://github.com/ClangBuiltLinux/continuous-integration/pull/182
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/i915/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 6f112d8f80ca..8c2257437471 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -22,6 +22,7 @@ subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
 subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
 subdir-ccflags-y += $(call cc-disable-warning, uninitialized)
+subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
-- 
2.26.2.303.gf8c07b1a785-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
