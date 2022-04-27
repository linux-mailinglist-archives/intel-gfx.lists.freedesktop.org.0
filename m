Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3CA511C72
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 18:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A9010F6A3;
	Wed, 27 Apr 2022 16:55:52 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C8710F231;
 Wed, 27 Apr 2022 16:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651078551; x=1682614551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AY8VU+LR2HwOWHFAB+ZUpVAiBAd3Chbuy6ofzfaSejk=;
 b=Pl8URJdwVEJqMik/msocOMDUGOmwqAVy2Dwb9haG3f52qoaFWLw1GQiO
 VM/K5NHT217oz1j2y/W4DqRaPlKkn1odV4qJ8afxRcCHDZLNF6JqBiWEh
 B7lBkYojDXOf4IkI+CjhaIa7SP1KvdgftOF91C4Yn+7RNIlHaP1g61gVQ
 As1Ors3nChByb9fteZ+88qJbV1EdDMsynkGRt0FO1awjc2kNQC1Tu1tY9
 r7Q0YEqDBCKtWw5NUML11M7UrXwUpDibExLCEjPNOCKjcFRByild+YTr7
 UAusNILAbcJZRYkvpHmapEmXR9HjhMtPz/q4cM7fVwnAbcoHH6wYRE9RY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10330"; a="265812197"
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; d="scan'208";a="265812197"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 09:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,293,1643702400"; d="scan'208";a="540186177"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 27 Apr 2022 09:55:50 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 27 Apr 2022 09:55:48 -0700
Message-Id: <20220427165550.3636686-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Initial GuC firmware release for DG2
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Add GuC firmware for DG2.

Note that an older version of this patch exists in the CI topic
branch. Hence this set includes a revert of that patch before applying
the new version. When merging, the revert would simply be dropped and
the corresponding patch in the topic branch would also be dropped.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  Revert "drm/i915/dg2: Define GuC firmware version for DG2"
  drm/i915/dg2: Define GuC firmware version for DG2

 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.25.1

