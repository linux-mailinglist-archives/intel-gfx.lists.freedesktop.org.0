Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C72EE4AD1D6
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 08:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B6110E6ED;
	Tue,  8 Feb 2022 07:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A7010E6ED
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 07:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644303651; x=1675839651;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=INcp5Ojp01Ws9fL+07TWacITR57/PQVMTRkZhLpUjJk=;
 b=ZO/Tij98acv1kdXjVJvHiNK0vC/vysIGDpZPiQPmHnTZel/jGRWWiWst
 jqkA45yBGEPOI/t3BUWFXsO9knbd6wlBLiE7nFBJp61SBZxwMNjLl9OJB
 3/WkcRRw0HuEfhQHh/pb9cDdjLoAn7u68V+gQ8MpU0wU/qyzlrE0LvyOn
 fn5mAzvm9e7Ewui2g6QqJRGjv5UYvzd9OPfEfXsbY53oqPHowZ5mXxNam
 DEfBgxZFvqA8D77+vuz+xrtqaQm7RVPazP+7rcge153s4iqQ9WGLeHZIW
 gZ07kjy+iQe73FtF1Zfi+A68xggGkkHLcnT/qKNoQ5bcdKLn+/QeVstiX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="229536067"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="229536067"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 23:00:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="628793960"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 23:00:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Feb 2022 23:01:39 -0800
Message-Id: <20220208070141.2095177-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/guc: Use temporary memory for
 regset
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extract the 2 commits not related to iosys_map from
drm/i915/guc: Refactor ADS access to use iosys_map
(https://patchwork.freedesktop.org/series/99711/). The conversion of the
rest of ADS initializon will take more time to review. So let's take
these by themselves as suggested by Daniele.

Lucas De Marchi (2):
  drm/i915/guc: Prepare for error propagation
  drm/i915/guc: Use a single pass to calculate regset

 drivers/gpu/drm/i915/gt/uc/intel_guc.h     |   7 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 159 +++++++++++++--------
 2 files changed, 108 insertions(+), 58 deletions(-)

-- 
2.35.1

