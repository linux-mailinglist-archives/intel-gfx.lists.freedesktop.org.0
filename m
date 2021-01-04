Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 364972E8FD6
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 05:41:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1799889ABA;
	Mon,  4 Jan 2021 04:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B722C89ABA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 04:40:59 +0000 (UTC)
IronPort-SDR: 0xo73RmnQgKJMMHg932orJ4ael7YPGdEHw0E5rQOS36nIGlrGxYxtImqUwa8W8QT7pVUgHoj6v
 CZrRp+TCUv0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9853"; a="176130424"
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="176130424"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2021 20:40:58 -0800
IronPort-SDR: Jx6vdfBUBFKhxyCSuzTgFtex/mSwa+tm+hjqsd5ClmHNQp2c7uxDDByCE6eght98aEC+d2MWyQ
 eur5B0iP2JEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,473,1599548400"; d="scan'208";a="342689544"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 03 Jan 2021 20:40:58 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 3 Jan 2021 20:40:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 3 Jan 2021 20:40:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 3 Jan 2021 20:40:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B1ArqL/fHYA7X7gtI/kBZe6OYdvdpQScp1LCjd9lxShm2AJpIP9X045kiKYwApJs1viMKx4ZrUFMC7MF2N6n7oTGxVVRjulX3Sh51kRlakhy/7kgk9burWmoN+tBoSxpLvRmfTZcH25d9MC0mYFTLRfi4BmrWf9OPzYzCOXF9SXa3vq1zAH12wGUrLW0NSUEXHqBLccxA5RNV8TjPFMiuoDPyj82U7hbz8zc+5C4kMvnIcschrn4kWJT4HGZWb8K+qeh1sv0RILroJ8QCbzI6XWUCooRtChCqyKGnOZeMm+wv5LcpO94W0fOihknpaV2u9/kVMZI+GOF4Xj8wMkRPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RnHliLaDb/V6NfGbkfSYGcK9k5mBxDhnzPlOD+lLwec=;
 b=Swe4Pm6fCp3g0hvu7df8VBbzcAx2hOP1g428dvUmxPuS6txF5ztcE64Gi3rEKnK86i3pcoZaEsuEg5k4JrQekVvYkxyRXigyhTf1IlQ73BUwH0dv8scImGPbdE99oTt505hFZJ12WzZtbfJS2tRyWD5jPRu7Q7PjPdalqSVA4KL0xi/X2MemnuOJbOVhZDp8Vc+HBNnD1R3TzwNRa8emZOnl538KpzGfFllIhKoCUwqWeK4L1UUXCm6554EbrVe6aP4+bzf6LEdHwpoZ8yHskWBJOXo9Nt2d3qOXnB7M/Uy5wvUGmAOV4V95m5fu7kfZFxjY7xTXDDkig8Uf3FDzHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RnHliLaDb/V6NfGbkfSYGcK9k5mBxDhnzPlOD+lLwec=;
 b=TjPLhkmdG5Aym7WDX5I8/fV0JxQNPO6HS6RaRIY4mAduV0zqOf54iuBnBH8EnvHnegon9RJu0MQ6XWP4MDUg/SNAF/mgsh9fRVnaWblzjM3KVYU+w/RO0jLX+drrs4TPpL5J2FHsG4cHC8lpqGstiAQ5JabpevNGmCp0HPU+NHI=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3423.namprd11.prod.outlook.com (2603:10b6:805:db::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.22; Mon, 4 Jan
 2021 04:40:51 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce%3]) with mapi id 15.20.3721.023; Mon, 4 Jan 2021
 04:40:50 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
Thread-Index: AQHW3OHbIlWzn98EYEqwXM+t5Vq9fqoQVkqAgACONICAANISgIAFLfCQ
Date: Mon, 4 Jan 2021 04:40:50 +0000
Message-ID: <SN6PR11MB34213237CD078412B092CEF2DFD20@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20201231000103.GD3894148@mdroper-desk1.amr.corp.intel.com>
 <SN6PR11MB3421FDA5F04C9ED11F44E49CDFD60@SN6PR11MB3421.namprd11.prod.outlook.com>
 <20201231210153.GF3894148@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201231210153.GF3894148@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [43.250.158.55]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bed034a3-fefc-485f-987e-08d8b06ae9cf
x-ms-traffictypediagnostic: SN6PR11MB3423:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB3423D68671638258E162DB80DFD20@SN6PR11MB3423.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cnHTDmjtM62Nhpu59T3wR2jYPie+guah31va0p1nh6cvVacqQF50+9e+UBwOEam5T0xUN1/v/Bph6Eg8A5o3Tp2ec9JVuBOgjrBtmzFs3/8HcrY6AlgUYHae7xIApxRjoGKDTA6lBYap9IkBshvOxFyj+tzQBDZiooUhHmlc/3RsnvS/F/UBVK/s13/Yj+6GSooib/yvzasobvKs8rSf0G3rqJSAtcS4UQnzX0tAtvaIz0efN/l47tpGNuRZF1x+vzqUZ7g0QwhyjJAqqjE0MF/jvc022h6wV5HKZLdI8TkmOMmcTk2iLYSLqWODNNPnvS/G+h3XQoj18zZyw2zu2nHzhn4rXd/8J8Ei2JIZeMaZxLx7AETOQ/azaeRntvfNAeCUmjFsmdc5B/C+g9c57ZLT414yGlvcx6hPaCa16SsSK16Wx40ESE0KBqWH7U27RAuRZRjdD0Th+O4KzLzPMy5R4h1fmPLFzx3Q3dYR5o2gNQbjQZO8TEsxY9T8d3pp3/TuEC7LllABnRzO7npbuA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(366004)(376002)(39860400002)(966005)(9686003)(8936002)(316002)(66574015)(107886003)(4326008)(66946007)(33656002)(83380400001)(52536014)(76116006)(55016002)(64756008)(66476007)(66556008)(66446008)(6862004)(478600001)(5660300002)(86362001)(6506007)(7696005)(53546011)(71200400001)(54906003)(186003)(26005)(6636002)(2906002)(30864003)(8676002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?0QLUI8ESHI9rtWQjXaNSR2ZXHnRMLLI6XRxo/ZT7d8GF1TdH2YBmdMjGot?=
 =?iso-8859-1?Q?Si6V/svEjIX0rUvZmNrNBQ9zqK/w8cKrnIWNT0fDn9oCaMhe4Puc5P+hvG?=
 =?iso-8859-1?Q?J2+SNfG+xcdud6EPIt7v8YAesfQWtAAbbITtuV2SpmZD2+JdVShRSHUqn2?=
 =?iso-8859-1?Q?jh60qF6RuTFAqXZILR1f25deoXt/KGXomub918q+122x5aNEqrmEoPfDF8?=
 =?iso-8859-1?Q?2eahXmvdtcIEwLGbjtFpS4xjHo9O0BLYlW7T+BJ29lvh2Vh9eBXvXdtxqw?=
 =?iso-8859-1?Q?mDYd2zez65OePTK82ru+8wo/2Yt0fuEIMRLhuz+plybDUVETAb/DmBiPev?=
 =?iso-8859-1?Q?mPamnRgE29ZNrCzJydTKLeE1igZg5E08x5R9Dar6+rzza8JETglsa4R8kx?=
 =?iso-8859-1?Q?L+ELzoA/jNN+PuPXP+3JUkOVzdX4hHPcbHfF5ykzlSOLxulAibEalNcmRB?=
 =?iso-8859-1?Q?X0GQguGDRtqsT7+obfUDdu1KFH5Jz/eEsr/zVhrrM2JynCYOVB5ItETW7h?=
 =?iso-8859-1?Q?DwInnE8zEQoBgBZQPse4agEEgZGzA6t/BTnoe/GP3+cAU0G36AfVRhkai+?=
 =?iso-8859-1?Q?ue4OJh3B7x9e4KafC3tTVLQVseGIyxzLlfqagWL9j13q34tgZlvW640Jg3?=
 =?iso-8859-1?Q?hX798/vc9+QIy5QyWbvkEnkxWJqAc/xCugdcjqCf9ZF7BC7+i3flcQ8jyQ?=
 =?iso-8859-1?Q?GROoSc9Av1zGvr66PjLGvuwIMECIysCu7JJmUFWJQopcdW+FKzDQIOldQx?=
 =?iso-8859-1?Q?QytPBYZ87zCDpDP8rCUDS6HamlTnF8wviZamGftcNas/AvJaVX8VRKelJZ?=
 =?iso-8859-1?Q?3k1A+c/Z8b05sKEXoWgFydcuQR84Meb9JCw6vvPJCFeNc/FM2g77fNUc9k?=
 =?iso-8859-1?Q?SmjvBLIhYhT06ESirdG8HU9Kh5+whBmpm4XLoAwRZ9j8ypS4Y/XdwzaawT?=
 =?iso-8859-1?Q?+z3OqLgbMDe0MpjXwiZ6I7mhSPlS6fW6FgQNR2ucQqh7SQKIHf/iKyvZDX?=
 =?iso-8859-1?Q?K9IRPeKKsTFRk5Ku0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bed034a3-fefc-485f-987e-08d8b06ae9cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2021 04:40:50.7450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jmmo54YhCpx2iqeUMl0EWcvEqQLu8+6MK5C1WIsRv/HJoiTecBio7+T2JXst89+nSooa0HnAaAUyznfbf3LyL84hQJdvRVQcPDEpCYIpmjIuZxl1wW2x/MBORmO2t57xCvQ1aZTVjnkSQnFiilt4Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3423
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Matt Roper <matthew.d.roper@intel.com>
> Sent: 01 January 2021 02:32
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> <hariom.pandey@intel.com>
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
> =

> On Thu, Dec 31, 2020 at 12:48:06AM -0800, Surendrakumar Upadhyay,
> TejaskumarX wrote:
> >
> >
> > > -----Original Message-----
> > > From: Matt Roper <matthew.d.roper@intel.com>
> > > Sent: 31 December 2020 05:31
> > > To: Surendrakumar Upadhyay, TejaskumarX
> > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> > > <hariom.pandey@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH
> > > support
> > >
> > > On Mon, Dec 28, 2020 at 11:42:35AM +0530, Tejas Upadhyay wrote:
> > > > We have TGP PCH support for Tigerlake and Rocketlake. Similarly
> > > > now TGP PCH can be used with Cometlake CPU.
> > >
> > > Based on the 'compatibility' section of bspec 49181, I think the TGP
> > > PCH can technically be compatible with any gen9bc platform, not just
> CML.
> > > Although it seems unlikely that anyone is going to go back and
> > > create new products with a SKL+TGP pairing or something at this
> > > point, it's still probably best to write this patch based on GEN9_BC =
rather
> than CML.
> > >
> >
> >
> > Tejas : This patch is generated to support DELL's requirement where they
> are using CML CPU + TGP PCH. But I agree if we want to change CML with
> GEN9_BC. Please have a look at https://gitlab.freedesktop.org/drm/intel/-
> /issues/2742 and this patch has been verified by DELL as working for all =
of
> their platforms with CML CPU + TGP PCH (Off course it worked after I gave
> local workaround of Lee Shawn's patch
> https://patchwork.freedesktop.org/patch/401301/?series=3D83154&rev=3D5).
> Also this patch +
> https://patchwork.freedesktop.org/patch/401301/?series=3D83154&rev=3D5 (L=
ee
> Shawn's patch reviewed by you) + Adding IS_COMETLAKE check to Lee
> Shawn's patch needs to be merged by Jan 4th to complete upstreaming for
> CML CPU + TGP PCH. DELL is having critical requirement to finish upstream=
ing
> by Jan 4th.
> =

> The changes from Shawn are to make RKL (a gen12 platform) work with the
> older gen9-style CMP PCH.  What you're doing here is making a gen9
> platform work with a newer gen12-style TGP PCH.  Although those are
> converses of each other, I don't think the driver changes should depend on
> each other.  Shawn's series shouldn't be necessary for your work or vice
> versa.  I'm not sure when Shawn plans to merge his series; I had some
> further changes suggested, so he might be working on those before merging
> his work.

Tejas : Just to bring your attention here that RKL RVP ddc_pins are not map=
ped correctly with TGP PCH currently, specially when it comes to remapping =
of VBT values to platform. I think Shawn's patch is addressing that as well=
. I have tested RKL RVP we don't have right ddc pin mapping currently thus =
there was problem in detection of ports. Please check https://jira.devtools=
.intel.com/browse/VLK-16850 (ignore "port C" wording in VLK, its port TC1).=
 Please suggest if I need to create patch for VBT remap for CML/GEN9BC  on =
top of Shawn's patch or I can send as part of this patchset?

> =

> I'm not sure what leads to the Jan 4th date, but assuming "finish
> upstreaming" means that you want the patch to land in a final release ker=
nel
> by that date, there's pretty much no way that would be possible at this p=
oint.
> Getting patches like this reviewed and applied to an Intel tree is only t=
he first
> step along the maintainer chain that eventually leads to a release from L=
inus
> or a stable kernel maintainer.
> Plus when a customer says they want something upstream, one of the most
> important things for them is that the patch has been fully reviewed and
> tested and has a relatively high chance of being correct.  We can't rush
> patches in to meet deadlines if we think they're only going to work in ce=
rtain
> situations and cause problems for other ones.
> =

> One other thing that I don't see addressed anywhere in this patch is that=
 the
> driver doesn't consider gen9 + TGP to be a valid combination and will thr=
ow a
> warning in intel_pch_type() if detected.

Tejas : Yes I am planning to add GEN9 + TGP as valid combo, so it does not =
throw warning. And about the deadline, we will follow our process for sure.

> =

> >
> > > >
> > > > Changes since V1 :
> > > > - Matched HPD Pin mapping for PORT C and PORT D of CML CPU.
> > > >
> > > > Cc : Matt Roper <matthew.d.roper@intel.com> Cc : Ville Syrj=E4l=E4
> > > > <ville.syrjala@linux.intel.com>
> > > > Signed-off-by: Tejas Upadhyay
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c     | 7 +++++--
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
> > > >  drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 ++-
> > > >  3 files changed, 12 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 17eaa56c5a99..181d60a5e145 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -5301,7 +5301,9 @@ static enum hpd_pin dg1_hpd_pin(struct
> > > > drm_i915_private *dev_priv,  static enum hpd_pin
> > > > tgl_hpd_pin(struct
> > > drm_i915_private *dev_priv,
> > > >  enum port port)
> > > >  {
> > > > -if (port >=3D PORT_TC1)
> > > > +if (IS_COMETLAKE(dev_priv) && port >=3D PORT_C) return
> HPD_PORT_TC1
> > > > ++ port + 1 - PORT_TC1;
> =

> Why is the offset written as "port + 1 - PORT_TC1?"  This platform doesn't
> have TC ports as inputs, so it's completely unintuitive how "+ 1 - PORT_T=
C1"
> would relate to PORT_C unless you go lookup the enum values (plus the
> unexpected "+1" part is really easy to overlook as I did the first time I=
 looked
> through this patch).
> =

> This should just be written with a more straightforward offset as:
> =

>         return HPD_PORT_TC1 + port - PORT_C;
Tejas : Ok.
> =

> > > > +else if (port >=3D PORT_TC1)
> > > >  return HPD_PORT_TC1 + port - PORT_TC1;  else  return HPD_PORT_A +
> > > > port - PORT_A; @@ -5455,7 +5457,8 @@ void intel_ddi_init(struct
> > > > drm_i915_private *dev_priv, enum port port)
> > > >
> > > >  if (IS_DG1(dev_priv))
> > > >  encoder->hpd_pin =3D dg1_hpd_pin(dev_priv, port); -else if
> > > > (IS_ROCKETLAKE(dev_priv))
> > > > +else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> > > > +     HAS_PCH_TGP(dev_priv)))
> > > >  encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);  else if
> > > > (INTEL_GEN(dev_priv) >=3D 12)
> > >
> > > I'd suggest leaving the RKL condition alone since nothing here has
> > > anything to do with RKL.  Instead change the gen12+ condition to
> > > HAS_PCH_TGP() and update the TGP-specific handler to do the port
> > > mapping described on bspec 49181.
> > >
> > Tejas : Ok.
> >
> > > Plus I don't think what you have here would map the ports correctly
> anyway.
> > > gen9 PORT_C/PORT_D would map to HPD_PORT_C/HPD_PORT_TC1 with
> the
> > > logic here, whereas the bspec says they should map to
> > > HPD_PORT_TC1/HPD_PORT_TC2.
> > >
> > Tejas : This have been taken care in tgl_hpd_pin() API with right HPD p=
in
> mapping and its tested working on RVP as well as by DELL.
> >
> > > >  encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port); diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index f2c48e5cdb43..47014471658f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -16163,6 +16163,11 @@ static void intel_setup_outputs(struct
> > > drm_i915_private *dev_priv)
> > > >  intel_ddi_init(dev_priv, PORT_F);
> > > >
> > > >  icl_dsi_init(dev_priv);
> > > > +} else if (IS_COMETLAKE(dev_priv) && HAS_PCH_TGP(dev_priv)) {
> > > > +intel_ddi_init(dev_priv, PORT_A); intel_ddi_init(dev_priv,
> > > > +PORT_B); intel_ddi_init(dev_priv, PORT_C);
> > > > +intel_ddi_init(dev_priv, PORT_D);
> > >
> > > As noted before, this relates to gen9bc in general, not just CML.
> > >
> > Tejas : I will add GEN9BC check here with TGP specific handle.
> >
> > > Is the only reason for this block because TGP's instance of
> > > SFUSE_STRAP doesn't have output presence bits anymore?  If you want,
> > > you could keep using the existing gen9bc block for consistency, but
> > > make the SFUSE_STRAP checks themselves conditional on a platform
> > > that has the presence bits.  E.g.,
> > >
> > Tejas : I am not much familiar with STRAP, can I go ahead with above
> approach GEN9BC && TGP PCH check?
> =

> The output initialization is already a bit of a mess (and we plan to over=
haul
> the design soon), so adding special case conditions like this just makes =
it
> more complicated and harder to follow.  I'm asking what led you to create=
 a
> new block rather than just letting the existing block continue to be used=
.  I
> can see where TGP's lack of strap bits could be a problem (since reading
> those bits as 0 would incorrectly lead you to believe that the output did=
n't
> exist), but if that's the only thing you were trying to avoid, then it's =
probably
> simpler to just update the place we read the fuse value.  Were there other
> reasons you also decided to create a new block?

Tejas : As I told I am not much clear with STRAP logic, but the observation=
 was that only port A output was getting initialized by default. Okay I wil=
l avoid fuse checks for GEN9 BC && TGP PCH case and use existing blocks.
> =

> =

> >
> > >     /* ICP+ no longer has port presence bits */
> > >     found =3D INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP ?
> > >         ~0 : intel_de_read(dev_priv, SFUSE_STRAP);
> > >
> > > >  } else if (IS_GEN9_LP(dev_priv)) {
> > > >  /*
> > > >   * FIXME: Broxton doesn't support port detection via the diff -
> > > -git
> > > > a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > index c5959590562b..540c9d54b595 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > @@ -3174,7 +3174,8 @@ static u8 intel_hdmi_ddc_pin(struct
> > > > intel_encoder *encoder)
> > > >
> > > >  if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)  ddc_pin =3D
> > > > dg1_port_to_ddc_pin(dev_priv, port); -else if
> > > > (IS_ROCKETLAKE(dev_priv))
> > > > +else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> > > > +     HAS_PCH_TGP(dev_priv)))
> > > >  ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
> > >
> > > As above, none of the changes in this patch have any relation to
> > > RKL, so it doesn't make sense to update the RKL condition.  Instead
> > > just add the gen9bc port mapping logic to icl_port_to_ddc_pin().
> > >
> > Tejas : Ok.
> > > Plus, it looks like what you have here right now will make the same
> > > mapping mistake for C and D that the HPD logic did.
> > >
> > Tejas : It is doing proper pin mapping. Its tested by us on RVP and by =
DELL.
> =

> Are you sure this was fully tested and you didn't forget any of the outpu=
ts?
> The first thing the function does is
> =

>         WARN_ON(port =3D=3D PORT_C);
> =

> which means that you should have immediately started seeing warnings on
> any CML platforms with an HDMI output on DDI-C (which is a valid setup).
> What we should be warning on is PORT_A since gen9 platforms like CML
> can't handle HDMI on port A.
Tejas : Warns are coming, but they will not affect result. However I am pla=
nning to remove/update warns in the next patch versions. Also yes we have t=
ested with 4 (A,B,C,D) outputs. I know the fact that CML has E output as we=
ll but I have not added it, should I add that also?. So far RKL (UDIMM) RVP=
 + TGP (with all ports), RKL (SODIMM) RVP + TGP (with all ports), CML (UDIM=
M) RVP + TGP (with A,B,C,D ports), CML (SODIMM) RVP + TGP (with A,B,C,D por=
ts), AIO(Canonical/Wostron, CML CPU(RKL RVP) + TGP PCH), Caribou(Dell board=
, CML CPU(RKL RVP) + TGP PCH), Seal(Dell board, CML CPU(RKL RVP) + TGP PCH)=
, Proghron(Canonical/Wostron, CML CPU(RKL RVP) + TGP PCH) boards are tested=
 and successfully able to enumerate all the ports (including HDMI on every =
board).
> =

> =

> Matt
> =

> > >
> > > Matt
> > >
> > > >  else if (HAS_PCH_MCC(dev_priv))
> > > >  ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
> > > > --
> > > > 2.28.0
> > > >
> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > >
> > > --
> > > Matt Roper
> > > Graphics Software Engineer
> > > VTT-OSGC Platform Enablement
> > > Intel Corporation
> > > (916) 356-2795
> =

> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
