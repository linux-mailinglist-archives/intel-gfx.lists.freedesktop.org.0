Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C8C38B644
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 20:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A4A6E427;
	Thu, 20 May 2021 18:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38D586E427;
 Thu, 20 May 2021 18:45:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28A10A00E6;
 Thu, 20 May 2021 18:45:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Thu, 20 May 2021 18:45:18 -0000
Message-ID: <162153631813.11676.16459788025259217610@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210520183608.30558-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210520183608.30558-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_More_DMC_cleanup?=
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

Series: More DMC cleanup
URL   : https://patchwork.freedesktop.org/series/90379/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a52e01980968 drm/i915/dmc: s/DRM_ERROR/drm_err
-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:445:
+		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
 			  dmc_header->header_ver);

-:77: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#77: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:488:
 	if (!dmc->dmc_payload) {
+		drm_err(&i915->drm, "Memory allocation failed for dmc payload\n");

-:105: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#105: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:523:
+		drm_err(&i915->drm, "DMC firmware has unknown header version %u\n",
 			  package_header->header_ver);

-:143: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#143: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:568:
 {
+

total: 0 errors, 1 warnings, 3 checks, 128 lines checked
141fc1f5685d drm/i915/dmc: Add intel_dmc_has_payload() helper


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
