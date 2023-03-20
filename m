Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC566C21C1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 20:42:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 090C710E319;
	Mon, 20 Mar 2023 19:42:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C0710E662;
 Mon, 20 Mar 2023 19:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679341367; x=1710877367;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M4kvjawd5dHIEOqKhpIV4Vx2yJIlgQaXbeRa5BMhIVw=;
 b=l1YCCrhR8uWhntoKKyUj/PbbrBd48iAgo5JkhtJIlcwGoIbMgiiBMmA6
 nI1A1Tpe121Ttr174P+6xdyuY3NxLNQLBwUeK01Oy536HggWB7/Q25Xlp
 22Z5/i5uF2TzD2Hn42hq6RtygaAgLhORJuwxU/bg53EB3b8orvKe8QTzE
 +7JNcBNMeJ62lUtp/HH4mEZjG3DU+HUCzQInClTkQ08I6iiZW5L4qkLDW
 FPNN8aC0Ma7QT5eiQ9E0tDSG4X/hbzXHhQj/Mine4hPwe6ALv03yqtNxH
 I7RmkW39d9tVedTt+UTGeShrhQe40axf357xGQy1h5NnEs+q0JhwUNm7d w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="338790392"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="338790392"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 12:42:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="745517973"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="745517973"
Received: from ggranovs-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.60.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 12:42:44 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Date: Mon, 20 Mar 2023 20:41:17 +0100
Message-Id: <20230320194119.290561-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Aux invalidation
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
Cc: Andi Shyti <andi.shyti@kernel.org>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

I'm just respinning these two aux invalidation patches from
Jonathan. They have been sent some times ago and need to be
reviewed.

Thanks,
Andi

Jonathan Cavitt (2):
  drm/i915/gt: Ensure memory quiesced before invalidation
  drm/i915/gt: Poll aux invalidation register bit on invalidation

 drivers/gpu/drm/i915/gt/gen8_engine_cs.c     | 24 ++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 2 files changed, 21 insertions(+), 4 deletions(-)

-- 
2.39.2

