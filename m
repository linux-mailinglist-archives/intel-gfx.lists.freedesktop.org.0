Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A269493027
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 22:49:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A45810E1FF;
	Tue, 18 Jan 2022 21:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B0A10E194;
 Tue, 18 Jan 2022 21:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642542589; x=1674078589;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QpAOipgk04ndRGi+OCBuLEhbkroZdHsVe6SNVFsxfAg=;
 b=iKqbF4hjBwG/ZQlgtuai+vlCwuu3B/395AmQM/CVXsMslvJeoeLCn9TZ
 kVt2Nc7Nxzv8CPAZhhsT0CXUp6xjDGnTZlqkdbdog5gHU1OoKjVbItRto
 IMkHI5+Fr0+U+nU5bWWVFN0IS0u5jYQWfJmas/91aEeW63XgQ2S+Tdaan
 ZtPt0EFXufuMZflFFM9Cv7s6zyoC/N6f4GaAmibOTiJSgJWxlByF5GgI6
 AO1/6IQ8Cyi4ADMzcKet9qlNt60nnLktgA9QvOkDMe4l2CyKgRJsBZDZy
 /MpY5bWTLbtxOcg05FGh6myoD24khTLTs789rqV2nHO2l7wn5JR0lspo9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="244716622"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="244716622"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 13:49:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="531968398"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 13:49:48 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Tue, 18 Jan 2022 13:43:54 -0800
Message-Id: <20220118214357.33740-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Flush G2H handler during a GT reset
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

v2:
 (CI)
  - Don't trigger GT reset from G2H handler

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (3):
  drm/i915: Allocate intel_engine_coredump_alloc with ALLOW_FAIL
  drm/i915/guc: Add work queue to trigger a GT reset
  drm/i915/guc: Flush G2H handler during a GT reset

 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  5 +++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 +++++++++----------
 drivers/gpu/drm/i915/i915_gpu_error.c         |  2 +-
 3 files changed, 26 insertions(+), 22 deletions(-)

-- 
2.34.1

