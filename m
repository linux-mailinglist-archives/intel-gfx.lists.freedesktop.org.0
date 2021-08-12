Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3133E9F51
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 09:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A5576E303;
	Thu, 12 Aug 2021 07:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08C0B6E252;
 Thu, 12 Aug 2021 07:15:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED497A8836;
 Thu, 12 Aug 2021 07:15:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Aug 2021 07:15:38 -0000
Message-ID: <162875253894.21763.18385182278103910753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210812054806.22745-1-animesh.manna@intel.com>
In-Reply-To: <20210812054806.22745-1-animesh.manna@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Fix_in_max_source_calculation_for_dp/edp?=
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

Series: Fix in max source calculation for dp/edp
URL   : https://patchwork.freedesktop.org/series/93622/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d3bee2d775fd drm/i915/dp: Fix eDP max rate for display 11+
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d3913019602e ("Revert "drm/i915/dp: Correctly advertise HBR3 for GEN11+"")'
#20: 
due to issues in CI in commit d3913019602e ("Revert "drm/i915/dp:

total: 1 errors, 0 warnings, 0 checks, 53 lines checked
11ca6e858027 drm/i915/dp: fix TGL and ICL max source rates
efac1c8cc038 drm/i915/dp: fix EHL/JSL max source rates calculation
9d0d6ab4aaa2 drm/i915/dp: fix DG1 and RKL max source rates
c92201975535 drm/i915/dp: fix for ADL_P/S and DG2 dp/edp max source rates


