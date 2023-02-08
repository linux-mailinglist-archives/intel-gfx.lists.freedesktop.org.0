Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6F268F8DB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 21:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD69810E09B;
	Wed,  8 Feb 2023 20:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36F9610E09B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 20:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675888346; x=1707424346;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=jZsvO6Xm/0DzkXIk+H3hyQwLbZSk3w8655seAB4fnlI=;
 b=KR7TdONsDw3/MK3tyFbp80uGC5v+nzANS1SMyrZruSv81yKGoLcNTm/T
 1dUbLtyIwAj3YaePURE4uyq7pXQtXCFPNDcAJzAcrKBgUF1pdCHu9YRHa
 2WFTqHCJptBySByPQ4cvn3K5k2vuDEJJ2uZ9OmrMEzW2ejmylTLsBQR22
 9FU83buUCWoL3uSFjDqaXCLui4OXz+3AD6Z2Oa+YTAfpJbJefeZGUzTSV
 8lV3hr9JEytggr78twg86tUNwh4/QJBuFnYBhuaHGrMJhOaor7VuGhf/l
 3D7/h/7RQTy2NlKznfKGxwzku9lZUqc/oGiBprInJATqtBYEvCs6Htcrg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="327612456"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="327612456"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 12:32:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="912853465"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="912853465"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 08 Feb 2023 12:32:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 8 Feb 2023 12:32:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 8 Feb 2023 12:32:21 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 8 Feb 2023 12:32:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ccrnTzFrS82n3PZxU38JGkmRnY3op9zAR+kENsYHaJ3KdLwq4cN7CkhL0v8N7KtqqZZkopZHjkAyIwkgIgidYlOsjyiRRkzRRKP4adXAWH79TAisoMdFr6SpwKeocTYreNxLvRsD7gGcwOFHYTUWvjMRX3gly+cxB1uewOZ/okesUymK14DeTcR99juLhzSjiAk8H4HvD44A9qugqDBcpvyWcvMdw+kv8zNMcb2TTDQDGb+8hD3J+pBI/9lyNTWP9PaMfN9Dx0ucd71hvIsF88J4PFWEaZJzxYbkT8J7bwdbf6vVAFhG4/0iXnyNA0+jU13VepKg/+v0IRoCxJFVIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XnNMOYN7wSPDjjdcbGaO14EDlj7DVkxCwEXVCxY6R1g=;
 b=fv5mTRB4FMn1uNthVBtXFvgnMVX4+GHRM/7HIr7LPWHZg/GUVJJc3CoNpnRszp8qy+lX+JFPPcHAn18yp4lpvVE8Ek4Oyr+4/TV1igGm8FL3oTe3H3aV0Z5/Wdd/htLTDV7MZxzmWwmL4L/uXXW24bA605vlNy3cmOQUvzYdXZX+3Q9i3K7QHymRyVL/NiptfPyG7DEV6pMK2cktw4vMtn9ZhS+qvddWCW/O86sjxcqo7LH2Gp+JMAedzrJVE3QXIuYsEqfv1l3l7qihn/cvPF1geU4lLPYyYeHfs06DP19ZvE0fZfXWCWtXoYQyrxVClEu7mHGvZHJ+FSsQFyVjNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB7024.namprd11.prod.outlook.com (2603:10b6:510:220::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.17; Wed, 8 Feb
 2023 20:32:18 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.036; Wed, 8 Feb 2023
 20:32:18 +0000
Date: Wed, 8 Feb 2023 17:32:12 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230208203212.anapjtapgwan4amy@gjsousa-mobl2>
References: <20230208200905.680865-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230208200905.680865-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR08CA0006.namprd08.prod.outlook.com
 (2603:10b6:a03:100::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB7024:EE_
X-MS-Office365-Filtering-Correlation-Id: bce28df9-1c49-4ab5-d8f0-08db0a13927e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9NwKZu0eWwUFUIBvGzOO3zodRXhki+FR23h6+AWUSRQ+2ERml75lrQquPtQGkrgTEp+mCPFaLwc+UYPhNYr57jFZU8liFtt/tHVQtzq4AR7/ZtqduWrExQKkiyYEc5NjgePrzh24WVz2CS8bDq21PFfgivF4JmWepF9UHuFrv1//p55/XkrszwDQDJYmrHTpEwrZrMsCSN/65ZskFkzuq4grantaU92ytrIiX4E4LW0eM0Pxwv9VEDsqhVA7+M+t3EZ7CPj88foLVLIXdP8iXWz6yhg/M1GnhfAKTT38Ll0L4/eNJ2dnrtBWRfEhgT4Efbw1R2LolhpmF5y3ExO65L1z1UqJne5oT/FcbA988eFfd9EPW5YzHDJhJy4Ta3jc7C50DyRoAhfPR7zcXwiAtNeh/dIWuBY/+TSO/htjX5zpahWDxCLT0IyfYdkotvsswITyTcLvVYgwIyfc0ikD3O52ebIYBV14PFwsQzUlcKgWzQDoPBMjRtq4u3PwUzsHcbfm7h3NZZfWqwt2zpbJAs13kGxeDMWGcKbSLt+vm7qp6doRo+rPj4R4oJ2aQXX6JHOHyt6k5xRjBCpH2ytR2Dcw9nVi+iw6moONphR33hnMza+3rVqrvvUEu1oE3uCV/C4NxiVD6VnIEaQSWR9hFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(346002)(136003)(366004)(396003)(39860400002)(376002)(451199018)(83380400001)(44832011)(4744005)(5660300002)(2906002)(26005)(186003)(478600001)(6512007)(6486002)(1076003)(6506007)(6666004)(41300700001)(86362001)(9686003)(316002)(38100700002)(66946007)(66556008)(66476007)(8676002)(33716001)(8936002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?00ps7pfDvlwcuMvYHK4bM+2kBNIZxnAP57K3jfH6FYZ5U3mR+wU21uJ7/BAW?=
 =?us-ascii?Q?P2HZmacA32pghMJzxWZQ6Jbxzv9CzstMO4fWEN6bZlimJwwkYLTJM0JJgcCs?=
 =?us-ascii?Q?2igGDybyMabSPgR0Gehl8Zpo+TeMbi+MYJZIrK2v8EXcpvg2kj/deNHaPwNM?=
 =?us-ascii?Q?ENgw4SySFgln1st2UZIiJFvv+XE8C42AXAdfS6wGa8gH9PgmFdkDLV1RnnIc?=
 =?us-ascii?Q?azKNlx8loK6+QBtK+zMriTE7p2srqPZ1QoyrfWVdbgmiK4FrsCIeooB1yEUF?=
 =?us-ascii?Q?dzVZd4+pEUyBLTnSYAKlVFiw8ueZDkeJjVUErAfUnVxiftpTRDjAp2eSDZhm?=
 =?us-ascii?Q?PX7N8VwXKr/y60vQhRylC/c8rA94io60+n3zi+0FcoJnPL4UuWXdXqdQQEDG?=
 =?us-ascii?Q?LqloLuBX/h77LYyQdv7PHYtF/PbxFv/9uT44UIrq8f1lYWFsjDv+6HMXyMh6?=
 =?us-ascii?Q?ioOf4Pm2Bjd+y2ebh1xxPCFtjSDLm8AQILfCpcOAlu1JZOlPWjEfcHtFECne?=
 =?us-ascii?Q?mOQl6xsRKX7XuHhDhYK0l2zrVOva1r3AWs0UsplFRmxn++GtJXXFNUXILP5q?=
 =?us-ascii?Q?VgARxT1Jm/Lk/q0ULPsr7KJNhjN1mChQ57WM5/uyZDmEMBUwghJCYUfgyex1?=
 =?us-ascii?Q?WmecKmgpfVSZqWOKFsWNuEBd7jz6E+JDReS7cCoI7AMHoIJfFsNJrz/HOLs5?=
 =?us-ascii?Q?BNTxc+EGJe5KahulAz5FomPn5yfmUeaQeAgauRVCWGpLrcz47Smp4BGHKZcq?=
 =?us-ascii?Q?adRKuEBRsw9skiRr5VmvzTDyY1puzXobXbtSldABN0NTUHfX5oQsZltQoO0W?=
 =?us-ascii?Q?v48Jc/t/Iv0UchcwxeK9XbsWSVj6ueB9sEgLfBPIkvKMFWDtAgfZtVvqIuyn?=
 =?us-ascii?Q?XoN5uE6pA3HwPnlVjeiphGrJNrxp4oxJxRbmAHkTIS8mRrta999/t3Ek000I?=
 =?us-ascii?Q?78Pxrh0YvUvixi/KJN8mquKUOjt+faWCjFVtcGGpOtxXfm1Mbp81TY30hrDI?=
 =?us-ascii?Q?NLpwbEgU/zjKYQeGQaVQdY6W4C11DPvQPpjRqnhtxaQiQsdGi1x/LDJrqmDR?=
 =?us-ascii?Q?WZOTleJz7R0jKE/7HznJnD18LPrCdWsAUeatFLAcWjLhqVfZfLE7RhBOzjQC?=
 =?us-ascii?Q?9E3uJKxnoNzBQ7rCD8TTXFHWUyijK+kFBdebGreTb/qwr3ETvkfezReUDnpu?=
 =?us-ascii?Q?JMZwu/5fsG1h05l2Hud2rOqCt+ekF96pVKrdCFpJdBcLn7cY7QB2Dqp9Lmcq?=
 =?us-ascii?Q?uo9Bbc6w9hzAi1ffJqqSb0AqToVmi2zqiMYu6cydR2HU3kmkuzDdsYx/JsRg?=
 =?us-ascii?Q?XSg69plRx/ezkv+PyU/EVnvjC2M3sJstInM7n+4hLO/4hV6T4DO2M26hXAq6?=
 =?us-ascii?Q?XFNLTDRcCemgd4f3w9YBCN3wZvNuThmR99W0npeHzHowWUpCP5AaaGCcKiYy?=
 =?us-ascii?Q?JN3spmrkL7mq356yiF7nho27a0f8v9JB6/Qf6yTbkvi4OVNJvypEfrbLr2/L?=
 =?us-ascii?Q?vzjKiug/gNAzdfNvU3gnjyoLcR8UK8/jegoOaiAptBJP3tUJXsOH5B4lJvy+?=
 =?us-ascii?Q?UqeK9NFLXkDoCHcIvitUsvOTqM7ViABcUOsMeaIaFgVFfsoceH/ISKjDiUIF?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bce28df9-1c49-4ab5-d8f0-08db0a13927e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 20:32:18.3687 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KDRJp3dMIi0OyuJXdrj6uQBrvh1/QFWxha7n644GpCu4JqbfUYzXH58Yts0WaBSkYmRy2P8PPsJ0ZqJooNfxsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7024
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Drop one PCI ID
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

On Wed, Feb 08, 2023 at 12:09:05PM -0800, Matt Roper wrote:
> The bspec was recently updated to remove PCI ID 0x5698; this ID is
> actually reserved for future use and should not be treated as DG2-G11.
> 
> Bspec: 44477
> Fixes: 8618b8489ba6 ("drm/i915: DG2 and ATS-M device ID updates")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  include/drm/i915_pciids.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 92205054e542..9c325c6b8df9 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -707,7 +707,6 @@
>  	INTEL_VGA_DEVICE(0x5693, info), \
>  	INTEL_VGA_DEVICE(0x5694, info), \
>  	INTEL_VGA_DEVICE(0x5695, info), \
> -	INTEL_VGA_DEVICE(0x5698, info), \
>  	INTEL_VGA_DEVICE(0x56A5, info), \
>  	INTEL_VGA_DEVICE(0x56A6, info), \
>  	INTEL_VGA_DEVICE(0x56B0, info), \
> -- 
> 2.39.1
> 
