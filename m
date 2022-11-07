Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F12B561FEDB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFBE310E3E6;
	Mon,  7 Nov 2022 19:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B153B10E3E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 19:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667850367; x=1699386367;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wM+LJhCLjx+GDuGkzzPOhr4+Bq3ALqFegqp5acIMESs=;
 b=oBGSjxpvJ0dawI2muRPz6g2LlXq79zZ10eCwgHoAoFUovZh8uIfXg3ZA
 FIdwEKhjBR4TBp8pGmsLEf98eIFoiLP8mFLJjr7W4GvwhmqxfzcyPNoUO
 /68lqSe7hhVc3R81PRwy4FOVeE8/kKaMAosJ+js3RuGaGrwoYN2FrEaRl
 Hyye1YYDZi/hXeZUh0gaGCk5RQKqm3kvMYyJEQF5FAUoQXPEXMWEDB1Bx
 6BJDWZV87oHAYvHqKQBMErQilo/u4PNFhCjCa2SBYOG0iDGyLohTG8qkB
 XG9RqVJLaN9/wMu9jtBOYill37JwgXH+UapZ5yMWJY8bUsTNx5JRBgVX+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="374778749"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="374778749"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="761219412"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="761219412"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga004.jf.intel.com with SMTP; 07 Nov 2022 11:46:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Nov 2022 21:46:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 21:45:59 +0200
Message-Id: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: Fix audio/infroframes on g4x
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

Currently HDMI audio/infoframes is a bit borked on g4x on account
of the hardware only having one audio/video DIP block which can't
be shared among multiple HDMI ports simultanously. Fix that by
selecting exactly one of the enabled HDMI ports for audio/infoframe
transmission.

Ville Syrjälä (5):
  drm/i915: Introduce g4x_hdmi_compute_config()
  drm/i915: Force RGB output for DVI sink
  drm/i915: Treat HDMI as DVI when cloning
  drm/i915: Move has_hdmi_sink out from intel_hdmi_compute_config()
  drm/i915: Pick one HDMI port for infoframe/audio transmission on g4x

 drivers/gpu/drm/i915/display/g4x_hdmi.c   | 127 +++++++++++++++++++++-
 drivers/gpu/drm/i915/display/g4x_hdmi.h   |   4 +
 drivers/gpu/drm/i915/display/intel_ddi.c  |   3 +
 drivers/gpu/drm/i915/display/intel_hdmi.c |  54 ++++++---
 drivers/gpu/drm/i915/display/intel_hdmi.h |   3 +
 5 files changed, 173 insertions(+), 18 deletions(-)

-- 
2.37.4

