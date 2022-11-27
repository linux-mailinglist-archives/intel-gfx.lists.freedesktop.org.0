Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6081C639966
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Nov 2022 06:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E132F10E186;
	Sun, 27 Nov 2022 05:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6AFB10E186
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Nov 2022 05:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669526499; x=1701062499;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FlLSoQwwPsIetKgsivzejFmWENXjszM5PNRPyoYry90=;
 b=iPT9tt5T/lxUyMXksIlmzl2ObJkMFDIRPvwp9UP2ko/5MQvQjQBNTkmW
 FRY6aRTgjonXTRD0TbkIT8GsEyzlDxcvIg1A6r+tY9DCHKp3hflJrFGig
 9/0mffzzSMkTblYiB/poqn1cg+aKPmLTJ65+3weKFchNMbeTuGYZOKXHS
 8AOCHjVqo7adgiXw0759QAudPulzOC7/BVfbXmXYwkWdyOoNLbXfoFPcu
 OFTv1g80LjVnS1mVKv/XWRJYbsTIlEfV9+OiYIkoUqcMBBpuX3900LcRk
 c9ZXtvr080UDPSqZeHUCytP1sdvarJw0neHizpuo6Mr5VOwAqdcSURguq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="315801839"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="315801839"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:21:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="748984444"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="748984444"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:21:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Nov 2022 10:52:30 +0530
Message-Id: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Align DDI_BUF_CTL Active timeouts with
 Bspec updates
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

Few changes in wait for DDI_BUF_CTL to be active while enabling Ports
as per Bspec updates.

Ankit Nautiyal (2):
  drm/i915/ddi: Align timeout for DDI_BUF_CTL active with Bspec
  drm/i915/ddi: Add missing wait-for-active for HDMI aligning with bspec
    updates

 drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

-- 
2.25.1

