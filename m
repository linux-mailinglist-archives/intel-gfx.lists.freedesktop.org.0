Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341555B6B9A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 12:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E9E10E695;
	Tue, 13 Sep 2022 10:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F56B10E695
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 10:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663064883; x=1694600883;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LrPXquTVRu+XNjiF4JDHPxP1aGx0qLM9eM+Y88NU9CU=;
 b=SFA0pi9oQJUwFGO6CtJgVdCF2nKL6rDZlQBHsQuV7MkOFkcFRHxoTVKJ
 ZUeemqvQYCDjGSBZJyvOz5vX4Ylm7rhEWTyzUhp5CV7i9SYprHQs0HcdU
 OTZbHJF37CmGjf4Pbz61CH6xcKTRzPLbU0mLvw5d9+3623rq5bJUgcbjP
 sdYqhEgQLX9q95dC4RVhhpNjUZak3gDOHX/BFum8g9K8DVtTIfUvIb7Rc
 bwm8+8HReBE3uBCc+tHni4MszTBemUSRwqJFdGel0gcHbiLnMYjbSDg7H
 xyWIZNdzbkOcnWKAatjLd2aO3dc9+rAaNayTlEKTFF+VyLiqtxofXjPYE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="362052444"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="362052444"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 03:28:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="720119266"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2022 03:28:02 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 03:28:01 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 03:28:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 03:28:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 03:28:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RW+Ij3zIMePaLEx0U12vrogIxQWaO3UJgEZttsnO25cl4+iBHaasJJ26z8LeP+Hgj/Ens6HKA9O8MaYoxgr+HruKPBKRTZJshI9fFgfD6Xwa003fzm/1n4G/pyJZk1ChYpyI4sQnG+uwUaWWDhZYZmhe7V25LD0x13zqoBO1XCqFu8F7FXuGbPb0/SIRusz87dwFME2TvonrDsTcmteIrAXt/Vj2KBEJBjehW8hP7GxR+V5ktb3yWbDbp43iH2sqOIl555WYTVhSiXdOTa/3bvozfQROLJv3R9Qf2iynb3lSvLx9zyuvR9PClZSKU+lPwgy1PT/mBIi1GmrGZWdknw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dx3x+tCSFWd+00VFu1SB1FsD8y8Y9Tx3zvcCBSplth0=;
 b=l2fO9v+ybBe/2t9AkMDLuJjwNJx3lvSm0FISLX8HUb8NlNX+RZVcFxl4uT4A4PquvVM/dYPAEH5X449uDNpCGEF5qUC0kEgEXWoE62ry1FD/iA7jGU52FRLgcvNifvrIMyfd2ZebvHa41KiVC4d1fjL15SIzF8RgQqfYu4Au87ByikHvcB11HhYElf71IL/AfT1+kzOFTg/iGrhKolv3lrfV3kJWVkEwRYivqoZTMkJFj/BoieTeCIqJ8F8iWOJwhNGIU4bt6K9qwRSR7BsIah9dQ0Q+oNU9dA6yWURaQ1oUopKkvmLwYTix72biKsWVQVvh4o+dgdYSQf62ZU+UvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5038.namprd11.prod.outlook.com (2603:10b6:a03:2d8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.16; Tue, 13 Sep
 2022 10:27:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 10:27:57 +0000
Message-ID: <2908e74f-b7c1-5c07-2767-1656a493b520@intel.com>
Date: Tue, 13 Sep 2022 15:57:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-5-ankit.k.nautiyal@intel.com>
 <Yx+AjCFEwgUGEfTC@intel.com> <cb75d799-1275-def2-ecc6-ecf082d66d53@intel.com>
 <YyA8E0ZtOpR9hml4@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <YyA8E0ZtOpR9hml4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5038:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e4f075e-5c6e-42f6-5d1e-08da9572a038
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bhqVXoFy2n6IA2GueRKgs1nbu9wAyyRjc0drAZ7Jm8q40TJoQSP7n3fgOEH6pHR9vIp93iX7Ew0xsfW0vWKfyI3SEazuhcGJrPENTlP5PFKM2x/2r5LCfIxHFy1cyBx9C4+A/FeT7hJd5XqRnQ+dB5RxDEwWmMw6kPlMIeZDeJgmxql13SmgVpFZkY5yc+6i1aZEzLDyVXCJ2Fm1FBKkFzLdwKuXG5hKgkbR7P/5AglTU0PRd588F8iAU6C8+qoPa9c11SAMW2M9sov1q5hHydOtte8rpmJOhjVKo1m6vA8v7ZHvlcSYCq/gaCXgEIojr15WndwCE8rgiFSx+3WOzMd8sLXQrBfeZG+PsFw4pR4xqbk8NyCWxbL91Xc3bwpn//y5MI9KcP355v1F+Lr3EnQ+Fml9KIs6b8Hlq2ISE0Sn6G6BoJ7HZEEadPEaUNtKOWbAoeczVzgjRqrgCwWpRaje5C7Y7I/KHXvpO3ySIvpDR6RerCTbClKJdqunFEYvmnh7eST36olbbx6brv8ZgMi6I32fBrHjqiRLMxNzi2w4wK2E8YdIf4O6tS+dZSYGkePpm5bt6+oq14oTwMFalMRtSUm4VR3I6RAvY3C9Iv+Q/LLW1NZJT7EGESQVxaaO2FeY3pfJXPiTmmKj6w6eXViG3jMySWtjTB7XGy+eYQXYqpRbJ4p2yNU2vq0JDxBuxlFBv13YrofgBvJlfgL8hkAkKSYw4eMcHYUBS/x50KOGOzckEXDi17WOuv4E4lkJG1113+YvU5FDPgLMgDEuvg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(366004)(396003)(136003)(451199015)(478600001)(66946007)(41300700001)(4326008)(26005)(55236004)(53546011)(86362001)(36756003)(2906002)(186003)(6512007)(6666004)(66476007)(2616005)(6506007)(31686004)(8676002)(6486002)(6916009)(316002)(82960400001)(66556008)(83380400001)(8936002)(31696002)(66574015)(38100700002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzllVGF4dFluempEYitjbHQ1alAycDlNbmVSZUFEZk1MZzNBL1Ayd1dpbm5T?=
 =?utf-8?B?WFpMd2pQS0sxL3NNNDFQa3NpL1lIbGlidmNuLzU2NVowZ291Y1FOQ1dYQjJx?=
 =?utf-8?B?VS82QkgyRVNHRFpBNS9pL1pua0s2Vi84UXhReDRKdk9UVmZNT0Y1TThYbUY5?=
 =?utf-8?B?MWZOSnkvRGVJRTVQOHJTOTg5ZzJ6cHVKd3hJNnJ5MWF4OE5JTFZqeFFxVThR?=
 =?utf-8?B?ZG5sLzFaZUVhbkFtV2pUdVRpNnMxeEJaYjBMbTUvdWRjaDdvZXpWR05aRlMz?=
 =?utf-8?B?WkNoSW92THc1VExYRGx0aWJmT1pRVmh2bkxCQ2NBMnBCN21EcERPVEhQMXB0?=
 =?utf-8?B?VUl6bjVYbnQzTmdyWFlmNzJwSEpLRnB5S0JLQ2RCSFFITmk4dVNHZjNKL1FF?=
 =?utf-8?B?akwwY041Z2VuV2xpRGlNLzg5eCtLRU52R3NoQ3ZaMlE5bktwNlB0Q1ZqL0Jk?=
 =?utf-8?B?cGF6SVo3Z0FJVkNROU9vNUpOTHJaVFdzV21sUUpEOC9ZTmFYN0hOUkd5ZEZw?=
 =?utf-8?B?MkIyR2QwM0dhdWc2L29vUFNpbEM5eElWNUhDbWRVOUZXS0VKdFR0UmdWZURP?=
 =?utf-8?B?ck90eFdOYUlqZER4SnBnOEV2UE55KzAyeUZ2Qm5uOEM4Rzlvd2piYURaaXVN?=
 =?utf-8?B?UUZVTVlBRmprQ2xMU0t4L0dUWnJGSFRVaDNTdVBIVGtTRnh6VHN1RUpNUUJi?=
 =?utf-8?B?OFhlTTZtdXphKzZ0a3BuY0hrNVRSZmxmcWhsbmlFdmF1bDQ2SVJnZGNWVzVa?=
 =?utf-8?B?ZzNlUmN1ck5mUlNhY3hwZzluNmwwWTdiQVkza1U1R0thaXh6YWd6UER3TlFv?=
 =?utf-8?B?MXBObWhIRXdRUjZob3MyWmZ4M3p4RUowN01NcVYrWDJTNFVTMkptWTM1enho?=
 =?utf-8?B?cUpJYTQ5THVRa1hIRFZTSXQ1c1VZQW4zV2gyOS9IZ0x5TkVYQ3gwSmxhOUFt?=
 =?utf-8?B?cmNucmlSZnRreUxyRlFwNXJ5OUhoRG9ralBhdTJjcXpXUjBMazNJKzF2ZTB4?=
 =?utf-8?B?azg1WjBoZVllTlhTUTNDWGJpeDNzV2crbytGVXB6QzZVTWp1YWV5NEI1S0xw?=
 =?utf-8?B?VUd4YllvSEtSeTRsSkZucGxZeXRwQldRUEF1czlyVWoyUWxhMlg2WTNpb1hh?=
 =?utf-8?B?TWhxQzdYUkYzWS8rYlprRGdZWXZleGJCZ0cyaHBUVVg5ZTdGWDlnbUlvYTFj?=
 =?utf-8?B?K21vUk8rYksrV2pQL241QkN6YmF4dDRzTVBXVmx5eWZUblRlc3h2dzM5bGhS?=
 =?utf-8?B?UHIycTV2UWVrQnYrQjhrNHg0VXcrcFd3cHhCQ2NlQWxuRUVKaTkvNkNWVGdZ?=
 =?utf-8?B?NFV0cmRjeTZpVjlaR3FCTjNtZDhMdnpSdWlKN1g5NzNlKzNtd25ZQitVVHVO?=
 =?utf-8?B?TlpzeXpsR0tTKzBwUU5pUGIzMjJMSmc5TmFlc1VTWXhhbEpnY2Zra2JIbHlr?=
 =?utf-8?B?RnhYUHFhM1ZBQ0NLQUdkTzJKZVdJeFREQnNiWmlXbFhvMkZGR21ERUhkc1NW?=
 =?utf-8?B?N3h0Skp0UEpxNWtXUVBDcHN3VzB3V3ZVNnNWVUZ2VFZ2aTNTVEk4Z3c3cUc3?=
 =?utf-8?B?ODdrQi9TbTdPNWsvOHhXQysvNlNPT1IvanFYbUJidWJBZyttc1pDZHp4Wmgv?=
 =?utf-8?B?Z2w2amFmakpGbHMxbWdBM0dzUkY3eGpMVTF1bHRRZStNMlFSUDVDa2RIeU9n?=
 =?utf-8?B?dUtHMEZMMjh3M1dkdU9FNEpaQnRSV3pWeEpKbFRPcXBjM0M1dGtzQThkaGMz?=
 =?utf-8?B?VnZ3b0xOMlI2Vkc5NFllYXl2WlVLK0dWclJGNXpvWmE5dDNVbGRzZTF2bTNW?=
 =?utf-8?B?NHJMM1pWalpwbVNIbzB0M2Q3clUxYjJEVjRXZHpLS0dQVUZzSDBUVUcrS2ZQ?=
 =?utf-8?B?MC9QQU12OXNLekRiN1ZEZXRGTnhNU1BjMHYyQU9BVEt6b1BqUllxanJ5T2k2?=
 =?utf-8?B?VXBsVXpJY0V5NExXQWwxWGdwSWVpb2UyREFpUFhRTHEyRlkxWEhIbitmc1hi?=
 =?utf-8?B?ZDFIRkdKTG42aGdWMExaOTNlTUdYNzdJWU9VZ05mdE9BV2JIajU2WXNYc2xh?=
 =?utf-8?B?RGxEeXdkS3IvRnJqV1RQV1dDTVFHVnpMMm0xR0IzampZRzU3YjRWNnZoajBl?=
 =?utf-8?B?ZXFVNlhsMk9HektUdytXOWl6ZXZuQ0ZHeEVWTkFiZmorR001YmErSVQxdnpB?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e4f075e-5c6e-42f6-5d1e-08da9572a038
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 10:27:57.4767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UAifjAPau/+iI/t+8UGi6z+60bBAlAFMlIvO7qljXTokS94aGWC6tGKC/lytiHUvU178bWLyLlTcDKBoQ/9E54DR9amT/vd3LLyPq+ytC9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5038
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Add new members to
 configure PCON color conversion
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


On 9/13/2022 1:45 PM, Ville Syrjälä wrote:
> On Tue, Sep 13, 2022 at 10:55:24AM +0530, Nautiyal, Ankit K wrote:
>> On 9/13/2022 12:25 AM, Ville Syrjälä wrote:
>>> On Thu, Sep 01, 2022 at 11:30:56AM +0530, Ankit Nautiyal wrote:
>>>> The decision to use DFP output format conversion capabilities should be
>>>> during compute_config phase.
>>>>
>>>> This patch adds new members to crtc_state to help configure the DFP
>>>> output related conversions. Also adds a member to intel_dp to store
>>>> ycbcr420 pass through capability.
>>>>
>>>> This will help to store only the format conversion capabilities of the
>>>> DP device in intel_dp->dfp, and use crtc_state to compute and store the
>>>> configuration for color/format conversion for a given mode.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
>>>>    1 file changed, 7 insertions(+)
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
>>> Hmm. I'm thinking just something like
>>>    enum intel_output_format sink_format;
>>> might be easier to deal with.
>> Thanks Ville for looking into this.
>>
>> We indeed can compute the final sink_format during compute config (based
>> on pcon color conversion capability + platform capability)
>>
>> IIUC, then during config_protocol_converter we need to compute what
>> conversion need to be done based on crtc->output_format and
>> crtc->sink_format
>>
>> eg. For sink_format YCBCR420:
>>
>> 1. if output_format is RGB -> configure  : rgb_to_ycbcr420 and
>> ycbcr444_to_420
>>
>> 2. if output_format is YCBCR444 -> configure  : ycbcr444_to_420
>>
>> 3. if output_format is YCBCR420 -> configure : Do nothing YCBCR420
>> passthrough
>>
>> So we store the sink_format and configuration is implicit in this case.
>>
>> The idea with the dp_dfp_config was to store the conversion config to be
>> done by PCON with given output_format.
>>
>> The sink_format in that case is implicit.
>>
>> I am open to storing the sink_format too.
>>
>> Can this be handy for other encoder as well, or this will be used for DP
>> DFPs only?
> If other output types end up getting some kind of converterts
> then yeah sink_format would work there as well. I think initally
> we should just populate it the same as output_format for all
> encoder types, and add it to the crtc state dump. Unfortunately
> I don't think we can add it to the state checker on account of
> the user being able to yank out the dongle mid-modeset.

Got it. Let me add sink_format in crtc_state and add it to crtc state dump.

So for encoder, will just set this to same as output_format.

For DP, will compute the DFP color configuration if required and 
accordingly set sink_format.

Will send the next version with the change.

Thanks & Regards,

Ankit

>
>> Regards,
>>
>> Ankit
>>
>>
>>
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
>>>> -- 
>>>> 2.25.1
