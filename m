Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D23839AC1BD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 10:34:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D5BC10E03E;
	Wed, 23 Oct 2024 08:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4Fs/wAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B351210E03E;
 Wed, 23 Oct 2024 08:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729672470; x=1761208470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=StZdkisMX9Xj9MNwIRcyg6nItLIE4Ce5ql+Jnm9EisE=;
 b=I4Fs/wAN49hIfW0n4M19vzwHMPs4Tt3c+Yzf2JxZKmTJHMOpqGg8Z8Go
 G6OskD5reT+pXGRmNwSrMhyxJ89feRtKaHUh3Oz3B3MtzugCGG48iJW5R
 bTYgIZCw1BmHveX4F9BkqPsR6Seiiw9q3ozlJc3/ue1xSdNwUcnpl0d7M
 rvbkMYbN7Lp1Df8J65LSJG8APQCP9qqGJyQ+9Kx39y7v5FTjc6LQUFvN0
 JFtIuyi5tbj2fBROS/nOz4o84GdhPFlgOQKrYbRsWEyr3WmoddrL3pcNN
 F4UfHnU9TL+j6Ov4gy91VVlZaO0CDIaoKvVaFwBy71bPPsAhwu8MBw/5L Q==;
X-CSE-ConnectionGUID: oM3nXscXTz+vMRVxevIGrQ==
X-CSE-MsgGUID: WND8LNs4RlaIf7oZwl5K/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29141121"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="29141121"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 01:34:30 -0700
X-CSE-ConnectionGUID: C88x5i7wRy2h8bGujFZKoA==
X-CSE-MsgGUID: 5za/6VVMQNacyHgk/34rFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="80948201"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 01:34:31 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 01:34:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 01:34:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 01:34:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UCQA+0Grt4k8K7WcA2NtlNln8X2H+u7SYn87QJ27h8CDnKmEi4TOwqczML0rm1h75oE28jUCwNrQxh61dbDpI+KHPRc+ZWObVH5Vvo86TE7k1l0Pw9/yOVegJAY37AWM4lzWLWAZXo0VfcDDVxm639CqGW3JyPioISikuJbxi3+ICbayzn8hY+j9V6CgIxx2TKuDD8mMU0O/kdR7ugRqkPJJteeH8zClsEuHta0IMjLzTRdHm57f1bVUHACYfn/LehMuY2BHg6oAUu3MeJ7xzy+eDHczyGmHLqQPRjXv99QCoqAeGfz40UB2ZGrMZ0vwNy4Ec6aSHovV6rXnubowfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6aC7u9aZ/UkBfsAK8s6ViYnpwCRVvbuOLkvBeHw0obc=;
 b=rXxP2dSEOwL4FcBT7AtonBQZg5K1cKYTOe+2ZoUFppt3vyL4my1V+BK6FYhEnpYrRisLoEcqhr8IPJu8wUF9C+2TRcehSpiLbscfdSKRMp25iK/QnxtY4XghJ+0jqcCOTz3Tx7skYZYPHY7NeEG+biF5K7hxouErruLzkWXqvhQCnYaBoc/9OgtfXMnxHwgCkJPzwMGM5YxZyUk0GtusQA0IVXfTKpoN1aofpZTryRVzuODzUQwLwgOIMuwJ2nyIfDGTrwxxaGJ5yyZEHg5aDHtxxPQq8BVZK55ukZH0Pl0Qj+kl7zV4rhgbtVRvW/TWdjFhGP0Eln14GDhEHeFyrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB8541.namprd11.prod.outlook.com (2603:10b6:806:3a9::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Wed, 23 Oct
 2024 08:34:27 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 08:34:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 04/16] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
Thread-Topic: [PATCH 04/16] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
Thread-Index: AQHbJRfqbj9KPhcrkUG9j9XqL60Kh7KUAl4w
Date: Wed, 23 Oct 2024 08:34:27 +0000
Message-ID: <SN7PR11MB6750C553BD63792752114D5DE34D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
 <20241023065257.190035-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241023065257.190035-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB8541:EE_
x-ms-office365-filtering-correlation-id: 4ff26e7c-3b0e-457a-df38-08dcf33d81d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?exbR56xiAAaTzZ2cMJ2IH7mHeEN4btCFcDgzrCpdxWK9TKq4YN6nFFZoizxg?=
 =?us-ascii?Q?U1tC9VJRCmqOzu88uwxMnfznyFZqACuxDBxouHfKIr3I6/laHCcRPRcvCyn6?=
 =?us-ascii?Q?K35jxH+4ZwSDKpLvD6mwhjsWdgqV+72fAr+FnMKyoPuHgwn2JtqQaWbX6sqY?=
 =?us-ascii?Q?LClOVkZjN11nXwojyiHdTYZatk/dgdmdWlS60fImMLNAhxeyz4brpaQAabOf?=
 =?us-ascii?Q?N/Er0ZQJJd9lA38hI+0q5pYFfelUbfxgKutw/+Zn7pPkJckyEWVccFG7kc83?=
 =?us-ascii?Q?WNsF0ju54kyK1yJ9GNiwu3uH+o1/lKgl7A+4HSGZYwmFyZ13d/7+q1n7OaDQ?=
 =?us-ascii?Q?n5RZ4MkUwMdX4yINjJQX4vg+LLlrAkPtNntozu6EDCtpEuBFPcFZYMqolNmh?=
 =?us-ascii?Q?H8pNGER7GTz5bRIsaX8gxrf0WDyPpCpGvEtD1MdQJ8RBLy0pOsJ4dTQY/joy?=
 =?us-ascii?Q?p/mvBi4Cwz9l1G9eRtLdUTkmF+ln3AEU3jiU8/tbhct8MipQ82RoQX5epDcQ?=
 =?us-ascii?Q?B9TYWD60w/WBR9M4f147BTDdYAxu4pVp8u9KSBavhEuK0uCh3ykMraV3hF1x?=
 =?us-ascii?Q?zmQ5Rt//5MEba6HRQv4pVuBZpdGMJjH3Hn2T4vcrboY+uH4XpOSSfzbv9FJp?=
 =?us-ascii?Q?Xc1WvNNpalTrA3YqWahqR3v/b1fkwgNc7JNnhhPkkGuJrJKpGULPPnMVW6X0?=
 =?us-ascii?Q?6LPk2cUpDN/B5buQDxFxKov2qX+/7usdaFchR2Xw6cU1rbmkg8KmMYChPtJ1?=
 =?us-ascii?Q?RpjtdfOij3swtg5bR9+KxZq69Ijvf8X2eOJP8YCt4NdWyXtSbv9WvMt5Zdjx?=
 =?us-ascii?Q?xjPUaUNji5mU0S1Tn5Kz09lcLgpBPLcuwnIoKsyCpArOV+W1vbklfjqspOWW?=
 =?us-ascii?Q?POMVoDodOCTnFLL5eNfhnYDL6dKaTeKYpbtdfPgoJbb54g1v907MdMnyRRIs?=
 =?us-ascii?Q?OHDGIwj7Ge6CScmUTv0+EyNtb+YEp3KXeEnw5tN2D1zeg00eumoQ9WyPs051?=
 =?us-ascii?Q?rUoXkP2aM/0pmQB0wz/lJ3VEWeN5+kyHlQMWKJCVwcmL6w7ez1uyFQw2kFTe?=
 =?us-ascii?Q?P4I5yj96kBkPXiBvbMB3q8Q6FQE5JSXdTyvK5m5bDeorkm5V36OqzBdlJy0x?=
 =?us-ascii?Q?6NP/98eqAGWqTwJ2685T8+NdIR01pTZFUEFPSfCReTnFRCKNU3yzngbrYCpK?=
 =?us-ascii?Q?vK/l5ZYTeGaH4zukN1QEyaQnKy2mbMDIXcEB5vusHjeL2nyzfDlSoRnUNIRb?=
 =?us-ascii?Q?kCoQKz/MoM5+BpENvr5JD5qZWlkDGG6CsKcj08wdRxDZ3f9EA6EeEsdKkLJB?=
 =?us-ascii?Q?WdZY2qimb5SITouk70UWsFgmbdsUoA8S3l8FDRXHxwIhmWbUsAvTMe6sZGG1?=
 =?us-ascii?Q?PN4/23s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P91A175Fn/vGks2qGzJ3kwShumcq5Qmf/XwYZuGB78AquCkx4H2fvC9S4mLt?=
 =?us-ascii?Q?LZhrok5XLp0nIVTVBHZMqWdLT2PRqpXTtra8AWGEOOVaOjjqdCrk+vRwxx+u?=
 =?us-ascii?Q?tlMo82Wzb0pmU+CfpJHqAkKVVqGr0OL0BbFnZR53acgrTLSl0VNJxpN/ODcM?=
 =?us-ascii?Q?3TerVhnjZdKSpwnZ6DwAW5ce1owcBIf4j4X3D4GfVGWxEQM/JYfj3jhEl5X9?=
 =?us-ascii?Q?nzq38ET9uxCzoR8tQ/Stq7Cakdc1Jha5u/lcW0v3zDTkcCkTy4d5ZhDxTkzU?=
 =?us-ascii?Q?yv1YnJ8A9fOj46SDAho1vnRrwvSHDToBcNP8OpCxFbrwqRML3FALtfQR2WKm?=
 =?us-ascii?Q?XUr2kOyDIzzL8q+HULaZpipxgiB4pjhwBxpnc10WaHUb4fZofseuGzJ1xwwx?=
 =?us-ascii?Q?VJr4cnuIF4pvoexlGEKDKMCcpNQ7gOgIvXrL0HI4jKhk0X16Sbf24vBXSMaO?=
 =?us-ascii?Q?lAkKUQ2RTMgItHWFDQx+VUBz+U6iFez4FEJRj+UBzf5drZn5uHBnwA02ErJo?=
 =?us-ascii?Q?jz4+qY69DxqgZVueFysaCOMAqdNuQ5wVp/6N+L1adc+J3mr6crjawXRmTcI1?=
 =?us-ascii?Q?E6MyFwdeY2XDYEOSTtB+eSNciZLwf35loRmpYC3mGP1HX3ZuUDkj0Zlnr/KF?=
 =?us-ascii?Q?5RWsNkdYytunNSTev2S3Yq+Jb+3HOyhn+5mQF8q96kNOGu4L7TZHQ7YqaBE2?=
 =?us-ascii?Q?sgSfrByhFv9BYANt4/s4a+wODT9eiCqgAQkykIKhZ6hiF9RnH2eZ4J1rDc2M?=
 =?us-ascii?Q?XQ0tASY5Mv5J+EL2cdgMZBS7fkQaUDH58UeVFiifbWP51wZf7dnlkmxTkm80?=
 =?us-ascii?Q?2sSpgXzmcSo21eOoJhNJ9lO+4kYyDaQLNx3pF13Ev3Hqo2IeGGdrZAKJKudm?=
 =?us-ascii?Q?yhx83adniBK6DiBTkCL6yOL8nC0sC/9dVZaeAd4PhYMie5VXvuA7dcvu2gf4?=
 =?us-ascii?Q?1755R9T5ryxxntBAA/6VmyD8ZtvV1CcPdYT525AGqon1rD39Gox+uSbCquZs?=
 =?us-ascii?Q?52YjEv1pdtH95aSnGWJjs8OoHPiPQtPtHrdZWgeCfnRh/SQLNz+ZGhsOddFB?=
 =?us-ascii?Q?4jY+ucRhL6JL9hzE8iUACwOcxoqhLZ/wxDl/TT3Q7sBWZ9adtyioFGfrxVdq?=
 =?us-ascii?Q?zVpQ5D/8B2ODiBDZzsJpCo5lgeMdmEyNk1pBEvDC8yW4r6m5OgNfS3O1JkSE?=
 =?us-ascii?Q?Ncl60o6EuWbw9pifiV65jRvMBbU4FtaNawy+8aIDq4VEsGarQQcR3nfBLsBW?=
 =?us-ascii?Q?WuNnWC3WWQ8dFJycx1vsRVMHVcq3YbrYXmJ0qbM9UN9rd7JTDYlV+C4pYa+L?=
 =?us-ascii?Q?xvbiBffVi2i0ZwQyrQVvBx1Flmut37vPoNLYz5Gu758oRUyOg2K9hXEZcY8I?=
 =?us-ascii?Q?SwvShGWhOU64huQTakJoALC+90liXhqi1O1volXHms+xddFFElywLR3xqBQh?=
 =?us-ascii?Q?n47eBGjDWVTTHT5F+5NUcclgDfzRF/4s988OKF950xsakOxfA2tHKDZuGN++?=
 =?us-ascii?Q?CZjeyZhDXOs0KAUt4ikRipXLDTGW8BcniWFeQESRcy3ugt9P/FQ9IrEOEs3K?=
 =?us-ascii?Q?2k8rBYkDHNnEwdwJDuCw96udkA+hoFay+xAcPfYW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ff26e7c-3b0e-457a-df38-08dcf33d81d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 08:34:27.6200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +gzCY1YDUtrmpL363axEk3V792DVd7HEJNssyN9F+PoCUgpHEFM53JjObhQH0CF6pnraZF+2tjLnW/cLnvxV+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8541
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
> Sent: Wednesday, October 23, 2024 12:23 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>
> Subject: [PATCH 04/16] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
>=20
> Introduce the register bits to enable the 3rd DSC engine VDSC2.
> Add support to read/write these bits.
>=20
> v2: Only introduce bits that are used and update the subject and commit
> message. (Suraj)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c      | 10 +++++++++-
>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  2 ++
>  2 files changed, 11 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 159f83edd5b0..29b1aa7f4f94 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -775,6 +775,12 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>  		dss_ctl2_val |=3D VDSC1_ENABLE;
>  		dss_ctl1_val |=3D JOINER_ENABLE;
>  	}
> +
> +	if (vdsc_instances_per_pipe > 2) {
> +		dss_ctl2_val |=3D VDSC2_ENABLE;
> +		dss_ctl2_val |=3D SMALL_JOINER_CONFIG_3_ENGINES;
> +	}
> +
>  	if (crtc_state->joiner_pipes) {
>  		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
>  			dss_ctl1_val |=3D ULTRA_JOINER_ENABLE; @@ -977,7
> +983,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  		goto out;
>=20
>  	if (dss_ctl1 & JOINER_ENABLE) {
> -		if (dss_ctl2 & VDSC1_ENABLE)
> +		if (dss_ctl2 & (VDSC2_ENABLE |
> SMALL_JOINER_CONFIG_3_ENGINES))
> +			crtc_state->dsc.num_streams =3D 3;
> +		else if (dss_ctl2 & VDSC1_ENABLE)
>  			crtc_state->dsc.num_streams =3D 2;
>  		else
>  			crtc_state->dsc.num_streams =3D 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index d7a72b95ee7e..474a7f9f3881 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -22,6 +22,8 @@
>=20
>  #define DSS_CTL2				_MMIO(0x67404)
>  #define  VDSC0_ENABLE				REG_BIT(31)
> +#define  VDSC2_ENABLE				REG_BIT(30)
> +#define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
>  #define  VDSC1_ENABLE				REG_BIT(15)
>  #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
>  #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> --
> 2.45.2

