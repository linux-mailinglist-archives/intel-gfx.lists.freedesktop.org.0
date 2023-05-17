Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159BA7062B0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 10:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A2D10E3C1;
	Wed, 17 May 2023 08:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F23110E3C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 08:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684311850; x=1715847850;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZxT/8jlOIWajqxqMjZ97KYsCRUXHcGdfkGXxGxji9q4=;
 b=GzY+B/Cxtck+yLmba06iQhLIUBgLi24d6w/oVFdsXMXJPm7lnCPB7ZuS
 00w+vFcXrfbwlEhOtDbhsE67ruZWYCDg73dOVNmLmBr7BfaYw35duWPvV
 ompIvIApezo4F4lwsMrZN4N0rU+v9hEJk89bvlakUMIPP+QlsrRSTcH9X
 SbWzQ/xHsdUWUV/E1iIWN4qwlBF9FzV+l7/Rt7Y7dNy6Mdek27i8elh1Y
 pFl/b+bvduxWEWqbc5iB1NQ4E5D26PG8RgHFncq8EnmyNJY45CS/XRzWL
 1dA1eQpBHE0fjePmPMb/SZEpbqYJj8sseHF+zZXEYu3EfIF5fkhdEg34o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="379889648"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="379889648"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 01:24:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="704730354"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="704730354"
Received: from pakurapo-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.50.207])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 01:24:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168424225552.36532.14479350464099293863@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230516122926.2720581-1-jani.nikula@intel.com>
 <168424225552.36532.14479350464099293863@gjsousa-mobl2>
Date: Wed, 17 May 2023 11:24:05 +0300
Message-ID: <87o7mjgyca.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix intel_display_irq.c include
 order
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

On Tue, 16 May 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2023-05-16 09:29:26)
>>I meant to sort the includes before submitting commit 2b874a027810
>>("drm/i915/irq: split out display irq handling") but forgot, and it
>>wasn't noticed in review either. Sort the includes.
>
> Oops... My bad.

Nah, mine, really.

>
>>
>>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>---
>> drivers/gpu/drm/i915/display/intel_display_irq.c | 16 ++++++++--------
>> 1 file changed, 8 insertions(+), 8 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
>>index 0eedd1ebb389..3b2a287d2041 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>>@@ -3,23 +3,23 @@
>>  * Copyright =C2=A9 2023 Intel Corporation
>>  */
>>=20
>>+#include "gt/intel_rps.h"
>> #include "i915_drv.h"
>> #include "i915_irq.h"
>> #include "i915_reg.h"
>> #include "icl_dsi_regs.h"
>>-#include "intel_display_irq.h"
>>-#include "intel_display_types.h"
>>-#include "intel_hotplug_irq.h"
>>-#include "intel_psr_regs.h"
>> #include "intel_crtc.h"
>>+#include "intel_de.h"
>>+#include "intel_display_irq.h"
>> #include "intel_display_trace.h"
>>+#include "intel_display_types.h"
>> #include "intel_dp_aux.h"
>>-#include "intel_gmbus.h"
>>+#include "intel_fdi_regs.h"
>> #include "intel_fifo_underrun.h"
>>+#include "intel_gmbus.h"
>>+#include "intel_hotplug_irq.h"
>> #include "intel_psr.h"
>>-#include "intel_fdi_regs.h"
>>-#include "gt/intel_rps.h"
>>-#include "intel_de.h"
>>+#include "intel_psr_regs.h"
>>=20
>> static void
>> intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>>--=20
>>2.39.2
>>

--=20
Jani Nikula, Intel Open Source Graphics Center
