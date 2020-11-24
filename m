Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 642E72C3089
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:13:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A47189F61;
	Tue, 24 Nov 2020 19:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6726F89F61
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:13:33 +0000 (UTC)
IronPort-SDR: VSJPdyX9DJRjkxw9JqvhsZZW+fYRpp/i0BULZsn8U57k8tJeyuRk6Fajubx9TaA+/GTr/sIoeJ
 NhRtn2vJ6ovg==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="256710243"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="256710243"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
IronPort-SDR: JmsYtqhKllNXyJcfGopAN6dblK9h49op+SPTnhMxSwb3YYrr8onLX9azJImbWhbwxMkBT4JO+R
 KApFpLQPyrbg==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="312676215"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:13:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 11:13:13 -0800
Message-Id: <20201124191316.1660749-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Move display initialization
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

This reduces the surface from which display/ is called by the
other parts of the driver, starting with the init. For that new
intel_display_driver_{register,unregister} functions are created
that will deal with the HAS_DISPLAY check.

There are more changes needed, but I'm sending this early for feedback
and CI.

Lucas De Marchi (3):
  drm/i915: stop registering if drm_dev_register() fails
  drm/i915: group display-related register calls
  drm/i915/display: move register functions to display/

 drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  3 ++
 drivers/gpu/drm/i915/i915_drv.c              | 52 ++++---------------
 3 files changed, 65 insertions(+), 43 deletions(-)

-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
