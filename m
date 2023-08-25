Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B81789173
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Aug 2023 00:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1B010E161;
	Fri, 25 Aug 2023 22:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37CF410E15C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 22:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693001514; x=1724537514;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4RYUELDEloCXjaF3LSYhNsvsuh5eM6ycAUcxaYNGFWg=;
 b=RKkfGInOqeFnrzC4A6swdypO3vAn2vWygx2Iw7taULSy2XbIz6mzRb02
 nNz8RmOMHlXf1xkkb4/A4aeX75D+So+UOuU8Btx/Tv3pjCpGmAh5/S/mI
 LlCIzidXY8LQAf1vplq4P3QWL03LtuKXqQQv/vrmVWQRPu6HNnOni6WIo
 4wMJvBf4Sk8L6o04iqfZe+k2pGWD82lncHtf+cW6WFER1krJ1h1SqlYyc
 kbSn2Llp5FBrKbhpNvI/ZCAzDqH49CAz3ZGMnPohDf7HzKhIy1DFSiJY/
 S6eMNDMCSlDYHGuFUwia3H8+waPiPl7dgubI92x0Nv/pk0NCq7s3+aVO/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="461178843"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="461178843"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="827728647"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="827728647"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 15:11:53 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 15:01:12 -0700
Message-Id: <20230825220113.2273092-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/gt: Remove interruptible flag from
 wait_for_space
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
Cc: chris.p.wilson@linux.intel.com, jonathan.cavitt@intel.com,
 andi.shyti@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When performing the i915_request_wait in wait_for_space, which itself is
called by intel_ring_begin, we do not need to apply the
I915_TASK_INTERRUPTIBLE flag.  So, remove it.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: Andi Shyti <andi.shyti@intel.com>

Jonathan Cavitt (1):
  drm/i915/gt: Remove interruptible flag from wait_for_space

 drivers/gpu/drm/i915/gt/intel_ring.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

-- 
2.25.1

