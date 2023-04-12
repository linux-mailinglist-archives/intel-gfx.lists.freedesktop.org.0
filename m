Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEFB6DF234
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 12:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C97510E76C;
	Wed, 12 Apr 2023 10:50:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D1D10E76C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 10:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681296601; x=1712832601;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BwAANwqhWFSIKtvm5yzR1md7nYAqrKtQnwtVAvMjwgs=;
 b=Hihf4Mbnhz96YOkTw6llThsdH1nguJtgWdf2YMbjefQi4Im+LGQyyw5o
 M+BEWpG771ZNiFAUcTPLK+v5ZCuUZAFfE0mAEstcQJ4SMpEBl/ET4FOXb
 EdpBFFC0IhNNFf0RX5R5L0U5fQZBaD5s4UpT/4fWORk+RjxsdJ/dC7htO
 bSMz96TWCx/ZWSkmie8/kTZZa39spVdhScaoIqGlFBjnrGrJneafnaPa2
 uh3g0uNsJ06o/yTjEDf7ySd2fKzziNFcLsIfexVDO0UkPV3kRjqOhLhwG
 SdsqKcZX6enI5IC4bgIbUvTmJBqwLa4VFip5u7ZRYqelwmK3VDuaVhAbM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="323485246"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="323485246"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 03:50:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="812936495"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="812936495"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 12 Apr 2023 03:50:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 12 Apr 2023 03:49:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 12 Apr 2023 03:49:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 12 Apr 2023 03:49:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gn75Dy9vrGOHkB0gyWJ2ePlHYW2KaFNPSOQTPvcd3ZlnZPrng9LsKwlhXRKPttbpCAo9pviZfkZlCcl/fEwwgAVDU0vadajgpk4qk3mii9WnwQlrP25lPmREbmiDwOKxGs7W6op9USJiZQgRlafTdIET2CqirI6gcSMu85BMd4AD7gJN83YqvfMxcIZsxTG3IUWxoQddu9xtcbRcBsFNhhDARe0fiM34yC8y+s5DR6MY0c1PHQ0EUo1LhwzIKuovQBY/h+L9m5AY2eufNeeiFSpYtNLxcfDKGL7HResXGWom+NZ97/gHL2wpBSbc64UCXaiqvYfqrFw7qFJPRY3pkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iKYEdZnjRFgu/hDtdnIZbwlzKkx/WMiYHD4e2g3nZDg=;
 b=L+oAUr3RhSRAnnr8Fa4dGbUWxik9JqTE7ra76sYnJKi4uCOegAUknYlieOwf5j21Yc1UVct6LWa2YqtA9OYO8za7lrdSeNBmx2su5L3Mve0kK7+kar1CzL2sKtqmnqAWtFT6Pp3OpGP/zl4MYSlgvGbPQ+pTWvqaIjZHnqNnEjuHizttSlYo1j4Vs5dK1eGKZsDP02jeOPiTYZVf6YV9zmp4fqPq09BDsSTn5MMpIb4T8kPxCHch30uCRbhqTK44qqbbNctTN4daq3uDvvWOzLbnUVHCfBk/5gmx/rDmYIKn+aXSmQ+kBCHWW0fDSJU/1Jz5UEPXdmu/QHNd/hAozQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 PH7PR11MB7988.namprd11.prod.outlook.com (2603:10b6:510:243::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Wed, 12 Apr
 2023 10:49:52 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::c08:9eef:bb27:e0d7]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::c08:9eef:bb27:e0d7%4]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 10:49:52 +0000
Message-ID: <66eb1519-756f-0bd6-372f-c2f11d1c9931@intel.com>
Date: Wed, 12 Apr 2023 16:19:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230412090911.811254-1-bhanuprakash.modem@intel.com>
 <20230412090911.811254-2-bhanuprakash.modem@intel.com>
 <87ttxlcv4k.fsf@intel.com>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
In-Reply-To: <87ttxlcv4k.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0239.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::18) To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_|PH7PR11MB7988:EE_
X-MS-Office365-Filtering-Correlation-Id: 374af8cc-7503-4cea-7115-08db3b43a4f4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Kz7UE1DpQWYs2CQ3hU8lV2Ie5E4K85meOLhA39E9MJZiNL1GYAcCGAQo26NrpM8KnLMA/fvL/xzDCfE6uxrEE1vjs7VLgbPUveIgibJcw6eEcep62FE4/PaBbA7DfTaLSH9nN99NyD3KIrBatcvMLIFGL0Tp+MaKc9jEwY5q+x6yymjyiXGJM+EMXbwsNx0lOEAagcH/JPs+IQhvPs1pyxjKjs+PJZuJqKbsQCydjFv149Fy3PkPHaPCRbK9YZEHcdnKBigEjIM6eNIGi+y472e2y/ggJvGKW0mbKyJttzoH0XZNmsbWGPkaD/XFC9pkis6BR+JCIsj6+pCnD3a7MyFuUdpyHaeJ5BAuY+HlDgUF2RPO/n4tq30QqyVYBUTarN3vnuay6K2wa957l6ZPTSBxmf9NWmKk6lza07k5ktKasDoL7r8tbRUjj80V6fGNUT8hFq1ABAiWs4y51IiBTsWyMsTdhJ9bTlqAx2jweDZ7m4QWaOo2eMtIsHLqAxy4iXHFUjTQgHUC9zkaH/QKZrdd7+HqqR2Gq4pE04uI04pH+o8IOH8/uwd0GG/jAQM4PPmxhJhmLs0oyjzGncPZvQvFsBU2yqW5P8gwnYHIOg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(366004)(39860400002)(396003)(451199021)(6666004)(8936002)(6486002)(966005)(5660300002)(86362001)(31696002)(66556008)(8676002)(66476007)(66946007)(478600001)(38100700002)(316002)(31686004)(82960400001)(2906002)(83380400001)(6506007)(6512007)(186003)(2616005)(41300700001)(36756003)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TStPVkJtdTg1ZUVQZWM0OTlLZnYzVi9JNEtmVGNWdStiQmNwUDRQTGpVKzdH?=
 =?utf-8?B?WFZXRVVEbk93enlVL1p0bnNQYmFEZGk2eVAwN2gvUTkvZ2R5dk5KZkl0VnND?=
 =?utf-8?B?NVpGeGxBWTJvN1p1S3ZDcGlJNnVqSS9CTklMQmdCeEVyQ2hrRnlrc0xucEJL?=
 =?utf-8?B?NTQvWHBHUG56UUFGRE9qWkpyUEpQT3JQOE40UG1rRDlhNlhMeVc2bTJ2bzdv?=
 =?utf-8?B?eWJ2cEM3Z3FzM0JnbzJhSDU3ekxML1orTVc4NnRwRzhOVjNSajAvek0vUWo0?=
 =?utf-8?B?UkFROVhUdnY1WVE4eUU4NU9leFdZRHNOTUZKYnB5STBWTzI3WkhydHZMdEtC?=
 =?utf-8?B?VTh3WHdkcnc3NWwxNmZsSUN0dE15VVk1a1lPQlN2VHkzNDFGMnd1YjBscDZo?=
 =?utf-8?B?ZkVrOUpnelNhTUdBSlJ4NlR2N0dIMUgwL3F4VHpMQWhiUWNtRmRXcHFKZmxO?=
 =?utf-8?B?VmxpTmZOWUd0NjcrL1NvZXdYZWkwdFdpbitLa1FCUzZ0YkQvTE1qakhIUG5n?=
 =?utf-8?B?L0tlRmo2OEhSRmlFZWhTVEE4blRnZDc4U3hhVHZ6WEpJK1RETnc1WW9kSU9W?=
 =?utf-8?B?YzVsU1ZCMXJCTEtibm43VTAwc1dOZWhZaW1KYTE1UDNJRk5EWGVTRTlWWElT?=
 =?utf-8?B?SzQyUE56UXQ3UkhSRlIvUGJhSndIWjAvV1UxbjlCT1AyUVlTVXBvdlBUZkRo?=
 =?utf-8?B?SmJpRFJ4S2Jxb2dObElIbWlwelYxOW9OSzZqVUF0OFpFN2J3ZFFjRHNzNXBU?=
 =?utf-8?B?aXhveFp3czVzaFVHb0V3elY3aXh2aTFYSXFweEpZeGNxQVp5WWFqSXVBVDIx?=
 =?utf-8?B?ZVp6c0hBak9zaVZ2Z3Y3bXFESnBJQnBOcTJtTWt0TEs0cTMxRC93bTVENHBr?=
 =?utf-8?B?c1NWR1M3RHBTekg4dEZCZ3M2eEZENnNoeWZqODUxZHFaNCtnODJBWTRsYVpO?=
 =?utf-8?B?OHp4bzhRTHp0aFV3Wi9uci9xSzRMT3VCQlJtMzZZdUdLNTJ6QUZmdWhUeE1h?=
 =?utf-8?B?SVlhbEV4MU1BYU5pc29keHNjaG1XWXhRa01RcEE4L2VRZjc0aVNUZ3VqWnJo?=
 =?utf-8?B?RVRmOVd1RmFEVEVTSmR6L0NCbUlOak1VNzAzSVIrZitmdm9wVENWWWlkY04r?=
 =?utf-8?B?bFFCbFZ4TzNSV3hZNFFZMUxaQm1yMGQ2VmZjWjFrNXYzc3FDMjZjK2lxSzFW?=
 =?utf-8?B?VkJSbUJEYkM1R0RRRERhMWxzR1NxcVF3R2FZMzV1SEE4VWFKaE5EemNoUTJx?=
 =?utf-8?B?Z0Y4d0oxSFZ4T1Q4Vzc4czdUeXhFMlB1NzdLYWFWS24rdXFGUGl2S3NNVVhn?=
 =?utf-8?B?Q0I4STZBZUdndFJoeGFFT2dCNnFNUHl4a2VUMjRLcURKbjFsVkhvdWdnTUFN?=
 =?utf-8?B?STVCc3dyOXdwVzBaMnNZbk41L3FCOHhqWE9CZFBia1ZVOU9BWEFKOGcwWHdz?=
 =?utf-8?B?MTJ0SHZuYkczVXZPVmRjODE0RE9UQkJJa2hyOGhDM2Z5T1BRbytMM1NhRGZG?=
 =?utf-8?B?QXkyclp2U3hWWnpTZ3dxNzVGYWRvMUdDbjZCcnBibkgxa0hjR0F2UkJVbnZO?=
 =?utf-8?B?NGo2VGxaT05taFNGSG91c1VhUUNaNDI2ZjE3ckduaXB4aTNQRElVbStyZk9R?=
 =?utf-8?B?Nm1zd3F5S2daSnM4Uzc0ZkxiV2RKWTdZcnoyVWtnU2lqbFYwVlV3VW01Y21K?=
 =?utf-8?B?NksvbjZlRURYRUpwdWVSUVBlSktuZkk3VndMTkpkcitnQ0hVdUZ4Q2Y5V2NS?=
 =?utf-8?B?QlZVa3RIWW5GRjF6d093Y0FhRlFOMTRld20xTk80Z3ROdHpiaW90N1VRekhv?=
 =?utf-8?B?Qk9pODgwVjZKc0UxUFJsQU9QSWxTSXJLUWd1N0lPak5YaE5Yd2lQR1FsWnlX?=
 =?utf-8?B?MnlTSjExUERkeE0zdmxwSWdMbmJEdlEzUXlsYnRYazBIWmw5S3FQdkQ5Z0ww?=
 =?utf-8?B?Z2o4OFpKV1g0ZFREMlphdjQvU3UvcTc2aDFmK3BWUHE5TFVzMVVCelM4Z0NC?=
 =?utf-8?B?Z0EvdFZtQTJlSGZzQTdFVUxQdTR6d1ZsWW1oZEUvcDV2Wk45RzhqZEljQXpr?=
 =?utf-8?B?dFZIWGRia2o1cTk1U0dBV0U1ek4zMEUwMEVvN0hrQnRHbVp0T2NFY20xb010?=
 =?utf-8?B?QVBFWUhVTUZNK0dRMTVCeHpkYURncXhQZUZxQ1gzNXJqSWxEQWpUWlRMVTF2?=
 =?utf-8?B?aVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 374af8cc-7503-4cea-7115-08db3b43a4f4
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2023 10:49:52.3361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zyu/LYcsrb5VEgcn0UkRixhXOEXxVBxqp966A2pj3XtNDuffWoLk/jsi5a1XoImvAEGFsy8uIQIWbCsZIFgY/NShFUN4jI+byJCDZ6gc3z0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7988
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/debugfs: New debugfs for
 display clock frequencies
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

Hi Jani,

Thanks for the review, I have floated a new rev [*] by addressing your 
comments.

[*]: https://patchwork.freedesktop.org/series/116372/

- Bhanu

On Wed-12-04-2023 02:52 pm, Jani Nikula wrote:
> On Wed, 12 Apr 2023, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
>> Instead of mixing display & non-display stuff together, move
>> display specific clock info to new debugfs. This patch will
>> move Current & Max cdclk and Max pixel clock frequency info
>> to the new debugfs file "i915_display_clock_info".
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_display_debugfs.c | 16 ++++++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c    |  4 ----
>>   2 files changed, 16 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 45113ae107ba..8e725d0c79d1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -800,6 +800,21 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
>>   	return 0;
>>   }
>>   
>> +static int i915_display_clock_info(struct seq_file *m, void *unused)
>> +{
>> +	struct drm_i915_private *i915 = node_to_i915(m->private);
>> +
>> +	drm_modeset_lock_all(&i915->drm);
>> +
>> +	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
>> +	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
>> +	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
>> +
>> +	drm_modeset_unlock_all(&i915->drm);
>> +
>> +	return 0;
>> +}
> 
> This is all cdclk related, so we should probably put these to
> intel_cdclk.c. See intel_dmc_debugfs_register() and how it's called, for
> reference.
> 
>> +
>>   static ssize_t i915_displayport_test_active_write(struct file *file,
>>   						  const char __user *ubuf,
>>   						  size_t len, loff_t *offp)
>> @@ -1065,6 +1080,7 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>>   	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>>   	{"i915_ddb_info", i915_ddb_info, 0},
>>   	{"i915_lpsp_status", i915_lpsp_status, 0},
>> +	{"i915_disply_clock_info", i915_display_clock_info, 0},
> 
> Maybe "i915_cdclk_info"? (Also, disply has a typo there.)
> 
>>   };
>>   
>>   static const struct {
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> index 80dbbef86b1d..8814ce238cc5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> @@ -393,10 +393,6 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>>   		drm_puts(p, "no P-state info available\n");
>>   	}
>>   
>> -	drm_printf(p, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
>> -	drm_printf(p, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
>> -	drm_printf(p, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
>> -
> 
> Maybe leave these in for now, doesn't hurt anyone, can be removed in a
> separate patch later.
> 
> BR,
> Jani.
> 
>>   	intel_runtime_pm_put(uncore->rpm, wakeref);
>>   }
> 
