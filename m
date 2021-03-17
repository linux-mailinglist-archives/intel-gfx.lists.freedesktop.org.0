Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB57733F5A1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 17:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3756E102;
	Wed, 17 Mar 2021 16:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 491CB6E102
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Mar 2021 16:37:03 +0000 (UTC)
IronPort-SDR: jIvVJ5KEb/7y154ML8x0H3zzSb9Zjys+2Cc7BAZRmY0QoATyQDNnvWEKxOBofHKmuyoJic4Cm5
 OdDGNU2CX1+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="274547724"
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="274547724"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:02 -0700
IronPort-SDR: JkCbxsZcxRmKBxcOzkHpkEK2517l6yKw9ejVSXM9Utvt12xD+Lnt9CRp+zdbJzg/+I0XY9ttI5
 40sNbalksJEg==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="412717139"
Received: from jpferrer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.46.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 09:37:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Mar 2021 18:36:39 +0200
Message-Id: <cover.1615998927.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/14] drm/i915/bios: vbt child device rework
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/87165/

BR,
Jani.


Jani Nikula (14):
  drm/i915/bios: mass convert dev_priv to i915
  drm/i915/bios: store bdb version in i915
  drm/i915/bios: reduce indent in sanitize_ddc_pin and sanitize_aux_ch
  drm/i915/bios: move aux ch and ddc checks at a lower level
  drm/i915/bios: limit default outputs by platform on missing VBT
  drm/i915/bios: limit default outputs to ports A through F
  drm/i915/bios: create fake child devices on missing VBT
  drm/i915/bios: rename display_device_data to intel_bios_encoder_data
  drm/i915/bios: add i915 backpointer to intel_bios_encoder_data
  drm/i915/bios: add helper functions to check output support
  drm/i915/bios: save a higher level pointer in ddi_vbt_port_info[]
  drm/i915/bios: start using the intel_bios_encoder_data directly
  drm/i915/bios: start using intel_bios_encoder_data for Type-C USB and
    TBT
  drm/i915/bios: add intel_bios_encoder_data to encoder, use for iboost

 drivers/gpu/drm/i915/display/intel_bios.c     | 1115 +++++++++--------
 drivers/gpu/drm/i915/display/intel_bios.h     |   17 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   28 +-
 .../drm/i915/display/intel_display_types.h    |    3 +
 drivers/gpu/drm/i915/i915_drv.h               |   14 +-
 5 files changed, 633 insertions(+), 544 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
