Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020F155453F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 12:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C811810EB53;
	Wed, 22 Jun 2022 10:23:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0046010EB53
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 10:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655893394; x=1687429394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=Sx79uvY62DkZkSjlbxQWUV95BoVmXzZ5eCnjO5fu28c=;
 b=LB+gUe6OcA7MsJ0v8s9IPC8uE3PwARtmTDtOnqpVP2AoyOGOfkEiqxVO
 /p1g5Dh0vr4Z3+gu5iQudWXH3Y2af6er+OUkkqDALwgDd85L2MkvQFSs+
 1bC+EXnfbSJm53uNzJ/ndI9PiH6LZvYeLuoP+2tSj+cJ3AyyiwlWOAh4N
 FSGKhhZcRi9MkTDTRdEppTQ4h2wYHDNT+bTgZ6UkWv/+3Mudku2TZG1Ia
 zOwNsEuCRF+z0/eSNN7Fa6esiQHYM3E7NxqcS9YG2tDUouG6aeGKMIJdu
 H29CNXAGWUlwVZsiR2HmlT27NliN6y9A7xUnGW/leIg0x2p6qr0Odi249 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="277926609"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="277926609"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:23:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="764835053"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 22 Jun 2022 03:23:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 03:23:13 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 03:23:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 03:23:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 03:23:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8FKiJ/xitfYgLsUOLenwhV5ozFJLF/xNMbiLR6j6vlTglX+y+oXm23Y2K/gyhu1NOBaTOE4coAm7+thrB7bDsmSrfDAx5zvMFwJvvkjwnPor3ceYC+ROwsOCb1uDyuNhEy4jAQ8287zuPeDDtARi1uaO7ykPJ6hyZNOBqZb9nrltLwibY4lkjnsteTlrM/R/Xspr+yg85DEBuLO9EbuJYrZaNhvHMOo8lelAOdYpyd1KMjP6KaXmIOjkRDvnniNKcGkzrcTjk1I5frquM0rLiFKomnkOn1ATiTdh/Z3I86QYuBvn1I1qjS5fKjpC9bvpXCKTGo0zaa3aFFZiJQPYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6lEERM70AVdqWlj+m4tmwMhIJfj2xTUsyhjKFgYe5E=;
 b=L+WAMMy5po2gL4Ulng+iSy4kZwv1/lnp9DzVqB4V/bvvEIQkec7dfUkllE3NxxiMXDkYsbYVKOZNKS/vuFYTVERlf2Hc7EG1AfSaeS9tjyBncVUOgSjOo3oohJZ37tfbYj+F1nBtcIH26cuewmqKQmJWBE8FxbRJwh1pSD8D+khHRRz5GV0eBUPnt1/9+wngpntYRzx8gF+YQcW7+BwxWATHHHOcEJTyd8VtWkdM+I9Nb2+RCeXX1wYb9iwwK/7LPkachNKgUWzJdXWiHDY4zEvczOp1N0e3L+0K9HiF6KwOQYOCO0bsyOXJItpf9MNL8srB6XhbWavhI+arb4D/Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com (2603:10b6:a03:42a::19)
 by MN2PR11MB3680.namprd11.prod.outlook.com (2603:10b6:208:f3::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.15; Wed, 22 Jun
 2022 10:23:11 +0000
Received: from SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::e417:840c:8c39:3668]) by SJ0PR11MB5894.namprd11.prod.outlook.com
 ([fe80::e417:840c:8c39:3668%7]) with mapi id 15.20.5353.015; Wed, 22 Jun 2022
 10:23:11 +0000
From: "Tseng, William" <william.tseng@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5] drm/i915/dsi: add payload receiving code
Thread-Index: AQHYhIQiG7+PhxUQg0ibQEsjX9vA661ZpOAAgAGVL5A=
Date: Wed, 22 Jun 2022 10:23:11 +0000
Message-ID: <SJ0PR11MB5894E673926D9FAAAD866B73F1B29@SJ0PR11MB5894.namprd11.prod.outlook.com>
References: <20220620075720.23274-1-william.tseng@intel.com>
 <20220620085934.25237-1-william.tseng@intel.com> <87ilous4zb.fsf@intel.com>
In-Reply-To: <87ilous4zb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3dc4e35-d44d-407e-171e-08da54393554
x-ms-traffictypediagnostic: MN2PR11MB3680:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB3680B0552ED03AD6DF3A1091F1B29@MN2PR11MB3680.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OGY8xyC7gben43QkxkTeBvv2MAFFnTtomwMcG5xRt1dFN9Iq3rdb+mX5+iOTAC7NS9MAqHeg1Dg6thaYaNX6W2ips6YinTfAnoz7iLdmBzIHJ14MyBiqVFL8qQ3gARYbcW/kFyWMm7h74qiX8EEI5WETPpnlpRcYlqTlnweHFr840j5Xu7CFFi1u1L4DILhlQdFoh9msD3X1d/1qCWyXXx8rf//TNnYTN6sXSVvUzseGv56QIu8fSp5W4DrDMO1qmH08B6ACsHrqVaB4yqlpVoUTrPsmd75Nyg2M3qFAdo/SIXBsNTPHs84dfR5pM2iACaFoL8vz8ppfyIPj5wk0H7g1B8cYP+Zj8iHVYNaWyLJrTkSUxPS0aV2GD0sd8X38v32I0DnKvUjbgDwvfPiBhDZKCSDCo9/26fWyklRpR/4qCsD5XC204JKELdaFzCR9/lENVtXw1b0CnkDEW4soqxWCG7ikPymCjinM2/IjiS0MDT5h5yKeH8UUaK6cQVhW62arxlOo9im4RBl704CV/hcsQbqNaE80j8pZLO1CM2xq523Tf1pJKLCPyeBfX1NCMfkOejE7XmCeweGq/762RkNMY6T1+eoo8JQ+HbjR5R7BmMiKZZbURkuWnqQhT/NY8CL8ObDy8lHey9EpKkzGMElPulGkhD3+/R6fPvMcI5RXRUqBRsRz4AKDwVFVhrhxpcDi6+7HH/evyntuAL5fw8Sil1SesrLyfthPmRyQfqQm9krlT3IeKkcl7esggwodl0A1lonHsyxFs+InXDSy3A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5894.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(136003)(39860400002)(396003)(366004)(33656002)(38100700002)(5660300002)(86362001)(52536014)(2906002)(38070700005)(122000001)(82960400001)(26005)(8796002)(478600001)(316002)(66476007)(66556008)(53546011)(8936002)(55016003)(8676002)(66574015)(71200400001)(4326008)(66446008)(110136005)(7696005)(6506007)(83380400001)(9686003)(186003)(54906003)(64756008)(41300700001)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?0/nUkVOv7UVMhngdo95+JgSfxbsUEsHcFdHQGgROEma+F5xViolU5fWADD?=
 =?iso-8859-1?Q?hPZqRLg7HjeygVHPDWrQ1GkBMMDEhvYvm4L/UEWFx2V1ZfPhST0OAlUOOA?=
 =?iso-8859-1?Q?6mO22xidEpHQyQzKXSe7K/oEq3c4US6eMudfHErGxp4Y4PAf9VqConC5cF?=
 =?iso-8859-1?Q?5P2/QUSwc1RhzXqzvUHf0yexDwtoCOI85CcGct7TvOid7FMbexabxYZE30?=
 =?iso-8859-1?Q?5es2633G+qBRpUZlx7FyHnHulqjh41+jbLkZuL8cNeKaEyI13iiC3l7caC?=
 =?iso-8859-1?Q?dVPaCDFOyKwW1nEOLQPlZ/tA3GlxnvPv31wRl5+AoaqWuleSXhfVCExI6l?=
 =?iso-8859-1?Q?tQpnrFer++j+taB0ThIeGkcUGBk711fhkjG8mZgJXypLD5OesDtcyQCw2k?=
 =?iso-8859-1?Q?8+tCVJfcQwH/UglkZxXMxuAwhrBBTLwudmwmgH7k6NDIZNpTLvEovexII6?=
 =?iso-8859-1?Q?ozcy2C5o7nwZSSwY6MAVwRB5mfyRvxI08loKYsTWY3fCdG2TA15G/5OTOK?=
 =?iso-8859-1?Q?RrYZusagaPOT0dwDRqpA5ZYxWhNoQjCIK6WKMzp0uAZS445xhBFbzz16u9?=
 =?iso-8859-1?Q?IxOzH/cs/fzwDELOA2v+P0Dt8YPIM2mvvbvUVMqeRTV3n/H9PZKuetxCsZ?=
 =?iso-8859-1?Q?/H+kGVRXRPjxrAgdW1J+mID0PnS7rr09h+CvYvujSEqS+/88Uue/0XAnbw?=
 =?iso-8859-1?Q?63Qjvft7dOsjGpl08B8nHyWd+2pyg2pBNUozbYsrtpBXq0Z25+xUaWShYU?=
 =?iso-8859-1?Q?OB3rDRTZdY82nwRDVnzkXEkhTWf6tOeH5kndICrFZa/Xhz6h9+W2i74RMt?=
 =?iso-8859-1?Q?YeKRlG6n/xQVG7pIioLdD/YyezMWzxv0bGSItVWXmXukDS1+NS+A1ysYJa?=
 =?iso-8859-1?Q?eqVTIi/LOGwv8GjxmsSp5N0MT/mNYOUhvTdnLitMdwaV63W+dp7/ZMsWaw?=
 =?iso-8859-1?Q?W/L7wmMnZQbbFugaWCqQeNWn+3jq5QMxkD8WoCKKGCHMz1WWBx0NXYnm8V?=
 =?iso-8859-1?Q?l8QNMsBnu3m7tlnf7KTkleqYIBqW1Ll9aDWkfDk1fTZi+h2WP99nHWWGVP?=
 =?iso-8859-1?Q?tO3XYcg/EwZH1QbA6ZnRZKcj7l5E4768FGO40Pk6SAVBdeRtYnem32IoBY?=
 =?iso-8859-1?Q?7NZxuC1BR+XHqia7Uv+djUq5zUC/i8bKBavLT1JEbUG1+shtIknoGgB8vq?=
 =?iso-8859-1?Q?p3+3Yxgdiy0rhiYXemWQg7ja1Lfyrk6bdaBelkzuAsDwQau6Y/baRIqDTJ?=
 =?iso-8859-1?Q?xTigNUfEQOFlsvm9pxbieCC1fOUhxCW/UAyy6HYyMQEqfcZ9mDTqhik3AU?=
 =?iso-8859-1?Q?tnCQIj2NL4uJv/BDEMgEFCYpEgvh5ZrrRNTIcNwmkXCP5jJfDk9rQOPNhz?=
 =?iso-8859-1?Q?2TNLPG+7LjUkiGTlPxfm8jrgdw7wxzloSFRGIKrPX06x7adWwfWCkYjh+/?=
 =?iso-8859-1?Q?T1s4zNHErjo3s5Mz6s4BYVEzg7UyUtJVNCijbNlkuCh42KO0xQkoO5NoD4?=
 =?iso-8859-1?Q?UBuubK+NIo0qJRWIbCoopksDLtOr/JGKTrIwTPZmqr8IEXEu3TFLS0+f92?=
 =?iso-8859-1?Q?SraeEbcyZ4yFzLi4Trha+t4Xigs7qaqkpOlepkIQKf7KIWylfJxVWw+fCk?=
 =?iso-8859-1?Q?ATPNo+AJ01yC2PtQfznpD9qZ/javEqCrpdF2r9vJM1aJRhYG2zbZ3UNcai?=
 =?iso-8859-1?Q?dZxuj8xLMBgeBgXvVoJq+9JNlqA9k+yLTqt+cG3AiclOl4z7NerdgRJLSx?=
 =?iso-8859-1?Q?OnbjUAS+iulFuj/rngmgfa4ZtFmrH2IgO6VRRW5MBUn7jhUAJR/+Igw1Ps?=
 =?iso-8859-1?Q?7MAT1GDBWg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5894.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3dc4e35-d44d-407e-171e-08da54393554
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 10:23:11.0763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d3snAFisVWR2KU9JCspBMG2lKm/Hz2foxnyZbJUpIxNanMTTGyRmGjdzUJEJdaqpKvD58suE5iZRuQGgXYZ0JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3680
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/dsi: add payload receiving code
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
Reply-To: "20220620085934.25237-1-william.tseng@intel.com"
 <20220620085934.25237-1-william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Great.  Thanks Jani for the comments.
I will update the patch based on your comments and submit a new version aga=
in.

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Tuesday, June 21, 2022 6:09 PM
To: Tseng, William <william.tseng@intel.com>; intel-gfx@lists.freedesktop.o=
rg
Cc: Tseng, William <william.tseng@intel.com>; Ville Syrj=E4l=E4 <ville.syrj=
ala@linux.intel.com>; Kulkarni, Vandita <vandita.kulkarni@intel.com>; Lee, =
Shawn C <shawn.c.lee@intel.com>
Subject: Re: [PATCH v5] drm/i915/dsi: add payload receiving code

On Mon, 20 Jun 2022, William Tseng <william.tseng@intel.com> wrote:
> To support Host to read data from Peripheral after a DCS read command=20
> is sent over DSI.

So the spec isn't all that clear on all the small details here. Since this =
pretty much doesn't interfere with other code, I'll put more weight on test=
 results. If it works, great. If not, needs more work.

Currently we don't have a device in CI that would use this; we need a Teste=
d-by from whoever has a device.

Detailed comments inline.

>
> v1: initial version.
> v2:
> - adding error message when failing to place BTA.
> - returning byte number instead of 0 for the read function=20
> dsi_read_pkt_payld().
> v3: fixing coding style warning.
> v4:
> - correcting the data type of returning data for the read function=20
> dsi_read_pkt_payld().
> v5: adding change history as part of commit messages.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c      | 75 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/icl_dsi_regs.h | 13 ++++
>  2 files changed, 83 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c=20
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 19bf717fd4cb..b2aa3c7902f3 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -201,6 +201,69 @@ static int dsi_send_pkt_hdr(struct intel_dsi_host *h=
ost,
>  	return 0;
>  }
> =20
> +static int dsi_read_pkt_payld(struct intel_dsi_host *host,
> +			      u8 *rx_buf, size_t rx_len)
> +{
> +	struct intel_dsi *intel_dsi =3D host->intel_dsi;
> +	struct drm_i915_private *dev_priv =3D to_i915(intel_dsi->base.base.dev)=
;
> +	enum transcoder dsi_trans =3D dsi_port_to_transcoder(host->port);
> +	u32 tmp, /*hdr_data, */payld_data;

Please drop the commented out stuff.

> +	u32 payld_dw;
> +	size_t payld_read;
> +	u8 i;

Please use int for loop variables.

> +
> +	/* step2: place a BTA reque */
> +	/* check if header credit available */
> +	if (!wait_for_header_credits(dev_priv, dsi_trans, 1)) {
> +		drm_err(&dev_priv->drm, "not ready to recive payload\n");
> +		return -EBUSY;
> +	}
> +
> +	/* place BTA request */
> +	tmp =3D intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));
> +	tmp |=3D LINK_BTA;
> +	intel_de_write(dev_priv, DSI_LP_MSG(dsi_trans), tmp);

Please use intel_de_rmw() for read-modify-write. Ditto below.

> +
> +	tmp =3D intel_de_read(dev_priv, DSI_LP_MSG(dsi_trans));

Please use intel_de_posting_read() for posting reads. Ditto below.

> +
> +	/* step2a:  */
> +	/* step2ai: set Turn-Around Timeout */
> +	tmp =3D intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
> +	tmp &=3D ~TA_TIMEOUT_VALUE_MASK;
> +	tmp |=3D TA_TIMEOUT_VALUE(intel_dsi->turn_arnd_val);
> +	intel_de_write(dev_priv, DSI_TA_TO(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_TA_TO(dsi_trans));
> +
> +	/* step2aii: set maximum allowed time */
> +	tmp =3D intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));
> +	tmp &=3D ~LPRX_TIMEOUT_VALUE_MASK;
> +	tmp |=3D LPRX_TIMEOUT_VALUE(intel_dsi->lp_rx_timeout);
> +	intel_de_write(dev_priv, DSI_LPRX_HOST_TO(dsi_trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_LPRX_HOST_TO(dsi_trans));

Bspec 20597 says, "Prior to this SW should have set up the following", mean=
ing the above should happen before DSI_LP_MSG update.

I think the whole BTA stuff should be split out to a separate function, kee=
ping the actual payload receive very clean, similar to dsi_send_pkt_payld()=
.

> +
> +	/* step4a: wait and read payload */
> +	if (wait_for_us(((intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans)) &
> +		NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIFT) > 0, 100000)) {
> +		drm_err(&dev_priv->drm, "DSI fails to receive payload\n");
> +		return -EBUSY;
> +	}
> +
> +	tmp =3D intel_de_read(dev_priv, DSI_CMD_RXCTL(dsi_trans));
> +	payld_dw =3D (tmp & NUMBER_RX_PLOAD_DW_MASK) >> NUMBER_RX_PLOAD_DW_SHIF=
T;
> +	payld_read =3D min(rx_len, (size_t)(4 * payld_dw));
> +
> +	for (i =3D 0; i < payld_read; i++) {
> +		if ((i % 4) =3D=3D 0)
> +			payld_data =3D intel_de_read(dev_priv, DSI_CMD_RXPYLD(dsi_trans));

Might be prudent to explicitly clear the READ_UNLOADS_DW bit of DSI_CMD_RXC=
TL beforehand.

> +
> +		*(rx_buf + i) =3D (payld_data >> (8 * (i % 4))) & 0xff;
> +	}

Please use similar loop as in dsi_send_pkt_payld(). It's confusing to have =
one (i =3D 0; i < len; i +=3D 4) handling bytes within, while the other is =
(i =3D 0; i < payld_read; i++) handling dwords within. Same for using (*rx_=
buf + i) instead of *data++.

> +
> +	return (int)payld_read;
> +}
> +
>  void icl_dsi_frame_update(struct intel_crtc_state *crtc_state)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1078,8 +1141,8 @@ static void gen11_dsi_setup_timeouts(struct intel_e=
ncoder *encoder,
>  	mul =3D 8 * 1000000;
>  	hs_tx_timeout =3D DIV_ROUND_UP(intel_dsi->hs_tx_timeout * mul,
>  				     divisor);
> -	lp_rx_timeout =3D DIV_ROUND_UP(intel_dsi->lp_rx_timeout * mul, divisor)=
;
> -	ta_timeout =3D DIV_ROUND_UP(intel_dsi->turn_arnd_val * mul, divisor);
> +	lp_rx_timeout =3D intel_dsi->lp_rx_timeout;
> +	ta_timeout =3D intel_dsi->turn_arnd_val;

This is an unrelated change that needs to be a separate patch.

> =20
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		dsi_trans =3D dsi_port_to_transcoder(port); @@ -1837,9 +1900,11 @@=20
> static ssize_t gen11_dsi_host_transfer(struct mipi_dsi_host *host,
>  	if (ret < 0)
>  		return ret;
> =20
> -	//TODO: add payload receive code if needed
> -
> -	ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
> +	/* add payload receive code if needed */

Just drop the comment altogether.

> +	if (msg->rx_buf && msg->rx_len > 0)

It should probably be an error to have rx_len > 0 && !rx_buf.

> +		ret =3D dsi_read_pkt_payld(intel_dsi_host, msg->rx_buf, msg->rx_len);
> +	else
> +		ret =3D sizeof(dsi_pkt.header) + dsi_pkt.payload_length;
> =20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h=20
> b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> index f78f28b8dd94..a77a49b42d60 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> +++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
> @@ -251,6 +251,18 @@
>  #define  NUMBER_RX_PLOAD_DW_MASK	(0xff << 0)
>  #define  NUMBER_RX_PLOAD_DW_SHIFT	0
> =20
> +#define _DSI_CMD_RXHDR_0		0x6b0e0
> +#define _DSI_CMD_RXHDR_1		0x6b8e0
> +#define DSI_CMD_RXHDR(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXHDR_0,\
> +						  _DSI_CMD_RXHDR_1)
> +
> +#define _DSI_CMD_RXPYLD_0		0x6b0e4
> +#define _DSI_CMD_RXPYLD_1		0x6b8e4
> +#define DSI_CMD_RXPYLD(tc)		_MMIO_DSI(tc,	\
> +						  _DSI_CMD_RXPYLD_0,\
> +						  _DSI_CMD_RXPYLD_1)
> +
>  #define _DSI_CMD_TXCTL_0		0x6b0d0
>  #define _DSI_CMD_TXCTL_1		0x6b8d0
>  #define DSI_CMD_TXCTL(tc)		_MMIO_DSI(tc,	\
> @@ -294,6 +306,7 @@
>  #define  LPTX_IN_PROGRESS		(1 << 17)
>  #define  LINK_IN_ULPS			(1 << 16)
>  #define  LINK_ULPS_TYPE_LP11		(1 << 8)
> +#define  LINK_BTA			(1 << 1)
>  #define  LINK_ENTER_ULPS		(1 << 0)
> =20
>  /* DSI timeout registers */

--
Jani Nikula, Intel Open Source Graphics Center
