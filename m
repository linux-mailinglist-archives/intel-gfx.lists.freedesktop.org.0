Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85C2823C0B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 07:08:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C30310E391;
	Thu,  4 Jan 2024 06:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6548D10E391;
 Thu,  4 Jan 2024 06:08:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display/dp?=
 =?utf-8?q?=3A_128/132b_DP-capable_with_SST_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Date: Thu, 04 Jan 2024 06:08:25 -0000
Message-ID: <170434850540.1841.16113050834591521520@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
In-Reply-To: <20240103090715.307309-1-arun.r.murthy@intel.com>
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

Series: drm/i915/display/dp: 128/132b DP-capable with SST (rev2)
URL   : https://patchwork.freedesktop.org/series/128147/
State : warning

== Summary ==

Error: dim checkpatch failed
3745b837c1be drm/i915/display/dp: 128/132b DP-capable with SST
-:29: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#29: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4047:
+			    drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
+			    && i915->display.params.enable_dp_mst;

total: 0 errors, 0 warnings, 1 checks, 15 lines checked


