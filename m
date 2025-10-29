Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F48CC1D4FE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 21:54:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDD510E847;
	Wed, 29 Oct 2025 20:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iWhnC4x+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4B610E847;
 Wed, 29 Oct 2025 20:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761771286; x=1793307286;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=eEG264I4h77vsfehLPHGqSWWcb/ggK4hVgmpXZclqcE=;
 b=iWhnC4x+ygnV/UKyoUOcPjbnTTtzhptZHZ8vAMuwppIiu4jl/PcmfdOt
 e5HtJPXBQRR4/PKd8OhZmlYQJ/hhkJYrOcawIaYaQUxPV4Ly988djraLx
 t1J95CtTOFXm459Qhm786NAtiW7oxPuaylFIELO1m6G1OXYhvapHZYr5I
 sMVgts2jKKEHIegEfrP2gq+7ZdgeCI32LI8oGNJniecSVq7YMtorodOS/
 UuZdeXnun8UMLS0CRQ5ARDo9vOeTu+7ucKIrWm6zBtvJ9Dp1kvpzS2IWt
 Q10xCTWDuJ5SFrFfJQkVZ7Weh3vX+gz6VXpg5MkIAc7chNU2VK/nuFxDt w==;
X-CSE-ConnectionGUID: 0jlN7NJ1SUCHkFs6dzub8g==
X-CSE-MsgGUID: bKVALicsQ+iJF2HZxTv4ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="66521059"
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="66521059"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:54:45 -0700
X-CSE-ConnectionGUID: N+EkZdlmT2KKFYMIYy0Qcg==
X-CSE-MsgGUID: d2qHBEvSQfK86Ha4YWKOrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="190128356"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:54:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 13:54:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 13:54:44 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 13:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VXkaSb4u90AKX6AvGDlZKOctTUrHLU2+gnbmc34bIovmq7R4AwJfBJJubzFfvvEqQAt2uznCE6kD9rW4qTc7aOHd0ZVqfDFT2PkldeJRU9rOdUGQ5eWj5Tmw5XdUbW9fbuInrZFmF9mwOebu159OmKPyDdLoTp3XYvmWP7MuixIm72tgrM/5KnRF3AFIiBcA8TG6Iza0tcM9qRSIWb1eVs1wawHgo/YKLC3J3rf6VmhSYtYUlExvuSumy99H2coLnsCsuoyFuXaI2wMYFDGBIr1w5chhFQE6LG9+OScuDBjgLHRKbT0ZY+n9UFTllPfAW7BW8lTtz3X+Sv0JJv4EGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+C5/CUHwixynkxC1PlObNlyWUBa/CzFjVqO7S7wqKVU=;
 b=f5KZ7gGyG3HeeI0tAxgzXW4btFNyX+YjvYy51JZ0mnSLpm5K8GN74QJLIeLcDAjyNsWkdmFLBYtUlRXvOcy6dpE6LG2HpOfZT6NcC3EE2UEaP1MVCYIl1/IR23/j+aD6WF/3ismtDdQ/eHCbtjBE2dlqBUU751w7NO9AhiChjCmJg36WH0T8721t1fl0lTj+hogjgndAKsblRU3aLuFcba+1zGDQu9NRkW3NuzQpdTkZzt6EsC+DoCWo2YqaSyXtmluHH+2T4wNLRbzcn4XDdyRPFqySfF0bYTaLs60JGom+yA/WWFF97EQslwjVnX+OBBR8r5CstZmwXZWKIzNRxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB7385.namprd11.prod.outlook.com (2603:10b6:208:423::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Wed, 29 Oct
 2025 20:54:42 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 20:54:42 +0000
Date: Wed, 29 Oct 2025 13:54:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 11/32] drm/i915/xe3p_lpd: Underrun debuggability and
 error codes/hints
Message-ID: <20251029205439.GB2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-11-10eae6d655b8@intel.com>
X-ClientProxiedBy: BY5PR17CA0012.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::25) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB7385:EE_
X-MS-Office365-Filtering-Correlation-Id: c88b71b5-8e0a-4dd6-9144-08de172d6222
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?LGifYPGJUysIuBww5SrR+KD3yuPz7JY3ETH4rWdhE33siaUUFffcjGFeKz?=
 =?iso-8859-1?Q?hiCM0KFAPrCfC8VdCmJHFmQ3Owsq8QLOc1/rzg/A0WN0zWmXlywuew7WQ5?=
 =?iso-8859-1?Q?W/V+yj1vJaHNocPbksFf3Ut6Sd/bdwDKhX0adA68kPBCvbu0+hwmTtv6mo?=
 =?iso-8859-1?Q?ZPX7Lqnlzslv7MBl5+CzhBQ+POByhD4tNJrcgIYiCUlDhSMYhGRUS/5Fpy?=
 =?iso-8859-1?Q?8dVu/73bobB9vhWCdATTdVpaEYZqKsGrjsykeaCXv/9jfgsBYiJY0QN9Ed?=
 =?iso-8859-1?Q?v+v8YK4OpPeTeKVO0GLy3DS0p1gKFgK4laA8EuDKtqOuuQZ7EuxMiLTlAw?=
 =?iso-8859-1?Q?9ZVVIONkwyPfD9636f1oBqCy/P71WzGZewhzJogXpqb4Xz16R0DeJttigg?=
 =?iso-8859-1?Q?RPyJOjDZdeoE9wyg9AwYIBZyRPkir1Go4lE2LWnzVGG6lVw57xYnEQs6IX?=
 =?iso-8859-1?Q?JyFjQxy8xCadjQPziK8AEF5g/5h9gPrihrh23y2PaaL+q+BZ5kt6fZn18B?=
 =?iso-8859-1?Q?9GbF37PXSbEOnC3WZtzaX85W5tqlV+L92oRpf+rJoo518JNJ+CDlFqafxo?=
 =?iso-8859-1?Q?I8tL/YkpdPo5otxbwZX3DH6B10D4iPidCBNsAbuZtLZryZizxQf0poC8wg?=
 =?iso-8859-1?Q?jttE61EAIj5AeFAO7OWSzqTCvKZbiZzCWeuzarlKr2H4JfctCnq1CnIS73?=
 =?iso-8859-1?Q?fQUNuF04gP2nQuZGVzVxkk4vZEe0cURTgPKAY5Y78NAORHRQmXEkJ2WVQp?=
 =?iso-8859-1?Q?wdn1HA4bcURXzSAlmdxe12x7G+6pMGoPmh3h2Vh+OiVtQ/oUvuKNlFit0y?=
 =?iso-8859-1?Q?8m68Eo2oPBxYvFpLew9AzX65NSb+li555PVSuhDlYaekUHqg3bf922IgZr?=
 =?iso-8859-1?Q?Dp5jjlrxFGcPXP5W2fRbFhFDAxLhaFe+0C9EI1zwrnbYHOD9kbMN8Ievc8?=
 =?iso-8859-1?Q?rYGOBL0QY2Fu/U1MaerStqOQwHif+xHQfg5v3IfzHlM8B6VjRFjV1Flizp?=
 =?iso-8859-1?Q?OODHWYoRsJ3rJpdzj+tpM6PDvWgR6ENgxMzcAjKp8vgI3bHdrNZ4T9kv56?=
 =?iso-8859-1?Q?RF2Rw2DveJpyTOTm5T32J1g8BrfGP6agPE1xxYP+OfQDPMREFytRXoQG94?=
 =?iso-8859-1?Q?ebrEEvozrxcv5OC9Q0F5Grv3kqL+I/O31hhvVTRlPezosNL33gqst1dcqB?=
 =?iso-8859-1?Q?gSJ3/PSVJnyAcX5198mc48DxpP2rd6KIk6M0SYrED1OAFbMBorbSg4P9ml?=
 =?iso-8859-1?Q?dvER4ZrKlmqrfud6j3XvbBuYOZa3rEqj6fnsseVeTh+zpj/LCNlQwnecGs?=
 =?iso-8859-1?Q?CSHg5bVWHVbA24GxBycP1m7N45L2z5VNyB+PR1BqdW8tG/uAn59KVpp8qi?=
 =?iso-8859-1?Q?mfqprzO4VysG7siQEQrjxQZ+RwrsruvtZUWsBtSnl9lh7d11yitZfYtfMb?=
 =?iso-8859-1?Q?Is3sdtSBLRYjfKxfx1jGVwczNlHsLNU8sMJjDyjz13QbMYof5S8s3kS6gx?=
 =?iso-8859-1?Q?l/t6KdI60Z6HSkGXCVUEOf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?S7UzQ+pVzuDofzllYrfDjq+ZxBQZJygVWpB4L4veqhUy9LPzklnqV8I87N?=
 =?iso-8859-1?Q?X4VrWJB7HkeCdUjek92aEmIPu69A67lmF8gktmXAaDuZtR6SfKknpsyp4f?=
 =?iso-8859-1?Q?xuQdbSxt3d3Z39s9BMo9k9OdxaCOj5MlmAxNLSGkKpDkCwd6JHxsoe6WCS?=
 =?iso-8859-1?Q?r5X1dbKtEf6ZNp5ffLIxcLqewa0EOP1b8GxaYMqLwH5us3VbmBhh5p6nm/?=
 =?iso-8859-1?Q?Rybf2lGyjTw1jH/kiAdcKZAwxA88i0h7ht6fU0ikLIrIc1yJ5WzyU6bnnz?=
 =?iso-8859-1?Q?UHzpsHA4y6zLBcyx1Mm5Iay/RciyQfV9VY53WNER7K+Gdy/Aq5L+JPbOc6?=
 =?iso-8859-1?Q?l/WytvcxVu6oMRagyY+seBXPN+slJ1KPfmimTZv3kf9qXsBIngM55u+iZ1?=
 =?iso-8859-1?Q?d9VvBetXw6Dz2v9B4wxgzJmSzfP8M4RmhdjqLGFOZqXAM4OEqLcr8yxCkT?=
 =?iso-8859-1?Q?/M7KQXYTeMuZUQRlOcdWk9MV04jm4UW+l3bV4il68IGjHSJItxzQ1oTto/?=
 =?iso-8859-1?Q?ylDZCK7MuR2UxjtTb5c1A0oG8LWoKcVdMO+JyB8OMxFEobRE0r51FxnDe+?=
 =?iso-8859-1?Q?qc4Mg2eIasY2D3H08fTCziLxMKYWOQXvKfKQJnt0OAbwL619BZhU4Yc4xT?=
 =?iso-8859-1?Q?ZT9Kq8+y12jvRTvibyI8e2kPVhezfbjH7iVQDvmsDdtHK5Zu5p8ALvEcwK?=
 =?iso-8859-1?Q?jNe7YknSpG+VFp0S8hoyOeTodUe8GMEWpsr658iP79xPFZwwhs975gtFkQ?=
 =?iso-8859-1?Q?uuba97lBRgZDQx7r+LTHBtsQG39KnINkoz+jws2rJVQKV2WKWJmi2BgPLJ?=
 =?iso-8859-1?Q?iqrFhbds/AbEwQ/SDHFNe+e71a6EvRzIZDXztTocF5lLjPALszB+IqfSxd?=
 =?iso-8859-1?Q?BwVX/I0CaXIg6+TAp+RwRUnHJZOXp2qSRvZuIIg+rEnrx1XdPxd7Ou1XhY?=
 =?iso-8859-1?Q?1n2ensiO5LtEvSgHmWISVQoKgpLCJWA+4h6UbnfBhSgv5S5FIU++LuA9ai?=
 =?iso-8859-1?Q?mufObGYesTxekWHe+NLTH49Hj8kdTLmdW+fFccgbGACCyEnrHGdlSPieUJ?=
 =?iso-8859-1?Q?yCOBO3MN2rx6jXiXKyo6n0F+tS9oZgCIOdxFlJC5qSO6PzBYfybr+h+Xt0?=
 =?iso-8859-1?Q?RotPAdh+eGsKhcl2hYOHrGOvqKl+zPsBNFrnPyZCloqNSMDokubCK8nisM?=
 =?iso-8859-1?Q?bho05mLjyuBv/CSXMKPu1IZZ4DY0zfukz19M3bzGppZ4Hz23x379xSGdgN?=
 =?iso-8859-1?Q?nMmtQsbrCOp4kQveg7vQULkY9S8RPWq5ZZ8QMU7lPivgA3z6ZWPXsOPE7F?=
 =?iso-8859-1?Q?5lw+oG9znWmbZIwh8mTFLTKizfrZiRhTTqNqKuQ+hfcNPTPPV2lbbFG5eu?=
 =?iso-8859-1?Q?KOXL3sEh5Cr2W7paZjxKwr5RVrxhd65gpDEL6k/yCj4QnIrnaZHhacemie?=
 =?iso-8859-1?Q?v/3ERJfj7Blc0yZ0xPdpHV26iZ4A1CySyp8JGvre3qPE90grhsgVpBxuiT?=
 =?iso-8859-1?Q?eto7l5Lfcl4Fm4Ic0GTviculwHSiCE1FAfQ31TAUHV7aJPD/sEqtBLHY4d?=
 =?iso-8859-1?Q?yHGXhw8Wpgt9Bh0LFJVEnqsKxbOWcDqh6KPoc4Dwlol5CxoEDGot9VgLM2?=
 =?iso-8859-1?Q?k3cs5BdvVfjGJmdfOFMYUXzwpuYTQrWUgGpG1DHTo4hdZ6jQ/NNKXr/g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c88b71b5-8e0a-4dd6-9144-08de172d6222
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 20:54:42.2764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +PY5+oB1uMxVz+2esuD3L0gNTMUvIRGyv8hsNjyiTCzNLv7mZl5gpfsQFP7dyBSh3tPP7WStqyUJBH2oynAiYga0jeDPa+yM5SCoN+STQcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7385
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

On Tue, Oct 21, 2025 at 09:28:36PM -0300, Gustavo Sousa wrote:
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> 
> Starting with Xe3p_LPD, we get two new registers and some bits in
> existing registers that expose hardware state information at the time of
> underrun notification that can be relevant to debugging.
> 
> Add the necessary logic in the driver to print the available debug
> information when an underrun happens.
> 
> v2:
>   - Use seq_buf to generate planes string. (Jani)
>   - Move definition of FBC_DEBUG_STATUS to intel_fbc_regs.h. (Ville)
>   - Change logic for processing UNDERRUN_DBG1 to use loops and move it
>     to a separate function. (Gustavo)
>   - Always print underrun error message, even if there wouldn't be any
>     debug info associated to the underrun. (Gustavo)
> 
> Bspec: 69111, 69561, 74411, 74412
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h  | 20 +++++
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |  2 +
>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 87 ++++++++++++++++++++++
>  3 files changed, 109 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9d71e26a4fa2..c9f8b90faa42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -882,6 +882,25 @@
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>  
> +#define _UNDERRUN_DBG1_A				0x70064
> +#define _UNDERRUN_DBG1_B				0x71064
> +#define UNDERRUN_DBG1(pipe)				_MMIO_PIPE(pipe, \
> +								   _UNDERRUN_DBG1_A, \
> +								   _UNDERRUN_DBG1_B)
> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK		REG_GENMASK(29, 24)
> +#define   UNDERRUN_DDB_EMPTY_MASK			REG_GENMASK(21, 16)
> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK			REG_GENMASK(13, 8)
> +#define   UNDERRUN_BELOW_WM0_MASK			REG_GENMASK(5, 0)
> +
> +#define _UNDERRUN_DBG2_A				0x70068
> +#define _UNDERRUN_DBG2_B				0x71068
> +#define UNDERRUN_DBG2(pipe)				_MMIO_PIPE(pipe, \
> +								   _UNDERRUN_DBG2_A, \
> +								   _UNDERRUN_DBG2_B)
> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN		REG_BIT(31)
> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK		REG_GENMASK(30, 20)
> +#define   UNDERRUN_LINE_COUNT_MASK			REG_GENMASK(19, 0)
> +
>  #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
>  #define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
>  #define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
> @@ -1416,6 +1435,7 @@
>  
>  #define GEN12_DCPR_STATUS_1				_MMIO(0x46440)
>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS		REG_BIT(26)
> +#define  XE3P_UNDERRUN_PKGC				REG_BIT(21)
>  
>  #define FUSE_STRAP		_MMIO(0x42014)
>  #define   ILK_INTERNAL_GRAPHICS_DISABLE	REG_BIT(31)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> index b1d0161a3196..272dba7f9695 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> @@ -88,6 +88,8 @@
>  #define DPFC_FENCE_YOFF			_MMIO(0x3218)
>  #define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
>  #define DPFC_CHICKEN			_MMIO(0x3224)
> +#define FBC_DEBUG_STATUS(pipe)		_MMIO_PIPE(pipe, 0x43220, 0x43260)

Is 'pipe' correct here?  Most of the other FBC registers are
parameterized by FBC instance rather than pipe.

> +#define   FBC_UNDERRUN_DECOMPRESSION		REG_BIT(27)
>  #define ILK_DPFC_CHICKEN(fbc_id)	_MMIO_PIPE((fbc_id), 0x43224, 0x43264)
>  #define   DPFC_HT_MODIFY			REG_BIT(31) /* pre-ivb */
>  #define   DPFC_NUKE_ON_ANY_MODIFICATION		REG_BIT(23) /* bdw+ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index c2ce8461ac9e..43cf141a59ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -25,6 +25,8 @@
>   *
>   */
>  
> +#include <linux/seq_buf.h>
> +
>  #include <drm/drm_print.h>
>  
>  #include "i915_reg.h"
> @@ -34,6 +36,7 @@
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_fbc.h"
> +#include "intel_fbc_regs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_pch_display.h"
>  
> @@ -352,6 +355,87 @@ bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
>  	return old;
>  }
>  
> +#define UNDERRUN_DBG1_NUM_PLANES 6
> +
> +static void process_underrun_dbg1(struct intel_display *display,
> +				  enum pipe pipe)
> +{
> +	struct {
> +		u32 mask;
> +		const char *info;
> +	} info_masks[] = {
> +		{ UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, "DBUF block not valid" },
> +		{ UNDERRUN_DDB_EMPTY_MASK, "DDB empty" },
> +		{ UNDERRUN_DBUF_NOT_FILLED_MASK, "DBUF not completely filled" },
> +		{ UNDERRUN_BELOW_WM0_MASK, "DBUF below WM0" },
> +	};
> +	DECLARE_SEQ_BUF(planes_desc, 32);
> +	u32 val;
> +
> +	val = intel_de_read(display, UNDERRUN_DBG1(pipe));
> +	intel_de_write(display, UNDERRUN_DBG1(pipe), val);
> +
> +	for (int i = 0; i < ARRAY_SIZE(info_masks); i++) {
> +		u32 plane_bits;
> +
> +		plane_bits = val & info_masks[i].mask;
> +
> +		if (!plane_bits)
> +			continue;
> +
> +		plane_bits >>= ffs(info_masks[i].mask) - 1;

Nitpick:  It seems like we're just open-coding REG_FIELD_GET here.  Any
reason not to simplify down to something like this?

        u32 plane_bits = REG_FIELD_GET(info_masks[i].mask, val);

        if (!plane_bits)
                continue;

> +
> +		seq_buf_clear(&planes_desc);
> +
> +		for (int j = 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) {
> +			if (!(plane_bits & REG_BIT(j)))
> +				continue;
> +
> +			if (j == 0)
> +				seq_buf_puts(&planes_desc, "[C]");
> +			else
> +				seq_buf_printf(&planes_desc, "[%d]", j);
> +		}
> +
> +		drm_err(display->drm,
> +			"Pipe %c FIFO underrun info: %s on planes: %s\n",
> +			pipe_name(pipe), info_masks[i].info, seq_buf_str(&planes_desc));
> +
> +		drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
> +	}
> +}
> +
> +static void xe3p_lpd_log_underrun(struct intel_display *display,
> +				  enum pipe pipe)
> +{
> +	u32 val;
> +
> +	process_underrun_dbg1(display, pipe);
> +
> +	val = intel_de_read(display, UNDERRUN_DBG2(pipe));
> +	if (val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN) {
> +		intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_LINE_COUNTERS_FROZEN);
> +		drm_err(display->drm, "Pipe %c FIFO underrun info: Frame count: %u, Line count: %u\n",
> +			pipe_name(pipe),
> +			REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK, val),
> +			REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val));
> +	}
> +
> +	val = intel_de_read(display, FBC_DEBUG_STATUS(pipe));
> +	if (val & FBC_UNDERRUN_DECOMPRESSION) {
> +		intel_de_write(display, FBC_DEBUG_STATUS(pipe), FBC_UNDERRUN_DECOMPRESSION);
> +		drm_err(display->drm, "Pipe %c FIFO underrun info: FBC decompression\n",
> +			pipe_name(pipe));
> +	}

As noted above, I'm not sure if 'pipe' is technically correct for this
register.  I think it always winds up with a 1:1 relationship on current
platforms, but would it make more sense to just move this check and
print into intel_fbc_handle_fifo_underrun_irq() where we're already
handling the FBC stuff on a per-FBC unit basis?


Matt

> +
> +	val = intel_de_read(display, GEN12_DCPR_STATUS_1);
> +	if (val & XE3P_UNDERRUN_PKGC) {
> +		intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PKGC);
> +		drm_err(display->drm, "Pipe %c FIFO underrun info: Pkgc blocking memory\n",
> +			pipe_name(pipe));
> +	}
> +}
> +
>  /**
>   * intel_cpu_fifo_underrun_irq_handler - handle CPU fifo underrun interrupt
>   * @display: display device instance
> @@ -379,6 +463,9 @@ void intel_cpu_fifo_underrun_irq_handler(struct intel_display *display,
>  		trace_intel_cpu_fifo_underrun(display, pipe);
>  
>  		drm_err(display->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> +
> +		if (DISPLAY_VER(display) >= 35)
> +			xe3p_lpd_log_underrun(display, pipe);
>  	}
>  
>  	intel_fbc_handle_fifo_underrun_irq(display);
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
