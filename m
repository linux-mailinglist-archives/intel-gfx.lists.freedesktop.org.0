Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2B5A3E3CF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 19:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D121F10E01F;
	Thu, 20 Feb 2025 18:27:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nszaVr1I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6088E10E01F;
 Thu, 20 Feb 2025 18:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740076066; x=1771612066;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lWWTAd4mEtXyc31C61BzRrVaSrUUozXxe7w6aZBhSAo=;
 b=nszaVr1Izn9bKqVfCw9V9SeQT8Y4okHcl1ReNS2OZ8t7zL/FTk+js/eP
 nXDUqkWcx7e/yFMtuNUUmX9yTkbTjJUZbwCpxsFNOb9Hp7DYhlwSbwsjW
 MdauGU+5TRTIXuOsS+m5+cXtIEjTuSZE9RBw5BNuIkTNwh0PwrZsvA+Zt
 Oe8ud6FIfwme/x4K71EQmemK9NKm+0R6QWW66YesLquAioAKi0FBpPBuA
 ZO4JaDvoaIELzfA9sbux6an5FvSRYoriVe8CZ17/D2/4juMJQqlkSh4xU
 dwyi0IjegvMXxpdpL+MmboHsaIIB839a/od3NRjNxvAGM4Nv5LArew9Uo A==;
X-CSE-ConnectionGUID: DdE+ZsbHR9edYB9QjrKUuQ==
X-CSE-MsgGUID: fCInYBcEQ1KuYDbej2Epgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="58282356"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="58282356"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 10:27:45 -0800
X-CSE-ConnectionGUID: 61wgDjgTQMqSbjjloEzWrA==
X-CSE-MsgGUID: v7A1eVKlSWW3Icex1oGyKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="114847540"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Feb 2025 10:27:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Feb 2025 10:27:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 10:27:44 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 10:27:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rXAxO9KtWcWwEsKi4z7o2sVPRdd/pu++WYxA13EHqBtENb1fv6ffZEmJ0sdD1v2WOfeY/dKBFq1MBM6dxDZeYr6pne7PSTLRyL7Ns6wD5svcHmWyqsyMh97LedUnjKzYsm1HKsWQicyH6XiNWBQtwa1kGqgPrLveg2QAvlJvpcXa5Sp+mGpOUS0GokyTv732FnikhqrgEpeJoOpxuVesb3W44YDYn6p9ZxkNa6cAPvxvD9cqlgjtPF6KQoJH7x37lFJMP5V6LXCkcwhIN5B6bNxWx/qX3snc1PXGnse3yrKgNtVswVi+udZvdXJ7jW3YcJZ9Oc837OHoLseJxhVPSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lWWTAd4mEtXyc31C61BzRrVaSrUUozXxe7w6aZBhSAo=;
 b=tzzORhifwpgFj7oiTrIpVXdeav+fM5xAQj8EEzNr0ZhQbwi2FYAv9jZiCeWM6cUHQZzD0la28QnFHtEVVlNUg+S/SxxkSr5OrceEUK686j91i+TJjDeGIzvkuh1qqTSRLolwlp0fkoqnGuT5JERuWuykUDZWc83mjeEM/UwrQ8vUqqK7iCKyjgqO2E1Vc5OXYIyQph31SO0BKQJkiiPNEQTdkZGRiyZ5s/vezkPJ5nIO4QjZzkEUOiT6pCKVZzpTl8eqwMBA3ZqqWAdcVU6ISVaLC/ZEsX6Ul+5I6TLDjld2u3DJHwiFJ2mGr2Grvk9UsYO2hHSD2CI7mxtPOsj6kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Thu, 20 Feb
 2025 18:27:41 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8466.013; Thu, 20 Feb 2025
 18:27:40 +0000
Date: Thu, 20 Feb 2025 12:27:35 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Dave Hansen <dave.hansen@intel.com>
CC: <linux-perf-users@vger.kernel.org>, <x86@kernel.org>,
 <linux-kernel@vger.kernel.org>, <dave.hansen@linux.intel.com>, Zhang Rui
 <rui.zhang@intel.com>, Kan Liang <kan.liang@linux.intel.com>, Peter Zijlstra
 <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Ulisses Furquim
 <ulisses.furquim@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] perf/x86/rapl: Fix PP1 event for Intel Meteor/Lunar Lake
Message-ID: <nf6gbtgn7lu4pvewuhrwca2efaxrkdhxazw3oktaixn5q5yg5r@7y74irve5udw>
References: <20250220153857.2593704-6-lucas.demarchi@intel.com>
 <d25ef356-3614-4e69-8cc1-d74dbbd2585f@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <d25ef356-3614-4e69-8cc1-d74dbbd2585f@intel.com>
X-ClientProxiedBy: MW4PR03CA0299.namprd03.prod.outlook.com
 (2603:10b6:303:b5::34) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB5205:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f5cc545-1531-47cd-b2ae-08dd51dc41a9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/OmH1PDvwvIy2ui4iu9QN7OgYcM0TeO3NgZq5t0N0OY/588eb//TthW3FUgy?=
 =?us-ascii?Q?f890/jEKu5uXS1hJUK6pFwv84XKhcGsLWmGcjTbC0U8UrHrJTeLFh4YL5Z5G?=
 =?us-ascii?Q?/rdvM38pXFm2UWKP5sNxJZhvJ3mmLatDCzl2Oro6Ry2483+3GPVuayfqshtB?=
 =?us-ascii?Q?hxQhx2Tr/0b1KI8CuKbj8QfOxbxVGgyZAbQqQEQBxHSrMyQAipM0Nt2LV/Vc?=
 =?us-ascii?Q?40dZF+iGh5QsdLS+ANLWrQZxyINntt5GbR1v1TGnnL8uGM8d8uyj+EnZzDnX?=
 =?us-ascii?Q?oHAAOWosa6mgLBa9qbBgjVVRwXvuQxc0MJj1xwkdjmQSgDtNOSMYkMgTVD7k?=
 =?us-ascii?Q?Wdj2NuJS1wQSPsmpsB3HLoZAQNsPdFl2VPvA3sOtAX5qp8eT1SqY3s1erKYm?=
 =?us-ascii?Q?IqFRir5uIy6yhgQjLTrWH4Hj6Ou4CPR3SjXu6/3p6AQsMTj3l6rbpYg5Mdpi?=
 =?us-ascii?Q?zQm9DqPS2EwkxDF0uaDiZv9TPnjYdi/f7DfyLC8X+k7phHCfOnVdWYvHTj0Z?=
 =?us-ascii?Q?6yvRzUEkQ0tTFhlxBBEGxXPx6WBrPzAH+WvhgJA6WsB3utx3Yb2dFottElOf?=
 =?us-ascii?Q?G9ajYF0b4/7iqAQlGiLZk1+u23A7jq0iofmoVlDOFQrrUOVM4wuzuYlmbBaa?=
 =?us-ascii?Q?gI1wUG8RsxuMSVmxpPZ11Sx8zvjPZfsbhFtk8j3fMdS08AYNmqG0D+Zy4UrN?=
 =?us-ascii?Q?tojmvUuRO2APsWA9YA6sZ1XbzX/9zgc1otZiX5KNc/PHgRN03OspKTW5rxr4?=
 =?us-ascii?Q?Hzbx0VuJeyrNSYuUY+Za414Wft2zNKfWMlcE2hgg4V4y3mcIBdQ/tEu12JlO?=
 =?us-ascii?Q?lXIy3530uRDaRrgcxZGB9MON5IZ/BMoPhDWNKEy/WLmMDIk7U9DeW/c9hcqF?=
 =?us-ascii?Q?8/78i+qAyLCFZnSJapsYCvAp1hztSmrbWVdKL8K6acG/xkrTeU9PjZkKPufK?=
 =?us-ascii?Q?moWQne4LKoHLCLif+yRQ4eCks5I5rjQ9aOQyQOtxtL13XCSwUPyY+v5EYJY4?=
 =?us-ascii?Q?rXjQbCt7Sw/YyzLB+bx7Z8z+IBTtFB6p7AQH221GJfy5dzwWrRQ3OYxsQCDA?=
 =?us-ascii?Q?we5OOYFyWb7DpTU733mLQeJ9oSCyH2LlQwAIFFDyApydsNai0BKqNSpSHksE?=
 =?us-ascii?Q?9d4XENWxOLFntX8pUk4wfEz/EP64OSqIygOXHkCWnnSwZG7MKKfnucfL9Cta?=
 =?us-ascii?Q?D0Rgq1iZhzWp+PKDCoH+l1uCCQ9w/be5NE2W7ChdrAWBk42BbiW/lP+dHX+H?=
 =?us-ascii?Q?JzF0bwN3ps3SSaI3HQ1042kOYL9D7Xe4KcwYITz4ed9A4wEGeLcTeH/OQ4hS?=
 =?us-ascii?Q?FcXjXm3w0dmLraURyQHGjNeGtV1ppR8vaikL5j59JH3k+L5+ETia2tCmstxY?=
 =?us-ascii?Q?lBb11DMthPT1uw7K5X7IIUNjXVsb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VEv9xodno2NLe7v2aQi43x0R3WTvjWB6eAwOQbCMJvuW2558E+ltRSjXN8v8?=
 =?us-ascii?Q?4LWGze1qudqtYJV43PPb0TGGJkslNZDhFZfGRfMwfYUvkmOK9Lnkhi8QhJvR?=
 =?us-ascii?Q?0vsoYM/kZeBr14T8aNg/6gS3OQizCRRkZwncHzVpq+VHER+Pt7Ai03BCx+SO?=
 =?us-ascii?Q?Hn4q/YNOfM4pzGFuVTjzJ0eo3K8EXnVkbLf5tzXGByHrX8awkTG/CwB9n2tx?=
 =?us-ascii?Q?CXAf3eqaAmzHy4t7z+JUELO8Ru2l79Ojl9PNlbuqWNKI8vCJouPqcCqKpxxw?=
 =?us-ascii?Q?8/cBeuHUn/yLlZnKTiGvS1gqrJfHuKc0eY+exicv19HECtxLOsFUC1u43BJs?=
 =?us-ascii?Q?RrLS4m+PlfqOg1VJS2DfZsYySSTYlhI4JdW4xoQajMRF0Hru0sUcZjkqgn+S?=
 =?us-ascii?Q?85L1k1mB7KXIoZLgCv4rsD6UkL4ikYI7VzXvTKeZpEfa22ht5i95r/qdBos/?=
 =?us-ascii?Q?1sUvMD1Hgv1tuTS5GughL4IgmGiFEqyOT8PSQDskihcJOp9QY4hJIOo7LM0u?=
 =?us-ascii?Q?+Z2lPE6NushiPcol/7iaWiiodHFLhWWnqs+mImts4rNeox9G1ebMOnPdqEa1?=
 =?us-ascii?Q?JZSHS8cmOz3Etwaij/tnm/76vGJT1S2BDbxhO3QEaktPOSrJ7HwgbF/RS/gz?=
 =?us-ascii?Q?2DQSpxPVPmLtw35hS2cemyUpVsCC/KDBY5TXGwbFMTzf5hO1XRSF0oodi82g?=
 =?us-ascii?Q?aizjmYMn3Cs5zDcOLOMtiOognyv4QMac0SnEea9DMORz8zdM3g27+vvntHtV?=
 =?us-ascii?Q?D5oifs7bn4iLLr9/Bwlkj00S6GW00jJEZVALzumC/FEBdra5Aq9lqpFUpgBJ?=
 =?us-ascii?Q?UKUaZVS/xzeesACmSW6T9DqtdRD3mn9tyOeqf0PgsPzeDFlDJoGk0kU/9WGx?=
 =?us-ascii?Q?NxN8kEc8ve/Kdnm8YXGU5ozlV1o2ZqAqjCIsuOtdtRRq4r+64BrVqU2zOcNo?=
 =?us-ascii?Q?xcVcCdJ+oxDARzcXybLoGVvhA1TgznaTnni/kqLaYFFooBMXd9+B0/bohzbJ?=
 =?us-ascii?Q?J6bmZhLNEzG+CWSvJVzNZPUuif1GRnJpeQvt3NyScMzqv+B13I5CXTskXMQN?=
 =?us-ascii?Q?6LF6FqJSW0ibR5ZYi67ohDgFOOb+oYxltETncpVT8+hZGd2fwcL4eMiGi3z+?=
 =?us-ascii?Q?XQNNBLCUUizKZhIzy2PNU64YJUN0o8xp7LvcGZObUhGaT5UvZxkVChP2TUoV?=
 =?us-ascii?Q?FR1J4IJ5lrl6yACvN4y9Et9+KIeoI1ogTPUIblz7d6M4OddibXENGynbNVvH?=
 =?us-ascii?Q?msSw3svbqkPD7Cz+iu4esXxGcd70TfvVI6+TlNj66whBrYcoJqw8ekbYkXzV?=
 =?us-ascii?Q?p1CNr1XGmam85S0+NrDGVoISKrwdqqqbA24D00Jm0cOYRiWYX42N4xz7MYR8?=
 =?us-ascii?Q?qWzAwoVU7+aNjZCN9bncB30nUzlXhVfjN7C0pQG+UVP4tSxxwURtSH3YZbEF?=
 =?us-ascii?Q?bMvP/cglM3A/Zd3CZDSkVP3JgAJAwryskwkcPDnOIqk5f0qvaJhayfRSLV9r?=
 =?us-ascii?Q?bUboLyXy57v01PX0CG6QkjdH1xB6i5uJC66o79eOdhu07ZdY4Lf5wfYSfEYM?=
 =?us-ascii?Q?+jX+1PwgKcrwP9zHm7el+9Rkcp4Ma+Vs2fSGA3rFF1pscSrVkxpxjEsvfIi0?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f5cc545-1531-47cd-b2ae-08dd51dc41a9
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 18:27:40.2853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hnFlVr0jKEg6UmKQzCljKtYaKu40NM3r129Le1ppsX0O9tG/+2MFQcdoujQDEWI0fMKPk6X8ytrMB55ksbVsTJ59iOMODLPrRjIh6fm4QCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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

On Thu, Feb 20, 2025 at 08:28:01AM -0800, Dave Hansen wrote:
>On 2/20/25 07:36, Lucas De Marchi wrote:
>> On some boots the read of MSR_PP1_ENERGY_STATUS msr returns 0, causing
>> perf_msr_probe() to make the power/events/energy-gpu event non-visible.
>> When that happens, the msr always read 0 until the graphics module (i915
>> for Meteor Lake, xe for Lunar Lake) is loaded. Then it starts returning
>> something different and re-loading the rapl module "fixes" it.
>
>What's the root cause here? Did the kernel do something funky? Or is
>this a hardware bug?

 From what I can see, the kernel is reading the value and deciding that "if
it's 0, it doesn't really have that", which is not really true. For
these platforms sometimes it keeps returning 0 until the gpu is
later powered on, which only happens when xe / i915 probes.

But what I don't really understand is why the behavior changes from one
boot to another. I'm assuming it depends on some funky firmware
behavior.

Lucas De Marchi
