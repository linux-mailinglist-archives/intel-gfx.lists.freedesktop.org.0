Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9288558CF16
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 22:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53D5E10F1A8;
	Mon,  8 Aug 2022 20:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13B26112655
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 20:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659990421; x=1691526421;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EsND21GMQwM1pBTEbmuJZiEFGiJ53HVyFALkQiv8UT4=;
 b=WlqeagDmLyhZRhokKjmROx2Sy+K+6B4Y/Za1k/gSEwqgILc6JWTjWUwn
 0XAC6W62l6RMEHSSmJj6Vln1F3OFrW/PkiONnKnfqPoilliBdnzXSL+Qr
 QNNfCFxzSYNruXIXqZsRaK2cyZufHYmZUl0zQQ01A/EAXD2iEbOx7fwJO
 08+CDUz/NAKTpsUQu+VAcD1bcBUmrJKC7GgaUtGTnDQNLVQslzFod2zqJ
 ysN2nRjDILe6kV4UJyYn8YGSoTq+x77fpB6SjaUfT1k6eYWCxL+PHEo9F
 STyJjcHah+uhYjGeS1a/KjkVuAWMaArMO/vOgsxPK7ZZGkegHWDhnr96/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="288249875"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="288249875"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 13:27:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="780621647"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 08 Aug 2022 13:27:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 8 Aug 2022 13:26:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 8 Aug 2022 13:26:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 8 Aug 2022 13:26:59 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 8 Aug 2022 13:26:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvrqGsvJjIKR2OkYzrF1gtFV6tuv3X1ct9Ho8/VPJjY9PR4GBo7KpAYLb4P1oMzUng/VKomBIPo2Gmv2rd9BzYWzn8gJQysWCTnxoxhLPcyjd7JixzTuuhq0wC+L1YyodOxdKEMgFCz+wzajitIKelVN9Q/zCoJotk33SQoWc0Pcdr+o6axGMrSeYayuoW7NfTL5CP3deW6IOWuFt8doX66P6l6dxFa5bJqjYwrKZHHaYo16elv78cDnUJL4RLVTdGiCNPhl1C+E0cupsD6Npoqz4nq6rBGy6JzQaUfL5htlymL1gNc6P2479GRHWSZm35mX2a7ONb0FLeViF8vwUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U/ksKhWXFfkele1atKYQiqkvZNqU9qC5zRJlSSsJOYg=;
 b=Td6RtpK9uaglr3J4LFpqkLE3gwNmm/7WqWPpOA/NHmgVqAGsM5s/7PbibTLCzcJ2nCX65K+eWPDU09zjg7enA4t1E9/1HqlAarTxkhXMSuOiojoiK1KQP/3dYYQ/n9e5HkoWJX1WUFIVSIV7ifFMR5F20sHpJCQPQj9kmBu4DRayn1I0N/e/MED3UkPCzF7dQEkKmqVgFzirsmjkppg0e3dTZxX36bNZ1J3YixI0zYZRsBpdcX8jsb7EZ8wqAH2LJZRwTDZA4dCaHv99tK8f78997MfJPESSTbUQW/j9OXNucTIatjZTY7TKtizVw5oO6RxVb+JFpPaGh3v94HuyCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BY5PR11MB3880.namprd11.prod.outlook.com (2603:10b6:a03:184::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Mon, 8 Aug
 2022 20:26:55 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%11]) with mapi id 15.20.5504.020; Mon, 8 Aug 2022
 20:26:55 +0000
Date: Mon, 8 Aug 2022 13:26:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YvFxjNxVQxSmRHOH@mdroper-desk1.amr.corp.intel.com>
References: <20220805155959.1983584-1-piotr.piorkowski@intel.com>
 <165972129824.21185.15994720755028174389@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <165972129824.21185.15994720755028174389@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR01CA0025.prod.exchangelabs.com (2603:10b6:a02:80::38)
 To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c13f799a-a097-4191-e2be-08da797c55fe
X-MS-TrafficTypeDiagnostic: BY5PR11MB3880:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ynCQ/4SrwjF1q9CMyk6aO5nmz7VS1iTkQ5ixqHdaPudDmg5HzXzcKbuM6jtakfJjAUvnsYOGUj1aw1vNC6DeVOV6TYVH8+Zme5XninjBrgxeSMn1+jyWlq0f579aXBn8XR5tBIwd/tI6OlfTWA9Uq/qlO7vfityCfcaL+4yGk33PIbg8/gVFlkuwvRrMrxEVgLv7BbHuAsAvGAXnTaeBCdSHbNVRqGRMEjxwHDFr7soDVd5DKDUOysfw0oU6DF5Sqctn6gWpBDoqyUcuQSlvV2ACt7ohSng4dawPvspHW+uExd5DGzCGnDjufYAHHEXNzBua+cRMyKGZR+bILOueHt3i++FVSNDAH3Klusei9tz5JxjIEgmi99ktAq5f+6x9lLPkBWzpAZ9FmvbuwsFAqYm3MrOP4Kn4/WYFAbJ2j2onZzsUpqCgvsll7/dRx4eBMYb+QKauNGJl6DThXqGqNVY/1a10SiFufd6bp7jSV/+PQC1aLWhpSU68MDygzkdUoseyIyJ+ImFwu1hyWn9dGBlWnUMlSRs7YzRY6hbJQhqR2Wzo1hSYMYQkTaTknQXerj0dcwllAAKTJvjjlG5NFV8Q9M26ttDUpRaLdVGhBAX62VX35WXIzwtLaJWuEuaLPvSmaDNksz5G3ifNrJy+F8EcVRPCzn4brcILYH1yL9EqLAuQBqLwgQcTFxa6rSBI7mSsM8IiNiqkC6mWDPaETKjV2mMiUGyNGQ0t9Y9koVDYSnAoxuhxuz7Ha7Gpxh4m7hHmYMPm5LrWvEEZYRHluwrnSb/2NskjS5TCS2eohMOcjAOP7IGFIU3mi4Q0gnHs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(366004)(39860400002)(346002)(396003)(84040400005)(186003)(5660300002)(107886003)(478600001)(6486002)(966005)(66946007)(6506007)(26005)(6512007)(86362001)(66556008)(6666004)(66476007)(41300700001)(82960400001)(83380400001)(2906002)(54906003)(4326008)(8936002)(316002)(6916009)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?22CrAXfgd7FeTdjXPdcSRt094OOBqR/Q6BRIMyWPLMLsGSvAOisCrjuIMDMr?=
 =?us-ascii?Q?05Gv7/n7dCkT/RX4aQnplSZjLaSNZ0W9C6dJ0jxnDNBd/UrDpwIc07+NAe46?=
 =?us-ascii?Q?0FGbVMd3EvSWcOJw0Fl9CT5NobvgjUwPp0/X5IwQPcKVk+tw5gYHKXgy4D8+?=
 =?us-ascii?Q?AGPjfmrTYkfmg6QGBw9FipzgkmuExxFhba2pdv55TorCwxTUCDDO5OaID/5K?=
 =?us-ascii?Q?HG9pnApDtSzEL6lz2G1VP6OmGlAq+UEEi/0/S/hbLx4aUnnICIx+gqR9rX0T?=
 =?us-ascii?Q?slQrn6H8oJpTOrvE2ZS1540OvskgyxlQq28jTC01hGt/tDNjkH3z/9mlGaOO?=
 =?us-ascii?Q?Un/NdtImohNMIAxG5v+RnpujbJUCiGpk/MTWXiRdG/U8Pfk8F2d/eJtQAWDL?=
 =?us-ascii?Q?J5UU3+QyNQ7IOLypjVn8mcyWsiKP+MiGSnoMyb3X4s3Tn1tVB7UBiR7QgMKz?=
 =?us-ascii?Q?Fb9DsqEuKnEYiNT1lD79F8MLCA5idV++f6DmaLEQt9ZBYl45A0numEy3RXdN?=
 =?us-ascii?Q?oWk0qMuKTVC2VYlqoeh/m2wNmXXFnAZVJfQbod87lG27B2f8DA9iJQNCryU3?=
 =?us-ascii?Q?N0GPvM9Pq753vPPXM+TKJQMXNyLA5USZAkfj2An/SZekJKO7z9jzNsWjnMhW?=
 =?us-ascii?Q?8nuixxMMGTLVqr91e2U3Jz1rtDzQQf4x9YvND1AaTjYFDbptEo5aqSGsTpZS?=
 =?us-ascii?Q?YjhJ2xFYe+Or+B/KftJMLCCFG/SD2OL3B/Zy5g1/sYDoeRepcG0fw1qgwJjk?=
 =?us-ascii?Q?xGWz5ic6g0XnEWUQCJD3yjAEEIhBPkEy/PIGrfvbvooUOYElk5hAnPri4hyV?=
 =?us-ascii?Q?MYDvjStP2XOzonCADNLzF92xMbltd7gykA4HdwfpcMqv0m6Pjoc4d3Y/Kw/Z?=
 =?us-ascii?Q?3fYKcRJOfrPGyN0JFrUoNegzDcNWEm8omGnzxsySAClXaFOSqwB0lOSDKggQ?=
 =?us-ascii?Q?2uu38Dkv1/WS+HtQVi18VRquabYpjfWWMqGsugmFOHC5omE4Rv0gxJ4W+9yG?=
 =?us-ascii?Q?CiQrloyo8ITwRfNKPIcsgScuyQzzIvSlNyalGzdsh3nsO45RDYcLPm0QoosH?=
 =?us-ascii?Q?KoEySyh0WCoNu7sdECKITvCgnL4I0saTYJ+Z+9YLoPQjgTmfpuxgH8EPk42H?=
 =?us-ascii?Q?75Qk2U/Mtm2NabxT143kxHvMx2rkMGhcJGpfXnv8PWxPi89/ZzX3A9AI4QnX?=
 =?us-ascii?Q?CbuPj9izugXKWyAjnezDaRKFYQsU+AfdqQdzCavi/qQBw9faKipY3hR5WUHr?=
 =?us-ascii?Q?F+7/5m5zjr0wU4FKvzozykZvQKCG4jHgAtITE6pqOMJtlVWZQLdhg4FF3+BO?=
 =?us-ascii?Q?BnVMDD+TkA6AY/zog9u1kChZRIHzWZnQJVhUpTjDhtd27krl6cz6EBDoPFfB?=
 =?us-ascii?Q?OScBlpJjJWcA+eOkkHL8o52TEcXOMFDSRJMYGAVh7Sa7vLdcZC4XXuX0ZJ29?=
 =?us-ascii?Q?1TNc9dblOzOWvx3kG9UvOPnqqFj836cCmYNHnDhvxcdKexFZnPTmS2JRm+0B?=
 =?us-ascii?Q?ON/5gMLDxxyU17VD3LF5JWGUMGPgGRBHU31vTvEyaKjiq4j89MvkONhP3Sf8?=
 =?us-ascii?Q?dCfKHdD+/PRL6cAYet06ebvapoZlyVlwpNbhwk0gehSeAHLoEV5I5JPu8RgK?=
 =?us-ascii?Q?OA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c13f799a-a097-4191-e2be-08da797c55fe
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2022 20:26:55.3582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 15gjBp+p1deNdEzh3Cchj3InwU42ZdUvNC0R+ixu4GmTZvVpDo2O5A+MF1mUxgW2VzrEvtBXUFzPIeHZgvVWXz0tIb56yt7fDihfJhiyFMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIFNh?=
 =?utf-8?q?nitycheck_PCI_BARs_=28rev2=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 05, 2022 at 05:41:38PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Sanitycheck PCI BARs (rev2)
> URL   : https://patchwork.freedesktop.org/series/106927/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11971 -> Patchwork_106927v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_106927v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_106927v2, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html
> 
> Participating hosts (43 -> 41)
> ------------------------------
> 
>   Missing    (2): bat-dg2-8 fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_106927v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@guc_hang:
>     - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_selftest@live@guc_hang.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_selftest@live@guc_hang.html

<7> [377.940383] i915 0000:00:02.0: [drm:lspcon_init [i915]] No LSPCON detected, found unknown
<3> [377.940571] i915 0000:00:02.0: [drm] *ERROR* Failed to probe lspcon

This wouldn't be caused by Piotr's patches.  It looks like this is
pre-existing bug https://gitlab.freedesktop.org/drm/intel/-/issues/5904

@Lakshmi, can you help check the filter and re-report the CI results so
that CI shards testing of Piotr's series can continue?

Thanks.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_module_load@load:
>     - {bat-dg2-10}:       [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg2-10/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg2-10/igt@i915_module_load@load.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_106927v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#62])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@late_gt_pm:
>     - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#5904]) +29 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#5904] / [i915#62])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-bdw-5557u:       [PASS][11] -> [INCOMPLETE][12] ([i915#146])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - fi-cfl-8109u:       [PASS][13] -> [DMESG-WARN][14] ([i915#62]) +12 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - {bat-rplp-1}:       [DMESG-WARN][15] ([i915#2867]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_selftest@live@slpc:
>     - {bat-rpls-1}:       [DMESG-FAIL][17] ([i915#6367]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-rpls-1/igt@i915_selftest@live@slpc.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-rpls-1/igt@i915_selftest@live@slpc.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-5:          [DMESG-FAIL][19] ([i915#4957]) -> [DMESG-FAIL][20] ([i915#4494] / [i915#4957])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>     - bat-dg1-6:          [DMESG-FAIL][21] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][22] ([i915#4957])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11971/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11971 -> Patchwork_106927v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11971: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6614: fbb4a4058b8f4119a079b2fda5c94aaacd850a78 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_106927v2: 2bdae66c9988dd0f07633629c0a85383cfc05940 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 4e46a15b7ddf drm/i915: Sanitycheck PCI BARs
> 79faae70c394 drm/i915: Use of BARs names instead of numbers
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106927v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
