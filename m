Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B768146FA1A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 06:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0311810E2A4;
	Fri, 10 Dec 2021 05:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2215E10E2A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 05:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639113627; x=1670649627;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Vm7s+l98vLYGMVBQUQ0eRSS4kSOqW91PK7ffJciiHLs=;
 b=gCqWrihuaC7sxtgVxuyDugt8DpStCI9ICIZ7poNtaPwm8hS+whcTqWGt
 erTonoGrplNVmXLjYT5BAxz0Vpmam7ZOLwpChOL1AmOaiCDwk/4pyYsb6
 opfV01Hvj3Owp1HT99lW7KKIYC1zJLDRav5wBEcCCRFzPt6MDisCFMlg4
 3BxC9os5nzo0KxmZxrgoOja9aHf042+Z01QkiLPMc1Tj/xr81D2I48GGv
 cUSS2CXv8ltARRgek5VRzZ7emSc2Jk3wbrV/OkUnm5YHN0EnMeWO4cbJ4
 rQQp+AN85O0nDviOgbkpanA7RRfVpjyhkw8kPOLGv71Xhip1KKblAdKPL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="218966064"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="218966064"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 21:20:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="463539223"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 09 Dec 2021 21:20:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 21:20:26 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 21:20:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 21:20:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 21:20:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZShAH3v15YVmvnCIJIw/09wYq6ljROlsOn1VMyMY/T/aG1MlBP5Do5I81JuHDcpa4kGq6PZMVPxSJvzAnaIdoaI9g7mWF5/HUfrpTG/zuKn4FE/TeXzD+AD0EsmJOimTCyw0EYDeVWDYr+XO+tqZibekEAlpJk9sGk2UrReo/zDpHtKBEEj+Yew7CNelAr9FCMRtVLG83TvupZh9CsvbgiXAGNNPhFcNm4uwC/AvPAjMPWIhXvTpQdn3f7t1vkA+6fkF0duKbXkJKgYrEzKi5UebKt2N1An24w1WkaBr42WvxNmKNoHpaXUm8lNguQNrZ3a+9EgHGoOZ2Z6T/yjTOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V6Qpx2awWrYn3aRehgy7vw8USUKUbSlnEk6xbPIN+Yw=;
 b=CGkDU/fTFfCzwWfoL8fcyyVxZOyod2WZkOtJG6GmF37CE7H/NI9UVueODKKcAoOUOs2CFCKOmIpxhTDdfYJU868z+TruBl2XcvbKGDOFbkmX94aTs9JEd0M7E5Pu7ltEEtqIa1yJpZRnHEZTbSzLoAH+IJnXPDSBb6rfjYxv6F/3m6JRW+tSt+rvzmDLN74n5jrVbdzU4NFuPaQ4WmNigm9NPB27ZiXClo6seK7T6CeBIqPFctTB8gMx1pVKfzcjbpdLMxv9Sn73h9FaRRrpihUPBmuMCpzp2Css5UYrTazDsLEoeH1Z0e/6CKC0cqYCMH79ZGWPH4GyYqO+9hggGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V6Qpx2awWrYn3aRehgy7vw8USUKUbSlnEk6xbPIN+Yw=;
 b=SkN/WPUPN28tIgiE3lj4wEX6yvsOL13Jcjv4fQ9rSZVzbHLrMH3ZKYw6+3XTTkvOXN7wSojKheKq0zt9Xjq5MH+cxlzDNTlsyJSSnOWFsUVoCl3ZEO9LihYPW6sfcCVi1bQQRlJI3WyZoNpHLHbwRUCXhyZncJwP1MgjX3Wf7l8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5357.namprd11.prod.outlook.com (2603:10b6:5:394::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Fri, 10 Dec
 2021 05:20:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::213a:153b:bac9:8197]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::213a:153b:bac9:8197%9]) with mapi id 15.20.4778.011; Fri, 10 Dec 2021
 05:20:19 +0000
Message-ID: <d54cb5c0-6a82-eb67-d984-cee4e1ded6c6@intel.com>
Date: Fri, 10 Dec 2021 10:50:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
 <20211015133921.4609-10-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20211015133921.4609-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN0PR01CA0003.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4f::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bbbe249d-cbf2-4e7d-5835-08d9bb9cc1db
X-MS-TrafficTypeDiagnostic: DM4PR11MB5357:EE_
X-Microsoft-Antispam-PRVS: <DM4PR11MB5357989533F03E8B46F4ECEACE719@DM4PR11MB5357.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zX0uGilMVo7qwZ4mfajcZJKh3Wcff1bjqNFNdTzeMNaEIHXYFlE/pfI7vu15TJqv8Vos8bJVooi5b+H55eCA4pFKT3y8oFtG+sXWlHeeTcMwKE0xCwu4TC7P1gsqBPkVmyw5hAt9uA3KOsA0EJ++BJOLnyP6UN+oaYJUQH9s0r6WwShvDpw78LNduowzZuE0d8psbk/StWFeMdZcA0ZKudTMY5UcZ5OAlOEAM5PtxcpokIBvkDtGkTFa/GT5bZIHhY7LoFlDQY98YmkfEtCPE5MhT9BoKcx/n+42UEKN0Cbh/XkIdLUADAaBRGRTe+h8bgeBZ8Ol/c1NwImaPi/dM61QCBYOy/mIOxACDpce03lZ2fGpmVRSu08bNYSLbBY5ToOnxRzDlf4mLGdaiYM2AdoSuC/X7DL83sBL1Rr7a4FlNdwrfIdqJ8Lke0fICnGi5gE53e4VApMfp/3xu8pHBbDcFVfrvBm+6JAvpw2ba5AEGdDjUg6VVCNF10cSkBMaTVs3ekXL8gI0/go1sMK/f3vPKO4MEBnDREjqDu0xSAKO+WrFyAy/hI8eLvuD2VIbWcUqWRnx2K58CQecoInJJ18GWftfQM8dD17BLluCKEgiktJ/iu9lxTW7OHOoskQmYgVQAFLVVZ40gAkElRrb3Q9fcSS2DBXOcxg7ZDVbyaTOx2+O57Brc0x8ubplVts8QzkbpoFq2BUq62Oxg45OpmslJR+/Pv3RvZqayqNMKS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(186003)(55236004)(6506007)(6512007)(66476007)(36756003)(66946007)(31686004)(66556008)(2616005)(6486002)(26005)(6666004)(53546011)(31696002)(82960400001)(38100700002)(8676002)(86362001)(8936002)(5660300002)(2906002)(316002)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEdiUWMyMkMzSC82WUQvRDh6Tmo2WE1iM1AvbFlpSmlrdXRid0w1MStqN0Iv?=
 =?utf-8?B?YU45aUh5Z1JuRjNxVzJoWWtsUWJ5dS8rU0g5RS9JZ05yUWZHWitaelErV2p1?=
 =?utf-8?B?MG0vVGFmemJKYWJOd3JRN1hGb1BHSEhZaklaMi9qYjIvUFZ5d1c1NndQd0Zp?=
 =?utf-8?B?VjhzNkpzdDZxSGcrTEtzUmI0Tk9VYklva1lKWVFObm9SRXI2anhhT2xvakc4?=
 =?utf-8?B?MnppS1lZSmduMyt3Uy9BMFI0aGFmZjVCSkNTaVZZNjhjcEkrNXZhRGVSSnFT?=
 =?utf-8?B?bUt4Y3ZyV3RyckViMzF2WC8rVzhYSW5HYW02dnJlMTF5YmQ0ekxEL0Q0V3F6?=
 =?utf-8?B?c2w5Y3NXaVpUTThMSFZxTndVL1hWL0EyMWVCc04zNGcwc0RkV0t2UklmQXVN?=
 =?utf-8?B?TmJSUEVKdVZsdEJCWThLVGh5c0N4S3kxb1lRY1BiNDg1RC9sbiszdWJPSGNm?=
 =?utf-8?B?Q2RmekoxNGJrZWRuTVhhTDFReWQ0cFJoT1hCV0JlME52YytWcDd1ODA5SFJQ?=
 =?utf-8?B?cXVDZEsvakVaK294VkFreDlnMHo3bTRPbjlxNWxGb3JweHhCQmEzcURmUFNP?=
 =?utf-8?B?M2NwSzV1Z1U5QnVXeG41WmFhOVhYSUFpQWVqWTk0VXNJVG55Z21hSEk4eTVu?=
 =?utf-8?B?NVZhM1d3SXc4Z0ZzTm9zRUhQUGhBQlZDVkdQV3A0L3ZvS2pSd2hnTmFvcnNu?=
 =?utf-8?B?V0EzbG1EYTEvNUJ1NmJFSFoxWFJ0RUpsSDNsVTRSaHNBbFRCOGtqQ21BQ0p2?=
 =?utf-8?B?N0ovU1hUb1J3ck9CMzZ0aGtIdzQremdQN2grTmJBZmtiWXVUdXlKanIxc1hu?=
 =?utf-8?B?anU5d3c3VlpGdXkvbWVta3BaVkI1dGFOUmI5dk9aUGVIcHU0ZmVOZHRsUDRG?=
 =?utf-8?B?S0hmd09oQ0F0ZVlJVVYrWmJGOUxOOGRybUtMSGw0b1ZIUER2SjBGRTA5Mnc3?=
 =?utf-8?B?Y09lZDRzRk5EYit6cEFWSDhsbHpvSWpWYWtLclg2WmN5dTd4djlJNVc4Ri92?=
 =?utf-8?B?V1UrVWxYSmFDLzFtYjlUY0Nnek1ycWppNXBkcFNkeFdicEIwekV3bmVreWlt?=
 =?utf-8?B?R3NUMVl6cERyRHlGcUdOZllHdFRJbmxYM2FqWmJXdzNsWThCYUVkNTZpV0l3?=
 =?utf-8?B?MlNZS3BpSE1zcEF1VVBudmhEbENwR2IyeWhQdHhCRGhjTWVEY3dFZmFFeFY0?=
 =?utf-8?B?ejFrUzI0Z05tOWttUVVESUd3MVV2eW9EbWhYUStwbUtteVJtT2RuNVdkY2Ja?=
 =?utf-8?B?b2ZUNUlldC9zdzNVS0RKclZ0TUQ2dXNVVkNZQWRpOGpzekhiMkJ2Mi9YaFdM?=
 =?utf-8?B?WitTVmVwUVByaTU4bHpPSWIyLzhjZnc4R0UrTjJkTXhKZzNlM2l4L0UrVWVa?=
 =?utf-8?B?dW5TSE1rRE85QnhuYTVmK0tsNUVZajhqYnZ5d2ttQVA4eUY0bFdQT25OLzBK?=
 =?utf-8?B?Vk9qKzhvbWlKdFhiOUJLQWhlaGVGV3NCeEt4Y2Y3NjNQODFPeUZTMUVrb1dN?=
 =?utf-8?B?Ui9TRFBnYkFpejRXREJWRGFkc1ZJa2k4aDM0YUVEVzVNZnBkMitvMEFuajZ0?=
 =?utf-8?B?NjBqOC9WTUlJUUQ1YW56YWxVQVhId1h4dXQyN0tuUHRjTFFQTmpIcitIeERw?=
 =?utf-8?B?ekFkZCtIZ3pFdW5mclNpUjZhWnZ4ZDM4Z0ZCbXgxNWg3SFI3OTZSbU9JelBx?=
 =?utf-8?B?c1h0bVV6Tm9qTXcrbEEwWGhHT3dPaXNZVlNTcTZRVFJZaHZVYzFQMUJ4SmVp?=
 =?utf-8?B?K0E0anpIMTgyS0lzd2VrQWVCRGtkM0JGS0xWcWtFWkY2am5WcU5kRHNiU1RT?=
 =?utf-8?B?MUtjd0J0Rml3b3p5bjI2M3IzV1dZZkoxRkFid2VmU3A3VllObnpwMnlMaG1E?=
 =?utf-8?B?UjhzblN3R3ZtWkF3L2Zvamc5N2MyclVMcG5KQjB0N0lxdmowQWN5QStsUzU5?=
 =?utf-8?B?Q3hGN3czLzA4STdSU2JFVmFqRkFPbEVMLzYrZ2hqaU5VNmFCSkJHVGl1N0dN?=
 =?utf-8?B?YzNtbFRQUXJlYjZSMFRBSzFRTDRyYUNVU21jSTFKNSsxVDNPNU9qVjdOb0Np?=
 =?utf-8?B?ekJvN3ZleWtud2w4eHJwMjU3VHNDZmtrWXIrYUNDbjNhankwL3haWGp2Y2Ey?=
 =?utf-8?B?NUlXZlpvV2ZBL05qaXJNeTdoK3lxVm9BK08wN3BWckFsMjJwQ3l2RXZHd2tX?=
 =?utf-8?B?Ry9vcWNmSkFoTUdwbWRLN2dSTE9wbm1EbGE2Sll6OFhqU0I2T0lFOFhCa1lr?=
 =?utf-8?B?Y1FUYVdGV0tVamJwYjIzYUFyMlZRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbe249d-cbf2-4e7d-5835-08d9bb9cc1db
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 05:20:19.4880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CGCoyoNflFkmCN76ov025kSndHW9Le35IKTRyM7hhUipJeGsYY2UZVz7bQKWP1rk2e/aZDG0fvLV1JiXMKy5jIooxhTEchmiFYdx8RUVsJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5357
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/dp: Extract
 intel_dp_tmds_clock_valid()
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


On 10/15/2021 7:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We're currently duplicating the DFP min/max TMDS clock checks
> in .mode_valid() and .compute_config(). Extract a helper suitable
> for both use cases.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 59 +++++++++++--------------
>   1 file changed, 26 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 45e4bf54e1de..b3b8e74fac9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -781,6 +781,25 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
>   	return hdisplay == 4096 && !HAS_DDI(dev_priv);
>   }
>   
> +static enum drm_mode_status
> +intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
> +			  int clock, int bpc, bool ycbcr420_output)
> +{
> +	int tmds_clock;
> +
> +	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
> +
> +	if (intel_dp->dfp.min_tmds_clock &&
> +	    tmds_clock < intel_dp->dfp.min_tmds_clock)
> +		return MODE_CLOCK_LOW;
> +
> +	if (intel_dp->dfp.max_tmds_clock &&
> +	    tmds_clock > intel_dp->dfp.max_tmds_clock)
> +		return MODE_CLOCK_HIGH;
> +
> +	return MODE_OK;
> +}


This looks good to me, a common helper to check if the tmds clock 
calculated for the the bpc selected and 420 format is within the limits 
of the DFP tmds limitations.

There are however some HDMI2.1 protocol converters that support higher 
mode with Fixed Rate Link (where the TMDS clock lane is used as an 
additional lane with hdmi2.1 sinks)

In that case, we would need to skip the tmds check, as the TMDS clock 
will not be sufficient for modes that can be supported with FRL mode, 
and all those higher modes will get pruned.

These PCONs will have additional fields in DPCD caps for maximum FRL 
rate in Gbps (stored in dfp->max_frl_rate), which we can use to check if 
the mode rate would be supported, if FRL mode is used.

I was wondering if we add a similar check for this case or add another 
argument to this function "is_frl_mode" and have the bw check there.


Regards,

Ankit



> +
>   static enum drm_mode_status
>   intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   			       const struct drm_display_mode *mode,
> @@ -788,7 +807,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   {
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	const struct drm_display_info *info = &connector->base.display_info;
> -	int tmds_clock;
>   
>   	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
>   	if (intel_dp->dfp.pcon_max_frl_bw) {
> @@ -814,17 +832,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>   		return MODE_CLOCK_HIGH;
>   
>   	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
> -	tmds_clock = intel_hdmi_tmds_clock(target_clock, 8,
> -					   drm_mode_is_420_only(info, mode));
> -
> -	if (intel_dp->dfp.min_tmds_clock &&
> -	    tmds_clock < intel_dp->dfp.min_tmds_clock)
> -		return MODE_CLOCK_LOW;
> -	if (intel_dp->dfp.max_tmds_clock &&
> -	    tmds_clock > intel_dp->dfp.max_tmds_clock)
> -		return MODE_CLOCK_HIGH;
> -
> -	return MODE_OK;
> +	return intel_dp_tmds_clock_valid(intel_dp, target_clock, 8,
> +					 drm_mode_is_420_only(info, mode));
>   }
>   
>   static bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> @@ -1069,32 +1078,16 @@ static bool intel_dp_hdmi_ycbcr420(struct intel_dp *intel_dp,
>   		 intel_dp->dfp.ycbcr_444_to_420);
>   }
>   
> -static bool intel_dp_hdmi_tmds_clock_valid(struct intel_dp *intel_dp,
> -					   const struct intel_crtc_state *crtc_state, int bpc)
> -{
> -	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
> -	int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
> -					       intel_dp_hdmi_ycbcr420(intel_dp, crtc_state));
> -
> -	if (intel_dp->dfp.min_tmds_clock &&
> -	    tmds_clock < intel_dp->dfp.min_tmds_clock)
> -		return false;
> -
> -	if (intel_dp->dfp.max_tmds_clock &&
> -	    tmds_clock > intel_dp->dfp.max_tmds_clock)
> -		return false;
> -
> -	return true;
> -}
> -
>   static bool intel_dp_hdmi_bpc_possible(struct intel_dp *intel_dp,
>   				       const struct intel_crtc_state *crtc_state,
>   				       int bpc)
>   {
> +	bool ycbcr420_output = intel_dp_hdmi_ycbcr420(intel_dp, crtc_state);
> +	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
>   
> -	return intel_hdmi_bpc_possible(crtc_state, bpc, intel_dp->has_hdmi_sink,
> -				       intel_dp_hdmi_ycbcr420(intel_dp, crtc_state)) &&
> -		intel_dp_hdmi_tmds_clock_valid(intel_dp, crtc_state, bpc);
> +	return intel_hdmi_bpc_possible(crtc_state, bpc,
> +				       intel_dp->has_hdmi_sink, ycbcr420_output) &&
> +		intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output) == MODE_OK;
>   }
>   
>   static int intel_dp_max_bpp(struct intel_dp *intel_dp,
