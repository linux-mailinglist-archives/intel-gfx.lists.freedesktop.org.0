Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DBB7518C5
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 08:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DD6A10E171;
	Thu, 13 Jul 2023 06:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956E410E171
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 06:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689229859; x=1720765859;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2W5ZjXUOMvIIN0rZVZuiOqMvBQWk71cyLcfEdOoTVkw=;
 b=dqZYyveezBIS4L2XqQChTfXYhnWRuUUGc/U3GUfNyxm0hhfaifa5EUTj
 3Ql04I1Zk/sMIFP3DgPBsV90gidSPnRgicIdutjj2zTRsfeyoC5MExHkj
 Bk2kMbJwsYqLH+rmDU2HL+0I/6Z/A83d5GHXdotVndxxS0Ph1BwU7cbbr
 5PViTxPgAkftwQPyC4F3YUtjivZFuhpVGhEBPdEdG0Y2CImPyWRcRWxMt
 8bQ7pmDniFg/+5wqWXeNSRJF2ZRI/Yo1xBqagTZq6ed3EnvfnJ/9YOfAF
 lIK5vFQWZGffKf/v10Z7iNHFGbMWe22xLPCiBfoaMtFtVRJOW1WGsA8eC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="365133718"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="365133718"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 23:30:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="699135272"
X-IronPort-AV: E=Sophos;i="6.01,201,1684825200"; d="scan'208";a="699135272"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 12 Jul 2023 23:30:56 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jul 2023 11:59:18 +0530
Message-Id: <20230713062924.2894736-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] Add DSC PPS readout
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

Up until now we only verified one or two of the dsc pps
params like bits_per_component and bits_per_pixel this
patch series aim to readout almost all PPS param and get
them compared.
Along with that some work on making a common function to
read and write PPS param regiters is also done.

--v2
-Remove duplicated code and create function that fetches register
and reuse that [Jani]
-move WARN_ON one abstraction layer up [Jani]
-Split patch so that refactor and a new functionality is not added
in the same patch [Jani]
-Add a new refactor patch so that bit shifting can be done in a
clean way [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (6):
  drm/i915/vdsc: Refactor dsc register field macro
  drm/i915/vdsc: Add a check for dsc split cases
  drm/i915/vdsc: Add function to read any PPS register
  drm/i915/vdsc: Add function to write in PPS register
  drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
  drm/i915/display: Compare the readout dsc pps params

 drivers/gpu/drm/i915/display/intel_display.c  |  31 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 622 ++++++++++--------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 101 ++-
 3 files changed, 463 insertions(+), 291 deletions(-)

-- 
2.25.1

