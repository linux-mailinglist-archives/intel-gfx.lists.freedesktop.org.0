Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8FD510E09
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 03:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5857F10E0F3;
	Wed, 27 Apr 2022 01:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C867E10E14C;
 Wed, 27 Apr 2022 01:44:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6C1CA66C8;
 Wed, 27 Apr 2022 01:44:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Wed, 27 Apr 2022 01:44:42 -0000
Message-ID: <165102388279.24236.6902537313177357695@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220427003509.267683-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220427003509.267683-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dmc=3A_Add_MMIO_range_restrictions_=28rev3=29?=
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

Series: drm/i915/dmc: Add MMIO range restrictions (rev3)
URL   : https://patchwork.freedesktop.org/series/102168/
State : warning

== Summary ==

Error: dim checkpatch failed
f6bceb457fc4 drm/i915/dmc: Add MMIO range restrictions
-:58: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:386:
+			if (mmioaddr[i] < TGL_DMC_MMIO_START(dmc_id) || mmioaddr[i] > TGL_DMC_MMIO_END(dmc_id))

-:71: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:399:
+			if (mmioaddr[i] < TGL_DMC_MMIO_START(dmc_id) || mmioaddr[i] > TGL_DMC_MMIO_END(dmc_id))

total: 0 errors, 2 warnings, 0 checks, 109 lines checked


