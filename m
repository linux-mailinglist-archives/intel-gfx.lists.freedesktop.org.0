Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF9642233A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 12:21:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803816E3CE;
	Tue,  5 Oct 2021 10:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6156E3CE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 10:21:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10127"; a="286582762"
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="286582762"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 03:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="458010994"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 05 Oct 2021 03:21:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 03:21:01 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 03:21:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 03:21:01 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 03:21:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TGmeveCvkDCKfK8HdlMVRcVw9HvQTdfH4/E+v9Pp3eJnD4GqM1uJ2KpmiadncLu5at3VGrEflMAuEuwuAq+Yz/PJVufBM38gJruYzfx2tvrPDTbnYFxUMwMY3G5cjn3atSxeU/BqHo9AZcRBWpkTgIZC9Yrcc8VycvGvWrdF2BYEsG9KZKRnkza599U8gDFEg/lTqXfn1C9H6bwonYxi8uByeglFMh4McQ3e0JN55ZiH7pkvpSVg8gfwP7kxilT0PHUiNL1PSr0hNhRC+4xlVnmvez52oeeBa8FhQcPkl8uHUe7oAqlhVLkxRnl8hJqUsgUbOy3mgwkju/rOtMvjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f2qkUPRQ4sLONx3IQMSrdmrYAcv1kyF39j6foZYNbp0=;
 b=lG3/FKbhybT9i2CQEswQ1lRNA5WMwEQYsc95rhL3HNMbOG5qiEACkexsAizhcaxT0gTnDrke3QH12tPmR10ilhVzOdUKeN98ktCQffbwonb8BCbuIfyZjAdrVoZa4RGjna/x0VmJhLSnS7UdgOiIl2iRHu8a70Bb2qCVpoEHAY92hA6LtDmtqY0eF14WJwxzwMHHB4RDOvk4dUkqNTF5zIQSci77LhTwy55ICn92WF1ardLouEa6lkJdRKHdr+2F/MaGctNidkUL0sUrv6jmBZUTJt/FIMfAjfG3Rz8mlbxP10H4oDk2wgL50pLvL15qANNzpaJ6/VIoN5DyiSqibw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2qkUPRQ4sLONx3IQMSrdmrYAcv1kyF39j6foZYNbp0=;
 b=ZC/ywLf4GGUjqSd3JqaeXRxSOat2PkvXxkLW26cgJrTAd5AceG6nMf0cd1oRT9HdY22gSNO5LxY42YXNCVAO3NEETwaEDWCHfKFrK5E7MhRzZY92ic9W/LrQ+IBKcPTdT4nLxsuTHzYtMMiEZdfDo/q4G3P2tiVYI17a06tqPmE=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM5PR11MB0041.namprd11.prod.outlook.com (2603:10b6:4:61::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.22; Tue, 5 Oct
 2021 10:20:58 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::389d:c727:c71d:d869%4]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 10:20:58 +0000
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <animesh.manna@intel.com>
References: <20211005071531.2274972-1-ankit.k.nautiyal@intel.com>
 <87lf3728zx.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <a3b08a93-e583-8f61-ee04-a76b8800a798@intel.com>
Date: Tue, 5 Oct 2021 15:50:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
In-Reply-To: <87lf3728zx.fsf@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-ClientProxiedBy: BM1PR01CA0116.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::32)
 To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
Received: from [192.168.0.113] (49.207.212.12) by
 BM1PR01CA0116.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Tue, 5 Oct 2021 10:20:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7268f672-61ea-443c-eddb-08d987e9d2b3
X-MS-TrafficTypeDiagnostic: DM5PR11MB0041:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB00414920CC3A332CE432569DCEAF9@DM5PR11MB0041.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: arRFkoTg4VZZ8zov8dG1kDZp63eOdQf35Lqhqm3+QiNUWebUyLWLrWkiPvrnXxpWVSrjShx0Szb95EOMeEMzLDx5ru9maYyJ3jwomgcBxy2X8PpS0GVvvjzXCdJ/syxUjN+on1wdB5jKBS7Q6AAYWFqYeWt9AfNnd3609m2IWsaorrnNf78EJaBq43IJlIwowMY3bU7W/I2Kinvr0sU1pE9UT97vFJAnmlfUxC6B65dDeK9SZSgAK/oXmWepLTqptAsaPAHL/kuj1+eFHJKq+UVzqxcsWZ8YlSZ3IiNyK8cXA9tmm8CjUlSkBQdeK2+vwEsrX+EYhkzu+cTc6a+O3yzc25wWtTWtFD7b9MH04uyROx/+/FStcWTYUmc2PZDDy9Wx3Fr4346Tpd74a+B5qkez+TdnFkksDa4jUCbtL+Tjuk74l9s8OLb1qANZEtWg/hYJQ8s+qIiiWw2lmmNvMeSShkarSpSV2NTgGBUee1yYAAvaenjRw8TL1QmPvWR1uVs/nBykEzg+z/3b7f+V3WymCtgqrOppm+2Qz2k7wE4s2OoM2GTyHsQJ1eSN4RPCRGaXVBryGYp34i0eW+EeFDOnOj/6qR7+QeHB54uteQjC+VcDV9BTCy8ajLYP0a4uzM3Dl/FimwX8oD1l/Uq9j5cAzVmnQLW4WslYm4CditCv0OGXkMkXAv2npSr8wpY+D/tl7+2k8Mdp7hAwX8Kk/XaYZpAABSi9oIGnu/rGWQg6APZ/rjpne4kX+QXOZhF5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(316002)(26005)(8936002)(4326008)(16576012)(86362001)(107886003)(31686004)(186003)(8676002)(83380400001)(66946007)(66556008)(66476007)(38100700002)(2906002)(1006002)(6666004)(508600001)(53546011)(956004)(6486002)(55236004)(36756003)(31696002)(2616005)(5660300002)(16453002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFcwcUI4NmdHT0xWR0Njd2tUMkk3Wll0ZWp3T3BBWnNOUmxvM2h3SVFZWHRo?=
 =?utf-8?B?c2JxMVB5R0lHVHVCditGczUyQ2xDTkU3OGxtRkZ0WXgzclpXWFRKM3p1RThX?=
 =?utf-8?B?QnpPRkJOZTJIaDI3aENlK2hMZ3dwT1hua1M0VThhTjY5Y2JnaVJKRjYrM056?=
 =?utf-8?B?MjM5Ym5WdXBVd1hBK1dJYVh1Zkl5WGlGbmZKTXhkd2VBMmFCQjF0bzk5Rmt5?=
 =?utf-8?B?Q2NQSThjK0MrTW5WWWtGNnFNcUE4clY5QXVNSWIyRXhvUTRIRk9ybjFId3lt?=
 =?utf-8?B?MFNMQ0E2czBYbjZXbnA4WmZESUYwRlQ5dWFhNkZNN1c3UXBQalBUUDZpd1VH?=
 =?utf-8?B?TnpKTEdmM09yQzlFRW8zTzg5NEdwV1VEYXBMQ2dxNFJQbFRtUm43dFJONWda?=
 =?utf-8?B?VmlaKzVFUXF2YTVwOXlBN1o2aHM1Q3lZNEpBOXNNbFFGNHFwTVU5Qk1kZ1pB?=
 =?utf-8?B?R2YwekErZXoxOXZqVXMvbG1aUjFrYTNCM1pEWkRoZ1NPN1pWOGZGenZwK1I0?=
 =?utf-8?B?Q0IxQUFqYWhMblZBME9jeFVvN2ZKSnlDamljU3ZjUHlmcjNTSGU4dlg3MjE4?=
 =?utf-8?B?NzJsZWk0bjNsKzNOblpNeVNDWEpoVjhuTGt5cHVmcStuWFFpaUFVemJvenMr?=
 =?utf-8?B?eXBnVkNnQSsvYXBVcys1c01zTkFmUkdNeWxTSHRmb0EwNXpubmI2V09McnRE?=
 =?utf-8?B?bm9DOVRDSVJPU1JIMU9VLy9qTkNyQ1pXNS9QMjJrRTlIeHpYb25vY29SVHNj?=
 =?utf-8?B?WjNzVkpPNExkWG1Qb0RYcXJidnhtSjFvQ1JWMUI4a0x3eWVrZC9mU3hHRVBp?=
 =?utf-8?B?RDVWT1VpbmdoS1pUNkkwV21KY1JpUUx5TzRKRXVMVWVBZUNDNUdHNFplWWcw?=
 =?utf-8?B?MHhDcXpwUDVwS3VOeXZwYUZ2aVFMRi9ibWxBNTAxaGVtOGE1bEhiM0hJVnZG?=
 =?utf-8?B?RTJ1WWtkTitHRk1QVU5nZ29VSXY4aVJuQXRXcSsvSHRMM2lrNWt0ZHozb3lX?=
 =?utf-8?B?R0FqRWwrZGJFaE1jaldCbVlwa2tlOWwzVk5mald0TDdzZFNRNjU2V20xVEd1?=
 =?utf-8?B?alBCM2x2OThscStoQkdlekpLL0dMMktkaXJnZkh1eHpMandOYlUvRnI4Z2h5?=
 =?utf-8?B?TlBYMCtMbmh3eHdPK0pKNkgwT2lvSytMOFltdG54OXMyWjNLTHlyVFBkYlNK?=
 =?utf-8?B?Z283a1RwaE5BbU5CTUpXdFBTeExkY1R0bVFncER4eDZOaXdxd2hVQjc5ZG5D?=
 =?utf-8?B?KzRuS004MndZWFVZV2g2RnFVdDJ1YlgyK0xld1VsY3A0bmRGQ3dBd1N3eERj?=
 =?utf-8?B?eXF2a2JkUGJMaCtlbW5IamxuK05zTm03anBQcE1PUFpVWnlqSWdqeExyWjJh?=
 =?utf-8?B?aHRGaFJ3NGZwL2VmSVN5WFNqVG9raFV4UnFtV0FjVXNUWHU2dTJOaXYvNjRT?=
 =?utf-8?B?RFRncHRmZ1RNTkQ3Q3BsanBXTG93K01DdEZIM2dyc1ptb2lsTE9BbURhS05w?=
 =?utf-8?B?SHlOSGQ4NkJzOXpFZm1vOUhYUDVyVWY1MTNPZFJ1Q1lMT2xWS1Q0bXl2RTU3?=
 =?utf-8?B?dVJoZHRqYW9RWFdaUEY3NGFNRVRwZ29CWEJuQkxXQ0pyRG8vOUlRYmI5S0l1?=
 =?utf-8?B?bTQrYjR4bWRCeU12Z0VHWlVSV1NFLy85aVc2RHlqdXBJZEVyTzlGY3hCQUtn?=
 =?utf-8?B?ZUQ5ZEVDSUJCNGpMcFMzdXNaNXRhQXdhUjBWTm5sdXRNcE9LbmIwNFdBNWhN?=
 =?utf-8?Q?4Hw0SIT09x69acP31ydfrRayzZ5+V/l6uk5Z2MS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7268f672-61ea-443c-eddb-08d987e9d2b3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2021 10:20:58.4988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3vCm6dpFnha15RHB34JLjkNYSAkusZ2UiIzJng8KoVxAuDUpa7pCLB38qShPrY1AOb4JjEtHu7YR6RhL4Xejn+l5NVprLMZ1eeJLhaB/zvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0041
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove check for low
 voltage sku for max dp source rate
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

On 10/5/2021 1:34 PM, Jani Nikula wrote:
> On Tue, 05 Oct 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> The low voltage sku check can be ignored as OEMs need to consider that
>> when designing the board and then put any limits in VBT.
> "can" or "must"?
>
> VBT has been notoriously buggy over the years, and we need to safeguard
> against that. Are there any cases where having these checks are wrong?

Hi Jani,

Bspec page for Combo PHY PLL frequencies now says "OEM must use VBT to 
specify a maximum that is tolerated by the board design" for the rates 
above 5.4G.

Earlier it was mentioned that rates > 5.4G were supported on SKUs with 
Higher I/O Voltage.

There was an instance where on an ADL-S board, where VBT was showing as 
HBR3 supporting for a combo phy port,  but we were reading the IO 
voltage as 0.85V in is_low_voltage_sku()

(Specifically, we were reading Register_PORT_COMP_DW3 bits 24-25 as 0) 
for a combo PHY port, and therefore we were limiting the BW to 5.4Gbps

Due to this, 8k@60 mode was getting pruned on the board for that combo 
phy port. On removing the low_voltage_sku( ) the mode was able to be set 
properly.

Incidentally, with Windows 8k@60 was also coming up on the same board on 
same port.

So I had checked with HW team and GOP/VBT team if driver should consider 
the low voltage sku check.  As per their response we 'can' ignore the 
check and rely on the VBT, as OEM should limit the rate as per board 
design. The Bspec was also updated to reflect the same.

So IMHO we need not limit the rate as per is_low_voltage_sku check, as 
this limiting of the rate through VBT is a must for the OEMs.

I should perhaps change the wording of the commit message to convey the 
same.


Thanks & Regards,

Ankit


>
> BR,
> Jani.
>
>> Same is now changed in Bspec (53720).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 32 +++----------------------
>>   1 file changed, 3 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 74a657ae131a..75c364c3c88e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -297,23 +297,13 @@ static int dg2_max_source_rate(struct intel_dp *intel_dp)
>>   	return intel_dp_is_edp(intel_dp) ? 810000 : 1350000;
>>   }
>>   
>> -static bool is_low_voltage_sku(struct drm_i915_private *i915, enum phy phy)
>> -{
>> -	u32 voltage;
>> -
>> -	voltage = intel_de_read(i915, ICL_PORT_COMP_DW3(phy)) & VOLTAGE_INFO_MASK;
>> -
>> -	return voltage == VOLTAGE_INFO_0_85V;
>> -}
>> -
>>   static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>>   	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>>   	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>>   	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>>   
>> -	if (intel_phy_is_combo(dev_priv, phy) &&
>> -	    (is_low_voltage_sku(dev_priv, phy) || !intel_dp_is_edp(intel_dp)))
>> +	if (intel_phy_is_combo(dev_priv, phy) && !intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -321,23 +311,7 @@ static int icl_max_source_rate(struct intel_dp *intel_dp)
>>   
>>   static int ehl_max_source_rate(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(dev_priv, dig_port->base.port);
>> -
>> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
>> -		return 540000;
>> -
>> -	return 810000;
>> -}
>> -
>> -static int dg1_max_source_rate(struct intel_dp *intel_dp)
>> -{
>> -	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>> -	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
>> -
>> -	if (intel_phy_is_combo(i915, phy) && is_low_voltage_sku(i915, phy))
>> +	if (intel_dp_is_edp(intel_dp))
>>   		return 540000;
>>   
>>   	return 810000;
>> @@ -380,7 +354,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>   			max_rate = dg2_max_source_rate(intel_dp);
>>   		else if (IS_ALDERLAKE_P(dev_priv) || IS_ALDERLAKE_S(dev_priv) ||
>>   			 IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>> -			max_rate = dg1_max_source_rate(intel_dp);
>> +			max_rate = 810000;
>>   		else if (IS_JSL_EHL(dev_priv))
>>   			max_rate = ehl_max_source_rate(intel_dp);
>>   		else
