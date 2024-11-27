Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 702399DAB2D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 16:56:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE3810EB4A;
	Wed, 27 Nov 2024 15:56:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBSClPHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D43E10EB4A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 15:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732723002; x=1764259002;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gkZ4zbBpFzoa2fqcbFpeo/qtkCrCPpSbjwfs3Zfre8s=;
 b=LBSClPHvC3lqKToc4onM+BQTtA1ll4yX0G4nj9Dtz29k3DLiah8ajSdh
 /F/l8p3Wrqtc3DX5Mt9yJ2N3Wal21HSOzQ+OPm6wNzAa0y75XxShQy1ov
 bD637XeaEPMX0H4ud3PuMT1s9N3xqRTmGbMa8ixwqzx/ZQUaE0SHKt3E9
 IVhblnfVOvqA3SYFwDsSWoOfHsP+RAzycTxqyYNmSwuZ+atVGK2JTwGN3
 1ecCwfsme23mSxkUtA8O1uS0pgctHYxNILnHXddeZn45JPCG2SPFjzjKn
 xY/a6+uPKiP/ytkCLpwT6FwCWaqBMBCAaRNOcMDr63IipneR6Dc3OUtr2 A==;
X-CSE-ConnectionGUID: XkcCQvsYQsOa7eWvCxXyiQ==
X-CSE-MsgGUID: 44VjezhkSwaG1q/gRKEZKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36598397"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="36598397"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 07:56:42 -0800
X-CSE-ConnectionGUID: AuS8rt3KRu2YLBXD8KfeUA==
X-CSE-MsgGUID: Rt3kttDXTkuXN5eV9SOxIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92376118"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 07:56:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 07:56:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 07:56:40 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 07:56:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pYZD1Gi34Z2R+tacq7gOwtpb4ZeoKQSzniay1leJh/hX3tHoBoXGyUX5Q/2LpWMaYmNXqfH/AAXBouhUMwtKUmdUH7fVPtNEZjFRyoTegUMI4xRgthS9dqXs9Etb60ePyja24Kj3HGGpuFhUkNB6msBNmjGTtM6bedovZjQp1pNoy7CJerDt488ERy3XpuFChUULQ0DavhWeZGFXkG1iuo9LbvEp3EiU+NLT3fMTMtLOOnXfwshysfMFybA9Ft6TyfHvuNDpBQqibsggmnx5PGhwaJsqn6kiyKoyoihKz8RA39gHru6o3ozAarnm9Ne82zvL+DCwmAgeINads60JnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dz7dEumW4GJiTqTCEnLSEYmGPIhJ5ltwU4QMpCe4sYk=;
 b=Q4K3m1fzZufx2FkrKTRnxWkkitYf/4Eb/c+agqSYXNNw/b1n+BOVOf8F1qIRPAkXMEFBGKt2j9z7udtALPztFARA7obWsM8+jCOXh/AMvgQ0N7rRv1eJCW5GrNdR8Bo+Ns6jGvLJgArd73W6vxwyKtsWStVI6+Eqwjajxh60PfccGpscyZ9UH4iUOSQRx+H3sT081YZc2x9p/pqGsNsK1bYKFm1x0FKXu32i0Ff1xg+tSbabdsTGrD/6eFKQv0/duBkbvcxEgfXLcoKjnjm7b8QO36i3Svi3AgfEvhnjQt8GsHQpLXrZPxIrCO/DbvPVTFpa117qMwWmHyAPvIyaSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Wed, 27 Nov
 2024 15:56:33 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8207.010; Wed, 27 Nov 2024
 15:56:32 +0000
Date: Wed, 27 Nov 2024 15:56:27 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915: Disable compression tricks on JSL
Message-ID: <o3albuqlbexbhczvhi7lnh4klyaccdbo34rbtaj52mp4ox4ecj@kjggr3melenq>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20240918144445.5716-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MI0P293CA0007.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::10) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA2PR11MB4876:EE_
X-MS-Office365-Filtering-Correlation-Id: 86b349f9-085f-4b02-7fde-08dd0efc104a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmpPajVlRU0yaFQ2Qjh5a2d6T3Y4aExsMDdHT2hIcWdOQ2IvVGRuYUN4MFJV?=
 =?utf-8?B?OFNZSU9PT25kbDA2eGtnelhmM3VWUkZKUFBnRkg1ZDZDQVJxRTFkeTgrYm4v?=
 =?utf-8?B?V1NVOTFBaFI4WXBBVG9GNTVOcU1JSjhlVS9DWVFFcG9SemEvcUVOeU82ZVJ0?=
 =?utf-8?B?elFUUjhYdmdoa1pCTDhHcGRnb0xCbWJzL3FRMU10UkF4aG1HWEFNZjUvMmhw?=
 =?utf-8?B?Y2E5b3k2UGV0TmlkVlVFVDB0YXh0eWVGTUlSYzEySWxXSHlqRGozY1NNL0RK?=
 =?utf-8?B?NzU5ZEF4MmdDaG1sSXFacFoyVXREZXlseHBsaTRhWTRQMjRWYy96R3lNbisx?=
 =?utf-8?B?RnNwR2tTTUZaTGh0cWhGYkJQVnJHUVJwVWhPcnk4WmJTZ3NEZ0hlRkt1RUtq?=
 =?utf-8?B?eU9LQmR5SWd6STJsQXoyUUUyOTZYKzlENk5LWTU3aGIzd3UvbGhJa1lnWFV1?=
 =?utf-8?B?VGZtdzdrQXJrdXdkNGQ1MlVlM0pzK0Y2V2Q0WTZJMXFqSnhQSzJnZkE5NWN6?=
 =?utf-8?B?K29na1J3N0tNZDJiTHdMdzhIZENKRFJHZ2sxQXg4UWl3cy9tZmRPWGx4UUg3?=
 =?utf-8?B?M3owZGl3OW5kbWVxdzdGOEZmKy9zV1dleURaemMvUFpuQUtHQlhtaTkwWXVk?=
 =?utf-8?B?Um1XTG95dGpPc05QMDdsQTlBL2l6ckFQenpnRVJwQjlsYTJ1RTl6L09RWW9Q?=
 =?utf-8?B?TWkxZy9XcUE2dTZvb2dGQkhFUDRvbjBubzdHOTYrdExWVlp4ckpzZ0FIbmxI?=
 =?utf-8?B?ZERRYXZWOGJjSTJBYTFYSEkyZjBKdE1BNkJ0RUQycjIxZHF2ZlNrNFhDNFIz?=
 =?utf-8?B?UHVJTldkbi9LVlBrVlBOdGYxLzllQXhLRzRkcmhuT1dmeVFtekFkVlZYSFgr?=
 =?utf-8?B?U1NvdVZKRHBIRmU1dWNRWGlWeWRkc2tTTjk2cGI1T0dRVzhpL1hMcll4cUNI?=
 =?utf-8?B?dXQ2RXNjRXc3bkhBMU5LdVYwcEdPUHJFWTNudlZEYmZDUzAwT09TQ0VOMWZi?=
 =?utf-8?B?QTIySlI0RXFYYnZaOFJGaXZQZ0RTc0h1ckhORVJNckxHY0Z6bHBESG5uQUxK?=
 =?utf-8?B?WVIrVFMvQTV1VktXT1U5T1puVHdTZjlsbnFHV0dFanpIRzdKekIvdy9JV28w?=
 =?utf-8?B?M2hyOUtSK2NHYm1yQTFERWY1L3NkcWovbzBwSlFzSXUvWFJLNmNFaFBWTy9N?=
 =?utf-8?B?R0pvbGdqUzh6MWlZNnU2UmFWVmRmUnFFUHNPSlNueEptUVhsMGtnYlBYUC9X?=
 =?utf-8?B?R3hHL1RVZ2QxYnk3bEpSYjV6UjZxYXkvQ0twRURaYnUvbWVHQ0xZbFI0YnZG?=
 =?utf-8?B?RlZ4K1B2U3lmNXhoaStuMjZMVTVqSU96eDV1ZTZhRmRIbE9IRXJhUW11ajMw?=
 =?utf-8?B?UWsvR1EvZUxvY21sc3hBckpOUUdlVVFUSU5xUVdCWkNGcEN5dncrQTdQRFBm?=
 =?utf-8?B?Zm9aOVhVRFZQRzhnWCtXVlJndWpDS2RMYUxhVDZSV1JHVHZjcGRHcDZXOWRq?=
 =?utf-8?B?K2dIYVZEZGFWKzhFM1hDWGFrelprcjJrbkZhWUtnSW1ZR25ySkhubFRxNmJw?=
 =?utf-8?B?QS9CT0cwdjV0MjBLeDR6YloybTJUbDM1N1FkZGh3N2lDUzBZMVJSQnNmOHdu?=
 =?utf-8?B?STV6ODh3MWR1WFVYSWlwaEhqODc1QlJCb3VLS0tPQzNXazB4LzBEMmpzSTl5?=
 =?utf-8?B?aGpvdXpRa05kL0FKMXVNRlFaS0hVeHlwQVpDZFRYVXhsczBzZDJVUVJsQ0Qx?=
 =?utf-8?B?N21uelMwT1U3L2FtdFpZaDRaaVhnUG80WHc5SVI4bnlNUXJiVVV1TzlBMVd1?=
 =?utf-8?B?U1hmRkcwNU1FdkJSdDJCUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFZETEN0WmhYUVluTHhrU3QrandVdjhvSzNIVTgrM0w1RGsxblVNWGQyYyt6?=
 =?utf-8?B?dUlMYXdrMWw1dXV4UkExWWl0U3JqRnlGMjFMMlVUSkdObkcyNVJkVmhmMjZI?=
 =?utf-8?B?YlY0QnlFa21NYXVSMW9HdG1QM0xCZVJ3aUZyeGpnek5sZ3hBRThyOVM4dE95?=
 =?utf-8?B?M1Jlcmk1Y1drU3NwcDEwY00yK2JvQ3M3QUhVS0xTclpnSFZYVDhudlkrdGhS?=
 =?utf-8?B?OUdIWmZGemRRakhYQTJqc2NOWlJYMGEyK1orZlAwdDB6aERkWFNNWkpmYlpI?=
 =?utf-8?B?VDg3YXp6dmQ1cHFQNUtnZ1puazlUejd5NUl2NEROMUFBZDdSK1ppSkNPMkda?=
 =?utf-8?B?enIreEZiZDQ5YkQ4SE5oYUhRbUQ1ZXIzUHFybE9aQmF1djIybWZTeHBJU3Nn?=
 =?utf-8?B?WkdQQzZXRkJXNzd6a2YrL0FOaFR0dzZjRDMxMUVQMEJaTnRVU1RNY3pvQlhh?=
 =?utf-8?B?dE0yTGdPVVBrc1Ria3RBbks3dUxFRjVUWnVaeDhGQnBmTW9MK2VFMnNLc0cr?=
 =?utf-8?B?SHUwbnRSU29lNHdHdFNyOHJKOS83UHd4ZUtWWTBOWm9HSWhqSXA5Nm9ERUNR?=
 =?utf-8?B?VTFnWHFZVTByaFZoTmdVUEdNQlFMQnhScmhaU2VEaFFvVWVhWkd3M2x2WmNT?=
 =?utf-8?B?RG9rdVNncWZKb0tVV3ZQRlgya2txbW5kc3RmSFY4TnIvaGxjTFB1K3pBSkda?=
 =?utf-8?B?ODdJQjZNamtnYjk1dlJXdGNhcEd3Qk52WDhxNndxU1B6QWdaa21KMU9WZUk1?=
 =?utf-8?B?QVNQVXRqdFk0OTA3UmlRdGhHYTB6anZZeWs5emJUYkwyNDNBUituRHRmWUtL?=
 =?utf-8?B?bitYUi9ZMU05N2pOa3oxU1haNVF5Lys4c2RuQi9CNWplVHZBVlVsZloxNSt2?=
 =?utf-8?B?cFJoUnZua0lHYWdBSFJ0NVQxR0ZjZk44bjMvSDhDL2tGSWZuSEdDOVUyVGVP?=
 =?utf-8?B?S1dYTHRrYko4Vk14Z3p4bjFwWENOWWdzQTExUU00OXVrbzZUYm0xdDg5Szdv?=
 =?utf-8?B?NUFoVlV1ZjlFeDM4aUhERFphbnp5dFVnNjhDbzJLSDV6RnNmNUVjaVFrWWdJ?=
 =?utf-8?B?a3p2OGdHOFZhSXRxeWsxaWI2amx6VFkybXhCQ2RWaS95eVp1ZE50RmY0SUVa?=
 =?utf-8?B?NytwcHdzQjRLazBXa0E5SENSTFMvOWVWQmZvQlloSHJJS0xmYiticm9TVXNM?=
 =?utf-8?B?OHJyZ1Y3TVAvWXUrOVUyeTlwcnh2OGkwajhUclo1VUFteW4vMDl4T3pGQ1V5?=
 =?utf-8?B?QzlwWlVuTWFpaFNCVEpNQUVVeUd4QVpJT2NSb0Mya0JkbjQ5enI3RG1rMGNV?=
 =?utf-8?B?N2dLdXExdFhMK2RzYlZzZnRsU2JIa3pIcHVKWFMrTzZOK0JJalBjWUZwZmdJ?=
 =?utf-8?B?N2JlaXUrVW5zdGU2YVJXYTFUclNmK3dsRmxjY0wwTnA4VjcvL25VMktYNys2?=
 =?utf-8?B?YTQ1T3Q1cURiNnc5RjNra0RTMnR3RUZYMktnZ3RhMCtmNFRzaExqNEpUU2pI?=
 =?utf-8?B?NW5xZkxFY3JpSk5qbTNXc1ZCVG0vb2NaR3FLK0NOUEw0ajhwY0ZvaHpPRzAv?=
 =?utf-8?B?ZkxGZ2VGMDd6WDlxdE04NDlxRXJVbXVTa04rWElKVk42ckY3MllVSmdUeUha?=
 =?utf-8?B?dlYyMjZIUjNCeGxwZ3Vnd0g0TGtLaGQ4c3A4RXZKSHdGQkFDWUVZanBVc21Q?=
 =?utf-8?B?S3RibHVhLzFwNzliazFPMDVzamVwWjVuSTZyNU9HR3lPQnd4TnpXcVdXVSt1?=
 =?utf-8?B?VUhwWGpuSXVzRWYrM2sxN09EVGFhekhOUG1Vcy80Nk1yZHhVcFNHRHJ4ZzRY?=
 =?utf-8?B?eDhlWlg2ajhpVkhibTI3RTNrdFpmRGRVNGhobDNISUhZTnZ6Wk00RVBwVHZk?=
 =?utf-8?B?L2RvRlI3YjIxeDd3d01XQU5aNC9mOE5RZG5CRmtMVkR4dUZ4K2FzTDluN1JF?=
 =?utf-8?B?NDJFbWxkd1hLTXhsRlJYeFpwblNUbFFDeUtzR1p3QjRPeWxvOFFxS0pWZUpJ?=
 =?utf-8?B?aEYyK1ZBRGxZaHFUQVZTV2djR1Z4YVZjeElScW5xek9ZZWFNTEp5Y2lBTk5t?=
 =?utf-8?B?cUZDemdHZE0rWWxXOEY2ZXZSdDhCUmVPNEtvVERDeXkzUE1hQlpJM0h3RlQ5?=
 =?utf-8?B?Yk43YXUvV0lYM1Q3ZWNEQTFZUE1vNVlzOGJmdUJWWG0vamI5dHY0a0hFZmp6?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86b349f9-085f-4b02-7fde-08dd0efc104a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2024 15:56:32.6788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pKhO44wsJJpyXHopeEap5VloSduBqO/7CaL1bf18gZFEWvs+XLhiB3YNYzJ4oO3cCCwoGP4DlFLZuIGJFNKyqzRcpqDynuw3rDSFWijJ+Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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


Hi Ville

I found your patch looking at issue VLK-65591, seems like for some reason
cannot apply this workaround on JasperLake and end up with an error: 

```
<3> [463.126159] i915 0000:00:02.0: [drm] ERROR GT0: engine workaround lost on application! (reg[7000]=0x0, relevant bits were 0x0 vs expected 0x8000)

```

When the workaround is verified, 15th bit is not set. Is it possible that
this workaround is not available ? I would be grateful for any tips.



Best regards,
Sebastian Brzezinka



