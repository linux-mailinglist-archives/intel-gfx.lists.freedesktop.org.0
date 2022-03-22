Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE46A4E3EB1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3CD310E54F;
	Tue, 22 Mar 2022 12:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A6F10E54F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647953005; x=1679489005;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MMfjCOtEjWX3e7z2dvwyi5G2LmlhVjaK9xkCrHrLANM=;
 b=cre9vqECtKsJztwQrXJUnZ5IIywE551PTjrA+MoYJUOVvQHSGAPHLOfM
 nirHbOP5XYQ7jxcCPemKxBTq8jXILdj3YRcR5tG/CeVmKyiDT7blrPpUm
 sEcnVtveFlXdxaZxDlmJb9e+mRbC80+D7jyRO1tLrY2dIgODcmcpwoRj1
 mc5sZWNkX5R3FlcWx31OcFEjeE6wA8wBhXZXKhgS2HPttQTPOOzKOmg44
 Z9uztfXQTUKbPNohsb2fc3eBz5xIGwgYRBmMuqqRxHxavnGeM0Zpf58lW
 Hap/QDcIuweQgB8/snk7WVaMJ3kw2G234J/83wqba73wNk3VR1zcB48cE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="318515118"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="318515118"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:43:24 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="518865283"
Received: from mbaulin-mobl2.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.56.238])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:43:22 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:43:07 +0200
Message-Id: <20220322124308.308300-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] [PATCH 0/1] Handle the DG2 max bw properly
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

Provide accurate max bw data for DG2.

cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Vinod Govindapillai (1):
  drm/i915: Handle the DG2 max bw properly

 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

-- 
2.25.1

