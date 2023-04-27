Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B14D6F0E7A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 00:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97B5F10E1CC;
	Thu, 27 Apr 2023 22:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC7710E19D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 22:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682635640; x=1714171640;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qudgFA7ovgzj1jroK+UYzn/K7OuvhLndWvVw56pRhUg=;
 b=STw8tuuBs/keQ3UCDTgKYNbIPNNVbRdpmcxo6yxlTbDZylal/cbGAimG
 UbOmeb1xZX10xDLVVHgco2WFbwo8GNEJFoIILntxTskoF63EPQXVjoln5
 /fuG87PQbuZlLXOxugFvcuBOBRcjn4rkOPc+rKoTPqVPh0Vk2EbnAdMrG
 Pw0j6LQS6kILRZg4Ij5uQIh1kxvHrq1K9UmqgFrUHmTfE+Kk9bceUhKbb
 br51o7kSd1TipX5qOYdq0VwGfDcKcEjUd8FRRbsb5rkA2ivLkA6Satez7
 GLXsUCDystkW96+vJZ6suA/eylksxCxaZoCoO00PU0gX9D0cbUTZa7F7K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="412954944"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="412954944"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:47:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="727318009"
X-IronPort-AV: E=Sophos;i="5.99,232,1677571200"; d="scan'208";a="727318009"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 15:47:14 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 15:47:03 -0700
Message-Id: <20230427224705.2785566-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] fdinfo: Enable some support for GuC based
 client busyness
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

Export context runtime into the fdinfo framework to enable per client
busyness for GuC back-end.

v2: Fix zeroed busyness values
v3: Include review comments from Ashutosh

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (2):
  i915/pmu: Add support for total context runtime for GuC back-end
  drm/i915/fdinfo: Enable fdinfo for GuC backends

 drivers/gpu/drm/i915/gt/intel_context.c       |  5 ++-
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  2 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.c        |  6 +---
 5 files changed, 39 insertions(+), 7 deletions(-)

-- 
2.36.1

