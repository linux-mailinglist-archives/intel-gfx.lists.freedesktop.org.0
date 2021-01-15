Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084942F7D7F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 15:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7E26E0AC;
	Fri, 15 Jan 2021 14:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310546E0AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 14:03:11 +0000 (UTC)
IronPort-SDR: aklLZu41x+A7wVrmyDunwi4Z0oCxzEWvKZEoN2z/ftXfb0MMw63yzcBpvP/NUMGli3wUayZeYe
 cBAI0gMzGrZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="240095233"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="240095233"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 06:03:09 -0800
IronPort-SDR: aAagJJLgsiy230cS6IaAbuAUb9kHwg55UWaOKG9VdyTyKS9rJ7EBjdYCSeB9xo1VWLb/NV1INe
 0q9Xsmu64ojw==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="465585456"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 06:03:07 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 19:18:23 +0530
Message-Id: <20210115134825.29521-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] HDCP misc fixes
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

HDCP misc fixes.

Anshuman Gupta (2):
  drm/i915/hdcp: Fix WARN_ON(data->k > INTEL_NUM_PIPES)
  drm/i915/hdcp: Fix error: uninitialized symbol 'ret'.

 drivers/gpu/drm/i915/display/intel_hdcp.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
