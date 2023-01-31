Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1157B682566
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BEE10E335;
	Tue, 31 Jan 2023 07:12:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E9D810E335
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675149154; x=1706685154;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JmN/X/BV51/X8QdBb/V19RmhoaBIlxrUmeMYHklSMOg=;
 b=O7QqxA11I7ATbmR0mASNhWDadoXis4oKAE7BpUVEubBBgduhmXL+vS64
 tfacxnTR81W80N/Sf7Y0pcMxwiC61tFFhUorIOf/0G8rpFOfjFcWgc3GD
 4rJXUPAESo+BHa+lSdqL2fvUXpI2aU96E3plmi+DlfNdpmqx5MAMTdefN
 cngaKW4TPEyYc9zsD2ucnqVrEjhTbFr/gSiPcXjjKhnJ3mAJL4hpQ0BjW
 jWmYT/PvoZ50ogxkMDQpHP7IHhGLuftcvlKIvhSO/xQrmuxd+4KGtZQVo
 eh4jxGg6l16RzU063WFef+5jnJEK9V4nG6aGIPB6L1wDsPacnjXMhs/yn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307426029"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="307426029"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:12:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="696722752"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="696722752"
Received: from akryuko1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.35])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:12:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87zg9z2n6b.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230130181701.29977-1-ville.syrjala@linux.intel.com>
 <87zg9z2n6b.fsf@intel.com>
Date: Tue, 31 Jan 2023 09:12:29 +0200
Message-ID: <87wn532n4y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Include stepping informaiton
 in device info dump
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

On Tue, 31 Jan 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 30 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Dump the stepping information alongside all the other device
>> info. Might avoid some guesswork when reading logs.
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

*information

in the subject line, can be fixed while applying.

>
>> ---
>>  drivers/gpu/drm/i915/intel_device_info.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/=
i915/intel_device_info.c
>> index 98769e5f2c3d..599c6d399de4 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -119,6 +119,11 @@ void intel_device_info_print(const struct intel_dev=
ice_info *info,
>>  		drm_printf(p, "display version: %u\n",
>>  			   runtime->display.ip.ver);
>>=20=20
>> +	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step=
.graphics_step));
>> +	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.me=
dia_step));
>> +	drm_printf(p, "display stepping: %s\n", intel_step_name(runtime->step.=
display_step));
>> +	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step=
.basedie_step));
>> +
>>  	drm_printf(p, "gt: %d\n", info->gt);
>>  	drm_printf(p, "memory-regions: %x\n", runtime->memory_regions);
>>  	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);

--=20
Jani Nikula, Intel Open Source Graphics Center
