Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3121519283
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 02:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C06D6112008;
	Wed,  4 May 2022 00:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14699112008
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 00:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651622474; x=1683158474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s3bvzzVbF776Ek4PEcH3UBqBvtXDBpQpiNpyaXDZp3o=;
 b=WUyc422s/+n4dIh7MgQ1/etPmvBzj+kfI72nYMuuNVGsRHcxPoiQDkyc
 M7lf+EqH1Vs149IPirXbrT2oKgvR7o2NaVmCV465TlNzTQQFImKgdwUQA
 N6RLzszP7E9d6q7t9qKoyfeOR+JplZ5HVVOnsmCiK4eGrru3EGSG/CHqv
 Y7anwz4eERsbCWVQPlmd3kaTEhshIEg97GQXiL8Qk0BDrVNI4JNXb/Zpl
 p30dREiyFP6XI+cX5tR2AZmBFenu2w9bZHnm7uyrAW7cP0ZDx0GRV1lyd
 cop/+0F25oMQef7wkcqRpNdFHh9OlyOZ7hBd9/GDcacfs21uAuF8gHRxd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="292812363"
X-IronPort-AV: E=Sophos;i="5.91,196,1647327600"; d="scan'208";a="292812363"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 17:01:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,196,1647327600"; d="scan'208";a="599292143"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 17:01:13 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 16:57:28 -0700
Message-Id: <20220503235729.617954-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] DG2 DMC Support
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While DG2 supports DC5 and DC9, some of the tests in
fast-feedback blew up DG2 when the tests forced transition
from dc5->dc9 on suspend and dc9->dc5 on resume. Some local
experiments performed with Rodrigo on a RIL system  showed promising
results when dc5 was completely diabled and i915 took only dc9 paths.

Sending this so we can check the CI results to confirm the
findings from local testing which will hopefully help narrow
down the root cause of MMIO BAR lost issue

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Imre Deak <imre.deak@intel.com>

Anusha Srivatsa (1):
  drm/i915/dmc: Load DMC on DG2

 drivers/gpu/drm/i915/display/intel_display_power.c |  4 +++-
 drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.25.1

