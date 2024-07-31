Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA0F9437A5
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 23:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896B410E6CD;
	Wed, 31 Jul 2024 21:17:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B64FF10E2DB;
 Wed, 31 Jul 2024 21:17:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_Pick?=
 =?utf-8?q?_GuC_from_CI_folder_for_ADLP=2CDG1=2CDG2=2CTGL=2CMTL_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Julia Filipchuk" <julia.filipchuk@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2024 21:17:54 -0000
Message-ID: <172246067473.469314.10053448841957652317@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240730182104.2937767-1-julia.filipchuk@intel.com>
In-Reply-To: <20240730182104.2937767-1-julia.filipchuk@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/guc: Pick GuC from CI folder for ADLP,DG1,DG2,TGL,MTL (rev2)
URL   : https://patchwork.freedesktop.org/series/136690/
State : warning

== Summary ==

Error: dim checkpatch failed
490767d92b68 drm/i915/guc: Pick GuC from CI folder for ADLP,DG1,DG2,TGL,MTL
-:23: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:91:
+	fw_def(METEORLAKE,   0, guc_maj(../intel-ci/i915/mtl,  70, 12, 1)) \
 	                                  ^

-:23: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:91:
+	fw_def(METEORLAKE,   0, guc_maj(../intel-ci/i915/mtl,  70, 12, 1)) \
 	                                        ^

-:23: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:91:
+	fw_def(METEORLAKE,   0, guc_maj(../intel-ci/i915/mtl,  70, 12, 1)) \
 	                                           ^

-:23: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:91:
+	fw_def(METEORLAKE,   0, guc_maj(../intel-ci/i915/mtl,  70, 12, 1)) \
 	                                                ^

-:24: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#24: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:92:
+	fw_def(DG2,          0, guc_maj(../intel-ci/i915/dg2,  70, 12, 1)) \
 	                                  ^

-:24: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#24: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:92:
+	fw_def(DG2,          0, guc_maj(../intel-ci/i915/dg2,  70, 12, 1)) \
 	                                        ^

-:24: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#24: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:92:
+	fw_def(DG2,          0, guc_maj(../intel-ci/i915/dg2,  70, 12, 1)) \
 	                                           ^

-:24: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#24: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:92:
+	fw_def(DG2,          0, guc_maj(../intel-ci/i915/dg2,  70, 12, 1)) \
 	                                                ^

-:25: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:93:
+	fw_def(ALDERLAKE_P,  0, guc_maj(../intel-ci/i915/adlp, 70, 12, 1)) \
 	                                  ^

-:25: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:93:
+	fw_def(ALDERLAKE_P,  0, guc_maj(../intel-ci/i915/adlp, 70, 12, 1)) \
 	                                        ^

-:25: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:93:
+	fw_def(ALDERLAKE_P,  0, guc_maj(../intel-ci/i915/adlp, 70, 12, 1)) \
 	                                           ^

-:25: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:93:
+	fw_def(ALDERLAKE_P,  0, guc_maj(../intel-ci/i915/adlp, 70, 12, 1)) \
 	                                                ^

-:29: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+	fw_def(ALDERLAKE_S,  0, guc_maj(../intel-ci/i915/tgl,  70, 12, 1)) \
 	                                  ^

-:29: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+	fw_def(ALDERLAKE_S,  0, guc_maj(../intel-ci/i915/tgl,  70, 12, 1)) \
 	                                        ^

-:29: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+	fw_def(ALDERLAKE_S,  0, guc_maj(../intel-ci/i915/tgl,  70, 12, 1)) \
 	                                           ^

-:29: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#29: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:96:
+	fw_def(ALDERLAKE_S,  0, guc_maj(../intel-ci/i915/tgl,  70, 12, 1)) \
 	                                                ^

-:33: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:99:
+	fw_def(DG1,          0, guc_maj(../intel-ci/i915/dg1,  70, 5, 1)) \
 	                                  ^

-:33: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:99:
+	fw_def(DG1,          0, guc_maj(../intel-ci/i915/dg1,  70, 5, 1)) \
 	                                        ^

-:33: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:99:
+	fw_def(DG1,          0, guc_maj(../intel-ci/i915/dg1,  70, 5, 1)) \
 	                                           ^

-:33: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#33: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:99:
+	fw_def(DG1,          0, guc_maj(../intel-ci/i915/dg1,  70, 5, 1)) \
 	                                                ^

total: 0 errors, 0 warnings, 20 checks, 20 lines checked


