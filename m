Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFC01D12A8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 14:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 931FB6EA10;
	Wed, 13 May 2020 12:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C616E217
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 12:29:47 +0000 (UTC)
IronPort-SDR: IBGluugcW+UnvT8FgQWl+fi7+bARjdgjpSFJjIuAfIEqnVr32/2GcFzzHsXq8IWGHmQsSeQB02
 djhiR+G8xt2Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 05:29:47 -0700
IronPort-SDR: H9TTM3pH2yXCF80sAYqT1lv+k1Xj8rT+pHEu2tor3pCIRn7HDD1QjzZAfyNTmAit99uCA+CQ+v
 kaFFtdhv/TVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="409672394"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 13 May 2020 05:29:46 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 17:48:43 +0530
Message-Id: <20200513121845.19437-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] HDCP minor refactoring
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

No functional change.

Anshuman Gupta (2):
  drm/i915/hdcp: Add update_pipe early return
  drm/i915/hdcp: No direct access to power_well desc

 drivers/gpu/drm/i915/display/intel_hdcp.c | 24 ++++++++++-------------
 1 file changed, 10 insertions(+), 14 deletions(-)

-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
