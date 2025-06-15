Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F10ADA24D
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Jun 2025 17:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A80210E054;
	Sun, 15 Jun 2025 15:18:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S2XlwCn5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ECAE10E054;
 Sun, 15 Jun 2025 15:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750000727; x=1781536727;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=nhm4vMJRg9hxi9CnmxScFnrH26kLvFz1+3aHubMDzUk=;
 b=S2XlwCn5MV6b9oOxiy+IQySzFjLxBACGPNr6hm7TAzrO5wygjX6GL+lq
 2icr0Z0vv0U7T6k1BMzik33XtaRi0M4CdXXLE3+aZJlbOT3oypRJ5jYqN
 8mQpxxSbHLmO3DxJMdUjrhnG8RNM+2Gz2URUBdqUSV801m/H7/tYMKfuV
 2pWbBAFq3X/HkAWtLNLl94ly3I87avB96/Fsq1IxQuj/wO6x8O/mr591t
 IAVpkO8+UmVWjX73M2lE/metApYnERkmI3/s6I4TM22gvkk3c221C8SRL
 V2lJcqRo3fz+8MonUN80I9vZKxlmTtqI5U/jEqtjzlwhYRbl9dBs0Km6h Q==;
X-CSE-ConnectionGUID: lzNY+u2DTA2sKD8+yEP55w==
X-CSE-MsgGUID: fgIxq6l9R0iCD9MisPiT6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51263350"
X-IronPort-AV: E=Sophos;i="6.16,239,1744095600"; d="scan'208,217";a="51263350"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2025 08:18:47 -0700
X-CSE-ConnectionGUID: sYqTU2gFSjKiN4WAfHWlSg==
X-CSE-MsgGUID: r+lOc6MrQ3qhm21KUFNUkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,239,1744095600"; 
 d="scan'208,217";a="153560159"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2025 08:18:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 15 Jun 2025 08:18:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 15 Jun 2025 08:18:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.56) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 15 Jun 2025 08:18:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nTeR48NvkKgyTUH4l6r+uw5sMd+5NEb094co4B3I9DasOoi9/gxhz86xBx+wVBRfw9sYIKXVGcXdeWKuotAs4y+o5toqt3d/gFZZsEiM3Gdt6j/T5YXD8NvlSETkw80r7YROndQFb81lP/8AneiMo+4bcWiqrbIi83hd34F/8cKJyBNQ4VY4hmYropTTyFzWhQtDwcDQxujpDciwmCqYW6Biq6ze1ll5exfW1V+8IRRG0pMdNehF5RETw/I8gVCXYfK1IWjfwBYJYDrN5srmKB3rzfkeCXCemUuVrA7Jt4YYPtdZLFuFvkF2Pc+MGcxaq+0MD4H2CItP0wcBSt3PBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8CKtCxi7c/+u0Bnz5oqv4hxpMldQ5wmXzNAAVuP16c=;
 b=hxZjNhCvvKnrea9FVqhczy8iCcY7mw0uhGLYxJkTo1nMOTY61tReYprugSKW7n1GvFgnL8//6XUQfRfCDb8CV1bV4YrloK24nI/7atEYvhJIZo4zJrDMiIfEcmeNj9h6nII3R6Y4004IAJ1/pOX/exILtE9yDb4pCr6b3clu61pLcQegsaxDh1h4JZ6FmXcxUyMcUqpdsemQiR0INQ0cpVvujJZnrRmQAB+VotVSBQA8p2jMZtXlw9EpIGkUsqBFzYov2YZuJG0a/zq8SewQ7r6JtLTC3XO1RCB2NhmEAF8B9iZ8Hg65CDmB53SbuNugFEx4U/1CajFb4LjTCADAug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7718.namprd11.prod.outlook.com (2603:10b6:510:2b6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.27; Sun, 15 Jun
 2025 15:18:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8835.026; Sun, 15 Jun 2025
 15:18:40 +0000
Content-Type: multipart/alternative;
 boundary="------------AzwkiULSFC1N953gzaN4McDu"
Message-ID: <267c5213-5be1-4fab-bf38-8f80074a3194@intel.com>
Date: Sun, 15 Jun 2025 20:48:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/snps_hdmi_pll: Fix 64-bit divisor truncation by
 using div64_u64
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <stable@vger.kernel.org>
References: <20250613061246.1118579-1-ankit.k.nautiyal@intel.com>
 <0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com>
X-ClientProxiedBy: MA0PR01CA0053.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7718:EE_
X-MS-Office365-Filtering-Correlation-Id: d2f9e9b0-6c29-4521-5752-08ddac1fe860
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?emdwWi9GbFpEZWR3NmlJUm9ERUhXR21scHc1dG5TcVBmVCtBMUxWOHpDQjNG?=
 =?utf-8?B?RDRMUmtmS0JyUFVvUlY4UFMvOXZhVEdKQURhT1VnRnhaZThZWU5kVFpzRzNk?=
 =?utf-8?B?S1JkTEVES3FsVW5FUGk2WlFoeHhQbGswanlpV0RoNVV0Ymh3OEdMSGdqTVox?=
 =?utf-8?B?TDcydE1QKzkrVGtHS0Jkc1BLdXlVMmdUYXVZRXljYkxoRHFOd2E0cVNscDBD?=
 =?utf-8?B?eEZvdHBmajNhUG0xclduMDF4Q0RNZ1pOYnMwdEhJbWljcGxOb21CRGFlZndM?=
 =?utf-8?B?TzFZcjArayttMWVoQzZMUFpBZGM4cStlWEVaaSsyRmpZTlNNTW1jRzJlTGVa?=
 =?utf-8?B?Z0JZeER4bXNqTmIvYVNDT1paV2pnNldIcGpvSWc4TXowVUoyYW55ZHRrZjlI?=
 =?utf-8?B?d2VPTEhFajU3a3o1UVh0Mm1XVXpQSDgvbmFwaldkWU13RXZEWTFFYmRnc3Ji?=
 =?utf-8?B?dkp2aFdzZGowcG1mbk5aWHQ5cE4vYmwxWnp1RklIMXNWZlZrcVlsOTd2dEZN?=
 =?utf-8?B?Y1lTNlVkNmZuWGR5OTU4Zi9tOFlTMmc2U0lxY1RjRVZhZEx3MUxxN1NVSEJ0?=
 =?utf-8?B?RGhtZ2xMN3BMS2kyMC9HNHhBN3VsQVhBZjI1WlU0UkxXUSt2UHlZRnVLbm12?=
 =?utf-8?B?d1dEaWRDVnlhVXowSm5pUDA5OHFROVE0L0JiOE1NeUxEcW81cEdac0kwQkNE?=
 =?utf-8?B?T1dXYmh2R0xmY211UStjTXZQNGxPb3F0Q1lob0pmSkxHVnVEL0dsNHFnZCtE?=
 =?utf-8?B?NFZQQlpibjBKRm11cHFSeHoyVVpySmZpMGZJWjJRUDBIWGNGQ0g3RGJHNTBE?=
 =?utf-8?B?dHREeGJQSlhNbEVTK1pUTzlXK0EvdGdnc0E4MlMvVm95aitUd2M1RkRYaGhQ?=
 =?utf-8?B?My8yREFvSUFTczNENTk4SEpQTXFUYTRXYW1icWFrNFltRXdJakVYN1pTQWpI?=
 =?utf-8?B?Yk5ZSDFQOGNFb0FrdXVpMGJIQ1Nvd2o1RTM2UDVVVjlDN0MweW1yYVhhL2U1?=
 =?utf-8?B?YTVUek1kZ0xVazhTeWs0VHJ1WHM0MVFiRWFxVW1URTF1cnNXaTh6eWtYZzcw?=
 =?utf-8?B?S0Ywb2FpMXVjdjFURVBuTmNYSkdrMjRxcW1iNkpnZUVoYzlkTS9Hb2ZDc0Y5?=
 =?utf-8?B?cFNoVlg1aE5SSTdiWDdqejlEbjJTR1dhNE15L1dXK1Q3R2p6SmRkTTB5MEZR?=
 =?utf-8?B?M1lQOTVzV1ZITjRwRWtZTnR6YTI5eEUzMVMyaGZDeEZNQ0JZdFdqQ1pUbmRn?=
 =?utf-8?B?UzgyNEFNVUEzMGpjSzZhU3B6WlkzblBjem1kelB6T25hTVFHWHEza3JqYkVn?=
 =?utf-8?B?RFJIVmprSWMzSDB6RzU0WWpvb3dYak56TU9EMlRYd1d3bUFKaStHSU1pTHF2?=
 =?utf-8?B?WnBuRUpGOUxtVnNGWXMvL01QT3FCM0daK29RZDkxOWdxTWN3MXVTWW80QzJV?=
 =?utf-8?B?UWRndWRZNGFhblltaEVqakJQL1pXQkZoVDN3UU1YWlVWNzhyZTRrTzVkVFQ4?=
 =?utf-8?B?RDd4Y2RGRkJEa2NodThJYlpSTDFRa0tFYllTa2VWYW9YZ0RzU1FLQ0diWjNQ?=
 =?utf-8?B?NmUyemF2ZTlGSTFkYm5tOGE3RlYycGllSHZCeVlGRGRUNTh5cWxUTHFiQnh3?=
 =?utf-8?B?TGFQWWp3UWtOZzFzMU5aK1llaUFIc0JQSFZqT0l0N08vSEN1QjcvSkVqNGVC?=
 =?utf-8?B?Wkc3clY4VnJFRk9xN3VlbnpoczBhLzBNTzVoUThTNGE5VEJVUDRvMkw2ODEv?=
 =?utf-8?B?d2xoRG55N3BoZXozSzNmUjdrT2pQc2oxWlpCbnI1ZW0zK1JScXp6WGIvVVY1?=
 =?utf-8?B?emJzcmgxcHFWejUzenhBOFR4WitrMkJmeldTc2FZSWt2ZWxRL1Z0VWZaVkxP?=
 =?utf-8?B?NGhpN1VpMWM4VnZESTJDTmM0VFBITzJDNTEyWEdscnM3Y0cyYXhFWE1SRUcz?=
 =?utf-8?Q?NvDPAqrDegs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkVUbERBazZaQy9aMTVBQ08zcjRhL0FyTFZhRUF6T3lUY3A1SnVxQTFsNm9V?=
 =?utf-8?B?ZFpBRjZjZXJiS2pTc3VpVHVDM0xTekNzTWY1aXRCZDhUSmVrUFl5Skp6YzBG?=
 =?utf-8?B?QWh2RHRUS0RBZ05WaWVoWUlJSzM5cFNBeEtzTWRDc1VXYm9yVEE0L2hHYXFh?=
 =?utf-8?B?KzJnTG5KMWpuT0FTNGt6RTZRV3VPcGU5dnZnanptTlRGeDdxL1hpc2xhSXdJ?=
 =?utf-8?B?Ty9Kc3RyeE9uM0RFZ2RIUnJibnVtMmtXaFdpeWJrMkZoMDluQVowSmtpK3RQ?=
 =?utf-8?B?Uk1YUGpOSVZ6TDNoNjBnNzNIRCtLTS9YUWVLUk9CejM5TjFIaXR1TmlhZDVq?=
 =?utf-8?B?aDZ0YjZWem5LV0QwOHRsTkJIY2hnVmVnd3hFRzRiVnk1VVlnRTlxVGc3YjRY?=
 =?utf-8?B?VSttS09BK1ltZktRbmxWUVlpYWFaUVd0NnUxQzJxMkZ0eC85LzRoWnl1MW5j?=
 =?utf-8?B?c0t0cHoybjJ0anRhQk0wNHJhdU9GVjlNNGVuMDZ3Z3hZNnVZekNNTFY4aHcx?=
 =?utf-8?B?WVhUWkxRMk0ySHd6bzl5dUtzdFJBTEYwK2xUV0swRGtMZzBMYWwwU0x0Y25C?=
 =?utf-8?B?dXRFNXF3c1RhMWYrS1FlaCtVRTdjRklYdSs1YjIyeE5nZFZYUFVXNkQ1Vmp3?=
 =?utf-8?B?OTVuT1MzSTlxUmhCSncwU052ZU96aUhPdjZ3TmhxZkdkV1RzZnArdzArNDl1?=
 =?utf-8?B?bzlqbjNEUkNDMUdmbndObXloMUlwRFVpcmo3UGNlVWd6WXJqTllMczhkbk9w?=
 =?utf-8?B?bnNFSi8vcEd1clVxN1dXd3dnSG1qY1hWd1N1b1VQdStuc0ZtYkxyb1FJbVNR?=
 =?utf-8?B?ZnhGcnJSODhENk84MXNSc0RVT2Z6NERHRmNGSHpZRWd6ejJSN2pqTnlzK2hD?=
 =?utf-8?B?eU0zdnA1dTV1NjBJWCtPbDdmRkMzUjhxUU1kZXFFU25UdHg1Vkt6amI3WDlI?=
 =?utf-8?B?Q3IyK3h4b0pPOS81RXFyU1pPbGtuVERiM1hkL2dPNVlaTGFheFNCOSthcVRo?=
 =?utf-8?B?Z3VxM3REa0lBWWNVbk5wYzFmdVd1L3NWb3BWUWg3emQyaHc3T1o5SlVyY0pq?=
 =?utf-8?B?dkxHVWJtYTd6cVFjaVZONXZDS2FmQUVackFOanJEWVNETjlDeXpFN2wzL0hS?=
 =?utf-8?B?NngyQTYyT1VjVC9LQnBYcWcrc3dRS0tPVnpiTjlnalBDSDRMWXpGQTl1bTNN?=
 =?utf-8?B?LzVTM1RSbytWUXdDalhOWGhLYTBueUlZMXVjcmNFYzJ0WVZMYnRRKzI4VU5l?=
 =?utf-8?B?bHh2WUhONVRla3pjMERHQkxtUnZnWDRlNnc3ZGhQRkkzaW9ER284djZRN0I5?=
 =?utf-8?B?bUQwZW5nTnlwM1F4TVI2cFJIZzlJemtuc3hMWEtnMCs2eVpvUkYzSktDUVlz?=
 =?utf-8?B?WWdQcUgzV2E5V0hFWFBoVmRGVS95dXJsVm5TTHJQTGtha21EV2FJUGJKaEdQ?=
 =?utf-8?B?S1doTmQrVEdvakl6bFNldGxNS2hwSVAzQ21ON0hZUUJKQWlYYXErbG95cVZj?=
 =?utf-8?B?RWprcDRVWlhSUUpKRW84VEFFclZGNU1VZWo2V296SE1SeHNtNlUvVldoSUdS?=
 =?utf-8?B?eTE4djBOc1pvNkZ5bk1aNnhMWlNUN0ZpVm50TFJhTGZrVlQwMEx6U3V1Y1RF?=
 =?utf-8?B?aGo4d09Sck5Va3VFNlZ6emJGcnYzL0xUZXhhY0JjUlIzVXMzUk5WZGdDN1B6?=
 =?utf-8?B?SnRtRnRTbzlRUjRraTRGMXc5NDdSWWRJcnNQY01vN0hrTlRXdktHbk1pekd6?=
 =?utf-8?B?eVNOT1FhdUorUlF0blRVMUpCM0xjbTlUZWNXeDNHL2xtMyszOEorN2thUFBM?=
 =?utf-8?B?TVorVlFLdXlTcFN4cGxhaUZYb0hrRCtMcjd5RGdsRlN2ZU96d1A5NUtWS2Nv?=
 =?utf-8?B?S0tRWHlFQVZCTEIyRVNROFR0YmNLWEk1d2QvS1BOWUNEek44Y0QraVRtbStm?=
 =?utf-8?B?SGZGenJna0hvL1hPSUNNR2EzSzV5NjFHOGxKckx6N1hOTlpLTW0rTWIrb21s?=
 =?utf-8?B?cmRtc080T1NVbkF0S3RhQVdQd3JobnU5Ty9SZnJKNWtMNXNpSE9aWWNvZXVK?=
 =?utf-8?B?NDVJcE51Qk8velZEQVRWdHE3VXpKaXMvSFR0ZzVxZHR0bFcyd0VWZEk5ZWtD?=
 =?utf-8?B?bVhTKzJxZVdURlJkVEtNUUZ0aGd5bWpLb3BxZ0ZPU1lURlBscHQyb3FId2pR?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2f9e9b0-6c29-4521-5752-08ddac1fe860
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2025 15:18:40.2182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xvk2+3YBoFo+c/KbxM4ycFMGrHMl/Db2LuOUAdnSmglHYoIpFb9EbVNm/JazgMxXIZZp0LaX89y3qEO/HcdQzx+w7rh+KIVkaibynHH77Dk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7718
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

--------------AzwkiULSFC1N953gzaN4McDu
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 6/13/2025 3:06 PM, Jani Nikula wrote:
> On Fri, 13 Jun 2025, Ankit Nautiyal<ankit.k.nautiyal@intel.com> wrote:
>> DIV_ROUND_CLOSEST_ULL uses do_div(), which expects a 32-bit divisor.
>> When passing a 64-bit constant like CURVE2_MULTIPLIER, the value is
>> silently truncated to u32, potentially leading to incorrect results
>> on large divisors.
>>
>> Replace DIV_ROUND_CLOSEST_ULL with div64_u64(), which correctly
>> handles full 64-bit division. Since the result is clamped between
>> 1 and 127, rounding is unnecessary and truncating division
>> is sufficient.
> I don't understand how you can make that conclusion. Please explain.
>
> Would it be safer to just use DIV64_U64_ROUND_CLOSEST()?

I was thinking in terms of the boundary values that less than 1 will be 
rounded to 1 and anything > 127 will round to 127.

But my reasoning about rounding being unnecessary was flawed, as any 
thing in between will indeed matter.

Moreover on checking with spec the algorithm too uses ROUND function.

You are right, DIV64_U64_ROUND_CLOSEST is a better choice here.

>
>> Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")
>> Cc: Ankit Nautiyal<ankit.k.nautiyal@intel.com>
>> Cc: Suraj Kandpal<suraj.kandpal@intel.com>
>> Cc: Jani Nikula<jani.nikula@intel.com>
>> Cc:<stable@vger.kernel.org> # v6.15+
>> Signed-off-by: Ankit Nautiyal<ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>> index 74bb3bedf30f..ac609bdf6653 100644
>> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>> @@ -103,8 +103,8 @@ static void get_ana_cp_int_prop(u64 vco_clk,
>>   			    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
>>   
>>   	ana_cp_int_temp =
>> -		DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
>> -				      CURVE2_MULTIPLIER);
>> +		div64_u64(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
>> +			  CURVE2_MULTIPLIER);
>>   
>>   	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
> Unrelated to this patch, but this should be:
>
> 	*ana_cp_int = clamp(ana_cp_int_temp, 1, 127);
>
> There's a similar issue with ana_cp_prop also in the file.
>
Agreed. Should there be a separate patch for this?

Regards,

Ankit

> BR,
> Jani.
>
>
--------------AzwkiULSFC1N953gzaN4McDu
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/13/2025 3:06 PM, Jani Nikula
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com">
      <pre wrap="" class="moz-quote-pre">On Fri, 13 Jun 2025, Ankit Nautiyal <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">DIV_ROUND_CLOSEST_ULL uses do_div(), which expects a 32-bit divisor.
When passing a 64-bit constant like CURVE2_MULTIPLIER, the value is
silently truncated to u32, potentially leading to incorrect results
on large divisors.

Replace DIV_ROUND_CLOSEST_ULL with div64_u64(), which correctly
handles full 64-bit division. Since the result is clamped between
1 and 127, rounding is unnecessary and truncating division
is sufficient.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
I don't understand how you can make that conclusion. Please explain.

Would it be safer to just use DIV64_U64_ROUND_CLOSEST()?</pre>
    </blockquote>
    <p>I was thinking in terms of the boundary values that less than 1
      will be rounded to 1 and anything &gt; 127 will round to 127.</p>
    <p>But my reasoning about rounding being unnecessary was flawed, as
      any thing in between will indeed matter.</p>
    <p>Moreover on checking with spec the algorithm too uses ROUND
      function.</p>
    <p>You are right,&nbsp;<span style="white-space: pre-wrap">DIV64_U64_ROUND_CLOSEST is a better choice here.</span></p>
    <blockquote type="cite" cite="mid:0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Fixes: 5947642004bf (&quot;drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2&quot;)
Cc: Ankit Nautiyal <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a>
Cc: Suraj Kandpal <a class="moz-txt-link-rfc2396E" href="mailto:suraj.kandpal@intel.com">&lt;suraj.kandpal@intel.com&gt;</a>
Cc: Jani Nikula <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>
Cc: <a class="moz-txt-link-rfc2396E" href="mailto:stable@vger.kernel.org">&lt;stable@vger.kernel.org&gt;</a> # v6.15+
Signed-off-by: Ankit Nautiyal <a class="moz-txt-link-rfc2396E" href="mailto:ankit.k.nautiyal@intel.com">&lt;ankit.k.nautiyal@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
index 74bb3bedf30f..ac609bdf6653 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
@@ -103,8 +103,8 @@ static void get_ana_cp_int_prop(u64 vco_clk,
 			    DIV_ROUND_DOWN_ULL(curve_1_interpolated, CURVE0_MULTIPLIER)));
 
 	ana_cp_int_temp =
-		DIV_ROUND_CLOSEST_ULL(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
-				      CURVE2_MULTIPLIER);
+		div64_u64(DIV_ROUND_DOWN_ULL(adjusted_vco_clk1, curve_2_scaled1),
+			  CURVE2_MULTIPLIER);
 
 	*ana_cp_int = max(1, min(ana_cp_int_temp, 127));
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Unrelated to this patch, but this should be:

	*ana_cp_int = clamp(ana_cp_int_temp, 1, 127);

There's a similar issue with ana_cp_prop also in the file.

</pre>
    </blockquote>
    <p>Agreed. Should there be a separate patch for this?</p>
    <p>Regards,</p>
    <p>Ankit</p>
    <blockquote type="cite" cite="mid:0d7742055fbbadf97cc3a361de6838a7d0203f51@intel.com">
      <pre wrap="" class="moz-quote-pre">
BR,
Jani.


</pre>
    </blockquote>
  </body>
</html>

--------------AzwkiULSFC1N953gzaN4McDu--
