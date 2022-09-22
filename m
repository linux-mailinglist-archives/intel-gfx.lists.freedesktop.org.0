Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 253335E65B2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 16:33:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A5910EBD8;
	Thu, 22 Sep 2022 14:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A1710EBD2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663857174; x=1695393174;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=He9SjJpSFjnYQ6Xt7+Kb+SQeLNXd/nZHfX0N466ocJE=;
 b=iG9zRV0ew6tcD6wyohouqUe/jH6T9rh/id82MImB0QJYMtUDmiNhzzYv
 Tmt+cg8dmQTcB7CaoI57LwwjEhOlfhXXAw6Y4Y82ZtI4bM0/W61UsoZad
 nV7TXsZBxKW+lNDpjDcnKL/AQ+DfY1ldkNyLUD6W04zT9avyLgecsbOq7
 VuHDhlCxue/wsm95t7pXY2LT0c5UYuuzliWXfv/Y/araG53qm2gbT9TPp
 bSf4raJ+sGxwP74IvYe2eBoCoYeJZqLdaZuK4HIEc6b16OQxV53ZceY4w
 7rTvVLp0/3ZwpeXDOrwd7lfwSD7JrDGsBFmMLzHOMWp0MG1xaMOFlKpuw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="386598649"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="386598649"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 07:32:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="948612663"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 07:32:50 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 20:02:08 +0530
Message-Id: <20220922143209.535323-1-riana.tauro@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Add SLPC selftest live_slpc_power
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

live_slpc_power tests if running at low frequency saves power

Riana Tauro (1):
  drm/i915/guc/slpc: Add SLPC selftest live_slpc_power

 drivers/gpu/drm/i915/gt/selftest_slpc.c | 116 ++++++++++++++++++++++--
 1 file changed, 107 insertions(+), 9 deletions(-)

-- 
2.25.1

