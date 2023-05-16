Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 220C7705830
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 22:00:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81EA510E09A;
	Tue, 16 May 2023 20:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42D1210E09A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 20:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684267211; x=1715803211;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=8RNHkVVi97dk7QlyiOKUL83yzC2gCIcM/hGep2njdAs=;
 b=LijMtubDfy9ineNPl8ff/LkmDKjUMYLcXH8RSGUTlhSqqClVZ4rddv4j
 Y2TqjGIFGGPBb5fL9bS2+8qsseNDAIVFJ4CABm2gKIShkks0x/SW88BwZ
 QfrjFmWqU5vVMMM3jDbW5RZ/TA1IsPsL7K79SbkBFeq2xr+na4uWojMMe
 2hCSYEFhYZZR6Am8qA6+wJlZ3/mJ2KcipWcgMQ3qP1Hk3d4zWxsWG7xbZ
 IL+G5w3VVvOWx1McSq4XR7vb264YlT0vZiZWojC+eaKIkevs8TdJjfFaA
 7zfq+iHBQDV9PUVzCXcTd8IpfgKnkeivZ/NbJzMzy3xnY7c3E/9xgksNI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="336127011"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="336127011"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 13:00:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="771191507"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="771191507"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 16 May 2023 13:00:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 13:00:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 13:00:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 13:00:09 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 13:00:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NEBvB1hWI55dplZN9OFX4fUe5gZyS6nsQYwUBIPP0zZfMSZD+x0e9q0cjAmr9h3EpWR0bpVDPwDOyWY6HpopV3y658yc3KpmKfyZ0pSg5c6VN602tAbkzfkZ9ZVUVuwXoISTlCBJ1zlTDhJlsysVP/YvDNL0xhO1f6tRDKlgEXGZhiS4hMfdmQDPw6r4FMjCnKnfL7U9CC3DWLGTHNNgdiRmXiVmzH5G50muxmabotYYanblf58P5G4lS7bjD5xW9dMybQb/zVwxhYDmV3v0VZNsgP4iJrRk9YMRY99OCHV6FOw9uhiWCXgKl2pnH3e5bcOArpdM8eMGbPJdmhsGiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Hli4+NdN9qD9yqlkAQc3f0+ATrjWRvzqsKetc5WJDg=;
 b=OKjUnUnpf+UI4tm4n7T8nBE88sxcoDkOowIOWqmNJlF4Hq0NdfO1zINs+MZev5OkxlmKaQoiLeaXi/+2wQQwU+rNxVfq3LQlfwXudLJymVPQ4knXR2EfzdR3l3qPXfNA//NXdp1o+tHITkEDg4tUZr3NiqRF71BKU/eRqTgpyrw85hVZn6Gs1eyDnkIWSPXgshVcSiYr2vRqm+D6qmZ0oOYLCxqQwE/qvXXRZHi/FD0qpwp/by2HurGrUemvAgQsdxmOGG38o5OIMaiv+wd+0pg0NbsBi7zZy6kAhYOzPrly19s6cN3pZYHr8MkVx+r7sWi5CvlZxmEno7YLyq6eqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 20:00:04 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%3]) with mapi id 15.20.6387.033; Tue, 16 May 2023
 20:00:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230511231750.313467-8-vinod.govindapillai@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-8-vinod.govindapillai@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 16 May 2023 16:59:56 -0300
Message-ID: <168426719692.174531.8364870458632754655@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR16CA0024.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::37) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: fb7999ad-8b10-4959-55f7-08db56482323
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pLuKWpL+cTD/i5/MvUN/cFikedGGsbJ0Ieniei/RCZIW868A2ayakxbYQM14qmS+j2+POJhS8rDyh5ZLysGCtp0PI8dxIt99pA8KHhYnPfc6IHb5zWAsGynq7APxaes4Yuso1Z2z7Fz8T+d0jP0/CdHAJdMsg3Z5D9JHWocge3rDOwMCvWXVEgn+h/rMBd7X5jDHb4m6R3c9Rdj9lxXvN4gwLrh8fG5hutwu/nEAl57c3E525Finp4CqMs6R9iekASzfATzDCFClrUd7jNMOsTto6u5MuQWfx3NW8xfHhfLciCNnD8lgEcNNrmGM5YPVV35A+wtII+wzyLltszauzcmLrszMjA4wMaFPu1rvq5/Y2zWLnd0B7OA3+w1ed+6bZrphgNlj9TqmmuEhPHs5RMtAqfE1A4xPvlYOiWXg02RZDVA3GD13nCbDe66mwU0Or8hWXGvhdLtiUrwPciZecAh59NBu5DK+zzRiuQuVgTZfgMCj1x3/P3hWyg4oQDXH0m6BguNHwQQcQEltMh8A5A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(376002)(396003)(366004)(39860400002)(346002)(451199021)(66476007)(66946007)(4326008)(478600001)(66556008)(316002)(966005)(86362001)(6512007)(83380400001)(107886003)(9686003)(26005)(6506007)(186003)(6486002)(44832011)(8936002)(41300700001)(8676002)(2906002)(6666004)(30864003)(5660300002)(33716001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmgvdUQrOGRnY1RmbDQ5b1o1b1B4bUV5L3dVY05hb1dCeG8vWmh6OGpEamlG?=
 =?utf-8?B?bDhxa0I4YXhwSVdFRWdkVFpuZWVTcEZYbTBhOVkxWCtSWVFMMUI1eDYxeVRE?=
 =?utf-8?B?WXduc29WQ2ovTnljVU1NNm9OUjJFdEV0N3JlVG8rWUNWL3lZa3FRZk8rR21z?=
 =?utf-8?B?bTVCN2h1RER5T21WdzlLMGxzeThMV20xNU00UjRZWEcrbFpCdWVsc3NKWlpl?=
 =?utf-8?B?Y3EvbHVWcHhlYXF5eTNvMjZORGl5T2l0Zi90a2g4dTdHTmNJY0ZzY3Erb2Zi?=
 =?utf-8?B?cHAwOXA4aHlVd1B6b3orUTIrZlFYYU0zYjQreU5nT0oxWld0VnlRU2VDeEU5?=
 =?utf-8?B?UHlVYjJlSEZQem0rS3dKVElaSitJaGxOcDZHRTgzc1lUKzhaN0ZuRkM1dDgw?=
 =?utf-8?B?cXdnd3Rrc1QrbVBjZjFRUi9uNFJ3OC9jelE0cUoxMmpFZjZteEFvREl3Z3hp?=
 =?utf-8?B?MGRVbnd3OVNIdm9nUVVZajFLVHhwb1NMZ3FOck9SdVc4NFlFNDJmMVA5TEVx?=
 =?utf-8?B?eEp0aldwcjhXTktJbnJUSkZoYVh1SzdjaFAwdlcrQUVxd3hXdGpkb2lKVkl1?=
 =?utf-8?B?NUlBVGdaVG4wVUFtUVJ3cGYzbjhJWlR4WnN6OWxuZVBpNnpYd1VkOHhGcmNl?=
 =?utf-8?B?amJLK3I4QUFnaUlBRXJZWGtLWGtJcVpuYU5naTZjZUpQY3YvdFUvTkt1WlBY?=
 =?utf-8?B?QmxFb1poY2RFUFhtQ0o2SWRPSERYbWU4cG5ia01MUDlEcWg2akU5eTJrdERQ?=
 =?utf-8?B?aWxLWTQ3TXlObzZzQkJCcVVhbmQ4TytZZzJhMTJNTXVIbW5RRE4yNzJNSHBk?=
 =?utf-8?B?OHR4L3lxanVnbmJpZzV1UFZwcXErQmc5SnRnbE1zTmtQOSs2Z0NsaW11cS9z?=
 =?utf-8?B?QzVpTlJOdmtrU01DSTlBSFpPeUpwd3lqeWpiQjJhUnN6cE1CNkl1WDVndHg2?=
 =?utf-8?B?L1RlVUVyVFdZK3FEUVVjMXQvaE9RUUJkM3prZlJObTBtMDFUVHJWeStrdmZp?=
 =?utf-8?B?a2xMa2NmSzlkRThpZjZudGVTbDFiQnk0TnhtNjJSWXd3cENIMUxxNUYycHVX?=
 =?utf-8?B?THJvdS9iSXFvTGY0b2pWVWRqa0FISERRVmJ4ZmU1L2RKRkVMNUlwUFhGbUc5?=
 =?utf-8?B?aDk1RFNUSTBmdXdsb3V5WXdLdkdRQ2k5eGo0eHJmUTV5T1hpUTYzemxYUlJI?=
 =?utf-8?B?bXBDaHRlajFGS3drSzloYlduMTFrRWVSL0RobzRVTzFsL3h3b2pUdFRCY1dJ?=
 =?utf-8?B?NWE1NDJ4bVNUOW10ZkwrdkhxcTBBMFZJeG9EeXp1WlJuT1daRXIvMktsZEhV?=
 =?utf-8?B?aVF2Y2NlaDFBdW1CTmdjRzRScDlsSE9mVnc3OFcxVDBrZDkvY2dsL01aTldn?=
 =?utf-8?B?VWxBL0VFZWFlbjNyRTBRYWlTTFo1b3lpRERlZlptTFNjMDVKZ1F4LzJ1U1VS?=
 =?utf-8?B?VFBBUk0ydXhhTHg2NERHWWVmTDhJa2VhdmUxbk9meTUrZHRHWUVNcUsrN1JS?=
 =?utf-8?B?L3BiR2ozZzUxU1p1aDBuYTlJNmhoRjhhQmJOcU5MSWxUQU9qczdBY042c2kv?=
 =?utf-8?B?SHl5WE0vMVVJRFJIUXVmMk9xZHk4N0t6N0c0UGU0azhUYnFzZWZkVll3VXlx?=
 =?utf-8?B?ckttaUliUkhScDUvTUVqNW9yY2N1M29ZeTR0cURTMk9JaFZCOHpJbkdqa05P?=
 =?utf-8?B?ZFFTendMVGI0TkJ0NTJmclRPT1BuclJhQ1dvRGJXTll2bXVsNmZaQkZvUi83?=
 =?utf-8?B?Sld4QzBReEU5OEpUWnNSTkVITUlHYmpzUGJJN0VlVDROVVhwYm9pNFY0QUhl?=
 =?utf-8?B?ckZvZDVQVDF5N2pETEU1ZzE5Vm44YkE4cXdoaHlVNmdodHhaVlQvbElheXBI?=
 =?utf-8?B?QTQ0Y25mTE1Pd3VhQUNCcHhweTBRRXBUdkFlN2dYWHlqb1ZLSWlNcDZqbktQ?=
 =?utf-8?B?UGVnYnhDQTdCZERPK2VFWjZRMVg3Y0NLdmFRbFpBcUlPbFBxb2hlZHVIckw2?=
 =?utf-8?B?M3hjUDBPU0lJUUZQb0lWa1JUT3I2Tkg3cjFBTmNxV2s1RTc0UklzUzRsRkN2?=
 =?utf-8?B?MnE2ZklaYzZ1bG5JU29qVGtzbnBoLzJyOEpyUGtUQ1g1SWVEYVFhUkFtY09B?=
 =?utf-8?B?R0xnRFFBZmwwa3QvbHNwYzgxcG9oVEdKdnhmaEpEdzdQN0dxYVlDL3E0RDNI?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb7999ad-8b10-4959-55f7-08db56482323
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 20:00:04.2088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/4flCc2ehhd2AeZWaYFjkvbU054m/DIsqSQHEh+DEpfcv1UU4mHxHRYbkeVcefCP3NZIyQpZyhZw1SS0VvvwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 7/8] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Vinod.

I have provided a comment inline below. Also note that I have replied to
some of your comments on the previous version [1].

[1] https://patchwork.freedesktop.org/patch/534347/?series=3D116949&rev=3D4=
#comment_973634

Quoting Vinod Govindapillai (2023-05-11 20:17:49)
>From: Mika Kahola <mika.kahola@intel.com>
>
>Display14 introduces a new way to instruct the PUnit with
>power and bandwidth requirements of DE. Add the functionality
>to program the registers and handle waits using interrupts.
>The current wait time for timeouts is programmed for 10 msecs to
>factor in the worst case scenarios. Changes made to use REG_BIT
>for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>
>Wa_14016740474 is added which applies to Xe_LPD+ display
>
>v2: checkpatch warning fixes, simplify program pmdemand part
>
>v3: update to dbufs and pipes values to pmdemand register(stan)
>    Removed the macro usage in update_pmdemand_values()
>
>v4: move the pmdemand_pre_plane_update before cdclk update
>    pmdemand_needs_update included cdclk params comparisons
>    pmdemand_state NULL check (Gustavo)
>    pmdemand.o in sorted order in the makefile (Jani)
>    update pmdemand misc irq handler loop (Gustavo)
>    active phys bitmask and programming correction (Gustavo)
>
>Bspec: 66451, 64636, 64602, 64603
>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  14 +
> .../gpu/drm/i915/display/intel_display_core.h |   6 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../drm/i915/display/intel_display_power.c    |   8 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 465 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
> drivers/gpu/drm/i915/i915_irq.c               |  23 +-
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 9 files changed, 580 insertions(+), 4 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index d97d45ae1a0d..a7c2cf21cbfc 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -270,6 +270,7 @@ i915-y +=3D \
>         display/intel_pch_display.o \
>         display/intel_pch_refclk.o \
>         display/intel_plane_initial.o \
>+        display/intel_pmdemand.o \
>         display/intel_psr.o \
>         display/intel_quirks.o \
>         display/intel_sprite.o \
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 1d5d42a40803..dd390a0586ef 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -99,6 +99,7 @@
> #include "intel_pcode.h"
> #include "intel_pipe_crc.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_psr.h"
> #include "intel_sdvo.h"
>@@ -6315,6 +6316,10 @@ int intel_atomic_check(struct drm_device *dev,
>                         return ret;
>         }
>=20
>+        ret =3D intel_pmdemand_atomic_check(state);
>+        if (ret)
>+                goto fail;
>+
>         ret =3D intel_atomic_check_crtcs(state);
>         if (ret)
>                 goto fail;
>@@ -6960,6 +6965,14 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>         for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>                 crtc->config =3D new_crtc_state;
>=20
>+        /*
>+         * In D14 Pmdemand combines many paramters such as voltage index,=
 plls,
>+         * cdclk frequency, QGV point selection parameter etc. Voltage in=
dex,
>+         * cdclk/ddiclk frequencies are supposed to be configured before =
the
>+         * cdclk config is set.
>+         */
>+        intel_pmdemand_pre_plane_update(state);
>+
>         if (state->modeset) {
>                 drm_atomic_helper_update_legacy_modeset_state(dev, &state=
->base);
>=20
>@@ -7079,6 +7092,7 @@ static void intel_atomic_commit_tail(struct intel_at=
omic_state *state)
>                 intel_verify_planes(state);
>=20
>         intel_sagv_post_plane_update(state);
>+        intel_pmdemand_post_plane_update(state);
>=20
>         drm_atomic_helper_commit_hw_done(&state->base);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index 9f66d734edf6..9471a052aa57 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,12 @@ struct intel_display {
>                 struct intel_global_obj obj;
>         } dbuf;
>=20
>+        struct {
>+                wait_queue_head_t waitqueue;
>+                struct mutex lock;
>+                struct intel_global_obj obj;
>+        } pmdemand;
>+
>         struct {
>                 /*
>                  * dkl.phy_lock protects against concurrent access of the
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers=
/gpu/drm/i915/display/intel_display_driver.c
>index 60ce10fc7205..dc8de861339d 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -47,6 +47,7 @@
> #include "intel_opregion.h"
> #include "intel_overlay.h"
> #include "intel_plane_initial.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps.h"
> #include "intel_quirks.h"
> #include "intel_vga.h"
>@@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i915_p=
rivate *i915)
>         if (ret < 0)
>                 goto cleanup_vga;
>=20
>+        intel_pmdemand_init_early(i915);
>+
>         intel_power_domains_init_hw(i915, false);
>=20
>         if (!HAS_DISPLAY(i915))
>@@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i915_=
private *i915)
>         if (ret)
>                 goto cleanup_vga_client_pw_domain_dmc;
>=20
>+        ret =3D intel_pmdemand_init(i915);
>+        if (ret)
>+                goto cleanup_vga_client_pw_domain_dmc;
>+
>         init_llist_head(&i915->display.atomic_helper.free_list);
>         INIT_WORK(&i915->display.atomic_helper.free_work,
>                   intel_atomic_helper_free_state_worker);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 5150069f3f82..f5c5a486efbc 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -20,6 +20,7 @@
> #include "intel_mchbar_regs.h"
> #include "intel_pch_refclk.h"
> #include "intel_pcode.h"
>+#include "intel_pmdemand.h"
> #include "intel_pps_regs.h"
> #include "intel_snps_phy.h"
> #include "skl_watermark.h"
>@@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>         dev_priv->display.dbuf.enabled_slices =3D
>                 intel_enabled_dbuf_slices_mask(dev_priv);
>=20
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
>+                                            dev_priv->display.dbuf.enable=
d_slices);
>+
>         /*
>          * Just power up at least 1 slice, we will
>          * figure out later which slices we have and what we need.
>@@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_private=
 *dev_priv)
> static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> {
>         gen9_dbuf_slices_update(dev_priv, 0);
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                intel_program_dbuf_pmdemand(dev_priv, 0);
> }
>=20
> static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv)
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>new file mode 100644
>index 000000000000..ea117189910f
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,465 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright =C2=A9 2024 Intel Corporation
>+ */
>+
>+#include <linux/bitops.h>
>+
>+#include "i915_drv.h"
>+#include "i915_reg.h"
>+#include "intel_bw.h"
>+#include "intel_cdclk.h"
>+#include "intel_cx0_phy.h"
>+#include "intel_de.h"
>+#include "intel_display.h"
>+#include "intel_display_trace.h"
>+#include "intel_pmdemand.h"
>+#include "skl_watermark.h"
>+
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 dbufs;
>+        u16 active_phys_plls_mask;
>+        u16 cdclk_freq_mhz;
>+        u16 ddiclk_freq_mhz;
>+        u8 scalers;
>+};
>+
>+#define to_intel_pmdemand_state(x) container_of((x) + BUILD_BUG_ON_ZERO(o=
ffsetof(struct intel_pmdemand_state, base)), \
>+                                                struct intel_pmdemand_sta=
te, base)
>+
>+static struct intel_global_state *
>+intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>+{
>+        struct intel_pmdemand_state *pmdmnd_state;
>+
>+        pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GFP_K=
ERNEL);
>+        if (!pmdmnd_state)
>+                return NULL;
>+
>+        return &pmdmnd_state->base;
>+}
>+
>+static void intel_pmdemand_destroy_state(struct intel_global_obj *obj,
>+                                         struct intel_global_state *state=
)
>+{
>+        kfree(state);
>+}
>+
>+static const struct intel_global_state_funcs intel_pmdemand_funcs =3D {
>+        .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>+        .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>+};
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state;
>+
>+        pmdemand_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &i915->display.pmdemand=
.obj);
>+        if (IS_ERR(pmdemand_state))
>+                return ERR_CAST(pmdemand_state);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state;
>+
>+        pmdemand_state =3D intel_atomic_get_old_global_obj_state(state, &=
i915->display.pmdemand.obj);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state;
>+
>+        pmdemand_state =3D intel_atomic_get_new_global_obj_state(state, &=
i915->display.pmdemand.obj);
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+int intel_pmdemand_init(struct drm_i915_private *i915)
>+{
>+        struct intel_pmdemand_state *pmdemand_state;
>+
>+        pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL);
>+        if (!pmdemand_state)
>+                return -ENOMEM;
>+
>+        intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj,
>+                                     &pmdemand_state->base,
>+                                     &intel_pmdemand_funcs);
>+
>+        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+                /* Wa_14016740474 */
>+                intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>+
>+        return 0;
>+}
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915)
>+{
>+        mutex_init(&i915->display.pmdemand.lock);
>+        init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>+}
>+
>+static bool pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                const struct intel_bw_state *new_bw_state, *old_bw_state;
>+                const struct intel_cdclk_state *new_cdclk_state;
>+                const struct intel_cdclk_state *old_cdclk_state;
>+                const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_=
state;
>+
>+                new_bw_state =3D intel_atomic_get_new_bw_state(state);
>+                old_bw_state =3D intel_atomic_get_old_bw_state(state);
>+                if (new_bw_state && new_bw_state->qgv_point_peakbw !=3D
>+                    old_bw_state->qgv_point_peakbw)
>+                        return true;
>+
>+                new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state)=
;
>+                old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state)=
;
>+                if (new_dbuf_state && new_dbuf_state->active_pipes !=3D
>+                    old_dbuf_state->active_pipes)
>+                        return true;
>+
>+                new_cdclk_state =3D intel_atomic_get_new_cdclk_state(stat=
e);
>+                old_cdclk_state =3D intel_atomic_get_old_cdclk_state(stat=
e);
>+                if (new_cdclk_state &&
>+                    (new_cdclk_state->logical.cdclk !=3D
>+                     old_cdclk_state->logical.cdclk ||
>+                     new_cdclk_state->logical.voltage_level !=3D
>+                     old_cdclk_state->logical.voltage_level))
>+                        return true;
>+
>+                /*
>+                 * This break needs to be removed, if we need to calculat=
e some
>+                 * data per crtc.
>+                 */
>+                break;
>+        }
>+
>+        return false;
>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        int port_clock =3D 0;
>+        struct intel_crtc *crtc;
>+        struct intel_encoder *encoder;
>+        const struct intel_bw_state *new_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+        const struct intel_dbuf_state *new_dbuf_state;
>+        struct intel_pmdemand_state *new_pmdemand_state;
>+        enum phy phy;
>+        int i, ret;
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return 0;
>+
>+        if (!pmdemand_needs_update(state))
>+                return 0;
>+
>+        new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>+        if (IS_ERR(new_pmdemand_state))
>+                return PTR_ERR(new_pmdemand_state);
>+
>+        ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->base)=
;
>+        if (ret)
>+                return ret;
>+
>+        /* Punit figures out the voltage index based on bandwidth*/
>+        new_bw_state =3D intel_atomic_get_bw_state(state);
>+        if (IS_ERR(new_bw_state))
>+                return PTR_ERR(new_bw_state);
>+
>+        /* firmware will calculate the qclck_gc_index, requirement is set=
 to 0 */
>+        new_pmdemand_state->qclk_gv_index =3D 0;
>+        new_pmdemand_state->qclk_gv_bw =3D
>+                min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+        new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(new_dbuf_state))
>+                return PTR_ERR(new_dbuf_state);
>+
>+        i =3D hweight8(new_dbuf_state->active_pipes);
>+        new_pmdemand_state->active_pipes =3D min(i, 3);
>+
>+        new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+        if (IS_ERR(new_cdclk_state))
>+                return PTR_ERR(new_cdclk_state);
>+
>+        new_pmdemand_state->voltage_index =3D
>+                new_cdclk_state->logical.voltage_level;
>+        /* KHz to MHz */
>+        new_pmdemand_state->cdclk_freq_mhz =3D
>+                DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
>+
>+        new_pmdemand_state->active_phys_plls_mask =3D 0;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i) {
>+                if (!new_crtc_state->hw.active)
>+                        continue;
>+
>+                encoder =3D intel_get_crtc_new_encoder(state, new_crtc_st=
ate);
>+                if (!encoder)
>+                        continue;
>+
>+                phy =3D intel_port_to_phy(i915, encoder->port);
>+
>+                if (intel_is_c10phy(i915, phy))
>+                        new_pmdemand_state->active_phys_plls_mask |=3D BI=
T(phy);
>+
>+                port_clock =3D max(port_clock, new_crtc_state->port_clock=
);
>+        }
>+
>+        /* To MHz */
>+        new_pmdemand_state->ddiclk_freq_mhz =3D DIV_ROUND_UP(port_clock, =
1000);
>+
>+        /*
>+         * Setting scalers to max as it can not be calculated during flip=
s and
>+         * fastsets without taking global states locks.
>+         */
>+        new_pmdemand_state->scalers =3D 7;
>+
>+        ret =3D intel_atomic_serialize_global_state(&new_pmdemand_state->=
base);
>+        if (ret)
>+                return ret;
>+
>+        return 0;
>+}
>+
>+static bool intel_pmdemand_check_prev_transaction(struct drm_i915_private=
 *i915)
>+{
>+        return !((intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1)=
) &
>+                  XELPDP_PMDEMAND_REQ_ENABLE) ||
>+                (intel_de_read(i915, GEN12_DCPR_STATUS_1) &
>+                 XELPDP_PMDEMAND_INFLIGHT_STATUS));
>+}
>+
>+static bool intel_pmdemand_req_complete(struct drm_i915_private *i915)
>+{
>+        return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
 &
>+                 XELPDP_PMDEMAND_REQ_ENABLE);
>+}
>+
>+static int intel_pmdemand_wait(struct drm_i915_private *i915)
>+{
>+        DEFINE_WAIT(wait);
>+        int ret;
>+        const unsigned int timeout_ms =3D 10;
>+
>+        ret =3D wait_event_timeout(i915->display.pmdemand.waitqueue,
>+                                 intel_pmdemand_req_complete(i915),
>+                                 msecs_to_jiffies_timeout(timeout_ms));
>+        if (ret =3D=3D 0)
>+                drm_err(&i915->drm,
>+                        "timed out waiting for Punit PM Demand Response\n=
");
>+
>+        return ret;
>+}
>+
>+/* Required to be programmed during Display Init Sequences. */
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices)
>+{
>+        u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                     XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(db=
ufs));
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                     XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static void update_pmdemand_values(const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
,
>+                                   u32 *reg1, u32 *reg2)
>+{
>+        u32 plls, tmp;
>+
>+        /*
>+         * The pmdemand parameter updates happens in two steps. Pre plane=
 and
>+         * post plane updates. During the pre plane, as DE might still be
>+         * handling with some old operations, to avoid unwanted performan=
ce
>+         * issues, program the pmdemand parameters with higher of old and=
 new
>+         * values. And then after once settled, use the new parameter val=
ues
>+         * as part of the post plane update.
>+         */
>+
>+        /* Set 1*/
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>+        tmp =3D old ? max(old->qclk_gv_bw, new->qclk_gv_bw) : new->qclk_g=
v_bw;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+        tmp =3D old ? max(old->voltage_index, new->voltage_index) :
>+                    new->voltage_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+        tmp =3D old ? max(old->qclk_gv_index, new->qclk_gv_index) :
>+                    new->qclk_gv_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+        tmp =3D old ? max(old->active_pipes, new->active_pipes) :
>+                    new->active_pipes;
>+        *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+        plls =3D hweight32(new->active_phys_plls_mask);
>+        if (old)
>+                plls =3D max(plls, hweight32(old->active_phys_plls_mask))=
;
>+        plls =3D min_t(u32, plls, 7);
>+        *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>+
>+        /* Set 2*/
>+        *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+        tmp =3D old ? max(old->cdclk_freq_mhz, new->cdclk_freq_mhz) :
>+                    new->cdclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+        tmp =3D old ? max(old->ddiclk_freq_mhz, new->ddiclk_freq_mhz) :
>+                    new->ddiclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+        tmp =3D old ? max(old->scalers, new->scalers) : new->scalers;
>+        *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+        /*
>+         * Active_PLLs starts with 1 because of CDCLK PLL.
>+         * TODO: Missing to account genlock filter when it gets used.
>+         */
>+        plls =3D min_t(u32, ++plls, 7);
>+        *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>+        *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls + 1);
>+}
>+
>+static void intel_program_pmdemand(struct drm_i915_private *i915,
>+                                   const struct intel_pmdemand_state *new=
,
>+                                   const struct intel_pmdemand_state *old=
)
>+{
>+        bool changed =3D false;
>+        u32 reg1, mod_reg1;
>+        u32 reg2, mod_reg2;
>+
>+        mutex_lock(&i915->display.pmdemand.lock);
>+        if (drm_WARN_ON(&i915->drm,
>+                        !intel_pmdemand_check_prev_transaction(i915)))
>+                goto unlock;

Why aren't we waiting here as instructed by the BSpec? Wouldn't waiting wit=
h a
better chance of success be better here?

--
Gustavo Sousa

>+
>+        reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0))=
;
>+        mod_reg1 =3D reg1;
>+
>+        reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1))=
;
>+        mod_reg2 =3D reg2;
>+
>+        update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
>+
>+        if (reg1 !=3D mod_reg1) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>+                               mod_reg1);
>+                changed =3D true;
>+        }
>+
>+        if (reg2 !=3D mod_reg2) {
>+                intel_de_write(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>+                               mod_reg2);
>+                changed =3D true;
>+        }
>+
>+        /* Initiate pm demand request only if register values are changed=
 */
>+        if (!changed)
>+                goto unlock;
>+
>+        drm_dbg_kms(&i915->drm,
>+                        "initate pmdemand request values: (0x%x 0x%x)\n",
>+                        mod_reg1, mod_reg2);
>+
>+        intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>+                        XELPDP_PMDEMAND_REQ_ENABLE);
>+
>+        intel_pmdemand_wait(i915);
>+
>+unlock:
>+        mutex_unlock(&i915->display.pmdemand.lock);
>+}
>+
>+static bool
>+intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>+                             const struct intel_pmdemand_state *old)
>+{
>+        return memcmp(&new->qclk_gv_bw, &old->qclk_gv_bw,
>+                      sizeof(*new) - offsetof(typeof(*new), qclk_gv_bw)) =
!=3D 0;
>+}
>+
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_state);
>+}
>+
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_pmdemand_state *new_pmdmnd_state =3D
>+                intel_atomic_get_new_pmdemand_state(state);
>+        const struct intel_pmdemand_state *old_pmdmnd_state =3D
>+                intel_atomic_get_old_pmdemand_state(state);
>+
>+        if (DISPLAY_VER(i915) < 14)
>+                return;
>+
>+        if (!new_pmdmnd_state ||
>+            !intel_pmdemand_state_changed(new_pmdmnd_state, old_pmdmnd_st=
ate))
>+                return;
>+
>+        intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
>+}
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.h
>new file mode 100644
>index 000000000000..2883b5d97a44
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>@@ -0,0 +1,24 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright =C2=A9 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_PMDEMAND_H__
>+#define __INTEL_PMDEMAND_H__
>+
>+#include <linux/types.h>
>+
>+struct drm_i915_private;
>+struct intel_atomic_state;
>+struct intel_crtc_state;
>+struct intel_plane_state;
>+
>+void intel_pmdemand_init_early(struct drm_i915_private *i915);
>+int intel_pmdemand_init(struct drm_i915_private *i915);
>+void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>+                                 u8 dbuf_slices);
>+void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state);
>+void intel_pmdemand_post_plane_update(struct intel_atomic_state *state);
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>+
>+#endif /* __INTEL_PMDEMAND_H__ */
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index e5f12aa141f6..b00c11e5b242 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -41,6 +41,7 @@
> #include "display/intel_fifo_underrun.h"
> #include "display/intel_hotplug.h"
> #include "display/intel_lpe_audio.h"
>+#include "display/intel_pmdemand.h"
> #include "display/intel_psr.h"
> #include "display/intel_psr_regs.h"
>=20
>@@ -1989,12 +1990,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915=
_private *dev_priv)
>                 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
> }
>=20
>+static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
>+{
>+        wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>+}
>+
> static void
> gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
> {
>         bool found =3D false;
>=20
>-        if (iir & GEN8_DE_MISC_GSE) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14) {
>+                if (iir & (XELPDP_PMDEMAND_RSP |
>+                           XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>+                        if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
>+                                drm_dbg(&dev_priv->drm,
>+                                        "Error waiting for Punit PM Deman=
d Response\n");
>+
>+                        intel_pmdemand_irq_handler(dev_priv);
>+                        found =3D true;
>+                }
>+        } else if (iir & GEN8_DE_MISC_GSE) {
>                 intel_opregion_asle_intr(dev_priv);
>                 found =3D true;
>         }
>@@ -3745,7 +3761,10 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>         if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>                 de_port_masked |=3D BXT_DE_PORT_GMBUS;
>=20
>-        if (DISPLAY_VER(dev_priv) >=3D 11) {
>+        if (DISPLAY_VER(dev_priv) >=3D 14)
>+                de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>+                                  XELPDP_PMDEMAND_RSP;
>+        else if (DISPLAY_VER(dev_priv) >=3D 11) {
>                 enum port port;
>=20
>                 if (intel_bios_is_dsi_present(dev_priv, &port))
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index f82b2b245b0a..fb4f09a2a6ad 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4439,8 +4439,10 @@
> #define GEN8_DE_MISC_IMR _MMIO(0x44464)
> #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>-#define  GEN8_DE_MISC_GSE                (1 << 27)
>-#define  GEN8_DE_EDP_PSR                (1 << 19)
>+#define  XELPDP_PMDEMAND_RSPTOUT_ERR        REG_BIT(27)
>+#define  GEN8_DE_MISC_GSE                REG_BIT(27)
>+#define  GEN8_DE_EDP_PSR                REG_BIT(19)
>+#define  XELPDP_PMDEMAND_RSP                REG_BIT(3)
>=20
> #define GEN8_PCU_ISR _MMIO(0x444e0)
> #define GEN8_PCU_IMR _MMIO(0x444e4)
>@@ -4525,6 +4527,33 @@
> #define  XELPDP_DP_ALT_HPD_LONG_DETECT                REG_BIT(1)
> #define  XELPDP_DP_ALT_HPD_SHORT_DETECT                REG_BIT(0)
>=20
>+#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)                _MMIO(0x45=
230 + 4 * (dword))
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW_MASK                REG_GENMASK(31, 1=
6)
>+#define  XELPDP_PMDEMAND_QCLK_GV_BW(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK                REG_GENMASK(14=
, 12)
>+#define  XELPDP_PMDEMAND_VOLTAGE_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK                REG_GENMASK(11=
, 8)
>+#define  XELPDP_PMDEMAND_QCLK_GV_INDEX(x)                REG_FIELD_PREP(X=
ELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
>+#define  XELPDP_PMDEMAND_PIPES_MASK                        REG_GENMASK(7,=
 6)
>+#define  XELPDP_PMDEMAND_PIPES(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_PIPES_MASK, x)
>+#define  XELPDP_PMDEMAND_DBUFS_MASK                        REG_GENMASK(5,=
 4)
>+#define  XELPDP_PMDEMAND_DBUFS(x)                        REG_FIELD_PREP(X=
ELPDP_PMDEMAND_DBUFS_MASK, x)
>+#define  XELPDP_PMDEMAND_PHYS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PHYS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PHYS_MASK, x)
>+
>+#define  XELPDP_PMDEMAND_REQ_ENABLE                        REG_BIT(31)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ_MASK                REG_GENMASK(30, 2=
0)
>+#define  XELPDP_PMDEMAND_CDCLK_FREQ(x)                        REG_FIELD_P=
REP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ_MASK                REG_GENMASK(18, =
8)
>+#define  XELPDP_PMDEMAND_DDICLK_FREQ(x)                        REG_FIELD_=
PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>+#define  XELPDP_PMDEMAND_SCALERS_MASK                        REG_GENMASK(=
6, 4)
>+#define  XELPDP_PMDEMAND_SCALERS(x)                        REG_FIELD_PREP=
(XELPDP_PMDEMAND_SCALERS_MASK, x)
>+#define  XELPDP_PMDEMAND_PLLS_MASK                        REG_GENMASK(2, =
0)
>+#define  XELPDP_PMDEMAND_PLLS(x)                        REG_FIELD_PREP(XE=
LPDP_PMDEMAND_PLLS_MASK, x)
>+
>+#define GEN12_DCPR_STATUS_1                                _MMIO(0x46440)
>+#define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>+
> #define ILK_DISPLAY_CHICKEN2        _MMIO(0x42004)
> /* Required on all Ironlake and Sandybridge according to the B-Spec. */
> #define   ILK_ELPIN_409_SELECT        REG_BIT(25)
>@@ -4684,6 +4713,9 @@
> #define   DCPR_SEND_RESP_IMM                        REG_BIT(25)
> #define   DCPR_CLEAR_MEMSTAT_DIS                REG_BIT(24)
>=20
>+#define XELPD_CHICKEN_DCPR_3                        _MMIO(0x46438)
>+#define   DMD_RSP_TIMEOUT_DISABLE                REG_BIT(19)
>+
> #define SKL_DFSM                        _MMIO(0x51000)
> #define   SKL_DFSM_DISPLAY_PM_DISABLE        (1 << 27)
> #define   SKL_DFSM_DISPLAY_HDCP_DISABLE        (1 << 25)
>--=20
>2.34.1
>
