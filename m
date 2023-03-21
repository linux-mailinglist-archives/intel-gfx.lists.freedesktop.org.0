Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E566C2F33
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 11:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A90610E16D;
	Tue, 21 Mar 2023 10:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2431210E16D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 10:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679395182; x=1710931182;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QzyY2NgznRiwbqF6Ozmw25m4NkVutGwqNmeJffJ7CWA=;
 b=m4GQsauEFyoghx7GzhD2NidVKKdVeypBY93BaEx6mlAhCP2fUfLa6ZYi
 h2Vz/nbQ4MsF3Z9/R9i0283B91k4M/z1tJFCPVIXHaKjZYs4qOCCIXOAZ
 iz9Tk8bWL73NziaU+0GMzZSeRCAXEORMYXCW3DblFyXXpTSc3gdp5FQeY
 NBWL0+x6CaeaJmOOehRNNi2uUmjJsezNYW4taqRshQJxcyeUpkLN1/ZFl
 OGKq1WGJI77axlbF8kPN5UGWsGm9A0qgGVam+HgAf2WBLRxtY0EC1R96s
 byIFNmbZkdI4WgNJ47bL59B6pdwXwbNcMAYZNYRiK+oSeOcBzX45S/HtM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="319295368"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="319295368"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 03:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="750497274"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="750497274"
Received: from trybicki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 03:39:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <dc5ded98-7cb9-23f9-999b-341ee0e03e54@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230320124429.786985-1-jani.nikula@intel.com>
 <20230320124429.786985-2-jani.nikula@intel.com>
 <dc5ded98-7cb9-23f9-999b-341ee0e03e54@intel.com>
Date: Tue, 21 Mar 2023 12:39:37 +0200
Message-ID: <87pm928k2e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/debugfs: add crtc i915_pipe
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 20 Mar 2023, "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com> w=
rote:
> On Mon-20-03-2023 06:14 pm, Jani Nikula wrote:
>> The pipe may differ from crtc index if pipes are fused off. For testing
>> purposes, IGT needs to know the pipe.
>>=20
>> There's already a I915_GET_PIPE_FROM_CRTC_ID IOCTL for this. However,
>> the upcoming Xe driver won't have that IOCTL, and going forward, we'll
>> want a unified interface for testing i915 and Xe, as they share the
>> display code. Thus add the debugfs for i915 display.
>>=20
>> v2: User letters for pipe names (Ville)
>>=20
>> Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> With IGT [1], this patch is
>
> Tested-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

Thanks, pushed to drm-intel-next. It'll take a moment for that to be
part of the baseline for testing. Please re-run the tests for [1] after
that.

BR,
Jani.

>
> [1]:=20
> https://patchwork.freedesktop.org/patch/msgid/20230320131342.2980032-1-bh=
anuprakash.modem@intel.com
>
> - Bhanu
>
>> ---
>>   .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 3c76e718b951..cc5026272558 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -1383,6 +1383,17 @@ static int i915_current_bpc_show(struct seq_file =
*m, void *data)
>>   }
>>   DEFINE_SHOW_ATTRIBUTE(i915_current_bpc);
>>=20=20=20
>> +/* Pipe may differ from crtc index if pipes are fused off */
>> +static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
>> +{
>> +	struct intel_crtc *crtc =3D m->private;
>> +
>> +	seq_printf(m, "%c\n", pipe_name(crtc->pipe));
>> +
>> +	return 0;
>> +}
>> +DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
>> +
>>   /**
>>    * intel_connector_debugfs_add - add i915 specific connector debugfs f=
iles
>>    * @connector: pointer to a registered drm_connector
>> @@ -1453,4 +1464,6 @@ void intel_crtc_debugfs_add(struct intel_crtc *crt=
c)
>>=20=20=20
>>   	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>>   			    &i915_current_bpc_fops);
>> +	debugfs_create_file("i915_pipe", 0444, root, crtc,
>> +			    &intel_crtc_pipe_fops);
>>   }

--=20
Jani Nikula, Intel Open Source Graphics Center
