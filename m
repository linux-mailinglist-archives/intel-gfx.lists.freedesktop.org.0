Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636645AF4DA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 21:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BC510E1A2;
	Tue,  6 Sep 2022 19:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D164710E1A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 19:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662494069; x=1694030069;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CyebnkSaQwuqfaJfh4P3KO2WKQYyfN50O0sVW9Yavd8=;
 b=SMtEu/6UX4cowA9SnXLduyJTEB8AfytCcdwN5GOG/MkQL0ukThie48pW
 Di9so9bOlFqFA4qxCa+uX6R1ugAkoq2Z1O5e3JFU6k+TqdYDg0YiwUGMV
 DLocuefa1+sdIMZYWpyvtRVndcGy3ez/D4gUZi9SnF6TXU9PZth+RGn+K
 ogVRUH75Az9SrZNczNKWnmkiqxofBRCmzn76ZIp0kTfpF1ryYW1sAXIHk
 WN0LxRO1p2TTnAON6UQyUy+CyrCApOmie2EwB8Ko5l6tZkzRer/NxH48N
 6kv7nJKItqiSlCdKpdEk21AsYE3R10SAT6FB9GT7Ldgu+UyPh49dhAjko A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276430590"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="276430590"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 12:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="675843470"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2022 12:54:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:54:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 12:54:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 12:54:28 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 12:54:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OyHOzk9FHRWVQtX/KUIXH+D2vAYc1pFJu4DfAvXmCVLyokK9v+FbDbdW3itnuKweGepYXUDgAJHX0xcJuw1tZ5XoqBqifs+gBjIIjoIVLMCSwSqXrKnZJRvFg7G6CxhG79+cciEtGhObZFZL/QGelmrdBU2FYMaAEwAUQ1FrwgJ9BX4Gkk/8GRpD19cOOXvESfrrk2UeyLRWb8GKicgdX1sjmbhtcHdW7JuMABbKQMxV/QcqG4yhy7C/Cg0stydd8x0w2f49xkxWm1TFllMWGjFBkeqSEqLJuvJvj6GwMx2xtTrayg6mp1dxVx8vbQuiWyDx/qf7qe8/5GA6a8qGGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3Rzf4DiPEWpgbOMV7stnfUI5J90W8swF0u/50r5xiM=;
 b=mR16yiNmgnCp4aLA4vsQpEUNNra3soiT0aR+khw7+SpdyFtzrFQ3rp4jzVWpoIOKyX1G5uXpGdyAPwKPduCezb74yCCYBnWP6BIi95Wuhq/S8/70ZFDblLsdYV9cu4j6h91XLKoOXPMgoRtyN8XIZAOcqwVQ3sqoufF5AN5ZjnDzKtiXIogznPnBTZzl0GTLnIYHVWCv+W6BW4e88tzQ39rNxF78MI40ooLdbO92pmRKJmVVLTXt0OPfqNxtwfkZ1m9E9I1K5c5AD++6yXdbvVWJDtd1bHKPOlegk2m8EZGlFDh9eUs6igqPvXQc17u6avkZgKTsYygWtgf7ple9hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1562.namprd11.prod.outlook.com (2603:10b6:4:6::15) by
 BN0PR11MB5741.namprd11.prod.outlook.com (2603:10b6:408:161::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 6 Sep
 2022 19:54:25 +0000
Received: from DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4]) by DM5PR11MB1562.namprd11.prod.outlook.com
 ([fe80::74ac:21b8:1f17:9bc4%5]) with mapi id 15.20.5588.018; Tue, 6 Sep 2022
 19:54:25 +0000
Message-ID: <1f36b51c-f0f3-e564-b635-f96e3a38e53a@intel.com>
Date: Tue, 6 Sep 2022 22:54:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-9-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220823204155.8178-9-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0091.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::11) To DM5PR11MB1562.namprd11.prod.outlook.com
 (2603:10b6:4:6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4fefe3fb-828d-46f0-ecae-08da904199e2
X-MS-TrafficTypeDiagnostic: BN0PR11MB5741:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tdn/eGI/H7M9dtbYInNhFOlyEyTxXTvPPzq1+16HDXnR+ePVg/3ZsiI70ytknIs0ZGWSY20b5McLCAmKIJvW4MI7wa+pYJN8lZidsZy1pxffOTxqkYxh1SNvrCfGEF11Z2bR0xBA7VLGpFs6x56dpWIeN1HIHjsHnc0OJB6WXHdu67pIr9IOBrbTGAQZAMrWtNgN/LoG7pTlH1EJ89PsMzgakrpNKiS8zooLypPtkBtenMMyB9fVQzYP4Ql6p4oWHBmcfK9WrCxrXfruSUBtax16vc31Wa3m4a2SkdHK4l73/nnh1kNxVsunivmGb07jLjIfdKiTJEaZQurOedDQ8fhNsw8HFFtUE1CwWYF8IH+s6cpeGuFLLvIiatNdde8e9YnolswxpCS30+uRPeOB7X5wSTkeI1sR1mhjIQGcTAf0+dqfIQRXHqpigGxrV7y90fcoYo4Bo/0lDnebDOe1KPKPJV3d4MXGYzrhteoFjyR24vHWLnbnvyrz3N6Die8lmafH4hbGDJYklg2oYeeStD6jkb8JM5xZl/8m+5O7LdJiNB7TpGRHNx77jY1+Bt+uy6NwFu4ryYlU3QuC8Ob6L7VZM6i99Uiktrv/879GWqcq/TiRKNYJ7pi0B+iTHbh6LqE2RhuGqk2Q7fNdlW51dmI4GgnUu+HA2ampvwtp+zRClpoCZbQP3fxgTVfkAGGl82aeLtnOKcIykMrL9WMQuSjzALRBlMjphMa/Yp6AzykDHiGLuqI/GnIk1chzaYlOy9sVFeWXs42ORV/prwS3VWPUNxfXhzNQ4sMhPPKdWMM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1562.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(39860400002)(136003)(376002)(396003)(41300700001)(6512007)(6506007)(26005)(2616005)(6666004)(53546011)(107886003)(186003)(4326008)(66476007)(8936002)(2906002)(30864003)(66946007)(5660300002)(83380400001)(66556008)(8676002)(86362001)(6486002)(316002)(478600001)(31696002)(31686004)(19627235002)(36756003)(82960400001)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2JlREdQZjhsOFUvOUZTMGNoNzhJeWxDUFJZdnhIQTF5bVRrbHIzcmNrc2s1?=
 =?utf-8?B?V05vdDRYQUdIQUZRRzluRTRXTlhCMUFaYzhaU3l2M0R6QmlyaVlodE5FejV6?=
 =?utf-8?B?YzF1NncyVGFDQ25RRXNCZU13YzFIMFBRTFdjZ0xuaWl0aC9PaDlSc0g0d2p4?=
 =?utf-8?B?UXl1eXV2eWZoVXFvZmR3UGpucXBQRGd1MFI5c2N0czQ5czRtWnFnYkJIU2Vs?=
 =?utf-8?B?aW9sdjA3VERkTFpWb2dOd1pWU2tnZFhBQVFBc2g1ekg2WnpndWh3ODlPWDA1?=
 =?utf-8?B?U05BQTFHTGZZSUtzblEra3hXTWQ2SHMydkloUlQ5MEgxZXA4Snk0YmdhQlRu?=
 =?utf-8?B?eGJPWmxtZ3B3T0lUdmVxcGptRlVoUVIvU3A0M3FIOUhNSnNJWnVUcFFpdjJw?=
 =?utf-8?B?bWhVbi83Y21iOUJXYTdNajY3QmI4Uzl5WE9RbFY1RmFiOXE5UCtLMlNZT3dF?=
 =?utf-8?B?RTFreDZYNTgrTU5yYjEzZnZBdzl3VGtQaElwQVdiK1ZJTG5ncmx6c0FYMDBy?=
 =?utf-8?B?ZS9XWkhLMlVQa0NkUEhzbDc3bjMvSW9zdWluYkhDaWdFb2VzWCtuMFN0Zmpw?=
 =?utf-8?B?UlY0Rlc1b2hLZFZFcDBwVkdMT25lejcxVXlMZTA1djFIb2dtN1FFZ1lHV0lH?=
 =?utf-8?B?TE1XUnNZejVNOGViTGhoYzZ3ZGhPc05Kb2VnTE8zZWdHeFZ2d1VwbFpyQ29W?=
 =?utf-8?B?MW9MUGtPZTBTTE1LQkZicGEwUzJLbm1ZRnk2Qm9ySzJmUHNrZ3JiVFJnWjB5?=
 =?utf-8?B?Q01SSTdKeXcvREhTVTg2M1lKSXdqSmFHaFp5d1A1MkdrZDNLMVQrbVZxMDVi?=
 =?utf-8?B?dVpGRGhPZmxSSTBzVU9BT0p6bWNnSXJnQXp2K0FtcTBjRWNmdkRKSm1aekoy?=
 =?utf-8?B?ZGViLzVXOWkzMDh1ZHliRDAwMHF2ZXlzNHFra0g4RG42c1RUdE05V29VZ3Bx?=
 =?utf-8?B?TVJ4elpEdUhGdTA2OXYyTHNsQ2dDMEZvZW9XZGFmeEhpeGU2UFVOS2VPeXBC?=
 =?utf-8?B?OGdtM0d6L0YzVGg3QTFobGVReEN1Q0VuVVhINmMzbktyS0hFMS8zY2VlVWVj?=
 =?utf-8?B?cndOTEJ5N2J2a3l2cjlRL1JzM0lZcm5CMnFWZGMvWkw5NDJXdmRnQ1E3Wnhi?=
 =?utf-8?B?dWdTU0pTTE83YnlhaTl2aVVFYWZBV2RWazlTU2FIMTJlV3gwTEpyaUswMlEx?=
 =?utf-8?B?bWw5eGZuV0JJbVM0VGVxcVdKR1NDSnNHVjZ0Q0pxL3Z4ejVpMG8wMS92UTBK?=
 =?utf-8?B?MG8va2ZJMEs5MkhuYU4zZkIrSGpKSmh4bVprenBmaHl1OGp1cWkwdGtnLzF3?=
 =?utf-8?B?Z1FtcjUxd2FoNG1pSFRxRU5abk1FYnpCWmVvelhZKzNjcTNlK3BEc2hpZi9W?=
 =?utf-8?B?TG9hRG9zNklmcjJPR2NBR3J1K3VQcUtpU1Z3R1pPV3RqaE41c2hRMTB4U3VU?=
 =?utf-8?B?UlYyMEFuSDd6NDQ4b2lQcEVEdGc2UGxGeUVtaXo4ZFFKSGZjUStMdnVMTU5t?=
 =?utf-8?B?RW82SHVQemFZZDZJeStXaUlKeUhidG5MUHhlZ0Rhd2JZZ0E0VFZ0dUhqOVov?=
 =?utf-8?B?Yi9FeXN4QjY2cDlqVEN6aVYxTlg0UXdaT3c4a21xMXZNR3lyZmIxR0pvSElM?=
 =?utf-8?B?OTVxRVZycjVCQVREbmFBbFhYS09FWXh3aCtqOWEybUZwN013UlNWZ3FuK1lE?=
 =?utf-8?B?RmZIcXo1WW95MGNLcjRONEJ6UVYyNldYZEh1MS9MZHF5QWRrR0hHaloyQVBk?=
 =?utf-8?B?ZW9lVFlWM3A4bG1NSU0zVitJRzRIZzRUV3NkT254MjYzVWNuc3dQUURkUDV3?=
 =?utf-8?B?VHQ5MndOQ3diSkxHaUVZbWtSdzEwdnBjUVZFYXZvMHRXWktJUXdwOStBM3k4?=
 =?utf-8?B?RFAxVjhTYzZyK1NqUGl0U0loNi9GL0tmcUl0TVJqcVIzOG4zT09yYldkTktZ?=
 =?utf-8?B?S05oQnVHa2UxS0tqcklILy9ZbDZmbHV1RHMyVkxIY2dQOEUvMmxPQWo4VlJh?=
 =?utf-8?B?azZhYjFPbGw5RndHY09CaGF0NnpzNFB0MjZFbm8vdi90clBBcDM1RXZqVEE4?=
 =?utf-8?B?emc1VlBTOXQrWTFEMDRYblZmWDl1TGxGQ2VKU1c0Q0dWc3ovNGR6NEJoU25q?=
 =?utf-8?B?WTJIZDlub1dvLzkzdXZNZG9RUThnRTJqd0lmdUM1dU04Y0JSU1dKSWlpTFdZ?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fefe3fb-828d-46f0-ecae-08da904199e2
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1562.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2022 19:54:25.7749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E5LWITeyPi6QbVyQb5rde94KXC14szSDXFNgT0OwV826hhRpV9dc/tapghvO7Nxn+m7v/R9gP/HB8LmO1hG+lQq6hvvb7khAB5gl+UfuQp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5741
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915/perf: Move gt-specific data
 from i915->perf to gt->perf
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
> Make perf part of gt as the OAG buffer is specific to a gt. The refactor
> eventually simplifies programming the right OA buffer and the right HW
> registers when supporting multiple gts.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_types.h   |  3 +
>   drivers/gpu/drm/i915/gt/intel_sseu.c       |  4 +-
>   drivers/gpu/drm/i915/i915_perf.c           | 75 +++++++++++++---------
>   drivers/gpu/drm/i915/i915_perf_types.h     | 39 +++++------
>   drivers/gpu/drm/i915/selftests/i915_perf.c | 16 +++--
>   5 files changed, 80 insertions(+), 57 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index 4d56f7d5a3be..3d079d206cec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -20,6 +20,7 @@
>   #include "intel_gsc.h"
>   
>   #include "i915_vma.h"
> +#include "i915_perf_types.h"
>   #include "intel_engine_types.h"
>   #include "intel_gt_buffer_pool_types.h"
>   #include "intel_hwconfig.h"
> @@ -260,6 +261,8 @@ struct intel_gt {
>   	/* sysfs defaults per gt */
>   	struct gt_defaults defaults;
>   	struct kobject *sysfs_defaults;
> +
> +	struct i915_perf_gt perf;
>   };
>   
>   enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index c6d3050604c8..fcaf3c58b554 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -678,8 +678,8 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
>   	 * If i915/perf is active, we want a stable powergating configuration
>   	 * on the system. Use the configuration pinned by i915/perf.
>   	 */
> -	if (i915->perf.exclusive_stream)
> -		req_sseu = &i915->perf.sseu;
> +	if (gt->perf.exclusive_stream)
> +		req_sseu = &gt->perf.sseu;
>   
>   	slices = hweight8(req_sseu->slice_mask);
>   	subslices = hweight8(req_sseu->subslice_mask);
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 3e3bda147c48..5dccb3ffffc5 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1577,8 +1577,9 @@ free_noa_wait(struct i915_perf_stream *stream)
>   static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>   {
>   	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt = stream->engine->gt;
>   
> -	BUG_ON(stream != perf->exclusive_stream);
> +	BUG_ON(stream != gt->perf.exclusive_stream);
>   
>   	/*
>   	 * Unset exclusive_stream first, it will be checked while disabling
> @@ -1586,7 +1587,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
>   	 *
>   	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
>   	 */
> -	WRITE_ONCE(perf->exclusive_stream, NULL);
> +	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
>   	perf->ops.disable_metric_set(stream);
>   
>   	free_oa_buffer(stream);
> @@ -2579,10 +2580,11 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
>   {
>   	struct drm_i915_private *i915 = stream->perf->i915;
>   	struct intel_engine_cs *engine;
> +	struct intel_gt *gt = stream->engine->gt;
>   	struct i915_gem_context *ctx, *cn;
>   	int err;
>   
> -	lockdep_assert_held(&stream->perf->lock);
> +	lockdep_assert_held(&gt->perf.lock);
>   
>   	/*
>   	 * The OA register config is setup through the context image. This image
> @@ -3103,6 +3105,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   {
>   	struct drm_i915_private *i915 = stream->perf->i915;
>   	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt;
>   	int format_size;
>   	int ret;
>   
> @@ -3111,6 +3114,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   			"OA engine not specified\n");
>   		return -EINVAL;
>   	}
> +	gt = props->engine->gt;
>   
>   	/*
>   	 * If the sysfs metrics/ directory wasn't registered for some
> @@ -3141,7 +3145,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	 * counter reports and marshal to the appropriate client
>   	 * we currently only allow exclusive access
>   	 */
> -	if (perf->exclusive_stream) {
> +	if (gt->perf.exclusive_stream) {
>   		drm_dbg(&stream->perf->i915->drm,
>   			"OA unit already in use\n");
>   		return -EBUSY;
> @@ -3221,8 +3225,8 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   
>   	stream->ops = &i915_oa_stream_ops;
>   
> -	perf->sseu = props->sseu;
> -	WRITE_ONCE(perf->exclusive_stream, stream);
> +	stream->engine->gt->perf.sseu = props->sseu;
> +	WRITE_ONCE(gt->perf.exclusive_stream, stream);
>   
>   	ret = i915_perf_stream_enable_sync(stream);
>   	if (ret) {
> @@ -3244,7 +3248,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
>   	return 0;
>   
>   err_enable:
> -	WRITE_ONCE(perf->exclusive_stream, NULL);
> +	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
>   	perf->ops.disable_metric_set(stream);
>   
>   	free_oa_buffer(stream);
> @@ -3274,7 +3278,7 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
>   		return;
>   
>   	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
> -	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
> +	stream = READ_ONCE(engine->gt->perf.exclusive_stream);
>   	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
>   		gen8_update_reg_state_unlocked(ce, stream);
>   }
> @@ -3303,7 +3307,7 @@ static ssize_t i915_perf_read(struct file *file,
>   			      loff_t *ppos)
>   {
>   	struct i915_perf_stream *stream = file->private_data;
> -	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt = stream->engine->gt;
>   	size_t offset = 0;
>   	int ret;
>   
> @@ -3327,14 +3331,14 @@ static ssize_t i915_perf_read(struct file *file,
>   			if (ret)
>   				return ret;
>   
> -			mutex_lock(&perf->lock);
> +			mutex_lock(&gt->perf.lock);
>   			ret = stream->ops->read(stream, buf, count, &offset);
> -			mutex_unlock(&perf->lock);
> +			mutex_unlock(&gt->perf.lock);
>   		} while (!offset && !ret);
>   	} else {
> -		mutex_lock(&perf->lock);
> +		mutex_lock(&gt->perf.lock);
>   		ret = stream->ops->read(stream, buf, count, &offset);
> -		mutex_unlock(&perf->lock);
> +		mutex_unlock(&gt->perf.lock);
>   	}
>   
>   	/* We allow the poll checking to sometimes report false positive EPOLLIN
> @@ -3381,7 +3385,7 @@ static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer)
>    * &i915_perf_stream_ops->poll_wait to call poll_wait() with a wait queue that
>    * will be woken for new stream data.
>    *
> - * Note: The &perf->lock mutex has been taken to serialize
> + * Note: The &gt->perf.lock mutex has been taken to serialize
>    * with any non-file-operation driver hooks.
>    *
>    * Returns: any poll events that are ready without sleeping
> @@ -3422,12 +3426,12 @@ static __poll_t i915_perf_poll_locked(struct i915_perf_stream *stream,
>   static __poll_t i915_perf_poll(struct file *file, poll_table *wait)
>   {
>   	struct i915_perf_stream *stream = file->private_data;
> -	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt = stream->engine->gt;
>   	__poll_t ret;
>   
> -	mutex_lock(&perf->lock);
> +	mutex_lock(&gt->perf.lock);
>   	ret = i915_perf_poll_locked(stream, file, wait);
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   
>   	return ret;
>   }
> @@ -3526,7 +3530,7 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>    * @cmd: the ioctl request
>    * @arg: the ioctl data
>    *
> - * Note: The &perf->lock mutex has been taken to serialize
> + * Note: The &gt->perf.lock mutex has been taken to serialize
>    * with any non-file-operation driver hooks.
>    *
>    * Returns: zero on success or a negative error code. Returns -EINVAL for
> @@ -3566,12 +3570,12 @@ static long i915_perf_ioctl(struct file *file,
>   			    unsigned long arg)
>   {
>   	struct i915_perf_stream *stream = file->private_data;
> -	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt = stream->engine->gt;
>   	long ret;
>   
> -	mutex_lock(&perf->lock);
> +	mutex_lock(&gt->perf.lock);
>   	ret = i915_perf_ioctl_locked(stream, cmd, arg);
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   
>   	return ret;
>   }
> @@ -3583,7 +3587,7 @@ static long i915_perf_ioctl(struct file *file,
>    * Frees all resources associated with the given i915 perf @stream, disabling
>    * any associated data capture in the process.
>    *
> - * Note: The &perf->lock mutex has been taken to serialize
> + * Note: The &gt->perf.lock mutex has been taken to serialize
>    * with any non-file-operation driver hooks.
>    */
>   static void i915_perf_destroy_locked(struct i915_perf_stream *stream)
> @@ -3615,10 +3619,11 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>   {
>   	struct i915_perf_stream *stream = file->private_data;
>   	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt = stream->engine->gt;
>   
> -	mutex_lock(&perf->lock);
> +	mutex_lock(&gt->perf.lock);
>   	i915_perf_destroy_locked(stream);
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   
>   	/* Release the reference the perf stream kept on the driver. */
>   	drm_dev_put(&perf->i915->drm);
> @@ -3651,7 +3656,7 @@ static const struct file_operations fops = {
>    * See i915_perf_ioctl_open() for interface details.
>    *
>    * Implements further stream config validation and stream initialization on
> - * behalf of i915_perf_open_ioctl() with the &perf->lock mutex
> + * behalf of i915_perf_open_ioctl() with the &gt->perf.lock mutex
>    * taken to serialize with any non-file-operation driver hooks.
>    *
>    * Note: at this point the @props have only been validated in isolation and
> @@ -4035,7 +4040,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
>    * mutex to avoid an awkward lockdep with mmap_lock.
>    *
>    * Most of the implementation details are handled by
> - * i915_perf_open_ioctl_locked() after taking the &perf->lock
> + * i915_perf_open_ioctl_locked() after taking the &gt->perf.lock
>    * mutex for serializing with any non-file-operation driver hooks.
>    *
>    * Return: A newly opened i915 Perf stream file descriptor or negative
> @@ -4046,6 +4051,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>   {
>   	struct i915_perf *perf = &to_i915(dev)->perf;
>   	struct drm_i915_perf_open_param *param = data;
> +	struct intel_gt *gt;
>   	struct perf_open_properties props;
>   	u32 known_open_flags;
>   	int ret;
> @@ -4072,9 +4078,11 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>   	if (ret)
>   		return ret;
>   
> -	mutex_lock(&perf->lock);
> +	gt = props.engine->gt;
> +
> +	mutex_lock(&gt->perf.lock);
>   	ret = i915_perf_open_ioctl_locked(perf, param, &props, file);
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   
>   	return ret;
>   }
> @@ -4090,6 +4098,7 @@ int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>   void i915_perf_register(struct drm_i915_private *i915)
>   {
>   	struct i915_perf *perf = &i915->perf;
> +	struct intel_gt *gt = to_gt(i915);
>   
>   	if (!perf->i915)
>   		return;
> @@ -4098,13 +4107,13 @@ void i915_perf_register(struct drm_i915_private *i915)
>   	 * i915_perf_open_ioctl(); considering that we register after
>   	 * being exposed to userspace.
>   	 */
> -	mutex_lock(&perf->lock);
> +	mutex_lock(&gt->perf.lock);
>   
>   	perf->metrics_kobj =
>   		kobject_create_and_add("metrics",
>   				       &i915->drm.primary->kdev->kobj);
>   
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   }
>   
>   /**
> @@ -4783,7 +4792,11 @@ void i915_perf_init(struct drm_i915_private *i915)
>   	}
>   
>   	if (perf->ops.enable_metric_set) {
> -		mutex_init(&perf->lock);
> +		struct intel_gt *gt;
> +		int i;
> +
> +		for_each_gt(gt, i915, i)
> +			mutex_init(&gt->perf.lock);
>   
>   		/* Choose a representative limit */
>   		oa_sample_rate_hard_limit = to_gt(i915)->clock_frequency / 2;
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index 05cb9a335a97..e888bfab478f 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -380,6 +380,26 @@ struct i915_oa_ops {
>   	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
>   };
>   
> +struct i915_perf_gt {
> +	/*
> +	 * Lock associated with anything below within this structure.
> +	 */
> +	struct mutex lock;
> +
> +	/**
> +	 * @sseu: sseu configuration selected to run while perf is active,
> +	 * applies to all contexts.
> +	 */
> +	struct intel_sseu sseu;
> +
> +	/*
> +	 * @exclusive_stream: The stream currently using the OA unit. This is
> +	 * sometimes accessed outside a syscall associated to its file
> +	 * descriptor.
> +	 */
> +	struct i915_perf_stream *exclusive_stream;
> +};
> +
>   struct i915_perf {
>   	struct drm_i915_private *i915;
>   
> @@ -397,25 +417,6 @@ struct i915_perf {
>   	 */
>   	struct idr metrics_idr;
>   
> -	/*
> -	 * Lock associated with anything below within this structure
> -	 * except exclusive_stream.
> -	 */
> -	struct mutex lock;
> -
> -	/*
> -	 * The stream currently using the OA unit. If accessed
> -	 * outside a syscall associated to its file
> -	 * descriptor.
> -	 */
> -	struct i915_perf_stream *exclusive_stream;
> -
> -	/**
> -	 * @sseu: sseu configuration selected to run while perf is active,
> -	 * applies to all contexts.
> -	 */
> -	struct intel_sseu sseu;
> -
>   	/**
>   	 * For rate limiting any notifications of spurious
>   	 * invalid OA reports
> diff --git a/drivers/gpu/drm/i915/selftests/i915_perf.c b/drivers/gpu/drm/i915/selftests/i915_perf.c
> index 429c6d73b159..24dde5531423 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_perf.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_perf.c
> @@ -102,6 +102,12 @@ test_stream(struct i915_perf *perf)
>   		I915_OA_FORMAT_A32u40_A4u32_B8_C8 : I915_OA_FORMAT_C4_B8,
>   	};
>   	struct i915_perf_stream *stream;
> +	struct intel_gt *gt;
> +
> +	if (!props.engine)
> +		return NULL;
> +
> +	gt = props.engine->gt;
>   
>   	if (!oa_config)
>   		return NULL;
> @@ -116,12 +122,12 @@ test_stream(struct i915_perf *perf)
>   
>   	stream->perf = perf;
>   
> -	mutex_lock(&perf->lock);
> +	mutex_lock(&gt->perf.lock);
>   	if (i915_oa_stream_init(stream, &param, &props)) {
>   		kfree(stream);
>   		stream =  NULL;
>   	}
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   
>   	i915_oa_config_put(oa_config);
>   
> @@ -130,11 +136,11 @@ test_stream(struct i915_perf *perf)
>   
>   static void stream_destroy(struct i915_perf_stream *stream)
>   {
> -	struct i915_perf *perf = stream->perf;
> +	struct intel_gt *gt = stream->engine->gt;
>   
> -	mutex_lock(&perf->lock);
> +	mutex_lock(&gt->perf.lock);
>   	i915_perf_destroy_locked(stream);
> -	mutex_unlock(&perf->lock);
> +	mutex_unlock(&gt->perf.lock);
>   }
>   
>   static int live_sanitycheck(void *arg)


