Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB621D0F57
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 12:09:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4BD6E9F6;
	Wed, 13 May 2020 10:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D456C6E9F6;
 Wed, 13 May 2020 10:09:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE1FFA0019;
 Wed, 13 May 2020 10:09:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 13 May 2020 10:09:16 -0000
Message-ID: <158936455681.25405.11704065029745964240@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_SAGV_support_for_Gen12+_=28rev37=29?=
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

Series: SAGV support for Gen12+ (rev37)
URL   : https://patchwork.freedesktop.org/series/75129/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1a28a5c25a7d drm/i915: Introduce skl_plane_wm_level accessor.
c93186da4f39 drm/i915: Extract skl SAGV checking
197c503f86b0 drm/i915: Make active_pipes check skl specific
-:64: WARNING:LONG_LINE: line over 100 characters
#64: FILE: drivers/gpu/drm/i915/intel_pm.c:3907:
+	if (intel_can_enable_sagv(dev_priv, new_bw_state) != intel_can_enable_sagv(dev_priv, old_bw_state)) {

total: 0 errors, 1 warnings, 0 checks, 53 lines checked
452bb4194c02 drm/i915: Add TGL+ SAGV support
-:247: WARNING:LONG_LINE: line over 100 characters
#247: FILE: drivers/gpu/drm/i915/intel_pm.c:5767:
+				    enast(old_wm->sagv_wm0.ignore_lines), old_wm->sagv_wm0.plane_res_l,

-:256: WARNING:LONG_LINE: line over 100 characters
#256: FILE: drivers/gpu/drm/i915/intel_pm.c:5777:
+				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.plane_res_l,

-:257: WARNING:LONG_LINE: line over 100 characters
#257: FILE: drivers/gpu/drm/i915/intel_pm.c:5778:
+				    enast(new_wm->sagv_wm0.ignore_lines), new_wm->sagv_wm0.plane_res_l);

total: 0 errors, 3 warnings, 0 checks, 255 lines checked
60649b3d025e drm/i915: Restrict qgv points which don't have enough bandwidth.
-:319: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#319: FILE: drivers/gpu/drm/i915/display/intel_bw.c:529:
+		drm_dbg_kms(&dev_priv->drm, "No SAGV, using single QGV point %d\n",
+			      max_bw_point);

total: 0 errors, 0 warnings, 1 checks, 306 lines checked
dcde82c42f62 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
