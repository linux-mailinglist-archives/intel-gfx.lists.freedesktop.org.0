Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 328C65F3ACC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 02:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E86210E50E;
	Tue,  4 Oct 2022 00:49:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A44F810E28C;
 Tue,  4 Oct 2022 00:49:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B8F0AADD9;
 Tue,  4 Oct 2022 00:49:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Tue, 04 Oct 2022 00:49:11 -0000
Message-ID: <166484455160.14069.16787417966223492942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221003230408.7313-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20221003230408.7313-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/slpc=3A_Update_frequency_debugfs_for_SLPC_=28rev2?=
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

Series: drm/i915/slpc: Update frequency debugfs for SLPC (rev2)
URL   : https://patchwork.freedesktop.org/series/109328/
State : warning

== Summary ==

Error: dim checkpatch failed
cc64d3e0abf4 drm/i915: Add a wrapper for frequency debugfs
-:17: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 24)
#17: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:346:
 	} else if (GRAPHICS_VER(i915) >= 6) {
+			gen6_rps_frequency_dump(rps, p);

total: 0 errors, 1 warnings, 0 checks, 353 lines checked
42781668dcfa drm/i915/slpc: Update the frequency debugfs


