Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A002820CD
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 05:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A97D6EA27;
	Sat,  3 Oct 2020 03:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228456EA25
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Oct 2020 03:30:01 +0000 (UTC)
IronPort-SDR: Umnt6mvc1OK7eaIMZJwV4kPad7ptRr+p1/hCfcVnFYqj20RJRSQ9HFIhJzM7UAdS5g5DrEjHnJ
 OVIbH7X+rTUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163992689"
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="163992689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:29:58 -0700
IronPort-SDR: o3rV0eR+gBpi0xUybdb41ArHbcmILEai/h8sjnrVBhM7yyaic5SVCn8fH8eDegtyeadTA34EGy
 hdbApoL6WfOg==
X-IronPort-AV: E=Sophos;i="5.77,330,1596524400"; d="scan'208";a="326022166"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 20:29:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 20:29:49 -0700
Message-Id: <20201003032951.2730073-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] Gen12 forcewake and multicast updates
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The hardware architects have finally provided an updated MMIO table for
gen12 platforms (TGL, RKL, DG1).  We should update our driver's
forcewake and MCR programming accordingly.

Bspec: 66696
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Matt Roper (2):
  drm/i915: Update gen12 forcewake table
  drm/i915: Update gen12 multicast register ranges

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 28 +++++++--
 drivers/gpu/drm/i915/intel_uncore.c         | 66 +++++++++++++--------
 2 files changed, 62 insertions(+), 32 deletions(-)

-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
