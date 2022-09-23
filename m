Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E51B15E725C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 05:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D827B10E28A;
	Fri, 23 Sep 2022 03:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FEBD10E269;
 Fri, 23 Sep 2022 03:17:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27B8FA0169;
 Fri, 23 Sep 2022 03:17:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Fri, 23 Sep 2022 03:17:55 -0000
Message-ID: <166390307513.30118.9857173129877162616@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923002221.281179-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220923002221.281179-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_PXP_firmware_respose_on_ARB_failure?=
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

Series: Add PXP firmware respose on ARB failure
URL   : https://patchwork.freedesktop.org/series/108929/
State : warning

== Summary ==

Error: dim checkpatch failed
f4915d5d33c2 drm/i915/pxp: Add firmware status when ARB session fails
-:33: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:178:
+		drm_warn(&i915->drm, "PXP firmware failed arb session init request ret=[0x%08x]\n", msg_out.header.status);

total: 0 errors, 1 warnings, 0 checks, 15 lines checked


