Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681F392ED71
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 19:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AA010EB0A;
	Thu, 11 Jul 2024 17:06:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGsBH7Cw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 000D910EB0A;
 Thu, 11 Jul 2024 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720717613; x=1752253613;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yv2erPaIfGN6xw8IO3E2I4IkRzuXqlXO/ne9yzkj0dA=;
 b=ZGsBH7CwzU8HOAAnLLoxnFCmvzsMRSyvjM4z+Cg6nZXwVf9FGPyH1mDK
 fDIx2qCLsF7OUrgwz1RwJc3wtefgluws3aKVR/DNkw66t1pPsfBrGtJbv
 Vyn02qJtUC2KHYY3TLBtO2R/VxkODyMXjRQKuY+dpur7UodAIrNVq9Ut7
 4SHyja+WmIpj/UQaiqL/3W/UX8EttEyZGJpPNXneIXla0fR0yLxOZ1ehM
 U/MnKGhXMq65n5y4NF+oa7Hu6CqT09y7A8lTyAyae2Prk4VyvRcj4aXYb
 Lx5rlntaRKYNNP/UCUQZJ1Mbs8gEENshsscZqFoqUalxztCYjoJUJVsuh g==;
X-CSE-ConnectionGUID: cJ5HD6q8QNGloHoDpw+wYA==
X-CSE-MsgGUID: lsdBI9S6TQqskLdaNJAQMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="29270273"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="29270273"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 10:06:52 -0700
X-CSE-ConnectionGUID: jtmn+XpXQUC9aJ8XFxCe+g==
X-CSE-MsgGUID: wPA+uCgoQF6xxLk61KMB0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="48505116"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 10:06:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 10:06:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 10:06:52 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 10:06:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P/xMOu44HABB5GR3qtgZI2AMOu8vU2ud8JHMuEA/yyN0n4s/PVvg44bebcNjZVgs5ERaT3Ra0hUljp/F0zQy5NpKAFZveX2O4TswAUGFlGaTIbfI9MQUtwdXZ9qw+5OW9RVIMKfsAO1bFpWRcaUsfTSWR7l+qw32mZ5Uc4ysqbEISMB6n/RY8a33DqEMyxSWvQ4Rs2tE4iYIMdvBW5DTyEL9MKOhYWLN8VIuul2YKuRFppJiO2Dv2IfxnzX4CtU+xBELiHSdqTR7zX7zUJWcuE6W7evY1bImqcQogtJkYMxytoyAJN67sZtA2MNX3445wum66FywJhxMtUnQo6wkXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XJACwEYS2nSHjD09vRGZv88z1Agx2J4Ta/ZT2Jl0We0=;
 b=OdreDaPot0ExI7gIWf8K1JiureYzL4zQ7CS/BfBORmbpOp3r0dIYfQg3fWQqa8bvghXO1R/0KAlfG29VIJmUUxcud4TkK02D0Bei783UJFceIAaCSngTTqkB0IDRmXnHrz+L9z9dUwoIqvesZHgZ3qebCdHL3dKtQ4O0jUjux3m9qgf6Se0AE3ka1bbjMO5+mjA/wlxM4co5wNO0JWpWTOKlKDXgRCUJdqVH/t9Y2hKVsOnV22kfznoyNecCIbWiocp7fHYGO+7GG4lXbnnT4VctJR361r1ow6ZFoGcqkMI7XsH9O+wcEOpGjexwhr5gyUiClGK+e0orgRlhfNYoNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL1PR11MB5238.namprd11.prod.outlook.com (2603:10b6:208:313::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.22; Thu, 11 Jul
 2024 17:06:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.7762.020; Thu, 11 Jul 2024
 17:06:49 +0000
Date: Thu, 11 Jul 2024 12:06:46 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Uma Shankar <uma.shankar@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <daniele.ceraolospurio@intel.com>, <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Message-ID: <d2cqtxd5t7dxyf4qipzmz35zwj24yoa2bxtz2lp23zdcjvrye3@u6swnvfnvmwe>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
 <20240711163741.GS2906448@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240711163741.GS2906448@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW2PR16CA0005.namprd16.prod.outlook.com (2603:10b6:907::18)
 To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL1PR11MB5238:EE_
X-MS-Office365-Filtering-Correlation-Id: da29fb94-548d-48ee-5607-08dca1cbda21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lbV+sPC0xd67Aq861B136vv9upRYXmngif9Nf3l/OUiMkEZ4OD74VkbxtICd?=
 =?us-ascii?Q?bC2OdDNMvT1WeBi7vzywIq05TBXLEsWi2r4RIAhPpzI5M/oQg7x6jugywTRz?=
 =?us-ascii?Q?viSt4Ke8n79IjBuM3dtFFjWOXmMpG8AtshNaYGz/81kDgCCpv6Qp4ar06nCt?=
 =?us-ascii?Q?hNt9aGpPodZKP4UBnmjBL6+uLwliqO6cacBQS0zvBnZ6bZ1lWzMWdPf0m6mf?=
 =?us-ascii?Q?NUDAdSgjun3jE4GYHMbIR1vbT/t5VPPqsYZNZaQ8ETfWHDOU43TuOMSPNrvw?=
 =?us-ascii?Q?kqMy6xCEufODhY6WPMLBS98x6V141Y4DRwZlcLl17OjRv17kfqJFLKb+tc99?=
 =?us-ascii?Q?Ecz5HM4WPWfKYqU4MxQrkl6j5ne8ncpvMT+qVlbR2uVNlBf1bNOM7djQwtXZ?=
 =?us-ascii?Q?l4IZwXAhG4UVIifHNgippCZSZSsnn8IA4I9f0wqMyOsSK36Tjy+kVbCldIAp?=
 =?us-ascii?Q?kl7aCgJ5Eh60GPhxr9g0pJjJN7wIl1Lt12bH1LwnwkGmsWom3NgOlJO7UE4z?=
 =?us-ascii?Q?dpSH6rj+fT4VLpXCYJ3Y/RnyeuSsN8eJzHLv67XaHgbt4sL1Gr524QyF5oHl?=
 =?us-ascii?Q?QhrtKtO6ldt22WQTmWwG6LzZZhtt9EG6b5s+wEFIhjEMz3kwB6Mv1f8f6qJc?=
 =?us-ascii?Q?ZDV7bDrdEPYyvDP8tNbdPwDaPfRUHd7A8uxFzo00WBcOAzaI598PCfI9lGSd?=
 =?us-ascii?Q?Hj+3PTfaGJrHCCDLhuFZvEsthJsO9syxGe6YCo57s/TSq4Fd/VdPBCDZaj11?=
 =?us-ascii?Q?zx3AZo/wD9OItlBZJJ9fyo4XuG4NRpYUC5qRt36Rx8KCJ/DOsGaAxPMkw+T3?=
 =?us-ascii?Q?KXnB5IIlfo55YpDsD91mknVqYou/dGktChu/2oI58lsskonOdhpRilfGKm+Q?=
 =?us-ascii?Q?oXw+UarSm2YW47dw30PwhuMSIfP/q7rRVBB0zI9amjzFVyLnFjejgZ5ngseP?=
 =?us-ascii?Q?aVdm8BGyalXNbsOMEZJu4fmykoD9Wx5qwEmlNcgry+eq0rGNogbj/ydbN8Ug?=
 =?us-ascii?Q?u2zyrh28j87l9dUOrYWKnBVfWBaosttyxfgh/uqLhzyu2az//X92/fAMBIHT?=
 =?us-ascii?Q?bB8mULI5M7NaaL1k1Avxt647rFUif/2PvgkgtLB41s3nVFvksV0en870AvZV?=
 =?us-ascii?Q?2//AVjh7XKBvE2Zfsta5mzYxH4BTAWxeiiPWe6Y/ix+yR6vcPDnedCaYdaWK?=
 =?us-ascii?Q?LNCgLp3rYiw5Z9wCYaCZocvnu+IFQY+TbPWsT7o48JS1qhoiysCpKfS4Fy0r?=
 =?us-ascii?Q?qt2+62pR+lh7iwZyFhxjtd7iGsrwJhclnXdJfgb+6FTRTVdPeK4bEzwsnt/s?=
 =?us-ascii?Q?0xY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?swki6JOhO7DUyoDp4O6RmcJ3pndJVHS5SFkXqJpb0KY+lXu29Ws1bOIQEjlQ?=
 =?us-ascii?Q?X2/e5gXoNCBjr6Nk0dja7wNwUXpHg4CTFS5sC0csRB0JcZsLANTvyjgBIrIt?=
 =?us-ascii?Q?dTCbwGfgv/hqituX36X70+t8nP0pG0j1hMylKLGF0l/rd3eU7Nn24Id9LS2q?=
 =?us-ascii?Q?iHBlLXyfllXqVmk3Le4oS+FRTUlh707OvKp5jN+KYHP6vMykmYNyQ0BtL4Xt?=
 =?us-ascii?Q?m62BtBYXpbYWa5x4U+GRCMtBoIEiYO6iNvB/DA7M1Q6ZCafGaf2NsuugNNkA?=
 =?us-ascii?Q?o4rdVL7XqQChwvhb9nXSUX4Gy+6lXG5w+HG/1wB/usYVgorhFuKQjmTBXESK?=
 =?us-ascii?Q?hnPBxVeEjmjdCSg5r3shELbLdu+YhpANCTHnH457O1NxfnH90q0yvLvToIz0?=
 =?us-ascii?Q?uI4BN1XhsqNTqJgYAtfkb9vSQhm5F+VYErjvH725P7w2URrYeurVAlifushV?=
 =?us-ascii?Q?kjpAb3UpnYgFyYW9c0CvfLZR5Qmyd3cUy9n2rrdW7YfSOqIm7q3Qep6ugq4y?=
 =?us-ascii?Q?EIlPaUYMApWhbDRhvZwAZFPAiYsMMR/y4Xa8O7EKOtWBt1ouDLaHvhbth737?=
 =?us-ascii?Q?VOL8WjVUJ6JbfWm/kNQEURwXf0dJIB81A+ENA8/IZ4YZiL2onx5NxAn8bQT/?=
 =?us-ascii?Q?oxmy28VvBtZyTGatXDkgWGfgFOhmh+ro6qdJxz9qcxlPVkBzs53t+pD+nzyP?=
 =?us-ascii?Q?Anu2ocaCklCtFIeAqvjX+k++H/QS0+CDuGm0pgI/6DqrDqwiHzclZj0ubyWR?=
 =?us-ascii?Q?mPq1bjsoSPaDBnmkMswOLgCxGg5/SM3p7yROLuHF7Zglkp5C+uVtU6buDqJ9?=
 =?us-ascii?Q?KIPYZiuSHI+BKePSNCeONoOiTHSP5FLtyxfnZuyU3WXUZ7FtpNVo3OA4Rb/e?=
 =?us-ascii?Q?FZ7g4WJIFVGed4qSApMBVJBxvQwY/1illIpCaeaWLVZyatWtlzi1eA6dWkAi?=
 =?us-ascii?Q?NXFEnXkLfi8LtmxjJc7NDFRBVrdcmQc6bwpI2n5kEXaLx7EPtXIxkGlBfuRB?=
 =?us-ascii?Q?IYev6Xdon/8CHVrAoqfub/E22mRRVH0dKxbe5iVtnK6gxCqyLgg+TbCxkl7a?=
 =?us-ascii?Q?ktpXW7e/CE+sfTlU9XDmWsNJe92UxLyOYiDSplzTlNjyzoz+fwLzhh+sKFQS?=
 =?us-ascii?Q?npBPW4h6R6cejNcGs245zbBE5aBdGnWj2JgXFZr7n9zoBZRHhOcY+BUdJFNV?=
 =?us-ascii?Q?YChYIixvXO+N5TvqryBU6NaKLhCvy2AJkq/LWk8LN00BMHHn9euGB5UQe8d6?=
 =?us-ascii?Q?mI6JpMtAIO83Qyt95z20Po28n6GkDNqXNMNbZE+hHeK0t9lg8DFTwZbyWAFj?=
 =?us-ascii?Q?wZ5tECxy8qSHGsDd1iVA2NLLFLLkW8hp9iR5I2TpMNrJlpAXWEGAkqUHRXwV?=
 =?us-ascii?Q?Oszr0VGr1w3QrSnLrR8gBqjljTlWN85TPeVZ3uhKO2EWOnVtqMqcKOfVtCiJ?=
 =?us-ascii?Q?HhzpHIAPL3qEMclGPNt3OKnZL9GazzHAyDwTGZM+y/YEzaGIKRPz27aSCOUv?=
 =?us-ascii?Q?/Bc6xRJRLsRrnP4T2jdrasdGVG8d4N3mN986Fzj2I5q0qYd5Erlh5lBM58rZ?=
 =?us-ascii?Q?45T/UkwB47Nt7rfslqy2pQLEEG8V6VvY7T4UmdzV220yoVzQbKwRNKIk2IjE?=
 =?us-ascii?Q?hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da29fb94-548d-48ee-5607-08dca1cbda21
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 17:06:49.2307 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ErQx0KzlvVEOV6e1bfh+zBp7jBYOmObbbWPOqvUZO9Gmo9MgwbMckMHLqWdXCgnOn/m0eblsntFO5l9ZkRQjB0KTj9HVovwRLmcRaJs0s6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5238
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

On Thu, Jul 11, 2024 at 09:37:41AM GMT, Matt Roper wrote:
>On Thu, Jul 11, 2024 at 10:43:39AM +0530, Uma Shankar wrote:
>> As per recommendation in the workarounds:
>> WA_14021987551, Wa_16023588340:
>
>The first one here isn't a valid workaround lineage number, just a
>per-platform ticket number.  I think you meant Wa_22019338487, which is
>the lineage number that can be used to track the applicability of the
>workaround across all potentially relevant platform(s).
>
>>
>> There is an issue with accessing Stolen memory pages due a
>> hardware limitation. Limit the usage of stolen memory for
>> fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
>
>From a quick skim of these workarounds I don't see a clear indication
>that we need to avoid using stolen FB's?  I thought these workarounds
>were already being implemented separately (and aside from disabling FBC,
>most of the necessary changes are on the GT side to adjust frequencies
>and change caching behavior of LMEMBAR accesses).  I.e.,

one part of Wa_22019338487 is what is implemented in 
ggtt_update_access_counter(), because ggtt is in stolen. This can be
done for things under kernel-only control. For other things like the fb
we need to avoid them.


Also, while thinking about that... Did we check if we also need
something for DPT? AFAICS for LNL we will end up in

                 dpt = xe_bo_create_pin_map(xe, tile0, NULL, dpt_size,
                                            ttm_bo_type_kernel,
                                            XE_BO_FLAG_STOLEN |
                                            XE_BO_FLAG_GGTT |
                                            XE_BO_FLAG_PAGETABLE);


... and I don't see anything fencing the writes like we have in ggtt.


>
> - Wa_16023588340: https://patchwork.freedesktop.org/series/135699/
> - Wa_22019338487: https://patchwork.freedesktop.org/series/135460/
>
>One other nitpick:  we've been trying to avoid using "+" as shorthand
>for "and beyond" lately since some of our IP names contain literal +'s
>in their name (e.g., Xe_LPD+, Xe_LPM+, etc.).  We don't want confusion
>about whether "LNL+" refers to "LNL and beyond" (as you mean here) or
>some other platform that's distinct from LNL.
>
>But in general we usually don't treat workarounds as "forever" logic
>unless they get written into the spec as new "official" programming.  It
>looks like these workarounds apply to LNL/BMG today, but we shouldn't
>assume in advance that they'll automatically apply to platforms n+1,
>n+2, etc. as well.
>
>If we're making a concious decision to apply workaround programming to
>more platforms than it's technically needed on (e.g., in cases where a
>workaround doesn't have any negative impact, but applying it
>unconditionally simplifies the driver logic), that should be called out
>specifically in the commit message and comments to make it clear it
>isn't a mistake.  But I don't think that's the case here, since
>otherwise we wouldn't be bothering with the DISPLAY_VER < 20 condition
>either.

this is basically Wa_22019338487 and not exactly related with the
*display* version, hence my suggestion in the other reply to use XE_WA()
and tie it either to the platform or GRAPHICS_VERSION(2004)

Lucas De Marchi

>
>
>Matt
>
>> assign the same from system memory.
>>
>> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
>>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
>>  2 files changed, 19 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> index 816ad13821a8..8fda8745ce0a 100644
>> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>> @@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>>  	size = PAGE_ALIGN(size);
>>  	obj = ERR_PTR(-ENODEV);
>>
>> -	if (!IS_DGFX(xe)) {
>> +	/*
>> +	 * WA_14021987551, Wa_16023588340:
>> +	 * There is an issue with accessing Stolen memory pages
>> +	 * due a hardware limitation. Limit the usage of stolen
>> +	 * memory for fbdev for LNL+. Don't use BIOS FB from
>> +	 * stolen on LNL+ and assign the same from system memory
>> +	 */
>> +	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {
>>  		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>>  					   NULL, size,
>>  					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>> @@ -48,6 +55,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>>  		else
>>  			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
>>  	}
>> +
>>  	if (IS_ERR(obj)) {
>>  		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
>>  					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> index 5eccd6abb3ef..80dd6b64c921 100644
>> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> @@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
>>  		phys_base = base;
>>  		flags |= XE_BO_FLAG_STOLEN;
>>
>> +		/*
>> +		 * WA_14021987551, Wa_16023588340:
>> +		 * There is an issue with accessing Stolen memory pages
>> +		 * due a hardware limitation. Limit the usage of stolen
>> +		 * memory for fbdev for LNL+. Don't use BIOS FB from
>> +		 * stolen on LNL+ and assign the same from system memory
>> +		 */
>> +		if (DISPLAY_VER(xe) >= 20)
>> +			return NULL;
>> +
>>  		/*
>>  		 * If the FB is too big, just don't use it since fbdev is not very
>>  		 * important and we should probably use that space with FBC or other
>> --
>> 2.42.0
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
