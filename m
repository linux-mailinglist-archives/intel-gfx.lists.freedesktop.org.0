Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A63F3914E4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 12:28:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69EB06EC66;
	Wed, 26 May 2021 10:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000CF6EC66
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 10:28:28 +0000 (UTC)
IronPort-SDR: GcBON3lZdBrRR5VKLPd3vzg7YZtbVub7gfVxCHahk7T2fO19mSoGv9PpvKVN4jKnZ+RZR9637L
 yF2qLhKWgTeg==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223616115"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223616115"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 03:28:27 -0700
IronPort-SDR: Lj//NuFrwJexUTT9gwRrNGbF0hgDzPxnD96wL1SxucbbxQgYSUBBSyIzz/JxowWp/7w0q0IHkU
 qqVv8vCsTRKg==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476868073"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 03:28:25 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com,
 uma.shankar@intel.com, anshuman.gupta@intel.com
Date: Wed, 26 May 2021 23:47:26 +0530
Message-Id: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/xelpd: Enabling dithering after
 the CC1
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

Bhanuprakash Modem (1):
  drm/i915/display/debug: Expose Dither status via debugfs

Nischal Varide (1):
  drm/i915/xelpd: Enabling dithering after the CC1

 drivers/gpu/drm/i915/display/intel_color.c    | 15 +++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  7 +++-
 .../drm/i915/display/intel_display_debugfs.c  | 32 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  3 +-
 4 files changed, 55 insertions(+), 2 deletions(-)

--
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
