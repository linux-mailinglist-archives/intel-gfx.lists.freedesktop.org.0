Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038F4A2C80F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 16:57:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EEF10EB63;
	Fri,  7 Feb 2025 15:57:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UbjBjinU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882E310EB5D;
 Fri,  7 Feb 2025 15:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738943757; x=1770479757;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qNI7J1vzsQZeLfCri/YAbz895jJmnq5+w0KDM8egOhE=;
 b=UbjBjinUvPwK22l+NzKAtcHyqK5bGgjx+HjdrFDRgJQWrRgvyqadN7sH
 wGdDmKqBzjpcUUfoe/8KN90qWPqZydXvns78QmGLacS7MK7sCv+K9Rslv
 k57UNs4ZciZ2mXHsVGp/8zo1axH27h3m8kB7tLeworvGwHaM+R2o4wcb+
 +c6GnJo7XlcbQ+lue1N+QWV3NZeE/qc3blDpIRLK2QDNopE5ZE1NqIw4B
 F0868jd4kr4d2AHAPV4XUbH6wLSay6tCj9zFLvx3R8dBQFDg6hnLx9bzo
 wMeIa3FRPCpaCYw4tfc3Hdhsn+bSQMzG1QLmKJwROW9ovqACLcCWr0ZeB Q==;
X-CSE-ConnectionGUID: +fJ1mFuTRfCVdlvKvYH5ZQ==
X-CSE-MsgGUID: +OqkqSqaSb2+Dw54EPc8Fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39742895"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39742895"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 07:55:56 -0800
X-CSE-ConnectionGUID: T3uJP1uUTLeNqpfN9hZIKA==
X-CSE-MsgGUID: le68qLJZQv2g0zbZmRVFXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="111387212"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2025 07:55:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Feb 2025 07:55:55 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 7 Feb 2025 07:55:55 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Feb 2025 07:55:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JFxUIHia8ONdLEcW4FlN4PxrPGABecgEsZmliwpiKFeQOLaOrqUILKcyiyhJDTdEvJFIzye554CFiAHk5+2r8WTlupi4vMOsK95wjK7JEPqkBSSuoXuaWMPwLlMWMxs/CRHRq7qfVAb23FoJOsV2pDBayiwlHSuUcbmzfzRrLawunVah2ogbHI62Yd8Y5c3q2BwHboOQpIy6g1/dKkM6J8VXg/K3PxsBc7qFe1JEwCDiyKiSQDAsxC/GL5KiH4Z6TQknrBURUZJA/cKiHY5HbvlealJSlPO5WQVNigaOEj6xeTTpX7zvapxKRbyaAvwsP1c+Y/w8ZmlXv8VrIv4BMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2GvkcSYcWGoD2wUvSUaU/X+mOycenYycu3IEjstYLU=;
 b=AlSRgqKLfBsdfG75guMmTLYDuIm6Q3i79jOLWDCe2We0H1H37Q+/JrddUuNxYcqzeRoChWvgK149iZJwF1f7fRUNUrSB9Fu44OU1fPgEjYJpCIvslPFwLe6TLSo5nRfx6bVdi4Ov/ap7Hs6w7bBgV57s0Gawc06CwcapFf1+9FVSPqXFFDG7X3/2WG1Uh3ZjloOhbRQmvP6nimc1CP9HHivd3Q6wQ22tEN16y6d2dotUzluChLQpzmffvAOoCPzhu2tLV+2OM4qmK+58gEQvGxeAuFEMHa/IM5YsTovBLOZ51BwrFeuDLwQOBIJ4+FLa14mL0fWgdCzNXzZIYVd8Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7693.namprd11.prod.outlook.com (2603:10b6:208:401::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Fri, 7 Feb
 2025 15:55:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Fri, 7 Feb 2025
 15:55:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/3] drm/i915/hdcp: Convert platform checks to use
 display->platform
Thread-Topic: [PATCH 3/3] drm/i915/hdcp: Convert platform checks to use
 display->platform
Thread-Index: AQHbeUzf2DBzSVDahEqscHzFrWpkTbM7/jWw
Date: Fri, 7 Feb 2025 15:55:52 +0000
Message-ID: <SN7PR11MB675069EDD2311E0ED79D48D2E3F12@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
 <58bad1e888a57a014acbaae67ccddd4f895091a7.1738924826.git.jani.nikula@intel.com>
In-Reply-To: <58bad1e888a57a014acbaae67ccddd4f895091a7.1738924826.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7693:EE_
x-ms-office365-filtering-correlation-id: 3e5c7798-9b8d-4c51-6e86-08dd478fe678
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gtV2aJbmeIptoSDD94IhCrxjwK+e/7WFvflpCTtCZ9uugNxqijGB3YXpLPEN?=
 =?us-ascii?Q?gCorfDMLVGdxbwt+BFXaMS1SlgNDBqbTc4LwBl/UV3SthVcFEtzUHVVgmRk/?=
 =?us-ascii?Q?m1EaNsu32lDQyi+h0HH04FZLH0QNejop5ka2JeBf8fVyULCxy3Q3tyiJZpNx?=
 =?us-ascii?Q?9V9Hma0n3/W3GijfV4ORRWT0iTbF87gvBbeS0hfgUbLC7kH3ufQ/cAjgJjKo?=
 =?us-ascii?Q?MEEKK+JlLTcDB6x1HBsXgY9EvdrKuPI2244JbZTirGkXMnMHlzKlNOKPNQCw?=
 =?us-ascii?Q?5pbxotVfFmjUvONTHvyp4Vbk12zdBoANhBdhBffpRE2vxOkDdBG+x/4Ynq8g?=
 =?us-ascii?Q?sZVbcrks5HkepjMOKcSDkbJVHcRTpH7puunQACPP/Rko70+2gDMtQh0qsFL/?=
 =?us-ascii?Q?9tZl/9/xuP23R3U19AJa4CprP7ErAQ4+4vz6u15FouRfZlB+H3iA9Ga3yDqw?=
 =?us-ascii?Q?Vlh9LdjCGo5odoUaujT7FZm2CjbKHqGTHD6jRmyBBLo9H2m9O+a28tlAQq15?=
 =?us-ascii?Q?garKLzbWi/ZiP4eOtmVgcIYMSxDMUKgNxDsa++shRq2K2/QYg3qwiJ2tmpye?=
 =?us-ascii?Q?7zZTMBFCdArQ0nWRYyJH9bDRl92uIjgJOJfhNBMQX37eLHtxb4bnqTM3klJo?=
 =?us-ascii?Q?HCXPS9A54OI3TiuVwmlteX+iD2q8SCMSbb9aCUTGdELIBU8mUjdCuCacAKEO?=
 =?us-ascii?Q?J/SfbnWaYWdPdXezNaX3GWp99rmSQg9XQGtn7Rdg7ns62FIzPCWSe0QnY6W5?=
 =?us-ascii?Q?fEwSB+Mx5pPqvwSJYGXJEcI00VWe2tEAviWS+8Q57J/HpQyMbDeCg41xFFgd?=
 =?us-ascii?Q?Azq8AJEu1yqfhpTyUTqNJmc4WwsV08QKoA++mqKMHjoQvr54x62znyWAr4Sr?=
 =?us-ascii?Q?hPUrEA/Z/vfuKRU74MxSP1M+8SovHCWhXxFCwBEJ1cKDEiaM9Kxk8kVceVXA?=
 =?us-ascii?Q?2B+cgjMknyJL7mIjNTnLDyZAXTidNgH3/Q50LdiO7Viq7aUx8/p2Wu4ivDAL?=
 =?us-ascii?Q?0J6l+Pg/jdhzpMGRbANufWP3p3v6iXtwH3yTNsCwoqUNa/693aJmGurnrtpd?=
 =?us-ascii?Q?nbm9ATPgaimZOKl847JrNVjop3gkL8W44C8XmX4WyTTx/5QkuSWAgJHeVXHw?=
 =?us-ascii?Q?4ItXW67yxajewocj9ii89+Mo3jyF1Jzy9MZ1E4DtC/jJY4srNyFrAK5AwDH8?=
 =?us-ascii?Q?f+cPeU4rMoa4sPX2LmeM2zFUKLedQPH1C0CdAsczG7B85c4wVKOf8jMQvhsv?=
 =?us-ascii?Q?iOR2GyIpPec3GgDgI6UQKK8V7nNqpbd2e6RtzDKH5UMboQzCN52Xh8K5ezgs?=
 =?us-ascii?Q?6QuO5aVWsUImWAx6b7DRlLdUkWBGuV9Rc54nj/Dg8/2eBn4I6Hh3QAfIayB/?=
 =?us-ascii?Q?CBYCEbITZtGxbI9vVZzibSXe71CNzw6uo8N/uk1PSl0YXz8NnV+jj4nHq073?=
 =?us-ascii?Q?fxaJ0OZpBuZLYDqEw8lcXCLirgh22o+F?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mkLO0FDNUu6uHLaIeNtChLRSwOaGKdEYsC9WuAoy+h1TlpnQuGHSBCpk01oi?=
 =?us-ascii?Q?/cxkMhacUDVJVnndnySmENlGk0YZbfWDbi2f7tf7RCTRDYtIBQ5P2a/yvvbz?=
 =?us-ascii?Q?SzGYs4EZfWMXTZncjaBddvHZ7qMEM3Vy6+ILjLqO915PSo0v+vrdDle9ei8A?=
 =?us-ascii?Q?HSRmyiF2SqhjJOdjocvLSgUT2mAeVRTogHqsmIGRsAHfNhMdMPZAzzucPwfo?=
 =?us-ascii?Q?ydnt9ipXcVmVGoj/8Aj/BJZCjtDUVfK4Xts6M7kBz+YMQPPwqJNKluIjNzOT?=
 =?us-ascii?Q?SUJmvriHw68qj7VyEqfi0PabI/bSkBUADroqnGCx7qp/tOyIxHmMMjJ9cePZ?=
 =?us-ascii?Q?MmpSuR7whm3cof4qENJpjTUBYeJzaP8W05Bf2RT7UXtGd24jh/ctSfZcArlL?=
 =?us-ascii?Q?18+LruJ+aL/In715OOrvk5lI7O/zAo7cV0u0omEOrWHSWkxdUS1zpr27eT9S?=
 =?us-ascii?Q?3Vh4ScsKaSseUwIm3U44Di5YuFEiyGaoEZuVX11AEVg7Jqvu6X8zXsaqKoun?=
 =?us-ascii?Q?maR9lZKt/sIvxmR4CMbEJZO3tTXYJAj/u2BRnTrH1+HfR2dkxpvj/fSZkJIm?=
 =?us-ascii?Q?p5E314TTnsERbF985EsDifuIzSqMvM2N/DaAGc0B6dOVdQJEYNhYbJfkNoC0?=
 =?us-ascii?Q?E1+geBkp8KBJdz2cO0l2HNaiZvRVwUve9+k4HF/kyk44wpfKvytiLvve7Uff?=
 =?us-ascii?Q?pYQAW6ZTPdqyYW9RuZ+bI2YX9TyZBIYY3gxi4XovBRbYCetSzJu4xucZafyb?=
 =?us-ascii?Q?Kq1H9h31b0nNNBEEGEqfaxDuY8U6bC66+2JdxF0RJdsPmT/Zn5I8WsfFBf2n?=
 =?us-ascii?Q?ZabhnaFrkb0FsVPyxbsha2SYlbgJq0xbImhwLjry4KKS0xN67xnYkX9TIkLE?=
 =?us-ascii?Q?16bywG2tI6LiyZfibmSeJnQmwdQj6RC9TdugvrtaRuvfIeeqzEXldgzFeJF2?=
 =?us-ascii?Q?Uq+MVqUZaR9XPZ1UOAmC3KyaXTxxPPvdyXJmdYKkhssgjtniJEE8eyDgzYuC?=
 =?us-ascii?Q?CQPo7SfSYILbYWb8sg2YYbuj4Emfo9voafi7yiiYxhHxk1EJ4o43SGKna+wd?=
 =?us-ascii?Q?etkyW5LNcVyZl2YYDwdlhm6fa21eVKKKErj1vLR0fiwIAIQsMQetZr+hbxLN?=
 =?us-ascii?Q?z2zN4AacHUHfrhPvRE4JsL+E6VvFvXptOiOTMqfKXGApBL5D0si/UNoqYXXx?=
 =?us-ascii?Q?T212rnb9hSLZll30rkZ/gHW4HAujiXgkhwn1zALMIcL3HN+vzf3+Gw1S4OzS?=
 =?us-ascii?Q?GJBXrTIoAqAWeEDtRonHspTEuBR8lDU8BiGukhhGTyObt3oLI5IqpJixBpex?=
 =?us-ascii?Q?UtmPj3rc2XYYtrFFh7wuktPaPCPeqoXJbzkij+flOX5kiQQ6wvAvrZ1Polmc?=
 =?us-ascii?Q?AYF6p9g0jY3oEQt5fRv7f4fmeMP01xO+QMmzzpNy1ZFQjDvK9TP6/decH8G2?=
 =?us-ascii?Q?eXoPY6GzmtZM0AfPmJcQbj+Fjdy+tW8yIyq1yV0jCpsp7HIQQAh07vdDuPWN?=
 =?us-ascii?Q?ggW4XdyTNp0wOtlEss/Eylz7XGF8vLsxjMpC45HD8NjW/DUP7atyDdBktK6D?=
 =?us-ascii?Q?b58s4xLzwTl0jH1MDGxDYA4AhMuSTrK5247HoYMc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e5c7798-9b8d-4c51-6e86-08dd478fe678
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2025 15:55:52.8692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1wpl0NMacODv2m3oNHIkAzXSFgKcwvdXSqU0Bq3Ckx0EqPEGZqFhOeov6tLNMsIP861hcuxqq93XpU8GHeH45A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7693
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, February 7, 2025 4:11 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 3/3] drm/i915/hdcp: Convert platform checks to use displa=
y-
> >platform
>=20
> Prefer display->platform.<platform> over IS_<PLATFORM>(i915), and
> reducate struct drm_i915_private usages while at it.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 9880192adfe9..3d83db793baf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -343,7 +343,7 @@ static bool hdcp_key_loadable(struct intel_display
> *display)
>  	 * On HSW and BDW, Display HW loads the Key as soon as Display
> resumes.
>  	 * On all BXT+, SW can load the keys only when the PW#1 is turned
> on.
>  	 */
> -	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +	if (display->platform.haswell || display->platform.broadwell)
>  		id =3D HSW_DISP_PW_GLOBAL;
>  	else
>  		id =3D SKL_DISP_PW_1;
> @@ -382,7 +382,7 @@ static int intel_hdcp_load_keys(struct intel_display
> *display)
>  	 * On HSW and BDW HW loads the HDCP1.4 Key when Display comes
>  	 * out of reset. So if Key is not already loaded, its an error state.
>  	 */
> -	if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> +	if (display->platform.haswell || display->platform.broadwell)
>  		if (!(intel_de_read(display, HDCP_KEY_STATUS) &
> HDCP_KEY_LOAD_DONE))
>  			return -ENXIO;
>=20
> @@ -394,7 +394,7 @@ static int intel_hdcp_load_keys(struct intel_display
> *display)
>  	 * process from other platforms. These platforms use the GT Driver
>  	 * Mailbox interface.
>  	 */
> -	if (DISPLAY_VER(display) =3D=3D 9 && !IS_BROXTON(i915)) {
> +	if (DISPLAY_VER(display) =3D=3D 9 && !display->platform.broxton) {
>  		ret =3D snb_pcode_write(&i915->uncore,
> SKL_PCODE_LOAD_HDCP_KEYS, 1);
>  		if (ret) {
>  			drm_err(display->drm,
> @@ -2339,18 +2339,16 @@ static int initialize_hdcp_port_data(struct
> intel_connector *connector,
>=20
>  static bool is_hdcp2_supported(struct intel_display *display)  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (intel_hdcp_gsc_cs_required(display))
>  		return true;
>=20
>  	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
>  		return false;
>=20
> -	return (DISPLAY_VER(display) >=3D 10 ||
> -		IS_KABYLAKE(i915) ||
> -		IS_COFFEELAKE(i915) ||
> -		IS_COMETLAKE(i915));
> +	return DISPLAY_VER(display) >=3D 10 ||
> +		display->platform.kabylake ||
> +		display->platform.coffeelake ||
> +		display->platform.cometlake;
>  }
>=20
>  void intel_hdcp_component_init(struct intel_display *display) @@ -2775,1=
0
> +2773,10 @@ void intel_hdcp_info(struct seq_file *m, struct
> intel_connector *connector)  static int
> intel_hdcp_sink_capability_show(struct seq_file *m, void *data)  {
>  	struct intel_connector *connector =3D m->private;
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	int ret;
>=20
> -	ret =3D drm_modeset_lock_single_interruptible(&i915-
> >drm.mode_config.connection_mutex);
> +	ret =3D
> +drm_modeset_lock_single_interruptible(&display->drm-
> >mode_config.connec
> +tion_mutex);

So you are already doing it here so my previous comment is moot now.
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>  	if (ret)
>  		return ret;
>=20
> @@ -2793,7 +2791,7 @@ static int intel_hdcp_sink_capability_show(struct
> seq_file *m, void *data)
>  	__intel_hdcp_info(m, connector, false);
>=20
>  out:
> -	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +	drm_modeset_unlock(&display->drm-
> >mode_config.connection_mutex);
>=20
>  	return ret;
>  }
> --
> 2.39.5

