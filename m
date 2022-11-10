Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6145D624841
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 18:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B437410E08C;
	Thu, 10 Nov 2022 17:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F50610E08C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 17:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668100921; x=1699636921;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eIkPaQI1z5VitT5tX7FOEN/LeGV1Cpvw77P3Q+RH2gY=;
 b=Rv4kGSOu50iPmmNzsIlu0ZiUwUj+WLX2Ju5NnhcYou6bvQldXg76PipA
 VykuGEmwQj3ujRlzbbYHArWG0hic3rNZHKQpnrBMzvHE735GvRFdQpag7
 7s0VuuIlqQFVWR1acVVHypbrqAdFayzirWFdYSi/YlmMHfE2bB/73GX+t
 siI3Hm2dQFgW1oSBjoRIxOINwY+KYguhZCSJQ5pDNd/eS5YWi9TckUMJO
 Wl54zPrwdTRrXXxYEuCpcBP20HqEoCOdCKX80BAgD0IH3wOf0iA6FfDMK
 Goffg1mTLev7y7N17zQz7eI1c1RL9Gg45qWk5bEFNq6QTMWH6MrSsgU+o A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="397671658"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="397671658"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 09:19:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="639694214"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="639694214"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 09:19:19 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 17:19:11 +0000
Message-Id: <20221110171913.670286-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Fix live busy stats selftest failure
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

Fix live busy stats selftest failure in BAT. The issue is seen more easily on
DG1 runs.

v2: (Tvrtko)
In addition refactor intel_uncore_read64_2x32 to obtain the forcewake
once before reading upper and lower register dwords.

v3: (Ashutosh)
Update commit msg

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/uncore: Acquire fw before loop in intel_uncore_read64_2x32
  drm/i915/selftest: Bump up sample period for busy stats selftest

 drivers/gpu/drm/i915/gt/selftest_engine_pm.c |  2 +-
 drivers/gpu/drm/i915/intel_uncore.h          | 44 +++++++++++++-------
 2 files changed, 31 insertions(+), 15 deletions(-)

-- 
2.25.1

