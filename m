Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA541DDA0F
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 00:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467B56E26C;
	Thu, 21 May 2020 22:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C356E26C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 22:17:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21253551-1500050 for multiple; Thu, 21 May 2020 23:17:27 +0100
MIME-Version: 1.0
In-Reply-To: <20200521212841.GA19471@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
 <20200521212841.GA19471@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159009944551.32320.13730130890728195213@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 21 May 2020 23:17:25 +0100
Subject: Re: [Intel-gfx] [PATCH v9 0/7] Consider DBuf bandwidth when
 calculating CDCLK
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Manasi Navare (2020-05-21 22:28:42)
> Pushed the series to dinq, thank you for patches and reviews

Could you tidy up the mess of the merge? Things like

cd19154608610ab4cdd6c039e9214b8dd281845c:
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,11 +6,12 @@
 #include <drm/drm_atomic_state_helper.h>

 #include "intel_bw.h"
+#include "intel_pm.h"
 #include "intel_display_types.h"
 #include "intel_sideband.h"
 #include "intel_atomic.h"
 #include "intel_pm.h"
-
+#include "intel_cdclk.h"

The out of place intel_atomic.h and intel_pm.h were added in
20f505f2253106f695ba6fa0a415159145a8fb2a

The code is a mess, checkpatch would be mad.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
