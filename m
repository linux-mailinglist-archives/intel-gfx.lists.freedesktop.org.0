Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CB348DD57
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 18:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AA110E536;
	Thu, 13 Jan 2022 17:58:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4CDC10E244;
 Thu, 13 Jan 2022 17:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642096705; x=1673632705;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BHhNn4Kxfw6fGkx0QxRX8f/GyYAvCkghaTlwTSagQkA=;
 b=Om+ffy8wsS8R2hCu8sqXy1CSYUai9b0CCIoVRHWwIndbLm513WBjaIC5
 nUfmVbq+YqqEVV/CfZEpFe+Dq6vYdg5hdlr/8yI8qndvZuZYaiggnKB/K
 fZSuv6I6JLUCjFC76KlLxdcStCDLQO0ufBFXoJ76CoGHCVAgVk0UpaAdT
 RQ2P8hrBjrrw65kWmoDlz2hZN9n4TtS6oUZGYHL5EPpoDdzKEq3HjRrLC
 Rb67xFgntxKoTuMEdleiYE9KRwztDHsVVX3o19P3KQg+ezPPQQmPEUVln
 OYrXl76Uj9Lv0mnnuGxjZK2FllSg7Bmksz57wtTCx851u/Eq2Rv8CpKxp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="244030356"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="244030356"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:58:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="516028962"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 09:58:24 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu, 13 Jan 2022 09:52:30 -0800
Message-Id: <20220113175232.20897-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Flush G2H handler during a GT reset
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
Cc: thomas.hellstrom@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After a small fix to error capture code, we now can flush G2H during a
GT reset which simplifies code and seals some extreme corner case races. 

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (2):
  drm/i915: Allocate intel_engine_coredump_alloc with ALLOW_FAIL
  drm/i915/guc: Flush G2H handler during a GT reset

 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  | 18 +-----------------
 drivers/gpu/drm/i915/i915_gpu_error.c          |  2 +-
 2 files changed, 2 insertions(+), 18 deletions(-)

-- 
2.34.1

