Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E446D9337
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EA310EB48;
	Thu,  6 Apr 2023 09:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F6510EB48
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680774605; x=1712310605;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2yFsOBr0ZYaxu40pBf3JYfNg33dV2BBqUMocTxBfAEY=;
 b=PWby1JJEhcK2Leot7aratPlxIV3VdUVJ/em0AhtSe5NMLbg8zYNsmg+u
 /ySKGVDEVzvURYgTAKxMBdYQugUQ3v+krgq1pVbCgAs2KrT0A6lNgYPqy
 jyOzH34/o1R6b5qla3XokmYn1GD2Wcg1WHQxTOarvY2EjJzXASRDoexWc
 hYV2TY81kFjkQv/eZKvz3ZkSPBV9LpjDzWmXpGavHPbnmnYqT2dy7Dy8e
 ihxvhFM5oJ6zgZbPFx5bsUWRtjInrgUx/N2vsq0Q128QNWp23bqsfRl7q
 Am/oShtkBETBr9tvjuuqyoLfUXv78oRk+F/Ahb37oKT8ijKFZcCkfVmp0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="344428093"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="344428093"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:50:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="689605442"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="689605442"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 06 Apr 2023 02:50:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:50:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:50:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:50:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gn9z90BEHLXJzUVcx1h14as5+o1KDFTj0vM31XDcZ/kR7nTV0lmPLOEYlbl1J51wcaNIbZ+Td9FhjMCQzvIDc9GolbLd7APNgAOEoPTOKVpbkiqnIzaItofHT+77kLKFJyqu6Wd0ILf2ccGd26aVomMvixiy5q+0Po/PR9Y9KVtDQehz4jS8DWuZ6pjO+YCJyCpTV62uoAfEYG33UIsSlQ/M3j5W2oCB6hRyAgJHLFoHAW6Lt+1fp7Nn8q+6Wx9Hj0vs1l0ag8Tf/qPOGrbFaPmEjzptPy6ro4KYmdBYKg+vz1uP1p2tHQ3k2go9EpylUcHvHpYItAVnNuMzZXBNIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iMtM+4OR99OSsyH9/gDRCJ09X7kwQKVLW9LPwcJeHSk=;
 b=FsBkG3Fh4yDjeDDq8myfoZ2tcRa4kKG1hgYUYsvl5XOG+Rpmt0235GPOCYIvPD4QFXkoiIfJCl0q632N+ra1NYA2JOt/o7+yOgQDHaqNiuLtX72CgM0f0CjrB8JLWlU/TIQn5smkCXHuNxk8N8CZ0gFl2uzwsiznAi0mp75eTMeYTigyWtaGXhf2qI7Fg7Vw51Z5yLf5X7BNfZuHLVDl7k1MLP2M4QxZU+q6XLGJxNWMAQB5Rp5ZvPOL31yf5HnfSBxTF03WEwTUz8B3mjxqT6C/N56CbzwcMD3873wn0LoIT6cLJ91K8nky+7jm2697YEaf65JZTHEU+Cd1kTBlyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6576.namprd11.prod.outlook.com (2603:10b6:a03:478::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 09:50:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:50:02 +0000
Message-ID: <db05a1b6-4135-5278-1854-1be2cd13be1a@intel.com>
Date: Thu, 6 Apr 2023 15:19:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-11-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0232.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6576:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bad837c-e605-4363-2bcc-08db36844a8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jwcptm6u9yrN3Wsccn/oHBdGXeeogYAqfw5PGYTu1EQPsHN7mlF0Fw/I2+AL46nwCZm3nr5qvZ95xqa3U8FOP2bCW8fNlfEDVIETmvOyk6qmu7fi5W5rvPW0YHIEoEhhUIA6cSiGVsMnswglE60tD8b8H4Cp3+YHCIopvbTqWAHyrwsC/67Ui2xfiFyp8opU98EwXYydBgI4YiE5Yjtl9J5V6oYA9gVKNF7rNch+HK4Lf3Ua2a6fPGuAV0eSvkCk3mxMD0OKRuCWpxEmUGv0jhjtwbfOxSp/LBJIR2V6pIUYqmesYuBmmHVN/G2cL/+5JHe7SB9zqeO+uxHncaj8aZEbAWPHnWEQ2KHz3/w4OAm6Si7cJb0AFsWZowBZQP0TpgeqKfy55jbaj8bLvKTAI7rs+rPPTwfu9GGSo8KkONN6bO/DnTCdF9P0laJh0RaJYTlfTI+MA3s8QxnUrBmZQDqubbHPznwX6t4UgFGAY5g2vp36TNGU0XsjN5MEyVnsjs59oy13hsldnVSSMVDH08SW0Hhz6pY869kZFgKq9FnRZbOrbCDIVUGBkq4Gy9U4PY56LeVI0AbQeG93OevucS64Qfo0bpgLakv5pdQDxl8U3ZGHZKgEHgeHcTl0ZAVBlPLXEjNKnHi87Y+dNNseCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(451199021)(5660300002)(86362001)(6512007)(53546011)(6506007)(31696002)(83380400001)(26005)(55236004)(66476007)(8936002)(8676002)(6666004)(316002)(36756003)(66946007)(82960400001)(478600001)(2616005)(6486002)(41300700001)(66574015)(66556008)(186003)(31686004)(2906002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0JYUE04aExydC9pYjRSME9XczlSWHNJY2wycFpxUHhreEdicWdmdzdvRUIv?=
 =?utf-8?B?UTVHVzRYWFhCUDA3NFBXOFdMUE5uaWw1ZUpPUStIYmxtcE95UStEZXBrRE8w?=
 =?utf-8?B?T1BlcmtZNStxYTV5akd3TUpsYXZyNnkvZk5xbmNtdm5yM2FSdEN5bG5UcWlO?=
 =?utf-8?B?ZHROZldGTVJpZkRmVmV5YSsxS3o5UDI1ZVBjMTZUd1RCUmEydDVremV0cUNw?=
 =?utf-8?B?dlFXSUlmQlIvQ3M4UWVLOHpBbFpnZzY5K05YZ0d0Z1UxOXY2MzlRMDNWSkhV?=
 =?utf-8?B?a0ZxRnJJVDBHQkVWb2wzSi9rUHVTOFg5YllPVHhSWEk0cUZ5V2tPS1FENGh2?=
 =?utf-8?B?UmUvL1ZUd252dVlFTTA1N2NzYU91MEp4SnEvTUlXMkdUWjRhMUtIbzBQaWFP?=
 =?utf-8?B?VDZOR3hNZDlqVVVvZnJOMnNyS2tPYnlYVElablVqaWtIM0h1clI5cE1nb2hL?=
 =?utf-8?B?cEpZM0tsV2UwcHhFNXVDNXNKaS91YXJybGg2a2hrUVYxeSsvTm9Mc3dmWVo3?=
 =?utf-8?B?YjFSY0d0ZzNOZUdpMEpRUHU1YkNELzVQSmplS0VzaFJtVS9WVm5CQTFNRW9w?=
 =?utf-8?B?bFVGV2ZvbGc4SU5UT0djNXp0SjRraS95dk9mMEg1THp3bEx5bTJsQzEwQVZB?=
 =?utf-8?B?UmVNcHlhM3RhMk55VnUwSTFHUG8vaHRHWjdmQWM0NGEyREJJOTVwVFNKYzdI?=
 =?utf-8?B?WENKUlliZEFZUEJlcGJiSk1vUVRaZlY2eGpPVUJUZWJWYXY2dUp1R2MwYWVB?=
 =?utf-8?B?aE1aQ05Vekk2SVl4bEVXQ0oyR1hQaE0wYzVpYTMrZlAzd3FRSE1NQnNhbFpw?=
 =?utf-8?B?VVllMzMreW1ianlveEZNdDdGdVVvK3ZrWVFLVTVaclJrbDRuNC9nYnRVNG9H?=
 =?utf-8?B?T3o3eVpHM1k1d3VCSG5zbUFNbE5BYjI2Ykt3eVFINkNSenNqNjdlbFZjQ09a?=
 =?utf-8?B?S0M0akorQzdtdmNXRFR4UlhZYjFYcDdWc2hHNTJUMnVjT2F5OUN4bzFwYzRZ?=
 =?utf-8?B?LzNvRDVYTllqaXMzeldNS0sydkJ4ci9JdE1Jc0xrZUxibXB1dFNZNWI1RGFJ?=
 =?utf-8?B?Mm85cFZCY1VXL3lNUTl4QzZzMmlUYmJsbDV2SVoxL0NOQzFaNVd6TWlrTVpy?=
 =?utf-8?B?SkdUd1dDRGdXQUExUEtYRWthTXBOUUNwM0p4R3gxQ2p6cnpoTFg1RElwd1hG?=
 =?utf-8?B?YnlxTC9HTy9wSzkybTE4VzBMWWJmODlpRlRGdHYvSnBWeWVPR3FFNk55MEla?=
 =?utf-8?B?N1Vrb2N5d2g5eExsRXEyWThJQmdJZmM3ZmVxbkp2Q1dKMG9vWU1xbHhPRHdo?=
 =?utf-8?B?RVhhcEZMWWg5ZDRCcFNGS0ltVVhxMk9wMm5yU1NjQzNHSTZtY0ZhNzUrTzFH?=
 =?utf-8?B?VVNSaS9tMkI5SGJlSTNPbmdkZWxicUhTUFZ6U2RhcGUrMjVjTzVoMlhTM3VJ?=
 =?utf-8?B?YVB3SVRRSHVHekNVVGVUaEZYeGF1cUtaWU4ybzdWa0tveEFQZGJTVmdtYS9v?=
 =?utf-8?B?TFRhZUN1bWpjbGt2QVNIV3BvK0Q0TGloTVdZWVRKTEwvUUFrWnFVYWxhWFJL?=
 =?utf-8?B?c2pkYUhZT2ltMkJ6cHRFMlZCWkJSdWpBYUxyVitkbzErdStpcjhtMU9tU3RL?=
 =?utf-8?B?YjgxU0VjV0ZSU3UxaGE4b25BMWlEM1pEazRTbTZhcFdjODEyNVMyYjhicjl3?=
 =?utf-8?B?K01ScmZuM2ovUzhidnNvRkJkTC8rQXp1QmppSWtmNEd3LzczUFRNRG93VE1t?=
 =?utf-8?B?NWl3SXF6bzJkd29QcjZqcDR5MmNuT0JJdzdKREdJdjRQZUxucTZIMkFDSEcx?=
 =?utf-8?B?WjRGalBwTjZlNmFpdk5zejNTV1B4WFdOVzM5elJGYzd2aVg4aE1USHBzY1d1?=
 =?utf-8?B?emhLdldibi85Z1c1blJLYmo2QytYbmhHN2phNHVKWHh0dUhSWkFKSnc0bWE1?=
 =?utf-8?B?bFlvVHJQTEdBaVhsTFhNd2N4anJVVGpKNnJwQWk1eUZOWnliSVdLamJqdlBK?=
 =?utf-8?B?YmRjVCtoaUZvSkliODJDdkdEbFQzREFRbHZVSVpIOENzQ2o1Yzlnc05LeWJs?=
 =?utf-8?B?cTJUMkFrdUI0MkR4dGhXQTVmdDhPTURDdFQwdWo4TTZiUEdsUk1HSUhTNk0r?=
 =?utf-8?B?MnBLZFBrTEdHL1J0K3dKQVVEcnl1UFJrRVd0ZURmaHZ6enNFM2g5aFZPNUdl?=
 =?utf-8?B?elE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bad837c-e605-4363-2bcc-08db36844a8c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:50:02.0796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3lhEZf2M/jhbBNbm3cuMCi+XPw25W16vjCToDFOoIyGyURbsRnHcwA9eiq5UYtnILNG+kmz9WVxkxhEvoQaygry75FXFujn1km0E2s4qvLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6576
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Include the csc matrices in
 the crtc state dump
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


On 3/29/2023 7:20 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Include the csc matrices in the state dump. The format being
> hardware specific we just dump as hex for now. Might have
> to think of some way to get a bit more human readable
> output...

Yeah if we can read coeff and print in decimals, will be really helpful. 
Can be taken as a separate patch.


With Checkpatch warning fixed (spaces around operands) while printing 
coeffs, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   .../drm/i915/display/intel_crtc_state_dump.c  | 43 +++++++++++++++++++
>   1 file changed, 43 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 766633566fd6..2c410ad53ccd 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -158,6 +158,41 @@ static void intel_dump_plane_state(const struct intel_plane_state *plane_state)
>   			    DRM_RECT_ARG(&plane_state->uapi.dst));
>   }
>   
> +static void
> +ilk_dump_csc(struct drm_i915_private *i915, const char *name,
> +	     const struct intel_csc_matrix *csc)
> +{
> +	int i;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "%s: pre offsets: 0x%04x 0x%04x 0x%04x\n", name,
> +		    csc->preoff[0], csc->preoff[1], csc->preoff[2]);
> +
> +	for (i = 0; i < 3; i++)
> +		drm_dbg_kms(&i915->drm,
> +			    "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
> +			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
> +
> +	if (DISPLAY_VER(i915) < 7)
> +		return;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "%s: post offsets: 0x%04x 0x%04x 0x%04x\n", name,
> +		    csc->postoff[0], csc->postoff[1], csc->postoff[2]);
> +}
> +
> +static void
> +chv_dump_csc(struct drm_i915_private *i915, const char *name,
> +	     const struct intel_csc_matrix *csc)
> +{
> +	int i;
> +
> +	for (i = 0; i < 3; i++)
> +		drm_dbg_kms(&i915->drm,
> +			    "%s: coefficients: 0x%04x 0x%04x 0x%04x\n", name,
> +			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
> +}
> +
>   void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   			   struct intel_atomic_state *state,
>   			   const char *context)
> @@ -325,6 +360,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		    pipe_config->post_csc_lut ?
>   		    drm_color_lut_size(pipe_config->post_csc_lut) : 0);
>   
> +	if (DISPLAY_VER(i915) >= 11)
> +		ilk_dump_csc(i915, "output csc", &pipe_config->output_csc);
> +
> +	if (!HAS_GMCH(i915))
> +		ilk_dump_csc(i915, "pipe csc", &pipe_config->csc);
> +	else if (IS_CHERRYVIEW(i915))
> +		chv_dump_csc(i915, "cgm csc", &pipe_config->csc);
> +
>   dump_planes:
>   	if (!state)
>   		return;
