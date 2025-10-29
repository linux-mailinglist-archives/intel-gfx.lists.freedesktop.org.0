Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D785EC1D692
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 22:22:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5880810E853;
	Wed, 29 Oct 2025 21:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gL1MDi7p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06FCA10E853;
 Wed, 29 Oct 2025 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761772942; x=1793308942;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NijM18uO6LtfgBirEDnAknbHgNPJjkn787axyjEgDMg=;
 b=gL1MDi7pWNNlADyuOB0uDo343BH7UZsCOmwCdgGnMutBLXVYMQ79E4g0
 SW3HV4AQMvCIgb55QOcdX/mrtuq5qlHQ+eByohv0eSS6SvzoM/YZRW7RX
 N1oP2LZgGBPN8S0hoZbqJfNLI4akId7HWfxR7Yec+QZc9Emu5izpcHu1f
 PMpeCc8Dg3/woXzXMSY7HrslvaDRjZ9uFfMZJFf/N/o9UPXMFL15Dgtj6
 UdnnClBkne+jYeh7Lk9vjcL+AsfDtyWs286YEK6Rub3QHlzxo6Da75UfY
 ZTqy+Idkt5Cxi+513mMZIDFo6R7Y+wLuP+W+OdNdNzSERoTZx79TXaxHl A==;
X-CSE-ConnectionGUID: jlBHrCRfRQW9vd5ljsk5vg==
X-CSE-MsgGUID: U3Bp/a9CThCenfMEx8F9mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63838163"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63838163"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 14:22:22 -0700
X-CSE-ConnectionGUID: PeYSG7MSRyGej58gS6XOzg==
X-CSE-MsgGUID: 7BV/HFP+QESp4bXhtmFXaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="190134047"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 14:22:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 14:22:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 14:22:20 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 14:22:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C6EBqJwjcGy05XsbdD1MvK3JayWimvujJb5myTPsLB1/JpJZCVRklrXsjKK1t8WNizTUiA+opLy7HD3GcMG/D6vy3DtZ7Sf2ym0/CPnYjeG/C0ELJaoEhfRH16VLrhm/RvRpPo6O07SpPDTWiP0yZMGCC+armG3HarI9YTW0jvAbstUHYngUOz836tGiBjydiWBEBPntmvg/FUzQdFjiMqaccGAZR67JzxFHxVU4TeN4LscLTbw3WtabrOGObAl87zreZYHkAlPUTZ3Z+A5e1yuXHzrYWxJ98kGcIedJirnDAM8WSfe3/uFhaDEME/aDiDiBGyL9K3qCFBydVn/IvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xq9k38Iy8kaXKwHTz94VjAWriOF1ieX6wr0/eQ96McA=;
 b=S6in6rkqKJaJkJZDvnBMxjHyaU17HKed8zw2TcktB5GBsTuUeEZLuqmeSLKoRX9WQiuJBqFxL0Q7x7kngztn9MvSd9rRZv5gxg9EeGIR09dxzbjYFmXLye9JYSXC5IBbG+b/CEvZktuCkc7LmyDZwXuk1We75YivDQXDvNLebzUnZAGmSD8BCCmger3x3fnqRTPJ8bdcbQIjg7VZMiZh9bH0cF8lgNVyF+bFxqJ9ryVX5CCdK0y4omtt2vRWPPMCUP9kgbHHQdP04E53rPkiwVbxtEyHNjwgPa2fzPMOnWM/HXmA9Cwyr64b6NG4+Rytzis9ZxiyAGZ0SqeawNGycw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV4PR11MB9513.namprd11.prod.outlook.com (2603:10b6:408:2e4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.12; Wed, 29 Oct
 2025 21:22:18 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 21:22:18 +0000
Date: Wed, 29 Oct 2025 14:22:15 -0700
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
 <vinod.govindapillai@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2 13/32] drm/i915/xe3p_lpd: Adapt to updates on
 MBUS_CTL/DBUF_CTL registers
Message-ID: <20251029212215.GC2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-13-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-13-10eae6d655b8@intel.com>
X-ClientProxiedBy: SJ0PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV4PR11MB9513:EE_
X-MS-Office365-Filtering-Correlation-Id: 77dd7115-3fb4-475d-fbb5-08de17313d5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nTchDmMSnJ6PNctzPGjrEj9BXU9gI6U/i0Xi5miSTOIOknawu6LFXPW4tbEh?=
 =?us-ascii?Q?vBmKfakS18NFO1dn93n7DZ11x2J679PAfQa4UyvLYSczCjF7iLZ/MefehYx5?=
 =?us-ascii?Q?AhMjlcnzYAjIdL4PlqPcSdNb+p78bYF/PZH4UvFTV2VBvKKcbjiZADmtWWWP?=
 =?us-ascii?Q?mAkUkqv+UxMI1OmIA7eYy5Xt+S84MCRmBhxGKaloKWqVZC8SnOVaILrwmYK0?=
 =?us-ascii?Q?CE4uZlqyAtxhT70xsiPI+cMZLZWmxQqT9QC3lqyexxrTqmgG7SHJ/hBi3iVl?=
 =?us-ascii?Q?fXfnPj+0EplD00eGIjQpzXYSqaBWvLP5n5fduMGYeyDoW8LrS41HEzD07O19?=
 =?us-ascii?Q?EQd8Ay4jUOmU1MICaVjTYCier62bIzAO+dZUz7EWNpgWRcWX2qyIQ0lXCD0X?=
 =?us-ascii?Q?EpH5oF4KsnityD7aaibT3yinVR8OBHl3pEpP6jMNsnhJUeaDfr1eRNNckP1L?=
 =?us-ascii?Q?gqkrdabmVdx3UV3P/KbTJSQPRCfeJhTNLCAR685lRXjHjxNC0qL9Ysf98h7J?=
 =?us-ascii?Q?oHMosAfn2zmUCpz/W7J/a85gabogR7hfd6VkvSn7la6aFz9IJqb5CO6niJSi?=
 =?us-ascii?Q?TsKV82yOyLRoJgCJGiUHGsTARrBAQwlTrXk5MIf+tqc9j5Z4CSC0/X/7v7eb?=
 =?us-ascii?Q?N2b1FTv/cMhDJF13zJ1QCoXGQ9Bf6RpgJYyujHIFUHyqOGR+8sL8Tc/roue/?=
 =?us-ascii?Q?tNFO8F0583PGXlVzJler8Ko1x1F1sbAIgvIQnTP0HM3Hwd+M5PC3CnGLAMDG?=
 =?us-ascii?Q?i13KXJfphtRNtRTI9Ettn1dSkhxpcU5hmv07wsV21F0XeonfVf6sAI1XH1pu?=
 =?us-ascii?Q?DEdp5PGW+4IWKxaDALoWmIHIcf2gTBqrRGlLOyDpG98Jy+rVy4bOdiQ7+84M?=
 =?us-ascii?Q?GzrzwE8LoRlK0eBYe/Cx+TvUysWfpEjEaTLRz6gVBOgH1hO9PkgyNE/GTf/4?=
 =?us-ascii?Q?yDYsfZfOoUy5aaTj0yCB1OOM6p3pwE1CHeenYbFd8ppff392n5cdu5nd4tg1?=
 =?us-ascii?Q?VzvJ8qDj8iSCCkHHuZt1ZAX7Y33dnTMbB4kcSP6iKkXq+F1kgJGMj2uv6dWt?=
 =?us-ascii?Q?T127m2+GDh7GpifCgywd40FItT1NeMTICO3yXopik9Jjcxgyxd6jEvirVjwC?=
 =?us-ascii?Q?8VRYvDYPgMUGvHgFF8GVhLP54mIIEzxeYdb1/7K6jK2xD1Ko5SBoVCWfN6lI?=
 =?us-ascii?Q?/5+wOqUMIQae8qsapwN4yezJf2MEfp+hp+1hdfJXA5fi417o9KdhD4n812gr?=
 =?us-ascii?Q?lQ75lrNrkATAuFLblpeiWIsyeEMxP95TDjh3vVgyCV84dFg6qTIMOFcVxRz9?=
 =?us-ascii?Q?5yr+tlguof/jxKg77UM4wPdSHYetIEDl0oiYLgx/63fX9fMIBvgYLN14E6ul?=
 =?us-ascii?Q?grkcE7RAaBkOggcucfp46qWRv06WtMMe1asY+ZCGD23MNSfazjKHYyTaxjG6?=
 =?us-ascii?Q?n+SfidU2awQjD9fg0lmSiypidRUPuACA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JSd4Eeafhxpu6aZArHanuacdm+rsrPwWRWWebEQutiXAh10G5tU3MI7RMYQh?=
 =?us-ascii?Q?KrMqk6NGi5KcyvvCJO3yO+OnKelAkBjXISrlB+exZntk4agWTD/8UF/Lf7Zh?=
 =?us-ascii?Q?e+BBojbrdG8cGUxv2GkSBcLqUHGJE0Xyy0S2WKwHzr5aMNzcs+tp/bek0Er2?=
 =?us-ascii?Q?kGPaBuQOlV3/fGQwniAwddmWh0ej6tO2lc/EqSsVOb8mjBZCQIp9VEyPG30h?=
 =?us-ascii?Q?xS+pKA5JJwm+2XPnAe4/hKw8mgMKeP31TI6g/jQCYMXedBvMPgYYZ/DFQAbq?=
 =?us-ascii?Q?BxIMa/arSyg85MI9dRej3Au3thzbbynhDLsRv9+5TltxgUDB8cSGGqpirRHX?=
 =?us-ascii?Q?LDjxaGBXAAjXLqXwFysgMOvY+uVXckq8nU6AYA83SFAC8/7doWPpgl4QTf/u?=
 =?us-ascii?Q?R76/wfZL6WQngl/IUAvn7A0PUz4XEY+dwnApw1bGR8Xgq6/iF5asQiPmhu88?=
 =?us-ascii?Q?1x/WQa8gU/bsqY5sqeO5F3VZjxi/t+Onxlp6dJCy2EcM05BowVPiI8EqZaKH?=
 =?us-ascii?Q?ISDVIctgAcz0mNAZUQoy1FIcH8wexW5Yw05PYztnxErqENsplTjLnZoEZJSO?=
 =?us-ascii?Q?63Fl02/m+E5Hv9IzFJ+9e6SyVd5NEJthgtT63k6WVrKHblwG254PP+FYGoyb?=
 =?us-ascii?Q?3FIlJ6zU4fk+uTW0LNz1STeucxZWfRngrAD4wiH6MhVmxjqQQSDJfbp80DuC?=
 =?us-ascii?Q?chln8/fW3nHOH2IU6cCetAxwmo78vuEc6VJpGhCdRQNJIS8XWn2twy19MFbl?=
 =?us-ascii?Q?ngu4IQXJcW3BBMZVrEUoOgRKTF6ZEJYCZ5QO/zfSeiurHDh1US7EXn556YwP?=
 =?us-ascii?Q?7gIqTN1pjGVz4DaL48fVnXDQ/ANv9cJVdIeeo6vTMGpBTSNxxevxQkmvxmNp?=
 =?us-ascii?Q?y+RBW/5VL0CRPjCIHDshl2bBQIELLQoDfB/A9/OpJvr09Kxj84sw8LyLRnG0?=
 =?us-ascii?Q?dn2HDNxTMs+LgLlYIoIosgsWwUO4hN5U/FsqUfPZumYWK/VMBcNKyioc4r1M?=
 =?us-ascii?Q?LFtmZyI2p4Q/d0ep6rycz+Aq7wRAD/SIPDZhFTQ1sda5H4831d1btUSSWnSg?=
 =?us-ascii?Q?bejtedd+XxzL/6oaiVzu7P9NFSjqpgzW48jDbQmii49mxUctGTNXR/XmSYxu?=
 =?us-ascii?Q?7iPAxSOozwI0ODDgsoyUsV3k96lR1497k8AnYiIgxbe67TajO4puxqoVZAQD?=
 =?us-ascii?Q?hH33tiRH3mHhIDY85UkgNqgcSMAfBHqHTCFBg28eGwLhaIZwGvGiyVQMF7TQ?=
 =?us-ascii?Q?YHY3cytun6gCTZbtK/XIsP2nO0Dej6zaPlCS4Kj5Ax0zDdWQbXoH5jX5fzL/?=
 =?us-ascii?Q?HSElT42iWZCaEyaEkHroIqlnVVb1dqYbgmkFELXV11pOAFnhuUnNpbulpdtm?=
 =?us-ascii?Q?ODsB7xJEFAIxXUM1f9x3eQZf1EPOiR4/ZzjZZetUU99W8ZpvMGzRJisWq47v?=
 =?us-ascii?Q?IOBnAWwqwQnXwKcz2qnD5ae6+FdCIx+qY/zwD4kxaf9Qpbks+Ewr+jol09rR?=
 =?us-ascii?Q?itDDoYE7YW8FEUyZ3dXRV0R2h3mUZpuJmpaBRiRlzS/C/FyX2X/+U7phD7SA?=
 =?us-ascii?Q?SGPKiMJA2xFvVwNaQt9r0STD3HwAhv90YoVm5Ty9Mjpfci1cUcPI6yzyBS5M?=
 =?us-ascii?Q?lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77dd7115-3fb4-475d-fbb5-08de17313d5f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 21:22:18.5308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c1/BZm/3ABmjn+dHirz8/sS7+d8jbGKoYAAJeFzs6BdPQKfdwqyM4DO6N7mG7EuLHrQfVz0c3JfEmtuMaNf/JswmHCwV8mREg4/c90aAXRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9513
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

On Tue, Oct 21, 2025 at 09:28:38PM -0300, Gustavo Sousa wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Some of the register fields of MBUS_CTL and DBUF_CTL register are
> changed for Xe3p_LPD platforms. Update the changed fields in the driver.
> Below are the changes:
> 
> MBUS_CTL:
> 	Translation Throttle Min
> 		It changed from BIT[15:13] to BIT[16:13]
> 
> DBUF_CTL:
> 	Min Tracker State Service
> 		It changed from BIT[18:16] to BIT[20:16]
>         Max Tracker State Service
> 		It changed to from BIT[23:19] to BIT[14:10]
> 		but using default value, so no need to define
> 		in code.

In a lot of cases when a register field picks up extra high bit(s), the
extra bits were previously reserved, so it's fine to just adjust the
existing definition (since reserved bits are required to always read out
of hardware as zeroes).  However in these cases, the new bits these
fields are extending into were actively used by the hardware for other
purposes on previous platforms, which is why it's necessary to keep the
existing pre-Xe3p definitions unchanged and create separate Xe3p ones
that can be used only on the newer Xe3p platforms.  You should make some
mention of that in the commit message so it's clear why we're handling
these a bit differently than a lot of other registers.

> 
> v2:
>   - Keep definitions in the same line (i.e. without line continuation
>     breaks) for better readability. (Jani)
> 
> Bspec: 68868, 68872
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c      | 16 +++++--
>  drivers/gpu/drm/i915/display/skl_watermark_regs.h | 52 ++++++++++++-----------
>  2 files changed, 40 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 256162da9afc..c141d575009f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3477,7 +3477,10 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
>  	if (!HAS_MBUS_JOINING(display))
>  		return;
>  
> -	if (DISPLAY_VER(display) >= 20)
> +	if (DISPLAY_VER(display) >= 35)
> +		intel_de_rmw(display, MBUS_CTL, XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK,
> +			     XE3P_MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
> +	else if (DISPLAY_VER(display) >= 20)
>  		intel_de_rmw(display, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_MIN_MASK,
>  			     MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>  
> @@ -3488,9 +3491,14 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct intel_display *display,
>  		    ratio, str_yes_no(joined_mbus));
>  
>  	for_each_dbuf_slice(display, slice)
> -		intel_de_rmw(display, DBUF_CTL_S(slice),
> -			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> -			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +		if (DISPLAY_VER(display) >= 35)
> +			intel_de_rmw(display, DBUF_CTL_S(slice),
> +				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +				     XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +		else
> +			intel_de_rmw(display, DBUF_CTL_S(slice),
> +				     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +				     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
>  }
>  
>  static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> index c5572fc0e847..94915afc6b0b 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> @@ -32,16 +32,18 @@
>  #define MBUS_BBOX_CTL_S1		_MMIO(0x45040)
>  #define MBUS_BBOX_CTL_S2		_MMIO(0x45044)
>  
> -#define MBUS_CTL				_MMIO(0x4438C)
> -#define   MBUS_JOIN				REG_BIT(31)
> -#define   MBUS_HASHING_MODE_MASK		REG_BIT(30)
> -#define   MBUS_HASHING_MODE_2x2			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> -#define   MBUS_HASHING_MODE_1x4			REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> -#define   MBUS_JOIN_PIPE_SELECT_MASK		REG_GENMASK(28, 26)
> -#define   MBUS_JOIN_PIPE_SELECT(pipe)		REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
> -#define   MBUS_JOIN_PIPE_SELECT_NONE		MBUS_JOIN_PIPE_SELECT(7)
> -#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
> -#define   MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
> +#define MBUS_CTL					_MMIO(0x4438C)
> +#define   MBUS_JOIN					REG_BIT(31)
> +#define   MBUS_HASHING_MODE_MASK			REG_BIT(30)
> +#define   MBUS_HASHING_MODE_2x2				REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
> +#define   MBUS_HASHING_MODE_1x4				REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
> +#define   MBUS_JOIN_PIPE_SELECT_MASK			REG_GENMASK(28, 26)
> +#define   MBUS_JOIN_PIPE_SELECT(pipe)			REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
> +#define   MBUS_JOIN_PIPE_SELECT_NONE			MBUS_JOIN_PIPE_SELECT(7)
> +#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK		REG_GENMASK(15, 13)
> +#define   MBUS_TRANSLATION_THROTTLE_MIN(val)		REG_FIELD_PREP(MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)
> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK	REG_GENMASK(16, 13)
> +#define   XE3P_MBUS_TRANSLATION_THROTTLE_MIN(val)	REG_FIELD_PREP(XE3P_MBUS_TRANSLATION_THROTTLE_MIN_MASK, val)

Nitpick:  I'm not sure if we're 100% consistent, but I feel like we
usually sort bitfields based on their upper bound rather than their
lower bound.  So even though xe3p and pre-xe3p start at the same bit 13,
the xe3p should probably be sorted first since it ends at a higher bit
(16 vs 15).

>  
>  /*
>   * The below are numbered starting from "S1" on gen11/gen12, but starting
> @@ -51,21 +53,23 @@
>   * way things will be named by the hardware team going forward, plus it's more
>   * consistent with how most of the rest of our registers are named.
>   */
> -#define _DBUF_CTL_S0				0x45008
> -#define _DBUF_CTL_S1				0x44FE8
> -#define _DBUF_CTL_S2				0x44300
> -#define _DBUF_CTL_S3				0x44304
> -#define DBUF_CTL_S(slice)			_MMIO(_PICK(slice, \
> -							    _DBUF_CTL_S0, \
> -							    _DBUF_CTL_S1, \
> -							    _DBUF_CTL_S2, \
> -							    _DBUF_CTL_S3))
> -#define  DBUF_POWER_REQUEST			REG_BIT(31)
> -#define  DBUF_POWER_STATE			REG_BIT(30)
> -#define  DBUF_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(23, 19)
> -#define  DBUF_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
> -#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(18, 16) /* ADL-P+ */
> +#define _DBUF_CTL_S0					0x45008
> +#define _DBUF_CTL_S1					0x44FE8
> +#define _DBUF_CTL_S2					0x44300
> +#define _DBUF_CTL_S3					0x44304
> +#define DBUF_CTL_S(slice)				_MMIO(_PICK(slice, \
> +								    _DBUF_CTL_S0, \
> +								    _DBUF_CTL_S1, \
> +								    _DBUF_CTL_S2, \
> +								    _DBUF_CTL_S3))
> +#define  DBUF_POWER_REQUEST				REG_BIT(31)
> +#define  DBUF_POWER_STATE				REG_BIT(30)
> +#define  DBUF_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(23, 19)
> +#define  DBUF_TRACKER_STATE_SERVICE(x)			REG_FIELD_PREP(DBUF_TRACKER_STATE_SERVICE_MASK, x)
> +#define  DBUF_MIN_TRACKER_STATE_SERVICE_MASK		REG_GENMASK(18, 16) /* ADL-P+ */
>  #define  DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x) /* ADL-P+ */
> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK	REG_GENMASK(20, 16)
> +#define  XE3P_DBUF_MIN_TRACKER_STATE_SERVICE(x)		REG_FIELD_PREP(XE3P_DBUF_MIN_TRACKER_STATE_SERVICE_MASK, x)

Same here.


Matt

>  
>  #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
>  #define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
