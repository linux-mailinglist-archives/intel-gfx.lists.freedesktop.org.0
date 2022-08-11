Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0280A590537
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 18:57:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 694A112AED5;
	Thu, 11 Aug 2022 16:57:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C009618A993
 for <Intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 16:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660237051; x=1691773051;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=T26K7hz2zvAjs+AFXkwI1POMhsRZAux7wVPnrLPgiqo=;
 b=jdn8y0tIXq1WYUB9NZxDO6/GvZ1etF5ygdLLgz48+l7Fou4x3tmWxvP9
 N5a1wIuywXnLVBmokeLQXVQAi+eu+XGA5eLNl9uYZDQfSPOoDimHpjPSI
 DnBmgFV0VBeQIfsKVjZZN2wjydK+W5yNxeTro1TEmYnI7MVOcUIRg9qPD
 LbZq8gIokB0CfxHF9ls6Syo26L1jljiR1kYgUkdSckvhJgFAMvfPBwwlj
 DY1z9qyeSMEeSojEL6KVXKULWKXwz/zuy1JTBefi+eV2tWEp4qIy99qJY
 aLWuYBMjPFe4srmjXZgwJ5pNXHyxiTLSJe8ED50UGbqX4kkC4cL3f3omF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="317368564"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="317368564"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 09:57:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="634306874"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2022 09:57:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 09:57:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 09:57:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 09:57:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3vW0lKnPouxGcHwZMrG3do0Tx0z15j6nowK0EUfTcJieBnNve+heN10SF1E/QWi0MrnWlGjTLCYzv0KRCIr95RfzRvMRq+sf4bIg7AmA+LKfcEwqU9Yfvitgx7Gd4mqNHt5DtGIKES2oYUYIGWNQ052r9uF6j5+xKsJKAIcOohPdrTbm7yh2aRaenu+Sxug4VCzUwrcfOSqIfsy9rHrU0E4BJB+A57YSwv8fb/G7XKk/2W4gU7CFda7oD1xUR4v/Bn4wTHlQERUjiPjYqplumaT53VVl8WJFkRO2oxs0gBPx3lBHtPn1nLHy2to0Me7KNza486ojum+qyQi7zzPww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ps1CgmQijTH+w1IBnes/sXs/5xmK5b4xlUwCOyQXIoE=;
 b=YhOqxVdOpFORwIXtABhgHBILpvfm9Wfa8VjnMD+wfjrBUqhtDP35nc/V+jjJLGvN+AYGBvRlSQRA7leL8dz/pmQSRT+XRbGpmHuoqBm3tCxtVqC3hmNWgb7hrvXvYnzJUsDDfWnb8JZwFhpDGexpvmMxtrqsH/PBBxls+dg9wYXe9R/lFiS1IIzU/oUY3IxTfWlvCCjdHsrPdd3FkCmztqK6rEmlhhm9qKzEA/B4zphQsdT0mrhFPXWIG4flAaxeM6FY3b5VQfB1egSTctGraPbNTORaWKSpaBQgQHOm3Bpu1ShXVCx1tJJOd/0BL3NwGI6zqDdGApXtq5Ry3oM6Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SN6PR11MB3485.namprd11.prod.outlook.com (2603:10b6:805:b7::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Thu, 11 Aug 2022 16:57:27 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c1a9:ce96:31c:a7d]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c1a9:ce96:31c:a7d%5]) with mapi id 15.20.5504.023; Thu, 11 Aug 2022
 16:57:27 +0000
Date: Thu, 11 Aug 2022 22:27:13 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 <Intel-gfx@lists.freedesktop.org>
Message-ID: <YvU06VsWhfOQx3qe@bala-ubuntu>
References: <20220801234856.2832317-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20220801234856.2832317-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: PN3PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::12) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9fa001ae-a0ce-4450-5455-08da7bba91e8
X-MS-TrafficTypeDiagnostic: SN6PR11MB3485:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bfpApVBMVU3AkM13NIr5e+OLSLMHa4WlVMXaF8tecnbVV+IYZlOmkusE+66YKvBEYPIINAkBPvyt+bD6jbvXFCgD6YSwWVDwkn6HeKDgWk56LHj8t6xXiiWyE0gz6ZF9hFrXu991zu6nPKQxhpYO2IjMiMUPPLdMwH080hnhTrizQ6ZBHOW2J0f34jIb5HoXStH+Ulscx7dRGRTKWzGgjykZWI5qLVXzT7V7k1DozzDjELGsGro7GTDEn1KAWMHkWDpeu2UIcO0kpiI9SsEwqg9ppHywCgnzf3YCYIfoz6NUYmml4huIpQwgdllg8J5SSnC02BNHDi1HzTLf9W6dP8fmx0szpAYq5vdj3GB0viCtag6xWL+FgJodA6zaHP+XQFGyZJyjEsWe3VWdFaz7XyWFRoikGxSpRbEsAdXw8QT7SwtIOBCaloKUOXjZbswb0WOLe0DC0gYEZCqaruktJZMfiv3p5cFaQt8GdCeJs11NxR341u5b7m5Fk8Om6UgOlKcwBLYC/+VpM/OByS3vj84OdjCh+4GTv744sNwlgGN/jERit008JpRlkHQZWYxClk1aZT6khNjfzbILfPxDC3yECKPR+4bGLQA5IIcgrIsrPQhOfRFr7AXoI+5pyv9+z99MYlq63QeY65MMwf5pdMw1l2n9f5dwIN0vX3XlDajcGoglr0nzu/jymKPWThZu5et3Ef800PaqZJq3AybzQDOEuxtOvK9sG2jKLq0WLS/XQC7Fv2IYo7jhO8zTruGa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(136003)(39860400002)(366004)(346002)(376002)(396003)(2906002)(5660300002)(30864003)(44832011)(478600001)(6486002)(316002)(8936002)(33716001)(86362001)(38100700002)(66946007)(6666004)(82960400001)(6512007)(26005)(6506007)(9686003)(186003)(41300700001)(53546011)(66476007)(8676002)(83380400001)(66556008)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0wwS3RpZVU4a0M3Q3h5aFBHNG5JVytmUnZFTkdkWXB5bzRyYU1PcHM3VVN2?=
 =?utf-8?B?SWpLanZZbXJiU1oxbmFtOTlTODkyTThyUTlSM05odGhmdFo0Mnk4SmltcFY5?=
 =?utf-8?B?aFU0enZEZkpWOElmWld4UVd2L1NvMHdBZlUxU2c5eEpLMEpXTWd4WE54ekxQ?=
 =?utf-8?B?bkhtd3pkbDVCUUYyVk9sS3BBUzV6bjB6bWtDSmhxaFZHU1NMcFBjejBURkQy?=
 =?utf-8?B?My9nRmF5QUNNbU9MOE12c242ekNjZithUTJmTHRsR0k1MWhLT3hWK0MxdmEz?=
 =?utf-8?B?bHZtc29uYi9FNCtvMXF1S2NnVkRDMmtyL0xXcEI2NmJKNTk0emc4MlliWFFa?=
 =?utf-8?B?TGxpdllaRUVtU00wNEdiMVRpcGtCSjlxWU1oV1REbEpjSFNpR3JHUHRNeDlh?=
 =?utf-8?B?bU8wRlNEMXhwazR1YUlibG5lWVIwNnQvemY1dHV4eVdxNXkveU5yLzJuSlhR?=
 =?utf-8?B?OThFZnJyeEdTdzFLMU1hekRnZnI1aGMvUXpUR3JFSG1qb3AxbGZPY0NDYU96?=
 =?utf-8?B?MjBiTFVXTkpoMmgrZWthMnVpcVJMZWVHNG01VnoraUFvdmdONVduQkJNLzlJ?=
 =?utf-8?B?cXpFUHl1Mk8zb3NRL0dHZTNwRFBqcGlmTGJSRHAzVWVEMXV3SkRqOEhVRXNS?=
 =?utf-8?B?dmtVTUFWejQzSm0wNnBzKzUwWHhVMmt3NXp3ZVBrcVVBT3JLbitBVjcxcUlX?=
 =?utf-8?B?NlB5UWkwaE5Ea3FjUDM5WGx3cmpNb0Y1ZFJHQnJqcnZoVVo3N2hxajNod1Z0?=
 =?utf-8?B?MzF1TmwydkdXbGFOQnlnaXRIZkVmMkdHam5yZjkvOUdqd2pqdzlibVBXV04z?=
 =?utf-8?B?NUIvVktvNVh5eHc0cHZBcXNZNWNKY21CdVV0MHpYRXpKbWlFRlVmZGM3N3FS?=
 =?utf-8?B?UmhDcUxtY25rYmFub2NDRXpPWG4rUXlDNW14anBZK2lkeVpsVEtPSlFiZ3BU?=
 =?utf-8?B?eXAvK0dBVG1aVFZUK0hFY2RxWVovT09jNkFIYytVdHFCUDM1RHJ5QnFaT3pG?=
 =?utf-8?B?Z2RuSEU0alNDaktoVktpTFNNMlkzcVJsZzM0U001KzNqclY1cy8rTzNSc0F1?=
 =?utf-8?B?aFFZRFp1ZmtCT0NxN1pUaW0ybklWazFZcG4wQUhaMTJyZnhtT1NxZ0IyRUkr?=
 =?utf-8?B?K2dQcGNjSWhacDBBdmdDNHNFcFR1bCt2bVdwVTN0TlBhS0lRVEwvZi92NVVO?=
 =?utf-8?B?UXhPUWJoakJBNk9kVklCZzV4SzN2amZTaTMzVFVaL201Szh2QnA0bjhjZzZz?=
 =?utf-8?B?OVJpbXRMQ1N0ZThQSXZpbnU3bUZWV0JKRHZRWU5iYVRDWEVNbUxKOVg0T1o1?=
 =?utf-8?B?SGJyNjFnTjNwUENNcGtpRmdlSWpkd0dqOFY4YUsxSXZCc3gyaDhGSzJlZ1dp?=
 =?utf-8?B?NkZSY1EyM1NqVUdaUGVYWmpwb1ovWjZTUmlFOTI3bWg1SjlUVmsySnl3NUs5?=
 =?utf-8?B?Q0pNNFMzWjh1SFgreUttcTB0WndhczB1N09wd0ZNRVpyby9idDVMUXFjVElN?=
 =?utf-8?B?YkM0Mkp3S3kzWDVleWoyWXpkK2VzcnN1SjFqbDRtYWY2ZkVPZnoxSHlqTmZC?=
 =?utf-8?B?Q0xqMys2S3RoYW9uN3dWQWFqMlpqNTkyN0tHVGFMU09udnN0bkQvcGFUSFVO?=
 =?utf-8?B?b25pTXFOVjlGNEY4NGdNeStPdXpJaytDOWUzc01pOFBWWk12UkEzLzcycEhM?=
 =?utf-8?B?aU82dkphSlhwWGFkT2xScUVZeDQyQm40MndlMXBMSTFWNE14T0gyWEY4dkF4?=
 =?utf-8?B?NlZYMHdFUVNLdXcxQWRWdHFUZGlQZTVpVURzT0RsR1lFbFJ2dCtOeG5kTHhU?=
 =?utf-8?B?NGt0Z080dVFhRGxnVE1PbXpQNktyUXpYNkg3Y2FqRkJiQnpnQ0d4eGc2L05p?=
 =?utf-8?B?TjBLODFxMHBDMUx6VW81cE5SMC9rd2J3cUdENEtHVmg0c1d2cHgxazhXWlN1?=
 =?utf-8?B?MXR4b0JGeklYMWp5Z1JjYzFkSnl6dE90WXRCODZkNGNIWG5YaTJ5blVvRE9l?=
 =?utf-8?B?M0NOVTF3eWlWYSt3b3JGc1d6L210REpXUU15U3RxMXIzZGk1VHY5WENxVy9G?=
 =?utf-8?B?d2E0M2dkRjlGbklxZmxmSURiYXVMU3p0T0ZUMDJoMVd4VnNFZGVybmVyRHZQ?=
 =?utf-8?B?VWsvR3c5amhtenFoMVBKZ2NFZE1zV25CaXN1WDJ1aHNybFpVNHJUemlKMm9w?=
 =?utf-8?Q?Dz4YKPZ+acdRGlcpPtGVfic=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fa001ae-a0ce-4450-5455-08da7bba91e8
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2022 16:57:27.2620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HSgA03ljXALh/yjsdJLRLpiswEQJ4rA+jcu5Zi96izk1OJvueyeAwky/8dqTdh5m70wRByxBfHDpAuvBo2g6g2pVCwpzHMqHkY6jhxVzSz3UbPJ2uZ0SxLn4RsjMro98
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3485
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dg2: Add additional HDMI pixel
 clock frequencies
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

On 01.08.2022 16:48, Taylor, Clinton A wrote:
> Using the BSPEC algorithm add addition HDMI pixel clocks to the existing
> table.
> 
> v2: remove 297000 unused entry
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>


Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 1115 +++++++++++++++++
>  1 file changed, 1115 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index 0bdbedc67d7d..f75808e0c95e 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -518,6 +518,1085 @@ static const struct intel_mpllb_state dg2_hdmi_148_5 = {
>  };
>  
>  /* values in the below table are calculted using the algo */
> +static const struct intel_mpllb_state dg2_hdmi_25200 = {
> +	.clock = 25200,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 5) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 128) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 41943) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 2621),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_27027 = {
> +	.clock = 27027,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 5) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 140) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 31876) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 46555),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_28320 = {
> +	.clock = 28320,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 5) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 148) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 40894) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 30408),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_30240 = {
> +	.clock = 30240,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 5) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 160) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 50331) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 42466),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_31500 = {
> +	.clock = 31500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 68) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_36000 = {
> +	.clock = 36000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 82) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 39321) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 39320),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_40000 = {
> +	.clock = 40000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 96) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_49500 = {
> +	.clock = 49500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 1),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 126) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 13107) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13107),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_50000 = {
> +	.clock = 50000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 1),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 128) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_57284 = {
> +	.clock = 57284,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 150) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 42886) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 49701),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_58000 = {
> +	.clock = 58000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 4) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 152) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 52428) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 52427),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_65000 = {
> +	.clock = 65000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 72) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +static const struct intel_mpllb_state dg2_hdmi_71000 = {
> +	.clock = 71000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 80) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 52428) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 52427),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_74176 = {
> +	.clock = 74176,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 22334) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 43829),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_75000 = {
> +	.clock = 75000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 88) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_78750 = {
> +	.clock = 78750,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 94) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_85500 = {
> +	.clock = 85500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 104) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_88750 = {
> +	.clock = 88750,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 15) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 1),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 110) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_106500 = {
> +	.clock = 106500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 138) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 13107) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13107),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_108000 = {
> +	.clock = 108000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 140) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_115500 = {
> +	.clock = 115500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 152) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_119000 = {
> +	.clock = 119000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 3) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 158) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 13107) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13107),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_135000 = {
> +	.clock = 135000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 15) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 76) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 0),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_138500 = {
> +	.clock = 138500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 78) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 26214) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 26214),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_147160 = {
> +	.clock = 147160,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 84) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 56623) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 6815),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_148352 = {
> +	.clock = 148352,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 22334) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 43829),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_154000 = {
> +	.clock = 154000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 13) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 90) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 39321) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 39320),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_162000 = {
> +	.clock = 162000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 2),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 96) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 52428) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 52427),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_209800 = {
> +	.clock = 209800,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 134) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 60293) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 7864),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_262750 = {
> +	.clock = 262750,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 72) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 36044) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 52427),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_268500 = {
> +	.clock = 268500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 7) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 74) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 45875) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13107),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_296703 = {
> +	.clock = 296703,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 22321) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 36804),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_241500 = {
> +	.clock = 241500,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 160) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 39321) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 39320),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_497750 = {
> +	.clock = 497750,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 15) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 0),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 166) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 36044) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 52427),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_592000 = {
> +	.clock = 592000,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 13107) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 13107),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
> +static const struct intel_mpllb_state dg2_hdmi_593407 = {
> +	.clock = 593407,
> +	.ref_control =
> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, 3),
> +	.mpllb_cp =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, 6) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, 14) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, 64) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, 124),
> +	.mpllb_div =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, 0) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, 2) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, 3),
> +	.mpllb_div2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, 86) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, 1),
> +	.mpllb_fracn1 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, 1) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 65535),
> +	.mpllb_fracn2 =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 22328) |
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, 7549),
> +	.mpllb_sscen =
> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
> +};
> +
>  static const struct intel_mpllb_state dg2_hdmi_297 = {
>  	.clock = 297000,
>  	.ref_control =
> @@ -584,6 +1663,42 @@ static const struct intel_mpllb_state * const dg2_hdmi_tables[] = {
>  	&dg2_hdmi_148_5,
>  	&dg2_hdmi_297,
>  	&dg2_hdmi_594,
> +	&dg2_hdmi_25200,
> +	&dg2_hdmi_27027,
> +	&dg2_hdmi_28320,
> +	&dg2_hdmi_30240,
> +	&dg2_hdmi_31500,
> +	&dg2_hdmi_36000,
> +	&dg2_hdmi_40000,
> +	&dg2_hdmi_49500,
> +	&dg2_hdmi_50000,
> +	&dg2_hdmi_57284,
> +	&dg2_hdmi_58000,
> +	&dg2_hdmi_65000,
> +	&dg2_hdmi_71000,
> +	&dg2_hdmi_74176,
> +	&dg2_hdmi_75000,
> +	&dg2_hdmi_78750,
> +	&dg2_hdmi_85500,
> +	&dg2_hdmi_88750,
> +	&dg2_hdmi_106500,
> +	&dg2_hdmi_108000,
> +	&dg2_hdmi_115500,
> +	&dg2_hdmi_119000,
> +	&dg2_hdmi_135000,
> +	&dg2_hdmi_138500,
> +	&dg2_hdmi_147160,
> +	&dg2_hdmi_148352,
> +	&dg2_hdmi_154000,
> +	&dg2_hdmi_162000,
> +	&dg2_hdmi_209800,
> +	&dg2_hdmi_241500,
> +	&dg2_hdmi_262750,
> +	&dg2_hdmi_268500,
> +	&dg2_hdmi_296703,
> +	&dg2_hdmi_497750,
> +	&dg2_hdmi_592000,
> +	&dg2_hdmi_593407,
>  	NULL,
>  };
>  
> -- 
> 2.25.1
> 
