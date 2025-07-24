Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341A2B10529
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 11:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9F810E8D0;
	Thu, 24 Jul 2025 09:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JA1oMjMr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F8110E8D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 09:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753347768; x=1784883768;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=paMuR8uNc4jXQ8qrQBObCTlpdFwYay7q6pSngWt7Avk=;
 b=JA1oMjMrhaKDvhXAcgBgVa0cyTFlVRQVjYmEbzEa2Bbos6ZiIBVAC1Mc
 iw2oaeheN7rZ6Y0kojl14AqklLMiOZSCooxVqDXdEcaKYmZ6HcrMywFTp
 T03S4PEoYAYs3NujwBM5++PlZZZiwX4SmL75I7LJAWk1enuvSynQVBf7i
 9Au4yC4pSLxQG89c7SDlH28QCTdTOrZpKJYClAxtPCThQodyXatxmGLZp
 Vhs+52sMNTGBtT04UJQP9T/K9AdFfKZaZdHjZYMZrUWGbK0wDMhaXmZvq
 oMdUhCH7dzhE5CTwXta9KDdrrYcPGKpnQoV+j5lshO2rY/APxWnYhFdhi w==;
X-CSE-ConnectionGUID: bVenszURQyOcxKBeJwmizA==
X-CSE-MsgGUID: MCHB5E/2SpCeMZaksDWRNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="55354300"
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="55354300"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 02:02:46 -0700
X-CSE-ConnectionGUID: 2PkmBGI0Q9i90MqtLUsT0A==
X-CSE-MsgGUID: FnlNRc+LQ7ibaDPecpLG4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,336,1744095600"; d="scan'208";a="164169418"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 02:02:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 02:02:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 02:02:45 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.77)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 02:02:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y0xqg6svKBUcepvGwttDIjWJYdpks2d0teFN9yCvsDaKKewrF+YOXjlaLFcaw0bPPwh2UpekrMPf9bruTpq8GTkFzGDuRy9RGjRuZ6I3jykLWQqlet2qbk2WLrtSSgb+Wj1dqa5r5B+dvKkK2FhxaBJkYc1dP4LYC2c/m0zCHEntN8dt9Pa4nwogECvBOSFJTin0l0CBw18CWqx3LvmXJCMhVKfenTr2LAbJsJebBasWYlLnpm4rkGTwJrDE9+LcFsElTyiyGLicucjPYgAd8vb7/pAw4Uqnh2rVRrAsDkyhTBE43fBY5xQrno5pAnDSuKNhk7IQOgrGQR3BAWm+IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ealEKUCLe7RcNZxHsy3dT6/i1enbCu9aUmdu+FlLKrQ=;
 b=f4UB/0OJ3rkUddnRRIdI7r3cMJgL9SMeVzPteCoNehOjkhOJbR8rMy9MNhWY6st6aeOReAevUFmsLT4lYrt+Uaggt/+PUAJVu2t0OxXAHz4IuyKgD4XMtShe1A38FLSb7ADKBPS7D+K29JSA0AkIXC8P3R7k2mkUFd2peXJuRP0tkRlksQ/GBEuthrxHVS1r0convYyjwk3nRi7e6PoXa0tOk+54iUBvoqUKbmtdv0fE0W8Dfn52tdObHS8CQ7NpFOCZdtQsGv5xM8hxQobynmJqQ6JRMO/3pqz93vdIG2Zgiv153s75oCRaTNZr6eAJieieEUFMDx6zK49UflvywA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA0PR11MB4766.namprd11.prod.outlook.com (2603:10b6:806:92::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Thu, 24 Jul
 2025 09:02:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 09:02:42 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Ruben Wauters <rubenru09@aol.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug builds
Date: Thu, 24 Jul 2025 12:02:37 +0300
Message-ID: <20250724090237.92040-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB8PR06CA0046.eurprd06.prod.outlook.com
 (2603:10a6:10:120::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA0PR11MB4766:EE_
X-MS-Office365-Filtering-Correlation-Id: 38bffa90-174f-4fdc-1511-08ddca90d954
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bEJacncxMEdtcnNEM0dYT28wRkVvdEhCcXZLejBvZHRkaGczRkJ0WmR3TmZH?=
 =?utf-8?B?VWxxOU1WM3R2aGIvVEpCUWRGeDVGK2ZpWkFQamVWNWNrN1hxN2RTUURGT3FE?=
 =?utf-8?B?QjdpU2dmbE1pcms3b2R0MXdKcEZpMVBPb0o3VmRjME1GcVJJSlFKVi8wa2w3?=
 =?utf-8?B?WVZFTFByVXhScmJYVDNGTHk4eHJyTlptZ1FJanpscXBOZEZxV1hLK3VnaTVz?=
 =?utf-8?B?ZEVKb3E3WVo1b29SeWxZdnBmdWFuQVhSVEY0SloyMStja2hqbEJ2VmRMUUNH?=
 =?utf-8?B?dmJVWFdKMGhheTlwU0tJUlpTcUNCWjhTM0hvZHZnS2hIcU9TUTAvSWNOZFVl?=
 =?utf-8?B?bkhWcllSWXhzeHlmSVRsWUkzZmxhbkU1bXc4QXpyTHpNeEFvZzE1ZUEwTlkw?=
 =?utf-8?B?ZFB0S0xHREdzL29BMFNYd0hkaU9RSTRWdGtaMExwUXNOOEFnaWNjS3FZNTFV?=
 =?utf-8?B?cTRvVmgzdVl3RnhkZEFSc3A4SFhHQUc3clRTeGVTUmMxbDlrSFFmc3dIMlJ2?=
 =?utf-8?B?TE1YdHQxTENMZjhPRTlrZmIyRVZJaFY0b21tTU5tdWNRQ1JPamxTckRtb1hI?=
 =?utf-8?B?emlyZTZiVElXak80YUZaNDdwUG50eVlXYzBscHdlZlBBa3dMeURJZDN5emRD?=
 =?utf-8?B?czhNbkVKcDJ1eDVTVmw4dEppcS9jUXFSazZrT0RFbzI4WSthSzdzbmo0Y2NE?=
 =?utf-8?B?bnJDZVo4YWpjZUl6bXFPRTMyTmZxejE0V0M1cGVqcWhFYUtxZjJPTEJaMU1M?=
 =?utf-8?B?VXhWTEJ1NG5HSlphc3JqdzBKUUdrODh2aHZ4bjByclJndFVScFZ5c0g5UWZ4?=
 =?utf-8?B?aGFjNjNrY0IwajN2VytVQkJabU9Ubk5CVXhDYU54NVM1OXBCcktCcTIwakYr?=
 =?utf-8?B?c0lvZUs1YklEdWhLanFZaDJrVDNtWmZVUGVueVlBQUZEZjhpcXQ4aWZVaHRh?=
 =?utf-8?B?eVpXcFo4dmlDNDlCMk8yUWdqMXJiK1kwUXg3Y3U5ZzUwRmVRU1h4ZjdDVCt1?=
 =?utf-8?B?OGk5Qk9VVDZPNVFJczFpamVHZ1QvQWVKdk9uVFUzY2lvUjlOVUIwR2pYMDRo?=
 =?utf-8?B?RU5JcFJULzdlT29ra2E3cVg0U05hMFZ4RGw4cHkyK21HSnEyQVlFVEVHOENU?=
 =?utf-8?B?WHRGSEVVamgvSmVHSkRpcEkvZE90OFBLS21nSFNpU3NOM2Z6SlErMEpIN25t?=
 =?utf-8?B?eUoxcHNSbjE5cC9HZ0g3RDF4MmdzOCtwam82RWkrNkNpeCtCSTJVZ25ybWdC?=
 =?utf-8?B?WDArUGEyMjRHNTFXd1JSUEdCbzZwZ2JpVElGc0x4MS9xQUlIcElJaVJJZTY1?=
 =?utf-8?B?aUFreXVTdzROTi83SWduRXpmeko5d09RWi9zMFg0TFJRMjVqcUkyR2hPOTJm?=
 =?utf-8?B?K2h1ZjNTR2d4TGEyaUF4L2VwVHdNU0xVaEhGUGhQdFpCSVhFZ01QREQ2Rk5t?=
 =?utf-8?B?VmhBL2RGRnJXWnZReDFlVVpNYlRFUnVFdGg0cVpCdEtxSXA5MTdSaFZDYWI5?=
 =?utf-8?B?bzBSRHltdmU3ZldXS2N4SU9reTE5eGRDWU5iamJ0aFBqMWQyVEFZUkg4eXdI?=
 =?utf-8?B?YnZpV211YWpxYlZqem80L2NSekp2MThKNS9rd0RhaGl5RlpoajBnV0puUjVO?=
 =?utf-8?B?c3p2TStXcFQ1eGxpejNtUy81V0RiTzN6N2M0YW5FRVR1VURrTE8yWEoyRVZn?=
 =?utf-8?B?VGdDbFJYMXFFZExuM00zOVhiRjBXR3Iyb2E2RmdNUFF3S2tlRU13aUpvTW1V?=
 =?utf-8?B?cy9EbE13Y3ZONDIxRU1kcW8zc2hPaGlUaEU2MnVoSWFlbitiTVZZNlVtcVBo?=
 =?utf-8?B?U1hZSEUzZUJCMzlyUkQvbk5UZmhQYzJtWmVMZVFock5HSnI0VDV4RXFseUlS?=
 =?utf-8?B?UmdwenhXRXlqcTFUNy8xV1A5emFwZlJISjBsRDQ5S3JQQW9JWmprcXlKNVdj?=
 =?utf-8?Q?Iv4eR1/8K2Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eThXWjRnSUllRWd5NjhjZXhqZnhrNXFqdWh0TDJLWmdKZ0hBdTFTcUxUNnhm?=
 =?utf-8?B?L2FXTDhFdGFLYmp5ZHFmS2NCcDBTSTJmYXNtY2Q2L1lWV0hOYVFHbHJPSGN6?=
 =?utf-8?B?QnBDa3VTU0NGUG0rVXBnY0tXYXUxbXhkYzF1K3Fob0xGNFRTRVp0dUdSMC9k?=
 =?utf-8?B?S0tDZTBLMVhUUmRDbmdCcFV1VkF3WGVLbXcwMUJzM1RJaWRKMXI1R2JtL1Zs?=
 =?utf-8?B?ejJHNWt3bG8xYVZ4Z01ROGRRbTFiZU9KSy9sMDNtSGRQM0tDbDhJTnM3M0NR?=
 =?utf-8?B?Z3FBalpOV3g4bExzbGp2MmdtdC96dCtUTVlPbElTc2RTeFE4bE0weGFWNHE3?=
 =?utf-8?B?RUkwVExvdlRDckxPMHNzWmU4cC90Mk0xQVVmZHFuMUZMODlFL0wraXQ5OG40?=
 =?utf-8?B?SXhsaU85b2drSUxmRFdIc0xENW83VXZaUkI2MHVZbXVlRU41OE5wRkY2VVFO?=
 =?utf-8?B?ZFZUZCtEK2hYMWtxbGo3VU5XTjFld08rc2NjM2UxYUxvOCtyVCt5S1RJVzhU?=
 =?utf-8?B?ZjJENW9QbDQvN0Y1VzNpa0FTcklRK0xkb0F0a0RzODhCcnlpUzJ6ZUJtYmdz?=
 =?utf-8?B?Q0sveU1ZdHhQSkVOakppTHp5eDVGTnhtOHlJRDlWYWZMOE5xS1VKaWZPai9I?=
 =?utf-8?B?Uk1tMWtjbFJ2d3FZaStxZ2Zxb2pyS2tRTU9xRWFvNVBXVmYvMjNaZ1l4TjNM?=
 =?utf-8?B?TFdxREk2aktrQzhvNVVadlNxakxVZkhZRlc3VDFrMllFSVd3NW5LQ2U2WXhL?=
 =?utf-8?B?WEU2RWxhdnEzNkU4YXhtM3IwYkJCVEdjblB5aVpIQjh2RUVVZ1RQekJmMCtw?=
 =?utf-8?B?WjJBcHlLZ1JqVEhaNWRKN1ptWUx4N2NnTU50RkFpblVOellqRGxoWHUwY1l1?=
 =?utf-8?B?ZmdkcjEzaUoyelQva2xGUE82RDZXc0hVMkdZZFU0ZFJhSzFxNlJROXpXTDJw?=
 =?utf-8?B?Nm13R1lsbmd6bDdMdGdnR3p1RlVVOXkvRDNFcGJ2czNOQmFyQ0NlUHFzcGpY?=
 =?utf-8?B?SGhYT3crR1MzTHVrcnk2MUcxY21sOVlhb1piclQ5STZIZTdGd29JY1hxeWhL?=
 =?utf-8?B?NEY4TkRUYm00b1I5bXRheEIrT2FhS2pOSktPZlZ3T1ppTEpNK2pFQlEvS1Ro?=
 =?utf-8?B?eEh3Y1h0ZVhybTlnT3dxem5ZQkF6SVVWdTFrZjNMM2lYUnJRUmtpbDkvaHhD?=
 =?utf-8?B?ZENIWmUvNU04S29UZVlqUkthL2NNN2M3UTJwOUlFcFdMWnBzNko4WkhtdWhQ?=
 =?utf-8?B?SnVQWXROQ1BXV1hpN2lCWG5RWlQ3OFY2L1Mzc3Q1d3l5YUJEMmtpbW9SZzlC?=
 =?utf-8?B?U1RPMUVrUThNYmg5eG5wd0pxbll6bEw2RHFTREt4R0JMNEF5bHpUM1MrbWoy?=
 =?utf-8?B?TWVBOUgxamgvaU00cnVROVlBbVp1ZEFsZDZmMVQzSiszU0s0bVB2S1loeXhP?=
 =?utf-8?B?NHhobVF1QlBiVENxNkhPeStUK2JiWTV3b3hGNlMwT0huL1VaQVlnOWdvR2cy?=
 =?utf-8?B?ZURaVjZ1aEZ5YzE2MVNINHFJWU0vOE1BYUJ5UnUrSWVQbGNNUkszbG9KTmly?=
 =?utf-8?B?VVM5ZVZpTTFKV0tJc0lNOXVVVW9iVHN2bkcxODJVcEc3OWRvOUdodS91R2kv?=
 =?utf-8?B?VEdlU0gzZlZLVENNSVJGOFR6MlpTcS85dkJJM0RmNHl0VVNkcFVIYlRRWndG?=
 =?utf-8?B?T2gvODJvNjZROWFqYW5GdVNxdU4zaEFNMGVJMmtKRnBYNXZhUXdYQjJHemUz?=
 =?utf-8?B?cEhDVVdTcS9Rd0J1SFVmbHRaUjFOSG5VQmFLRzVKZFF3Vlp5Wm5GMTZOb3oz?=
 =?utf-8?B?RTVwZVRrTkJPQzZjTGZ3SXI5SmJJMmJvb1lLZDJNbktraklic203WllTNkd2?=
 =?utf-8?B?ZCtWRFd2dXJ0UEZ5QXY1SjExckNwQk40MzFyQmhkVSt4eGpMd25FK3NneVBj?=
 =?utf-8?B?Q240cWJQbWkxcXZJSitYWFNGcjFZbXB6clZrM1JMMUJ4N1pVUVM5VVN5UVcy?=
 =?utf-8?B?UUxTWU4yUU5vdkNiQW41YUJBREMvbFo1K2h1ejZGNjBiOVVKNHFuQjIwbDFh?=
 =?utf-8?B?V0ZjTmxMMUpTYXltSXJhRlFJQlBPdXo5UlhMdERhbkEzM1ptenJUdVFJb2gw?=
 =?utf-8?B?TUFQYUpsSXMyWmdxNkNBRHVUYitoRzMrSi9jeEhCYTdjUXgxTGhJYVhLcHVD?=
 =?utf-8?Q?uJpkfDmMGXofKmlp3F/A1+WoIepURhSfSqUTxgiuxdnI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38bffa90-174f-4fdc-1511-08ddca90d954
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 09:02:42.8191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pAILE7SNwprGZ4SE+LoRn4CRrwYb3x/LyGTeGILzRCKlYVABsR5Sd9uNA0ZdEPve6Ictk8Q+bFPJnVZuG91B4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
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

Selecting an option which depends on other options only works if the
dependencies are guaranteed to be selected (as these dependencies will
not be automatically selected). CONFIG_DRM_KUNIT_TEST depends on DRM,
MMU and KUNIT the first two of which are guaranteed to be selected for
i915, but the last one is not. Hence, selecting CONFIG_DRM_KUNIT_TEST in
i915 debug builds may result in CONFIG_DRM_KUNIT_TEST being selected
without the CONFIG_KUNIT dependency being selected. This causes at least
the following compile error:

drivers/gpu/drm/tests/drm_bridge_test.c: In function ‘drm_test_bridge_alloc_init’:
drivers/gpu/drm/tests/drm_bridge_test.c:449:21: error: implicit declaration of function ‘kunit_device_register’; did you mean ‘root_device_register’? [-Werror=implicit-function-declaration]
  449 |         priv->dev = kunit_device_register(test, "drm-bridge-dev");

Fix the above by selecting CONFIG_DRM_KUNIT_TEST only if CONFIG_KUNIT is
also selected.

Fixes: 17133255a322 ("drm/i915: replace DRM_DEBUG_SELFTEST with DRM_KUNIT_TEST")
Cc: Ruben Wauters <rubenru09@aol.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index b15b1cecb3aad..3562a02ef7adc 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -50,7 +50,7 @@ config DRM_I915_DEBUG
 	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop checks)
 	select DRM_DEBUG_MM if DRM=y
 	select DRM_EXPORT_FOR_TESTS if m
-	select DRM_KUNIT_TEST
+	select DRM_KUNIT_TEST if KUNIT
 	select DMABUF_SELFTESTS
 	select SW_SYNC # signaling validation framework (igt/syncobj*)
 	select DRM_I915_WERROR
-- 
2.49.1

