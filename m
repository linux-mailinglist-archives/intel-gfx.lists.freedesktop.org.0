Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gAGnE25kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15EE2F773C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBFD10E53D;
	Mon, 23 Mar 2026 16:03:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="cex2FG2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8482510EC12
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:21 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id
 5614622812f47-4671cbce626so1073079b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408261; x=1774013061; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=93dR2Z7/f38EiX2nhH8I335LY48jx/pTe8LM2CbujQc=;
 b=cex2FG2qfAzHWDVcVmL4MnXnoz9aA+MAFL1dC8QvwTH27YXcNi0EC5Mzjjuip12rLl
 92mZx0dkqNYSCCeVu87Dbv3nmO3pLB5t48e9kTh8HMIkIR5c28XW7/zRSHCEcOnm0RSl
 7RNdWSFEROtvIv9EjSwOC6L7veL7EULBmiOnWajhCK27eGjZLBlh6ER4/Vu7EHq8NAJJ
 H2qFNF7DSSFF33jm4V5DRUzQxg+fLJm8Bjbnlqvvn9rLRXvf0694Nf1E1svxs8m2wE9b
 wGdr0Rld46F52PBUe3rdgUPwWuPnwTLOydwKC9TNOJbMEJP3kASZF9isb8fylfL/jXH6
 YdpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408261; x=1774013061;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=93dR2Z7/f38EiX2nhH8I335LY48jx/pTe8LM2CbujQc=;
 b=X+vGBQDAi6rhCYYJ9sGJMyvJ3WJBjL5z7XZuYSUP8MUAvs5QQ/SfXmJ0sqn2a+MkIQ
 qGltHBBWA+eO1v9kATccg395SVbVvfJgJNsK+H+u0synqM+xwGGrA5dd7Og0kLZeQe9B
 rE9dj9sHQvuYmPEyIbgY741rMVbEX86rbQkfLGkMdXtQ23fGEinphbw7X9hE7Opt/pc4
 x1BAjKpHkB82JKETw/NtkZ8Oz1HmXLSLMrYgA9ckkcosHHnI5BRpmom/yp2tAbsylxUf
 WliG6DNAvhnbS/mbxVcGl8NqhoqSnQJrNVjqzNftTaGQNCMbPUTTYGG1V9SRi7jeDRsn
 C0eg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX/tYvaEVWu5+f0dCBd/0SQVbFB/QTXkh2zIzo3mLLusxLAzlXW/kCTBW5nNK8wxi0IN5BlGc9t1Co=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyQhq0Pi8guMjRT0HisutMgA57+Fi+qbFlJAJdJmdU9DBQ7CPnK
 v7dtJ+U/Qc5IBrWhAgY7lxz1HP6i9PitdUe1I8qYm+1kVsbudPQOrD51
X-Gm-Gg: ATEYQzzqDNk48uXaFNSYEgHffGYVPR8xskFXu912e1yZ63SMRHUumVgYwGFs5027rNW
 nS351CGr9HAFokLp0f+MZWWjMLEwpoRuMgBSljRql0PVyZe6IhGHusU8oCJMwHBnJCNr8hAkyBo
 kUAdW6uKXOP2NBvw0L8NrI39qmPtXdaYOcvPDwmez9tUjGiXpYgkScSVtnejokdvEMC3E70At1q
 /7sSRHF3p5icqGA35SwG4YGGq3JDDqTJA95IbqJ3hM7PmqSRQW/F89Wi5ujFpk0bsQ8UIUDzWMe
 Zq/9/v/j+XL6a4VE/jYahT4y8i0XvX6TTr6yPGQnouebzIEosF7oidie6cWeN2Hh5lw5de6GQNa
 P8v+g7Ohp5MS9ZZ9NVm1ebTwiBcR/R0LSs2jsFZ0bgBZVlzj/PG3wzECdw2whd91ly8xP0WF2e1
 12Gvf26W+Q+ZFFdI2y5JK7ilrbhO3/HL7uERWASj67LaRu8YnH
X-Received: by 2002:a05:6808:470b:b0:467:f85:d832 with SMTP id
 5614622812f47-46757594cdbmr1633762b6e.59.1773408260671; 
 Fri, 13 Mar 2026 06:24:20 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:20 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Jim Cromie <jim.cromie@gmail.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org
Subject: [PATCH v11 39/65] drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
Date: Fri, 13 Mar 2026 07:20:04 -0600
Message-ID: <20260313132103.2529746-40-jim.cromie@gmail.com>
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
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:jim.cromie@gmail.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,amd.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
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
X-Rspamd-Queue-Id: F15EE2F773C
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
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 95d26f086d54..e5dd051eeba9 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -249,17 +249,7 @@ int amdgpu_rebar = -1; /* auto */
 int amdgpu_user_queue = -1;
 uint amdgpu_hdmi_hpd_debounce_delay_ms;
 
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
 
 struct amdgpu_mgpu_info mgpu_info = {
 	.mutex = __MUTEX_INITIALIZER(mgpu_info.mutex),
-- 
2.53.0

