Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C41FB0A4A1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 14:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2C210E557;
	Fri, 18 Jul 2025 12:59:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XEvEidQq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FC710E05E;
 Fri, 18 Jul 2025 12:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752843545; x=1784379545;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=AYCRAKcgou7h+E/iYROzutNdZ9KaOrXHHiPrSc1HzSs=;
 b=XEvEidQqyOzace/SHCWK2SZZdGXxULbfSpC5PSPF5F+dkRHiBBdohxPi
 8rtiruRNz/cMrwrGALPenf/dktUn0RlDwyS/tIJo/V5LijKu1BtIoaJZv
 9H4xXl7iond61bhjbD1SdTe8szSHtdx9ZDQ8H5j86XGgrO5b59cacVT2I
 5yPuPuN2B8+NMbgyhxOYlOLzavlGrIMLPYNUDD6LwDuhPPVVl5BLlzIrj
 Pldi2ZkLa+hxvTdL0GBwO0yanyb0VTTgAQyJK3G2KhTfcuSXjTqthnVUR
 aAkX9j913ElEC+oobMRxoisFm9M6rajLk0N41lsDi3uTPD6t0U1gu8QMR A==;
X-CSE-ConnectionGUID: qSxF7hdTQfiRrw8yz70K/A==
X-CSE-MsgGUID: EmJltw4bQd6NsVW8jDg8CA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="66585397"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="66585397"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 05:59:04 -0700
X-CSE-ConnectionGUID: 5LDjlfoBRMeuALGq3vFLsw==
X-CSE-MsgGUID: eZPJOhg9QGmclBx70//Sdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="157722208"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 05:59:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 05:59:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 05:59:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.72)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 05:59:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=liMkJKuVEc03G+qbAovoaTIZNgddjl5AipUsKsTd2tOs9sBIZ2zwBw+12Gf4d0FdAxbLy7XUHmHvLbBgRHp2/pRZRPEK21n67dKARJ1djzWLGSf4mXoNu+coL5hjq5ak9hPhze97OPQQAm2Kr/bHwa4q5EX01ZWPSsGDz8Xok1h+yVdBhuyKSvXUHJNz+6K74s0v009J1ytwv4OaRFUzv/nSWt0nquKIm3UEFkalAr8QXcjDtYwZLZ13KhWLYv1QdGtyWhLD0tSsk0qMkPC+mmU7UeBu/TjWrywtHBt+haxAK+9nIcx/vK/cea9b8/wi591Ok1tddr9+sMODOmAGhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WXPsk++4i36ryznjqNZkMA48vkncCKHxThBIrp0LW64=;
 b=Lmq7uL1efaCRX9a+fAl4jV3NuHzEL0q8z4o5dJ+0VMuST43man8ci8cx3zuMGMPjas128FZs2qDt8k+zB4p/v0mFkVCF4zGE/+B3Xe6VFYiTFcN9ZoLUEqVh5Ys0ptnfZmU/OICxBNyAClHH8lvR88Iqhid1+gb/niRQ/JfUIsHW2vQw7a0p399HCnVMashQmqdg7j0hNHFCixFVv4wlVVgevBr6rD/qxwnwE26UQ8XHMIC8YEzloe0q7Htagr6qpmk4Gy5vZz4tEOwnhuRZDFGBB1ymCg0mmNLsMXuBNuGZCCL3s+8siPHuBmBJfYptZjxxCFyOtHmSAxh/UeG+AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7472.namprd11.prod.outlook.com (2603:10b6:510:28c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.37; Fri, 18 Jul
 2025 12:58:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Fri, 18 Jul 2025
 12:58:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <bd7a211e9a56b22673cc8b1d66541bcbea7d3b9f.camel@intel.com>
References: <20250717063259.440086-1-jouni.hogander@intel.com>
 <175275909975.1809.8747168482147911326@intel.com>
 <bac5a94acb4cc814a56855be54c2b5e69ab573fe.camel@intel.com>
 <bd7a211e9a56b22673cc8b1d66541bcbea7d3b9f.camel@intel.com>
Subject: Re: [PATCH] drm/i915/display: Write PHY_CMN1_CONTROL only when using
 AUXLess ALPM
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Fri, 18 Jul 2025 09:58:36 -0300
Message-ID: <175284351608.1809.17923503412794799848@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0064.namprd03.prod.outlook.com
 (2603:10b6:303:b6::9) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7472:EE_
X-MS-Office365-Filtering-Correlation-Id: e4e39d71-3580-4957-f17e-08ddc5fad444
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlhWRVRDa2NwSWJvMEZkbWRsUmcrVTh4L3VKYjhKSUZLZkc3dlFuZ1Flbkpq?=
 =?utf-8?B?aHhzMGJFVUdNZEgwNmMrVjBYaEFVNnlQcjlweUlnRm14N1JyTFNSbXNkUXlI?=
 =?utf-8?B?Sy8ycmF5VDRzWEU1WUJwdUJHcDBKN01rbXNyRk14ZVVnWUtaY2s5VTFkWHlj?=
 =?utf-8?B?UXhuL3EvMmwrUi8rZi92eGlyK1NIa3lNb29ZOUVoWDlZUTFWelZJUENhQ3RD?=
 =?utf-8?B?RWNDV3N2bEFlUys3Zk1tVUMxdFk1NzRvcnZFNmhVZi8xN0JzV0dCb0F4WU9i?=
 =?utf-8?B?eFFyaktqSnZRaE1lUk50ampTcUpPUjdQczBKb2hnWUJmNmJmZnNrbGZrWUlI?=
 =?utf-8?B?ZGFSOGZBTnorbEJmYUw1bk1Cay9ObzlWQzFMOEJzN1Y3bkgrNXJXaDJydXRW?=
 =?utf-8?B?WHRsb2JndUxqaHc4a3BHRm1YaHRXb2YvcGt5SGZYTWFXc2JSRXZIZzBBMVB4?=
 =?utf-8?B?Ny9EdnhIOTVmcm1JWWtQMjdoVmtGQUZuajh4YVNTUVRBSlMrc21FOVRINWd1?=
 =?utf-8?B?aTFsUTdqbThqdG9YNEN0TzdWU3ZpWFlFYk1Sa3JJQS9TUExVSlJkRWpKaGJI?=
 =?utf-8?B?UDBJNHpxNERSU3RjQ3R6S3RNVkpjY0lKMktoS016RVBHUHNLYThSUVNGU0lT?=
 =?utf-8?B?U0JLYWo1cDkvK2huNmZyRHJ5VXd2MFo4VktEUEZIRmdKSkRESFBZZFRUM01z?=
 =?utf-8?B?N2NSU3dqaTFOSk1UMWZYVno0VkVteEhiOW1aU3R1TkNyR1hXV1IzMnJEem1T?=
 =?utf-8?B?aFZzMXZjQ2RWSDVSN1FPNmlqZEZuc2pOQldOWlVQM0wraktkSHMyU1NXVTdo?=
 =?utf-8?B?WElrU0RDdWM4dSszbHZiU0ZGcjA1ZUZ6MDQ2T1Mwc3BxWVlKKzBJL3dDbkdz?=
 =?utf-8?B?OGI4TDJHS1o3cm5mdWs1eWlyRm41Z1EyV0t3Wno4QlJEZXpsUFN3S1d2MWlZ?=
 =?utf-8?B?dFNsQUZRRWRHS2s2OWIrREJ3MmV4YkxtTmdKQ1NtZ09PdjZqT1ZJMG83amdZ?=
 =?utf-8?B?K0UyeldnczJjSm9BMVVOa2RLQjFsdHB4dXdoU2luV3ZsTndtSEdBcjdnU01a?=
 =?utf-8?B?bFRXZGRyYmdDZENWUzViT0p5TWN1cVBBZElrWkRhb2hCN016cnUvelYvdEtk?=
 =?utf-8?B?OThFaXBCb244UEZjcFlBT1NkWHcyRnJSY0d2RGxTdzFwRkxqQzJmemczVTJI?=
 =?utf-8?B?VUM2ZDc2VFJrdDkyamN2T3pBZVBXYTMxUURRRnlnZUozZHBla3pITG9mdWg2?=
 =?utf-8?B?SmljdjE0UUZBMXh0UFUxMlEwT3pYNkxCTjBTd3lDRzhuSUJqV2hzdkNXVnpD?=
 =?utf-8?B?UXdCSFNQeCt1SllyR2FucXVuSTdndVRwR0crbEdOYk9pRW1jSWhQQnVBT0Uv?=
 =?utf-8?B?TWJUSXR5cnRkZEUzckMyZmNjc252YUMxTGhjbUgvbFhkSkU1OEl2RmhMR3ZD?=
 =?utf-8?B?Q3VvUE9DbjBTN3VwY2xJTVk0Ny9KblI5Q0ZkRDJ2OUFWM1VmUExwNERBZUsr?=
 =?utf-8?B?bFc0aGRVY3pxN0RXSFlDbjNPcE40QkZRRE1mSWhKM0VGNVFZdkRzbjVXTVFI?=
 =?utf-8?B?RXFhNFQxa1d6bFhjK2ZxUEpGVU1QNnhVRlVqVmZrems0UUFoTndKR2F6LzI3?=
 =?utf-8?B?RmEvTHR5NTFmWXBQcURuNm9qR1pCRVlmb1o3Kzdpa0xSVkFmdktiU3MrVHFF?=
 =?utf-8?B?dmJDVEhmd0VLTGFXelFNQnFvOW5nLzMzZDdJcU1wMWJ3TlhzbXl5Vkc5RG9B?=
 =?utf-8?B?ZnRaeEgvNUNVNVRzWGdrU285Y0JpWXZwVzlVRUFEQU5KU2dTREFFdWJlczRn?=
 =?utf-8?B?ZXF0ekZZQlhzSnRNS3U3K0g0VE9oM1VDaEpXZCtLdDRSU3lpN0RibEJlcEhK?=
 =?utf-8?B?WkZwdjNzRkh3Z2pKbG5QOS9HRmR2MUpNV0FvNXcyLytFT3RDQUxsMldhWmc2?=
 =?utf-8?Q?EJgkh3o/ifo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3BLUWpaWFlicHNkS2RFTE1JK1N1QktBeVdhTGE4aUZOVDhSdzBERERUb1Z4?=
 =?utf-8?B?QzNheUwwYm85eHY4SHBsQVI1NEhuWlRaSCtTNkQzOGZmV3l6bGRXUTlJYVl5?=
 =?utf-8?B?M3NPMkNYRlYyUHlFYkoxMjhiU1ZLSWlMVkdDaTFoN004NzBHUWRINkZLRzNj?=
 =?utf-8?B?L3JJdm9lMGxNbWM2cmFOZmhTbXhaUk9maHIzbkY5MUZZKy9QK1VJdVJUeGJN?=
 =?utf-8?B?cTJRNms5OUtUTkV0RVZJbDJENWUrMk1KQjVjZ0JYdE9jQlJOL01ZZit0SlFI?=
 =?utf-8?B?V3dtdlJmOUFMZ01rSUlDOUF2Y0F6MUdIanJLaFB6cEcvNk5EbGlCbW90WVQz?=
 =?utf-8?B?MW80MC9Md2lmQ3RsNGFNVCtFSHVXckpaRVZWbXNKS3JCQ25udGhHTmdibk9Q?=
 =?utf-8?B?UExmYzJsOFc1eHQ4OEdvQllSNE04TVh4RDRXZ1RtdFpJVjVjVWk5a2RYUS9B?=
 =?utf-8?B?S2krZ1UrL3hyM2ludllLem1PT1ZFRU1UblpJdXZRSHdmYk1MbHZBQ3RneUZ6?=
 =?utf-8?B?aTZwWmFPK2NKd0haNzVJM0VOcFI3aDMwVkJoMjlhZnZERGMrRU00bU5kOW1M?=
 =?utf-8?B?ekdkMWxlNnJlSHd1dUtIbExZTjlCanNLOG1SWHJhb3JJWkF0blR5SkQxdW1T?=
 =?utf-8?B?dEhTRG42dGpYQjRsRGxkUU9NNWh2cXl6U2hDMmRmWVdCakpSeGdXKzJXUkll?=
 =?utf-8?B?MS91TVNnYmV0STIxT2FlK01GTmNGdGZwNmEvT0c2TEIvMEhHN20zb3NUMTlB?=
 =?utf-8?B?akFab2g3U3RyOUdxckhncmk0N2gxR3hndU5qTnVvKzE1dFVCaTY5akpIWWo4?=
 =?utf-8?B?VWpveXpqMGV2aW5UNEdxRXpCVEpDcEx0Vnoza1BxVGo2RGVIM3hQVnlUeHhV?=
 =?utf-8?B?ZlZzRkR6WDcvQnVTWTJsRjRIcVRFbG1nNlY5akF5d1Ftb2l0WVFjUk9yR25h?=
 =?utf-8?B?OWxRYzBaYUQwcVAvU2tlZ3ZkS3UyOTBValJIeGU3U0lVNnJjaitlaGp3d2Fn?=
 =?utf-8?B?OVNQbVZacXgrbmtiM0lHRjYzM09zcEw0RXI1elROUW9Bd0YyOUk1VkthWG53?=
 =?utf-8?B?bFM5Zm4wVTc5ZDFXc1pwZTNKWjVRUXJTb3Zab2VRd2MxWDFZMU1BZjRaSG82?=
 =?utf-8?B?eHNQZlFZZmFDOFg2NzBIUElDQW1HcjNlN1hnZERzeGpQLzRDUXUrMndNUEVE?=
 =?utf-8?B?cUlzbCt5S3Y1TEMyK0VyWU8rV2swK1g4UnZmd0hPVEh5empacEdNQy9KTmJy?=
 =?utf-8?B?eVVYMEpHcWwwMkMzeVc2TFh5QXVTdm9WQWFIYk9Xa1FyOHV1Ni96OURwVXMw?=
 =?utf-8?B?c2d3OWMwZ2taSWl0L2FvRVVpUElGTmJPTXJjK0FFcE1SRXluU0xlVHAzWlU1?=
 =?utf-8?B?bFFldmp0NFY1dFVFVzJhWGpGRzlqcndQV2oxT3YyOGtvVlZoNHV1TFFRM09G?=
 =?utf-8?B?WFdrdmExUkhzTmNxL0pHMDlCTG1FUThTYXNPSnpkTllmQVc1dVRrQjQvZVAv?=
 =?utf-8?B?WXpYdXF2Mk8rbDdJT202VW5Ma3FkQ21qWlB4eEJSeWo4STNPamV5NzNGRnRa?=
 =?utf-8?B?NlA1WmtXRUwyekRzMmlQd3oybjduQVdJR0JvOFUrbnEwNXN4MFpUV3NZNWRo?=
 =?utf-8?B?M2R4YStWRXMxYjN0bXkzWGRpYitlcXNFUXpCRkJsMmpFVHVOL05TcmRoWTlj?=
 =?utf-8?B?VUV3UDRBRXdVenlKaGttWHBQSVh6a05vcUtWQWlNODBVZFY0R0plYXVRK01Z?=
 =?utf-8?B?Y24rNldSOXR0b2lpemZZMTllQ1pib1ltSllmbGIxSU43dFIwQ3k1L1M1V3hs?=
 =?utf-8?B?TVZzR1QvK2JkL0YwTXNlT3ZadTVXaURabFdMa1cwaWFQaUI1N09vL0ZpTVBJ?=
 =?utf-8?B?eTFtb0xoNmVndEt0SXRkYVFscndoT3dQR2dFcmN4dXdyaUYzejMrSWhPMThj?=
 =?utf-8?B?bmFNby9kSEsvR3llcEwzTHNQTEU3Nmt2RXNIQm5ycUxwbjFveU5nczRUS1dK?=
 =?utf-8?B?VzdxWHRQUDM4TEV2OU5Xc2xlSWJoRVY4bWNKY0Q2SjA1Q2p3RFdyOTVzU1Yv?=
 =?utf-8?B?OFdPVEJMeWdDQzd2MWphTjlUVCtkVkJ5UWphd3dxTGUzOVA4aFNJQ0ZoYzZ6?=
 =?utf-8?B?NHpDcGhYZVRoRDAyZzFGRU1LQmtyek44d01ZME1sdDE5VmdGcnh3UWV2ZW55?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4e39d71-3580-4957-f17e-08ddc5fad444
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 12:58:45.4034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /XCiIg0Jh35mzZ4nikzawRDnuglszDbM44dn9iPjlstADUzlq3jm89oPcCoH3uo16BTZ9j3mZQFPi8AMyT+RPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7472
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

Quoting Hogander, Jouni (2025-07-18 07:46:31-03:00)
>On Fri, 2025-07-18 at 09:05 +0300, Hogander, Jouni wrote:
>> On Thu, 2025-07-17 at 10:31 -0300, Gustavo Sousa wrote:
>> > Quoting Jouni H=C3=B6gander (2025-07-17 03:32:58-03:00)
>> > > We are seeing "dmesg-warn/abort - *ERROR* PHY * failed after 3
>> > > retries"
>> > > since we started configuring LFPS sending. According to Bspec
>> > > Configuring
>> > > LFPS sending is needed only when using AUXLess ALPM. This patch
>> > > avoids
>> > > these failures by configuring LFPS sending only when using
>> > > AUXLess
>> > > ALPM.
>> >=20
>> > Hm... But then with this patch we are missing writing zero to that
>> > bit
>> > when necessary, no?
>>=20
>> That shouldn't be necessary as 0 is the reset value.
>>=20
>> >=20
>> > Could the timeouts be happening because intel_cx0_rmw() is getting
>> > called without calling
>> > intel_cx0_phy_transaction_begin()/intel_cx0_phy_transaction_end()?
>>=20
>> I wasn't aware about these. I will try them.
>
>I tested this and it doesn't help:

Okay. Well, I still find it weird that this would time out for one case
and not time out for another... Do we have confirmation that this is
working fine for the AUX-Less ALPM case?

I wonder if we should rather do this step together with
intel_c10_pll_program(). Note that, for C10, there is also a required
step to set PHY_C10_VDR_CONTROL1[2] before accessing the msgbus.

>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>index ed8e640b96b0..e6ff7f07b2e3 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -3239,6 +3239,7 @@ void intel_lnl_mac_transmit_lfps(struct
>intel_encoder *encoder,
>                                 const struct intel_crtc_state
>*crtc_state)
> {
>        struct intel_display *display =3D to_intel_display(encoder);
>+       intel_wakeref_t wakeref;
>        u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
>        bool enable =3D
>intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
>                                                  crtc_state);
>@@ -3247,6 +3248,8 @@ void intel_lnl_mac_transmit_lfps(struct
>intel_encoder *encoder,
>        if (DISPLAY_VER(display) < 20)
>                return;
>=20
>+       wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>+
>        for (i =3D 0; i < 4; i++) {
>                int tx =3D i % 2 + 1;
>                u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 :
>INTEL_CX0_LANE1;
>@@ -3259,6 +3262,8 @@ void intel_lnl_mac_transmit_lfps(struct
>intel_encoder *encoder,
>                              enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
>                              MB_WRITE_COMMITTED);
>        }
>+
>+       intel_cx0_phy_transaction_end(encoder, wakeref);
> }
>
>Do you think I should still add this change as well?

If we are still going with this function instead of doing it in
intel_c10_pll_program(), then yes.

--
Gustavo Sousa

>
>>=20
>> BR,
>>=20
>> Jouni H=C3=B6gander
>>=20
>> >=20
>> > >=20
>> > > Fixes: 9dc619680de4 ("drm/i915/display: Add function to configure
>> > > LFPS sending")
>> > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > ---
>> > > drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 +++++------
>> > > 1 file changed, 5 insertions(+), 6 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > index ed8e640b96b0..9cfc3187aeab 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > @@ -3239,14 +3239,14 @@ void intel_lnl_mac_transmit_lfps(struct
>> > > intel_encoder *encoder,
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_crtc=
_state
>> > > *crtc_state)
>> > > {
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *dis=
play =3D
>> > > to_intel_display(encoder);
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 owned_lane_mask =3D
>> > > intel_cx0_get_owned_lane_mask(encoder);
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool enable =3D
>> > > intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 crtc_state);
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 owned_lane_mask;
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int i;
>> > >=20
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (DISPLAY_VER(display)=
 < 20)
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (DISPLAY_VER(display)=
 < 20 ||
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > > !intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
>> > > crtc_state))
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 return;
>> > >=20
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 owned_lane_mask =3D
>> > > intel_cx0_get_owned_lane_mask(encoder);
>> >=20
>> > This optimization could be on it's own patch.
>
>Ok, maybe I leave that out or add own patch.
>
>BR,
>
>Jouni H=C3=B6gander
>
>
>> >=20
>> > --
>> > Gustavo Sousa
>> >=20
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for (i =3D 0; i < 4; i++)=
 {
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 int tx =3D i % 2 + 1;
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 u8 lane_mask =3D i < 2 ? INTEL_CX0_LANE0 :
>> > > INTEL_CX0_LANE1;
>> > > @@ -3256,8 +3256,7 @@ void intel_lnl_mac_transmit_lfps(struct
>> > > intel_encoder *encoder,
>> > >=20
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 intel_cx0_rmw(encoder, lane_mask,
>> > > PHY_CMN1_CONTROL(tx, 0),
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CONTROL0_MAC_TRANSMIT_LFPS,
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enable ?
>> > > CONTROL0_MAC_TRANSMIT_LFPS
>> > > : 0,
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MB_WRITE_COMMITTED);
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 CONTROL0_MAC_TRANSMIT_LFPS,
>> > > MB_WRITE_COMMITTED);
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> > > }
>> > >=20
>> > > --=20
>> > > 2.43.0
>> > >=20
>>=20
>
