Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF60344989
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 16:45:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34CA789EB4;
	Mon, 22 Mar 2021 15:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D1189DED
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 15:45:24 +0000 (UTC)
IronPort-SDR: R3FmTvc5nQ8D+5czH+qoT4GQCulZKi568nZGf1YZtan+7HegKWrVM/Bk9oKbPYRHxr79w/0XHs
 c+/wORN/EhDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="189697382"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="189697382"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 08:45:24 -0700
IronPort-SDR: X8PA+XWsIjFyvOi/TU5yCkjLbE7qtDAjzIqjDUYuf35f8Bj82w4DYMW4gTf8WyJh3eyC8qxk8l
 T6A17Ic9Q7cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="442189248"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 22 Mar 2021 08:45:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 17:45:21 +0200
Date: Mon, 22 Mar 2021 17:45:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YFi7kQldiwmEcc2Y@intel.com>
References: <20210319175720.5901-1-ville.syrjala@linux.intel.com>
 <161618092043.8631.320174419404607353@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161618092043.8631.320174419404607353@emeril.freedesktop.org>
X-Patchwork-Hint: comment
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 19, 2021 at 07:08:40PM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
> =

> Series: drm/i915: Enable TPS3/4 on all platforms that support them
> URL   : https://patchwork.freedesktop.org/series/88186/
> State : success
> =

> =3D=3D Summary =3D=3D
> =

> CI Bug Log - changes from CI_DRM_9877 -> Patchwork_19815
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> =

> Summary
> -------
> =

>   **SUCCESS**

That's a bit odd considering the link training still fails with this.
Did we convert some erorrs to debugs perhaps, or maybe this never
got flagged as an error?

<7>[    8.235008] i915 0000:00:02.0: [drm:intel_dp_start_link_train [i915]]=
 Using LINK_RATE_SET value 03
<7>[    8.236203] i915 0000:00:02.0: [drm:intel_dp_set_signal_levels [i915]=
] Using vswing level 0, pre-emphasis level 0, at DPRX
<7>[    8.236341] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pa=
ttern [i915]] [ENCODER:307:DDI A/PHY A] Using DP training pattern TPS1
<7>[    8.237373] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] c=
lock recovery OK
<7>[    8.237460] i915 0000:00:02.0: [drm:intel_dp_program_link_training_pa=
ttern [i915]] [ENCODER:307:DDI A/PHY A] Using DP training pattern TPS4
<7>[    8.239054] i915 0000:00:02.0: [drm:intel_dp_dump_link_status.isra.4 =
[i915]] ln0_1:0x0 ln2_3:0x0 align:0x80 sink:0x0 adj_req0_1:0x0 adj_req2_3:0=
x0
<7>[    8.239135] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] C=
lock recovery check failed, cannot continue channel equalization
<7>[    8.239218] i915 0000:00:02.0: [drm:intel_dp_link_train_phy [i915]] [=
CONNECTOR:308:eDP-1] Link Training failed at link rate =3D 270000, lane cou=
nt =3D 2, at DPRX

So CR lock is lost as soon as we switch to TPS4. I really wonder if the sink
actually even implements TPS4, and maybe when we write TPS4 to the DPCD reg
it starts to expect some other pattern? Should be semi-easy to confirm
I guess...

One thing I was pondering is whether we're detecting TPS4 vs. TPS3 differen=
tly
that eg. Windows. Based on some trawling it looks to me that for some reason
Windows uses the EDP_DPCD_REV>=3D0x4 check rather than DPCD_REV>=3D0x14 on =
eDP
panels when checking for TPS4 suppport. Unfortunately following that
convention here wouldn't help us:

<7>[    6.835706] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] e=
DP DPCD: 04 fb ff
<7>[    8.234921] [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: Base DPCD:=
 14 0a 82 41 00 00 01 c0 02 00 00 00 0f 09 80
<7>[    8.234943] [drm:drm_dp_read_dpcd_caps] AUX A/DDI A/PHY A: DPCD: 14 0=
a 82 c1 00 00 01 c0 02 00 00 00 0f 09 80

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
