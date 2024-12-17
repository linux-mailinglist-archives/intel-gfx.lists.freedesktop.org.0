Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAE59F400C
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 02:38:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61C610E1E4;
	Tue, 17 Dec 2024 01:38:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7544410E1E4;
 Tue, 17 Dec 2024 01:38:03 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/slpc=3A_Add?=
 =?utf-8?q?_sysfs_for_SLPC_power_profiles?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2024 01:38:03 -0000
Message-ID: <173439948347.3543107.10827336646213597158@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241217005704.3101181-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20241217005704.3101181-1-vinay.belgaumkar@intel.com>
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

Series: drm/i915/slpc: Add sysfs for SLPC power profiles
URL   : https://patchwork.freedesktop.org/series/142685/
State : warning

== Summary ==

Error: dim checkpatch failed
3490606096c8 drm/i915/slpc: Add sysfs for SLPC power profiles
-:68: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#68: FILE: drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c:899:
+			gt_warn(gt, "failed to create slpc_power_profile sysfs (%pe)",
+				    ERR_PTR(ret));

total: 0 errors, 0 warnings, 1 checks, 129 lines checked


