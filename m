Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1178269B58E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 23:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B7510E477;
	Fri, 17 Feb 2023 22:33:52 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C69B10E1F8;
 Fri, 17 Feb 2023 22:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676673230; x=1708209230;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=K7MPuktbkzDtxrr6A8JAj7dnpbLaS56EUg+4GKhQ6rs=;
 b=YFp9Erdx6mXA+v/R5SpGiI1qmD/t4twi2B46Y2bDGVfHByTyscJNnIpD
 hmMJzAqA8OEaGY6McElfysPpynNXMeD0Q3lKmD9BDGfvkYwzlvphwqNUQ
 CSMZTgf0+5VJEutzYDbplyNc+3LZIuqQMCekhGikM+mZVfOvcf4VZ56ps
 58vfy2fFRCfwuJ3gioeu9t7ErGA942AoaUEHT24bs2xRxcEqer8Ks63J9
 3w8l2DqZp44gF7PnCiRne6b+I46aB6r82pyNMCpG56O37rof4wcCAxBak
 VOvB5a2zmVkODVX27pTDlML1vv+OzoKXkxODjQ7WWdqjUZS3L62Dssxdd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="320211570"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="320211570"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2023 14:33:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10624"; a="664021156"
X-IronPort-AV: E=Sophos;i="5.97,306,1669104000"; d="scan'208";a="664021156"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga007.jf.intel.com with ESMTP; 17 Feb 2023 14:33:49 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 17 Feb 2023 14:33:06 -0800
Message-Id: <20230217223308.3449737-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Clean up some GuC related failure paths
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

Improve failure code handling during GuC intialisation.

v2: Fix function naming and improve on/off balancing (review feedback
from Daniele)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  drm/i915/guc: Improve clean up of busyness stats worker
  drm/i915/guc: Fix missing return code checks in submission init

 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 133 +++++++++++++-----
 .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         |   7 +-
 3 files changed, 102 insertions(+), 40 deletions(-)

-- 
2.39.1

