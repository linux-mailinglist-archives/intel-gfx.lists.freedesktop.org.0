Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CBAA466C7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 17:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C5E710E95C;
	Wed, 26 Feb 2025 16:39:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRBHKiz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0AB410E95C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 16:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740587956; x=1772123956;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u8dFmFAvfHSULICgAGWgMkNkgEyVTjM559+94UVrNM0=;
 b=mRBHKiz7pfOZVkanJqsspUPHKwnPF4LV28BiuBk6IweiUJBglWtnAMtB
 SjOvVhfJc1HiMvKwsDfbZw9cmcH0554yJNUSmzdpJdb+A3tffsXvcZsPV
 dZl7BK9p73+c9k9KANHORUF2znN2QYAMbvM6mETYy+ENFfVXuJl4X3Unp
 synFYaUIwZgToX/L2E0XEfFpdxuDBdFtfcHyGSPXmaUd5NpqfmQFrSSLm
 VdtKpTMZz9E8JtDrcwtyrc18LBjNAIB/G0MhxJyxfT9sVTEfoPvjIOfxN
 bl/1ypm++eqPHq7ye2u/tCiZEHjRNuU7feZ4rzT3ZA/v1lpOQRR/jhzup A==;
X-CSE-ConnectionGUID: Og9dq6e2QH2psDaHpEMnEw==
X-CSE-MsgGUID: /4Nz4nMpS96yfc99MaAAJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41148589"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41148589"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 08:39:15 -0800
X-CSE-ConnectionGUID: rezboXK5TG6YwTt7Gjgktw==
X-CSE-MsgGUID: mZEWHuunRtu0w8IdcLmFIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121692625"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 08:39:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 08:39:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 08:39:15 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 08:39:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D4K7V8jZ1Ownt/7nd5L+VUtCngk+qXzFgGZ5195m3GBt79QQP3LzwabsqTXCkTEztoDOMQsmWFBKy00g/hSubhDOUU8BfGzL1G8BTAcWmSik1X4uuQQ/Pskn9nDC7GlW7SoDWXYBaAk3OI7SQasnYAs0da0YOy6GvQj4hPWRZ6GythKBi4dVKFXiiOzSoX/PKxiLL/ZkT943SJ9rCBmVlhuaho6/Z8/HJ6vbH6NCaUXkpJmVW8dmUdISunWfyyGwzQBnbddnWvKn073jVzWpRnAdDzEZ00uFU5ff4VZk+8Wwqyspat8o37t2BNZxEZYmgMhJ+1A4L3jXxKxZYfTxmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tYnjvWarJWbhlccE2V9p+9hc7K9fPQvws/4t9humynE=;
 b=xq8dRT363kVZJp9pVKo6B3jsVh0lOouVES6xrQgZvPoRXvKAay8Fy5L9t7Lr+vh0RYVaLx5xZLagVWvryLpktdDd9wybUuXi+y4kDC+/WY12eKDPkQ1twda0yIzQM89A4bsIgvY0VGzs/HqJCkHfRrQsN0IwkaD9GbLfPPkAzfpqLmuJiTESJkBQSSvrewN4C3IS+W/WTOVifFDcJDsONk6ozCuTJdEUu7t6ClZJ7tnmnwAaGlvafSqHr50DXd7v6JhQufb7HoNN+YEtfQ8ZRq/i319GHXMIFqKnyq8diC5I9JBpCsOeyKeQj+gt3Ca3G72Ybi44B1S/Cvlh/+zyQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by SA2PR11MB4858.namprd11.prod.outlook.com (2603:10b6:806:f9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Wed, 26 Feb
 2025 16:39:10 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 16:39:10 +0000
Date: Wed, 26 Feb 2025 17:39:02 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <3nqlo7oxuwyusohdvf7jltki7cc5haqbfm7p7v3zcqk3apd7mn@4w2m5ql3yr5z>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
 <no7fp4okppyzotvsackkzazqxvfchoecuorjwttgkzyxpcgeab@mltrp7rtxg3a>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <no7fp4okppyzotvsackkzazqxvfchoecuorjwttgkzyxpcgeab@mltrp7rtxg3a>
X-ClientProxiedBy: MR1P264CA0211.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:56::13) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|SA2PR11MB4858:EE_
X-MS-Office365-Filtering-Correlation-Id: 156b3387-04ac-45e3-f826-08dd5684186e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWFPM1BNbVZEUVBvM1NhOXVXMzlDVDVOYTRlVWNrbG80SkJib3owd3R0eXYw?=
 =?utf-8?B?QVpaZGIydEh3eVNPOEFyUFdEUFdNQ2syUGFXK241Zi8rVVVSNzh2N0FOZUVn?=
 =?utf-8?B?aVArTEJ2eVdoWUdiWlVSY2RHa0dOM0lBeWdJWmp5Uml6VUlZbmJQczRjYnIy?=
 =?utf-8?B?bGFnTkFKUTlYTUNpQnZwWFNGNG5KaWxha3pHdEE5b3RHOHAyaVhFQnY4d3FS?=
 =?utf-8?B?bFpCaHVpWTgvUjQ0VFAxK3Zhanl4UFRDcmpsY2N5UVB6SUZHcExKOTJwMVM5?=
 =?utf-8?B?ZjVWdWRWTUFUQ2daRGsxT2JHbklPM25HUk5YVXV0VWVhUk1iNXBIbkJBcWVa?=
 =?utf-8?B?akhDWFlyVG9ITlJ5MVFyc3VXT3BDMFcrS0t6K1NxbHM2K05nYWVQWENsR2Y3?=
 =?utf-8?B?N01OTHJYanFWWnhDV2tzcUtGT3p2Y1IzajNNZ1Y4TzdPUmJkMW9acTJ0Wkls?=
 =?utf-8?B?ajVQblFEVUhGd2czWGt0ZlV3TTY5SXlIdFNmWTE5czJsWkVYS2w2SGRjbWtk?=
 =?utf-8?B?ZFFOTW9XL2Zyem5UU2JKa3FKbDFPK1FyVUxTZVdEWFovMDFmN01iN0FELzMz?=
 =?utf-8?B?YUY4ZWsyN1FTVC9CdlFFeHNMaGcrQ05hY0lTdEN0MEM2SlR6amV6OXMza2po?=
 =?utf-8?B?eFphdXlESmErOXY3MExubFIwN2pDMmpvMm9RWksva05SRUhRYklwd2swOHhv?=
 =?utf-8?B?a2xvVlVRSUhZaU1TMFZkeG12bzdKbDBhT2N0QXVKZXNpcSsyWkN3NWZDU245?=
 =?utf-8?B?S0VkcFZUYmFxQ3Yra2hSRFMxNU9VYmE1bzE5dkNqakhOSUUyQlkxakRVbzI0?=
 =?utf-8?B?NUNGWCtJTThqZGNuUHRaZHdpVW5GWmtIRTJteThPUlloWUswUkl4dk9wWjBp?=
 =?utf-8?B?U2I5VjJTd2tJOTYvT2NZYXdHRmo2c2FNWUVTVDRMZEluNmdsWCtmWXdqSTdl?=
 =?utf-8?B?c0FZZ3RkNnZHbFdNeXNiZjRvMGE5TGlvMUhyYnZNbE5kNENBTWtPN2JKbUF0?=
 =?utf-8?B?QkZmSlBIcGpQUDVVMmtyVS9qNXM4REhTa2xYWjNHMGEvRTFDcVA1cmVCZWdh?=
 =?utf-8?B?MFBEakNIMGxUTnp3QU9lNDNvY2NSb0d2d21nd0N0V2lPNFJleVdXZFRuWE9t?=
 =?utf-8?B?NmFia0h4ZnpIUGVsWm5vSXVBdi8yTGNPV3ZDTjJ6ODZPZlMxU2FkcUxQWE5L?=
 =?utf-8?B?aThTTmhIZFpRb0J3MnBCLzBGOForOEtsRmRtc1cvMVZkSEZJQVlCUjRUZWFx?=
 =?utf-8?B?b0ZvS2o1OFNtWFJsY3hBTTlYN01CY3Vzbkx0SC9LZnFyaDIxL0ttaXBBUzVQ?=
 =?utf-8?B?L1pUaUo3SkZVcGRBcWZLazJYdWIxNzhWeVVtbFpWeHlWUkhqcWRjOTIxM242?=
 =?utf-8?B?VFN6TTFuY0haNWhVVmpzbzM5TWZwcTFqaC9NbEhXWm5ubmw4NXJib3BFZldY?=
 =?utf-8?B?Q0tFVUxzN2ZhNDdSU21WWEgvL3RNS3B0VFRaU3RqVXY2UkFvWFU2UnI2bnFm?=
 =?utf-8?B?eGFLRzd2VzF2VmNnQ0FQeDdCUmh6VUFwZTRIZ1dZWWx0RzNBMHVMZStGY09W?=
 =?utf-8?B?Y2lpSEVJOUVISm9xRkVSQXZhZ3p2ZFdla0hXNTRwQUZNbHV4ZG9zK1RJU2Vh?=
 =?utf-8?B?OUtubFN1L0xKQlFQSDc1aFNubm5xVGZhVEZ2c0UvVjVXWW9OZVVVMHJoRzVW?=
 =?utf-8?B?bTF6MkU5RXNwcmRqcDlpSVJFY2VHRFJPbm1idllHamZ4WVpablRoWTBaaDNq?=
 =?utf-8?B?QXdDN0tUUTlOQTFDaUVKeVRGd25ySjJ3cVhXSndBay81aU1YYlJheUlXOUht?=
 =?utf-8?B?a0FSWjJKdFJudS9CaE9XNUdUR0ppWGlacEJ5WnRRakZTcnl0Z0R4aE1rbnF0?=
 =?utf-8?Q?zy+UbLypEsBa/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y1JyazZFdW1Ja0lsdUdZWHdWWi9YVThyZzFPWi9OK1BiL0gybUYzS2twOWgv?=
 =?utf-8?B?U3dLZ0ZoYkpkREk3enI5VGtMc0MvU1hET215QVZXbVhzNkgvd2piTnVhY3Yx?=
 =?utf-8?B?VnZpVVAvZjJQekZwVmQ2V2t1ZHZuZUNKNHppcktJYVlMZHZNQlYrR21UNXYw?=
 =?utf-8?B?Qms4anBuYkhrMzg0MC93bUlyTDdRZnhkYTVFMFZudWNEdVJhMHRRa0R1QUNO?=
 =?utf-8?B?K3dOQkZVeVBSMUhIakFyNlh2bjU0SkxWWlA1STZDU0ZRbytjMkxnaDZpaGpN?=
 =?utf-8?B?c2dtS21uaUdXbDdZOU1Fb0NaOWlsM0NMOUhicnlabktHUThtTjZ4ckxUVGV0?=
 =?utf-8?B?SU9PSzIzZndtWithU3ZTS1FTTmVncGhIenlYaklFRWFCVmhEcXZHaHA2cXJu?=
 =?utf-8?B?ayttbEJYNWtlYy9YZHdXTGVKM1A5cFlENFFzQStEOTFUdktya0pGeHduejlV?=
 =?utf-8?B?OVZsamlRb1NReVRENzRuUHhnRGhFd3ZSZnVKVFV6YkZDR2p5UFpITnFtZ3d2?=
 =?utf-8?B?OHRseE1hWXhKemFPajBGWThPb1BreHBYQkIxQ1R4Z3pQYjhnc2hSQTFRaUJs?=
 =?utf-8?B?RS9udnY5SG5PR3VGOUY2d1hSdHBuMmx2aXF6WTRtZS94Z3VYZGhlRm1RYTVF?=
 =?utf-8?B?TCtrYUpGMFYxa0pCeEU1K0hMREw3aTVkTlJEWGdPU2hFVnpyNU1BSU8zQlNO?=
 =?utf-8?B?VHdLMGFqT3FHbXlBRG85c3B0U2drY25VbnVKa1VXMDlMTmFYcC92a0JaYms4?=
 =?utf-8?B?bGpPOXp6ZGlHaGMxbmdFd1lOQTZEays4WU05akFHRjc0MHczaFZFTGJ1VTVu?=
 =?utf-8?B?aFdLbWlhaElJSFBuRGNpWVgwMzN2MnNGbFJYNmx1RXV0Y2RlOUwrSTBqM2Vr?=
 =?utf-8?B?Nzg0dTFjejNmeDN1VHR1dDFyc3N2RWZaKzJLbkhKb244MFFrZ3kwMHBvZGhY?=
 =?utf-8?B?SVYrRTFPRU1TV0szbnlJdkU4MHRaODluWlB2NXI1MVZLSW9taUR5Ty9zYXR4?=
 =?utf-8?B?aGM5ZmV4SHVlaEdnY2tId215MTVoQXp2R0dOVzZyR21pY0p2OE5RR1ZneHRV?=
 =?utf-8?B?ZkZNVmpFSCtKbnlzSnNYZGxacFJwMUExbUlnbDBnZzlqaFp3TzNuTVY5bzhK?=
 =?utf-8?B?NjUydDJRckk4Rk1ZQThZbGVTWFBrZmdlSTJtMzNYMWZtcURKYkk0b3lxZVh0?=
 =?utf-8?B?SjBYMUpNM2R6c3htYmZza0ZvY0M0Y1ByQnl1bUFXWjdTQmlpdW1oSkhmeE56?=
 =?utf-8?B?QkU3Mk44Q1o4M1pRZi84Ui9hRFZQcEczcFg2ZHVBZVRFdGt1WXowUGF4bFk4?=
 =?utf-8?B?Z2FZMGJrZ3ZvRGZFa3RoNTRuME5JSjBiWGNNbnIxcC9OOUU5dStlVUtNTWE4?=
 =?utf-8?B?VHl5VTNNR0FRQTk3dVJ1MXh4TWRUYjhhVWh4cjNPY1IzQ1hLV3hiNkdFL2tu?=
 =?utf-8?B?TU00VGlwUTVoQWtQemhsNXZEYU5CNkxSUVZvbTZqcnBaOWxDZU1vM3N6Y3E5?=
 =?utf-8?B?cE81TkNSa0hvZ3d2WVp1UHNwR0NOVFA3dVZYRWZKWHVEVFVQMHdaTnZ6eWhD?=
 =?utf-8?B?STZiMVJIRGIvQmJuSHQ1bWROdUJ4U0F5clppMWRRSDBkUWg5VlZQQ3FEdXNy?=
 =?utf-8?B?N25NVzBrNXVac09HdkZuNi9qaVhYek5IcHlPbHVIY0xiR1didHU4Mm5vRVdq?=
 =?utf-8?B?RWlOYzhqem12UEhHemlKeUd2bnJQWGptdno2VGYyTTk2VFF6VytMdXduQVRG?=
 =?utf-8?B?WEwvYUROdkc4Y21mcHdmc24vcjhNd3dsUDdCZFlmb2NOYmgra3RCaEQ5OXFy?=
 =?utf-8?B?NlAvWmZFdHVobUhBdUhETG9TKy9MRHdjQ0dXWlJ5dU9VeURpVmN4YkMvVkpU?=
 =?utf-8?B?Mkh3dEpGcHc2MlREQVozMEd2UEhwWklJaTVHQjc5VnlmRUZXNkRCQUgrY3Ux?=
 =?utf-8?B?VVUzNmV4U3JwRDlXb2hJcHdPMmNwNGdEYnZla00zNHd6ZFRxMFdiWTBjUU5K?=
 =?utf-8?B?L29iTnhUa3l4bEhEdnBHYTdyTTdFdjJTR1VlZDU1dmkvaStxOUpoWmxuVlN3?=
 =?utf-8?B?VksyKzZKbGFhaVVhK1FPeXVLdmZUZ0thMXYrb2VDZHF0VXYreEtuN2pNUm93?=
 =?utf-8?B?N204U2dNMHJzSjFpRGpXOFF3b2JSQ0wrM0tsYVZIYVRlNDBWTStiNjV2c3dU?=
 =?utf-8?B?UkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 156b3387-04ac-45e3-f826-08dd5684186e
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 16:39:10.3770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ora2UTAAwXid4NYiG3nMhn8M+vNjdV/B7ktzbBfJQRTPo+72cdlvZMBQqxOyIcv61dKkvjkcXUFfdG6KXnHVQZE1/MOEubMUIL3P0uyvrUs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4858
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

Hi Andi,

> > This makes it impossible to use current->mm in selftests which currently
> > creates null pointer exception.
> > This patch allows selftest to use current->mm by using active_mm.
> 
> What is the failure you are getting? I'm not sure this might be
> the right solution, but it might make sense, though... if there
> is a valid reason.

current->mm is both used by the test and by functions it uses. It is used
as argument of vm_lookup() and inside of vm_mmap(), hence we cannot use
any other pointer.

> I would first ask myself why are we getting a NULL pointer
> dereference?

It's an expected behaviour when the system has multiple NUMA nodes.
The probe is called via work_on_cpu (pci_call_probe()) which makes it
run in separate workqueue on another cpu.
The workqueue is run in kthread and therefore we get NULL pointer.

> Why do we need to use current->mm? Which memory's
> should current->mm point to? Is it a kernel thread or a user
> thread? Why are we peaking inside current->mm?

This test is supposed to simulate user controling the graphics card -
get and set values in mapped /dev/dri/card0 file as a user.
It needs a mapping that the simulated user has access to. I don't know
how to let the user access the memory other way than creating a mapping
via vm_mmap() which uses current->mm.

> If we are hiding a bug with another bug then this patch is not
> OK, even if the second bug is less serious. So, please, don't do
> it.

Ok, I'll work on another solution.

Mikołaj
