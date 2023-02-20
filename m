Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDCE69D609
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 22:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5385410E29C;
	Mon, 20 Feb 2023 21:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5F910E29C
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 21:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676930281; x=1708466281;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Bwu7yj90JGH5jTRUVib5M53gPuuq51wAD5y+QAdlOI=;
 b=Y280a3GSeygZ/oPLZdHvhl3eN9Y32cryv650+uRgde0MNdNZMikK41nA
 0w4pwL7cQb1IIEShPI9mfX/WScIWTbqVC0udQAlm3pMpM4InUj7Ehx00o
 VMIenJQmZ2UU2kKW88cRjxO85TcFivBo6DPGyUYPlNfzyAKR18PGbQeUq
 wIMwPnvZWsHGgGrXnmmm50gN51+MUR+bg/NJx8FIF/0h2n0P4m6xKuTcb
 Uu4v5Lnc+JK3WTDMlDj5PzuvWPbS6/HNYyHxXeNgRrGTSDIr3LAHPoMMF
 3qazEHQo7iUjzKNtO9cuMR13hYdQwgI+8GywpAP0VtHMFCjDfZ2HBvl5x A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="397177788"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="397177788"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 13:58:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="735254903"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="735254903"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 20 Feb 2023 13:58:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 13:58:00 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 13:57:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 13:57:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 13:57:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7VqZ1GJ8iWxkb3lfWa/X1nl4untgVLqtfqvmNSUMFONw5hJ4zFubZabf2xbR/3kgihl3nhNv0uJoHh7KkMaRcltTJAHTEO8dKWegVszGA/cLS0R6ixftjQf+377WdE/hQxzxM3564BGVGM59sAbYn6HeIvadN4FzGLtyEgQS3oRJBuM6kdYP5d8g8k43o35zk9Hwduuvsx2hBJhP6GIW1ewQVmFLOi5mshMLPR+sXrvtxsOnPD+SUS1+Om0jYJY4RHo8DBswAM5F+wQ+fke51gIVdQhBbtQm1Hpo85I88HWWiCnXWt49hjjP70wbSu4sW14I8yaAYH4AyOG+g/7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6raLC7FkXNAlM5lQ5gEAO2FhGeU8GBl0/yNhsIwtx+8=;
 b=d0WXrcGwDUqyKU/w89dbtmm9QBIyDcOUrh2DY6BJirhXxIrO8fh7as+m/6tmmIblIeCwv7vnhLWCudWPIADYHJszDL/q/jlU4ifbeV6K3jf0dREQ0Okp7CKtWdSSbFFTC5JMgs2BsZnfbW8SvYPlcqzyT4K/Hi0WJd50LOhd8sv4bF/9HL+senMmh4UNXePP4qRFgOhZ2Hh7l44M8SGPi5htlO4frIPVxFsmrBemgkuEqW67zweAG03+dAQN3Ph8hWfq/KUhuP4B48F/M95ju0X3nmZHi6Fki7o4wHgWRUU/8Jh+r/j5dbtsdl1Lmj+jYWX+bRueoWoVRSEZjVoIaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB6372.namprd11.prod.outlook.com (2603:10b6:208:3ac::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 21:57:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 21:57:57 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v11] drm/i915/dsc: Add debugfs entry to validate
 DSC output formats
Thread-Index: AQHZQGOpZmikACZkvE6F88c5dvXp3K7Ya9fQ
Date: Mon, 20 Feb 2023 21:57:57 +0000
Message-ID: <DM4PR11MB6360AA60A05C8403742039C7F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230207074416.3209722-8-suraj.kandpal@intel.com>
 <20230214110240.3428-1-swati2.sharma@intel.com>
In-Reply-To: <20230214110240.3428-1-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB6372:EE_
x-ms-office365-filtering-correlation-id: f69516e0-dbcd-4424-2e76-08db138d86ab
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a1/JZ/7NswuNhcoLofkfV0wr5dd9k0qqzsEFBHzcAEkPlGNjZ9A2E3jJbvwmA977E8+/xG9/k1Nn03dUnepMDLLmehgS1COvvz9NsFetqvLibG92jaE8yLI96nuAY43g2IkexUYxj6vlUaDgii6vt4dHt2CU157DcGn2E31HTMk1/ECiTR8n9GLTYF7UnKAvhrjNFIPHJUibyARvtUPej/yeXO6DLDpQEbDgQ4QekX0HVPDOaKr1xb5LBQp+aOJP7vhc967xIfyc5KTGrjOKkOgAviVpgOFIuZGQn42FnQrjKKn1KbXkpP0Le0Els4K1r+/UJr1ukHWuWZLNXpxI10TuyET7nm9xWG1ODXqia86oGnpvkknGEIMWNqFt1xiJnaKqyBD8c01vvYbXB2OKZh55wfvwhqHg09nM9xZNbt6mY6JYrZdWZb6R2xx+7i3MbenuOTTc/DzzB/Ry5J2RXybiidPyNlITSncnSAAFpW1X5rlxqfiXdPLql/aatIEJ+o1DMnQcMhXM1pQWX4auz2IEe/r6lZq1VjKXp4WHwwNfm9sNOT2x9f1SgriOiDdaJYdAyOjuSYUWysTUc6MdRJ//nMrbtgNAAlCn6XcyKobap6EpFK/VHRLJIdXm3DIpV9HJerH1A6SoSOyL3ZUdfyAki+8Oq0+EGIWNBYqUbg8SrVroE8WEWHb5UlT4b0vNFWSmTsoNEQvM+laoMUyxtA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199018)(82960400001)(110136005)(15650500001)(4326008)(5660300002)(316002)(66556008)(64756008)(76116006)(66946007)(66476007)(478600001)(66446008)(8676002)(2906002)(41300700001)(52536014)(8936002)(33656002)(83380400001)(53546011)(71200400001)(7696005)(9686003)(55016003)(122000001)(86362001)(107886003)(38100700002)(186003)(38070700005)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I/UTMDkNTACKq8TLlWx1Cs2oaVLfVlolMFpw+johaZlcb1DG+PtHi7WUcg5V?=
 =?us-ascii?Q?4Tsoc6vTutIx9tE2DJvzxid4zduhmDd2ZUdcbr1EOAKSQqIGnPrKay5O9I7E?=
 =?us-ascii?Q?PIQyfjilQaqdco4bEdlb3iOKTauT9edbmNY1plILLPkson+TvJ0R4JdtoXZP?=
 =?us-ascii?Q?mVIQFantgXclNi5Hha+EctnasVVf+Iy50c28t79TwocX7JPgk12AnfEjT2/U?=
 =?us-ascii?Q?yQ6s2xJsH8nljsv8A1wmt+YeuUiVtacUoMio4Bd03RENNkykLna2p7vwhhKU?=
 =?us-ascii?Q?Ut/8D5rFjlqAqNVti2uXmC5qpe/AZgWx09mEXGtXDVlw1yO9jYKt8k/9LfqV?=
 =?us-ascii?Q?74qitGEdaLU1P9J+ZyVTtUzkaXiL6Plho5RenNcjpZ+iGHNu2l0MSwilWYCX?=
 =?us-ascii?Q?x78kyRbn9gXsXtQ40yWYfQjwPJcxKZ02fpx+gzFFT6wDNdcI5H8lHRCHbNtu?=
 =?us-ascii?Q?T2m1R+kH1wOQOWlj1KXo4/ikTCNDNmVjpcB0pDp+qjuy3iUFPe9diHH9w6Wd?=
 =?us-ascii?Q?Z0Dv0p0J3zD7tt3lf8m/u3xc7plwUt/RQfirKIRW/XMg7c+1M/DzLWiFdlnz?=
 =?us-ascii?Q?JkXWCGbJ6Jd6+p3RumUD/Ol3xEKRGuH2l0nA1OYm+02voZRgttGKtjnxWVIO?=
 =?us-ascii?Q?9PFQwaHLOdyDGrMUrXEhHDxRe0Z8+REY7lx0KpNtUktHBaiU3l32T4SUKs1h?=
 =?us-ascii?Q?IL1AqorfaPaqDSGoerat3bcz7mk/3vm2b6VJT903dpWtvM5xqZzjQ+GFizS9?=
 =?us-ascii?Q?wKN8sYkkyUqzZeMPcyOoKatxBjjMQw9/OTKS3UFpxLGbJA2WdFr9o3bsdcnU?=
 =?us-ascii?Q?yR/NI0lKWuLr6F53+LuaSuk8d5n+9yIzarwkFkEUaAVN0/1Ow7GfBOFGwGKv?=
 =?us-ascii?Q?9Aqj1ppxUOUaU+Iq7k+fJ+NNWeD32Stkayn5GnyVO34ixt9WQBasEHdz3KA0?=
 =?us-ascii?Q?UW9vKEj2u0wfSkDFHDlR4u7wBR2vLgE7Xz2F/rqdjyMFU6XPEHRWq8CXmaky?=
 =?us-ascii?Q?ItheTTecSoy/iTM6F8TJxVux9Y4gyuKVwbQli/qqWc8vx+PncR18lfOCDcFq?=
 =?us-ascii?Q?LHIyRMFx2fmVmYGdCfG4Mf+zLtUrOd1Cf3IYCwy1TJ6w3V5pPnm1TH8FnoTM?=
 =?us-ascii?Q?p0dW+knxA0bY/qphgQ1YoCbD1U8NK40cWTc4BxLW3Em74x8tHhPttIIQMDPu?=
 =?us-ascii?Q?R2N+5LFVMoUyN08DVgtuku7t7CRUGSB+dUxoQccV0U6JFD0qjBl4B9vgr0j7?=
 =?us-ascii?Q?hZBgW58KrA/hh8Z4Eu+/iFzFzBD3jrn3BrHLqKuNFAOLCKcHQKQUEq6q/oRr?=
 =?us-ascii?Q?VfbhkCDtAc+5huFB/WOuxx3Yy3BdFs9MSy3c+zCkaYrIPaFOW3nzg6Vd/cRH?=
 =?us-ascii?Q?IaA6A6YJPyE043+Eh14R/noJEq4JIQI113okfm6oFJHsq186EEJV9Qx6JmID?=
 =?us-ascii?Q?3zXsl/iL+1hl0RCHgZ9fOQeot4rJENpt7LYMpWk9nIZm89oIJXyzXzyHIwQS?=
 =?us-ascii?Q?WK2SO5t2elMChl20jKVbckfSckNHQG24zDcTz/17pVZ3kWJJvNAo8+ih4mJj?=
 =?us-ascii?Q?d7geKZ4B+1dQJSnghBAMV46748qKwzFFUDMFqexT?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f69516e0-dbcd-4424-2e76-08db138d86ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2023 21:57:57.3426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IET034Hz7+kaEUMKklrHO0JUiKE0qntHN7+UzkBZJn9XkHuGFd1cyy5yq0SNsfSPGPDIeVRm9FEBQU/9TanfXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6372
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v11] drm/i915/dsc: Add debugfs entry to validate
 DSC output formats
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sw=
ati
> Sharma
> Sent: Tuesday, February 14, 2023 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [v11] drm/i915/dsc: Add debugfs entry to validate DS=
C output
> formats
>=20
> DSC_Output_Format_Sink_Support entry is added to i915_dsc_fec_support_sho=
w to
> depict if sink supports DSC output formats (RGB/YCbCr420/YCbCr444).
> Also, new debugfs entry is created to enforce output format. This is requ=
ired
> because of our driver policy. For ex. if a mode is supported in both RGB =
and
> YCbCr420 output formats by the sink, our policy is to try RGB first and f=
all back to
> YCbCr420, if mode cannot be shown using RGB. So, to test other output for=
mats like
> YCbCr420 or YCbCr444, we need a debugfs entry (force_dsc_output_format) t=
o
> force this output format.
>=20
> v2: -Func name changed to intel_output_format_name() (Jani N)
>     -Return forced o/p format from intel_dp_output_format() (Jani N)
> v3: -output_format_str[] to remain static (Jani N)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
> .../drm/i915/display/intel_crtc_state_dump.h  |  2 +
> .../drm/i915/display/intel_display_debugfs.c  | 77 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +
>  5 files changed, 86 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 2422d6ef5777..45655efc9468 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -121,7 +121,7 @@ static const char * const output_format_str[] =3D {
>  	[INTEL_OUTPUT_FORMAT_YCBCR444] =3D "YCBCR4:4:4",  };
>=20
> -static const char *output_formats(enum intel_output_format format)
> +const char *intel_output_format_name(enum intel_output_format format)
>  {
>  	if (format >=3D ARRAY_SIZE(output_format_str))
>  		return "invalid";
> @@ -179,7 +179,7 @@ void intel_crtc_state_dump(const struct intel_crtc_st=
ate
> *pipe_config,
>  		    "active: %s, output_types: %s (0x%x), output format: %s\n",
>  		    str_yes_no(pipe_config->hw.active),
>  		    buf, pipe_config->output_types,
> -		    output_formats(pipe_config->output_format));
> +		    intel_output_format_name(pipe_config->output_format));
>=20
>  	drm_dbg_kms(&i915->drm,
>  		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n", diff --git
> a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
> b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
> index 9399c35b7e5e..780f3f1190d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
> @@ -8,9 +8,11 @@
>=20
>  struct intel_crtc_state;
>  struct intel_atomic_state;
> +enum intel_output_format;
>=20
>  void intel_crtc_state_dump(const struct intel_crtc_state *crtc_state,
>  			   struct intel_atomic_state *state,
>  			   const char *context);
> +const char *intel_output_format_name(enum intel_output_format format);
>=20
>  #endif /* __INTEL_CRTC_STATE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 9e2fb8626c96..e4b04c690e4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -12,6 +12,7 @@
>  #include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_crtc_state_dump.h"
>  #include "intel_display_debugfs.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
> @@ -1770,6 +1771,13 @@ static int i915_dsc_fec_support_show(struct seq_fi=
le
> *m, void *data)
>  			   str_yes_no(crtc_state->dsc.compression_enable));
>  		seq_printf(m, "DSC_Sink_Support: %s\n",
>  			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp-
> >dsc_dpcd)));
> +		seq_printf(m, "DSC_Output_Format_Sink_Support: RGB: %s
> YCBCR420: %s YCBCR444: %s\n",
> +			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp-
> >dsc_dpcd,
> +								      DP_DSC_RGB)),
> +			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp-
> >dsc_dpcd,
> +
> DP_DSC_YCbCr420_Native)),
> +			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp-
> >dsc_dpcd,
> +
> DP_DSC_YCbCr444)));
>  		seq_printf(m, "Force_DSC_Enable: %s\n",
>  			   str_yes_no(intel_dp->force_dsc_en));
>  		if (!intel_dp_is_edp(intel_dp))
> @@ -1895,6 +1903,72 @@ static const struct file_operations i915_dsc_bpc_f=
ops =3D {
>  	.write =3D i915_dsc_bpc_write
>  };
>=20
> +static int i915_dsc_output_format_show(struct seq_file *m, void *data)
> +{
> +	struct drm_connector *connector =3D m->private;
> +	struct drm_device *dev =3D connector->dev;
> +	struct drm_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_encoder *encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
> +	int ret;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	ret =3D drm_modeset_lock_single_interruptible(&dev-
> >mode_config.connection_mutex);
> +	if (ret)
> +		return ret;
> +
> +	crtc =3D connector->state->crtc;
> +	if (connector->status !=3D connector_status_connected || !crtc) {
> +		ret =3D -ENODEV;
> +		goto out;
> +	}
> +
> +	crtc_state =3D to_intel_crtc_state(crtc->state);
> +	seq_printf(m, "DSC_Output_Format: %s\n",
> +intel_output_format_name(crtc_state->output_format));
> +
> +out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> +
> +	return ret;
> +}
> +
> +static ssize_t i915_dsc_output_format_write(struct file *file,
> +					    const char __user *ubuf,
> +					    size_t len, loff_t *offp)
> +{
> +	struct drm_connector *connector =3D
> +		((struct seq_file *)file->private_data)->private;
> +	struct intel_encoder *encoder =3D
> intel_attached_encoder(to_intel_connector(connector));
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	int dsc_output_format =3D 0;
> +	int ret;
> +
> +	ret =3D kstrtoint_from_user(ubuf, len, 0, &dsc_output_format);
> +	if (ret < 0)
> +		return ret;
> +
> +	intel_dp->force_dsc_output_format =3D dsc_output_format;
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +
> +static int i915_dsc_output_format_open(struct inode *inode,
> +				       struct file *file)
> +{
> +	return single_open(file, i915_dsc_output_format_show,
> +inode->i_private); }
> +
> +static const struct file_operations i915_dsc_output_format_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_dsc_output_format_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_dsc_output_format_write
> +};
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1966,6 +2040,9 @@ void intel_connector_debugfs_add(struct intel_conne=
ctor
> *intel_connector)
>=20
>  		debugfs_create_file("i915_dsc_bpc", 0644, root,
>  				    connector, &i915_dsc_bpc_fops);
> +
> +		debugfs_create_file("i915_dsc_output_format", 0644, root,
> +				    connector, &i915_dsc_output_format_fops);
>  	}
>=20
>  	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DSI || diff --
> git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9ccae7a46020..9f7951b49c42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1743,6 +1743,7 @@ struct intel_dp {
>=20
>  	/* Display stream compression testing */
>  	bool force_dsc_en;
> +	int force_dsc_output_format;
>  	int force_dsc_bpc;
>=20
>  	bool hobl_failed;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4a5f7c476305..fccb69a58111 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -76,6 +76,7 @@
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> +#include "intel_crtc_state_dump.h"
>=20
>  /* DP DSC throughput values used for slice count calculations KPixels/s =
*/
>  #define DP_DSC_PEAK_PIXEL_RATE			2720000
> @@ -810,6 +811,9 @@ intel_dp_output_format(struct intel_connector *connec=
tor,
> {
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
>=20
> +	if (intel_dp->force_dsc_output_format)
> +		return intel_dp->force_dsc_output_format;
> +
>  	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>  		return INTEL_OUTPUT_FORMAT_RGB;
>=20
> --
> 2.25.1

