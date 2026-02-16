Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKfJNaPBkmkSxQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366B51412F1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Feb 2026 08:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537CE10E17C;
	Mon, 16 Feb 2026 07:05:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MAu5vZlo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A233B10E17C;
 Mon, 16 Feb 2026 07:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771225503; x=1802761503;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=GHOezWSQOcs5NSwrIAQguOQsFHSMg13nrNNBehIat9w=;
 b=MAu5vZlo1K5FYNboL5Om3GOEOh1kAZ9RA5jrOS1rUnFGFUpKn7jFFo7u
 wkHcJsg5AnFEYXXyVjNESweOLMbJQWl0Kj5bwNqf7Wic37q6ZtzfSiXFR
 mdxl5vWvJoniXdKuPMkuCpXOEekpymvGQudUnxhE9Vq0Dikh42tUuQ38E
 14HcfA/JnMbckeDDCu9kwXAYZQ41m6w+o99uZsZ26Was2PQ7lX6ieII2C
 zVrPoIl+nnxYK8LZdF6bSt0jJMUpURhnG3zRQsrtF5ZZhoHUVv6Zaa/OF
 GJlDWtWnkoT0XPU9dnY3oTMslTs/xGeGCMDiYreCjkK2Yir1TRFR/UZpI w==;
X-CSE-ConnectionGUID: Al4SEsTMSsCH3RB8DEcq1A==
X-CSE-MsgGUID: 22ilzczaQbuoz8huaL7XOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11702"; a="83743324"
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="83743324"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:03 -0800
X-CSE-ConnectionGUID: rq0zJXjlT4WIIpMYmjGwFw==
X-CSE-MsgGUID: fUpjhRVfQImP9+AJbLg4OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,293,1763452800"; d="scan'208";a="212838145"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2026 23:05:02 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:02 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 15 Feb 2026 23:05:02 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.24) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 15 Feb 2026 23:05:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H1/OQNDqCw8Z+iVpEu9maRoSGINwYs8WIif6p6XHTjs0jX3BaT6WnlLaIse2ugJng0LMiFi5v9SXXAgfARItQvI3He7rwqG1fEbfe9kxehy+/ozTxOJ9CY6GabfGaTFyi7pOI60fOM7cvaTpQe4GVuNo4ycGOrYK4iH5e/Esr37RXxORleQHN8l9xlSBvyQAIH5WaWZYEkd3zATr2s1c54cFd9zLieDgzEZoRHZKuZGaEHuuNaslV1E1257m5CDx/yNZ7Teg2XVj+3CWS+IQimSR9f5iRJvFe0gjUZ2//WHdIVtg3CZPa9ejz+m5/79wQeRIerNcwiNjahkLmlvTMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jQl585C02HGHZreXgCBbnLTconPFmy8C46iF1r+WKxo=;
 b=adM4d4bOQymZHfkBfl3JKptoHOJ0Le8eZI0jgkr8uznmfS6anZP1nDkLJCk/pLtoSY9nUaJX/Hyh4r2LSD/6suKXCEfkCm5CKYynLl30ND0eZAhQ6bGSblysQ+On6TLW7d52kLD2SupnxddGosKtao/aKv5JKAhVYoGIGq2KUXArRg3QN/9oriBnRr9vUjEUCS1mU8AwinxwsRpbOcOTBvUdvZfNdXh+4g9ZYpH215LPP4mwHlb0wfMg7EThnlNDYR4C3VQMWHPPCOXS133u8zX5Gy36SYPLMIfMUH5BMHQYW9/tYAOTyVcT9Qt3vvhCAFjxg/wJ3GhdMBYyunL5Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Mon, 16 Feb
 2026 07:04:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9611.013; Mon, 16 Feb 2026
 07:04:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/4] drm/i915/dp: Export
 intel_dp_compute_min_compressed_bpp_x16()
Date: Mon, 16 Feb 2026 09:04:19 +0200
Message-ID: <20260216070421.714884-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260216070421.714884-1-imre.deak@intel.com>
References: <20260216070421.714884-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF00007A84.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::616) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5240:EE_
X-MS-Office365-Filtering-Correlation-Id: 4698669b-03b9-4a0c-b9f1-08de6d29b2c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+kzWknhfVZ3fcdSDTWvs7WB1/M79Vdn+hZQkOiDZfPzqlvZwxqw0CmpOJPpE?=
 =?us-ascii?Q?V5lH+WRAM5GE4Ro8jzD86rloVuu6ILphxSxn2gNIxV/t9Drx5YPo7ndlQxiE?=
 =?us-ascii?Q?z4U0KsecNpYfAAMWy7zo6EXAHTWnB9KIT86KB9qWdQfPEzRr5LKPce8vOuV4?=
 =?us-ascii?Q?4s6FpPRdmeXy14bkG4QLPkaCXr3guVdqoKzcA2xaBaUCulBzK0amGifoK/Dc?=
 =?us-ascii?Q?+/UtTfu6q0kXkRMH/xnz+p+q2Auq47jgLEJ42m8xH77ldoOsYMJHrU6cElgz?=
 =?us-ascii?Q?RrIlkna5spGxW7T0lrclAKezBRYRYZ5oj0tb8wmU09olX3lx5BU+nmbbvPUn?=
 =?us-ascii?Q?mYPQ/9jsOxJ5MgBRsRHDIYEDwtMev4YPFQUnAPoRTbxtZcsFsKyew8NdWYy+?=
 =?us-ascii?Q?KKt/MfoujvSZzM8AdtR8xVrV22HhmxYlHgtFWs90gEy31i8+ivgOgeguUKe8?=
 =?us-ascii?Q?acGNhPq6KyxgBXLlAgcVQEm5UEHYbj2M2ow/Z3EkHx+2zjhRPQRiqxA27KL3?=
 =?us-ascii?Q?OmH7q8s3aOOoZuM1bjNvaKBSYuTqXdxZa3pMNmyn219Sez7wvqIdsLqxXG6s?=
 =?us-ascii?Q?N9B8mfz570N8oeZ5zQ0geY9lHFX6Y6Mjq1tUWfjpLbq4dZYqA3gbdzHRGPkG?=
 =?us-ascii?Q?IfHH9v9G/XeY6Ti50IFGu4pLeCm3ya+uFYFRsEcUhdMztl7U7R8/vcpOMMK5?=
 =?us-ascii?Q?YNH7trzSs6wTIMs7xCKoJPDtQx3ehA60vPH+ChTOlNCDLUFYd2keJ/8qNP61?=
 =?us-ascii?Q?bsbGigU/d+qZrTpMEKphu0vCcSbHX/5wBMWHkElMMC6kRUhWkMRbfwA37aHm?=
 =?us-ascii?Q?OI533Jh5OVln4DbcG4HaPCz6mwMO9gjMNKspw+lT6fUiOyTQ9AaBanf6lvEV?=
 =?us-ascii?Q?RsAMAXmlw46L1xvouVIJ8hNZ5aEuN6nz+1EYMpJC8qoljiF7iPwMtugRXvK+?=
 =?us-ascii?Q?oSvQx5MtfXrC64SMLW2m+z7hpGRP6oxIFbFYojvslazA4Bj8aqyaTU6JRXCe?=
 =?us-ascii?Q?2EwuYXlezHB4s/XR4yy9UEw2dKVdIFVDQdiOI7XXOiNIzZ48vwO+PF+cHMkg?=
 =?us-ascii?Q?KEIe0TC4077FZjF+NfLDiBaRgk45b++TYuV03gwQdw+kQMAnT6A342jDmsx+?=
 =?us-ascii?Q?ONr2SDhpsQBNCw4oUBiD/5fwrp373nIhyr+uqebQbYaDRJopMp5FNvx3lQmX?=
 =?us-ascii?Q?ORqPA8YAQWXMbNkv2nYDsZ/hSevSFszIJGPI/5q3q8z1KFkbFkn32hqMxzpD?=
 =?us-ascii?Q?89Opzmr4LC6jmQhd4/Q8KvsyE/CzzgPgEcCgHYS5PTyDIIKwhPHvp/i5/gS6?=
 =?us-ascii?Q?xJthVWgh/J6o6+rbSN2l+iG6R1mQesXNRZ9DIt/8tcGkI6bA4TxD7jPUXG/M?=
 =?us-ascii?Q?37zop84bju7jZnqglXUm6XJESnJi1pGqa5b5VdmMgLscS7ETCJZfp8uJ1thP?=
 =?us-ascii?Q?7jqfov5u/mpMeEH0Qc/qtMNPXgrvd7Ib6hDkL6Tjsol4L+6HCUvY8I98gynE?=
 =?us-ascii?Q?7o9h7rq81PRC8jgMXWe4CN041N5mYfz3pnRGuC9kaYfxQDGdS+qZssx8u1Oq?=
 =?us-ascii?Q?u/BJYwIHNT5OS3JroP4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TL/WLwZ59FjIyXAqcX+QFAIer97iFeIRyVbqpogTiH77gW5edsh9xKYd3J2o?=
 =?us-ascii?Q?GL6/roEhUQvczZqwXABd9aKvIf2UkezLzLBJcRejWw2uAsmiBJodzJoti38l?=
 =?us-ascii?Q?mBHAWCYt8BKmBZqIK7XYHo5Mikj6jSZer5bCdyl3eXdudeFm/BZFD6mXkYgt?=
 =?us-ascii?Q?O0QLPedB/S933qJxPSpVi/x4MeS/hj+89yVTGD8FuNjd43PiAYr1ruSdtcHz?=
 =?us-ascii?Q?oxT3s1TWvhl5EPFD2f8zdG9bithJs1eYGCbWsYU5PRVGMZgKHMZ5WEwAPBmb?=
 =?us-ascii?Q?RUbkUAqv2Mw0+i77UT7kg17nvOYXpYt9wtAL507k00q6vxcAbqzT+qnVBg8c?=
 =?us-ascii?Q?oRPVcpp1KppNpt6VckpUyzhRs3DBZIrB7wMporKH4UrDFPKnw1XuIRhVxbnu?=
 =?us-ascii?Q?SDFu+podi9EWDntQXAr4/TXmuGqgEK6dOPaTSlIV4ws4L0iu38B8i0sF5Wry?=
 =?us-ascii?Q?hEaxV7Wi6sqt5K8aVuQuRBVM5TrtMlcKQ0tfNqvc777yJjHvSP6BSUiS2nvw?=
 =?us-ascii?Q?Un40kbPr+PP2kEjQXjFauccJa38VmMuUgk42pyb7MN7+1gB5X6SzII+B0Slc?=
 =?us-ascii?Q?uuSqvv5xtk9+JpABxIL57DKXczaNO51low45q9qsLi1EhNk3BiY4YesDCt2G?=
 =?us-ascii?Q?XLYgK+ZBO0oCN0lU4D52RZAyw3e7JTqc9qKT8lW3ASQ/uovI56swIPcQu7z9?=
 =?us-ascii?Q?rncP/3Owc6fFQWyZt75IFcr+Q7GO9jaf4Uc7BsVp551Gf7DQg1tbvFc8BuxM?=
 =?us-ascii?Q?XBIAKc9tPrpzScIsYR30NmUnm+YNOcOZd+4vo6XcJXudYS0BLSWJRx+jmq2w?=
 =?us-ascii?Q?1wWPZGD4Sp67N2bjaVP8P9rtoeVmNBQIBAVF9wnOJACgHUH2rQiutoTw/py2?=
 =?us-ascii?Q?4ZqW/7AFtIYCWZS+Khokk/4jCh5oZ8FcgTU6WcG4cnEwdnPXcbvhIZwqbn22?=
 =?us-ascii?Q?gzWzbciRpGRTmXhzEiirJYlSaL7f9nSG3sJlWX1ZsYBLFQjHQ00W/oxlghuU?=
 =?us-ascii?Q?mdjE9P6P+jXxXUknbrhDDGcIAH852Tjpt0I+Y9ppK0e24cRE1rFdyYLOhJrs?=
 =?us-ascii?Q?AoP0i9QiG/6tYFA9B0K4qP0lNKPju35OXRdAxesOCg+lg0m1pvXjOj6G9GpN?=
 =?us-ascii?Q?FuV90EPM8YPp1ZDj6Z+VziQ+hZtzZia3Xyoo2ODQiLIRLldkbhHqWOQJ8Q+6?=
 =?us-ascii?Q?5CbWVlFhkr2c3rjGDhwYM1IBtJoUNHXarKTLHrzuV3aXX9z/RPgRiVBKCGHd?=
 =?us-ascii?Q?AeWmM1a0Cs+CzqpNIisyIr7uT1LCcN0S8xJO9ohdMWD1YjBVo9oqb2nYdbVH?=
 =?us-ascii?Q?U0IGn2pEVx5+/SZYsMisSLz3+eIEs9i2kJBw4kkg2HZ9mQYC6oGSgkfz8Weh?=
 =?us-ascii?Q?5pu2vwNiS5R1kWstiSWSUJrrFcm9W3oImIMWf1Pl9ymr6WwBcfblWiHtCKea?=
 =?us-ascii?Q?MIR91QuXIUtoAf+UuP93sX541EThe11LPFnJgMp5YgmyvWDUYCXBh1o2IH42?=
 =?us-ascii?Q?hNoP/tOvauN9WM7TnUOo3LwcaCBPNa5qBYMsW9jz7kalJ/RbM2lLgzjtWwya?=
 =?us-ascii?Q?mYA6RTZ5Vmv5eKtggIiqVLuI/nSxWzVTCisoFGcBXbOlnjjhnyMxxFSk2UHn?=
 =?us-ascii?Q?iARowFDkjd0+EJgoITbII3vM/aYa19GUy5a3RB0Hj8umysxattaM5W0vcHEp?=
 =?us-ascii?Q?hwvIyCtOViMvKtcyxC3YieVybksw8H3RCu3D7v4ZPnuAZo3Ckauk4XK/ND7F?=
 =?us-ascii?Q?JA+FqNLAcQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4698669b-03b9-4a0c-b9f1-08de6d29b2c0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2026 07:04:59.4094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XAqiPeS7FGb7w7VymQpIYnr1niAyDbjM6MzNO9YCGdL0L+qQiM79SqObGZRDyemGZdA59NvfiVjGLbubwSnUhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 366B51412F1
X-Rspamd-Action: no action

Export intel_dp_compute_min_compressed_bpp_x16() for use by a
follow-up change validating MST modes with DSC enabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_dp.h |  2 ++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d1caa20370123..454e6144ee4e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2514,8 +2514,8 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
 	return fxp_q4_from_int(12);
 }
 
-static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
-					  enum intel_output_format output_format)
+int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
+					    enum intel_output_format output_format)
 {
 	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 	int min_bpp_x16;
@@ -2581,7 +2581,8 @@ bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  int pipe_bpp, unsigned long bw_overhead_flags)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int min_bpp_x16 = compute_min_compressed_bpp_x16(connector, output_format);
+	int min_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
+								  output_format);
 	int max_bpp_x16 = compute_max_compressed_bpp_x16(connector,
 							 mode_clock, mode_hdisplay,
 							 num_joined_pipes,
@@ -2635,7 +2636,8 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
 		limits->link.min_bpp_x16 =
-			compute_min_compressed_bpp_x16(connector, crtc_state->output_format);
+			intel_dp_compute_min_compressed_bpp_x16(connector,
+								crtc_state->output_format);
 
 		max_link_bpp_x16 =
 			compute_max_compressed_bpp_x16(connector,
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index cbd7fcd3789f6..b0bbd5981f573 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -143,6 +143,8 @@ bool intel_digital_port_connected(struct intel_encoder *encoder);
 bool intel_digital_port_connected_locked(struct intel_encoder *encoder);
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
+int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
+					    enum intel_output_format output_format);
 bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  int link_clock, int lane_count,
 				  int mode_clock, int mode_hdisplay,
-- 
2.49.1

