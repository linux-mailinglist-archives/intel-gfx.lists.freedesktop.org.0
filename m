Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4A83FFEB9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 13:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC526E86C;
	Fri,  3 Sep 2021 11:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A2826E86C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 11:10:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="206513721"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="206513721"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 04:10:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="533985668"
Received: from oliviapo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.143])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 04:10:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com
In-Reply-To: <YFi7kQldiwmEcc2Y@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
 <161618092043.8631.320174419404607353@emeril.freedesktop.org>
 <YFi7kQldiwmEcc2Y@intel.com>
Date: Fri, 03 Sep 2021 14:10:17 +0300
Message-ID: <87r1e59ap2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_TPS3/4_on_all_platforms_that_support_them?=
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

On Mon, 22 Mar 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Mar 19, 2021 at 07:08:40PM -0000, Patchwork wrote:
>> =3D=3D Series Details =3D=3D
>>=20
>> Series: drm/i915: Enable TPS3/4 on all platforms that support them
>> URL   : https://patchwork.freedesktop.org/series/88186/
>> State : success
>>=20
>> =3D=3D Summary =3D=3D
>>=20
>> CI Bug Log - changes from CI_DRM_9877 -> Patchwork_19815
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>>=20
>> Summary
>> -------
>>=20
>>   **SUCCESS**
>
> That's a bit odd considering the link training still fails with this.
> Did we convert some erorrs to debugs perhaps, or maybe this never
> got flagged as an error?
>
> <7>[    8.235008] i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915=
]] Using LINK_RATE_SET value 03
> <7>[    8.236203] i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i91=
5]] Using vswing level 0, pre-emphasis level 0, at DPRX
> <7>[    8.236341] i915 0000:00:02.0: [drm:intel_dp_program_link_training_=
pattern [i915]] [ENCODER:307:DDI A/PHY A] Using DP training pattern TPS1
> <7>[    8.237373] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]]=
 clock recovery OK
> <7>[    8.237460] i915 0000:00:02.0: [drm:intel_dp_program_link_training_=
pattern [i915]] [ENCODER:307:DDI A/PHY A] Using DP training pattern TPS4
> <7>[    8.239054] i915 0000:00:02.0: [drm:intel_dp_dump_link_status.isra.=
4 [i915]] ln0_1:0x0 ln2_3:0x0 align:0x80 sink:0x0 adj_req0_1:0x0 adj_req2_3=
:0x0
> <7>[    8.239135] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]]=
 Clock recovery check failed, cannot continue channel equalization
> <7>[    8.239218] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]]=
 [CONNECTOR:308:eDP-1] Link Training failed at link rate =3D 270000, lane c=
ount =3D 2, at DPRX
>
> So CR lock is lost as soon as we switch to TPS4. I really wonder if the s=
ink
> actually even implements TPS4, and maybe when we write TPS4 to the DPCD r=
eg
> it starts to expect some other pattern? Should be semi-easy to confirm
> I guess...
>
> One thing I was pondering is whether we're detecting TPS4 vs. TPS3 differ=
ently
> that eg. Windows. Based on some trawling it looks to me that for some rea=
son
> Windows uses the EDP_DPCD_REV>=3D0x4 check rather than DPCD_REV>=3D0x14 o=
n eDP
> panels when checking for TPS4 suppport. Unfortunately following that
> convention here wouldn't help us:
>
> <7>[    6.835706] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]]=
 eDP DPCD: 04 fb ff
> <7>[    8.234921] [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: Base DPC=
D: 14 0a 82 41 00 00 01 c0 02 00 00 00 0f 09 80
> <7>[    8.234943] [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: DPCD: 14=
 0a 82 c1 00 00 01 c0 02 00 00 00 0f 09 80

Should try this in combination with [1]?

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20210719235927.283173-1-k=
haled.almahallawy@intel.com


--=20
Jani Nikula, Intel Open Source Graphics Center
