Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D3D470087
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 13:18:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BA610E458;
	Fri, 10 Dec 2021 12:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38CB010E47F
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 12:18:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="235849376"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="235849376"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 04:18:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="612910469"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 04:18:14 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YbM8bv0tgyL0SpZ5@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
 <20211209182109.29786-4-ville.syrjala@linux.intel.com>
 <87r1ak1zld.fsf@intel.com> <YbM8bv0tgyL0SpZ5@intel.com>
Date: Fri, 10 Dec 2021 14:18:07 +0200
Message-ID: <87o85o1wn4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/fbc: Introduce device info
 fbc_mask
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

On Fri, 10 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Dec 10, 2021 at 01:14:22PM +0200, Jani Nikula wrote:
>> On Thu, 09 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/dr=
m/i915/intel_device_info.h
>> > index 213ae2c07126..89712019f073 100644
>> > --- a/drivers/gpu/drm/i915/intel_device_info.h
>> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> > @@ -156,7 +156,6 @@ enum intel_ppgtt_type {
>> >  	func(has_dp_mst); \
>> >  	func(has_dsb); \
>> >  	func(has_dsc); \
>> > -	func(has_fbc); \
>> >  	func(has_fpga_dbg); \
>> >  	func(has_gmch); \
>> >  	func(has_hdcp); \
>> > @@ -198,6 +197,7 @@ struct intel_device_info {
>> >=20=20
>> >  	u8 pipe_mask;
>> >  	u8 cpu_transcoder_mask;
>> > +	u8 fbc_mask;
>>=20
>> I'd rather we started moving these under the display substruct instead
>> of the other way round.
>
> I guess I could throw in a prep patch that moves the other masks there.
> Just looked a bit funny having one mask in there and all the others not
> there.

Yeah. Another angle is this runtime info thing and finally making the
device info truly const, removing the silly mkwrite_device_info(), and
making INTEL_INFO() point at rodata.

One plan that I've had is having something like this:

struct intel_device_info {
	const struct intel_runtime_info *__initial_runtime_info;

	/* ... */
};

and copying __initial_runtime_info to i915->__runtime.

The downside is that it probably ends up in a four-way split with
display/non-display and runtime/const.


BR,
Jani.



--=20
Jani Nikula, Intel Open Source Graphics Center
