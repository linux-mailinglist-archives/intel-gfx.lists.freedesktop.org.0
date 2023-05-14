Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A38F701CEA
	for <lists+intel-gfx@lfdr.de>; Sun, 14 May 2023 12:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ECC910E0BB;
	Sun, 14 May 2023 10:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1550710E0BB
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 May 2023 10:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684061971; x=1715597971;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QhMawNID4XI2q4ce9kXYyQkxq/JPIFnw2fNfbiSVr1o=;
 b=JgAci8I1Xrrhs00Vjn9H4ICNDeS4k/sRAGe+LummU+31wLnckHs+sEbN
 cRERaNixVpCiOmbCm76QCMsHAYJsYBVFfKGTL4caqsTN2rMWKmxlgrJ5y
 DKoLc6lCrv263DIoThd/hPjsWyTtlk+VlkXfA2MICagzFD/+2RD4OPk2x
 Cc8I/x93nPsTqaUu42G9JeOeqnDW/4sG1u1/pWwSXZRbjcdJNWvYvkrfj
 /wbgqNs1IFWcQGV1i22K0jPpr9k58fQwAPguUIMWIZjKVWoT8z8RfaR3H
 gbF02qEJ9SQbzyswT5jbtMfglvoY+XMYsPYalpL6kSwAfa/RYDBIypkyg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="349873494"
X-IronPort-AV: E=Sophos;i="5.99,274,1677571200"; d="scan'208";a="349873494"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 03:59:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="812615074"
X-IronPort-AV: E=Sophos;i="5.99,274,1677571200"; d="scan'208";a="812615074"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 14 May 2023 03:59:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 03:59:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 03:59:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 14 May 2023 03:59:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 14 May 2023 03:59:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OAhjEw6pDt7Bcm0pCufN87p9blXfW55Y1Ay6T14FEMUCzC2kImHQFGqA2cR/GU9Piy2+PC4D3O6y7BUreZ5aPyR5kpuEs6FXDwLx3UVcmovQsH5YqT9KZA2PPU+s/upO1mH+Rog2xaVXkKBEIjKvNtw3rdh0nYHXHLLpONJGdHIST3JY4VS3SxKBUznyO9bMBpNpjO4GfnOoPor/vod7oSG9tPrXDEebrfgfeGFh1mUAYnfQnVy9NIqelDMgowQneQrRtmu5Wlv3NF4XBWoSnZLKCF0ceN3tCusgYF9IkCd9IyZ6K3xWx+D8IcXbn6k+O/1AQivZLtNDe5I/FnAf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reGefgwRQox5aczMJ0nLAO+3P6ddXPQGD0u47t5zFpo=;
 b=l94xiDvHptMRqttL1hdeuIIZrfYGRWSmGantBjWmqnTZo4T6jrKi/etNNAq+KvE/cyoj9rIdiCu9IAQaRtdav09IIgWpnDUA9H+FLs6CEIQrJvCzeLX4iX+3u5/tmgEnUgri5w5YT0bAD9oAIEg3aH1iST1SdCJFQpGv8eUskKf/j5XWs8O69JtV0qD6tUHEHNuyDNsx9Jv7X29SB9GYDqme42FausA8scpyjGo2FKX1XgjfHk0Zo8xAdw5/k7duJVuyrCh2BynzsignQnJHUGU0TxqoIs8X2M/TU43ajFDcskvOAqpiLhyuUqRZXTOlcwFaRSGJnfDhisOuOVlh2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 SJ2PR11MB7503.namprd11.prod.outlook.com (2603:10b6:a03:4c8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Sun, 14 May
 2023 10:59:26 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::f6a:a1de:83ec:b111]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::f6a:a1de:83ec:b111%6]) with mapi id 15.20.6387.029; Sun, 14 May 2023
 10:59:26 +0000
Message-ID: <b1b8fffa-06db-1087-a34b-2fa8c39830c4@intel.com>
Date: Sun, 14 May 2023 16:29:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::6) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|SJ2PR11MB7503:EE_
X-MS-Office365-Filtering-Correlation-Id: 43007500-f904-4041-98e2-08db546a4801
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DHzGjfF1mXjgLbcS7ZUvmABvn0/PCUOOIfQ7mOjiIt6oFVF1sI/5rpovfcHuh4gm9wtLUPexyW0BPUW5yUwu/568RLy//HTP+o/cMWQiFXIrCtwdXS1kzVp2tLxN4RLGTaUGgwubha0SyfkF67k3B85rSHBYWRn0f3LpUvMX8rHbkt/0KIpxodlNwbB3w93mTuGHnciO6FKFt9OE8E5gjWCybZVF2o72HAtdQsmpvxdmfStCefyGUsxt2TLZWQLtxGnte1KYScEhavqtOZfZ6+zAxG2UTdHNXKc+AQ8VQsB1N7TomRhcAIhjegIiulKvYFL8+Yt1RhJS5Ray8p/zA1oYjWNmRdKPwXc3S+ltNBNbI2TlFJG++cE3FdvfvYXXTQGbL6VxEutPqARhzDTxmT12B32S5qzDk+lbEWsVfbjmxH0h/DHeL342w5MFzpbw1VC6ook+ExsTWwE4dMbDE7NTzAJ7ZWzWF3/kIOGapztl4L6f1PMfFdBKWQrStuFtA/sP63gIYsutU01z7YNpcLBJt+E8LdW1Mfm1LYtdqTtnsBqzTlbjf4UnFLhTT6sLLqAaL/wknI17ZKkd2C5ipvIZfwJ/qBF/GE8TB1zPy1+MC8bkIv5QcWSdAkN5rv+827dYwWCf5oIVpq2D4aGefg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(376002)(346002)(366004)(451199021)(31686004)(6506007)(107886003)(38100700002)(6512007)(26005)(31696002)(66946007)(2906002)(86362001)(478600001)(66556008)(82960400001)(2616005)(5660300002)(8676002)(53546011)(4326008)(41300700001)(54906003)(8936002)(186003)(66476007)(6666004)(316002)(6486002)(36756003)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUp5QjArOW90OWdnaUhMeitzRGhMbUJSMHFQcEhSRGtOczFJTFNaL25kQTdH?=
 =?utf-8?B?WjRZWVV1UU45dVNWdnlNLzhoa1N0QkFxeGsxS0I3MDVPLzRBVXM4cHpYaGlF?=
 =?utf-8?B?aFJ0aFd6Q0dyUHY4clNnNytKTXAwTW9XTmt2MXhET0tRMUw1Y3JaSGxmK1dy?=
 =?utf-8?B?MDAxVGNBRWVCelU4WjNsVzRwMlRVMzVQeHVMUDVJdlVNWkFWUlkybGhuOTNW?=
 =?utf-8?B?bEtaVGt5V05mQnVBSmdNcU53S2gxemdPN1lzYlVBK1RGQVZvWjI3WTFUV2RI?=
 =?utf-8?B?VGVqYnpMeWtKVDZHbERYSW1NdERISEhMdDNtaGc0YkI4YzRtT1UzWUo5aWdl?=
 =?utf-8?B?c0M5cFc0elRrZE13ZlROUzc2TTJmOTBBQlpSNXZ6ajZQL0RGRituQXora1dU?=
 =?utf-8?B?WjFJZFRSbExhTHpVb2RyTzBWU1JsNjBwU050UlEyNk1qTFQyRU5XM0owSktT?=
 =?utf-8?B?RVdoN1ZTelg3TzQ1NDZHZDVGbXFBU0FjcHNqVldpbUNXWFB6TzRxdjFBUE9i?=
 =?utf-8?B?SW5NT3QyZHpCdURSdDNvQmNRK29zQXhyT2E3RGJiM0ZGQ3NNQ09oc2tGZTVW?=
 =?utf-8?B?QkVBMjFEenIwNXExYlYrb3FXb1JCOGpJb0hBTDRUa0c2RTdxL01CWUtRajN3?=
 =?utf-8?B?Rnc4end4cXRXQWRLOE5qc3lMYXlFT3UrcmdMUVRvYmQrMUFJbmlXdmkzR1li?=
 =?utf-8?B?Z3V5TjdqVjQ5a2N1K3VmTnJzc2NoOHMwVDdVZmQycUZaMDMya3AzSDRxSTRC?=
 =?utf-8?B?NDFneVd6Wi9NbGxqaWMrMW5XWm9NUjkvdS9JUHN1bWdLYTQxNzZYZUd2ZEVH?=
 =?utf-8?B?aEdTU0JrUnNwZm9odmdIeXFqOWVmY0NqTXVhT0RoRThuVjJGc1E5Z3AyMTNQ?=
 =?utf-8?B?K2pzajcrSFNWN1pkZ0dWUjRtUC92a3lEei96UEhjYkRIdEhHM2p4MDZ2WmZF?=
 =?utf-8?B?SEZxdmZxZkgzZWpkUzNPR1BlOU1rMHlQcFNNbEY4ZXV6cXVnT0VZNTMrMzAx?=
 =?utf-8?B?UTZyc1VvWHhQdzhYaGdweWlKWlJGTjJXUTVJNlhNM2h0K0lXZkI0dENMVC9h?=
 =?utf-8?B?T3BSQnJxdUVINjZHaThQNzVIWHlrZTgzQmJiTThCN0JkZXphcHNZNmpKVjJJ?=
 =?utf-8?B?TGwwUDFSTzhXazk4eCtCOUE1S3d3Z29YMDByZWY2dG9tNm9zK1FFcktCZUc2?=
 =?utf-8?B?and1Vnl6RkpvQVlXVVdGVXE3ai9XQ0R2cGZEb2gyS0RSWUlYQ0VCdk1mN2ZC?=
 =?utf-8?B?bm9lSHRpZmE4K1RFOVV4em05eDRraWhHUDR0Ujl0TTMwQ2xXeEF5V1VxZmJs?=
 =?utf-8?B?dldRUEIzL3ZBemYwZUx4UjdSd2w5Z0d3T2NUZ1lCTDdOWUR1OWFnelVTeFlr?=
 =?utf-8?B?Sk44bHdqSUJINzhYWEhoV0NVWWhPays3N2JXd3JqbW93bHBUU2JWVjBTVHZE?=
 =?utf-8?B?Q0prNGpWUm5wUXVmc2FWUm40NFpYL0VDYUlUWGt3a3JiUXJ2bEJBVkVBa3l6?=
 =?utf-8?B?bVhtRXJKUXB3d3poSnI5STBYamtvY0NiMDRkNUROMXpyL3Y0QW1KTlVRZ1ZI?=
 =?utf-8?B?L1VkRTBJbzU4dmk4d2VVZlZtTnRjdzBZZThEYVBLbkRqb1F6a2pLeXB0Z2hh?=
 =?utf-8?B?REswS2Q4OUxvQVd2ZjJhZGxGbjRjNG54bUMvbFZ5VGxBR21ma3R5MXFjYmsv?=
 =?utf-8?B?MkRhYUZYQTJjZEdSSWZQRXJESGRFdDhnM2JJVFNvNHAyKytldDBPWU1SOURm?=
 =?utf-8?B?TFBGRFFkK0U0YlY1UlJKbWZKVkNzSS9QSzVvYzNxbmQzcU5SN2pPajhrYXhT?=
 =?utf-8?B?YXRFMUJJcHQ3K3RTS3hxMUwwSlVyU0xGMlNKbC93U2M0M3pUbkVDQWFHK3Rj?=
 =?utf-8?B?LzcxdGpqUFRSSW1UYnZMcG9QOVRXUFkyVFViRC9IVmd3eGYwQVUyYjBHMTdj?=
 =?utf-8?B?U3hXYXV3bGFLWHB6WE1WYnV3dUNHbFdBSi9Cb0JxVEtZOU9nVzAzVjFhcWVD?=
 =?utf-8?B?VnV4dGZ1bmh5VmwvVi9nSFhvREhDYm1aUGxtYWhWc0JJVDVjOXp6ZU9TaFFl?=
 =?utf-8?B?QW5rTENwajhaNzJqTnZDUE0wMEEwUHplVXNzVEN0ang0ZkxaSW1TeWZmbG1t?=
 =?utf-8?B?Yi9UMDZkamRvTG4yVjMvUTJUWWxpZnBjYnJXcVo5Y1pFYWx5aFBoaWFuWStQ?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43007500-f904-4041-98e2-08db546a4801
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2023 10:59:25.7832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZDbSesoXjD5+o9ZCWZHWupmCaZVLEX/y6mblveES+gsDu/Qcehc913BLncs9+iqr+CatLe2WSWMiS8h059E/ogjPspgxNQLvwF5EZc+Rccg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Extend Wa_16014892111
 to MTL A-step
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/13/2023 7:44 AM, Radhakrishna Sripada wrote:
> The dg2 workaround which is used for performance tuning
> is needed for Meteorlake A-step.
>
> v2: Limit the WA for A-step
>
> Bspec: 68331
> Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 81a96c52a92b..9c1007c44298 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>   					      cs, GEN12_GFX_CCS_AUX_NV);
>   
>   	/* Wa_16014892111 */
> -	if (IS_DG2(ce->engine->i915))
> +	if (IS_DG2(ce->engine->i915) ||
> +	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0))
>   		cs = dg2_emit_draw_watermark_setting(cs);
>   

looks good to me.

Acked-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

>   	return cs;

-- 
Regards,
Haridhar Kalvala

