Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 129C5A9AD71
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 14:30:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6CA10E7DE;
	Thu, 24 Apr 2025 12:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvtdOJ6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B67510E7DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Apr 2025 12:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745497805; x=1777033805;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FQZnvjVvxmqq9+FvUSYzcf3hvdDuMiMt6b1t9LyesOw=;
 b=AvtdOJ6lQSt9podAbAHCQPqAjDjIzJSdyUY1UhjJ4bA9sblvu+j3C0XA
 CoLDNWGhIcQuTqTN5U/fbAqOav3k4WidxnXGTmTh5dYh2QetwqjadRDpd
 UNKCdGkxch5YYe9hUSzeh69o77Z//O0dhjqAD7S5FCv5fVGQpdMy7vxeK
 Rbo0VCuazm4F1hb+Us/upoGu1RZH2bZ+KUZoCb8pBEd2H/Qf/uIw3OsyY
 Ghnbvb1u4C0SKat+w/NIfy+AjhfQpOW4nDk0b5XSNSx1hjkrgwAj1K1li
 rjKavLeptwKP0qhZG05UkXutHr+tBdV/goD09xki26FvvxApc16UGLWr+ A==;
X-CSE-ConnectionGUID: UGQrSEluSieGaN/+mzMhuw==
X-CSE-MsgGUID: 3LS0es7sRJySzRtM3RZ1gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="46999487"
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="46999487"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 05:30:05 -0700
X-CSE-ConnectionGUID: 81Zq+qFGRgqt3m4DKCQ9SQ==
X-CSE-MsgGUID: ZitrlprIT2isOu6pPU4zXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,236,1739865600"; d="scan'208";a="132908463"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 05:30:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 05:30:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 05:30:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 05:29:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jeCn0E0B4JSiw3/dXoiH9Hcpr9fv/8hOaVVlSNHgTOcHceQQcZ68LqYLlOVaokQ0jlSCylUts/CcsNy7uohv6deuzOGVF8t5Md8OKGErdxdz3/8LRixqt8MqDliCU68uQTVw7CSFx1fAADt7ivvtLnhybWrErIQiSl0uUA4B4ttT/UjIZa+eUL3OqDA/MioAx1OaFDBp//V84SZeatjKfXmsI/TON9hwmAZikrHjkImyowxvJ1vzLA8WnBWEFHdGmkyBMBt91MpAw1IrCM1MbqlMJ7uMrU8VhrRBAG4fkjnTNIuvyRSMQDa/vB/ugPVtWp1toW4Hx5zurT+Bk+spSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d2ccUssuQ/SlKM+CELkLzu9nrr6oVZSc8oXZNg/m2Cc=;
 b=t9DjQI0BW/GGzpynVgNgFVmCXjrdbxlIHQyengbC5X0IlZLxjkoZ/2nM3eYSdUHP8c5+hlIdBddTCMjN38OPOUDmUGW6Sv/qmUhNzYtXOm9jvO/V8aBEiy8OD9+RefMtEiEbReLa63mT3TIMw7aDYpvGPz52RJbWDWbHh3dbCMRITey9l3knV8xBxh+eDfFSfcsD/mmKcJ5KW46WwqsaUYccGVBZE4oO8r3Zydh8ac6B+/O5UipJx35sfgbKT4PbNFPkY92QIXmZE006tt+q1g8a4rOJUbiWnZzeSNV0Dn9tIzWHPb5Eh/ewGUolXvTebE0aAGQk43/fm9tFyyl60A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DM3PPF9623118BD.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.26; Thu, 24 Apr
 2025 12:29:56 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8655.029; Thu, 24 Apr 2025
 12:29:56 +0000
Date: Thu, 24 Apr 2025 12:29:47 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Message-ID: <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250416103640.212269-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: DB8PR06CA0061.eurprd06.prod.outlook.com
 (2603:10a6:10:120::35) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DM3PPF9623118BD:EE_
X-MS-Office365-Filtering-Correlation-Id: a61053e2-72b8-4694-cd1d-08dd832bb874
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RlZXZUUrL0pFRktsc0pqVENVVitHODZ1bFoweVloQVhFdVlORjlsRjZTUkFu?=
 =?utf-8?B?SXZ4cEFydnphVlF5emtWVzhxRTE1a2pQS2swS3p2Y1pxNFhObXVvSEFDOVh5?=
 =?utf-8?B?Q01UT3lqNlpuSGVnWWNSWGpCSlJDZVVtSHZVc211aWJObVZHdUhNV1NxUVpH?=
 =?utf-8?B?a0o4cit5eHlJam4rV05uNGU1K3ZaTk5La3NIMTJJMEpwR3g3ZkRDLzNiNUl5?=
 =?utf-8?B?SUV0bDNUSGlkSks4b3FGdlpOMWkwV3VJMEszeGcrWkFRMzM5VG5JWDJjV3JU?=
 =?utf-8?B?OTB1OHRsL1AxeVlPaFFKNnJIc1BpU0UxRkxtZllHQnY2YlVGblVWWmdnazdj?=
 =?utf-8?B?NTVLdExOZ1dkeXNKd3RHM212OURlb25iZTJ0VTJIRG5HMm81S2JuMXM5UXJt?=
 =?utf-8?B?aGdtbFQvOGNiZzYrdmcvdFdsYXpCb2FlQ2JNTHhUQ3plZTJsTWxVbXd6Q25p?=
 =?utf-8?B?Y0FUSkV6bkkxZmJQSWI0TXRzbXBhY3k2NlJZN1FNemtmaHY1SzN4TDRIL3VH?=
 =?utf-8?B?TW5XUGlEQksxZXNxclg0TmJKK0NZUnJ5YkZDUHRPQnBpMmg3ZlRrZ0lHdW1F?=
 =?utf-8?B?MldYUTVKbmlQb1RHdHgyODhvTzZ5Nkk4QXJHb1ZaTDNHaHMxS2p5Z1paTGwz?=
 =?utf-8?B?WDRRT3YwRnUwakQxSjBxTnRNUlNUVlZwZ0c2WENFN0FBTmZWZFZXc1hVblBp?=
 =?utf-8?B?WlR4Z3Q4NnFNMm5YWGdUenNJUzhmSTB4QlVxWlB4RWtEakdYODJCdVdlU1hQ?=
 =?utf-8?B?K2pDek5qdFVvODVLSEFUTlhXT0FNQVMvajk0YWRJSG1sYkJhVlZENnhKQ2lt?=
 =?utf-8?B?d1NwTmlpMVRlQnNUZklmbFd5U0tvNXNpT2ZYMTVWb2NiTWtCZ3ZGMjh4b2ta?=
 =?utf-8?B?M0tUTjc1YVRNUnRUMk5WY0dNaVlqSzVZdk01VC9rc3BybjlQK1kvYndsUUdv?=
 =?utf-8?B?MzVnb3E2R1l5M2FuSUt6ZzEzTFU2MFJsQkIzNnNJeVY2a1ZubWZFRHB3aWRG?=
 =?utf-8?B?dUxxbU1wYUhMVHRSM3N5MVlVTHBCZFloR2dIZ21ZN3QzVU92N1Z1Z2M3Z29R?=
 =?utf-8?B?aXZFcVlRUEtOODRHcVpteWJnQUJraHdYUUhWTFRhUFdsQ3lWVHZaRWZoYXc5?=
 =?utf-8?B?S29ydVN6WityanNVMS96aktYNzJKNWdUbjJqbFEyYTladGJJenlEMitTVzJE?=
 =?utf-8?B?Vy8xVzQ2TGZnbFg1cDdhME1RVHVMZzZlUTI4N3NFaklHNlRHdW8rK29uTXcv?=
 =?utf-8?B?elBHcGdqSDd4RmxYSXJJanlqTmc1NGZOMU4zcDZtV1MwNWdreEcrcUh2T3Fy?=
 =?utf-8?B?aEhtcEVOdVV1eTN4MDh4VlBrNG5QRThEWUt2c1hDandCT0tJT3Q4KzZoM3hF?=
 =?utf-8?B?QVdEa2JDQk1FdlFNS0tlS3hDY21yZDR5Ui9FYVFxcDR6VExtMm1SdHlqVkFC?=
 =?utf-8?B?amdCY2h1UkhZK2twcENNSUlZOGN5dU1wbzRFN0tBUE5EVTcyNGpLM2F1dG5a?=
 =?utf-8?B?Wi92bGRDSnZBaE5wWXJ6WTY4RkVGME9YcEQrelFUU1dnR0lSUkJoNmRSV2Za?=
 =?utf-8?B?SWd1VERlZmEvQVBBNEs3YnA2ZUNjQXhCKzA2aGFwQmdHQzExNElPRi9wS2R4?=
 =?utf-8?B?bWRjdGFqVmNMZWhuM1hDekpkM21adHBxQjd4LzdyWTlucFEvVG94aXd0bUVT?=
 =?utf-8?B?eUVnSEE5bC9ieDZkSzFkcXlkS3VSeWsyVWVyTWVoNEN6WFRaUElnc0hHdU0v?=
 =?utf-8?B?eXRPZHowZXlzSlRWQmp0WmtYd0RCT1FuRzU0alpsdWhINDdoaGpuL1RZUGxT?=
 =?utf-8?B?M2dDL0dmYit6UUJZNjNVQ3FVNXJod3lVaHVOTWEvQVBtellOQ2h2UUNhemF1?=
 =?utf-8?B?N3pxVDlOZXFZcXpZVVdVcTFHMjdaUVN3eTFFSEl3aE5WU3VPbi83VHhkTTRl?=
 =?utf-8?Q?9yoRHITSx08=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eG56a3AyOUM2MXZoSWRGRTI2SnpCQU5zREplYXo0T1B5Tzdtb3ZCWFRMV3oz?=
 =?utf-8?B?OENmZktPUFVuenhVbEU1c2h0TEk5UmJvaUNVbVpQQlZrQ0YzbjVQaU5CcGRO?=
 =?utf-8?B?RnBXbjdXZDFoOTVwQW14TnJRR1IzY3JJWFZzcVRTK2FHRFQ5L0pFZ0ltcVFG?=
 =?utf-8?B?dnh5N3FZSkI2UWZrdFJWc01OeVY2YmpnRjdSbWN1Smh6U0hSUWxuY01yRGNN?=
 =?utf-8?B?T1lvNFdlMzIxQjRqY254dEFvcE53M0ZwMnBjUEswMzhZUnRvb25VTGpPbGtP?=
 =?utf-8?B?QTI2VEJXdFpUMnczb2RWSkZRWitSc0tWdTM2WTZZb1I1ejE3RmFTaUNTWnRn?=
 =?utf-8?B?ZVJjcUtUcllGMnVGNjJWYmR6cUVNcGZRYWJvZXhJcmZlRlNMbEt0RlR3SU53?=
 =?utf-8?B?YWY0dlBOSnB3U2JualRNQSt5cTVwQ0lwWXB5MGJWTGxpQmcrNFZkZUM2V01w?=
 =?utf-8?B?NVh5dEU2SjlnYWVYOHBxUnQwVkZ0am1nYkh0OGc4dWpFQTREaXBXbC9yRlJR?=
 =?utf-8?B?bW8vZ0VQaHpxRHI0TTViekNIbmg5aCs0L0tFVkN2Mm9Jek05ZjdJVDFKcnUw?=
 =?utf-8?B?WUFsazJnalFSNDdicm0xOHROWS9idm85d0VndXE2OGJLRVJ5M2h1WU5LVVYy?=
 =?utf-8?B?VHhHcVpLZVRTNmEzU1RwSjI3S1RrUC9yWGZTYkNQV1RoYWwzRFBjaHJNcTlW?=
 =?utf-8?B?S21pMkVUQzYzNllJckI2U3M3MXArT2ZrbTNZeWpXdGtjY3BGMVpMcmIvM3l2?=
 =?utf-8?B?YXBHSDlTbWFGUG1TL29QKzdwVDRvQUlYRTA0MVVKMW1HRFdnd3d5NXlVNUNO?=
 =?utf-8?B?clBJMWxBVjJaZTZhQ0Y0SVVVcGZteDV6ZnVWR3hRbERnYStSWVh4OHdETTl6?=
 =?utf-8?B?NHdaM1hoa1YwZFk1Z29oRjlscXNCak9MWXE5TllJZE1TSGNpOTBUSk5uZGdT?=
 =?utf-8?B?ekxEbkQvbURWaDJJNzBORVpNNlF2bjlSNm1PQWF4SkpTVlhQcldEVGtLQVB3?=
 =?utf-8?B?aHdNNWhvYm5kQSs0YlhYYXNncUpJRElXeHQ1K0k4TWs3QncxamxPN3NuL3hB?=
 =?utf-8?B?ZGtHdHNFaFFhaWU5VG5melVZMUlaYWlKMG10L0VmaVJWNVZHa2sxbkE3WXM3?=
 =?utf-8?B?YytYZlJremF3N2hsMTcyd1A5MTJ4R0tMUzBrVWZFNHozdFlQS1JQWGRtVE9Y?=
 =?utf-8?B?c3dvMkNKQVRjQUtDcllpMzlxdit4QTlXUTZtcU1tSDIrdjdKY0djc256WG0x?=
 =?utf-8?B?L2pBQlR2ZEpHUC90MWxFSUV1MExlSUJqMStNeUFuUEc4N2VRekJpL05XRTZD?=
 =?utf-8?B?b00yWG1qamhDSjVpcjloUXhhOUFDRVV1c2g3VzN2bkxNL1J0TGo0eGFxNkNM?=
 =?utf-8?B?QTRRTFFleFpqNkEvVjBZNncvM2lCamthVUVxV2NtSUtMcWNVMHNwUk1JeWx1?=
 =?utf-8?B?NUsyai9jM0FPQUVkZjBBalhXcktlcXJNNFBYOVJqcXFROGZrL3FsUTRQb1kv?=
 =?utf-8?B?bnozbGtqTk5hOFVoNnFmNU1iMWdzOHkwbWxMbk1UTyt2SVpxRGRLeS9hSnVZ?=
 =?utf-8?B?VW95NEI4aG9WNEllMVpRN21zbUtUbW1ITzF3dzVSdFh2L3JZRU1pQTNLemRw?=
 =?utf-8?B?azRrNWplSkVjbm1lOWVGTk1ZRGhXNEdSbDZYQTg5d1lRcys5cms5bHpiVXly?=
 =?utf-8?B?UDRVU3FoV1VOdFNncjJCOFRLYVFqcFJEY3F0eG1QMHJBWklIZFBzNzc3NlBE?=
 =?utf-8?B?aVphR29VMTRheUxDOUxiRG9ZcTlyUjBpQlQybUt0UVpBN1BFN1o2YzREc2ZN?=
 =?utf-8?B?SGp3NHE5NXRhcWxBY0dOL1ZPdDY2amhSVU1NWVk2cjk3bTVZSDREbFkrWENB?=
 =?utf-8?B?cyswRzlBRWxlbnFmM1V3cjNXRnJoSGtCTDlGMnB6TGo1V2h0ZWswTzdBOWN3?=
 =?utf-8?B?WHB0YzBiL2ZtR1FaVWZrMkpXR052MmxQaXhxZTJMdWkxY2kvZzJYTXJXcWYv?=
 =?utf-8?B?US9Mb0JkMFVZdzJhYnhpTjdDMEhiczQ0V2VtWU9WcE9TQzhrTnVCYWRPRExC?=
 =?utf-8?B?NjNDamlwZWxtRnpYNk1zQWRJczZMSGZjTzFhM3B6bjR2ZU9zaDdmNC9mMFQ4?=
 =?utf-8?B?TFF5YWtyMXlabG5MSXpjeVg4TTluTmNjVFQvNEVscDFGaWRkdHVvUFR2RzZ4?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a61053e2-72b8-4694-cd1d-08dd832bb874
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 12:29:56.2229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q0ijFfBUXCtoZ2KeVL7/JaZAcpqnW7x5YRJzqYE18dgqBM+Y/eA61gSMyI9nIOnaEv7erN88M5cM79zi06ILp9vle6gvJaEFs5PvNCmRlok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9623118BD
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

Hi Nitin,

[...]

> -		if (!stop_ring(engine)) {
> +		/*
> +		 * Sometimes engine head failed to set to zero even after writing into it.
> +		 * Use wait_for_atomic() with 20ms delay to let engine resumes from
> +		 * correct RING_HEAD. Experimented different values and determined
> +		 * that 20ms works best based on testing.
> +		 */
> +		if (wait_for_atomic((!stop_ring(engine) == 0), 20)) {
>  			drm_err(&engine->i915->drm,
>  				"failed to set %s head to zero "
>  				"ctl %08x head %08x tail %08x start %08x\n",

I am wondering if xcs_resume() calling stop_ring() too would
benefit from having this timeout on hand as well. That would
require moving wait_for_atomic((!stop_ring(engine) == 0), 20)
along with your comment to a separate wrapper function.
What do you think?

Best Regards
Krzysztof

