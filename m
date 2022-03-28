Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB644E9150
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 11:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEBF10E641;
	Mon, 28 Mar 2022 09:30:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4F310E60C
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 09:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648459804; x=1679995804;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KpkzLpFJtKyNNfEyVeufbAAVUFXGCvxO4bUP7HuUt54=;
 b=ForBtsfZnDy+t/8nQL1AUz4SL7jxeUdfRnqiEIPOgImgawvb4ynHD1eT
 Jc8Y9PTrMyC2PzCxM0ccHGEcsI5XPiETywAQoXuZkDABWW4pVOflUpCWG
 VYxPn9nemKPyICMmcjRvJtCw14pb6On3L1I3ea6edmYi1NHm03hwOxNjL
 GA1Qqbnh77g+szVyAw6X/1tBL+5tM20dx19WaTN7GRZ6ifhPmBx9qVPnL
 YIpeR6OwJ3BLi6zAy3UiTVFd4CYAp4rQm90/qlTW4dJ2dYrqhObBQbNgt
 YITS6cLcXKkIcG/SxSHAZFCq9xjP6oya7M8a2ISW4WvgVFFSDDuTHzVbY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="246444596"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="246444596"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 02:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="517957144"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 28 Mar 2022 02:29:54 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 28 Mar 2022 02:29:52 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 28 Mar 2022 14:59:51 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.021;
 Mon, 28 Mar 2022 14:59:51 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Add RPL-S PCI IDs
Thread-Index: AQHYQBQqBAys2SD+U0K4IjhBmAOBL6zULiYAgABeN+A=
Date: Mon, 28 Mar 2022 09:29:51 +0000
Message-ID: <63d4a04fb3fd418ab026761eb36bba6e@intel.com>
References: <20220322040616.1078009-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <PH7PR11MB58199CBAFD5B9652F6357462DF1A9@PH7PR11MB5819.namprd11.prod.outlook.com>
 <PH7PR11MB581969EAC14DC035B37E4046DF1D9@PH7PR11MB5819.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB581969EAC14DC035B37E4046DF1D9@PH7PR11MB5819.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Surendrakumar Upadhyay, TejaskumarX
> Sent: Monday, March 28, 2022 2:52 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add RPL-S PCI IDs
>=20
> Gentle reminder to review below change.
>=20
> Thanks,
> Tejas
>=20
> > -----Original Message-----
> > From: Surendrakumar Upadhyay, TejaskumarX
> > Sent: 25 March 2022 12:17
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Meena, Mahesh
> > <Mahesh.Meena@intel.com>
> > Subject: RE: [PATCH] drm/i915: Add RPL-S PCI IDs
> >
> > Can anyone please give review on this?
> >
> > Thanks,
> > Tejas
> >
> > > -----Original Message-----
> > > From: Surendrakumar Upadhyay, TejaskumarX
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > Sent: 22 March 2022 09:36
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Surendrakumar Upadhyay, TejaskumarX
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>; Roper, Matthew D
> > > <matthew.d.roper@intel.com>
> > > Subject: [PATCH] drm/i915: Add RPL-S PCI IDs
> > >
> > > Add couple of RPL-S device ids
> > >
> > > Bspec : 53655
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Tejas Upadhyay
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
LGTM.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > ---
> > >  include/drm/i915_pciids.h | 4 +++-
> > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> > > index
> > > 3609f3254f24..638be9cddba4 100644
> > > --- a/include/drm/i915_pciids.h
> > > +++ b/include/drm/i915_pciids.h
> > > @@ -679,7 +679,9 @@
> > >  	INTEL_VGA_DEVICE(0xA782, info), \
> > >  	INTEL_VGA_DEVICE(0xA783, info), \
> > >  	INTEL_VGA_DEVICE(0xA788, info), \
> > > -	INTEL_VGA_DEVICE(0xA789, info)
> > > +	INTEL_VGA_DEVICE(0xA789, info), \
> > > +	INTEL_VGA_DEVICE(0xA78A, info), \
> > > +	INTEL_VGA_DEVICE(0xA78B, info)
> > >
> > >  /* DG2 */
> > >  #define INTEL_DG2_G10_IDS(info) \
> > > --
> > > 2.34.1

