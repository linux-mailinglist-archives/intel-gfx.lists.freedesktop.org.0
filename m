Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89BB2758CD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 15:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3D36E156;
	Wed, 23 Sep 2020 13:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9E76E0D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 13:35:32 +0000 (UTC)
IronPort-SDR: yP6QClQK8yvUA8agGVpHkgq+uaMzrCmATT+ugsH+e1PJKR9tOTcxiUOBLO+gWz/cBqtzO17yEU
 puYy6dsWL9Zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="148628183"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="148628183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 06:35:31 -0700
IronPort-SDR: BtME/66cSdTPGjMKhXRwiK6tGOVRtiMt1hJnyEw2ZLdf7tVek/TKsVIXfrXGkMBB4JlSowJAZ7
 fEacMzsCKHsg==
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="454916527"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 06:35:30 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Sep 2020 18:54:33 +0530
Message-Id: <20200923132435.17039-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/2] HDCP misc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rebased of a older series which has been pending to merge.
original series : https://patchwork.freedesktop.org/series/73345/

Ramalingam C (2):
  drm/i915: terminate reauth at stream management failure
  drm/i915: dont retry stream management at seq_num_m roll over

 drivers/gpu/drm/i915/display/intel_hdcp.c | 89 ++++++++++++++---------
 1 file changed, 56 insertions(+), 33 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
