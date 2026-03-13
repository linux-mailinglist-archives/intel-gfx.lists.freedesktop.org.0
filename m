Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QNKFEl1kwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9572F75A8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C31810E4FF;
	Mon, 23 Mar 2026 16:03:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="k7w0e5ZL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0853710EC20
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:56 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id
 5614622812f47-466f59dbe4bso564976b6e.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408295; x=1774013095; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+Zu2rs9LQXViGSxr3LJ2mebc7/BIvYzUYAAic1plGvM=;
 b=k7w0e5ZLr9fovWLe3iaT9eUbo/ALTH6NtnDM55Nc8RVm6sI/5GuCZlNsbCItF5HP0C
 yRUGbKbYqFwDibqk5Rd42ERkiFwSxjpO+s776p4PS1Y7ng7oAF23hJO3fVrBYuxvr53O
 2e56zJgMBCg5pnHVQnjMOWyTlTM3auser6dOT0cyTSey4xIcgYn+a9Q2kBcjNBjirWUd
 Kk2d7iGg6A7/F3I+C8ltJeANnhqosSkPBPCAIrOevH5G4xc8Rhsc9LwNc0k90mw4vfNE
 pEpCoKF+YA3R+ZHZIBujoaW06DKnrZQukikGba5JpFIUl7hmDZihsX6/8Iwgzwr+vzxH
 A7cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408295; x=1774013095;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+Zu2rs9LQXViGSxr3LJ2mebc7/BIvYzUYAAic1plGvM=;
 b=WorPC4YluJH/9Oiz/gxCct9o4X00EIz9O9/Y5uVNRQQ/rtg6jPo0JC0tpvjYHkghm+
 Fc9ysRQymLm04dbNCXR4RkfeMYYMXhInpDpTTPJB4koAA1P3UWiHM1GPdeHKDTvFJZEk
 9FLjAIMv2H5RdnqJjs+yKlnB7AgStojIL+ylrOj4nZzFbVkiAnc0sHm+riQwTg30k5yg
 XUC71kXRjOI40Sc4lAVgVjH5z1iFwv8E4R9ilgQn8GXfy/ay717iAPqKAteQCNLsas6d
 BqVYXgK8F52DLw6tPPZXSBmRWGHOzWqbM7GPFkOcy12nHCycAeibOeFkhptk2slluWjo
 3j8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUE8jdRASNOE/luUzSPeOkOO9yPugG1PWzHfx/c25FdEehTCc3NKizgJZSARP97wfONG5AR2aDhQvs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyF+fG2eBLXahB9uLHxnkJmbYerPY+0+Rd/SwsIqVUBfYCte+QO
 weFrKdE98QSeARNafxyyfgpsU8eEAntVJI4G9lBAWBESekRX6LUnFd3o
X-Gm-Gg: ATEYQzw2k5h1+imZOJX6hGow2SN4LOCAULaIRhQH1tBqi/6+W4b/XuZbjup2ls8Hfin
 XHr2PhYXLgltJInU8bfF+tG8GImbcVO72dyceYMCM6gha6S61rS+6vmsnW3vwJE8DZ8BJhdMUKT
 4PaKvkd+VCNx1s/vmUzq3P6sLDndNB+OJDJLRDDw1LD1680KYLN2kI1B92sq6UpHpcvf8ejEsTW
 ZBCT6YEVzbO5HoVfi5ugCCnroxyAT94h5js6iIIx62INbf5c2qnTzleHO8DyoIVjdd6dEztTP65
 A/BHgpIa6KgIgjmpDCxg1GeSKzhxeyI9fu5IZb5KK53VFpvZNnTXNhhBfh69dZ4uoBWBA8C2YwR
 tv3RqlfD68cQWn6i3i7MAzs0Fd6g6Igs7ZsYkY8vKuv/0txxotp5LWRCGgZ80Z03kwvpyY0h5MH
 mEf/b2t8LB9NRGiBcG+XnJeGIFLZyMilES9FoEOz9jqCgOiv1V
X-Received: by 2002:a05:6808:2385:b0:467:1cf5:7684 with SMTP id
 5614622812f47-467570a44f8mr1658295b6e.6.1773408295128; 
 Fri, 13 Mar 2026 06:24:55 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:54 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 57/65] drm-dyndbg: add DRM_CLASSMAP_USE to the
 drm_gem_shmem_helper driver
Date: Fri, 13 Mar 2026 07:20:22 -0600
Message-ID: <20260313132103.2529746-58-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,linux.intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.545];
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
X-Rspamd-Queue-Id: ED9572F75A8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The drm_gem_shmem_helper driver has a number of DRM_UT_* debugs, make
them controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling
dyndbg that the module uses them.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 4500deef4127..a0bb6110ad83 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -26,6 +26,7 @@
 #include <drm/drm_print.h>
 
 MODULE_IMPORT_NS("DMA_BUF");
+DRM_CLASSMAP_USE(drm_debug_classes);
 
 /**
  * DOC: overview
-- 
2.53.0

