Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450E05E78F0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 13:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E636410E862;
	Fri, 23 Sep 2022 11:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E7E10E896
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 11:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663930851; x=1695466851;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ho4r442DL2/ylqtl5MM540qgvLUD6Quki+atxz+7rlk=;
 b=NYS/NCbt4zIt6FxbUWkXt6MHkATJu9Y/BeVEPH8RxkwWC9kpQxtw/EVT
 lRE8J4ql241E8eIlxVGD6wwzsxNLdo/Zv0KvAbAgXDyjMXIvdQNhtfjJu
 YUAMx2bf1aPfpLskwsVw0Y+KOW+vmfJqybOr7oytQ8C+ow0Y/xo3Ee/da
 j95FNEBL651tbOHhsQHAPITOnyldkKY4BTj8nEgHMGtzDmkh23Z64U6hY
 dVVTS9rowZXe544hXEKSlBeyYUJMN1K8kB+w204oc7+ZuauC2gNdG59rT
 77s7nSmkew4KnUHVvneiQb/Moi456zCE8W4MSAcHpJu8Z97ardhPkUZXN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386858208"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="386858208"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="653363746"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 04:00:48 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 16:30:40 +0530
Message-Id: <20220923110043.789178-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Add SLPC selftest live_slpc_power
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

live_slpc_power tests if running at low frequency saves power

Rev2 : Add multi-tile support

Riana Tauro (3):
  drm/i915/guc/slpc: Run SLPC selftests on all tiles
  drm/i915/selftests: Add helper function measure_power
  drm/i915/guc/slpc: Add SLPC selftest live_slpc_power

 drivers/gpu/drm/i915/gt/selftest_rps.c  |  12 +-
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 172 +++++++++++++++++++++---
 2 files changed, 164 insertions(+), 20 deletions(-)

-- 
2.25.1

