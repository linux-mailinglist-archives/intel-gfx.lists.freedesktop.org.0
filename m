Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC988398A36
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 15:10:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FD26E107;
	Wed,  2 Jun 2021 13:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84556E107
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 13:10:01 +0000 (UTC)
IronPort-SDR: QYHwjY4Q3H5myYqVewl8ze6TDVQAOiHcAYZjpg7rYxF/XIfpkNEZ3TNu7KI/4TwVpm+TzxV5dH
 KJuCJLGnHOCg==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="201923027"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="201923027"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 06:10:01 -0700
IronPort-SDR: gbHxhUn4lMzFvpqEwCzPPNrbB778ibeehWssthkhFF+5xLIrWz6BOtJUUD52k/BkCMLscgAlo3
 193hSMH6KojQ==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="399719222"
Received: from unknown (HELO Nischal-desktop.iind.intel.com) ([10.223.74.174])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Jun 2021 06:09:58 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, anshuman.gupta@intel.com, jani.nikula@intel.com
Date: Wed,  2 Jun 2021 11:47:38 +0530
Message-Id: <20210602061739.29134-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210526181728.14817-2-bhanuprakash.modem@intel.com>
References: <20210526181728.14817-2-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 0/1] Enabling dithering after the CC1
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

If the panel is 12bpc then Dithering is not enabled in the Legacy
dithering block , instead its Enabled after the C1 CC1 pipe post
color space conversion.For a 6bpc pannel Dithering is enabled in
Legacy block.

This is Version 2 of the patch, after addresing few review comments.

Nischal Varide (1):
  drm/i915/xelpd: Enabling dithering after the CC1

 drivers/gpu/drm/i915/display/intel_color.c   | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display.c | 7 ++++++-
 drivers/gpu/drm/i915/i915_reg.h              | 1 +
 3 files changed, 14 insertions(+), 1 deletion(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
