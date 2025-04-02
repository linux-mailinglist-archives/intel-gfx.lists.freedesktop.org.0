Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA6A78FE3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 15:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E8A10E168;
	Wed,  2 Apr 2025 13:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F7B10E168;
 Wed,  2 Apr 2025 13:32:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_drm_sharpn?=
 =?utf-8?q?ess_property_=28rev12=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Apr 2025 13:32:57 -0000
Message-ID: <174360077780.27776.13969719939791274913@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250402125647.361295-1-nemesa.garg@intel.com>
In-Reply-To: <20250402125647.361295-1-nemesa.garg@intel.com>
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

Series: Introduce drm sharpness property (rev12)
URL   : https://patchwork.freedesktop.org/series/138754/
State : warning

== Summary ==

Error: dim checkpatch failed
a3a22c5a9af2 drm/i915/display: Introduce sharpness strength property
9ebede723d66 drm/i915/display: Introduce HAS_CASF for sharpness support
32250e2ca0ed drm/i915/display: Add strength and winsize register
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 181 lines checked
eb6452d2aafa drm/i915/display: Add filter lut values
8b5287c1768c drm/i915/display: Compute the scaler coefficients
0a86f3db05f5 drm/i915/display: Add and compute scaler parameter
8632e60a52a8 drm/i915/display: Configure the second scaler
63494d2c6287 drm/i915/display: Set and get the casf config
4421d069e688 drm/i915/display: Enable/disable casf
df316d4df4a2 drm/i915/display: Expose sharpness strength property


