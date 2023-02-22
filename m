Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B3869FBA8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 20:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB6610E3C3;
	Wed, 22 Feb 2023 19:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8939C10E3C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 19:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677092425; x=1708628425;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/Jc9tA4D9EeurtxV+kOMqdti31Xk43WgRYgxMJmHZJw=;
 b=BFTpeV7jk9MpeuJnxmQUAXIPfzKydpbRW3pv7njfFaMDguuVyX7dU4yX
 ybPE0t2iCiE5BoZrWuzpkYCfP/0lDOl0yfgijS822nLx8J7FUVjaGwjfD
 uZSRNf2Ysaco4c8J114Lcur1L4LHMMN9qVIAExxDyxaYQ0+m+A9i82yGt
 9K73KSHRxUV+15JrkboBrqUZUSngXhi+xLrRjr4xbNSsFb0mfDouTe0A3
 4u6ZDR0K6GTNDEj2kf8F94D3V6e/17b735hgJwzwVqPFic1uz4ygxefM8
 AArBqoupZIq2fN+OFW/knu3R0OkFMEggg6r0brPC+cN66WXHrABD8eeAQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="316744695"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="316744695"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 11:00:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="796015305"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="796015305"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 22 Feb 2023 11:00:23 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:00:23 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:00:23 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 11:00:22 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 11:00:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BL0SejOX8CJojV0gkZ5gT1lN8REbS2NjqxYnxSDB7Md7Gc1Zkfnp/C3VsI8j0DcddtV+ApxDjlxBUqeBEpJCS114yWspDMYLNI+pKFnInK3NLAZbh2FkHY3p3Hp1peke7F+49bnjdTiRF+yuwL40RNTkx/HbFG4rBc9v0D0lpOl3z/28yPUrkCb+smJz3rBF/o+fv4GjE/i4hiHrBAAIRjJb57ZZ60phIm3eUTA5Lwz9VdBHfmaghJTi1oGM/JfZ+aOlxpoKhJGFtKgL6FoDvRXf7TDY4/i+O2FLn4ZL0vhDx6Cm3ey+pq7DMihKKBgwyR5yZAIgxRwHzhXR7tAjLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Fz7rZQZT6kbOURp3QMVkSuqozN5yv+tMl1tVK0HlL4=;
 b=ifIurbps/v9sxWZsYDfu5WZdiYCbW2uGeFVtCviUWhR+7Jb2IzkOiY6MqZp0UUjk8ziYR+viV8WXXk/g6EHea/mW925wVmB5oSn01yseNx+MQMuS0fRvgUiNKuq7kFmL+3Prs9LWOTWWp4fbqX+WcMOMfKjSOBNEEXYfIDQHkCn1BA+Ai4gzQs0NXYPgLAvm7YicKfdwkenu2wF2T/ZUjnG21jZmWj2NKM5Naw/+H8pmrgGic52MZ03+zZKAolvV0tS27lU8Qo3EcxakNWo1tgEF7KmkjSMBiyzVyix/G9w/orwMfZyYpXuxSIoeG50kfDI9i2xcN4GzALvBdXIe+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL1PR11MB5525.namprd11.prod.outlook.com (2603:10b6:208:31f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Wed, 22 Feb
 2023 19:00:20 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 19:00:20 +0000
Date: Wed, 22 Feb 2023 11:00:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/ZmQVc8XwTsYldI@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-3-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230222073507.788705-3-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR01CA0021.prod.exchangelabs.com (2603:10b6:a02:80::34)
 To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL1PR11MB5525:EE_
X-MS-Office365-Filtering-Correlation-Id: 4419d9c9-cde8-4e4c-e75c-08db15070b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FpCDqupYUZqMGGgcHjamjzwBPrkNUpwonpF3P4c3KNFci+8ykrAbtFSMbETluaHbib+9Q8GFK2XVyGl0g40pkC1L4sx6Fl+06YxP3GrwQcHZDmRMTZ3Rb2pbB4SMP3c0mmc8AfGD2JgOQTKmpXbksnGwXBz8ijuySG6BPzoRt+U2KiY5fSoktWb9SSyttmnG85225RXHw8JfcetSvaaSxHX4Cp8TW//EMnPgH2UC/Ca2HGt5ehTY/Rv5TnW65wtH70J3GMVkrK/45+y77VVAAjqdnY/v8O6f96y5H50Y5bByzDCyIL5JrF+7EEO1lXLId69QIv6A5aPVCwNuvINnUw/ZF7/5SIoFxLFfmTguO4REiDBqgmIyp8qPJ+SKcm0qgaXWgk1wOEaJRAGaH+qCV42A8ujRFlqIeethW6jcWT/Tx8Db5nJDRQRE/ki70+gJYnM8PQKvw7Cb2RMM52CeqNRWNLZkXmV5lQAqy5JoRgcVRewxgV9mjy017aABeK+Pmbsbu/g5xVI2Dqn+b/9AAazY+vKGEq7hlCdmJC1wF40+mAyT3T+JR9aGlzd5N1TTgan6BdluJPS6qMSyOmp5CduxG0GR09d4TzeQIQZgtMHlToBAq/9kJvE0rInU3Ereo7fyoYYhV+KVGM2KVa0Obg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(39860400002)(346002)(376002)(451199018)(6486002)(26005)(186003)(6512007)(66556008)(4326008)(8676002)(66476007)(66946007)(5660300002)(8936002)(6862004)(83380400001)(6666004)(6506007)(478600001)(41300700001)(6636002)(316002)(38100700002)(86362001)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVhEaGUyekdhMXZhSjB3NW5EQW1ReTV2NkJPZGdrUGRVSDI5ZjNSSWlpRHo3?=
 =?utf-8?B?Yk4wb2dnWDZ0YUNxTWVuSGMzaXM5c2VoclBrRzFQaW5QZS9aRklRM09nK3pJ?=
 =?utf-8?B?emRuOUEwM1BTanF2WXVTSWNmeW1nMG9KU2d4aW1hSHd5YTBQaVJ4eG5UczMw?=
 =?utf-8?B?emZJUlVsZTkxa1FTalVBRTFGYTlGU2swMnBzU0xoa2NxTi9FblBnYlhoQmp1?=
 =?utf-8?B?K0loV3M1ZGFZZU9kV0lKV2Z3WUVSalBkSExnWnlOZlh5blNRNjgvTWYyNkNW?=
 =?utf-8?B?TmtSTDBZbkFZeGhVOHhVcmh0dFNudXIxZ3ZtY3Z4MXp0emo3clhDVTF3UUs2?=
 =?utf-8?B?NjhrYVZFRDZyYnBSemZyWVd2SHQ3dHVDSkZrV2szT2U3d3JuK005akhuVVNh?=
 =?utf-8?B?N0tNZ0o0SWhBUDA0Z29tUlpmTGZaNmsyQzU2UmJaak5tSDNoQWozUkZwOGZv?=
 =?utf-8?B?WHMzcU9IYXBwWHZuZlVoZnJwUjc1TDYrd0FvUjRTZnpSckFFQWw3Lyt0UmJo?=
 =?utf-8?B?U3VWaUNHYUFFUm5KN0lTZHVLMGFsZFh6RDJ6amNZaEx2SlgwQ09RemlBb0Fj?=
 =?utf-8?B?dlR3ZUhUaVByQmpmUVZkTXpKRUNpclZRUm5jZU1KVVVuWkk0R1VQRHV2ZDZj?=
 =?utf-8?B?WVNnMDZtWkxUTTRxWjF1SnZpMVdQNldrMWcvVlNzUXA4YWJiMUtoWkkzcjJL?=
 =?utf-8?B?VjIyeW5FUUhuUkJRUkpoQ1hTcVBlOSt5U2xzY3dsem1xRlBjNng3cWFncTg1?=
 =?utf-8?B?cW5oVkhIVXRYOWFoUTdwYWZ2VlY0bitWWVBOR013UW9lTVVEU1lWc083a0pG?=
 =?utf-8?B?SHMwUUVSZUkyZitkYUZjWTl5UVdjMlYvVTFmRmtIMy9JL3FGUU01N0c2TlZN?=
 =?utf-8?B?YVdBc3FmWHBIVll5eG5kTTJibXNVTE9OaUJUS1FSNVVRZmttKzdUeEtiZVls?=
 =?utf-8?B?ZUpvTHQ2VUxrZ1RsREZoQ1prZmhlcXNNRXVPc3lXU0ZDUXlIVmFmWWVsUy91?=
 =?utf-8?B?aUx4QVZzNHVuVDJrRE9pRlpKc0JHdWhuRU14WEVQOFEyOGRZVVltT2xDSHdu?=
 =?utf-8?B?YXNNK3drVHFDYnV6S0VCU29hMVFobzN4eGlTaGRFSnFLampVNnRpcFlZMXZp?=
 =?utf-8?B?Ti9HNExzM1FMbExiaTRJRUZxek95Q0IvNHFvcHlhZXJVZHhVT2VUVDdmYVJo?=
 =?utf-8?B?dTdBcnhYYk5mRTBpSjZpUDJBeWNiYkFaZ0o2aXhyQ1RoMkFleERabXFQR2pm?=
 =?utf-8?B?QU9jOUlFanNkNW44WW5vQjZDNGhtVjFFam5rUzRocEpIOFpXZDhseE1uUDRX?=
 =?utf-8?B?VWc0RDRSYSsxbGtoMnovbG91L0dEQ0JEMmEvY1NicXRoRjBDaFlPSWlLTDAx?=
 =?utf-8?B?VThuUUFvWkRaQ0RlUHdsSEFnckhVQ2dyTjlzV21KWUdYekQyNW1HYXZ3VzZX?=
 =?utf-8?B?dTRNb3dUaDJZN0hMamJxQVBmTXZ4aFJmZUpvTGVndFV0MDBlTWhIeTlmRzZN?=
 =?utf-8?B?cDJwSG1nWm82ZklIZHNNcUN5QXR5Rk0ySkRKWjVkdzY5K2FleHV2bGFQajhK?=
 =?utf-8?B?OHlIeUpRNW9UNnVCZmpoQW9aMkhROHBCRnlrUHBJb0VRVVlJVkx2M2VOQkxk?=
 =?utf-8?B?ME83c2U1SzFxMWVhS0JHSXlsNFlWN0tPQWh2U3hBSmhVaG95aU9SaWVJbTFO?=
 =?utf-8?B?RnQxODdldUtwMVFkakUwejdhZmwxdm52TmNEWURqUHZqZzhmWnd3NW81VVFF?=
 =?utf-8?B?SHJYRnRZM1B0S0c5ajVaV3pYaHBYYjYwQURtVjZHYkR6b2Z4Y21HK0wrRnBP?=
 =?utf-8?B?Smx6ZHFjd0ZOZzZ0RXoyWW4xbDlacW56VlRhUTRXNDhubXJualVydXBKVis5?=
 =?utf-8?B?c1YxTktCNnZYZGJPR2ErMHRNbE5xaGNZaCs1Kzkyd0VJZS9FTVVsVCs3ZDcr?=
 =?utf-8?B?QUtZSlpDc2tpVFFaditGRmtKMmY3VmNmd0JOQ0dySUI2OHhzZE01cTBBVWw5?=
 =?utf-8?B?TVdGZFRaTGJ5OC9PbU43MTA0RzhyS09DcER3Qk1oRTNLQ1BTZU5vQ3RHNDV4?=
 =?utf-8?B?TFZDZUtqdXArV1p0L1lZVC90S2pRT1VvUmVEUmJhelFJU0lvYXVIaVE2TEpO?=
 =?utf-8?B?ZG51ZjlzcHJ0QzI4UmxBTGo4QlI0VDU1YUlqakp2bFQ5SDFPM09YSzMydkxC?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4419d9c9-cde8-4e4c-e75c-08db15070b80
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 19:00:20.6427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JPL4IwtnudQs7uN8V4194hvTYwu3V5MDCH6Ps+z19YYiCSv0hKEBFXhRP6x6ptkWwwoHJzkJ+oZt8eR4oLtD1BEPJuyR++1NH1mfW4/AhuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5525
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915/gt: generate per tile
 debugfs files
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

On Tue, Feb 21, 2023 at 11:35:00PM -0800, Radhakrishna Sripada wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> 
> In the view of multi-gt we want independent per gt debug files.
> 
> In debugfs create gt0/ gt1/ ... gtN/ for tile related files. In 4
> tiles, the debugfs would be structured as follows:
> 
> /sys/kernel/debug/dri
>                   └── 0
>                       ├── gt0
>                       │   ├── drpc
>                       │   ├── engines
>                       │   ├── forcewake
>                       │   ├── frequency
>                       │   └── rps_boost
>                       ├── gt1
>                       │   ├── drpc
>                       │   ├── engines
>                       │   ├── forcewake
>                       │   ├── frequency
>                       │   └── rps_boost
>                       ├── gt2
>                       │   ├── drpc
>                       │   ├── engines
>                       │   ├── forcewake
>                       │   ├── frequency
>                       │   └── rps_boost
>                       └─- gt3
>                       :   ├── drpc
>                       :   ├── engines
>                       :   ├── forcewake
>                           ├── frequency
>                           └── rps_boost
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_debugfs.c | 4 +++-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h     | 2 ++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 5 ++++-
>  3 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> index 5fc2df01aa0d..4dc23b8d3aa2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
> @@ -83,11 +83,13 @@ static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
>  void intel_gt_debugfs_register(struct intel_gt *gt)
>  {
>  	struct dentry *root;
> +	char gtname[4];
>  
>  	if (!gt->i915->drm.primary->debugfs_root)
>  		return;
>  
> -	root = debugfs_create_dir("gt", gt->i915->drm.primary->debugfs_root);
> +	snprintf(gtname, sizeof(gtname), "gt%u", gt->info.id);
> +	root = debugfs_create_dir(gtname, gt->i915->drm.primary->debugfs_root);
>  	if (IS_ERR(root))
>  		return;
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index bb4dfe707a7d..e46aac1a41e6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -42,6 +42,8 @@ struct intel_guc {
>  	/** @capture: the error-state-capture module's data and objects */
>  	struct intel_guc_state_capture *capture;
>  
> +	struct dentry *dbgfs_node;
> +
>  	/** @sched_engine: Global engine used to submit requests to GuC */
>  	struct i915_sched_engine *sched_engine;
>  	/**
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 818e9e0e66a8..6eefbe6e3519 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -542,8 +542,11 @@ static int guc_log_relay_create(struct intel_guc_log *log)
>  	 */
>  	n_subbufs = 8;
>  
> +	if (!guc->dbgfs_node)
> +		return -ENOENT;

Is this patch incomplete?  It doesn't look like dbgfs_node ever gets
assigned, so this is always going to bail out early?


Matt

> +
>  	guc_log_relay_chan = relay_open("guc_log",
> -					dev_priv->drm.primary->debugfs_root,
> +					guc->dbgfs_node,
>  					subbuf_size, n_subbufs,
>  					&relay_callbacks, dev_priv);
>  	if (!guc_log_relay_chan) {
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
