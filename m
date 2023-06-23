Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A871173B52C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 12:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3960010E106;
	Fri, 23 Jun 2023 10:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501FE10E63C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 10:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687515801; x=1719051801;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OKbLDrUwN8widkiDBKvDaL++RN/6IZl0scrsFpciItE=;
 b=PCIpI9WO7TJtxlSQGpfvVZNTjZzIrYVz5szaXDWg1GAmeGYLAMpK8b/X
 eETwuhpDgVxBsyAfy/gW6XUPwlxshAgHw8xf7S5Zqtj8NjVmJhTLwrZRS
 G/2jWbmy3sc33BcJ7fZpNHx0uYXKagLCNF3ChNTQdV6oKpHX6g5srgE3j
 xw3nIVkCRUYFGvJ+Nr9udYGSGQBYtnRWA96jujN/H17JXB/VyEI+NTZJr
 E7aSZU49/UUkePLK8pKFPMwrpjA/MqZV2d44C4Dgn0TuF2JJvyriPsnD/
 sfOgPCwa93jTvagii0FMNTMKmETfDYNy6/YgRHv8FnaDBB62qTKVL+p7d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="424417300"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="424417300"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="961920757"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="961920757"
Received: from wtedesch-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.215.233])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:23:17 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Fri, 23 Jun 2023 12:22:18 +0200
Message-Id: <20230623102220.343937-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 0/2] Update AUX invalidation sequence
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

as there are new hardware directives, we need a little
adaptation for the AUX invalidation sequence.

This series was already proposed in the past but received no
comment. Respinning it again :)

Andi

Jonathan Cavitt (2):
  drm/i915/gt: Ensure memory quiesced before invalidation
  drm/i915/gt: Poll aux invalidation register bit on invalidation

 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 24 ++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 2 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.40.1

