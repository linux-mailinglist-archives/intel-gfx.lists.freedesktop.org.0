Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB247143A6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 07:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85C2610E215;
	Mon, 29 May 2023 05:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE5E10E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 05:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685337382; x=1716873382;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=i0w4nV2+4VnvIxbTdrJUUcCY/d7q1zroQkWTf9eVldo=;
 b=QanS9Shji6H5d+by+ovy8H3f+VqRkDqB27ojpq6PR4KVbhloMG4FKfUL
 Cn/a9MX0zO2tiXmuszOk9i7Eb15FcCGuC8dog3RvBPfC56YYfnwdGVS69
 Lh2+ekKXHUuLLx8H2Px/FJavjMU3Br/XfH+JsdJHnmSXfcebvrp3rLUCC
 AqoGxKQZnS7L8QTkSt4jzCW7X/hMMnG8cEKsd3s9wPQpUVzcpnpvAcyli
 /K6M9dMyBblwML3UjQ5wVCly7rD0lve6Ig7rILuQtzzz5EktJU6Bn6AAC
 fb500FQ9sbkuL3vUrLCF26DTZxF2HRACQe6I+Ur7NppmeLA5ovO6sr8Lz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="357001614"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="357001614"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 22:16:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="1036064168"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="1036064168"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2023 22:16:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:16:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:16:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 22:16:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 22:16:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vb1lgq/gr0zLzOr0tJIskVveMvDVaBZmga/vIvTU6pnZg6fonUXRb6Zq64zdcx1j3NIFQyj3HNvK9gKyWtw0ptMRFnYbXFnQHJv9v6IvuXZjcx0/NUs6K+Gg6yLIOKzUB9phiz2Cd05u4vikYCpCT4jxv9Be/iewzoj6bL/sg+e37Og+hnA2TZOoUikXhTSG1UKk4w1Ymnz6VPVl0Zedixruhkj541Xna7YW+l7Xo0AaoWIPNR3yvcNoBMWxzD0JrgpAvFK9smqFNcZG2au4HDDS5uQe71IHCoPtMHg6W+kceaWOdM8QTdLTrIk7eUNm0swnnB6UXIhWFgUFxdsIIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XUC0GRYxH3+Fm8mWo/Mu45KeMGX+HKlAy3Cl39m9Jto=;
 b=WP2Sf9Q4oqlJc8WWlcpaobAd+OfaJVFU9lA3hbVXwzZBA7Mb6+gmSFvFNM6fthdbxMKnBVanmZk86+iInDVYxEGWhddGiKK4iOQY5xshi+rxqYqkENaFFRtgGxu6SaHEqK6klfinoo8k2AjBgHiV4rb35tcG8dC8tl5rFgm4AtC4H2/DPfSwlFgK1o2gnzegZFN29cKX8XIEVrbHdpQp/nJy6UiUtaLSx/YKTXKc08C3Z85Oz9hLx1TWnpUf2HJ5oAmIhj9N+4uJznxrglGh7uiknwgEx2VKJIonrZqtz9XJoxuYX6vmTCsOstoXkUA3woY+zUnIj7Mi2/bEH0st2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7352.namprd11.prod.outlook.com (2603:10b6:8:103::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 05:16:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 05:16:00 +0000
Message-ID: <b26fceb2-1943-03a8-9aac-2877ddcae832@intel.com>
Date: Mon, 29 May 2023 10:45:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <8a2cfca8ae6d50a88b8293557332c86c46825a2e.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <8a2cfca8ae6d50a88b8293557332c86c46825a2e.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0102.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7352:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d967baf-1370-4db7-3813-08db6003cab4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nIpT3mC1vGa0QH4bfJQBJ/p0Gycf8dZRHzIqPwWDYEXbJp1nRZpblrd1YNtykJn3L2UYMRUAMGiiW2ohKsQOs9WkuCbRZdpaMGvkJAdORvjgqz3v8CWtdVnSE+/hXRxCRPPUk7BDWDKpOTSQy+IEYHpbhz7gWwBNXgIAN2wlX8qzSQz+BZ/28VtEI2gOZHQHSJni2upzi59tFX2wNbRr1VYE/C2SFOHpnhhj/rVgTM92wsHxGGCItAfDs3qhenA+8M48KXxW+0jBYgE8f63TzVM5Czhcaxh2XeNhaSowNjOEzgyW8p/LMzLAeEj6LfKQ5yLPK6rLibMggXOFXkFET/fcul7hRlWqv4qCi1H3Ub4PVm3pdBTr1/UmNUfnFTFPCoFQ7neZ/j62x0ohsfUVGh5L5MbkHM1L9usWin2aNI9hyk3cTQCVfxIDxuMsmyFwT13d1RfoAFQmJNTUUFg/jOj8oRVri4EGRdNo0TWSKXPIMkO/pmMfiXdgX1tB0oSJ6IlLDp0x4EDZSQvA44XmHAN34WCiAhjK75hwpqk2ZQMHB2BW6FDZ4MtaoePVyuv7+qiawHNodB80ohJHKrrLb2OP5sxMsQRkwnngzaKJvwkMbLzmPepx4cSkqaMAQxeaPdMkdCrljtLqa/TmShzxNA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199021)(31686004)(82960400001)(478600001)(38100700002)(2616005)(83380400001)(66556008)(66476007)(66946007)(31696002)(86362001)(2906002)(6666004)(6512007)(6506007)(55236004)(53546011)(6486002)(186003)(26005)(316002)(41300700001)(36756003)(5660300002)(8936002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUwzR0paMDFWUjJZNG9TbUlwRTRwdEZ1Qnc0VjNPY2xzZ3FNdlhHenpmdGlI?=
 =?utf-8?B?WUI0OHhvMDZSVlZMaXVXbExOSitlYlpPcXJQMWlsSlk0TDhUM29EUVZNdndt?=
 =?utf-8?B?ZENtTHBMOFVNaU9YTW15QUptR3oralVvQkx3UFoxek10VW52Q1cyVXY2Mk9L?=
 =?utf-8?B?MzFVV0U3Wk1UMW9EcEJOSGZOK1JmQ29vbUJnQkl4S3VWbVNOVVNMWnpZOEcw?=
 =?utf-8?B?U2dqVUVCQVNBeDhCSXdSd0JWSCtmb21OV1k4cXcyZVZxaEZETVNIejNLN2Iw?=
 =?utf-8?B?b2hQdWllYU9pWlRGL3MvTkpnNXJaRkNnbDMzNXpkM2tDVmlreHY5UGpkdXNZ?=
 =?utf-8?B?SW5DSlhFMEpWdFo2Q3Z1cDZwVUpDSGZhYWhKMXJ3VE01UXk2ZHQ1NS9UY09m?=
 =?utf-8?B?NlF6Zm5JV0dMVDZNWUxqZGxVMWRBeWFwLytIK1g4Y3dpTlo5d2Z2TEI2QlNZ?=
 =?utf-8?B?QVRkcURaQUZKWkIvekdtNlFDYm5LdzJKb0ZacFVKQ2VDcDZUMkJkVFdjZ216?=
 =?utf-8?B?M2wvQy9XTGtpRmdnQjBPZWkzZUJ6alJ0RWY1cDdIcEdzbFNOOU4xRXUydEta?=
 =?utf-8?B?em8wVTVZQmI3QWs3RDA2ODQ1c09iMkR0ZjBqa09LY2lKMW41UXNyUEJNT1ln?=
 =?utf-8?B?R21VdjA5ZHdPZlpjOWJ1YklzbGFmRnNyMHhDV1UvMVl2aWVEVnRxOTVHZDVk?=
 =?utf-8?B?TWd6M1NZdmE2N1YyWmhhVlYwR2N0dndDWnd0Zm9qb2tLcDNnQkFRZGhFSHJy?=
 =?utf-8?B?eTJ5YXpQZVZocnFoLzB2cDhJR0xtekE0c0t6WThmK2VsRjdpTndVYUtsZjk5?=
 =?utf-8?B?TkNtWDJmQXhZTnNLWXNHcFRNWHhGeS81Ym96WGNPb0dPZXZydlpSZnFIT251?=
 =?utf-8?B?dmZGb1RqYlFRQzRhd0pON29oaHBvdi9ES2loMjR4d3JCN2Z2MEVraFE0SUc0?=
 =?utf-8?B?Sm92ZU9td3lrVUdQOXMzbWt4L0J0QlFzK3QvVDRZR2JmZFB0czRBVHJjaWdz?=
 =?utf-8?B?WDE1eTArRUE3N2lsQTQrTm9GV3cxcHFvbHVoSys2dzQ4aDhQODNmanZUN1J5?=
 =?utf-8?B?aDJGRWRvUTBPMTZPMDRTeUFXWktrWTdGdUF0T1pPb1NyZWV0Uys2TmtYQk1l?=
 =?utf-8?B?RVJhSVMrUXVjQmpxa243a01JbUpSVEJsMjlvdDdDR01xUU4zS3FrK3RjTUhZ?=
 =?utf-8?B?SnJaa2g5aWh0WnlSN3A5MHhuTk14aTBRcWpsYjNJaVZ2VE5kdWxhYU5zVFlD?=
 =?utf-8?B?MkQ4c3E5aDkxamNOaHJub0R6NCtzY3JhZnVVTjh1ck5LZzFxaVFLekFXMUp1?=
 =?utf-8?B?K1JpQXZZTlhzNWs4OVIvS25GWXVVNEkyTlEvM3VobDJMU2NqZVNRNmFFSTBW?=
 =?utf-8?B?R3RnanhaaE1ibWQrR1NVTFVOTUx6VVB0ZHIzTmFacnlyei9WUUhpNENLYnFH?=
 =?utf-8?B?b2owVFZ4S1FBYW9zaUdKZTI0cjQ1RG9NZUtQbjd5MFg3QTdocmYvRDZlL041?=
 =?utf-8?B?UnRkMFVLaVJEMVluMTkwMG82NzNxYTdkVDVRVFBJZjNWNlM0U0ZNUTR0dEI4?=
 =?utf-8?B?VU9sRUljYzJuV29zUHBXbVdZeG9QMmpTWGZwK29PZ21jTUJWWWFRQ3ZnSXlK?=
 =?utf-8?B?SkExUUNGeDZ0TjYwamM5RlpPenZjQkJQSTJhNHl3dnU0aTZYNDFUT013NDg2?=
 =?utf-8?B?ZmF5MTYyT25Ia0g1Z3d6OFd5QkU0YkZTOHkrVFZCU2o0R1FNalBud2JYUjFa?=
 =?utf-8?B?aU9PZmZDQ1JjRmdzYXJCemo2MGJUc0tJa1N3Z2ZuNm4xVnlHVEhERmdYN1Jz?=
 =?utf-8?B?dVl5eFpIZk8rck96bTFUVi9FcUw2aXFLYkxrTXBkTVFLZC8rYzNPS1lHY2NG?=
 =?utf-8?B?TWdicFB1YmNJQXdHQUJUTzJtTFJ4SDN4bG56NHZHamtSV0dnTjZRQmJpdjFj?=
 =?utf-8?B?aGxmRGx3dHl2WWZ5SEhsRTlENENtSDNVUktTSXhQSG53c2JFVDkrRXU2WnV3?=
 =?utf-8?B?MkFybUlPcTlrdjJnei84emNsY0xaMDRtUG9LT2VjTXNiZmd5R0ZWK29kY29u?=
 =?utf-8?B?Y3Z6V2RzZGRRUWVBajNhL0JWdUVhNThyMGRrbzlzWlpzK1NtM3M1enNUcXA3?=
 =?utf-8?B?eFcwY1ZGV0FBaUJtdldQRWdoS0xwTUtuU1dzOWdWNGMrdkExbnJRQ3FsM2xz?=
 =?utf-8?B?cWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d967baf-1370-4db7-3813-08db6003cab4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 05:16:00.8614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 82WdcSvk4jKVJflOHJ1lQ/yRhMy6a0xIu0MGUWSDMh6fWmuONUSDOqycNgvslNF4fLxF1+65KkT+irV1JjK1kViMxGvLsq+qIIqEj5VyxW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/dp: stop caching has_audio
 in struct intel_dp
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Use the information stored in display info.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
>   drivers/gpu/drm/i915/display/intel_display_types.h   | 1 -
>   drivers/gpu/drm/i915/display/intel_dp.c              | 5 ++---
>   3 files changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 77caed2552d0..1416b82fc8a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -237,7 +237,7 @@ static void intel_dp_info(struct seq_file *m,
>   
>   	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
>   	seq_printf(m, "\taudio support: %s\n",
> -		   str_yes_no(intel_dp->has_audio));
> +		   str_yes_no(intel_connector->base.display_info.has_audio));
>   
>   	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
>   				edid ? edid->data : NULL, &intel_dp->aux);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 35c260bd1461..9c9b771cbcbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1670,7 +1670,6 @@ struct intel_dp {
>   	u8 sink_count;
>   	bool link_trained;
>   	bool has_hdmi_sink;
> -	bool has_audio;
>   	bool reset_link_params;
>   	bool use_max_params;
>   	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1d28a2560ae0..cda69861b00a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2077,6 +2077,7 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct intel_connector *connector = intel_dp->attached_connector;
>   	const struct intel_digital_connector_state *intel_conn_state =
>   		to_intel_digital_connector_state(conn_state);
>   
> @@ -2084,7 +2085,7 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
>   		return false;
>   
>   	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> -		return intel_dp->has_audio;
> +		return connector->base.display_info.has_audio;
>   	else
>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>   }
> @@ -4712,7 +4713,6 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
>   	edid = drm_edid_raw(drm_edid);
>   	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
>   		intel_dp->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
> -		intel_dp->has_audio = drm_detect_monitor_audio(edid);
>   	}
>   
>   	drm_dp_cec_set_edid(&intel_dp->aux, edid);
> @@ -4728,7 +4728,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>   	connector->detect_edid = NULL;
>   
>   	intel_dp->has_hdmi_sink = false;
> -	intel_dp->has_audio = false;
>   
>   	intel_dp->dfp.max_bpc = 0;
>   	intel_dp->dfp.max_dotclock = 0;
