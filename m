Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E32672228
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35E810E783;
	Wed, 18 Jan 2023 15:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8ED710E783
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674057196; x=1705593196;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0g40/KKA4mrAVyybLtBSFyZLC3W06Fr6julIqaxRTIM=;
 b=cfD6SUtP3D6MzyvwQqviiO5TDRAmXhJg7lDW4NKS+RCESvOpDCC06JM4
 MY7BKntMgedde+DUTOCdseiVIhJRBknLmY2faeQbgqvH664lpOOAYAY0V
 GIw17JPzKfC+U50zMER6IWiPAf6C76rSiuNVwZ/wpWYWkvZvTjRfF/5e+
 EL8uVWk+WjUya3IB0i4K/KPyNDGigYmby6j/FNdccTSPWsNX5S/GYyOvA
 uiBpMviMa/4tWsBXc6WcmHr0kwfAcSnMRpVJZMxg8cwPRkuHtvonmIn1l
 6bFP6G/cZIRpgnbZcYpwxvWPkVgaBhvj0E+N1icaX6MgbTZV2aO4Un8/w A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="411249686"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="411249686"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:52:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="802236750"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="802236750"
Received: from sgunturi-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.213.185.74])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:52:58 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 12:52:47 -0300
Message-Id: <20230118155249.41551-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function (Series)
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series as v2 of an originally single patch moving workarounds for
LSC_CHICKEN_BIT* registers into their correct function.

This version prepends a patch extending the existing documentation in
gt/intel_workarounds.c to make it clear where workarounds should be
implemented according to their type.

Gustavo Sousa (2):
  drm/i915/doc: Document where to implement register workarounds
  drm/i915/gt: Move LSC_CHICKEN_BIT* workarounds to correct function

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 81 +++++++++++++--------
 1 file changed, 52 insertions(+), 29 deletions(-)

-- 
2.39.0

