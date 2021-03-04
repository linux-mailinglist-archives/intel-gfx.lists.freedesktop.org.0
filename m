Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE4532CF4B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 10:11:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3527B887DE;
	Thu,  4 Mar 2021 09:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C0A5887DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 09:11:44 +0000 (UTC)
IronPort-SDR: rS0q5yPIQB/gdh4Tmk2i7nn31z9w41TVHi7dqiesdo1mKSLbIi1PiWNa5FkRDjDild9hRD08ku
 Gbrfavkg5LTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184966384"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184966384"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:43 -0800
IronPort-SDR: EOBFsO3lTIz/Ve28OQ8V2bqNOyAbngd72h014Rgy3vv0SZbuEtTZ6E0Ml6sVLoIN2DSxrSJk6G
 ZdqRPVYkeGuA==
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="400512477"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 01:11:33 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 14:26:05 +0530
Message-Id: <20210304085608.21372-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/3] HDCP 2.2 MST fixes
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
  drm/i915/hdcp: link hdcp2 recovery on link enc stopped
  drm/i915/hdcp: return correct error code

 drivers/gpu/drm/i915/display/intel_hdcp.c | 26 +++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
