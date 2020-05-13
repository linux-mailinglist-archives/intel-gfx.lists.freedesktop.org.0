Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CB11D1311
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 14:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749DF6E1F4;
	Wed, 13 May 2020 12:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD2496E1D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 12:48:14 +0000 (UTC)
IronPort-SDR: 4z/chSExvQuihF9v6jsp9RA+X+H2yLUYFVS6OvaqcMVrhJ4KCsrXoUrgdCM0Q5kAfVmjzDsGyi
 92sSextPt5Yw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 05:48:14 -0700
IronPort-SDR: 5SA3QIxI2K872koF595Cd42Dytnfa8NnfChvuioIcz+ZoPPHRshqMoDB2Pq1NxFvFYB96X+kPr
 RXYYaVvYS3Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="265860775"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga006.jf.intel.com with ESMTP; 13 May 2020 05:48:13 -0700
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX109.ger.corp.intel.com (163.33.3.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 13 May 2020 13:48:12 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 13:48:12 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 13 May 2020 13:48:12 +0100
From: "Patelczyk, Maciej" <maciej.patelczyk@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 14/24] drm/i915: Drop I915_RESET_TIMEOUT and
 friends
Thread-Index: AQHWKPr335gMz39qWkCNHP/MczzGm6il5nyA
Date: Wed, 13 May 2020 12:48:12 +0000
Message-ID: <87wo5g0zp2.fsf@dev.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
 <20200513074809.18194-14-chris@chris-wilson.co.uk>
In-Reply-To: <20200513074809.18194-14-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/24] drm/i915: Drop I915_RESET_TIMEOUT and
 friends
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> These were used to set various timeouts for the reset procedure
> (deciding when the engine was dead, and even if the reset itself was not
> making forward progress). No longer used.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 98dc8cdf2c38..631d31bc2313 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -625,13 +625,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
>  	return i915_fence_context_timeout(i915, U64_MAX);
>  }
>  
> -#define I915_RESET_TIMEOUT (10 * HZ) /* 10s */
> -
> -#define I915_ENGINE_DEAD_TIMEOUT  (4 * HZ)  /* Seqno, head and subunits dead */
> -#define I915_SEQNO_DEAD_TIMEOUT   (12 * HZ) /* Seqno dead with active head */
> -
> -#define I915_ENGINE_WEDGED_TIMEOUT  (60 * HZ)  /* Reset but no recovery? */
> -
>  /* Amount of SAGV/QGV points, BSpec precisely defines this */
>  #define I915_NUM_QGV_POINTS 8
>

Indeed.

Reviewed-by: Maciej Patelczyk <maciej.patelczyk@intel.com>

-MaciejP.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
