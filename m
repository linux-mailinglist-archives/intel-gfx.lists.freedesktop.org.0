Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D65E3565ABF
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E00210E4B7;
	Mon,  4 Jul 2022 16:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A478A10E011;
 Sat,  2 Jul 2022 17:59:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58F04AADD1;
 Sat,  2 Jul 2022 16:43:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 02 Jul 2022 16:43:16 -0000
Message-ID: <165678019633.30215.2554413165346621975@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220701232006.1016135-1-matthew.d.roper@intel.com>
In-Reply-To: <20220701232006.1016135-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Add_general_DSS_steering_iterator_to_intel?=
 =?utf-8?b?X2d0X21jciAocmV2Mik=?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: Add general DSS steering iterator to intel_gt_mcr (rev2)
URL   : https://patchwork.freedesktop.org/series/105883/
State : warning

== Summary ==

Error: dim checkpatch failed
d4f96890b01e drm/i915/gt: Add general DSS steering iterator to intel_gt_mcr
-:135: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#135: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.c:509:
+void intel_gt_mcr_get_ss_steering(struct intel_gt *gt, unsigned int dss,
+				   unsigned int *group, unsigned int *instance)

-:166: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt_' - possible side-effects?
#166: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:43:
+#define _HAS_SS(ss_, gt_, group_, instance_) ( \
+	GRAPHICS_VER_FULL(gt_->i915) >= IP_VER(12, 50) ? \
+		intel_sseu_has_subslice(&(gt_)->info.sseu, 0, ss_) : \
+		intel_sseu_has_subslice(&(gt_)->info.sseu, group_, instance_))

-:166: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'gt_' may be better as '(gt_)' to avoid precedence issues
#166: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:43:
+#define _HAS_SS(ss_, gt_, group_, instance_) ( \
+	GRAPHICS_VER_FULL(gt_->i915) >= IP_VER(12, 50) ? \
+		intel_sseu_has_subslice(&(gt_)->info.sseu, 0, ss_) : \
+		intel_sseu_has_subslice(&(gt_)->info.sseu, group_, instance_))

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ss_' - possible side-effects?
#175: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:52:
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'gt_' - possible side-effects?
#175: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:52:
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'group_' - possible side-effects?
#175: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:52:
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))

-:175: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'group_' may be better as '(group_)' to avoid precedence issues
#175: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:52:
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))

-:175: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'instance_' - possible side-effects?
#175: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:52:
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))

-:175: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'instance_' may be better as '(instance_)' to avoid precedence issues
#175: FILE: drivers/gpu/drm/i915/gt/intel_gt_mcr.h:52:
+#define for_each_ss_steering(ss_, gt_, group_, instance_) \
+	for (ss_ = 0, intel_gt_mcr_get_ss_steering(gt_, 0, &group_, &instance_); \
+	     ss_ < I915_MAX_SS_FUSE_BITS; \
+	     ss_++, intel_gt_mcr_get_ss_steering(gt_, ss_, &group_, &instance_)) \
+		for_each_if(_HAS_SS(ss_, gt_, group_, instance_))

total: 0 errors, 0 warnings, 9 checks, 237 lines checked


