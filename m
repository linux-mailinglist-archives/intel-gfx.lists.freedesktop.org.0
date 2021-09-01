Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 349703FD4B7
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 09:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6993C6E131;
	Wed,  1 Sep 2021 07:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A446E131
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 07:45:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218678278"
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="218678278"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 00:45:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,368,1620716400"; d="scan'208";a="446425665"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 01 Sep 2021 00:45:39 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 1 Sep 2021 00:45:38 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 1 Sep 2021 13:15:35 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.010;
 Wed, 1 Sep 2021 13:15:35 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Update small joiner ram size
Thread-Index: AQHXieNidIENvhDau0KB8mcgYjahJKtk41QAgCoTiMA=
Date: Wed, 1 Sep 2021 07:45:35 +0000
Message-ID: <adc072967f0947edb9729cd1afc4dfb8@intel.com>
References: <20210805101937.14664-1-vandita.kulkarni@intel.com>
 <20210805184234.GA16497@labuser-Z97X-UD5H>
In-Reply-To: <20210805184234.GA16497@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update small joiner ram size
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

Thanks for the review. Changes pushed.

> -----Original Message-----
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Friday, August 6, 2021 12:13 AM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update small joiner ram size
>=20
> On Thu, Aug 05, 2021 at 03:49:37PM +0530, Vandita Kulkarni wrote:
> > Xelpd supports larger small joiner ram.
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 75d4ebc66941..d174f0d6e7cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -461,7 +461,9 @@ u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
> > static int  small_joiner_ram_size_bits(struct drm_i915_private *i915)
> > {
> > -	if (DISPLAY_VER(i915) >=3D 11)
> > +	if (DISPLAY_VER(i915) >=3D 13)
> > +		return 17280 * 8;
>=20
> Verified from the Bspec, looks good to me.
>=20
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
>=20
> Manasi
>=20
> > +	else if (DISPLAY_VER(i915) >=3D 11)
> >  		return 7680 * 8;
> >  	else
> >  		return 6144 * 8;
> > --
> > 2.32.0
> >
