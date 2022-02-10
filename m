Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A224B0527
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 06:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F6A10E513;
	Thu, 10 Feb 2022 05:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9CCA10E513
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 05:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644471376; x=1676007376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f1oDvPPj4FN6WkhHT6xxPBaY3pdAjRmY3TejPsJexNE=;
 b=RRQGa3jFbSfmoywbXkYmav/ey9/D7/MGuDFEvBnHYRnIhoL6LcPgZrfE
 Z/LBYYyRxAI+ukh5PD9y9PRVF179eC61CL06t8qUb7MQsD2zuOMuAuzAw
 568upj6euQ8OXIYFIHU3qCcj85E/VvKIAGoNK9QCagF1XB48yy+BvEN+1
 gzJWmB0cMdpjMKa97P1ozJSNDIOY/LKXb3/NfKMMNStb/QhRPe/g30+I0
 RIq5Ji0tzO/lgLQThx06rsY9Qza6Z1kEtBWgIp1GR5rl5euk2oA8X5x0k
 fNH8vK4Jnlc7Ezm4U2b6vv1ZH+pTWAlbGqqiaFXhTjAfeIK5YKFN3V+zr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="232978726"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="232978726"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 21:36:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="629566960"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2022 21:36:09 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 21:36:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 9 Feb 2022 21:36:09 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 9 Feb 2022 21:36:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YFOv377QPobZoklPI7xF85DTe1uD1qjwk83jd2FHEur9hpStYyMgj6JZebC7AdH79cOo8G2lzHHgAYmqugHcomZ+ML3L7WpifRbtcqVqkCaM0fxzCqh2qqmS8/Qb51v4XFmdVCUpHqFFIiqSNujqLyg/h0oVUFfLCUPvN4rptgs4Y/U2q/o0VAdP8yGU4IchJMBIuSEB7nZ4WoHcj8fNdelPc2slxtetbMx0oHVaULgAfjH0bD+Y+ybjpA/PLRAW4+qP/xnfMdyBLpsk6LSHfHmB58UqFxcLuKt5y68zHxO08v20ByBq27zGsZYD3WHpTNM0j/8/LCWB91pDu2bm+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4yLePOnDxbcoOekwxWPsq6rGlNSDFtcbiJH6+FURWGY=;
 b=d9OLxNZ/IOR+ek8NtJAuBwzOf5fYihmmBuImKaoFkNr7L/q5P4Vz1gVeXegxKmuAntD50RHO88+tSDLX0cc8cMesg0eQcX4uPa7dNEk+3l/lN/dsZ+mRRJ+gOYCJCOyIxeESo4DXDmpC7cCvIeiC1EP//9MvWHtuKLyF2Jje73CI8gaLyUNMae+U3PAcsiZ74Ay4W/91+WlCekQj/h9CWaU76Ew1B/r/vHygl38aVYTYdyegk2Zo4wiUBxUL8lW14NuXIX37vuEvd0uL4N6oaseN1nPZ/JT+yqTbd2fdCJbu5sT6+vHSbMxMUTrFg/smKwJV9xxJdShqnvixzP3IDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by BN0PR11MB5744.namprd11.prod.outlook.com (2603:10b6:408:166::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Thu, 10 Feb
 2022 05:36:07 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::2442:3e8e:58af:39ea]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::2442:3e8e:58af:39ea%6]) with mapi id 15.20.4975.011; Thu, 10 Feb 2022
 05:36:06 +0000
From: "Liu, Chuansheng" <chuansheng.liu@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
Thread-Index: AQHYHj7rbwTxu4Kemkq/ajAoX/7QNKyMQkxg
Date: Thu, 10 Feb 2022 05:36:06 +0000
Message-ID: <BL1PR11MB5445423478E2755E07D42151972F9@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20220210050501.87795-1-chuansheng.liu@intel.com>
 <YgSiQ9cnhGDSteBi@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <YgSiQ9cnhGDSteBi@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd659144-99f3-4654-1c7f-08d9ec573c6c
x-ms-traffictypediagnostic: BN0PR11MB5744:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN0PR11MB5744B750241395E7CC11E661972F9@BN0PR11MB5744.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FziDG7CTXuXHUMlvuVB5+GZvHyeTiquhm8O1yHdc3LLAPmRaRwq3T0VtmeM4ddtugTV0r1CuQeB6HNOBViw93yMckvSyTHCpQzsAqYf/qxDrSrEvnCT4IdEONqkaHnU0GxY5Fy7BVodwvwh3p7FwpwKWeU83bbEKw7SQCXlUmtMldFJPd7leQWnNv08Q0O9A9kmIWUCI2/j76YAd3l58f7IgwuCdZI6gpzzmRfREREUo2KSj3ouhH7fGw0fD/yx6emniFoKjc6ypjiLRQGvl/taSYbqKntIgiPUas8A2NLYD3YZpoir3YSW3uo+rlCih1ueeV2kQnPOOcmMpcxbt2bQ8f8qcZLqtam3lRhUix3YCYihVc+cShA6xSvUoJ3I5DTPzrmfZqsMde7iYymHeDqAvgx8LdELjr503UADSEud1DYz6QR5fGmN9o5boxCf7UVlOYWFGsCnI8xByh5xcgMfk4uVw1QIKGrFWndd6iCXi4QXkCB8kD7iBmw3U+AimH3S0kjj/yIwUz60H5thzLiU0K02VgMmtooRj4lpTZXbUIPTZZ4/sOrOzcwdcZNajy1db95sWbp5yhxeFAPxeS5hu/hJNMwvnkFfzcC1FY0hGiIF328vB4xO21/lUBDxTSN/wb/afMO2dxE7ACc7TOfDHe8xQ6fM2jd5Tzj4pJ0fi3UkHX4sdofJ8tPL3OZ2IRFkYi12ZyE2kPG2LhOfyiA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(26005)(186003)(33656002)(8676002)(64756008)(6862004)(4326008)(66946007)(66446008)(66476007)(66556008)(55016003)(86362001)(71200400001)(54906003)(6636002)(38070700005)(76116006)(508600001)(122000001)(82960400001)(9686003)(53546011)(316002)(7696005)(38100700002)(6506007)(40140700001)(2906002)(83380400001)(52536014)(8936002)(5660300002)(15650500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yphVfIAxmoYZ7Nvkn3o1VPLVh2qcCWfTaEKtw5jaoUdqAybgpYKF3FQmgrpn?=
 =?us-ascii?Q?yMp2JFrtfRGGaVMY1MMKqNKcLzYe6Q6MydR5Zp4OHItk0CwUj2Bs8avBq5t/?=
 =?us-ascii?Q?FywWetVRxebknVqu0Zr09CGiRclN3dssKAzVLwzIrGDoKlWv5ZA0qIGiyUIk?=
 =?us-ascii?Q?Y6MA5bHqEvd9Z1cW7one3MhEJVA8B6znypLXYeIfrAesXebphhIFrgziEJ7h?=
 =?us-ascii?Q?fFhrVFrvxwkGDjZjoh0GU4+lgnDblkZdeveKah3Jg3CP9E8Dw+AM0rfRb/4X?=
 =?us-ascii?Q?d4H7EirECd84O4D4BrOiYSMsxU8X2lhZ4ZNJWGdG3/O94Ebyp5TztGYDcdX3?=
 =?us-ascii?Q?TXOK0+MarNtjji1xh+/rLJfewiATg4dj8sShLOM/BY6jVMR7yzCoSmgreqnR?=
 =?us-ascii?Q?1nqdW93dCwD+Fz+knXGyzssb1wZgOvfJ/YPXBIAFBFv+XvmOjLVKuwv5jCdG?=
 =?us-ascii?Q?6KmgTd+CqGSofYzW9yZVzszXTTTHaRlZtZEYRrHSAJ8OvnHSHghfW5jdg9l7?=
 =?us-ascii?Q?LfZ6rdbZMQ4s5aqHcnWugE7JGu7eKDcX8KhH8GTzz97jkowC0ldqlxB6c27y?=
 =?us-ascii?Q?oqi23lsMd7asm0C81q+xtZIRm3i2HWo8pjFykiQ4paMzWu27lq28gfYSD1oA?=
 =?us-ascii?Q?3iOk49aws8gDoygCYWTlaX+wQQx68Qug7eHbB2FLYf9U9tdX6WWZLPQfQ6Mz?=
 =?us-ascii?Q?iVtdmoQ6zSS1Fe1WJewpWtNLwzJ6E75oXY4qpsL6KWgD5ZshBJ+D3CBuziiW?=
 =?us-ascii?Q?ipDIzV+UIvHTaChHd5+teqlamhxAd3eAcuUEO8cIzc41ruWAwQ0lBY0LS/lp?=
 =?us-ascii?Q?4CtyOk1QLDo8+EHVdiCSRsdkM542oDSXZKK2rYnw6nk5lrpGM/Vtwj9Ra8kR?=
 =?us-ascii?Q?L08mZ/mbKGK+2ZkfJRZJkBf0NcrM3foFNIGa0MgGdibbv8nSY5WU+kGl838X?=
 =?us-ascii?Q?Yb6MkwQCjkFN7fNC95ma7elJFlwhJlCYf5/VrbNdQVNIS+paMEDCUjW4BnoS?=
 =?us-ascii?Q?heNNj5MWuYWbuTQpEnb7//fzi4OnvqEhBBbjaVjgmIgEkwpwpwa0nYEaZRUg?=
 =?us-ascii?Q?eVLB6a2VFTmRMU3LuWtfaP1loTOppROGKhMNlEtNYBc1GxmYMUWWFkBGDVRL?=
 =?us-ascii?Q?MHq3FRpY3PUw6VucR2TvLYAijptW0bFDUfUuzKO9VTvxcMwL8+xn/02cJP6A?=
 =?us-ascii?Q?j+m2hC7/Sk3bO8VurASauyksQRgfafZOHOSK934Qx+o28CSkKl3Lpeo6nyeS?=
 =?us-ascii?Q?niPxDsPjkU6AVbMNDbCzqtrZHCIDLIkkZMz6rbRK6dI9sBQAdInzZRUIhTz0?=
 =?us-ascii?Q?/y4ZtSNLa9fWZgxTnb0kE8x/snkNmv4ok2cyzFipaZS5wvqirsLA12ilnvHJ?=
 =?us-ascii?Q?3g3exoqFF0xya73zC9JvxP+4U6hpIsKddsYmttNYVtSYUQ9OlvyQ1Qpt7QOA?=
 =?us-ascii?Q?V+gz3Wh16R+NxdXxAuITUpQ6M5J2J9Yh8veGqABN5BNbPBHzaVpPUUyKbCdG?=
 =?us-ascii?Q?sXSJAOzG9oLfGQW8El6P593sljA6uf2QSjapPb/B/ZiIQUdr7Z59Liz0Ej6q?=
 =?us-ascii?Q?x15OCpzUiGnZCxORnkQjIErEyp/8rcf7dbRDnGWC6xcVT/omLwJAR6nLTHEv?=
 =?us-ascii?Q?gxip7AUuT3fQc4fl63uWRRQOXsfwOGoBkRIba+TiuYWxfCDisxzBpEJOZAdV?=
 =?us-ascii?Q?lwCmkQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd659144-99f3-4654-1c7f-08d9ec573c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2022 05:36:06.8726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kvICI2sLUZGqblP0MmXM0MTdK9lr+LuNbSNakpmjHv9N4ov5Czv3I2l0rxhzZX28NDc430PH/jP6M0mUvoHxY8pQUF/Tn1Vg0zDxsDo1Rfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5744
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
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
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, February 10, 2022 1:28 PM
> To: Liu, Chuansheng <chuansheng.liu@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: Re: [PATCH] drm/i915/dg1: Update DMC_DEBUG3 register
>=20
> On Thu, Feb 10, 2022 at 01:05:01PM +0800, Chuansheng Liu wrote:
> > Current DMC_DEBUG3(_MMIO(0x101090)) address is for TGL,
> > it is not wrong for DG1. Just like commit 5bcc95ca382e
> > ("drm/i915/dg1: Update DMC_DEBUG register"), correct
> > this issue for DG1 platform to avoid wrong register
> > being read.
> >
> > BSpec: 49788
> >
> > Signed-off-by: Chuansheng Liu <chuansheng.liu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++--
> >  drivers/gpu/drm/i915/i915_reg.h                      | 3 ++-
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index f4de004d470f..f6c4ad8fce19 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -474,8 +474,8 @@ static int i915_dmc_info(struct seq_file *m, void
> *unused)
> >  		 * reg for DC3CO debugging and validation,
> >  		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO
> counter.
> >  		 */
> > -		seq_printf(m, "DC3CO count: %d\n",
> > -			   intel_de_read(dev_priv, DMC_DEBUG3));
> > +		seq_printf(m, "DC3CO count: %d\n", intel_de_read(dev_priv,
> IS_DGFX(dev_priv) ?
> > +					DG1_DMC_DEBUG3 :
> TGL_DMC_DEBUG3));
>=20
> It looks like some future igpu platforms will likely also use this new
Exactly, at that time, the condition check IS_DGFX() should be refined
for DMC_DEBUGx registers, so far keep it as so.

> register offset, but those are a bit down the road; we can cross that
> bridge when we get to it.  This change looks correct for now.
>=20
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Thanks Matt for quick review.

>=20
> >  	} else {
> >  		dc5_reg =3D IS_BROXTON(dev_priv) ?
> BXT_DMC_DC3_DC5_COUNT :
> >  						 SKL_DMC_DC3_DC5_COUNT;
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> > index 87c92314ee26..9c215a6df659 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -5632,7 +5632,8 @@
> >  #define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
> >  #define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
> >
> > -#define DMC_DEBUG3		_MMIO(0x101090)
> > +#define TGL_DMC_DEBUG3		_MMIO(0x101090)
> > +#define DG1_DMC_DEBUG3		_MMIO(0x13415c)
> >
> >  /* Display Internal Timeout Register */
> >  #define RM_TIMEOUT		_MMIO(0x42060)
> > --
> > 2.25.0.rc2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
