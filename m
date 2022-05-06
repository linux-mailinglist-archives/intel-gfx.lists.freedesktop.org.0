Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EF651DE3E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 19:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A361210F22F;
	Fri,  6 May 2022 17:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8759A10F22F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 17:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651857438; x=1683393438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=s3bvzzVbF776Ek4PEcH3UBqBvtXDBpQpiNpyaXDZp3o=;
 b=gBvuL8UczZNeOrkon7QggwmoQWWpZRgc15FYiVZVloWm6TsKWueOU0Q2
 lyQagwg+f+mJLkk3qpl2BSbo1duwPcMRAfw3lpaETFe6kIZuFb6t/9lKR
 jTKi/SNyvYnKBYn4FvbEx4fEY0Zs14Ew3TcbovfUW7ySgii5TugHKr1Zt
 Je29awhUqzNDz+iGS1O1QJlWH0/5AI/wk2Dbz81DvQaYLGKcJ24baYhHQ
 WeWXbQmR4eGWsofoBq6tr2UvcUih8Hr4V2lIyoqn0Se5eAoTaQrrtm7jt
 lEeYz9mBN3R68i6jwiuvqcu4R5g+M90fNgv/Kc7yeMsXpCMBoOOIqnD8J A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="329070219"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="329070219"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 10:17:08 -0700
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="518129795"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 10:17:08 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 10:13:27 -0700
Message-Id: <20220506171328.845107-1-anusha.srivatsa@intel.com>
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

