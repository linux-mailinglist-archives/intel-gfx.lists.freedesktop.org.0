Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B935525AD1A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 16:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E05A6E91E;
	Wed,  2 Sep 2020 14:30:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D886E91E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 14:30:34 +0000 (UTC)
IronPort-SDR: Xk6XLI0pSl/OZxGVkV5zBkzwAB17SbjbXYTmHw9dq2b1T08qYydiBDxKlPC0FXjw9CbcDgLXJu
 JLsljb1ZuD6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="157396235"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="157396235"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 07:30:34 -0700
IronPort-SDR: O8BhMVteLVM8RgjRX38gOMOgHphnS8NYUUxWI9kwEUWOjcgGV5g02nyDf26smol18Aprb7RhbH
 foP5kmXsw46A==
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="477657549"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.95.101])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 07:30:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Sep 2020 17:30:19 +0300
Message-Id: <cover.1599056955.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] drm/i915: modeset probe cleanup
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

Try to cleanup modeset probe and driver remove paths. Based on old patches,
removed old reviewed-by's due to changes.

BR,
Jani.


Jani Nikula (4):
  drm/i915: split intel_modeset_init() pre/post gem init
  drm/i915: move more display related probe to
    intel_modeset_init_noirq()
  drm/i915: split out intel_modeset_driver_remove_nogem() and simplify
  drm/i915: remove the extra modeset init layer

 drivers/gpu/drm/i915/display/intel_display.c |  77 ++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |   2 +
 drivers/gpu/drm/i915/i915_drv.c              | 134 ++++---------------
 3 files changed, 97 insertions(+), 116 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
