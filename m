Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJGzN70BgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:10:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E69DDA5DC
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920E710E65E;
	Tue,  3 Feb 2026 14:10:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bkt0f/bF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CC5F10E554
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Feb 2026 07:32:06 +0000 (UTC)
Received: by mail-pl1-f170.google.com with SMTP id
 d9443c01a7336-2a7a9b8ed69so57594965ad.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Feb 2026 23:32:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1770103926; x=1770708726; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JVbsoeLJUH+6Qu+riey08jBhyxYlZrCyG0lFJ2fnhgw=;
 b=bkt0f/bF2klTba0+ERrIWH2piZYb1PVsByJDHTpEvSGNvKPtyfLxUx0WmsoNbxxL1i
 OrlVlpJDC/nH0SiE6iPNu35PTwzDUXTzr53U9Na9s+qh7X3Wam8jQ9B8YHzHM5rXePNL
 AvtY2BvvIJsMlHtSBJ1PeKqZfpGqKVhy9iavULw9d+9/fWoGMYSEvrr8I/XA/hQ0kmc9
 RrKRJcKha+lywKgFekC9WCLWtcrJ+KNpauKmYAJCtwNhROqckuX+pF3qNWkPOIfG9e6S
 ReCN8YNvOFhmPT7Xs617bj+NtssCKzssz7ZbS62zicU6VlGn5MyhDkYAmvdF1mFq/HkM
 V4xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770103926; x=1770708726;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=JVbsoeLJUH+6Qu+riey08jBhyxYlZrCyG0lFJ2fnhgw=;
 b=ERK5+AmlvafLtaNpm+fpQwU402VVyNFuH4G/PEHYe9A8bI/nCQIijBio88ajqhNBMr
 qckUDR0KQOpj1AgUk671cB7dkMQs2Rky1LDoWW954lyc94bLOpkZ5Zzuf4AZvh3Td9RJ
 2GT9Dd1IT4dsj3cbCUpiDRPJ1AsHNTyV2rsVku/z1OP7QvPxc+O1Ee/mu89griKe7t8K
 GLOcqZs/R7lb3rOKFcDFAYgxvoxXDQzds0NgJU6rwUTJ1n7a2w0YDv9i0JbgpIgRrWiI
 nFcgG7d7uGiUO5cg1avh8E9M9q/H/kY8aVqmPTom1sQbhY060P2R/nP3PwATLCYSJh3z
 wLhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbmc+HYRr5HKUaSIZqpFk0MsASOnEuMdCsrHnxuNDvrS80IFunbM2CyI0woANjTqG62LkmPnzAyec=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzK4GjZq/JjX+8MCt64rwvLmVYxW3eVAvv/em+9Ki3ElcP4Pc0C
 RlcMrG1mfzyI1oDC9rBo0y30l4XR0gc1S9g9qmPSLHQHb2t/gl/LbUs=
X-Gm-Gg: AZuq6aJPfzl+oUFbzhZdokr3PIeMgfz+QheaSYJQ7cNtN6GlPAXuhyfK7MHpGOtirY/
 5uCrMunaMqV8OjOtp4cbjcn3lzGCwT+s37Uc4VcfnfK2nmngnF7NGECXx0ECr1qEPxS1JQvSnpQ
 6tCjX7kaevdrojk2cBAzZGjwVk+mp7ktuthv33O0gDrPr3Ecab+mgNjTiiBbo19Yrfo+P8VzfgK
 BQQ9HrN939DjZ5+6FJ9+8znW/D39JnVcyPZhiE5zXj5UCLcxVjFlM1j9ZW1xDKoKwc/N2twbRlF
 T9eM0BNVChnn4g05+mNTvwqmeIoL9YmNYGfZKfijYJj3cq9xbaRlaZYN/YnZ6ShKTMyw/K4whkt
 HqJDsJPxB//dAep/8yDYTuDGdn/uUrEgU8lOtNdl/zCdcKwB/8PjkTYmF6v5gWOHiGJ+QAkn6Ym
 3DKO0/kj0U2SN2zng=
X-Received: by 2002:a17:902:e996:b0:295:9b73:b15c with SMTP id
 d9443c01a7336-2a8d9a57c7emr96695715ad.42.1770103925941; 
 Mon, 02 Feb 2026 23:32:05 -0800 (PST)
Received: from at.. ([171.61.163.171]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2a8dc225534sm108280865ad.68.2026.02.02.23.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Feb 2026 23:32:05 -0800 (PST)
From: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
To: 
Cc: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>,
 Javier Martinez Canillas <javierm@redhat.com>,
 "Borislav Petkov (AMD)" <bp@alien8.de>, Ingo Molnar <mingo@kernel.org>,
 Francesco Pompo <francescopompo2@gmail.com>,
 Lenny Szubowicz <lszubowi@redhat.com>, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: [PATCH v3 2/2] drm/i915/display: Disable display for iMac's
Date: Tue,  3 Feb 2026 07:31:18 +0000
Message-ID: <20260203073130.1111-3-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260203073130.1111-1-atharvatiwarilinuxdev@gmail.com>
References: <20260203073130.1111-1-atharvatiwarilinuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 03 Feb 2026 14:10:02 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:atharvatiwarilinuxdev@gmail.com,m:jani.nikula@intel.com,m:ardb@kernel.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:tzimmermann@suse.de,m:javierm@redhat.com,m:bp@alien8.de,m:mingo@kernel.org,m:francescopompo2@gmail.com,m:lszubowi@redhat.com,m:linux-efi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,intel.com,kernel.org,linux.intel.com,ursulin.net,ffwll.ch,suse.de,redhat.com,alien8.de,vger.kernel.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]
X-Rspamd-Queue-Id: 3E69DDA5DC
X-Rspamd-Action: no action

Disable display on iMacs, as they can't do link training
on the internal display.

(tested on iMac20,1)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
---
 .../gpu/drm/i915/display/intel_display_device.c    | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1170afaa8680..b1fec1018d7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -3,6 +3,7 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include <linux/dmi.h>
 #include <linux/pci.h>
 
 #include <drm/drm_color_mgmt.h>
@@ -1435,7 +1436,18 @@ static bool has_no_display(struct pci_dev *pdev)
 		{}
 	};
 
-	return pci_match_id(ids, pdev);
+	static const struct dmi_system_id dmi_ids[] = {
+		{
+			.ident = "Apple Inc. iMac",
+			.matches = {
+				DMI_EXACT_MATCH(DMI_BOARD_VENDOR, "Apple Inc."),
+				DMI_MATCH(DMI_PRODUCT_NAME, "iMac"),
+			}
+		},
+		{}
+	};
+
+	return pci_match_id(ids, pdev) || dmi_check_system(dmi_ids);
 }
 
 #define INTEL_DISPLAY_DEVICE(_id, _desc) { .devid = (_id), .desc = (_desc) }
-- 
2.43.0

