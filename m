Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8328ADC11
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 04:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFD3112FC3;
	Tue, 23 Apr 2024 02:57:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xs6lqppK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA174112FC3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 02:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713841039; x=1745377039;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IXHzoKoI5SICjqVq2e+IvcqttIwhMZXZZJxTit+Xj5I=;
 b=Xs6lqppK59FEHhBKwjnpoY7fmzK69qiav01zmvi/VNF6iFjSK69v09MS
 EX6J3gcFELIe9KhcrLpU7aqO3h84K6p5IFz6x0RTJC/LLji9qrJC+LLGT
 XFvgDWAGU31Wf62LUK/1UITPou6ck5p2CDHvn4EuVLTJeCmCQyIt62nqs
 Mls/uFi0suCYgFyGnUAQlYeaRKUDBu9ChwgY4c9KobQ4dRkZXb30SHlLN
 4Pzz3ny03PAMpD/GfUjKmPWC7RxQXRsyAdVDBf/a91LmFpxK7hakzbkJ6
 1zikkw2RlAaxopOHwvLxNG3jpZIvjhXf9xtU47eKoW/dVDnJH3ZqKOvJ9 A==;
X-CSE-ConnectionGUID: 9v3U/Jd4Qw2hbrqKDaaWZw==
X-CSE-MsgGUID: wkY+MacARwWidUucgB3qFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="19959447"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="19959447"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 19:57:19 -0700
X-CSE-ConnectionGUID: cU93h0l4Q5ah4lJwzBtByg==
X-CSE-MsgGUID: PgX/QjfESjKcx7T8TNELGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24666956"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 19:57:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 19:57:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 19:57:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 19:57:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 19:57:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6G9hr7ncwfx4iHSbyra6bX+VW8Hy96Kf9jfx+SluNqJHwd00xlaKB/bNd07VaO0mHrF/mJXzLlhHKuEyq3ezDycGgqZPUY+Ho2C8RKV0v3++xHBhJYII3L76BqRXvj60boYRwWmYkx5DBKfVbDhI7dPp4i3yclzh63cHfm/RCBaT1NjVSEF25RSi8RSt2SUPMW8TTtctYPgOTXmgBGoyou2H3Nkla/8KesEUFlpDilp1XtslxZA64RCUA3fBh6xcaAwozHVuNxzbhMFefRtOWkjgHCzWhAIqSUYNrMlQoecHWoYl4VwrsIRFyQ/Q6x9ROssQG6PSRjo3bz3TvnUFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TmiobvLX72b0tTP9kXsdmISNvHBnq8OJx/Pf/QM5/T0=;
 b=PpReaHnWlqNYvZ4Q3BKnymhFGObbFKd4dXuR3FjmKN2/hkI8JW9Q6p18/5EWge9tCKrp0r+Tdd4FDqlTqABX1ArdgO+OJfusRUv0TNjdOrfxdkcKzgIJf9dAiEJpp7TlvA14wfU4UfCuMdHnoPzGeL+jEAJIP/ydcYfKwZsU9tx0REA9Zf+xLVsxpFrHlaT5jC6R78EOVfcxd7xPmFF3ce4GDq2GdhOaXgBLHrCAsqvJEnqW9sZad8h8+7gMBwCQVTOFBxH/1TEXXX6PkpsDkiYIuupggMnOswMkueBZWhF3S64hOABPPIxSN+2GrSOiMlrR6VZ/dPBIWvBwUfBU+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB5779.namprd11.prod.outlook.com (2603:10b6:806:22b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.42; Tue, 23 Apr
 2024 02:57:16 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 02:57:16 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "sebastian.wick@redhat.com"
 <sebastian.wick@redhat.com>
Subject: RE: [PATCH 3/6] drm/i915/dp: Fix Register bit naming
Thread-Topic: [PATCH 3/6] drm/i915/dp: Fix Register bit naming
Thread-Index: AQHalGYoFeEuT6BuQk6BebA3189ktLF1KmFg
Date: Tue, 23 Apr 2024 02:57:16 +0000
Message-ID: <IA0PR11MB73078C753BAEB896CDC507E5BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
 <20240422033256.713902-4-suraj.kandpal@intel.com>
In-Reply-To: <20240422033256.713902-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB5779:EE_
x-ms-office365-filtering-correlation-id: 9274f845-2161-4321-4bf2-08dc63411576
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?us-ascii?Q?M72TJx4saDZTqFACPj4+ahzEAWZYgSoZqtiBjDj1aeV4/L0HGZ3jzBjpAcv4?=
 =?us-ascii?Q?bCjvCCGUevGXelOBMhIcmLlKc8C05ltYtziBcMdMuHlOTwruQwTSTNq+4qzA?=
 =?us-ascii?Q?FBBnAdHaEAijLLuGBnzBJ0prQFiyUbDJcUtYzbrCnl17cQ9loZ2rwTyLOLol?=
 =?us-ascii?Q?lVSbAjAB/fVdnw+xLf4HgCFufVaa1M3hNSBydOLU3PpcNCJt6RBFdPk7kBJp?=
 =?us-ascii?Q?dDmLLCn0WyKbPRlEXhBgJziJJKIDfcAJ5TH5XNa5G0TzfPc5eRI3WU1klFAa?=
 =?us-ascii?Q?vhk8nCBqvW1dxfbETcM6wkF4WqN9qBQnG1Cy3OCe2MXHWY20gPaICvpHB8A2?=
 =?us-ascii?Q?qa1VyLXCEws1IJ8l6rj6NiY8CLmjW6f2jSndp2Dfh2LmozSCgkRu/gAGkTnf?=
 =?us-ascii?Q?VXB+KS+PwYi9nldvbUgLslpV2ng2+i/zgyMi12IOc9Jb/7JKQV2b+oFi0jtT?=
 =?us-ascii?Q?N4w7LFE5/9d174QlX0azWIIPq/XGHFUlk41W4EwHknBIi2da71JaQeJ2LgU1?=
 =?us-ascii?Q?prgS+pEISvjIFggPKeORW/atLHM4qTz6BhZzJ8+lT/Zsjky9O7SxOyNih3f8?=
 =?us-ascii?Q?GpHl9NgwNKpxTl3uApqo8vaqXNGNF6bBGSvjTvNC2JAANu9kfT3H2903D+yK?=
 =?us-ascii?Q?0PO8hNr1K5hVkXy1indQP0K6fwfToH5V/1+VWTJ+O41XOh+LiwsC3VDg+cFg?=
 =?us-ascii?Q?umZJk2jmLNAj8DeQwUxjr4w/fXaLt6AD8ULYD86Lx3eCyXqHs9J71Omssx+5?=
 =?us-ascii?Q?D9FOs2u8U1odqrRMvy2E17lBmw2SrbhOGeBe+5mNAuYwfgXTRPRldX8GHooP?=
 =?us-ascii?Q?RancjBRahkPQq+kv9Bl2pspsiWU2KooJXvQjKET/CFPuA5kr9b9L46mGF18T?=
 =?us-ascii?Q?2WDb26dVcpBBJYRv91g0RPu3QzzxODFdpsAp7tkfBGzyOK3FVjT3DZun1ooI?=
 =?us-ascii?Q?WBCdXcv4AlqiiQVLVdqsu6cKME0lKxDKWLV+vkszxi5Ygz3Nx1gv6v6dCPtu?=
 =?us-ascii?Q?4o6/dxlRWg390lFDDgPG8wxizTHUvcbglR5uEWQnKXWIu51bHk75qbcRH/AB?=
 =?us-ascii?Q?fQcjeQH2poJ87/zNR1O1ey9T+fx+vn46TFPAuSTOgWEdaVba0d9543gLGL/B?=
 =?us-ascii?Q?POe4F55ECXkPJezBsx/VcifiXURYS16/dsMdcjtCdRyA2Hgusc5OmuLvfrti?=
 =?us-ascii?Q?q90nRGoH37daQury6JL3CdY+382FH/bE7mz8I1A2PfrOBwbK2hEphgTL8R1F?=
 =?us-ascii?Q?HFBGJy01+l0EuF0klbbWIpkrqBKukX+ed1uj1RMZmetEZwJPlm4dg6kve9Re?=
 =?us-ascii?Q?FOH9bkmdHqBUjcrIJPJst/nO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JisQ5xj0smwLzQ/KGeUPOrMF9qBh2NR7Tqi9RhAESOlQQD1ozEd/vlWNEOms?=
 =?us-ascii?Q?slgFKdiNAuQWoajCJcm7cdPiXlnSAbTFecBmP+WadUUcuem03lqZTatH6yb1?=
 =?us-ascii?Q?67NLOP5ldfYODLyJtnSjBmIz4JmtZ/kGttNxYxB+uhVCsdUgcuDCEu4/br6c?=
 =?us-ascii?Q?NO6AX8ItB95HsG5HdEKRi4/tz4AQaeWK5Mk2GtX7NYy+zgC67Odi2p92dNHl?=
 =?us-ascii?Q?ZUq+l7ewS+oZBDws4GoBFtk22mfw8zdlMjvZhXaTdcUBMAlxZBAtI6hpqDEm?=
 =?us-ascii?Q?BWcRswBXOiI7BLGGimMby9OIDPBurTSW7P6yHzGgjjCndE8YbmCB1kJFq/jm?=
 =?us-ascii?Q?E2JQu9J1Q2Aj5utTcOj5tgAMS9E3INh62lnegHvhkwI545e8tOLctbvvjpO9?=
 =?us-ascii?Q?bebeAJH29fYAsZJIAeUNzxwBRNfgM614/qVSBq/tm4nCn9rd04oh4ZPhzq4X?=
 =?us-ascii?Q?imHwRwHYiSBR56x51KMk+SufVIfo9PAEPzPkRTvZWn4ul0VG/saUJdDwWUgy?=
 =?us-ascii?Q?XKxizslFMSD/riZGb8f4FHHLzuMjQBtgoZKouI3rh2aMFlioemg3unxdLV72?=
 =?us-ascii?Q?Gl9pq9o+oQkL/yRhQbrcdXXBMPqu5CB7xD0FKDPtwsgCUuW9JaJ1tVijIOpr?=
 =?us-ascii?Q?W6VG7Cpf/xzql06X2CnYVoooA5EY1qDc30+abzvw/1MUeNH9mTRLN+BzKv9r?=
 =?us-ascii?Q?S4BfYi2vBBFyIYPyj8thFeNPPlcX1zahd+870ASPKc36bgIzcMRd5id+8OzX?=
 =?us-ascii?Q?lZH7xqL3AbzxHLi0z2OTYXj2ynfM3vquSRUvVqS5tUx5QO9OSgGcXnmhHYHJ?=
 =?us-ascii?Q?nJu8y3y3V6Pzzj0Lvcys19LjYO0Ia4N6FBAPPPCKtBNmq1vNxHPI3YiAOYJV?=
 =?us-ascii?Q?GeZhQzGehVVXKOzbtZCD2+6m8kpRyfZIqa6DnYBaskTMUpslVPXuRB8rHn33?=
 =?us-ascii?Q?QLct04NbV7j6vBiHtrQ+iuvLTxmIAtl2Rs/9enW3fgxapUtg3s0oRZo7dKPF?=
 =?us-ascii?Q?ozbQG77/GPMrC5wLxCnsMyWALA4vGMGbg+HMH1v4B45xaL9LMdp9fU5NzURf?=
 =?us-ascii?Q?Y9WJGSe0SyNJ17jjNmG6Gtj9++S3SzP9RcTeY8q1/BKp3s5gcio0jAE74XWW?=
 =?us-ascii?Q?3CQ9580PlbcV/YlQdE933fZNNRRI9diFCj1igbw009FWloFaJwOIJTNmHanN?=
 =?us-ascii?Q?503CR6igLw78ZUjGGlgrGKBhBjo3kbpmeguca4KETaEGxyg7L5UOx2Ln9yrJ?=
 =?us-ascii?Q?Eehzjo/u1ZxGmqicWXmeDuFmbQdpx9q0Xh7Kam8v6RHQ9Eug9CLcyQ5eco63?=
 =?us-ascii?Q?vqbl9tfgMz7LKBOMqx1MAMexXz5QEJjqaEd0zKhTQ0xPUCbKsxO0DHliG7u0?=
 =?us-ascii?Q?YufGpHKpL1c7TluCL9QF9Bsli0kh20fx7hjPRt28B/4B5bbDo2Har0dTR5Ed?=
 =?us-ascii?Q?E77i9qwtLFPlO5hmfWJSEF4+hN1/gKkQQBJhNKbItGQied9B+fUHOvEuvdqX?=
 =?us-ascii?Q?gjYzTKFXAGPiw1FMQhSXR8aBFGADwWAeWuG2qYaamn6e1C1zTfPkTTywsUwh?=
 =?us-ascii?Q?N+GxULx/9PbBPhthETDG5V2UNmyGPepUWgJVFUup?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9274f845-2161-4321-4bf2-08dc63411576
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 02:57:16.3363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3aNTGblIaibQjBDrn7X/pTGfRf3As8c5B6+sboCpzg3b0kdL4XdtGiwFpeG9A5AWCfeI+MIoE7wuPHYqUQFOgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5779
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, April 22, 2024 9:03 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Murthy, Arun R <arun.r.murthy@intel.com>;
> Kumar, Naveen1 <naveen1.kumar@intel.com>; sebastian.wick@redhat.com;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 3/6] drm/i915/dp: Fix Register bit naming
>=20
> Change INTEL_EDP_HDR_TCON_SDP_COLORIMETRY enable to
> INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX as this bit is tells TCON to ignore
bit is tells -> bit tells

With the above change=20
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> DPCD colorimetry values and take the one's sent through SDP.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 94edf982eff8..3d9723714c96 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -74,7 +74,7 @@
>  # define INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE                     BI=
T(4)
>  # define INTEL_EDP_HDR_TCON_SRGB_TO_PANEL_GAMUT_ENABLE
> BIT(5)
>  /* Bit 6 is reserved */
> -# define INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_ENABLE
> BIT(7)
> +# define INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX
> BIT(7)
>=20
>  #define INTEL_EDP_HDR_CONTENT_LUMINANCE                                0=
x346 /*
> Pre-TGL+ */
>  #define INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE                         0=
x34A
> --
> 2.43.2

