Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5729A327D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 04:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551B610E0EB;
	Fri, 18 Oct 2024 02:17:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LakCQumw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D324C10E0EB;
 Fri, 18 Oct 2024 02:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729217852; x=1760753852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EywQhnJdPlyF2LN0xHXcCEkOnoEHYlGCwqBuxe6OBBs=;
 b=LakCQumw5x+ne2Txdi9WxV3ZOcpY6erpsVwNwP8vyq9UuXKdH8VmHZLf
 iyUl1qWtwT634xBeHTYY30HruvZcweDhf2dYxS2zrB4OwCatJ0qTnKza1
 H9KWDkCclZAOCctcfLlzGMZp/Kmzx6KgNa924Q3zTXA5dLBUXtMqFfB1j
 RpBo+NJuk/73rGjBgVuS91hwwRxcFRr5PfDnMaszNHs4oDqA1zRGEExei
 GvqjSL3Dcg8u1HDWQm+IpOZsbiFjfxVEuqInvAgnFoKkrg0ZPfTsWBaXZ
 zIlw4/BODBporhMOvsCWCGm283HrCjn5fl2vTQvn/CtYVF/O9IyZAN1NF Q==;
X-CSE-ConnectionGUID: Zc30d+HtTsWTRzWAPiyyPg==
X-CSE-MsgGUID: zKf6r7/0RZq3Se49v1FnBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32419088"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32419088"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2024 19:17:31 -0700
X-CSE-ConnectionGUID: ZGVmaGriTWmsJa9KRZ9Edw==
X-CSE-MsgGUID: 9DfDmj9rT2SVIJbOhyC3tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,212,1725346800"; d="scan'208";a="78751378"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2024 19:17:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 19:17:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 17 Oct 2024 19:17:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 17 Oct 2024 19:17:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 17 Oct 2024 19:17:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lzidxLFC6GMPMzcZpF+telADUh8nMvEV/v+EV4fnNKEyk3Sf330qE9kbBcgFoxmDh1b7W05GjcZjcaDbFLtwc9O88NXbF2qUoe+ubzjwfwI1x1/qKK9w0/60DYyCMyinJpHDr0w74qtTHGgpC5T3KnfNz/WKq9cyct74K7eZkDENYcxpJAhiJJWWgK0IALkAJ8U9nQgWrtuc13gOy8r7ZQgWFXzOqePqmg3SGqIXiYPpnKML8XflYsdApNg8nhkvE3Z5BphmmuoalMWa/W4cW5dXLHCxpedJ2+SI2F4EYGb5hJZxu2ak3usDboJWFzS0/bYgT5yizxeypFfwPCV0hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CsO57tfyZB0nIuFlvDeUhXFHMI5rVD1hauXbvRMlt9I=;
 b=TglWFrev3/6wQxM5AVuIrQzfK9Ed6bBZiPIGv3BTYA4TcOlhsM4jIAJxlmavh0RrCcKcGFrw+dckdpYAm618S+ubLEqvKD4eH2TrznY893EzUeEMRkazEQ9XrWLNMwPoiYDFJIbdkl3eijbsWVMhyv1NWMPydcdGgxq6WVtEkbSItITrquwC3UjdhK4M0oUU5UdTbmXjPJSlhQ+yqvWxm7mBnnSnLQKj2bVXf7u+1tu9f3QOZYUmBJJNb2M/C1jYwXmr+aOV/pRuClUQispGNpiOXYHtKI9XbqDPyaGsJipKUA9OvnyIJ22iXMWzYmTme17FmQXk36hqCa/fasJhGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM3PR11MB8714.namprd11.prod.outlook.com (2603:10b6:0:b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.17; Fri, 18 Oct 2024 02:17:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 02:17:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 04/10] drm/i915/vdsc: Add support for read/write PPS for
 DSC3
Thread-Topic: [PATCH 04/10] drm/i915/vdsc: Add support for read/write PPS for
 DSC3
Thread-Index: AQHbIG2sIBRdHyC6kkuUJbmbVfRbMrKLxmtA
Date: Fri, 18 Oct 2024 02:17:26 +0000
Message-ID: <SN7PR11MB675053E11032DB03A558DA63E3402@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241017082348.3413727-1-ankit.k.nautiyal@intel.com>
 <20241017082348.3413727-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241017082348.3413727-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM3PR11MB8714:EE_
x-ms-office365-filtering-correlation-id: 33cbd0a6-aa66-435c-038c-08dcef1b0297
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?T2NIKpZA9S0ZPYlizhj/3GNJ7GqlLGu0UjoYrdXcdrXV4tGawcm69ardxzYw?=
 =?us-ascii?Q?vuHMhg1Kv/IOJIaxAiO1F+aTBwiWjF/2HmCnMSZVoaB4uIzvBQk44k0tMwRw?=
 =?us-ascii?Q?BQ+3TQyuh13oPj122sIgkLnGYUEMWxeC8KBiR0/LIxcLUIzPQWVTafyCZGJ3?=
 =?us-ascii?Q?y+mFwRjZ4w/S9GBSd7rXzKOYfgoQBuSzUOSB0k2MDQEeEIJ/hMqLKaQ/KrIf?=
 =?us-ascii?Q?5bUwPEx1UYDF/2c1oM7ktYKKy172kDn0efRbCoJ+q90TQdvKHSMGpdrO86Uq?=
 =?us-ascii?Q?KkRkHt0dWidgIw3uPyieiGfKtqAP4GzbX43nrafIWhYqYP0pZ23RZ3EG4XHC?=
 =?us-ascii?Q?tfAHkZsl9h50mlr5K16FF8i7aSap/PtqIVd3UCQwXUfEPIZdXmEx06UFKaBE?=
 =?us-ascii?Q?GJwdhYTCG0JH7GTLrctFutnKhgRouj7ETjsnIZBhJEOjaHV1tZ/ErVoL1LU+?=
 =?us-ascii?Q?iSY4WhreFYjrqNFQ4lsNAy5ScdAGq83rUrhEKf0CKhFLo/wXesSsaOtNuqEd?=
 =?us-ascii?Q?pvMJS8dbzLa8MsIznlJCuHMRLHM64G04hdzACFO3nPfJTyHH1LrbEGQVjR3U?=
 =?us-ascii?Q?5Pj3+DaxeKgyS1meK6oRPEQUd5EBfX50B4G7g6thQ4si8UCH1WkiIF86PVKF?=
 =?us-ascii?Q?aLo98vokxZS4+W4uWgcVYGcZzxgwS+oP2rWwmPhK68Igz07aAc/GtDBYhDoQ?=
 =?us-ascii?Q?NCzWHYVsa76M2yBFhjn0Mlh6eGqQrz8l2wxxo7ketRoZdD0Z5zr4dzMWRdpX?=
 =?us-ascii?Q?tBt/hVlFhQpweHWicSxiUAvIegsqYgo5yGNabBqFIAVDTkZ/QKwjBWhjwegw?=
 =?us-ascii?Q?zUXtVSrMsgvRyfbMa3v27kWnjr9nUYjClayBPklJVPQBunSkJp9Wml6RPmfh?=
 =?us-ascii?Q?G3Cn30AM39NVnpJbU9Knz/xPZl+8huHTmz3hZKA+7ztxIaI4UHXyJq1bcRIW?=
 =?us-ascii?Q?R/8kSmpAlFyzbx7oDX3Up9lDRRr8/qR0o/rX7+I15kkYo7hZLoRJp1D9Hef3?=
 =?us-ascii?Q?YFnpqsvhE1CjrUlTaiqIINFJXJUuE6YgYx+xFr1wEk4IPuio0gMS+aRQplqH?=
 =?us-ascii?Q?lJbBoZ+BahIORklddahlIklfgqXQjGozO9B4E+CggZDk+XV4HQ/MfwBpW9Ik?=
 =?us-ascii?Q?6ZEKM3ge/4O2XAp3bV6osjZRA8KRqUgdzrZEzzxSUvPLrq7rT2SwFsWKumg4?=
 =?us-ascii?Q?Fr680aRO77wVfPwSeqPSAlvErgGVqO0VkFRPNxMG6V1nlTVh1Z3XJEL6pXLY?=
 =?us-ascii?Q?CZXUzxujl64TQFz8XiItlAmNabae/loPKotDXxqpzqXmxPm/cQHe9vmFjiqb?=
 =?us-ascii?Q?I1sFgsFUD0Z9ZhkRx8V8fbd6KADaHdRY8xWFyUW1MX+D8gsOYfThR7InFiCn?=
 =?us-ascii?Q?bYXOA7E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?831+6LXmUM0xlrZUilZDihItQ4feahV0JhysCo9uLot/W/VaWwXcKBRTu/RN?=
 =?us-ascii?Q?JXbYDfe+8yGR9TegRlse6d7HAZCZbJA3rHzzV+ZAh7RGEkmwUh62rGUdG2dA?=
 =?us-ascii?Q?HVU8WVuh9uKKsce2GF26WidcXB6V8cUjV401NNc1nuDTdvULJDcA7YyPIlCT?=
 =?us-ascii?Q?MwrQrUNfREcO5shF0yQCyX7hKKsbyayN5YISh70C2S6u5H00PW7wm9Mdzq6b?=
 =?us-ascii?Q?oC8e5xlu/igvb51hF18YIhUBsFNzsqGdRRk0P3oCXAXDLAHPTPB+BUMmtF1H?=
 =?us-ascii?Q?9MMvorD8UL9JT5McO65RBfTYLxCmGcExOXUWCeR9rBwHNepNxjJ3XZGWgaoa?=
 =?us-ascii?Q?SDepIG5JfbBKdfpNtzufNp6/qwVCGWnO9rPMAySQBSq2x0J9wCOV+g2YhGxA?=
 =?us-ascii?Q?4o7hvMZ9h0ieVMvXEO/GRnMQGWchhJKF22090o8kWEelEf4xbRGaDmzrP4CA?=
 =?us-ascii?Q?1EwwQGC2s1L0jv911/GnEGWYmDF+Ck5qxdVx4dGbCLeDs2CzbWJ4dlgMNDwz?=
 =?us-ascii?Q?9+WJqIMllhlEm4sG2aNiDG4uvPs2slEWZrObbErCvgxZqO9QJBK+QWPp45X6?=
 =?us-ascii?Q?ma4y4qYsbJCjISCoZs3aw5SGqMTn67cPWr35lxMAtgU7NPf0B+PO8TPEVljb?=
 =?us-ascii?Q?XWpSaoc6yxxcaB2UMoLTVGbTThR2Xhz3jVdr0xb8FHN35vkoZK2zizIe0u40?=
 =?us-ascii?Q?wDXWr9ldkRWBSuyr4NCpOBGGbHtbmnknVIZioWyFlJp4MXBTpq/OcBrfiNZP?=
 =?us-ascii?Q?QnX3OmPR5yNPyecGDdoTXwVTaKY8qCH5IkZcZStqym3dx4bMyqYLu6920zCx?=
 =?us-ascii?Q?X5qi9d5rB/LABXT6/QCQY4rfGqHJDNbB8I3S3qqnoMAyv7KMhMKn8NSn/7hn?=
 =?us-ascii?Q?sBfH7PI02ro+F4A5Ri9XBMSAtu0jt7rvcnsnH5qx2SPJ2wtC/wq6AP4V8xlZ?=
 =?us-ascii?Q?/1A0px7SnMxaouWcPsBXKSvB2iB3CyNzU9dZQfqAv0MRhlZRTM1Atpat4nEf?=
 =?us-ascii?Q?2Ysazoyu9mlLGbdaFfRfcJd7TzxmoKRmCLuXj8ODlyAXCixKo2N/HYuP+zwA?=
 =?us-ascii?Q?PlabvczcnR3RG2hZ8em4rolEzGZVyRsEe7zh1h0vCYotfNUbpncuBwXUoDkt?=
 =?us-ascii?Q?JMu6gNHVibboiUWyEvJubUX6GvpLYIpAhgghMAehhart4YVn9z54RZzSDDgy?=
 =?us-ascii?Q?1G8tU3I3etbkxke/lk0ARi5ADSShT7kDJVhP6I4RmlYZBZBvN6tjul3a4nHg?=
 =?us-ascii?Q?xcobnqa0omzkO3Al7vUpZrBtDXZrAi6vO41co7Q31idXCBkWCg+1g2P/3ptg?=
 =?us-ascii?Q?IngozmMyp65JjtgbLC3GAbWq9nukSMTUiXvirMktqXxiEg0UDfjqs3M7CZIo?=
 =?us-ascii?Q?eYD81Dx8MnrNAQctrTXE5/OZ7hvzJgny/BJlq811k1YcjQA1Ca5X2wtfbp7o?=
 =?us-ascii?Q?XLS95YaFN9jevXc6VNr6rKsi/xMvmjAC8x0IjwZJXXOEiXeQqvg9GRHgJ8GW?=
 =?us-ascii?Q?Xkd9ebNBL2Fk6yqPszXxP6lsH/GxIvmYgNKi3RCBh9K1LiIc4wXryPmdcdtZ?=
 =?us-ascii?Q?CHwodDg3LxnchzXMN1HNF3SzDLtsTzhQqu3liKig?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33cbd0a6-aa66-435c-038c-08dcef1b0297
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2024 02:17:26.6247 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t6FwcjxQRa+3A1qfWeiW4zjqgsMGgcAbao2vkM0V4uOEEVfYrjmaJLAhWaMb31hEk1K025Q2vjvGPLl8wsmJtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
X-OriginatorOrg: intel.com
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 17, 2024 1:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 04/10] drm/i915/vdsc: Add support for read/write PPS for
> DSC3
>=20
> With BMG each pipe has 3 DSC engines, so add bits to read/write the PPS
> registers for the 3rd VDSC engine.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 6 ++++++
>  2 files changed, 11 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index e34483d5be36..718e1b400af5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -411,8 +411,10 @@ static void intel_dsc_get_pps_reg(const struct
> intel_crtc_state *crtc_state, int
>=20
>  	pipe_dsc =3D is_pipe_dsc(crtc, cpu_transcoder);
>=20
> -	if (dsc_reg_num >=3D 3)
> +	if (dsc_reg_num >=3D 4)
>  		MISSING_CASE(dsc_reg_num);
> +	if (dsc_reg_num >=3D 3)
> +		dsc_reg[2] =3D BMG_DSC2_PPS(pipe, pps);
>  	if (dsc_reg_num >=3D 2)

Quick question why is this condition not =3D=3D that would make sense only =
the first condition
Should have been >=3D
Maybe another patch to fix this
Rest LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  		dsc_reg[1] =3D pipe_dsc ? ICL_DSC1_PPS(pipe, pps) :
> DSCC_PPS(pps);
>  	if (dsc_reg_num >=3D 1)
> @@ -424,7 +426,7 @@ static void intel_dsc_pps_write(const struct
> intel_crtc_state *crtc_state,  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	i915_reg_t dsc_reg[2];
> +	i915_reg_t dsc_reg[3];
>  	int i, vdsc_per_pipe, dsc_reg_num;
>=20
>  	vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> @@ -824,7 +826,7 @@ static u32 intel_dsc_pps_read(struct intel_crtc_state
> *crtc_state, int pps,  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	i915_reg_t dsc_reg[2];
> +	i915_reg_t dsc_reg[3];
>  	int i, vdsc_per_pipe, dsc_reg_num;
>  	u32 val;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 941f4ff6b940..efaeb5e0aea3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -61,8 +61,10 @@
>  #define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0
> + ((pps) < 12 ? (pps) : (pps) + 12) * 4)
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
> +#define _BMG_DSC2_PICTURE_PARAMETER_SET_0_PB	0x78970
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
>  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC	0x78570
> +#define _BMG_DSC2_PICTURE_PARAMETER_SET_0_PC	0x78A70
>  #define ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) -
> PIPE_B, \
>=20
> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
>=20
> _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> @@ -75,8 +77,12 @@
>  #define _ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) -
> PIPE_B, \
>=20
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>=20
> _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define _BMG_DSC2_PPS_0(pipe)			_PICK_EVEN((pipe) -
> PIPE_B, \
> +
> _BMG_DSC2_PICTURE_PARAMETER_SET_0_PB, \
> +
> _BMG_DSC2_PICTURE_PARAMETER_SET_0_PC)
>  #define  ICL_DSC0_PPS(pipe, pps)
> 	_MMIO(_ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
>  #define  ICL_DSC1_PPS(pipe, pps)
> 	_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
> +#define  BMG_DSC2_PPS(pipe, pps)
> 	_MMIO(_BMG_DSC2_PPS_0(pipe) + ((pps) * 4))
>=20
>  /* PPS 0 */
>  #define   DSC_PPS0_NATIVE_422_ENABLE		REG_BIT(23)
> --
> 2.45.2

