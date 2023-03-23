Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 397836C66FF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 12:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727C710EA7A;
	Thu, 23 Mar 2023 11:44:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA8410EA7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 11:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679571882; x=1711107882;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z9/4DizTQXkdngM9xg1EW7P1tJCVaS0V0kF6kp/1v1c=;
 b=T00jYFTTb8MTdymLMuzSOREOliM9kBw29smU1eTKNFNNI/D/RDPNDGA7
 SIUslxm7zuhN4283EW3heG2aFaWkZBRpZERb9RJRbbEfhU02MptqqJT7u
 7ol3CD4H4X3TCAcTonkPfujXYwXjK/PWMWR8/4W5DzDuOMKB8Lqu0dG3b
 GGFDVbcMwlQpwv7N6sDtis27aIU/8+RGuRJGtF6fw8MkoWfs6h4V8QErO
 xgN27snO1fno7I2wWqEsVWJ5ZehDPMc0OaLtOUNFtysNlMy6GF/S+aY8Q
 Ebyz4XK0Nf+U3XQperoYLcrUKH08CMLVP8GAIJAzWhEvlwTQ5w/NLsfSB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="425742109"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="425742109"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:44:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746688496"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="746688496"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.37])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:44:40 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 13:44:24 +0200
Message-Id: <20230323114426.41136-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Correction to QGV related register
 addresses
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrong offsets are calculated to read QGV points from mem ss. Also
a wrong register address is used to get the sagv block time. Fix
these two issues.

Vinod Govindapillai (2):
  drm/i915/reg: fix QGV points register access offsets
  drm/i915/reg: use the correct register to access SAGV block time

 drivers/gpu/drm/i915/i915_reg.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

-- 
2.34.1

