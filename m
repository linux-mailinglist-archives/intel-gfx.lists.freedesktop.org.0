Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438CDA245BE
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2025 00:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D821710E226;
	Fri, 31 Jan 2025 23:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyRwYDqa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2FF310E1FF;
 Fri, 31 Jan 2025 23:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738367380; x=1769903380;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ar2Wnk+ZfdJU2NzZGf1k0yOdAiVV2B+uWU4Og/VwFJ8=;
 b=FyRwYDqanxUAoSYaef3QzaOADlgi9s1SpG1f+a+ZJQ3g1SzebssE7W5y
 FeY1eaf+1q29Ftj24UQEAkHCcqOpYHfWb+NGVp4+kYSeKuWMenrFdiLbX
 8Vk3w9W0Qz3uffB20sDYounipOr9uFQ0aOJbfChVGy+VR/2gDcb+Z04ol
 N6on2FV1wc9LEHz14ymX9hYtxL16ap0HK0cq5d1O2cQ73nmQu9W+pS2l7
 lwRYSnyKSAHl8t4krvmqWCjs5AvG6KqjA/UJ6kYXNsPZHuNQ+cYF9jUcT
 RuOHYG7+2H24xXxkM126sBRSkN26vVyEAZC3BCvsgZi3KQvv1rUJM9sSD A==;
X-CSE-ConnectionGUID: +uh0LbtGRruJJ0QteaNCjQ==
X-CSE-MsgGUID: s5FO6saBTwKQfnSgT1v6QQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38834243"
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="38834243"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 15:49:40 -0800
X-CSE-ConnectionGUID: JnbK8cwlQU+VHSaMNuF09Q==
X-CSE-MsgGUID: FtumogaHQsCDl7gC8cwZ3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="146953897"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 15:49:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 15:49:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 15:49:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 15:49:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NMv8rq9WIgfz3HKv86CfBZM5g/ztRn/O7hJfoDFU5EhQO/Jctrn89QVIrUPXn0fC6mIbdut0Nb3nRx6bikjYcvq61Etn4/y0IAeMfan6Zw9cOQL3mXfxoV8v6IVwAIhvraHURDEvvhDo+1GxCUZUgA88aMB3V/59wzji3a1EGN1aJtlTtelVuk3YMcqVtTaYUbo6m4/wRUGznthu0yCzg1XqajWng16+TWSoY8k7P96kNZUsci4AAt62qWtLn/CzwPFMK9Bb3zq1KSpQYJ5WTNWKL5w5RV1M+VRdmK0J96LCFIReIv7tgLgso8OcRjeolkJHgYh2OjYATfs5aEeTvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ar2Wnk+ZfdJU2NzZGf1k0yOdAiVV2B+uWU4Og/VwFJ8=;
 b=Ak0hlNbi1yUabMJKqcfM3J40RnD+M6sdaTEr+ieUKGRg1v7Liu35CA9DNaaJtpf6Vf3SOz1NyaUN2Lp8QlA9Z5WeVl0uUj2FQTY7mExLn+bEB+636Ysqv/8lqQFgoEmEFVxghhHwA/dm4wQL761dUijh07vFcqquUnjC0ZyvYaarLTJndUs3E9uNh8B8GSc2dDnOtv6mOHU4BsDLYwXkycrVhoqrW6APpElkcN8+gEgDdAj2b4Eh2RYbiBAKUyCfm3Or1HQP7kRiJ7ZqCNJxzJacfLtQuBQu21HbTDcdCG3FIHLkL2gd+9K4DRpz5wlgPWLFvddNb5WDJB+9T6AqqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7347.namprd11.prod.outlook.com (2603:10b6:610:14f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Fri, 31 Jan
 2025 23:49:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8398.018; Fri, 31 Jan 2025
 23:49:37 +0000
Date: Fri, 31 Jan 2025 17:49:35 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
Message-ID: <he7fbsp5ccqndn7iz344z2vz6qvdc4dsrxjsh27vc5nljrgsw6@dxgworjh7cnf>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <l4ga4qidhl6d3fwknxtq2f6j5lcjf3thgeklehn7o7sjnstqe6@lscjymo6oaqh>
 <173835458986.77773.13912562984988802225@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <173835458986.77773.13912562984988802225@intel.com>
X-ClientProxiedBy: MW4P222CA0024.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7347:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f45ebe7-c72e-438e-b1ca-08dd4251ebc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ryoeJXr+rZ2ihlotY7a8/MppvLzLYS2Lw6ZJdShSeYsZj5gWzs9sTwi4pUXP?=
 =?us-ascii?Q?nQ/NJ9rVgffZ13L6/olUJ04/XpNDMhVRZvfb2pVsYf6gXR9U076evWmOzCgP?=
 =?us-ascii?Q?kp9tgII0ZlfUg9yCKq0gAL+ttfVSbCrSKo/TzEstFhJBhLzu3xHAZtNmaTkT?=
 =?us-ascii?Q?Dlig24kmr5OFKAoY5yEmmaGiqolydCIdDIDbFeyfJ0Dl35lHOMUlWorQhGwf?=
 =?us-ascii?Q?WYzBW308K5j59fc1UDXqzykRHBfVljR7Lf59n2CJ8oc8i/D4DuChd4KzS+Gb?=
 =?us-ascii?Q?FRuqrV/FFEKSBB+L2uClON8/EmISBAAs7mOgI7nhlmAh3CP16H1EaGtm2ZA3?=
 =?us-ascii?Q?BIAiWlUSsvaWUlNRezClWdINpJbZimfySbKSMa3fcp0Hylc2MpysdRDKmit9?=
 =?us-ascii?Q?z0nMZD5aJgsqBWR4q4XLfCRIFaofH0dMBS2t8rBiC0Rmu/VWYtbyCIZ8jppa?=
 =?us-ascii?Q?rkoW1mDvSO8EBXYD3VGInlJoRwQw9fipsqI5pkMa9rbDJ0ZN5jwdfT/Vudc8?=
 =?us-ascii?Q?G0N0LrIWbM1iv7WsOWGTGFYPWxhr2QNalMddC1rcjgrU1r//lo0n3ArgWKv2?=
 =?us-ascii?Q?heH4SOH9YCfuH6GmNw0BNNN2rlS56SheYAj603elxjW18tEJrwv/zzGrXO+y?=
 =?us-ascii?Q?Wfj6Q6taN9YdU3Bv7+4j9yX6+grQLXnaGNYjFkwYptWiL1+LKisfvGVNvp2s?=
 =?us-ascii?Q?XgyYfbYy8X2OEaXU11vxDf25uXu8E3SrhvO/7AVCm4ow+znfl6fk9SPyXq3d?=
 =?us-ascii?Q?LW1spPsMk3lwxS2vOAl+AMxU86+7qAeAWegiln163/DaH0AFkP/i/OzW1D9M?=
 =?us-ascii?Q?wfcjeYBqA0vr9XGpIi2uG7kLNoejqB2CGKI6mJzo/sv3LrOnfDP49sZ9cSsM?=
 =?us-ascii?Q?KDTE53L57byRcc2hnCrUTNuVwLCb85gOuTlN7KEhiXI5IcXjRvwcCAnG17p5?=
 =?us-ascii?Q?0MEd5UAb5a39Xan3qxheshbK/P6IJYeTIKrA6woSgLH9hLPtSudO/TxlJQ6C?=
 =?us-ascii?Q?Budfaxi+y6XLnQJA6+2F+wYO+c29CL0l8GaCX8vYfLul6xjzwXRFLUlulFTG?=
 =?us-ascii?Q?dHmMji9dC0lgtvfjtCNkdaaEPAEG8UvW3pQqhpqRhmYj+pJdpKKXYY3nW+PB?=
 =?us-ascii?Q?qOX5v8w4nwN4JX7utTs5g0dq/YvLcy1PzkAp/MFLI2ZIofiUykCAXTNMTKoQ?=
 =?us-ascii?Q?u+/1QLR0knZ+oJO3QtaOGUB8VlzjWtGGZ5/WnO0OSJXcuXvcZDiFOKEtjn56?=
 =?us-ascii?Q?4735H0s8OarQJcO34oO1Cj1c52Fg4qW60IYqSCXnu0aZftaFzMMjCaAQgJYj?=
 =?us-ascii?Q?Z7uj5v9dZ/grpfSLvZzYg2DEFA1jWWkNybXandT3MRUvno+HR3EcYhAqAAn7?=
 =?us-ascii?Q?XQ+aN2oxLZLYf66P1avoQIdJe3M7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2YAPxwrsfYIkfnZbZlFAcOuJSFNr3vzq/EABdPWIrfj43zp6Ux8QG+wvRwJp?=
 =?us-ascii?Q?65JYi6H7TBcDINtwWY9KER48avk4DO7jghJYJgRhcswHCD5qKavXRObpiiHH?=
 =?us-ascii?Q?zf/3LCheAhIazCcWrqub9VwZRwR52XGEetW/WmD/tomzADc+UYntvyiIe/k1?=
 =?us-ascii?Q?s/KM1v9UDmameISker+84SbwGlRpexCdoUCjGZtDD8V5Ff8MQEPpmLtBd+7C?=
 =?us-ascii?Q?bT+JjeHm7duBlBcg7gVF/4jcqtPuCYA1Sm1VX1jN9qfNMpRHWIsaoctZ1YfZ?=
 =?us-ascii?Q?VhP4lC43i74c6wK59TaPTpf3fdS+sonv1W7bUuFzBdM0DdEFCOVDNbQGCEvY?=
 =?us-ascii?Q?BOHFFHXbIB/DHm/YvcBy1Tn5mf/Rjgv4TLrTsrshpTL8gD3FRSENE6N3m+6m?=
 =?us-ascii?Q?irGjXDOWPPP0ebEZMAZ53xdmqIf/lGU+N9wGpRRJuQ+N2MLjKQkIfIVQv1VQ?=
 =?us-ascii?Q?Q0AYhNzf7CH6bcmjYKunk2gScN48Zx0w/QrifNCqCF/aTXqxYVuBXjIeP40l?=
 =?us-ascii?Q?ax6YZB99Czp1yfhg8poiOAfBCSsvdkfG0867cK9bE2dArVlTKj7N2qNYdCPE?=
 =?us-ascii?Q?xeI6FqajY1BbPtUU0KuYay/WcCeI8i5y+N+UL5q0+sSf6s1A9RV3eMrDhUq2?=
 =?us-ascii?Q?WhdoiiRPVzaKfZI6aQwiJWetTdJ8Gv5oKkKWVQ7nYVZbJzfrdyrCEQIleETE?=
 =?us-ascii?Q?AtEs4nZWHixBo3vZwnPL21QNj0K01TuyI7ESxv8PrwkShxidXNaXDajz85FC?=
 =?us-ascii?Q?znGe+pvaVU5rQSPr/f+jYyRp/bdIa8g/R+vQHWJieo48ApNcfAciwRCbwUAU?=
 =?us-ascii?Q?1+UJ67I5EQn+/ZNdXeNAma+x6Wy26iM3WDq/q2g3v+0bwyGtErua0Rb+VnU5?=
 =?us-ascii?Q?xuUNXmIX2rgozx0CzBiS7wbxdiH5rl7VvCCN0Z9b4CsUxEQGk8FdnVKrBuR1?=
 =?us-ascii?Q?GpXrvuiS5plxxpvWrHMUQESTV+2XGfU8msCBwnbl8qSf1zLoH1ZlSvdsDnCR?=
 =?us-ascii?Q?/JvMUUKkWg8p0JdriJzn4i3jDy6hANzi1Ng9IHkd0zlGvy6B3Fqjvdh9Zdol?=
 =?us-ascii?Q?yuaXoAAUqqyhE9fUH/UsEoiw/GdYfT2YdKQr1NhrVui5KCXr832a+LGq022q?=
 =?us-ascii?Q?t0aZWHRZCVqOeVX+YAsc7eJZyxV8u5ESxsvI4w9rYy7lAij+VbLPlduP6yzA?=
 =?us-ascii?Q?Tdn6XEBeiCEcHdetNvzoY3dXWC1YTkBAoOxfF7EhgOYhwQYl2RCrXBJxUDSe?=
 =?us-ascii?Q?ncFvJ/pKYd7FxzLzqTZRNTK1NNoAZt4fHnSBxTryBOegeYosy4SDrNq8kSxn?=
 =?us-ascii?Q?hmoxO+pfj1WAPQebVT50lXqVB56lCm0XoPTJMoLgf7jlGjxEiDn2trCx6c5S?=
 =?us-ascii?Q?Dh7XfhO0VJmsPDgSV288Jo0w6cPP+fO3UDp4Ernyk1JrETtnDGYXLCRj3onq?=
 =?us-ascii?Q?P8mAsLBPJWBXtOtRk9uqSucayMsuVsct/mFybYDHZhBnyWzA7HOcnm/eksDB?=
 =?us-ascii?Q?WFz8F3XpetQ7q/izn40sRGsIoxUh5PMKUdeiRXf/St3JgeBo634AL1cGm7fO?=
 =?us-ascii?Q?/UYom7fqQS+qhJNmBdEMRB5gNb9MJmBZCFA3B1GBuxzYkK7Hp7abzmmRvBeE?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f45ebe7-c72e-438e-b1ca-08dd4251ebc6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 23:49:37.4287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AAb1rESp6VSdFUnqEvdRF7jYrU3L42NVoRWd5wUseZbHdm+LBm7/hZxa6yOu9vAYA3pz8wc5bWGy4STdYNcJNfdZgB0ql9I5nPsa7giIy+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7347
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

On Fri, Jan 31, 2025 at 05:16:29PM -0300, Gustavo Sousa wrote:
>Quoting Krzysztof Karas (2025-01-30 11:18:28-03:00)
>>Hi Gustavo,
>>
>>[...]
>>> Let's remove that check, since it is unnecessary and causes the
>>> inconsistency illustrated above.
>>>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>
>>Would you add:
>>Fixes: c01e78a96e12 ("drm/i915/dmc_wl: Sanitize enable_dmc_wl according to hardware support")?
>
>I believe the above commit should not be a "fixes" candidate, the check
>for intel_dmc_has_payload() was already there when that commit was
>applied.
>
>Also, do we need a "Fixes:" tag here? There only platform where the DMC
>Wakelock mechanism is enabled by default is PTL, which is still under
>force_probe protection.

it's not user visible, so no. Sometimes we may want to backport fixes
for platforms that may be used with previous kernel versions, but that
is mainly when we are close to remove the force_probe.

Lucas De Marchi

>
>--
>Gustavo Sousa
>
>>
>>after that LGTM:
>>Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
>>
>>Krzysztof
