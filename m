Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0E7A0091A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 13:13:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71C6610E29A;
	Fri,  3 Jan 2025 12:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hdtSjjiM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39F210E29C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735906435; x=1767442435;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9CfMj0b42bGNubB7KhvYjei1Q8+jz4mUz48MOEIf1hg=;
 b=hdtSjjiMERfaVS9UN1sjBLPXrugpkvhh6yE4Wy/gwLrslU2f+4uZp5am
 PpXrICGTh0SKRW4e4EbHErOeVWrCo8SPZ8zwhOmUXvcoLCbFRFc1ZK3SB
 K88S9VPSKFHnKh4MCyuu3d4o1TCUJYwZhbol5EnwLaGpsHhyemST9rPuO
 qA3n+62lT9lEM3mZq7LTU7jWxGJ08GUGdTRfGkrAI9HPaMCYqRDYIV9Cz
 Tc1ZmBh+Bc5h+QJc+iy1kdJ69eYbUGoAH02nU/Felyxxhox4wz1RHDifZ
 fqG6fwPeXXhHtljD/Nn3qqfqdVeS2w9+3QIyDYDI48f26RZY+RAjeGVm7 g==;
X-CSE-ConnectionGUID: VWjop3ctRfW/0X5P/ycGfg==
X-CSE-MsgGUID: HrsSfbJpS7+aImPNVLDAww==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="58621690"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="58621690"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 04:13:55 -0800
X-CSE-ConnectionGUID: KhR8Wt2jRyqGJIIRPxAjSg==
X-CSE-MsgGUID: PAUWLipQSCObRDxJTkLgrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="102290797"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 04:13:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 04:13:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 04:13:52 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 04:13:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fFJ+2fUy2LlyeXof5PPDFOmtfOJJBclJBTKLpHzI5mI9BkLP1q2gWKMsgRm8VMYd/xcxK9TapJsCWtVk4xkiZunQ3B9HmpXHQT6MNmzP8GLEobvZ5v2jPwg68fQ3TyDfw1UE0YiHHy2gqkg874h6pI4jlYZkA3zLuI7UhZFsNIP/3jNVyonj+ILRSWOw6/haxsRgIZB/XnIQEVaZqrJBsm5I3ZnLuY+dtrpLEZI4s1Raar3edbuGVGP5/7UcHFMm1iuLYTKjxhwu6COSIs6NmFXtcJ8mfCr/Pj6diSvw6Xkuy9tEc3B2yIfMsClfo4HXBllAvinjXfFWW/x5oJO9iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=68TGq3Nq2IIpjYKoxo0C7RbXLI2dD356kzbJdQSHbTE=;
 b=dPkpL9ueflikEfie8bLv3vom7/Ll5mMsnAHy+VnMseAcQ66PAtGeHLQ7ZghtI4EqqTgHqx6UtwyycaqG8ChjOa4+kUY9TsfDQoeQ23OX/vHeXZo2BtW4L2ZLLpS2Dufjrr0Xs47squti/BLS7TOHwu5a0iSNfZjpLKnLZeMP4tCy1yi5djGF/GlUyF5dx04nedQ9pJRJKIgjE+ZfuVlYZHTq3Hz+aIHI7E0j0/q5bdnTzgq7RMyv1sdJNz14kkQbVaVmkLxvFajkxkYh7keXRkIY000fqoRN1f/UKl4PPgCehft75xCuo9cgaU7E8cAjSVn4C7MSkGWNKLHoy1HRPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 12:13:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 12:13:28 +0000
Message-ID: <c01ef3ed-a1ef-4233-a84f-38fd4dc23120@intel.com>
Date: Fri, 3 Jan 2025 17:43:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/18] drm/i915/vrr: Add extra vblank delay to estimates
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-16-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-16-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0195.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5076:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e31101e-fdd1-40c1-7361-08dd2bf00796
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjU0aVNKc2pPcXpvNy9EcFlOaXBTK0U0OENmbGZMZFlwVVo5aSsxU0R4Z1d3?=
 =?utf-8?B?eE1yTVg2bG4rTDhwWkRsQi9wNEQ3eG92NWdTOHlQOFhheG42SEZ6TGplbTBa?=
 =?utf-8?B?dmxOQTNvaUlRY3JLL2I3VnBWZkVFbktGa1FaczRMK0FFLzcweXRpMFFwd0Nq?=
 =?utf-8?B?R3VrT2F4Wk1sd0MrY3NWVjNhT2ZmSUFzUDhlQ1NLV3ZjQWRWM05xdzNiTksz?=
 =?utf-8?B?K2FTTEFhSFdPSENsTXhIbktRQ0Y3OGtnajZjZTZ3bkoyZXI4QmlsT0szTXRU?=
 =?utf-8?B?eWhycjdwc1d2S2I0VnE3RHlGMTRQU3h1MThnQytkRnNPS2pZdDZWeE1JTjl2?=
 =?utf-8?B?djVMdi9uZDFnRjNxS2JlSU1nWnhqUWllRGNXSEhjUmZzT21aYmhXVkFUT09P?=
 =?utf-8?B?aE9wdWJRNU9iTEdmUkd1Y0hIQTc4bFVFL3BSYjJCTG5rQVZpc25WQ3BNZFpy?=
 =?utf-8?B?ZTNyRXo5bFhkN3BtN2tEajhCVkc1QzRZeEM5cTU3bU91YmUycTV0d3dML1F6?=
 =?utf-8?B?b2RrRFhqQ1ovcGtpT2NVbnZaeXJ4L0xOSUpETUZCbzJVUHZLNFlVQVpjbEpv?=
 =?utf-8?B?enJDdm1XcFNTbFEvcXVSNFJ4R09RZ0Z1NnhHM3l4eG1vRlljbjRzbDhQb3F1?=
 =?utf-8?B?aGZORlR1enZHNlNDSDBQUC9qeVN5SXpReDFiLzFVc2F5SWhSSTI5SFFPVXBk?=
 =?utf-8?B?VjNxNlFvVDRnRG94RnZvR3Z5ZjhNRDY5S3FOZnh5YVBCWVh5TktZaWZIdW4x?=
 =?utf-8?B?MTF1Sk5VcGVITEk4QTZRK0xwbFhRZ2ZieVc4Ylk4YktyNEphbVFwaEJKbTV3?=
 =?utf-8?B?SjZ4TlU2VUhvUFNSeW9VUVhmWFFQUGRUK2tnZEZKMFcyZWJlenFTM0NoZk1x?=
 =?utf-8?B?Y3AxQ3UvbER2ZjN4OG1LSHQyOEM1VHBwTzNzOTgxL0xCeEh1MW1SUVJERllO?=
 =?utf-8?B?ZURndjY3TnZUaDg3U3VXb0pJWjlBQTVXU29UNkxzYlFUSkdRMWIvQnBXQmNI?=
 =?utf-8?B?SWR2YzNGN05lM0lVUDB3Q25mMHE3QnExeE9qZm9MU1ptWTFjb3M0TGZkNnMy?=
 =?utf-8?B?bjJZTDRKVkRSRVRqaXRWZUxiQzN3ZUd2WW5DY2hZK0NwTHZUcGVrb01pZ2l4?=
 =?utf-8?B?OFZtdWQ2M0FaRVFmcHYzWWV1SkNqL0NNS2l0SDM5VVJjdHEySy9lNVZnd3dq?=
 =?utf-8?B?enZqblY0M3IwaC9hY2R3NWNGZkNKSHd6SnhSQ255bUdXcFA5bGNReVhpd1dW?=
 =?utf-8?B?TFJGaEdFZlU5M040UDRNRnIvQXJEbndHMnBENEJKaGtBRWhmM1FxaHVTeTdU?=
 =?utf-8?B?bnZvbEh4WEhmRk52R1RmU1E4Mm16WnZlUTFkVFFjNHQzaXpublZCOTVxSndj?=
 =?utf-8?B?bXJOeHBGUEVKZ3d4c2s0ejJCMjJNN3RjRUV3T3k0WU5xenl0MW1pZG5QWUlY?=
 =?utf-8?B?YVBETmhVd2dHYTluRWw3U2ZYTkNjN1lySFR3bWVmcFlCTERXbHJ6SXZjd0Jr?=
 =?utf-8?B?L2NFd3NmY1FKK01DU2Z5SVJQRytGbGhyQzdvaHE5OHllSE1MZ1dxRGIrM1JW?=
 =?utf-8?B?Zys3bmxBUllydnYxaGxmVlR6RG1zbG9iNlh1a1JyY2czQ1ZVaktXNURKS2JN?=
 =?utf-8?B?RVdjOHVPV3VZRHFmYW5wcGpSYytralVQWWtMbHdyVVhlS1lBcnkwZjAwUVVa?=
 =?utf-8?B?ZUhCRXlXeXo5eVpONDdVeEN2SmNZQkNubzhwZjJYOHM5WVlkSGVRRURvRkto?=
 =?utf-8?B?b09acUx5aDFtclVaemFrdWdLR1dRNnZmWkFZcGFFUitXeVV4dThTQzgrRmZF?=
 =?utf-8?B?aUJRclhSMnYvZTJ3UE5ud2RMbkM5aVVYY2dSakE0MEFnbXlkUk13cnFFdnE4?=
 =?utf-8?Q?Avl/egDQnqcJH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnJZRjd1VTk3aXQ4Y1NQNWx2Y2I2NXZRR3V0T3RkNkErRmRKcURsRWI0TXhL?=
 =?utf-8?B?ZDA4bWpYekY2R2FsWGdzMTdlVGdDVGVaZ3BwNENMRU93RjNMVmdHVmgvR3dX?=
 =?utf-8?B?UGhSWCtvWnJ4QmpZSnBGV3MvSXdrRGMweko0dndBaWEzYURnNXZ4S1REdXha?=
 =?utf-8?B?VGRBbUV3Y21JV0ZQSjZ5UnQxSVF4RFZHY1BPNXF1ZE1mb1NOQmY4eWd3aFFB?=
 =?utf-8?B?Y2tZeHRIekVqTjFZZkdDSUNmeU9aSVF0cXIzWjBzN2xjbXVDYlZQdEJRYzd3?=
 =?utf-8?B?UmUrbDFoV05nSFNyNDJhUlkwKzdXSDF0QSs2UE95Q2xWNVcxQnRJL0J0cHRj?=
 =?utf-8?B?ckU5WkNDMzFJUTlGcGJza2wvNVRMRzBlcUlyMWJSRXZDQk44dHNCSG8xVVB5?=
 =?utf-8?B?YU84UXI1eFcrOERDSG1DUU5uSVhEc1lIQ1hxUXNZMWg4WHI2b1JKd2N0S2ww?=
 =?utf-8?B?R0tXeEtqTnlJelV4RGoxdTNQbyszTVYxM0o2WTdhU2VyTGJ1Mk5rSCtUTGpC?=
 =?utf-8?B?dUZEcVp6VFdCY1RtV2l4VVNNM3ErV1MzNW9tS3VsSU9QYmZOT1ZoWVZibGRy?=
 =?utf-8?B?dWpwS2VRUzk5TUJDbVZGNThkUkgvMHdzREtBV0hkSkFpa01lcjB0SmFxMHBP?=
 =?utf-8?B?eGtFbm1LMGhXb21UMkJmQUVXaVlLZ3FPVGQvd1FwK1V3TEJQem5USmt4dlp0?=
 =?utf-8?B?b2pwRUhJdEVVRVZoVmtuQXhQb1IxOGNURHlvSjJ5ZkV4NmZVNTRxcWZJcE9V?=
 =?utf-8?B?NlJWbmoyaFJTU29lb1RON2tZYW16blB3eWxnSGEwWnNjaVY4R2h6SE9qS2NS?=
 =?utf-8?B?ZHVSRXh2Qm8rZVVETHFHS3dnWjZuRUFKQnhMdElWY0haNkdkcklibWxZL0J5?=
 =?utf-8?B?RHo3WXpCYUN4aEs5UThzcXlpdG1LSk50MERkS1BLUjNRam9TbmJDYlNSUmZi?=
 =?utf-8?B?dkVvbG5rR25uV21weUF2ZzVGbUhNbGdNQ0ZuWDVyTnFqQWlYdmdRb3BWNGtI?=
 =?utf-8?B?Vk81Z0xrbll6cTVxR0I5OGgycEV2MHJsaWlYd1NSazlUcUZuWUdoWU1sb1FX?=
 =?utf-8?B?Z0ZBREpacXZrRllBbDg0NGtDTTV1RXBMdXRJdUNiSnlVTlU3VE00TTF6V0N3?=
 =?utf-8?B?dXV3Y0ZFMExySnBndlBUdFZtdXZ4WmtRdW1HTnVnR052U1hLUXNrbWREcm1t?=
 =?utf-8?B?TGU5cWtzOVBYN3NUYzU4cEwwM0k5R3ZqUkJCdzRxM05tTC94TEpqSVdNRTNr?=
 =?utf-8?B?ZisrMzhOQVppUndzMWJ0eXhPU045bU1kT3g4ejZMd0hYcGVadnZJanF0cGFs?=
 =?utf-8?B?UWd1MDR2eVhTWHF2bnRkbVRaa3lpRGFvUGVldmhhb1QrN3F4dEYxYjRyelBV?=
 =?utf-8?B?T0ZaNDF1QnpSdDlWYjk3czh4VlJHb1dDVWRYVDc1TkpWNGM4VlcwMENtdVRx?=
 =?utf-8?B?LzM3ZDZMVmFPbkdNM0FWbWVHS1JRSmNhbnNZSXJDcVNqaWx1ekw5ejR1Ylg1?=
 =?utf-8?B?dnkvYVBMTlBtbTVLSnZWQ0hBYXB5K0RTcGc5MkRvOHZNWmwrcHVWMWpCUTly?=
 =?utf-8?B?OHVuMGhFZUhJeWNDb2hHRjFKUzAwQXVNZ2xWbVdOemhHbnU2VEpwY1JubUJT?=
 =?utf-8?B?SHd1ZG0xb1hFR08zcjladVdITDZ1bENzemZPNWF3QWJwMzlMNkJra2xzZVNp?=
 =?utf-8?B?ZEJLUDBGVndSQXhwKzJoN2FjNjlnNnZ6Uk5Nc1hXZUJzY1hiWm1YR2JkK1JC?=
 =?utf-8?B?QSt4Z3BKK0F5aHlpdE9FekdpbkdtZW5qK3hOSU5WM2Naelp0WUpROXZackF3?=
 =?utf-8?B?WXNGU3BDejJJODZKUWY0WVdVa1kyeWU5alh5RHFVRW12YXoyR014OVJnMUNZ?=
 =?utf-8?B?bWVrZVZlTEFDeENVMlhrVHIxUDhJSXRUbXo5U0lBbHFDdzNKWlpPeVZMbG9M?=
 =?utf-8?B?amlaMVczRGNmN2U4dVd5aUVLUTJnUnpXVlpTVThoNTZsbk9lYVgyS1BQR1Va?=
 =?utf-8?B?TmdEbmRrQjd2MHQydFdnL2F0TDd4dFF4N2tVSkNQUm9WTUxBa05jUHoxQ2ty?=
 =?utf-8?B?Z2d3R2V6NCttZ204L2EyZHlhR0R5bkdUSWgyTUphQkpzTThTTk15SGQ2aTBZ?=
 =?utf-8?B?c1RmWU9IellTdkNMTU1DMVlzbjh0VXZpSUdPRXhFeXQ1K3lxcXhLdmFKcU5j?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e31101e-fdd1-40c1-7361-08dd2bf00796
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 12:13:27.9501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Oz8JulJTSu2rcowmm3RlvSqMgWXbduqQVqPju4U789WhkkQPY32X31SmDgY0ObS4wbD7Ee4e04O8F0n6eITTAwvxCUFMJMa9wdS/tMqG4Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> On ICL/TGL the VRR hardware injects an extra scanline just after
> vactive. This essentically behaves the same as an extra line of
> vblank delay, except it only appears in this one specific spot.
>
> Considee our DSB interrupt signalling scheme:
typo: Consider
> 1. arm the update
> 2. wait for undelayed vblank (or rather safe window with VRR)
> 3. wait for enough usecs to get past the delayed vblank
> 4. signal interrupt to indicate that arming has latched
>
> If step 2 waits for end of vactive step 3 needs to account for
> the extra one scanline, or else we risk signalling the interrupt
> before the delayed vblank has actuall elapsed. So include the
> extra scanline in our vblank delay estimates.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 33 +++++++++++++++++++-----
>   1 file changed, 27 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c08dd1e5cffc..98dd92316595 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -76,12 +76,33 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
>   	}
>   }
>   
> -int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
> +static int intel_vrr_real_vblank_delay(const struct intel_crtc_state *crtc_state)
>   {
>   	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
>   		crtc_state->hw.adjusted_mode.crtc_vdisplay;
>   }
>   
> +static int intel_vrr_extra_vblank_delay(struct intel_display *display)
> +{
> +	/*
> +	 * On ICL/TGL VRR hardware inserts one extra scanline
> +	 * just after vactive, which pushes the vmin decision
> +	 * boundary ahead accordingly. We'll include the extra
> +	 * scanline in our vblank delay estimates to make sure
> +	 * that we never underestimate how long we have until
> +	 * the delayed vblank has passed.
> +	 */
> +	return DISPLAY_VER(display) < 13 ? 1 : 0;
> +}
> +
> +int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	return intel_vrr_real_vblank_delay(crtc_state) +
> +		intel_vrr_extra_vblank_delay(display);
> +}
> +
>   static int intel_vrr_flipline_offset(struct intel_display *display)
>   {
>   	/* ICL/TGL hardware imposes flipline>=vmin+1 */
> @@ -131,7 +152,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>   		return intel_vrr_vmin_flipline(crtc_state);
>   	else
>   		return intel_vrr_vmin_flipline(crtc_state) +
> -			intel_vrr_vblank_delay(crtc_state);
> +			intel_vrr_real_vblank_delay(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> @@ -142,7 +163,7 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>   		return crtc_state->vrr.vmax;
>   	else
>   		return crtc_state->vrr.vmax +
> -			intel_vrr_vblank_delay(crtc_state);
> +			intel_vrr_real_vblank_delay(crtc_state);
>   }
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> @@ -310,9 +331,9 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   		 * vmin/vmax/flipline also need to be adjusted by
>   		 * the vblank delay to maintain correct vtotals.
>   		 */
> -		crtc_state->vrr.vmin -= intel_vrr_vblank_delay(crtc_state);
> -		crtc_state->vrr.vmax -= intel_vrr_vblank_delay(crtc_state);
> -		crtc_state->vrr.flipline -= intel_vrr_vblank_delay(crtc_state);
> +		crtc_state->vrr.vmin -= intel_vrr_real_vblank_delay(crtc_state);
> +		crtc_state->vrr.vmax -= intel_vrr_real_vblank_delay(crtc_state);
> +		crtc_state->vrr.flipline -= intel_vrr_real_vblank_delay(crtc_state);
>   	}
>   }
>   
