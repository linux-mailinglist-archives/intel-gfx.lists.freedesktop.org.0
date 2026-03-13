Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFoRMmlkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7463E2F76D5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC0210E52E;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="M0onIEeZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
 [209.85.167.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7850D10EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:25:09 +0000 (UTC)
Received: by mail-oi1-f180.google.com with SMTP id
 5614622812f47-46704177508so1466352b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408309; x=1774013109; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Vn6BBWYTc8CIB4CSHYkkNij4NNRuRZw5Ruqls3nbhKU=;
 b=M0onIEeZhjz0W/fGLMWCsS4Nj8KWPQVDt0w8YKlksHVdh10v5eCHMyeFwxJ6RRiJfw
 AKnhHayg6TUbV5suJcEfyUGtbNbVswCUp8UMqu72v/WQJBOMR/nNoG4DbMPPc35RrmIX
 JnkU8qRqM8itmkM0ppkmztfDknz5AyVuk/yX9DpoAoMNxG+LEdZ2mgvqFKsZj51rUIjj
 46EcJI/wPATI/1svVZ5Q9wx8pF2xPFMJcTMaOOFW8KjBEsqz6kiiV77/vsEaHPe7bYgK
 sLjjY2p35UZQ6JUvn228XVxDI3R5FTqdUoQq7/O55qLq3PN8gsXoX6o296LmY+Gh7uN9
 dgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408309; x=1774013109;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Vn6BBWYTc8CIB4CSHYkkNij4NNRuRZw5Ruqls3nbhKU=;
 b=aUq6oRUTz/RcC9gehqj9poWS0CTUrrrn/+jXtPPV2jCja4luvSZbPvyzFiL34Ljpor
 LeVRWETeruoIw5DqL0H22/4eh7cLTfHQlIDV1mEElmGyPxFNJYxblxoD63nZWZmeEatC
 UthSCWAlAvYzfjJ0Qb8aYGFGRsP5KkWnYW1hCTR+jfGTLCmi7zsuvNinR9/vcgp5MaJ3
 g9xsiUZITL9uHSDszoX9B1CI6NPyBArZ80qE2DVXHvNyJiTAizTms7IMf1nC3bqNX5wQ
 C4Ov3kZts8ZHohfe3u7azvjgMDFPJKzyg0wJ7nZLdL/yv8N8VKyyai66ylhlibst/9QO
 DRTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXIIpDxzLtrc+PNwuS/tOd6Zg458ZW/yxV8uwpbSX2rYPJ1PIz1dKv5BrldtdRu9AcqqBIyzLv22d8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywg/UltHOv4KyPITa6TXhWI0WVcLNo/AFk76K+98H3VQx7osiO5
 EFCFldCu3ByKZGeaYJ8BRy0BVD9xVX2XrxRvkzQtSoU5RfOmna3G7Sf/
X-Gm-Gg: ATEYQzy6eqsUfs5NzURlnMD8GCS2uQySN870slTpibDDHzt1p79SJqjDSy2NiIYpkdr
 ohxlBO8jG77fjTOYnU8Cb9Y3EgiYkX8TaXeOURJscyPgjZU1B4G/og9dW+zXTA4MmE1bbuPnCJ9
 4JQke+uRfZ1nBpHyFa/CGVQ7wh/m4NDCK0IDFPy9i1VFGUA9LAPcVv4fZL4IcgjICBFbI0WinBF
 YGShBo9kVUwTZTS6JSBUH/eE44dkUcCnO7Gw48+p7jkFTYpgXNVwbk4fz0Fj9+TP5SIhG1aOEuH
 GaPDdGpuhqXfyMf4+f1SRlbaaLj5oANHKIWQzsm8wXojl+i4SUKGGqmL4Svhd89eu/XTCmjYa0e
 ZUcWpO/qdJXyoBtDmi5lCWCBd8J11qD8FdU0qAFKnVLfanYXXesI6dKfUdetI9TVQ2v6T1PDSCh
 2+s/LoVrjblFXViVKtnyPFwFTakornybwiL/mDCgy+yvvQ0C2s
X-Received: by 2002:a05:6808:1302:b0:467:17f3:68bb with SMTP id
 5614622812f47-467576d3042mr1687190b6e.59.1773408308527; 
 Fri, 13 Mar 2026 06:25:08 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:25:08 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Luca Coelho <luciano.coelho@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 64/65] drm_print: fix drm_printer dynamic debug bypass
Date: Fri, 13 Mar 2026 07:20:29 -0600
Message-ID: <20260313132103.2529746-65-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,intel.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:luciano.coelho@intel.com,m:jani.nikula@intel.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,amd.com,intel.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.462];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7463E2F76D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm_debug_enabled([1]) is the canonical bit-test for drm.debug.

Commit 6ce6fae84536 ("drm_print: optimize drm_debug_enabled for
jump-label") did several things:

A- renamed [1] to drm_debug_enabled_raw()

B- introduced __drm_debug_enabled(), which evald to either 'true' or
   _raw([A]), depending upon [2] CONFIG_DRM_USE_DYNAMIC_DEBUG=y/n.

C- altered *dev_dbg() to call __drm_debug_enabled().

D- redefined [1] to drm_debug_enabled_instrumented().  This called
   _raw(), but added a pr_debug() too.  This allowed us to see how
   where and often remaining callsites were called.

When [2]=y, [B] short-circuited the bit-test, since dyndbg's wrapper
macro had already set the callsite reachable/unreachable.

Later, commit 9fd6f61a297e ("drm/print: add drm_dbg_printer() for drm
device specific printer") added __drm_printfn_dbg(), but mistakenly
used the internal bypass __drm_debug_enabled() instead of the
canonical drm_debug_enabled(). This went unnoticed because at the
time, [2]=y was marked BROKEN.

Because __drm_printfn_dbg() is a shared callback where the callpath is
not directly guarded by dyndbg's static-key, checking the bypass macro
caused it to evaluate to 'true' and always print, ignoring the drm.debug
bit-mask entirely.

This results in a flood of messages in environments with slow serial
consoles, as seen in DRM-CI on i915 CML devices. When IGT causes a
mismatch in intel_pipe_config_compare(), the resulting UART storm
causes a hard timeout after 20 minutes (see below the snip).

To fix this, change __drm_printfn_dbg() to use the explicit
drm_debug_enabled_instrumented() instead. This ensures the bit-test is
performed at runtime for this unguarded helper, stopping the UART storm.

[1] drm_debug_enabled
[2] CONFIG_DRM_USE_DYNAMIC_DEBUG

Fixes: 9fd6f61a297e ("drm/print: add drm_dbg_printer() for drm device specific printer")
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---

some of the many:

 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:57:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_vsync_start (expected 0, found 1083)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:57:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_vsync_end (expected 0, found 1097)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:57:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_vtotal (expected 0, found 1116)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:57:pipe A] fastset requirement not met in hw.adjusted_mode.crtc_vblank_end (expected 0, found 1116)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in hw.adjusted_mode.crtc_clock (expected 0, found 112800)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in hw.adjusted_mode.crtc_clock (expected 0, found 141000)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in hw.adjusted_mode.crtc_clock (expected 0, found 141000)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in hw.adjusted_mode.crtc_clock (expected 0, found 61040)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in hw.adjusted_mode.crtc_clock (expected 0, found 76300)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in hw.adjusted_mode.crtc_clock (expected 0, found 76300)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in port_clock (expected 0, found 216000)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in port_clock (expected 0, found 216000)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in port_clock (expected 0, found 270000)
 i915 0000:00:02.0: [drm:intel_pipe_config_compare [i915]] [CRTC:82:pipe B] fastset requirement not met in port_clock (expected 0, found 270000)
---
 drivers/gpu/drm/drm_print.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_print.c b/drivers/gpu/drm/drm_print.c
index ceede094ff13..b431881de2c1 100644
--- a/drivers/gpu/drm/drm_print.c
+++ b/drivers/gpu/drm/drm_print.c
@@ -214,7 +214,7 @@ void __drm_printfn_dbg(struct drm_printer *p, struct va_format *vaf)
 	const struct drm_device *drm = p->arg;
 	const struct device *dev = drm ? drm->dev : NULL;
 
-	if (!__drm_debug_enabled(p->category))
+	if (!drm_debug_enabled_instrumented(p->category))
 		return;
 
 	__drm_dev_vprintk(dev, KERN_DEBUG, p->origin, p->prefix, vaf);
-- 
2.53.0

