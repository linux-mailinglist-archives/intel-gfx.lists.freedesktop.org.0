Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC065F7795
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 13:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC96410E94E;
	Fri,  7 Oct 2022 11:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C645710E94E
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 11:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665142814; x=1696678814;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uZlZohYfsH6KhpKA6ohOkiJw6TC0/7m0ep8ZP3XV6vA=;
 b=ji/xXGnfMV9K44TrlKzuJzzqBTsE/ik9Zqnj8KFDQ28fJCY/DnDGSHSg
 h4K+zJaPi55W30WvCIGKvnH3wvvPPnL0alBYjTqzDM9ipUfax922TqAMO
 /Rb+zPE54Egr8BtB3c/4mT7W9V3YiHKUGrWJNuXH6JXqgimKQkOsm04Ev
 J66xUr7xP9UikpQPCazHIDQkHckLCtaSN9K7a4dVfMWLIsldRf5mPSjDW
 D35xnMbv8py+W7cLYwsSC/8wPLZUns1Id6M3+jCZYmQU200lwQlMXejjv
 VIKDiheMlK+MYRpXiwdKHcYTyI83zlt9o4SzJ10mRpY01k2Pdfs1robYb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="304715009"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="304715009"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 04:40:13 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="714247879"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="714247879"
Received: from tmelzer-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.61.59])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 04:40:12 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Oct 2022 14:39:56 +0300
Message-Id: <20221007113958.1890779-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Provision to ignore long HPDs in CI systems
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As some faulty displays generate long HPD even while connected to ports, 
can cause CI execution issues. Add a provision to ignore such long HPDs
in such systems with control through debugfs

Vinod Govindapillai (2):
  drm/i915/display: ignore long HPDs based on a flag
  drm/i915: debugfs entry to control ignore long hpd flag

 .../gpu/drm/i915/display/intel_display_core.h | 11 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 ++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 25 +++++++++++++++++++
 3 files changed, 43 insertions(+)

-- 
2.34.1

