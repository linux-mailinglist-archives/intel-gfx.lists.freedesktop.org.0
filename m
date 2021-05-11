Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9F337B28D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 01:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442C26EB22;
	Tue, 11 May 2021 23:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B89996EB21;
 Tue, 11 May 2021 23:29:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AABC3A47DB;
 Tue, 11 May 2021 23:29:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Tue, 11 May 2021 23:29:53 -0000
Message-ID: <162077579367.32034.11326590251985741863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210511231757.14873-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210511231757.14873-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Rename_all_CSR_references_to_DMC?=
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

Series: Rename all CSR references to DMC
URL   : https://patchwork.freedesktop.org/series/90043/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
79e2c73a294f drm/i915/dmc: s/intel_csr/intel_dmc
-:355: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!dmc->fw_path"
#355: FILE: drivers/gpu/drm/i915/display/intel_csr.c:759:
+	if (dmc->fw_path == NULL) {

-:423: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dmc->dmc_payload"
#423: FILE: drivers/gpu/drm/i915/display/intel_display_debugfs.c:545:
+	seq_printf(m, "fw loaded: %s\n", yesno(dmc->dmc_payload != NULL));

-:666: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dmc->dmc_payload"
#666: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:795:
+			   yesno(dmc->dmc_payload != NULL));

total: 0 errors, 0 warnings, 3 checks, 600 lines checked
55c18d96d67e drm/i915/dmc: s/HAS_CSR/HAS_DMC
d0c041938ae8 drm/i915/dmc: Rename macro names containing csr
438f793ebf03 drm/i915/dmc: Rename functions names having "csr"
5532dbf2c306 drm/i915/dmc: s/intel_csr.c/intel_dmc.c and s/intel_csr.h/intel_dmc.h
-:66: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#66: 
rename from drivers/gpu/drm/i915/display/intel_csr.c

total: 0 errors, 1 warnings, 0 checks, 71 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
