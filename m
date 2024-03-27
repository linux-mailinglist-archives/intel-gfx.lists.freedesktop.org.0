Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F1488D39E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 02:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A031A10F5DF;
	Wed, 27 Mar 2024 01:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD0610F5DF;
 Wed, 27 Mar 2024 01:14:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/hwmon=3A_Re?=
 =?utf-8?q?move_i915=5Fhwmon=5Funregister=28=29_during_driver_unbind?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Mar 2024 01:14:20 -0000
Message-ID: <171150206024.1054669.3094433001971924640@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240326124838.3049215-1-badal.nilawar@intel.com>
In-Reply-To: <20240326124838.3049215-1-badal.nilawar@intel.com>
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

Series: drm/i915/hwmon: Remove i915_hwmon_unregister() during driver unbind
URL   : https://patchwork.freedesktop.org/series/131630/
State : warning

== Summary ==

Error: dim checkpatch failed
c41351a42cf0 drm/i915/hwmon: Remove i915_hwmon_unregister() during driver unbind
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
<7> [518.386591] i915 0000:03:00.0: [drm] intel_gt_set_wedged called from intel_gt_set_wedged_on_fini+0xd/0x30 [i915]

total: 0 errors, 1 warnings, 0 checks, 11 lines checked


