Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E749E4293AD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 17:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4C8989F8B;
	Mon, 11 Oct 2021 15:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2DD189F73;
 Mon, 11 Oct 2021 15:42:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="313097989"
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="313097989"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 08:19:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="440833478"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga006.jf.intel.com with ESMTP; 11 Oct 2021 08:19:41 -0700
Received: from intel.com (srinivasulu-X299-AORUS-Gaming-7.iind.intel.com
 [10.145.162.218])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 19BFJcaG019164; Mon, 11 Oct 2021 16:19:39 +0100
From: Thanneeru Srinivasulu <thanneeru.srinivasulu@intel.com>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: michal.wajdeczko@intel.com, thanneeru.srinivasulu@intel.com
Date: Mon, 11 Oct 2021 20:51:02 +0530
Message-Id: <20211011152106.3424810-1-thanneeru.srinivasulu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/guc: Inject probe errors for MMIO
 send, CT send
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

Injecting probe errors for MMIO send, CT send to make
probe flow more robust.

Use i915_probe_error to report probe injection errors.

Thanneeru Srinivasulu (4):
  drm/i915/huc: Use i915_probe_error to report early CTB failures
  drm/i915/huc: Use i915_probe_error to report early HuC failures
  drm/i915/guc: Inject probe errors for MMIO send
  drm/i915/guc: Inject probe errors for CT send

 drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  4 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 12 ++++++++++--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c    |  4 ++--
 3 files changed, 16 insertions(+), 4 deletions(-)

-- 
2.25.1

