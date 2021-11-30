Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE674463B98
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 17:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A156E97E;
	Tue, 30 Nov 2021 16:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FA86E973
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 16:20:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="234974674"
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="234974674"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 08:20:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="559648933"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2021 08:20:25 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 08:20:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 08:20:25 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 08:20:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WM5elQe6zCaozMfkLbmUGA4MXMK10wBYC7d7MugaQiIUUNmb+0yp1915Jr7i2PtDbWQ0SF42w7BwbzcB9DWsFz6hXriSm2yo1vShb4u3d4y7uJGZ0dY8tMaLNA6pRRsHlXf4nn/JKbkBTMERt12bb8UXURBrpLMBSoA7tbmZkCRxDvuc2R18diERKg1bk0ecA2RSWkT/2eck6ILVKZpJQQXQ43HgLEZpRIuIUJ12xX5Ws/3/n4D+LeZCIJzvOtCG8YnCW4eHkgbeYqTLelqap5Nht0RV7NOjYnCXtpllQ3HJlX17/TyZAslEVEP+VDS0py7v4LKtBBQyw3+K7hBjVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HogI9+qgDbDL36+WwRJTkAgK6YnhWkQtIbmhzXGbhqc=;
 b=j1rB53zX/zGmnfMa5YGSycx93pgxy59x6uIdDkPIvCVrw1Tp8yFd8hYCrXPAgykrdTagRmPyMuMVdgNy5tHu53sVV69uO94JVXOO6cwLI6z5+tyzKdzwl+pt+OxU8y8jnDhV70WCom/f/jeiMJXxQPP8SWU02C2ckDCy/Fu3gMq/prJgJk9VUvTcN+U0/Mmq5tUDNgDtaPReJg03/S3iT40ZYPPOVXm75fn9FPWbIX6ssDjebmomzO499bQg2fUgQMP61dt1bcJwf9PUXTay4x7VOy4ZHF9GusAC/U3w/LFRRzezY3EabR3i6USNt4pWxZDIY742Y11TQdzLHzZRkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HogI9+qgDbDL36+WwRJTkAgK6YnhWkQtIbmhzXGbhqc=;
 b=mQUuc4Vzk973zEfatZ2nZDRj8HqdbOjrdW6YmJqwAlEgYCEg53p4sG7LE5QbLoDNraLyRXeL1GZoMaN6CWIMwjAhQso5Wpuj1/BHA7zY6KNqhRrxrt3ghq0LzLIswM2XjkxA1XF3v9iZS2INZdLXcGDGZ224dhTqQ86GDZWoS2s=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM6PR11MB3721.namprd11.prod.outlook.com (2603:10b6:5:142::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Tue, 30 Nov
 2021 16:20:24 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Tue, 30 Nov 2021
 16:20:24 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Reject 5k on HDR planes for planar
 fb formats
Thread-Index: AQHX3EZFJkgQXXf0PkKIv3QE6atG+6wb4VQAgABw5wA=
Date: Tue, 30 Nov 2021 16:20:23 +0000
Message-ID: <DM6PR11MB4204AE9089D150F8710B230489679@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211118062516.22535-1-vidya.srinivas@intel.com>
 <YaXvQAJKC10ehQ2q@intel.com>
In-Reply-To: <YaXvQAJKC10ehQ2q@intel.com>
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
x-ms-office365-filtering-correlation-id: 4a1941fa-f8ce-4908-b08a-08d9b41d501b
x-ms-traffictypediagnostic: DM6PR11MB3721:
x-microsoft-antispam-prvs: <DM6PR11MB3721E98BACC5249DAB8B0B4489679@DM6PR11MB3721.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZM+oDNcXAs+MSj9MKgfo+jilJtba4GRDuPoI/hrl0faNpUE7MRyQXzjgGIOHR+XoqEWg8I8sKdeZNZer7yAJDP04kmybgK4S41DHadT7qTwxvNBAM7Y2HX3XiroGufjIxlO1uTWCi9vtnMUiogbcGLIHuGRq7rgxIWLuCQdhZdQDV0sWDPp3KxxZ57Ge7PpRgsTe5P/dZcJIuFJWhjnc+gD7ZKim/4/LkqHN23ZWKCbldaYduMdw3sYdNTlV6eT1chsmV7I7G9XmLGyQCYvQ3auASEx7UOlhTZEc8uzqSSUzOfJhNa4C40tjZ7I8583UXH1AMCFUUc266R4KsdKTkp4BF4xewwpokVR2fsWHopnoTt33rz3lEvTNYpT4m5+moGuMKzSvid1JlRtV8HOJe+fhCfagxaL01kS1i4/3gMMYUyT1nfRzmCjRlpjd/5QxWbREXbeOszBCDHY8pw82FId0aSxzMWBruXJiQOOhKkysjtKyGnoGVupga3/PJsiaXKvbB4ll8JY0CSZ67qhBmuw4asC9i2Eur4auGcYMW1gKVg0Cw+0WM35RGtc1IULc+J4JSTP0GJrvOcb3toOSIbA4pbQKEr4TiKm6YPRlbHGy7MWyTmz1AYnF/DObTV9qmTiOda7nKAtCIkczU2vqOlfHwjRJWsqXIh6L2WjkKrj/90gTBdn8wYFAleTar4NY852oo56p0aySslZqdVJl4A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7696005)(6506007)(508600001)(2906002)(52536014)(64756008)(66476007)(66446008)(966005)(9686003)(54906003)(26005)(316002)(5660300002)(8936002)(38100700002)(4326008)(38070700005)(66946007)(82960400001)(8676002)(66556008)(53546011)(76116006)(6916009)(71200400001)(122000001)(86362001)(33656002)(186003)(66574015)(55016003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?gD7xKHmJF+TK6mb020pYcyKfm9Lxnvsc0bDAbiKL0LwFNJSRRQVsdScbMs?=
 =?iso-8859-1?Q?LHC5k5J6L/u7TpKD6GJViHrdD4ejZ+gAqfCYUovTXFGhN9eN+29EwNT/Rv?=
 =?iso-8859-1?Q?Y/6EFcKTU/IVGl3dcSiZCmIxrIrdvYPCjHj++d991rJackiCAp497oTExH?=
 =?iso-8859-1?Q?Mk4Q+iaUXIiZaKIDOmjvGHFhkF7+eaXq0VbO4L3o1FiDrdbQyPlUafg5HM?=
 =?iso-8859-1?Q?XVO+eFL4UlehsB48qWl2AV/zSaT5cMiW2nogJ33TD3ziet9MkJV7kMvqIr?=
 =?iso-8859-1?Q?VHsRio88EZrlsVFDz2dADGAsCvmjHku8zWH00CmEdr03x1VCpGWvOaXLF0?=
 =?iso-8859-1?Q?vWrnyuwnZw+HwPTHIBPrXR3cfQlm90GK3JID1ybn+l5yZGaaZDlKnLS+hh?=
 =?iso-8859-1?Q?OSCKWtYKxxxGgCE4kBbkDMnxUqquHzg28k2cftNFhKj5WA1f1lk3p50MBA?=
 =?iso-8859-1?Q?eqlKGwODTsle/4NCzj39kZ4gW5ls5cZ6swWASunMCJCI5GcO0bNnz3IPrP?=
 =?iso-8859-1?Q?WQTqU0v/011y9K934pTQwWsDy7Bxklt3WabVfULiEx2ivj5yewT+aJrCmu?=
 =?iso-8859-1?Q?PfBwaYmR5mo00bWsrolL+Eu5XAGKDVRcGq6iU3rMGRTcIT/Cqg+hf0k5hy?=
 =?iso-8859-1?Q?/HRHAgemfTyzYHehOmtaZ18ZxkWHSZ2qOcr4MW8YvDnRg7Px/NhIS3H0sb?=
 =?iso-8859-1?Q?2+Htkzf7Rt4ujAIdJhrSu0/0d3gVEaNDYM2iXZI6sws6q1pIuqF246fLz2?=
 =?iso-8859-1?Q?UhQeJGg8FeSeDMbyEGXEjLaLtm6uOKyNGLPPLwHS8ERwYSyhLHu4pxl0Z/?=
 =?iso-8859-1?Q?f6UcMKRht1sqzrCbLFvjHmTfyE7IMOibUldymhTfcMQ2JxRduP4nm+YNzr?=
 =?iso-8859-1?Q?znJof1gVTbahrqACWlVGS2WDpipwLkuHcahclNaczVNnMWG7hHlH8iwrRy?=
 =?iso-8859-1?Q?+zBXBHT5ICnfSWHOpfAMNdJ13jpq0r/xLR7/Cvt9MHZcGN2ybpUe7NU/TP?=
 =?iso-8859-1?Q?u8vtICQ/608Og92XrvS1X2GjSZAHuN0c/oAxXPyW6viJulb/vL3VXo33k0?=
 =?iso-8859-1?Q?Geu6VugLnhvBVtcpFOAepjvZVMMsOzzIZVmj7MNmHvZRvsUowQj4OxIiSG?=
 =?iso-8859-1?Q?27eV+v5vaweBF3Y/wrQR+av9MRQjH5X4PoBtd3rNfTcJvTIWlhhljZUeq5?=
 =?iso-8859-1?Q?evhoo8cxiNO1aHTdi9k2g6hgsOISOaSVw7tu/Hf1cpmV3/r8IaSdvAHyrC?=
 =?iso-8859-1?Q?cFIbgw+B4rhtOjpS6VhFzOLkuAUYYc+vjYhUmBlE3uFfMaMWg3udRiGbmk?=
 =?iso-8859-1?Q?R8huPlvqeFVuwmK3/xB8s1w6s8CQq1ySLCsyc4OTx8ee6WY1qfEzjthity?=
 =?iso-8859-1?Q?knBszxmkhmfSXWy0CPScWB+cjX7Rp45SFBSxmbBy6MFpa4o0Bn98xuQSDV?=
 =?iso-8859-1?Q?+RFS+uP0ptskkpBf+YouQIIXGzeChzcw3pH27f/snDsmeZnzX4AWiPjcrc?=
 =?iso-8859-1?Q?z44NqvT2jqfAey/QIJWS/J9TXYMnQI6iSJBurTv2PuVL9A1+dh9UY8J4Zs?=
 =?iso-8859-1?Q?+vJ+zy4WShx8tLEq1B1tC1SO9qpmEB1JM1HBmNcX76rAC7kgIWFF4r7fiq?=
 =?iso-8859-1?Q?MZf8AyEBrv9aFZbzFPdad+GMjL+TTkwOJgzzfGcwGs+72KK7+vTes14tTZ?=
 =?iso-8859-1?Q?NMVM1xHkz5LCe65pC2JZl2gw99My0qgnUIjx+N5/yQeTUwado+VESkUyvD?=
 =?iso-8859-1?Q?r6Qg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a1941fa-f8ce-4908-b08a-08d9b41d501b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 16:20:23.9769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4wPqOyMnklD2gIzRaRaz3BwW0tRQoHO5ocb2PNIPx5NhCkNg/SgqTztBuOj85I4DgXMgEbSaPNb9xr7ARfTNOrT6BVsSvj44tOSB56gWrVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3721
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reject 5k on HDR planes for
 planar fb formats
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
Cc: "Yashashvi, Shantam" <shantam.yashashvi@intel.com>, "Lobo,
 Melanie" <melanie.lobo@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, November 30, 2021 3:01 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> <shantam.yashashvi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reject 5k on HDR planes for pl=
anar
> fb formats
>=20
> On Thu, Nov 18, 2021 at 11:55:16AM +0530, Vidya Srinivas wrote:
> > PLANE_CUS_CTL has a restriction of 4096 width even though PLANE_SIZE
> > and scaler size registers supports max 5120.
> > Reject 5k on HDR plane for planar formats like NV12 to let the user
> > space know about it.
> >
> > Without this patch, when 5k content is sent on HDR plane with NV12
> > content, FIFO underrun is seen and screen blanks out. Issue is seen on
> > both TGL and ADL platforms.
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> > b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index 37eabeff8197..e2e52f5dca3b 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -86,6 +86,7 @@ static u16 skl_scaler_calc_phase(int sub, int scale,
> > bool chroma_cosited)  #define ICL_MAX_DST_H 4096  #define
> > SKL_MIN_YUV_420_SRC_W 16  #define SKL_MIN_YUV_420_SRC_H 16
> > +#define MAX_CUSCTL_W 4096
> >
> >  static int
> >  skl_update_scaler(struct intel_crtc_state *crtc_state, bool
> > force_detach, @@ -221,6 +222,14 @@ int skl_update_scaler_plane(struct
> intel_crtc_state *crtc_state,
> >  	bool force_detach =3D !fb || !plane_state->uapi.visible;
> >  	bool need_scaler =3D false;
> >
> > +	/* PLANE_CUS_CTL size max 4096 */
> > +	if (icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> > +	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier) &&
> > +	    (drm_rect_width(&plane_state->uapi.src) >> 16) >
> MAX_CUSCTL_W) {
> > +		DRM_ERROR("HDR chroma upsampler size exceeds
> limits\n");
> > +		return -EINVAL;
> > +	}
>=20
> Wrong place. Should go into the plane->max_width() hook. There also seems
> to be a minimum height requirement for the CUS which we're not checking
> either.
>=20
Thank you very much Ville for the patch review. Have moved the check to max=
_width.
Minimum horizontal should be 8 and vertical should be 4 - Haven't added in =
this yet.
Can you kindly have a check please https://patchwork.freedesktop.org/patch/=
464727/

Regards
Vidya

> > +
> >  	/* Pre-gen11 and SDR planes always need a scaler for planar
> formats. */
> >  	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> >  	    fb && intel_format_info_is_yuv_semiplanar(fb->format,
> > fb->modifier))
> > --
> > 2.33.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
