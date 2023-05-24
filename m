Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE16E70FC24
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 19:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30AD710E68D;
	Wed, 24 May 2023 17:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF72E10E123
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 17:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684947859; x=1716483859;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=fJuTFB/PclHxcdEWZBcCu1RhtWG4q0yKiMC6tnAgMSk=;
 b=QIcbDTuGFnusA/KjEmh5Gz/n2dj+lgocrvXU5ZfYUYWWHx8zp7Ync8hg
 HVtWX182svI5W8+eCIhU99L0ia0lp1p3fP6u6bjOyLOlMVEsMe7DoDjjC
 fNLwgnQBVJFKNLe8ji5WQQg2MedbusRKnbNJwvjqrjRwhGIVVFmGFOD/R
 SN6XLfo+ys9+gwI2yElXqnj7Cx5Gg5LsTIZ69IzHeTJ3PwQ8yILSRHMxp
 xipYVuRg+T5ajMjYn3wVMsMfscO4gEcv6cRaZ5UtfcPus/0Srvl33F/5A
 8HUlPwxHQqo4sEs3PARtyjTmtAEHBYQNKqkA29wtUEywuRZ5xcXNVWDY/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="343094159"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="343094159"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 10:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="774324567"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="774324567"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 24 May 2023 10:03:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 24 May 2023 10:03:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 24 May 2023 10:03:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 24 May 2023 10:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+WhcQf1FREEyqJYE718x60QNNIyUKazlCAdCkGkpcXb3dafa3MW33bMKbFiPJKvduQTCm61H88cUW5vbhBYKRgtOHYyVXm636zpF3cFk7DIfrk0vQddAH6xmubGfaDS/rfcYT7tuHBox6I31xgKM4rdYT7w68LsSfqT76GX2tzmV7AwRxCYVTpyquU5oSGz3r/BzS00Y3hwr2AtuHlCHLXmHEpdfU7TL5BJP5z0lOOdBVAR4DB1noAwr71bcrUUB+gtpifrnRNNKdP8WiodRKju2wpPsjkw5woMRKJp6dn6yq+PizgY83dloMEELzBoLCaTUe0Nb/1XHN1YMCR8Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tj0fejQNNvORDqIHok2aSNtiyN0DqLxbIVU0fqssQow=;
 b=bqIzWYPiNFeYWUsW4IM19fdQnZU+WLNS8XEK1e2RWQtnI5YSXKnA6jpp9LP5qZe3RtmdNFQHY2ZXzIBuEOJvZQsaowgFhbQBXQIJtU8PT3fVNVlYSqVl75i8tVwrMYXPmXfWrpDeCFE449oxKf3R9Q0LUekffNGCX+cujFz4mGl3dmTa64dCyOjDaukhRdfkjhiehVXQEnIjTlHKCYgn1duLh3fBbBasQVC7ZOSNsMESGKcZfx8dgrHsQHM1GxZbjOFt2zqxk3v8GcYn6wiezorpgBtpQ5M8V7yTqLOq7FIZJSoJBl7fkap7c1oCPhbZ58x3CRj21tGcaKInc3UZMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by LV2PR11MB6023.namprd11.prod.outlook.com (2603:10b6:408:17b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Wed, 24 May
 2023 17:03:20 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::1b87:eeb5:fa80:79ba]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::1b87:eeb5:fa80:79ba%5]) with mapi id 15.20.6411.028; Wed, 24 May 2023
 17:03:20 +0000
Date: Wed, 24 May 2023 10:03:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230524170316.GP10045@mdroper-desk1.amr.corp.intel.com>
References: <20230523195609.73627-1-matthew.d.roper@intel.com>
 <168493613799.11319.284915963761450882@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <168493613799.11319.284915963761450882@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0041.namprd05.prod.outlook.com
 (2603:10b6:a03:74::18) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|LV2PR11MB6023:EE_
X-MS-Office365-Filtering-Correlation-Id: 81e0b8a4-d8bf-41c7-cc12-08db5c78c69f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LaVuPb19o4GZ0Lhz9zhMDqIyt4PZ9ksprJH8+XWhGR53cCereJ9vZUJvC0zOPneBF1aGQxx3W1z7rxa3oqKN5k4XwVmUqNKlPUHcKMYryYgeFYMQ8BRYnsJvCxavUWcZJD7raY2qsn4baCbwbjeRx504K1LrkVc23Cx1u+v00IQwISTif/mzTNs97mY+UQTK+QC3mTqOhoDuBhSzmehKEw7A6VqyrlgxkVKtFXARQenvnnrC+6KFVd24VDmsWCtdKsRYt9sx3UDyvZn3qWgOVuXHWHpJQDTpC5hAWWZmHODqyfwOGP3fgaHRF8l38JeOrz1Nk2OnW7sFWpU4b/9bjOT/SF0z4nWTJRBjb070bD0Or5OFwUj5gbhADs0sQVzY++K2xJ2zYkaqKyjrtNrI8sK6wdpLPs4dVI37YtlLIEQWqZJwDUOx/k4mjE7qLCdl1BBDK6d3TN8BeHFvKhQeRZqeL1vZho/KOgb+8QfM8k1WyLF5+F/8jF23pdf2aqYyX60+wTppeVmQIjcIBzvVK8tYHuqIY65ExqWN7gApuil3yTZzgy/2WDBPHSIO5vKFUPiY8ga6CDR+sKpR2KS8Eg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(39860400002)(136003)(346002)(366004)(451199021)(66946007)(66556008)(66476007)(6916009)(6486002)(41300700001)(6666004)(966005)(316002)(5660300002)(478600001)(8936002)(86362001)(38100700002)(33656002)(26005)(6506007)(82960400001)(6512007)(1076003)(186003)(83380400001)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2QF0H6DlHgjB3EnopKFaR6XNB03hfvrqRIsuwHryAfX1Q2HWlcKQq4VGVmvf?=
 =?us-ascii?Q?6gAnQgusfTK4WozlKR8HiK2YO+tnTWbPVvw9ZboEWq5wJmcPXzcvA3AvQLFw?=
 =?us-ascii?Q?r9mF/ngXV40ZrnU0apMMmzcs/ONlx3hST3qzmpKP+gB6drxHuirq+8AroXoH?=
 =?us-ascii?Q?XRntUCavFxM787PMRKvNv6m81s4BExdHewyS3ptBwppLS9QA3STFhLP6X4Cx?=
 =?us-ascii?Q?hxzMt2hyNb6JVyIlerBWGfLF4qe5vADI9itoplh8FML3bb4qwXoK4/agy10V?=
 =?us-ascii?Q?7hw7l7SyavNwAdv0O/TZxUqfvbvGxxEG3WqZig+Bi2vtuJmulIXv5OFKNKr9?=
 =?us-ascii?Q?MdAf+unLO8Ri04a8CC6XDw3oxRtYCz7dKwMXNlkfOolsROsQyu0cNaULaZZE?=
 =?us-ascii?Q?iIENkLOuwc7Czxnv+svjPdyrO+Iv4fObAzkuZaNSZZIpXPHxfZ9ctvv2ubWy?=
 =?us-ascii?Q?2JeIw94VwsRsWop78xtcrXdUap+AWRKzfZHORTuP9jc8rpkyEXBBb5wFz6hF?=
 =?us-ascii?Q?pWk0ICI4O/jKz2p+D0RaTbAEWaVh0kx3b0/nBkflan+yU0NDBXVDKFm0ld4X?=
 =?us-ascii?Q?PVcD1eVm25vKXAqXrWD234Gux8sOVlMqgIRQx6knyRt038GEBL5K8UNfT81W?=
 =?us-ascii?Q?FoYZwy4s7zL+lTafkuabfYqy1HCSQF9Oxu5D3j6/Q/SX6w5iFuGNpSNeFDwT?=
 =?us-ascii?Q?x8nr8Tni3d1CcJEba33lBA3P01PeIz2QQQjdmltCEgriRJj66t1ByWEzYVd0?=
 =?us-ascii?Q?62dosnwZve7cH6SD99VdxSFPb7vx5V0kQ0niWSVd34bnj65G2ACcpb9MrrxY?=
 =?us-ascii?Q?zBBCVTWlBmC6DrRfYyiSG4gp5sGcAMdponw4BlC3UPFYvtXwNWXvGqpph6ws?=
 =?us-ascii?Q?gF4kuwE89vv/WAFazDeLtnJoUQLIojwg+ozsYOwGEsGNmFQPpRDZs1ipwjQH?=
 =?us-ascii?Q?kHUBpBzdREVmTC1pn7aqoPRwE7i7f4+lRu4MrcXwG+0Ty3wF0DvrV7DMzflZ?=
 =?us-ascii?Q?CszNjF/VPbNb2OsID0eB7Ff74XcklhhjWUlyrigMTeF1pqNNn+FimUBxtZDG?=
 =?us-ascii?Q?aAMLYjHx7gz2Ii2+Hg/c4zGKMEHVFzjoi1MYsIkTpoP3lwgjE5VlBpSseAsB?=
 =?us-ascii?Q?qpCNpWUj6/XNzIjTIRBZNrDns42pMlFibFk30PiYc6VTmpGMSsBTDPWfvSUf?=
 =?us-ascii?Q?e7b+7nYTJPzAuVLd58UX1eTKLK2Tg+YWDI0CDzUBXZmJIhN4E4Xe5lAKskjQ?=
 =?us-ascii?Q?Z1tXux1Ci3yLkW0sJHNN5TPS7Z+QHyOCnc151kwACKzKMrmFgAq3ruvziRv8?=
 =?us-ascii?Q?BG4SJMgvZEMDQQD+O7izg63VU/KskkWDlsjmYIGZbVQSQowXOrM2wbqXxZzK?=
 =?us-ascii?Q?w29LUNWlM68lJqW/3QFduJgf9yWiFbemQAVKlPKACT6/BVfu5SRx0eHLX1mW?=
 =?us-ascii?Q?btHgEUhGyTkVvOkWIdfsyVj3Tj28iErqge603PF4lNKOjE5M3kKP52FH3zhJ?=
 =?us-ascii?Q?RIvER0qEVdy1U5m7bT4JSS60ZHCl16Pa+y9TF+OU11rKd5q7tWBwyBOVXTz/?=
 =?us-ascii?Q?nmaqmIe1anMaMFOQaE9i+kibFqehdUebHB/eYPgX6ygtE/BY7txFuO+3Siwu?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81e0b8a4-d8bf-41c7-cc12-08db5c78c69f
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2023 17:03:20.3791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PXetBaw13+OuYRpE2jVDQE6YYXmYlp3Z77y8PsQy5fHPdXwY0urQW+EnX/whbkVDRe/aCWAWoYMHJPTEX6dB6jCedhzaIZGFdaUh6vu5vVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6023
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Move_display_identification/probing_under_display/_=28rev4?=
 =?utf-8?q?=29?=
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

On Wed, May 24, 2023 at 01:48:57PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Move display identification/probing under display/ (rev4)
> URL   : https://patchwork.freedesktop.org/series/117931/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13180_full -> Patchwork_117931v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Series applied to drm-intel-next.  Thanks for the reviews!


Matt

> 
>   
> 
> Participating hosts (8 -> 7)
> ------------------------------
> 
>   Missing    (1): shard-rkl0 
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_13180_full and Patchwork_117931v4_full:
> 
> ### New IGT tests (3) ###
> 
>   * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-dp1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@b-dp1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@c-dp1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_117931v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#3886])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-apl:          NOTRUN -> [SKIP][4] ([fdo#109271]) +21 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl3/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([IGT#6] / [i915#2346])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-apl:          NOTRUN -> [SKIP][7] ([IGT#6] / [fdo#109271] / [i915#4579])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl3/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4579]) +13 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-snb4/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-b-vga-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271]) +17 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#658])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@basic:
>     - shard-apl:          NOTRUN -> [SKIP][11] ([IGT#6] / [fdo#109271]) +16 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl3/igt@kms_psr@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-tglu}:       [FAIL][12] ([i915#6268]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - {shard-tglu}:       [FAIL][14] ([i915#2842]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-tglu-9/igt@gem_exec_fair@basic-flow@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-tglu-9/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][16] ([i915#2842]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-tglu}:       [SKIP][18] ([i915#4281]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-tglu-8/igt@i915_pm_dc@dc9-dpms.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - {shard-dg1}:        [FAIL][20] ([i915#3591]) -> [PASS][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][22] ([IGT#6] / [i915#2346]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@single-move@pipe-b:
>     - {shard-rkl}:        [INCOMPLETE][24] ([i915#8011]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-rkl-7/igt@kms_cursor_legacy@single-move@pipe-b.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-rkl-3/igt@kms_cursor_legacy@single-move@pipe-b.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][26] ([IGT#6] / [i915#4767]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [ABORT][28] ([i915#180]) -> [PASS][29]
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - {shard-rkl}:        [ABORT][30] ([i915#7461] / [i915#8311]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13180/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8311]: https://gitlab.freedesktop.org/drm/intel/issues/8311
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13180 -> Patchwork_117931v4
> 
>   CI-20190529: 20190529
>   CI_DRM_13180: e48bc7435824325de6a73fae68dc521e2be13960 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7301: 4b388fa87e1281587e723ef864e466fe396c3381 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_117931v4: e48bc7435824325de6a73fae68dc521e2be13960 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117931v4/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
