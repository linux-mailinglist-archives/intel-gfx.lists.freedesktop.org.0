Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CECCF6D7366
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 06:29:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C9910E33C;
	Wed,  5 Apr 2023 04:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CCA710E2C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 04:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680668965; x=1712204965;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zej9qk4GSHbRND9BilrViJuZ7y8z9bWpP24AVaK424I=;
 b=Vhts1mzD79XZBYlcHKjV/uEI5RkQhZ0osndycnku/ftfsf/gl+DH72eE
 QM13iCi67Cdqceiv7d6dYoH7eJrTUV89GOVJl9dOosBDuCPD7bYjqMrn4
 x/2jpBrsKbvqw4/SsVA9GHYLMYlFW8VhC4stzJt4gfH08kGp+CK1f3iMH
 U1QPhquSmk4Tj5PkI+hyGqvGLbxdT1Zvvf7U12xjTX+u8xuE+v6QQHB+p
 W6XvqewqVTViTw0PW/OfXROXFB1sx3d6zIxbN0GFw7Cyf6W+qWr6N6XWl
 jRxr1YGLbpKWAVd2q5RxeT9QyfvnAfBYxvl3lk8qJVPRNwAmzmkkOpTaj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="428652565"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="428652565"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 21:29:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="932682987"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="932682987"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 21:29:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 09:57:11 +0530
Message-Id: <20230405042713.1225203-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Update DSC Bigjoiner BW check
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

Update the DSC Bigjoiner BW check for computing compressed bpp:
-As per latest Bspec update bigjoiner interface bits for DP for
DISPLAY > 13 is 36.
-Account for the check during computing of min CDCLK.

Rev2: Fixed display version
Rev3: Added new patch to account for Bigjoiner BW check while
computing min CDCLK.

Ankit Nautiyal (2):
  drm/i915/dp: Update Bigjoiner interface bits for computing compressed
    bpp
  drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck

 drivers/gpu/drm/i915/display/intel_cdclk.c | 49 ++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.c    |  3 +-
 2 files changed, 44 insertions(+), 8 deletions(-)

-- 
2.25.1

