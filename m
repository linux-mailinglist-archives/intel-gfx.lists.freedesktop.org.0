Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 987CBC9D137
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 22:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265BF10E6D7;
	Tue,  2 Dec 2025 21:24:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RXn+kDsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31BD810E6D7;
 Tue,  2 Dec 2025 21:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764710697; x=1796246697;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=STTT9ICFnGz9D7fcUFatQjLCWbmTLQqSYmJWmO4Ehh4=;
 b=RXn+kDsPmp1hFiYQ1fa5gHZs4pTDNvLNr6ItZdDDyH0Tunz1sxp8vBy7
 7J1ko6YhHPyMznJVZgdElUcF0c0uG1mPXL05sftRDUUO9T1ljuaWl8Tvr
 ZEEB5nwaEZyu/t3ZfwX18fMqRGqhNxyLMmz37cbP3upLjxDbbGdwFoj/3
 tZvBQubtAJXzU8j1j2DIOXmlKE6wXeyK2BrpVlY1LMR1i3tKvaTcmusVz
 GIBk/3PwAGT3ssniOXOjGT/7jkQUeHBQkWB9HTJ93nBMS5wBaAev1mIKE
 yucQRIBqlUPlIoaBV7hXkohebExR4/bAlBgVmt9AP0GDdjDtzVZ7C2oB/ Q==;
X-CSE-ConnectionGUID: jtN+qMm6Q66ftKuIJq/PTA==
X-CSE-MsgGUID: zBAUlBCDRVmNAfnL5lBvbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77800875"
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; d="scan'208";a="77800875"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 13:24:57 -0800
X-CSE-ConnectionGUID: bwX67ajdQzmpMIfU/1IUag==
X-CSE-MsgGUID: /n8cti/BS2KHkojsp4WCAA==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 13:24:56 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 13:24:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 13:24:56 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 13:24:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b3ckgyhi6smpKx2P/jGhQ9mUNxdGAyU8vXkDJ2Bd/CM94wOsyTF0dNZtzo6bnhyFwi0Vwp/9EAVv1+CKoOwDB3Uo8huGGAynibin7GBSUJDc5PRVDnCxQ+jzyQ1b7+7ZzaQR019LVrqSadF5Ctsd/4LbUeYYi+cX3dkOawqB2NLhR2vy6+4ywMHHNxkhjBzPzWx9TuZqfmfjLEsIBOSW4xO+u3q0ScAosRsviwdOEuiHaK47C0TpI/HManVv+entilzYM2+K2RcVRJrQd+DgPL52RW3+odzi/c4/H7sYgjOFACrhLlZ5pbRqIhZQbTLXHqQLh7bTp1VjMNmX43uM5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iUKrhuT88YcmYhscl3gctI+4XutZYiHIpYC6ZlAmuWA=;
 b=PqApFd60CV9wQLcp0zGAMJqtV3cGjdpBYH0ItfQXMxtNFHClCw1KjJuPwIQMMyoTFbPIht384Gt66zBrgRNRLZreGgtQ4y7KcTMh36tGndGcPJpL+UUozeQfvfsX90X9CU4vfGSXhxv07Q1KY2COVySS5AV3JJcZtg2Dup/01TBsTfAfobbfeF2Nk/78eZjUGHtspXs5/BB88PuJmGGPvwfuY26VEQ5Tkfbxo+gAR6jytO0VyQXqDaSeB6QxIAS4nK+1a9FkrhMCITNaKTbMuGzJ2WnyiaXa92IZdslaVEj3RXXZkbeE63tSRszF1xKv/WyFuAR598fg62Rq/5hOng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 21:24:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 21:24:48 +0000
Date: Tue, 2 Dec 2025 23:24:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
Message-ID: <aS9ZGmXG_n0IXv-N@ideak-desk>
References: <20251202183950.2450315-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251202183950.2450315-1-jani.nikula@intel.com>
X-ClientProxiedBy: LO4P123CA0568.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6738:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d04cc15-2361-4938-7b3c-08de31e938c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?skmACZpoQj0NPXR6UfD692okAXsloqqutZNl4nAgEDOlc7sDcR+ttZulPp4N?=
 =?us-ascii?Q?tjbwxmABFHGSAcyU8mXbNXdVoXMgUiQwpmu9Sl15TB1inMuuDqLjNNKCQQT9?=
 =?us-ascii?Q?m6BS5bfc8fEUzrh92H9Qi2dT/ndkg6wd27gdR3Yz/RSVxANce2tF+FFYf2us?=
 =?us-ascii?Q?a0iHP0aoXzyNu1KctW/7Kc52YbYz8AMPfvpc37b7EbQwApJDjj585ByrpsKy?=
 =?us-ascii?Q?O0v0+r55Y/noyHt1X6ivdVNp6eEawajUspBxDr2UlCHOyWmcVQ5b5mXkylh8?=
 =?us-ascii?Q?TFyDO3nIHiaeoRTFYtQ/3S8+5rOWlEFXdqVsCvp4d2ObJdUUB1i3dAjbZ+C7?=
 =?us-ascii?Q?BeLAdSm0D6IFHgKQW6P/cCd4a51vRNH79y0/8RnsYNCc4Pw+tNyWRUc+jL4X?=
 =?us-ascii?Q?efBgJnx6tgYd4xoOZ6wHuhAK7UY5Ro3v5Nm22VdHsF2muvbA8uYQEYEagj4A?=
 =?us-ascii?Q?SXuzKyuTdgCTekgZX+EcPqrLyXR+sFboqrlFKii8HVABliT1rdPgkaBIZnSW?=
 =?us-ascii?Q?QtIUpGmsyOQC/YP9QdphZgaQ7XMwO+bCQu8dWKmLZOq1bfxF5oLLvGyv4QT+?=
 =?us-ascii?Q?z3aqJreTqu8A4l/erevNmY/7ZliztzNCP1QChSf9lP+VAYBhv1J530OM304Q?=
 =?us-ascii?Q?d33VvFdARRA+H5qCy2roYyfg+Y3siOw/ymr+MY6Y2JKn4lMifk0w0SEs1gi2?=
 =?us-ascii?Q?IJIMRI/Vf0gnHqQewBH4stEkdLuyl+xHJscW2mMtmyH7bn1tXvaqwRvGD8mk?=
 =?us-ascii?Q?hSzT8ntZoImUjVn8dVArC4CPP20wVtXkHWC4GPLrSysqJtqs78igujG3KEQh?=
 =?us-ascii?Q?eHjoPY4OY5jtmK2jb2ndsIBD0DUDthEMpXIiu0xvPa3eH2+naPMCkcwS9yKU?=
 =?us-ascii?Q?UYen/enD7BxekgFo2RN9Ze3pWVda75GbHqK74+mv9fX9TcqP7CxSs2RLS8QP?=
 =?us-ascii?Q?9cavIHlVpT95D+Ng4nZKthg7YRzHgt31eeA2LCdPdXzkG/hfOzVUTprWn1kL?=
 =?us-ascii?Q?Z/6bwF24c62Y/pisGIVt7J1YINluYWowZwL2xcjkRiXo0j+PBK1nxURMbxe6?=
 =?us-ascii?Q?QYt7Rt/XxmDJQScQitZlzeHvaWIWCLPsFNq2tdqjPN4uLZGymGJpa9dY1Rii?=
 =?us-ascii?Q?nJWpR3NcF6X7dNLt6PxLU1hCnX5aDjmsEGBMYDhhYvZ0wLp+eUgslkMWQX3F?=
 =?us-ascii?Q?inGV5dDquY1ZB0Apwyqh/e0d0rCSrwzlqprrVV1tXyYA8PhdP6W8AvWpgeNq?=
 =?us-ascii?Q?tHdTS7ov9ebyA4q/IM0pDZ5Wr0BPHZhb40BD+MYF8ycUJUzMFv+GDwdEJY0q?=
 =?us-ascii?Q?vxrGrA7vKfrVafHXaBMHAA9q9s+Q2QCgjR8ZlSJdbD2ApM5VUXGLSY7k0ZaQ?=
 =?us-ascii?Q?fKd/Da7C+PSvARhi78m8UnJMhiLZML1jfqMAK4lRmuwWSAgKKntw9CxJwYMc?=
 =?us-ascii?Q?SqnJRs86+g5Gl0IYpYjQhugwa6rwIpJ3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/jFJ/rqKrK/rIXfOdKDM3ji5r/kYZvu7efFgPFlAMoeN4aLNvPOCWG9F7wQR?=
 =?us-ascii?Q?PO90T/OquFRnxRy1dVQWPerZ+F0ghdQOTQDdzsY1qDolV9pig744Jlz0iiAX?=
 =?us-ascii?Q?pnGW+VBVteyRqCIDfrRnhNLa9QEdxroovaprPv1/UoT3YidSyBZMDdKAY2Ah?=
 =?us-ascii?Q?HlnLeEu9qEYhB/y37pZgN7MV/34UYmduWyNcmNB6msTxE5Ki1169A/5JxkE6?=
 =?us-ascii?Q?hLsUmJZ3/6QY0MD7Qn04XE2aBSe3fp64GUfoPntiv7KDMKdy+eA8BGbyVGiZ?=
 =?us-ascii?Q?+PvkWUkHhQoZkN5bqeD9EivDBMHt7mAQUaPMlt5iK89s11PvFDtgvrlLoYNX?=
 =?us-ascii?Q?fj2uoAOIiZ0Z7BqqlIBvPFblqs8Wy2Jg2J4LScR0w80+v/e8UBT7mZGoVraR?=
 =?us-ascii?Q?QRN8z4l/wmnfwfkZ4/lzA5L58Axu1cAPu65OwkT11WOI4PtdUQpES04mdaLC?=
 =?us-ascii?Q?QDS2oKfsk0pTvRlVm3sJUDkgTnZ1D8IkKY57/ESr1LxbEHrsiDvUBYBrDui7?=
 =?us-ascii?Q?+oWi1SYAVh19daPOAwbQWZ75G3Xpwlri5iwv/Cen4yUCXpFvW6eL2TaSKyFW?=
 =?us-ascii?Q?apYx3oqVpilVoIBLqOKYhm79Xdi4wWhkygM1mfc/z+AwiK0hl13Qpsfyln/M?=
 =?us-ascii?Q?tV6uxNlxbVhjDLV6X82KYcnkknBynZK77fbW68R/O7GsmO4Ie699aTtdjzSq?=
 =?us-ascii?Q?nv5PuflwojFXbknwnMmuQcpXArBPOMmTGv0S6cn02w4FZc2Y2OzG62Sx5bsb?=
 =?us-ascii?Q?zfTrPwybSobRbFj+AEyHUtK9r9NzWwuD4MZx8CP2qHjR31ThkNcV8RYTL7lS?=
 =?us-ascii?Q?Ys9raTH/jZRflR/HZgNzd9LUA1Bv/MaBEQeRJs+bitNf5ZH6GDvoWSdzNYLJ?=
 =?us-ascii?Q?2dd9rI+WZJaEeNpzRVQLBhCOYOeJ6CFeOtSFn6/WO4iPremvhHPINWrpgvgZ?=
 =?us-ascii?Q?wUWECSZA65kmRV22EhN4NakzPINM/aZrC7Xypvzd4ZJ2nG/TA6843Ea97Qni?=
 =?us-ascii?Q?zuhLyDEUYA2kJpHjAZXwRAEU+et6uvzCP4m3H0Pv+/Uw7c3DyTH1KieNLUgX?=
 =?us-ascii?Q?Lh8e3GfyA3V2w4eWv680TIRpnamSb8bPImIQBKwHwS/1fqKaxYMSeAwHmQ2S?=
 =?us-ascii?Q?+jpEOga2C/dVyt0VBVFV6XbYW0WiOobvLz94ygo9O9buc0oUrtp4BhxHJr30?=
 =?us-ascii?Q?JQrgnd/pISyeRv0SkJBGvo0wnoXdjCq9U9pCtUsxvtAqDYcmoP1QJWEjdMJP?=
 =?us-ascii?Q?YuGjusF8T6MwRIfR2ALg4jad42QVZd1x8p1QUK/xbX4Wbi3AoAVUSoVg2c0i?=
 =?us-ascii?Q?Egvps+7qfterZTvUHUZWpzcMcRZWZMdEDSceBySXTZiP+2o+VskgZf5dQtvf?=
 =?us-ascii?Q?MGhdiahR2rG3wQhGbt1VnF6tbLzO9VAPXU3AbMiCwjYKye7oAQ3u+11Xl9ya?=
 =?us-ascii?Q?Ha7N4DNs5q4vpp8WcpqRoDaRC3tFbimAYPIF7yF+6CzYZfLXyQYeSTHNtS+e?=
 =?us-ascii?Q?imAE3uxgnQWJL+wZdvG1fZTc4EwYrS5BdrkgmG4FrWVdPvY7s4m0pmjgYh7g?=
 =?us-ascii?Q?62rdkSOn6R77M691wQMrjyWGxRRlLTmJMV9qX4UNWIKhrqT05BSv8SVhBBd3?=
 =?us-ascii?Q?6oDfL2Ds/DxirzWk/YM6PBUKpNz0tuKpRuX9OAYfL9Nv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d04cc15-2361-4938-7b3c-08de31e938c5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 21:24:48.5711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qd6r3GByORS3R32AsFS03JPJssHK3OB7zlysh3AMhvbxaA1PmWDcJSYNer6QiIEbyD71VLDj1gEM7rPl/j2/7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6738
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 02, 2025 at 08:39:50PM +0200, Jani Nikula wrote:
> intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> initialized, and dmc is thus NULL.
> 
> That would be the case when the call path is
> intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> intel_power_domains_init_hw() is called *before* intel_dmc_init().
> 
> However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> conditionally, depending on the current and target DC states. At probe,
> the target is disabled, but if DC6 is enabled, the function is called,
> and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> at probe, as we haven't seen this failure mode before.
> 
> Add NULL checks and switch the dmc->display references to just display.
> 
> Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: <stable@vger.kernel.org> # v6.16+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Rare case, but this may also throw off the rc6 counting in debugfs when
> it does happen.

Yes, I missed the case where the driver is being loaded while DC6 is
enabled, this is what happens for the reporter:

i915 0000:00:04.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)

That's odd, as DC6 requires the DMC firmware, which - if it's indeed
loaded by BIOS for instance - will be overwritten by the driver, not a
well specified sequence (even though the driver is trying to handle it
correctly by disabling any active firmware handler).

But as you pointed out this would also throw off the cooked-up DC6
counter tracking, so could instead the counter update depend on the
driver's DC state instead of the HW state? I.e. set
gen9_set_dc_state()/dc6_was_enabled,
intel_dmc_get_dc6_allowed_count()/dc6_enable if power_domains->dc_state
says that DC6 was indeed enabled by the driver (instead of checking the
HW state).

That would fix the reporter's oops when calling
intel_dmc_update_dc6_allowed_count(start_tracking=false), by not calling
it if the driver hasn't actually enabled DC6 and it would also keep the
DC6 counter tracking correct.

intel_dmc_update_dc6_allowed_count(start_tracking=true) would be also
guaranteed to be called only once the firmware is loaded, as until that
point enabling DC6 is blocked (by holding a reference on the DC_off
power well).

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 2fb6fec6dc99..169bbbc91f6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
>  	struct intel_dmc *dmc = display_to_dmc(display);
>  	u32 dc5_cur_count;
>  
> -	if (DISPLAY_VER(dmc->display) < 14)
> +	if (!dmc || DISPLAY_VER(display) < 14)
>  		return;
>  
> -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
>  
>  	if (!start_tracking)
>  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
> @@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
>  	struct intel_dmc *dmc = display_to_dmc(display);
>  	bool dc6_enabled;
>  
> -	if (DISPLAY_VER(display) < 14)
> +	if (!dmc || DISPLAY_VER(display) < 14)
>  		return false;
>  
>  	mutex_lock(&power_domains->lock);
> -- 
> 2.47.3
> 
