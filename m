Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B42F0788EE0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 20:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9E610E15E;
	Fri, 25 Aug 2023 18:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA9710E15E
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 18:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692989058; x=1724525058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ByOX1hV0KFj3bsvq3leNmDNbKU7KybiAVhm8JqIajF8=;
 b=dwvgaQfJ5v0lvqtWrlffO2xjiJrCCHUO9PsC21BFjkUeyeHQUVpp82Kt
 sKt9UhxfP+LU6G9JMfh5f0PPWxF0s3KFgDGqUeHAtQwqPpWPPNAtqLXi6
 JMaaABo8sJ3C20bsDtYeatZP947fwH/GAqyL9SQoqtKOH1YsSKo1AFBDs
 Vnyy+8X9snq/5cDx6UK473qTEJpeQh7DJJ+uC6vSN/0331rT1dw5sjA9h
 MoCVjgQifHRZ2w75Zkc73V/OluTL66lI0Lx4hE7wH1Dtrv4tBs4wAO6ZG
 hKtBGMGw2ucU5Xb4yEB1SdQAS8uoWVz24Odh7YANTqVNiVmmo3eqMkb/K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="378559924"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="378559924"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 11:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="984197590"
X-IronPort-AV: E=Sophos;i="6.02,201,1688454000"; d="scan'208";a="984197590"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 25 Aug 2023 11:44:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 11:44:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 11:44:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 11:44:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 11:44:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3xRtpPlx2rYlaNfu9q8P/xKJs05n8T1yXQHcz9FnkbwseLMTVVzByQH9Q6Lul1g34WugmaX81qE+Jk+a2xN8nsY6HDIc7kYnKeUD9zUBHrXl+mOPaES4JJrswUOHndfA2GlI8boKjjZftnncBhc2nEDopy/bIVESlKbZbqESdA6hozshNDRfRMFjb48SBTi+z6tTxs0WDwJqNxxAqziYTFlP9SKCjJRi3Yai0G3yzFgCneiDPcCfyKk3T8eaU+i/Fdail1wbfU83Njo2dwG1oy9TLP39LEGo76Ny12b1fLRX8YGlCWD+Cz/GD//Od8VVw9kbfeKuDdw3WPrxKeWow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vdQgWuD39O6nxWhMyqMQtE0lVOixBpXTNKQ1QDFU81s=;
 b=P6zhneqqRHI0gXijIdkONK+6zY2d59Y9daenWELxwIHh5QU5wpLA47kre4Zp5d4M6Nqm3aNDYU/qv+fagLjC22/Ri2bStAIGOeD7XuKYPy452KmYgRMe8L81ZO1nE9kmGvkr2Zf3E3S5ef3YEvY9rwM8Vs/b2T9S0Ncoy1ULbTDqMl7J7p3PL5Kg6xpEwTHOjM18JxudWdmNPQHVm3ZLnGzWR64LNJqgpnB0/v0+Ng8/MBk8RJ6TM+H+bqGp4BCbsk9J5rRxAdlnNHMbUx8ZsikLsQ/eSE6aB5jUEA/fhrIpaz/neCWRnp3zfkjB+aUHASuuqXVniZwQm2jGrm6Iaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by BN9PR11MB5308.namprd11.prod.outlook.com (2603:10b6:408:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 18:44:11 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f%4]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 18:44:11 +0000
Message-ID: <bb5284ae-8f21-19c5-03af-3fd9da71049c@intel.com>
Date: Fri, 25 Aug 2023 11:44:09 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
References: <20230825162754.1949838-1-daniele.ceraolospurio@intel.com>
 <ZOji7FWtr0NflcPP@rdvivi-mobl4>
Content-Language: en-US
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <ZOji7FWtr0NflcPP@rdvivi-mobl4>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0132.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::17) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|BN9PR11MB5308:EE_
X-MS-Office365-Filtering-Correlation-Id: db2441ce-9377-4b46-645a-08dba59b4591
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ptxuaa2DXtu82hFNkEE7dhNWPOYZuHvWkdg6o3gUrfZjsLtiob/fSez6I0FoyF/kkptNZ2SsFznEmcJIUiOuXLV/LndxgQAC2r4nruDg+vjCov/fEa/+4ekJ9Y0vsVD8tB3YmvQ65Cus/T/OkDVhWrXbXItV99CCvizzlWld/A46hiCrpdgVyGbqEy5T5HdPHRheq24gETaPKkJlhJMo9bNGUWxsLsx2uI0HEyKJ/aOqHN/qvR0EYr5CnaoTjcStJlxjgNC0ZIXF8hJYf8E40uF15qZC2tXjDkE2f0qod6/UyI4OKfjixL7pH7O64RbPuvBzkClm7Wi+6PDpx3d012FGtd8a4E94YsgOkgeiOGdc/SX16XQQ0DwfM+Q9lQOYvObUXCEx2zLNRj1LE6vMFke1XkpFkegadZ4X1yUQdEeXLUmkTcWHkhrlrPW7wGNfBFG1djews79rE4yQ8zP9UHFHoMk/HjWxzLMigARml1YWZTUqkcWGtQLwSTkl2gzVsK/fOSHQOvqmTM2oIzFPRLeY2ZIVIdfUzuPWv7Rr8R2gMVLr5rwYZ0ZejOrPAhySzeMSRLniY7BoGdc5FP2D40PgCdCLMhRrfijbFrHer5qDTNUI3ZOoe3hu2EZULl0NQq9AtS0o7/+xwdv+6/rYhSdc5oHFILygRlZQSUvC8lI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(39860400002)(366004)(136003)(1800799009)(451199024)(186009)(83380400001)(6512007)(26005)(478600001)(2616005)(5660300002)(107886003)(31686004)(2906002)(966005)(8676002)(8936002)(4326008)(82960400001)(38100700002)(66556008)(66946007)(66476007)(86362001)(41300700001)(6916009)(31696002)(54906003)(6506007)(6486002)(36756003)(53546011)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3ZiUEJ5dkRmTCtlM0NHUk1LUk91Q25MVWZwQlFML282V2swakhhckExRjl0?=
 =?utf-8?B?RUVJVERZdkRaYnRuQ2hISXh4b3ZCanBpKzk3YXYrUVhNTW12cEJnRlNLcXh1?=
 =?utf-8?B?cXRpRkc5Z3c1OVk2QUlVUnVNZFgrdVBPQ3VuVWYyb2VIY2hiNGFBQkxHN3Ir?=
 =?utf-8?B?c2NZMGVaQ25nemFxUVJTVjRWQ3lvSmoydHNTSllLVmx1aUxyVVQvSzR4NnBl?=
 =?utf-8?B?VDE0NnpISjNvMmsrM3lCYWFGSUtBOHBURHczSkdiWmVQMy9UQjBiS2FQZHJB?=
 =?utf-8?B?c0pzYWVFcWNpakw3eFVja0lqYXVkeVpxTzNCWWZnTmpuRU90b0gxbnZkeU5L?=
 =?utf-8?B?aGVHaisyOUY3L3MyK2p1QXM3UW5kUktTdVRncDJZNHZidUhqaGN5M0txSFRz?=
 =?utf-8?B?QVE1MkxkSkJnYlR5Q2ZaTzNBZzZpNVFjWTJMcGlqa3pmYUhhMlRFa1lpYXJk?=
 =?utf-8?B?aEhITEhpUEpET212dTVROWlabzFlWkl6dXp0eVBMc3ZJMVg5UWV2aXRIclVS?=
 =?utf-8?B?c1k4RVlNbldNaWQrellnbGM1bm81T0NJWDZqbW50UEpLQWNFdFh1Y1ovMFRW?=
 =?utf-8?B?VU9waUw5bGl0T1F3RWo1QVNrdnE5dEI4aDdUT2VGeFBPcVFsR2ZiVjR1d2NJ?=
 =?utf-8?B?VEFuaFUvZ1lCc1gra2QrcDd5cXhpWFVvNkFmYzVJRGZ1Y2MreXZtYS9GZjJQ?=
 =?utf-8?B?NHNZT2M1L3dGaWRTU0xyT1NzcVE1OGdGcVdFYXF5Q3RJTW0xeksyOXlsdXZF?=
 =?utf-8?B?NG9DQUxoOTRhWXNGZXVWc1dxa1dsRFUzcmRQalY3c1JyWlJYcFJWa0ZncDla?=
 =?utf-8?B?aDlmaXZuL1FuN1l2dUtwVHZZbnpNbXhrNWRWRTF4VG9WcFFkWi8wNjhMbDkr?=
 =?utf-8?B?UVNJZjhWb1k4VklQT3RvejBFakE5SG1qMmRBTFZTV2VSWnIydXU3NTZDM3dp?=
 =?utf-8?B?WC8yTysxemUwakJ2a1RRZk9wbmo0OG4vdUJyMUVrTU1RWmtyVjNpWjAyUUIz?=
 =?utf-8?B?UmhoeTYzN01FamxmZFdETVR2M1BXQkxsak9iRGszdUQ2ZVV4ZDIxV3lST3cv?=
 =?utf-8?B?TzNZRkgwVUlsUDZyYmcwcUdmSTU3ZCtLbFBDZHZ5YmdySE5iaWxTVVhQV0ha?=
 =?utf-8?B?N0Z6NDVaR0V1U1M3VEFIUCtNd3VzcXRUV2JOSkdVQTc1SEhHY3JMVlVuZ3l6?=
 =?utf-8?B?SEhzemFnYkRXWE4yczdqbzVoT0RsT09DMlJZU0hmR29vbUQ5aU5MSXYzdWsx?=
 =?utf-8?B?RVhTNEhZeGdJWmpvMFRhOXRhRXppVGV2ZGdiNjdOeXpEMUtTb1Bxa0FUN1p1?=
 =?utf-8?B?d0h3K0RJaG9vakRTT2hxa2RJZWN5Y2hXSmQvaEI2MllvbER3M3JMSEd5VFAv?=
 =?utf-8?B?RUJIOWZ4UTlCc0NpcDE0bVRRNDZlQ3AzeS9XVWZOaXlYSGxGT1hBazNMRmlw?=
 =?utf-8?B?Mm9BN1llUG5EMlN0d3lMaDBDTHp3VkR4R1JUVVZXT2ZmVytXY2NFSnBiaGlF?=
 =?utf-8?B?UXZCVWt2NGg5UVVwZVNOUk5teVhMWmZZc1lGOEFnQ09PTnJNMnFHbERrcWNB?=
 =?utf-8?B?ZnBwbnEvRjNSQTZLN0tzUGxCNTREZ09oNmNYTWZkVy9zWEpmcmt4ZkVFck9t?=
 =?utf-8?B?ZnpPUW1INGIzUUIzR25uNmY0cDVNejNTYTF3MFJyL0pyNUxEQ0VLUklnM2ln?=
 =?utf-8?B?aGJIQ1lJL0t5RDJLOTlSZTltQjFveTA1OEMrVkZNRlBrM0kwcnZybDJvSHZ1?=
 =?utf-8?B?V2tvWE1TZUdHc3QxUWR0WDZaK01ac3F0TGZac1VQWE5SU1pRZ0xkYXdId1N4?=
 =?utf-8?B?R0MzVjZZUXVXYkZDZC9zR25QY2tPTzBBcHVCKzZhaTQxTDd5QmhnL3N6UkR4?=
 =?utf-8?B?NkhnVnhRQ2pjMkk2aGtSb0pTem9UbitvaFV5TjVEbDgvWUNGb3k5cThQWEFQ?=
 =?utf-8?B?eTBhVjJOZUFCaXB6dHVRWUR0K1RaanRJYzQvSFNNTTFZdWlrUHZ4VHlSMFNK?=
 =?utf-8?B?VEJLUkpnSXU2S2tvWVVvbUlpZVlpMi9EcmQreWloN3hQVE1jWlRYQTNrMVBB?=
 =?utf-8?B?bVQ2Q3VyTlBpTG5tV09iR2thWVFiZFZkNUhlU0hTWUlha2RWK0ZNNjFMQXNJ?=
 =?utf-8?B?V0p2bXo5dWhUNnhHZ0VWWFBLNzNQT1Q5Ty9tK29HdjA4QjlKVnpISVlNTWVF?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db2441ce-9377-4b46-645a-08dba59b4591
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 18:44:11.0133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6dSTjxyPDF+I1Hq9S7LMYdL9nXIQshlM2Jj0oSL1+SgBmnoox901i2oU4tQdWkyzaZio4Y8AC22nMcqqKH5TKPeqg0BKgjmt7Im3QbopMnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5308
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: define gsc fw
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/25/2023 10:20 AM, Rodrigo Vivi wrote:
> On Fri, Aug 25, 2023 at 09:27:53AM -0700, Daniele Ceraolo Spurio wrote:
>> Add FW definition and the matching override modparam.
>>
>> The GSC FW has both a release version, based on platform and a rolling
>> counter, and a compatibility version, which is the one tracking
>> interface changes. Since what we care about is the interface, we use
>> the compatibility version in the binary names.
>>
>> Same as with the GuC, a major version bump indicate a
>> backward-incompatible change, while a minor version bump indicates a
>> backward-compatible one, so we use only the former in the file name.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Reviewed-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>
>> This patch is already merged in topic/core-for-CI. It was merged there
>> because we didn't have a GSC FW ready to ship to linux-firmware, but we
>> still wanted to start testing what we had in CI. We finally have a FW
>> in flight towards linux-firmware [1], so we can transition this patch
>> to drm-intel-gt-next. The patch is unchanged since it was first sent
>> and reviewed [2], so I kept the r-b and I'm looking for an ack on the
>> move.
>> Note that since this patch is already applied, pre-merge CI won't
>> correctly run on it (which is not a problem given that the patch is
>> already included in all current runs).
>>
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8705
>> [1] https://lists.freedesktop.org/archives/intel-gfx/2023-August/333322.html
>> [2] https://patchwork.freedesktop.org/patch/544638/
> Thanks for all the info. I agree we are ready to make the move and have
> enough time until we get that in linux-firmware.git.
>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks!

>
> Btw, one last question:
> Will we already include this in the new
> https://gitlab.freedesktop.org/drm/firmware ?

I wasn't sure if the CI scripts would already work out of the new repo, 
so I went with the old flow for now. I'll try to follow up on the side 
to get the new repo ready and start pushing from there.

Daniele

>
>
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 32 ++++++++++++++++++------
>>   1 file changed, 24 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> index 9e833f499ac7..fc0d05d2df59 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>> @@ -131,6 +131,17 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>>   	fw_def(BROXTON,      0, huc_mmp(bxt,  2, 0, 0)) \
>>   	fw_def(SKYLAKE,      0, huc_mmp(skl,  2, 0, 0))
>>   
>> +/*
>> + * The GSC FW has multiple version (see intel_gsc_uc.h for details); since what
>> + * we care about is the interface, we use the compatibility version in the
>> + * binary names.
>> + * Same as with the GuC, a major version bump indicate a
>> + * backward-incompatible change, while a minor version bump indicates a
>> + * backward-compatible one, so we use only the former in the file name.
>> + */
>> +#define INTEL_GSC_FIRMWARE_DEFS(fw_def, gsc_def) \
>> +	fw_def(METEORLAKE,   0, gsc_def(mtl, 1, 0))
>> +
>>   /*
>>    * Set of macros for producing a list of filenames from the above table.
>>    */
>> @@ -166,6 +177,9 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>>   #define MAKE_HUC_FW_PATH_MMP(prefix_, major_, minor_, patch_) \
>>   	__MAKE_UC_FW_PATH_MMP(prefix_, "huc", major_, minor_, patch_)
>>   
>> +#define MAKE_GSC_FW_PATH(prefix_, major_, minor_) \
>> +	__MAKE_UC_FW_PATH_MAJOR(prefix_, "gsc", major_)
>> +
>>   /*
>>    * All blobs need to be declared via MODULE_FIRMWARE().
>>    * This first expansion of the table macros is solely to provide
>> @@ -176,6 +190,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
>>   
>>   INTEL_GUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GUC_FW_PATH_MAJOR, MAKE_GUC_FW_PATH_MMP)
>>   INTEL_HUC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_HUC_FW_PATH_BLANK, MAKE_HUC_FW_PATH_MMP, MAKE_HUC_FW_PATH_GSC)
>> +INTEL_GSC_FIRMWARE_DEFS(INTEL_UC_MODULE_FW, MAKE_GSC_FW_PATH)
>>   
>>   /*
>>    * The next expansion of the table macros (in __uc_fw_auto_select below) provides
>> @@ -225,6 +240,10 @@ struct __packed uc_fw_blob {
>>   #define HUC_FW_BLOB_GSC(prefix_) \
>>   	UC_FW_BLOB_NEW(0, 0, 0, true, MAKE_HUC_FW_PATH_GSC(prefix_))
>>   
>> +#define GSC_FW_BLOB(prefix_, major_, minor_) \
>> +	UC_FW_BLOB_NEW(major_, minor_, 0, true, \
>> +		       MAKE_GSC_FW_PATH(prefix_, major_, minor_))
>> +
>>   struct __packed uc_fw_platform_requirement {
>>   	enum intel_platform p;
>>   	u8 rev; /* first platform rev using this FW */
>> @@ -251,9 +270,14 @@ static const struct uc_fw_platform_requirement blobs_huc[] = {
>>   	INTEL_HUC_FIRMWARE_DEFS(MAKE_FW_LIST, HUC_FW_BLOB, HUC_FW_BLOB_MMP, HUC_FW_BLOB_GSC)
>>   };
>>   
>> +static const struct uc_fw_platform_requirement blobs_gsc[] = {
>> +	INTEL_GSC_FIRMWARE_DEFS(MAKE_FW_LIST, GSC_FW_BLOB)
>> +};
>> +
>>   static const struct fw_blobs_by_type blobs_all[INTEL_UC_FW_NUM_TYPES] = {
>>   	[INTEL_UC_FW_TYPE_GUC] = { blobs_guc, ARRAY_SIZE(blobs_guc) },
>>   	[INTEL_UC_FW_TYPE_HUC] = { blobs_huc, ARRAY_SIZE(blobs_huc) },
>> +	[INTEL_UC_FW_TYPE_GSC] = { blobs_gsc, ARRAY_SIZE(blobs_gsc) },
>>   };
>>   
>>   static void
>> @@ -266,14 +290,6 @@ __uc_fw_auto_select(struct drm_i915_private *i915, struct intel_uc_fw *uc_fw)
>>   	int i;
>>   	bool found;
>>   
>> -	/*
>> -	 * GSC FW support is still not fully in place, so we're not defining
>> -	 * the FW blob yet because we don't want the driver to attempt to load
>> -	 * it until we're ready for it.
>> -	 */
>> -	if (uc_fw->type == INTEL_UC_FW_TYPE_GSC)
>> -		return;
>> -
>>   	/*
>>   	 * The only difference between the ADL GuC FWs is the HWConfig support.
>>   	 * ADL-N does not support HWConfig, so we should use the same binary as
>> -- 
>> 2.41.0
>>

