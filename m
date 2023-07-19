Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362E759389
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 12:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C538610E09C;
	Wed, 19 Jul 2023 10:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5B610E09C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 10:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689764211; x=1721300211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c02SSTG47I0LixHb5HjAKoH02CX5U+bGZ91bduUUrWE=;
 b=moKiMo8UWfr7dVbLtKU+yiUSBib5/uw2eE9LIvOhHFKjC7HrvwQsH7Pr
 54Zs/6dOXu5FV+wSIIwRSVeTF/KsiIgMafnNmGbwlaNeuPsl+Xj4cv7K8
 b88kPGacovN/heFLwPRjlTJHfAN9vEZNRcEB+H0XPU2OOxhbEDVocRVy3
 h2AhLMawMfurbQGCXK9rf43fHs/vb1d2ZftYvtg6/53V/7Wmdf5WlmIFb
 wde/yCU81mRbrjfMCpQgtuYD+DxoJ5NLbo975tL1EbYJadmwUy3Hyb3kB
 eZZgmAwVDuV3DphbqJ9g7wadBVVEhJyk9FKZ7jsSCgBN0QCeIBVzuBMd3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="346021683"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="346021683"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 03:56:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="674252128"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="674252128"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 19 Jul 2023 03:56:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 03:56:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 03:56:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 03:56:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 03:56:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2DoWUngE55TCSGRXFVX700a0BNh+8rqoGunvUJ/mRnHUuGxazZJOiFy1mRBIYHGlZ1+XeYXNCDAvFLaipZFWmAQYf8au+gS+lE25emyDCC5blk3NsJHBywZrJl1uZNPLlyN8I1wn/tzXRF5FoZn/3p9d4rILB4W5Xa0FQyHKHA0mzJM6vH7Dg2Nps1ZUe9QAZyaVxiBVQdCjzwiSJ22wr37SSmKBL6LAP4Eo7/MsPqjgmGIZQmCDv1m4pDIm0N+YbEfJKgj6fMm9ZRYoGzHxcOCdOpy9P5u2bG4/DgTNVC71Jpu3nJkI42wKCLCuPnaY50EphiCVacR1MjvI0KuSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pw4/LJX+/Qo45uN2IQ4OdFokN1QUDx11Gs8ccwSfSdg=;
 b=cjQqBfspoq5akmBoIf8eiWQHi87Tjle2E0URvuHfcB9K8XhmsrSG33sxTp4Gkf/5YcIWFNdlwu06GLAeMhZ016wXD6slJFDJKEdS/ewixmPlyHcjKZhy8VZa68W1KDqjl7mrXJybcJ1S0mFcswGj+KiBPiOC3IuwUWY/1WPKaXiOtE9tUOYtAjgKL7gnCkv6GNnx4UCgfLcvBsudYaroZ7UBED1/BXvV+YB0IDVgtGZcEhnnjPzqNKW8Fc6aKJatJKVfXLynRGod03yDgniWZtlo2AjqSPLYvAuM9mpkL04pM/XFy3jnqcrIkG1QHhCTgGp7WU4kDxL3J0hCHxcQow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ0PR11MB4909.namprd11.prod.outlook.com (2603:10b6:a03:2af::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Wed, 19 Jul
 2023 10:56:22 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::c8a4:674d:d74a:3502]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::c8a4:674d:d74a:3502%4]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 10:56:22 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Start using plane scale factor for relative
 data rate
Thread-Index: AQHZui6Wbv2k/h0tzE6AIQmn5M2nra/A6qmw
Date: Wed, 19 Jul 2023 10:56:21 +0000
Message-ID: <IA1PR11MB646755406A9462A9699C4873E339A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ0PR11MB4909:EE_
x-ms-office365-filtering-correlation-id: d0d53f26-4125-44d8-4316-08db8846c99f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PhvQWwNlkasvDrxdQuCTBk0YgVIbEy5J12tLnTqNPBQylaki5nI6ukF0QUAfnfDqfq2qCreG+LyyIUKGshws3wXLjEkFa9YKf/5Up0O6OEnoGKeCJe0+NOm0l/Pf9OK2McPWi0MHB7LykOZ4PU1s77On1iVNyYRG2TDWNjRdOlAVx1rv3x9Mpqp5bgS8AxvyAyQNnrhoQOwzES0niq5kAaxz/+LsHiletbbS16/lZ1VGnbbT9cPAlGpN6B8mAYZ+s9w3gTAdJXeJSnjqKzqnAgIsWKpmuOPPbZGOOVsR+ZhEyM23CAD3j0Q/cakKkCJv75PVNY0BrzQxW0M3xVpjaL42aGRIbe4SB9lpg7GCM2+gUo9A5cMhd5SEpiwfqz5kKpa561oWiBdnoKkEAkNVIHE8v4/+9nwcaBRFc8FBt/NPI0RQD0swhO2/lEFQaZzj80SILdMVIyz34+zkyEOST3Srd54bekTlH5D0GPpAgAIiAARStR1jl90sY/fe2fCYPs4HNV1GjGGmtb8rRc8oR8gFZsRUOmpxO/33/cVKMXtTf8p0IY+9WFYrZ135OZ9MKAIoCdoGAvi4bMaFwsFoSO4NAZLv66bOcLpyMKhchJFjuFlBBCXfNibot9YN+Wtw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(346002)(136003)(39860400002)(396003)(451199021)(66946007)(52536014)(9686003)(64756008)(7696005)(66556008)(66476007)(66446008)(107886003)(2906002)(316002)(53546011)(8676002)(8936002)(4326008)(122000001)(5660300002)(82960400001)(6506007)(38070700005)(76116006)(55016003)(55236004)(38100700002)(186003)(26005)(71200400001)(41300700001)(86362001)(478600001)(83380400001)(33656002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?81UEmT1GXeiW+ldKUA2nTdKDuabFt2xM5YQB1tp0ACqmi8CFeS7WPEhbfhf9?=
 =?us-ascii?Q?IuRrBQLa5HpWcFXZs851Y7R8DKybvLaWWYeWeWXUyMcbxl1j6NoKC8daIwbc?=
 =?us-ascii?Q?FJFbGUJQU6DvHgtx5599FJurO59e87Pwc6gHAqYNla4yPYm++Y+EOtq7kXxW?=
 =?us-ascii?Q?nYpCulOgpMxNqkiKJAeCqwCtdwjIxLNO8uQiQ95UZ3Z+ESrg6/nvRYTaCmym?=
 =?us-ascii?Q?LkG/mE1JhHUtCEGqETsk4xb6kKlOwCNNAPl3tYQK/fpq1ZjnrCDLB2aUO6Pb?=
 =?us-ascii?Q?t2zEx1CXQo7xmsvfb9bFc+QYi3ma7nYAevqJKBY/5AD+NhYuGfErzIVwxM4/?=
 =?us-ascii?Q?8IinEsoS3DIiIA68TnGarKnY7LxkCUVdGbaCowH9Jg2TeSrdWEB1X4nTS0R1?=
 =?us-ascii?Q?jwJ4LItaJgxfV+RiNK+qBmDZYB5NSrIjYDdw647w32wiAqDk925+Ser5UBD8?=
 =?us-ascii?Q?lGUz+9B4RcF/biJcgVS50RTshxqSZIujIjZByJf00x1CHdS3Rehz4pVISW3D?=
 =?us-ascii?Q?sHMNdy6t0WXifGEVvCsW58LNgEENjNnCSzjTw1xZb/abIJIR+UgA8vqeE5Kd?=
 =?us-ascii?Q?nb7FqRLALHlk+Nu2e93+bntjaVnHPOIDy77/ADUCS1BcxkYHjwA/u7CdPDPo?=
 =?us-ascii?Q?VDvqwWXUM5nwBi0zPM5CWbjAt0iyldg/oH1Jvsc72sgqDznbxStsH0S9s+0C?=
 =?us-ascii?Q?XqP9NMQyLnbp1h6QQEQVz8bCd+ffPi28+mjNqjF7WFLzXv6rk1ElIdiRTvwM?=
 =?us-ascii?Q?cLPvX/xU6R9yom13J+QK4vRi/NhDk4JxTSN1mxbJg3GPYcP/HukHCFglOSKU?=
 =?us-ascii?Q?tjyiom9Gf1Z3RGefVyC3ukwEuNStZ/CXnr0GZpjXwbColdGIneQVJYSqakzr?=
 =?us-ascii?Q?myr9auASLJPgqOJeAyhKajE5YGongC9XicJEiVzR5SegBfpXR49cmSmxDOMm?=
 =?us-ascii?Q?XJdA7rFSxGpvgIXbJbeGEz3CJ2Fw6ml/pp5gZCl2xShzX7eAcfPCSm+094Hd?=
 =?us-ascii?Q?OGY4Iv/YSKAuxAkiTocc5GQK1HdJH0H6MvUhEIz1nWfZY/F/jorfe2otT75N?=
 =?us-ascii?Q?q1McTexHvHY2glD4vsM+XXnjefHNevq2nCXQWOXKHDvetbWWSsdZ1AaAwjw0?=
 =?us-ascii?Q?iokXltkyA5P1zsx7b+3l0K9ypCy3tF27o1K+jYyBLmXrBhUBxoO9MMMFQ4qF?=
 =?us-ascii?Q?9r6gHbz8LQCLCLU0SEfXx0Tv1vwjK2uLpmmUiK7lc7BjYUDSBlr4kGW/dfHp?=
 =?us-ascii?Q?WHUSuaQm3nZBPvGDW+FQIHnd0/z1RugXCIS27eq4g5JcQ6iLsmOx/wUt5hOb?=
 =?us-ascii?Q?kLcGwVL02pqD3cTVnmaXTrx8Xs0a/vhDndVEbe6okLmRNqQm7dvqZfc3tbMA?=
 =?us-ascii?Q?DA5ypOVlFiNATAy45wB498hEqPwTwHxQmJqgzvwvvqGAeRl7lYryTlKZOXdP?=
 =?us-ascii?Q?61RlFJw04X3oPrVdTnEW/hbor8jEXkwhvws4j7ep/YdzCwsaMWnvM91oyGpC?=
 =?us-ascii?Q?HQCkVLWge3z6MqalSczrduCX7arDEDPU/v6xOKdUkq6RnIsmJ9rZ0RGxUrc2?=
 =?us-ascii?Q?StsV+Co5aODq4UGQdwcMWNgA1Cr7hKYqF72AkePr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d53f26-4125-44d8-4316-08db8846c99f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 10:56:21.4351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /bbpMPjOqVSeRk2JDzQ/lydhNR1hEs+dSP6OWxKFyc0LlzoNCfVkr/vl6TbFWrqpaJYyXnpj7vAwZP/6e2ssXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4909
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Start using plane scale factor
 for relative data rate
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
> From: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> Sent: Wednesday, July 19, 2023 4:19 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH] drm/i915: Start using plane scale factor for relative da=
ta
> rate
>=20
> BSpec clearly instructs us to use plane scale factor when calculating rel=
ative
> data rate to be used when allocating DDB blocks for each plane.
> For some reason we use scale factor for data_rate calculation, which is u=
sed
> for BW calculations, however we are not using it for DDB calculations.
> So lets fix it as described in BSpec 68907.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 7d9578ebae556..60a492e186ab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -212,6 +212,7 @@ intel_plane_relative_data_rate(const struct
> intel_crtc_state *crtc_state,
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int width, height;
> +	unsigned int rel_data_rate;
>=20
>  	if (plane->id =3D=3D PLANE_CURSOR)
>  		return 0;
> @@ -241,7 +242,11 @@ intel_plane_relative_data_rate(const struct
> intel_crtc_state *crtc_state,
>  		height /=3D 2;
>  	}
>=20
> -	return width * height * fb->format->cpp[color_plane];
> +	rel_data_rate =3D width * height * fb->format->cpp[color_plane];
> +
> +	return intel_adjusted_rate(&plane_state->uapi.src,
> +				   &plane_state->uapi.dst,
> +				   rel_data_rate);
>  }
>=20
LGTM
Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>

Thanks and Regards,
Nemesa
>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> --
> 2.37.3

