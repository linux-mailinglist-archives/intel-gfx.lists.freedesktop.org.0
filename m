Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB17C6787B6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 21:27:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4358D10E55C;
	Mon, 23 Jan 2023 20:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0451810E55C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 20:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674505637; x=1706041637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=akaVcnbEfTwWS342zFDu3wDLFOC8y/78+sYRi6UaWIw=;
 b=Y3bJVz2tvXvjIRq0hTQjisFtoEeUEmOS2fp3pUhttfO/99sSU+l4fsCB
 nOSITeNb/P5unB9AikaQkwYEdSSacJkqwAb3wD89iAUxFiJ45Rx/eJ70V
 MoUymf8B33M4aL3Mb4CPd+/y4m9TuRbqPVtaYQ78iIjU87uCG/t7C2dbQ
 MD4nXgymjzjmauUgwWfj8uOwQtpup0PQN460O3mE7+I/Ei8bJdcJL/Jsk
 ofF6+75ptmreBIHalsKoD0KC6EkqRFuiLSpu9914i08VQI8mx9h0uZ73Q
 6sjbf246uLQJvyem6Bs0PcgFsDCDYbeshXYkX7BgTfRKVh2XaND8demtg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="326177717"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="326177717"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 12:27:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="611750598"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="611750598"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2023 12:27:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 12:27:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 12:27:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 12:27:04 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 12:27:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JZvjmCmZWPxWSEjRC1rDS6U0tlkwCfGl0ghe2LA4XXxxUPUbLyjELKDb8GUI5sMzB44Qqig3DeznJDORkMYYchLOzw40k7l/BojeyQD26c7XJvYs5oJxSyrB5OtE2lXxwkibKOTMLh7/sV3YH3+6ubz7Vsi0wueYy7AnQJM+AdzYf3q6Hu79drU2K159EoP0kr8Ge+MQvoeW3tD866bl8LzAJ9YyoLVfGPKKB8zj0b7r4UOyLrQ/G+EHDBEeQE3FlfPtk5aV9NFRl6i35rfbkfw0TKQ2UvR8Z+gPy3RB6+iI0efu005a35FEP4mlgVUYL0H3aJEJZLFwKRZWNq0g8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ga7HINo+SRXMdYv8k6oRLcORvnEaNzQbeUH9o/aERiQ=;
 b=P8huxNq0BNnw9Ly4SlisL4kl3cYl0kF90u4S9Sb2DQBEuBUPDioI+N5JtDUFM+0IiMmxglMEPB6D7p7m/OO5sholo9jkxCLg9A4L7AO+UUbE3kXBh+b9/uOgC5hgG5oX0vpSeGUi18KC8cJr1fyL9PLVvYxzPJPmrWb4GKPPlMtmavjEPC+zfNnG5el3pDkjgrNnMG4bV+ToyP89RVV5TNyGQ79E8frBDrG+L53ECgnOyGKzfXkQzOD6PTWN8VzB4JtoFuqEX6IlY3HGka0MW+KDlCKRJ9QPsEPtcwH8p//bLjmhAhD8zbVTloF9mfLAmMzu1fcZRKGfo39Ntnahsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM4PR11MB7303.namprd11.prod.outlook.com (2603:10b6:8:108::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Mon, 23 Jan
 2023 20:27:01 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::6c2:af85:fd7a:8293]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::6c2:af85:fd7a:8293%7]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 20:27:01 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Use uabi engines for the default engine map
Thread-Index: AQHZLz+VZGoAEMVhSEGHlWEG3IE+U66sczKQ
Date: Mon, 23 Jan 2023 20:27:01 +0000
Message-ID: <CH0PR11MB54444F181754CF190589DBB6E5C89@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230123152523.1537564-1-jonathan.cavitt@intel.com>
In-Reply-To: <20230123152523.1537564-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM4PR11MB7303:EE_
x-ms-office365-filtering-correlation-id: 23f1e5b6-aa5c-4d51-ebfa-08dafd802f4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jQLLxdiG4Ka5oaznNeAwpCGFVYgb7MFUbOhakjtXp/wZbL5qIRyU4V8O0VFKpw9D8KHTAwEOX3yaQsxiQOY75cTBfcZmrHRunzwwZBpqV0bfcaWlVFhkq80GZ1zoQvEaDqRbdyLsa6iEuhnAFuUbk58adhXRIYU35GvRnaue1wD6HhBeMQiKfhNK1TNKmbm6DaHy44NmZ+5ISBsaAPWvPoehti2xMoPE3IRmU/QwQRwZpfrn3Xy79rrAgzJZeT3Z73pD40QI3O43xQySooonhegGF53DLV/5AxA4W0YqIUilRH/oD/OWIcJgZ0DWhRGRUWgIr6/xviRHE1Jhcuuj0XcJitvf/NUEyL7lyqMswKz2xTgLhOt7LFLOdiHjNERw6XsqwGlyhPCAe/Qoq/lpzVlvqOVSy0uh3pXmBwO5GO1+s2tjgpYqTb9IszWatDiiDrlt6u7dfVMgUgKQRgJDuQRUtKRMLTmqoEvima+H76VTFzDVIGbiMkYJ3/D91i5M7jNxozynQU9RHQfiG/0LASFSFFSVMdZGFFcegAIUmwO24rZZccmHYvZgCRaml0fT7LjTRQrSKzEI8m/SUlIn67V5lAyhJxhKj7F+xtfGP8jIDvL9sDKHxbKB/VBUtyfE42TNWTljlFMJVFI694GZ5ORVoxBaItGVEVoGmbibSjkQkMJi+x0nfysaAoL8e+e1YKE2XkneQ7pSTfU/nss4Jg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199015)(38070700005)(52536014)(66476007)(55016003)(4326008)(64756008)(6916009)(76116006)(66446008)(86362001)(66946007)(5660300002)(8676002)(66556008)(2906002)(8936002)(82960400001)(122000001)(38100700002)(33656002)(107886003)(316002)(478600001)(71200400001)(54906003)(7696005)(41300700001)(9686003)(83380400001)(186003)(6506007)(26005)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?t+QeswiDqTszoXWRd5eMLyvJjss6gS1bCYWWfGhY0ovqa6Mn1dYkZ9rBR5le?=
 =?us-ascii?Q?/Z2yiGB91s+FxXIpYEhJbWHZdPhmnpd8HcwMcsWXhu99wp0hbRUQIJEr0jbY?=
 =?us-ascii?Q?LuJBFdpOHKDsxHUri9p0ItWMbYTZ24ir3opcxFGvNnUJBZzBUMvPOdOVlbfS?=
 =?us-ascii?Q?u8IExqdqOXmeqSwi6wkxexrSb5tc5IZDpEUFuryQKHXL1CV5bsTLT8BYi6B0?=
 =?us-ascii?Q?D9uy4ulyOyYKnbaEoHQyq5QeYqgFqDn5hLVp2hj7Dywq7ObiYGea75dd0BhB?=
 =?us-ascii?Q?UTjObXRdlsu2Oe26LQvWULJURezX4AVU9Opkn7SbbOq5sxw/f5yoFZFpvuoj?=
 =?us-ascii?Q?cMkq4K7SS7Oi9LtsVouLP2n8CKZo3Eb1vIPPzSQpCo75TENZJy+23EYoD0W3?=
 =?us-ascii?Q?kYNoPmYZ9v7P/sybdcdp09peflZnnsyRN7yTcQsvyzydMGUUsZQsCMcmroau?=
 =?us-ascii?Q?QP3PlLIpz0Vmgpd+uRb/RfIInWbAnlwX7HiHvVJ8fV9jUZYnLFIBFAkU7BVd?=
 =?us-ascii?Q?T09RxFD6kgyJNpK77lBam4UWNc5+cc0L99wlndlrlaoXGaZXCFirKzzgl7v8?=
 =?us-ascii?Q?webix9h0tHas0EuzZbNtDqYgpLoJ/RNKb3SMkALNoqD3XD4n1FKgsfKcTJs+?=
 =?us-ascii?Q?ijtgXIvF3V7zdBLLsgV/fy5Jk+pG6WvTmKRLBPSwszFPX+Avr+VXdcmQqtu/?=
 =?us-ascii?Q?OD6RL9hyXR8VHPWd1boE9VL50gxGb1M6MH/GUYQuMzo0qp9flRaMfLjaLRrr?=
 =?us-ascii?Q?hMXLxVYb8VbmemhjAZm4bLLi9Or1+p7M1VyFJGwgWaMq14GlRScDVIWxCCrL?=
 =?us-ascii?Q?jbiTTqU0uT+ubGSMe6tk70fD/Z76NCsEo6WOzdw2XQVsur0Qn6kObtqsZ+yD?=
 =?us-ascii?Q?+YuyaKk4MjXrCEWnakRSPTaXI6sbR37gu+K6GeW0r5vb2vKFG5BWyNQ43SPM?=
 =?us-ascii?Q?fI4G4ZrVg1dED25YuEXOe0O0y07kxSj1ovY6VJWQ+cHzRcr55YZdCSLy6abN?=
 =?us-ascii?Q?J/IJjC8TnH3Sv1aHcUQP4kYwc0qdJ9jlvT4YTe+PJ0TYoAMMfctVuvZp0boi?=
 =?us-ascii?Q?BXA+rRzeb3GIK1Il/DBLKYvq7GUtxwjAKg6D+edr38xsHYP5YVgYDHoiUWVx?=
 =?us-ascii?Q?CZWBN21yx2Y8c+he1z/mjRB7/8kSjdLX877JS/y1JwMKKhCZzIpXKSClsxEt?=
 =?us-ascii?Q?V1o63pJnNbtIG4oXNLFa45dRKtsRB61f/7Unhi6NAh6g8vS/90DJZSOY4cRb?=
 =?us-ascii?Q?nm5MnMy1kuN6rUqpKFQdliE/y4BcOJrR7xbCNWdNux+necOTRN0fbtPD/bSb?=
 =?us-ascii?Q?CBDMucIx+z5jkciVwJpDs6gb8/meQIw06kuszg1I7N3eObqyu/xsELCUHvJ/?=
 =?us-ascii?Q?Q9d+dGuPFymcVojWe1uwhucwSB0ILnyjhRzVDnhGF8XTtQJEyKKu3OnqnmfM?=
 =?us-ascii?Q?e2ZUDI3WJpS4oC04/2AdT/EA7x1Xj2A/I5j0F7YXX3xIncNGR6WXQCIT/H2/?=
 =?us-ascii?Q?sGR0Xfm/sBi+0WDRk+6q4k7hnzt61MaFFprz73P2WXKAhzh/6uQP3geiE/88?=
 =?us-ascii?Q?lMUPY9zBFQG7+zTCkP0+2gq4l00fetjEZHHgdrl/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23f1e5b6-aa5c-4d51-ebfa-08dafd802f4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 20:27:01.7023 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a9VQ7D4DcnFMI4KmgR73oLngTd8ToDs2wRYAxpcMxCybDjeoUrQX/wZxutllQnX1pC6EkEzKPeN7zwU/E9op/lp72NXWLtW3qlxHE6Go/Ho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7303
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use uabi engines for the default
 engine map
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
Cc: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Monday, January 23, 2023 7:25 AM
To: intel-gfx@lists.freedesktop.org
Cc: Cavitt, Jonathan <jonathan.cavitt@intel.com>; Dutt, Sudeep <sudeep.dutt=
@intel.com>
Subject: [PATCH] drm/i915: Use uabi engines for the default engine map
>=20
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20
> Default engine map is exactly about uabi engines so no excuse not to use
> the appropriate iterator to populate it.
>=20
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_context.c
> index 454e73a433c8..42a39e103d7c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1096,16 +1096,15 @@ static struct i915_gem_engines *alloc_engines(uns=
igned int count)
>  static struct i915_gem_engines *default_engines(struct i915_gem_context =
*ctx,
>  						struct intel_sseu rcs_sseu)
>  {
> -	const struct intel_gt *gt =3D to_gt(ctx->i915);
> +	const unsigned int max =3D I915_NUM_ENGINES;
>  	struct intel_engine_cs *engine;
>  	struct i915_gem_engines *e, *err;
> -	enum intel_engine_id id;
> =20
> -	e =3D alloc_engines(I915_NUM_ENGINES);
> +	e =3D alloc_engines(max);
>  	if (!e)
>  		return ERR_PTR(-ENOMEM);
> =20
> -	for_each_engine(engine, gt, id) {
> +	for_each_uabi_engine(engine, ctx->i915) {
>  		struct intel_context *ce;
>  		struct intel_sseu sseu =3D {};
>  		int ret;
> @@ -1113,7 +1112,7 @@ static struct i915_gem_engines *default_engines(str=
uct i915_gem_context *ctx,
>  		if (engine->legacy_idx =3D=3D INVALID_ENGINE)
>  			continue;
> =20
> -		GEM_BUG_ON(engine->legacy_idx >=3D I915_NUM_ENGINES);
> +		GEM_BUG_ON(engine->legacy_idx >=3D max);
>  		GEM_BUG_ON(e->engines[engine->legacy_idx]);
> =20
>  		ce =3D intel_context_create(engine);
> --=20
> 2.25.1
>=20
>=20
