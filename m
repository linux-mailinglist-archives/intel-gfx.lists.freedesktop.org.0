Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cy6IK2rXM2qAHAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:32:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D26C69FC47
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 13:32:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OQN+w22+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE9110F287;
	Thu, 18 Jun 2026 11:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDF1F10F287;
 Thu, 18 Jun 2026 11:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781782376; x=1813318376;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qnZsx0xvPPmJnv84LtLiTf6pP8LUkjd24N3vs+tneU4=;
 b=OQN+w22++epVpfVpX3aH/92qxx3FK8wHTgo4RS8ty2KdRjZSeNP36lwT
 TFyUUCH+hv34p/URq1Q6Sf78OBzHkX26etmHA202Qb2LSx/DD/v1oOtMa
 s/Q4klHntdJxUoG+UbQxeubIqKO09o5sJxu1ik5+E0EqNjUNWS8zTd+FR
 GIL9z+rtpDd0FVYfHiv5SipvacJGFJ8s7t13PaxFxrQajx+efLE1lxCzM
 TpqDqlbUOBNCic8OWxZ/OWc/AoScrF8gCIdMMJhbyz+nNpDACyns//sCU
 sLz0AvbPs3/jzkJ+m9CQZ9D7JuEnShPO/78cF0FKYMVNbFhPHNJPHuQ4D w==;
X-CSE-ConnectionGUID: pSkIptHtSLCQL9RGhTCrhA==
X-CSE-MsgGUID: /kky2BO0SuS9myd+yVAluA==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="93213771"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="93213771"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 04:32:55 -0700
X-CSE-ConnectionGUID: 6Hxb4Kf5TtymJxiqP1NeVg==
X-CSE-MsgGUID: 5HqbC4MdQFSkOSg5bPpqMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="243984047"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 04:32:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 04:32:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 04:32:54 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 04:32:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qHX8cBGQXpxhjJ3059jCQIFJ+UgZ+IZ4hP4LNX7QDC0l5TSDfWYv4AovVHg7Ms2QyUX88NuMdULqhonM/dZsNbvvBqW2CtY2sTeJ1bHNlfFGYCnGSfXVNKRJVMjiyMoQVYc30N5jQpuzhveR1qqZY2CVcBrCxDUCfZ+ezIeWKBvxET08T34D3r1FDs29heu8AAtsqZ7hTDo465fMGBx4JG4yjbCI6aOflOA/7pJlL6+sZFgU0E0elqJfT9hIdAxJ2CVx02G1lq9pMx4UJxCIuhsKh5tiMpgxHy6/IXJ+9sDmo/5y5e4h2xLBsVzZo4JVjCJdN7wavNMp+pUINbpdBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gnXq6xKD2Efvs3cY6bkXmbdkE0sECxrrF6swYbXrjjY=;
 b=VSGGV+eUFJ0r584Fj5sVbHGL44eBJWvnA+vqOc24fv2/WV1Bz1GL2LINFKoUijTdv03VPob5kRFs/eL2vSjBIN/O9m+/RPedMgsMHWSORVvLXSu1xJrElwXPJeZpI7Vbi0xVo4u5boYxc6fm8PgZygM0s/4Y52tNR9J6agB+lIrxbZMwvC+59BqNPelrnAMDyUga3Mze6eLo0Q7zhS8eo/bWxfNN7jBn6l2mWsexqlEhCl/AT0S6sTcgp57Ep/LYEnLLnryucZRfXFj2qX7IkB6s2i5LZrxsRKwTm/w9+snDWErkNPAej/s8+60QrGYwUAp91TzMEkdzyaATT8ZjVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by MW6PR11MB8338.namprd11.prod.outlook.com (2603:10b6:303:247::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.11; Thu, 18 Jun
 2026 11:32:50 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 11:32:49 +0000
Message-ID: <52d87d3c-6b29-4fb3-8679-697a91fd3e08@intel.com>
Date: Thu, 18 Jun 2026 17:02:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/dp: Add max bpp delta computation constants
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260527110849.3943338-1-nemesa.garg@intel.com>
 <20260527110849.3943338-4-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260527110849.3943338-4-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::14) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|MW6PR11MB8338:EE_
X-MS-Office365-Filtering-Correlation-Id: 593c2472-6e44-4967-9212-08decd2d5338
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|22082099003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: JV8STtOI6Eo9fQk8/TyFlWN45ujoXl/fMCX4EO0Gh+8Y2A13Y1Gas3fgYwqALvDKmQsM78rdcJEHK/g4N1i716RynAVyu0lNDLlzYpq5hT4Z3Ot8BRHcAkuWXYCe5L3FA6HG7hs+lhzl6fimaJhILF3F6Vndkx9Bj605jr7C/p0akwH+3T0u3tXC+4YKksWDjNe6Q0Go/p5f1SMFT2ZMsx/Ysrn++A3GT5x+pg68zeJq+KuZATzKTsi6Ftq6jUQdgh+CTG8y8i6LdGFcf0j7FhURsEXAA1QcDzXC7WKE5SJyzQAuYRO7SW+s3mI3Zg7Hdf5e3G8XOW0iQmjCvAffnztsvOIIn/lqLvULmmr22PxD8YmQfZB1mVy+Wk5qLPSoL8DXo65V5W/I+eWJKYAaCIrsOSRhpx16ogVJTRm9HSAemr2GUnk6jJMfuHYZJhKQujB8SrbVGOXf4VFbbz4+Bq0CW5M+K5N9RBZgIIqilA3WTB58gg9Pk45WpqDCvCf6aFqP7Lz2+MgxtBEl3WDeaMfepOZMLQPeNFjNhHri2HSM0XktpsaycAiD/GayRSyhVtEkEY8PoLg+eiLcRPXHLxJTTDyP3CSESBBtJ4BapURWI+bzAMPiCQtUPVkLxrYDqdXQ9+EjGSCwgFWPHbMPSutCGumu56+BKeSvNV3087qwk7MtcmVhwVRg+6VGSc6E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODkrWkl6aHhIQVhUOG5rRTVabHVIT1R5TkExMUhTL2J2blNNU2IwM3VjcU5W?=
 =?utf-8?B?RXRBdVA0ZTBsMzF5eVY4SS9EdS9zbjgxd0hQSFlaamhmaXJNdzB5R2ZXS01x?=
 =?utf-8?B?L3pCRnlGeVF5bEhHdXAzb0hEZGdlVjRCbUk3KzZVT2UvRDlwSDlzdHFibWdv?=
 =?utf-8?B?Tkk1Y2M3MHN1SWZRTnN6dlM4U0xRaVVPQjV3MUxEaUx2M09ZR29lZDNLM0k0?=
 =?utf-8?B?a3RJb21nUTlsL2F4ZzFvRGtKNXhRaVVKSFNJUWozT1dtYmZ0VDJ4cFB5Vktl?=
 =?utf-8?B?dXo3VytYN2RDZUZ4ZXRGNjNEeWVtK2RyeWFYcUl6RlZYb2dENzF5R3R5Yjdp?=
 =?utf-8?B?RVdGNkIwRnJ6TXo5SEd4T1ROTWh5Tk1yZ1lqUG1tLzJnWVhzTE5ISkIvUWpD?=
 =?utf-8?B?UHYvMFB3TmVpMWdEVFlOK1ZMRzZua2Voa1ZQbUNPSTFVM3B5TWt2c1RhMWdJ?=
 =?utf-8?B?V0NDS1BGVjloSnVaTXhsdHlDUEl2SHpVbUhNcjdZWjkxS01Hb1JxSEdpZCt6?=
 =?utf-8?B?MzYyMjhSczZ6N2FraFRWdVJGU3hObUpQK1hjbzNqTTRjSm1pdHNFK01acjA5?=
 =?utf-8?B?UW9nQ2NUbnhEQXA3OGp6YzJPTjR2bzRoU1llaHp0akhVeWYzRXo0L2JCcHhr?=
 =?utf-8?B?eUxvaGZZT0wrYmpLQituaWJoZkczbnVIK0dwV0hjN0l2Q2E1U1l0N2o3Ymhz?=
 =?utf-8?B?Yk54Skk5Z3JJMVluNXEzcm1pR1VOTFFZWXVOdTJVT1FtWVc1bEhNWDROd3N2?=
 =?utf-8?B?bm5RaG9NenRJNFNhd0xOWFBlYWlYOXdiR1RZNnQ5RnFHWFpVdDNMSS9Da3Mx?=
 =?utf-8?B?SmpIRGhOYXZnVHh4SEJQeXUzNFpmTXcxSHF1RFFjb29Hbk5LSDkrdGVVUFhQ?=
 =?utf-8?B?elBzSTBiU3JObWJZWFgvRkVOZzkyZ3Q5S1NHKzMzcitua1R0dzJLREpaNXdl?=
 =?utf-8?B?V3pVTk5icjJvQ3AyN0hnMlRyZFpxMHlYUk9lc2dCRnEyeGNjd215cnhuUkFu?=
 =?utf-8?B?TllPTHdhRUxBYTljbWFpZ0FONnJjMEYya3pOZ2FQamxLaVc2SFlTWDVBRndn?=
 =?utf-8?B?M0YxV3lRNndMOVpTYlFSNEtvVnNOVFgvdTVjcTJreEtiQ3VIU0NVbE9nSlh2?=
 =?utf-8?B?OUFDTXdCSmszYVRKT2JVa3VieEVKZHllUm9wOE5xdXJ3amRxaE1CR3RhOUZU?=
 =?utf-8?B?bzZ3YWdHMnYvV0pLbmVYUXpkQWFIUm9WbVhTRFZsUmhDTC9RZllwbGxlMzN4?=
 =?utf-8?B?NnVGM2FJYzg0NDNYN3N1MGJhZ0lXWWIxYjUzREJmcXdpekJSOWxMYy83Vm5L?=
 =?utf-8?B?bTNFMHhzb0x5SzA0enJjWXZLTUVmdWNNbnVXWHV5UzEyNlphRVlWa1U2Ky9r?=
 =?utf-8?B?VGtKb1pYb2FXSHMwQ3pkVy9TZm9mak1seTl3R2xaUUxBVlBwQll5OWV4VzUz?=
 =?utf-8?B?d0dQU1E4QW54U2VOQXpRNjU2MHQ3aXdoK29EemRHS1Y3SElLSVJEb3FrSFRX?=
 =?utf-8?B?OHM1K0xSSW5SUGtZVS9yMGR1b243Kzh3RXhBdnFWTE0xd1VQdmFTWG9ESWpB?=
 =?utf-8?B?L3poYnB3MWNmODJDTlNlNHlRdFVNOWpCRFpMYkFnL0lOVHZvQ3FsakhsRWIy?=
 =?utf-8?B?V0tHeC9hSlFTWUI5ZHpZTzcwTFdCcEJNV0czV0h1WTRTR1NVcVFaT3dRSjg5?=
 =?utf-8?B?enhpN2s2dksra21Ic1R5VGtKTit0bHZvWUR6SE9lWHZCNVB3V2grdVZZRllV?=
 =?utf-8?B?MHBNK1dURDl1QmJiYi9WLzRsTyt5cTdteWI2VHczNEM4dHNLNXVJa3hLekky?=
 =?utf-8?B?RVRXOWcvKzhqZUpuTy9FcFVPRmltMDFxc2JGdEl3SVh3Z3dUemFKaU1Sd2g5?=
 =?utf-8?B?UnlBR0NBY25GSHNyb2N4Y1pYb3VSYmc3a0taNXJsZXNBODIxVWJ5QTFxajFO?=
 =?utf-8?B?K0RPcHg1WVROS3IxaG1Vb0F3bGcrczFSS2p3OXZtWDRZaS9nVWExTnVTdW01?=
 =?utf-8?B?clNhblJRS1BHVTlGOFRiOWc2dERMV3lRdTIvcFdKWHk2Y1B0UlEyWjlwTFVE?=
 =?utf-8?B?VUVVWFBzVFFPdFlsNGVHUlkzS3RrVmtFYWRvcjBLNXAyYkFrOVZ6NTZObnBh?=
 =?utf-8?B?UGEwZGJUTHErMDF6R29DbmN6aTBGQm5MZzBLQm1PYmRHazhueXRIZUlSMVFw?=
 =?utf-8?B?UlNkWHZwYjBBUHN5amNlL2hTbE9XZ1p0bkROMHd1eXRMVm9rb1BNRWYrd0hp?=
 =?utf-8?B?V2pYZ29MWWJkT0pBUGhnME5sRWpJN05KR2hxYlBaVllnMmkvZTh5WHZaY2ww?=
 =?utf-8?B?UHR1bmhnSkpZdGZ1dTNuQ0pISlZ6b3M0TDBraStrbDNOVFdtcXV0eW1CekhS?=
 =?utf-8?Q?q9KKZS4HDRzKlGM4=3D?=
X-Exchange-RoutingPolicyChecked: chnt5HdLZS1OeU1sb4Kpv9bBuy3DrgnF0Hs7kKUwY8CcJGCNtrmBoQB3QqeKHvujCP00ycNn26fcuhoF6UNZIEi5oxubr28QRYw+Vk9MQZEt7jKvu1e6ymZNog9ayVkhJ9hGv7rr1g8XaqBqLqT7IWHX/0gJF9YgoLmPrl0/Vem8ALDGgVzEIlqJz0FxjZVHqXTqZU4XuCoQ3+ADcQ8I03UGZsvSqW/PKttYjN37/oA3GbrwvcIa7/WGfdnegeoLn6TYPQVDlrT4/l1g85vXFSTbhPFdbMyV630cESRpwr4MbJrVax43kVz8n3mBOZCpT91AgkwC9tBJzOPu6sLCXg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 593c2472-6e44-4967-9212-08decd2d5338
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2026 11:32:49.0615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JU0Jw8dwlEvIjfrtOHFE6a8rwN+GCvzRxMy8JMJqFdUpnwhjT/MOeWNh9WuNehPO7dDzIlaMEFEXQ1woWfsCFNns2K8wIvGFyZEPJwfbryc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8338
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D26C69FC47


On 5/27/2026 4:38 PM, Nemesa Garg wrote:
> Define macros used for decoding DSC max bpp delta values
> from the sink DPCD. This includes per-format masks for
> RGB/YCbCr444 and YCbCr420, as well as definitions for delta
> scaling and the YCbCr420 bit shift. Also add version_1 as
> suffix to MAX_DELTA_BPP.
>
> v2: Move constants under 0x6E register. [Ankit]
>      Add mask for Native 422 also. [Ankit]
> v3: Rename _DSC_NATIVE4222 to _DSC_NATIVE_YCbCr422. [Ankit]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   include/drm/display/drm_dp.h | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index dce290acf735..a905aa49d1d0 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -354,10 +354,14 @@
>   # define DP_DSC_20_PER_DP_DSC_SINK          (1 << 1)
>   # define DP_DSC_24_PER_DP_DSC_SINK          (1 << 2)
>   
> -#define DP_DSC_MAX_BPP_DELTA		    0x06E
> +#define DP_DSC_MAX_BPP_DELTA_VERSION_1		0x06E

This change should be in Patch#1.

This change will only add the new fields then.

With above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

>   # define DP_DSC_RGB_YCbCr444_MAX_BPP_DELTA_MASK 0x1f
>   # define DP_DSC_NATIVE_YCbCr420_MAX_BPP_DELTA_MASK 0xe0
>   
> +# define DP_DSC_BPP_DELTA_444			16
> +# define DP_DSC_BPP_DELTA_420			12
> +# define DP_DSC_BPP_DELTA_SHIFT_420		5
> +
>   #define DP_DSC_BITS_PER_PIXEL_INC           0x06F
>   # define DP_DSC_BITS_PER_PIXEL_1_16         0x0
>   # define DP_DSC_BITS_PER_PIXEL_1_8          0x1
> @@ -365,6 +369,8 @@
>   # define DP_DSC_BITS_PER_PIXEL_1_2          0x3
>   # define DP_DSC_BITS_PER_PIXEL_1_1          0x4
>   # define DP_DSC_BITS_PER_PIXEL_MASK         0x7
> +# define DP_DSC_NATIVE_YCbCr422_MAX_BPP_DELTA_MASK  0x78
> +# define DP_DSC_BPP_DELTA_NATIVE_422		16
>   
>   #define DP_PSR_SUPPORT                      0x070   /* XXX 1.2? */
>   # define DP_PSR_IS_SUPPORTED                1
