Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8201A49EBE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 17:27:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE9310ECF5;
	Fri, 28 Feb 2025 16:27:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZfU+WTUq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A08010ECF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2025 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740760053; x=1772296053;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=pGbf4s8xw/HBjCZS3YO8rCV649y9iopZ+HTq+kVXAB0=;
 b=ZfU+WTUq7giDYRLRn/VXEBUamZQUbeE7OuL/5Rc6/PK7666kZ1EaN3nf
 PpEi1o07oFyAR0skR0S0xknabldOkpOvs5u1utiSMWlNBdm2MU0cRoPrk
 kNm5OZyf8z2vdSNyZwfP0EH/mwdU3ms8Gsn4WRYQbgfL6pIWZZX3+vgah
 lJZCPinZjO/EXUGZoEUZNUkkUQ35xS3xkNcA+1hAfPApnhNO8P0FJ2/Z4
 SczAxOZZSKxbSqGXPzVZMfWanJsWG/W1nEfU+Jn/k9KjoSoGVwal6/z95
 MUffU0Yhz7POSx5fCHxzcGrHXn49SgwLtwwdUihy9aMRDXwJhzY26p8GT A==;
X-CSE-ConnectionGUID: BgRVCMdBQP+InB4jq61GHA==
X-CSE-MsgGUID: cPRyVOsWSNCaa3d/17nRHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="45345994"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="45345994"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 08:27:33 -0800
X-CSE-ConnectionGUID: GJBvTo0uS3um1OSUqqklUw==
X-CSE-MsgGUID: XlwtgGt2Q1ejBAAw6E2cgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="122517124"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 08:27:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 08:27:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 08:27:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 08:27:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dcS+mjvK2S3Nq9uVySkHtFz5EQj8puYceCCVkz6bJStjjZiE7bdEuEc8vcjAYzfmwqYrjERuZp9aa8Ngv3oB+EMT8fhPES1MWm9l/GAfHl5pMWsndNY0wiczcwAmDPQSFZeL2Te5eTk11th27NcgeHr/5eOVBRyrVOukS2LMuzHBMpnq1kI+gEXk5rXSqsmdcgNeZJe5t6UekNbtyh10derks+dZKqC+IPgDVkLMlcRgE4UNuLZtFqWlxJuKNTqe2BkcjZjwjrphu66OEoAcRrit9vaHJkbFXgVaMovl000zE/UXm91WWvYgM598Scon9XoEd64VuCcQsPF6kqZjXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YER+FNfk9CaVovUm25tehX+z82UBDAXvRhAj+bR5qW0=;
 b=txR05spMpg/viguUcKmYY76JEWBj9mrXL4pYBzlZxWwf3z8AqdtbddhiiwCxOL+ayWiiF+3C1MEUOXZkhoVn3qWt6o5BOXfn0DQIOHGYFynCbLswgdMvI6dj+DVMx+ZNrQwqo04jHtoyL6XzbL28kk8qjxR/nGNR5Yw75meTwPeP18ut3N+X6XhikbgQJfGyWmcOtwPyWcoTQB9oVutoUuGPUgSUWSTgQJZSEwi41ZM0Mg5lLsqIzN+JIBY8bjk7AQfDDDcW1VZ0er+h2Eyge/LXygV2kb1YV5Z9RnwwWuT4uDR0INHG9NMokyGWToYGCvy5t3NxD2KFagO/xkU74A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by IA1PR11MB8174.namprd11.prod.outlook.com (2603:10b6:208:450::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Fri, 28 Feb
 2025 16:27:27 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 16:27:27 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <174073738030.3170591.6736921341755944744@b555e5b46a47>
References: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
 <174073738030.3170591.6736921341755944744@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for Improve type-safety on
 POWER_DOMAIN_*() macros (rev4)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 28 Feb 2025 13:27:22 -0300
Message-ID: <174076004277.17587.15727830706467067728@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0301.namprd03.prod.outlook.com
 (2603:10b6:303:dd::6) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|IA1PR11MB8174:EE_
X-MS-Office365-Filtering-Correlation-Id: c1ab702c-610d-4f21-26b6-08dd5814ca2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUpuMm15TTlLMFF5WGl1Z09aRTVyNlRWcU1BNG9XZTlickhReW1sa1V6dnI5?=
 =?utf-8?B?d1BCd29mQ2I0N21UQnJjTzgwaHJqV1BGaFdJYUx0UWJVaDlBTkRJU29Wcm9Z?=
 =?utf-8?B?OEgzSHZxNFNtbHROZFV6K1dyb0ttREZQK2UzMU9sYjJiTllxT0dzR205Y1A2?=
 =?utf-8?B?SEVvdzdiQ1ZIbkM4N2FRL1RnWlg3Z2lDMVd5ZC8wVUQrY2hna2xxNXo0eVR4?=
 =?utf-8?B?MWRRZk8rbzM3ZDFUMERxUW1hOFo3SWdqc0lGNWw3TlJKS1VHczZiVk9aeWpU?=
 =?utf-8?B?Wi9oRkg4Sy9RcUVDcjRVaXdJd1pWYVpTeWZPT0RpM21ud0dVU05taWJvZDFy?=
 =?utf-8?B?WnBOaHhIT3FIbHNTdDRIR0tyWk9RaXY0blBuSEE3NWU2MThjN1dKNVYrRGZI?=
 =?utf-8?B?ZFRhWE04UUIzbCtwZGhaVWJlMlVwTnpLNExQOTJuNnJTalJqOEQ2NjYvWkgx?=
 =?utf-8?B?MWRMY1NQRzdqKytPWUNzckh4S1p5dW1odHlHU1lBaFRGeEwwRkt6dHF3OHpP?=
 =?utf-8?B?SnlLTzdJNUtaSnlwZzBLYWliNVlOYnRBa3J6dG9RbUc1eG9GOWt3SlV4VjJH?=
 =?utf-8?B?cWFwZDYwaEFuNXFiNGhpbGdwS3ZUOVdZV3NKQ3ozL21IMUg2UnprRlc0YXBk?=
 =?utf-8?B?S2htNSt4TWF2bTYyY1F5Z1hIVWpKM0dvNFl3Z3Z3dEhmT2dvdUpuZmh2dXM5?=
 =?utf-8?B?aEZlNWN2MTNMTzk1NTNoTC9Hck1pQms3dXBYZ3JhMGtaekRVWGhCQUxlcXpN?=
 =?utf-8?B?eGJEaTNrZUVTQUJ1bEtRNlYvYVpYYWp3clNiTzVtMVdQSmhiWXMvNWlablB4?=
 =?utf-8?B?U3N6VVFzUlVoNlg3MUFhVHp0dFUvOVpydGFwVkxheGNheXpPTmd1WFVqVXll?=
 =?utf-8?B?NkpNVDNuNzVQSW44YUQ4dGRvc01ib09PbXdhYi9EaHB0UkdHNzJnSVlueVdB?=
 =?utf-8?B?ZHppd0hCUzVvZDVKOVpLK0p5S3I5b3krbjJucUFZaDdYZlhUZmRmS3d5MHNI?=
 =?utf-8?B?Qmt2ajVHNmRsQmkycWpoTFlUUEtORXRjMEVQcXJWa1lNWE1qTzN4NVVNRFBV?=
 =?utf-8?B?di9zOG5WYTMwaWhJbGthcXNxVHBHUHhJcHBLM3J3Ylp0ZjNCWlJJM1ZZMkhB?=
 =?utf-8?B?eDJNZ290MHg2VWRyUWZBb1ZORVd4K1pYYWRYTUNNaHV2aThlVW5EM3M0RlFE?=
 =?utf-8?B?eTJubkRBNmVTczd5V3QxSndxNnFpMmdmaTNTUE9nWEN6YjM2UUlFSDFUdjBx?=
 =?utf-8?B?c2pJSGpyWHI4VDh1ZlQ5VkJGeTAyWDI0eEk4UUxwdHJLYVdYNGNiRFJjTnMy?=
 =?utf-8?B?UUZ1d1hjVGYweVFCbW0yTmpFOUJualFOTVZHc0Nqc3lqZVZQcElucU9HNC9J?=
 =?utf-8?B?ZXQvYTlKcVF1cWRHYlBuTDJLbVpBZ2VjcG9VY0pnbDVoaEdETHRQVXBsNVh1?=
 =?utf-8?B?dkRlZm1oMUUzZVovZFVad2JJQitUS3d6Qm1Pb2R6YkNEVy9JU3ZSYmorYUF0?=
 =?utf-8?B?b01sNWRibkowOGlxeG1CQkt2RW5jMVRidCtvREJFV0RoRDdzYVVWL1ZZTnQ1?=
 =?utf-8?B?UzA0R014NXJxcXJnL21uUEtaQ0kvR3ZNUThuejhwa045MDFaN3ZxUThqbXpo?=
 =?utf-8?B?Y2NLb29ZNHJxTkxGVGJ2V0czeDBtK3ptdXJFbURtUDJzWmNvRG40UmQrWFJj?=
 =?utf-8?B?S2l1UXlyT0Rvbk1zTUpiay9OTkl0K2xhMWVUekVHVU9ISit4N05jK1FIKzll?=
 =?utf-8?B?cktUaE1XTkxRcUxIZjFHeWJncDZIT2pCeGNsekFRRWhQeXNXWlBQNXdQZ0k0?=
 =?utf-8?B?aGpyQ0dZajVsMXVsMStnZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWhrcWlpVkhJaW9uN1ZtYlNUS1lTanFtRGhOOFU4RXFlOEw2RWRmMWxBbkJJ?=
 =?utf-8?B?dFV6S3BON1N6K25hUzlqNHVObjJhbnhMbUFvUXlGaEpjNDRKUTFMMkkxbVMy?=
 =?utf-8?B?VUtZUmVTY1lWaEF0SU1qR0Fjay92MGJLM09HM3lnT01MUG1Zc0I3bkdKbVdv?=
 =?utf-8?B?Uzl3UVBEbmhKTVVHeFMySlhJL1RzR0Z0bTZWSk9makJLL1p3Y0p0ZDZDbGVu?=
 =?utf-8?B?UnB3TFU4b3ZjTzQ4MWg1N3F1S28rdmJsdWhvWDRJY1A5NWRQMUlQTnJlN21N?=
 =?utf-8?B?UnE0T2I3a3RkVkViYTRsSG5EYkhqN1AydU9tRlF4SW40UVZvWmdkTVBhdm5o?=
 =?utf-8?B?L0NWU3g0T2kvelBydDRsQUVoV1pJM0xsMDV6cVJVWCt6czgwSXQ2QytjNmoz?=
 =?utf-8?B?TWJPUEVQQU9jb3RwUXpOVk9MTzNlbS9JTnh5ZDdkS3RHWGQvTFUxM2VORFFl?=
 =?utf-8?B?bTlxd0ZYc2dDMEIwOGh4czdOSHYzL1o0cTVlRUxBdzcwYnQyVWdEQ1IvWFNo?=
 =?utf-8?B?ajhqTTVjYjM0ZnpxQndFblpBTGlYVElyYTFvdlNsaVpqWHF6R0x0QmdWNmFJ?=
 =?utf-8?B?Y1YvcktCMzVnUHhlQmVJcGFzVFhzZ3ROUWRUSWNJc3haaGkyZFZDU0gzb3VU?=
 =?utf-8?B?bnhyWExTOEs5UGtKeW5BT0o0eGhITkVmUTZKUEQrS2YyQy9LK2FIZzVDOW5v?=
 =?utf-8?B?Uno3OXM4RFVJd24yb0pYRGw1d084T0lTZ3lxeGJEbmNQZndJeVV1RXBKZFZF?=
 =?utf-8?B?VlVWNFRkdWVzd2h1VUIzMG5QUzdRRnVJck1zb1BwbHAzRTM2OVVoNGhzWlZN?=
 =?utf-8?B?V21GZzJTY3g3dCtTSnFiaVZaUnM3TEVFRUZ5Z1I2OEtSb2FQdUhpZUhoVHlo?=
 =?utf-8?B?TGplbEtlaVpNYnpEelpNSlltT0V3NkQ4ZTllbGxubkRRcERqYzRhU01tYnl4?=
 =?utf-8?B?bWs5Ty9NTVlyVCtCRUoyenpNUXVscDhncTk4ZlNIdE5kd1VNbGZOcnVwYWRQ?=
 =?utf-8?B?ZXB3c1FSYzdjdG40Q2MrK3RqMDZqNmw3b2l2N3JOekRvVWJrT1MwS0pTVmpk?=
 =?utf-8?B?OGprdElLK3lBNGk3bWU5SDNXYTZwM095cmEwUUhkbHh6dFo4azM1OWJicVh1?=
 =?utf-8?B?eFFROEtBb0tEN3R5SDliZGNtaUgwQ3NkeDh2Qlc2U0FBWVVrdFFjSURQbmFx?=
 =?utf-8?B?MlFvTmZuanVuMXV0NXVhZjd6OTI0aGRDY0xYYUNNQlQ1SnVhUXBBR1FJcXBQ?=
 =?utf-8?B?ME9ieFRMZ0NxTzhVQ3BSU0J4VTVTdmRmY3NNa0puQ2RVa3FqNW8xVW1IanJS?=
 =?utf-8?B?UGJuUjZ6T2JLTlpJY2Fva085SStnZUR2MmhjWlNMeDVHREZXN0JhWXBFMUJ2?=
 =?utf-8?B?UG1QazZ6dmFqQWluZlE2YzRESlUyR1pvZHBDVDZVUWFJbVNOcTBOSlFveEFD?=
 =?utf-8?B?TkFrOVFuK0ZneEpNcHdPNi9kM1Frc1JQR0tzUGRvL2M1dXVuTlg2QXpGNnJl?=
 =?utf-8?B?akg0UUZ2ZEs0cVo0OG5jNmliTUcxc3lsZkxxbWxHRkZmd1VRa1A4RUxNRHcv?=
 =?utf-8?B?NVhqWGtvMm9xM2U1R3ZSaWhmT1Q1UWhDS3JMUGNsdFFxTVY1ZnQ2YXlOYW5D?=
 =?utf-8?B?c0pMdDlSdHRYb2E3UTBycktLeklvNlhsa0xlYTJ4NjlnL1JtWTFORDNZbkZy?=
 =?utf-8?B?OER3TkV5TnA5cXhmbVhLc1ZiVmJrSjE3b1A3UTI4eC9xKzVPUVBReE51amVO?=
 =?utf-8?B?eG1kTzdqSFQrTWR6VW1YTHZrVCswRnJUQlZ4aGMrUTJOV3puRGNid1VVd3Z0?=
 =?utf-8?B?RkFBcWVBUU1OMGdiVDJydklXdmRteHZyeXZvb3NIRktZaWxrNEd0c1E5VkFx?=
 =?utf-8?B?SDJKaWdvSWJtdi9RTFE1aUNUM1hJaUQ3YUlGL05hWkpJWk1MbmVYejF1QzNj?=
 =?utf-8?B?SVVCaG9yR0xkWHdqS3BZSWMycXBONkRkRnVtZXFjOXU1VHdXaUF2RzdtYUpp?=
 =?utf-8?B?VFFPTXQ1bmppdEpaOVZPNWJmdzkyR0FIaEF2YnAwRVovNlVPZkIrSVhNQWtY?=
 =?utf-8?B?eVZzT09UdUEzckVXSmU1YlUwWDdvb3ZrSHA3dy84eW9yQndiang4QVFvMmsw?=
 =?utf-8?B?Tld2Uk43aUwxWCttbXNHWXlLQ2dLMzdJeWxMMHc0enh0MlFLYUZwRkVScUR2?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ab702c-610d-4f21-26b6-08dd5814ca2f
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 16:27:27.3384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h/bGFZcZHlb5nHmbgW+u/mra/47CbW/xmRUuHp1bUvhp/3MsmQ0wNtIBb3JK0l5VdjCKJxYww9M4aZrI0MwfWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8174
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

Quoting Patchwork (2025-02-28 07:09:40-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Improve type-safety on POWER_DOMAIN_*() macros (rev4)
>URL   : https://patchwork.freedesktop.org/series/144726/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16198_full -> Patchwork_144726v4_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_144726v4_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_144726v4_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (10 -> 10)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
144726v4_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_exec_parallel@fds@bcs0:
>    - shard-dg1:          [PASS][1] -> [INCOMPLETE][2] +1 other test incom=
plete
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16198/shard-dg1-16=
/igt@gem_exec_parallel@fds@bcs0.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v4/shard-=
dg1-12/igt@gem_exec_parallel@fds@bcs0.html

If we look at

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v4/shard-dg1-12/dm=
esg1.txt

, we can see that the dynamic subtest actually passed. So the INCOMPLETE
here is possibly a result of some sync failure in CI tooling.

>
>  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
>    - shard-tglu:         [PASS][3] -> [FAIL][4] +2 other tests fail
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16198/shard-tglu-4=
/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v4/shard-=
tglu-10/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
>
>  * igt@kms_flip@wf_vblank-ts-check@b-vga1:
>    - shard-snb:          [PASS][5] -> [FAIL][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16198/shard-snb1/i=
gt@kms_flip@wf_vblank-ts-check@b-vga1.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v4/shard-=
snb5/igt@kms_flip@wf_vblank-ts-check@b-vga1.html

Those two are possibly related to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734 .

>
>  * igt@perf_pmu@module-unload:
>    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][7]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144726v4/shard-=
tglu-1/igt@perf_pmu@module-unload.html

Possibly related to
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029 .

--
Gustavo Sousa
