Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 426145A02BF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7008C7BAC;
	Wed, 24 Aug 2022 20:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 488 seconds by postgrey-1.36 at gabe;
 Tue, 23 Aug 2022 09:09:40 UTC
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445F2B1D37
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 09:09:40 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 11:01:24 +0200
Message-Id: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: Remove references to uncore from
 display.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using intel_de instead of calling uncore functions directly allows us to
further isolate display from the core internals. Most places already use
intel_de, convert the remaining users.

Maarten Lankhorst (4):
  drm/i915: Move display pcode requests to intel_de
  drm/i915: Remove uncore from intel_tc.c
  drm/i915: Remove uncore from intel_bios.c
  drm/i915: Replace remaining display uncore references to use intel_de

 drivers/gpu/drm/i915/display/hsw_ips.c        |  7 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 25 +++---
 drivers/gpu/drm/i915/display/intel_bw.c       | 30 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 45 ++++++-----
 drivers/gpu/drm/i915/display/intel_crt.c      | 33 ++++----
 drivers/gpu/drm/i915/display/intel_de.h       | 77 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  1 -
 .../drm/i915/display/intel_display_power.c    |  5 +-
 .../i915/display/intel_display_power_well.c   |  7 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 30 ++++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |  9 +--
 drivers/gpu/drm/i915/display/intel_fbc.c      | 10 +--
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 42 +++++-----
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  9 +--
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 ++-
 drivers/gpu/drm/i915/display/intel_tc.c       | 55 +++++--------
 17 files changed, 220 insertions(+), 182 deletions(-)

-- 
2.34.1

