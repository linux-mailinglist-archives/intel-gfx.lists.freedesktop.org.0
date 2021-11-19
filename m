Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 143BD456C6C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 10:37:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 223896F99C;
	Fri, 19 Nov 2021 09:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4C06F99C
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 09:37:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="214417903"
X-IronPort-AV: E=Sophos;i="5.87,246,1631602800"; d="scan'208";a="214417903"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 01:37:16 -0800
X-IronPort-AV: E=Sophos;i="5.87,246,1631602800"; d="scan'208";a="507834419"
Received: from sgconnee-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 01:37:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211118224721.GA29932@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211111230949.28590-1-manasi.d.navare@intel.com>
 <20211118224721.GA29932@labuser-Z97X-UD5H>
Date: Fri, 19 Nov 2021 11:37:06 +0200
Message-ID: <87tug8jxkt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dsc: Clamp the max DSC
 input BPP to connector's max bpp
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

On Thu, 18 Nov 2021, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> @Jani , @Ville, can you take a look at this, this was how the original DS=
C patches
> clamped the max bpp, but with latest DSC changes looks like this is not
> obeyed anymore and needs to be fixed.

When was this changed?

Fixes: ?

>
> Manasi
>
> On Thu, Nov 11, 2021 at 03:09:49PM -0800, Manasi Navare wrote:
>> Pipe_bpp limits are decided by connectors max bpp as computed in
>> compute_sink_pipe_bpp() before computing link and DSC config.
>> Currently dsc_compute_config() sets the max input bpp only based
>> on DSC Input BPPs supported and max bpc requested for the connector
>> but does not clamp it based on connector's max bpp.
>> This patch fixes that.
>>=20
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>>  1 file changed, 1 insertion(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 45373c213d9e..82209d995969 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1400,6 +1400,7 @@ static int intel_dp_dsc_compute_config(struct inte=
l_dp *intel_dp,
>>  		return -EINVAL;
>>=20=20
>>  	pipe_bpp =3D intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_reques=
ted_bpc);
>> +	pipe_bpp =3D min(pipe_bpp, limits->max_bpp);
>>=20=20
>>  	/* Min Input BPC for ICL+ is 8 */
>>  	if (pipe_bpp < 8 * 3) {
>> --=20
>> 2.19.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
