Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FDC23CA62
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 13:57:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202EE89F97;
	Wed,  5 Aug 2020 11:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A49F89F97
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 11:57:32 +0000 (UTC)
IronPort-SDR: wWw+M4oPvov1OCwZ8tQ39uOrXZmTxPZ2foL/NUP9ZkfjRgNBAS3BmiMQ2BoGQ7WBRApI1FKMMq
 GqwYPt8PCS9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="151737509"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="151737509"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:57:32 -0700
IronPort-SDR: fD35nMmbbKOf0ZmAt790wRiN6EKeQDUlav8ZgPF83CxH58g9/WQpnXiSR//P08VUA5uXscTkk4
 z0MDa5qGKl1w==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467440675"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:57:29 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 17:15:19 +0530
Message-Id: <20200805114521.867-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/2] HDCP minor refactoring
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

 drivers/gpu/drm/i915/display/intel_hdcp.c | 23 +++++++++--------------
 1 file changed, 9 insertions(+), 14 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
