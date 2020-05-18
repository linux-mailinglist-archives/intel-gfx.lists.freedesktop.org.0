Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 519C21D7701
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 13:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4826D6E2C7;
	Mon, 18 May 2020 11:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC856E2C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 11:27:13 +0000 (UTC)
IronPort-SDR: mMTww6Dr135sH0sQzNwTPjDZKRCTMIA3M0v9WsoHqTUufpvW2oKS4rdDZTAKlUx+7lJI1muF6Q
 CnenUcke/+ZQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 04:27:12 -0700
IronPort-SDR: RiEryUd9M7GnxUmsDHuIgbkRdF7s21UJVdLo01wPM1lvv/gsDeriUsB8qlZzoi5aIdFsPFLN9l
 Ixi9aogS7h3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="373355771"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga001.fm.intel.com with ESMTP; 18 May 2020 04:27:11 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 16:48:02 +0530
Message-Id: <20200518111804.11842-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/2] HDCP minor refactoring
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
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
