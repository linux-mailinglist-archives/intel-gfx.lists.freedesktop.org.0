Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C040C7CFFCF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 18:42:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C28310E52C;
	Thu, 19 Oct 2023 16:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F36110E52B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 16:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697733748; x=1729269748;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=gmRN8jsOM9Eqnf1edPQ7Rytrc6YbLDWN1s6NyjSyog4=;
 b=R32caS0zIfHOYDpfeutdAHgjG5yLmmjdGcahqvaoM6XGvsWqHIr4ncSf
 qG1mKn7QsmDWGyGKHhsTPUTHZF29gY+743WA9EHNzkbRW3TMJYDJz/elA
 5ZlfOx1S67vttyIBZkiILL4smE4wqooTvKn6rCFZDu0z0yMMAnubwfWfz
 OC5vnXbeXzzqKyKeksC1MvHIDgxvQhOqkEybo1v3nXvxVRKonBdK6C4ng
 D+e85d57ZYKV8DZeRwBqgxkOx/t0qBntxKsY3TlCp9fSvZqvtOnobgpsU
 pQazh2zM6iP66KS9iACAFksCtQWHSXBziBzpXH29RzQkFb5KrdsSoDAkB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="7864884"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; 
   d="scan'208";a="7864884"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 09:38:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="847752401"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="847752401"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 09:38:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 09:38:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 09:38:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 09:37:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJDI5HeoTh6Z/wfvySFwreWMSKZrgwSuCJowouHf76kh4nXwm1FlvLGfTA0h1ey2F0Tf5qpAknIM9zWfDLTJDo6i5Gn9SDtGJJi45BxhunoxyNfxkdXyui0mVHRxq8mdJ+dlJyKdAx2RuBgzZzcocg/BsnvQfX3DvNMGB9wqwwvulA9SdS5yUA2p27upMjP04O0CfB2Loh3XWvwPwQVUH/Ne9bYS31l+CBPm6Dx4g+KkXAYgFDbrMG4qUVKbPQ7PDDxZNweUdVGTVwi7kotq6WU9ntbW7Fao4IfAKYM/0G2Uh3PfFujppvjPhm73DnuH5COQug1k4/bDkz8aVKOrGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wP26yJzcg3b8/265RYoaBKZP4qGbkA/QrQpnay6cj8=;
 b=gYQPH+hkvbrm5uUTC3REUrLTSUoNlK1Tm/CZLfo8hGuQ49Kaelq+3QmRIMqEdUHVdhaG9c7P3o6YSBjhccYjASnxmiyY/5CTt1Ug/FWwz4eVR0K+JMbOdf/CDQHAcxZsO1eBp12F7v9aqNGFlWC6Jy8ahKGbIp7nJ81gJRqHBagFmFfqgxuP1Mu3RYNrh09lPnkyJkda+lEtB5R0saTNOO9Jj98myN9bqV2qVunoEDWgHtvFYCYiFMBdaOD9/0b8AHWR4MNxeTg7URTQzabpxhxqE4BcIDFu6G1ZhU8Eqmpe9tHMpCq7cUaEBnkXXGXJcuUPzK8HLasvMFFLkw5Wog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Thu, 19 Oct
 2023 16:37:54 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6886.034; Thu, 19 Oct 2023
 16:37:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231018222831.4132968-3-lucas.demarchi@intel.com>
References: <20231018222831.4132968-1-lucas.demarchi@intel.com>
 <20231018222831.4132968-3-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Oct 2023 13:37:49 -0300
Message-ID: <169773346985.1959.18786391271691207@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0082.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CO1PR11MB4788:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d511447-882c-4d87-603f-08dbd0c1bdeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tb+9EP/9QY/AfZZ0/aMLbqN7WxgUhErTM9A/MBt2tCDHyzBInEc4Jl2pGzLvLCkAtwEI85Rboky8TlBKdTPIDnWKPlbWIriZumFYsywdU/pDFFjQ3VKiUlrew4Vi/mk4y6rgCADpYS4gqMq5cT9j4ZFL7hPCkxTLFUjvrGXC5c77Xzq7o1rA0rnNeI2HWyM5lCCAcKrqUirIXmeIVO8Wgi/lCsOhabekU78qfXaoy0gjh/L/+uJDbsJLJqy0paNAOyxh0EFX6/iBsRJfzgC+DUDfoJ1bB/qImRFJyZh8XDBJ59AwS1ADVk5VXDnNX0SGLUrNpvJ/RwRns+fiolc5+kB/VigLY3tXsoaGUgyiHHrbkwIovayvRZiZPZQX4oW66O+RaYA5M4pOo4oTlknNzl9e3EV8qYWlgrEJL5s9LDOstvIaK7+X/z9lhdzTd/0dY0XndC3YK6zlu5pwmxeuiafqKEm/90Z4mzyYFsDchHg2xPnGyZCLvtEbGy7DpIoGHHQDu7xT4RqiINzhbbBEQ9/VeYKNfe0Q5s2PQycTFJjJpxs0OmkC4ZYOqkLhiWlo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(366004)(136003)(39860400002)(396003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(4001150100001)(2906002)(8676002)(5660300002)(4326008)(44832011)(8936002)(316002)(41300700001)(66556008)(6486002)(66476007)(86362001)(478600001)(66946007)(6506007)(33716001)(6512007)(9686003)(6666004)(107886003)(26005)(82960400001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDZadS9neVFienExVzRtUEd1OEJ1NmI4bkhUdzI5V205R3FQVk9VL0ZIaGJ0?=
 =?utf-8?B?aElxMC8vQm5BcCt2cWFuNXNSc0FTd0JGbzBKRlY3L01qWVY4T1VaUUJXd0Rm?=
 =?utf-8?B?RU9rZG8rNG5SYURRUDEwL21RaDZqdmhmL2hZZjlKajNjUnNzZFRLcmFGUDJQ?=
 =?utf-8?B?by9NdzZ2ZTJURzJ0TFVPQkJZaHJxaUJQY0ExRjJEWXgzU1ZlTXoxU2ROQ05T?=
 =?utf-8?B?M3dsOVJKaVdudzhNSTdzRjNHbnhwdzU4cnQ0a2wxbG9NK1BQZi9RbHlCSnM0?=
 =?utf-8?B?aEhCblJsK1ZJV1VSTm4rSWIwb1Z2V2pQandyYUhnNTU4NzFqS0h6azlMMyt1?=
 =?utf-8?B?ZHptTXhrZVdWSFJ0WW9qcDJVaUpOVW1iMmhWUDVvNjJwcjVZK01YV0lmWTRx?=
 =?utf-8?B?cjFKeXFtMjM0aE4wZVFpdmlMb2o2M3B3Mld0L3hvU2p5ajRML3JxcDFpZDU4?=
 =?utf-8?B?TmdxNHhlUnBBbitSaVFrNUNkcnZZRW85OU9rMVNxNE1UVloyM1B3TU43UGZk?=
 =?utf-8?B?NEoyckRYUEw5bWkyR3lWVm9FYVYyaXlJNXJyOG9QQldMeGVYZHdRMW5KQ01p?=
 =?utf-8?B?d0RqK1JraU5HMVlqenRvSkk2clA1WXl2K3EwTFlTR0xRbExMeEhKVGg5T0Jz?=
 =?utf-8?B?NVR2S1BCVDZQQU1peXE0ekx4OWRISlBUQW0veTY2OGk2eXBDa282V05GbjRS?=
 =?utf-8?B?c2xDOFRsTjhNcGI2S3lqOVpQa1JqSXpyeExhSUxOTzFlZU9HRXlZNWoyR09T?=
 =?utf-8?B?Wld5NW9xUHpTTVp3VzNGa3B3d1JNR3p1c3Z4Ri9WaElQTTFWL2o5RWRGdk9v?=
 =?utf-8?B?S3hrUElVQzRxdGtrRDRCRmp3M0Q5R1pKdkIyWkVkQUUwSUtoeGZhZFBwSWtK?=
 =?utf-8?B?UmladFUvcWwzU1hBcVQ1MTR0cE5COGtPRktsbHk1RmNXUG1ibkZmU0haUllz?=
 =?utf-8?B?RjU0WHZrdTVEbXZ5L2IxK1FnZ1p1ZHRjMU1heDJFNUNkNmptbXZuY1pMTlND?=
 =?utf-8?B?NkJkaDNBQ0JacUhzZEJ1VFFiOWRXUWxnakUzelRubjRaZ3pNYWhJUVlzYTZR?=
 =?utf-8?B?SVN6eWV5ZVVDUGhYbkwxUXFCNDVnSUUzR1AycXJ1eWRxUDdva2U0bHhydFhD?=
 =?utf-8?B?VG9YeEI0WmJNVk91R0VJVSs1TTJSMWhyZ0wvUE9DUmxDZXFCOXFEUU5UNmF5?=
 =?utf-8?B?MUp0ZWt2RzVnTmRuZ0RzZnlENmcyQ1A1YnB4ZTJnUGYxUkVGM0d3clpIRktG?=
 =?utf-8?B?ZDVPcGpqaUZNdG1PRTYxNmJMSVIydHhCVDhuaUtlY2RnMnMvdkN4clJQZW1q?=
 =?utf-8?B?cTg1K2pBRDRDTVExeTF4Um1MN3RMZVhDRVhwVWtkOWViSnJWNjczanQwL1hB?=
 =?utf-8?B?ZEF4NG1ncEdWREdUM3lJRXhDamE2a2tDZVRyMHRWUXZkL0lDSU5rOWFyVVJs?=
 =?utf-8?B?OFRlRGcyK29EYVYvdDJkRnJTcC94ak9MUHRkSGpxd3RDSW1JTHVzdFgyZ3J1?=
 =?utf-8?B?Tmgxd2x2ZGgrRWR5ajNIZGx3ODVyNW16Z2RMZlJ2SmlOOFJsSmVpQVpCVkhn?=
 =?utf-8?B?NTQ4SUFhRVQ5YlROUXQxVjNpRytGWFVWdk9vUDVZNkh1TWdtdkJCQllZN2dt?=
 =?utf-8?B?cGFkWUZvTk1lSERKSTFRalkwTmgwT1hIRDJuTXVJYUJIYTIzanRteE5oNkxX?=
 =?utf-8?B?dU1OOGxvajRvQUdrOW1EOFpLLzRPc0d1Y2p5emVxMnRnblp0Q01GK01KSi9S?=
 =?utf-8?B?SEJBUlVYdGMySFN4c0Fsd1l6dVlDV2l5ZkNNNzJQUFA1MzY0TWNWeWtzaDM0?=
 =?utf-8?B?NFlMSmlySmptTlViOGtXY2w0em5LRkpXd3JIN0Y3NzRIVWZHS3NxenBWYlBa?=
 =?utf-8?B?b3hTY1QyN1RPUWYzMERmSDdaaFlkamV2VE5wcUJtMFJET3l6bGkxTXd4T3FR?=
 =?utf-8?B?SkFScjJkQzlRUEFIVmhzQUtaRk1rUzdETytYMVZDT0ZOK2R1YWhNUUlpVkc5?=
 =?utf-8?B?ajVFSVVtc3J4RFY5SlNmZ2xaS2tFbXJLandkSnlrd1Jpb0ZoT1JMK0kwT3c1?=
 =?utf-8?B?cExBeDBQdjM4QnVyRnNPT0gwL3FiTDQ2elIyZkU3NU1TR3d5T0ZnQUVacnJ2?=
 =?utf-8?B?aUxpY08zQnUvVE9tR2xaaEdsVTFYM2ViOXdBaU5HMnBUazc1SGl2b2RUSUI3?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d511447-882c-4d87-603f-08dbd0c1bdeb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 16:37:54.0302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /b0X28v74UG0ElQ31+CR9sNK22qUb9IkJZZD3pL/gHFMXCgc3mbyIfHsbhz2yDJsggfL1JqdmMpvmLDSXlCoDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Abstract C10/C20 pll
 calculation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-10-18 19:28:31-03:00)
>As done with the hw readout, properly abstract the C10/C20 phy details
>inside intel_cx0_phy.c.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++----
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  6 ++----
> drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +------
> drivers/gpu/drm/i915/display/intel_dpll.c    |  7 +------
> 4 files changed, 20 insertions(+), 20 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.c
>index 252492ec6111..8ffa52464516 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>@@ -2378,8 +2378,8 @@ static void intel_c20_pll_program(struct drm_i915_pr=
ivate *i915,
>                       BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
> }
>=20
>-int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>-                                 const struct intel_c10pll_state *pll_sta=
te)
>+static int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>+                                        const struct intel_c10pll_state *=
pll_state)
> {
>         unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
>         unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
>@@ -2405,8 +2405,8 @@ int intel_c10pll_calc_port_clock(struct intel_encode=
r *encoder,
>         return tmpclk;
> }
>=20
>-int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>-                                 const struct intel_c20pll_state *pll_sta=
te)
>+static int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>+                                        const struct intel_c20pll_state *=
pll_state)
> {
>         unsigned int frac, frac_en, frac_quot, frac_rem, frac_den;
>         unsigned int multiplier, refclk =3D 38400;
>@@ -3065,3 +3065,15 @@ void intel_cx0pll_readout_hw_state(struct intel_enc=
oder *encoder,
>         else
>                 intel_c20pll_readout_hw_state(encoder, &pll_state->c20);
> }
>+
>+int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>+                                 const struct intel_cx0pll_state *pll_sta=
te)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>+        enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+        if (intel_is_c10phy(i915, phy))
>+                return intel_c10pll_calc_port_clock(encoder, &pll_state->=
c10);
>+
>+        return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/dr=
m/i915/display/intel_cx0_phy.h
>index ff7ccb7855aa..222aed16e739 100644
>--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>@@ -33,17 +33,15 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
> int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct i=
ntel_encoder *encoder);
> void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>                                    struct intel_cx0pll_state *pll_state);
>+int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>+                                 const struct intel_cx0pll_state *pll_sta=
te);
>=20
> void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
>                                 const struct intel_c10pll_state *hw_state=
);
>-int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>-                                 const struct intel_c10pll_state *pll_sta=
te);
> void intel_c10pll_state_verify(struct intel_atomic_state *state,
>                                struct intel_crtc *crtc);
> void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
>                                 const struct intel_c20pll_state *hw_state=
);
>-int intel_c20pll_calc_port_clock(struct intel_encoder *encoder,
>-                                 const struct intel_c20pll_state *pll_sta=
te);
> void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>                                      const struct intel_crtc_state *crtc_=
state);
> int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock=
);
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 80a8ab7874db..c4dc1f71da4b 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -3854,18 +3854,13 @@ void intel_ddi_get_clock(struct intel_encoder *enc=
oder,
> static void mtl_ddi_get_config(struct intel_encoder *encoder,
>                                struct intel_crtc_state *crtc_state)
> {
>-        struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>-        enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>         struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>=20
>         if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
>                 crtc_state->port_clock =3D intel_mtl_tbt_calc_port_clock(=
encoder);
>-        } else if (intel_is_c10phy(i915, phy)) {
>-                intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pl=
l_state);
>-                crtc_state->port_clock =3D intel_c10pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state.c10);
>         } else {
>                 intel_cx0pll_readout_hw_state(encoder, &crtc_state->cx0pl=
l_state);
>-                crtc_state->port_clock =3D intel_c20pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state.c20);
>+                crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state);
>         }
>=20
>         intel_ddi_get_config(encoder, crtc_state);
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i=
915/display/intel_dpll.c
>index d41c1dc9f66c..509b862f9e60 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
>@@ -1003,12 +1003,10 @@ static int dg2_crtc_compute_clock(struct intel_ato=
mic_state *state,
> static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
>                                   struct intel_crtc *crtc)
> {
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>         struct intel_crtc_state *crtc_state =3D
>                 intel_atomic_get_new_crtc_state(state, crtc);
>         struct intel_encoder *encoder =3D
>                 intel_get_crtc_new_encoder(state, crtc_state);
>-        enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>         int ret;
>=20
>         ret =3D intel_cx0pll_calc_state(crtc_state, encoder);
>@@ -1016,10 +1014,7 @@ static int mtl_crtc_compute_clock(struct intel_atom=
ic_state *state,
>                 return ret;
>=20
>         /* TODO: Do the readback via intel_compute_shared_dplls() */
>-        if (intel_is_c10phy(i915, phy))
>-                crtc_state->port_clock =3D intel_c10pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state.c10);
>-        else
>-                crtc_state->port_clock =3D intel_c20pll_calc_port_clock(e=
ncoder, &crtc_state->cx0pll_state.c20);
>+        crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder, =
&crtc_state->cx0pll_state);
>=20
>         crtc_state->hw.adjusted_mode.crtc_clock =3D intel_crtc_dotclock(c=
rtc_state);
>=20
>--=20
>2.40.1
>
