Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 327CA3921CE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 23:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 549256EDD5;
	Wed, 26 May 2021 21:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636246E862;
 Wed, 26 May 2021 21:12:39 +0000 (UTC)
IronPort-SDR: PPzapS5OlGnjWsdTaHJZIynq9go5yVKU3BnNjEIWrF6Jkd/3unCJfwJr6NyPVCN9rDaUVp7TX3
 1u5B9/9Ta2yA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="288163148"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="288163148"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 14:12:37 -0700
IronPort-SDR: LT2A/IHVs51RK43ovLAkciboquHGSasJ8flzIxc3eeZ281ij23ftrJoEqquyEbdTUyVk7cTgc4
 Ky3Zi/hFmY2Q==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="414620059"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 14:12:37 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Wed, 26 May 2021 14:30:27 -0700
Message-Id: <20210526213029.7178-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] A couple more prerequisite patches to GuC
 submission
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

As discussed in [1] we are breaking that large series into a several
smaller ones. This series includes 2 patches with no other dependencies
and are fully reviewed discussed as part of step #4.

Assuming CI looks good these patches can be merged immediately.

[1] https://patchwork.freedesktop.org/series/89844/

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Daniele Ceraolo Spurio (1):
  drm/i915/guc: Use guc_class instead of engine_class in fw interface

Michal Wajdeczko (1):
  drm/i915/guc: Early initialization of GuC send registers

 drivers/gpu/drm/i915/gt/intel_engine_cs.c   |  6 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 18 +++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 20 +++++++++-------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 26 +++++++++++++++++++++
 4 files changed, 51 insertions(+), 19 deletions(-)

-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
