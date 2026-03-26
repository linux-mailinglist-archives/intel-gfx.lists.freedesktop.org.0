Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIzyJ2JzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C71E35B7F9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC6C10E744;
	Mon, 30 Mar 2026 12:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Whj8soNe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8872110EBED
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:36 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id
 5614622812f47-466ec4c6852so809518b6e.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551336; x=1775156136; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=odzxhFrE/OaIR8r3wWCi5vPBwW9g54UQJlDBz7itpic=;
 b=Whj8soNecmKGgQWvasvwBJ29mkqJii6kC7a7rxjOYRkJYrXzfpL1c3N07i3fB/9AGJ
 LM4tVWKJUAoybNderynx7yoML9KQ16lr41+/kmtDHdW7ptwpxl+dfNdlPgnXljfhxEEe
 GOKcVJbeI9A2rATpJpC0Ez5K3n3Gsocu3oU+sVfq3A3RNzlCevWWrYgIwRFkpl15ojg0
 ZG6IqGtxrLFNAQhMCukitFBdEX622/Z+6w+suLHMqbbmvqu2XZQWAE4ox/bqqWpvUwJx
 Amg9PodlpY5oNfXriWyzbX1pP8CTEwlLAnerXJN+IM5LelGW4BemopcfWQT6fugm2NX2
 VtUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551336; x=1775156136;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=odzxhFrE/OaIR8r3wWCi5vPBwW9g54UQJlDBz7itpic=;
 b=G/bv5yEu9i8Ky65IShYDENMdNbnpAc+NePbhT411qxDuJInrKbwNMAu1JpJ/DIAP4W
 6+7ZrgxlTNYGA4NVbFDnQCDFCkdt37803Ysh3LihjZD8F40oYB3qD+oypPnSSIm5NVpY
 TJ84HwQ4HVWwMPZjS8mZMTyGRPIOf/PHiGNiGSO+HTrKw8lvoAqwsouOyGSce6Agoqqt
 uaqtnoUrgAuBPzbC4lDomLY/aMeEz1SLTOw23JPU4UJRunnQNBw34jSRTlvvNdfvz52v
 L3xZZBxXPgljSaRnxgX8jBn9wPcmW8f+fpJ6/w1HIy34TFmevlsXtzQT6Uv5MG+94Amj
 9ziA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXw6t/Nw06L3bWBUxTcBt84wWxPFLQEZQUc85SikRSkD6LYbyheSTEDp2RfhTvbpMnWjL8kBChZc3k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzW+tPfSW1Se9MFUZoq7FQ8KHlBk549yACam8PHN+NeMbWdhZQM
 qf0SU4fEKAYJ649BjAHSLBMjtAPK+gJtwfURDQoduW4GLpabJI6bEEPD
X-Gm-Gg: ATEYQzynLoAEG2WqZ/wwckiE4bR5rYKHpavOT2ojTyF7wBBg2VbnOt9QRx/YwWfzwDn
 vqeh8ATE6yf27jPdcHxKBlF0ndYkVMsBK6eArTw9ACgtd+zmelUCiSOnWkxujPbdgOJHmvKVC9/
 7M9TsXeCvFRGZ8VbYoA2hG58kFoEyDsgASaJ5cglbekullGZg8ofhGu3PJMjPqPMxgrpZw97PHs
 DhFIjq6EpJ3007IWk3NiRvlbX9v87F1Nw4y/IHsL9lP/xZg3rAwr8V/w3+1VtS0KqcuRf9O6Ygz
 3+Tucl3BX7x/P8xgFbStBgavYeX2iDbMFjT3KebljZxvYAa+/heShC2q80KQ7/RXtCHR//pY0e+
 NuGU/f4T+4t2gO9hNu33mc9sSk2kC8FBsm/cmivQpf0bS3mL5c80CKz/3DTV4+OS1BNFtXdekNe
 Eqmi8SnHcdHFffT+DCxJrhfkWwa8gGB2br8qURaRfYVsQuHng3
X-Received: by 2002:a05:6808:5246:b0:467:1f90:412d with SMTP id
 5614622812f47-46a5c5a5802mr3709128b6e.11.1774551335668; 
 Thu, 26 Mar 2026 11:55:35 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:35 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 41/69] drm_vblank: avoid bit-test when
 DRM_USE_DYNAMIC_DEBUG=y
Date: Thu, 26 Mar 2026 12:53:45 -0600
Message-ID: <20260326185413.1205870-42-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3C71E35B7F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

drm_crtc_vblank_helper_get_vblank_timestamp_internal() is called about
~100 times per sec, on a single display. It currently calls
drm_debug_enabled(DRM_UT_VBL) to avoid doing ktime_to_timespec64()
conversions when drm_dbg_vbl() is disabled.

When CONFIG_DRM_USE_DYNAMIC_DEBUG=Y, that bit-test is redundant,
because its also done by the static-key inside drm_dbg_vbl().

In this case, we can move the ktime conversions into the drm_dbg_vbl()
argument list (using a comma operator to evaluate the assignment, then
pass the address of its LHS).  Then the __dynamic_func_call() wrapping
the func guards the arg-list too, avoiding its evaluation when its not
being printed.

When CONFIG_DRM_USE_DYNAMIC_DEBUG=N, the bit-test is needed, because
the conversion in the arg-list is not guarded, and we'd do the
conversions even when the callsite is disabled.

We can optimize for both Y/N cases by changing
drm_debug_enabled(DRM_UT_VBL) to __drm_debug_enabled(DRM_UT_VBL).
This gives us the short-circuit when the static-key guard is there,
and the bit-test by drm_debug_enabled_raw() otherwise.

TLDR: we could change __drm_debug_enabled() to call _instrumented()
instead of _raw() for the =N case, but that should be accompanied by
some experiments and results.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
-v12-
restore (previously dropped) drm_debug_enabled, with __ alterations.
---
 drivers/gpu/drm/drm_vblank.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index f78bf37f1e0a..8ec025e12c67 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -803,15 +803,14 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	 */
 	*vblank_time = ktime_sub_ns(etime, delta_ns);
 
-	if (!drm_debug_enabled(DRM_UT_VBL))
+	if (!__drm_debug_enabled(DRM_UT_VBL))
 		return true;
 
-	ts_etime = ktime_to_timespec64(etime);
-	ts_vblank_time = ktime_to_timespec64(*vblank_time);
-
 	drm_dbg_vbl(dev,
 		    "crtc %u : v p(%d,%d)@ %ptSp -> %ptSp [e %d us, %d rep]\n",
-		    pipe, hpos, vpos, &ts_etime, &ts_vblank_time,
+		    pipe, hpos, vpos,
+		    (ts_etime = ktime_to_timespec64(etime), &ts_etime),
+		    (ts_vblank_time = ktime_to_timespec64(*vblank_time), &ts_vblank_time),
 		    duration_ns / 1000, i);
 
 	return true;
-- 
2.53.0

