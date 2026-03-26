Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHxOGVxzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AB435B755
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5366010E735;
	Mon, 30 Mar 2026 12:57:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="rfoyGiBK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com
 [209.85.160.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3CE10EBF2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:56 +0000 (UTC)
Received: by mail-oa1-f42.google.com with SMTP id
 586e51a60fabf-40ee9b945d5so940742fac.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551356; x=1775156156; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iu46xPMmyhe3j2aI3EiB0/ULgdgDrucXaD4Bb/DoM7A=;
 b=rfoyGiBKRbBFMB4GkjT8P5AzCsXt/oknR+wndkEGafObPWpQ+eSMRfBFIHx0po5dj4
 Eg9giTXlAaAt99nCFLDJMEDMKyshDmABf25O6RmEuy6j2KXTbI8R/Da8KtLJ87lR0LTT
 0uMSFSN3oCzWZlSdLgz4nRXbj1ODdpMPGFvkXzb4wtfimla7WHkJL1Q0EvShPa/6XUp2
 tNKC19LavNFbTNWg8hCIfkvW56vL3vPPIsAE7qW6d3sprvtNc7SkGX6Xu67RO5M6exwA
 bWqa8DgExc8DuFHoYdmdMZLw6YPRK5/PmTDBZtvv2JpXeTyJgnHCXHaQsnTwrUT/il3i
 FKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551356; x=1775156156;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=iu46xPMmyhe3j2aI3EiB0/ULgdgDrucXaD4Bb/DoM7A=;
 b=ChgZBEtLM4WzAeB2z1JBmj5qHLSJKBHX6hjbE98Z3lPl7A1JCDkmrgxEcT4ghISQUU
 vWVQmaXgKm28B6TQFrRcS3STY8EV3v4qx9Pm4YwZXrhBhKsKCF0K1quuXRzhzaKOu7a4
 i7DamW58Hcyaj+mOPKhr3rNAe1QNoNzEP0VAeSDDTxaBhrfYxrTsNzxDmOYc6RRELMkj
 qXozdhFAvm6n+PKuqZmY+CMXnWoDPEoT+pIasno+3rxK5W9tZRj43SFodPSHXuCiLFWP
 lxKyFCuMJejUbxDdGi394vT1wMDYj8etbRXQp5Y9ZLKUjHWF+QyonLIDYgvEv2tD+WCz
 aosw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWBwYHmb+QbH87f0TdABcvXVtjA6tBnSFMRPpQXBYmV1X9gqWFVKy+3LwKhpglem0Ls2bsAfBRnZ/M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyRGVYI4nH+mFhPo8gxEkSgHAQJvIG/L+Vk23ziLEAT5oKEb0cf
 C4aRAJA65oAxSJ3O5MRjD3o6UncfTLsxtbWEtc/BLiMNxWlXibNxr98b
X-Gm-Gg: ATEYQzzjdk4D3VYTiTzv+bVAq9un4j5ma40IgsL/l9UM2q/8dS6YE1o3jOV6Fqhn5oZ
 G6A5L2pHSkyGT0YPFkPVaYnxLg/vI604EQ5TPMWat1yqTJqJ/ASX81Fj/h99isbB7LykiN2pwEv
 dzH4OdCjTo7JuCLquktnAYtstGn3H4M8o7y5PSXeOt7L228zfPsyWmGLnIP7eE1iRGcl2da2yfT
 S5v1nsjIyRSxhF/YfymyJzEcN/SQyVa6wFKi/77+VgIEN00YOy3Bw+VNh9zKAvemmJrsAS7w3mT
 3bn6FwxYO0HjZKGxIr2hVF8BPz2HvepQODEzCKYjLIZYRf4B6yU+iQBagjLrdRtOrRJ4dlj/Y7x
 +ORb6xyofQYYlC4biVMya2RxOUtUvFRyWjeVqXCzqNGQL/glnOrfAZFF5LKFRnNaqmXausOTK/3
 OUR1Pmyj9QHjWqwIRkCCtUg5pb1sZYkwm6mFEo6/nKsXxzlXOz
X-Received: by 2002:a05:6871:728:b0:3f4:fed5:d88b with SMTP id
 586e51a60fabf-41ca7078b7dmr4565478fac.35.1774551355832; 
 Thu, 26 Mar 2026 11:55:55 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:55 -0700 (PDT)
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
Subject: [PATCH v12 55/69] drm-dyndbg: add DRM_CLASSMAP_USE to gma500 driver
Date: Thu, 26 Mar 2026 12:53:59 -0600
Message-ID: <20260326185413.1205870-56-jim.cromie@gmail.com>
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
X-Rspamd-Queue-Id: 13AB435B755
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gma500 has 126 DRM_UT_* debugs, make them controllable when
CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
class'd debugs.

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 drivers/gpu/drm/gma500/psb_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/gma500/psb_drv.c b/drivers/gpu/drm/gma500/psb_drv.c
index 005ab7f5355f..92b18c76b44e 100644
--- a/drivers/gpu/drm/gma500/psb_drv.c
+++ b/drivers/gpu/drm/gma500/psb_drv.c
@@ -41,6 +41,8 @@
 static const struct drm_driver driver;
 static int psb_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent);
 
+DRM_CLASSMAP_USE(drm_debug_classes);
+
 /*
  * The table below contains a mapping of the PCI vendor ID and the PCI Device ID
  * to the different groups of PowerVR 5-series chip designs
-- 
2.53.0

