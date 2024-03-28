Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4501388F5EA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 04:30:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 210E410F13F;
	Thu, 28 Mar 2024 03:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HmbJk8cf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB8810F13F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 03:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711596633; x=1743132633;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+R8e2lXVLd021LGDlKrdhRMNtk5eaMnb+XN8Q7nf+Lw=;
 b=HmbJk8cfjsFztwg1NA90PjZ4a98MQKADM7IIo4/5N8Qqvq5Iktu5+VVL
 5pNI15wdS2Ikb1TpYisDx0yN2Koj28yWTx3mEz0UezP73yaTpM0sGw2aD
 Dxrjj+QqDXqDOne7EWQgBwH9x4kc3nrNk5coqHxAV9ZRCoa66TwNGoatq
 r2q0juF+TnOgqc4MIesxJf6vqyaojkbvYzsVzttorE291QMouXE0sqFya
 8hd8uhM7snIdost793MTfTiDKGUWgiaX1wZQQBQU6kcrUn1giYRok4HjS
 hxR+A0jq92FeRDeEYpY4/hbQ/KyP6omry+KFtPybPT3BVjROVTr04bJGC w==;
X-CSE-ConnectionGUID: lm7X34VLTfOkpTPHGH+a/Q==
X-CSE-MsgGUID: eHNH6NB8T+id41jdySmNwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6844233"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; 
   d="scan'208";a="6844233"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 20:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="16963455"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 20:30:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 20:30:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 20:30:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 20:30:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 20:30:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5bwUpUEGfWIJb3eGrYc6sdAXCEzz3TaoVL9mIxv3hG5dNzNeJFIFiKO8QdIQcChzgy07LUgOqTxfYgwIKZ+MJ9/mGML5jojlLzXRNpZPJOS0b+U9VPa9CWyLiGIDMWgmf/o8IWVVIQCs94I0ay3wmw/rtuGyfsewDLZgICJRcdqmKG0yc9BKIGmnBz+oaWGezg1CLW+VtCSCbZs7dFgYjvZm8ABlXYwXeCjsDILwvGkVp3gh02fL5lB7whQmnPjgdLj2f98y+63Ko/0KWwidumQtN4dXJ17jBvWkJEeHimZVf8LwkW4YIZh+Wrd69jKmAE4PZxcoG34D2Pfz0pCJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CC+dfkWJVoUuEsTjMEbKb8rjOpknUajh8+QLf3qFLrs=;
 b=LPnk8+shbAF9603IvF5yClLAaKRZxK+7b/9uOSJv4GYZi+Ehd+0Uo3lun9NpFn1YQ34pG2CMNKlXRO3dO5/nA4tWt29f3MbgjqZl6uy9J2AcUy7c/up7XKdZtuvKIoV5XqA459KoeqYhRv6cuC1dbqFM9BaknAgAIJ18qxD03u0086gaibNBtYQlw3rY5rPReFeENIM0jC9e2E0aaM6/2TMcedhgDo1WLeE9ukMeYVBIv1TUXJhSe21ahe3+VgsDKQAlopKwyrdvKqO7Z69orjfhlyWBd1jzXXBsxkBxJGzsqHRW7zCurV9usOUFvX4JQK0bQO1zvmWstzPviYgyrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4799.namprd11.prod.outlook.com (2603:10b6:a03:2ae::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 03:30:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 03:30:29 +0000
Message-ID: <c5410b93-9904-4e04-bb62-71e2fbee0088@intel.com>
Date: Thu, 28 Mar 2024 09:00:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/11] drm/i915/dp_mst: Make HBLANK expansion quirk work
 for logical ports
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-11-imre.deak@intel.com>
 <9cf063bb-9e8b-4bc3-a9a0-e6ae90acd7b5@intel.com>
 <ZgQrAKqiC9SEie4g@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZgQrAKqiC9SEie4g@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4799:EE_
X-MS-Office365-Filtering-Correlation-Id: 20b76211-59df-466f-9319-08dc4ed76a56
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZU4/lMlda1ivs1ViunIBpVEj5/1ik28jH9piKwOyJAnNOuUgWF30iqa6IH3KKknRdWWtex1aSu/sOjShTr4jxqGTmv0iCCUM1SWVPaF8zjKbBVD2aaeffk+qTlaGXJfuLw+2r2PAGiWnzW6faNFKFL2eyUlI0Dom9JNnDjXsykbVHFA6ZT7+6bXlWyKl1orC+hgxKcSu0fVyf+E4DLU0qt9e63UmVjg6LqW3gz9PztDo4v0F1hLaT0juWr5VRF7ZwsQ7v/4jq8fQF+roIb06+3pZuLwtuZx/W+Y3h6k0EpdQmD56cgACwrQHdaaCxW47P3kM/sTR5pjvXJ1Wx/U3J9u1f9O+HljRUwd9IqZ4gRjtmlfQHrk8GGOg1Zg+0bO3ifJTmvFOBVct5tL2C1xBaoiQU6WhI3Vi2HSZN6JXrYLjwLGCWdW1/bEi4cCcpRhRdF5tDy0lTl8jydLCnU8gnz3YeF/K94O8JGpBhYIGgX1J39HNmgtZugT0yTXH9h6eLbXJyY9d+2/F/TMKq7WEcr/WwmcFtmbeQZ7BA7h6RBy0w017/9QmJu8hbS6u1ZrEYBml8kOndmuIiA4Sp7Hn6IGv6nrs2hPsvKsuS/qWuF3SrLWA/w/asXmCqGbkke25WLUyd0x2PQkxSJCPdDmcwl0px0lW4GI01D7u0gAJQsw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REFWYXN1ejYxQlFGT2h6a3pydkg0VGpFdmpvdm5scmNmSXl3L2NaWFZWUUxM?=
 =?utf-8?B?UXlCVVdsYzJ0OW1uNlhyc1F0cWRGOWJjbUNCZy9GWkcrRndCME5SM2dIS3Zy?=
 =?utf-8?B?QkVwMGp5QnU2a2Z0WUFCWFF0UWJ3ZCsveUdZSWpmcTZhR2dUZEI2MEtvOE8x?=
 =?utf-8?B?RnVwZStpN0p2V2xsSmtYTjcvaFlpaWVOSVJRRklHTkNyd0FMcWVLSjZ6THJv?=
 =?utf-8?B?enNEMzJoZ2FKS3NZVDBUc2tFaXhYRVJ4OEtrcmJRalBSUHNLSER3amtDL3lz?=
 =?utf-8?B?TTNucVNKTWdVSEtJZE1Lc0dUUktOcmViczZMMmhjYng0S1lvNjhkbW94bmhO?=
 =?utf-8?B?ZTFIUUxRRitjVW10LzFldjhBay9zS2twUjR2L1dLNFFFYXhCc2pmbnhBOUJQ?=
 =?utf-8?B?QnM1c2t3N083b3pHYUhRQVltSnh3UnE3bEo5ZExBY0I2ZkpzYXhod3RWd0dq?=
 =?utf-8?B?bm1LbHVSQ3dqRjZBNWpHdk1kaWF3eVNtUkZJa1FraGlnaEJwNVczQ2RoMnlo?=
 =?utf-8?B?MFZiK2dyMnVOeHBnS2ZOVHRiWlBGRmp2dUxNQzVYRVFBWFRjazl3dG9pS1lt?=
 =?utf-8?B?Q1dGd2hPTSsrUHJ2NjYyWFhXcTcvT2M3YVZqQytGand0MGIySFVvMlI1OUpi?=
 =?utf-8?B?VjhLL0UreGFzT3J3OGxjc1RueWNkcFdwdXNDRWR0N0RIUFJueHJrU3RBYmpt?=
 =?utf-8?B?bkdOcHBLUzVoc2tFRFRTMS9pVzVjLzBsdW45N0k5dThISEhjU2wzcUxTYzJV?=
 =?utf-8?B?VmNtWTNkQnBQQnhEQzMwMWZ0eC9MUWNIZTNYVzdlS05odVhDMlFsNWJpT21z?=
 =?utf-8?B?Vlkxb2x0eDRsUFJKSEd0VUw4MTFKbm9Way8vWmRaYkZONFVIVGEreXN3OFQ4?=
 =?utf-8?B?eXhwZTUzYUNLSE1tRXlQNnlkNFZqUVBnZjNzOEwxd0lXUmZKMWIxYk1kMW56?=
 =?utf-8?B?RlVDUVArNlNjaFRwOGFWeEh3OXJyTlYwcGRpeXNkVGFsQjFXSHNNeHBaQ09x?=
 =?utf-8?B?bytRdVkrSWFMRFFwQmQrM0JrN1c0WXBOSFp4WkFWZEN3QXV3K01xK0FtL1VN?=
 =?utf-8?B?ZXkwU292ZnpPMzdmMGJFYUJWcUJxSnRBdXRNYTl5cGsxazg1Z09UYXFibjVW?=
 =?utf-8?B?bUxRelRGdmc4dU9QdUFCM1NzNFZhMXR4UGZQWXUrN1Myd2o0ZEtPTm1oZmhO?=
 =?utf-8?B?VVJOVFFkVGcyQUhHeDJ1RkE4aW5kRXlUZkdNQzRib1JOQ1Zyblc5MEdmcWoz?=
 =?utf-8?B?U2thNXZFZHNPaTQ2d3JHSGFNZUVaQWZIY3gvbFl3Si9WWWMvQTI3eFErblFP?=
 =?utf-8?B?ZGp6c3IrYVFnNWwvUlU1VGhCMkFKdEpPeXJGbndIYXFXZDhWOHRJS1dSZXE3?=
 =?utf-8?B?bHlOSGc5c291Sm5USGh2ekFUOFNoakxLbUhtbnV3UFJGUGJJVm9pRTZTYnBG?=
 =?utf-8?B?RkcraVpJSkh4Rm04Yi9aU0R4VUdRREh2dTZoS2l0c3dEL3ZTdVc4ZUZuaTJ0?=
 =?utf-8?B?NEplVkhGbTB3QlFtc0JvRVhlM2haa1ZXRVRjUDF1SDJDU0dzRzgxOGJUVUxP?=
 =?utf-8?B?RGtXNlJ1VXNyMDFuQXp1NHVIdFdubVkxU1gwbFhEUGI2elVHOGkrWUpISDJW?=
 =?utf-8?B?b3NyeTVqY014bnh1czJwRVpPTHpEdjJmSVZhVUV5WHZZRmZROHEwYklHU0g0?=
 =?utf-8?B?QkM4aHY4MmNXT3VSVGlEck1ocVZXZVl0VnNVemNUNUx2eC9DQUFJam9HNHBk?=
 =?utf-8?B?ZW1xZ2pqOS9lY2VoVGRzOEJRODliTVJ2V0hKelp2NVlmZGRTZjJZTHZ6bllR?=
 =?utf-8?B?b3V4U2dnSHV2REdzUmtnTlB1MnFWaGdqMFpQaWZ6d3QxOHROMSsxUk9OVDRJ?=
 =?utf-8?B?QWM1QWdqUlNObWZyd2hKVkdMUm5MNWVjcFUrN2lWdHJ2QUxLQUIxYXFmd1Mr?=
 =?utf-8?B?NHBDYUdxSkhDUGg3WHR6SG9iTHYvVytOOFJPYkxsckJwR1hVb0ZtQ2RocFB4?=
 =?utf-8?B?MzhSY1NuY2ZNclk0Z1lhTnZpbkc3OTl3VUIyd1c4Q2taU1BDYnNZclN1R2I0?=
 =?utf-8?B?dGIvTHhiUk10WURPeGxZaDRlNUV0R3Z0b1ZmS0Y3QmE0UHZPNCtzclZ3ODVq?=
 =?utf-8?B?YjJzWGNRcEd1emY1L0pQZ29ZVlpEcGFDcVJQdFdaWkhPQ1dUeUFzSDk1Y2RI?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20b76211-59df-466f-9319-08dc4ed76a56
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2024 03:30:29.1912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P+04+E3t+y8YhSkn8dwm9BIgUFuPBzaaiWRaxxPeNMdk3msZGWZ5W+SpUoy2lPRNHwxF64EMwnJZdLk9wrU8g954ASdZJXtg8eHxEa6h7wc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4799
X-OriginatorOrg: intel.com
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


On 3/27/2024 7:49 PM, Imre Deak wrote:
> On Wed, Mar 27, 2024 at 01:40:58PM +0530, Nautiyal, Ankit K wrote:
>> On 3/21/2024 1:41 AM, Imre Deak wrote:
>>> The DPCD OUI of the logical port on a Dell UHBR monitor - on which the
>>> AUX device is used to enable DSC - is all 0. To detect if the HBLANK
>>> expansion quirk is required for this monitor use the OUI of the port's
>>> parent instead.
>>>
>>> Since in the above case the DPCD of both the logical port and the parent
>>> port reports being a sink device (vs. branch device) type, read the
>>> proper sink/branch OUI based on the DPCD device type.
>>>
>>> This is required by a follow-up patch enabling the quirk for the above
>>> Dell monitor.
>>>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++++++++++++------
>>>    1 file changed, 16 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 516b00f791420..76a8fb21b8e52 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -1512,23 +1512,33 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
>>>    static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
>>>    {
>>>    	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>> +	struct drm_dp_aux *aux = connector->dp.dsc_decompression_aux;
>>>    	struct drm_dp_desc desc;
>>>    	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>>> -	if (!connector->dp.dsc_decompression_aux)
>>> +	if (!aux)
>>>    		return false;
>>> -	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux,
>>> -			     &desc, true) < 0)
>>> +	/*
>>> +	 * A logical port's OUI (at least for affected sinks) is all 0, so
>>> +	 * instead of that the parent port's OUI is used for identification.
>>> +	 */
>>> +	if (drm_dp_mst_port_is_logical(connector->port)) {
>>> +		aux = drm_dp_mst_aux_for_parent(connector->port);
>>> +		if (!aux)
>>> +			aux = &connector->mst_port->aux;
>> As I understand, we are setting connector->mst_port as intel_dp, in the
>> caller intel_dp_add_mst_connector so its unlikely that aux can be NULL, but
>> do you see if we need to check for aux?
> Yes, intel_connector::mst_port (always) points to the intel_dp of the
> MST root port, and aux will be always initialized for all the registered
> DP encoders/intel_dps; so mst_port->aux will always point to a
> valid/non-NULL AUX device. (In any case above we take the address of
> intel_dp::aux, which can't be NULL.)

Agreed. The change LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
>> Regards,
>>
>> Ankit
>>
>>> +	}
>>> +
>>> +	if (drm_dp_read_dpcd_caps(aux, dpcd) < 0)
>>> +		return false;
>>> +
>>> +	if (drm_dp_read_desc(aux, &desc, drm_dp_is_branch(dpcd)) < 0)
>>>    		return false;
>>>    	if (!drm_dp_has_quirk(&desc,
>>>    			      DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC))
>>>    		return false;
>>> -	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd) < 0)
>>> -		return false;
>>> -
>>>    	if (!(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
>>>    		return false;
