Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2019391414
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 11:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD3B6EC48;
	Wed, 26 May 2021 09:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01F6289AFF;
 Wed, 26 May 2021 09:49:13 +0000 (UTC)
IronPort-SDR: cg2lMOEdqv/1/fG/MOOCPfKi+9maUtsZfh3ifGsQ6T7uTGCsX38/3VWQPCNYsxvclVvQm3yQ6M
 6MKiKGXgKB0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="189546946"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="189546946"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 02:49:10 -0700
IronPort-SDR: LkLdABtotWQqkzj2egJbH1MPb8+cDgegeXwh9rSWx8d8KV2II6DwUx85VSGUAYOmwSA7xSyTd+
 28NxE3gLcD3A==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="547135981"
Received: from sjmeneze-mobl2.amr.corp.intel.com (HELO aswarup-mobl.intel.com)
 ([10.251.6.1])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 02:49:09 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 02:48:51 -0700
Message-Id: <20210526094852.286424-1-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Adding Wa_14010733141 for SFC reset
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Need an ack for push to intel gt branch. The patch has already been
reviewed by Daniele.

Aditya Swarup (1):
  drm/i915: Add Wa_14010733141

 drivers/gpu/drm/i915/gt/intel_reset.c | 194 +++++++++++++++++---------
 drivers/gpu/drm/i915/i915_reg.h       |   6 +
 2 files changed, 137 insertions(+), 63 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
