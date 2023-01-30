Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1E3680A6F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 11:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 523DB10E0DA;
	Mon, 30 Jan 2023 10:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE7810E0D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 10:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675073315; x=1706609315;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eTd5JS4fB8HPeFHc7Z2rNH4KR4NkAwOdhbFXn+8PIrE=;
 b=a+uA+8YSu35vCl+98pJuhLN5AAyTZd9Y30+vZL+sUerWgUgbNpwWav0c
 q3gAnECinx3u+3cCNuf3TEf8oWDSeVIkXneH7qfafiKAz4By9ti9Q3Fx0
 YqBt+4W6Hovy0pdWUZUeac6fk4q6z+1bIlMsML+7lrQ/FiNob+O/8Q++8
 dWSCuusl2rcReGcD0dXGmsZcFxo1FBzJiKCvGKou8r+z7Hjk69W5ntwhW
 pZp58abyfpOcqSpGBZQzUrVdStw2hmOYndssnqaXEt7GslstcIOHftUTO
 B7v37XIZ+oC4DVw6dcbevcaaQ7GgJORyKB0eBkXQCm+YDxrRmsGBJychP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="413741217"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="413741217"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 02:08:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="657400619"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="657400619"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 30 Jan 2023 02:08:23 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 15:38:04 +0530
Message-Id: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new step of 480MHz has been added on SKUs that have an RPL-U
device id. This particular step is to support 120Hz panels
more efficiently.

This patchset adds a new table to include this new CDCLK
step. Details can be found in BSpec entry 55409.

Create a new sub-platform to identify RPL-U which will enable
us to make the differentiation during CDCLK initialization.

Furthermore, we need to make a distinction between ES (Engineering
Sample) and QS (Quality Sample) parts as this change comes only
to QS parts. This version of the patch does not include this change
as we are yet to make a decision if this particular part needs
to be upstreamed.(see comments on revision 2)

Chaitanya Kumar Borah (2):
  drm/i915: Add RPL-U sub platform
  drm/i915/display: Add 480 MHz CDCLK steps for RPL-U

 drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            |  2 ++
 drivers/gpu/drm/i915/intel_device_info.c   |  7 ++++++
 drivers/gpu/drm/i915/intel_device_info.h   |  1 +
 include/drm/i915_pciids.h                  | 12 ++++++----
 5 files changed, 44 insertions(+), 4 deletions(-)

-- 
2.25.1

