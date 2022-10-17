Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF5E600CD8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 12:49:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF69510E3C9;
	Mon, 17 Oct 2022 10:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F8910E3C9
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 10:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666003780; x=1697539780;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iCDBzNBs6YDrY8HfHo4iApVyTh2MhjYQbyMDZsLIGG4=;
 b=NN89oHmPYZFG8Zx9EytVMlrKCTxdiHJYPbEUhnl2X4ddH4ap1Om/HWp1
 KRhZwNX2qEq0U/n+2G6N8oHNZbHqXAEpfpeLbJE+vEBHSrId7zb1TfB7x
 bSBvQXqqUlxWR1uuAFaSTvYykRpapgnw7Fi7ckVM3YXNqmEBgRZC4RTvo
 wU2ReZV0qdk2l7dXU/rXqt6ZmyJI7qbjzR5L97NpMszHS881S4BViILvo
 wjdhgI4nBzSWsFGxD56teLSyF1W4Z5gyuE9yQPzLwcj4PyWg9Yy7XuKEe
 dRW29I8C+dNy05NBtveAgnMAQl2BHdbDkaZnhpJ32uNoWoVpzJlVyNLWI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="289052259"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="289052259"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 03:49:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="697009785"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="697009785"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 17 Oct 2022 03:49:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 03:49:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 03:49:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 03:49:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 03:49:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NTPNrflXd+SeHsPLZy4ZJLtHqr7dWQ/6JcMPJw855cCvA5wTpBfRRxAHTyiIsiu4jZgoPIjS5XTJse77XQpeyqGot8lDqiye4h1N7vAa+9NIpQzcp1v/epQu4NaZYz029CDEBKap92UNnKZhfZhLprwcbGzXq5Cv++bnw6mLhzUCQgL3IYZIDL7TFm4yAk3q5QOQjzSQLfCtTnXwa0g0j/UIjI75NSRqJ0vtDl39QT5XyyqxDA2XspLYRgHsjaGAK5LeHEOphubBziCL7fEniFVIs5ydgeN/uDWzthnKiVLsad0LYiWpW/IxWyH1b7m36jCL2ab1YQTgQZsVAh7BYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1bWYaH3Nf31KAsxIOnfqEECrnSdCd0ZLCM5V4kqJSw=;
 b=M6LLyPicatr32taioGNo3F6HuRYyeKYzepFkl9J4Ip2n8vcybXp/6BSdyQxrD+WL2jfOQUJ98O+sQfkTZZcModKyxe473WxmeWNCn63NtmGWQyJ2S8d3DX65B6t8eN9Vn3WCWbrTrqOXd5NjjDf39pYNNpovAhP7yrMLrFRsgf79nsflz7HPaOUp1AnnGXjOSGxgRj1kdgT6JhB25NR2QTkYvhX21hNW38Ktc7/g9AwOBBeQzMQWOVF9s9F4xQ3yL1dBY7DYMUDHURifKh53NPofwdaJJGxnt61y2iaPpb7rjtkknInFsd+QlIwDGbzePfUTBE1tu+H7VFNlD5cx2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6397.namprd11.prod.outlook.com (2603:10b6:8:ca::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 17 Oct
 2022 10:49:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::dd59:fdd5:a9b5:9dae]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::dd59:fdd5:a9b5:9dae%4]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 10:49:36 +0000
Message-ID: <53cb7037-0f8a-cb1f-578b-37f72fad319a@intel.com>
Date: Mon, 17 Oct 2022 16:19:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-8-ankit.k.nautiyal@intel.com>
 <Yx+A+XHRzxJevOKr@intel.com> <d4d1590e-17df-4ed6-0eed-bdf237ddf7db@intel.com>
Content-Language: en-US
In-Reply-To: <d4d1590e-17df-4ed6-0eed-bdf237ddf7db@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0007.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6397:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f9ec49f-1f1b-4ba2-08af-08dab02d485f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HrznEHlVVpxiD2Nx3CstTg1krZsFAAQwAGnlv0i2aGqCaYkWQw4xASyIiM7ZppfskRFeprhussoMc4ime1VzQAGPC5I+8rKfW0DujOAlNAYEqmlgxPNBbbs6WWXDo+h8I98vEZ4hMQMEvk3x+IYorTPdIIZEwmlILcNtWwwO3wIL5sBoxC58m/yPHUo06JCgRiWAzMTI8gtYf3h087pZpg8OiXIWqzoKR11zW80kaQr2zyYp+z1wglNHDllosrnfMUwSEiNPWNUqpX/3//xPBLaYQcQMVyP3VJImHZXDQQ+BMnrDMxzQBjojzHPuoHHYHW1Dvy9NwA3hQ60LbfnuMH+BOKgAhHye6mFnu5gq7p48iU1wmP06PrL5tjAuvo8nLpfYtDljTd6rAq9rrAu4iTpuXfytHRf44HUJClAuHsf3JyZo47Noa4mR5fUEnjH+Wfo6/TAGRcYzp196MtIfWlyALEjs2hWTenKisvi+dh7pmhBkxlPD++EK+wR4qYYWYV0DxmMEGgZ6pPDk7Xy/QC5VLq/FwhlUIuEwFvrcQ0oQ9hJWAaI3bRwMafDZ7vSC7dTmlYYwJmRmhAd2xRVmi5nv5CkmzTTdsZgzlxerMgceJ5XWcSEXwY5XR5uzWzU/JToaWUl622TeSb3ATuCV1n5p6856GI5i/6GsfIF9oCm5JXOBKsK27c9BEHF/i3JgWrDSGWGj97LjLgwPOND9h+gIsLMAWhm2LVW3wlffiqYl/IsIvaXLbr+1uqIA6pjXIMiqtuPxciR/ExGMFj2004hy5LPPEFCa9En3Wu6L/Tc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199015)(316002)(31696002)(86362001)(6486002)(41300700001)(6916009)(2616005)(186003)(66946007)(4326008)(66476007)(8676002)(66574015)(66556008)(26005)(8936002)(55236004)(6512007)(53546011)(6666004)(82960400001)(38100700002)(2906002)(83380400001)(5660300002)(6506007)(478600001)(31686004)(66899015)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2NSaGhlYzVuRzZrdlZTdEl6UFpoK05ZeW9IajM5L0VUZjlDZXZiWUdTNnJu?=
 =?utf-8?B?Tk1ia1oxY2l0L1loUkIzZnNQVlErK0RMQ1VvMWt6d0xuQ1Fzc1VQenNLQ1FY?=
 =?utf-8?B?Z1ZGVEFxR0JYNy9YU05aTE1xQzYrdXRxa2o3Yk5nMEZkREUrVzNqNldhTDVT?=
 =?utf-8?B?Mm55dnNYMWpxcnQ1Rzh6Mk1nRTk2N1RaMkdZdFExMERCYnFjb0xpWjIvUDZU?=
 =?utf-8?B?OXlwSGI1c0NUU2kzQkpqTlhudHlKcEFjRDd5NEFzTWN4cmFhUVZPSHJzQktO?=
 =?utf-8?B?RjgvSzJZQXltRXFGRnUrdVJYMDYwZTFzVmV3c0h4NUNYSVJLNlhNQXFDbVNF?=
 =?utf-8?B?UStVZDFFaW0wYzlrQVlmbVJEdTVvKzVIMEY0akcwSkpEd280R2VteFU2UG01?=
 =?utf-8?B?RXNKMWJzV3lFbUx0MzZDSXdmazY5L3VaSm9BakhFYlc1VGRkeWZ4UkVKYnpM?=
 =?utf-8?B?OUN3NStaTEFXKzJVVzVUU214eDBCcERSM0Y0THpzSHZIdFlKazVsZld0U28w?=
 =?utf-8?B?cTV3RkRNRUEzQjdsNnhaY1oxZ2FoTjkzaWhTRXR3K3dhUGF3NGxKeEZ5Zzgw?=
 =?utf-8?B?cGJFNjlGWDB4WDliUWp2SWc5SG5CVGl6dVhrSndPZkU5YUZYY2NpdjJVbE5H?=
 =?utf-8?B?bmZnTWZ0WFRDcWhPWENMQWtTSmRrWFQraXBWK3ZyNmxDbVNMMW5DSTkzcXFz?=
 =?utf-8?B?Z3h6VVNadUtESm44a243SHdHWG84Mm00MW9HSDBBcHBVTTdIcFJKUmRyb3Za?=
 =?utf-8?B?L0RUdkhXUThvRWE0NFZrVzVpb2R4TkR3MzNGUnVKbU5TRld6elRaZ3ZteWQ1?=
 =?utf-8?B?UDd4OGNEUmtjbkIzVnMwOVRoNXlNdVV5NndwSm1GVGpWdG9CRCtvTFRIaFho?=
 =?utf-8?B?VVVlRmNDOEF4cCtNZjVVWk9oM29HSEpIcFM3RFozL1FLWm5PN3RIbTl5Q2ZO?=
 =?utf-8?B?RHRrOGNjT2t2d3VNdzBSNzZzSDhTY1V3eTIyNTVEREliLzM1c3pKSGNYaDh2?=
 =?utf-8?B?WTV6VlNpZWJwSnFQdHViQTVvcVd3aWRLRGNzdFBKNkIvRE9JOWpCeHROQ1NC?=
 =?utf-8?B?ZjBlam1XYTdacnMyTjJ0Q1B5bWwvWlRRUFUyT3JSOHdFVkpjRjdHNWR4S1pD?=
 =?utf-8?B?czFESnZ5SG5pTjFjVkdCZVhGU3BlRlFMMWV4cHE5WnN6QkJ6dCtSSDRWaHln?=
 =?utf-8?B?aVNxMTV5OWRGQUN0LzhDN1BoeUZVaHZvdnVoZmRUTEppVGtmTHBvYTJsWlhF?=
 =?utf-8?B?cVdxWmUrR2kvMWdyNHlMdktDaStFaGxDdWpZT1ZRYWdSbkJwakNOSUdLTURP?=
 =?utf-8?B?OUh5SWhtcTJyTFZyQUEzMEtaRVdsT1BRa1JvZnUxZkRRWnBPUGFhK24xR2JG?=
 =?utf-8?B?MXlIdFBCRittMlFLREJ0aWQxK095cjZ4aEpjMCttNWU4V3V1SzF1ZS9ZUitD?=
 =?utf-8?B?KzY5S0xqZXB5dFVXUWVRNmZjRlVkTkt1L28zQzYvSnZzWTlmU2hJMjlCa09P?=
 =?utf-8?B?NmwxNER5eGExdFZ2a0JwdEVLc3Z5bGs4NVFCVCtmOVdwMWt3Tis0UVIzSW01?=
 =?utf-8?B?SkkxU09ZQ2NVazJxTVlrd0ZKWmJqZmY0c3JXVDZqRkNPaEpXMGkwTS9RUzhy?=
 =?utf-8?B?MHVBMENZMW5zN2lkZDJWZEl1bkNvNS9WK1VrZStiSnFhOS9QSTFvalBtVFgr?=
 =?utf-8?B?S2N1dFJRcUF3OGVtQVFBZXdkUVJBZGZvamlHb1QzNlBzNHpRR09ZclNnY2cr?=
 =?utf-8?B?UFRxUFp3dXZ4czNySkRJNm9ZMnJMeEJYVFArQThoR2Y4K0ZkSTRXdzZPUlR2?=
 =?utf-8?B?bTVQVlI1RFhRWCt1dExMa2t3eHh3aEU5bGVvTGsxOEtLVlZDR2N3MGZWWUFQ?=
 =?utf-8?B?V25Pa0xzWElGcDNOaVJ6VnVvNXVKVW9yWUt6SS9pdE9wR1NNdnNFS0ZXS0k0?=
 =?utf-8?B?NjFCa0I3Z29FRHlobGFLbE5JOVU3S2F4ODhhK0lieVFoUnFpdkVleUZ0bmEx?=
 =?utf-8?B?SDNFc200Yk9RV0puOWhIdndGQWNlc3FkbU5ubmd6VFdiQ3A2Mi9FbzZQTHAz?=
 =?utf-8?B?NVJ4LzBZSEZEL2xucUh4dlEzWWM1ZVZ3aTJaSGFqRG1QK2lUZzUzTUVGVzVa?=
 =?utf-8?B?TmZJbjFCaXJyZ3B5eUdMVDJDUXZLYVVuRG53N1A1bURPNE1Rc3NWV0NweWVx?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f9ec49f-1f1b-4ba2-08af-08dab02d485f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 10:49:36.3532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cNkRd1c5MNwhrhbuKScZuY7vzjuWJrz91dyt5BXPsPlRV+Ig+tNYXUAX6NLaeFbvl7OIB0f5Us9WI6XsBpfYchre8rsXsHKqu05mvn60rgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6397
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state dp_dfp members
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


On 9/13/2022 11:43 AM, Nautiyal, Ankit K wrote:
>
> On 9/13/2022 12:26 AM, Ville Syrjälä wrote:
>> On Thu, Sep 01, 2022 at 11:30:59AM +0530, Ankit Nautiyal wrote:
>>> The decision to use DFP output format conversion capabilities should be
>>> during compute_config phase.
>>>
>>> This patch uses the members of intel_dp->dfp to only store the
>>> format conversion capabilities of the DP device and uses the crtc_state
>>> dp_dfp members that are computed earlier, to program the
>>> protocol-converter for colorspace/format conversion.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 46 
>>> +++++++++----------------
>>>   1 file changed, 17 insertions(+), 29 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index f3c2aeda0c1d..409bd9cdf450 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -805,6 +805,7 @@ intel_dp_output_format(struct intel_connector 
>>> *connector,
>>>                  bool ycbcr_420_output)
>>>   {
>>>       struct intel_dp *intel_dp = intel_attached_dp(connector);
>>> +    struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>>         if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>>>           return INTEL_OUTPUT_FORMAT_RGB;
>>> @@ -813,6 +814,10 @@ intel_dp_output_format(struct intel_connector 
>>> *connector,
>>>           intel_dp->dfp.ycbcr_444_to_420)
>>>           return INTEL_OUTPUT_FORMAT_RGB;
>>>   +    /* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>>> +    if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
>>> +        return INTEL_OUTPUT_FORMAT_YCBCR420;
>>> +
>>>       if (intel_dp->dfp.ycbcr_444_to_420)
>>>           return INTEL_OUTPUT_FORMAT_YCBCR444;
>>>       else
>>> @@ -2698,8 +2703,8 @@ void 
>>> intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>>           drm_dbg_kms(&i915->drm, "Failed to %s protocol converter 
>>> HDMI mode\n",
>>> str_enable_disable(intel_dp->has_hdmi_sink));
>>>   -    tmp = crtc_state->output_format == 
>>> INTEL_OUTPUT_FORMAT_YCBCR444 &&
>>> -        intel_dp->dfp.ycbcr_444_to_420 ? 
>>> DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>> +    tmp = crtc_state->dp_dfp_config.ycbcr_444_to_420 ?
>>> +        DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>>>         if (drm_dp_dpcd_writeb(&intel_dp->aux,
>>>                      DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
>>> @@ -2707,7 +2712,7 @@ void 
>>> intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>>>                   "Failed to %s protocol converter YCbCr 4:2:0 
>>> conversion mode\n",
>>> str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>>>   -    tmp = intel_dp->dfp.rgb_to_ycbcr ?
>>> +    tmp = crtc_state->dp_dfp_config.rgb_to_ycbcr ?
>>>           DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>>>         if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>>> @@ -4563,7 +4568,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>   {
>>>       struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>>       struct intel_connector *connector = intel_dp->attached_connector;
>>> -    bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, 
>>> rgb_to_ycbcr;
>>> +    bool is_branch;
>>>         /* No YCbCr output support on gmch platforms */
>>>       if (HAS_GMCH(i915))
>>> @@ -4577,38 +4582,21 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>>>           return;
>>>         is_branch = drm_dp_is_branch(intel_dp->dpcd);
>>> -    ycbcr_420_passthrough =
>>> +    intel_dp->dfp.ycbcr420_passthrough =
>>>           drm_dp_downstream_420_passthrough(intel_dp->dpcd,
>>>                             intel_dp->downstream_ports);
>>>       /* on-board LSPCON always assumed to support 4:4:4->4:2:0 
>>> conversion */
>>> -    ycbcr_444_to_420 =
>>> +    intel_dp->dfp.ycbcr_444_to_420 =
>>>           dp_to_dig_port(intel_dp)->lspcon.active ||
>>> drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>>>                               intel_dp->downstream_ports);
>>> -    rgb_to_ycbcr = 
>>> drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>> - intel_dp->downstream_ports,
>>> - DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>> -
>>> -    if (DISPLAY_VER(i915) >= 11) {
>>> -        /* Let PCON convert from RGB->YCbCr if possible */
>>> -        if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
>>> -            intel_dp->dfp.rgb_to_ycbcr = true;
>>> -            intel_dp->dfp.ycbcr_444_to_420 = true;
>>> -            connector->base.ycbcr_420_allowed = true;
>>> -        } else {
>>> -        /* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
>>> -            intel_dp->dfp.ycbcr_444_to_420 =
>>> -                ycbcr_444_to_420 && !ycbcr_420_passthrough;
>>> +    intel_dp->dfp.rgb_to_ycbcr =
>>> + drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>>> +                              intel_dp->downstream_ports,
>>> + DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>>>   -            connector->base.ycbcr_420_allowed =
>>> -                !is_branch || ycbcr_444_to_420 || 
>>> ycbcr_420_passthrough;
>>> -        }
>>> -    } else {
>>> -        /* 4:4:4->4:2:0 conversion is the only way */
>>> -        intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
>>> -
>>> -        connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
>>> -    }
>>> +    if (!is_branch || intel_dp->dfp.ycbcr420_passthrough || 
>>> intel_dp->dfp.ycbcr_444_to_420)
>>> +        connector->base.ycbcr_420_allowed = true;
>> That part looks wrong for pre-icl now. They can't do the 4:2:0
>> passthrough.
>
>
> I have not put condition here, as here we are just storing the PCON 
> conversion capability.
>
> I have added the condition in intel_dp_output_format with 
> ycbcr420passthrough for Display >= 11.
>
> But yes for pre icl if dfp does not support 444_to_420, and since we 
> cant do 4:2:0,
> the connector->base.ycbcr420_allowed should perhaps be false.
>
> I can add a condition for that.
>
> Regards,
> Ankit


In the latest version, I have retained the condition in 
intel_dp_output_format() just like above.

IMHO the dp_dfp members can just tell what the sink capability is and 
whether the platform supports or if we need to use this capability can 
be determined in compute config.

Having said that, I am wondering if intel_dp_update_420 can be combined 
with intel_dp_update_dfp?

The checks "if platform supports Ycbcr output" can then be dealt during 
compute config in intel_dp_output_format()

Regards,

Ankit



>
>
>>
>>>         drm_dbg_kms(&i915->drm,
>>>               "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 
>>> 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
>>> -- 
>>> 2.25.1
