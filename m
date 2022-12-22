Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAC6653B62
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 05:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5758510E010;
	Thu, 22 Dec 2022 04:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DBDE10E010
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 04:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671684149; x=1703220149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WGjDweD/88Kjc+KH5AP31VvGajhLW7W2V3tLbrmUvxw=;
 b=RpCxgseocLLgl1W794CNlrN+IenMsaWJvntn8eQSwU7UOR37g1cilJ3n
 3OQv5/zybrhVtHkGbbKsudaiR7G5nOX0xIZTCBzGe4z2HpMIau7cq/gyb
 AIAhJy8gaYvEhrTzTHJPK6LUBLPEEz7PlS1lqem62BjDJ9swv14pC8sRR
 5+OeDHns40uDEKvQd1JZLGcSeDctCu3rfRKL/XpbiTlAhhXWHEdzxmGzU
 NWoBDMtFao0MIM1dOh5aV5c6CeIPh++d3LcF0rUP6RmfjiQrXtuIpfT2z
 HYqC+Pc4sZ7BA0ObW+tdtRmpaRn0xcgiD1FlOQpDQbILRyvS/lStU6H+f g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="406281393"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="406281393"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 20:42:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="651644031"
X-IronPort-AV: E=Sophos;i="5.96,264,1665471600"; d="scan'208";a="651644031"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 21 Dec 2022 20:42:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 20:42:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 20:42:26 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 20:42:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWt7C0vP6hQeDiZ8BDGHNZbg8NabrSUakdZsCsMN4ZwwZQo8LyUPbOL+Gd7Tc674LVjcNgdz6s+pDPTNwgwT82jWzl2NIuhKV6/It6EA6LtVgjx8hJEPkFlia8C3k9FlOdENVAae0yyZsqqXnT4zPXwX+PmK4yTImQRGVMYcfvAadri+KTdkHvJTOppKLvPB65PNv6P+PgWXGLu0Nzqj9cG83/IQKAvVprm3bQRCx42T8rqVo0AZ4NpllTBSp4qITXZrBn6w8KUZolV4hw0VBuuzKjtirXCTLOUVOqZCO1gopyvPyR2Q89xvO3UF6yYSX8RbIOQn6lgqeEBERyVLLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F2swBuMgYVt5Jv1dGOhxMhFe3v0LTSDbP4bm+9MChfQ=;
 b=WDdoeF5Pd8KYfDoAAy8uKhuqVJrIQj8tYSVtJXIhS/zcsD2PnLEngo78mnfyj+UtGrdupzwNqu+/ldpN72Px5CE9w6l8CLociTtLYT/8qm6+ad84ZHc1PvUjgTNUfXlv/DV2r/FVf44evN0U1U/8uVrsxPffgNRYzkkCkAU6b9JOWB9SmEejd2vg5el60iPZeI8KCMl90moeuSjdv+dhQYHgVy00fFy8lofo08TX/1/j00j501huVrOoZZPwbHmJLBQpWewZKLIIqFLXiO7KKJl1IqXYFPh25Ol0k0/zeO7gBhY9t+4ZJH+IHl3HmP/DgrO+xdAsCjVaImq93uhMaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Thu, 22 Dec
 2022 04:42:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::6591:f625:d30c:c35e%6]) with mapi id 15.20.5924.016; Thu, 22 Dec 2022
 04:42:23 +0000
Message-ID: <135fe9f4-d56b-deb5-2642-2579a12e2328@intel.com>
Date: Thu, 22 Dec 2022 10:12:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20221201041019.533830-1-ankit.k.nautiyal@intel.com>
 <20221207145436.1510625-1-ankit.k.nautiyal@intel.com>
 <20221222000125.5uygh3t6m466ykbu@ldmartin-desk2.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221222000125.5uygh3t6m466ykbu@ldmartin-desk2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR02CA0053.apcprd02.prod.outlook.com
 (2603:1096:4:54::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: 43f05e17-bea3-4ac4-855f-08dae3d6eae1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +r1y2oZ0y8TpTzU7zm8kimlA8X5PoLY3oaSzdScjBLNVHpnede8NEfJIVKq0Fm6ovCDZgXdd4m+JTyAT23rmCMUB+/BVYrfNA9fW1Rv4iN2vmWHvaj7O+JkhK6yJp2zixJMUvWdjY1gl4K5OBYdlpbqJeG+XkOkVeHSHCLYnCl8rAGFNa4kPi8ZhRRuABHcOZlPdsZMaHV7ppq/W/vaPX5uZbkeVs0Q1eWX6tPAJXy9LCgGSR1Yuxs077bePXcgNucBkO6e5tXcCHuSaRW0C2PA1PjTD0YNfuYm50GKqFDeOBqFgfXylTJXW6igN5auY13WlFr2t24ERuSOtaud9scjm8na+BYsKR+LSV6TcBM9cuPhMkqFMhNuCyuWoCW7ZxNLVdGe6uJoOp+7I7aRTB0+0OHVI53Qj5sa6ku5rTQ1r4OAe6XJZr2inALT1Pc811nGwtN6OFcT10POMiX8uokjI6U7fW1sGkpiFdMHcDbaAC9gtvRU/ZK31YDIeVgL011Th0Xn05r0Ncd+CGb2Z1G1pV1Oi6t7hTZB7ajVeTxy8DpRbcemmygunEeWJi3H1P630oheldNZy+JGSUeGWORlT4gljjb6SAPtIzZWxBBjryDR/M6+ls71+7bVlH6/0RNyiXGgftqOmT0D45Y/2pojOsk/SXzpV+1bNOFhHhleaQaklI7YPQS0+2EixDgr1jfcntSuP/pcd+KTE2ssBIerNpHPQY2vu4Ls92YJ1uLA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(346002)(136003)(366004)(451199015)(8676002)(6862004)(31696002)(26005)(66946007)(2906002)(2616005)(41300700001)(186003)(66476007)(4326008)(478600001)(86362001)(55236004)(6636002)(316002)(82960400001)(37006003)(6666004)(6506007)(38100700002)(8936002)(5660300002)(83380400001)(6486002)(66556008)(53546011)(31686004)(6512007)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVQ1ckxPYVd6aFYzWGlQT0t6TzBOTVNtUkJUb3dqbWxuWnR3QjVVK1Y2UU5S?=
 =?utf-8?B?ZlczMEVyRUNKK2FraUg4aTQ2VTBOdmd0NERyeHVqYmlEY3FYYUhRUURHbXR2?=
 =?utf-8?B?UXptRm93dDAxbjFOR1VFaEQ0djJhZnV5L1MwSmJPTFJDZUpocDZ0QThWSWxk?=
 =?utf-8?B?QTIvU1M0SmxIb3UxYmFPN2Nxb2pVWmhjTTBvOWhuNVJBYWJZU1ByalcyL3E4?=
 =?utf-8?B?b1RZaEtCb21CdG1HMkl2ZGI2SHZqQTFiRDhSTWpBeGpLZlJJaGhXdFFWM0dL?=
 =?utf-8?B?UGRsWGdId2c1Mmg3U2oxYmg3YTMzeVlXbUhKelJMRFdTd2duSHQwVlp6V0Nr?=
 =?utf-8?B?RlhReW9wdHBnb1lGMDhzc2xnTUpaUlp3SWZ4WnprMENESXFScEJsckY3dW0x?=
 =?utf-8?B?L3lRRGd3VjZGQTFvdVhKeTVuTGxGZFl3MzZ0WjgzbnN3eTlhSy9zcjVuVWxp?=
 =?utf-8?B?MUhnTS9wT2haRkRlOVNIdXJpYkVDQWFPSHJpRVBJdHJYc0Z2YzBkQXVobXNu?=
 =?utf-8?B?V1daR1kvblVQVDAvaitOTzhNZW4rRVJudVNnOGw4alBwbWRyc3hNT2ZKbVlj?=
 =?utf-8?B?ZExYMW5ValMwcnlvMWlqWmU3TE95L1lFTDBCazFsVEJyd1FPdWxTMldRZWFa?=
 =?utf-8?B?VGlrWk1wSWVuZmdUcis0R2NFSTNkWVVwRm14Q3lJMTduVnhMbSt1S0NSQjZ2?=
 =?utf-8?B?ME5vUFdzY0hlYkRLRVJsK0g3VlFLUFR4U0JRcjFMTVo0eCs4R0NDcFFNZVYw?=
 =?utf-8?B?KzI0STVhM2w1RGhIclIxR1JRa1F0Rk4zSXNqL0FOR0NLTnpXcWJpdWE4MVIz?=
 =?utf-8?B?OGhDQmFvNlpsWDIvdUxzMlJaeXpkZmxaNXFmUUlKTnJDMnVLRFVOWmZhOGxF?=
 =?utf-8?B?WE9JeXM2YzMxdlhKOWhuZDlYRWVyVDhuL2hla2w2RjJVbnhQTVFqWUlhclRz?=
 =?utf-8?B?NFFqMmJlUGxDaTVPeVZkK1VuTkk4WUpENUJrOU1mNk50YzhHNEFpSC8wVkNV?=
 =?utf-8?B?UlFyN0VWVjJKM2lnQ1JFWldtVEtCWFp3KzVXby9RMTBvOGYzWHVWeTRYSDF5?=
 =?utf-8?B?NDNlQlN0WlZTSEhxOTJWNFZMZkdOSm9tSFpnTlN0VXgrcG5SNWJqMXlDQ2lv?=
 =?utf-8?B?RDRDeEZPYVdzQzdicFpYWnFpUjhQcTNLQ0UzOVB0a1o2UFRIckd5cmtQZkgv?=
 =?utf-8?B?WGhobmdKMDZVMkRhZ1Z5bWVvVW0vMGtPdC90c083WW1JOWFpbldmd2g4Tm9x?=
 =?utf-8?B?RVdHdDhYc1NtbnppSDBFcE9id1RxWjZ1c3NQamRiSlg5VlNxMk05UE5ZQ2Ew?=
 =?utf-8?B?dUk2Rk5mZ3VDeGlTa1NtV2N5aWhyTXhJZ0gyVXFDbXJzdUZtYVg1NUtMWkVZ?=
 =?utf-8?B?Y2JzNVo3VVo0ZkFtUzhZeDRqZnNqeXRlUE1PQU5Sd09PTUxMUTJia0EvOWto?=
 =?utf-8?B?WXBBR1I2aGI3aXlMcW1kOERGSThwZGVjblo0cldtWk5WU2RpeVN1NDJrd0Ur?=
 =?utf-8?B?a3E1aDlSUTFiSVpWLzZseG96K0NpQU1qaE9aL1l5cHYwdWJtN3lSSFRVZEh0?=
 =?utf-8?B?aHUvdHQ2anNtUUFpVnEzRUZkMnpOQThxRXY0S1E2ZXZPSjdZeU8vOXlTdmM1?=
 =?utf-8?B?U2ppOHNCV3FPTHdCYm5HNWNQK1V2OFRUS1UrOVo5OVpZQ1ZhRTI3QWdqdGJl?=
 =?utf-8?B?QWZ0cWVoY0VqZG9xZktBMmR4VGNrZFNJWTM1djB5dE1lVEtXWVdaTkJyRExh?=
 =?utf-8?B?K0RHMUJZRFdOYUoxZDY4d0E0K3VCZnpRRzdDRGVYY3VEVlVRcDg3aUxaendZ?=
 =?utf-8?B?SlJnTW8yL0ZkYnZ5ejV1RytwTzdueERpMWM2M0E5MkZLQStMYTM0UUthbFk1?=
 =?utf-8?B?dVh1bE1leEpVUUczU0RpTWdZNTZhMVdwNlpNNUwycE4xc2l3YnBkZEVLSDdV?=
 =?utf-8?B?YlI0bXEzUzdheUd5WEJ4WmxKczFjN1psWEowSVpnemZqdUhRUXpwT0Q1L2Fw?=
 =?utf-8?B?NFhscWlZdDErMkpPaHk3Z0ExaXZqL2ZYek5WeEZCMkY0MGY3bSsybTMwcElO?=
 =?utf-8?B?NVdSb1VseGtCNmNhZlFJeEMrQmNNZDJUN1F0c3lFcktNRU5pZEJVZmRyeUpu?=
 =?utf-8?B?dHdRWERIQmZIbC9kaHBDb0ViMG16YWMvUFJ5VjROVTM1WlVGQWZHQzJ3UnRV?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43f05e17-bea3-4ac4-855f-08dae3d6eae1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2022 04:42:23.2937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SBHLb3OAEzTdvR6BUQ25HZE2H2q7VaGV/IKEj+nmUB6u1Dxe6uMoY3w/lSZHiF1mDDbrE7aiTFqZAys8fOEQzVTFgewBJHH+WufHPXVLlic=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/ddi: Align timeout for
 DDI_BUF_CTL active with Bspec
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lucas,

Thanks for catching the issues. For ADL-P I will send a new patch to 
correct the timeout to 500usec.

Thanks & Regards,

Ankit

On 12/22/2022 5:31 AM, Lucas De Marchi wrote:
> On Wed, Dec 07, 2022 at 08:24:36PM +0530, Ankit Nautiyal wrote:
>> For Gen12+ wait for 1ms for Combo Phy and 3ms for TC Phy for
>
> description here doesn't match the code as DG2 is also >= 12.
> Maybe just mention that the values are following the updated ones in
> bspec?
>
>
>> DDI_BUF_CTL to be active for TC phy. (Bspec:49190)
>>
>> v2: Minor refactoring for better readability.
>>
>> v3: Rebased and retained the order of checking platforms. (Imre)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
>
>
>> ---
>> drivers/gpu/drm/i915/display/intel_ddi.c | 15 ++++++++++++++-
>> 1 file changed, 14 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c 
>> b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 5f9a2410fc4c..c40302486b0d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -185,6 +185,8 @@ void intel_wait_ddi_buf_idle(struct 
>> drm_i915_private *dev_priv,
>> static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
>>                       enum port port)
>> {
>> +    enum phy phy = intel_port_to_phy(dev_priv, port);
>> +    int timeout_us;
>>     int ret;
>>
>>     /* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
>> @@ -193,8 +195,19 @@ static void intel_wait_ddi_buf_active(struct 
>> drm_i915_private *dev_priv,
>>         return;
>>     }
>>
>> +    if (IS_DG2(dev_priv)) {
>> +        timeout_us = 1200;
>> +    } else if (DISPLAY_VER(dev_priv) >= 12) {
>> +        if (intel_phy_is_tc(dev_priv, phy))
>> +            timeout_us = 3000;
>> +        else
>> +            timeout_us = 1000;
>
> ADL-P should be 500 usec
>
> Lucas De Marchi
>
>> +    } else {
>> +        timeout_us = 500;
>> +    }
>> +
>>     ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
>> -              DDI_BUF_IS_IDLE), IS_DG2(dev_priv) ? 1200 : 500, 10, 10);
>> +              DDI_BUF_IS_IDLE), timeout_us, 10, 10);
>>
>>     if (ret)
>>         drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to 
>> get active\n",
>> -- 
>> 2.25.1
>>
