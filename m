Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 656C0CF6D27
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A85410E1A8;
	Tue,  6 Jan 2026 05:52:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jn7R7tDM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF6D10E1A8;
 Tue,  6 Jan 2026 05:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767678725; x=1799214725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=P9ctvBbsAQVBrM7kAq9M/S6mHwAR6BLM/+YwYEabcgY=;
 b=Jn7R7tDMNYD/V8QKU9UAogMmbjorX2ARmpVSrvKpTYzm5ORmj7ZMsEGT
 PQNC/FRHtMGi5AyY/MkBLipUGYiYigXLJ16HLeMkqjM9aJl1rPhfqB/Ai
 Bc3ts11OcS7TE0fwWCP7TUdNJtaxHf0upr/q5jIlF4DMPEdjHVYSUOfDG
 VTcZhNaKvG6sXvvJWtkM7S/5v+BFU0rArPJBifoxoRgA/VC/Rg8FuiDEg
 J4Q8XZFMSK0G/cj0YwkeHDn2XTOURCWQeiO9wfAHtB5HR5KN5BPI7kIfN
 LeXX6oLjT4olLT+fSbEKSPCuER/f03qxXD06zJzADDKGhdwWNsDhZbBAo g==;
X-CSE-ConnectionGUID: pbps6d5KRXCrCWtS47Dl9g==
X-CSE-MsgGUID: 42EKvX/QR3eZdbHsaDPJBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68948891"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="68948891"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:52:05 -0800
X-CSE-ConnectionGUID: X5CMRb9LR1Kg+EToHa1BVA==
X-CSE-MsgGUID: FJICwj/nQymDaZq75UaaGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="233271575"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:52:05 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:52:04 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:52:04 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.31) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:52:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DMujJ/fs1bGiyV3N/RgiggXEmKzK4WyjPk5CwI9NMw2QbJx7iOrCFudKZoFEtuGTomzFH60x0njos1gf3gJQMPWujGhX1U+htcSd7uTN+3IQTxJWXaWsUanWUUexuyJlAqVCtTohJ2mLZEDhDf98m7BafMJ4R5fgH9aMQlpceL1mrXWj94iq4+1mlw+a07Ml+kP+1+p6SwfOIFZqtR5s0YLQFzPrM6X/7YCS77RWXoAZPtYDV0YAL8Mr2esA7H9GXgAlxZY9V68XBtORtwy0x1SmeqJ2Ve+WScafUv5rTzV4j0S1c3DaHAdlO8Ylb+O2OKNkG9Gu37YYLOTCiWmK1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upfqu6G1wz0fXMXe8te0mqy/rf54u0Qm9CToLzkrMRQ=;
 b=Zf/81Mpi2dZ/V7uiWIRwP1j1OEz/YRqCBNu4FNx88jolPm5hEwju1s3teoJ8Z6PHfr15x1T20rb+ir51hLPgKiRCIVxerV+QRCAo7EoIqz6a/WFaCQt6LefXEnP4HBOnUmX/6aiGL4yd7yJ2pNw1wF1hJ5CAS2jZr8Mt2mPO49B95ShL4IBMEXa1QBv7VS7yX87N+Bcos7wKum3iW8c/KxJ1cHDO+6Jh3UQy2XUIL3K0rMeQPdje0hKF8s0HbXiDXtN9On2mVbG7xVDu9k2q9lf2POTaI4HVQ7QxDlTB8DrhfFkkUABRoh0dsahIqygUQpXfHkuWG3HW+/LsRda8qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SN7PR11MB8109.namprd11.prod.outlook.com (2603:10b6:806:2e0::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:51:56 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:51:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
 eDP/DP/HDMI pll tables
Thread-Topic: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
 eDP/DP/HDMI pll tables
Thread-Index: AQHcb2sLd16aDKhMkkKoNxpsPCQwh7VEs9qQ
Date: Tue, 6 Jan 2026 05:51:56 +0000
Message-ID: <IA3PR11MB8937EAC0DF09157DBD8462C2E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-16-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-16-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SN7PR11MB8109:EE_
x-ms-office365-filtering-correlation-id: 0359c700-7839-4f84-7654-08de4ce7b348
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?kvoGORoFC2Hc15wVZhPdt9eElxDKqQyNh6a7RDgpggSK+0+jT+vTBDuVRHJw?=
 =?us-ascii?Q?FQN/iZkNSOHwRWkWw84qNd7QjnMrqHClGW4P/eDtW8dQhUIGCPITUpuDeBln?=
 =?us-ascii?Q?EtSKgwwYvinRwM5sly4oDAshLT6yWhbQMjBCBQTp6KEdnY5HBwhbBoJZKM3+?=
 =?us-ascii?Q?rDx3vr1kNpE4Gsnif7AAEowQrDe9KcSf4ZTPrjNWeIuTlijQtbgBOVnQ7rtk?=
 =?us-ascii?Q?EVCr68zy9jMO453B5zrtXMVwAX8+3jVrDM/ygEpH7C+uuFICnrsuktND2622?=
 =?us-ascii?Q?dOyS+wQfnDQ8mUpgde6X+jUMnnRixqeoq0ahr+s53aU+2Ui2qKOBVZxHONaU?=
 =?us-ascii?Q?GgW7kQxxyGt4nzpeYnc+eTzEh8oU8TAHU35Vxz9y0f2m3tZPiAKZ5/p/EhKz?=
 =?us-ascii?Q?wAg1h2X9hatKBg9c7ZvtMJWxgjpinbhUYk90118+egbxCyLftplTaYh3ueio?=
 =?us-ascii?Q?RKOrFMEpNLNxB8XII0z+AEDsIdHEqw6PTGfc2tRgItiZE65DyRL6Iy3uLJsY?=
 =?us-ascii?Q?QhHAVY3v82ti1s0AeYfcOqRHASaieC090HCaTKD2x/mHmMODzqEemffV0T4Z?=
 =?us-ascii?Q?tgWb9QxmgMxgAZy2VnDz92G0SQxlHt+XP9RMPETpNL6FDn+tic5S2jGB5KJH?=
 =?us-ascii?Q?6dyjcxHvnEiyP9+qUT4GIQ998H8PFBHcolAZ0uI2mKbABTCrB8Yjsz0XsR1a?=
 =?us-ascii?Q?oJEgquJK01m0gPdmt34cUm8CvbT289ngARYG9EBlly/KfOPl3Em3WXztug4C?=
 =?us-ascii?Q?HuyS1yaPxWK3COsRXglKOYnU8Q85z0kVrvv97zvUHCSRX1ydAZxE/heiukrW?=
 =?us-ascii?Q?lsNlCxe4PGl929vL0Tqtv+gmX7rV4V0nze0c8NpmcJVrHCqqPXtK1JUe5A1+?=
 =?us-ascii?Q?pPjeAJ9dxkJvOXfe565LD1k5d7sGoAODNCcOkoSgzNs3XqUrECGdAghpx1fW?=
 =?us-ascii?Q?id34oGYS5e9zcIIqBB7b66tnL1IrggDmfZ/9hzm4UAL5CzIT/v4PebtAl7Kh?=
 =?us-ascii?Q?qmn0bVOWfCK9jquSimMLfv+fq+p6TKjqy64dQY299E71GZWhv7RqXuKV57Bw?=
 =?us-ascii?Q?BEDaYyewToSGXFObUbD8Pyw234oW4fJm5T9CfD29cIJtNtflk0Posn5XvAnb?=
 =?us-ascii?Q?QIOSUVrvdX5CqCZgeCFm/3xQBZ15P5uHy44PDQ+/I8RYGUq7Ln6ZZ0ymTMno?=
 =?us-ascii?Q?O9TnZWbcS3RVAPoJVlb7N5HQ1544+rXmsFKtWMkykgXQaAA/56wcnDqAiac0?=
 =?us-ascii?Q?UvXWtODWhL4fHdxpbsfJwdWw1isU4UMdr6FJxNNYbGK+ts6SPwn+YvNNLYk8?=
 =?us-ascii?Q?A3FcVXaamL79HCztPjQPoAs/pxtsHLIs0ZdAFp/MaI58evevc47SFqyoDGdk?=
 =?us-ascii?Q?gpxwBtrNdAFODd+aau8RjKui2RkOv8Txskv/stdxZ8735gl3aZoWbZ3YV4o5?=
 =?us-ascii?Q?Qdci3Ocl83LYdU/P6KntwNkXoKdQD7Sb+N/wj442jNTbiuJ0MgZWGAibp4K/?=
 =?us-ascii?Q?oFVxzZO8H1Ybco3d3RgWwn32noA60HOqWpOv?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0VS+qk8Okkuy+IP+YpoNmA182wX3ojOLAF045JWmsVS8LCOj79OXA3QYl/iR?=
 =?us-ascii?Q?MLskjBs59F6Q8iBJAwTMqyVdxnUD0lAd4KlBDBYy81g96kWI3UG6bEWlW7Yx?=
 =?us-ascii?Q?yDHOuXLauk+xy6dRV16oPLE1CPLkfC2oFOzUoiSjoephO/9sKztaKDAakm/J?=
 =?us-ascii?Q?gGucwU32FpzlCzmLMZfuBBBZaRp9EVo5OiJqDp9+TFoYjhG1ly23ATCRP6Mj?=
 =?us-ascii?Q?JuBiO5FgDeO3kDoUhFuiiAi2usjH6jH+g1Pb6+G7Z9y5Fyb394S4e4cVtIB7?=
 =?us-ascii?Q?hEbr9mYROfYTdnKXT4AXYPiDP24JP+ZDyk4Dxhy/+gNcLRkg7Ne+kT6F+DoL?=
 =?us-ascii?Q?tnsK4Lvc62NSOBjlfi2LFrWXJCVbgapga1JIlv6GQNNIaTOVHsTasuKSqIOE?=
 =?us-ascii?Q?yhRcIUs6RCLERX9d96n164AIYVddC+Iu5hXkv6BHD2pYIcK/+OWj5HS2pz1k?=
 =?us-ascii?Q?wnOrbdXTN5//MOxMdknMq75dA+o4V11EYjjFHM2T41tZabQaeIHUV4fTmWU4?=
 =?us-ascii?Q?PLJY9Qm/VtNWultYRLAVauo3jplKpEnkKmALyTq6+pubc3bMNWppJMR+TUMY?=
 =?us-ascii?Q?7iZNxjQ96a7K7sw70ybEKg1lqCX1Lc7aXNnRKVNNMhDN7WArgzM9C70V8g79?=
 =?us-ascii?Q?LzYsw0YQfrrakHyxT5CthqKyaUJHGxu14r229mxwl4JzJYoGgGGTozqKshDB?=
 =?us-ascii?Q?OOQ6E3fG0TYUGkwEMPb95PeouhNawK71qph/p5cHlaccWVrK1T2xjljnh0tL?=
 =?us-ascii?Q?xUqB/BzvEG0H0bCVr4PXssfplZ9k9Graz/PjYp8Ij/x24vrQ2DYJyBpxdb3D?=
 =?us-ascii?Q?xbFMmdo9R6/3N6S0b720RgNaxx/p+BuauuijTWGa26adgaSSyfUxD9F11xHU?=
 =?us-ascii?Q?rlqdKAztRAr6U7cFdYUbkeZEfqE1iJd7UD0OKyaLEYPUpgywUj8FesrHavmp?=
 =?us-ascii?Q?gLudfUjj0r91NFMkxPW/uVkJ+ErbOnvC+trKkXNqUQNEfw0wyyjHWWZvjwo7?=
 =?us-ascii?Q?T2ZGjo1hGafpzozFqi9QKa9IriQeJ+ppdvTXZ9sJNwuVwOev/Ip0MEfD0NSB?=
 =?us-ascii?Q?+8hu0l0ONB+Uw2oifJdPBwkJF0dMiIIt+z9xQkU3vYlKXkM8fH4UZg0fvdbc?=
 =?us-ascii?Q?WymJuZObM0W5tQy98dASuLeRlo2ENU+X2DhyJdDKUKMBXWVyVYIGA2dwesFY?=
 =?us-ascii?Q?M1XFDRI6CSLV9Rc37XhOEr4BT30XuvRKRzEZrrjLsvQkxi1Dmy/5ntrFLL4r?=
 =?us-ascii?Q?fJAQSNQLGFGy+ohYbD8MqSk4elcwVik9/owKMkZV308H/zBLwzHskNifGBUa?=
 =?us-ascii?Q?+GI+/TwIi+K5NqFIi8pPA/HrF6iNP2OwJ5QOI6iTq7mHdXabnKdsjw5JgfIJ?=
 =?us-ascii?Q?OcQJ6SVryAqXNJByG0Nlaida1j0YL5BtBnYBRMT/tBHik9cTxltIHGisYdSE?=
 =?us-ascii?Q?T7TQOpkK8V0YPT36DJ65BWWthPDofCIq3XAHJu4oup0zJKuIbGMvnBUyEJc8?=
 =?us-ascii?Q?cD87QlbqaM6nSkOeDL2jBwnAb6wzd2NoalL5x1MtaPaQ5Bcc9yRsOuBDRFwB?=
 =?us-ascii?Q?gQOyfA8D/QiiQmJeLl0nAifi4z1MwEpJ4ZFo/MJqFm967r4YYff4TQBAQ/gS?=
 =?us-ascii?Q?r3RdHNHbz1fkuJRQ/ZrhD7RgR7+ohwFnNd87Cle9ODgpnAitw3OH9J6M0O4Q?=
 =?us-ascii?Q?RHDDmsW4AUCrudyujUNM2KcQRzse3MfLdeH03/QpIgxutla5IkD25IJDDCoK?=
 =?us-ascii?Q?WIg/n1tpLg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0359c700-7839-4f84-7654-08de4ce7b348
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:51:56.2007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: It8WFpok6BMzXkus5790stCkNQjGwnwmaO+CQvH9SukLuJnP7Jl5F4zxdKtfoHcM8kRAOMZBS9iePkgZB2zdFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8109
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

> Subject: [PATCH v2 15/15] drm/i915/display: Remove .clock member from
> eDP/DP/HDMI pll tables
>=20
> PLL state structure has a member .clock. This is not needed as the port c=
lock
> is possible to calculate from the pll dividers.
> Remove the .clock from the pll state structure.

Sounds awkward maybe=20
"Remove the encoder from being passed to the port clock calculation functio=
n."
Other than that,
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> v2: Keep the pll_state->clock assignment in
>     intel_snps_hdmi_pll_compute_mpllb().
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 86 +------------------
> drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  3 -
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 26 ------
>  .../drm/i915/display/intel_snps_hdmi_pll.c    |  2 -
>  4 files changed, 2 insertions(+), 115 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 5d0bca0f75b0..2a353dfad87d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -547,7 +547,6 @@ void intel_cx0_phy_set_signal_levels(struct
> intel_encoder *encoder,
>   */
>=20
>  static const struct intel_c10pll_state mtl_c10_dp_rbr =3D {
> -	.clock =3D 162000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0xB4,
> @@ -573,7 +572,6 @@ static const struct intel_c10pll_state mtl_c10_dp_rbr
> =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_edp_r216 =3D {
> -	.clock =3D 216000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0x4,
> @@ -599,7 +597,6 @@ static const struct intel_c10pll_state
> mtl_c10_edp_r216 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_edp_r243 =3D {
> -	.clock =3D 243000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0x34,
> @@ -625,7 +622,6 @@ static const struct intel_c10pll_state
> mtl_c10_edp_r243 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_dp_hbr1 =3D {
> -	.clock =3D 270000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0xF4,
> @@ -651,7 +647,6 @@ static const struct intel_c10pll_state
> mtl_c10_dp_hbr1 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_edp_r324 =3D {
> -	.clock =3D 324000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0xB4,
> @@ -677,7 +672,6 @@ static const struct intel_c10pll_state
> mtl_c10_edp_r324 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_edp_r432 =3D {
> -	.clock =3D 432000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0x4,
> @@ -703,7 +697,6 @@ static const struct intel_c10pll_state
> mtl_c10_edp_r432 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_dp_hbr2 =3D {
> -	.clock =3D 540000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0xF4,
> @@ -729,7 +722,6 @@ static const struct intel_c10pll_state
> mtl_c10_dp_hbr2 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_edp_r675 =3D {
> -	.clock =3D 675000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0xB4,
> @@ -755,7 +747,6 @@ static const struct intel_c10pll_state
> mtl_c10_edp_r675 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_dp_hbr3 =3D {
> -	.clock =3D 810000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x21,
>  	.pll[0] =3D 0x34,
> @@ -836,7 +827,6 @@ static const struct intel_cx0pll_params
> mtl_c10_edp_tables[] =3D {
>=20
>  /* C20 basic DP 1.4 tables */
>  static const struct intel_c20pll_state mtl_c20_dp_rbr =3D {
> -	.clock =3D 162000,
>  	.tx =3D {	0xbe88, /* tx cfg0 */
>  		0x5800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -861,7 +851,6 @@ static const struct intel_c20pll_state mtl_c20_dp_rbr
> =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_dp_hbr1 =3D {
> -	.clock =3D 270000,
>  	.tx =3D {	0xbe88, /* tx cfg0 */
>  		0x4800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -886,7 +875,6 @@ static const struct intel_c20pll_state
> mtl_c20_dp_hbr1 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_dp_hbr2 =3D {
> -	.clock =3D 540000,
>  	.tx =3D {	0xbe88, /* tx cfg0 */
>  		0x4800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -911,7 +899,6 @@ static const struct intel_c20pll_state
> mtl_c20_dp_hbr2 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_dp_hbr3 =3D {
> -	.clock =3D 810000,
>  	.tx =3D {	0xbe88, /* tx cfg0 */
>  		0x4800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -937,7 +924,6 @@ static const struct intel_c20pll_state
> mtl_c20_dp_hbr3 =3D {
>=20
>  /* C20 basic DP 2.0 tables */
>  static const struct intel_c20pll_state mtl_c20_dp_uhbr10 =3D {
> -	.clock =3D 1000000, /* 10 Gbps */
>  	.tx =3D {	0xbe21, /* tx cfg0 */
>  		0xe800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -961,7 +947,6 @@ static const struct intel_c20pll_state
> mtl_c20_dp_uhbr10 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 =3D {
> -	.clock =3D 1350000, /* 13.5 Gbps */
>  	.tx =3D {	0xbea0, /* tx cfg0 */
>  		0x4800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -986,7 +971,6 @@ static const struct intel_c20pll_state
> mtl_c20_dp_uhbr13_5 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_dp_uhbr20 =3D {
> -	.clock =3D 2000000, /* 20 Gbps */
>  	.tx =3D {	0xbe20, /* tx cfg0 */
>  		0x4800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -1025,7 +1009,6 @@ static const struct intel_cx0pll_params
> mtl_c20_dp_tables[] =3D {
>   */
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_edp_r216 =3D {
> -	.clock =3D 216000,
>  	.tx =3D { 0xbe88,
>  		0x4800,
>  		0x0000,
> @@ -1050,7 +1033,6 @@ static const struct intel_c20pll_state
> xe2hpd_c20_edp_r216 =3D {  };
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_edp_r243 =3D {
> -	.clock =3D 243000,
>  	.tx =3D { 0xbe88,
>  		0x4800,
>  		0x0000,
> @@ -1075,7 +1057,6 @@ static const struct intel_c20pll_state
> xe2hpd_c20_edp_r243 =3D {  };
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_edp_r324 =3D {
> -	.clock =3D 324000,
>  	.tx =3D { 0xbe88,
>  		0x4800,
>  		0x0000,
> @@ -1100,7 +1081,6 @@ static const struct intel_c20pll_state
> xe2hpd_c20_edp_r324 =3D {  };
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_edp_r432 =3D {
> -	.clock =3D 432000,
>  	.tx =3D { 0xbe88,
>  		0x4800,
>  		0x0000,
> @@ -1125,7 +1105,6 @@ static const struct intel_c20pll_state
> xe2hpd_c20_edp_r432 =3D {  };
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_edp_r675 =3D {
> -	.clock =3D 675000,
>  	.tx =3D { 0xbe88,
>  		0x4800,
>  		0x0000,
> @@ -1163,7 +1142,6 @@ static const struct intel_cx0pll_params
> xe2hpd_c20_edp_tables[] =3D {  };
>=20
>  static const struct intel_c20pll_state xe2hpd_c20_dp_uhbr13_5 =3D {
> -	.clock =3D 1350000, /* 13.5 Gbps */
>  	.tx =3D {	0xbea0, /* tx cfg0 */
>  		0x4800, /* tx cfg1 */
>  		0x0000, /* tx cfg2 */
> @@ -1218,7 +1196,6 @@ static const struct intel_cx0pll_params
> xe3lpd_c20_dp_edp_tables[] =3D {
>   */
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_25_2 =3D {
> -	.clock =3D 25200,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x4,
> @@ -1244,7 +1221,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_25_2 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_27_0 =3D {
> -	.clock =3D 27000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34,
> @@ -1270,7 +1246,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_27_0 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_74_25 =3D {
> -	.clock =3D 74250,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4,
> @@ -1296,7 +1271,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_74_25 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_148_5 =3D {
> -	.clock =3D 148500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4,
> @@ -1322,7 +1296,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_148_5 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_594 =3D {
> -	.clock =3D 594000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4,
> @@ -1349,7 +1322,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_594 =3D {
>=20
>  /* Precomputed C10 HDMI PLL tables */
>  static const struct intel_c10pll_state mtl_c10_hdmi_27027 =3D {
> -	.clock =3D 27027,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1359,7 +1331,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_27027 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_28320 =3D {
> -	.clock =3D 28320,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xCC, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1369,7 +1340,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_28320 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_30240 =3D {
> -	.clock =3D 30240,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xDC, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1379,7 +1349,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_30240 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_31500 =3D {
> -	.clock =3D 31500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x62, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1389,7 +1358,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_31500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_36000 =3D {
> -	.clock =3D 36000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xC4, .pll[1] =3D 0x00, .pll[2] =3D 0x76, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1399,7 +1367,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_36000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_40000 =3D {
> -	.clock =3D 40000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1409,7 +1376,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_40000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_49500 =3D {
> -	.clock =3D 49500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1419,7 +1385,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_49500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_50000 =3D {
> -	.clock =3D 50000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xB0, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1429,7 +1394,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_50000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_57284 =3D {
> -	.clock =3D 57284,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xCE, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1439,7 +1403,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_57284 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_58000 =3D {
> -	.clock =3D 58000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1449,7 +1412,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_58000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_65000 =3D {
> -	.clock =3D 65000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x66, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1459,7 +1421,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_65000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_71000 =3D {
> -	.clock =3D 71000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x72, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1469,7 +1430,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_71000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_74176 =3D {
> -	.clock =3D 74176,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1479,7 +1439,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_74176 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_75000 =3D {
> -	.clock =3D 75000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7C, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1489,7 +1448,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_75000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_78750 =3D {
> -	.clock =3D 78750,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x84, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1499,7 +1457,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_78750 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_85500 =3D {
> -	.clock =3D 85500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x92, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1509,7 +1466,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_85500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_88750 =3D {
> -	.clock =3D 88750,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0x98, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1519,7 +1475,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_88750 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_106500 =3D {
> -	.clock =3D 106500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBC, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1529,7 +1484,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_106500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_108000 =3D {
> -	.clock =3D 108000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1539,7 +1493,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_108000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_115500 =3D {
> -	.clock =3D 115500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1549,7 +1502,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_115500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_119000 =3D {
> -	.clock =3D 119000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD6, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1559,7 +1511,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_119000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_135000 =3D {
> -	.clock =3D 135000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6C, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1569,7 +1520,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_135000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_138500 =3D {
> -	.clock =3D 138500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x70, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1579,7 +1529,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_138500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_147160 =3D {
> -	.clock =3D 147160,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x78, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1589,7 +1538,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_147160 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_148352 =3D {
> -	.clock =3D 148352,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1599,7 +1547,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_148352 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_154000 =3D {
> -	.clock =3D 154000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x80, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1609,7 +1556,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_154000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_162000 =3D {
> -	.clock =3D 162000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x88, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1619,7 +1565,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_162000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_167000 =3D {
> -	.clock =3D 167000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x8C, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1629,7 +1574,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_167000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_197802 =3D {
> -	.clock =3D 197802,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1639,7 +1583,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_197802 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_198000 =3D {
> -	.clock =3D 198000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1649,7 +1592,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_198000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_209800 =3D {
> -	.clock =3D 209800,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBA, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1659,7 +1601,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_209800 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_241500 =3D {
> -	.clock =3D 241500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xDA, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1669,7 +1610,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_241500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_262750 =3D {
> -	.clock =3D 262750,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x68, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1679,7 +1619,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_262750 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_268500 =3D {
> -	.clock =3D 268500,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1689,7 +1628,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_268500 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_296703 =3D {
> -	.clock =3D 296703,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1699,7 +1637,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_296703 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_297000 =3D {
> -	.clock =3D 297000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1709,7 +1646,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_297000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_319750 =3D {
> -	.clock =3D 319750,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1719,7 +1655,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_319750 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_497750 =3D {
> -	.clock =3D 497750,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xE2, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1729,7 +1664,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_497750 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_592000 =3D {
> -	.clock =3D 592000,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1739,7 +1673,6 @@ static const struct intel_c10pll_state
> mtl_c10_hdmi_592000 =3D {  };
>=20
>  static const struct intel_c10pll_state mtl_c10_hdmi_593407 =3D {
> -	.clock =3D 593407,
>  	.tx =3D 0x10,
>  	.cmn =3D 0x1,
>  	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x00,=
 .pll[4] =3D
> 0x00, @@ -1798,7 +1731,6 @@ static const struct intel_cx0pll_params
> mtl_c10_hdmi_tables[] =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_27_0 =3D {
> -	.clock =3D 27000,
>  	.tx =3D {  0xbe88, /* tx cfg0 */
>  		  0x9800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1823,7 +1755,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_27_0 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_74_25 =3D {
> -	.clock =3D 74250,
>  	.tx =3D {  0xbe88, /* tx cfg0 */
>  		  0x9800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1848,7 +1779,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_74_25 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_148_5 =3D {
> -	.clock =3D 148500,
>  	.tx =3D {  0xbe88, /* tx cfg0 */
>  		  0x9800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1873,7 +1803,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_148_5 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_594 =3D {
> -	.clock =3D 594000,
>  	.tx =3D {  0xbe88, /* tx cfg0 */
>  		  0x9800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1898,7 +1827,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_594 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_300 =3D {
> -	.clock =3D 300000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1923,7 +1851,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_300 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_600 =3D {
> -	.clock =3D 600000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1948,7 +1875,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_600 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_800 =3D {
> -	.clock =3D 800000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1973,7 +1899,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_800 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_1000 =3D {
> -	.clock =3D 1000000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -1998,7 +1923,6 @@ static const struct intel_c20pll_state
> mtl_c20_hdmi_1000 =3D {  };
>=20
>  static const struct intel_c20pll_state mtl_c20_hdmi_1200 =3D {
> -	.clock =3D 1200000,
>  	.tx =3D {  0xbe98, /* tx cfg0 */
>  		  0x8800, /* tx cfg1 */
>  		  0x0000, /* tx cfg2 */
> @@ -2338,8 +2262,6 @@ static void intel_c10pll_readout_hw_state(struct
> intel_encoder *encoder,
>=20
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>=20
> -	pll_state->clock =3D intel_c10pll_calc_port_clock(pll_state);
> -
>  	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder, true);
>=20
>  	if (cx0pll_state->ssc_enabled !=3D intel_c10pll_ssc_enabled(pll_state))
> @@ -2384,8 +2306,7 @@ static void intel_c10pll_dump_hw_state(struct
> drm_printer *p,
>  	unsigned int multiplier, tx_clk_div;
>=20
>  	fracen =3D hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
> -		   hw_state->clock, str_yes_no(fracen));
> +	drm_printf(p, "c10pll_hw_state: fracen: %s, ", str_yes_no(fracen));
>=20
>  	if (fracen) {
>  		frac_quot =3D hw_state->pll[12] << 8 | hw_state->pll[11]; @@ -
> 2490,7 +2411,6 @@ static int intel_c20_compute_hdmi_tmds_pll(struct
> intel_display *display,
>  	else
>  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_0;
>=20
> -	pll_state->clock	=3D port_clock;
>  	pll_state->tx[0]	=3D 0xbe88;
>  	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(display);
>  	pll_state->tx[2]	=3D 0x0000;
> @@ -2839,8 +2759,6 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  		}
>  	}
>=20
> -	pll_state->clock =3D intel_c20pll_calc_port_clock(pll_state);
> -
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>=20
>  	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder,
> intel_c20phy_use_mpllb(pll_state));
> @@ -2851,7 +2769,7 @@ static void intel_c20pll_dump_hw_state(struct
> drm_printer *p,  {
>  	int i;
>=20
> -	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
> +	drm_printf(p, "c20pll_hw_state:\n");
>  	drm_printf(p,
>  		   "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D 0x%.4x\n",
>  		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]); diff --
> git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> index 5b71c860515f..4cc14ce5eebe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -241,14 +241,12 @@ struct intel_mpllb_state {  };
>=20
>  struct intel_c10pll_state {
> -	u32 clock; /* in KHz */
>  	u8 tx;
>  	u8 cmn;
>  	u8 pll[20];
>  };
>=20
>  struct intel_c20pll_state {
> -	u32 clock; /* in kHz */
>  	u16 tx[3];
>  	u16 cmn[4];
>  	union {
> @@ -274,7 +272,6 @@ struct intel_cx0pll_state {  };
>=20
>  struct intel_lt_phy_pll_state {
> -	u32 clock; /* in kHz */
>  	u8 addr_msb[13];
>  	u8 addr_lsb[13];
>  	u8 data[13][4];
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index bc73b1466bc4..9a8ea09f6c00 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -59,7 +59,6 @@ struct lt_phy_params {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr =3D {
> -	.clock =3D 162000,
>  	.config =3D {
>  		0x83,
>  		0x2d,
> @@ -113,7 +112,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_rbr =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr1 =3D {
> -	.clock =3D 270000,
>  	.config =3D {
>  		0x8b,
>  		0x2d,
> @@ -167,7 +165,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_hbr1 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr2 =3D {
> -	.clock =3D 540000,
>  	.config =3D {
>  		0x93,
>  		0x2d,
> @@ -221,7 +218,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_hbr2 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_hbr3 =3D {
> -	.clock =3D 810000,
>  	.config =3D {
>  		0x9b,
>  		0x2d,
> @@ -275,7 +271,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_hbr3 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr10 =3D {
> -	.clock =3D 1000000,
>  	.config =3D {
>  		0x43,
>  		0x2d,
> @@ -329,7 +324,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_uhbr10 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr13_5 =3D {
> -	.clock =3D 1350000,
>  	.config =3D {
>  		0xcb,
>  		0x2d,
> @@ -383,7 +377,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_dp_uhbr13_5 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_uhbr20 =3D {
> -	.clock =3D 2000000,
>  	.config =3D {
>  		0x53,
>  		0x2d,
> @@ -465,7 +458,6 @@ static const struct intel_lt_phy_pll_params
> xe3plpd_lt_dp_tables[] =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_16 =3D {
> -	.clock =3D 216000,
>  	.config =3D {
>  		0xa3,
>  		0x2d,
> @@ -519,7 +511,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_edp_2_16 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_2_43 =3D {
> -	.clock =3D 243000,
>  	.config =3D {
>  		0xab,
>  		0x2d,
> @@ -573,7 +564,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_edp_2_43 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_3_24 =3D {
> -	.clock =3D 324000,
>  	.config =3D {
>  		0xb3,
>  		0x2d,
> @@ -627,7 +617,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_edp_3_24 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_4_32 =3D {
> -	.clock =3D 432000,
>  	.config =3D {
>  		0xbb,
>  		0x2d,
> @@ -681,7 +670,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_edp_4_32 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_edp_6_75 =3D {
> -	.clock =3D 675000,
>  	.config =3D {
>  		0xdb,
>  		0x2d,
> @@ -748,7 +736,6 @@ static const struct intel_lt_phy_pll_params
> xe3plpd_lt_edp_tables[] =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_252 =3D {
> -	.clock =3D 25200,
>  	.config =3D {
>  		0x84,
>  		0x2d,
> @@ -802,7 +789,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_hdmi_252 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_742p5 =3D {
> -	.clock =3D 74250,
>  	.config =3D {
>  		0x84,
>  		0x2d,
> @@ -856,7 +842,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_hdmi_742p5 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_1p485 =3D {
> -	.clock =3D 148500,
>  	.config =3D {
>  		0x84,
>  		0x2d,
> @@ -910,7 +895,6 @@ static const struct intel_lt_phy_pll_state
> xe3plpd_lt_hdmi_1p485 =3D {  };
>=20
>  static const struct intel_lt_phy_pll_state xe3plpd_lt_hdmi_5p94 =3D {
> -	.clock =3D 594000,
>  	.config =3D {
>  		0x84,
>  		0x2d,
> @@ -2182,7 +2166,6 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       struct intel_lt_phy_pll_state *pll_state)  {
> -	struct intel_display *display =3D to_intel_display(encoder);
>  	u8 owned_lane_mask;
>  	u8 lane;
>  	struct ref_tracker *wakeref;
> @@ -2207,8 +2190,6 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  						  LT_PHY_VDR_X_DATAY(i, j));
>  	}
>=20
> -	pll_state->clock =3D
> -		intel_lt_phy_calc_port_clock(display, &crtc_state-
> >dpll_hw_state.ltpll);
>  	intel_lt_phy_transaction_end(encoder, wakeref);  }
>=20
> @@ -2222,7 +2203,6 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,
>  	struct intel_encoder *encoder;
>  	struct intel_lt_phy_pll_state pll_hw_state =3D {};
>  	const struct intel_lt_phy_pll_state *pll_sw_state =3D &new_crtc_state-
> >dpll_hw_state.ltpll;
> -	int clock;
>  	int i, j;
>=20
>  	if (DISPLAY_VER(display) < 35)
> @@ -2238,17 +2218,11 @@ void intel_lt_phy_pll_state_verify(struct
> intel_atomic_state *state,
>=20
>  	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
>  	intel_lt_phy_pll_readout_hw_state(encoder, new_crtc_state,
> &pll_hw_state);
> -	clock =3D intel_lt_phy_calc_port_clock(display, &new_crtc_state-
> >dpll_hw_state.ltpll);
>=20
>  	dig_port =3D enc_to_dig_port(encoder);
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		return;
>=20
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.clock !=3D clock,
> -				 "[CRTC:%d:%s] mismatch in LT PHY: Register
> CLOCK (expected %d, found %d)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->clock, pll_hw_state.clock);
> -
>  	for (i =3D 0; i < 3; i++) {
>  		INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[i]
> !=3D pll_sw_state->config[i],
>  					 "[CRTC:%d:%s] mismatch in LT PHY
> PLL CONFIG%d: (expected 0x%04x, found 0x%04x)", diff --git
> a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index a201edceee10..7fe6b4a18213 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -332,8 +332,6 @@ void intel_snps_hdmi_pll_compute_c10pll(struct
> intel_c10pll_state *pll_state, u6
>  			      c10_curve_1, c10_curve_2, prescaler_divider,
>  			      &pll_params);
>=20
> -	pll_state->clock =3D pixel_clock;
> -
>  	pll_state->tx =3D 0x10;
>  	pll_state->cmn =3D 0x1;
>  	pll_state->pll[0] =3D REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN,
> pll_params.mpll_div5_en) |
> --
> 2.34.1

