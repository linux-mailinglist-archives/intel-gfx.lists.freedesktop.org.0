Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B60FC94FC7A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 05:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0ECD10E22E;
	Tue, 13 Aug 2024 03:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1933210E216;
 Tue, 13 Aug 2024 03:57:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Add_HDMI_PLL_Algorit?=
 =?utf-8?q?hm_for_SNPS/C10PHY_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2024 03:57:44 -0000
Message-ID: <172352146409.596986.17614265369825474229@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
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

Series: Add HDMI PLL Algorithm for SNPS/C10PHY (rev3)
URL   : https://patchwork.freedesktop.org/series/135397/
State : warning

== Summary ==

Error: dim checkpatch failed
7fa302006ed4 drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
-:42: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#42: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 315 lines checked
c34ab7c61a58 drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
0e99a0e49ef1 drm/i915/cx0_phy_regs: Add C10 registers bits
a77ab35ad6de drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algorithm
ec8699af89b4 drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY


