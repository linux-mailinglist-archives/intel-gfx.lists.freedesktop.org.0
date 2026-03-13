Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAMyD1xkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C182F7594
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A9BB10E4FD;
	Mon, 23 Mar 2026 16:03:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="JHhoQ1LH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050E510EC15
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:26 +0000 (UTC)
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-4648447e29bso834121b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408265; x=1774013065; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nWuUyl3pJMGaRe5YpqoxGiWQwsY1kd47fne8B+3aeoU=;
 b=JHhoQ1LHbhboxKzHssmKPQavUUSA9XfexDh9MzwWt/CfUYvXh9u2emKWta+s/Lgi9s
 cVmZU5HRH+g8VRE6LxWxAqwy4sOm/KqiT98i0VsooX/633mPOAPYrNlAjlraNOSuOc15
 jxGKEa0+ChhjZvhvdlDUfbB8Ey8euoRQixOx3OV9YlcMdN/iCAxpnEhRSz+DfQMOJ073
 myeJJIGOmdbX54vquwxbRytPL7kimfIqXQH5kjzO5z/lj2ZN9/aZTswOWrsROZK/0iEs
 2rICOXrSdVrU//84Vn0TahNNtJZf9AeeTc+aCG5R5idzVKWb9jRb53+PZDs3ZQtTnmU+
 9aAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408265; x=1774013065;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=nWuUyl3pJMGaRe5YpqoxGiWQwsY1kd47fne8B+3aeoU=;
 b=eMfLgZC9GO361z2evRjYVWIFrwTbLGdGmwbFSc0DTKcfglcLaj8nE9tutR/M9vhy9o
 OsCG9zXPniMzdoVtoJ5gxg5/6C1/EjPR481KmQRpfexxP15/Q6/xRqu0sI36VvWdoRkG
 2Tk+Fxj4q6cvqtR3i4YNkiagw4VBHPCdODWxM3C7Nigixm2AkMjAx9nM0Z2zrWir9FTE
 GGDJ+TluMA5lQTIWFwjcS/4Qq0taG/D34xHbYHhNQPP6tqzAAjAziL2g4kiSTcaw3V4F
 cjVoCnoJ/2K3BpHLHTqfmkIyyFJ8o5/U+ki6Wk3zgwTIZG/N072t23WJaeNAYoqCbw+p
 FmWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUltWc3VIbEi4dWyoF6M8j7hWJJgZH8Zdwf39MkalCv+HIIVqZdGzXlZrmQOOFx0iObJi5mE8JGYo4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxRzzq5yLej3cYOFwmSI2cfcXd09a8ovZWMJ6V4Nhku5lM8qT0W
 3FtiiSCGjHSutCyjWY+HZfr9chmlUNOyehZKAQkY6wFFeA+gyQq0k0r6
X-Gm-Gg: ATEYQzzmmm2d2ESjTFG0SmS3xX00yUaWu6SWnRDWJHcGWRS4FtwU66xIIW8jwLccb1d
 RhaBcr3b36SNWx9pI6DNtReRKMsxzaFkB+AeG1J0Gk8PwqUShtyE7JdE4mzd+o/xMrfV9ZN9QB+
 oiWfLiKD7jtLCFgNMKXKhWuwKVNi21o1fZ34kMju2ErG+DQ+dBCkkIQm3FDm2HFhAdDsD8EifI+
 7BTOCflEilWI6aE3VkbxnICU+vEQaWJjgvdHwQzd9ehtHZlY/sALpdSKSbqf+6agcFSE4xAlbt5
 8B/4QBwWyRkr4YlcFHrFiOePtDJjuKxe4p/okjqL7X4fmAhL6qKC8HTXRQT2jE9Q7N7vR50uITE
 fJ73lcGj0A67/WVutVPFBP1MyUCY+wBTyCgOHUFpVirZclLTlbJn8+XTnozSynAJIV5fbcdALit
 gCe2vgKdzZ2xHdGIcvdnFtybF16vLvzAjKoVil6yojniX4Wnt/
X-Received: by 2002:a05:6808:30a7:b0:467:100d:22ad with SMTP id
 5614622812f47-4675708e938mr1535630b6e.18.1773408265054; 
 Fri, 13 Mar 2026 06:24:25 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:24 -0700 (PDT)
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
Subject: [PATCH v11 41/65] drm-dyndbg: DRM_CLASSMAP_USE in drm_crtc_helper
Date: Fri, 13 Mar 2026 07:20:06 -0600
Message-ID: <20260313132103.2529746-42-jim.cromie@gmail.com>
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
	NEURAL_HAM(-0.00)[-0.948];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: E2C182F7594
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
 drivers/gpu/drm/drm_crtc_helper.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_crtc_helper.c b/drivers/gpu/drm/drm_crtc_helper.c
index 5de9aaa5ba04..31c5294b252c 100644
--- a/drivers/gpu/drm/drm_crtc_helper.c
+++ b/drivers/gpu/drm/drm_crtc_helper.c
@@ -50,17 +50,7 @@
 
 #include "drm_crtc_helper_internal.h"
 
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
 
 /**
  * DOC: overview
-- 
2.53.0

