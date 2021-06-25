Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D0B3B4166
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 12:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 230AD6E0F1;
	Fri, 25 Jun 2021 10:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE136E0F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jun 2021 10:19:17 +0000 (UTC)
IronPort-SDR: i5kCI14ufW5+FnXb6SHkwg4Gm9L7YC7OIZQkYFJcw1keHYJeNM2cxt/OSYvwDsYnp/U4otFyYF
 4lqYrCcUvKUA==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="204636839"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="204636839"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 03:19:16 -0700
IronPort-SDR: bzFLnql0+F0nsR04z4kzt+m90mII3RCgvS39kk/Njj4Za/uAEaUNuJNtj2onyZpNz2jsTrQ/xV
 FnW/2COj0mxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="453764819"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by orsmga008.jf.intel.com with ESMTP; 25 Jun 2021 03:19:12 -0700
From: venkata.sai.patnana@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Jun 2021 15:38:36 +0530
Message-Id: <20210625100838.5534-1-venkata.sai.patnana@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/display/dsc: Set BPP in the kernel
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

From: Patnana Venkata Sai <venkata.sai.patnana@intel.com>

Test-with: 20210622102454.8922-1-venkata.sai.patnana@intel.com

Anusha Srivatsa (2):
  drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP
    enable
  drm/i915/display/dsc: Set BPP in the kernel

 .../drm/i915/display/intel_display_debugfs.c  | 103 +++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  23 +++-
 3 files changed, 121 insertions(+), 6 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
