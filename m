Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C9D6BEA33
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 14:37:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FFD810E122;
	Fri, 17 Mar 2023 13:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4745A10E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 13:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679060233; x=1710596233;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=msxRLT46qHD8PKN2T9O3prBcgFGbVGpiSK026YE0sHE=;
 b=IMCgxLJwopUYxNVVuA/ESRkz2Uc6LucIpy9L8D3zkeN/FNJT4TgM0K6S
 Ee3fpMblyUCwMnIGb7ZacMkp1bFx6X0CYhCc0HfDpNix+d69UnmfEqkp2
 XA1C19GgMX1VYCU/6Or0tekKcjlXHZEZhdz9L5Q7gxY5AYpj0H1BCQDy+
 /4TGx46MbPfPuFWt2I0AGTvj4qunzyMJSxkXTwcGoCxuqe8B+HSbpQJCE
 tPRlFRm8/i1TBzHuCDDNrte+MMuB1Kx75gYtveYO9WFYkJ0AfmGGg0fls
 JS0RQss3zmvvfDrKuj+Z00hTitBnLMElTrsUM4qTR3+PI5HWy5KmpsQBM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="339799069"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="339799069"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="804098854"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="804098854"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:37:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZBRpOllVY8PFfc3w@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230317125352.198042-1-jani.nikula@intel.com>
 <20230317125352.198042-2-jani.nikula@intel.com>
 <ZBRpOllVY8PFfc3w@intel.com>
Date: Fri, 17 Mar 2023 15:37:09 +0200
Message-ID: <87pm97a48q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: add crtc i915_pipe
 debugfs file
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Mar 17, 2023 at 02:53:52PM +0200, Jani Nikula wrote:
>> The pipe may differ from crtc index if pipes are fused off. For testing
>> purposes, IGT needs to know the pipe.
>>=20
>> There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
>> the upcoming Xe driver won't have that IOCTL, and going forward, we'll
>> want a unified interface for testing i915 and Xe, as they share the
>> display code. Thus add the debugfs for i915 display.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
>>  1 file changed, 13 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index faa44fb80aac..e85270adca95 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1657,6 +1657,17 @@ static int i915_current_bpc_show(struct seq_file =
*m, void *data)
>>  }
>>  DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
>>=20=20
>> +/* Pipe may differ from crtc index if pipes are fused off */
>> +static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>> +{
>> +	struct intel_crtc *crtc =3D m->private;
>> +
>> +	seq_printf(m, "%d\n", crtc->pipe);
>
> Are we happy with an integer or should we use the actual alphabetic
> name here?

Primarily I considered the programmatic use case, and the ease of
switching over from the ioctl. What do we gain by making IGT parse this?

> Either way, the series is:
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks,
Jani.

>
>> +
>> +	return 0;
>> +}
>> +DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>> +
>>  /**
>>   * intel_connector_debugfs_add - add i915 specific connector debugfs fi=
les
>>   * @connector: pointer to a registered drm_connector
>> @@ -1735,4 +1746,6 @@ void intel_crtc_debugfs_add(struct intel_crtc *crt=
c)
>>=20=20
>>  	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>>  			    &i915_current_bpc_fops);
>> +	debugfs_create_file("i915_pipe", 0444, root, crtc,
>> +			    &intel_crtc_pipe_fops);
>>  }
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel Open Source Graphics Center
