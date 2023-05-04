Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB376F76C6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 22:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE72110E520;
	Thu,  4 May 2023 20:16:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFB110E520
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 20:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683231360; x=1714767360;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9khMnBpxWHyQ4NSQbhkTqxByYtdsFIoxXmouE5dwVPM=;
 b=XYk/EOTu7YsvlYJbYFar1rz+s2VKA26ol1Zv9Qnyfrc91F86siebxNNA
 VRmiHk7mSX+s6rVzKxssdqPX0lgInyEu5g+gok0XnkNeHSTF3PRv6oIs8
 6d79/9tiOvmRpIsVnSBa25pjzTnGBsv4dtM7VLzfn2Rbv2MCikehBiYGK
 MYi3NEIsJkKts7nz7KW9i8IzozHlF+Hg8TTbiicAqz4iasbOVRLuyw9y6
 qzqAXuFhVzcKaYJgTwX4rHOPWOy3bdm8cLI1ejwzmttONy7X+IljDsTuw
 v70R/URN82psFCC+TiZ6YfZepX+mOHZUTrAKw9fvgoEpXh+bYLX/o/RBd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412259963"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="412259963"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 13:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="727725908"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="727725908"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2023 13:15:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 13:15:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 13:15:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 13:15:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 13:15:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jiL/2jRe31hLZV14wMk6GQkoIzTCsARfnV2EjAMMJmff0o8CnyAACQ+cQvauA4LqTOivTgDLKqhcHog72VLrokGTuFTqpAK+PPuMDwPn1StBD8/gx2cuCVlws+edkQaAIP66goEl8D40eik7MjN18U3NdoRe7630tegGpsfJA8nRqAON5DqaNva21fD3zEu5Jmr97aOFabsZsx89Qq3F4Ds6ZOGJ15yLXVp9cBWjdTKIQcGgTOGi1QkXKOoGjXfFL+PVEz+1jBzMcJCnBWY0p9e/VQtqL4v7laoF2lxpC87M/aOfDoYixYoZKJo4K7mvVQc5bNSUBj/3VuDdq/kXBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgUCqTIc6O1YbkI+D8GCZLR2B7Rwx7B2RPSqLrLXkVU=;
 b=cu74o+Asgx5fGsc+1wGemPy9gvKNrvo420xdQT3jb8f0jwHV+Ip6x6ZKqI7YQjg7UuBLj6Hr7AkOgT+mJFGP1iniJc6ZOQ/xQJeObenMcX2UOMTtVBc8ZbVocbpNouqzgWV2UluI/VQlidcTNY9VR6bm1unymoKYpv5D2VbjUPMUJcO/faxjfBR1NGhFgH2Q1F8w84Ji80VibjAUjgs4mGwZltqCPfW+x88sTsj5yPYwRTRVSdlh+AQ8SSo8N+uI+oPdYwJ50Gx7FJnu2YBNfQ6v8K9lH9UgGMLjPFRZm6XYKb+zkdKKYx5TsyZczRO908GGnpR4S5aVOTZ0eXmc7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH0PR11MB4933.namprd11.prod.outlook.com (2603:10b6:510:33::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.31; Thu, 4 May 2023 20:15:55 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6363.020; Thu, 4 May 2023
 20:15:55 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/mtl: Add MTL for remapping CCS
 FBs
Thread-Index: AQHZfnMv034AXEzAekab2Uk1b6948q9KjVGg
Date: Thu, 4 May 2023 20:15:55 +0000
Message-ID: <DM4PR11MB59711B3B5753D066D56AE402876D9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
 <20230504102805.18645-2-juhapekka.heikkila@gmail.com>
In-Reply-To: <20230504102805.18645-2-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|PH0PR11MB4933:EE_
x-ms-office365-filtering-correlation-id: ae3e227b-4a4d-4264-e503-08db4cdc5dee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OSjVgdez/iyZFWntWngchC7Yy9Xuvgnhq39lph0Pu27wzQ6BF6bHOfXG46pMIKGnwLFmenkowampnYKfepntSpUwi0bTqt0kSFnx1xII2MUJvNB4oPIEDh713s0Q2c0Jt04BsZRDoj+s1qk7DiTKd7FLn2LBrYC+DHqyVJNdNOK1i5mZFR6dKAHdich2D/40R/DGol0xifjvHZ/dPk7ETkEAIfICQW09AuAVwOsYxj9j7nxjuzpWaLi6VsAlhfTbZ/VhxGi+pYGQ7XOZOvaAWGCleK+F/3udwQzwoLStKFHn7efg1BYf7j2gBR0U3SFZLhRdv8T+4pEPnxNS0GszbOU+aA9NWrJ9172F8eP7Q2jT+SApJW4wwzBpLAqVTebLc1x0kCiFlkrWi35R4wDj5BUluIwfgqjithr7oPqnkwV2GH6tPZr8alDyjt/eHY5d+nExPR8ZJ8MibjkDJg8csVo+TNE/2XWBJjJ5k1oQMBj/xX2/ZMfCes3oJMLLeCfsUOs2QaceGrymglxq5yxULbKQZIooOU7UPxt+AZ7TPbCFr8rcEyafoCTFWs298Bno58Yl0FDJ9MinUjl6Mqt1g5R4cix2wK4eoSd9Wk3F6wZ6TewC9o6mlcHN3x5Y8lUN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(366004)(376002)(136003)(451199021)(6506007)(41300700001)(38100700002)(26005)(82960400001)(122000001)(53546011)(83380400001)(9686003)(52536014)(5660300002)(8936002)(8676002)(55016003)(33656002)(478600001)(110136005)(2906002)(38070700005)(316002)(7696005)(71200400001)(186003)(64756008)(86362001)(76116006)(66556008)(66446008)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NfpcIq+KHDBBWzrxMAFatyLTCI5Wbzyi5EG8I7yZvmrHyijIJhy68G6KsMqZ?=
 =?us-ascii?Q?Vsml1y4Z5vEuIaxCyzNopx6RTIuFKcRK++bg/F9w935w1ksNzRIJ/S9UelTH?=
 =?us-ascii?Q?eh06JvMBNVpgdqI6FDS/UAuNr42hITqXksiHS0dRLQVukJ2FupXpNekgxqwI?=
 =?us-ascii?Q?xSbhZr8EEuhoHZmeDa5EBCEckXFi8to5LZ4VGUyMXLeUT9HZ/mNqevfsYp4g?=
 =?us-ascii?Q?PXGi/8vuCUyvhYVwMvG7+Jtp0T1ynuvVwJsu6Y5LJOYiyoV+dKgOJNZ5kN8j?=
 =?us-ascii?Q?pv6wzWGfJTtHFJlgfGbCpyBv6s9NarCMZM0xWu5TYJeKinySFzv4VBGMF8zN?=
 =?us-ascii?Q?v0Q+gLc4UL6rS9ke5tL99WVFtma9ID/Jq0+mlOJbX9hptHnGepo68fsHPpx1?=
 =?us-ascii?Q?P3jOa9ihCQdhXmyNyEs/ORS53bivaSNecxKe5O3ZWj2IQW1p4VLt9MAnpWPh?=
 =?us-ascii?Q?NpcknhUZEewKnUG7BVMyQMfoe+vJWfw6SM30WG/CrMwS/S5EsLgSzQ4cpdAu?=
 =?us-ascii?Q?LlkBCBgVnpNuZivMenOM5PBUFxxcR84tppEwtvzhWLS/UecOIppUk3lwnYyI?=
 =?us-ascii?Q?2+jGLSVaDqdFjPoM5AgNW/IHmh6BhmSbM/R/9g/M3r6Lx5FL2ptbTZeyKqq1?=
 =?us-ascii?Q?c3PITgEOchry6oG5Z7DBANYE/K9399XSgdl/jEBlmeab4M6Cn+DQknoXhPmL?=
 =?us-ascii?Q?x0+WVWwniz/kHskNg9Mm7YNJoiotlcOS56AaeBWC3cV/Gf+qPdeiVk3yzQEU?=
 =?us-ascii?Q?sPxoe4rEJ+UUjzVUB6O1YKF2U1QPVC5zP/Z+TlL+qAr6BOu+1cEAXc51tEZu?=
 =?us-ascii?Q?E2+DpBpd3m+r6UuIRWVNlJJM+pp2hk3okd98mvd6iIAecvkmWQCRLnoxJVR7?=
 =?us-ascii?Q?pYeBgbvv2pvRXTvMkh9fnBYV4cVKStb8BykgwfFE8T3Bsb4zaODJ+QC8sWUX?=
 =?us-ascii?Q?Igzr6QfnD/2aeHKm9rp2gPC9EAPF6NAcxSB7CXvHtOEGq1Z+VKaYAykajZKt?=
 =?us-ascii?Q?45bspUTFa3GiZWBLG7VvrR5oo2rdJy64J5FWLeGRv9XUNq+LRAnI+wrZXZgY?=
 =?us-ascii?Q?svPlXELpSbRjJW7A85iRvo4yj3tm3uU3dPPI9XkGcL8Kjl+F/vaDdkPdStfI?=
 =?us-ascii?Q?SjFz3oRU8G/735ZmaJ9ybdwlF+6Y0QBw0gAUGR0zK2n5roDuEcqd6mD1zROA?=
 =?us-ascii?Q?h89du3u3iHtVcDetgmLDzQawpZ36Khv1gc06rVw2iRiW8sLCTQnwBvnGkJwL?=
 =?us-ascii?Q?yqCtrgVK/HmbP4V2+42lKWIEKv7CaOPfVaP62ygZ7F0CZs8NX2tuWMrX7lvy?=
 =?us-ascii?Q?F1jSWWlvQkkwqb6pxsAfvgG0+uqbNONvBzTiym85SAXY7rXYDOtLO50tbwup?=
 =?us-ascii?Q?m4Iaq+7R8VhMHSXIr7DjcxDLG6Yc18uW7Ptv/M6FpbWJIcxOpLtUQNV426VR?=
 =?us-ascii?Q?pgASeyeyycBDR2Zr0OmvShhXAUCkKOaEcFAR+yJvQYn6+BYra+7f+t9bL/Vl?=
 =?us-ascii?Q?vMYXfGrwJfa0LAJBGFyfI9yIKX2P79gr29p5sMxIBYr2uW0GE1BTN8SFzNf+?=
 =?us-ascii?Q?KkG+4LtgEc4LX/qfzvka0CsYExg/3cy0eFOeLDlBE4lVILy9Ir18S/ZnBRkG?=
 =?us-ascii?Q?Fw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae3e227b-4a4d-4264-e503-08db4cdc5dee
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2023 20:15:55.5195 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tUVNIpkaNiZzoLn2xkkZ4fDvETnFjRelb8qqcvfqwSpF3F0kq4Px08FFSX3SjyVzzzzQfVC0SVbC4IR4aWuY8UYwYga9RBf4bNQOzL8IAN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4933
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/mtl: Add MTL for remapping CCS
 FBs
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ju=
ha-
> Pekka Heikkila
> Sent: Thursday, May 4, 2023 3:28 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/4] drm/i915/mtl: Add MTL for remapping CCS =
FBs
>=20
> From: Clint Taylor <clinton.a.taylor@intel.com>
>=20
>     Add support for remapping CCS FBs on MTL to remove the restriction
>     of the power-of-two sized stride and the 2MB surface offset alignment
>     for these FBs.
>=20
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
With Alignment of commit message fixed.
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> b/drivers/gpu/drm/i915/display/intel_fb.c
> index e5f637897b5e..c004f08fcfe1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1190,7 +1190,8 @@ bool intel_fb_needs_pot_stride_remap(const struct
> intel_framebuffer *fb)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(fb->base.dev);
>=20
> -	return IS_ALDERLAKE_P(i915) && intel_fb_uses_dpt(&fb->base);
> +	return (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >=3D 14) &&
> +		intel_fb_uses_dpt(&fb->base);
>  }
>=20
>  static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_=
plane,
> unsigned int rotation)
> @@ -1326,9 +1327,10 @@ plane_view_scanout_stride(const struct
> intel_framebuffer *fb, int color_plane,
>  			  unsigned int tile_width,
>  			  unsigned int src_stride_tiles, unsigned int
> dst_stride_tiles)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(fb->base.dev);
>  	unsigned int stride_tiles;
>=20
> -	if (IS_ALDERLAKE_P(to_i915(fb->base.dev)))
> +	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >=3D 14)
>  		stride_tiles =3D src_stride_tiles;
>  	else
>  		stride_tiles =3D dst_stride_tiles;
> @@ -1522,7 +1524,8 @@ static void intel_fb_view_init(struct drm_i915_priv=
ate
> *i915, struct intel_fb_vi
>  	memset(view, 0, sizeof(*view));
>  	view->gtt.type =3D view_type;
>=20
> -	if (view_type =3D=3D I915_GTT_VIEW_REMAPPED &&
> IS_ALDERLAKE_P(i915))
> +	if (view_type =3D=3D I915_GTT_VIEW_REMAPPED &&
> +	    (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >=3D 14))
>  		view->gtt.remapped.plane_alignment =3D SZ_2M / PAGE_SIZE;
>  }
>=20
> --
> 2.25.1

