Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD8539255E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 05:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A1C6EDF6;
	Thu, 27 May 2021 03:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D206EDF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 03:24:32 +0000 (UTC)
IronPort-SDR: w0m+J6TES+BejGEneoKdsnsIu4x1NKGmhqztcNoLZQY9AgMGMw5NjPkDT8R4w0LZMM3OXH9fNf
 zqwSMNjlXKFw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="200744336"
X-IronPort-AV: E=Sophos;i="5.82,333,1613462400"; d="scan'208";a="200744336"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 20:24:30 -0700
IronPort-SDR: ICMnbTBojyyoAnUOmMc0qYCjAp5MZCU7yTjxpdU8McFPkgJAr8zDn5BhePiwD/pSr4BdGucopx
 IxmZhdQZWAyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,333,1613462400"; d="scan'208";a="397576184"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 26 May 2021 20:24:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 20:24:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 20:24:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 26 May 2021 20:24:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 26 May 2021 20:24:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=INgLgQM0fNOBQiNUFDQ/TmWDxQ9xcLC+1nm/Xxl2pUFUP1dUaUItjP/n+D3VLz2/OHB+vfijdBtA2TBsGbHedAg5tpgBzYxUV+h30WO6DeUFINyWFkvfwPboKpLr8a7OtB04Ao7hnsVsDHA80AIRbR02Me5ELs1p7iv7iepXjdgcElcyKtdLzSXAk+YmzcU9uRqw0XqpJh8YTMhP689uo2UZAQ/6kZ/iAPgWYrV5einCr6RyL7tzyuEnbWO0iheHfe2IhkXuLM8ksUl2v93qjccYJNYtdkyPd+g2OrnS4VBtoJyydzvPnnDZ6QL7go1gk8lY81DDBiY9ydZZy0aQLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fsYxONho18nn521IjQiAoYtnSrSUwqlqvXyA6/CAb1s=;
 b=ekt+DpLtfPaKqiJXWjV+Yt5ZEo+JrH1NATP1Jj0fUhlH+cKMa6zB7wwMoRmPiR17/rSPCxLq/Fut9jlyceUeZAmFgO0dGCOVfC7xeK8QxiQi2b0yDDxmxSjw99xLSxIA+mL4U8Ai9vxXY/00Z14rq+5Cgj4Vwfe64SCboXWuec7rJzgiKuu1V5X1RF0lm2PM6fCySdLdbtice+JzxwZEPWu+CMSolnNf8OtyPYUPNuFy/j1pyYpC3t8ibDCjsEbseBDTE/9HhF+qhEIdbkoqKWThZnQjmZK5AYfNdbjyfdH5EhGuDx2PdDFgFPRBoT16sk+xkdkFtokc4aS7cXcpbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fsYxONho18nn521IjQiAoYtnSrSUwqlqvXyA6/CAb1s=;
 b=c0kzm4SpUUPoZeLzNsUo2NkaS6LmN7oO/+ktnVWkGo0BG3DH5f0KmauvYw5jcPQGeo712bSqalqJRON7Klp1EPeWFQFbTHarUDdoBXI0A8IGTJs3I8OhUnjtxbyvHsvIU8gkP/U23P4+Ho3c0Fv0xln6k0QhUHMGnfAwPF9gCb4=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5650.namprd11.prod.outlook.com (2603:10b6:5:35a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Thu, 27 May
 2021 03:24:22 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::9464:7496:86c9:5807]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::9464:7496:86c9:5807%5]) with mapi id 15.20.4150.027; Thu, 27 May 2021
 03:24:22 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: relax 2big checking around initial
 fb
Thread-Index: AQHXUi2QYWFE76dOd0CAZfOJORQQuar2qZAA
Date: Thu, 27 May 2021 03:24:22 +0000
Message-ID: <CO6PR11MB5651450D64E3293314ED399EA3239@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210526124901.245689-1-matthew.auld@intel.com>
In-Reply-To: <20210526124901.245689-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.11.136]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b1bceb7f-c874-4de7-93a7-08d920beebef
x-ms-traffictypediagnostic: CO6PR11MB5650:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB5650EBD7A4DCF2D178A62330A3239@CO6PR11MB5650.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dkzqyyq2zgQuEPpYLCDLBgAIEtEXHJQ0wSVlfohQLZfR+6V75CsyR+7hxa/xFm9ei1/Y1hu5W7lmtnWz4SwDbYadzdcnG+jjpgGHlR//w5aUe54dxZu6XsYY5ENQ14avw7dla1WoeOgotz0DO2D72eDWUYz8JzeoyiTM8tYS5zXkEy9wUJS7DhT1ttAo1Uy0WUiwLUlynrKVBOBYCoJox772zVKee2j8/fI+50NYugwN0NPR5IodkQLR2EJCz3PCt2uGYhZl9s8HqsRabNtS8f/M+O+rimda9dmbXaTsQsScscwRbnKDhDaJhlCwp0K0yxe0+8ltojaylMJgkdhJZUoLiFRgsRHLs3iZdj68s4JATcL9OVJMUfj+1FaTcSAJSprUw9xyJ4JOpDb2kO76VBA0foUKwMlFGB+437+Ld98GQ7Jx3EpDxR0t1BmxQtcr6ezY28+D34wte/3MrGConSlq4f1qVo9ARALWoWywOIRB0ASSrMA7yF2oO60zSXaTfv9isiE4Ba8iZiEkVCBDbY80/WZqv+9NpAVi6TZXJOHQLVIbcKrc+cCr39HdWhfyklyL65hJJ8pJO3gSLlGSkxoXGE08XdW9ydZT/PglaOo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(346002)(396003)(39860400002)(136003)(71200400001)(5660300002)(55236004)(52536014)(2906002)(8676002)(7696005)(83380400001)(6506007)(478600001)(66574015)(316002)(8796002)(9686003)(26005)(33656002)(186003)(4326008)(8936002)(76116006)(66946007)(86362001)(122000001)(64756008)(55016002)(38100700002)(66476007)(110136005)(54906003)(66446008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?XYds/Ig6f/gm4q8sMvM3Moc3Eb9YUKaDSp0Sq9Tl1BVl7VroI+3wTyeufK?=
 =?iso-8859-1?Q?kEoi2HaBZTBO9ospWbfSlxOrkWCJCKr4LMNDUhmFrcDyhCucBLiXaFpbIy?=
 =?iso-8859-1?Q?orYFZuZqGD+HFshTpeP9/a8qW39buminpZiXeUKQu5In4c8PglXwGkmhwa?=
 =?iso-8859-1?Q?xellVPJPULHoags/o7+4KTzwaq3Q+GTR3TNXPvS3X/aSu7X6GMD3XPC9gn?=
 =?iso-8859-1?Q?Ivexjcp5JAhzNE19NaMC4fvidn9mfFyX7IylbcrVFRWdFPnLjdqKHCRCGx?=
 =?iso-8859-1?Q?j7BV5iZTPmnyuTvDRHbQ4fyXYVCaewttX9SKFyFKt5s6fThNUMI8Hqq/iI?=
 =?iso-8859-1?Q?Dwka2vc7szXEybL9jvpaHxq0APxrCK5fuyhHqHMurYK+0QgD6ZQCyRmjBB?=
 =?iso-8859-1?Q?We88wAYtz2xFOLeRaTLTMLFgfSQUhyxq8PlnysE3M8KjzWqTsMyekva15U?=
 =?iso-8859-1?Q?guTAspQwj11U1mIdB2D047MfjXRHWAXTO3GyNayd3jA0dBZ7Z64P+Q/2dV?=
 =?iso-8859-1?Q?x9WFAg5+ztQrzcHYFcaJVapd1qE8IZie2I/jOjTSFg/KXRa9PhlREasmJv?=
 =?iso-8859-1?Q?Zx8fWlV8dJNmZ0DiKAzwjSDb0fynQyg73osNUuQylcB0tk06NW7haJkpJU?=
 =?iso-8859-1?Q?82k3O3+TSmhBvt3FHkRN1o1fY6cxUXUo9hZTfAh+pq9kGQfNHKh1qevWp5?=
 =?iso-8859-1?Q?QoPLJrJrSZqOiooFlq0n2u5hi6Od6v3dUFfbdR2Y5FWFy60DetTSeRpOyu?=
 =?iso-8859-1?Q?cGXXqvjbXMm+OGHfixr2eBha1z5b9gS7BVJbPartUlLPfkOAOsZL/aZE4j?=
 =?iso-8859-1?Q?Gj1lx+rtpl0eJAR6JIvPrk0NBb0Bh0gs1ZCq0d3tWqfk0zRYYPNEzDS+Im?=
 =?iso-8859-1?Q?hGLHcp6Mvpc8YMwlK0rmyJbDkpb1kb3i7S2CKqZrFp07vxoDaymsgHHkh6?=
 =?iso-8859-1?Q?V03kyXQtBr86PBG0ulQMKuEDl8Il1Va7gdddA+BfGluSnlnLLF+y1IwEWL?=
 =?iso-8859-1?Q?mHGFdayxCyWLBCKC8Omomnnh66Uu/WGHH3AOyvsDc4+mTbsWBkvQm5BD/s?=
 =?iso-8859-1?Q?nJ7Tqjt1CB27w+O2msYrEMoMLcsuPFbd+X73/ZwfzQXJ0uhDSj18D4ojOY?=
 =?iso-8859-1?Q?X9XYh8zhg4ZnLg9vO1Ko9cAZAHJRvJ/YtELR/DsFKfQlAq7Jkap7VoA16z?=
 =?iso-8859-1?Q?2aVCWIzWF84gUOvCiyD7GjpXlfu9aRjjl7vJs9n0WkwRHfShl9d0DVoEur?=
 =?iso-8859-1?Q?EnQX/WgkomYCTfjgCRy+AMDj59hYwd56qX8llxVnNJWeDfZ7G5JY0Sc7uT?=
 =?iso-8859-1?Q?NHF/u/S7P5vPR5teLg86Ie0wM71mk03QTEEUVW1urgppBcdmRp8TwK1kzs?=
 =?iso-8859-1?Q?2dBozkxE15?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1bceb7f-c874-4de7-93a7-08d920beebef
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2021 03:24:22.2374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XR/njTUaRfcROfrpblXnRteXLH62n0bWRZtUP3OsI5hi4E7bEjTtHSvH0G6hhfxW6OaLYFsYbLJA8q/16ekjNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5650
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: relax 2big checking
 around initial fb
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
Reply-To: "20210526124901.245689-1-matthew.auld@intel.com"
 <20210526124901.245689-1-matthew.auld@intel.com>
Cc: "Vetter,
 Daniel" <daniel.vetter@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 May 2021 at 12:49 p.m, Matthew Auld <matthew.auld@intel.com> wro=
te:

>From: Chris Wilson <chris@chris-wilson.co.uk>
>
>The kernel prefers enabling fbc over the initial fb, since this leads to a=
ctual runtime power savings, so if the initial fb is deemed too big using s=
ome heuristic, then we simply skip allocating stolen for it.
>However if the kernel is not configured with fbcon then it should be possi=
ble to relax this, since unlike with fbcon the display server shouldn't pre=
serve it when later replacing it, and so we should be able to re-use the st=
olen memory for fbc and friends. This patch is reported to fix some flicker=
 seen during boot splash on some devices.
>
>v2: s/FRAMEBUFFER_CONSOLE/CONFIG_FRAMEBUFFER_CONSOLE
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Cc: Lee Shawn C <shawn.c.lee@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Daniel Vetter <daniel.vetter@intel.com>
>Reviewed-by: Imre Deak <imre.deak@intel.com>

Verify on my DUT and no flicker issue seen during boot splash. Thanks!

>---
> drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 0bb2e582c87f..db97a92dc84e 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1690,7 +1690,8 @@ initial_plane_vma(struct drm_i915_private *i915,
> 	 * important and we should probably use that space with FBC or other
> 	 * features.
> 	 */
>-	if (size * 2 > i915->stolen_usable_size)
>+	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
>+	    size * 2 > i915->stolen_usable_size)
> 		return NULL;
> =

> 	obj =3D i915_gem_object_create_stolen_for_preallocated(i915, base, size);
>--
>2.26.3
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
