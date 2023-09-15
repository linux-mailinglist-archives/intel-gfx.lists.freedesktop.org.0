Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8207C7A24B6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BE110E659;
	Fri, 15 Sep 2023 17:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1255110E659
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 17:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694798999; x=1726334999;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bucZWLzXaE7s3KyR3MXCMCLzyZwhPrfIxXFq97G4PI4=;
 b=BZVyVrTIXHhGo7TS5P0DfIV0dpIhacXUwrCrLv8v98nOgDwjiRGsamuu
 BjL4aK0PuXzcyqIuc1WeR1FK7R1PM752L9aNlUFn48Y3g5sfyK1khLH5R
 FX6opp3n6ISJM/HrDnrhtgpLdQLuBMfTaKPKCzGDghJ8GPxCwsnM8Hya9
 6Iw7ihdwDn01+Ew3V/Yw0EWg3fQLUDeXEA5eg1ZJVa+gHrFca1nUV7VF/
 292x2xMonGgl3GvA5bozUBsr8pAjDLdBjT5yMIhJ1450Wy8oFSQSRWVNX
 JyPlKpAz1GrmCGW9pOo9+81H8hgjHn/ZbwOYCnqetoLDaK+V3Z6VhuhzP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="410246437"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="410246437"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="694791471"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="694791471"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 10:29:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:29:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 10:29:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 10:29:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 10:29:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FjQqyDkyOPtmieOMg6vmxFJqOdDk+MVSgqclgxntyld40HN6Yukh517a8PGH7rxH2Dn8p/pW71UztOEku0IUfoGg+nkh2wtYyh/ISReEcKbPdD2WheEWSpDLegE2E8UX656Xm/klXJNHGo7ZqfE5OBcgNnNr0mUJ0LDm3QzjWnL2WaSiQrrrO4hXs/e/cUe40eDodCWEQ+1+2FTcf9ZH9rhEO+sm3KC9RAGXNXPq6OPbYS0NO/4upDmEDyZSE5U0KogCTR4dApn5rwA6mSXwucAoO8v0TNGxwMTUjgmE6ogWTmWAPqQcMt/RZK4VDCmPD2lvvJ1Uc7FihCyVjYQUxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/HPBi9c/hZBVl60ZBH/+TZD0ygqG3MObxNsPsPPFKo=;
 b=bAppN5t3FZrKDq2Dt4OlChMpIFG2DrtYdadu9PkjG9mGLLM2OgOvGqITYiHgpk197iLw5gkAA39RL7ORFn+QaSfJvMURAcbvV3oU+h03BKzYKNkpuo3yDiWi9zSqA5Fr+fSOMXBugxLhGZY0Rwerlf2o4GOV+Wg7JH6LXu3CL2qqkCBovQIjbsXmzZ7c0GYCU08+RfLIjUNppzVWiZrEtt+i8ipIYb5OythCOUV/QND/UhCwhG1S3DAHZI/Za/YVFPASUHeFO6t77QG3VAMvEDK2DFonQGrbXOaKuZdpapkqYV0PmH+XGbibz8t9HQd/5QeXWw6pC6wz3RE9Y+CGgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3398.namprd11.prod.outlook.com (2603:10b6:a03:19::19)
 by BL1PR11MB5543.namprd11.prod.outlook.com (2603:10b6:208:317::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.22; Fri, 15 Sep
 2023 17:29:55 +0000
Received: from BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359]) by BYAPR11MB3398.namprd11.prod.outlook.com
 ([fe80::110f:4bac:8cd9:c359%4]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 17:29:55 +0000
Message-ID: <437b5e86-90ef-99ff-eb7c-1ad14f513503@intel.com>
Date: Fri, 15 Sep 2023 10:29:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
From: "Balasubrawmanian, Vivaik" <vivaik.balasubrawmanian@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20230909223848.427849-1-alan.previn.teres.alexis@intel.com>
 <20230909223848.427849-4-alan.previn.teres.alexis@intel.com>
 <d5094217-2bf8-fa9f-6096-ee6d1da5e877@intel.com>
Content-Language: en-US
In-Reply-To: <d5094217-2bf8-fa9f-6096-ee6d1da5e877@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR20CA0003.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::16) To BYAPR11MB3398.namprd11.prod.outlook.com
 (2603:10b6:a03:19::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3398:EE_|BL1PR11MB5543:EE_
X-MS-Office365-Filtering-Correlation-Id: 916d72f3-7a65-4285-eb6e-08dbb6116043
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: drRpeJCq2bK5qrjcIw8I29neHhNqnDBRC4wNtNidEuc4X2XtxtaVl0EnpHukwwYhKqwrYEct8BCqp4RkL2ZAxafAsxwm3PTWtKM/x0PfImAh+BQe2aNNAfAIR8u6DvOV12uYWBAzGu1wzYESzdLpYeQJFVtpBlN826CcXugT9mFQrkwl0ZyUDrSEn3qJHHx61OTA5ALAQeVHt7PQwWrwHE2wdeeDZhdb5w+7hydutgZbh7YBp8/u1CcjDfOvUtbHZb39GlVHkqPd6HTjsbiZGIdHR6rWktKdR1w1qizWGIZAAvMaeRvIQBhpQD98xVCdIFtJFqZWdXshx02mMs0vpXq7q/48L4tBDdDwsdAaKZiLj9IRvFX+d/Dv0kYft8nsTdRIXJIW6UGJbjCZS59ELgP/fkBytvlvsK16ZoH+PNXBRcltWF3Sw9QAZtoIreqJBEp4OmlG3ydNpWjxtWEYmyts+wX0eW62VgFMCFUnNUS/NaH2P3Pu4QrR0TqvGEaZPDlu4PSIoRySrbCLrfKkHwJw8YYxSpfxOgGJsvSaeq3SvdBsnnjIt/EXKFkTa+L/6goUZntbfAhmFCz/jiJqgX+5ZeRvJ+PcykgHnJ38bp6KyuupQUvbNA/ipgH86a189Op0xznV45dJN5zJBFkB8A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3398.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(396003)(376002)(136003)(1800799009)(451199024)(186009)(6506007)(53546011)(6486002)(6512007)(478600001)(83380400001)(26005)(2616005)(2906002)(66946007)(66476007)(66556008)(316002)(6916009)(5660300002)(41300700001)(8676002)(8936002)(36756003)(86362001)(82960400001)(31696002)(38100700002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVZBbXZ0QWFuTmNtL0tHLzBjRHU5cXpIR1JseHEyQndEY2NCaTRtemhwdXg0?=
 =?utf-8?B?dld4KzQ5Vm5yQklFd0NwaFIyOUJrR1dRYStOT0QySzFFM1QvYnFlZ3VkUFM3?=
 =?utf-8?B?UGgwaVBPbEpZbEJsRzNsTS85UVY1YWFvS1ZyQnNlSlBrYm5nS2RSWVYrQXFz?=
 =?utf-8?B?c0liSWdLNFZraGFid2orbVBXbEVaRTFCVTduc0Q1MlFEUzY0QUNyWnR3OHg1?=
 =?utf-8?B?Z2psNlNUcVNKNU11UXgyV2VUcHNDQitPVWRsQ1F1ZjZZWjdBZk5Mb2N4L3ov?=
 =?utf-8?B?ejFnMzgxUWU3eHlLM2JmR3BSUk1ON3g1NGFqallQVkNMeWhhN01aeDB1dWRo?=
 =?utf-8?B?THpwQ3F2Y1h0WjVqZXBxeFFEM3k2WkI2djBMMzNGdjJ1ZFNWa0VlZGdUQ0xo?=
 =?utf-8?B?bE91dnF3eFd4anptbXd2dG00Y2I2eUdZQXppL2FEamI0ellJQXBYVTRjeHdP?=
 =?utf-8?B?S0VFUzBuYUVDUjZFdWpwTHMzSk42cVBMbUNpVU5DOUtkVGhRL0FJVnpneVIy?=
 =?utf-8?B?N0o3REZKaEpYN1VCZWcrMjVzVXZROFlTamlSZGNKaTZPMmNRT1IyWWJQTEF2?=
 =?utf-8?B?ZVZXVnk3TlVWT3ZwQ0FISUQ4Y3F6TEY4azVtKzRTQkNpMHJiMDF3U2hWL0hP?=
 =?utf-8?B?YTNIc21haFNiMkljNUs5eEZtak5FZlVEM1ZzSGRUcTcyUFNmTElGa2pBY0Vn?=
 =?utf-8?B?TEc1WDBwYVFlU1djenpFSUczZ1NvbmFKVDBncDlWQ2NhaXZGK201N3p0dzQw?=
 =?utf-8?B?Y2dFcWUxYTFObWQwRm1RSzh2a2luYjRIQ2JZV2VUb2J3QjI5KzBndlM4YkYy?=
 =?utf-8?B?dnZLaDJFdm1ITmVubFZoZnA2eUI3Zm4wNkdOcllVcEN6cnYwNWgrZUtWT01h?=
 =?utf-8?B?Q0ZRbzBrckVyZG1pbU84cVFZbjFBdnJIZWYvN3ZhTkhESGdUWDNKVWdIanNn?=
 =?utf-8?B?V2hyYVpwVDFHZVF0eENBRGxDK3VlUVI2SjNtekJybTgwaFdXYVJBRmpUYTRF?=
 =?utf-8?B?UURqWkhWN2J4T2NNd0xsVkN5eFhtOUVCOGtOZTBDNm50d0hKVHJmUnhya0FM?=
 =?utf-8?B?aGdEQkI1OEZPWE5DZlNnTkJtVDNYQjRINStzMUo0eTV0MTVlSEhMaVJrOU83?=
 =?utf-8?B?YmcwN2FvZ3RvSGRWU3NqL0lBSnV5K3pzNFgvTFZyMDVtN2RhQnZIcFA2VHZs?=
 =?utf-8?B?ejV2b1IvT1BTTjdhT1lJQmprSUJMMzNWdjlhU1M1TUFOUDdRcFBhelI4Qnlv?=
 =?utf-8?B?MVJhTmFsV3pmUkt2OVYvWnB0NWlId1A4TkQ4US9wUGtNUkwwdnh5ZEFLOFRk?=
 =?utf-8?B?OW93T0N4RFZjZHBQWXM2MnZJOWhLVVZaZ1pUSnVpUi8vSXhiY2tGbW9OeFJR?=
 =?utf-8?B?T2lKNGUzbjNiSThwbytQanBSUXVYVzRta3UrdlVTaE53aHZkT0hvMzhPblBB?=
 =?utf-8?B?ejk4RDVoc1Q2WFJPYmRwK3FFZFdFZVdmRFVHckE2WlhTVFVGK29vWWE0cFkz?=
 =?utf-8?B?amhCa3NXbEoxOTI4MGNLbXFzcVAvUFBYWnZNVU82RnRPNU9FaEhMSXJLK1pY?=
 =?utf-8?B?Y2hVYXBvc2RxRGRkWDY0Qk0wdUVsQ3N3VFdZWGl1czBBeXFpbFhmUWtpOEs0?=
 =?utf-8?B?NFRPcFdUcUpkVzhZeXAwdjhvcjVHV0kyOWlYaTJJYUdRSWtmTm9QYXdpQThq?=
 =?utf-8?B?Q3BCSWw2eXJvS0xEVTB5Z1oyZEphRG1mdTFvb3cySklpZDUyMVNVc0RVN1dj?=
 =?utf-8?B?MEtJeXVVVWIrak13T25vYlovT1BRMEFZclhpYlhWSjRETjJSLzNkS3Vqb3Jj?=
 =?utf-8?B?eUFoczVtRnZhTzZ2ZzdtaTBxL1gyZmN5djE1blFycVpzaHUzZTZQRlU5NmJS?=
 =?utf-8?B?QU5MRUFDZWJHRzhENzBJaDBLQTFPUWVVaXFEQkpzMFMvVVNXeWo5a3piK0Rh?=
 =?utf-8?B?S000RXpCS1hLZmt4M3VpMXdZbHdiZFJlRUNoWXNmVk8zMkpyWnZpRXc1WWRV?=
 =?utf-8?B?SmtsQ1pNdGhram5yQ3h5b0hDYnQrYWRlWDUvOC85ckV0ZmZPTXNPNHpLVEJp?=
 =?utf-8?B?ZDFXSUtUSEpOSkRFa1A3dVNONnF1TTZ2cGV1T1ZUTkJnUUpmenhSb3BtTm80?=
 =?utf-8?B?Nk1VYzExLzR5a0s2aXZMTlBhL05hL0lsRFVJekU2cDRYN3FzRVZ1ek9kTGpL?=
 =?utf-8?Q?JPlZqMt07WqzAOnDjTK1VYc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 916d72f3-7a65-4285-eb6e-08dbb6116043
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3398.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 17:29:54.9766 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UU2Mbtja2UiNZKJwqP0eVJ8A0PY/j2i27cLGDotAeUyelZTMXB6kyufhpLJfucNOcPTyPFTaeX+FCqSm8Kx7ivpYu4bnuGJr5C1ylL5PXi4E4oPkUapdo1zWxfAZSB/Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 3/3] drm/i915/lrc: User PXP contexts
 requires runalone bit in lrc
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

On 9/14/2023 3:51 PM, Balasubrawmanian, Vivaik wrote:
> On 9/9/2023 3:38 PM, Alan Previn wrote:
>> On Meteorlake onwards, HW specs require that all user contexts that
>> run on render or compute engines and require PXP must enforce
>> run-alone bit in lrc. Add this enforcement for protected contexts.
>>
>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_lrc.c | 23 +++++++++++++++++++++++
>>   1 file changed, 23 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c 
>> b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> index 967fe4d77a87..3df32177e49e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -845,6 +845,27 @@ lrc_setup_indirect_ctx(u32 *regs,
>>           lrc_ring_indirect_offset_default(engine) << 6;
>>   }
>>   +static bool ctx_needs_runalone(const struct intel_context *ce)
>> +{
>> +    struct i915_gem_context *gem_ctx;
>> +    bool ctx_is_protected = false;
>> +
>> +    /*
>> +     * On MTL and newer platforms, protected contexts require setting
>> +     * the LRC run-alone bit or else the encryption will not happen.
>> +     */
>> +    if (GRAPHICS_VER_FULL(ce->engine->i915) >= IP_VER(12, 70) &&
>> +        (ce->engine->class == COMPUTE_CLASS || ce->engine->class == 
>> RENDER_CLASS)) {
>> +        rcu_read_lock();
>> +        gem_ctx = rcu_dereference(ce->gem_context);
>> +        if (gem_ctx)
>> +            ctx_is_protected = gem_ctx->uses_protected_content;
>> +        rcu_read_unlock();
>> +    }
>> +
>> +    return ctx_is_protected;
>> +}
>> +
>>   static void init_common_regs(u32 * const regs,
>>                    const struct intel_context *ce,
>>                    const struct intel_engine_cs *engine,
>> @@ -860,6 +881,8 @@ static void init_common_regs(u32 * const regs,
>>       if (GRAPHICS_VER(engine->i915) < 11)
>>           ctl |= _MASKED_BIT_DISABLE(CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT |
>>                          CTX_CTRL_RS_CTX_ENABLE);
>> +    if (ctx_needs_runalone(ce))
>> +        ctl |= _MASKED_BIT_ENABLE(BIT(7));
>>       regs[CTX_CONTEXT_CONTROL] = ctl;
>>         regs[CTX_TIMESTAMP] = ce->stats.runtime.last;
>
> Can we please get the bit defined in intel_engine_regs.h with a define 
> instead of a number identification?
>
> Review completed conditional to the above fix.
>
> Reviewed-by: Balasubrawmanian, Vivaik 
> <vivaik.balasubrawmanian@intel.com> 
> <mailto:vivaik.balasubrawmanian@intel.com>
>

