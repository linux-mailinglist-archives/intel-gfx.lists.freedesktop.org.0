Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0793278BF
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 08:58:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DADA6E30D;
	Mon,  1 Mar 2021 07:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74AE6E30D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 07:58:10 +0000 (UTC)
IronPort-SDR: YxNGyT/i0VmdFvgnJx7xAqkp2x89aEsTdtSFcO1EMHTgGB8ELhECcyjEzEBTgN+crggWCwTO11
 zbEm7SJLzsEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="174022872"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="174022872"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:09 -0800
IronPort-SDR: xAjGo4Mp7iHBmsAXXuwJTJt7DXakj/yX7DBGpUDkdRptikPKJmXf+U0EJ525Ft2HpsTefhMYwv
 AgCQVgqDZiwA==
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; d="scan'208";a="366624029"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 23:58:08 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Mar 2021 13:12:31 +0530
Message-Id: <20210301074234.5332-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] HDCP 2.2 MST fixes
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

Misc HDCP 2.2 MST fixes. 

Anshuman Gupta (3):
  drm/i915/hdcp: HDCP2.2 MST Link failure recovery
  drm/i915/hdcp: recover link on stream enc enable/disable failure
  drm/i915/hdcp: return correct error code

 drivers/gpu/drm/i915/display/intel_hdcp.c | 30 +++++++++++++++++------
 1 file changed, 22 insertions(+), 8 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
