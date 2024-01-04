Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6749A823ED7
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 10:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA3710E406;
	Thu,  4 Jan 2024 09:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A6D810E3FD;
 Thu,  4 Jan 2024 09:43:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_TC_phy_check_cleanup?=
 =?utf-8?q?_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Date: Thu, 04 Jan 2024 09:43:08 -0000
Message-ID: <170436138804.1840.4721936532830506535@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
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

Series: TC phy check cleanup (rev4)
URL   : https://patchwork.freedesktop.org/series/127989/
State : warning

== Summary ==

Error: dim checkpatch failed
3f1e1d3cda90 drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
f375d2f368b9 drm/i915: Introduce intel_encoder_phy_data_lookup
1fed87c20417 drm/i915: Separate tc check for legacy and non legacy tc phys
-:88: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#88: FILE: drivers/gpu/drm/i915/display/intel_display_device.h:61:
+#define HAS_LEGACY_TC(i915)		(IS_DISPLAY_VER(i915, 11, 13) && !IS_DGFX(i915))

total: 0 errors, 0 warnings, 1 checks, 57 lines checked


