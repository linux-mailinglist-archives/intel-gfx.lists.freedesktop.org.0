Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576FD828B5D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 18:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E319910E4A5;
	Tue,  9 Jan 2024 17:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B3A10E4A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704822085; x=1736358085;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8hYDLQOxjZq2r4vjsDD4XLzfrDJ/AbnhLPsS9U2GqEI=;
 b=OhJJ21QVvEQ1oEBEqYKy6lavK7EB20QFdgIGuTBq6iEbR1QNspFqfPnf
 60JIrJ2+2+3I7ImytJ3jVg3F6SsQMM7lwSaXUOmq0qa/YpuybJgL8IcOU
 WcQV2zyqlkr745SutMIw1nL0M19w4yaCVKn6JcMw7l8ZyoyCoe1/ClFKL
 PB040QbbAusWlRaa8HXw7wAoQy29+AN9wTCNbCFiGAXDq0M+RXlA1xHb8
 NlyNU0PZ2KRowUQZmPrJdd4v2QhqnsZfnjWmoWfMvE10TVvU6+jAURGF4
 Whbk5nSzA4VBohLxV/sIHZ047cS6QTUxtur+alMLAwCdFE75bukdkJYin g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="484454689"
X-IronPort-AV: E=Sophos;i="6.04,183,1695711600"; d="scan'208";a="484454689"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 09:41:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="731554962"
X-IronPort-AV: E=Sophos;i="6.04,183,1695711600"; d="scan'208";a="731554962"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 09:41:24 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 09:41:23 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 09:41:23 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 09:41:23 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 09:41:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dV+wDmd1dcUBR6F4aRcWnPT7/XEVFrqkuIx4gWyegU+hwysbZrQZZKaCGYanew3zEyLi1hK7AzywDO1vfxKuW2H+JO0hC0U5RJBD4IapXB5Ry3k6cO003d8KFQjUW2HODYkZZ1C4IM7GfCcFnCWtWv+FDaP0B7BK4hMksPVIIvbV5l9VCC9MtYjh8MjqwFAL5b42O0sWC2gpIXQ5AjdVYxWXW8tzCdgsgzlwmccVIjbdXiMkIU8CxA6zZsGRZTS6VktNtA93D/qU6kmbzP9WDZ2viX/D23YgdEGVnfv/ANjPhqJIWzY1Uzs2bvGdSRP/7n07k/5F06FZlpQrmgHB2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPDzsfvRL9g2sYqzuoiXq2O0HObK/2FU6m0vah10vu0=;
 b=KO3X2MNUbuhNdyaHye2EnaYYlC6Nee6n9Ts+ymMJd7M7sDb0R27q/RPAICKoAwT+8jRSb3OhgsfikFOWqPD76e8Gm3qFasWbYbdEfBMtjll2XSgU8kO5yhMVdxoajx/myauWdFx301xKoSOyS52onm3iZypy/+y5TBrPW0DOS0KuMBhconT/Gp066jPPRm5Qf8D6vn7+S1WUlEfj4w3DU+1AQvZkZ1NSof2pAXw3k4LZzh1kk8heTSddGZEqyc1R6JBKHxrq1aaYnDnBLSq4OYeO5W6zjWsx8rCeSTSH40MXAVQJl1Bf0g6ATryEmxx4xl66VqYec0d13VoWULFtTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB5003.namprd11.prod.outlook.com (2603:10b6:806:11e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.25; Tue, 9 Jan
 2024 17:41:21 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 17:41:21 +0000
Date: Tue, 9 Jan 2024 09:41:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_Resolv?= =?utf-8?Q?e?= suspend-resume racing with GuC
 destroy-context-worker (rev13)
Message-ID: <20240109174119.GG1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231228045558.536585-1-alan.previn.teres.alexis@intel.com>
 <170436584364.20567.12631074825231636622@5338d5abeb45>
 <3e75cd48e9bd1a4d4dff72653d8892f587acdea0.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3e75cd48e9bd1a4d4dff72653d8892f587acdea0.camel@intel.com>
X-ClientProxiedBy: SJ0PR03CA0258.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::23) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB5003:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d27a104-7070-4283-43c1-08dc113a3146
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EdzYfjKzpgmsMiCPerLyq8QctEXsE3CNYeCAhDZmnWymHoJAoEC+GzB4lyFOggJ4KlsrZaVEOpK8RdJ+0Th2gnZguE/qx3rWtI/mVlpbFntvTPqbReOru5ERoL89MJm+EdMbRCUhGGwLfcBJY5ErwKscj6+yEFZ0NcxiK0gZGhbAogPOWbW4Wp0/y8Kd6ESFv73ilOLPQe250qOGo10EJBtJIdzmVzInamwWljGZR3jV8gWlWPDdMWXN4/JjkJaDZGWSO2+ZAq6v5nkI1RFjirter6U6uYQb0Gkc/UjtQv6318GtQCp8yq/HAcp34H6P5zrNCSu84iPefOY75bbNs4ihk0Qx+yppbgsDWaSgJnRogM7hWtKQuh5J7IQNtFfzFzScpCpYdEglz7+Yjr6ayTbXVWj5H8W7hD54QK8zx5UB32x/WHvwh5DZqAO+F7kk7IKbBxCiLV9LcoZ3k8lY5n6pm7pViCtDoMXdSwabEccY/XH/BCnj7EBM1IiHS2oY4hnXq+h9hQWUlNz+NWbE4K99O4aWfIpu+2ZNwJ73MmI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(39860400002)(396003)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(83380400001)(41300700001)(66946007)(33656002)(82960400001)(86362001)(38100700002)(5660300002)(26005)(6506007)(1076003)(6512007)(6486002)(966005)(15650500001)(6636002)(2906002)(66556008)(66476007)(316002)(478600001)(8936002)(4326008)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NDcEC8NFpsgeUZ//UZJxe2DUATmhoOJeR69y05oNUIIBj9Kt3UhOy88aJ7G9?=
 =?us-ascii?Q?wFUrWZHBi4pk6nvbqGF69QzQeoxC++ashoPs3vAb0W++BiLedx3pdr9yZWSt?=
 =?us-ascii?Q?wNgi5TXZ/9iHudmt00LDpp9eSPUeRNQancgkHaWSxIkwFFz+VL7mBp0nJLHr?=
 =?us-ascii?Q?5AbVZMcVoeVx2YXVUgz3npSFHuuVtS73xQ+sqG4TNHBERTImVzpv5VtukfdP?=
 =?us-ascii?Q?6pxVX/lKWEQ4Cie+6vUPvLuqdcat8XjXMtvO87+R64cU07/weWmnxRmOddL4?=
 =?us-ascii?Q?V1feuQKt08rvs53Pk+pCj7TM28ZKujtekLjk8qrdbfoWnE6t2o80y8v9Rmkv?=
 =?us-ascii?Q?zZLpJ0+jYYCkVcUOBMlMK5sK8V2Al+mghb6yIqDkAu9o+KDB7+JnzSjqwy3d?=
 =?us-ascii?Q?QkXHFlCshjs1HsRKmxpO8FJbyc8xBB2yeMM1fOPHG862Ii2tuyk3oelwTEiK?=
 =?us-ascii?Q?JXfzYib7axSEABjKlfSvzYV39NRX8KWE2PNp29N9/5fV1i/oEUrm4Ki3AWk/?=
 =?us-ascii?Q?Ja/ChgtxL7cXIC+l/c68Aha2hMGge+5xYJrF6x9XKM4w2JVZKIbZj23FBGlx?=
 =?us-ascii?Q?SSJPDTeEo6HnlxxL1WuKANuvi2ofSdSNPxbGNheLhPCrxxHolA6rHAAWhRgV?=
 =?us-ascii?Q?wRf00OEB+9Ccvn8uK00BwGS+bxyyCTKG0L5w6JpQ06A6EjddyebWsBAguzRV?=
 =?us-ascii?Q?mIMH8zp0BcEZB4Pja67n1WIFPg53/45pNZE+LETLX2+UHQs/SpAxhNk+VwWC?=
 =?us-ascii?Q?l43u+29mmnlUxdRcpbjK6hBQcWGaU+Zqc83fUdBBwuJwH1WpDMzs1tqZfWlz?=
 =?us-ascii?Q?r27BBTVsu5Ln16bY88B8QzE6CZmkX923Idee2pM4YTtIz1f6gNg7m7GDC84/?=
 =?us-ascii?Q?z+Kjf7v+c+wCwWxeoMyW5S+QH34pkklEuL05jWFI7vZt08Vzyo0YsmnVVIxc?=
 =?us-ascii?Q?bqpOcW5oDY3j+q3wfVC1m8HjOGcEpLuC0CFLfAiRX4BBTunv4wJbw7mD37xM?=
 =?us-ascii?Q?CgPjNmSipvQkcwIkCJaqlHy0cmhaYiTQL8NZpp7vPgKkgv5Vr9omWE3YQxYa?=
 =?us-ascii?Q?LuMMu1AQCvmK2SXDjwgJYDMaCr+XHEfrNY9TVwxkAgLjjSGT5AwN7uCSyfoH?=
 =?us-ascii?Q?9tMMLeBh9gH4xVVFJUPsXzMm1OI50+QO6WMTXM/HHP1th7UOZUvZCUfd3axH?=
 =?us-ascii?Q?d3atPvcfG7BWxgvsDRxa9X8WHcsmsmdLo520OXqUDIFnXduLQU664nYrGYgf?=
 =?us-ascii?Q?0sRt8YO85dRfRWfa/VXLR8QMokpKMgeSYY0PZHqDkqHrHns0A9W4rc5CSXOC?=
 =?us-ascii?Q?e67d81RZLaguNlBKJHF4jqeK4i1CSVOYS/WVBkRkzbB92lgVgIDeyvg15fln?=
 =?us-ascii?Q?4GC0LKdnk8P3blC4hTIPvBQ2sA+5l57yidfNSDzIgevNXxXdRX2I7GI/9uhC?=
 =?us-ascii?Q?6xc4wVHFRMAfdpbo2VNhSg161UWsc8N5cPRzBSpebtEhx+F2LILAjcYLAeu9?=
 =?us-ascii?Q?FGVXMKzosN44gZal+jpsEnDgrlUuz1UCfeAmclqRVBzL+VBnZp2YGTH9P1Be?=
 =?us-ascii?Q?bsosCLMzhhpRBkNKuQEitZbEplvcugWwIhIB2AxitsCA9YAAPTRLBF84m+Lg?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d27a104-7070-4283-43c1-08dc113a3146
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2024 17:41:21.3682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yzA19w8tbgVRNW3wLopCXImcFZxsRIDdL9Q5TpRIhU6TFUSd9tKMdB9A+yA8b5+Hdjj3OyTY9tDqC05KYh3X1Q5LozXigKq7rpou0jREWs0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5003
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 04, 2024 at 05:39:16PM +0000, Teres Alexis, Alan Previn wrote:
> On Thu, 2024-01-04 at 10:57 +0000, Patchwork wrote:
> > Patch Details
> > Series: Resolve suspend-resume racing with GuC destroy-context-worker (rev13)
> > URL:    https://patchwork.freedesktop.org/series/121916/
> > State:  failure
> > Details:        https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v13/index.html
> > CI Bug Log - changes from CI_DRM_14076_full -> Patchwork_121916v13_full
> > Summary
> > 
> > FAILURE
> alan:snip
> 
> 
> > Here are the unknown changes that may have been introduced in Patchwork_121916v13_full:
> > 
> > IGT changes
> > Possible regressions
> > 
> >   *   igt@gem_eio@wait-wedge-immediate:
> >      *   shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/shard-mtlp-3/igt@gem_eio@wait-wedge-immediate.html> -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_121916v13/shard-mtlp-4/igt@gem_eio@wait-wedge-immediate.html>
> > 
> alan: from the code and dmesg, this is unrelated to guc context destruction flows.
> Its reading an MCR register that times out. Additionally, i believe this error is occuring during post-reset-init flows.
> So its definitely not doing any context destruction at this point (as reset would have happenned sooner).

Yeah, the MCR timeouts are due to these CI machines running an outdated
IFWI, so they're missing an important workaround in the firmware.

Series applies to drm-intel-gt-next.  Thanks for the patches and
reviews.


Matt

> > Known issues
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
