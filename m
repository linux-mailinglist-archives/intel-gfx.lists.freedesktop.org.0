Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B77AC50A07
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:39:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4DD10E696;
	Wed, 12 Nov 2025 05:39:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1mCF/IS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FD410E696;
 Wed, 12 Nov 2025 05:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762925984; x=1794461984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q09szbOUmu/BUtcWYy2nWw188pwBqNa3m0PZs/EgNWA=;
 b=Q1mCF/ISwq0deQH3utphh11jeFflD6Aq4+JUOaj65oX5qdQdLA/dAOel
 oYg5wgdFD3xY/8n3J0RV+YG7pIWlGpomEeVIXjyrqvW3AaoE+KlBUZEaM
 +VyB2ExlnKNAyB6wdrrWyh2CA87o3yTOjRDtNwcTnWK0ibLdwk1XKxlYY
 TaG5LTjwsqkbj7zolG3rFM802J9L/Zm0O0qZEpOlgY4N1vca7UNLNzgl3
 Cb2qOD60iEcKnj7h5pX3O1BEvg/13aNm1qDe+GxHEwxxMLEkcpGSIQ4s0
 vW/gFFEtSbsmlsEJhWONwkSXdHjfyMX1cAYRPK7xtPE6mkaEraZ+rv9wi g==;
X-CSE-ConnectionGUID: R35x0FZRQ/qwQuc7DOb4BQ==
X-CSE-MsgGUID: ARvAzAhGS6aCHC4u+bLueA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="82380211"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="82380211"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:39:43 -0800
X-CSE-ConnectionGUID: ZGuUMGNFQem2WSK0qaXxGQ==
X-CSE-MsgGUID: TJuFJL+iT7erw3uDPfC/6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="194109756"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:39:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:39:42 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:39:42 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:39:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EDo6LkJrmz62OoLfrVzZSbUC6Ujno/BeQeFdzgzYXQygNmmuv38MrVb1+S0A8+aGRiJu4/myzKp/L0i6KOX4NOfast2ScnLupJrhiftk9nsrGWJMQRQhN3sHqLX0xYAag/YJjMYe5l71OGVJs7qH1Oe3ev3BwSJFrjTVMlrIMzwMJiPpGuHCWtjZ70SfpCWUGApDHDJW6earLhlGJpCKXeiwaQr7T7Q2AvDm+neIRhJ9fQQRrT5xDwfBk7c7EZaswl6/I/Td9GqUrl1Tqb7UfU5FNzzpYLVUKHgvHXeIw7QRtkdOFPFAqyVenAsg5dBnPYv/4DtdnsY+G+zC8/+Rfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cm64nBRPFZR/w6RSjkBV1nr3s9tSQ5Z2N3Q+AUjKRqU=;
 b=hiKQzfJROQxqMlF3xfZGlqNND1opJgx2GV0/VuE2N6/Qlc1v+btj5VIaPziEgeHugGgWd3LUWMrOcJf8xsfEpyIlcSTpEF3r0Mvd/XEfneEc0/ICdNm9s/+7DErL3Vr0FiBsZSveQV39I3rRWp3sv56ut63vI4WpmIQnjbiz9Hdci+3k+DUQUJpcePiz93EK86Be3YSA63J3o85X0dxGa7rTa5/gxnc3N2Z5FETNVknkTtGRv3ufW6CO++EAJ0hD0u6I8J/Rn5Gr5R09aQg6/NOU7O9Kl0XtKibGW2obc78AMVGMkxjtSO/p4heGMPyM4S5OAJ28BkibfEQnEskqNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB8198.namprd11.prod.outlook.com
 (2603:10b6:208:453::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 05:39:40 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:39:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 32/32] drm/i915/display: Enable dpll framework for MTL+
Thread-Topic: [CI 32/32] drm/i915/display: Enable dpll framework for MTL+
Thread-Index: AQHcSlUgaB2HD3B0e0CDfqKXlgyylLTumJCw
Date: Wed, 12 Nov 2025 05:39:40 +0000
Message-ID: <DM3PPF208195D8D1F09728621CFE31A60F8E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-33-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-33-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB8198:EE_
x-ms-office365-filtering-correlation-id: 1a168bb4-79df-4fc5-04d2-08de21addfde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?EEA5t5ZVU4rVfvOcTzI9/7TOjwKaPtvCPmXVcvbDEhQ75H4S6hPSJL/1+oMP?=
 =?us-ascii?Q?uW4zicwabTivy0v50EwlHDAOZJWLQrKP+3B7iX6jbbvOUm3/f/yTuKwsu9tf?=
 =?us-ascii?Q?jv54fPQ0hqc7X20HdXLwq0QM2oeL8kp/aRCKMWrNbbYKQl+aVHsHZfjpAX4K?=
 =?us-ascii?Q?u+AZI4eE7Zke3R0ZEhmN/5pbKDad7ym1INaqLB6Om5k8PtgM1LQTNw2aMp8g?=
 =?us-ascii?Q?FV+JjzKPGxz1EVVf7QnD0USretpYffxdyqyoxRd3xsqEhzjMrIRmjTlnkobg?=
 =?us-ascii?Q?TWx0Q+nomJPuUbsWQjPcpF5dSkZBrVGcnXmuNegmG0AVx0O40/k8JAEP7YwZ?=
 =?us-ascii?Q?Qx6AXSOiQVV2BAH6ylKhQ+mOFVJNWaVw9Txf1NICPtA69ABppNp/nrUpSto7?=
 =?us-ascii?Q?gl7oEJ39kE2XWcT+4uljZLVBJEqwp+qS5WkOwt6ETKhvl2SlghdkcMD1TgnR?=
 =?us-ascii?Q?DTJrL74uQml7VvS+EQIIg2FRg3Fm08jCXRHFAM7yb7BxEm1dbKCE52MremAH?=
 =?us-ascii?Q?YsvtX9UVghHLW62mdxDKtb0LJN2s50H+FzhWsCCa39xcs/kI0fHIiFEMB15t?=
 =?us-ascii?Q?wkaJTwbutVdXJ5tAhg5rjuo8xRPxouibtE9IgBb+xBdaJKuFfsNmZac7NY99?=
 =?us-ascii?Q?G8ApL7PNqg44huWyo8ug90Vjn9BOBKK9tLAMHEkRs5jOHdjjqNhiKLCTO6Or?=
 =?us-ascii?Q?MPvLTFqXlnsjAGdGq5D06+M4m9KRQRyqjg8IhM0MYlbgIfylZ1YgLE+t2pS+?=
 =?us-ascii?Q?lye7Q/r1zAGx7y7eJvCMQcfxq0VhyXHk0XKIpRQ+Di49gfzrp2ehuMyzC7Oi?=
 =?us-ascii?Q?BLDIfr2E/CYU4P3zDlVGZE25FZJ/w0/AdLsbCh5viTIpkhYeukxSkxgGSY0V?=
 =?us-ascii?Q?/MQxPCeTs68Qv/4TJ+1qSwobKjpsiemNt2GYv5rVqOvtqbINpmCEONRpNE85?=
 =?us-ascii?Q?zi889WSPa4grXKMT7u/mQpM4bn264Yw0nkvdqoJj4B/XhPy/BA5OamGcActT?=
 =?us-ascii?Q?/Ka0+/M8oHO4z/4y1d++wLDVrQ9fMxOevrw7gQVj7QkTpXFSFjZt7dRGkpo0?=
 =?us-ascii?Q?/80npsruI5sD3JjjTvPkOMXVJj5gOZV/cQ6oOl6pAk0Trc9+ryqDoCUg+ZTU?=
 =?us-ascii?Q?NS2E2lu52PDGqZxWelY+p5F1QdLRogmo+9W88T5tPiV7cC1DXN/0jtVYtqwe?=
 =?us-ascii?Q?selgfDW+JifjXSZNkZysf/AbSjHDDBftGGZvVPHTrABFJ9ogizHmhlNB0m6V?=
 =?us-ascii?Q?OXDPsAjqUNGYpbuU1ST6TzjstmIqDA+UrXbQeiij0Xg1pQLwkm3FqlxLjKDg?=
 =?us-ascii?Q?u1nhBwV64ZuRnvgHQqAyX48cIQy4n3yXfvwXBiwRDo0HeIaqwadPPmWPDQGn?=
 =?us-ascii?Q?Yx/641qWWUgnLtJKXtXsAdtRrw6HP5sDwicrjrzzWUAg4FOfkWla0MtkWP1z?=
 =?us-ascii?Q?vZYASqT3r67fNgDBGA4vEs8YSQkIIAjCPpnMXl4sTXkAJOEt0mVelScYzNNE?=
 =?us-ascii?Q?ubbHNyUNe3El5+rOa6lt3IrOzttUeZMujoEQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Em7rlsLGU0ISbmd3aA1L/0dQkbadgKpjd5uvRdf5gx39danWxIRECTvWmWW+?=
 =?us-ascii?Q?OsIRR7dQo3CZVRWAhIHNphmvOY0JF+TpeOwDhRD+GGCxzLkIZthoiEMucMBN?=
 =?us-ascii?Q?JzbB1QFn/XTBjfrHTeLWhxnE0AhWKnDTZgbyoh5q1Wd0PzhdknjBCX4hmuKr?=
 =?us-ascii?Q?QWQ/HwxRf64Kj1VPJ3lZ5SdpU+KFEqQK56p6ZXJSH29mYPwbLZ3xeycDN+pf?=
 =?us-ascii?Q?L8/epOutvHahc8FBAXQRfeN4AeqX7ZRowhlpjyhzvnig3zrZvWLmiCZ8G23a?=
 =?us-ascii?Q?r+GbU2+4rzVzRmSxggm1T1TgAFz/2MYvBq8z/yG1f/ADBhEj5dg8YNSQaajq?=
 =?us-ascii?Q?egGYT7h7dCKBc5SrGZEAen0sKQqJrX/gQTvFtS65ioLjjhISNcPVtJLn8aSB?=
 =?us-ascii?Q?uoEldd7pVrfTe6OMpCcFBqhcvdbl3osvRDG9Ftm6ulaogEH8kXaAQUhcc01y?=
 =?us-ascii?Q?EmHUinj+FovJiIntoMDOlbCy+VMRtfZwJPb9U0tYnQQf2RS5Y0Iyniu3gLwn?=
 =?us-ascii?Q?UOfjUH7rHf75A3rS6Vw2agKJJG1peAmUE3txFs1Y7lnPJ4QEb/zJd3yebgaW?=
 =?us-ascii?Q?2xj9dvVeIdDt1dsWgKAbAFjdry2epakIEI5zKNWvvBs8q0xKoTulVkFyqDTs?=
 =?us-ascii?Q?w4XH0fGcR9NXLEdHUW88wAKulIfuLf5VkbFNdNIo1dElLIAf+4RmUkycJEPN?=
 =?us-ascii?Q?P+riBaet9cP7f/Y+2cWcfuxpQcF7XUhrqUBgADAHHo00u07AK5p4oRvmrM3i?=
 =?us-ascii?Q?DSluetk3VO+Fdq9Q9VNxvL+F0L8ONjojFB/T1q9M37yhFlyD8LjBmRMtIrkA?=
 =?us-ascii?Q?6w3q4zhH0AbDBuS6OVRpbmwO3Y2/jwacy1KyeM/lBBv9bExLa9SRcHX+JHCE?=
 =?us-ascii?Q?TM51mPp3ZUbOYwLjGJs/YIWiJ0AdM9TiC0Z/xl9+FKM/ozXDwAy269wpC8rJ?=
 =?us-ascii?Q?/Pw2idN2fwVE3WG/WwRaGEJY4x6Ue27l+i79+7nRvkEIph9sek3mYRrVdELq?=
 =?us-ascii?Q?0nMiSBB4787KvsyhiIVrDFvV7+qAv0mvWhhSXZobRtpuwIqoIoHI+YEwegoY?=
 =?us-ascii?Q?+NsBNKzEcETHjOKElLEl2D9P/Z+reKxMEWrCchot19J+342XHE6MuDhX9qxt?=
 =?us-ascii?Q?mgHNxGqRzf1vYxfGuHNrGsCSa4iN/dZrFoF0sw1uDiGT0kLco/RScmfuVTIN?=
 =?us-ascii?Q?GJ9Xv2paRw3fkAq8B674+So4G4aPzis99y4NNR/CTEvdKUuaRZ39+t2FPAuQ?=
 =?us-ascii?Q?N1N6xr/ACUVSmIRPveW5HyfJ8RId3/R7iUxG33QDE4JzXE2hrquBYjpxeXRD?=
 =?us-ascii?Q?o95avR4/o6kDE1O2WvT/21QuDZKe8s7UCh4oUltHbUd+bhykz7Cnb2/BVPxY?=
 =?us-ascii?Q?iR4Nrfql7Ab2KKjwQx/HcWJUxdq8naRGK4rbU9toGjd+pBrd8/H0zSfMgDf8?=
 =?us-ascii?Q?TQ8hKRvZCE+J4xyLrswdzfzX8OOcV0NTVzA3FhdZng/HN4uwRLdG5cuUfN1N?=
 =?us-ascii?Q?4mblsU43AML+Ilw1dckR3GF+x5aHX7yJzwADVzUu3sQgPkqY/2GPClnpVhoX?=
 =?us-ascii?Q?IAaGtoV6Q7r3CR6VjyT2IqOzPFA+ugjmJlQ/lZ3S?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a168bb4-79df-4fc5-04d2-08de21addfde
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:39:40.1446 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aDCjy3zDiovbCVVg7EwH7RT1skhmqIXaS9Kp4YIR5JSTipFFuXrfoPEUdd+r6VeuPPmJgqVIgoRqvTi4i3IhxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8198
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

> Subject: [CI 32/32] drm/i915/display: Enable dpll framework for MTL+
>=20
> Now that MTL+ platforms are supported by dpll framework we can remove a
> separate check for hw comparison and rely solely on dpll framework hw
> comparison.
>=20
> Finally, we have all required hooks in place so we can initialize the PLL
> manager for MTL+ platforms and remove the redirections to the legacy code
> paths from the following
> interfaces:

Avoid using we

>=20
> * intel_encoder::clock_enable/disable()
> * intel_encoder::get_config()
> * intel_dpll_funcs::get_hw_state()
> * intel_ddi_update_active_dpll()
> * pipe_config_pll_mismatch()
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 10 ------
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++--------------
>  drivers/gpu/drm/i915/display/intel_display.c  | 31 -------------------
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 23 +-------------
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  5 +--
>  5 files changed, 6 insertions(+), 89 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 432cdf56a6ed..2005a3a93f74 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3456,9 +3456,6 @@ void intel_mtl_pll_enable_clock(struct
> intel_encoder *encoder,
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_mtl_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  /*
> @@ -3624,9 +3621,6 @@ void intel_mtl_pll_disable_clock(struct
> intel_encoder *encoder)
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_disable_clock(encoder);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_mtl_pll_disable(encoder);
>  }
>=20
>  enum icl_port_dpll_id
> @@ -3655,10 +3649,6 @@ bool intel_cx0pll_readout_hw_state(struct
> intel_encoder *encoder,  {
>  	memset(pll_state, 0, sizeof(*pll_state));
>=20
> -	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
> -	if (pll_state->tbt_mode)
> -		return true;
> -
>  	if (!intel_cx0_pll_is_enabled(encoder))
>  		return false;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f554921f59a3..7a981b11b029 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3667,8 +3667,7 @@ void intel_ddi_update_active_dpll(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
>=20
> -	/* FIXME: Add MTL pll_mgr */
> -	if (DISPLAY_VER(display) >=3D 14 || !intel_encoder_is_tc(encoder))
> +	if (!intel_encoder_is_tc(encoder))

Also if !HAS_LT_PHY check here

Regards,
Suraj Kandpal

>  		return;
>=20
>  	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc, @@ -
> 4242,19 +4241,6 @@ void intel_ddi_get_clock(struct intel_encoder
> *encoder,
>  						     &crtc_state-
> >dpll_hw_state);  }
>=20
> -static void mtl_ddi_get_config(struct intel_encoder *encoder,
> -			       struct intel_crtc_state *crtc_state)
> -{
> -	intel_cx0pll_readout_hw_state(encoder, &crtc_state-
> >dpll_hw_state.cx0pll);
> -
> -	if (crtc_state->dpll_hw_state.cx0pll.tbt_mode)
> -		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
> -	else
> -		crtc_state->port_clock =3D
> intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
> -
> -	intel_ddi_get_config(encoder, crtc_state);
> -}
> -
>  static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)  {
>  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL; @@ -4301,10 +4287,6
> @@ static void mtl_ddi_non_tc_phy_get_config(struct intel_encoder
> *encoder,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	/* TODO: Remove when the PLL manager is in place. */
> -	mtl_ddi_get_config(encoder, crtc_state);
> -	return;
> -
>  	mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_DEFAULT,
>  			       mtl_port_to_pll_id(display, encoder->port));  }
> @@ -4314,10 +4296,6 @@ static void mtl_ddi_tc_phy_get_config(struct
> intel_encoder *encoder,  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> -	/* TODO: Remove when the PLL manager is in place. */
> -	mtl_ddi_get_config(encoder, crtc_state);
> -	return;
> -
>  	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
>  		mtl_ddi_cx0_get_config(encoder, crtc_state,
> ICL_PORT_DPLL_DEFAULT,
>  				       DPLL_ID_ICL_TBTPLL);
> @@ -5302,7 +5280,7 @@ void intel_ddi_init(struct intel_display *display,
>  	if (DISPLAY_VER(display) >=3D 14) {
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
> -		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> +		encoder->port_pll_type =3D icl_ddi_tc_port_pll_type;
>  		if (intel_encoder_is_tc(encoder))
>  			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
>  		else
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 2e927d6cd577..5b569ad8157b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4932,23 +4932,6 @@ pipe_config_pll_mismatch(struct drm_printer *p,
> bool fastset,
>  	intel_dpll_dump_hw_state(display, p, b);  }
>=20
> -static void
> -pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
> -			    const struct intel_crtc *crtc,
> -			    const char *name,
> -			    const struct intel_cx0pll_state *a,
> -			    const struct intel_cx0pll_state *b)
> -{
> -	char *chipname =3D a->use_c10 ? "C10" : "C20";
> -
> -	pipe_config_mismatch(p, fastset, crtc, name, chipname);
> -
> -	drm_printf(p, "expected:\n");
> -	intel_cx0pll_dump_hw_state(p, a);
> -	drm_printf(p, "found:\n");
> -	intel_cx0pll_dump_hw_state(p, b);
> -}
> -
>  static bool allow_vblank_delay_fastset(const struct intel_crtc_state
> *old_crtc_state)  {
>  	struct intel_display *display =3D to_intel_display(old_crtc_state); @@ =
-
> 5082,16 +5065,6 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
>  	} \
>  } while (0)
>=20
> -#define PIPE_CONF_CHECK_PLL_CX0(name) do { \
> -	if (!intel_cx0pll_compare_hw_state(&current_config->name, \
> -					   &pipe_config->name)) { \
> -		pipe_config_cx0pll_mismatch(&p, fastset, crtc,
> __stringify(name), \
> -					    &current_config->name, \
> -					    &pipe_config->name); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
>  	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
>  	PIPE_CONF_CHECK_I(name.crtc_htotal); \ @@ -5315,10 +5288,6 @@
> intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	if (display->dpll.mgr || HAS_GMCH(display))
>  		PIPE_CONF_CHECK_PLL(dpll_hw_state);
>=20
> -	/* FIXME convert MTL+ platforms over to dpll_mgr */
> -	if (DISPLAY_VER(display) >=3D 14)
> -		PIPE_CONF_CHECK_PLL_CX0(dpll_hw_state.cx0pll);
> -
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
>  	PIPE_CONF_CHECK_X(dsi_pll.div);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 46ae05976191..f744f61b291a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1211,27 +1211,6 @@ static int dg2_crtc_compute_clock(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> -static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc)
> -{
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder =3D
> -		intel_get_crtc_new_encoder(state, crtc_state);
> -	int ret;
> -
> -	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
> -	if (ret)
> -		return ret;
> -
> -	/* TODO: Do the readback via intel_dpll_compute() */
> -	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> &crtc_state->dpll_hw_state.cx0pll);
> -
> -	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
> -
> -	return 0;
> -}
> -
>  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)  =
{
>  	struct intel_display *display =3D to_intel_display(crtc_state); @@ -
> 1692,7 +1671,7 @@ static int i8xx_crtc_compute_clock(struct
> intel_atomic_state *state,  }
>=20
>  static const struct intel_dpll_global_funcs mtl_dpll_funcs =3D {
> -	.crtc_compute_clock =3D mtl_crtc_compute_clock,
> +	.crtc_compute_clock =3D hsw_crtc_compute_clock,
>  	.crtc_get_dpll =3D hsw_crtc_get_dpll,
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index ddc763d89aac..77ef6a0419d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4558,7 +4558,6 @@ static bool mtl_compare_hw_state(const struct
> intel_dpll_hw_state *_a,
>  	return intel_cx0pll_compare_hw_state(a, b);  }
>=20
> -__maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
>  	.compute_dplls =3D mtl_compute_dplls,
> @@ -4584,9 +4583,11 @@ void intel_dpll_init(struct intel_display *display=
)
>=20
>  	mutex_init(&display->dpll.lock);
>=20
> -	if (DISPLAY_VER(display) >=3D 14 || display->platform.dg2)
> +	if (display->platform.dg2)
>  		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
>  		dpll_mgr =3D NULL;
> +	else if (DISPLAY_VER(display) >=3D 14)
> +		dpll_mgr =3D &mtl_pll_mgr;
>  	else if (display->platform.alderlake_p)
>  		dpll_mgr =3D &adlp_pll_mgr;
>  	else if (display->platform.alderlake_s)
> --
> 2.34.1

