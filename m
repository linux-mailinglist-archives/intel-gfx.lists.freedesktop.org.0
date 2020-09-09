Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D8C262B0B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 10:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A9D6EB1A;
	Wed,  9 Sep 2020 08:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7ED6EB1A
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 08:57:01 +0000 (UTC)
IronPort-SDR: ViunWFJnVYuwqYI1yZXwswp7stTuxRgAkzvjehII6A3gBNIg7qga6O4gWb/QnNvtBlY54y4AkL
 phu+UESqWX6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="159257103"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="159257103"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 01:57:01 -0700
IronPort-SDR: PeucZGAvMKN8z0a8uVqVU0Hf7Aon9PhTk+EAbXMyAgAQ8V+x6xvgVZ2tRt2LFZ6FeoWhdaru+x
 ubiMPQzjgXjA==
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="480384752"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 09 Sep 2020 01:56:59 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Sep 2020 14:20:43 +0530
Message-Id: <20200909085047.31004-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [V9 0/4] Add support for mipi dsi cmd mode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series contain interrupt handling part of cmd mode.
Configuration patches were merged already.

Vandita Kulkarni (4):
  drm/i915/dsi: Add details about TE in get_config
  i915/dsi: Configure TE interrupt for cmd mode
  drm/i915/dsi: Add TE handler for dsi cmd mode.
  drm/i915/dsi: Initiate fame request in cmd mode

 drivers/gpu/drm/i915/display/icl_dsi.c       |  56 +++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  13 +++
 drivers/gpu/drm/i915/display/intel_dsi.h     |   3 +
 drivers/gpu/drm/i915/i915_irq.c              | 117 ++++++++++++++++++-
 4 files changed, 175 insertions(+), 14 deletions(-)

-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
