Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CC669A5AD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 07:39:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E784410E3E8;
	Fri, 17 Feb 2023 06:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87ECF10E3EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 06:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676615953; x=1708151953;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EFt6WWPiUCFCPdWG7p2CC2MYzoRhxa3kGGHUkR8WRx4=;
 b=mEELWf1GE635D3AoeGYk8v19NqDxPi1P0e0T5sZmr7Hn7G3vqyhxUd7J
 MtclP74Su8ZTkfZ9quCZwD7jgBrWO9I9T+G00xzzoWkpA6lonOfOMQd0y
 Bgb/PJHjkjyi7tEfiNpI9BGppcaIMw58m/3VE97QvjRG0HFY3kknxL+hT
 zO51P12uPqx58Es7elPE7OxUG8Uh7ZoIqySgnB927+e4b9cqTS6VrZOdz
 fxQ6l+8j5CqUA7PIj8O3K7C96somb8/KEZtGQ6HHevFIPPVeaJJuOSDTp
 bo+NYZ1XKv2NIeOsqj1Cv7VcZqIiyhvVvB6BMu4pn9X01MgZ2IDMydKhA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="315633911"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="315633911"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 22:39:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="670436424"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="670436424"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 16 Feb 2023 22:39:08 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 22:39:08 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 16 Feb 2023 22:39:07 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 16 Feb 2023 22:39:07 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 16 Feb 2023 22:39:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N2T/1KwGTFAaEXS2+NBOUcSxvfAHa6kY+vcJ+mpbjueNrYxs/Y2Uk1QToYN+UHdug8+J5G26+dTJikPHgrUKMSkrlu+gFDnlEQ0jO7OThvAXsxQADa/SnaN24PnuzCuzgYdn0wq5dLeAF5zDElRmgL0Zlevn2kZEokohEyxTcgD4s3gPGCXPs1WSKBISkqCkJc48IMFruO17WriFIakMgY9lk0SBQRV9og2aWZ2jWOYEH/679KVQJ1Pu4asOEeHn1SXA1JVtLXpJgDZMQUiXIgYX5i25vUDX3zkro2TX0m+GXB1pAy9b2JSc8gczEl18lmsvsk2IdOgzcPdf5SimaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfrkNKOqEMk9NYO9JVM7udUS7a+V1gvLFK6Gkxq1HF0=;
 b=IHbGy6bSTyNsmo06HiaNjskNO5llRvtpYGtJCHZmzFLfF9fAOTz4vz3wyg33vqn9Fvyg3RChIsUNtwHzO9yV2U2WcFmPowOyWkPAFLzfUujivSuaCiru8Nu7chf8da2/jEmQqCwxYrSqbYjZYUTKvLLz+/QBUhOUnUGpilakRcSMFTF6sUXN14epuBVj1BRfsnCPXG8Ugts0j96I+bSrKYdXJCUiAIXahqw3INT/aUuSBf0I8/jcvsK/WZ3MFUYoHXPmFC23JYnLm2NRo/8PevsfigFaBoJIUqMKRtYRPwjVHD4J4OtvZjeEtqvZ9T5y2PqxwW1sMlmku14dNx3d0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7611.namprd11.prod.outlook.com (2603:10b6:806:304::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Fri, 17 Feb
 2023 06:39:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%7]) with mapi id 15.20.6111.013; Fri, 17 Feb 2023
 06:39:05 +0000
Message-ID: <d7f1bae6-f56a-aff0-32ba-6d9c2dc8df6b@intel.com>
Date: Fri, 17 Feb 2023 12:08:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230216231312.32664-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0039.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7611:EE_
X-MS-Office365-Filtering-Correlation-Id: c86ba996-1940-4a14-fb78-08db10b1a9e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uZRDaOY2f2qivf/vPg7clNO+oBrlLx9i2hxyuBwK7FU0NwABH0FWQwaSfDjvLh531m7xq/E1PjTtEqqD7TsYfMrjLD/SsSdcuLYSH3gLc5sKh7tWAjN62EZrvOIWPAb6tx5WLs7KLMDVBwkIhohAxiUVu6BBI3aPPb0dRY5BOCEI6s3dVrJsOhmdOmWAmClGKWvRQoWa24f+pSbZAysTWMleCwA0lEIGlTJHTA4bjG13iynWyJmlPCcuN5UU75gCytcLjM3yST2zaUITpQqlGhNusLsZGwr871/pd3TTk6jHtMSXoWmUMifZGwrC+eT6eSN9ACnalw5XZOTz9j7BhM9lBwk4EVps9lYLR7QiVGibM5hgQBkyDXri7UmTgUiK120TzhuL9yYOqPHPTYm5EbVtvh/+N/RS3FzjiRvriX9U63l5u0oWKt9mwdGu6C5zUaFoNm9N9jbNFbrQr3c/54NWRbmLcHaGcVRRctwK4vTD+OAzjoyPOvWzFD4LnadoVu70XvNvZjxVQHkrDldqF20yZcUrP2jcCROqdlD1GclvuVoNYOnmCJFgPh52PizBu90LFh7ShC8bP3hj8yZnOw9gjVywLKbmnj0aOy6jGz9CRaZWeSGkDJ+mbZOK9qw7rr0k1KBu+KNJA/nY107i9hfB0ukIwuHFd2K2QqZNp1dJTDMCSU+Z+JORP4CEupmDiDs6SzmiEWDru2SLD0J3r6vHHdC+5J3QjY74QAkdXfk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(396003)(39860400002)(366004)(346002)(451199018)(66899018)(31686004)(6486002)(36756003)(38100700002)(82960400001)(66574015)(6506007)(2616005)(83380400001)(86362001)(53546011)(6666004)(6512007)(186003)(55236004)(31696002)(478600001)(26005)(2906002)(66556008)(66476007)(8676002)(5660300002)(316002)(41300700001)(66946007)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUtrT3NmWTIyV1k1SzVSQjI2VzFSeTU1T3ZPeFlxMlRYS2VaSzZGZTNWSk1K?=
 =?utf-8?B?Rmt5dWxRbk9GZ0xoRmllWFZYN1lldlU5K0NVNmFEMkx3aGdyYlQxd24rTTZx?=
 =?utf-8?B?di9UeTcvUnZhUHJzbitoSUtuTkJ4ODVIeTlCR0JUTHF3N3lubHlWUE45dkRS?=
 =?utf-8?B?OHNtOWJpMmx0OFByUzRsYzUvbzRhN0xuVWpLeHBOa0w2Tk82dUNvaC82QmZD?=
 =?utf-8?B?QlBJMlo2Y0hBZXNpb1kxeVVMVUkyRG40QlMxaVN5aGd4L2VpMU1BOW5Ea0NG?=
 =?utf-8?B?TDZTVG9LeklucDZCTmJ5VXF4KzFNV1l5ZXRadXcrdGhLRThzZEhkTVRia3o5?=
 =?utf-8?B?R1JYV2JrUndSNnhrb2l1Y1c4Z2h4MGpKQ2RVcFZPS0dYdW5Wc0tDQ3FnbzRS?=
 =?utf-8?B?dXV4eDk0aytWRXNBS0Q3bWp1dXFLTDlXTCtnMTRRL0V5aTR6NUZTQ09OdG5N?=
 =?utf-8?B?NEpXOGRwMWFndk9LYklncGo5MmZScHkxZVp5OVB6QXhzd2piaWMrNkkrWVdF?=
 =?utf-8?B?S01ZUGNMNlZxb0NuQ0JjTUcxWkFpYTNFU2dLUzJOY0lscDUzTklROWpOd2xo?=
 =?utf-8?B?WmY2R1hQN3krQlhFa04xWjhCa21vazVTb0VQL3ZSSmxPK1pqaWwvc0RORWtP?=
 =?utf-8?B?UUd5SFREV0pHcFJwY015N2lnYTIwREc3SDBWWk5maHdIaFlWRHd2dk1VOUV5?=
 =?utf-8?B?SkZWZENYRjRHQlVIbXJpYTl0SUo4RXpkUlFLWDFTa3Y1YmVzOWNlcUJHSlll?=
 =?utf-8?B?MVJpakN5dHpKbk9IUTFYeXdtdFRVelJjMmNSTFFLT3pkZ1E1SW1pdWthU09l?=
 =?utf-8?B?R1JXUUJuSlVmUHJqblpSRVNzelJIRk0zWVFoS2ZjMGpmOTVXcDFwTEF2Ri9R?=
 =?utf-8?B?WElybHhIek1ZTFBJNnQrM2N2aitrZ3NOUWROMGFFOGJUKzJPY2EwZ1BjUFVZ?=
 =?utf-8?B?L29yd0VDcit5UkQ3MGIzM0NsSHVSd1FiTVJTRWRyWGZkY2hnTXNERERIOUE2?=
 =?utf-8?B?c1FaVktkMXd5ZzBZclVMSlYxWUhlSzRuR0hBeTI4cXdtRE9ycEwxS1VFWUc1?=
 =?utf-8?B?UTRVNFk1RW9jZWVvSk5SMnBEQ284Q1pSRE1mYmpZSnhvM1JuV3ZsdFNSQVgz?=
 =?utf-8?B?ZTBYZ3c4djRDWGF4VmxQNDRPMG5ENGFaQ2VyRVB4OTZiaUNyUUg5YlNPaHNS?=
 =?utf-8?B?OWFjUHltb0V2VVpsc2ZwOFFsUWpESjlpUytsSFUrL2wreWlqUDZjTitHYzdQ?=
 =?utf-8?B?OVp0Sm5nUHQxNzRJaU0yK1RTSlV5TEdzbk56NHBTSnZSN3VicVZ5UDVQcm1V?=
 =?utf-8?B?c3dKT0tlZUJlYVJBVmlVZTd6VW1DMjdxR09nSzhyeGFycXVMaUFxMVljNHgy?=
 =?utf-8?B?bURuVThWMDBBUmoxM0JjcHFIaTJlVkpVT1diVktQclhBV3VPazZnNG41V0s3?=
 =?utf-8?B?anRBTkNEMXpRdnpSRGNGaTNVNXlYSU9nUUpmZmMxY3JYTDFEZXkrelhiVlZo?=
 =?utf-8?B?VzAwWGpWUExjeVRiUXYwS2NnOFExN1JqdmljdGduUkRxZm1XQzluZjkwV3dU?=
 =?utf-8?B?M2t4ak51bkhmSmtHVktSNnhid3NCVkVncS9FM2Z3UUJEQU9QaUN5WjlzL1Fr?=
 =?utf-8?B?bUFjbi9LUmNwYm5CcUxPc2tJZG5JMVZtSktVazhRM1p0VWlNbUtIbXl6VDVT?=
 =?utf-8?B?Nzc0clI5VnRXNm9QTFcwc29JemNIa0dhNURvOGpXZEtXSTgvY3lhWTNPMENr?=
 =?utf-8?B?Y1NVUkxSUjdzSEI0Vm5XcDIzeE5RMjNOUGJSb01VV2gwQ09KTTZwZW1yQXVo?=
 =?utf-8?B?ckl6THBpK1lHNWpyM3I4enNueTNhb3l2ai9GLzc3Y3RCdU1oazhmRlBKbmta?=
 =?utf-8?B?TmhaUjc4WHQ4UE5MVmhzV0xHN3pjS053a0VlVDIwVVZscmluazh5akwrSlJQ?=
 =?utf-8?B?RzRZNTZTYWR6WGJZRGUwTk1sNitHZlpwR29vYTZnMVhYUFBKczZoMzBrODZ3?=
 =?utf-8?B?dktTNlEwb3lGell5V2dDOFF5dTVZWDNEODZKMWFQZW9ZTVVtaWdBaEtXa0E3?=
 =?utf-8?B?ZEg0TmZPdjQwMnVCVk80VDdVcEVHTWh5V29oS3Zmekdqd2JVSHY2d2wyZG9p?=
 =?utf-8?B?SzNZc3J4Njd5NUtaamVwY1hPWU5TbHBSMWpneFIwaXV3bzlIRnYycXB4Zkpr?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c86ba996-1940-4a14-fb78-08db10b1a9e6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 06:39:05.2393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bz//eyeHLP5bNsYgydDltaX1dJun+6cE2A2QFZEmNJoVCE/+7Yb0+ZjEN9JGoZTwVcjJWS+OnNJ+rPi/rfpr3sNzTGuk5DD/r683m28dTXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Restructure
 intel_bios_port_aux_ch()
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

Patch looks good to me.

There are a few nitpicks, typos mentioned inline.

On 2/17/2023 4:43 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Restructure intel_bios_port_aux_ch() to resemble the ddc_pin
> counterpart, where the intel_bios.c stuff only deals with the
> child device definition, and the platform default will come from
> elsewhere.
>
> This requires the introduction if AUX_CH_NONE as the value 0

s/if/of


> is already taken to mean AUX_CH_A.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/g4x_dp.c        |  3 ++-
>   drivers/gpu/drm/i915/display/g4x_hdmi.c      |  3 ++-
>   drivers/gpu/drm/i915/display/intel_bios.c    | 27 ++++++++------------
>   drivers/gpu/drm/i915/display/intel_bios.h    |  5 ++--
>   drivers/gpu/drm/i915/display/intel_ddi.c     |  3 ++-
>   drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_dp_aux.c  | 23 +++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dp_aux.h  |  4 +++
>   8 files changed, 47 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 6ccbc2280ff9..a50ad0fff57c 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -17,6 +17,7 @@
>   #include "intel_display_power.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> +#include "intel_dp_aux.h"
>   #include "intel_dp_link_training.h"
>   #include "intel_dpio_phy.h"
>   #include "intel_fifo_underrun.h"
> @@ -1397,7 +1398,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>   	if (port != PORT_A)
>   		intel_infoframe_init(dig_port);
>   
> -	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
> +	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
>   	if (!intel_dp_init_connector(dig_port, intel_connector))
>   		goto err_init_connector;
>   
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index e965c5513c74..34f56d8d7cb3 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -8,6 +8,7 @@
>   #include "g4x_hdmi.h"
>   #include "i915_reg.h"
>   #include "intel_audio.h"
> +#include "intel_dp_aux.h"

Perhaps include this in alphabetical order.

Otherwise the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit

>   #include "intel_connector.h"
>   #include "intel_crtc.h"
>   #include "intel_de.h"
> @@ -639,6 +640,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
>   
>   	intel_infoframe_init(dig_port);
>   
> -	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
> +	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
>   	intel_hdmi_init_connector(dig_port, intel_connector);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8cf2392a5670..f35ef3675d39 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3572,21 +3572,10 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>   	return false;
>   }
>   
> -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> -				   const struct intel_bios_encoder_data *devdata,
> -				   enum port port)
> +static enum aux_ch map_aux_ch(struct drm_i915_private *i915, u8 aux_channel)
>   {
>   	enum aux_ch aux_ch;
>   
> -	if (!devdata || !devdata->child.aux_channel) {
> -		aux_ch = (enum aux_ch)port;
> -
> -		drm_dbg_kms(&i915->drm,
> -			    "using AUX %c for port %c (platform default)\n",
> -			    aux_ch_name(aux_ch), port_name(port));
> -		return aux_ch;
> -	}
> -
>   	/*
>   	 * RKL/DG1 VBT uses PHY based mapping. Combo PHYs A,B,C,D
>   	 * map to DDI A,B,TC1,TC2 respectively.
> @@ -3594,7 +3583,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
>   	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
>   	 */
> -	switch (devdata->child.aux_channel) {
> +	switch (aux_channel) {
>   	case DP_AUX_A:
>   		aux_ch = AUX_CH_A;
>   		break;
> @@ -3655,17 +3644,21 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>   			aux_ch = AUX_CH_I;
>   		break;
>   	default:
> -		MISSING_CASE(devdata->child.aux_channel);
> +		MISSING_CASE(aux_channel);
>   		aux_ch = AUX_CH_A;
>   		break;
>   	}
>   
> -	drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> -		    aux_ch_name(aux_ch), port_name(port));
> -
>   	return aux_ch;
>   }
>   
> +enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata)
> +{
> +	if (!devdata || !devdata->child.aux_channel)
> +		return AUX_CH_NONE;
> +
> +	return map_aux_ch(devdata->i915, devdata->child.aux_channel);
> +}
>   
>   int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 49a9e8d40e88..8a0730c9b48c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -38,6 +38,7 @@ struct intel_bios_encoder_data;
>   struct intel_crtc_state;
>   struct intel_encoder;
>   struct intel_panel;
> +enum aux_ch;
>   enum port;
>   
>   enum intel_backlight_type {
> @@ -248,9 +249,6 @@ bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port por
>   bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
>   bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum port port);
>   bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
> -enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
> -				   const struct intel_bios_encoder_data *devdata,
> -				   enum port port);
>   bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>   			       struct intel_crtc_state *crtc_state,
>   			       int dsc_max_bpc);
> @@ -269,6 +267,7 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
>   bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
>   bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
> +enum aux_ch intel_bios_dp_aux_ch(const struct intel_bios_encoder_data *devdata);
>   int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
>   int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
>   int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e917d91ea9f9..3f5a81e08040 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -47,6 +47,7 @@
>   #include "intel_dkl_phy.h"
>   #include "intel_dkl_phy_regs.h"
>   #include "intel_dp.h"
> +#include "intel_dp_aux.h"
>   #include "intel_dp_link_training.h"
>   #include "intel_dp_mst.h"
>   #include "intel_dpio_phy.h"
> @@ -4486,7 +4487,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>   
>   	dig_port->dp.output_reg = INVALID_MMIO_REG;
>   	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
> -	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
> +	dig_port->aux_ch = intel_dp_aux_ch(encoder);
>   
>   	if (intel_phy_is_tc(dev_priv, phy)) {
>   		bool is_legacy =
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index ed852f62721d..50285fb4fcf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -172,6 +172,8 @@ enum tc_port_mode {
>   };
>   
>   enum aux_ch {
> +	AUX_CH_NONE = -1,
> +
>   	AUX_CH_A,
>   	AUX_CH_B,
>   	AUX_CH_C,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 5a176bfb10a2..c4e72c17e06a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -6,6 +6,7 @@
>   #include "i915_drv.h"
>   #include "i915_reg.h"
>   #include "i915_trace.h"
> +#include "intel_bios.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp_aux.h"
> @@ -737,3 +738,25 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>   	intel_dp->aux.transfer = intel_dp_aux_transfer;
>   	cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VALUE);
>   }
> +
> +enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum port port = encoder->port;
> +	enum aux_ch aux_ch;
> +
> +	aux_ch = intel_bios_dp_aux_ch(encoder->devdata);
> +	if (aux_ch != AUX_CH_NONE) {
> +		drm_dbg_kms(&i915->drm, "using AUX %c for port %c (VBT)\n",
> +			    aux_ch_name(aux_ch), port_name(port));
> +		return aux_ch;
> +	}
> +
> +	aux_ch = (enum aux_ch)port;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "using AUX %c for port %c (platform default)\n",
> +		    aux_ch_name(aux_ch), port_name(port));
> +
> +	return aux_ch;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> index 738577537bc7..138e340f94ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> @@ -6,9 +6,13 @@
>   #ifndef __INTEL_DP_AUX_H__
>   #define __INTEL_DP_AUX_H__
>   
> +enum aux_ch;
>   struct intel_dp;
> +struct intel_encoder;
>   
>   void intel_dp_aux_fini(struct intel_dp *intel_dp);
>   void intel_dp_aux_init(struct intel_dp *intel_dp);
>   
> +enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
> +
>   #endif /* __INTEL_DP_AUX_H__ */
