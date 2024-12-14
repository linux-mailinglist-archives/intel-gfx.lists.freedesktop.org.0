Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF6B9F1B46
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2024 01:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B02E10E43B;
	Sat, 14 Dec 2024 00:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRMu1+nz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ED9F10E43B
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Dec 2024 00:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734135462; x=1765671462;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=Gf7hrdqsgzeZjPXtGLDLUM5oVJTJds+OIqFKuRhlhF4=;
 b=cRMu1+nzyFwL3ZIGg5u2b/VFW9+zi9U6/nvRnEFc22K/bC7UBvU5xUba
 sowt4IMI13MUXLltqhulrHNutl6l1xd5MklqolzY2UbArns6uuoC5JMOz
 RAQRlhYEbf7r0FIMAX1Ruxz9afVT7DxJQ1YncqboyMQOIX/HnAdxt2HfI
 sPziVpxr1hFOfK47ES2rXFb+ihFGRsfJnUYlNTuJcCJErqLLZ4E0C91nE
 004aX3Kup6qbauIvNKF7Fj8cQD/gTT5VndWHzr8SRFfAs22g8P+LBL5hQ
 fP/otb6EvexQhT9pMpXHSJBOKpeELa4bXeJJSnvl8T3xse+0uMkYJjvRc Q==;
X-CSE-ConnectionGUID: PJ5r5RNhQlaXqgUdT5J6Ew==
X-CSE-MsgGUID: rz9OEWeYS2COrlXBRYsjhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34511937"
X-IronPort-AV: E=Sophos;i="6.12,232,1728975600"; d="scan'208";a="34511937"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 16:17:34 -0800
X-CSE-ConnectionGUID: nmqxYa+rRyGJBLO8nQMTNg==
X-CSE-MsgGUID: 0lkc507TQZypPc3C7dGqzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="101759943"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 16:16:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 16:16:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 16:16:21 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 16:16:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M+YFMo+OcTxO+sXNIUYIwiKlxV2p8zDri7DylwCUCPTXlWjzMK4zo6GPY0OJA/lerUQz06xQzK38HLrL115SAU4pUcGBx/IBQBjnOW9/l0z5tskQZDx+lR6mFzjjgNUEOSfJjGFFj80jwfIbOV3FqBml13qbL3Ah2J/BelnhFHBPRj4HngEt8GMRM8UmktYzePMWqWclP3P5XDl9KYMk9Zz4OeCnX9RjhRSh9Teg4A6iDg8piuxf+x0CERBEaUxXd+DLzPjOixHs90K56raP2b1WMf4QYPN+2tEzC/zEg02ZePFRAfOixOxhV1jm9jOAcraqA/LNlb9Sd0pvOyCT0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kboVJn+rFqS70MhOFUXPmZ3FnqsM/THXI2Y2LMaYHLs=;
 b=COdbk4eJBL0dFqN+1HNF7+E0svD+Obbv0//Ho2fxLkW5F1OGSlcn0I3zPeroUAZpGPD06htI+GYBjPAr0sA5fEIGIYq1UgeAjwTgCy8PYtC68xxkMO6qJf16peWlAKpilDYjOD9yc4BW3MGWXp0cVeQhfzcYthGDzI2+br3YsHl4Qg1bTVCD+TEoXVoONCe30mAIrLYhwsaEHYeKhBiL835pdLXpBCHoZLVLiYzF1oDGTddlKSghT+JABT2icHH+zjCTRvV68N1jIol1saV7U2KHgMHD8uvXebY/upMyAJD5KoFPeyhbJrLwe4Kd5L8n2yUbKr4o8zKBG7BdJ3Ec4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by IA1PR11MB6170.namprd11.prod.outlook.com (2603:10b6:208:3ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.18; Sat, 14 Dec
 2024 00:16:18 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8251.015; Sat, 14 Dec 2024
 00:16:18 +0000
Date: Fri, 13 Dec 2024 16:16:16 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <john.c.harrison@intel.com>
Subject: Re: [PATCH 0/3] Fix some races/bugs in GuC engine busyness
Message-ID: <Z1zOUCBQbpvkFo9f@orsosgc001>
References: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: MW4PR04CA0266.namprd04.prod.outlook.com
 (2603:10b6:303:88::31) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|IA1PR11MB6170:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d35e527-8011-48b7-831c-08dd1bd487ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZDliSko3eXFOY3VSRVB2RlIvYXlEK2hMVW9YUUQ4NEp0dGlobFU4clk1UU1E?=
 =?utf-8?B?ZWNUS2MrVkRHMGgybndxZGFYVTRQaXljQ3MyeGVwQkQyZnl6RVhvQUNIY3p1?=
 =?utf-8?B?Y2JiZXZ1S3Rvd0JSeHRBaHhSV2wvY05mM3ZZS1ZvTUxneW1PU1VueDk1QzJK?=
 =?utf-8?B?RStNcHNXWXZObWV3bmw5S1pHS1YwMDdTT0xhSjFlZThyM0hhamUxWXdkUkR5?=
 =?utf-8?B?YjU1alF4OWRmN2Rkb05uYWFqM3doSHVldkdFU3RhQzJtelFpVFNoNmJSSkVu?=
 =?utf-8?B?SHBaVDh2dG8vTk55RUlXWmFseUxtakRiRERGc0w4UWtrZktwREFhelE2aWd2?=
 =?utf-8?B?YnM2OTd3czhVQlZiK0dnSWdHYW9QSWRLNk5uRFBPOGhJcjZhaGsvWmg0eFpx?=
 =?utf-8?B?Yjg0eWp3ZjRYeVFJMHlpY1lJb0tqTjdZRXRNcUYwZzlwQVdmWStIamRPa1ZP?=
 =?utf-8?B?L1pqbDErMTFpTGxHdXY1RnBKcWtXWC90SVBtWnl5L214NENLZlBuekdBZUUy?=
 =?utf-8?B?QUNGWFh1NTBNSkpjNVppR040M0JJY012L29lRDRMZis3aWI5MXV2Z1lYcngw?=
 =?utf-8?B?TU8wSFNIdjBreGZjVkNtZlBQQ3Y2dDgxaUpkZTVYcDR1NEowU2EyN29CZnZV?=
 =?utf-8?B?Z3JmWWNTRUZDN2dKTVBINUFSUjV6WXVIdXpXT0VPSCtxbndzbE44TE9uQ3pH?=
 =?utf-8?B?bnhnM0o5SmJEekN1eUpFWFFGOFk2ZUlqQ2U2K0NsQjRCeloydlhNYWk3SVpj?=
 =?utf-8?B?T3hJWGFDMkRjSGZEaWtQQU8zaUZJVmJoeUd5S0phQnZqN1ZiaDcvQVFuM2hk?=
 =?utf-8?B?ckd2cUNSS1h5UEJWVWt3dnBBSy92aHR2dmNzMmRHQWMzaWxIV2ZocmdmNnBw?=
 =?utf-8?B?SUVwSGQrdWVqOThNeStlb2dhaE1hOXllaHM4OFJSVmM2NDJ6dUp0QnhzeVlX?=
 =?utf-8?B?TzRseXZjTGJzalluVjJOQm1jbkR3QlpvQXVEd1lXcjVsQU5BVjhjTnRHS1E3?=
 =?utf-8?B?OXF4M3l2dXVkRnJRcXlnVWNJcThIVGpSMTZEUmZEZjJRdnJtZnZsMWp3K3dt?=
 =?utf-8?B?bFZRenpQTGJsT1o0RUFBMWZYNHBCdTIrc2VlaXpUOUhWNWpLOWU0TEVWZ29Y?=
 =?utf-8?B?OUJLN3hOYkRBQk5NZXpNUzZ1N1dxVnRNV3E3MFprbHpSaUxPVG9WcFAxSXJY?=
 =?utf-8?B?bGNvTDl2OUhINDBUUXY3WlhoYjViSWhLWXpqdGdpU2pqaXVmZGR0TVpERDMw?=
 =?utf-8?B?ZTZEVUx2Rlp3RFBDTlAyVHllY0hQMk9RdkVCNDc3YkVsMHZaZTZxQUE2d0Na?=
 =?utf-8?B?d09mR2xSdlFZdllQbmpIZy9leFZDQmMrWkdIaGtTY0pSd0tsZEo3SzJJOUx2?=
 =?utf-8?B?TXJzNjdrNXFEUUREK3hDRmMwLzR3VnN6SXJSekljVHRCeFg5R0d6NFNVWmxt?=
 =?utf-8?B?NFhXMXc5ZDdsUEczcmg4cDdrcHNNTW4zd1JKeWIzWks4a3QxODF0L3oyNHFF?=
 =?utf-8?B?NkpHYXROMGVXdHB4Ujl2akFlVk93cmJwVzdya090cHY2SzIxQy9wblNkQ3dt?=
 =?utf-8?B?NkduMDhSNU50bGg0U2dCb1EzcWtsZ2lleHRZdEJsbGVYbVV3REVSRk1KSndN?=
 =?utf-8?B?d3RkS3NBMWlHdy9WdWREeGs1ZlJXSk5xTG1tN0ZYMTNRMmRUZVJvU0laVC85?=
 =?utf-8?B?RWVJc1RBbWxNT0ZUN3ZSSy9NVklHb3hZQkt0YkV4clBMZUpQK1JGWmNmcDE4?=
 =?utf-8?B?VjNyQ1hxZitkV2o0azJrOUp4N29ObEF5MzFsVG1SanNmRWorNHF6TEJLYUtO?=
 =?utf-8?B?Sm1WZWlCVzhTS1N4U0YxYWlKRDdRRmxjSFlRYWQrSUdnWU5MTmppU0g2cHdC?=
 =?utf-8?Q?uJTMwYVXj/+eO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGNJYjdaem5zMWpwZitXV2dsQWcyTC9zelJpNnNnQnpDZTgwOUpBY0xVUm9r?=
 =?utf-8?B?TWQ5MytJeEo0Q1p1VDhCKzFSZ0pGeFlUQXlFMVZNL3liNG1WMzNVellhOFFx?=
 =?utf-8?B?RHZYV09sZkYyVk1EcFVrWW83dXh0REtXVWJZRTZNUEluSVQxQTVva1hZcWNT?=
 =?utf-8?B?OEw2cEs5YThUQWVJSmxad203YmM4SFZja1hxYmhzTktyS1VUcGkvTVZIWVlN?=
 =?utf-8?B?WlYyRDRGZTlncEdGbjUxbUJTSXhqS2xXTGdaYmMrdE1nSExoK241S0dQc3Bo?=
 =?utf-8?B?b2NPS284b1gyaDRaRm9nSENnWmkzUXdrMWNpWDBxRi9YY3VpL0k3ZmYrOVd6?=
 =?utf-8?B?YVQyQkZuRi9FZUVrMjlhbkJ5MmdQQytXNUgxUUJRRHRkY1RYUWRIZ3FlUEwr?=
 =?utf-8?B?TGdRaHI1UFlicCtsN3V6NEczZ2l1NWNyUW90ZjNYWFVMUHI5UjhMZ0M5MUVB?=
 =?utf-8?B?Z3V3VEhNMHQvYnAvOXZCNDhHeGtQMkVZOE5ibG5zdVg1bktQMjZ1REJhcThu?=
 =?utf-8?B?dE1iV2dDUzF6MGZxdkdrRVFBWTljTGVDQWhtaU9YTkVoSUFlTVh4V2E2U1Uy?=
 =?utf-8?B?eG11dWFBS3QwbVcyUjRRZy9Zbm12czRDM2lKZms1MzRCelErZFNyMzVKamxa?=
 =?utf-8?B?OW5JMjVlVW4xMWRHaUo3NjFNYTNwanFaL2xnUGpwdklOK1hYQjJ6dUF3QUNh?=
 =?utf-8?B?VUpENlhhNUJVREE3bzljbmlJNFZlSmozVGtVY0hMSDJwVW1aWDVxOEVWaU9Q?=
 =?utf-8?B?Q1NhYjBYVE5VY054QmxzMUZzaU1sLytZaVI1Z3hxS204RzdBRk5qV0dQcTJ5?=
 =?utf-8?B?aWlVVURMTHJHS1h4OHdxYVlULzBCbnV4YnVod0RVRWtJb2tKNXJUTkNOODJw?=
 =?utf-8?B?K0pFTDFoZHo2QWJaRC9zU3BQaDVrejRDS0dZMmdFVGJTK1BRVWlWZjFGREt1?=
 =?utf-8?B?THRRNWdsVWY0MVBNcXMvSkhMN0ZtcllxdkxvV25nRitGcHN6ajV2MDVzM01R?=
 =?utf-8?B?QU1PRjdhY0lCcndjZTAzR0hOTVY3UG1CUGxNLzNPRnFTV3E1c28vKzV2cExk?=
 =?utf-8?B?c1F0cWN2OWx6SWMwRkdPd2VwakNsN3N4bGZkdmowNFBtWE1CYWh0N3NGcTBv?=
 =?utf-8?B?THQvMTNpY1VPOEtzYVNZempGVE81U1NxcU85RW5EOHZRYnYzLy9DcjJzNkJm?=
 =?utf-8?B?eGtHZFBjL1BWOFJsT29idEdSd1VDbHJuQ2MwNnlsdk1iMGxkcFMxVXQ0T0ZR?=
 =?utf-8?B?VGM1VTFKK1RPUTBuSUVWdERjSzF3S0s2SXhnT3hRbmJPOWVGbkVudmpGVXVl?=
 =?utf-8?B?MnZWZkVWQXNLY3BBOWRKYlBNR0RhcFlXUGc3TU1WaS9kc3MwdHJvWDBJbGZv?=
 =?utf-8?B?Y0NRQUZsZkc1R2J3dlhGRStDWkUvTW1RT3VIRXdOOG1iang5QXZNUnJ5bXU1?=
 =?utf-8?B?S3d3T1pTRnJJWllDS0pDMEFpYjR4a0RqMjV4YlpDWERJejU4M1NJS3FmTXlY?=
 =?utf-8?B?bmNyUERid1V6cVVSVVdpM2F2Z2lZUXVFNDVDWWh6UnlCMUVZenpyN21hdUVq?=
 =?utf-8?B?MDVPc0YwOVgvVTVPS1JkbkM2eVd2WVcxb2o1OUtuZk5taW9DTzYwVXlRNlJ3?=
 =?utf-8?B?UXR5cW52TUlxS1R0blEwQ1ByWGpSMFVScmVkd2xoejliQjRhdVBMc09YTmQy?=
 =?utf-8?B?R1RvMnU1NWhNSStBblBkWGx2TWcveEdPbnhFOFg4MHoxeSsyQWx1ZVZYMzNU?=
 =?utf-8?B?b09acmx2SlV0Q3h6R1RDdEU5OUFlSWVrbVowVmNkVzI3UmMyUlRnVmpYTURn?=
 =?utf-8?B?dWhPa3UxWGI5RGxpMWI3dWxqbFk0MVFJeCtJR3ZXQm1NL0dEYjYyUnZJRDZR?=
 =?utf-8?B?dmRNa3pVQ3FUUWo5NWlGNm5OcEhqcVFZTHFTcHdzSXBQV1RIWUQ2ZEpvMG9G?=
 =?utf-8?B?bnRRYkN4bUJ1TStQYWIxL2xFdEt0K0g3L204c3RIa3k4ZjAzbXI4emljQ2p4?=
 =?utf-8?B?V2RmQmlXNjJ1aE1CMEhVZHJmMkNtZHE0OGhaNzhFRDhKbGw3QnBvZnY1Z3hL?=
 =?utf-8?B?bGVteE9jbVRpTVlVWXNiSVRZdzJpSnNENnNiTzFQcVRPN3o3bkVVQXZqcm5o?=
 =?utf-8?B?SjlOR0VtcEM0c0pIN2w5NGk3SDEvdS9Pa29ISnBJekx0SHdGOWNCSitGcHJh?=
 =?utf-8?Q?DtDqtgJNfCKNT4Qwss2T7ws=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d35e527-8011-48b7-831c-08dd1bd487ae
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2024 00:16:18.1427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KtDviQmKYNkZYlbEPldXiNwv20BEkIlGgywh1LN6ilpTLQjitxdyAVR6AjzUKtsXkdL4YnViXw6gRDaIGEJmSgoLqsCgeVYboRvaYv8esXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6170
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

On Wed, Nov 27, 2024 at 09:40:03AM -0800, Umesh Nerlige Ramappa wrote:
>A few races and bugs in PMU busyness implementation are resulting in a wide
>range of IGT failures. This series addresses some failures that are easily
>reproduced.
>
>To repro the issues, we run a couple iterations of igt@perf_pmu@busy-hang
>followed by igt@perf_pmu@most-busy-idle-check-all test.
>
>v2: Review rework
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Pushed now.

Thanks,
Umesh
>
>Umesh Nerlige Ramappa (3):
>  i915/guc: Reset engine utilization buffer before registration
>  i915/guc: Ensure busyness counter increases motonically
>  i915/guc: Accumulate active runtime on gt reset
>
> drivers/gpu/drm/i915/gt/intel_engine_types.h  |  5 +++
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 41 ++++++++++++++++++-
> 2 files changed, 44 insertions(+), 2 deletions(-)
>
>-- 
>2.34.1
>
