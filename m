Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7538679A651
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 10:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C665510E19E;
	Mon, 11 Sep 2023 08:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5EC10E19E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 08:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694422407; x=1725958407;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VRS/u5OASakSXaXJMMjqBDOv0BqmQ95F2wZ65raiX3o=;
 b=AZFSslthCJ1qDLmtVu7dHwmhrz3ubvzXKBQW6xotYWflJjYREu80/t5Q
 y2P7zls8KVZ2K1dxF3U7N+vYaIP5DMV2iqYMm0GjHd7swsUM4H5uOTOAf
 /MStMPbRKnpMC9+cHyRqiv+x0M8Q89wZXrd7bSwhQDggQ/UL+xLW5fykL
 EYh4uphH0uwAePyILvY8So+hmepg0ZX2+cynHyTTyJt8AnzisbCberZTp
 Ifrxsk0it3EsEwkln/VWWqei1jM5U72Y9LS/sEhbHTgQunqOh1w4/sKHZ
 5jXDA1KjMD5/TDFgvroRhmxKumx7MLLHWS6Bi/tKtrshvvxtRfOIVkJm5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="368270791"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="368270791"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="743261751"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="743261751"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 01:53:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 01:53:08 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 01:53:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 01:53:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 01:53:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Od1FlgdRRlOaY+e3PEbZB9ouDlJen5G7yudguxx/7a/LkLYHkqiUg2SZB/+ciFg7ckpRZeO32KBjzXk4me+zKH2XjutRT/dHiLOG6NBdwB+lx9W4v4R9ResWBKGomaHLdCT9W1ZyS84hlEU2BPqiXrRUjuaEavfRLTkyNMjjB6WbtUM3Xo8+UyIuxXtf7cSTxlWOIAGHO0wosW1p4lJgrNsmf7AR6ApV+tnxox08eqehzrj36MTQCKxpmZSo2edRaYIa+c2/zTiJ2s8a3mXfIa07KLPjrysmW7cp+Jf+IH5J1D6ggZFTW3PtVUAcbQfFOGRU5gFpOjirhTVf8b/eng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DPXc135b81ZIZCvSy4XIq+kSPOOhrzsS9a12caJtUEM=;
 b=Wd7Pv7olazbpAZWzT1qU1zO9J5djXCn51wUPnxrE+7lqx/ji9Xm+Sz1OQTVqeOPzSq39zWgrqkFkdWD16eKKJPCbe6ngrpArQ+s7d5RcIbxfuAdw95gmwAyn/aQoNq+QTNu7rFer7cLNvvRliVTLFVPg3bZQL5wwKcB/0XdbMltYnHPcFnqZAxb/P8ZcvH+DNq0ZlYlaFES0UoYf3VuRygRD+I+vOQs1SRmfduQ/X5FLNe7mzHCPImRohyDHkKO2bRAvAXg3aNeIgE7Xriu06/wglEfrIaS+adJqBvNk89ZWY0qFwrGdzGVPom68q+WljL2R75vhX4LjHU7fQNNWFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB5801.namprd11.prod.outlook.com (2603:10b6:806:23d::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Mon, 11 Sep
 2023 08:53:06 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Mon, 11 Sep 2023
 08:53:06 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/8] drm/display/dp: Add helper function to get DSC bpp
 prescision
Thread-Index: AQHZ5G5zd5X5F8kM8EGHbIWYGJoqeLAVUX+Q
Date: Mon, 11 Sep 2023 08:53:06 +0000
Message-ID: <SN7PR11MB67502CFA6137A10EFBCFBF87E3F2A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230911050549.763538-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230911050549.763538-2-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230911050549.763538-2-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB5801:EE_
x-ms-office365-filtering-correlation-id: 6791aa3d-c8c1-4154-7067-08dbb2a4840b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m485qnJrz+bXe/XDHv7s4Go8w1OiCzA9Z4qfdvIU3mgytVKWW06OC6Vu8Mve/mOksIHpn9Yycd+vUlDNT+SqDmIpJ6+r/jn8hJyAGQphm6mdMxNXW1+av596GUh6SxI5oSu9sJOfhCXt0xLDIEIxhFRTL0wqdO85VPZnG8gT1z6gRVfUr6/G5oVYdM3LmCYZEXzJRd0MWQCLYMaf6UzppgoaUjDoIWSDKsMXkdUNfCQ2mopjWHkQ0oDBqRplehVPyFdzpGRY3fvwtqq+03jIrIl58QTHnYRS7N0Wj1v+TGuacM3cNyfHvTr4vAZlwszL1Ddtkt21+jlyL97ExzhHVC3+QA7MVPYdmjrjTsnsps68S+MUURLCNdHlMn3d893pF/DqBS5cIkhTObgMRTnYskRoQadbeqVdRx834+PxhEkMRiDPIW3JlfiE1W0QB7YkIc4OF+v+y3UmA657QsSP0FBvJeJPLBIH39q6Ac4rRp5OTmqI6ZuWB0h71km5Tsuge6H3JDeGuz1b/jQPD/3Q+jlIHGSEdw9tdfyPKcZqMe8TKRCFxBo4zbqEe3XlYMEzGivkubqjljTBC1AUxKod/XhWokplUxpIKfCLE7DKgQUtpOCn9kuae/R7dU75XIaB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(136003)(39860400002)(346002)(451199024)(186009)(1800799009)(8936002)(478600001)(4326008)(66946007)(8676002)(66446008)(66476007)(110136005)(66556008)(76116006)(86362001)(5660300002)(2906002)(41300700001)(71200400001)(52536014)(33656002)(54906003)(64756008)(316002)(6506007)(7696005)(9686003)(82960400001)(122000001)(55016003)(38100700002)(26005)(38070700005)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GLrZ0ulsvC45GeXBPf5Om6aADTt4GURDJjy4V5hxUfPPLAWUMBxJgK2Pk/pm?=
 =?us-ascii?Q?ob7ds9BSpLOhSgc4SF2A44rKb0eu6Cl8tLQUFvPFZ9M86XZP9JaV4zoPl6jg?=
 =?us-ascii?Q?w9WJiTE9OJFzFzGJhRnF3LqeCFNGudYlt6vZREZqmz1dtcocTTwCT1V2v1AW?=
 =?us-ascii?Q?vBR+w5N7GbjoU0BuOEQCbGRv+ac6wIYzfjUDSk00+77Tvcm+nSA44gFdQiI2?=
 =?us-ascii?Q?xg/YsPMsqk2oQEIRWXAnR8e4JS9PWlQ6KPwPDv0DpJuuXOWtl62U/RRy9QM2?=
 =?us-ascii?Q?osr8BPPhwwsl7cJoCSGohuuctN2Mdk++l2L/QS6dQzZZlaWFu41KsEQTIBWG?=
 =?us-ascii?Q?NuHEsb+huT9215ZdTxuk6Q7AQ51vpYjCDsgRBJsjCSHWIX23ettrfEFY+hZF?=
 =?us-ascii?Q?6RqsH5skqR9PMEkxZRcyVCt+ImzOmC3YNic1c6Us0ox/Q6EF21DKInz+CmYG?=
 =?us-ascii?Q?RxFmdy0bWmsGAeJM8j8rVzTz20nNvJlo7qUn7N9eLxIpgm03Q3s5w/PPEhZB?=
 =?us-ascii?Q?bw/IOeSiK+q1W+9JffU0LZpII5Ypr7w48vAxNIhk7x//g8aKDo966iOHT7DK?=
 =?us-ascii?Q?v85kix36+wYbCIsG5f9+dtsyI98vdoh30sVoTKnG4RUCKeBad5pJNoMvPAqy?=
 =?us-ascii?Q?Xl4QtA29GnOXMqGfEKHVQu9mAs0Zz0pndi5ns9aMZed8Mcl2i6TWq9A1FAaF?=
 =?us-ascii?Q?qkukrftUhaKoTfKQTSlpUr0vjEtDquDwyCRohDPuWR038sRK9PPiT/eYXuQa?=
 =?us-ascii?Q?mFYmaIB+7RgWJtce3EM6zQbC0e1q9UMNDZU94DE7SsE+i4EAqk7CRk7pP5yZ?=
 =?us-ascii?Q?VCttarKUzirfbkPlxcm8ynVbCU+ebN5yHXBhagNDTDT4B+3ntoEonhW2ECl5?=
 =?us-ascii?Q?y5cPP1JqXdrWMbCCNlXQaDwxf0MDn4PYBssBJpkGY2WnP75EJUFVxZtijDfZ?=
 =?us-ascii?Q?Csex05KQQpuw3CbTgw+yUwKY4NLr9ntTydtWT/AnE3rAKiRBcd1u035YtiZG?=
 =?us-ascii?Q?M4neS1ikYabL0rXwNFMUHZxVMtGl/LYxKQRxPt5CN+jmpljGw9irTwFVMNHt?=
 =?us-ascii?Q?I/BhesOsy1hrvxp5MHTevMkSGLhQeTzBGHxgpD7WTeq4w0zrtVB0ZD5VDvBV?=
 =?us-ascii?Q?Ggg5io/XdeXmDF/5d3yfpZXj/E0Oo8r6wufEM0YO+G9bARV0R51m5VakEiNp?=
 =?us-ascii?Q?xNLxIVwl4O9qCkxl8RYv76r95wIcCqi4z2dA0OqHDn/tLmfEcgdgbPlD628n?=
 =?us-ascii?Q?4JD0VeMyAI40UWvvmfgtvS4LfVagMXjE7YNQdii6VwVOStLuzWry2bMhex9x?=
 =?us-ascii?Q?T/q0YZkKIUgobdhhXqcLVaJIVj40Wh51kZ3ie7eh6b0UcO8gC1UwdSdPHw2z?=
 =?us-ascii?Q?WtW0zF7hW5H1fJYIoeEIyqnAQGmBpMJY2KY6AvfH8r2HpD/6XP1Ojl41vaRH?=
 =?us-ascii?Q?OsS1r5iD+BYNuo8HMjsKEsW5kKJjKrXBO0I4C/o4DDtzd8/FB1mz7+dAk0UJ?=
 =?us-ascii?Q?qIXc/rUuTZ1wGhyi/sPkh+soRm+yye2jpNtpaE/duzWBHtMrKcuyJRMwAbpG?=
 =?us-ascii?Q?26cSA48bpXUIOGRuuLufA3qM16lGyR+WoBGN3uKw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6791aa3d-c8c1-4154-7067-08dbb2a4840b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 08:53:06.2547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cnK3yNNKGQ+9xKNxJ9n8Otk0O+WaJSTh+O5RsnJSUZpN/p+BDqdUdsgkyDZUNk9HhKfXWi22by9Qfz4ToA65rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5801
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/display/dp: Add helper function to
 get DSC bpp prescision
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

> Subject: [PATCH 1/8] drm/display/dp: Add helper function to get DSC bpp
> prescision
>=20
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>=20
> Add helper to get the DSC bits_per_pixel precision for the DP sink.

I think this should also be floated in drm-devel mailing list.

Regards,
Suraj Kandpal

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 27 +++++++++++++++++++++++++
>  include/drm/display/drm_dp_helper.h     |  1 +
>  2 files changed, 28 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c
> b/drivers/gpu/drm/display/drm_dp_helper.c
> index 8a1b64c57dfd..5c23d5b8fc50 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2323,6 +2323,33 @@ int drm_dp_read_desc(struct drm_dp_aux *aux,
> struct drm_dp_desc *desc,  }  EXPORT_SYMBOL(drm_dp_read_desc);
>=20
> +/**
> + * drm_dp_dsc_sink_bpp_incr() - Get bits per pixel increment
> + * @dsc_dpcd: DSC capabilities from DPCD
> + *
> + * Returns the bpp precision supported by the DP sink.
> + */
> +u8 drm_dp_dsc_sink_bpp_incr(const u8
> +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> +{
> +	u8 bpp_increment_dpcd =3D dsc_dpcd[DP_DSC_BITS_PER_PIXEL_INC -
> +DP_DSC_SUPPORT];
> +
> +	switch (bpp_increment_dpcd) {
> +	case DP_DSC_BITS_PER_PIXEL_1_16:
> +		return 16;
> +	case DP_DSC_BITS_PER_PIXEL_1_8:
> +		return 8;
> +	case DP_DSC_BITS_PER_PIXEL_1_4:
> +		return 4;
> +	case DP_DSC_BITS_PER_PIXEL_1_2:
> +		return 2;
> +	case DP_DSC_BITS_PER_PIXEL_1_1:
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(drm_dp_dsc_sink_bpp_incr);
> +
>  /**
>   * drm_dp_dsc_sink_max_slice_count() - Get the max slice count
>   * supported by the DSC sink.
> diff --git a/include/drm/display/drm_dp_helper.h
> b/include/drm/display/drm_dp_helper.h
> index 3369104e2d25..6968d4d87931 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -164,6 +164,7 @@ drm_dp_is_branch(const u8
> dpcd[DP_RECEIVER_CAP_SIZE])  }
>=20
>  /* DP/eDP DSC support */
> +u8 drm_dp_dsc_sink_bpp_incr(const u8
> +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
>  u8 drm_dp_dsc_sink_max_slice_count(const u8
> dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE],
>  				   bool is_edp);
>  u8 drm_dp_dsc_sink_line_buf_depth(const u8
> dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE]);
> --
> 2.25.1

