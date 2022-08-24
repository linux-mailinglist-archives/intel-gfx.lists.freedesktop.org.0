Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 039DA59F760
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 12:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3F58A71F;
	Wed, 24 Aug 2022 10:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2E410E69F
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 10:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661336531; x=1692872531;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jc8dKBQwxXaf/wcYF7m1VAc53mxHKWZvDwtQ0tKgPIo=;
 b=n2K/IOm/VI9CWyWp6lP/zN6lESExGcF7PTVWfN2v2SUQVO5iEb3wxxGM
 MQOw16Pyd0lwa7G8A7zmH0noOMjey3lr01VPOLQjCK1fcSLL8iQxMMnGd
 YLkaad8z9g2+xgPz2cnyVl5iqBwS3Q/Qe5kJvMjfUBXw/FLQf97pZJvRI
 SlHAB6mfVwW89Oy9vqhhT2UzOiboT2uH7RvAQjxLa8MfOrr/h76Chn/ZG
 tjdU5j/wwDD3XYoXh/44+jnVpWMhAkZKyooYOB6a/BHhX7L3Ou8LnoZEJ
 0CP6wkBws83FolY6Y38m6XjCLP+lHUpmI0Y4sMOOcKhz+Skfh7pqftdVW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="294714352"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="294714352"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 03:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670444415"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 24 Aug 2022 03:22:09 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 24 Aug 2022 03:22:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 24 Aug 2022 03:22:09 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 24 Aug 2022 03:22:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKoUejFkwBG/baTmVHAIPFimkuh7aaCrnZUoZ5xtd2VyPWmRwvcXP7ci2yq3+q2MW2HA3kW8ts7xA8LK48g+xaRZbLtdsyx3qdYBDNT/2Wr+LiJr0sUAu+4ZWGWjX5QsOQxo80YrLSWfywCdHUn5Mcyo5Xj1LBxSrHq5x7l4yNM+wLkxBt0Eflu/9intfzVkVtCkLGyGZ+rnhirBbTPR/ZxCnIz3bhb0HUA+9Imi1/yMsJtIwOf+dSI7L7ZNgmjx0CcjMbpCCDV5w7BD1J/psAan3JzIlKKiI/ImHmECn93Bvk1dyFzG1e7e6Ju12vhRvhaYAa+T17+5dYBpEg1KkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oz83pUB6UmsUXEfR8Mq2Ep12tL02YeBwvNEmY/YHY7E=;
 b=koyt+iIYSeREIqATTwGqaiEQxIqpSLnN2gv9ZYNpdYba9xkVRtr342HRzVA70oTflr0qGvGRC7Rz+jd5cqK8Ckkv1uYno5fI5vrYUh54bZKIWtEYNpXfxGFaCCxCvSXlquReoaj4RMJK1CDdbalmc2/RJPoHFKB7BfGjCivjfxlbzKoyv9Jhd0oqzxBBOTdjyYPlvo2/tEmgQhtHodc/mTvg9TzvY8zRltC3mrKTswPZ48vSS7wXAQCU3a4o8Lc5SZRIX7jlaf+pRi8C3jjE0vt4RQRm4YOEcxtAyNpmfNNgqiai+oKJiIO4dMHWngnAiBzlUIpTqh+Wv0OjYujC5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN6PR11MB1412.namprd11.prod.outlook.com (2603:10b6:404:48::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Wed, 24 Aug
 2022 10:22:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5566.014; Wed, 24 Aug 2022
 10:22:06 +0000
Message-ID: <a5ca832d-c676-6d76-18e5-54714ddcf194@intel.com>
Date: Wed, 24 Aug 2022 15:51:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220822105426.3521960-1-ankit.k.nautiyal@intel.com>
 <20220822105426.3521960-4-ankit.k.nautiyal@intel.com>
 <87edx7kyqq.fsf@intel.com> <14c5533d-4100-0bf2-9024-38b595381e51@intel.com>
 <87fshmjavl.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87fshmjavl.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0208.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c1ab530-a88d-4bbf-521a-08da85ba7ed9
X-MS-TrafficTypeDiagnostic: BN6PR11MB1412:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sE5gZ9mvrIGws5EydseBEXcaENDE8yqDzKGVbbzFvy3bltgofYFroXmiReBEM/ln7qQF3w1jt7PmX7MXkieK+eyNPPdrmcDuBNWL0CmtvWEIjryrQuZsfRQ+8UvbO3+TMsoPdVMj7ECdat9XNGUSOUqtcisbA1qZubRKK1QG7wrHR34RfGqJJyITARpfktphVEVqDtiJ0aENrsjK7NeX/D52dZvbzbbk/8C0FhyU8Dn373TTnxz+4qlmogftbIviTHaQtBUQg01GPhpOc1reAgm0lnpzDkYAiZQG+nWtdif554Ta2skEFnjLDg6k1l7OQIJIVE7uV6d5VLaVyOjwej4SoZOGfATt/frWKS7g4YOlfBB8byDkB1qq1/xGYPBgHgF5gTDrbuWhRRu6sFwqJhtP0oxfVzV+b965cmjZFG8fyzTtIV10kePDL6d3KnzrpFXK6dVzrngf1WJVMVrUJBzSqjdLCQIMEjkdSiBBAWrm3hcm9m9LZgPuLEOqr6Lse8zn+5DXwKqD6YYLAccqzCD6Oy5xf5Dl5hA6sXSuYJtPrf2/+LuSoptuEELbRO8QyfuJYYVb2QFM/XtlwFQb88J2bA/CkTEG/afu0YZ8p/YCCDd47Y2EFRgVwz3weMFQ0470iQDnJwgeMl1H8DQDxxtflYecj+P6bykYlzeD4J89iRVW44RF0OKKcguRq1lIvFa5ECYKbPeja22ze+xif1Wrk++HlP50TyLYPdR3R4/x7oRIcqvp7kKHKFzljmPYBGxli9XWZmtEgLHRF8qvW8DuttCH15812vMC0juupS8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(376002)(136003)(396003)(366004)(53546011)(31696002)(26005)(6512007)(55236004)(6506007)(86362001)(2616005)(478600001)(6486002)(6666004)(41300700001)(38100700002)(82960400001)(83380400001)(186003)(2906002)(316002)(31686004)(36756003)(5660300002)(66946007)(66556008)(30864003)(8676002)(66476007)(4326008)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VENOaExrbXdIMlVqNXNoRzRqSGJkcmJIb1c5YWk2K0Q0NUFjMCt2Zmo3ZkxC?=
 =?utf-8?B?QVhqR2YybHRjQVk5Z1ZDeWJGYTNDQ3VwT1dRa05KR0JxOHJodGszUVRBTXJy?=
 =?utf-8?B?V0hhakhVdGlZbWJzMVNqZ0hrcEdQOUpTUWphbDdWMGJuYitQN2pveElJUTcy?=
 =?utf-8?B?blpjWXZFeTNvcHlLU3VTVFo2UmNtRVA4YllPbTJjdFJ6c1pVdVJTZUl4VUN2?=
 =?utf-8?B?K0l2cDBUa3k2dkduTTlwSVlHUDBiUVRiNHlJT2ZDRTl5Z05BK0ZGekdLZG5B?=
 =?utf-8?B?YlVXdXlIMzRsQlFFNkxLdU5KbTJPcXp5UnpEWVI3dTFsT3hsNEl5d3RIVUor?=
 =?utf-8?B?eUwxdlllR0sweEFwaWNBcGF4aEZDb1Z0MFhrNlZWamtMUngvUyt1OFZEYU9D?=
 =?utf-8?B?cUMyK1BWTU5rM3FCR0ppbG5rRVhzQlRVMW9Wb0FFVkZRemNvamwzaFYvVjh6?=
 =?utf-8?B?ZlFIbXQ5N3FWOUNtbG1KckF3RjMzekcvdTlHK1JGRk9OQlJSSjhLK21aTmQx?=
 =?utf-8?B?YlhpWGZaYnNUSmRYeVRieGR2ck9CRUw2TzdCZW5lN1R0VDVjb1k1L05PZ2U1?=
 =?utf-8?B?UFhvbE1MMkp5TWp2ZVp0TGNOc1M4WVRzSHNlSURpb2c1VkRkcmJmcHRoRXZW?=
 =?utf-8?B?TitHMG1XVnQvVXJybXdwbzV3WHgvZ0JCQkgvMFJWK09haVVpajZsRzJWV1JL?=
 =?utf-8?B?REttTEtMTGdONE9DWjU5OGlCZmpxdXVITDFBUEk5eFUxanhENjJjc0VjYXFk?=
 =?utf-8?B?Z2ZwUVlYZ2FIakVWanI5cjIzdGRXUDN3RG9RNUhSSWpXUm9FZ0cxOG02amZR?=
 =?utf-8?B?N0RXUmJnTWRRQkJuNnh3ZVZoRXhRT3JFaFlDZ0RzdkZzK3BhbE1rVCtPUGFp?=
 =?utf-8?B?ODlwMlc2SVRjTkR6L0VVTnlVdXlLVmlrUnBMRWtRc0QvNkFNaVJ3cDhqcUJ1?=
 =?utf-8?B?OEtiS21uSWNaY0t1MkhVVzN2Z0luL3pTcmpmMFdCRG1DbmsyZWpSZGd3bmtv?=
 =?utf-8?B?MGR3aTJtMGdvTmt0YStWWEhTVWs4dnkvQlZsa2d0bVBsQkpEV0I4QnZzZXRL?=
 =?utf-8?B?RXdQVVN5MVFmUlQvdzRZci9mVlg3c21UcnZ6bXpMaEdaSlpvd0pRYnZIblNX?=
 =?utf-8?B?WVI5ZVR4Q1dYaUNuVDFJYU1NY2NOWmlrMzZTV1IzVU9vQ0FJS09yVUFGRGt4?=
 =?utf-8?B?aDlmODQrMm9LS2hMb1dZYkZPUGpiclFJWThzTTF6RVZDRXY3clJDa3JyVjFC?=
 =?utf-8?B?YXFOVCs3ckNLL3g0TmY3Q3NScmk0MDhLdERmM0dXcDQ5emVMS01sbDRJdHl1?=
 =?utf-8?B?QW1mb2labThIcGg4Ly9qZERUZElKZW1VZHFmU3NDc0R2REJIK1owM08vVk5Q?=
 =?utf-8?B?ZnowYzZlZkpTam9WenE5MXhQdkhjczBqVmNyVzJvZnJjMG90bmVtSThkNGk2?=
 =?utf-8?B?Vm5uakk3ME1CNTlocHNVbFlpSWYrUk5NUmdQRTVhZWwyUTJQMDQrbXNvOG0z?=
 =?utf-8?B?ek11VmtnQ0FhYUtoT3dxdHZUQXNxbnN5VlhaV1hGaVdYR2xTVkVJVXpQMjhP?=
 =?utf-8?B?b1lzMmQrbkRnRDNGUVFJRy9IL3JTL2JkTXNaNFVDK0g5a2I0bFhHeVF6SEZI?=
 =?utf-8?B?Y3BCMi9aYXIzMUVYTlN1emt3U2Q3OGhYaHg4bk5ENXBQQVhsQ2VVUzJBbXFx?=
 =?utf-8?B?S1YxT29WQmsxbUgxSnBvNXlPWm1lSnBQZG9jY1lDYTdHWG5xV3RBWGNHaFBR?=
 =?utf-8?B?TkoydkRCMStVeHBzcmxoNm4rNUUyWjJjMU5EWHZ2Q3A0MEgrN204VllyUlZq?=
 =?utf-8?B?VkNkbFBtWGFUc21QbzNicmFpaTIvNmxKanhmU0xVQjB1aHdsMFJENVMyQTRV?=
 =?utf-8?B?eUtQeVRoUHNxV1hBZ0hDbFRFOHlZNDJjZzl3YlB3UFJzZXlzZ25JZUt0TEFi?=
 =?utf-8?B?UDZoM1hTUlk5UkpoSFp5Q0Rlc05YVzNhYVNrSXpHL0FZc2RreGo1Wk16Ykln?=
 =?utf-8?B?L09mQThyUy9JcEV6Z3V2Unc0VUxRZ1pZUmNVdUFaeDhpUkwrK0NqdURFMTJj?=
 =?utf-8?B?RVdQSDVEcVFYN0FueVhLMFhOQjhicGpVSGhPMmRLSExKb2lkMS9oNHdnS2xO?=
 =?utf-8?B?cjZaV3liQlRQMDBWMlBoUUJpZGtOM2lhR1cvYkR4UDFkZE1vbmIzVmpDbVpE?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c1ab530-a88d-4bbf-521a-08da85ba7ed9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2022 10:22:06.8366 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2UXeR8LZvX/2kJkjJHSKKWKZFZ4YsMwpTyAOaP/c+iN0kMyEmuw1VugcUVzfyUrky4VzNe53ctQIls9q1AuzU/NJyybqdu9M4BbLEwZu7Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dp: Fix DFP RGB->YCBCR
 conversion
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


On 8/24/2022 2:07 PM, Jani Nikula wrote:
> On Wed, 24 Aug 2022, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 8/23/2022 4:33 PM, Jani Nikula wrote:
>>> On Mon, 22 Aug 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> The decision to use DFP output format conversion capabilities should be
>>>> during compute_config phase.
>>>>
>>>> This patch:
>>>> -uses the members of intel_dp->dfp to only store the
>>>> format conversion capabilities of the DP device.
>>>> -adds new members to crtc_state to help configure the DFP
>>>> output related conversions.
>>>> -pulls the decision making to use DFP conversion capabilities
>>>> for every mode during compute config.
>>> The fact that you have a list here probably indicates it's doing too
>>> much at once.
>>>
>>> BR,
>>> Jani.
>> Alright, perhaps adding new members as a separate patch and using them
>> in another patch will be better.
>>
>> Will split this into smaller patches.
> You are also changing function parameters, rearranging stuff to new
> functions, whitespace changes, functional logic changes, all together.
>
> The point is, if an existing use case regressed and a user bisect
> pointed at this commit, would you be able to say what went wrong?
>
> BR,
> Jani.

Got it. Indeed it will be difficult to root cause the issue in a patch 
like this.

I will try to get this in smaller incremental changes.

Regards,

Ankit

>
>> Thanks & Regards,
>>
>> Ankit
>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    .../drm/i915/display/intel_display_types.h    |  7 ++
>>>>    drivers/gpu/drm/i915/display/intel_dp.c       | 88 +++++++++++--------
>>>>    2 files changed, 59 insertions(+), 36 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index 0da9b208d56e..065ed19a5dd3 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1311,6 +1311,12 @@ struct intel_crtc_state {
>>>>    
>>>>    	/* for loading single buffered registers during vblank */
>>>>    	struct drm_vblank_work vblank_work;
>>>> +
>>>> +	/* DP DFP color configuration */
>>>> +	struct {
>>>> +		bool rgb_to_ycbcr;
>>>> +		bool ycbcr_444_to_420;
>>>> +	} dp_dfp_config;
>>>>    };
>>>>    
>>>>    enum intel_pipe_crc_source {
>>>> @@ -1704,6 +1710,7 @@ struct intel_dp {
>>>>    		int pcon_max_frl_bw;
>>>>    		u8 max_bpc;
>>>>    		bool ycbcr_444_to_420;
>>>> +		bool ycbcr420_passthrough;
>>>>    		bool rgb_to_ycbcr;
>>>>    	} dfp;
>>>>    
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index fc082a933d59..8ccbe591b9e2 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1201,19 +1201,21 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>>>>    		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>>>>    }
>>>>    
>>>> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
>>>> -				 const struct intel_crtc_state *crtc_state)
>>>> +static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>>    	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>>>    		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>>>> -		 intel_dp->dfp.ycbcr_444_to_420);
>>>> +		 crtc_state->dp_dfp_config.ycbcr_444_to_420) ||
>>>> +		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB &&
>>>> +		 crtc_state->dp_dfp_config.ycbcr_444_to_420 &&
>>>> +		 crtc_state->dp_dfp_config.rgb_to_ycbcr);
>>>>    }
>>>>    
>>>>    static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>>>>    				     const struct intel_crtc_state *crtc_state,
>>>>    				     int bpc, bool respect_downstream_limits)
>>>>    {
>>>> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
>>>> +	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
>>>>    	int clock = crtc_state->hw.adjusted_mode.crtc_clock;
>>>>    
>>>>    	/*
>>>> @@ -1966,6 +1968,30 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
>>>>    		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>>>>    }
>>>>    
>>>> +static void
>>>> +intel_dp_compute_dfp_ycbcr420(struct intel_encoder *encoder,
>>>> +			      struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>>> +
>>>> +	if (!drm_dp_is_branch(intel_dp->dpcd))
>>>> +		return;
>>>> +
>>>> +	/* Mode is YCBCR420, output_format is also YCBCR420: Passthrough */
>>>> +	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
>>>> +		return;
>>>> +
>>>> +	/* Mode is YCBCR420, output_format is YCBCR444: Downsample */
>>>> +	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
>>>> +		crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
>>>> +		return;
>>>> +	}
>>>> +
>>>> +	/* Mode is YCBCR420, output_format is RGB: Convert to YCBCR444 and Downsample */
>>>> +	crtc_state->dp_dfp_config.rgb_to_ycbcr = true;
>>>> +	crtc_state->dp_dfp_config.ycbcr_444_to_420 = true;
>>>> +}
>>>> +
>>>>    static int
>>>>    intel_dp_compute_output_format(struct intel_encoder *encoder,
>>>>    			       struct intel_crtc_state *crtc_state,
>>>> @@ -1984,7 +2010,10 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>>>    
>>>>    	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>>>>    
>>>> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
>>>> +	if (ycbcr_420_only)
>>>> +		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
>>>> +
>>>> +	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
>>>>    		drm_dbg_kms(&i915->drm,
>>>>    			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>>>>    		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>> @@ -1993,12 +2022,13 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>>>    	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>>>    					   respect_downstream_limits);
>>>>    	if (ret) {
>>>> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
>>>> +		if (intel_dp_is_ycbcr420(crtc_state) ||
>>>>    		    !connector->base.ycbcr_420_allowed ||
>>>>    		    !drm_mode_is_420_also(info, adjusted_mode))
>>>>    			return ret;
>>>>    
>>>>    		crtc_state->output_format = intel_dp_output_format(connector, true);
>>>> +		intel_dp_compute_dfp_ycbcr420(encoder, crtc_state);
>>>>    		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>>>    						   respect_downstream_limits);
>>>>    	}
>>>> @@ -2668,8 +2698,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>>>    		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>>>>    			    str_enable_disable(intel_dp->has_hdmi_sink));
>>>>    
>>>> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>>>> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>>> +	tmp = crtc_state->dp_dfp_config.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>>>    
>>>>    	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>>>    			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
>>>> @@ -2677,7 +2706,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>>>    			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>>>>    			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>>>>    
>>>> -	tmp = intel_dp->dfp.rgb_to_ycbcr ?
>>>> +	tmp = crtc_state->dp_dfp_config.rgb_to_ycbcr ?
>>>>    		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>>>>    
>>>>    	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>>>> @@ -2686,7 +2715,6 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>>>    			   str_enable_disable(tmp));
>>>>    }
>>>>    
>>>> -
>>>>    bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>>>>    {
>>>>    	u8 dprx = 0;
>>>> @@ -4534,7 +4562,6 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>>    {
>>>>    	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>>>    	struct intel_connector *connector = intel_dp->attached_connector;
>>>> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
>>>>    
>>>>    	/* No YCbCr output support on gmch platforms */
>>>>    	if (HAS_GMCH(i915))
>>>> @@ -4547,39 +4574,28 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>>    	if (IS_IRONLAKE(i915))
>>>>    		return;
>>>>    
>>>> -	is_branch = drm_dp_is_branch(intel_dp->dpcd);
>>>> -	ycbcr_420_passthrough =
>>>> +	if (!drm_dp_is_branch(intel_dp->dpcd)) {
>>>> +		connector->base.ycbcr_420_allowed = true;
>>>> +		return;
>>>> +	}
>>>> +
>>>> +	intel_dp->dfp.ycbcr420_passthrough =
>>>>    		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
>>>>    						  intel_dp->downstream_ports);
>>>> +
>>>>    	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
>>>> -	ycbcr_444_to_420 =
>>>> +	intel_dp->dfp.ycbcr_444_to_420 =
>>>>    		dp_to_dig_port(intel_dp)->lspcon.active ||
>>>>    		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>>>>    							intel_dp->downstream_ports);
>>>> -	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>>> -								 intel_dp->downstream_ports,
>>>> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>>> -
>>>> -	if (DISPLAY_VER(i915) >= 11) {
>>>> -		/* Let PCON convert from RGB->YCbCr if possible */
>>>> -		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
>>>> -			intel_dp->dfp.rgb_to_ycbcr = true;
>>>> -			intel_dp->dfp.ycbcr_444_to_420 = true;
>>>> -			connector->base.ycbcr_420_allowed = true;
>>>> -		} else {
>>>> -		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>>>> -			intel_dp->dfp.ycbcr_444_to_420 =
>>>> -				ycbcr_444_to_420 && !ycbcr_420_passthrough;
>>>>    
>>>> -			connector->base.ycbcr_420_allowed =
>>>> -				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
>>>> -		}
>>>> -	} else {
>>>> -		/* 4:4:4->4:2:0 conversion is the only way */
>>>> -		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
>>>> +	intel_dp->dfp.rgb_to_ycbcr =
>>>> +		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>>> +							  intel_dp->downstream_ports,
>>>> +							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>>>    
>>>> -		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
>>>> -	}
>>>> +	if (intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420)
>>>> +		connector->base.ycbcr_420_allowed = true;
>>>>    
>>>>    	drm_dbg_kms(&i915->drm,
>>>>    		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
