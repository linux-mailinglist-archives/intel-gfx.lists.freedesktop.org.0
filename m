Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F168F209771
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06ACC6E892;
	Thu, 25 Jun 2020 00:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CCA26E892
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:11:31 +0000 (UTC)
IronPort-SDR: F38JMhaCZGQpGieAl8adNcWjwGdNhIfBcD0S79W5J+IFoc95h0CkqsOuwQx+vJ28AF3M4XyZI8
 4HTtC5vhTeOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="229392914"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="229392914"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:11:30 -0700
IronPort-SDR: WJSqH2NXvvQmiVD3k80ID0kDAtCGIHdeV293tH/hvW8Cp1UaepGuf7lhuPJa0SH4kFhHTRbGuB
 zZV3qtc6CvFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="310949028"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2020 17:11:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:11:14 -0700
Message-Id: <20200625001120.22810-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/6] display/ddi: keep register indexes in a
 table
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/71330/

I think I covered comments from Jani and Matt Roper here. This is still
in the RFC phase and thus not properly tested.

Change in this version is mostly that now it's not trying to generalize
intel_setup_outputs(), but rather provide a function each platform can
call to setup the outputs. As such, dsi initialization and port presence
checks are left where they are.

We now also have a PHY_MG/PHY_DKL rather than PHY_TC and one additional
patch in the end doing more conversions. Hopefully this showcase better
the final state I want to accomplish. There's a lot more conversions to
do and even those done here I think will be in a different form in the
end.

This is *untested*, just sending it here for feedback on the direction.
Patch 1 and 2 were for the first version, and are now optional.

Lucas De Marchi (6):
  drm/i915: move ICL port F hack to intel_bios
  drm/i915/display: fix comment on skl straps
  drm/i915/display: start description-based ddi initialization
  drm/i915/display: add phy, vbt and ddi indexes
  drm/i915/display: use port_info in intel_ddi_init
  drm/i915/display: replace port to phy conversions in intel_ddi.c

 drivers/gpu/drm/i915/display/intel_bios.c     |  23 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 197 +++++++++---------
 drivers/gpu/drm/i915/display/intel_ddi.h      |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 156 +++++++++-----
 drivers/gpu/drm/i915/display/intel_display.h  |   8 +
 .../drm/i915/display/intel_display_types.h    |  12 ++
 6 files changed, 246 insertions(+), 158 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
