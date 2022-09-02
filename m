Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC37A5AB8DC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 21:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F36E710E8E4;
	Fri,  2 Sep 2022 19:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 217B210E8E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 19:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662146765; x=1693682765;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wMFqyarImMmo472YdrdJFX0ifPRXdOsj95yP/qimrpw=;
 b=lbQPiQWf06E2YNgbaBCLzU+6IfBwTHLD1amZqJ6hX6YAiSrokeLRTU5F
 R3nUwA5Xa+pV9WqVluFzUwtupieA+Ok9sgX36tzofDWXypN969BkJM0qF
 DOqkGJrz65OtFJbHf9wrFcXIWDan5m/8NX0v9WGAF2MbFAi/HWCivNP7J
 VY6Uhe4ox8IGt0I46u/E2z/tk4UeIci/UJU+PnTxupVo+hxqG71BZM0hC
 v8vZvwXfj+H5p+VS2LND7v0bPDfo4seR8qBfKiLXhThIb4F98GcLyxBcG
 1pjWSRcGs+6NaSrjbY786417a4Qa8RXRTB7PFj3ohDOjFZdz1nd2okdzI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="293649118"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="293649118"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 12:05:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="941399099"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 12:05:42 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  3 Sep 2022 00:36:57 +0530
Message-Id: <20220902190658.9459-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2][PATCH 0/1] Modify debugfs entry from dsc
 compressed bpp to input bpc
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Output dsc compressed bpp debufs entry is changed to
input bpc dsc to validate input bpc across various platforms.

Test-with: 20220831120849.28883-1-swati2.sharma@intel.com

Swati Sharma (1):
  drm/i915/dsc: convert dsc debugfs entry from output_bpp to input_bpc

 .../drm/i915/display/intel_display_debugfs.c  | 27 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 ++++-----------
 3 files changed, 19 insertions(+), 31 deletions(-)

-- 
2.25.1

