Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D5514733B
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 22:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842146FE73;
	Thu, 23 Jan 2020 21:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D92416FE73;
 Thu, 23 Jan 2020 21:38:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF7C8A0119;
 Thu, 23 Jan 2020 21:38:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 23 Jan 2020 21:38:20 -0000
Message-ID: <157981550082.1147.17829196462074336081@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200123132659.725-1-anshuman.gupta@intel.com>
In-Reply-To: <20200123132659.725-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_3_display_pipes_combination_system_support?=
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

Series: 3 display pipes combination system support
URL   : https://patchwork.freedesktop.org/series/72468/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ff6c602c84d0 drm/i915: Iterate over pipe and skip the disabled one
dbdf2193b56c drm/i915: Remove (pipe == crtc->index) asummption
d0cb3e6e2556 drm/i915: Fix wrongly populated plane possible_crtcs bit mask
3d9a940bfc7e drm/i915: Get right max plane stride
7c0eef4e0e3c drm/i915: Add WARN_ON in intel_get_crtc_for_pipe()
ca9423f88fb2 drm/i915: Enable 3 display pipes support
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/intel_device_info.c:1004:
+		if (enabled_mask == 0 || (!is_power_of_2(enabled_mask + 1) &&
+		    (INTEL_GEN(dev_priv) <= 11 || IS_TIGERLAKE(dev_priv))))

total: 0 errors, 0 warnings, 1 checks, 14 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
