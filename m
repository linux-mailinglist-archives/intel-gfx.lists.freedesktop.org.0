Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A97602FB23C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 08:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AAE06E82B;
	Tue, 19 Jan 2021 07:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F976E82B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:01:35 +0000 (UTC)
IronPort-SDR: 5gB2qK7xutoLn05MXfyovY8pborzBfvRVPZaRVdlVJHC4/Q5OpHcNvwWU3CDnCT3qlzvXDZoIm
 WNp7jKI02W+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="178108402"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="178108402"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:01:30 -0800
IronPort-SDR: M+1aJUIJJwoFviqlwCSFtsApHKW4N/RGVy2SPG5q3tl3u01lyXUsktcbTDI5ngL8X2j+bTFrP+
 NEC99HJkFE4g==
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="500853920"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 23:01:27 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jan 2021 12:16:53 +0530
Message-Id: <20210119064655.1605-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] HDCP misc fixes
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

Anshuman Gupta (2):
  drm/i915/hdcp: Fix WARN_ON(data->k > INTEL_NUM_PIPES)
  drm/i915/hdcp: Fix uninitialized symbol

 drivers/gpu/drm/i915/display/intel_hdcp.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
