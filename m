Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F7B3F5F41
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8F489FFD;
	Tue, 24 Aug 2021 13:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51AA289FFD
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:34:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204444897"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="204444897"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="526629860"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:34:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:12 +0300
Message-Id: <cover.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/bios: remove vbt ddi_port_info
 caching
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

Simplify vbt child data access.

We still retain a port to struct intel_bios_encoder_data map, but going
forward we should prefer accessing the encoder specific data via
encoder->devdata, not the map nor the port.

That will still need some extra initialization, especially for older
platforms. One step at a time.

BR,
Jani.

Cc: José Roberto de Souza <jose.souza@intel.com>

Jani Nikula (7):
  drm/i915/bios: use hdmi level shift directly from child data
  drm/i915/bios: use max tmds clock directly from child data
  drm/i915/bios: use dp max link rate directly from child data
  drm/i915/bios: use alternate aux channel directly from child data
  drm/i915/bios: move ddc pin mapping code next to ddc pin sanitize
  drm/i915/bios: use ddc pin directly from child data
  drm/i915/bios: get rid of vbt ddi_port_info

 drivers/gpu/drm/i915/display/intel_bios.c | 372 +++++++++++-----------
 drivers/gpu/drm/i915/i915_drv.h           |  18 +-
 2 files changed, 187 insertions(+), 203 deletions(-)

-- 
2.20.1

