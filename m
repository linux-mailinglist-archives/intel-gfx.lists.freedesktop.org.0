Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4B1318490
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 06:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9336E441;
	Thu, 11 Feb 2021 05:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 653BD6E441
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 05:22:20 +0000 (UTC)
IronPort-SDR: /DGZeUqRuZzsV7N/J2Z1AeIqHCN9EP3xc5sjD4oJiynIVRwveoN13xfFIfmZu00MsHkSB3y0ad
 /VsTATWZIGPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="181420940"
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="181420940"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 21:22:19 -0800
IronPort-SDR: MVYmIz+DGoiIb85tnoCphdSobJq1WSYM5/rfvy186IpPjPLsihR7EYcDIKEm1iOh2fl4NqLX1V
 kpOzUumdTo3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,169,1610438400"; d="scan'208";a="420779588"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2021 21:22:19 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 10 Feb 2021 21:22:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 10 Feb 2021 21:22:18 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 10 Feb 2021 21:22:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gl/q10INmyUYsJR2KAMSn46AttUU3+wxWuh+Pxsfi+2dKpotzNW6RxNuaGramSRkjyEn6098Nk3/HzbJz1rgyTARn2omSnO2jp+NquLx2sNwCoeSLO82ReKqlp3gMOhckopz3gJKFg8M+0i+pMziLIC9VEq3u2vE7owvtzfRul5xYisbaT2S5KIWksAMuRsvNlqrLvrADRelYW4KvJz/ketOM5pdva6zq46gCKvx3mp9baUnrP4GE3tf1o+LONT/1aADm5zDmIEZoeZ8OYKQfqWUDcuZsFmt4bTvXeQcRFAnAFrxgfU37bUj3W55ZHHYcqa8beuptVMIsOBMuoNXPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znWdHUFNxCdlExbI+kKy8DQk5mNWt1FFMPaMkZFrfYA=;
 b=Sk+E1iE5ikW/iXohtKsd/pYB0Oqeo3D/cbMq+jFJu5eGZGhjxNoiApzgwp+XoVZub+g19RCGXASO91uJoR3DyHiIA31wtBNL8JLAg44a0JSRHpzTfNYfToSdirJQ+sK5w8EAdI776o4rAhergxysspjQ0athppiP1iZ6ddL4M0LhskGwPbTY+vuzY3V4QXkbc3uLAYp7FDkka/leMUyKXIB7eDiY7LFTEm3RjP7YfBs8RTw+VnXij5eN4I0dRAsykU/6uyHCsw9EnLn886b5jJo+YnJ9L8zAWV9JCfcLPwKgW7fWOp3OEYJ41KHVoHnFsDfq+QiW6HIjpMpTS26NKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=znWdHUFNxCdlExbI+kKy8DQk5mNWt1FFMPaMkZFrfYA=;
 b=kop7ty9xk+WAZLajIyABHIzovl4OtgJ2bsmT8YiTdvkAzxWnzHkux7lJnPtfWxdesChfAY17S1zxHVbAhxaK2G5kEdpqZhu/D8P4Am/jWDrA+Zv9sFoF/1pkN8l3SbMozMl7K8Mwi367LDH1t0Hu7jdF77jWBWZvCrABQ7I4LaY=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3400.namprd11.prod.outlook.com (2603:10b6:a03:1a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Thu, 11 Feb
 2021 05:22:05 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::1cad:65dc:41f2:78bd%6]) with mapi id 15.20.3846.029; Thu, 11 Feb 2021
 05:22:05 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/vbt: update DP max link rate table
Thread-Index: AQHW+KqE5Kia5OBuEku8uLnVpdlKpKpKCQ2AgAQ9rlCAA2IGAIAAyQyA
Date: Thu, 11 Feb 2021 05:22:05 +0000
Message-ID: <BY5PR11MB430732026C34DCB710E62A8AA38C9@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <YB2p+Xa8PkFQT1L8@intel.com>
 <BY5PR11MB4307E25E1688D66A7B6028BBA38F9@BY5PR11MB4307.namprd11.prod.outlook.com>
 <YCQPLmUTGxjXFybM@intel.com>
In-Reply-To: <YCQPLmUTGxjXFybM@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.0.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 91b7b63a-8d53-42cf-6d94-08d8ce4cf8bb
x-ms-traffictypediagnostic: BYAPR11MB3400:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3400C63E564ECC4BF4B9290EA38C9@BYAPR11MB3400.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6zRelHZ8JVnkO4FF6q7EYSTJW0jgQNM5YpS6+NLbNqM3DW/Msh3EWr/RTYJOE8+HuCJdQ4mFxmYt2/EUIyKlLgWEok5XdGTtIKSX/O5wOMx9uXOrVVUJzK03zjnWA+5Ro/VXPz88+zKl0Q5QqC9o1dQkIPwUBFjBzmG8KPYYUCNRKJEbX0AdAALc3IvvJMJCBgBtqC8UuD6rt1dKXxbyeQwJOLDAxKTHeFXrdQ2OzbDT59NNO9m9s2AoFOgZfk4r7RDce8Gy9EcF361RdAnjfh1lw8Zc6ZG7wvGS2YeFa67605MlHzF22KhXGuFo3Ak0uZZZNBZFg2ihG3FmLTTX8lW7H7cxNGHmgJLVwChvFz1a74FPfsDv/9n/CxNR7oxwBTMFI69bWdhl6rNfyKOQLidQXCovl2+KuQl0bW4gl312BtDz4JrSzm3N8Uc+EGhjG3H57O21y7zCbbqOIldpt6gJgX+hTo+sosmpQkSFQalEPsxkKNgxjx3hkWrmVtxcii4H+goHiEMKlIHZFv/8AupmGAF+/oHygZTlKVrzxGLeCGdQDIcJHGbJsdPbAoWC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(346002)(136003)(39860400002)(366004)(376002)(7696005)(5660300002)(26005)(86362001)(478600001)(186003)(966005)(9686003)(66946007)(8936002)(55016002)(316002)(15650500001)(8796002)(6506007)(52536014)(53546011)(71200400001)(8676002)(2906002)(4326008)(66574015)(66446008)(64756008)(66556008)(54906003)(66476007)(33656002)(76116006)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?twXvcaAzc76nK6yCN2woTJTpvDjFxBQkhgmltKIpmJy5sidrHf7ICEy/Ot?=
 =?iso-8859-1?Q?0iyDKWZVGUdHGUwFUNMTiylr+S2Y6kCT2NeD3p+wOfZNkOMmDuJn22zpJI?=
 =?iso-8859-1?Q?PtHm9gRgPwJvFWWhfPy5mTLbTNi6hNlXdfuFZ8fCMPd72TQRDqC/V2S4G1?=
 =?iso-8859-1?Q?qPb37mHmXShojlF+9Lm8NHm4Ig2JDXxTSjR1krvrNoLkDSguhWp56te814?=
 =?iso-8859-1?Q?QN80QYE6IR0gD3J5+nVJMUJvWGu7v7+Cwmjl9+0x15F6tNRIEt2QWkuv1W?=
 =?iso-8859-1?Q?FEYSahbJIqurt2wLEBhMxMY4/PxBdwZmOMpG9JcHsde7sxZgscHrMtQvhQ?=
 =?iso-8859-1?Q?JN/EIv2RGdZ1ixQ4/X7hrREgeu/BYrEsWJO5xtAfCkC1oS/npHc5VeAZqw?=
 =?iso-8859-1?Q?BTIH3crtFalPLBSFOD/y2lDyRVyySMn5hrX3Js9JRUnRsyr3ru43aJ7jPI?=
 =?iso-8859-1?Q?m1gS2/SUvG2xuJ9X3OGON0glPphwhD4SFvheOTbU1ho001ia++Gv/jxOLT?=
 =?iso-8859-1?Q?ezBNHOz312E9mbNJ89FNuCuU8qVEHevj1whkNX+1snOEx0TRWZwLYnc9u6?=
 =?iso-8859-1?Q?JEUsRJ5f4F+2uJRQNw6cntCuhaWy1Uaemxyu6SaTnEH+5WCnQm/38yQCP+?=
 =?iso-8859-1?Q?ql9JiUvF91PM6Kxd3gFIL0g10kFxwczXNFkuJNDJgnNZC5MWzwE8aWbneV?=
 =?iso-8859-1?Q?Yys9iiDvx3hGjbAbFeXuBBqZWAcfQ7I4WOBLRIZbDjeIVxEpnJsJdOKqvF?=
 =?iso-8859-1?Q?6CbZXcAeLZNyuFE5FdOzGWvHd+J5w5DNDkJfl3QSSQzQrreXxhI7d0tD+Y?=
 =?iso-8859-1?Q?UeqfuVfVMu+Zb+sa2p5+xui8S/Xv4dOUFfvDsQ7aoSQ4+ZJ1kUmHdQ6wjF?=
 =?iso-8859-1?Q?w5XiUtEXtdi+XO+Mb2Gc3Y/VDwpmmFsylqy9qYuAW/g4TtEAKAf+ver59f?=
 =?iso-8859-1?Q?B0Gu+gU8iTL4j6QtOBhXT2mdYAnBjQMjeUzwq9e5OGM+SpNuouw8FPr2u4?=
 =?iso-8859-1?Q?h8aSM82A0eeGdIbgaTzFy/1m72OzxS1GbCsqjuCMc3RpRROZO7cER8VMGA?=
 =?iso-8859-1?Q?USfVBFTfp1GvBhaP4vC8zCP6C1HFgCs9W19WPqTL+7/ScrhzAti7WN/SKz?=
 =?iso-8859-1?Q?OGcPCTf0jP4PR7F71cHapIkssyz9wxQgLUmkAm9pSUkYMi1sgNpHJlu46t?=
 =?iso-8859-1?Q?67r2vfGwG/vuht2TvEJlpZiIFUXUTUMYvpqLeIth7hMHhhz8Yy5Z1gJfny?=
 =?iso-8859-1?Q?/ngK4j59mSfr5WLiEEvQcWbM8bznZiE/61ocMMwbRlysfCHlUY8GJnECSm?=
 =?iso-8859-1?Q?5SWPBle+J8GYDXIY6HAiLTh62Ym2f4OwSLA9xCRZ5F4QJfU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91b7b63a-8d53-42cf-6d94-08d8ce4cf8bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2021 05:22:05.6865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: By1sX+3NPUbXbgv5ZFemTzCjYbALCIYrXwUragtCZo1MCXtE70f4J3gUGCqlmIn/IyofZ7tOfxoxaNNLGXFZfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3400
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: update DP max link rate table
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
Reply-To: "20210201150228.10001-1-shawn.c.lee@intel.com"
 <20210201150228.10001-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Wed, Feb 10, 2021 at 04:51 p.m, Ville Syrj=E4l=E4 wrote:
>On Mon, Feb 08, 2021 at 01:31:57PM +0000, Lee, Shawn C wrote:
>> On Fri, Feb 05, 2021, at 8:26 p.m, Ville Syrj=E4l=E4 wrote:
>> >On Mon, Feb 01, 2021 at 11:02:28PM +0800, Lee Shawn C wrote:
>> >> According to Bspec #20124, max link rate table for DP was updated =

>> >> at BDB version 230. Max link rate can support upto UHBR.
>> >> =

>> >> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3 =

>> >> were changed. For backward compatibility. If BDB version was from =

>> >> 216 to 229. Driver have to follow original rule to configure DP max =

>> >> link rate value from VBT.
>> >> =

>> >> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
>> >> Cc: Imre Deak <imre.deak@intel.com>
>> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> >> Cc: William Tseng <william.tseng@intel.com>
>> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_bios.c     | 24 +++++++++++++++++=
+-
>> >>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 +++++++----
>> >>  2 files changed, 32 insertions(+), 6 deletions(-)
>> >> =

>> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> index 04337ac6f8c4..be1f732e6550 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> @@ -1876,7 +1876,15 @@ static void parse_ddi_port(struct drm_i915_pri=
vate *dev_priv,
>> >>  	/* DP max link rate for CNL+ */
>> >>  	if (bdb_version >=3D 216) {
>> >>  		switch (child->dp_max_link_rate) {
>> >> -		default:
>> >> +		case VBT_DP_MAX_LINK_RATE_UHBR20:
>> >> +			info->dp_max_link_rate =3D 2000000;
>> >> +			break;
>> >> +		case VBT_DP_MAX_LINK_RATE_UHBR13P5:
>> >> +			info->dp_max_link_rate =3D 1350000;
>> >> +			break;
>> >> +		case VBT_DP_MAX_LINK_RATE_UHBR10:
>> >> +			info->dp_max_link_rate =3D 1000000;
>> >> +			break;
>> >>  		case VBT_DP_MAX_LINK_RATE_HBR3:
>> >>  			info->dp_max_link_rate =3D 810000;
>> >>  			break;
>> >> @@ -1889,7 +1897,21 @@ static void parse_ddi_port(struct drm_i915_pri=
vate *dev_priv,
>> >>  		case VBT_DP_MAX_LINK_RATE_LBR:
>> >>  			info->dp_max_link_rate =3D 162000;
>> >>  			break;
>> >> +		case VBT_DP_MAX_LINK_RATE_DEFAULT:
>> >> +		default:
>> >> +			info->dp_max_link_rate =3D 0;
>> >> +			break;
>> >> +		}
>> >> +
>> >> +		if (bdb_version < 230) {
>> >> +			if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_DEFAULT)
>> >> +				info->dp_max_link_rate =3D 810000;
>> >> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_LBR)
>> >> +				info->dp_max_link_rate =3D 540000;
>> >> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_HBR2)
>> >> +				info->dp_max_link_rate =3D 162000;
>> >>  		}
>> >
>> >I would split this into two separate functions, one does the new mappin=
g, the other the old mapping. =

>> >
>> =

>> I will split this into two separate functions in patch v2.
>
>Actually looking through the VBT history this seems to have been
>retroactively changed for already rev 216+ to follow the new
>definitions. And naturally no actual explanation given. So it's
>the same old VBT=3D=3Dsnafu as always.
>
>I guess the real question is whether any machines migth have shipped
>that depened on the old defitions? Unless someone manages to
>find that out I think we might just have to change this to follow
>only the new style and hope we don't regress a lot of machines.
>

Agree that we should just have the change follow new definition.
But as you mentioned, we are not sure any machines have shipped
with the old definition. :(

In my opinion, we should follow the new style. If we got bug report,
then we can consider to add some codes for backward compatible.

>I was a bit hopeful that this might have fixed [1], but looks
>like that just has this set to 0 which doesn't give us the desired
>2.7Gbps with either the old or new definition :(
>
>[1] https://gitlab.freedesktop.org/drm/intel/-/issues/3034
>

Just like what you said. This change should not be able to give 2.7GHz
on eDP port to help on this issue.

This might not be a good idea. But how about to add this OUI into
quirk list? Then driver can give bandwidth limitation for particular panel.

[    2.422930] [drm:drm_dp_read_desc [drm_kms_helper]] AUX A/DDI A/PHY A: D=
P sink: OUI 38-ec-11 dev-ID  HW-rev 0.0 SW-rev 0.0 quirks 0x0000

Best regards,
Shawn

>--
>Ville Syrj=E4l=E4
>Intel
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
