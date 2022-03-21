Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF274E30ED
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 20:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 311A310E483;
	Mon, 21 Mar 2022 19:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7034110E483
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 19:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647892211; x=1679428211;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qKPjA/t63T2um/B1AhSuAaRevqoKxi2ZRV4cO8kmv0k=;
 b=KbpNmqwUjNL2BZzJS8nCg2t++T/CN05q8KMVeXIs8q/hM7UZyGStEaY/
 grAiOdW5HdJU/Ya06uuFUk3EYhgUU31TDMY/tzIkiUvSSc1rHo+v65q8H
 SQ+NWbgE7OibOTDNolJXVaV7kFzcy6edhmDUaxykm8eGrL61sBZMBf7bQ
 jK9umIQrFC6CJPMVvI3MxjMEFX1FnY0LFXGcbwbEaSkxh93GAkghFAMhE
 G5JLSRsMsAw4a3Ujih++VwZpYrwqEe+kOUaI4smUQPwPEASbyfbLRoSv4
 GClxcE8SmSM/LFElt7f812Tr0dNJNhvcM4k8QcSPIsA0KumihyvMNomIu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="320839198"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="320839198"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 12:50:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="515052193"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 21 Mar 2022 12:50:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 21 Mar 2022 21:50:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 21:50:03 +0200
Message-Id: <20220321195006.775-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: Random cleanups
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Clean up a few random things that caught my eye.

Ville Syrjälä (3):
  drm/i915: Program i830 DPLL FP register later
  drm/i915: Use drm_connector_attach_hdr_output_metadata_property()
  drm/i915: Remove dead members from dev_priv

 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c      | 8 ++------
 drivers/gpu/drm/i915/i915_drv.h              | 9 ---------
 3 files changed, 5 insertions(+), 18 deletions(-)

-- 
2.34.1

