Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D01A75CB4A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 17:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8BA610E6A3;
	Fri, 21 Jul 2023 15:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA19E10E6A3;
 Fri, 21 Jul 2023 15:17:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3ED3AA01E;
 Fri, 21 Jul 2023 15:17:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Fri, 21 Jul 2023 15:17:45 -0000
Message-ID: <168995266592.22545.9594442449668782082@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230721140559.830660-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230721140559.830660-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bdii-client=2C1/2=5D_drm/i915=3A_Mak?=
 =?utf-8?q?e_i915=5Fcoherent=5Fmap=5Ftype_GT-centric?=
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

Series: series starting with [dii-client,1/2] drm/i915: Make i915_coherent_map_type GT-centric
URL   : https://patchwork.freedesktop.org/series/121133/
State : warning

== Summary ==

Error: dim checkpatch failed
20d96369b3a6 drm/i915: Make i915_coherent_map_type GT-centric
-:372: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#372: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:248:
+	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(pxp->ctrl_gt, obj, true));

total: 0 errors, 1 warnings, 0 checks, 262 lines checked
c4794405dd4d drm/i915/gt: Apply workaround 22016122933 correctly


