Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMmkKFBkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E502F750F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7260F10E493;
	Mon, 23 Mar 2026 16:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="m2M9ZwD8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA50610EC1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:24:31 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-466ebbf7ff7so802147b6e.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408271; x=1774013071; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6v3HiIDRukL8wqePVR5l3Bo2Gj7Iv9DgR3CyiTeT7DE=;
 b=m2M9ZwD8aCUQtZGu7iVH6hWRTABvTAlsoDXTyuJ7V2AahorDA73SlA/GShhM01BBaR
 mMMrVw2bippTj04HCqWBNB9kzvLdR85tnQiU40PU/c+cVWzj+RYTipaghy+dLDZV2Lin
 nAls1bqx9PNdfIjdU0yKzrjZxSY7kP6aij2aWNc6Gu/fdb3Wv9vw1IxPttWY0FkrcJHu
 HvUzOY5LX76fCN9j6NGDFFpDmKLMxd/JR+PHGjnTWhvr7bLWsvB+ewvyLkxQ4AiAIlCm
 l05EIJv7hPaW9ibVMHNDV4IK5+lmmgk7CWZkooQEIe20bsHDUsIK2Gzc+LjWG9vHZVWz
 lCkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408271; x=1774013071;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=6v3HiIDRukL8wqePVR5l3Bo2Gj7Iv9DgR3CyiTeT7DE=;
 b=BHKZ0M5xrkTWdYzu7N6gq9kCaZFYmxQehMpQCIjQq4B7iHxHZt2Sss7N+uAL4QQyo3
 VgRxg/X4xQAvUcSVA3qgPd5qWUuqJT6FHXZ6V6CxoboOwQnw64DUgpIc2gpGhgQax/pm
 MqIdCKi4ole7XIILrNh6xc23TB4j3ViceCVKvgIMUqLg39Sqd/wrrNBGScHeO8Lqb2Xd
 3ssz9FsKKbZdu/gUsnt3AHeBzO1taSxEoV6+CYeVJ71UqvXpoQhA0imWGiO+9RP5JdMB
 Ew0/ddRdNMW/j6vucsdg9qrYhIJ2kXSsJzRrvBS10ZxTnJ/IkK/jyyr4v+bEyZC6/eJ0
 XxNw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVgDRsCMN6TABjmd1xoVx/6dMNOqKxXXE0gltN95jiecR+GxE0K1QzQUzbl/uV/p+tOA17TgEOrCiw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxsp6rbwKPftIC4r0su6jtrCiNKqb5sLUu3WRzV++93i0mh68+W
 X47OrsZhXdQf+IE+MlbBJe+Ssmd76DSJcGFAHJZ9tioJDiBVaGUEheSg
X-Gm-Gg: ATEYQzxG+ky+1iB++eVbh+Kui7Qm+hogH/POkNYFE1OCiY8PFSBjTw1FvZr6DByQ6DG
 te/xbpr9Ovgfnm/nkzhBW+oEhIdrovjFvCpaXVbbOTUH33NfYN4jIdkAQBuoCQlEpD90DVdF1Uq
 ZNv/dnGR3CIAvGpGzLoiFv4EcsGvUuQBVDTk7D1jbcioWYkFWsKW9U0LFXwumQDDqRY8r5QOw1k
 uOIHgh6ZYbVHZG2XDs47Ed+2/1+Xc+RwtBrDmdUbwaGty+Soa2vsUk19nW92tAH/YURGs3ng/Kk
 UIV4fekyFr5mEfeMNOr7Q6zdFR/ByysMaHfXdmP+2gYuj1kqo7E8eh3ej+QDOZfH5Ap/mVR2r+5
 RjtWpM7AUDHIhVWvJVI89G+KlN+2a5Bd/HqtIew29kE1Lvi0/NOZ4wTMt5dNqLi79h0H8R+Ynwi
 D4A2hLFMwvkadn8ZhQPo5iCvglYbUQ5wlfg7bL/dPPH28siVNA
X-Received: by 2002:a05:6808:1203:b0:467:32c1:acf1 with SMTP id
 5614622812f47-467572f2d47mr1467910b6e.39.1773408270898; 
 Fri, 13 Mar 2026 06:24:30 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:24:30 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Matthew Brost <matthew.brost@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 44/65] drm-dyndbg: add DRM_CLASSMAP_USE to Xe driver
Date: Fri, 13 Mar 2026 07:20:09 -0600
Message-ID: <20260313132103.2529746-45-jim.cromie@gmail.com>
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
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,intel.com,linux.intel.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:rodrigo.vivi@intel.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.555];
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
X-Rspamd-Queue-Id: 84E502F750F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Invoke DRM_CLASSMAP_USE from xe_drm_client.c.  When built with
CONFIG_DRM_USE_DYNAMIC_DEBUG=y, this tells dydnbg that Xe has
drm.debug callsites.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/xe/xe_drm_client.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_drm_client.c b/drivers/gpu/drm/xe/xe_drm_client.c
index 84b66147bf49..3af476f0449f 100644
--- a/drivers/gpu/drm/xe/xe_drm_client.c
+++ b/drivers/gpu/drm/xe/xe_drm_client.c
@@ -21,6 +21,8 @@
 #include "xe_pm.h"
 #include "xe_trace.h"
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 /**
  * DOC: DRM Client usage stats
  *
-- 
2.53.0

