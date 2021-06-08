Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4463A0CA9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 08:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1ABD6E039;
	Wed,  9 Jun 2021 06:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630956E039
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 06:45:45 +0000 (UTC)
IronPort-SDR: bjGtsnc09DjqQozniyXqKRdBrM8waVewb+HNvQP0WkYJZTUQWTZlVzBNe3laaMQldDg5JJhxc2
 Bz+8XgQwZjEQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203161295"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="203161295"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:45:44 -0700
IronPort-SDR: 2WE+W9hZ0bCGqFDldYeNOm9V22TJvJBm1YhzVS13g2/K6ZBEu1ZOI3m4YP6xG+vbDq6Jc5lN7r
 ljVha5es66XQ==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="448183689"
Received: from nischal-desktop.iind.intel.com ([10.223.74.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 23:45:43 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed,  9 Jun 2021 05:23:29 +0530
Message-Id: <20210608235330.21057-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602061739.29134-2-nischal.varide@intel.com>
References: <20210602061739.29134-2-nischal.varide@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/1] Enabling dithering after the CC1
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

v3 : Addressed Review Comments by (Bhanu)

If the panel is 12bpc then Dithering is not enabled in the Legacy
dithering block , instead its Enabled after the C1 CC1 pipe post
color space conversion.For a 6bpc pannel Dithering is enabled in
Legacy block.

If the panel is 12bpc and display_ver < 13 then we can not enable
dithering at all.So this v3 version of the patch has added an extra 
check to fix it.

Nischal Varide (1):
  drm/i915/xelpd: Enabling dithering after the CC1

 drivers/gpu/drm/i915/display/intel_color.c   |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 3 files changed, 18 insertions(+), 1 deletion(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
