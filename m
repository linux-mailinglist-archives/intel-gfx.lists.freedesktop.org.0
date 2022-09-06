Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA65A5AF51F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964D310E236;
	Tue,  6 Sep 2022 19:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E5C10E236
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662494183; x=1694030183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DVozf3TRogPaiKCeEnxY1v8IpbgXlVMfE0WEXmaVIfU=;
 b=kLHYvHaKrC8mctvrvGxr635YhkFWpq7iclVFW722WLcVHbloILpBShbZ
 2wKfBZ0oZP6QrkJtWcc1cv6pgDPlU04wLui/s2LXCa8jWB2v6m/w6Uk/3
 xqiF0k9DLxiaQIFBa9Jp7ZNxgo5fF3mGjtDFPeE4KWE44VdqkiBg91Nqv
 1qCr8TeWEO7o8vp/yd8Psq+PG8tcCJ3QGl2FjvgxaUnaIOOAd62FLRPqh
 l6Ak39eFB6QgX6lbFSJdJDl9KrbhUnQlvv2iQne0bEag2PWVvyBr9+FLy
 ZN2tukFE+MpnI4kPi3hywmHrdbc0ciQZ9Ln/F0kfc14YubF2vrxBOXlAl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297475297"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297475297"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="859376208"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 06 Sep 2022 12:56:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:56:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:56:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:56:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:56:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NpXFUBnu7g76Dtd5QaA5eP2wiClo0ecCRmlCu2lr0FgneKz/ji8hoxAKRH6V2OQn3Xdz62u4V0WZQEq12SVKWEgkERbLrco2BI5OpTuoUr6iPu7HZOUXin/WVDuqZA1ei4oO2a3VaIo/B/KTXeQKBkcBfSRa6h2LuJh7xij/8AelxYy8THsJ+AJH8Kcfa/S//5SaKcy2rMN6xDwQgsksW+SpuTeM0wtUo/qSPQ76BFpNYI3EMhrbSP+sIhRsxSUEPg7bBkIJiBm55hgmYSkvGTJKfelpXITikGXsOpNuv1d3vgoxOybT64ii7BcL+ID5DvCZg9coK0+dk1tS0fOMfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIITOutZ4JAhh1/5DQX3t/krWBzcQVheRJS8vGkIU1o=;
 b=ENTloNNP2WmHURPGZyg5fvzTfqVRPELJOPHvsmVBPGr28pK1t3Wem7VBk9vBvhpnOyzLJ1NcFJwzeAZpEP2kUSkgn/ESI7J4iB9KXFpLvlxG9gDItFCYD2e6/hhBLFMTJnf4NVs/VfXiNPiUfol77/huwiro7Y377ORB8/8bU+m1KxmnIsGfcmOvaZ9Tq9eH5HCHtr/VYmCyi5ltFlCVeM8Y+dkf+mBp1pCYM+RkNB5WsUixI3h3cCfso5kFLF+PrDYppJWP5/UoBVCa/8NdYf29Ke8vjFOJ76ytPdjyfvlajIke4252OOPB3qAR09NrRoYeULoz2kJRCfwsyPz4pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BN0PR11MB5741.namprd11.prod.outlook.com (2603:10b6:408:161::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 19:56:17 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:56:17 +0000
Message-ID: <5cce8605-5e1a-2f05-2cf2-004da3d4a64e@intel.com>
Date: Tue, 6 Sep 2022 22:56:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-11-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-11-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0138.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::17) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 971127aa-1b7f-4811-2cab-08da9041dc6f
X-MS-TrafficTypeDiagnostic: BN0PR11MB5741:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gmWdQmLUjtirkWKT4MrtZaY01S+5Go96IAOZ8o0qPhNZA9G0c4tSSM6tX6NRYFaK/HMzA5KZsdUxSRggPu+L/3p/vwHQZ+tbQMc6J+RTzSNQRlKii28KG7hBl54S55DZK+6qXc1aTR8T6xa42lTWVO1+J8iK8ejuEJeIAHUcv0Sp5cJgggxiI53Dj2Bxo4Id6bfm+5GsZZ6fAhBQTPfip+1+Q/sRSX3S7A1dUHlvnF+SjPi9sh8NTOAdwhwpgpHoLiUIZvdPGEfodliTAmCbGZPhsMmMoKwqqts/fT9Kt/b265ONd6qlcicgJzci+I9thCRWLnrkJyHmbJ9F4NBDPrM5+L5R4nL6ouAIVmCxFgoxZOeCRYq4omw7w1im+d/y7yu1JwdHa10GKRd82tYNZ4xnExNLWEJFXtZEbZd1JSkxHw+fUP5SxQ5gNIWxKKeNznAjHMdu7zUqP/NXbWIHT3lPRezf85VegZLfwrJrsAR+c07XTbcdsGwfQGpNw5UNuHZ6vVfBgaaLflcloqOSRY9OWs/mMU5qMJDHdACWHZQ/hGKVigF7yrruTTm0j1p4IUsWeXnyoCicZzpAaw9MrxrSNjhYgsO3XpsX/c0RFq5CvTNxrFPRpmGDP2zIEcxh7BAHhlSgCHqye25ZbB11oMpWUUty4Yr/BOHcab71JI4+7Q/fk5cX28k6pxR7SAcxRSVkz9P1b8V1HJEQg5FKb10Sdd1DNq2dsDXJ0P5LEYLY2M967Ca8ku+tJZZAHF9BJF/AGGD+I+/W3HPLY6UNaOI+itZZTm77zyqebaTftho=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(39860400002)(136003)(376002)(396003)(41300700001)(6512007)(6506007)(26005)(2616005)(6666004)(53546011)(107886003)(186003)(4326008)(66476007)(8936002)(2906002)(66946007)(5660300002)(83380400001)(66556008)(8676002)(86362001)(6486002)(316002)(478600001)(31696002)(31686004)(36756003)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjJIdmZ0TzUzYVJ6UzdVOVJjZVZkd3dJWTBxc1QvL3lnODNPczZreGtHNnBo?=
 =?utf-8?B?T2dBVWFydlBPQW9pMUx5L2xHQ2xRV0N1YmcyOS9weTBnYW1sWkY5Yk9ORXly?=
 =?utf-8?B?T0Jqd3pIdk5zR0tuaGJLWnFLYVNjQWo3OFA5NWI2RWlINVJwQTZNZlEvcXpu?=
 =?utf-8?B?b2NRUi8yQTlva2xrOTltbmpveWE0Q3pMa3piZy9nNXZiQUtHN3hia2pzbHpJ?=
 =?utf-8?B?RXkxUTk2a3Z2K1QyMjRTeW9TREVNd3dDSDQ2d2pIMTEvem5vbGdZK24vRmd6?=
 =?utf-8?B?djNsT2NLNXVpdUJWRVpjZXNJYlg2ZVBhNFBxeWRxSkh4M1ZOSHFKMU0vZkRq?=
 =?utf-8?B?QjZLeEF0Z05oa09yWE5UQzRDcUtFTHh2N0lBWXkwdVExYzJLa05DUHkyanc4?=
 =?utf-8?B?SG05OUlOR0U5WUxjczdlbGpaQktGNnVYMm1FOG5WbDBjTzVUcFpGdGszVm5y?=
 =?utf-8?B?STJCTlZtd2dwemRYVkhhSFl2amJ4bHNqSk5aT2NIT0dNWmJYWTZjVE56dVd5?=
 =?utf-8?B?OTQ5MlRFNkJZNTNFWEQwbC9Fdys5ZXZUMGxRL29janIzS2RKdFZFYUNmbnB6?=
 =?utf-8?B?ZFZxL0Q4ZTdPYmd4SkdJcVJuZzIvMis0Uldqb3d4MUVmYmsrQ1cvTDJwUUxa?=
 =?utf-8?B?dHBjZTRlV1hNRU9hUFQ3VFBvMUgzMTlLTXQ5Z1hnZUd1UnYrcnI0ZXJvVll1?=
 =?utf-8?B?Zk1xRzRZVmxpbmVOcWZFY1U2elltTXhrOUtHZTRqY0ovakw3aDZhWERVR1Zo?=
 =?utf-8?B?Mm5qNXQwc2VoQUhCT2dnKzNFbzR3ekFmaUNLMDJCeGdhQWJvd3FzK1FPNVBH?=
 =?utf-8?B?MUtQcXI5MThLb0dpdXcxVzdjSitaNmVnZGRQSkxBYmNEcVh4dFhEdzdHenRk?=
 =?utf-8?B?bUpxQUVaSUMrYXFMdXNFaWU0VmdPb1N4ZnJIQy9LSGsxN0VKT2pqOEpKZmVy?=
 =?utf-8?B?cC90bm9uRDJoQ1o4YVRKWlhkbjIvdXVXby9iSmdneDhjVG51ekxrank2d2NH?=
 =?utf-8?B?bEpaSVlQM2RheHN5aW0wOXZJQ1pVa2lzc1IzY1RzMjVCWnhvdGE3aCsxaTI2?=
 =?utf-8?B?YTREVnFhY1FmY0JhUHdQVUNOR3N5eS8xdXBoeG1WQzJqVWwxd29CelVVclZS?=
 =?utf-8?B?TFAxSVdtVlE0enpWV3NTOHdFOWE2aWpXY21wdHg0NTdiWHc5ZWlwN0E5T0lp?=
 =?utf-8?B?VnREc2REZXRSbjZRMjZzSU1KbzdGQXZFUzNXSTBFSmpXc2RRVXU0YWNWdHZx?=
 =?utf-8?B?R1Q1K0t3b3pmYTNiQmxRV2ptZUR1eU9jK3h0SzZSSUFicWpoamZxK2RBMk1E?=
 =?utf-8?B?Nlh2bVFxcnVEcGJYa215OHZWd0FYVENGRUZkYkh5S2hSUFlKRHMxa0JRWEVG?=
 =?utf-8?B?dzU0WWZRdXM3V3ZEZTZOSVpjWkljZ0Z1YUxDNSs2VDhpRXAveTkrTURDYVVD?=
 =?utf-8?B?WVhKdXdGNFJRZllBOVdQYW1FaS84bWxNMDhDNHlyR0RndVV4TWFUaVQrSklr?=
 =?utf-8?B?bUVVTUZvWTcwVTVVaTVNQnZZalNjdlNENC96VXFOS0ZVY2huOGs1OVhjaGdw?=
 =?utf-8?B?QzZOa3d6ek5IcDlML2NKMmV4dHhUUVo5bk01NUFpRExtc2xlUHF6QTUzV1lz?=
 =?utf-8?B?R0VtcS9hak8vY3FPemNvNWh1NzlSTWRuNCt6ZlRkWTdJbXl6K0YvdmxFUXhJ?=
 =?utf-8?B?OEV5OFFINU1IVVRSMk1JenRVbkhrTS83bDRRSUxoR2xSeDJNUU1WcjZIeTJp?=
 =?utf-8?B?ekkwWWNLT1kwaTIzTU5NQjBTMWtpUnFYazQ0bU4rVTV3TTh1Und0QnZBa1Fi?=
 =?utf-8?B?dHVJVGNsSEZ1S09GMDlvZzVPZjVOSCsxTGdNY1RRVmdUSTh6OWJiNXdDamlz?=
 =?utf-8?B?NUlRNHprMXRIclNrUE01U2pJdDFTd2ErUmo2dUV6cEt2UE1CSmc5UDFkTmh4?=
 =?utf-8?B?VHJWei9PUHkyNGZxY0FhNUJxZzh0WUxiWTJvOTBqS1hoNERTWmFVVWhWcW42?=
 =?utf-8?B?S1ZKeFk5T2Y5UWxTSWtmV3NFR3o5OC93RE4xZHlJVVdHWEU2QkFiV0Y4ZTVO?=
 =?utf-8?B?ZTB6bmlYRHFERzhxcDg0NVlPN1hiYURMamlBVDZwM0gxUFJlejE5NGFCNm91?=
 =?utf-8?B?SVR5VTRLaDErL0ViMjZ2a0tMTzhSUmdqYlBpdFlMRFNGVmx5WHVZMWlJLzkv?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 971127aa-1b7f-4811-2cab-08da9041dc6f
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:56:17.4706 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IyTxpUUa+88NCOti3vbMP7X7AW2ta1ASWtxxKY6zqVRHdUBd84uf7UuJfpBVJHHBUkPp7iveRCfJNQ6C7sLfD9ELgrthUZo85nLuPeXI3WA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/19] drm/i915/perf: Use gt-specific ggtt
 for OA and noa-wait buffers
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

On 23/08/2022 23:41, Umesh Nerlige Ramappa wrote:
> User passes uabi engine class and instance to the perf OA interface. Use
> gt corresponding to the engine to pin the buffers to the right ggtt.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

I didn't know there was a GGTT per engine.

Do I understand this correct?


Thanks,

-Lionel


> ---
>   drivers/gpu/drm/i915/i915_perf.c | 21 +++++++++++++++++++--
>   1 file changed, 19 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 87b92d2946f4..f7621b45966c 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1765,6 +1765,7 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>   static int alloc_oa_buffer(struct i915_perf_stream *stream)
>   {
>   	struct drm_i915_private *i915 = stream->perf->i915;
> +	struct intel_gt *gt = stream->engine->gt;
>   	struct drm_i915_gem_object *bo;
>   	struct i915_vma *vma;
>   	int ret;
> @@ -1784,11 +1785,22 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
>   	i915_gem_object_set_cache_coherency(bo, I915_CACHE_LLC);
>   
>   	/* PreHSW required 512K alignment, HSW requires 16M */
> -	vma = i915_gem_object_ggtt_pin(bo, NULL, 0, SZ_16M, 0);
> +	vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
>   	if (IS_ERR(vma)) {
>   		ret = PTR_ERR(vma);
>   		goto err_unref;
>   	}
> +
> +	/*
> +	 * PreHSW required 512K alignment.
> +	 * HSW and onwards, align to requested size of OA buffer.
> +	 */
> +	ret = i915_vma_pin(vma, 0, SZ_16M, PIN_GLOBAL | PIN_HIGH);
> +	if (ret) {
> +		drm_err(&gt->i915->drm, "Failed to pin OA buffer %d\n", ret);
> +		goto err_unref;
> +	}
> +
>   	stream->oa_buffer.vma = vma;
>   
>   	stream->oa_buffer.vaddr =
> @@ -1838,6 +1850,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
>   static int alloc_noa_wait(struct i915_perf_stream *stream)
>   {
>   	struct drm_i915_private *i915 = stream->perf->i915;
> +	struct intel_gt *gt = stream->engine->gt;
>   	struct drm_i915_gem_object *bo;
>   	struct i915_vma *vma;
>   	const u64 delay_ticks = 0xffffffffffffffff -
> @@ -1878,12 +1891,16 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
>   	 * multiple OA config BOs will have a jump to this address and it
>   	 * needs to be fixed during the lifetime of the i915/perf stream.
>   	 */
> -	vma = i915_gem_object_ggtt_pin_ww(bo, &ww, NULL, 0, 0, PIN_HIGH);
> +	vma = i915_vma_instance(bo, &gt->ggtt->vm, NULL);
>   	if (IS_ERR(vma)) {
>   		ret = PTR_ERR(vma);
>   		goto out_ww;
>   	}
>   
> +	ret = i915_vma_pin_ww(vma, &ww, 0, 0, PIN_GLOBAL | PIN_HIGH);
> +	if (ret)
> +		goto out_ww;
> +
>   	batch = cs = i915_gem_object_pin_map(bo, I915_MAP_WB);
>   	if (IS_ERR(batch)) {
>   		ret = PTR_ERR(batch);


