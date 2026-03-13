Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YATeEl9kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E082F75D6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5554510E50D;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="X9EG3PLv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
 [209.85.167.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A9A10EC18
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:27 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id
 5614622812f47-463a0e14abfso1412843b6e.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408267; x=1774013067; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QuXW2pVB+6BOeyoEL7PCyteLSTsnkRNE1etSyCy+RQQ=;
 b=X9EG3PLvOe4GO64DveDUusZaefG20nQmIx3gGO4NHIwYcvWr26WpSomapCWxT6EVqq
 YeWRXjaywzLzXnRPCzk/3ZSiWyApWO37gJapytOWvSy66FVPToDM9ZJSmEHyX65D7LOK
 s57ihHYk4BgXdVA1CMG6XtTO8qsBsG21QsQYCgbeo7Der2ttxLhSJ/GTGFjhOkxuFJU4
 4Gm9uS4Gx/oymRJvb1fuExvzkDbB3R3OgI/KmNw6KoKeePoPHuNT4/a5f3k5pw0+gbzf
 /+yAsgRaLXH0gld50QK+S9otnKExufEP8NnQYHQW7qLVZV7hVWTn0rb/Smz7KU1dJJTM
 9qVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408267; x=1774013067;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=QuXW2pVB+6BOeyoEL7PCyteLSTsnkRNE1etSyCy+RQQ=;
 b=eTSoZnXy+/FmG86EJsixn2mwyhc/I+wA1CYO723QrKVV82JxPeFKCPabbiMTTb5wPN
 B1t4v/Yf7IfgkHcvMx3vZhUZ+tKKbduL1VtG/NdiIZY/779uwe2iiBc4GnQCl17qYxeC
 CEoh41ekYaUV17E3OEl/bFwbXZkEm9lDPj04FfxGUF+Plrn2lk9aJ5FgH+RtdAjXNB+t
 5DsusO2rTokQJ2xyikF8kU/YaL8XcChxs6EovWOB+Qw1qPgJhVDklnZeqfnSjwZw8QSl
 s+nNLLbWpp3rSAqvdM4b6YqJRqeIjmgI6ndyOdK6eddbl0auaQmUcE/PgDQ9JTRTnw7x
 BUPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDy7thB4V0x2yKqyzUo33o2SV9T+vrYnnW4tUUghZAJpwdSuLP2AXs6W8PUfEBXHFr+jkiLkcTnRo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyZutZoEG2pkj4zxw0rXvBnWmRVh9+4lf70J0dcrFDPawJgGXyv
 FU3eAA5k5Mg5JBGrEZPSvUKMGjF97CWoEfaYfAn2mGOb+1Inp4R/ASTj
X-Gm-Gg: ATEYQzy8ONtLxg9tn0OUS3jLa610e+p2bDj1/HIA4vO7qtYEUMx30iYv2naueBX12GP
 S5xMAG1LVNxujVZpttL+MTODjH1erVZEDLdJ7jRZRus864ZyB7fx9fQRI6gciNXpNwMPrFpCX3r
 C7DT42F8J9kHfrIs77a5StUcmvhpdI139tFtfK0idLRMk3H8wCBHITYTlMIBEdBCKyLX6kvMAFE
 p/IZ+6N+TDp0YQAWRy55l7zAAUQ2yQoeLy1bpm1JrLsqPzo9A72qTmHDva7fSK5Dw09yXDQsTkO
 aQ6J6+ZGPt9aXZsqC8tF4LDkIKyWtFP/u372TUzJhrsMtx0Xy0IkDG10E70fuMAIUxAHrg1+DpQ
 fazixLuDKvRrRrZvpqor8CexJ5UGWXTb6fg8VefWrZ6QRfA5x7bgQnJurRliPE8DtglmAQAIgXe
 zlF3y1PZQW0BJbRrG7ehSLWvvOUfFjElxsceIF7qtbyyDdMIpz
X-Received: by 2002:a05:6808:2392:b0:467:d75:702e with SMTP id
 5614622812f47-467570a0d7fmr1650516b6e.6.1773408267013; 
 Fri, 13 Mar 2026 06:24:27 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:26 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Jim Cromie <jim.cromie@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 42/65] drm-dyndbg: DRM_CLASSMAP_USE in drm_dp_helper
Date: Fri, 13 Mar 2026 07:20:07 -0600
Message-ID: <20260313132103.2529746-43-jim.cromie@gmail.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:jim.cromie@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: E5E082F75D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Following the dyndbg-api-fix, replace DECLARE_DYNDBG_CLASSMAP with
DRM_CLASSMAP_USE.  This refs the defined & exported classmap, rather
than re-declaring it redundantly, and error-prone-ly.

This resolves the appearance of "class:_UNKNOWN_" in the control file
for the driver's drm_dbg()s.

Fixes: f158936b60a7 ("drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.")

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 drivers/gpu/drm/display/drm_dp_helper.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index a697cc227e28..308083e244d4 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -45,17 +45,7 @@
 
 #include "drm_dp_helper_internal.h"
 
-DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
-			"DRM_UT_CORE",
-			"DRM_UT_DRIVER",
-			"DRM_UT_KMS",
-			"DRM_UT_PRIME",
-			"DRM_UT_ATOMIC",
-			"DRM_UT_VBL",
-			"DRM_UT_STATE",
-			"DRM_UT_LEASE",
-			"DRM_UT_DP",
-			"DRM_UT_DRMRES");
+DRM_CLASSMAP_USE(drm_debug_classes);
 
 struct dp_aux_backlight {
 	struct backlight_device *base;
-- 
2.53.0

