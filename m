Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD1D720421
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 16:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A5010E6A1;
	Fri,  2 Jun 2023 14:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074C110E6A1
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685715404; x=1717251404;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AMZ8C1UgN01qw3mgTsOcPkGVco8FM+7LOhquAFVvbe8=;
 b=mDzAHEeidGhzNx9cyz+LXrxrQjATjD4+C27y8Ydmvx+dhZtnQVR6/X0G
 8LhiDVMI/RhrVAKpaDXIP2lScvZkNKotCaRsO76qwEXeX0ejWs2cdBjBA
 sCoWcbLK2Z61K2Usll92lVLdna0y/wfMm0N3etGPv6icQW6ibAcPRC/8b
 dcT/riZunvFEYxrZ+EAro3m6z1mmZSlDatwWu1v2vOsuQFL9hpHpvl54B
 AuWFS6COoi42wl/t+mDQ2MNRzND09gHIbh2by116IKJxCvSnNeNeC/Z/f
 /k+uAZASqtqmWa+5XvUkZsoOHmt8QtxfbSCw2hzbmtUgAEPSiT4xuH9JN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335490179"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="335490179"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:16:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="882086582"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="882086582"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 07:16:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87pm6edka6.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-4-ville.syrjala@linux.intel.com>
 <87pm6edka6.fsf@intel.com>
Date: Fri, 02 Jun 2023 17:16:35 +0300
Message-ID: <87mt1idk58.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 3/7] drm/i915: Assert that device info
 bitmasks have enough bits
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

On Fri, 02 Jun 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Sprinkle in some BUILD_BUG_ON()s to make sure some of
>> the bitmasks used in the device info have enough bits.
>>
>> Do we have a better place for this sort of stuff?
>
> *grin* intel_display_device_info_runtime_init()
>
> https://patchwork.freedesktop.org/patch/msgid/20230601212535.675751-1-mat=
thew.d.roper@intel.com
>
> It'll conflict, again. :/

static_assert in the global scope is an option.

Also,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/intel_device_info.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/=
i915/intel_device_info.c
>> index f79142983f28..8a35005c46c0 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -419,6 +419,10 @@ void intel_device_info_runtime_init(struct drm_i915=
_private *dev_priv)
>>  		DISPLAY_RUNTIME_INFO(dev_priv);
>>  	enum pipe pipe;
>>=20=20
>> +	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->pipe_mask) < I915_MAX_PIPE=
S);
>> +	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I91=
5_MAX_TRANSCODERS);
>> +	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORT=
S);
>> +
>>  	/* Wa_14011765242: adl-s A0,A1 */
>>  	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
>>  		for_each_pipe(dev_priv, pipe)

--=20
Jani Nikula, Intel Open Source Graphics Center
