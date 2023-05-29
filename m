Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D98847149E9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 15:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8333910E090;
	Mon, 29 May 2023 13:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3783A10E090
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 13:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685365897; x=1716901897;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vPWPphBrPFkFsPAP3fbjl8rn1SRCXWEghqq6B3rkBrs=;
 b=Gqv78Oc2J/atA2yRggyQ34GYg0L/fCtdXKzgRHL9HmCBUxgvwO2JQ1ci
 YHh5znI5V+FQOPsIDLfhnIKXwDa/Jm002sK0yOuAemmDZHhqm6uNogwAz
 Rtc+fV46CSWHnUG6M05rkvV4yechs2q4lfceqxdFU0rVAtK7rXr+ZPShO
 ClYOcrgwMzuPedFp5OonjURgePNyaUaCNlgNokxit7/ZZCxdHJICZm384
 4F7Je7/JYVlcThOv+GkHM6nLJeG3HFBjdT/hZq3X9NsSH2gIq76LCZDUW
 R3OEZ9yMtdMeYC6IPV1+nzW0fR3o3tErrrTA58ddwkl7OGvTQWbEOMmpK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="420458894"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="420458894"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 06:11:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="1036219421"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="1036219421"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 29 May 2023 06:11:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 06:11:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 06:11:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 06:11:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 06:11:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wcim1vJkDNAf8zhuRvlJ+tUqPwYck5OgEd4JmqDz9sGQN/SG3Y18lU6G593awB8VO2Jdi7FcN//fNHo5CRLQCwOk+0zH8rjq1cFV4f3P47hjDp8HkONsh/EG9ZgKqR4oD7VKJ9jFbX3a0KH+NOzkkwMx6aAGzzvU3hCiSPswRQbbvBwsb6vehIbrE4uLlDcxipEPD4zK0cdnBsBc8Il8LpCa4biKlMDiMLyZoQsgFY+wwbfdJvQBOclf6rHr/YFsh3gAhUBJG97EnYPMr3dKK1l3CC1bfeUBUjzfkg8PhuOajap2ePA09XMfdY/vHjAXEXf03MJMPDdxu/2HAosHFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AEQqkOvOjfsWmfg9onqHyRBwubL+LCsKpmCRL5U9o3I=;
 b=PklBiuhbTd+ffmbvCZFTJT+MODZ1UYurTnvoTDKBpwND6vBJ1qBxTbct+Y6UngkhSClz195aegQ/etxxTAdCjTWqPIzVhNBWw8nPTiAOm6UkT/VujXdIeUezg3btUtPgFwLcRFFpLFdJkGjNlcsfnZR9ZkiDB6qwNlg3oOX6rkdTcQ8A8t4hh3eQllqM+2ElHS1DSFVvkT03waDY39+2u270h2Jq2Ur0u/31Oz5wubIzFIh65LYGT9Vs7QCa9F1X1sF3/FHiHu8Iar0T0VXjVuMl68FQeh+DR0bRJqaubEZlmBmzAdsSAHW+fQ3jbkT895P5jafTnWsiEMRLyBk9Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 13:11:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 13:11:18 +0000
Message-ID: <11a03fcd-9019-17d3-820e-4e9bdbb7eb43@intel.com>
Date: Mon, 29 May 2023 18:41:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <0dae95f92108b0c1b6a6a3ae2c13f109afc317cf.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <0dae95f92108b0c1b6a6a3ae2c13f109afc317cf.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0232.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bdb991d-67e0-4ca3-ea51-08db604630be
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Zmfym5JUkj0dgMyNJwTAWwu8IfHHM6Dku5mAYif4vC711QxynbFNUx4snpXtF4xs2eqorCtXZWQU4Sxi2XDX/AmJTjWmXn1XtTFFhYydCmHFY2rYHP9eg8MjbgxiXTzcgUj5niYEyFkO0ImW4gaaI8Gbh8Nx8g0dr9SNhhNp+2BrcwGIFgI3VVSAcQURbRJqZTGvxyCCmCnYMbXcG+nX3mEcfpNlGlD5gdje8NmykeM8ZP9pPcVE0zO35wHKCGJhgnc1NCYHpvvUZZYY6I6f9NLtS2sySAxbq4X4dby3/NvBNejxKqDhgXuxVHXXTOXr/KoMFbF4yP8iYhO/T3cwk6aLSk97KtytyMj0Sh1953b1D94x4Py3c3O86HRlbpDvm7IdfgxxVOvNCX1Xcj7/2hkZFuoLPFiIE637X3ZTtEm42vFCwmDCMWtjpX0SnhvJKVZOW/AxMSNFtluHzQkxB3w/rz0txUQb8a9HN0BrwmsGzAMkOOPcXU+vAemqUvRu/FxWwRtlSlB+87p/SAuLyZSfcG7yhcbZ6ArkGGvDR/aGB9HeqaOWR1D1QkN6wNlnsSfSf7WSRoSpzFwTGMfIjxFK9q4hnOEHsxRRyWXBUvJshaQR6cKttI5kobuajJAYbIh6cCfZwgkA4ZQJPEQxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(136003)(396003)(366004)(451199021)(5660300002)(6666004)(316002)(66946007)(66476007)(66556008)(31696002)(36756003)(82960400001)(8676002)(8936002)(41300700001)(38100700002)(6486002)(86362001)(55236004)(53546011)(2906002)(2616005)(4744005)(6512007)(6506007)(186003)(31686004)(478600001)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1laWkIxdmQ2WEVYYzV1SlhRZjRsQzVxdTFoc3ZXaW5UYUNYMWRSV1oyWmNj?=
 =?utf-8?B?dytNcXZFdDlLeGEvOGtJYmsvTDFKaDEyY1NMTGJDQ0M2NFBLcWgrYktTSVNY?=
 =?utf-8?B?VUE4UVdWaUhMZE0wcnJXNjR6dVEzR0VpSXYwOGhVUE1CaHRTK1pWVEY5SnVM?=
 =?utf-8?B?RjRwY1NqZE1rUlN4Z0hUbTlyMFNXRXJtTGtQcVFMM21BVysrbVFmeU1lQWFF?=
 =?utf-8?B?ampTeXZVbi9DdzIrb1ZGbGRWSDNEdjUvQVRKS1J2ZGVWV3pZeEk0aWVLOXJ6?=
 =?utf-8?B?SWRETWU3eURDWXV6K2hNVnVwcjZLSllRbjN2NmkxVzU3SkhlUmh5UkV4MnVo?=
 =?utf-8?B?bzRYNXhiMC9aWVN0TFBxT3htUGxDRHlBd0pMZmRsMGxFK2VzUU5oclVjclRh?=
 =?utf-8?B?RGhWQThMZWd0MjY3ZmxncDlxeXU3djYxT2FaNmNLQUxwQXRybU5VTFIwN1kz?=
 =?utf-8?B?YTdTeVQ0akNSZTVlMnhPZG9ER09wTTdTRTdsUklZTkZuVlkzSzkvQlJLWlRy?=
 =?utf-8?B?ZGFobm1NOWNiZ3cwYlVVbmFSeVdiaGlqZjJLUzBxc2NkcjE2RkgrSHJNODgv?=
 =?utf-8?B?RmdMdUNhYTZ3clNWTnBwV1duYld3M1dFMU44TDNpcnE5eXNpcHBMMTVDUnlw?=
 =?utf-8?B?MFEvTHlmSWpTOUNSeFkrWEVPY05nYUY3WUNPUWxGUEZ1R0YyaG5nS3ZCUyty?=
 =?utf-8?B?VU05UWRDYlhOdzh5eVN4dSt1YzNySkpuMDdGUDNFQkhJL2VnTjJaMmVqSU9T?=
 =?utf-8?B?U2tYU2tWNFpNMFJMeWh2RTZkYVlaS2RFRHpZY1RHK3BtZXBFUC9XdmFBeGE5?=
 =?utf-8?B?dDEwcndNVWRrdGRIaDBiaG9xY1gyYzdNZVJMM3RHWlR3djUyU21lc2VhUVcw?=
 =?utf-8?B?TDhMemxXcVcvQlRXL1ZncnJhVWN3cTAwaTBFdVpTUGw2SDJ5Z3o4ZmJHRkhQ?=
 =?utf-8?B?bHFvejBWVGNHcFI1NE93cm1Nb0dnak8xKytBME9ackJjQzhuNWExeHUxRHpm?=
 =?utf-8?B?NVZnd2FESkF2QXlCVng1Z1JBa3BnYWM4M3plTVJ1UUwrSGlnazhsaTh4NU5S?=
 =?utf-8?B?NHpCRVIxbWQ2SHY5cVBBVE0wRTQ5dThiR3MzaTZyOUx6dENBcW9vTlB2OGNK?=
 =?utf-8?B?QStxWmZITFdOY0NJellSVTNXczVoM2hWeDJLa2h5UElEdTM5UUlibzdpYkxt?=
 =?utf-8?B?a2txd0w0N1FZU0svWUp4emYwL0xYSVVwL2RPRG1QK2ZyY3haMlhFckY2TXEx?=
 =?utf-8?B?WWpnSkJTajcyMnpZN3V1U2RJYVB0ZWwzQ0NIaWV3Qy9udEx2czNxelBQeERk?=
 =?utf-8?B?dktyeE03Q1hVMlljdmZudkg5c0UxM3ByNm1nd3IzRGp3cXFlb0VZLzdIWjNH?=
 =?utf-8?B?OXEvTkpkT1VnbDMxbGJuT0JCa24zcmgzTndwQlJvRWRnU0dEMjZldVNzYk1N?=
 =?utf-8?B?TjR3QkhsL2lzZW5ZS09xR1NmVDE3Q1FLUlBCYXBUTks1alUvWVdtbFlId29Z?=
 =?utf-8?B?ZThBLzVhWnBUZCtnYzA5dzFxcUZTWFFrNmFZSDJEQ0lxdWFRQVBneXhQS1Fr?=
 =?utf-8?B?cFIrTnFFaC9oTGlCaFNCWkZKWDUvL1NKYzhjdUZQRDBIRzR2cnl6RFo4RTlB?=
 =?utf-8?B?SDcyOVVwa2x4VkEzL3lxdTlIRTd6bWRvVVlqZWlsYlQ0akF3VnVLLzFnZ0p1?=
 =?utf-8?B?OEdtdG9QdlBJY2hCYVhhRnBqQU85MHB4SFpiaG9pd0NidzI2WHFYL2xQZWgx?=
 =?utf-8?B?dmdPT05Cc2R2M3k3bFBBcUtFZHdoNXpVTW00bUxCeVFyVUpGNUEvYnZZS1ow?=
 =?utf-8?B?TFdLSzcxWS82bzJWNjJEUVVqWVllRURFV1k4YWJ4SXJ6QmtxMnNGKzYybU1K?=
 =?utf-8?B?YUZBSDFKaVFHVUZWYTFUUjdha2RTZ3V2Smg5MzVxWTdXa2ZSMTE3SXdVMHpF?=
 =?utf-8?B?b0NNdjlSSWtDYTV6QjBJS3VOeTNIQXlkNmF1ZVovTithL3QzbFRJL0RIQk5H?=
 =?utf-8?B?QUhPRTUzZndpOVA1L09ET0YwZFZBbm4xbEpDOWtGWEEyTC9ReGNpRjF4c0Fz?=
 =?utf-8?B?TFhpbVhxQXJad243Mk9INnRNaG82WkpGVGUzeXZsZDdCU2F6bnVpMVNGWEJl?=
 =?utf-8?B?Wm9aN2tyRlNSRGdvS2xFRTFWM2NHb04zZFg1cVVJMW9xa1Y1QVRMbjdURXI2?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bdb991d-67e0-4ca3-ea51-08db604630be
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 13:11:18.8704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f3Q9f6AKFmWJkeojwIFX89+tY1Oeq3RtDUfRoEWm1btSUwEJTQMUuZ+VW32/t4mlqDJ0qYOHIbhFm1NLMkQDm1IVBAhVnn+xmuoYt0DADO0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/edid: make drm_edid_duplicate()
 safe to call with NULL parameter
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> It's a bit tedious to check for NULL before calling
> drm_edid_duplicate(). Make it handle NULL parameter graciously.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/drm_edid.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 941f3d53a701..e0dbd9140726 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -2881,6 +2881,9 @@ EXPORT_SYMBOL(drm_edid_read_switcheroo);
>    */
>   struct edid *drm_edid_duplicate(const struct edid *edid)
>   {
> +	if (!edid)
> +		return NULL;
> +
>   	return kmemdup(edid, edid_size(edid), GFP_KERNEL);
>   }
>   EXPORT_SYMBOL(drm_edid_duplicate);
