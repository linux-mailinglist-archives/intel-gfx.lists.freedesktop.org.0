Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F2E631992
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 06:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E228310E130;
	Mon, 21 Nov 2022 05:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300CF10E130
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 05:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669009785; x=1700545785;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PcxUZXzNFm0RLWRE/k1WZGHC71NUoAOZCjB8uefopVQ=;
 b=HVmbdFqpK1X/REX+qM3yUOVJvN1LjDFU2bgzzHnvQLd5sGVgNG+baqGh
 ztvwpk45znjJd0K57dJBa67ienZa/RZs8Uvxf6vmUyQq0OKplB1VqzBj2
 p4GRJ6ncvIbv9uYdiuTVHZ9pdeRx/mz0NzwE4ABoCAfphbMcA9dTcrV5I
 VrVx7QXdHBmp8QaAdh0JFZT6OA+dzA+64PeZOtkr69s9Bn3oM3G1U4rfk
 jqCKDtvzq5glDZwrU7FHrys4xgBN2qPyLboTueVnmVyvLW1CDNuHUqgkF
 Wen8Beyq+dTLb91cIcrFKjGOGjv0VXfmGzHcJS0rrXiItaex0hu9tYuNj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="293866739"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="293866739"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 21:49:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="885981840"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="885981840"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga006.fm.intel.com with ESMTP; 20 Nov 2022 21:49:43 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Nov 2022 11:19:51 +0530
Message-Id: <20221121054952.3557863-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Async on Linear buffer
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

This patch adds async flip on linear buffer.

Test-with: 20220829093147.3836523-1-arun.r.murthy@intel.com

Arun R Murthy (1):
  drm/i915: Support Async Flip on Linear buffers

 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

-- 
2.25.1

