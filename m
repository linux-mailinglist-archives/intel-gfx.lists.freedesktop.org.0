Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B48A3A4E14
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Jun 2021 11:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8C16E0FE;
	Sat, 12 Jun 2021 09:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20D06E0FE
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Jun 2021 09:55:07 +0000 (UTC)
IronPort-SDR: /p1nS56sN8jxG9gErrcsDvZOwNlJyVud9CI9xwQRTT/LuJipfCwRExtsyG2M8SLOIUEwK97nxL
 xTRd2r2WT7gw==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="269505743"
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="269505743"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2021 02:55:05 -0700
IronPort-SDR: of35E8L8YouTmsA0ci5CXsaNyAbAC4RlFwGOtZJXJBYRPfRntAD236We1hIg2/RJYjLxH8RUm3
 RBH0BD9xPSJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,268,1616482800"; d="scan'208";a="486870039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jun 2021 02:55:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sat, 12 Jun 2021 02:55:04 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sat, 12 Jun 2021 02:55:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Sat, 12 Jun 2021 02:55:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Sat, 12 Jun 2021 02:55:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pl5JTgcMfGbbE6O25JNGbmJXeAtkr/IRhFCVgiQ6iL3E2K95biEB6i7ZzgUl+qc0/7CYSlQV8+Df9pQ5Qsi97pRm/eafHTwmc9yWinWym0bPlit5n3N+NHNN/WLsCY/jmvv/TbfE1LZRaEM5U7V7QUqr3SOLP7KTU2PsKQ3CjPUOxetWpKdjKJhhfKMGxvqYSuZUMu9FI6jHIqSkEFJOrKIGaE9+AYvAhlo7njI9RaFYnLyzTS4DzlZlIUP92yhqACIAvcYji/yM7GxGDiJK1LzsoZbEe3sx9XpTKP0FU59srkTxRTBqcWO+rROx9F4IzggUgCbTM2hz1mzd2OBcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zNRYw7VpNFLgQGfY3BHRvtBL2vNYd+wKP+LtqGZro2w=;
 b=ZSsfmXzvc81X/7miKx5Qkp4zKpinQR+XEmwHM//a21b4B5QpxadcExC55oYoOMd1l8axCjypS1PsloTx0W2aFpUBPdCvQmLg7jVLngLoDUEPoZaf8lX7VaqrXjmPVhaWduuLBgL1Rz96+ZC0fX0mYhXDhCaqphLIk1B9N0mKGvOF23859rckCQrDAkH7XhF/zhabX2JApuIJ4yrej5TjoJ42EP29rnAfiH4NoCJMmXoetkMBAscXwzQU13tyLQb8WxWR0W+1gkSDNzh/1pv5pnATbKUbKuOdeojhIrT9SSaXCEpzWsnU4fNyF7f4J6v/svOHB/lNYCAX069NSsx8QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zNRYw7VpNFLgQGfY3BHRvtBL2vNYd+wKP+LtqGZro2w=;
 b=oF5XLhzjFbWFVpUZzfM2GZ4kL5Q9JaombP0glZPHUVGxHGzP5othJJtyKvclfH2yJD7zZuAE8wCouarDY0yFGLQYj0lpWoOmUDjxQgXcz9ZuUff3zKNhdMh5W+6zx3aJMnyItSxee2YVt5gPqUOumamoAc110gJ5QHKlvPqHN7o=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4841.namprd11.prod.outlook.com (2603:10b6:806:113::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Sat, 12 Jun
 2021 09:55:03 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4219.024; Sat, 12 Jun 2021
 09:55:02 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
 slice/subslice
Thread-Index: AQHXXtAqAgN0pZ70V0Ww3VqTXnr1LasPG0aAgAEHGwA=
Date: Sat, 12 Jun 2021 09:55:02 +0000
Message-ID: <SN6PR11MB342111E20D74739A5DE71CA9DF339@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210611143409.827727-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YMOmDyjjhbiIIuZ5@intel.com>
In-Reply-To: <YMOmDyjjhbiIIuZ5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [43.250.158.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 953b0b64-6640-4aa4-92a5-08d92d882619
x-ms-traffictypediagnostic: SA2PR11MB4841:
x-microsoft-antispam-prvs: <SA2PR11MB4841DD87EF0F1CB15906DE95DF339@SA2PR11MB4841.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5bAn5DdS2sfCn7QDDuCJ5d6wCy1lpzkRX3861oTjHeYBzfYJBz8Kyhlm/rntdDVQiU6z+NwbgE6VI29DCdoD0ZZVs0DpdQXXlF2eeXrMcU+tlSyNPYUjOYwt/hk2cGDCwSzl629OrHAifx3iK8CFLBcqQn0yBQbtMWoFGEYgOk2Q9qcKvy5Lex/NIhixrNpUFXGynNypvQ28i36BmotGco7zVaKiaevM1DU/BUax/qV6ocBQUuFJ68lbdZxz0OF6JcYU5aLUgg2BQCYEHZeKRGNHjFtba4lo1nplllFPXYQ/vvclkWIFn2xy+Q4d+C7E5Iitf7RU21ibLOx5mfXPDQKuyptzQLTqqJ8M4pJEtPWjCsd06aQmMulR1cQKb1LJ5VU7pJKUxfJLs3r2OSSvs+aI13jQgM2ljokEYox2nLjC/0c2jYmXD1by1cW4Cms5WGYXtW9xlJ2dMFQU5MRmNsLWtntfGz4/Vfw+q3diDCSv5eqJFYwCwr0W1sRGH/invRLmc5OGMUkBsOqgY0MSWt6kumWoZ0mi/8uG0qemAOFziKpsSkBLDFpK/gSUACtOs7LgyDdmtaAwx8pAkKbf3840kTum645O3BRUihCGPtA06fYZDH26SDFefSQMAfzc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(39860400002)(136003)(346002)(366004)(66946007)(64756008)(86362001)(76116006)(55016002)(9686003)(83380400001)(33656002)(66476007)(71200400001)(316002)(66556008)(66446008)(5660300002)(8936002)(4326008)(7696005)(2906002)(122000001)(52536014)(26005)(66574015)(478600001)(186003)(38100700002)(53546011)(966005)(6916009)(6506007)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?SxR4A4xY9rFk+wqIkEJZhQtogTgDLTC57uPbuKDXUUZNxRDvsrcaRByR/m?=
 =?iso-8859-1?Q?WvQMAwSGCsw75sHrDmE9CgeOau3eN+Rw9B5MX164w4KyNNPGmSrzkCdIbu?=
 =?iso-8859-1?Q?MSjRHUAHLREe8FcjWYbLTV0PHzdtw4sgiPbAtcZybV8w2CxCoL1zzRg16h?=
 =?iso-8859-1?Q?l+MQW2pogM3tfOHuw5itabSgAf0OcLwv6zu87rT4gMYMvO1Ny3T+SriXmZ?=
 =?iso-8859-1?Q?xdzkmFn8cfy3d6xXKeBwnSTfbes+55k5jMvsytePboNirDO9p4U+8v1Vg2?=
 =?iso-8859-1?Q?Wy//H9Mk/aLUq9X3g846F93Khzkf7K1JMHrQYq5FM2oocwOBKXWs6OgbQd?=
 =?iso-8859-1?Q?b0wY4opp4L07zKMOy7OUx261jQEacr37oGFbvFoPBdaPO1bNvmedra4Kco?=
 =?iso-8859-1?Q?nBdx7mFHEgNedggjMS7Sww2xZnp07DuUdHTgCxwPglxYZUnlF/LBw1/+yF?=
 =?iso-8859-1?Q?io76JaEI2m75VogiXDxMSOGa406jhAVvb+UZPOD/uNJBpIQEM2Siok6HE0?=
 =?iso-8859-1?Q?iwWd+xVkC1C047VaIHVqeEF+Tomjkg5IiUjcuF74jRX5WuIYs4vHAnpKnU?=
 =?iso-8859-1?Q?NXU8eP5ANjx83RekMKkiglb04/IB3MBbTOlKWSTy0S9bIC0FNDlt2ss/ue?=
 =?iso-8859-1?Q?gN0xv8EfFFHIhTU1zer/P1DKTZWrG7WXLSugQUgGg9r76Y+1G9OJfCD0Ab?=
 =?iso-8859-1?Q?4hVMmA49SuHv0YqUSSEvVmoHsTm2eyHzSW70hDBx1xNH5ao5EJXKxH7x0L?=
 =?iso-8859-1?Q?Loav4Rr/ehinhMR3/4ibk6DrGybz5Dd5kHzLLlyEK2DUwEoeNO+H/PNBLh?=
 =?iso-8859-1?Q?jHSNpg3sJfpstlpSlnwTVXyG87ARlzV8abqXLRobyBvcnqQn0czQKKA3An?=
 =?iso-8859-1?Q?ZkEnE1d0SiftbuMPVqBGjWfEGhGnJzCeHCQEXnc+EDRDxDiytg3BhnFak3?=
 =?iso-8859-1?Q?v599bqWB9vd1ZNM9ih8Ltj2U/7QoBDMwYcUTjc2ejODjG8BdUJCJet+vtx?=
 =?iso-8859-1?Q?k0WPz4gJLlWtRxfVCTc8dX1gt7hrGBAX/OkeSKDRtuWxJ7ke7uxdW8tHxC?=
 =?iso-8859-1?Q?4eOwkC9pkLGdpDkTikbQdkiUXbArJnHS0QWIOOQoWOuClRoVnlFlT0nOYH?=
 =?iso-8859-1?Q?q7CbF9QSeZcrkfr079B33r6CxhCeHcmfHd7AZTk49IqkYnrdHOZ+ylfCsr?=
 =?iso-8859-1?Q?LeoX2qTCg9qQ0apN01FKxVtRKHJpUZZznadJcPWD/t45J+sO9HuVP2QnuH?=
 =?iso-8859-1?Q?Z1FAMtYtAURn3KqqI8Fig+bw/EjDGnIP2KF8M19llrg/M+UMzhs6pXmo21?=
 =?iso-8859-1?Q?DxbzbQEGtvdtb2I0I6Zx1rJH54MAQxKPpxnqUOSXnc94QBQ=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 953b0b64-6640-4aa4-92a5-08d92d882619
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2021 09:55:02.6848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wXgzMPuEAnXFEsYngFoYIXCRQl3CJae24H2Lf+xeK7Ga0L4vPEjdmTc2hfBaOM6NIC2cYmqQ0YrWfZbdvJbAhHv4RRqSoONumPXwN/4mYfGQSJhfl/g7DRlv3ZTABXG03hKu9wSvAJOAXKPK8Clx/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4841
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
 slice/subslice
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 11 June 2021 23:36
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
> slice/subslice
> =

> On Fri, Jun 11, 2021 at 08:04:09PM +0530, Tejas Upadhyay wrote:
> > w/a on gen11 platforms not working as expected and causing more harm
> > on the RC6 flow. Because of subslice steering disturbance w/a read is
> > failing. By using ffs we can default steering of slice/sublice to
> > minconfig hence w/a will pass and any warns will go away.
> >
> > Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an
> > engine workaround")
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 +++++++++++---
> >  drivers/gpu/drm/i915/intel_pm.c             | 10 +++++++---
> >  2 files changed, 18 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index b62d1e31a645..68b14141088a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -991,13 +991,21 @@ wa_init_mcr(struct drm_i915_private *i915,
> struct i915_wa_list *wal)
> >  		l3_en =3D ~0;
> >  	}
> >
> > -	slice =3D fls(sseu->slice_mask) - 1;
> > -	subslice =3D fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> > +	if (GRAPHICS_VER(i915) =3D=3D 11) {
> > +		slice =3D ffs(sseu->slice_mask) - 1;
> > +		subslice =3D ffs(l3_en & intel_sseu_get_subslices(sseu, slice));
> > +	} else {
> > +		slice =3D fls(sseu->slice_mask) - 1;
> > +		subslice =3D fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> > +	}
> >  	if (!subslice) {
> >  		drm_warn(&i915->drm,
> >  			 "No common index found between subslice mask %x
> and L3 bank mask %x!\n",
> >  			 intel_sseu_get_subslices(sseu, slice), l3_en);
> > -		subslice =3D fls(l3_en);
> > +		if (GRAPHICS_VER(i915) =3D=3D 11)
> > +			subslice =3D ffs(l3_en);
> > +		else
> > +			subslice =3D fls(l3_en);
> >  		drm_WARN_ON(&i915->drm, !subslice);
> >  	}
> >  	subslice--;
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > b/drivers/gpu/drm/i915/intel_pm.c index 45fefa0ed160..d1352ec3546a
> > 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4049,9 +4049,13 @@ skl_ddb_entry_for_slices(struct
> drm_i915_private *dev_priv, u8 slice_mask,
> >  		ddb->end =3D 0;
> >  		return;
> >  	}
> > -
> > -	ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> > -	ddb->end =3D fls(slice_mask) * slice_size;
> > +	if (GRAPHICS_VER(dev_priv) =3D=3D 11) {
> > +		ddb->start =3D (fls(slice_mask) - 1) * slice_size;
> > +		ddb->end =3D ffs(slice_mask) * slice_size;
> > +	} else {
> > +		ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> > +		ddb->end =3D fls(slice_mask) * slice_size;
> > +	}
> =

> This code has nothing to do with GT slices.

Without this change we are observing "gem_exec_suspend (basic-s0) Starting =
subtest: basic-S0" test hangs and crash eventually. Thus change identified =
and added. Would you please help reviewing?

Also I am seeing ICL igt@kms_frontbuffer_tracking@fbc-suspend is seeing wor=
karound(0x9524) lost warning after this patch while EHL and JSL are working=
 fine. does someone has insight why that should be
 the case? =


Thanks,
Tejas
> =

> >
> >  	WARN_ON(ddb->start >=3D ddb->end);
> >  	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->dbuf.size);
> > --
> > 2.31.1
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
