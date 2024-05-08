Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4557B8C05C0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 22:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C707C10E775;
	Wed,  8 May 2024 20:34:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0683110E775;
 Wed,  8 May 2024 20:34:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/huc=3A_pick?=
 =?utf-8?q?_the_DG2_HuC_up_from_the_CI_folder_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 May 2024 20:34:53 -0000
Message-ID: <171520049302.2023278.7679879541148723849@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240322225923.370069-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20240322225923.370069-1-daniele.ceraolospurio@intel.com>
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

Series: drm/i915/huc: pick the DG2 HuC up from the CI folder (rev2)
URL   : https://patchwork.freedesktop.org/series/131526/
State : warning

== Summary ==

Error: dim checkpatch failed
5667d317b5ad drm/i915/huc: pick the DG2 HuC up from the CI folder
-:20: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#20: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:115:
+	fw_def(DG2,          0, huc_gsc(../intel-ci/i915/dg2)) \
 	                                  ^

-:20: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#20: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:115:
+	fw_def(DG2,          0, huc_gsc(../intel-ci/i915/dg2)) \
 	                                        ^

-:20: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#20: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:115:
+	fw_def(DG2,          0, huc_gsc(../intel-ci/i915/dg2)) \
 	                                           ^

-:20: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#20: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c:115:
+	fw_def(DG2,          0, huc_gsc(../intel-ci/i915/dg2)) \
 	                                                ^

total: 0 errors, 0 warnings, 4 checks, 8 lines checked


