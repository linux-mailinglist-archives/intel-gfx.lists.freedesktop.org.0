Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 105537459E3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jul 2023 12:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1A110E0DB;
	Mon,  3 Jul 2023 10:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7058A10E0DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jul 2023 10:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688379259; x=1719915259;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WAeRVOpwjqgC/lcUYx9hmiygiz0J3aqYLghJelfzoLU=;
 b=kO1oVppSslODN8nFsmXhhGo1Mor6Syxbuim1NloDudpN95+e8CpYZbrw
 +JR84muIWwwZo0in5pL4fetPYgaeGqagISu5gG7AD98d3usQvHwOOmJ76
 e/dtLq4IrrQFImssT7y6PhZK7XvWQykn6sy3gAve9+weTJoRZ9QIYgqkn
 kfSOCs8dBb6G4yuxfVd47gaQgvG7wFdD2yrzBIjgf//XDfAJhalGl8Pdg
 E4IkjCcwjAHY87ElPGVtA4r7YFsOg3im6dfyQlqMri7I1vfqDmOOobfgP
 h2aKXZaRUsqOe4qkj6qktuaWJ/7/MTn6g8IFc+sOEpMaOy5ltO7kt5IW5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="393586704"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="393586704"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2023 03:14:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10759"; a="721716031"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="721716031"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jul 2023 03:14:17 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jul 2023 15:42:41 +0530
Message-Id: <20230703101244.2489790-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] Add rc_range_params for YUV420
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

Calculations for YUV420 were missing from calculate_rc_param,
add them be in line with DSC 1.2a specs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (3):
  drm/i915/dsc: Move rc param calculation for native_420
  drm/i915/drm: Fix comment for YUV420 qp table declaration
  drm/i915/dsc: Add rc_range_parameter calculation for YCBCR420

 .../gpu/drm/i915/display/intel_qp_tables.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 187 ++++++++++++------
 2 files changed, 135 insertions(+), 62 deletions(-)

-- 
2.25.1

