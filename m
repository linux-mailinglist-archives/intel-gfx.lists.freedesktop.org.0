Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F534CC6B3
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 21:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B095C10EB24;
	Thu,  3 Mar 2022 20:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 09D6110EA2B;
 Thu,  3 Mar 2022 20:00:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03691A7DFC;
 Thu,  3 Mar 2022 20:00:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 03 Mar 2022 20:00:19 -0000
Message-ID: <164633761997.19854.1069088567349056236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Fix_bandwith_related_cdclk_calculations_=28rev2?=
 =?utf-8?q?=29?=
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

Series: drm/i915: Fix bandwith related cdclk calculations (rev2)
URL   : https://patchwork.freedesktop.org/series/98975/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c60dc5b8150b drm/i915: Tweak plane ddb allocation tracking
f73e140093bf drm/i915: Split plane data_rate into data_rate+data_rate_y
bf50385f5dac drm/i915: Pre-calculate plane relative data rate
-:399: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#399: FILE: drivers/gpu/drm/i915/intel_pm.c:5154:
+								iter.start + iter.uv_total[plane_id]);

total: 0 errors, 1 warnings, 0 checks, 352 lines checked
3d55cf48c60c drm/i915: Remove total[] and uv_total[] from ddb allocation
a20ee8c5b4c8 drm/i915: Nuke intel_bw_calc_min_cdclk()
fd80e1100608 drm/i915: Round up when calculating display bandwidth requirements
600f71268f91 drm/i915: Properly write lock bw_state when it changes
bf90a2f0ae6e drm/i915: Fix DBUF bandwidth vs. cdclk handling
9ce73d6df0c4 drm/i915: Add "maximum pipe read bandwidth" checks


