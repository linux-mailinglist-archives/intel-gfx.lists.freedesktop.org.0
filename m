Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D327D7C96
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 07:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0135310E762;
	Thu, 26 Oct 2023 05:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE43710E762
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 05:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698299689; x=1729835689;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JF/ScIGE0eDBpTb2sziFDK/h9inZpEgKQVPJREYmTXo=;
 b=CoKACRneHvk2dcophFiTQIhbA6QA4TN6BZt9+d+/bTcxqgtn+cOhVYkt
 vMmRwHjvW2p1zhd6py+6Ff5cNsA/Xr6bs/ru02sDmU83z5PZkWAgYE+iU
 KcmzhlxU7hgaNzcU9/xo0yreT6Ja7JcWVrDswKUvLdSr5aK0UreraHqsl
 5wSlxAop0HmpGOYk9x4qdsC0Gp46UdlNxC751SogTxQO515cMiSgESvLw
 KYKdCLOLnPPj3eCt4+r05bt/OpN9F41o1rFBDSapaEYvibGS03YztrOn/
 zBDiLtXmqb8YupHFgeTnli36aNS2mwBoDmX2hoGP492zZDqnkyvw2kscp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="9021933"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="9021933"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 22:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="708947251"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="708947251"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 22:54:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 22:54:48 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 25 Oct 2023 22:54:47 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 22:54:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 22:54:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzjAjILpip8w/eFJmpCbGhnrtEWfo4L9U5ygeN86g5GqrmOlnM2bdPyPn153G1M7Azm/v0FyXUiGLptyB4UDT/qQ+2yyZ3eDDz1xtboBAhuKciEVQ6FnDrTry/+WsifvGOUj9rpxXi9IxJe3QPRBUDAiLHyenfnvv9fZNo3MZcFwAuDKaAwvqYYKc6RdC4KYpMzPMwkP+3B6MmMISFQgy06p7A31yCBnm0FllS6obsvZVlJy59cMLiLcI/l1hp5/5U6h3GazH02upbw1eY/h38cN0YTMQJzFYWY7/HD+pF2cQQyaVYVPKhHbEMIMoUlvLhwCFhJ2KNIMK2xFht0YuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZK2EuAHY8lCWDDvLD5eDKBkf9EGDe1SsnlzK6g7JfeY=;
 b=Hyh2pUqlNU/1iqGK1rPgOfFsNkb0vFwqTddCEtDUFqcwCBzjgTiOcxViFO2gPLP2Th8qfjibHEQyYn16lsL8P+NMIbZzCwSomsJGrnU3hIHyqyFo4JkDwQVkmF/qZTExIGJK4XF32ZYEIT9+kOY20BhXCcq/tu2sihHSct8GJeXn3EPhDVIIsB0E2pq7Nbk3PMStJye3ghUa6GK9WX+L90XJBubybFGR9fOvyBqcR1KlPGAtYxV8Br83GvaKeaZs23C+B1coESTX3k3KBLOwhDoAgu8dEouaQUOahjjBrb2/eR1pAIw6cdJAXa67NE/fpBSQDNheizn7V6WT/QY2RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB8380.namprd11.prod.outlook.com (2603:10b6:208:485::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Thu, 26 Oct
 2023 05:54:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e%5]) with mapi id 15.20.6907.032; Thu, 26 Oct 2023
 05:54:45 +0000
Message-ID: <1e1777bf-561a-5f22-b578-9a20f0afd48b@intel.com>
Date: Thu, 26 Oct 2023 11:24:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20231025121318.2732051-1-ankit.k.nautiyal@intel.com>
 <20231025121318.2732051-5-ankit.k.nautiyal@intel.com>
 <ZTkPEZVq8aIgyUI3@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZTkPEZVq8aIgyUI3@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0138.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB8380:EE_
X-MS-Office365-Filtering-Correlation-Id: 051cb389-51b8-4ccb-8673-08dbd5e80e0e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ebwldk9lXrG+rXyTY8O2gqo0Dd5IbFFjh4ls8M21Y2XgE+yeC5jqTz6ETB/44Ylk+dkEG5tMJnPFS+S0J9hROGvndGpJnz34Nyla7hJ4A8wuQ59YhSsSNPDst0wh8941vJnDznmOLKvn4v3KKshItEHJfrEuHXzX+u/YiSG1rOUPJptLFzh8twYQswToBc0GUaM7QrBqbPqCtijvJSt2j3A7gs41UnluW2xy5i2ySeJOLqd6yK6UF1IsoB10NUIh5Laq+NMKX7F4cRHtBcQ6hsrbc1Oh6fT5WT2IKUM5IGX6xDTXcOquTk6eN+AlprhPQwyLqLUDui8BaimDY4BP9NqA3yFIBqgpQIaphJ7snudSaGOA/yR0dDXMzZuKCzQCVwMWWIFWgFvcoKV4xcySA/d56Yzf6C7l8o+QoX8luwuo96Zey5hNuLBotMiw9ffcvhxl4shAdo3x5eTShnz8BklDh/km+XwC0E3UpA7ks9fsbTfVGQWV0QTa6IM3TxQaNAM6Zlwocan2gYTg3JjqWn6pGoNF/zgA4LIbWK7yAB2CCMPfz3GWcVwae0H2Nor4n93k4PgaOF+8242nUOn6Q7g+BvR1rdDSnDs3/iszR8aus/BGNGh50FCJyx4Z9zZ7WhIcifc9yglFj5XzXW+DCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(136003)(39860400002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(2906002)(86362001)(38100700002)(41300700001)(6506007)(316002)(6916009)(66476007)(82960400001)(66556008)(6666004)(478600001)(55236004)(6486002)(6512007)(53546011)(83380400001)(66574015)(31696002)(5660300002)(36756003)(4326008)(2616005)(8676002)(8936002)(66946007)(26005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFZVNVR6RmhFWmdJS0w1QzMvSXBla0hpTnFRZHJxV0FETWVPQWVLcklTSWVV?=
 =?utf-8?B?ZEpOZVM1YUNCYk04d3ExQ3AwVnJUbzFSeGIvbGlEVy9QdE13ZlBuVUxuZmpC?=
 =?utf-8?B?N2IrZzJZSGlGOE9GdGQvakV2aU00SEZ6ZFhhd04zbjY3UFN4a1p5OTBrcXBY?=
 =?utf-8?B?dkxsRXJ6anROK1J5ZTFBeWdrTHBHcXpobjNNUEZoeDg5ZlhheFNBZE41T3pu?=
 =?utf-8?B?d2tqVG5xVzdhQk1pTVlzSXBmbzYzMnlvSXBDWDdOUURjSkJVZjFjZVVCRlpV?=
 =?utf-8?B?bjdtZGZRNkRjQ3NqemVQWnN3aGdHWUdLWEUrOVhKMlllcjVrYlBqbit6bjNY?=
 =?utf-8?B?ckNjMFR3MkRGTXFWZXFRenJQUzJQRkpwNktRcmRmV2ZMcCs3VGt2N2tPZFps?=
 =?utf-8?B?MGZJNmg0VDEwc3d5OEZwN3ZyZHRaNTZQcGgvWXV2RUMyVFo5b2hrckdzS3pR?=
 =?utf-8?B?YWdMUlo1bGN4VC9zV3NheTB0eWEvM2xZR2crTzlndWtxTlJ3aTlHZ01aOGk1?=
 =?utf-8?B?cnFvc1h0SmhWTG04TEJRc0FVRTVRa2pTMDdUUDM4S280WGs3TDhkWS9jTkNK?=
 =?utf-8?B?Snk3RVpkVWtNZW14Y0ttSmdoRmZNcU5JSmtvakdVUFY1VGlLNlo5VytERTdZ?=
 =?utf-8?B?bTFrbHFpRXBuOXMwejZMRTIxUUhtalNlYXdjNTh0a0Fwc0VJTTdlaW5PR0kx?=
 =?utf-8?B?OXZrYTAzS0J1WW9uQnJIK2Nxd2hsbFVPTlNjYTJ6Mzh1UmRITFVaNkprZDBV?=
 =?utf-8?B?QW16UWhwV2VDdTd2TlJaMU5Xb1BCZmhCdzFHOThLeVY3WEdFWkk1SEVySUo1?=
 =?utf-8?B?ejJ1Q2NMWVVFaWVtaGx3WVM0TURjS3FWSmFWY2R1T0FONGRQL0RYaGRFNE5l?=
 =?utf-8?B?TldPSXFTUE5TTUVld1d4UElQUEE5YlFkRlcxMFZnOFZrSjFxcXZwdzIwOFgx?=
 =?utf-8?B?bS9LamFiTHQzMUhQeXhtMFhlMFFrSUFhNFFGMEc1b09tL3RYUUp1dDRkMXJq?=
 =?utf-8?B?UEhPWkgvZW16QU12VzMyMXoySlJVMGt2OXY3Ri9MS2ZrblZ4dGFOOXkxZW50?=
 =?utf-8?B?RHZYajBzL2k4cVlsU3V6N1YvQUQrNFNQdE9PSmpFZlRTM29NQTlYNGRsZGRy?=
 =?utf-8?B?cVVuT3RaVzNWdkxud1BQbk5SN25BWGVRdVZpQyswdmVTWlhOa0Foa0VwRGhF?=
 =?utf-8?B?dXlIR25mUEJjSEZhZC9NRTN2aUV4dTV2bVB0eC9hYncyMzVtNTB3alFqTElN?=
 =?utf-8?B?c2srb1kzaFZDMENTL1BuM3crQ2RMd0c0OFRXd0ZiVGNwS2N2Zmx6OGZqSWJp?=
 =?utf-8?B?VmZjbkRTMkhONG9VUUV5ZFpaL1doK2MyMlhtUkdydWx0Y0E1eVJ3RTl4ajAv?=
 =?utf-8?B?ZmJ5bHdYbEw3QU1TRWRjVkdSaVI2cEZMTkZPMlV1dlB4VDljblQzTjR6V0Ew?=
 =?utf-8?B?cmM1cm9EUWtXWEZoR1BHeDl2eVZrT1lHY3Zod1VvSXZDZlliSEZXRTJ2TnAr?=
 =?utf-8?B?aTYzcFhDM1VqQlJiMlB4YXorbDJsNmdwUnNKV0h3Q0ExK0lORzNCZnpXcDJi?=
 =?utf-8?B?TzlIT3dpTmE0R2ZtVGNzdlVtc0VYZnhTSXlJU1lHVEU2Tk9ZVkRHVGhkT3M0?=
 =?utf-8?B?d1BLNVBXQ3drUkFuUFBjbjUyWElRcVJiUDl5V3dsaDZnQndNNTVVTW1XR2Fr?=
 =?utf-8?B?QTFLZStWYUFwVlZuakdtcTVETHVTb1RySHJwMGlCWngyemZWenVqV1dsNWx5?=
 =?utf-8?B?bC9IOTRONmc4aUt0NVk0dlZhdnVORVVzaVhOcGhCOE5xZHZ2NENnL2o1Ui9U?=
 =?utf-8?B?aXA4cE1sNnNib0ROZjBHeXd0Skdjem1iVVpDZm9tZ2dJOVlvYmN1RGFBaEJk?=
 =?utf-8?B?QTlGMld4UkNVU2NiVUMwRHhOSHpaTVRxSTZNbFFENXZnaTFyenhzeCthR2ZW?=
 =?utf-8?B?cFRqTjY0ajJQazdPS1FQa2tsV25TMUJFTmgzMnFrMm9kcHJSZEJibE9Tb003?=
 =?utf-8?B?YmdzYzhOQWRYVWp4NjN4ZnNpcnNrdnhxaklQdlZqeG1tSjdrYmJEaTZUR05R?=
 =?utf-8?B?enBtZlI2cW5Senh3VTVQMkVZZkx3TG5IT0lzclJZaktPVFZ3MzRsOWtpQjQz?=
 =?utf-8?B?QzloSE5wRnFTclhNRVFRQWljYTEzODhWZm5vNmlRbnNmOW5ob1gxMnV6aUN2?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 051cb389-51b8-4ccb-8673-08dbd5e80e0e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2023 05:54:45.2908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RKD/xW8rYne8AJvpyimG2AkxYu7oYEAYPQLLk+DfL+otDI6e4tadGZaU6511WR6EyLP82/WF4AVVHLjcgmeEKY9IczF7jqnOlmTvUmrcLEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Limit max_requested_bpc
 based on src DSC bpc limits
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/25/2023 6:20 PM, Ville Syrjälä wrote:
> On Wed, Oct 25, 2023 at 05:43:18PM +0530, Ankit Nautiyal wrote:
>> At the moment the max requested bpc is limited to 6 to 10/12.
>> For platforms that support DSC, min and max src bpc with DSC are
>> different.
>>
>> Account for DSC bpc limitations, when setting min and max value for
>> max_requested_bpc property.
> NAK. DSC capabiliies change dynamically, the property does not.

Hmm, perhaps I should remove the check for sink DSC support and have 
only Platform check HAS_DSC.

The problem I am trying to fix is that our HW does not support DSC with 
6bpc, but we are allowing the max_requested_bpc to be 6 bpc.

This can be a problem with some eDP panels that support modes like 
4k@120 which will always need DSC and when max requested bpc property is 
set to 6.

I am wondering how to avoid this. Does it make sense to have the min 
value for the max_requested_bpc to be 8, for platforms that support DSC?

Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index abc718f1a878..1935b9014b12 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -5907,8 +5907,17 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
>>   	intel_attach_broadcast_rgb_property(connector);
>>   	if (HAS_GMCH(dev_priv))
>>   		drm_connector_attach_max_bpc_property(connector, 6, 10);
>> -	else if (DISPLAY_VER(dev_priv) >= 5)
>> -		drm_connector_attach_max_bpc_property(connector, 6, 12);
>> +	else if (DISPLAY_VER(dev_priv) >= 5) {
>> +		int min_bpc = 6, max_bpc = 12;
>> +		struct intel_connector *intel_connector = to_intel_connector(connector);
>> +
>> +		if (HAS_DSC(dev_priv) && drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
>> +			min_bpc = intel_dp_dsc_min_src_input_bpc(dev_priv);
>> +			max_bpc = intel_dp_dsc_max_src_input_bpc(dev_priv);
>> +		}
>> +
>> +		drm_connector_attach_max_bpc_property(connector, min_bpc, max_bpc);
>> +	}
>>   
>>   	/* Register HDMI colorspace for case of lspcon */
>>   	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
>> -- 
>> 2.40.1
