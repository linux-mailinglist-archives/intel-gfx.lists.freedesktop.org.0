Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 326C2A98E9C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 16:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D38210E6D6;
	Wed, 23 Apr 2025 14:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NYHcwz9T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBAF10E6D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Apr 2025 14:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745420270; x=1776956270;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=WMywrK/2lFJwxiOlOnzcC8JOmLdV4/FqdcXwoVfbGeY=;
 b=NYHcwz9T1b7d3BZKBQS5mie79P7xwyzortvxhd9cJGcsg8lLJ0qlsYcn
 jubefQdnkeV+L4P8u/C7ucQzWynYCGBMhy/y5AajqQ9INE8VNWwAX/0cZ
 Ui6wfdXrsz2jOPrhwtaMmqq1KbyLptwSzQQBNkm2y7IpS6ebz0oV5NOKU
 28vWvBSArHHLkKmrylJbPKfrnQsyYimuaQ6XRgX5vVUHATwv2WbcGj9sh
 1GtEJrIXvXppiN8NuHG8l0HG47N7an8/5fjF7yrLd0c4dnQCsOYj2O75F
 1qnFQKRp+oB/rOe4KbnWfl43j41DNBuOWtDWkKjTW75i5prWmFjsubHpx w==;
X-CSE-ConnectionGUID: FFXm0+fVRN6zaOtWoT0CiQ==
X-CSE-MsgGUID: NPTD0Wy6TmGwEOFa/k/nFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47146164"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47146164"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 07:57:50 -0700
X-CSE-ConnectionGUID: nenuV6u5Ty+/MqctmW7B9w==
X-CSE-MsgGUID: XDCnNAdTSgmfFQQ1dgItkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137331959"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 07:57:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 07:57:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 07:57:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 07:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MNMWVrTaoc1JjHd4QS4Cp6VTaz5VIQLWJFptzUDSAgKP6h7UhqqwxATSYHq4BKuBbS1JheYmb6sopAsDJGbmNdswu8FMG9f676kcloIojcjPMSiXrZzTfMbwMPP7sdBhssqxvZWg0JWu2ISb+qoGGMoEBut1AWyVVhX9fir9aShp45o805fT9lKOiKadf8elx0ApLE/xXsdz44mZLIdWCwpYokjmSo/Pkyn80A4QW4Wfazb3Nhn5R4e38aYFXXFnK8a6ToG7+GnFcuF+AXwA4DsL0dgOkh7W7Oqpu4q40OaAThaR6MgrwWmlnXXrilvO8J/DFEJY2DWiXIsXsfeoDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WMywrK/2lFJwxiOlOnzcC8JOmLdV4/FqdcXwoVfbGeY=;
 b=E03xIoH3yiihnTKuRbWcj60lafV7J8LQ2a9lHClaMFzd7ae7/p7pQQgs9Soe110DJR7h8zstAtJOJeCAEyqe3RJNw4JIkCVKNY9n2iKGzptNXssUtkEwH2Phx408peCZ/PC/mDnHqu+coLh5pjgfP8WhglpDd6/VhS3z9o76F58kBEeYqkmHty/u8WOcLFmtG8GzI7F5+8w28SG5zBaiOCGXq8J/vAdt8WHLrCIuxO3PNXmou+u6zFpyEDKZllqcKwiAp4KXl8cr7eg3T+ZKu4RnZLW0NYEEkBU9Now2w2nJzSFubK0oF4p2KnK+3W2XxXimDsLjv/7jV+dhUrM/hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DM3PPFE50071912.namprd11.prod.outlook.com (2603:10b6:f:fc00::f57)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Wed, 23 Apr
 2025 14:57:45 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8632.035; Wed, 23 Apr 2025
 14:57:45 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 23 Apr 2025 14:57:40 +0000
Message-ID: <D9E3UEB0Y0N9.JKR21EGBVQZ4@intel.com>
CC: <andi.shyti@intel.com>, <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>, <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
In-Reply-To: <20250416103640.212269-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: VI1P194CA0047.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::36) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DM3PPFE50071912:EE_
X-MS-Office365-Filtering-Correlation-Id: 9492515b-6903-46e0-2c8e-08dd8277349c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDNLd09XSHJKaXVvNVU2VFhIU3VjSG9POUJrQm0xdTNYYVUzUGlnc2FlMHQr?=
 =?utf-8?B?YXRHaFdLM2I1Sld6ZnVkeXlSSFk5Sjg5b2tITjRkeXBCTnpNYlVNbEtETktT?=
 =?utf-8?B?eHFwaXp4dDZYWjJUVlRtQmFSYVgwNlczMkpFOFQ5ZXRianFKa29BdENPK21w?=
 =?utf-8?B?YThrL0xCaEcxZDNzay9FRnRaWThXSk1YNXF6aXM1MEc3aldVZWczdkk5UmFG?=
 =?utf-8?B?S3A3SXM4MG9yQVhQMkpmeFVhVm9Vd2xoSlhmZkY2OEVmT1B3OG05a091U3NE?=
 =?utf-8?B?MHZCQThpWEorWDFIbnV5OEpxUmx0b3Z3ZUE1SHdJSEJ4aGZCZDhpRWt3V0ZO?=
 =?utf-8?B?dGRsSDNEckpPcVpqVWpjWndqWG9Eb3NWbjYwK0NzTlA5MlR1NWdhME5OcnZh?=
 =?utf-8?B?Sk1qREI0VWZ6Z0o4WlptTWUwMEhRNFlWSUJnQXJYa0ZubTZQUUFEMFhObVY5?=
 =?utf-8?B?Z3BPMDVjcHp1ZHZDQlUzSWZONW91R2pxbG4rY2FlL3hOZUlHbEV5ZFdzZjlB?=
 =?utf-8?B?WWxNbzRPc3pEV012TTNybWxCVlp3dGx2all3bXFYeXFTRWFFbmp4cWkyZ1dV?=
 =?utf-8?B?Y20xVG1CeUFiNGJPaVBvVDBJRjdCZ1JNZk9EMm1iZnVvQkRaSUFhNTluOEVZ?=
 =?utf-8?B?ZzQxUEJMaUhYNVlXRjVTOGZHYkUrRjBaQitoZGpyQjN3dmxrbGxVWkYra05D?=
 =?utf-8?B?YWlDbzhWTGI4WXA5VmRrQ2FvcHN2bDhWYnVlVmNpRTJwSFBONUxISmh3dFdh?=
 =?utf-8?B?R0tGaDhkOEhORk9rL3o2SFlsMGNNNWJiSm1Vd0hOTzhBWHR4VFZKdDUzWHlB?=
 =?utf-8?B?Q1NtOFlFTWVhOGU3S2hWc3JZdXlNTFZ5OGlQc3kzUHcxamwyajkwRlM2ZXMw?=
 =?utf-8?B?VTJYVUpka0xYa0dBcHlaUkc5YlN4YmFPSmt1YVNrc2Vqd3krS0hhRVN2TEZx?=
 =?utf-8?B?NzRma1RCSVR1dWZGaUlQQWZUOSt0a1JnMTFiUmUreXR6M2huYitabStzelBa?=
 =?utf-8?B?UHg1NGR1TkRVdUh6L2ZJY0xzSmVzcHRGMmNyMTNaQmcyNXovS05HOVI4dVNF?=
 =?utf-8?B?b0VyZVZRWmRTZEJnQjBTRVVOZG40Q3BuNzZad2JOcXhWY0MrcTYvelhIb1Q1?=
 =?utf-8?B?clFuOUdIY1NudmxrdlI4WTE0Ukgzakl1T3kyZlpLTGtFZEQ5MmQ1VEVSSGtD?=
 =?utf-8?B?VGZuUEZtdWhveTRtMFB4Rm01YUkwV203QThndURiQk9KVzQ4eXNqQlpnVmV0?=
 =?utf-8?B?L1pnVUJlSWRRTG1PRnZtV1NBYXd0b1FsTis2SCtqNXVhUU9iL2I0N1IxbmN3?=
 =?utf-8?B?all0T2g4b2JveWpUSktyRXRiM0xjVTZOUk92YWI1V2IwL0hNRGt1UEVPOXNp?=
 =?utf-8?B?UGs1NnVkbWhzRHBXQ0ZqdzZVVzk3QWNmaHlzcTJ1cHNma09EcFhuN3Bhckli?=
 =?utf-8?B?bjNhZ2l0VVIyRzFSZUpId2hrdmRYM2FkYStEazhybGxkMjZtbDUxMmQzYjJS?=
 =?utf-8?B?STcxWXR3UEN4WG11RTlkWHprQTJJVEVtcnI4K3lSOWpmQTBBczlOaDBmekVn?=
 =?utf-8?B?QkRuelVudUJFaDgzRnFjRm1lbTRIRklQbkZZaHkrNnhWc3pTNDdlMTFoWEx6?=
 =?utf-8?B?bXA3TU9XVENVOStPN1dyZEhndFRPL2FoZWhDV0hoVnBQbjEzRTlTdjVKRldj?=
 =?utf-8?B?RHE3RUU1WEt0Zm5LOEU2aXo1NjhtQkduK1hoK0hHSFNXR3FwWDFtVlFyQzgx?=
 =?utf-8?B?Y3hDTW1LS0luY2s2VWFpSmFWVFZpU1lIYmJ5VFdBVkczQU5OVHNiazE5cmJ5?=
 =?utf-8?Q?47G64skyCaR+9Htmh8FF6hLu+GBDcIqQUdWlQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0w1Y09ydlQ5Zk5CbXgvdnIyMGZuc3FuR0t5cHZ3ZFRNaWlXeU9hNDlFMUVL?=
 =?utf-8?B?TkRRNHV0L1J6NEx1OE9NUm1ud2pCU2hSeDdiK0xXMk5JZ2F0ZVJ6ZGZBYVVR?=
 =?utf-8?B?ZUVadFdRVlp6aUNPZGYrTGgvNUZaZXRBRHNwQzJUejhVL0JuaHlyTW8weGl3?=
 =?utf-8?B?blBoVklhVU9wV2dqVnM1TFNTS0phNHpheXZld3ZaYnlLOTFHbGI0VTAxQW1B?=
 =?utf-8?B?VXBUQ1RlZUdNTTlhNHhNV0lNbCtFbldKQ1k2c1R3S2MrVGQ3RnlSdmprbUtH?=
 =?utf-8?B?N0JVWUdoYkF0N2docEw0YVBGcko0ZUFKL051WTNHR3VMWENsbXZEYXNyRjNa?=
 =?utf-8?B?ZEdsUVBsZU1wNERuWWcwRWxXMDVNaTVwdkZZZC94b0lkekxDbi8yNmhpVWVJ?=
 =?utf-8?B?Y29rR20zb0x4dTN1RCtaaFQzN3IwQVNodEZpclRFTzhsQ3c0b0xVbTNUK3Mw?=
 =?utf-8?B?YlRWTklia1RNRWtzS1JVM3M2aWw1bS9oK3plb3lQMHphS0RtSDI0NWJHUzcr?=
 =?utf-8?B?Qk0rclZLaW5SanhtbDFiN0tkY2Nzc2hnc3FIYnIyaWc3Y2N1RVNWVlVvK1hk?=
 =?utf-8?B?clhGVjVXL2hEQUExbDA2R0pJTWtUb2c5R3FDTGRtMUI3RERtNGtzRktnT0M0?=
 =?utf-8?B?ajRUSk1ZMVNGQmZJczVKcEp4SldOTWc0V1RBdmpNREt1bnN4bFRWRTdtZ0NE?=
 =?utf-8?B?dkRQWStjV2VTVHB3cEZzc1BNVDNNM0xZdXJoQzAzQWlRVmdwejJVbTgvSERP?=
 =?utf-8?B?L0h3RmlrL3dmNzNiNjBnK1NTZW5McDBJSnMzMHFiOC9QaWwwMC9kcEFWbFhz?=
 =?utf-8?B?L3VERmRqQU9OZW9xVEV4YjI2MkhSYklRcFBPMUVTNHBwMEs2QXp0MVhvQURL?=
 =?utf-8?B?Qnl6R3YwazhmMlBIbTNVNmZMVlNvU20ybWVFMmFFemd5bDdtVGV3RUM3aVF3?=
 =?utf-8?B?UlJFSEpUQTI2dVdvVm1yc2hyUnNQUHVEUUlwM0YwQVdOc0RSVEtCM200UXJD?=
 =?utf-8?B?TUx6cFBlRUVuY1RTWnBDcE9QWlVPVlZNS2x2WUllMkV3N2wwRUkyUTdPR3Yr?=
 =?utf-8?B?d3NNb2wxbm9hSzBPclJaWlA0cWptd0YxQkRza1dCTWVSckJZV0szRGpmV3pm?=
 =?utf-8?B?MXZxYUxnaVNWWTBZTVFtelRvbi9qU1l4WTB2dlhRUjN5am56OXQwbWs5Zmph?=
 =?utf-8?B?U0hhTXZWNjFlQWhGM3l5UlJXVWZKRnkwL3FiUnJUamtmbUI0TStiWHM2NHB0?=
 =?utf-8?B?S21KejFSS3JCSEQ5aGlQUUk3L21aUlFxRU5RVWlad3VqTUtHMWQxUWlKUkNG?=
 =?utf-8?B?Yms5SU1RcVZzTVJVaVZKYkVVNWFnTEtMcklXSnVnVmJ6RUR5QlR2RUIrN3Zj?=
 =?utf-8?B?TGxaSFB6UVhPZEg4SmlFQXBzQW54dGk1YXNtWk5Jb2RBc3VZeGxOejhpR1Rm?=
 =?utf-8?B?QmhZSVBKbVJlVWlBRTczR3pUWDhmcmdROHBWV1NpTzlleGo2Z0xkRHVoMWU3?=
 =?utf-8?B?VW5pOFl1bTliUUppNm55RVpLQlFKUEVGRm5SK3J5UWZ4VTJ1SXUxN0pZZXVs?=
 =?utf-8?B?LzFCTlFlWDZBYUxRdDRWYytRMGhCc3h4U21LTjkwTU9QRXVTdjEra2VJeE5v?=
 =?utf-8?B?QjFOek1CMnZhNDFGcnlzWFRtNlhmOGFYbG1VYkpBWDYzeG9OK0FQbkdzVzMx?=
 =?utf-8?B?ekZ0emZRNTNleWhpanJrZUFGWVY1ZlhXaTNXYVUyd0hpNlh1OWVRZ201bmRs?=
 =?utf-8?B?UUc4MkVmSVdWZk1EUkNqdUlSa1c5UUNDT3VKK0dIQ1lrckdFeGlkSVNHM0NP?=
 =?utf-8?B?YS8vUkIxMVpDNmpiTTMyREMxQzVLbGFGR09EMnc1bzdWZzdURHUzR05hWFFN?=
 =?utf-8?B?UTR6RlJ6N3NvMXIrSFVBR1BhQ25wdEM1em02UXA4TW5oOXNPd2RqN2VWdHhY?=
 =?utf-8?B?WGlOWGpZK3pLNG1ROHFVaUxsa3Z2QjQ2MnRmcnBzSlZkVEdnUzJ0NXFRY1Av?=
 =?utf-8?B?SVdpb25rY01TUWRKcjdmZ2tSMnRTSGdSeU9Bb3ljenY2SGVwYWd0aENJWHgv?=
 =?utf-8?B?czJPR3dyNUV5Wmp2MlVYVkdsOU5iSXFsSEU4VCtMTm5vbXRjTHFvRjAwZnNw?=
 =?utf-8?B?T2c5TjVHcW40cVBhQUNCWVdWWVdvcU5BZW9QY05TRVNmTU1YTHRURzl1SGQ1?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9492515b-6903-46e0-2c8e-08dd8277349c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 14:57:45.3027 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9dn/rwEDg+4pXlzHSL/6Jje/AVXymJ6CETnfBtn1fuU8mtV33lMv3kWQbZIJlm98BBvgXvWSC6V6P3UgouBo7T5b8Y7GrExeW4Ojwa5hmJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFE50071912
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

Hi Nitin

On Wed Apr 16, 2025 at 10:36 AM UTC, Nitin Gote wrote:
> Sometimes engine reset fails because the engine resumes from an
> incorrect RING_HEAD. Engine head failed to set to zero even after
> writing into it. This is a timing issue and we experimented
> different values and found out that 20ms delay works best based
> on testing.
>
> So, add a 20ms delay to let engine resumes from correct RING_HEAD.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13968
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

LGTM
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

