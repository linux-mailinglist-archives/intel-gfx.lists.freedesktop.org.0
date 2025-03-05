Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6ABA5011B
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 14:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8EE10E6A7;
	Wed,  5 Mar 2025 13:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="deOxVfsg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508DD10E6A7;
 Wed,  5 Mar 2025 13:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741182867; x=1772718867;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=QaYX4/oKqWDpsFMnlry9nm0s8z6xdSwgLvYcZQGHcbM=;
 b=deOxVfsgkI1LG44zsrciku0LUr8JZv+F6v70NhEp4XCjEwdO4BrnCyze
 sq5AZk2BQcfwcpyoI0K5P6DPUP7UzAneifTUKix1DgNUkt9fKSKn7WhBI
 ZC0RlouLXfaK0rH72/XRQBT12npu+VZVSdIsIivLT2IPOlUi0XHPpQulx
 nOajrlCfRVRlbyc7ObE3Ytbsv8QbNhoiEiWm5IRnPM52W2bgilIQms9Q7
 sV/4ZWSihze2B1Zv1wd+pAnHueqVjpcv6cx69fOKSAu9R+P3uORGmPeG9
 dIu/+YvkgbNi5cDNnivfCVAGcBuhexvaWjkIKZZ0fPsz+QwV4ublvn5L5 w==;
X-CSE-ConnectionGUID: fqZ7I0cGSW2aOoyMIvfxSA==
X-CSE-MsgGUID: yrNbFDScQtiwr4dArjMGNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41855943"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="41855943"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:54:27 -0800
X-CSE-ConnectionGUID: /81XowEPQRaQlh5cB9r+Nw==
X-CSE-MsgGUID: Wb+v25iSThKVDzpvqLZCnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123288063"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2025 05:54:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Mar 2025 05:54:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 05:54:25 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 05:54:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F83D+KzPXm2Reuww3u0D/kNr2WgTpvIRzya5nwd+CPrxLmYKHN2e+mf4Kg5UfaK7+ckfr4V8aiVN9toZOy6xIrAHpQaO1Tw9ta9XTXxMld4WZIeab32n9XwkhQ/BvhCP6toAn+nuzR+acUR8sUnUA3kg4gbADQnJ9F2CRNbkTVlyXMn4oC5llPL9q6nI6eI65zZM1MA83SfT5V6vNzg8wcfFdW3go4okRUucmCYVjbDipyYzGutNDXUgUZbLEJZkUkOhDgz1yduCbbtLYQ4rKVdrnZBG4SM0EcyiIahkaAmrqGELwQqonNtwWgrMx08YspLr3FqMBJuBesep2jML5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AMTFdBDtrJ7CVxnCCjJvKMQHE0PeXhJD6KwJ4E3pOpU=;
 b=O+e6co96KXSrJ/6Ld/bfq9jJBsTzXWUJQsQNxtlW2DD/9IwR/s5uCIZyOaH3KMfH3trLHjHD/eihOxKN3evqUlyJsZ2bVmvnVoqZ0kJncXUv3Q3oEDtlI0twLYevdLmS4h7HsDbozpYG9mDwUOFr/kT3ikLqYYZkMqILO/SYoTGu4xcRmlnvSgIWN+v/eTdk1/dc69jNcpVgb6cZnWKzn0f/n/aExh1rcyCQDVkJgAJ5OekNBT6KCDy0YcTfeg2fjjvT/v3uBS2RLFYqStODiJZX8cQqjNWvfUPgHnSElt0VhtFO/SH9GYhgoNqccOuoGaY1uFYiUbdlJEPjQYH99Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 IA0PR11MB7839.namprd11.prod.outlook.com (2603:10b6:208:408::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Wed, 5 Mar
 2025 13:53:43 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%6]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 13:53:43 +0000
Date: Wed, 5 Mar 2025 07:53:39 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: Matthew Auld <matthew.auld@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, Matthew Brost <matthew.brost@intel.com>
Subject: Re: [PATCH v3.2] drm/xe/display: Fix fbdev GGTT mapping handling.
Message-ID: <tophw74rze2ipw5m7bl4jm7rniufcmmc6vb7upulhonwa6miud@el434szwfw2v>
References: <20250219153441.625352-1-dev@lankhorst.se>
 <dftpyfotba6vxp6pkiircxpm7ok7sowzx6x2fu52hdjug4rzfe@uc7e47olt7uv>
 <9b9afafc-74cf-4899-a655-4765c9fb8f9a@intel.com>
 <4c94aaf7-43da-4c10-b396-2d69445174dc@lankhorst.se>
 <26z7hzbek3llumpshnxuw72c5jxfd6cotf3jpydkatm4ckk2wm@b25hwnctgtf3>
 <18de13d0-124c-40dd-b987-7675fd851eeb@lankhorst.se>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <18de13d0-124c-40dd-b987-7675fd851eeb@lankhorst.se>
X-ClientProxiedBy: MW4PR04CA0252.namprd04.prod.outlook.com
 (2603:10b6:303:88::17) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|IA0PR11MB7839:EE_
X-MS-Office365-Filtering-Correlation-Id: d1eff310-b317-467a-4759-08dd5bed2410
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?kVYM9hhZSJ00TMaqE7HuqF4IX1tJovBx8EVxaJgD1az0V4uQAOF0aiHDPk?=
 =?iso-8859-1?Q?ZuyU+WkQOOP3dcu8mMyLsPJl3V1Zf9nmMgzILZVnfEflT8hNMa1ToPX6sE?=
 =?iso-8859-1?Q?/BctJOAVafrFmn4FtLzmwkrtxSnbMTlW0hrXlH8x9AKNOZAlMctdlJklQX?=
 =?iso-8859-1?Q?D4CxSMf2kr2GQive1eOIqBUlgJ571Wl4GhHR/+hZY3pcjIEmgY0cSxlTwW?=
 =?iso-8859-1?Q?zIGBVtOnNez9RJRog76IYxOiOD7vDebKzhJDStHJY8dDE2FRejE9vcBnpU?=
 =?iso-8859-1?Q?PYTdSd2DHo5+5D9xPjGIqYQ2+lQQelBGTM0PRQ+MukjOtXrxTLpiOeXWLN?=
 =?iso-8859-1?Q?G1DfDIR8sOyvdiZdKoOTt0379wZKa7QlmYoKGUmLL2WSUt3R1g+QqejspN?=
 =?iso-8859-1?Q?GuVEDKC91bGF6Okeu6O4Qnt7g1oAgVScm9r8XktU3e9wkb7JFzW5F8NC/+?=
 =?iso-8859-1?Q?mRNo+ysVtKmyRcvu2NYG9La6LmnXrxxnx4FZf+DyWPwOjy2cIU5+BZ/lGs?=
 =?iso-8859-1?Q?P7W8QATf2Y6SqLqluBLnVRZPQREO2S2Xt41mz10XBFMqPpmfbdMetCPyJw?=
 =?iso-8859-1?Q?p7mjAymV/IyySMXBBhGgklilXoDzAEWV4RmarkWpN6+iKAJyWXQ8GG/PDf?=
 =?iso-8859-1?Q?VQVsPvEJrN3WMET+xC0dCZIdnVk4XuTNCXLp20BUG9a1kpnm2+kxTv2l+Z?=
 =?iso-8859-1?Q?6ZNrn10rBGL+VmZxdHGzAVHh6sMPshkCfUUIiomKXE9u5tve1Foz1CwsmN?=
 =?iso-8859-1?Q?dLlzYmKkR/svF35OeuNprZshh0kL20H/M1sAHFrqg9YRBidUliJndXnMYm?=
 =?iso-8859-1?Q?kjiVFrttdEmwF3BCic31eTinX/Bp+vtnoPF+ABFiJJr6yY3Q20ibloUWhg?=
 =?iso-8859-1?Q?JUUoYLmyXR013ARvWQGfl8a5YinpMUYkXkZ2qUO5QW5yvMt1OaBOCqqSoy?=
 =?iso-8859-1?Q?/S2yOu/JpRhoUsL76Kbzzp5M/mEE+h7sw6sxr5CXhQd13tbFqJyAC//AhI?=
 =?iso-8859-1?Q?WtcijuiVJZ3finnFP/yF4eJjEQP0WpxAXqq7UhAw5aH0JBbc0+iTR1xqCv?=
 =?iso-8859-1?Q?jfLDH06F8Wq7IBtGmHzbJNB8LgdVHk8icB3gKKNhGSodmx+AHG+UE2YUoA?=
 =?iso-8859-1?Q?kxy1oel5rMUNvb+rORtUfsuULNDrSD5n990G6GYcNzwHon4q4i5hBmBc/q?=
 =?iso-8859-1?Q?0A8ocZiXSgfcRG7rBNMNhUSW9uwxyxfGgghPHxHQAUn07whDQ1aTMz/w/6?=
 =?iso-8859-1?Q?k5P/CJVute+/lOsIllxvCZIBWJIXLUdP3yXn+AXNcMqwicRZBe7NNmrVfD?=
 =?iso-8859-1?Q?hmykL8T9WCJqWNB+Xpq6CpIXhumechR1rLApSytAmrMQkI0Mkr0jZk7qhg?=
 =?iso-8859-1?Q?7A7i25eBBtWrZYIRLzT/U8fdAPbhZG+RrdCazpyafSdKxXObRMGm/GPIPs?=
 =?iso-8859-1?Q?F0nS8aHE/IwFEGIl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?o5LvnO/yas90uJkslhhSwzT4AvaV2B6U2/Hj5by8OiDtn1U4blg4O8/gOU?=
 =?iso-8859-1?Q?JONut/02oXs+YReStZS9Pi6n0eBdV82mJyxJCEGukzgtLgYA6V+mqScTOI?=
 =?iso-8859-1?Q?dkS9vGZcLn6smNKo/koaRtMbmdCqLcEB0stZXExUlvaQQPuSIX8l7GSV2I?=
 =?iso-8859-1?Q?08+yH8DypNdiZ22GQMQjPcrvOxqzq+CRhiEnkqt9sow21D/U0GtoJLHgAY?=
 =?iso-8859-1?Q?Lb5M017vNpU+z00hn3NKocX8Xbzg85Aeb0ZpF0go5+pfbr7bccPL+po3e9?=
 =?iso-8859-1?Q?E1Xxx7gq+Rn7LhdIIAXUE1i7bAHV88W4dfHxNm5bpegIi2C0l2aVh+BIVb?=
 =?iso-8859-1?Q?ARmRc5t1VGUZEQzSzsBkq3fX8BiRhWdd+6JZFiNY6UCFNBz7iCw01Up7Zc?=
 =?iso-8859-1?Q?OLH60ptLetnG7LihffhPl7Mlv9ghVszRehhk3hL8go6+L6pzC6NxBMZo8l?=
 =?iso-8859-1?Q?OuBtryPsAbZullzHHNgXEqfFClpx4aZFtVUxTNRbDEJtDsXHQfPrau30f5?=
 =?iso-8859-1?Q?zv8aUluMEDLgC3sSYvn2txCXTfTmBjQvobRfesQ3UFkY39KkFg6qK4n8lF?=
 =?iso-8859-1?Q?5s5jF5OnZB8nXQbfSydmFmGxRhlWJxjCSq7ihsSQyqC/7I3IvOr0g9Fpn1?=
 =?iso-8859-1?Q?t+bEn0phyL3BbYHjeErXxqazN6kpFef3/bNy38L2NJQmFh72DjRoR5TXVO?=
 =?iso-8859-1?Q?mlfc+4LeXYwF2xmMkml7WlX0djwMQ4X/irl0WNt/KNsfxml0YQdu4GS3JI?=
 =?iso-8859-1?Q?ylz8yk+oSymclSQXwz/8gfWokw4MipHGa2VqcE6CsBFDvSXBPeyVIowWb5?=
 =?iso-8859-1?Q?UTfN19kwl/hI4n6ld4nM0rN+jGied9qf8mzJjpk2bGXXMc4lN7GiIQvyCQ?=
 =?iso-8859-1?Q?5uYzt/Qa90twKZWcp6JAarDm7uBYw1akDhwp0FnYYmu9re1Nx51t+4KAum?=
 =?iso-8859-1?Q?M0X9TNZeyYh6+fB0XWkCTbSnjCKZOwe3+nietqp07/KZIjGpMK1SXcspMf?=
 =?iso-8859-1?Q?Qt8sVJ9NN/Da4wkOioly2w5/d5vS2NustAdjI5JbVzQbNmlgJzKazl9vzv?=
 =?iso-8859-1?Q?HfC3/BQLNWzN6bVuMXHfgr6BjweXg9s0QKpWynfIiluA9wAAnpYQggQEyT?=
 =?iso-8859-1?Q?ACnbTHzwf1RdcQ5bNXIwSaEM7xdht8eTcyAnV48bcTFljWPg4MzEgK3Xx4?=
 =?iso-8859-1?Q?90ClYP54iMKd6yQLXKgTbeExDTPGv0hzCGWjD/KsUd5s2B+5uAFFN0YqeQ?=
 =?iso-8859-1?Q?+RGurPPXchzkNB0qb/balC7wvlgyGzbIgBFcHj5z8vjBhaJ3BXlwJeF5fS?=
 =?iso-8859-1?Q?DTT8ZOLB6/unJPyEvoGuTUuqKGb+a52XiZQkNyq6FSVQJEfiy5GhKESWf9?=
 =?iso-8859-1?Q?HFp40C9EoMEFHigf7W1uJ/adIOXXxvFCDnoppBJKfl1cMPWuBCRcwHB5Bt?=
 =?iso-8859-1?Q?/hV7CdhVQ+Oik5Xk4FOFfiolwVx3ZctBEUj6Ml39f/5PliE5W2U8WU4VLc?=
 =?iso-8859-1?Q?DzPvL0HyDUxl4QmFLmHSXggULaeHrOn/YgSJvl9ioAz8S0XAIizY0biACU?=
 =?iso-8859-1?Q?x4uArfN67kDj3wD/3U08q5DD8P9I+81Ve7QAfUBIASGeqFiW5li2IwM2YN?=
 =?iso-8859-1?Q?KlA0W+ptObqM1eo5LTItYit10SX29WEFr5q6MIlBL4Dn1Eg7qb+fYF5g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1eff310-b317-467a-4759-08dd5bed2410
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 13:53:42.9771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Brxcwon/Y46YzImOiJEvhzscjMVWji6ikYIJISC3SCr/ar23FEt2en2xmmK1BB7bPs8I5M0HpTSEVyHduhv7bhfHMPW5DjCNO2qR7TyG94Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7839
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

On Wed, Mar 05, 2025 at 11:39:50AM +0100, Maarten Lankhorst wrote:
>
>
>On 2025-03-05 00:09, Lucas De Marchi wrote:
>> On Thu, Feb 20, 2025 at 06:17:01PM +0100, Maarten Lankhorst wrote:
>>> Hey,
>>>
>>> On 2025-02-20 16:43, Matthew Auld wrote:
>>>> On 20/02/2025 14:22, Lucas De Marchi wrote:
>>>>> On Wed, Feb 19, 2025 at 04:34:40PM +0100, Maarten Lankhorst wrote:
>>>>>> The fbdev vma is a normal unrotated VMA, so add ane explicit check
>>>>>> before re-using.
>>>>>>
>>>>>> When re-using, we have to restore the GGTT mapping on resume, so add
>>>>>> some code to do that too.
>>>>>>
>>>>>> Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
>>>>>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>>>>>> ---
>>>>>> drivers/gpu/drm/xe/display/xe_display.c |  6 +++++-
>>>>>> drivers/gpu/drm/xe/display/xe_fb_pin.c  | 24 +++++++++++++++++++++++-
>>>>>> drivers/gpu/drm/xe/display/xe_fb_pin.h  | 13 +++++++++++++
>>>>>> 3 files changed, 41 insertions(+), 2 deletions(-)
>>>>>> create mode 100644 drivers/gpu/drm/xe/display/xe_fb_pin.h
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/ drm/xe/display/xe_display.c
>>>>>> index 02a413a073824..999f25a562c19 100644
>>>>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>>>>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>>>>>> @@ -30,6 +30,7 @@
>>>>>> #include "intel_hotplug.h"
>>>>>> #include "intel_opregion.h"
>>>>>> #include "skl_watermark.h"
>>>>>> +#include "xe_fb_pin.h"
>>>>>> #include "xe_module.h"
>>>>>>
>>>>>> /* Xe device functions */
>>>>>> @@ -492,8 +493,11 @@ void xe_display_pm_resume(struct xe_device *xe)
>>>>>>         intel_display_driver_enable_user_access(display);
>>>>>>     }
>>>>>>
>>>>>> -    if (has_display(xe))
>>>>>> +    if (has_display(xe)) {
>>>>>> +        xe_fb_pin_resume(xe);
>>>>>
>>>>> this looks odd. I remember when we had issues with LNL about pages
>>>>> coming with garbage after a resume we talked about marking them as
>>>>> "needed" on suspend so they'd be saved by mm. The ggtt afair was one of
>>>>> them. Or did we go with a different approach and I'm misremembering?
>>>>
>>>> Hmm, I thought for display fbs we don't use the same pin tracking so it is rather skipped by the GGTT save/restore logic. But I thought previously the display stuff ensured all fb are unpinned by the time we do the suspend, so on resume we would just re-program the GGTT for fb when re-pinning it (handled by display code). But I guess issue now comes with re-using the vma and its GGTT mapping, since it will now also skip re-programming the GGTT on re-pin? But wouldn't we have this same issue for all fb, and not just this fbdev stuff or does reuse_vma() somehow handle this?
>>>
>>> Correct. Display has its own GGTT tracking.
>>>
>>> In general, all FB's are unpinned during suspend, and suspend will destroy the VMA. A new VMA and re-pinning will be done after resume, so this is not a problem in general.
>>>
>>> The special case is unfortunately FBDEV vma pin, which we started re-using in the patch series. That one should be preserved across suspend/resume, otherwise we get pipe fault errors after a cycle because the GGTT is wiped.
>>>
>>> The bug was there before, but never hit because we never used the initial GGTT mapping, it was only there to keep fbdev pinned.
>>>
>>> I'm honestly wondering how much it's needed, but not doing so likely breaks i915. Perhaps we could make a dummy noop instead.
>>
>> I stared at the current code in xe_fb_pin.c and related xe_display.c for
>> some time and for me it's hard to understand to suggest a better fix.
>> I'd rather use the traking we have instead of adding yet another hook to
>> call on resume.
>>
>> But if it fixes the pipe fault, maybe better to land it and improve the
>> abstraction on top.
>>
>>
>> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>
>Hmmm....
>
>This should work instead?
>---->8------
>FBDEV ggtt is not restored correctly, add missing GGTT flag to intel_fbdev_fb_alloc to make it work.
>This ensures that the global GGTT mapping is always restored on resume. The GGTT mapping would
>otherwise be created in intel_fb_pin_to_ggtt() by intel_fbdev anyway.
>
>This fixes the fbdev device not working after resume.
>
>Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
>Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

that is very very much preferred.

Lucas De Marchi
