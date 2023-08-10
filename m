Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D5877824E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 22:47:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5129810E605;
	Thu, 10 Aug 2023 20:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B182C10E605
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 20:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691700419; x=1723236419;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I78S30UOTZ1XImHQf412VsIldVMJ+YcUyp5wFz8Bv/w=;
 b=M0NSsN4um3mQmPq5f1bRDNTu7NX6DVh7OM5lhoeEMgCFqkITRwMjYAfT
 OrgAD42QB+l2AGk1u0f+xJywbteUbJJZcrgZfKs6vXlvYoImd/1j9uLaA
 yDTmEpY+uJi4yoy5qcW9rELjXS9Sb/vaaGrexjyz8puoo8SeE7VZRHv2b
 YnkX4u/LQDYMepEY9zMnM6o8vLD8ftdiXuJxpz2n0Tzz4Og+5nGmMGi8X
 FMYHSf2jzSQc5ZYa6lsQyS5ZKZOZedegluO8ViHI7gHngINxFW/1y3dT1
 3BhUwi8rcfsL5xc0SOnABGdS602rTP+PjeeHZL5NFafaN+ze6PdMFALDy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="351840161"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="351840161"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 13:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="682251934"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="682251934"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 13:46:57 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 13:36:19 -0700
Message-Id: <20230810203620.388827-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com, matthew.d.roper@intel.com,
 jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Align igt_spinner_create_request with the hang_create_request
implementation in selftest_hangcheck.c.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Saurabhg Gupta <saurabhg.gupta@intel.com>
CC: Andi Shyti <andi.shyti@intel.com>
CC: Stuart Summers <stuart.summers@intel.com>
CC: Nirmoy Das <nirmoy.das@intel.com>
CC: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: Michal Winiarski <michal.winiarski@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>

Jonathan Cavitt (1):
  drm/i915/selftests: Align igt_spinner_create_request with hangcheck

 drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.25.1

