Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11BC97DFC1C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 22:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A803C10E004;
	Thu,  2 Nov 2023 21:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 246F110E004
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 21:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698962137; x=1730498137;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BXxKPofjJjOr/m6DnP7RTVw3NllQhRe8EHs4aZVtJe8=;
 b=alGaK5FBDFkC0H3TpkvZIJtARnNA4vyFY387kkBTnEBNmqHv7D/5vPse
 Z94UHqOVQcQCc5aJ/mjeUh//+JCBv5UHsvALrQhOXM2H1GJ4yXUyZZsF4
 viyf2XWUvuDFDwK8mD6gR9lbQPKuIy5DomTEnSBKWTmsaPQI/tCcqjRtG
 Dolea8/zTPYweTzO1ncCj8rsEqqy1V42FICunehlhT/fr9U4t1ooRNdSY
 39XHiiXOH3Sczc2MbHPMifsH2r5zFJhqdW70BR6bA8q/+h/e5OK9PeCg4
 35BQtxIB9iU4mg4jiHLiuJjRF8976tsI4VcMVywe5ctgIrc38iaT2uwjl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="7464307"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="7464307"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 14:55:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="737895685"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="737895685"
Received: from jpauw-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.215.30])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 14:55:33 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 23:55:17 +0200
Message-Id: <20231102215519.135847-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/2] drm/i915/xe2lpd: choose between PSR2 and
 FBC
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
Cc: ville.syrjala@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In devices with PSR2 + FBC support, choose between PSR2 selective fetch
and FBC based on the better power saving efficiency

Vinod Govindapillai (2):
  drm/i915/xe2lpd: check selective fetch is optimal in some cases
  drm/i915/xe2lpd: prefer FBC for full frame fetch in PSR2

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      | 11 ++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 42 ++++++++++++++++---
 3 files changed, 47 insertions(+), 7 deletions(-)

-- 
2.34.1

