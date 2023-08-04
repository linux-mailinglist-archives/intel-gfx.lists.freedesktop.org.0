Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 175497703D4
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 17:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 892F410E71F;
	Fri,  4 Aug 2023 15:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97EA210E720
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 15:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691161408; x=1722697408;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/22cNEk0aB6jgDJP5lOHJsZ+ENUst0zNkuzlP/rgzK4=;
 b=gEUxv6iGJ2XtbERu+e8NtxTfEs50R8AsXS3vZOxSwatJ0z3m9E6bgrb6
 DcSiixY9P2Lrr5poKJzo9BYEr5bgdRil/8uRoqRZ/qJIop+/svKPZpQoq
 kzht8+znj2eGvR/NJ0Jiz1g0Kvjuc2c+9zCIM2eYxRo2GBXisjiHz1ca3
 iTf/V8vI3g/7T6XPRGjgeDp5ofr9V8g7pU8G4RaK/PHWnRSQtB42keKJs
 SQcwuFktf7BOYoTHJD2BIyv6OTbCht9DRLtr8855U7VMEGE8yW6c+fNPt
 /RDbqs1ND+hQtTfFRIn+HbDG3YR3+THvISIP7lXyZRHvJmnXg9SExuWYA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="349763560"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="349763560"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:03:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="903905444"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="903905444"
Received: from popovax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.174])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:03:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <CY5PR11MB634423568E25C9A4DF005C1DF409A@CY5PR11MB6344.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230803122706.838721-1-jani.nikula@intel.com>
 <CY5PR11MB634423568E25C9A4DF005C1DF409A@CY5PR11MB6344.namprd11.prod.outlook.com>
Date: Fri, 04 Aug 2023 18:03:21 +0300
Message-ID: <87zg36u9xi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: fix panel_type initialization
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
Cc: Tomi =?utf-8?Q?Lepp=C3=A4nen?= <tomi@tomin.site>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 04 Aug 2023, "Shankar, Uma" <uma.shankar@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of J=
ani Nikula
>> Sent: Thursday, August 3, 2023 5:57 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; Tomi Lepp=C3=A4nen <tomi@tomin=
.site>;
>> stable@vger.kernel.org
>> Subject: [Intel-gfx] [PATCH] drm/i915/sdvo: fix panel_type initialization
>>
>> Commit 3f9ffce5765d ("drm/i915: Do panel VBT init early if the VBT decla=
res an
>> explicit panel type") started using -1 as the value for unset panel_type=
. It gets
>> initialized in intel_panel_init_alloc(), but the SDVO code never calls i=
t.
>>
>> Call intel_panel_init_alloc() to initialize the panel, including the pan=
el_type.
>
> Change looks good to me. Thanks Jani for identifying the root cause and f=
ixing the issue.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> Reported-by: Tomi Lepp=C3=A4nen <tomi@tomin.site>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8896
>> Fixes: 3f9ffce5765d ("drm/i915: Do panel VBT init early if the VBT decla=
res an explicit
>> panel type")
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.1+
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> index 8298a86d1334..b4faf97936b9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -2752,7 +2752,7 @@ static struct intel_sdvo_connector
>> *intel_sdvo_connector_alloc(void)
>>       __drm_atomic_helper_connector_reset(&sdvo_connector->base.base,
>>                                           &conn_state->base.base);
>>
>> -     INIT_LIST_HEAD(&sdvo_connector->base.panel.fixed_modes);
>> +     intel_panel_init_alloc(&sdvo_connector->base);
>>
>>       return sdvo_connector;
>>  }
>> --
>> 2.39.2
>

--=20
Jani Nikula, Intel Open Source Graphics Center
