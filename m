Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC0984EEA6
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 02:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5639410F12A;
	Fri,  9 Feb 2024 01:45:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dPYD3F4I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A0810F12A
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Feb 2024 01:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707443127; x=1738979127;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kTejTUYUI69x+ETATdmE0A4y0GII6F2/f/5O34tA7Fs=;
 b=dPYD3F4IBpJjev77G8sM5piGybYRFqWt8jq8PS2m1N4ClEIbmK90BUQw
 DUAIEKk7U0ILtxH/o+Ic2myHczS0H+dEQOLuDK7x3xtn1KGXb0gJTZA6t
 fjuA7OaZde9awgyOgutx6pg82lldu0e528rQ++MqEgcXpeDfp9yuNSSal
 AXDbgj/hVACK5h8C9Ul9Gf5tY6d1QVMACPmmy7S/DTes0JrCrT2dGNokQ
 k0/tNvjTd8lwyz6C9OTz/wIEurZPuKAUM8R0iYYx68CgX6pNUcTmkureF
 y5cHrMmJBThFxmMfZDSftyFVNZb3fUjyy/v735OsqFH0ILByP8V80Ov27 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="395779743"
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; d="scan'208";a="395779743"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 17:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,255,1701158400"; 
   d="scan'208";a="2120301"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Feb 2024 17:45:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 8 Feb 2024 17:45:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 8 Feb 2024 17:45:23 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 8 Feb 2024 17:45:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D//7RAC1uleXUct+dwNuJtup9T55RfIRcNNWFmu2mScRdznhO24aPoByILMIPaOgmT/GtBqlvptbyotgoVFNT7ERFRCWp1LDbgth2BcIi3XBrpnxJ64qIeLUH348FiHSXoVjce9lq9S3mFrblKeFfzyfpYEjxN8zZ7+a9w0BSP3NQAsjSrndaUc810TlxePe8MC7OYerQWuSszWgJRksnjsB5pCErW9Wx7qTz+z4imunpB5PTPY+CblzOukT2AnRtxY2FEsZgRw4IBwc5Q2tb9fHoGBGukxZk44FYg/ZTfRFqlnSIC77GgIia9rl25p1AO+DPDqeSc38TTKDYBhJ1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRA2ChCvH6NpFnCn5pZ0XTX7f+rGHNRNiPxe4psTg5k=;
 b=iDv0067RkqoQ4GN89R7uWyU6UQ7+fd069vcGTHM+n5xK3MLZV2EGKG9/1P+xebPN/+OhqTfHfjGGeJv58XbZxIlhX9/pcvua9MZLCrrZuWlPBn5sxXBihAYy8+5eYBVnw+Hy/zpzVamkDU6B4/dfSKTYfx8ju9cV+9QhwFJh+GdT3C6NVWmfDiJjOWwa1JImzH6rGajFRSbTCNTyz1rl35kgrOcaD/KsxOQrIbbypSJ8p+alfpztRsRFwE6HX4cxay4EMZcRT45vyVrRv/VhyIlhOaekyz3/1Z7mCOS6t8lJ7bWm8pgLHzn5zsmjg4FK16X5TRBwTUIU46sYjOdiog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by MN0PR11MB6184.namprd11.prod.outlook.com (2603:10b6:208:3c4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.38; Fri, 9 Feb
 2024 01:45:20 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f%3]) with mapi id 15.20.7249.038; Fri, 9 Feb 2024
 01:45:20 +0000
Message-ID: <af232621-ed88-466e-9162-7698b5583503@intel.com>
Date: Thu, 8 Feb 2024 17:45:18 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: GuC issue
Content-Language: en-GB
To: <natur.produkt@pm.me>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <mpy7oR29BN-ZuXsGo_DrVjgvt7tZXStYEkdhwHKRFqzjB6DkbATG6i8qLYaNq2fAsXIUiYXJ6HBXTurfBaLHuwcxeggLjtKQHdxwVWdsO04=@pm.me>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0048.namprd04.prod.outlook.com
 (2603:10b6:303:6a::23) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|MN0PR11MB6184:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c44d5c5-a350-48aa-0c4f-08dc2910c661
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m5Z1aSp3++/HTDNFv/K9R0TkQMXsF3UhES6n17K8tp+TRNh0QC4kXbxPE66VrTErG1LEr9kvkMHNFoW0WocB/0fAs+cTLP9QJlYiFgOv7Ql6nXc0mfUBoaqvnTmoKYxQppcoqrRjvdBiKVfhUd8VEhuXEyDKH/Fw+Po1L8EumZ7GigRWhYv2oMGlad+/J5oQ1cwYIOFa+Fkqd/GeZ0BYP93zAjdBW0XG9hccJDcwxHkvQJRpxUtMELiQJP0m4HDGzJiXhEDVB4ukEsNJr6h7fRd06EGA9I9RBvcmLEqznV1kzZDij3+Q6i+qKvqZR7kKE6d5jZlc5Z/rKXvJ5dJ4oj67Nb4gUpK+YmKyYVmkJbcD34qxdAGzTIzyE18OE23M9FF0Xza4QuXH4r0kt/T9hgjdBmwfC4yoK8vG2UNMFTYIicH9nLGSLAncKmse6xFCkP8ECHPuSYSJHJSiHbewmxJWD+TTyz5dNzASYD2nY+te82pGuc9ikYWrh806h8PsK1AIT/Roa//srr97zlgOVCUYgqI3HjJwO+6NGnWrigc5w/CLoovB605oCEbmLESH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(39860400002)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(6512007)(41300700001)(316002)(478600001)(36756003)(6916009)(53546011)(6506007)(8936002)(6486002)(8676002)(66556008)(66946007)(7116003)(66476007)(38100700002)(82960400001)(3480700007)(31696002)(83380400001)(26005)(2616005)(86362001)(5660300002)(2906002)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3J4SWRjd3BUTEdkdFkzNHo5MG1pQk40Rk83SUk4cDhBV2s4R2dxRDBFMGhs?=
 =?utf-8?B?cnhFQTdsOWNyUG4wOTNTZ3BVeWt5cnBHTi9yZDhCVDNEVUVZNmV4UjZBZEFw?=
 =?utf-8?B?Vmx4RjFzbVBvQTlRa3FyTFdQWFpubGJBVDI3WllPMHI1T3l1TmVtRHhkOTZZ?=
 =?utf-8?B?bEZXeWhrbVBIcWc4UTVLbFJ6WUwwVG1tN3FaWERIM1V2cndiRFpVQ2hPWW5B?=
 =?utf-8?B?eGNSdnVUQWdEZXpVQldkZjE3ZXQ4N1R0OHgwTmVwVS9RMnRCd1N4Z1lIdU9q?=
 =?utf-8?B?UCtrY01ER1BDMjlTVEFpS3ozR0l5SnpsQXRDMmNTRTE0cy9MUHVPRDFkNlNP?=
 =?utf-8?B?NDhKR1pkVHlXMXNjcEhJMmsxTGErOEZGeVdHSk1rVEpoMU1NeGN5Nm9vbWJQ?=
 =?utf-8?B?Y3JTRU1nVHIrUVh4MzdSQ1Q2dFN1Vmc4MlBDNTFZZTgxK1owUlRaNHpoZkNF?=
 =?utf-8?B?YzhtVGsySG1la2poejhPREFteUNKczdvQk55eHlrZHZGMHppQm93OENoanBZ?=
 =?utf-8?B?VWtJVE9TMTc2bGJGdnhuR2tPSEwrbjBSYlN6WERBaDFzV3kwK29KVTNOYWVa?=
 =?utf-8?B?VUdiRVNiaE92ZlZIbDUrMUtkMzlYUlFSb2pxWHVOTXk5NyswUXZvcWZvVlMv?=
 =?utf-8?B?QnNoZkUra1M5MU1Ld3VhelRiVitmUm5sSUNOWU1CZzFuNGRSWFlUelphMDYx?=
 =?utf-8?B?K2oyVUxaQ0FpZzlqMjhPSVQ1L3F5OUZ6Z1h1OTk0dEsrZUk4ZFRNbGVIay9h?=
 =?utf-8?B?dXBDdC9BMVl0S2xoM1p5QTRZYzlDNnVFSk1kSGtKOGlxakJzdndoc0RkN01B?=
 =?utf-8?B?RmR1Wm1hZkx6R3FILzhCVlFrdnVERFN5UC9WaUlJcy9Xay9JQ0JIMWRhTTYx?=
 =?utf-8?B?Zzh1L3ZMeXhuNVNEZWdXekhUYUdTYjJ2OGlROXNGSVJGRGFEZXFETjdnT3lJ?=
 =?utf-8?B?RW0vV0RRaXRQNWUrZThOTUNlTlhoNEF6Zys1NUZlNUNkWkxGcEtjNHFIVFFo?=
 =?utf-8?B?Y1JDbVlUS01oWERubitkdVp5TlpQZkFwQ1F6blFEcHZNTUN1Z0xOSkVtN2lV?=
 =?utf-8?B?SGFvVVVtcGhGRUt3dFlXL09JQmVBTTBMandaSmw2U0lPcEFkZzV5cFRsQ0cx?=
 =?utf-8?B?K0c2dWtXS2FpZlNMMVp3NCt5eVl5dG1BS2RIaTF1KzJ1VDJrdVlaNTJpN1Yr?=
 =?utf-8?B?ajM3bkNBbCtYNTR4MStadWhpT3Q2TFRuVTVDZ2dSNUV5OGhXSWhOWVN2VHJp?=
 =?utf-8?B?aGhUMXdLRUw4L2d4cmxTbFRzTHNxNGd6eXgyN3dYcUh4aDZOcU5YRXIvOVlW?=
 =?utf-8?B?ajhtUkdpaU5NcHJlWnNhS0VPYkt4R1dPbURkdUkzNE5Cc2RtdGlFVWtqKy9W?=
 =?utf-8?B?MURMSVc2Q2RNL2N0Rmh3N1hSRXJxbVgyVjlHUlNGbnZSaHA5K1F0UStKUCty?=
 =?utf-8?B?WWxMVkkwQVU2aHBtdkpSNDN2dlRiUTZrUEFScmJIVWY0cXAzRGRnZzZIR0xv?=
 =?utf-8?B?dHJJZGJYSTg5STB4M1pFSGROMWw5MjluRFA0ZjRlV2E3cGU2OHZBMDY3TDND?=
 =?utf-8?B?VGljZjlIM1lENzlpU0pJNWVyT05UaXlKckZmZFYzNTNlTG85S0UwNXJYL2JH?=
 =?utf-8?B?Znd0Q3VweFJ6cHNOeEVPUGpjVVBwdWpWcFpmblJyRFNqMUpCakNVVVgzMitS?=
 =?utf-8?B?LzZKekRjRXlrRU5UWHYzS29ZNExRQ0FJa1NDK2U5TzIzdnQrRUdtRWV4bTBs?=
 =?utf-8?B?SEtOVkl4UkkvTlRYZkdTVEwwR1E2WW5lTWR4WS9rMzZUN004Q0Z0T3ErREd0?=
 =?utf-8?B?Z2FmRWw4c0JEWTQwd0cxNmZEMFU3bVZiaVZzanphWnJGSEJpK0RTS042WnlL?=
 =?utf-8?B?OUJmNWlyckljK1R0VDJ0bHFFVm5NWDBvWDJkV1lSeVdESG1QTjZ2b1o5eEZ5?=
 =?utf-8?B?Z3RBS0luenZBd2NxOXNRUTI2NXk2ajltRDkzSkpnZVJMRkVyREhYeXc0TzVM?=
 =?utf-8?B?V0VhTHJ5Um8yeFppZWU3SlhxVWlpbmdCZjdseHpiU2cybjVRYzVQbGt0eVBO?=
 =?utf-8?B?SXpnYlo5L2lQWGxmNWJmNzJOVzZ6TUM1TFg2akxlRE1jaDRSajVpYlphQmNQ?=
 =?utf-8?B?Y09oYUl2WUNNZ01xQitRRUFGYTFEVlluU1pMQ0xnNFNxZWxmOHV6R1QxKzRs?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c44d5c5-a350-48aa-0c4f-08dc2910c661
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 01:45:20.6069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f+VIKtWe/di0SBbDD/0j216D88xaAFX1S/r5X10lSHPUE3mtSwbyw2zNsc3zesKSEqobnft66eIXtWaMVSBQLvQtPapjQbmBSfAYnscf+5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6184
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

Hello,

What platform is this on? And which GuC firmware version are you using?

One thing you made need to do is force maximum GT frequency during GuC 
load. That is something the i915 driver does. If the system decides the 
GPU is idle and drops the frequency to minimum then it can take multiple 
seconds for the GuC initialisation to complete.

Did the status change at all during that second of waiting? Or was it 
still reading LAPIC_DONE?

For ADS documentation, I'm afraid that the best we currently have 
publicly available is the i915 driver code. If you are not intending to 
use GuC submission then most of the ADS can be ignored.

If you can share the GuC log, that might provide some clues as to what 
is happening. For just logging the boot process, you shouldn't need to 
allocate a large log. The default size of i915 for release builds is 
64KB. That should be plenty.

John.


On 2/6/2024 23:59, natur.produkt@pm.me wrote:
> Hi,
>
> I'm currently implementing GuC/HuC firmware support in one Safety Critical OS.
> I'm following i915 code and I implemented all paths (I don't want GuC submission or SLPC features). I need GuC to authenticate HuC firmware blob.
>
> I mirrored GuC implementation in my code.
>
> After GuC DMA transfer succeeds, I'm reading GUC_STATUS register.
> HW returns INTEL_BOOTROM_STATUS_JUMP_PASSED as bootrom status and INTEL_GUC_LOAD_STATUS_LAPIC_DONE as GuC load status.
>
> Unfortunately, after one second of waiting, the status didn't get changed to INTEL_GUC_LOAD_STATUS_READY at all.
>
> What is a potential issue here?
> Could you please help me?
>
> In addition to this, could you please point out some documentation about GuC's ADS struct?
>
> Thanks,
> Maksym

