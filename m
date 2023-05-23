Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BBA70DFE9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 17:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622FE10E44F;
	Tue, 23 May 2023 15:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF93B10E44F
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 15:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684854553; x=1716390553;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=N/DqRQAI1moqdTubHpJUGugluu5yqCsePoU+/7GcPIc=;
 b=axajD7a2QaXEAqMlOpnNMgD/tYIAYQ6sgWlqL8WmPjhT0HA5BqBld7Y6
 7DNwUVucMBwFaiv7E4Op7QZg4WbtVsN/0NPr1wM2RY/RPzePgGLVR+UG7
 epRkTzRkikuSwf5vP2WDvoPHMjhW+zOrNvco72xyuGijQeEJSVuuf4rW4
 REfb59EjktmE8+mBYkbVEEUUixwWtmGuN76ewkt+s5OO3OVZnpbwQFJyB
 iz1pvr51JRw7QbTYrQQIJfIzVA8y7U6Z9Pp31W0kP7OQWXzDmwDqntI/f
 kulC+uHNr5M2nPMAM2MP3fXRA21H+dzUgCoSHQVCTdqV2hLD5Ky+szPQF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="342727439"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="342727439"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 08:09:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="848321404"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="848321404"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2023 08:09:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 08:09:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 08:09:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 08:09:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 08:09:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FCsksSpKXrkw34+lGWTNnS8fgRrrAdz7tESNYYX7cpsQCBYzp8ZvwUvatfSKihzqDluZnCatcss5FbiER4COa3i6SDVewVAf7+Lh9V06M/JnGgav5Ak06UdX9rUu6YX+GOzn/Tzrf8yUFfwumoMRwv6+QfcRyprazkM9wwDOBRR5FwnPzycsdVgoSvmuKHp9P0f/yK/knrncrqvy8MYy8kvtQ3nZ7sdv1BWinkWpwlT9ftjguvjr2x4g8Bi1rtbnqpjAi7AfFW2uWP69fvRXH2QaEAK78aQhxhF0IxToF9CV3cFKS/KiHI8GPz5SdcHWyfQEKa269GywyQKcSKP0Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6U+LvyEqkeuZU9R3IoDyaeoUTvfK0AZm3E86e+CeKE=;
 b=Jf4FkJsUla6Lauzb3ICtSBkqcqtDErSH+d2G7hU/+RCygyeosqF/MIkFMQEWC7Oyqnw0pCW+LXAVAkE8VVtzl70inBLlU1hkZtMu6Q3A+CJc1O6L3jeHbHVMx06uY98dHcpWnEHyn3562X1xIHAHQuzGlWIyZx3vDIERyMvNs9OveIAQn895J3bpe0FPFNNhIE7UvTaajbnVBgKFC0mFD+PHOM+NYFi3IoFbxmMs5NCPTqTJ++ZqysGc/3gKsNgMsylxnt/D75AvOlMTS2ilq1LansyBeumGkipVFXsTQ4Z/An9TczVUk4vCa1DJE9pDtmAANwvVBOxnyTTka3FjNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB5360.namprd11.prod.outlook.com (2603:10b6:5:397::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 15:09:07 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%4]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 15:09:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230522230759.153112-8-vinod.govindapillai@intel.com>
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
 <20230522230759.153112-8-vinod.govindapillai@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 23 May 2023 12:09:00 -0300
Message-ID: <168485454016.2065.7866771977765584400@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0086.namprd05.prod.outlook.com
 (2603:10b6:a03:332::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB5360:EE_
X-MS-Office365-Filtering-Correlation-Id: 4239ce4b-9cb3-4692-c693-08db5b9fa6fa
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7G6hjyCSPlN5ybB2NnGc1w41ePfFH3XXsCd0INQi/g/CeHJV6/03re3gHrsrseAlzK/0UAHPFZ1c2eJelrs+KMtNQDbu4nyPdJmIu8x8+oW8HuT8Yd/vmJFB6ialrqd0fWcpRkYvkSvSXIl2jkpA15flVSMp7cmUfbrunGL825fhDDgkWU6PFzxaBo6uu30Fsih5LahC1y28ZMOXWZeY3OVOH7ywQ4Ml6Q4DgxFPCnlwNXe2RD68IAbWzRo6UARFC4tdd/fyub0tpJ0QB4PvQ3wp97Jn+jEGMyhJ2g6kl+taz9dl58+t0DuVr2MfngOTLhd/dKYS/C4wxdqXiddRi/yIdy3+w6J2fqi15t2EgTHPkev44YraewaHwUicpDU9plypDCcpjttSNOaceQ4xGdifaaJXFkqt3vWsd5ga2tBAjzdcFsuT+AAmLGNl8Qvh+2WYGFYRE5itPQw0lb2W63Hx+mUvgEXZag61Tq0wNFTPbdldSANf9IoTxCjkRxxKun/aPz8GzIxVrk0vjEwYR89XZfJkuUbtLzh6esTt6MoBIE/h52L4ik03dd+jQWsS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(136003)(346002)(39860400002)(396003)(366004)(451199021)(8936002)(5660300002)(44832011)(83380400001)(33716001)(6512007)(6506007)(9686003)(107886003)(86362001)(26005)(186003)(82960400001)(38100700002)(8676002)(478600001)(6666004)(6486002)(316002)(4326008)(41300700001)(66476007)(66556008)(2906002)(30864003)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHA2NkVSK0dhUVJvZWZkTUJ2SzAxYmtaUmZQcmdJRXo1YW5razJhMC9kOFdZ?=
 =?utf-8?B?dHBqeCtTNXV3VElmSnI2dTRQYjVFalR4cStkK2N5UmJrazlNcW5SU2l0MFV6?=
 =?utf-8?B?cTJRc01ldTFvZ0hJQjRXRWQrRFBhcDVwVnRXOE10RHNDcS9yYnYyRDRvZXZp?=
 =?utf-8?B?OWRUcXVLbllFT0E1dVk5cHhYVHgvVVJXZlNtd3hZUGZNZHpUdklTb01FWXNq?=
 =?utf-8?B?aEpYZGdqOWFmWmozeCtpcitWRVl2c1J4WndyMEgya0J5bFVmY0lyRnVxU3Ry?=
 =?utf-8?B?cGFHcXdrN3ZsTXBOWHVuOXF2ZXRqY0t4NEZPTXp3YVY2dW5IVEZsbGluMzR5?=
 =?utf-8?B?WldTTWg4VW0rZ3hXRldIKzk5NGRFdzdVSllxVXdxdzZ0VTdWNVo2U0thREdU?=
 =?utf-8?B?MzQvWlI2RUZjUWRhZWMveHRhaVUrMXNBTVQ3dXJBd3d3Vm1rM3NadDVtWUsx?=
 =?utf-8?B?Q0graUVseG1hMDhKaW9TcE16eE95MGt4Unk3NlJSbGhkVVVSN3BvUnpyTXVH?=
 =?utf-8?B?UTh5b0gxa2ZoZE8yaUM2Q1YyWmhoQVhmbHU3U3UxRFdKZzFpZkVGOFhWVU1N?=
 =?utf-8?B?QkNiSWZKTlFBYTVIMjhCcGdUNVFRb2F5U0w2YWVSdzVzWHJ1VW90ZHhCd0lR?=
 =?utf-8?B?L3BXWklGTHBDaU9EWmZxV2RGVW1SVjBueldJcWIzWVhOT2VRVG4yckF6Q2hi?=
 =?utf-8?B?cnpYVVdMUWlFYy93UkYveUMvY3NNRGNTZC9XVzRGTTdDWmdsWW5hc3p6Umht?=
 =?utf-8?B?aGNFV2o2eEJ4NFFReC9kOXZtNnlycTllZkU5WStlTVA0bW1oWHdCRFdrUnEv?=
 =?utf-8?B?emw1eGpkdWZmMzlLWC9Vekl5dEdzL1RJN3FEaDl2TytFeXhXemdlT0YrUmNp?=
 =?utf-8?B?blhiL0RRS0hrbmFIS0phRVJMUHU1SW80ODdSRDRCK2lEL21nZWs3WW41Wndy?=
 =?utf-8?B?TVBVa3JBdlhqdW0vMVU1SStQdGVaaTlFYkp2b05VLzZMQXUrR3p6REhKMmZL?=
 =?utf-8?B?U01oN2Z5N3R2R0E2Tk9TNUo5Mkd1WDdXUGJ3bytHdVRjaXN5blNZckh6aHlv?=
 =?utf-8?B?TS9nVmx6aFpiWFdGNmJJREdDb0E0L291OGpsQ3lNTWp4dEp2ZEhPbE44Tncy?=
 =?utf-8?B?cm44cFBzOHNNUERsU2NDTUlNc1dkejdoNWR1UlpFc2xIV29KV3hRVFE3ZVVQ?=
 =?utf-8?B?eUJtMHRZanlSMnRlZmFrUzAwejZhcXJHR2V1UExQb2RMOFVmM0RsbXVFOEhl?=
 =?utf-8?B?M3I4YmtScEFWUHhsNFJGQkdmV1dHZktIZzNvRW8rQXZ3eWxXZGgrNnpqTWox?=
 =?utf-8?B?YWpsV1hNSG40QzYvU2hjWFNmaWc1YzBHZG12REppZTFJckIwNkpjVEFYaUhD?=
 =?utf-8?B?MkFXQW10dmlNY2piUGNMaE9aQzlEWjhXS1VDS2JqZHJhKzhRbVpyRG9xd3dj?=
 =?utf-8?B?NGpZeUdiaGlXaTRuUURhVU1RVCtjL0tudjM5c01zeVNTSFhUVkFqY3I0d3ZK?=
 =?utf-8?B?NDdSUHIyZVQxQjk2M1FpRUFFTHpiZlh3YVhCbjVKaTNhQk1aclg3d05LeUVQ?=
 =?utf-8?B?c3ZCTlNjMGxCZC9NWkpodE95OU5zcmtvSXB3VEZYUk9xVXppQWZMcGtOYmZo?=
 =?utf-8?B?MHBjVUt3aFp1KzdnUUF5S2syTE5UR0JJVEdpVVlyQUl0eGhFV2lEYjl5dGE3?=
 =?utf-8?B?d0dKa01VOWNOc01DYmR2anp1RXdEblAxdXZvYll3TzJIU1dGTUhhUmFkVnF5?=
 =?utf-8?B?Q001S0Z0NDRCa2Z6NTRQYVhISTI1M1J6M0RON09OOEpoN3FYRk50Z3c5d3I1?=
 =?utf-8?B?aC82MTJxZEhMaEpZK29qNmpwdHpMWlEwYjJTcTBmY0tVS2dHQ1k5R05yUnpJ?=
 =?utf-8?B?aFJKTWdaNnNhUG5vUHhkMGJzOXhQOWNoa0ZNd2dNMkNDSjVIM2JhWmFvQTg0?=
 =?utf-8?B?SEJweUFONnlBSFphVG5OMEZDS0lqNEhOSGgrcmNrbHd3aFdIZFNIS0pra0gx?=
 =?utf-8?B?N3luM2NHK2d6QWU1RTFQVndldWRzQUI4aHFKYVJ5QmxLdzJXek5DUzdZTDF1?=
 =?utf-8?B?MHNmZkpiYXpxbVhUM2Z4NUVGNUhzS1ZpVnNvSGU3TmJIUEIzUC9qQ3QrZmdr?=
 =?utf-8?B?NEtqMkQvcTFNRGNMUUpJd09OY3B0L2NnSHE1ZlpQTHZKV2llekdUT1QyQWtH?=
 =?utf-8?B?UVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4239ce4b-9cb3-4692-c693-08db5b9fa6fa
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 15:09:06.8683 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fS40hi+FUni42e8QOUwFqZ0p8Lec0sA62Cv+kcQ3DHt6lAXujHxMH14uIiVahxCQUlQaMgzomf8Nn7oKnV5pAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 7/7] drm/i915/mtl: Add support for PM
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

Quoting Vinod Govindapillai (2023-05-22 20:07:59-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>MTL introduces a new way to instruct the PUnit with
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
>v5: simplify pmdemand_state structure
>    simplify methods to find active phys and max port clock
>    Timeout in case of previou pmdemand task pending (Gustavo)
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
>Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>---
> drivers/gpu/drm/i915/Makefile                 |   1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  14 +
> .../gpu/drm/i915/display/intel_display_core.h |   9 +
> .../drm/i915/display/intel_display_driver.c   |   7 +
> .../drm/i915/display/intel_display_power.c    |   8 +
> drivers/gpu/drm/i915/display/intel_pmdemand.c | 503 ++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
> drivers/gpu/drm/i915/i915_irq.c               |  23 +-
> drivers/gpu/drm/i915/i915_reg.h               |  36 +-
> 9 files changed, 621 insertions(+), 4 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
> create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 7587fe856e67..2698ecf74844 100644
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
>index 1d5d42a40803..d9daafe3362c 100644
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
>+         * In XE_LPD+ Pmdemand combines many parameters such as voltage i=
ndex,
>+         * plls, cdclk frequency, QGV point selection parameter etc. Volt=
age
>+         * index, cdclk/ddiclk frequencies are supposed to be configured =
before
>+         * the cdclk config is set.
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
>index 9f66d734edf6..ae45b2c42eb1 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -345,6 +345,15 @@ struct intel_display {
>                 struct intel_global_obj obj;
>         } dbuf;
>=20
>+        struct {
>+                wait_queue_head_t waitqueue;
>+
>+                /* mutex to protect pmdemand programming sequence */
>+                struct mutex lock;
>+
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
>index 000000000000..843440b9430b
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -0,0 +1,503 @@
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
>+struct pmdemand_params {
>+        u16 qclk_gv_bw;
>+        u8 voltage_index;
>+        u8 qclk_gv_index;
>+        u8 active_pipes;
>+        u8 dbufs;
>+        u8 active_phys;
>+        u16 cdclk_freq_mhz;
>+        u16 ddiclk_max;
>+        u8 scalers;
>+};
>+struct intel_pmdemand_state {
>+        struct intel_global_state base;
>+
>+        /* Parameters to be configured in the pmdemand registers */
>+        struct pmdemand_params params;
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
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_global_obj_state(state,
>+                                                  &i915->display.pmdemand=
.obj);
>+
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
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_old_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
>+
>+        return to_intel_pmdemand_state(pmdemand_state);
>+}
>+
>+static struct intel_pmdemand_state *
>+intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        struct intel_global_state *pmdemand_state =3D
>+                intel_atomic_get_new_global_obj_state(state,
>+                                                      &i915->display.pmde=
mand.obj);
>+
>+        if (!pmdemand_state)
>+                return NULL;
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
>+static u16 pmdemand_max_ddiclk(struct intel_atomic_state *state,
>+                               struct intel_pmdemand_state *pmdemand_stat=
e)
>+{
>+        int max =3D 0;
>+        struct intel_crtc *crtc;
>+        int i;
>+        const struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>+
>+        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>+                                            new_crtc_state, i)

Wouldn't we need to check if this CRTC is active here and adjust the
actions according to the outcome?

>+                max =3D max(new_crtc_state->port_clock, max);
>+
>+        return DIV_ROUND_UP(max, 1000);

I still think this would not work on every scenario: my understanding is
that we are not iterating through all active crtcs here, but only those
in *this* atomic update. So, for example, if we are only updating CRTC A
here but already have active CRTCs B and C, and one of them have higher
port clock than A's, then we would wrongly select A's port clock as the
maximum one.

Now, we could think of the option of defining the initial value for the
max port clock to the one from the old intel_pmdemand_state and then do
the loop. In the example above, if B is the one with the maximum, then
things would work out for that specific example.

Unfortunately, that still would not be the correct solution. An example
of how this could give us the wrong value: let's say CRTC A is the one
with the maximum port clock among three currently active CRTCs A, B and
C. That means that in the next atomic update, we would initialize the
max variable with A's port clock. If such update is for *disabling* CRTC
A, we would be initializing that variable with an invalid value.

That is why I still think that we need to have a solution similar to
what is done in intel_bw_check_data_rate(): to use an array so that we
have an up-to-date list of active port clocks (we could have the
inactive ones as zeros).

>+}
>+
>+static u8
>+pmdemand_active_non_tc_phys(struct drm_i915_private *i915,
>+                            struct intel_atomic_state *state,
>+                            struct intel_pmdemand_state *pmdemand_state)
>+{
>+        struct drm_connector_list_iter conn_iter;
>+        struct intel_connector *connector;
>+        u8 phys =3D 0;
>+
>+        drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>+        for_each_intel_connector_iter(connector, &conn_iter) {
>+                enum phy phy =3D intel_port_to_phy(i915, connector->encod=
er->port);
>+
>+                if (intel_phy_is_tc(i915, phy))
>+                        continue;
>+
>+                if (connector->get_hw_state(connector))
>+                        phys++;
>+        }
>+        drm_connector_list_iter_end(&conn_iter);
>+
>+        return phys;

Hm... I do not think we should really look at the hardware at this point of=
 the
atomic transaction. The transaction will potentially change the hardware st=
ate
when committed. If we are disabling or enabling phys, then we would program=
 PM
Demand an outdated value.

Regarding the previous implementation (from patch v3 or v5) I also do not t=
hink
it would cover all scenarios for similar reasons stated above for the the m=
ax
port clock calculation. I still think a proper implementation would be doin=
g
something similar to what is done in intel_calc_active_pipes(): to use a ma=
sk so
that we have a view of all active phys.

Note that using a mask is similar to using an array like in the proposed
solution for the max port clock. Using a mask here is just because we are
tracking boolean states, which could be efficiently done with a mask,
considering that we have enough bits.

Well, all that said (about this and pmdemand_max_ddiclk), I quite new on at=
omic
modesetting and I might be making wrong assumptions here. Ville, could you
please provide some input on this matter?

>+}
>+
>+
>+static bool pmdemand_needs_update(struct intel_atomic_state *state)
>+{
>+        bool states_checked =3D false;
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
>+                if (old_crtc_state->port_clock !=3D new_crtc_state->port_=
clock)
>+                        return true;
>+
>+                /*
>+                 * For the below settings once through the loop is enough=
.
>+                 * Some pmdemand_atomic_check calls might trigger read lo=
ck not
>+                 * taken assert if these following checks are kept outsid=
e this
>+                 * loop.
>+                 */
>+                if (states_checked)
>+                        continue;
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
>+                states_checked =3D true;
>+        }
>+
>+        return false;
>+}
>+
>+int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_bw_state *new_bw_state;
>+        const struct intel_cdclk_state *new_cdclk_state;
>+        const struct intel_dbuf_state *new_dbuf_state;
>+        struct intel_pmdemand_state *new_pmdemand_state;
>+        int ret;
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
>+        new_bw_state =3D intel_atomic_get_bw_state(state);
>+        if (IS_ERR(new_bw_state))
>+                return PTR_ERR(new_bw_state);
>+
>+        /* firmware will calculate the qclck_gc_index, requirement is set=
 to 0 */
>+        new_pmdemand_state->params.qclk_gv_index =3D 0;
>+        new_pmdemand_state->params.qclk_gv_bw =3D
>+                min_t(u16, new_bw_state->qgv_point_peakbw, 0xffff);
>+
>+        new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>+        if (IS_ERR(new_dbuf_state))
>+                return PTR_ERR(new_dbuf_state);
>+
>+        new_pmdemand_state->params.active_pipes =3D
>+                min_t(u8, hweight8(new_dbuf_state->active_pipes), 3);
>+
>+        new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>+        if (IS_ERR(new_cdclk_state))
>+                return PTR_ERR(new_cdclk_state);
>+
>+        new_pmdemand_state->params.voltage_index =3D
>+                new_cdclk_state->logical.voltage_level;
>+        new_pmdemand_state->params.cdclk_freq_mhz =3D
>+                DIV_ROUND_UP(new_cdclk_state->logical.cdclk, 1000);
>+
>+        new_pmdemand_state->params.ddiclk_max =3D
>+                pmdemand_max_ddiclk(state, new_pmdemand_state);
>+
>+        new_pmdemand_state->params.active_phys =3D
>+                pmdemand_active_non_tc_phys(i915, state, new_pmdemand_sta=
te);
>+
>+        /*
>+         * Setting scalers to max as it can not be calculated during flip=
s and
>+         * fastsets without taking global states locks.
>+         */
>+        new_pmdemand_state->params.scalers =3D 7;
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
>+        return !(intel_de_wait_for_clear(i915,
>+                                         XELPDP_INITIATE_PMDEMAND_REQUEST=
(1),
>+                                         XELPDP_PMDEMAND_REQ_ENABLE, 10) =
||
>+                 intel_de_wait_for_clear(i915,
>+                                         GEN12_DCPR_STATUS_1,
>+                                         XELPDP_PMDEMAND_INFLIGHT_STATUS,=
 10));
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
>+        tmp =3D old ? max(old->params.qclk_gv_bw, new->params.qclk_gv_bw)=
 :
>+                    new->params.qclk_gv_bw;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>+        tmp =3D old ? max(old->params.voltage_index, new->params.voltage_=
index) :
>+                    new->params.voltage_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>+        tmp =3D old ? max(old->params.qclk_gv_index, new->params.qclk_gv_=
index) :
>+                    new->params.qclk_gv_index;
>+        *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>+        tmp =3D old ? max(old->params.active_pipes, new->params.active_pi=
pes) :
>+                    new->params.active_pipes;
>+        *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>+
>+        *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>+        plls =3D old ? max(old->params.active_phys, new->params.active_ph=
ys) :
>+                     new->params.active_phys;
>+        plls =3D min_t(u32, plls, 7);
>+        *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>+
>+        /* Set 2*/
>+        *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.cdclk_freq_mhz,
>+                        new->params.cdclk_freq_mhz) :
>+                    new->params.cdclk_freq_mhz;
>+        *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>+        tmp =3D old ? max(old->params.ddiclk_max, new->params.ddiclk_max)=
 :
>+                    new->params.ddiclk_max;
>+        *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>+
>+        *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>+        tmp =3D old ? max(old->params.scalers, new->params.scalers) :
>+                    new->params.scalers;
>+        *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>+
>+        /*
>+         * Active_PLLs starts with 1 because of CDCLK PLL.
>+         * TODO: Missing to account genlock filter when it gets used.
>+         */
>+        plls =3D min_t(u32, plls + 1, 7);
>+        *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>+        *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls);
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
>+                    "initate pmdemand request values: (0x%x 0x%x)\n",
>+                    mod_reg1, mod_reg2);
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
>+        return memcmp(&new->params, &old->params, sizeof(new->params)) !=
=3D 0;

This is much nicer to read now! Good call grouping the values in a
"params" member :-)

--
Gustavo Sousa

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
>index 02b6cbb832e9..49459ab70dd1 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -43,6 +43,7 @@
> #include "display/intel_gmbus.h"
> #include "display/intel_hotplug.h"
> #include "display/intel_lpe_audio.h"
>+#include "display/intel_pmdemand.h"
> #include "display/intel_psr.h"
> #include "display/intel_psr_regs.h"
>=20
>@@ -1981,12 +1982,27 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915=
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
>@@ -3737,7 +3753,10 @@ static void gen8_de_irq_postinstall(struct drm_i915=
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
>index 2a9ab8de8421..91fb12b65c92 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4450,8 +4450,10 @@
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
>@@ -4536,6 +4538,33 @@
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
>@@ -4695,6 +4724,9 @@
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
