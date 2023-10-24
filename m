Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E5A7D59FD
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 19:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE68410E443;
	Tue, 24 Oct 2023 17:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54AB610E443
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 17:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698170156; x=1729706156;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Q7kuDPTasOk2IShzs7Hsjwlq3Ah9dcyu72ZaybeLJc=;
 b=fr+mv3I6/JSHwqW3dnIwbJ2qSKZHalm6k/Gh1QQjT+C40oO/dxhrReTZ
 WlUB8aP8JbCeydCNCZu4ClcqtLD1JO+3okAXEcSnWnZJHGyHQY/F4D3Lt
 fcv039oUWsxurQERlyXqruTBprgIPwWTz5TG7eFu3l29u2a7ZMMLIcXVy
 xqHMFghqrpwp3C2IqPgNSrIv4kq1/eVqpE2ASaCGjNhTFnmiDoaYPPyWR
 lbgRylFBJQ4hpNn1udb8hOll2+lM3kQVjRKxOGWDM26g4c1iQoD/YTG6k
 Gon1l3SRXM2YI3+I45AZwZ5GHxDYY0uBr4CUPbwr12qwqYKcr4+NT9poD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="453596655"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="453596655"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 10:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758560310"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="758560310"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga002.jf.intel.com with SMTP; 24 Oct 2023 10:55:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Oct 2023 20:55:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 20:55:50 +0300
Message-ID: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI][PATCH 0/2] Drop some unnecessary
 patches
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Try to drop a few seemingly unnecessary patches from core-for-CI.

Ville Syrjälä (2):
  Revert "freezer: Dump more info on whoever is trying to get frozen
    with locks held"
  Revert "iommu: Remove iova cpu hotplugging flushing"

 drivers/iommu/iova.c       | 28 ++++++++++++++++++++++++++++
 include/linux/cpuhotplug.h |  1 +
 include/linux/iova.h       |  1 +
 kernel/freezer.c           | 12 ++----------
 4 files changed, 32 insertions(+), 10 deletions(-)

-- 
2.41.0

