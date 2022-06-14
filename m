Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 461D854B095
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 14:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730158919E;
	Tue, 14 Jun 2022 12:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022578919E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 12:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655209832; x=1686745832;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jr7dhE3SnU0+mOGM6N+sMdkHwQ5M1eY5Xury47aFxsU=;
 b=TzDaw8X3OACnurvGT+zNbSj7rDwmMopW4sNAQZbDfqQSPns6EZNW/SOl
 vPeizAUOGEi7IrpBEVA4NJzds6wyeS7OkA4V4B4l8toJXGYKkx8XftBfc
 D2BK7POiYUrE1xraOYB9zRPBkZMAc7fvKciE7CVgRKHYswRs0nVvTl+uP
 KmPZgJSPVj+tFxR8CLLsfgZsoA4UA263JM5T2Rx2Zt+YsOQmhgVzL8RPH
 KVum9WevhVqJ3wxpnc6YaPrazyRblIM+aO8dZ/jkWPQPbLiVhWoA/p8Nq
 nMMq84u6fJiYnGh59FD98CmJGQ6fhX8RD7Emzaw3YxmqBsaEmcpXQMHul A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="279639523"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="279639523"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="640342088"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga008.fm.intel.com with ESMTP; 14 Jun 2022 05:30:27 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jun 2022 15:30:48 +0300
Message-Id: <20220614123049.16183-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Bump up CDCLK for DG2
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

We set it to be equal to pixel rate here, just same as
we have already for TGL, as that seems to be currently
the only solution to fix underruns, not related to PSR.

Stanislav Lisovskiy (1):
  drm/i915/dg2: Bump up CDCLK for DG2

 drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

