Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E5A496677
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 21:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F26A10E630;
	Fri, 21 Jan 2022 20:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201BF10E620;
 Fri, 21 Jan 2022 20:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642797767; x=1674333767;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8L9mcEI7B+vPTe3tv4cFVl5ElCGuxZIDXQh39t4YN7g=;
 b=FUVLFaupYDp5vseOECO4xM1aOIeFatKT0jYad+4yAkRbNzqYtqSFdz6N
 oEkSMN+Dwsh2uEZIuMUAT9+v4PdV/W9bIySKQqEJipVLOaTqjLQiiDSfm
 0iiklAsMEtIRHXTGE5y7SjL7J5iCCVIJE1MXxAPFTp7e5+4zDjkd/1J++
 +BdjAUAGSGPPVCreJ+x7TKqIud9aa31yTKYQjxPnoT3jijxhCRKpT3BIa
 IS2KaKWZTL7LYYqciP/NKMHvgfgqgxcwsGNCzI6OHPN+UQ3fpyK0UiCzf
 KhF7jW68OWo4WLY71esm1aILWjQmAI6fvoF7b+8fqyvBCkVgdx/bntLE7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10234"; a="309065945"
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="309065945"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 12:42:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,306,1635231600"; d="scan'208";a="626855409"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 12:42:46 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Fri, 21 Jan 2022 12:36:56 -0800
Message-Id: <20220121203658.28042-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fix up request cancel
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

Fix request cancellation + add request cancel low level trace point.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Matthew Brost (2):
  drm/i915: Add request cancel low level trace point
  drm/i915/guc: Cancel requests immediately

 drivers/gpu/drm/i915/gt/intel_context.h       |  1 +
 drivers/gpu/drm/i915/gt/intel_context_types.h |  5 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 46 +++++++++++--------
 drivers/gpu/drm/i915/i915_trace.h             | 10 ++++
 4 files changed, 42 insertions(+), 20 deletions(-)

-- 
2.34.1

