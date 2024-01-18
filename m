Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 307B883224D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 00:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB2C10E907;
	Thu, 18 Jan 2024 23:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99AEE10E907
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 23:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705620850; x=1737156850;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L5/TMaIGlhTVMHU8xsabFX3ID9AUVPb2GmKn3SF6t18=;
 b=LoJK9jJwZqq53HChADaLcoi/0Ll38e9FIpCey49WyNrEVxyhi4NTgHnK
 IEMyVEqtkxHm8kGpbGMWqUl7gbLOAVUMLBfL7PT2Y+Z8kd+wwPeTT7+0I
 esIYua9Ho5OaEyQsmfcqPciMtOGKSJYEqZIU2IxoLD/nzscD8lshGHMX7
 mwEcNx3ZyFGkIRuI5J35YucznILhA0sARt8XQFLZj6YUEscWR0JCh77ee
 s61ZykMdu05y3HBZZHRxs+WId6jDbv+fSqE7j6iD6GnZWWcczrOC6nhWC
 9WVTIl6bi0qJjesjsjUrubtFP0Cy/T6/TwgC6rzpsEGqCz0yHxkap6+t3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="505811"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; 
   d="scan'208";a="505811"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 15:34:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="957967905"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="957967905"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jan 2024 15:34:09 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Jan 2024 15:34:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Jan 2024 15:34:08 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Jan 2024 15:34:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RLw88q3b36Oy3fVt5LYxIj91G9Odq5KN7atMgx8CUVHKMc20bon+44Q+GQ8yC35H/uMkjFQY1j4VfmXnC5qpw/y7nX+WXbftFgH3PGuxLnI7V4FmDDND5EHLvQVKD280X2qw90H8FWs20DskbWOhOFkKsCKfT6FORTlXIuJ0fFx9nIkqjOHusM49WmX3UBJduyOYJkQ+6gMReE+VzNrU6Y1YBuaSCdtd7hlPVGH8oKMcixCl0jziaBT5JkIIfBP0kqkEpMpy9E00zFFI0+F0n/MWeO1sdNKFeeeEIKyC7hfRfUN2S3U31+jfLSJcPOy/vFRIYRz/+f/27j4XWAjBIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80EoCLkaMptDzum4wL0egxjwUVzrTIJk4Dff2si5mSA=;
 b=oHqcXo/dJYmaqFLEXbIfla4FLOw1hIsg0BBpflj7oLJmkharo7xVkHUIxvPmOUz/FA3LZcrnSbMmsgv7YWrXcixLYxi9+Wj0ko9AhyZ5oeR1HQ4cvYwea1I1fYr9OFJEeoQJ8FihmuXc51h5I1FAhM4SninxLkXg1Z/dotnjqPyBFWdcxrH56kCC1Bw8Mp1RIV+OtQhmp7k7VmpCfj0CE3Vmykd/Fr8Q0kZ8lk7Hi6Hh93eZbzE8JZG/JU4fBAgROsmPP2Wr6UxEwlZ41koWSrPT5t8eoQVIGIMBt9y0XObBqGlEVVEihdm8C7VIL9pOjUKLETTdxwf2eg1GPSkDng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW3PR11MB4540.namprd11.prod.outlook.com (2603:10b6:303:56::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Thu, 18 Jan
 2024 23:33:43 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7202.024; Thu, 18 Jan 2024
 23:33:43 +0000
Date: Thu, 18 Jan 2024 15:33:40 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 Extend ARL support
Message-ID: <20240118233340.GW45138@mdroper-desk1.amr.corp.intel.com>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
 <170472824942.196236.7840068949325748192@5338d5abeb45>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170472824942.196236.7840068949325748192@5338d5abeb45>
X-ClientProxiedBy: SJ2PR07CA0007.namprd07.prod.outlook.com
 (2603:10b6:a03:505::12) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW3PR11MB4540:EE_
X-MS-Office365-Filtering-Correlation-Id: f09b4677-9a32-43ab-8749-08dc187de8ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0VCXMwb5k3/9nw2lcrtLFY4CRt1lvEa8UWpiqrtEeJuR4J2mKJengAJ8x2jVpx9TdzNDicNUgDE69D4bfuBtF3xmOnEI9JTSZZrNKSHjSCbJ2t/IlMDKIS8m5VZhsbb7sL4k9CKiyLhMUJkuGOSyTBitwGnvMFr7Vvv7RdmzMqXZaEaDsly4Qg3B9ue/5f26KSq+M23WgvrKoHM34Dr1IcoH9JGFuAcA7Nc7d1Vx15zN+M/kBrlqEBX5LT3kiaySDqF3GBFuaBhjDIU6ctAr7YK25WPwLyoU2MudhQUbrgT5nBvZZv/f5Rp/5iy9OGY10kojtFlokWXLdLUCzAxPm3CCv6YZclc3h4uhjSrU660vLgEcWzIMG6GcYk8d050/N+7VoqA+3uaKxqJtgvkGoYSTsAq7JXEXruAbPY6X+lF1wvea/dV7+WFWV0UNSznyuOVkvMbc+9DC82v19MqsUX75MBZ7vzV3KGEQ13b6R3lJRUFL4RtsY9pGuVbUTpbMkDDq6MJumPmYkStaWRsnpT/X2v1BhP5kYDrtzzI40Wmj9m8GI//Nl1LrfWzLTxTNgRSEod9Cmio9Q1ENUEzbkir8OHcRF/DErsxB3LhN4E3d+DIqPSMxMBd0xUinf1mh6+rAsw6ZBjxeL2He0oSGcQMQwwSbaWUeLMby+Te/FTs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230173577357003)(230273577357003)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(478600001)(66556008)(6506007)(66476007)(6512007)(66946007)(316002)(966005)(6916009)(83380400001)(6486002)(107886003)(4326008)(26005)(8936002)(1076003)(33656002)(2906002)(5660300002)(38100700002)(86362001)(41300700001)(30864003)(82960400001)(13750500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e5FE9RqCoPb0VlXfsxWJJicSdCqKMTNy4ZTxiapXJZB7iUimLA7zZKYmCro5?=
 =?us-ascii?Q?QnppwFiEVX8nQTWSVQACO79DoWR9xLDvOsLGQFNlk5CKZoXCsmOoDain+RSQ?=
 =?us-ascii?Q?c8SWITEiZd1OVhZs1IbO8OjJujwef9yPIf8z68YJiSrFNKBlxh9nquSNiJ8Y?=
 =?us-ascii?Q?Lx6I+Jf8ouS0IieZeDrUrGeDWm/yNV6TxCe33c+L+BPmq2EEFFn5CylgXNw0?=
 =?us-ascii?Q?rMK4r9Qd9gIEo89aPyQAZGqZYK+Q928qF+dciZN1yJW2wsDoem8zY9Pp276J?=
 =?us-ascii?Q?4c5aO2ha/3+Ygxa3d3t6eQMNm4C4ntq5vanmGSLUwBkD9j8f5aCr0I5kq2I4?=
 =?us-ascii?Q?yGyLzXlXZhwwdZkrs0HLezP6ere+/QxF8KRvle2pjiG7GB1L0u8EFBhA1ksk?=
 =?us-ascii?Q?6E15hNiIUNZgv4iOSS3y1L2+s7NSSdaDUuxIE/YNHOjjpeZtBidqLTmHT9Ft?=
 =?us-ascii?Q?NMv0AmUWYs82I02G+Zal05GqH9tsCeN5DogVLS5hHd0Ls1kg87vnbXLVNp8K?=
 =?us-ascii?Q?Ti1c2uDOMyegG9GYgtBPDnN6hxIO6aLiIy1jC8ZCYOyIrXUmP7NMmpiO7lc1?=
 =?us-ascii?Q?6M8/mST09CFjED2MxxhQWJaYrhIQwg+6kd3W0Dap1BdEmhZX8qkNhUq9qwRE?=
 =?us-ascii?Q?vD08srz7fCCY1I5S2T5gD0f+JGMfbW7UD1gjvuu4Etzg/WJRxadzsf3X9EpF?=
 =?us-ascii?Q?wN4Ztz2S1F40sjIYYh07z7mHgRJB85OXTyT030L8901QNMZMZDLH4Fe06GBr?=
 =?us-ascii?Q?I0qd3yGbXHwzzvcwFDtEwy2INARSD2o73XegPRJGk7Te1Z0ZYnpv4LuTrwDZ?=
 =?us-ascii?Q?WWqOBgdAs1Vhij7FUVrpKEuNssP2aipYTjrBwIo8r9eMGjI2zi2AXK9hwVrY?=
 =?us-ascii?Q?y2X9uOv604vGHy++/T3VI7WKBZJCSJbpw1CoGnTY/wxVnnXlM9YzEKVbnr28?=
 =?us-ascii?Q?dPelovlf9OhspRypvUMpDPyvztDiHGBRsM7C/7bIHMVZBJwHezz9dv4wQDtG?=
 =?us-ascii?Q?tts0U3LzwKEKwXyQu0xARoQul1LPyaVldU2oAbBRQCgwRJJ7NpczIbHd6yl2?=
 =?us-ascii?Q?ZxGPg5cjgLOf5V6miCvmksSLOQA+j1pb/yqEOwy5aauGC3G1i+r8TfjFZpDI?=
 =?us-ascii?Q?V1zucoZrRsgvZWxEWednzfQvFNnXs1kgBDaU/vtdUKt6uK1WE/dSf2YA3LwS?=
 =?us-ascii?Q?1ECtHQC0IKSsjiXVAKXR/Uj6942oxktZFFuLDwPeIdXMvFpPn96y0juQIpiu?=
 =?us-ascii?Q?ZBsNtqkJqzmlXrsdKXVjHollg/0Ofms6a9QkaTCrcDfkfmQH5IKn3DwzMAuk?=
 =?us-ascii?Q?Nly78m8ioIIC390eg9eInWbmZqkTWA8lKIh/sF5wbzLWEN8xBFBZudGLdaid?=
 =?us-ascii?Q?Vim8ohPVPVdFxU7GbNilSGScOTbz64XlKJSNWUisluI9ang1MKp8gSyQeIrz?=
 =?us-ascii?Q?fHAR89qOW2qYW4IXezZRPNY3sdHEdhNpL866cHDgW4OEMEFzgxHbWhvlcoXt?=
 =?us-ascii?Q?T0xFsxTy4e5QHX2tQyKibZhIpUAozk8mQDeF+jmQ0AtBF5dLL5f9MM7nYSOI?=
 =?us-ascii?Q?1BawkGouAIQJhgUEi0aTx19ZEF9Uv8ThHcssxRc+GHpQgRrhsYK747nzuLEC?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f09b4677-9a32-43ab-8749-08dc187de8ac
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2024 23:33:43.5114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUAv7lQ2ulJKaZ1mwVh+svQFA+4ooHNR3vgW5rDE/SSBRKxKYysKQDuvw+6jdtIoV1q0ZF36wUl3VlhLi/JJkfirjRZAUJVBJZGrP+DTspg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4540
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

On Mon, Jan 08, 2024 at 03:37:29PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Extend ARL support
> URL   : https://patchwork.freedesktop.org/series/128322/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14092_full -> Patchwork_128322v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_128322v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_128322v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 8)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_128322v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-snb:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb5/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-snb:          [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb2/igt@i915_suspend@basic-s3-without-i915.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
>     - shard-tglu:         [PASS][5] -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@ccs1:
>     - shard-dg2:          [PASS][7] -> [INCOMPLETE][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-2/igt@sysfs_heartbeat_interval@mixed@ccs1.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-7/igt@sysfs_heartbeat_interval@mixed@ccs1.html

None of these failures are related to the ARL PCI IDs or graphics
version 12.74 workarounds added in this series.

First patch applied to drm-intel-next (after adding Haridhar's missing
s-o-b line as we discussed offline) and the other two applied to
drm-intel-gt-next.

Thanks for the patches and reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_128322v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) ([i915#8293]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk9/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk8/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk9/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk9/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk9/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk1/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk1/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk1/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk3/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk5/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk5/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk5/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk6/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk7/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk8/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk9/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk9/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk9/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk9/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk8/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk8/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk8/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk7/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk3/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk3/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk3/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk3/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#7701])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#8414]) +4 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@busy-check-all@ccs3:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#8414]) +10 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@drm_fdinfo@busy-check-all@ccs3.html
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          [PASS][56] -> [FAIL][57] ([i915#7742]) +2 other tests fail
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][58] ([i915#7297])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([fdo#109314])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#8555])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang:
>     - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#1099])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hang.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#280])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [PASS][63] -> [ABORT][64] ([i915#7975] / [i915#8213])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-11/igt@gem_eio@hibernate.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4812])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-rkl:          [PASS][66] -> [FAIL][67] ([i915#2842]) +1 other test fail
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][68] ([i915#2842])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html
>     - shard-glk:          NOTRUN -> [FAIL][69] ([i915#2842])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk1/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4812]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
>     - shard-snb:          NOTRUN -> [SKIP][71] ([fdo#109271]) +41 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb1/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3539] / [i915#4852]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_exec_flush@basic-wb-set-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3281]) +7 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#3281]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-read.html
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3281])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#3281])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][78] ([i915#7975] / [i915#8213])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][79] -> [ABORT][80] ([i915#7975] / [i915#8213])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4860]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.html
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4860])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-glk:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2190])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#4613]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#4613]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk8/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#284])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4083])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@gem_mmap@basic.html
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4083])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4077]) +11 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@basic-small-copy-xy:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#4077]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_mmap_gtt@basic-small-copy-xy.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#3282]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#3282]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#3282])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4270]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@gem_pxp@fail-invalid-protected-context.html
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#4270]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@gem_pxp@fail-invalid-protected-context.html
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4270])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#5190]) +10 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#8411])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4079])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3297] / [i915#4880])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gen3_render_mixed_blits:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([fdo#109289])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@gen3_render_mixed_blits.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([fdo#109289]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#2527])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@gen9_exec_parse@batch-invalid-length.html
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#2527])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#2856])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#2856]) +3 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][107] -> [INCOMPLETE][108] ([i915#9200] / [i915#9849])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [PASS][109] -> [INCOMPLETE][110] ([i915#9200])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-glk:          [PASS][111] -> [INCOMPLETE][112] ([i915#9200] / [i915#9849])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#8399])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-mtlp:         [PASS][114] -> [FAIL][115] ([i915#3591])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-3/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [PASS][116] -> [FAIL][117] ([i915#3591]) +1 other test fail
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#6621])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#8709]) +7 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#8709]) +11 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#5286]) +2 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][122] -> [FAIL][123] ([i915#5138])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#4538] / [i915#5286])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([fdo#111614] / [i915#3638]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([fdo#111614]) +5 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#3638]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([fdo#111615]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>     - shard-tglu:         [PASS][129] -> [FAIL][130] ([i915#3743])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([fdo#110723]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#4538])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#5354] / [i915#6095]) +9 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_ccs@pipe-a-crc-primary-basic-y-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-rc-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#5354] / [i915#6095]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][136] ([fdo#109271]) +226 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-4-tiled-mtl-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#5354] / [i915#6095]) +10 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_ccs@pipe-c-missing-ccs-buffer-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#5354]) +14 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([fdo#111827])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-blue-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([fdo#111827]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_chamelium_color@ctm-blue-to-red.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([fdo#111827])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#7828]) +7 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#7828])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#7828]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_chamelium_frames@hdmi-frame-dump.html
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#7828]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#3116])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#7118]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3555]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#8814])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3359]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3359])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#3359])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#4213])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#4103] / [i915#4213])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([fdo#111825]) +5 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([fdo#109274] / [i915#5354]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9067])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#9067])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#9067])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#9833])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-11/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#9833])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#9723])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-5/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#9227])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3804])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#3840] / [i915#9688])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#4854])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9337])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#9337])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#658])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([fdo#109274]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
>     - shard-dg1:          NOTRUN -> [SKIP][171] ([fdo#111825] / [i915#9934])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#8381])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][173] ([i915#10007])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#2672])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#2587] / [i915#2672])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#2672]) +4 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#2672] / [i915#3555])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([fdo#109285])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-snb:          [PASS][179] -> [SKIP][180] ([fdo#109271]) +10 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3458]) +12 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#5354]) +62 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([fdo#111825] / [i915#1825]) +14 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([fdo#111825]) +9 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3023]) +7 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#8708]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#3458]) +4 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#8708]) +11 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#6301])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([fdo#109289]) +5 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([fdo#109289]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][193] ([i915#8292])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][194] ([i915#8292])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          [PASS][195] -> [FAIL][196] ([i915#8292])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg1-18/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-18/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9423]) +9 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#9423]) +7 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#5176] / [i915#9423]) +1 other test skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#9423]) +3 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#5235]) +3 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#5235]) +9 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#5354])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [PASS][206] -> [SKIP][207] ([i915#9519]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][208] -> [SKIP][209] ([i915#9519]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@pc8-residency:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([fdo#109293] / [fdo#109506])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_pm_rpm@pc8-residency.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#6524] / [i915#6805])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9683]) +1 other test skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#4235] / [i915#5190])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3555])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [PASS][215] -> [FAIL][216] ([i915#9196])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3555]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][218] ([fdo#109271] / [i915#2437]) +1 other test skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk1/igt@kms_writeback@writeback-fb-id.html
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#2437]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@kms_writeback@writeback-fb-id.html
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#2437])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_writeback@writeback-fb-id.html
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#2437])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#2437])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#2434])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          NOTRUN -> [FAIL][224] ([i915#4349]) +3 other tests fail
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#9917])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#9917])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#9917])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][228] ([i915#9779])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-glk3/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_perfmon@create-single-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#2575])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@v3d/v3d_perfmon@create-single-perfmon.html
> 
>   * igt@v3d/v3d_perfmon@create-two-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#2575]) +7 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@v3d/v3d_perfmon@create-two-perfmon.html
> 
>   * igt@v3d/v3d_submit_csd@valid-multisync-submission:
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([fdo#109315]) +5 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@v3d/v3d_submit_csd@valid-multisync-submission.html
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#2575]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@v3d/v3d_submit_csd@valid-multisync-submission.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#7711]) +1 other test skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-15/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   * igt@vc4/vc4_perfmon@create-perfmon-invalid-events:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#7711]) +6 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-2/igt@vc4/vc4_perfmon@create-perfmon-invalid-events.html
> 
>   * igt@vc4/vc4_perfmon@get-values-invalid-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#7711]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@vc4/vc4_perfmon@get-values-invalid-perfmon.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][236] ([i915#7297]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][238] ([i915#6268]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [FAIL][240] ([i915#6268]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@wait-wedge-1us:
>     - shard-mtlp:         [ABORT][242] -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-mtlp-4/igt@gem_eio@wait-wedge-1us.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-8/igt@gem_eio@wait-wedge-1us.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         [FAIL][244] ([i915#2842]) -> [PASS][245] +1 other test pass
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-10/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][246] ([i915#2842]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][248] ([i915#9275]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-11/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [ABORT][250] ([i915#9820]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [FAIL][252] ([i915#3591]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
>     - shard-rkl:          [INCOMPLETE][254] -> [PASS][255]
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][256] ([i915#7790]) -> [PASS][257]
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb5/igt@i915_pm_rps@reset.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb1/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][258] ([i915#3743]) -> [PASS][259] +1 other test pass
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-tglu-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-snb:          [SKIP][260] ([fdo#109271]) -> [PASS][261] +4 other tests pass
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>     - shard-dg2:          [FAIL][262] ([i915#6880]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][264] ([i915#9519]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [SKIP][266] ([i915#9519]) -> [PASS][267] +1 other test pass
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][268] ([i915#9196]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          [ABORT][270] ([i915#9846]) -> [INCOMPLETE][271] ([i915#9364])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [ABORT][272] ([i915#9820]) -> [INCOMPLETE][273] ([i915#9849])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][274] ([i915#9820]) -> [ABORT][275] ([i915#9697])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-snb:          [SKIP][276] ([fdo#109271]) -> [INCOMPLETE][277] ([i915#8816])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-snb2/igt@kms_content_protection@atomic-dpms.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-snb7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][278] ([i915#4281]) -> [SKIP][279] ([i915#3361])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14092/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#10007]: https://gitlab.freedesktop.org/drm/intel/issues/10007
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
>   [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
>   [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
>   [i915#9846]: https://gitlab.freedesktop.org/drm/intel/issues/9846
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14092 -> Patchwork_128322v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14092: f4cec0fbca99cb2517f10790abcecdb9fe7eb4a5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7661: 17df2eb8cded19c629cacee8a369629b56976068 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_128322v1: f4cec0fbca99cb2517f10790abcecdb9fe7eb4a5 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128322v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
