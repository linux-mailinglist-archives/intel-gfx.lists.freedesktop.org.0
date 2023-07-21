Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC45F75BBAB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 03:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AF610E0A4;
	Fri, 21 Jul 2023 01:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C36E810E0A4;
 Fri, 21 Jul 2023 01:03:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD6C5A00E6;
 Fri, 21 Jul 2023 01:03:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 21 Jul 2023 01:03:02 -0000
Message-ID: <168990138277.22546.17420970891793032699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720230505.224659-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20230720230505.224659-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/huc=3A_silence_injected_failure_in_the_load_via_GS?=
 =?utf-8?q?C_path?=
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

Series: drm/i915/huc: silence injected failure in the load via GSC path
URL   : https://patchwork.freedesktop.org/series/121080/
State : warning

== Summary ==

Error: dim checkpatch failed
3d5d75464e51 drm/i915/huc: silence injected failure in the load via GSC path
-:32: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/pxp/intel_pxp_tee.c:178:
+				gt_probe_error(pxp->ctrl_gt, "failed to load huc via gsc %d\n", ret);

total: 0 errors, 1 warnings, 0 checks, 15 lines checked


