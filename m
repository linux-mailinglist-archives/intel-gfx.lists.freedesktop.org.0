Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D82293CD6E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 07:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BEA10E920;
	Fri, 26 Jul 2024 05:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iy8vpYMb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B6710E920;
 Fri, 26 Jul 2024 05:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721970504; x=1753506504;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4zC+9Ux8NmOlXTM5kT5lrPpaxr6Pn7aeHE4UZC4IrwE=;
 b=iy8vpYMbsCMvvu3UYkFakViHkPxWr/r+6a5Yi1QJj5Sjr9guojiuY1c2
 +ut55gY+K/xOIu1Cdmqv9+lwiLPHOn4KWtT02IV7ymsroV8s9bhq/BLy7
 OCR1lUAXToddh3GM+wm1qai/i0DECHhADJ76HYdtNbyHRO7xiDxnfvO7+
 heBNPAMAnYX9YT0K+Xsvw4YH+1DgchwN4XOR08LRziOiAFY547DMVw3DU
 goroRhB5Ka67aKFBVW12BWkJuIGRTrAEGyO2M5d95U+PwZ2TEHPp/pWer
 5lJTxxYPzkUfxfvvL39kxJ2Odg+K2vYjLVxIYnyiYFEYFL2OwIJ+cabC0 w==;
X-CSE-ConnectionGUID: +j9A6gxSQxWnbKE3X/0TVw==
X-CSE-MsgGUID: FLf6wnZoSzeCPoPE2Fp0sQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="23505638"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="23505638"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 22:08:24 -0700
X-CSE-ConnectionGUID: urG4NJXCT12nyVBI/edWMQ==
X-CSE-MsgGUID: H7BMRGvBRhGmtVpMs+hWeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="57744372"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jul 2024 22:08:24 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 22:08:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 22:08:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 25 Jul 2024 22:08:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B/GqBEh/J1wzbwFweFgPAAS/lUn6q6Du7XaYVx6sPdUNGCkywaEgyPtcFhKyLdjjMPC3DqFWgHdf8p6MQ2yAJTr9SZ3wL9cuJMtBN/bsFkqtlF5TuA4M4J7HVB7WgitDO9klP7yJ0KEbjUInR6Zj3MUnBnwfBWt9WcjnE9iOWZuhnF/01Pq2B7VoFKWt4REJe3dYVZqmNitrs1iXeTyvGPPh/EuQh2kJDaOdUOHNhq74Zku/iq+GTJX3jJVgj12xE52yyg26AjoBJm4ywp7FWLJjycBvTlUhfCX4Juy8mimZSr8yUehT6hEybFL8T5r6eqJbkybvdDRrO64lJ/8QoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEQAr18JxO4gFarGrH/f7S+DqZ84lbyGfU6HRiSw/Xw=;
 b=k+mgndQrZM3q3LTyxlMCv+jHCzQWqsmmGZ5eIBRBkBGT+PWRNiXAsoJT66nUlie/mk7hzcu3qekmfXfO2vWcc0uvuZs6d+2eZ1GCHRVw6LElsPoDZ/htcQh4XdJnCDGaM8jGVLq1MzrjwNPPAzVGOSGPt0ctILFuigCI75Cmj2WD27JrwKS5xve6YHHfYbj9qlF5vraW475uKNmVVlouKMUO32M53jjT0NJT301OJtnf8yiGKgtJfXcLcLu5PP/w6etBuElPlfnp9OHyNAVIFwtgBogtWJW+xuzIPGP+5Qc3sQSJFHQfdr8d03bUIMf/vjOCU5sFwkuH1KSXQhxwWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by DS0PR11MB8184.namprd11.prod.outlook.com (2603:10b6:8:160::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Fri, 26 Jul
 2024 05:08:21 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%3]) with mapi id 15.20.7784.020; Fri, 26 Jul 2024
 05:08:20 +0000
Message-ID: <5ee20318-0645-44d4-870a-beb58e6d5939@intel.com>
Date: Fri, 26 Jul 2024 10:38:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20240724165952.1605698-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240724165952.1605698-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0006.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|DS0PR11MB8184:EE_
X-MS-Office365-Filtering-Correlation-Id: a9a0da42-c467-4180-07d3-08dcad30f7b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c2RXQlovOHo4VjNwbTJ4NWVMa2JtUXFJU3Y4MklwSC9TZGVKclRHS0ZNVUlw?=
 =?utf-8?B?S0ZzeHZTN3NEL2l5ekg2UGNtenNYUzc3K1A1ODk0WnhVOFEvWTY2NklsclEy?=
 =?utf-8?B?WThXVjFBcFhaTEcySUZqY2ZKM1JIZTVLU0ErTFh4WWVIWnhMekJSZFBjT1Vo?=
 =?utf-8?B?eURjOW1lNEFieHVFekVSenlOQXlKd3NSS3NzMWtKVXRtbHVBYWtPaXI1OWlB?=
 =?utf-8?B?U0o1UVlCODJvMnhBUkIxQk11UUpVeWtqRGpvRjNXZ3RudElINjROdGV6NVpa?=
 =?utf-8?B?ajNQVVVyVGNoSXF4VmdyckpxMC92cjc0NThuWGNpN2hvMjh2UHVKS0pXSmZJ?=
 =?utf-8?B?dmR5RE5mWFAxS3hDT2xsbnhMQXMvaXNPN2ZRY29BVGZyckhCelBySS9NNXB3?=
 =?utf-8?B?bGxOZktzYUgzbFpocGVoYXEyZjRzc2VsWXhnOXA4eEdmUWduZlN3cVlaYXVQ?=
 =?utf-8?B?OU43cXRJSGIxVzlHZDYrWDIyY1ZBYWVwME9EaVJJWVFwSnZNQ1FzVlM2ZVlM?=
 =?utf-8?B?WkNMZ1RsSlo1ZXFucEtYU29IMEFJT09SZk41UHlGa1RUSE9GMUt6cWtockFX?=
 =?utf-8?B?TERYY2tneWxLTW9PY3hWYzlLWk41V3k5cFZyWDdpbUNpaHZZdGRUcjh5WTVn?=
 =?utf-8?B?VGZXbFA1YTkvT0tSMUtlV2dES1NxRWozS1o1QkNMVldaNldCMEFoQkVESGds?=
 =?utf-8?B?d1R1S2s4b3pyRWd0NUxlRVBaU1NVVFAwOUdHc00wUmVIazEzdkE1KzFWa2hN?=
 =?utf-8?B?dkhNVVlrQXVGcnJnUFVzWm9WZkR0SDdjTDZuVkNkVVUxVkt6YlVHcHlFVjBW?=
 =?utf-8?B?TTBMV2YwNFhuVUtMeDE4WUdnQ3g1K2lpZFNXYUsrUjM3bU95VVlwOU1DV1Zo?=
 =?utf-8?B?WjVZYmdBdno5YUhWY1hmWVI3czJCQ0JuN0VXdHMzbDFlSDBKMmQ3a2RHSnJw?=
 =?utf-8?B?eHA3aGRENUZYN2JLU25Va0VRQzY4SjdqRzh4YmVKY0oxb0t3US9wUzY0VG9h?=
 =?utf-8?B?UHFCYmIxcjMyNTFVRUp4WkJYSkZDTUtWTm1nM1cyM0JFUkUxbDF1aFhRYTU2?=
 =?utf-8?B?TFQ5K3RCVmNrc0Z1dlc2RnVnaDNHSWxkMC9XT21WN3hJUVpqYjUxSDRuWlpl?=
 =?utf-8?B?YzZpQzFLSTFLUzY1bHRLMVk1LzhSMXRFQTNhTXdBRmRCb3F5SlNUNXJrcWRI?=
 =?utf-8?B?L0ZxVkFvQ0RYRXlFYkt4bDMxN2NqUTZ4eFRlcGVhenI3bk1TZ2VJYlZ6Q3or?=
 =?utf-8?B?RzB1UkZzZlgrZUJtTWhZcjBvWW93ZUQvcjZGWnN5eFJPRWtReUUyeUYxdVlZ?=
 =?utf-8?B?eVJNVzdOTFdnVERJUzFvamVPVnBFaVl2Nk5RVGRGR043ZXg2VUlPNkxMbS80?=
 =?utf-8?B?OWVpQWhGZW53MFJKSThtOC9YZm1yV2VQNWNzaVhiT2piQnozZW5RQVljL0h4?=
 =?utf-8?B?KzJKWkxrUGowL1ZodWRsemZyODNMUGVnSmFzcUppWUlGT0FJQnNUSnFjWTJ0?=
 =?utf-8?B?R01rR21PR3UyZDFNK3Zyek9CSlBVWUM4NmN1bFJsdkhyaUxHdDhWcnprTGN1?=
 =?utf-8?B?Wm43VUgvcXdrNnBLWEExUzBOcFd4Umo1MjhKdFUwZXhJeEZwLzFOWE82cTZ1?=
 =?utf-8?B?ZzJjcVVmVW1UVVV4dDBBMGdKVFFKbWh2SWNTMTRsT1hNUWFKcDBjRUpkM2t4?=
 =?utf-8?B?eEl5WjlCWk55REJvYkRHUVhIU1J5YUtqU3lObU5MY1FrY0M1TmY5QlRtRUtP?=
 =?utf-8?Q?872E3fTukxyPmU7++U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2w1VTN6Qnl6MTJZUGdKNUY1eWZqOXkwVUw4ZXMxbzh4aTBYdVVUTm42bmR6?=
 =?utf-8?B?dDRYdVcvS1ZuczJneGI5ZnFPaXZBWGhtbUZuY1VPOGIwdFJEc1I1SG1jR05z?=
 =?utf-8?B?Sk5YMXU5SkxvbW0yejF4a21neVVubVVMdzI1RGxzUjNnOHBQc3cyanFCcWd6?=
 =?utf-8?B?RHltU3JiUlF0K2ZHa1NhZXYrRXUvd25nTk1xdlh1L1VSeXZkRzZoODZLeGFy?=
 =?utf-8?B?ZU13bHVlOWh4Y1lnSUh6SHU5WWFFcFBBU1ZTU2JXUmE2bnlnaTNzNzQ2VkZy?=
 =?utf-8?B?OVJjd2VXOFhTeEp5VmMrRFlmUnhFUktkMHZVSzU5QjZCSi85WjBibHpiMElQ?=
 =?utf-8?B?OFlFVkttVlhzdjRkYUFLNWFGQmFHZEY1czVOeUJLZU1yZ1BIckVWc0RHNXdB?=
 =?utf-8?B?cDI5akZ2QVA3MzIvWUdHck8rNDlTZ3RoQ1FPSWYwdHIvWXIwY0pLeHZNVGlF?=
 =?utf-8?B?ZzFwOXcyNnBPYVNONXA1RUNVU1lFbTZDdlE4MjhsRUU5VThBb0lvQ3Jabkh0?=
 =?utf-8?B?RHBmRG5xM2wxZFpyNitWa1VtWDYyNnA3Q3J4NHhtZ2UxRGNWN05MZUJOdVNK?=
 =?utf-8?B?NzBLclNiOS9jY1pJWjlQUlhab3Qwb3YzYXlZMlM1Qis2NGhTaDRNTnhsZlF4?=
 =?utf-8?B?VGNYM2dEQUd0WkRrbW54OGV4bjc5eVpaZDNRMUhORkJMV2ZqQUNJRkl1S1R5?=
 =?utf-8?B?RWFPT2xud0prVEZiWlFCeGVCN2x3NWxJRHc0OFZaSmR3aGxSNUh6cC9IbGg3?=
 =?utf-8?B?V1RjTzNhZUhab2MvQkMzVGticmNIeWxyZDlYSkdVdjQ1MFlTQmZOeTRiTkFB?=
 =?utf-8?B?ek80Z3hTTDdJK2NFNjQyK1JpSmNQV0tNTzM3N0N0b0tOVlFhc1YzUWZ0ME9l?=
 =?utf-8?B?azRtWnR6b2xkWjBadUtLNzNhTEgxbmV2SVlzTzZwck50VzFLT1BpSmx2SEU2?=
 =?utf-8?B?ZEVxK0RRY1ltRjhhaFRXNEh1NmNMbE82M2YrUkJKeUxuMnRCTjEwTzFyOEc5?=
 =?utf-8?B?QzZiQWd6N0xybjlkaGIzOWRwMUd2SWFyVk9USlFzRG1rOFc3NlNjYzJBazNr?=
 =?utf-8?B?c09QaHQzNFZvVGMxcjd6Rm9EZXhPUkdnbW15dmNkUkw4bTJxRnJnOC9OcSt3?=
 =?utf-8?B?cjgwa0pTRnZMUHh0VGFZc1pJdEdYT01JaHlPRjkwZ2g1Y09KTjM1MEFLallE?=
 =?utf-8?B?dlhzdWFqUGFoUmxvSUVTTEJSZnNocUJzVTVBQjZxMW9FNDZHTjNMVE8xYVM3?=
 =?utf-8?B?dStFUkpjSGNubStVUzNOeWVibnJGVFo2bW8rb3g2NlNDZnJleE9FbnpEa1Rw?=
 =?utf-8?B?cDFVWHcyemlFY3FJcUoyZythTmcyd3Z1QVJTTXN6UWF2T29XUGwrdjYxdUEw?=
 =?utf-8?B?SDFhQmVMSXRYZ3ZjZFhDZDhDdExVOXdQSjFLY0lIYU92dFRlYjdnd1J0N0E5?=
 =?utf-8?B?NjlTWTJKUDJXa1dJYTJDQWtTcGhwaEkvcFl3M1VoZHRZalNVOEZYNHVDVGxJ?=
 =?utf-8?B?cmR1NU1DN0taK2p1cVBkREJPVEYxTXhkUy9jZVdkSjNjbkRsR0dGOTEwYTVR?=
 =?utf-8?B?L3ZMYkNMSGtLZk9vYzJzQkNXbGYzdEVZWDRXem85L2EwK0hGT2RsT2IvUUVu?=
 =?utf-8?B?K25sNCtKRU1NSzZ3WHI2emtFOTdEdlZ2UmFNS3U1Y3JpYThTQnJ3NWFSVFdT?=
 =?utf-8?B?UnVEaytsYUVUeWtmVUtjQmhkTXgvL05wWU5qNW9jNSt4d24wSlFFSnFRVjhp?=
 =?utf-8?B?SVBveWVGYm1CL1lwSWM2ODJJSHNkZDZhZmlGLzhiNHZZUWlqMlRjS1ZlSlQr?=
 =?utf-8?B?U09iZ3JZLzNEeWRNQXdVbDMyQmUvNWtHRlBGNHNpNTVFZS9jRkdYUXNMZHZw?=
 =?utf-8?B?b0ZaQ1d4TGl2SmVXbURXUWQ1eWFuQ0JpaEtlaXZWbjh6Y3h5N0NpeFhzQUNo?=
 =?utf-8?B?NExYYWlrd1hkWHp4cXAzbnJ6UWdibnBSOWt5R3JCdi9NSjhva0VEbEZrMFYv?=
 =?utf-8?B?Q0JzQWRnZlR1SlNXTEliV3BmM2txSEtab1I5Z2U2Q3pzdnUzV0FKdUpWYVFp?=
 =?utf-8?B?SmFGNmZHakhhczFFSG5ZMjVSTDdsWDlMellEMjZtNk5qZzkycU91UmRCdU9m?=
 =?utf-8?Q?LiXLsTrJnfWC1iHca4RMIHnKl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9a0da42-c467-4180-07d3-08dcad30f7b0
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2024 05:08:20.8312 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vt1GcjMuPRC8CaniG+6VtRo2/+qkrXqUk93LYjOf/J4X56ANnjhvUATsaHmv2dlUV8c03rDF0YB3rZGTv+bSKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8184
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

Hi Vinay,

On 24-07-2024 22:29, Vinay Belgaumkar wrote:
> We are seeing several instances where the RPe, which can be altered by
> pcode dynamically, is causing subtests to fail randomly. Instead of relying
> on it, we can use a mid frequency value for these subtests and avoid these
> failures.
> 
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_gt_freq.c | 37 +++++++++++++++++++++++++++++--------
>   1 file changed, 29 insertions(+), 8 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 93ebb5ed0..442f5658f 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -26,6 +26,9 @@
>   #include <sys/time.h>
>   
>   #define MAX_N_EXEC_QUEUES 16
> +#define GT_FREQUENCY_MULTIPLIER	50
> +#define GT_FREQUENCY_SCALER	3
> +#define FREQ_UNIT_MHZ (GT_FREQUENCY_MULTIPLIER / GT_FREQUENCY_SCALER)
>   
>   /*
>    * Too many intermediate components and steps before freq is adjusted
> @@ -70,6 +73,16 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>   	return freq;
>   }
>   
> +static bool within_expected_range(uint32_t freq, uint32_t val)
> +{
> +	/*
> +	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
> +	 * that tolerance.
> +	 */
> +	return (freq <= val + FREQ_UNIT_MHZ) ||
> +		(freq >= val - FREQ_UNIT_MHZ);
> +}
> +
>   static uint32_t rpe(int fd, int gt_id)
>   {
>   	return get_freq(fd, gt_id, "rpe");
> @@ -128,6 +141,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t min_freq, max_freq;
>   
>   	/*
>   	 * Negative bound tests
> @@ -142,16 +157,18 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	/* Assert min requests are respected from rp0 to rpn */
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rp0);
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	min_freq = get_freq(fd, gt_id, "min");
> +	igt_assert(within_expected_range(min_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rpn);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
> +	max_freq = get_freq(fd, gt_id, "min");
> +	igt_assert(within_expected_range(max_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rp0);
>   }
> @@ -168,6 +185,8 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t cur_freq, act_freq;
>   
>   	igt_debug("Starting testing fixed request\n");
>   
> @@ -190,17 +209,19 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>   	}
>   
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	cur_freq = get_freq(fd, gt_id, "cur");
> +	igt_assert(within_expected_range(cur_freq, rpmid));
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
> +		act_freq = get_freq(fd, gt_id, "act");
> +		igt_assert(within_expected_range(act_freq, rpmid));
>   	}
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);

We should cover freq range subtests as well.

https://intel-gfx-ci.01.org/tree/intel-xe/xe-1667-9f8e597a1c39d7e316f9479e6f627c15dbc58e1d/shard-lnl-7/igt@xe_gt_freq@freq_range_exec.html

Regards,
Badal
