Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A0F59B801
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 05:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E6B113859;
	Mon, 22 Aug 2022 03:36:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D96512AAFE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 03:36:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661139396; x=1692675396;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7FFgdKcMRfMFHfAyzDhhfBofRU2Vq9nMek0NXWdgdeA=;
 b=a3t0Fjaje/BYy5hp2dfUbX4c8B0bntBqBM4RidDipuA1yprTsj+BePOx
 JOo3f2GC7ZxrUzjx+Jgn97OffgO1nikEXPL0+XBBnzkGTfbrGhP7VjEd/
 arJIZvcC/17bbo3FsVBNhcIJVvtfLAkZlom2ysjk6scwo9JVr+AwUSIg0
 DtDZkf39XsM5iGqdjLu6yhPDmfXcth2h1aKE3/+ro7Qd5V5SHusCbnuF7
 LTIRg3Ls5plP/Kl093NIyEo3vcZIOvEgf2jRQRRixhkrWi5906Hw6Fq8q
 2cDcOrB5giv0SIYII3Wu5GbhgaOTOANqpBKVOfCpAFoMZqbsb9ul/pIa1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="290868011"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="290868011"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 20:36:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="784711640"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 21 Aug 2022 20:36:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 20:36:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 20:36:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 21 Aug 2022 20:36:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZQyTB0TFZCEEZDj1hLulKgQIM5ogUYBafn+/v1RIEUBViIpb+7UGz8nzYME9pl1Ijex2DzBfKyc1Mk87OUeqaqd46Mk3tiovllZnyfmRat9N4nuVxG9Z3G1l0IrfsMh2omRCIdof4wnxRE2vFz/34ma1Yb5iRyPngcLl3wE1YICbSlqDOONy4+jdgw28f/AFGlXjz3EcWq/eMHIbTpY/5yovVB9fNYFUrjzwVw81M4+Vkk85t+I13nRpmfftnzyK7Dib0I497S0q4YxZfFsEcPfAgb/XBnZHQSRcJ0e4/NhgiAghAdq4T1i5WBUTIiajq/ISNljokjHkt4/uECxT0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8+H8xuGDKeVi4XtkKXbGzYJHn6zmX2YI29EhntLSquw=;
 b=haw/o/bb8ob7rqO0/8KTJ0hdZw4MbgI/BQ6KgvTRyaWT3YGc8fFVW9ZwweuLBu4MwHJQowL0M+vjQkOH6ugQbkLlX8bvuvrCR73IJszAhfxetmoxCdnBaNM2Bcj+njYFkhZa/3M9YipHV9fyykkjsVo1O6WWmzVB+3dpfYDl56JbuW5NunXzUmkBMRa3Lmzj1lBmTP5j61j7EkxSilPVUt+n0zslq+kOdHe0GBH6wmYuFUS1cufWSUfgczHLlE0pUHAQ4P00ujIgs+kBcLeuofF+WgiJz/9eBN73sEhMyTXyzAdKr83X+3yJ2xjNyGc3dotSKPg6NzmRjFK05YWGaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SJ0PR11MB4958.namprd11.prod.outlook.com (2603:10b6:a03:2ae::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Mon, 22 Aug
 2022 03:36:32 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 03:36:32 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYj8Fkt9meJM7X2US4ugUo7v9Xka26kRqg
Date: Mon, 22 Aug 2022 03:36:32 +0000
Message-ID: <DM6PR11MB3177625A07FE6136B685CBC2BA719@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
In-Reply-To: <20220704161548.1343042-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c8abb19-0b3c-4073-0803-08da83ef81a0
x-ms-traffictypediagnostic: SJ0PR11MB4958:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t0pwicO7B78OYFxyzAUiOg6wqIAExbeazTk/VWOcHSleVSb4Hpv89LAmNRab09x0ipHmkwNKDnFK2iXdmiDu0p2XTkPikyV5BOvjb/M1n9u0JLiWEw1KwR65Oo5oOIxcVwHCh4yoyP3H8qgLjnrOtxOx/DVufGNjH+nE85xtu1S8VCTjrlc9UgGqh76NoEVLQOspwafynMjyse0F5XOMcMwK6jZHxpSA4cM06BEw0bE1owPOhScwHB8Vz7og1fzVfP0Q+erjNiSA8wfJlCdW8lAiedbizyYnHzNTTPX5+id6rM49gnt0zB7RUctR6bXpGsj+7nkHZfniCvvxfxOFxszcrSiI6ReS/Ho3/QEftKouoqj9fhSwFynkA3rFj3gV1ukQkXr3p+UHQFSlw6ZJcZ07THa+e9EK49GYyWV5Vujxu+f5xUBCXh32ldZ899bs7h5qFiuaAUqJZEYafdUeIA0c2b/nzfmGA+t1eRZhOoFYPVH4lzv9nlPPPTyndGvR79Nu04XHgM+WI7kb5UZCCJb+NZk71vLCZ5Zdan2AYQvWC9BvH4quWPvFYP8vDu0v7O76gbOqavLhwSQ653j1ajnSqE7lqUumDqXr5ntlTWiDmJv1bVPlJzvXRZf3zJk9gl4mRBr0S062LzhSb46/VDv4+YpEnBpCn3X25OwxxHG8Vo4txrt9rsTKpSDAAZ/2x7ARtxi+kSPIWc/RrHyoWPz2JZwn5FM9BoauQ8enNbmZoC8jiE1pyYHeAyoMKupZ0+1P+3Wg2sPutS7wj8XF3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(346002)(376002)(136003)(396003)(55016003)(38100700002)(38070700005)(83380400001)(66556008)(64756008)(66476007)(66446008)(76116006)(54906003)(71200400001)(316002)(4326008)(6916009)(66946007)(8676002)(9686003)(26005)(33656002)(2906002)(6506007)(7696005)(86362001)(5660300002)(55236004)(53546011)(186003)(82960400001)(41300700001)(478600001)(52536014)(122000001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qOYOKgjrjoCg5AwrQlHGzRGwqIhdxzxbHHsgHjWui6Xa3SghSvHpicVyJ6uD?=
 =?us-ascii?Q?+HDU7ftRUDAWOj5mriDGPuvPlMPDnkm9Suest/G4bED1c8ASIjcRBtxuo8CP?=
 =?us-ascii?Q?dY4wwkMVdC8XNmCtprjQa2UonK+Ftgv6Upsbm5trsdUHzrWodre27ShjuHfy?=
 =?us-ascii?Q?ltZJa0P7TNPZt6jTBNpplJ0ke558KXP3rYbqZE4smxieCqU0a1WlitK699ud?=
 =?us-ascii?Q?OX1IqLPxUOfJ6IVnp4+U5H9bCcieYachUcT1xmQJyarAjXeQ/YK70sLnu8Wr?=
 =?us-ascii?Q?XZqSv2DSJCcc98opAZeLesTV2y7Cit8r0/2TJXqUV4DibxAhbIQusrt17MwP?=
 =?us-ascii?Q?Z6yIgauKJuHS2bwHOK7dafQEAN87QGxWUpIiz3K4OOaIAyLLhIFZVmZ5LbhY?=
 =?us-ascii?Q?2EoqGnO6JMQhYAWREhvRioUAlh8UGKXE21mKSUF0xSocTmlKvL+Bh1AaE7p8?=
 =?us-ascii?Q?9l5q4jTTZ3wdBRu+dj0qEwix0FZqA5KP+ADbMvokbJw6UVBQoT/jspvwUqpK?=
 =?us-ascii?Q?63F6FW+Y1C3274BZKq32TX3tBosbW9kZSjpDPdCX85KEZNDVSpJrJybb3kET?=
 =?us-ascii?Q?yFB9xCr3oXmP4QvOZYTCNOTCanVnvsmWqQbvLEZWs35s/x3XWA/Q7UvG1Gwq?=
 =?us-ascii?Q?vagsrzg4QvtVKy47i7t31yDKmATiP9cd8QGRNe7HQHG91ERTcDC7KeuKK6rP?=
 =?us-ascii?Q?zP+n061S9AwzhILLeFDwy9Yuf+X8guXA/6RvB8IGlXZHQEGdLYX8rtmWmu0L?=
 =?us-ascii?Q?w+h8AIJUzxtYiLdREjtv37xxMI87qFeUNpKWBccHGk4D0sSLzxx32Qk9EFUA?=
 =?us-ascii?Q?ajPgcq0LUFZxpaQ7SjSpxrNH6ttVNO4Dbz1vRKsHjIdFPshHZ8V8Zg4hPNJO?=
 =?us-ascii?Q?Yn74ByY2O8hc0c1QiSsSKTkCSvHWgzbgKMS9QgRUvGzJi1XxPubl+0yG9N6M?=
 =?us-ascii?Q?Xt3sB/1BwpoxzDfvz0vmNBDq7rEiL8GjVKKUPwyyoVBMIqrU+/n1PSZl9RWG?=
 =?us-ascii?Q?JiEvbT4h5AnMp3xK72xut+/b+yEJPfjuMl7eWxN5LjAZMuZpk0O4xqlkJ1fA?=
 =?us-ascii?Q?CLbCwDX2esueKenZuNudQ/5D4aQeXF36+rpazNiYqpgOujGJlxMz+6WIN93m?=
 =?us-ascii?Q?vgOMHR+za5WADQQCgGc/MDr8RlUNq4QmaHTaAbG+VGOnqLgphWvvTmbhM2R3?=
 =?us-ascii?Q?f87HL+Qp1+7qwkehHUYgnR9YqnepATj+Hd9J+hAeV4/pGiYjMW/SbP3xTiGb?=
 =?us-ascii?Q?+qwNJlAmixTeKDOM6RzYhuEGD2aniPKMpqWrE64E8H3UuGMzanFZCWzZVeZe?=
 =?us-ascii?Q?kkE6k3XvP2LYM2DIwV3hMr6zBCaw9cMgzxFSSiiVHf59/UNn2YUsDlJmesaC?=
 =?us-ascii?Q?I8s8dyGKs60oMZV/GK4OLISJ68yco/6JyCqsakGmDvC6uJGfDePcWQWOqoj6?=
 =?us-ascii?Q?jL1RgiIym9z0f5wSK/nGGrWypp9pd7Kt2KdKS8rafHMaIQVXZPKdr57/wy53?=
 =?us-ascii?Q?QRFTUbacBp0BrFTsw3IpBJPnOrEQFwMxh07vDw8AyMsbnh1BPWlxbFOaz6AI?=
 =?us-ascii?Q?M7+EYTPYppZmO2UMbPRPZD8CZw0MCmiT207AI0W2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c8abb19-0b3c-4073-0803-08da83ef81a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 03:36:32.1205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AZxdxttFzLMx0+xFn8jzfF+5QGeXBzAWmFa3GZ2HTQow0D4sLSgo6dj0AfsBkYk7Mvw6E5+xfJ0mSOVgN6XLjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4958
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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

Gentle Reminder!

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, July 4, 2022 9:46 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> Intel Gen do support Async Flip is supported on linear buffers. Since we
> didn't had a use case, it was not enabled. Now that as part of hybrid gra=
phics
> for unsupported hardware pixel formats, its being converted to linear
> memory and then flipped, hence enabling!
> This patch enables support for async on linear buffer.
>=20
> v2: added use case
> v3: enabled async on linear for pre Gen 12 as well
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index a0f84cbe974f..99ad67af74e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6614,6 +6614,7 @@ static int intel_async_flip_check_hw(struct
> intel_atomic_state *state, struct in
>  		 * this selectively if required.
>  		 */
>  		switch (new_plane_state->hw.fb->modifier) {
> +		case DRM_FORMAT_MOD_LINEAR:
>  		case I915_FORMAT_MOD_X_TILED:
>  		case I915_FORMAT_MOD_Y_TILED:
>  		case I915_FORMAT_MOD_Yf_TILED:
> --
> 2.25.1

