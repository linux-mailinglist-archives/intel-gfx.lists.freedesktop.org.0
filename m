Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB731B452C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 14:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A66966E9EE;
	Wed, 22 Apr 2020 12:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D5C6E9E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 12:29:43 +0000 (UTC)
IronPort-SDR: q6Nr9pko+vv0NPMwGBZnhqMny2Eb5QOVw50ntJe5YQmpZlS/5vHKJotqZt/Cai+wMLTyI11ujH
 73wD25CvCIEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 05:29:42 -0700
IronPort-SDR: yzurP79OwCn7rCKr7fhdZSSZ1f85fLNA8m2VUncYQvEgQ3tPfwah0rmmuaWNFKjdzI46Y9yvAS
 r7QXQ3qbqCNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,414,1580803200"; d="scan'208";a="255624380"
Received: from invictus.jf.intel.com ([10.165.21.212])
 by orsmga003.jf.intel.com with ESMTP; 22 Apr 2020 05:29:42 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 05:30:36 -0700
Message-Id: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Apply Wa_1406680159 as a clk_gating
 workaround
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

This is a one patch series that moves the WA from RCS WA's list to 
clock gating WA's in intel_pm.c

Test-with: 20200228104340.2895082-2-chris@chris-wilson.co.uk

Radhakrishna Sripada (1):
  drm/i915: Apply Wa_1406680159 as a clk_gating workaround

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
 drivers/gpu/drm/i915/intel_pm.c             | 4 ++++
 2 files changed, 4 insertions(+), 5 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
