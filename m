Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BC617F24F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 09:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 479126E84E;
	Tue, 10 Mar 2020 08:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9586E835
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 08:52:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:52:56 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="288963045"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 01:52:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 10:52:39 +0200
Message-Id: <cover.1583766715.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/10] drm/i915/display: conversion to
 drm_device based logging macros
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rebase of Wambui's series [1] to drm-tip, with a couple of manual
conversions included.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/72760/


Wambui Karuga (10):
  drm/i915/dsb: convert to drm_device based logging macros.
  drm/i915/fbc: convert to drm_device based logging macros.
  drm/i915/fbdev: convert to drm_device based logging.
  drm/i915/fifo_underrun: convert to drm_device based logging.
  drm/i915/gmbus: convert to drm_device based logging,
  drm/i915/hdcp: convert to struct drm_device based logging.
  drm/i915/hotplug: convert to drm_device based logging.
  drm/i915/lpe_audio: convert to drm_device based logging macros.
  drm/i915/lvds: convert to drm_device based logging macros.
  drm/i915/overlay: convert to drm_device based logging.

 drivers/gpu/drm/i915/display/intel_dsb.c      | 28 +++---
 drivers/gpu/drm/i915/display/intel_fbc.c      | 30 +++---
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 96 +++++++++++--------
 .../drm/i915/display/intel_fifo_underrun.c    | 29 +++---
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 33 ++++---
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 40 ++++----
 .../gpu/drm/i915/display/intel_lpe_audio.c    | 23 +++--
 drivers/gpu/drm/i915/display/intel_lvds.c     | 43 +++++----
 drivers/gpu/drm/i915/display/intel_overlay.c  | 11 ++-
 10 files changed, 195 insertions(+), 141 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
