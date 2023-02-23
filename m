Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D786A0591
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 11:05:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F352B10EB03;
	Thu, 23 Feb 2023 10:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE4710EB03
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 10:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677146727; x=1708682727;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q/eg/5cVYQqT9JeKc4IHplZtg6iKrIPUjqbVPptHmD0=;
 b=JV9ej1GmYBuInEvHS+SuepJD/BUtcThQjqL5kPyIin1gylAG98ut17dK
 DxiDvDVvIe6G6dPET12OrjhAnxEb1vTU0pnfbhAT4ZvMkSuUKoPywto7g
 B3okep5gfu9lbzsEAbWzTAOEBW7ENYSfKzYy2wopBE3lKrRQD1JErwdGC
 bevBxevprsPpeysZ+dA3frrlOWBkF40zYNm6j/pgrcnvP7V2Dlafkt9sD
 n6CQ9/sHZQHvOid9pVhVSakMSPD96IdUwUPbD+Fb62MIRTlNNq12XdR2M
 vf9cPP0ZrLgnWfdWCfnYMgeYRXvQlU7GJ/M0Zxn2Zri2Eu4nehJlucuwt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="331838282"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="331838282"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 02:05:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="917920175"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="917920175"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 02:05:25 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:35:01 +0530
Message-Id: <20230223100503.3323627-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Selftest fixes
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

Few selftest fixes to gt_pm and rps tests.

Anshuman Gupta (2):
  drm/i915/selftest: Fix engine timestamp and ktime disparity
  drm/i915/selftest: Fix ktime_get() and h/w access order

 drivers/gpu/drm/i915/gt/selftest_gt_pm.c |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c   | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.25.1

