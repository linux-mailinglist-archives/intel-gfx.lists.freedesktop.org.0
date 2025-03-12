Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AA3A5E00D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 16:17:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0473910E169;
	Wed, 12 Mar 2025 15:17:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kG7Bltru";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6468410E169;
 Wed, 12 Mar 2025 15:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741792674; x=1773328674;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=2uZdHmDoM9NCLGI24A0vwLAXsfl1P744G9AbFPO4HKM=;
 b=kG7Bltru7saPjndMT5H3wsBaQD7A7ehIIdbBSpB0UeYJ+VHJpZaHALC6
 pjgO0z7e+gdof9vt2UfRXrXvNVUB7N9he7Iet+TdFtSEfEYAYIpNLma4u
 N2A/heCNzPSdYR+R2Lg8miZiDSfW+EO5AFnUCBVuiaiEwqT2UK3guDp12
 5n9eACKUuSFZ4IFXKvCiEBJneVeD5f60nd28KhhZSvkV0Hj2IUkRSL9f1
 slDnO+Wm8NrxD3s8dm5Q0tDyC/bt+G+5Rw++CCMfnE7OM3gpqCCBkm3KL
 +XjlRWNiEvJuQHyOJcEP26IrFKjO7klCPyWlytf/r9H6clqHBdDC4Nsem g==;
X-CSE-ConnectionGUID: Z5GDou+uRXWO6g0tkX+uuw==
X-CSE-MsgGUID: Hhh369vERAyLQR6N3xRx+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="43008293"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="43008293"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 08:17:43 -0700
X-CSE-ConnectionGUID: vxIJj9kiR6aS0yL3nnTcaQ==
X-CSE-MsgGUID: bqxOrDBURGSChgekLIov8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="121574184"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 08:17:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 08:17:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 08:17:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 08:17:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IudGXc3YlT4MfaFHopPLYOmRISeZfyQFhnX/X3XMh28EOOhSu3sf/fhKaTwmGCNIl8ZkIhrGIwYsWHpAC37oDwCda+t1leXf+OsCCPITPKG5tMCi91BLKjlJvTLCSmGEheWPwF6Wk7W3c5ym0SdSfP9UHSGc7NIFmjPpB2He0X0nz3a5G7Cq3wTjwDqEV0Z7e/9v/jU1BtnHD8CgtfIZmu1tzvADdK7XqdebQ/ue6Sdc1zhPODi7f4F+n30p1F5i7/nuyrvm2teuFz0ZADTqXz2Uz7ypL1FRpRkjusLhESvRti0ZbIwykPI0yCM8SSeWmXD3mRaKlqoM6pZeqoYNVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ldSwgfWLXOdjuF20ASeAU0xbcpQprI3CbKURwO6II1M=;
 b=sjuHC+ShLQylzMJ63tKFcpvlRW/krTHhiiouTs064GxyRBnQW04uYa47dH/9Jq49+EUs8UZ5vuyedmMuB8oGya9IBtqdovZ0r5D9WU0Z97bMRu1syZ+HEyFWSn23dmF15qfdMv2K3EXlnMgD9Z5CQFgtHNWIJN3ZEbBrkX7YhDcElWPAgfDBTot0zKf1Hmh0nhNNRvlxiT97O9fOtK1rjOJUxc5Hl/TmSGHwCXDwe3fYdQhzZrVpXrJY88v9N3d7wQfq5ZTEsBxvHmm34uMrXwyDZoURGFzwAqOloREQ5YY+8JGg/JTZ+BdZRKhPIxVdlNL4bjWWmrRnQCPv0wJ++A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by SN7PR11MB6776.namprd11.prod.outlook.com (2603:10b6:806:263::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 15:17:38 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 15:17:38 +0000
Date: Wed, 12 Mar 2025 16:17:28 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <i915-ci-infra@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFU?= =?utf-8?Q?=3A?= failure for
 i915/gt/selftests: Disable lrc_timestamp test
Message-ID: <jumvhkgyw55iqbs6p5tsnzpkgtwfci6haipd7c77npex6wqu5f@hrhvyq5qgqbk>
References: <uxxb22n667zb3aic6zs4mr2krv5zavav5v2zjgqnhnabgxgzif@4icszicjakex>
 <174169100338.18021.9170847037012754469@18a75f3d1eae>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <174169100338.18021.9170847037012754469@18a75f3d1eae>
X-ClientProxiedBy: VI1PR04CA0079.eurprd04.prod.outlook.com
 (2603:10a6:803:64::14) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|SN7PR11MB6776:EE_
X-MS-Office365-Filtering-Correlation-Id: 60f05536-be58-4aeb-8141-08dd6179062b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aWN2MzFTUm8wSFlRV012U0lCTjRoNXFHWlJOcmd4VENrcDQvUjhwY1RYQWp4?=
 =?utf-8?B?UFVxTGZncnEyWU1JRGpzZXduQTI4Y1VHMFM5OXc1Z0U4d244NzVLdDBleEl0?=
 =?utf-8?B?amZWdWNhRDRoTmxhcEpmbHlpNGl4dlhac21rc2kvZ1l3T3k1NjhwTTRjM0JF?=
 =?utf-8?B?TmFJdFNhTTNPSmNCa2JRbm5lYjhBTklzS08vd1BtdmUrRXRSRkVyaGQ5Z09Q?=
 =?utf-8?B?Q3VCcXUrTFJKOTBBSU9yV3p5ZFRiTXEwRHlEU0pSeG81Tm5tWklZbGxYQ3hX?=
 =?utf-8?B?ZG5OOGJFajNMOFVHY2FCUHl4aU9Ja1ZleEY5WVphSC92VDBZbCtIczZlYjJU?=
 =?utf-8?B?c3pCdWNtakpLUTJlWDVScDJyQVp6VG5Bc2M1bmlLblIyMWFheCtvSmZzU2pG?=
 =?utf-8?B?bngvWFJFMFkxQTZ1YWFHSWhzWnpUODlqMndPbXRKM01nUFFNS05aSCtybFV6?=
 =?utf-8?B?allKeTUwMEF0MTQxbXYrcTBiNWx1Mjk1blN0Wkx0QTBBeE85WG1sbmhkYi8y?=
 =?utf-8?B?dERWQUV2NkNGQUtpZ1E0RFF4cUpCVTZmMkg3akp2cm1jL3ZPREplWlFWR0xO?=
 =?utf-8?B?ZkpldXZ5akh4VExGZ29uOW96aDFpL2tSdSs3SXpXQ2ZMeU5VUHRDdGRYRFEy?=
 =?utf-8?B?MmF2QnFwM2tnMlRubUdWUDZtUlloUFY0eEVUQnhndzVHRndSVzlyVlFiVjZp?=
 =?utf-8?B?R0poNGlpSTZVNDQ4MDFwVjRQd3REY3hZV0xiMUg4UXNpS0hUemN2ZEtFKzhE?=
 =?utf-8?B?bkxwODFsOEk5SzUrenZVS01aYUFhZjFycFRvdjNrTmZXazFaUXFUbHI5U2pw?=
 =?utf-8?B?dkRuUDY2V0FTbFIzRHhMZWpzNmpRck5hRXZoTDN4TVU2dEEwcEo1UXNhNzVq?=
 =?utf-8?B?OURQYnRpV2VkZ2RUTWxKcXVFT1hhek9vYmNPVUk1bVQzV0RmNXhneUsvTHI4?=
 =?utf-8?B?bkFqRW8zMUJBa3lZWEVtMlZ1ZlFoa1NoNS91RlRVc216b0FyUW5MMk1tajll?=
 =?utf-8?B?Vi9IaGV6UW9NWWZFMDloUHRORERMdjZtY280UytvdkZvcXJFbVhuamRDMGlZ?=
 =?utf-8?B?Y1dIcmNRYnArc0xGQkFBMGtURG54QW5HbjdjcVRxdUpIelVhM3dUT1BNZG01?=
 =?utf-8?B?bFRXaDlnbnVVeG01RGVnb1JOVVozRnNoV2Y1TUJyTDBNL3o5K3FyWnBQV1Fu?=
 =?utf-8?B?WWJoUFRLa3pUV2l5WFlPRUxvRWpEcXJQZDJJdEd4Wm1nMTlobG1wWUtQb0hy?=
 =?utf-8?B?SXJZTlUyTFl0RnYyd0tmRnU4ck1WYUVsdlk4MGl4Q0x2Mm10UXJSYUxLbmlp?=
 =?utf-8?B?SlpveVNHWGZqZkE5ajg2MFJMdnZhWkt0TFlLUlE5Y05zVk5VVWpyNFJuaEJC?=
 =?utf-8?B?dmIxYzV5OW9jUHB5N2Y0Qk96TkZiSHRHZ1NsZEcxTEZJUW5icWJHWjlXWHFZ?=
 =?utf-8?B?di8wRjg0Zi9iQ2M4ZXJJQ3BxTUF6YUwwV3ZpeXFXWGVvZ0VmOERKZnNyRnFT?=
 =?utf-8?B?aGV2L0MyODVrdTdnODRmd2xWeWkvTUp4TnczMldvWnNNSXZqUGpueUdmcjdR?=
 =?utf-8?B?QWlnNkF0NGRndGk5V3VWTEkxOUd4Qld2TlZPNFJGSGJoK3NPdDZaZGZVY0Vy?=
 =?utf-8?B?akNkRUdhQ1BPL2tMdSs4eFVPZTVkSjZJY2ZqZ2FQWXFjcHJURFRmNEV5R2Nt?=
 =?utf-8?B?VXMxS3FFWjV6M2IyMUxNbEpzNGgrUFp5RjNlbUxtQ1NObTg0L3RHMlJBbmh0?=
 =?utf-8?B?SkkzTTk5REpaZWg2c25zc0hVRnBPY2dHcHhDQXdXVks1N3FzcmJxMUlKWUs3?=
 =?utf-8?B?QzdsR1ErZ1hoOVVsNzEzUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3p4cEpIdWRsOExaSGpOeHNHNVVRTFoxdnBqYlZLdGtPYTdWeXNtMEtzekF2?=
 =?utf-8?B?RTFOenFrVDRmY1NjZGVyNGx5OVRBVjN6Q2pQYkFQMHpvcFdSeUhzbXNveTZN?=
 =?utf-8?B?MTJwWTFxZjJuM1RlQnBwdzhsaUJwams2TDlmM2xNRlRWeUQxaGg2em8zblhl?=
 =?utf-8?B?djlGWUY1MTk4bVc2QjJxWDJyQ1orVkNWVjNhV0owVW1FUitCNS9WUStydE85?=
 =?utf-8?B?eVBubzlxWFhJYjJuT1Z6aU5nUG5ZamRuQnUwRHVlZXpuM3Zmc2Z3UTBFNEhW?=
 =?utf-8?B?T21LWUJya2E0d0k2eGxMQjBGU2cvdTZRdWUxLzY2dVJzT0ZWazUvdkFvMHZF?=
 =?utf-8?B?MmwvWXE0RGZUbjJyeGNHNUNDaGFtU2EyOHM2a1JBL2dQWTRnYmpiUXRFV1k5?=
 =?utf-8?B?dnVqbjdqcnk1dmMwRVhBZFRrSEdGNmtWSHZqTGpORzBTRzZGbURRVEdOdEFv?=
 =?utf-8?B?WUxGUGZQZVNsYktkeWlBN3RXNTlXSTJPZHNQMExOQVhMWCtnUHVnNWlJejd0?=
 =?utf-8?B?MXlqMEViYUtZUVRhWDIvZy8wbjFaUWpVTVIyRlBRZm12UmR6d3d6NzZXNnhW?=
 =?utf-8?B?Y2M1cGxXWVlqZThGYUxqMWx1VkpRN2lwUjhyTlkxWU1FQlVUcm9ZZk9YQXVM?=
 =?utf-8?B?azdQTzdMTW0vOTB0dUZoT1BVbkUrMjhkcHRDMjdqaDMzajRlUEhlYWxvclI4?=
 =?utf-8?B?M2R3VUJxWDlIWDhEdW1xMDdhZUo1N2VJQ0IxY0Fzb2dLQ1ppZUk4ckpEY0Jm?=
 =?utf-8?B?R24yZ0JoS2pkQk13RTdJUitDNnlWZ3VKR1BtS0VRVWF1NnArWGltOU9lUmJX?=
 =?utf-8?B?NG9WK3Nya3p4eUxsU3BtR1oweEc3L2FHM3BQTnE0THNXSVVhK2h2WThTWEli?=
 =?utf-8?B?eTVMdlJnZWFrVkVrdnl6bXR5UTV6a3Z4MFJvbmhQK04zR1E2U1hEY1hJZFVR?=
 =?utf-8?B?OUJYL3JlbkxrOW5McSszNmk2VG1UQkVrSzNHUS9QamhwRDRNR1JkS3Y2Ti8w?=
 =?utf-8?B?d0JvQ3BIeWc3bVJrQys2UVlMVTZVZjVQekxXakdtNUo3WmlVS2VxQjlrVHd0?=
 =?utf-8?B?RnQySWhybUhsRmFYRHJkZjlFWnlrc2hWK21GKytyYjJDQlJvRnB1eE5jTTVl?=
 =?utf-8?B?aUdGZHl4WFRoT204aWFmcXdXYm1HQWJjeEFCWmQ1bHFNVlNwQi9qMCtJaGxa?=
 =?utf-8?B?SU0wZ2lmeDdRQmRoVlhoM2djOG13VjdkRm43d05zenRRWm9tbzAwYWFtaDN2?=
 =?utf-8?B?dDdqZ0ZycXk4eXVkUndOSGwyTkNxc0JLeHJnMi9sak01dG5qMlJiVHZ3RTJ3?=
 =?utf-8?B?aVY2MGFLUGgvWFZGYnVud21jQk85VjBNMXlrd21aMjhnZWNhUUltWEw1cTVy?=
 =?utf-8?B?elN6a0RVNStJU01RQWhaR3laZkRTaFhEZkVicTZiWGNzY0hQdElFSkdqSzJS?=
 =?utf-8?B?TXdBV0dGUlBuSTVQQTdNVWpPOUhGbW83M0N3R0ExYWEvekxuZVlvR1BGMGNF?=
 =?utf-8?B?U2h2S0pSY1F6bGo0TTI3MjJ2RFVKRDI2S1pSeUlVSTVsOTNTZzFMd1hHdkJS?=
 =?utf-8?B?eDdHL3g5Z2g3NUhrQXJMNHZyNlhaNk9XYkZLaGZCb2hWSW5XYzhHdGc2bFdr?=
 =?utf-8?B?ajdOZTBqN0Rsa09IWEpkSzJQQ0hvR2JQNGhXSEtRMW80eHcyVGRERFpEK1dL?=
 =?utf-8?B?UjY0UU9Lc1A4Z3BsanBISWF1cWNYUy9qM0U2a2pXblVuZUNuclBBZ2JpSGQz?=
 =?utf-8?B?UmdJMkxzUEVJTGc2bmxjUTRRdm5IYWlvUHVaN205aFlhbS9YTzVtd2hENkND?=
 =?utf-8?B?RTIxa1V1VmJxZDVlY2huNStrRFZ1Y1diMUFmakNRZXB0UDJSOWE4OGhiZyti?=
 =?utf-8?B?VzBqNmNKKy9Bd2NFMnFhb2xzdnhHUzRyZjZQS0Z2VDlNN3FFMWZoaEMxRDBK?=
 =?utf-8?B?NGV4b0VkNjF4T2g1d1BKdkVDdXFaVHNaLzhZbk1nKzJCcUIvSU9QMWpxbFFq?=
 =?utf-8?B?YVhHeWZINGdsemMxK3ppem1qRUMrSEgzTEpYSVhKaThlMjhCVVpWRVFKRE02?=
 =?utf-8?B?endXUmNLN01ER2p2UGI1YmN5VThiZ1BoYzhyY0dybktuWmJvTW5sK3BJWUFz?=
 =?utf-8?B?c2dJTzVMaDh0UE14Ukx3T3VLdHh6TGlIWHczSW1qMzcwbmhSOUIzZzdtZVJL?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60f05536-be58-4aeb-8141-08dd6179062b
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 15:17:38.0181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V4D+44y9b0VyFn6wo2CFUJ8N4ikmMdDgTGO7q13RwJm+FGxN1hOO3eaVxxi/RXADkRxlRekvOWF68O8e1q8KKDFN9bRS0nzT7dUD1VMEPoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6776
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

On 2025-03-11 at 11:03:23 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915/gt/selftests: Disable lrc_timestamp test
> URL   : https://patchwork.freedesktop.org/series/146125/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16262 -> Patchwork_146125v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_146125v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_146125v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146125v1/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adls-6:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16262/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146125v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16262 -> Patchwork_146125v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16262: 777e1850811f9864aa8b55940634d3da19712bf7 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8270: 49751c5c11723262ec66e564c76503f74a9fa831 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_146125v1: 777e1850811f9864aa8b55940634d3da19712bf7 @ git://anongit.freedesktop.org/gfx-ci/linux
> 

Hi IGT ci infra

The above regression is unrelated, the patch only focuses on i915_lrc selftest.
Could you please update filters and re-report?

Thanks,
Mikolaj

