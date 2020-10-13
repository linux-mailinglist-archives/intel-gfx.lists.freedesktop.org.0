Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AD628D6C0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 01:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B249F6E47A;
	Tue, 13 Oct 2020 23:01:31 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9372C6E981
 for <Intel-GFX@lists.freedesktop.org>; Tue, 13 Oct 2020 23:01:30 +0000 (UTC)
IronPort-SDR: ZqhCeQ2hD/X5fRivgJEW/uIdvZ8iNefa+wsiiCZARI/bF4NxAaBku2Y7yCbmYFv6XTBylubM8n
 QmcCEHk0C0SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="230176804"
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="230176804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 16:01:29 -0700
IronPort-SDR: WPWjwzrkTlSxLd9QMdhPI47bKPfuwpsagTDjovrnEViVu+HTfYnlF/pQbzrztydQHgsnyj6AOY
 OC6C2GRWsGgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="390471182"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga001.jf.intel.com with ESMTP; 13 Oct 2020 16:01:29 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Tue, 13 Oct 2020 16:01:26 -0700
Message-Id: <20201013230129.2596998-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH v2 0/3] drm/i915/guc: Update to GuC v49
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

From: John Harrison <John.C.Harrison@Intel.com>

Update to the latest GuC firmware

v2: Rebase to newer tree, updated a commit message (review feedback
from Daniele) and dropped the patch to enable GuC/HuC loading by
default as apparently this is not allowed.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (3):
  drm/i915/guc: Update to use firmware v49.0.1
  drm/i915/guc: Improved reporting when GuC fails to load
  drm/i915/guc: Clear pointers on free

 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   3 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.c       |  18 ---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c   | 132 +++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c    |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c    |  31 +++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h  |  80 +++++------
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h   |   5 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     |  27 ++--
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |   6 +-
 10 files changed, 200 insertions(+), 105 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
