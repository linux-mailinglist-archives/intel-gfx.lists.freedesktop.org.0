Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D89E9E4D8A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 07:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3D910E2C3;
	Thu,  5 Dec 2024 06:18:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lRPZh407";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC4110E24E;
 Thu,  5 Dec 2024 06:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733379499; x=1764915499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ohLIbbt38j+ob6mh1QiRvA23fR9AFqjFht90949UA6w=;
 b=lRPZh407Snmq2Qxp9Vq08oC8flNN9dx/lrrjwipx2t6bqVdYqfSq5VtX
 N5vUo2LWh/i6Y/Aqzry7KAgf6Bd6F0B+c0tvJoYlRwYItCBvBHWXXe3kA
 O5bFZFjciIx80CrYTPPUKYB3K5NZpnXqdZOkFHOLE9zje/2uvT2cjUO5y
 sNPXOdVG9ySQW7G4DSB3Mr+kd/DHUT6VQaqqRx9zSax/vknjG1uT4dEG6
 QzcZBc3igL3VAAZ+z/zJIJUtPYUqX5uSDn2yMJMHOoh+swUIAIb3OM+C4
 46qDeozgdfpEtVEYl9o+B49U3+A6WNYFVYy01lmByqPROjfuaP+Hxt/YZ Q==;
X-CSE-ConnectionGUID: +gX9suxMQvm2xUWIznLigg==
X-CSE-MsgGUID: 6pIg4ytWS7mLlm6dpDRtew==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33011081"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="33011081"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 22:18:19 -0800
X-CSE-ConnectionGUID: KKhxq/nDRRSCGMphLUyqhA==
X-CSE-MsgGUID: 0TjlS2f3T76+ordnB8B/Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="98066147"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 22:18:19 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 22:18:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 22:18:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 22:18:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WtbYkAwYbxMjwE/GYJiAcVGC/XsA1KsV4aqDWqF6tYMPjwiaoS2XnJuwm4ZpoKhc9Tjn73LZ9Wx6EB7Y+lnAdrdMuy4/xY/+gklqHb8QeDroIzC2ODDDhu4OHuPCX65y+PoB+/gnNmt3MEGpyFsyaanRHar3XRSE0BHZPVMutP9mEYyrQS6yDmlNi+fSW2S3FrLWUuYnutwoBQbNNNX1oNaXS230Vjyt6KNdsaDXyM5rDAzd84w//gd8tlKeFdCx4AjeV9inlJFrNUcgFOa47BqmECIBQu3+ygpKXLeJAZAMfMMUZp9d8jTGTcwS8ibl0YHtPkFByLVcH+piDgAyug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCHboZc1em1s3TO5E6eUnARgeIptbL9VI9L9xuMYkbg=;
 b=UTx0Tam98XVgq/IIFflhCIPxGhimAqhnuObUixwh585WuFYqSPvtlcoubtifVFgmszGdMI8bmwPxDrgvlViDMO+PlK3WqIgrsjECHI5T6F5RprLi0quWrS4bhVTfJu7tb+BuppCux4pyveuQLxAP8DOsuw+FAjL7ibNRL5M+bfHux21UTSMAXXmcQ+rlFVlfSoIvJpW+UhvVIVgcVAZlYcuNKwIy4NN7abUYhsORJslHVz83egnaS5hhv1AgeUKWDEv57BCORKJuSTUOl9cTuQGzzJdZmKreCSK9cHCcgml8s5sxzTBfQel/nyd9kAzj89/SSOIavHr+UvfBvGaKlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6439.namprd11.prod.outlook.com (2603:10b6:930:34::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Thu, 5 Dec
 2024 06:18:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 06:18:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 03/14] drm/i915/dp: Separate out helper for compute
 fec_enable
Thread-Topic: [PATCH 03/14] drm/i915/dp: Separate out helper for compute
 fec_enable
Thread-Index: AQHbRi5Ey2l8niRdKEeMLoEOmaF7kLLXLnDw
Date: Thu, 5 Dec 2024 06:18:15 +0000
Message-ID: <SN7PR11MB675028D62A73C7F5BA15395AE3302@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6439:EE_
x-ms-office365-filtering-correlation-id: 86e54029-e3af-41d2-5704-08dd14f49aa5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tJCGhaCKLEg/msBilieGUH5cfhCfByHJrhFtXWFGfSjaDSW903hb00YzBD9u?=
 =?us-ascii?Q?wcD+fCGpUlRPgjUzHZ/iNs/xi8z/0wHd5iArZ62QnrblwdOVd9PJfmGFAKB3?=
 =?us-ascii?Q?MfkWuSeyNAfZ2ZaqQB1upjicIPHHemGTIb6ueQKnE12TWh1vfMtuylvHVWUo?=
 =?us-ascii?Q?kIoEf756Q/iUCNkmogBZjXlSpMPn7giQS+uzq5V+X63dAkdVVW9+TfBFOKcw?=
 =?us-ascii?Q?yXX19PGkRUv5k+V5q0TgKaQNGSc9dRVj8qBGAyGRodCY0Xf0OIzrFtLJUPPN?=
 =?us-ascii?Q?6NEMEFQd7MMfyPTvWoG3jLboc/xUJoPahZzbCASAQfh1NVDvOX8nVKT75W3q?=
 =?us-ascii?Q?Bhc87d50f6RX3FIbFQhlaWZ6rYTf/mxpjoQK7VU/d7sjIqkuU2x5804hOkhR?=
 =?us-ascii?Q?/Vs1YmSV8DxA+ErjnsdFmACcmkWs02V0y9BLX0OVCSSyRdpHOarQkQzkWtMM?=
 =?us-ascii?Q?Vi3XxaPu3bY71JSo/nLQ7xUdNmCNyUEfiequVpq1GjK5MQsuiawfT6TWFppE?=
 =?us-ascii?Q?WqXx05BnkbxlDvfHlH26jwIHPNO+Tk2r1yXcD7RyJQvmfON2cGFhFcCIsF49?=
 =?us-ascii?Q?bdPmhdXCgY+jrTCSY+KsAv8+JgquP0QfHfxNAb2jMeO0bAYlnatOTCyYaRV1?=
 =?us-ascii?Q?CIIMDW1QUWwCidRljNf17E7D1eTtHngBORTDIwWiO5/L+P+2LnX24DuUaHJa?=
 =?us-ascii?Q?EU8YS8kC96tPZEy0GZYBwNvE2muALnyL9xi64k2xFaTM3tsN9x2amvokW0Ar?=
 =?us-ascii?Q?QsGHu9Qc1ThqQoY72KosX60GV0Umpyxt2Qwu26A7WbpGRLHjC4gD/johlM7u?=
 =?us-ascii?Q?oW1I8VbivHroxkyJm35GU2cnwfz8jQ3Vb3HaF2YUFD20t5JMIrvWEciXRxic?=
 =?us-ascii?Q?AaigtXSVvB4zDFVzBE+rBv9QLnPONWHBNWGinf8lsGLMV54TNfXlaPh57qDa?=
 =?us-ascii?Q?nGemLcIvPRBfN4O9MWkttNhWRg8/Zc9WyMocKViS5qc4K1NPbrs8rgd4/Toa?=
 =?us-ascii?Q?pk9PUL4RZ+OaG3jvb/ihxCarcrC2bWVp6hxPfgIEc5ouAp+M+CIx2ESBZEX5?=
 =?us-ascii?Q?z3N2rRI9Al9JdCAEqizHTemdI5GqfYNKeu8rqyEqgBebDZeiVXV4KK8/2Osj?=
 =?us-ascii?Q?MaLWfcVcKqyXbz5gvHVTTwqu9SeEDJlmGo+10hfnH0oF6n8RrT3x6A9rdS3v?=
 =?us-ascii?Q?Gsg56O9zkjplWfbb0TAFNUMm3Dl0he4foqVFAW27fv5zbG63nEB+PmFd/o8U?=
 =?us-ascii?Q?V+TgYcTsisT0nb6RHNcNfj/933NEWw9ahZ9sgfNZdZWIXxzLujMrJLUcdjxo?=
 =?us-ascii?Q?wTk4112umPQcFBwYHwsw7KkNJL3RzPULTln+xqk9My7lh0GQ8rFd6XDNphR/?=
 =?us-ascii?Q?XAvn2oJTrOyy5VuuGX8r6RopJAB4MO/U8ZIm/IXmS/syQe65iA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mdcZDtTz46AswCfHLuboyX413ITpfzR/i8DW3trqo0o2PgFm2km08CKy/0Ef?=
 =?us-ascii?Q?9w2vF0oVJe/ipFkRN8zyv6CN0aNz4SPlWEXwzZdm2K91sHm+6X4uKA4Uyx65?=
 =?us-ascii?Q?Tc6xJckuSWwCw7S/1NbtCSRtIj9LOMp5rvJZKxfePiolnaGdG3LSk/vRH8S5?=
 =?us-ascii?Q?ZAGNSRy8BSCLJLJQtJW5sEbEvygy5A92cKfhgApCFigxfD+dTL52976aGnrU?=
 =?us-ascii?Q?mIW37nuYY7eC9o5tdyyVJsLBljRLp2Xoli34O3PvjzviNw1T5xAMFasencJe?=
 =?us-ascii?Q?P8o6zypPZqBLjUKavUSV0aOUeQSNLfPD6HM9UmD7KYQBQdYEDxa2iIvctggK?=
 =?us-ascii?Q?Q2GZhfJM82KcRYDXgsUczKbV4s5NCsIbixbpP8KiiLZhZF9IpIdLDOB3ChgY?=
 =?us-ascii?Q?RG2ETnmECkFymumxmJXSuBi6dvw8yg5EZKluvevGgN1VetbK9yPjq5E2wzZA?=
 =?us-ascii?Q?yiTikSrOTk8mOL7Moq3ghnMsBtf+p19HyBcAL8ZWkwncb7iMK8ZigMyHCxe1?=
 =?us-ascii?Q?Jtd9JQv3OBLKg+5XptoS920zfKHo9srAKLtveJeChOhW3U8WvQrv6cuVKwhl?=
 =?us-ascii?Q?dMAg3VyVGqj9r3TMusTJjE0DXv/pLJ0McNWk4350S1Axgj3KVxlJNncCQ4Bc?=
 =?us-ascii?Q?VUeVvhbtwzJnyQXTql6Ik+K4nws7SAqufWaFTPVJHoBUg/lDIUJ8rsSsubGK?=
 =?us-ascii?Q?Yf7FOfiZi/Rdx11kCxDsmQdHWlH2phz4xI0KxqxFIE8xIav027iIL2EtYWJU?=
 =?us-ascii?Q?Etv5zqRhk3TZHwFrJU8a1+Kl/FJ8KmPrK+fcdanC7Rl+CsgyVt036ppsZNBT?=
 =?us-ascii?Q?ebDt2T0ZOPpPxWLQbFrgE/arC4PeBB/kRWfURaWus77j23Ud7T8iGJCqYGKn?=
 =?us-ascii?Q?OvN8Pv8XUo0o6BGFQQ6KRTPudCacQmiv3W0lMbuFZ96qOZUZyHcXGlO8xImT?=
 =?us-ascii?Q?pK5a/T/DWV5/tmoQc+AzFTGEM8EXj3/Fqo7KJWU0uZwrMDLSnR1LRMD0gTI4?=
 =?us-ascii?Q?XGBI4VxjX7RaTa6CEEm3T3eDDHJ019m9xckSm6CT/imjx2HI2H3D0GP1qMVv?=
 =?us-ascii?Q?Q5yefcvQY29QTWbzxUpXgTxIC8sR8yiyX7FT0QupjR9crjpQufnye/zbtPr+?=
 =?us-ascii?Q?wCJsPpuB8ndZpOFjfftSA4EL1KbIxMiOvV32AKZPmXsINN6k8CUeXe7WjOkQ?=
 =?us-ascii?Q?6kFZt4kbP9YHxja1BzZDQiTIF4NKlx1KAlbR8QEm+nbkikNDL2XtgTWmmXiF?=
 =?us-ascii?Q?Y+aKnMGZCHOYXndKoPm6tPDxrCGKL8PtXAZ0VKORsm4UcGIL1BmzbTj0s2LC?=
 =?us-ascii?Q?k8MEvGjOfvRWFaD0aWiYXSUHu64sgESYV61WFpKLddNahoEHSQGC0odKakFf?=
 =?us-ascii?Q?HkNM1jmKTjfJHv4mV1SiwP5UVxTORCes4QDx9PZc9UU0vceVPqGR0PU44t53?=
 =?us-ascii?Q?Ev0eT4Qm/mMuok1d40zCMWIKr5caauGDbJAjiRrWMH1PElzaeiGg/rqtn4//?=
 =?us-ascii?Q?q2pMqg+9YPa/1imcUirIAsV6fFYrtQPNjnZquU9CV/IxYm7hctqnB2jfYeiP?=
 =?us-ascii?Q?qsBauhI8s7h6hMAJsM7M/ifpggDP+EXjaT0pXAK2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86e54029-e3af-41d2-5704-08dd14f49aa5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 06:18:15.5256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tGunobBAoO3HJ5vPkX+KYiLBYyL5Qr2AwGq0cMAzV8AKYwtKuohaPR9Q7JRNHeU6cAalrgDcLlSbDJxPhhuEiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6439
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
> Sent: Wednesday, December 4, 2024 2:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 03/14] drm/i915/dp: Separate out helper for compute
> fec_enable
>=20
> Make a separate function for setting fec_enable in crtc_state.
>=20
> v2: Rename helper to align with encoder->compute_config() callback and
> other minor fixes. (Jani)
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 34 ++++++++++++++++++-------
>  1 file changed, 25 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4291aa4f4ab4..ccc495842518 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2344,6 +2344,30 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,
>  	return 0;
>  }
>=20
> +static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
> +					const struct intel_connector
> *connector,
> +					struct intel_crtc_state *crtc_state) {
> +	if (crtc_state->fec_enable)
> +		return;
> +
> +	/*
> +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> +	 * eDP. Until, there is a good reason to do so.
> +	 */
> +	if (intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
> +		return;
> +
> +	if (intel_dp_is_uhbr(crtc_state))
> +		return;
> +
> +	crtc_state->fec_enable =3D true;
> +}
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state, @@
> -2360,15 +2384,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>  	int ret;
>=20
> -	/*
> -	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> -	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> -	 * eDP. Until, there is a good reason to do so.
> -	 */
> -	pipe_config->fec_enable =3D pipe_config->fec_enable ||
> -		(!intel_dp_is_edp(intel_dp) &&
> -		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
> -		 !intel_dp_is_uhbr(pipe_config));
> +	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
>=20
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config-
> >output_format))
>  		return -EINVAL;
> --
> 2.45.2

