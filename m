Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC37678467
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 19:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA8F10E52B;
	Mon, 23 Jan 2023 18:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1854E10E52B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 18:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674498082; x=1706034082;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dRdFU4aCiOlmeURETV3UX2S5ARc4FJk/UU845V+zcVY=;
 b=OQIH2l9stkzlNLNC8GXQz1M6mddJX/WRWulQT1k4cQohS4EFcoV2hXxG
 uE5Gfc84Oz+51d1tysO71fQkxIGNg4cdF+WErwtAhJ31im0/WQkXWKzOX
 uZlpcx8cFtaj++5Q8qm6Hq++Pvspe+q1RaHRs9Wob2HD/AGA+vuP6X4Xi
 wYioSrS2neQ4urjpjkBUajHmy1bEsG1tv+Zhfrwf0RbKsaDvyHuBaRqIO
 h9QkRTef9yrlxVL8bPa9WnR/BN3skSLhWJuNdKqHxfqcGe2O6wR7ggY8c
 ZF8xRaRofv8/a27JTgTNcx6hum3LvJMaT8ERTer6ucYmWMRKWbk0k2OxB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="327370819"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="327370819"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 10:21:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730382862"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="730382862"
Received: from tyen-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.41.157])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 10:21:03 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 15:20:19 -0300
Message-Id: <20230123182021.31239-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Use unversioned blob path for ADLP DMC
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series introduces the use of unversioned blob path for ADLP DMC,
which begins using the new convention as of v2.18.

In order not to cause regressions with systems not having linux-firmware
up to date, we recall a patch from [1] that adds a fallback mechanism to
load from the latest versioned path in case the unversioned one is not
found.

IMPORTANT: Prior to applying this, we need to wait for a PR to
linux-firmware with the proper update to be applied. I will create such
PR after this series is accepted and CI results are good.

[1]: "drm/i915/dmc: Make firmware loading backwards-compatible"
     https://patchwork.freedesktop.org/series/112116/

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Gustavo Sousa (2):
  drm/i915/dmc: Prepare to use unversioned paths
  drm/i915/dmc: Use unversioned path for ADLP

 drivers/gpu/drm/i915/display/intel_dmc.c | 66 ++++++++++++++++++------
 1 file changed, 50 insertions(+), 16 deletions(-)

-- 
2.39.0

