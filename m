Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A40A11EBEC8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 17:11:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028A489612;
	Tue,  2 Jun 2020 15:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652E089612
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 15:11:34 +0000 (UTC)
IronPort-SDR: h5V+DO6zBMoEtXifFxmRv6j7Qt0Zu0KtBs9YLQR0Z5bUEcQ9txvgRyKp0SrfVnrJo6hEVOf2cu
 BmBaTY9f+RXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:11:33 -0700
IronPort-SDR: 2wxIkQTqNdWkRXzoiHe1OjJlEfIi98yBiKWtUelaq57Kaptc/vUMvXh8aE83SeaTpdRw60I4j5
 FyO71JEehLQw==
X-IronPort-AV: E=Sophos;i="5.73,464,1583222400"; d="scan'208";a="416211121"
Received: from pahonen-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.41])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:11:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jun 2020 18:11:26 +0300
Message-Id: <20200602151126.25626-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/params: fix i915.reset module param
 type
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
Cc: jani.nikula@intel.com, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The reset member in i915_params was previously changed to unsigned, but
this failed to change the actual module parameter.

Fixes: aae970d8454b ("drm/i915: Mark i915.reset as unsigned")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index ace44ad7e6df..fd3b14caf4ce 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -74,7 +74,7 @@ i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
 	"Override/Ignore selection of SDVO panel mode in the VBT "
 	"(-2=ignore, -1=auto [default], index in VBT BIOS table)");
 
-i915_param_named_unsafe(reset, int, 0400,
+i915_param_named_unsafe(reset, uint, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");
 
 i915_param_named_unsafe(vbt_firmware, charp, 0400,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
