Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933B821E9F4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 09:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4576E92F;
	Tue, 14 Jul 2020 07:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC376E929
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 07:22:41 +0000 (UTC)
IronPort-SDR: N6oTXPx4g1g0IgiVS3IvPH2roa3ST3cl+cdqEFqTo8jlJsR0fJ7sUHjD12v1QhzpG1FNeLIaCW
 qGxtkPGY8WKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="150263350"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="150263350"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 00:22:39 -0700
IronPort-SDR: TQD0izRlPCOf+MWZs5DqSqmYl6Ck2RY7Zih4tVthLQjtNoVFJwmEyKO3kxirDsqcFKDA4L8bqq
 kccdOFebIg4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="360301306"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga001.jf.intel.com with ESMTP; 14 Jul 2020 00:22:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 00:22:38 -0700
Message-Id: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Allow privileged user to map the OA buffer
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

This cover letter is included to trigger "Test-with" an IGT patch.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200714071334.69883-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (1):
  drm/i915/perf: Map OA buffer to user space

 drivers/gpu/drm/i915/gt/intel_workarounds.c |  54 ++++++++
 drivers/gpu/drm/i915/i915_perf.c            | 130 +++++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h      |  13 ++
 drivers/gpu/drm/i915/i915_reg.h             |  14 +++
 include/uapi/drm/i915_drm.h                 |  19 +++
 5 files changed, 227 insertions(+), 3 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
