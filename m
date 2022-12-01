Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FD263E997
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 07:05:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5059D10E0F9;
	Thu,  1 Dec 2022 06:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D410C10E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669874722; x=1701410722;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sfnX5+k3/vW/ojDM4e0kJaEIWbc83u79B0E6twfZSKM=;
 b=fPVmNa/zfQD7bf5s7Qusz5M1NRYnAp3fwECzZ8nHu6B9IxDEXzfSU+Mp
 m2BgX6ja8FN+PWs7qP/SkqiZkbCy8U+HxbqiBHMpXnbpXSf0Xa8bC8dyw
 +jc3dSOrLzHFEvJbFoij7b6XsgDWLjs7GfF+CQP2QJbg8a3LlBJSNdGgt
 KQsxR1PeYRRiIe0Q2RxfnPZsKGBbyJQczj3xW54hohSN2Adw5js4bG2lP
 4ykw6DnSZt+9dEStT3RbZzGXlCOHNfrqB2xjIMjBTqdfpQCM/ZHgvN4NE
 YqlJLwrAbKCbEaQrltzWXhXU7mwATnzjnEQqtUFcSw8QI+pjpe/afqzJx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295956392"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295956392"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 22:05:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="622172548"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="622172548"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 22:05:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 22:05:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 22:05:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 22:05:20 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 22:05:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l0WtjUs4joFvbH7eG4exVpbUtdxE96j0S6UnYNt/o/zFJbrKiaFZHp7NvhUa+wbYvjxdUZXyGmbYLp0YwUTXAUSNDPuv1LMxEd5qMAWMKExoDRgofQiPgRvm+KchY+et7JN1e4N+nXdxrHjamTRUXOEaMCu5iV8paMHxc1C4vk8j/g103pngknYlUeB9/iGnn9O8dycVdza5OsIMDDtT7og5Xs2vRCVyTWbi1VAbdsd6SGrdAvI8g+0CGtn10qg/0mloNgUBnQkz/M6DotIv6561HKQUAWChtKgwHhYv0op+q0Ys9Wgjs+Zwh7TYTOLAzL2rMAkMfR0ifWdLXTqB0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nXhBDPU0tEKyiXlujNJvCVjsr2sdO0RUvq1TzFbs2c=;
 b=DxGokV5NLpYmdCdalHz6I24xRzC5s5+j1JcRbBi1/um6jMEkJmiQtr4thMshXF7fPIGJ8iPnl0fqzVOXPvHtueiKr8LfptcE9SIqruQVqm0D4N1nqa/FDzPAZM8dU42cKQTQflsiojhVM1/IeeRzDpNnqz+PebtZk5FjAqcP7bstNwp1r1JMhK0AgoAIJzPL7rXZPR8Tps77y5JjsUgyiYe31exM8FEhM+IYLjquUwpJK4WHfQ0KPpcjQzjPkD5AEhhRhVZj3WThjq5vMITwmCRDG17FiMqwF8rQCZg+cr+bdH9wav1knzcPWr547vyeVbtLZviPK1SZvFJQ6Z4qUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5219.namprd11.prod.outlook.com (2603:10b6:610:e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 06:05:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 06:05:17 +0000
Message-ID: <a34b8b4f-5c52-13cb-4ef9-343e79775338@intel.com>
Date: Thu, 1 Dec 2022 11:35:06 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-8-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0192.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5219:EE_
X-MS-Office365-Filtering-Correlation-Id: 34d1eefd-c15f-4421-8191-08dad3620450
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: negzNk2v15aVOKxZ5xDEicyxvnBdoA2av3fafTL9OkWBqALc9cp/ieNi4WKG24SJZT2bNGJCMcv1mOnIZJ/nIrq/wogsKhW1cSxG3PAHp40u+8vHNC1rkHovxo56E0gPiuiu8a21ND8Ic5b9Jk9gEEht1IDMrXGF7NZyUQ+nOOusDZYEZLZnqlf0q7diFggwIs7LLspLK9WZK7a83kj5OnSsLGcObT4x7w8Z7YYiZHwhu1880LqC53FS+lT49ieeeIIuvs/O4n0zxGBr1+8fe39SsLhCAZxixUQwZZle+aOOaGTHBb72gqKiwyn48ZnNmtOtJw2ho++78Jdnkoj4SDm9wtqRCqdifzcyxnJfJ85/Bpd4jpFaEeduWEpDbvKFpTgSUn8gFR/LTrZBrUJ+pudN49hLRVhdkAPLeVlqFHATPslqDuxV0ikONTzM7DuY7nbz19tJaKIEtEIfe3CHFpQC7/B5GqLHM2btSd7qRPckdx7zAilcdd+uuuzDe6RKmqowlTdsUgJ/Lxt2XIL9E0ZAjpcvU/LeNou7JByY1jpqSN1VCbFzAGDWipApBzn3ngroX7ZCtSRpHLmQN1tivpVQSFzxl8OTeqhMvUQjDvWlG8JiBSf8C4KTbaiWdetq56eHf6mu11mdqIUvTpXmfENw4NT8tqdeHBQDttBmxpIkqG+t/de7okQ9a/NVy1/T6i6wd2gAKP2oMjmLTOpRt3yACKXT3/h8kgDo2iGdvoU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(366004)(396003)(346002)(451199015)(36756003)(8936002)(55236004)(53546011)(66946007)(2616005)(6666004)(478600001)(6486002)(316002)(66476007)(26005)(8676002)(31696002)(6506007)(86362001)(6512007)(31686004)(2906002)(5660300002)(66556008)(41300700001)(186003)(66574015)(82960400001)(83380400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHRFL2N6Rit2YytzZGpkM0FaVlVRaDdQbEtrQUxVamxXcEF5ZDNvaWJydnNY?=
 =?utf-8?B?T25OQWhWTkcxcHRaMVJNWkFHc0hwUzA0RHlZYzByU2xHQlc4MFlWR2dhOFNC?=
 =?utf-8?B?emsvSFB1Lyt3WUlRV29haUF5azQ1Wmo1MXJjeDVkMzl6dmk2ZHkrblZJeVZw?=
 =?utf-8?B?R05zUFhBRm1TMDk1RDN5K29obDVpeWhSSDdUT21kdUtRUW9xZlU2WkY2NzRh?=
 =?utf-8?B?eGowOUlUVmFnTTFSdTUzSnRqUVZ5TnE5TFRRUlgxTzRVRWpmWkdNUTFrci8y?=
 =?utf-8?B?dG5hTUNTRDRlUXBhb2hXazdsVGJLS1pEVERmS1gwZUhxWE9LV1pJVGhyLytT?=
 =?utf-8?B?TE8rWndraitBMExSaXhIRjNQVGhZN3JScWExOGVLT3NrNWEzbkhtdEs5Um8x?=
 =?utf-8?B?RzVXd3oyemQvbDg2VEp4UnlPUTJ6TUd3UnN1MFBGL3JoNHBjb0g5dVpESFJt?=
 =?utf-8?B?M3BGeStVb1p0N0J1eVRVckdMY0VNMVZNNWQxTXpjcEpqVkdhUitkQm41Qkg0?=
 =?utf-8?B?SytlVTc1QzBJV3plNHNDSlRKWHVRTTVsL3RuU0NhcXBxa3VDYkd4YjRib0ZQ?=
 =?utf-8?B?QS9mckZWNXpLUnkwcUdKRVdwbmluQklXSThPanFvZEhzNjVRRXRidG5PVjB2?=
 =?utf-8?B?L1NSaVVXZjI3VVVCcENKNHBTSGxoL0ZwQjVEV0xadDFZOUwvRkZaTVZJdzdI?=
 =?utf-8?B?bi80TzhUbkVCRC9jM252V0laM2wvb2w4Y0tDcWxmeUdwRDlOUmNXSkowT0xZ?=
 =?utf-8?B?ZkVnS0p2NW1hOXRVdGpheHVURnQ5bC8rcjJMb01pcHovcmMwOU5GNnBQb1h2?=
 =?utf-8?B?U0tBclpxaGdwREQweTBPMlRqQ0tZWFJUdFpWb1FSNW9jZFRiejcwd3o5UnM5?=
 =?utf-8?B?QWtPTFpMWkkrY05lMTh6SjdYOEp3RE9TelkwOFdNWjh6YVhaOXcraDRUYnR0?=
 =?utf-8?B?Y2Y3ck05eDRhTDZ0ZlNaQmNzZzRGNHRzVHo5aDFRMDVOQ0xhNkRoRnNkU1Np?=
 =?utf-8?B?bGJtT2JPQ05wY2F1N1REd2JOc2MvNG8wOUhTdGZpS0E3SEdsT1N2YmIzV2pl?=
 =?utf-8?B?bFZ0WWQrY3FGQ2dXcFZYSXVmbVJvR0ZWdmxoajZrbnN6Y2RkS3ZmQ3NoWHZS?=
 =?utf-8?B?ZWFtTUJwSDltWlpRaUJ0N2R4b3pXUXBiSUJsTVpWeTBpeEdkL2N2anRIaGNw?=
 =?utf-8?B?NlNxekJsbGZtS01oYU8yRkRpQjBzRW9UenM2US9WRlZ2bnhxSk1EY0h6cFo0?=
 =?utf-8?B?d3VxZFhObHYzZDZkaTBtY0lDQUdxT2hiekpXY2VvQUhlSlZ5blZYRmFUdGdX?=
 =?utf-8?B?d2tOalk5Y3BEdjl1dUQxWlY5eTZhZmZXTjZkbHo0dTJXRWFTakFpVkpNeDhh?=
 =?utf-8?B?OGxETnQrNmVDeWxzL0tjODVWdFVRazlhaVQwWWYvWmx4dkx1VUUxWEtwUjdw?=
 =?utf-8?B?YUlvbHhENld4cUt5TldvQ1VnUXo0TXBkbHM0UUZvRFFzTU03UHFOSUpqdTlK?=
 =?utf-8?B?YzR3bDlkRkNwa3ZJcWF5cHFNUWZvUGtTbHpMc1hhRHpHR1ZOL01hSXpnWnNp?=
 =?utf-8?B?NDVIOHNLOE01b1NnUFNFUk9rbEIzSXArL09DckxHd1VoTmlkcFhaemhMWi9M?=
 =?utf-8?B?NGM0dDVtOHpYNEtTVFlCTUVmZmNWWU9EbTZCbi9BbVVrME5RenZ5WmpLS1A5?=
 =?utf-8?B?ZFo0MXRoT1ZacnMySlZEcEFueUh6Ym9DdzJ4dkF4clBPS2hyVWtiYUk2OXdR?=
 =?utf-8?B?dG1IMDhGcTVJeVk2S3dNWHYrbGdLYy9HL1dUNWl5UzJPWElyc2lISkJoQ1Uz?=
 =?utf-8?B?Ti91dEV2NzlxYktKWDlLYjRCdytwT3U5Uk0wTnpENUI1MUFXa0lVMG5LdFRo?=
 =?utf-8?B?dStHMlR5dkczWndQZGVna3haa1VhRGdrWXlubXNxY2VkcExiMDFraEhRdDFF?=
 =?utf-8?B?Q3hYQVF5UDdLcEwxa29SQ3NsMUZSbjIvMW5wUDNuMTJXMUlUM1hqTHJpNERq?=
 =?utf-8?B?eTUyV2lEUldiY0VjS0J2WHEzdXZrRlArMDRxQTFEbUhrOVpVRnhvZlA4VUJO?=
 =?utf-8?B?VHBDdjFLNTZ3UTBWR2pSQUlqcThGTlFYNWFpMk1talhBbG54ZkNsN3FCVFQz?=
 =?utf-8?B?bFVkT1BnZW1oa280aU9QaGt1NjJqdUVldkExVTFCNXRyelZuQ0diU3AyQTMv?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34d1eefd-c15f-4421-8191-08dad3620450
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 06:05:17.3219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: siXWgk1/U+lxM6zi1/0dJQw7Mlotp069P1jCctXiKAPj+vamnqPXTr07NGfZ0adTC9870j0ATNrXNj+irUOIv4l94e1RAV7A7y3A8xHsCxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5219
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915: Move the DSB->mmio fallback
 into the LUT code
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

Makes sense to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The use of DSB has to be done differently on a case by case basis.
> So no way this kind of blind mmio fallback in the guts of the DSB
> code will work properly. Move it at least one level up into the
> LUT loading code. Not sure if this is the way we want do the
> DSB vs. mmio handling in the end, but at least it's a bit
> closer than what we had before.	
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 94 ++++++++++++++--------
>   drivers/gpu/drm/i915/display/intel_dsb.c   | 18 +----
>   2 files changed, 62 insertions(+), 50 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index bd7e781d9d07..5a4f794e1d08 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -836,6 +836,28 @@ static void i965_load_luts(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> +static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
> +			  i915_reg_t reg, u32 val)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (crtc_state->dsb)
> +		intel_dsb_reg_write(crtc_state, reg, val);
> +	else
> +		intel_de_write_fw(i915, reg, val);
> +}
> +
> +static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
> +				  i915_reg_t reg, u32 val)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (crtc_state->dsb)
> +		intel_dsb_indexed_reg_write(crtc_state, reg, val);
> +	else
> +		intel_de_write_fw(i915, reg, val);
> +}
> +
>   static void ilk_load_lut_8(struct intel_crtc *crtc,
>   			   const struct drm_property_blob *blob)
>   {
> @@ -958,9 +980,9 @@ static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
>   	enum pipe pipe = crtc->pipe;
>   
>   	/* Program the max register to clamp values > 1.0. */
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
> +	ilk_lut_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
> +	ilk_lut_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
> +	ilk_lut_write(crtc_state, PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);
>   }
>   
>   static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
> @@ -969,9 +991,9 @@ static void glk_load_lut_ext2_max(const struct intel_crtc_state *crtc_state)
>   	enum pipe pipe = crtc->pipe;
>   
>   	/* Program the max register to clamp values > 1.0. */
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
> +	ilk_lut_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
> +	ilk_lut_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
> +	ilk_lut_write(crtc_state, PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
>   }
>   
>   static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
> @@ -1118,9 +1140,9 @@ ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
>   	enum pipe pipe = crtc->pipe;
>   
>   	/* FIXME LUT entries are 16 bit only, so we can prog 0xFFFF max */
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red);
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green);
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue);
> +	ilk_lut_write(crtc_state, PREC_PAL_GC_MAX(pipe, 0), color->red);
> +	ilk_lut_write(crtc_state, PREC_PAL_GC_MAX(pipe, 1), color->green);
> +	ilk_lut_write(crtc_state, PREC_PAL_GC_MAX(pipe, 2), color->blue);
>   }
>   
>   static void
> @@ -1139,23 +1161,23 @@ icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
>   	 * 9 entries, corresponding to values 0, 1/(8 * 128 * 256),
>   	 * 2/(8 * 128 * 256) ... 8/(8 * 128 * 256).
>   	 */
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> -			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> -			    PAL_PREC_AUTO_INCREMENT |
> -			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
> +	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +		      PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
> +	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +		      PAL_PREC_AUTO_INCREMENT |
> +		      PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   
>   	for (i = 0; i < 9; i++) {
>   		const struct drm_color_lut *entry = &lut[i];
>   
> -		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
> -					    ilk_lut_12p4_ldw(entry));
> -		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
> -					    ilk_lut_12p4_udw(entry));
> +		ilk_lut_write_indexed(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
> +				      ilk_lut_12p4_ldw(entry));
> +		ilk_lut_write_indexed(crtc_state, PREC_PAL_MULTI_SEG_DATA(pipe),
> +				      ilk_lut_12p4_udw(entry));
>   	}
>   
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> -			    PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
> +	ilk_lut_write(crtc_state, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +		      PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   }
>   
>   static void
> @@ -1178,18 +1200,19 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   	 * PAL_PREC_INDEX[0] and PAL_PREC_INDEX[1] map to seg2[1],
>   	 * seg2[0] being unused by the hardware.
>   	 */
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
> -			    PAL_PREC_INDEX_VALUE(0));
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
> -			    PAL_PREC_AUTO_INCREMENT |
> -			    PAL_PREC_INDEX_VALUE(0));
> +	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
> +		      PAL_PREC_INDEX_VALUE(0));
> +	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
> +		      PAL_PREC_AUTO_INCREMENT |
> +		      PAL_PREC_INDEX_VALUE(0));
>   
>   	for (i = 1; i < 257; i++) {
>   		entry = &lut[i * 8];
> -		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
> -					    ilk_lut_12p4_ldw(entry));
> -		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
> -					    ilk_lut_12p4_udw(entry));
> +
> +		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
> +				      ilk_lut_12p4_ldw(entry));
> +		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
> +				      ilk_lut_12p4_udw(entry));
>   	}
>   
>   	/*
> @@ -1206,14 +1229,15 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   	 */
>   	for (i = 0; i < 256; i++) {
>   		entry = &lut[i * 8 * 128];
> -		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
> -					    ilk_lut_12p4_ldw(entry));
> -		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
> -					    ilk_lut_12p4_udw(entry));
> +
> +		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
> +				      ilk_lut_12p4_ldw(entry));
> +		ilk_lut_write_indexed(crtc_state, PREC_PAL_DATA(pipe),
> +				      ilk_lut_12p4_udw(entry));
>   	}
>   
> -	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
> -			    PAL_PREC_INDEX_VALUE(0));
> +	ilk_lut_write(crtc_state, PREC_PAL_INDEX(pipe),
> +		      PAL_PREC_INDEX_VALUE(0));
>   
>   	/* The last entry in the LUT is to be programmed in GCMAX */
>   	entry = &lut[256 * 8 * 128];
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 1e1c6107d51b..b4f0356c2463 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -129,14 +129,9 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
>   	struct intel_dsb *dsb = crtc_state->dsb;
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	u32 *buf;
> +	u32 *buf = dsb->cmd_buf;
>   	u32 reg_val;
>   
> -	if (!dsb) {
> -		intel_de_write_fw(dev_priv, reg, val);
> -		return;
> -	}
> -	buf = dsb->cmd_buf;
>   	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
>   		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
>   		return;
> @@ -205,16 +200,9 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct intel_dsb *dsb;
> -	u32 *buf;
> +	struct intel_dsb *dsb = crtc_state->dsb;
> +	u32 *buf = dsb->cmd_buf;
>   
> -	dsb = crtc_state->dsb;
> -	if (!dsb) {
> -		intel_de_write_fw(dev_priv, reg, val);
> -		return;
> -	}
> -
> -	buf = dsb->cmd_buf;
>   	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
>   		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
>   		return;
