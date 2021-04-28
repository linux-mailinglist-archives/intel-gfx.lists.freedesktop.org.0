Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B79836E11B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 23:44:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1076F6E0C1;
	Wed, 28 Apr 2021 21:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 845636E0C1;
 Wed, 28 Apr 2021 21:44:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 763EDA7E03;
 Wed, 28 Apr 2021 21:44:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 28 Apr 2021 21:44:40 -0000
Message-ID: <161964628045.24076.9396641927904076024@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210428211249.11037-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210428211249.11037-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Pipe_DMC_Prep_patches?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Pipe DMC Prep patches
URL   : https://patchwork.freedesktop.org/series/89602/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
32def90ad84d drm/i915/csr: s/DRM_ERROR/drm_err
-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/display/intel_csr.c:445:
+		drm_err(&dev_priv->drm, "Unknown DMC fw header version: %u\n",
 			  dmc_header->header_ver);

-:61: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#61: FILE: drivers/gpu/drm/i915/display/intel_csr.c:465:
+			drm_err(&dev_priv->drm, "DMC firmware has wrong mmio address 0x%x\n",
 				  mmioaddr[i]);

-:77: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#77: FILE: drivers/gpu/drm/i915/display/intel_csr.c:488:
 	if (!csr->dmc_payload) {
+		drm_err(&dev_priv->drm, "Memory allocation failed for dmc payload\n");

-:102: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#102: FILE: drivers/gpu/drm/i915/display/intel_csr.c:521:
+		drm_err(&dev_priv->drm, "DMC firmware has unknown header version %u\n",
 			  package_header->header_ver);

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/display/intel_csr.c:549:
+		drm_err(&dev_priv->drm, "DMC firmware not supported for %c stepping\n",
 			  si->stepping);

total: 0 errors, 1 warnings, 4 checks, 165 lines checked
07e44e7c8997 drm/i915/csr: Add intel_csr_has_dmc_payload() helper
b18fa946a9e4 drm/i915/csr: Introduce DMC_FW_MAIN


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
