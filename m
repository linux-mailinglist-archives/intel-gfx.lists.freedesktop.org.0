Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D316A9C880D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 11:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2032F10E07F;
	Thu, 14 Nov 2024 10:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FB810E07F;
 Thu, 14 Nov 2024 10:50:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_drm_sharpn?=
 =?utf-8?q?ess_property_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2024 10:50:41 -0000
Message-ID: <173158144172.4035500.3415891387210400545@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241114101825.3413688-1-nemesa.garg@intel.com>
In-Reply-To: <20241114101825.3413688-1-nemesa.garg@intel.com>
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

Series: Introduce drm sharpness property (rev5)
URL   : https://patchwork.freedesktop.org/series/138754/
State : warning

== Summary ==

Error: dim checkpatch failed
c7636dbf1478 drm: Introduce sharpness strength property
7dd58709d232 drm/i915/display: Compute the scaler filter coefficients
-:36: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#36: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 226 lines checked
6b57e70cf471 drm/i915/display: Enable the second scaler for sharpness
-:251: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#251: FILE: drivers/gpu/drm/i915/display/skl_scaler.c:693:
+	x = y = 0;

total: 0 errors, 0 warnings, 1 checks, 246 lines checked
786e971d5893 drm/i915/display: Add registers and compute the strength
de4e1c19b93e drm/i915/display: Load the lut values and enable sharpness


