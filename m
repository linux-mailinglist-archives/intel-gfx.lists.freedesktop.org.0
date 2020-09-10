Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3990C263969
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 02:11:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B8F6E090;
	Thu, 10 Sep 2020 00:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540236E090
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 00:11:03 +0000 (UTC)
IronPort-SDR: kEJRt39nR8blfr6N/cqvYh6yTc9QqeW3TxuIKekhzRQjnBnhnPapnAajDWHmRFoU/RFjoSXc0n
 pO84CTzgAArg==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="159395147"
X-IronPort-AV: E=Sophos;i="5.76,411,1592895600"; d="scan'208";a="159395147"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 17:11:02 -0700
IronPort-SDR: slu/sfSW6ruSARGMBtXolRW8aqP8Cxf9Y1KGYTR+T/EfunZ+hsvtgLuiSlIzhiJEgRaP65VtZm
 2/PIeheSopsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,411,1592895600"; d="scan'208";a="300325429"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 09 Sep 2020 17:11:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Sep 2020 17:11:01 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 9 Sep 2020 17:11:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Make Wa_1606700617/22010271021
 permanent
Thread-Index: AQHWht8QeNnp6UIi6ESkl6PMfsI81alhdieA
Date: Thu, 10 Sep 2020 00:11:01 +0000
Message-ID: <b1a66c3403082c5b3386b4829638df3eae1fd6b3.camel@intel.com>
References: <20200909191410.21051-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200909191410.21051-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <84336C053A94FF489BEEC5DB689002E9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make
 Wa_1606700617/22010271021 permanent
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

On Wed, 2020-09-09 at 12:14 -0700, Swathi Dhanavanthri wrote:
> This workaround now applies to all TGL steppings.
> 
> Signed-off-by: Swathi Dhanavanthri <
> swathi.dhanavanthri@intel.com
> >
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 39817c5a7058..f2225f065799 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1729,10 +1729,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN6_RC_SLEEP_PSMI_CONTROL,
>  			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
> -	}
>  
> -	if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
> -		/* Wa_1606700617:tgl */
> +		/*
> +		 * Wa_1606700617:tgl
> +		 * Wa_22010271021:tgl
> +		 */

this is extending the wa to RKL too.

>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
>  			     FF_DOP_CLOCK_GATE_DISABLE);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
