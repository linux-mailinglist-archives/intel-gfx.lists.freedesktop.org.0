Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A7A5BFCA4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 12:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48BC10E8FD;
	Wed, 21 Sep 2022 10:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6B410E8FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 10:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663757771; x=1695293771;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XPjVGzgtSdh3IodgRIj7iYLJYQVeji87sbWnL01bmcI=;
 b=hJzBJIRkpArQZo7eRZWdLou/O/s7AHk6BiFjXeqHfgvpKnZeqwLF3On8
 rPUShg+AJetgjH4afDMwNZU10d+SDY4+/JgfsKMmFJr3xAw2jMJnZ4tTj
 3lL9gEhRLiuyHFhaCjE93Il/+4UgHdXGaSQsG3oKdfYw20FpxyZaPCSAu
 TLMlQ/9isKq36jEZdrjEnn2oO8ipcEQ5GJlttw9kE2aY4peprDk1qhTPj
 aMsbf5CzNJMoHumHhOEgXEEYGjrqsIEkIeNP0UH2ikhtt/NvEoSX71Vyi
 b6ZuyvExI410v+crMJWr1SlnwVynrJT9Y7P7EeCwl8P202/TvXvUZEb0X g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="301368175"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="301368175"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 03:56:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="794631234"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 21 Sep 2022 03:56:08 -0700
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Sep 2022 16:25:03 +0530
Message-Id: <20220921105506.2208471-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Enable YCbCr420 for VDSC
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

This patch series aims to enable the YCbCr420 format
for DSC. Changes are mostly compute params related for
hdmi,dp and dsi along with the addition of new rc_tables
for native_420 and corresponding changes to macros used to
fetch them.

Ankit Nautiyal (1):
  drm/i915/dp: Check if DSC supports the given output_format

Suraj Kandpal (2):
  drm/i915/vdsc: Enable YCbCr420 for VDSC
  drm/i915/display: Fill in native_420 field

 drivers/gpu/drm/i915/display/icl_dsi.c        |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  32 ++-
 .../gpu/drm/i915/display/intel_qp_tables.c    | 187 ++++++++++++++++--
 .../gpu/drm/i915/display/intel_qp_tables.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  20 +-
 5 files changed, 224 insertions(+), 21 deletions(-)

-- 
2.25.1

