Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D607CC188
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 13:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC5DA10E2C6;
	Tue, 17 Oct 2023 11:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C63C10E2C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697540896; x=1729076896;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=R2OSdKwa+V21K4xsGFXxyi+A4+aXI0fcgYzwnUwqb8Y=;
 b=lL9Kc+SIA60BV/0F7gz+TidOGzV3A0Kv9kR5dZUFhpwdrv35f8+xoX2F
 cJYQMRqxQ4LTtf4SYypuo6YVQV2IcuST2qCR/YuG7Q92EWO5E4+dx4oNB
 9x1ce9NOgDC+bE9ET8lTci81A2VM96o/36PoBl6uknTQPqaPDzvuiX8my
 0UFZJrtQYn9TMY5fLiGQgGoM9Tx4o9D8BQYzeW0b07Kd+KwAQswb3vRPG
 MeeB4vwzoXGotv58VgRViZdFHX/ZJAELIIfOCvETkC4SQjeD7MD18PNMo
 jku8oYzgr8QMw1Xy4H57wna/rDn5xebOJqvQz3z8BTWoG8nRx5w4fqbFg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="452233431"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="452233431"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 04:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="899881503"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="899881503"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 04:06:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 04:08:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 04:08:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 04:08:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5GI1dhZ/NXxGSZLOdgCedU+J+IczL/hlLEfDC43PoGyW2t/s1pHk3M7Ze1yzkUIuIPvl6Jx/B9VGhwRP32I48c40aCNagr2anffxdQ4ht7GVyNjhT98E7Msv034bc1B8UjS0XDbYhseKRDKE0dK81jEKihxvS+V4p0UCm2DX8oK/bAmfLstvuWB8XKh0GhY5y9wdibMQ4dDHtMDCCM3WJrboU97GFjJ780PEeRtW+dCzlsiD+q0n69QcsDWU1/Yft9/qEcg15l50zT2m8bANO34Nrgu7ATCYxk0ev3UKTDnoUvyTktYuYuW2YY8dOAKqrj0Mvd1WP87kiDzFjDpQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kAfUaEgaVC/bujgyowbUlywE1hOJnjB31+yZUqidtEE=;
 b=mK3E9I3vMCurpbLxi1H3YC1jwWJKqQxu/kbVRDUhCF6Dyza8BuFg7ejc6yf8y/8ksSxN833NNwLcfcaLzwnkxhSGNQrziyo/fZ/du5e1yltgMFXOdpK4SeAM8VmuB2sE0WU7/XPYwOjn6WJVtD6o1d78+zK9kqBYYlFWApesiOSxh7RhXHwdFjc7iLPhyGSbEfEOTkkmc8V2s/dE2figAofPKYWj7k9F9kXPXn3+usk/7+W2S1SUL6N+LpYOff/FDFRuj4ZSCzNIYgxeaTbwUJlpMWK1VESXOPWXWHqy4DYdD4o2MYCLSWRCvh1DGsY3tCBoovqCN5wBbO3Stsi2Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA2PR11MB4793.namprd11.prod.outlook.com (2603:10b6:806:fa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Tue, 17 Oct
 2023 11:08:07 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6907.021; Tue, 17 Oct 2023
 11:08:07 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v1 1/2] drm/i915/display: display device info
 debugfs entry
Thread-Index: AQHaAM9HXM//fL4wzUWshZejjd8QQbBN0L8Q
Date: Tue, 17 Oct 2023 11:08:07 +0000
Message-ID: <SJ1PR11MB6129EEF9D7623D549923B8D5B9D6A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20231017075435.95320-1-vinod.govindapillai@intel.com>
 <20231017075435.95320-2-vinod.govindapillai@intel.com>
In-Reply-To: <20231017075435.95320-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA2PR11MB4793:EE_
x-ms-office365-filtering-correlation-id: 6ee702eb-2694-4cf6-50d9-08dbcf01579c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YDcUynSvgE+nlpwX2mhIVTcX6+3WFA0WBFFlmvnA+elXWNHBpUnJqSnWYs16EWSSw4NVcxL4YoHP77wmqjX2Grl9utpGFWvROzmaWDfK0+JN7qINDGOxj9POs/oR2EADExZ0u+37izcEnFDNpItJjn50eWey69tc4W92wloXQ47Mgr4JmnMV+W1lGNlSLdsV0dszcIr/JJXoCs/HzfBDhGs5RqTbVjEcP6eUpoYYSJUnUbdtwkIyyp5owjVa3DMQssJny6irMlZcjFubH/l7SYd7a5z1TWV96D6Uvm2XBKHy4dyhjscVY4KtQoI9v3g+M+xSsKV5KUBKcV4/3mw1yyeeSLjlVs1T4JAkI92OX/j+B6qotk6/y0QTKWHcnZmAr0n4MDz662dVlcLe4ZnL5cTfNz+jxORAtXD8xlBYY6BQhXOxaqWajaPICa9RYBULVE3DfcImU56prIX/RtHXfb5bCb+JvrdrdjZ4y/nLndjEkKf6cnvVhRXGX/nTG6CYK1oysewGTBi7ccXJzTxLOjt1gjwVnYJ5/8dZdv8PzRwKf1ZWCPAu5LfKBCTPMEH23nbE22B4Vz8l84JJrmZsl56XG125e9FjDT1bpQpB03wF+XTP9tKVnuAfj3HaTBKH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(39860400002)(136003)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(38100700002)(6506007)(7696005)(53546011)(83380400001)(86362001)(38070700005)(122000001)(55016003)(9686003)(33656002)(82960400001)(2906002)(5660300002)(66446008)(8676002)(66556008)(71200400001)(66476007)(64756008)(41300700001)(76116006)(66946007)(110136005)(316002)(52536014)(8936002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sripT3CcFC6/0lnvq2kPG1+2CYcamUVt6eYmAqIvuKsVW4SQeh/t4ekfNihi?=
 =?us-ascii?Q?MnPcgIBWY4LMisV30rXUdYH3PyQ42HJP20zk6J0nsPbL2wAGZaXd0Cd69w/S?=
 =?us-ascii?Q?jO0c/jr+KgpVJ0GEoaQWX7pjTfA42oDYlIb23UGsKzQj6SHo3ygaulXFwUGA?=
 =?us-ascii?Q?UCeMPYHmG9vuW7GwB0XfwF23U7+tKZC/NmmJ8CEJq5OO1MmjCKqKQ0i2SDjT?=
 =?us-ascii?Q?aGgI3iDmSvzACdPblHBBwB96CYGaFQaGldnHQ9rPitDkPU+Kll+mOhAMK5SD?=
 =?us-ascii?Q?EFHSlKBgTHxfwsC9/Yt/H5OLgJqX0xtpO+RB0MlEdJJlZJ546X8CVLRRTrTD?=
 =?us-ascii?Q?uu3d22e/LKokZwwI49xNv043LO4i3bQRmIa/OcqM4CotJLWOcA7dKjaTQ+D+?=
 =?us-ascii?Q?WzpgTazMKjLPZxw4ruq1Xzc84ozBGVm6baJOUE0oVREmL3Iz4OPtK4K6J5nn?=
 =?us-ascii?Q?47J02ftze7B9c94F24X7ch6eJh5k8k7e+JwrNcCui7AEZ38FUWlZA5Q3zCCc?=
 =?us-ascii?Q?ygxFfzb+bmK59Ma6U66buo4WmZ//rQ1HzzQ8tPzRtopZObhvf98K2PDU0Kme?=
 =?us-ascii?Q?ihbtvQfUJ3Xy34e/ABwjs0S2C1TPu6T7P6RIy5m9FYDcrgujslpILKirdpuH?=
 =?us-ascii?Q?BhW4dtDvx6ySXLT9NNZamIlketX5zUiS7N1624/4eoV44MRbJ2GXyMXSxnJf?=
 =?us-ascii?Q?YmcMZFo5aypLZhVHGC0EHWrt85vdvVx8FiKjHmY6q9DEV2ykbBQ8i87cA19v?=
 =?us-ascii?Q?hF9n4aBFF2vL5GrtitczdzKz73gH4bXqIQU/BztOK/GCdvyv9XCzSfiCSZDF?=
 =?us-ascii?Q?rMrqLfXFBBph2Jls5eP8lPF2lt4tiY8Gatw8djmQ/VE80YX84UsjVH1sT9CW?=
 =?us-ascii?Q?utCQs9aNIPojIkTG5GoGsCw1obO+VZt6QCgwprFLlKazd7bqmuIemyAwoXRd?=
 =?us-ascii?Q?Xzw/GTGtck+qNgAnPOau1LPDM1CgpYZBGesYP7A6tFTl2AcT4qfiUA/gkveR?=
 =?us-ascii?Q?24G6Nsub56e7udSXf0v5laFU2364bj4cSDRmSCtHavyAoSox8S2Px+3LGxYp?=
 =?us-ascii?Q?bvQB/OVySxVyvLpnP9ki+dfHSHIy0Jj81EwTZvtQX+GmLZrSnVRlAjOCMWaW?=
 =?us-ascii?Q?PkYZ9fU5HQOKwoIFkj2UAc8dKL4oXFgUp2c2cL+pYDcqdEPXKcsD8AfsMz8M?=
 =?us-ascii?Q?/f94fWB2flu/rVSrCD7Bbl51gWj0426Pn8jNLTDZdbBwAVhhz8qDlifsKKaY?=
 =?us-ascii?Q?gnbVmNKMHwfvnelhRqdlgAcUtev7Qc3DvT3rE+8rSA5cXO7vCXP6snJuLJfK?=
 =?us-ascii?Q?+/ln3m1trATmx8geHL+BwYSQdwMs17GqPbpgTvFVVagU1b3rcL1x6q2wrklI?=
 =?us-ascii?Q?XBwtgeYV5JPMZZGDO6Wy02oWQsfhHJPolXEF3h9oKllhLIGO2USK219ZsbKd?=
 =?us-ascii?Q?8XaQxK8xx/uNuYtiuFUrp6WxUrFXPMvVd7JAx4jmhD/2INqVc8nRLBuWU6fe?=
 =?us-ascii?Q?fHTV6XLBrDUsKsy0CcDAy5Jf2Aa9s33ZClA21O38buxqIsgAFOcb2A5JzLKg?=
 =?us-ascii?Q?6QFMA9doh4MmtH0+/062RiJLpdzl/sJgao9lODVo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee702eb-2694-4cf6-50d9-08dbcf01579c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 11:08:07.4524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L/pXQvlCiRzaGbNBUNBG9OELk7zekWnUIxJFnONFIFHPxetwOGf+QwyS4Qee1aJuXFz6lKMIsQMQiXxBHDRwllRea76FPtwrGbanvXutdPQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4793
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/i915/display: display device
 info debugfs entry
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

Hello Vinod,

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Tuesday, October 17, 2023 1:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v1 1/2] drm/i915/display: display device info
> debugfs entry
>=20
> Have a common debugfs entry to get the display device info for both xe an=
d
> i915 drivers.
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index fbe75d47a165..ed83339f50f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -641,6 +641,16 @@ static int i915_display_info(struct seq_file *m, voi=
d
> *unused)
>  	return 0;
>  }
>=20
> +static int i915_display_device_info(struct seq_file *m, void *unused) {
> +	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> +	struct drm_printer p =3D drm_seq_file_printer(m);
> +
> +	intel_display_device_info_print(DISPLAY_INFO(i915),
> +DISPLAY_RUNTIME_INFO(i915), &p);
> +
> +	return 0;
> +}
> +
>  static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private); @@
> -1059,6 +1069,7 @@ static const struct drm_info_list
> intel_display_debugfs_list[] =3D {
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
> +	{"i915_display_device_info", i915_display_device_info, 0},

Nit: Perhaps we can name it " i915_display_capabilities" keeping the essenc=
e of the original debugfs entry.

Regards

Chaitanya

>  	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>  	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>  	{"i915_ddb_info", i915_ddb_info, 0},
> --
> 2.34.1

