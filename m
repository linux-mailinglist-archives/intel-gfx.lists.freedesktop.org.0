Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53455580310
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 18:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48D111B8EB;
	Mon, 25 Jul 2022 16:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4A1A11B8EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 16:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658767571; x=1690303571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ENWe2+6K+w8rId1ameUX2BCy6Npb5OupwEaHFPxXctM=;
 b=cD4MXYr+TRoALas+3Srl0k8wFFbGFs9E8IzauZ3JPr0lBX5yLS4SoViZ
 MfQXdlU4rcSkrFVNrfN3RbosyyQKc1c88luN4eUfUo6uHUe6P5Ss7AJp2
 AxKccvwQyiuMqfrn8J8XBCPfAbA89neRohBAzRYZG+W7irL5IjcG07WLm
 Y2qq5KeH0ejMqJ0cA0Pk8FP4PMROOMyAYCECGVl2h4MVtNKfsz7dwY+U2
 lhvwN3OKGDSic+B4FRNJLLiXMBJ7MiKgZ5lYirQnpGsp2kfyELm5eIHT/
 hY8LL7CUhygrj1NZpu2d3ZCv5aFUApib36UBz/G5GUNd4dc5w6d7Kq3vy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="288929668"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="288929668"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 09:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="741896592"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2022 09:45:59 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 09:45:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 09:45:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 09:45:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 25 Jul 2022 09:45:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MDxf5NJli7n8kHgzxLyIMeZhiIoQXsmG8936i1Wch8MWGV+ep9vhvZDxWPyfU5vHSb8/MYJB6JEfZ5P5lv9APYRnUnVSL+aKkHzEQVCH/UJXtXadRZPJ2lAPdHx9NlgUJRDsj4sJen03qO3CFYFKQR9+4p0u5lgEUarB02TvUIACqTtIWlLXg/4ZP+ZvPn5UuP1Ouoth0xL2XggKKZ4tGy82ae9f9Vvoj6Wrdan3XDJ1pRWIGnJoX1AYdmK3BqKBkz2kwl4TjBGKgQLZb1VxGt9tnAmdlky7AsV8QZL7cnozRo1Ao8JXV0HwZ+jo4qaxA6fbe5VLXCF1/QocHkRdOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmK8TN3a3TXdD9ehy5FoX6rPR6l/gw2HN6t5DCp2VOg=;
 b=PhRqkc/iI3ovuzjmHBNnxjV3ukuCjQA9TVFy8gG2AwSMOBDkkS/NmdgWZOpI3omPryigCiK8z+2OGAhaMD2z9Vrj62NL2d/Wx+iKqg3xH9jm1e03CU5V/zt/dO8zHOOuvqe2P79MFxv8ODxCr1cra/O+cYK5R2RxWxai4qZbG61w1yjQxn229CLH/pwGPRAOFI8WnGCyMgRKvXcTctCvyxuLKnnI5SLvF1olYX6LSn31iZ/Gk9aRgDUSt7x2bjhMCwFh5Odl0mMIgBPrAMvNsX/KR4GeKMvbuTt1DCr56qcQpcxVKQeLaoaMgS2s4olSENt/j2H0T4dUMSfShb2bGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DM6PR11MB3097.namprd11.prod.outlook.com
 (2603:10b6:5:6b::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.20; Mon, 25 Jul
 2022 16:45:57 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::d5ef:be62:3e97:ba64]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::d5ef:be62:3e97:ba64%11]) with mapi id 15.20.5458.024; Mon, 25 Jul
 2022 16:45:57 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
Thread-Index: AQHYnT8VRjXX7poehkabjrPgzK55kq2JTFCAgAYFCGA=
Date: Mon, 25 Jul 2022 16:45:57 +0000
Message-ID: <CY4PR1101MB21663B370857C045FB2CCF88F8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220721201754.534870-1-anusha.srivatsa@intel.com>
 <Ytm750lt72OSCuKt@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <Ytm750lt72OSCuKt@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc50899f-3d95-4e0a-c620-08da6e5d25c7
x-ms-traffictypediagnostic: DM6PR11MB3097:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pTDJ/PAVIpGzaWhwliuH73NZJuKxXY2+fRMyOVKPbPEn2+hBXYhPIgiFBw0OkZuHqGzlHHRMQCHyhWQ4eNgKxd0+Mgw7Z4teZMKIbQ9KmMr7zqpMvZSe+rYCCtuXfsLZm0Y2jOQhXCn4i0ixKBIXvl6a0U0c58biwElEudv/CK4hKo2J1q3axt9onqDL662yQhPOBsyXoFdqFXHc8Abpo1Gawx76YMeCsiv4xrOqnUaC71/S+wbGXmeGWUKFmjzRDY2BDKAD6rC435rsigr92NCJ5GxlIqm0CETZKGFhy2vHrtWGtSqG/TAkWpzHprdP4Yi1W5Sah8bSRbuIkFjssk6dsy0VR5vZ6h1zLDm6dBepjD0YddRTDZJA12XbinmjpxJsb6bOmITAYydvSDBoz3sINs4VoyaOhr+4Fn4au1wYIFNW4i7se6L2tY2K2PkVlRDtQW2C4m0u3hn1JD5aPBU+Rz79u0TFLc1ezdrkYta1uBJ4a+Uz86VhXwJZ+1jLGra1sRNCvu2NX5OgVg765gqZr+UnWzqMQjFgDAUD0/2AMwujAksniDuw4238TkV7uZ5lVZNEyRMjlYy3pgVK9JwDwnEQXPJzgd4sVN3Cfk39JkYBzZDOCEGvswqC8GRvrYKcs99M0FmEmQm1zsU5BAZ9Bz3Kc7RN2zYZyUN9Djs2gbXX0/v7enzriKwcTKvaHsY/FdLMBwzOJSflI1pieXk+a91ftFeGJErWkuTG4GQIff6Nixzhiq5K2YEDUZh2Nwl5qkltaS2xsgnYXNMA0lMKM2Zplyth26ZY/i69gjdb51kw69o3n7hBPiq4PeAa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(346002)(366004)(396003)(6506007)(7696005)(53546011)(55016003)(2906002)(82960400001)(6636002)(186003)(316002)(38100700002)(41300700001)(122000001)(26005)(9686003)(83380400001)(76116006)(66476007)(66556008)(66946007)(66446008)(64756008)(8676002)(38070700005)(4326008)(52536014)(5660300002)(478600001)(71200400001)(86362001)(107886003)(54906003)(6862004)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0bsKEVOLDahAi9Pd1WvN/+dfN918zsMLGttQ9Fr728Fw0n3ACkb6gRxZOcXD?=
 =?us-ascii?Q?FZF0yeknrsKGxa5PyKNVD2XRRdV5Uun5iAi0whJfvlS+9NziGP9hLNhMqarA?=
 =?us-ascii?Q?Pjjjj+Fshg9s6/jkD5rg2a4Adn9avp8GqxGWrhagSersE0HdFVHpPqH8LZo2?=
 =?us-ascii?Q?EkNKxfhEnjIAAKuTXAEngwvT7HcKbLYdo851xxMxQKPmi1JiSEQKrVSzTDUr?=
 =?us-ascii?Q?Lk4+EBzeTC51/D6fDHSG0PzSLLEWYVaAt1tJUVkV2C9BfoHBp7uy8sqqgNNd?=
 =?us-ascii?Q?bK0ghV2KeC7sa3vRg+UbSc+w1njSKxfBIYaI3/WRcNY/6D5NCi3igjS95WWb?=
 =?us-ascii?Q?iudwdSnQGoDt3Ht605+uxCotS1cPz9fMWXu2frssJxZ+Bq9Nu7llAoRoTThd?=
 =?us-ascii?Q?4WFmn6wAnMgtRcbvmprYdubLpkpEpkbc6NtQJaQKNs3lyAzXgS46KGXzFgta?=
 =?us-ascii?Q?bO915uK8qtbZ5zlGIH9dMlr7Zuw8NmUnZktOBO7hMb1Im6O5Y29Cm/L8WMEB?=
 =?us-ascii?Q?XzxLk25lgjZA2aEN/CuzWE3IieU3ztp8wO9qUcfLYVUqh44fLHk/x0psIX84?=
 =?us-ascii?Q?w2O3rVEdQeY2q6IMTJwistWnnDhb7TaPYnKI2vVDEcCtww3RlloCQaFhVI1k?=
 =?us-ascii?Q?EYse4iYpQTxbu/PyCQgqdItgecdheh6CJ5e6UGUfxi76KyjjgONFNkgcHSHB?=
 =?us-ascii?Q?wc+LxPDl+7C18exBBg3rek/B3nOroN5PuzyvoMD9XEzbrlwm7FyhtfPOgd3p?=
 =?us-ascii?Q?n6e+1h6xbB5CQYrM/Xf9cQjZFhav06EW3olCk4YKU99rUz87FLmHOl/nZ0ol?=
 =?us-ascii?Q?DeKnzDtHLHqmg5139mHHKH/ep3f4j/2qz7B3JMME5Pj1H8HRRL6IFZa6/xjJ?=
 =?us-ascii?Q?H1W3FRr54I2PdTo4T7wNwZmVK7vmRX59ABn9kYC4mdWodavGw6oZsrQA60Wk?=
 =?us-ascii?Q?YnSaYwwBrOG9AbCQzIafdtS4pjS8yE9nLqRbcwYr14Bon0kd34rZE6evIApI?=
 =?us-ascii?Q?e1WZj1Z8j/szZ+WSQLU7RPsIp5s4KdOxzIWgtpv2dBQ1bymaTJ1HlRPg1qls?=
 =?us-ascii?Q?tylzAISZ3GYZmOJA4vKJbjVLyG/d1xdL+IQXoohIowOJ208rJ+ySg5smH5n6?=
 =?us-ascii?Q?vwV9i7sbABfASCoFojISewFTRHXk1/nR157ImAfQUzmLVnNY/sN6OdbF/Lvy?=
 =?us-ascii?Q?j4W10InlM/xyj9zExeQeO66H3M04Noc9qUP2uJ43iKwYA2AFKisdo9pSbd2D?=
 =?us-ascii?Q?ijLD6fJpU2aR/brAatwPsnAT3R/ZOZvHid2spsSMbuGODjNNfYM/vXx6ddAM?=
 =?us-ascii?Q?yIXkcBNZTxg3Ha8mEWqvzQddybV28/txqB3z06izUtmKMwkgykowzlNnAmih?=
 =?us-ascii?Q?OdMj342Ajy3XNESsWWttfkFUP2og3G/nJyAhWNJCsTsGzqL3Pampxg8tJ8th?=
 =?us-ascii?Q?5dg9ypWkZadfGmLN00aydinhRGrC08HGyUxrhaO7iEEb5C07KNZhURgTq/9f?=
 =?us-ascii?Q?nrAH1E24Wfb0hAZQkBAj3XyGjtAnzay5eFljq+nvmmDSWdlSDy8QQSsAUUlT?=
 =?us-ascii?Q?XZ92RCEiY3WA1G49K5P4IRegsHXfZmlEqq2TpU2wojJKptJSAa+n94uD1m4J?=
 =?us-ascii?Q?MA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc50899f-3d95-4e0a-c620-08da6e5d25c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2022 16:45:57.0741 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LZxaTVij920xtN12rKeo2M8fc/jg3vz5BnfMwVc8vtfcZKORES9LO9g7kztT8XQLndVH5EyAoLSYl6zrBWhfqOBZJ5L10Go7j45RGTUrHtU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3097
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, July 21, 2022 1:50 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
>=20
> On Thu, Jul 21, 2022 at 01:17:54PM -0700, Anusha Srivatsa wrote:
> > No functional change. Cleanup the intel_phy_is_combo
>=20
> But there actually is a functional change here --- display version 14 wil=
l now
> (properly) fall through to the 'else' branch instead of being picked up b=
y the
> 11/12/adl branch.  I believe that was your original motivation for this p=
atch,
> so you may want to mention that in the commit message (and drop the "no
> functional change" statement).
>=20
> The code change itself looks fine to me since it seems like the tradition=
al
> combo PHYs may be a thing of the past and we don't want to keep assuming
> future platforms will have any.
>=20
With the change in commit message can I add your reviewed-by laong with Aru=
n's?

Anusha
> Matt
>=20
> > to accommodate for cases where combo phy is not available.
> >
> > v2: retain comment that explains DG2 returning false from
> > intel_phy_is_combo() (Arun)
> >
> > Cc: Arun R Murthy <arun.r.murthy@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
> >  1 file changed, 6 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index a0f84cbe974f..b9d0be7753a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2082,22 +2082,20 @@ bool intel_phy_is_combo(struct
> > drm_i915_private *dev_priv, enum phy phy)  {
> >  	if (phy =3D=3D PHY_NONE)
> >  		return false;
> > -	else if (IS_DG2(dev_priv))
> > -		/*
> > -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > -		 * SNPS PHYs with completely different programming,
> > -		 * hence we always return false here.
> > -		 */
> > -		return false;
> >  	else if (IS_ALDERLAKE_S(dev_priv))
> >  		return phy <=3D PHY_E;
> >  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
> >  		return phy <=3D PHY_D;
> >  	else if (IS_JSL_EHL(dev_priv))
> >  		return phy <=3D PHY_C;
> > -	else if (DISPLAY_VER(dev_priv) >=3D 11)
> > +	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11,
> > +12))
> >  		return phy <=3D PHY_B;
> >  	else
> > +		/*
> > +		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > +		 * SNPS PHYs with completely different programming,
> > +		 * hence we always return false here.
> > +		 */
> >  		return false;
> >  }
> >
> > --
> > 2.25.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
