Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE5EBFB4DD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 12:07:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A19810E02D;
	Wed, 22 Oct 2025 10:07:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pq4dhlZt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62EAF10E02D;
 Wed, 22 Oct 2025 10:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761127642; x=1792663642;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PR9sDkqUd+S3bgCHe+7FBtxlUjiw3vkoATZkxebFrwI=;
 b=Pq4dhlZtK0yDGrRsefse9wJyFtARC4Ka1ZAd5IxAXJGzjzBEZZnsLQwE
 A9HPhsQ6ZOW8H9yU7kt1taNnqwuoRsUqRFIPSKj5CWWxfNDRq1LSVADva
 9YYQxpPRr1fqWHhBD8h2oapJv1LXa22OmyY5iE1VA0tM2OStliF+ocisa
 S510dwJdO3P86CNRZ/eBOYMLAS83ZonJzn2ietWRSZT2ewB2zD9uXyhLW
 rbZ9Q8oVpPDBGT8jbcAu98d5wPcFpikCc3VDArRRyCmcUhvaBLUuux86N
 RQdOB03Vbj45IMAuwCS1F3wqvzc49wSLjmnY5W+eUJBo0nNX/oJ7fMmX3 Q==;
X-CSE-ConnectionGUID: 8TTPPXrmTeCfd4M3ethddg==
X-CSE-MsgGUID: eao/Pi3RSySqmb7dBx8gJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="65886684"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="65886684"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:22 -0700
X-CSE-ConnectionGUID: yprWs7GlQdCe7Mt4eO5QUg==
X-CSE-MsgGUID: PCjmoEDNQVmZ/exLluDlWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="183535836"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.74])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 03:07:21 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/3] drm/i915/dmc: Event handler fixes
Date: Wed, 22 Oct 2025 13:07:15 +0300
Message-ID: <20251022100718.24803-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Workaround some firmware issues related to DMC event handlers.

Ville Syrjälä (3):
  drm/i915/dmc: Clear HRR EVT_CTL/HTP to zero on ADL-S
  drm/i915/dmc: Fixup TGL/ADL-S HRR event handler type
  drm/i915/dmc: Set DMC_EVT_CTL_ENABLE for disabled event handlers as
    well

 drivers/gpu/drm/i915/display/intel_dmc.c | 94 ++++++++++++++++++++----
 1 file changed, 81 insertions(+), 13 deletions(-)

-- 
2.49.1

