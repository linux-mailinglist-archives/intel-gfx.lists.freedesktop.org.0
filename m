Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2671CDD67
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 16:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CE089301;
	Mon, 11 May 2020 14:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com
 [IPv6:2607:f8b0:4864:20::b49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C066E0EE
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 May 2020 21:25:32 +0000 (UTC)
Received: by mail-yb1-xb49.google.com with SMTP id n200so9474145ybg.0
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 May 2020 14:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=lUX567Tb8yU78GLP/dXc6IkUsReJaeoKfKlAGamE9Nw=;
 b=qTcRFgG6Ss3lc42B78E0v8di1l6GH8pvdMDZtzgQsVFrNYI9syxim4F2Yi/3iJiVGY
 N7UdM0YoyOV2/PnYqNxjpQcpBC4lRTeJig5kABSzzGKvK/Ov8LbdrWVxQq0fqT7hQ8Em
 ddWwIEr3tUeWbjwoKLIVTqV57Sg7i/lmetO1JB95Gi48cHGAl4a9+GWCRYtG5d+ZjZgy
 FnNKszIHAfbm7BBkowCQI/S43W9Pr2yEyEyB3viaUxhK63SzgJodfILyDUODupUfPIlM
 T/+dOBD2z6udDL+CApifyImDVZyfd6ApKWRxKF5dCcrIi7qz5r/cC7ZDokkMoCc48fRd
 UzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=lUX567Tb8yU78GLP/dXc6IkUsReJaeoKfKlAGamE9Nw=;
 b=huF+ANVFkvi1rDNNsHTGH6Uq3vS/8S7D5xLCxpZun4IHVbIIvZBS7u117st4wh7ecd
 Rhw1j1cWoOwz09CyXTjPD9aTWMPhI8KTYq8EggXJJV2b8NCsXvEZ9pQeJ6WG8JXVFYpF
 52J/g7qVmIo3PtUwbGU9Uv48CqMbkokqSIsJqIWEooq4Htg5uDVlhLDZASeJcFjxBV2k
 fi7lgX3PxKzmZQrkbfqPjaWt/G51IwjluXJy9Adpl5Xughy0WHNtcIKZCAaZMjQLMJ9A
 mXX/NxD7MWDAsjsD6eqFfiMonb6K8srOSnqF3YtPosQt2O8oZ8xgY3CNJxp3ETkIAF7w
 zT/Q==
X-Gm-Message-State: AGi0PubYMLzDH2dEsJu+1/721TkXl53nvq1hlwEnjqu/YpuVvrciNAgk
 aS6qTt//DodiqMURyNksYt5RibSvA5ko
X-Google-Smtp-Source: APiQypI7cbZ3PT6GB8B+Kw+QhsdvubhofMpUTvZduBM5urnJLbqBbZpQrOGDmzjyXw3R47Nun46czTHCneO1
X-Received: by 2002:a25:2a8c:: with SMTP id
 q134mr11158107ybq.143.1589145931180; 
 Sun, 10 May 2020 14:25:31 -0700 (PDT)
Date: Sun, 10 May 2020 22:25:21 +0100
Message-Id: <20200510212521.128869-1-pterjan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.645.ge9eca65c58-goog
From: Pascal Terjan <pterjan@google.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Mon, 11 May 2020 14:41:09 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unused HAS_FWTABLE macro
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
Cc: Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It has been unused since commit ccb2aceaaa5f ("drm/i915: use vfuncs for
reg_read/write_fw_domains").

Signed-off-by: Pascal Terjan <pterjan@google.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index abb18b90d7c3..fd64415fcf8f 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -877,11 +877,6 @@ find_fw_domain(struct intel_uncore *uncore, u32 offset)
 #define GEN_FW_RANGE(s, e, d) \
 	{ .start = (s), .end = (e), .domains = (d) }
 
-#define HAS_FWTABLE(dev_priv) \
-	(INTEL_GEN(dev_priv) >= 9 || \
-	 IS_CHERRYVIEW(dev_priv) || \
-	 IS_VALLEYVIEW(dev_priv))
-
 /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
 static const struct intel_forcewake_range __vlv_fw_ranges[] = {
 	GEN_FW_RANGE(0x2000, 0x3fff, FORCEWAKE_RENDER),
-- 
2.26.2.645.ge9eca65c58-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
