Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7560099378B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17F0910E415;
	Mon,  7 Oct 2024 19:42:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bl58xaKq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF4A310E414;
 Mon,  7 Oct 2024 19:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330165; x=1759866165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PBEiBm4TECKlfbUwkmMwS86L8jrx8BfnQqm9Ij1bbCA=;
 b=Bl58xaKqFrnwW165yc+HYxwo+c1iDVl04akopLG1l0OTlI6tUUwjp2QO
 vT53NGpOgDKybQHOdVby6d9MjKDxWRMIhZYPXRdcysZZigonbsmjGZSGD
 YddcPajBhNsV//cTiy+OtWyXaVv6R+jmFh6Snl2xXA9nKx2WDjWorQ+JE
 s0rAdmnoLcZMZdE6PezcJQ+0tClDvQro6xeJaQLg5/T2QdFyHYYQUj/Z8
 afxWAothc1oy0/5TNppfcaGm+nuEnExAjHpTphTKMgtClFnhUo6sGbuOm
 /J6+0k5G14QMbFne2VeSKFaRpOVOesiaoQ0MIhQqnx/WkIYkB9tmDYoLw Q==;
X-CSE-ConnectionGUID: QwhsGrljSsyqv0RyhDb9+Q==
X-CSE-MsgGUID: VTtUpm1nSWe5FiRf8P+kww==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27379211"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27379211"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:42:44 -0700
X-CSE-ConnectionGUID: 80yh1soVTrug7em84KR3rQ==
X-CSE-MsgGUID: lUgJzuZLQc+CdDWcA6/97g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75260756"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:42:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:42:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:42:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:42:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DbIAewpwZYjEFwXA93oBb5xGv80yI2gtRHoNmP3iW150OmOpreRfl24z0PMhOqrPAspAvC/q9JdPCb6CDGqsgOU0RQ1fzcaBh1V6Duw9H/+Ga7uNq/So0XBtC6fgQM8gKhO01efaYCfHBDT0lFexPsdzkxRcjKb+y9WEN4GPIACSOZAhBeVEsfDXDNUKwuRJnelBPEEHcRHUrCiWq4FHUFRzs/5m4C46IkVw1cM7Nj1j8lFRstVN1fBvV6xip2XlV+Johr8c2cPqmYMooE8JXmoWNmlUa86kZQ85F5SBmBwbHZXd+kiXJEfwxolMYaG96tq2TVKrsoVQ0xOzqd1/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmRfbj7RuRwY3OSsWqhaNbKVApnLdqTwlwFW8rfDAiU=;
 b=EwCUv4x5qgEiCzqBaY8Q0ucGBf1MoDMHmosOWnhi5wCSJilf5+KL7cQ0TnGUZhoVb1C4x7z1zjsa7KcE07bDOfG4wGDzRPJaGzv6eN7w9IqLcJ1b1/WlGx0D+lO2Dn/PPELkKs5JNNYWDkrfKoktGVsQbaidI1NDhaIS4ER6rqtQl2YTe46kmb1gdfr+fUFztw6fby/B8fQHCAEdOQAJgu62rp+4VZf5r07hfkq0+I+4hBxWabANEmDY+7kAlw54Ia0y7Rz97yUf08LL/QMAT2g3IWTScmTA7HVNa08BY/DENpowdb/Kxj1K6T7G0xO3lUzx0lgWClouLPEELlwPUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by MN0PR11MB6136.namprd11.prod.outlook.com (2603:10b6:208:3c8::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:42:34 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:42:34 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Maarten Lankhort
 <maarten.lankhorst@linux.intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 05/31] drm/xe: At shutdown disable commit helpers instead
 of flushing
Thread-Topic: [PATCH 05/31] drm/xe: At shutdown disable commit helpers instead
 of flushing
Thread-Index: AQHbDsJa36YQ+6E+L0GwvM0fRqQBVbJ7v/BA
Date: Mon, 7 Oct 2024 19:42:34 +0000
Message-ID: <BL1PR11MB544593B2C4F6FB8D2050BA5FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-6-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-6-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|MN0PR11MB6136:EE_
x-ms-office365-filtering-correlation-id: 32d423b7-9f5a-42b0-8652-08dce7083113
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?7rkA7Nz9we78gSMLqxxnNzIdti+G5PCOK8aIQ2D67ZT9F8khXydm/KRzpw8A?=
 =?us-ascii?Q?sskARHWjyHNplfY0MVl0fpk+REUavJ9vEkm4rkAaHgBoRYB4pHrym/RMs4Wq?=
 =?us-ascii?Q?M1bfAZuTxumWL/xyBEL2rvaJX5ROYkRurMm7W65uQqvLYL8X0JpSRpmfZ9Oz?=
 =?us-ascii?Q?2ct67pAfMskFiAEXd4Rw6a/3se/RtMWMax4zea7CuJMS1TwbNYcqCKQDsUkT?=
 =?us-ascii?Q?4/hwlDiAhg9ptwujGMslXUhSjacK2MAaHz5+CJxdpjTTqor2hx+rUEpTDNWW?=
 =?us-ascii?Q?IYMOV808iM8glaIa5UP+7nAUUz4ojY3TizLSZDqQzaxaMZRt50dVVEqLOpta?=
 =?us-ascii?Q?OdiCS9+VfUhGyak3o15BKMwC9R8UDhPnoJOtPD0R6434l3QpR1Ea1Jao51mF?=
 =?us-ascii?Q?3S+qOGSyHSCdabqzoeJKkRbJ7y6pNHj3XggYhDAfTMGVl13yr+iQWNajZ/Ko?=
 =?us-ascii?Q?6vsVpYBRnm8j9H2izYR9G+sXKsBJ02PMg9loDRRMdOGzcJvkwW49tiTl6g5H?=
 =?us-ascii?Q?MV55iBEovPjeEwScwvCdaabinSInjNs/OzjRF4gvhJQQAeOt0VZv5X8djTsU?=
 =?us-ascii?Q?4cI+WVntBtdXhtwK7lrKUs+m5YDqgwk2/0Gz2qD9cSdqaURfH2kmkALaRN79?=
 =?us-ascii?Q?7/AWTWflJ6XXtO4+/zallxHif0zDEjgJE/9LcWnE1GqyS0MnCTVbWwLYg7dK?=
 =?us-ascii?Q?5WvaFwrE384dU7JqUEIWT9/48OVoLudqKAKrsdl2jFtWLVpbFhBgHnl1zJ1Z?=
 =?us-ascii?Q?R1dGVkg28l5CaNmC9QkXSt1F+kkRgsoS9rDci5PPUxs2wQQjhVQGD7FHZiCq?=
 =?us-ascii?Q?F82vVo2GR/wCDiHE0+0zm2WO+aI0ExoneNPsLvlqsOz2yK40mtwelofgIIce?=
 =?us-ascii?Q?2R+s8TYInCNrLKnJuh9OmjI5CL59kObb96kWBAODVmS20yoZYi2CzMyup2Gt?=
 =?us-ascii?Q?BPz1ChWvEJjYUt43VNXOMGuTpMFxshqOglOg1JJpbZoBJ9L8HDxKllgNI+lV?=
 =?us-ascii?Q?Zgnadx24NiwLdfzC2ebVVmpz4Mk2XCv8KoTWBXTFz9TdcsE3c06/tm4mVfGs?=
 =?us-ascii?Q?U2hcQGSDSZAp2rS1DT77ggmOFIFtcPPRgicl6WgnGqOhMHsADzkGXJO7/V6g?=
 =?us-ascii?Q?7HjCup5xk7+LXGQWUSaKVF7vSM9vDrjakM7964H9fnjmh+6E/O9wQMBCllAB?=
 =?us-ascii?Q?bSVgitttnBVxYWNxSidIIHvD6+GrfgKPiU/cWVaizRx4FW9YkR8iQLPT6aNt?=
 =?us-ascii?Q?Wy5MeFVibH3YNcwi0qMZE6dl478hMMhNxoxO/S1/okZ44U33beq2JXihh/hG?=
 =?us-ascii?Q?ZGmWRuyDfOwchy12iWfcr/j2fDgI58Sa4Nbb1hDonDVjUg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?joKI24xmDUeNpicPQUeejIiqEqmE4MXLRdnU5pxMFTv06x7MOYCWLcPLYy1u?=
 =?us-ascii?Q?4YaXyaIqw1kzPOVucIXUJmTjFabycV5TWELXP2zA8gc1SXxJoN1FeTgPx56v?=
 =?us-ascii?Q?TmxkXBmpMIRjReytJHJiC+C/vv4fk8FqXjgYNS6DKxJXpjckapM74odEphEH?=
 =?us-ascii?Q?P+42/G4NvXbGEGdhG9qazP5woi0IX54FS6kdIiMGpjcdbfSYYKGoXFULCGvW?=
 =?us-ascii?Q?6kiBK+Mbn76XUvMIThPJA1NdyEhE1SMr+kl1iCDs1cI7cCx83wPN/fY2OiY1?=
 =?us-ascii?Q?EH0VnhLKoUrIDqceRHkGJsrC+e9XSwtlo+HIFvD6frB0gcNy02Iw764Sh4yk?=
 =?us-ascii?Q?D2uKKzUx/S4xotOCNSzq+D0x11vqvKiZVd7t6nuBzgEf/12pe1GXPpDLWbIH?=
 =?us-ascii?Q?AalJLyLleQ9oL0MV5nDUVRcssKXy5L+ciOr5XcFAVVEoltcFhE90QwrbrDJv?=
 =?us-ascii?Q?O+vXhkJ1KsJxh4dlFt//KEC3cJLnMZsIzTi8fDZIVm8EyfIeiP4RxXr4g/kD?=
 =?us-ascii?Q?m9MtVnkQ2V8Y1tLz+KmTuy9Aw+A5gnXvuXubSKoO3vRTBJJDwgN24aicTeha?=
 =?us-ascii?Q?i939ncXgnzO85JeLwf4vK4Wx/rzn3voJNuyQKVrtRnndgN6XuONurWZDWNOx?=
 =?us-ascii?Q?4/rVx6QWtJ9ewHOXjfrNLhkrhWATe1tI0mtjzPq3m4rEz/bHR9UWTUaz4prK?=
 =?us-ascii?Q?Oz9cH9WvB5efXqMG4FsxJla6wm4PHzXQcsa3eT9qvAF23aZ0pvT+dEwGN784?=
 =?us-ascii?Q?B6LdNLdBoGKe6PeVGxkWx10SI7I7vkdsH4hwkWr6Ecua/00n1X7TaGb6c5HV?=
 =?us-ascii?Q?dmt1/fHbpal9I7NZi2oCLcb1BDlHJrCRFH9b2Ug3A2+VBCgh9O0zF8FjNaoK?=
 =?us-ascii?Q?jtjDdqQF4vEeO+DDG9CG+9/oFDEWA1tN4OXCWNvnRvMFKzZyCsmJMUgm1P9B?=
 =?us-ascii?Q?J8Smdw2O2lHVQqY91F2WV3jThGuPfXAGSX/lFLRgGtyVzkEQe5jKTQBmrNbT?=
 =?us-ascii?Q?YN+wJWNsRlVYgLl+ReNcncPPfGqqm8Ic+sGcC6peJi+RtdGatKxxLtcVI5mj?=
 =?us-ascii?Q?HHYYJmzszQ2qUZ6P7Drj2luVtd9Y6JHcAL6mQPYwVkNAWTIsEV+bcM2NV8XX?=
 =?us-ascii?Q?jAegYEnJ9VU16HqDPz9x/ws0HUGIS7X9s0BT4locbSUPISFSrboVIU32hcsb?=
 =?us-ascii?Q?2qmNHzak4pRyoySws94h5iAvA6STD9iGdSfsCUV3dCpVAKDW24+fFtt7QMQ3?=
 =?us-ascii?Q?NPTKsDssJ0VNnzixU1MXuC7J8263N3ZWkW0OWCn2msoyt5/MY4J95i5f3cx8?=
 =?us-ascii?Q?oZ7aCUN+LzfrCcV4dsGa2LW7dbHuNJ/U5QQz4+RCBeSVK0k6iaGEAHCOL74r?=
 =?us-ascii?Q?Ykang4uxjg7ALMcZG9At/NuBMLfl28xtb8Xi21IhZD7I7htZdcD9qOvpT+a6?=
 =?us-ascii?Q?lOI99q69rhpr/PN+8dEdmp6TgAizEJB/OmMFWFM9CqCcl4lauBI22jbllggi?=
 =?us-ascii?Q?dfpA/e3euNBMrPRnufaeMP8Ixrtq7a59dHMD175TSQ7qC83+OH71TTGWcyXx?=
 =?us-ascii?Q?rMNaSHjMdfuhsYIM/yu9RROMVvwuy//tK1nBVSoUwbhEjgNf4fBSyURWolxs?=
 =?us-ascii?Q?Fg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d423b7-9f5a-42b0-8652-08dce7083113
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 19:42:34.8274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cvX39xSIcuOx1B9MQje6h+32nswJbGmKCg8DNAAXeVhjF7BdmJ+wCGzNZGAwi9Lkyb+a0iHLRc/e2mZLNIceAZDV75uorIImzSMgXcFYiYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6136
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Rodrig=
o Vivi
Sent: Tuesday, September 24, 2024 1:35 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>; Maarten Lankhort <maarten.lankhorst@linux.intel.com>
Subject: [PATCH 05/31] drm/xe: At shutdown disable commit helpers instead o=
f flushing
>=20
> This aligns with the current i915 display sequence.
>=20
> Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 5cbee5040e91..0237d458078b 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -10,6 +10,7 @@
> =20
>  #include <drm/drm_drv.h>
>  #include <drm/drm_managed.h>
> +#include <drm/drm_atomic_helper.h>
>  #include <drm/drm_probe_helper.h>
>  #include <uapi/drm/xe_drm.h>
> =20
> @@ -364,10 +365,10 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  	if (has_display(xe)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(xe);
> -		intel_display_driver_suspend(xe);
> +
> +		drm_atomic_helper_shutdown(&xe->drm);

Isn't this functionally equivalent?  The only difference AFAICT is that pre=
viously we
set the display.restore.modeset_state =3D state, where the state was the
return value for drm_atomic_helper_shutdown.

>  	}
> =20
> -	xe_display_flush_cleanup_work(xe);

And I'm guessing we're removing this line because it's a duplicate in the n=
ew
execution path now?

I won't block on it.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>  	intel_dp_mst_suspend(xe);
>  	intel_hpd_cancel_work(xe);
> =20
> --=20
> 2.46.0
>=20
>=20
