Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD9A392B34
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 11:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC30D6E11C;
	Thu, 27 May 2021 09:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840256E11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:56:02 +0000 (UTC)
IronPort-SDR: 8CTodHpxo4OXv3WStHrMOKF/+6hxMm7Ff7DD0dtbBdRoeRo0CtWAMF9Qmiytur2D1HtwAqtpUK
 jn1ZzN9Kt9xw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="189814473"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="189814473"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 02:56:01 -0700
IronPort-SDR: y+jRLGQnDg7fxl1aNiuuyjvBST1ZXibNIR94+7cHD5wBRXYE+Rs30cJ4w9Eiq1QYpCnTz7fuLp
 ZtpU5FMqq2Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="472449424"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by FMSMGA003.fm.intel.com with ESMTP; 27 May 2021 02:55:59 -0700
From: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 May 2021 15:15:34 +0530
Message-Id: <20210527094535.31728-1-krishnaiah.bommu@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] drm: add error message for ENOSPC
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

add error message for ENOSPC, this will help developer to understand issue.

Bommu Krishnaiah (1):
  drm: add error message for ENOSPC

 drivers/gpu/drm/drm_mm.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
