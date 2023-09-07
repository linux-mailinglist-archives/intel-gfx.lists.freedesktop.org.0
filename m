Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F13797CAA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 21:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420CE10E0AA;
	Thu,  7 Sep 2023 19:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28AE310E083;
 Thu,  7 Sep 2023 19:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694114655; x=1725650655;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tAWKRMbyyDEbczh6p+OPcsNmuCcSVIb8P+PT5HiU1D8=;
 b=X9KlJ6pIW+ywYzRsCsq6yNvZV5UMCms+6UBi9O8axq6132gKM5+gAA4o
 kVpTOqdAGS+gJNs0bjqBC74pgBak/6RzAN4saPpU27rz85TYVIXidEVhm
 dYL9ulCaD347mSH1/tolUzdTEdApeSoAfF4ob7HHs16TJf54mp1LJj0As
 EPNcu4WIlxA8onohBdp3ud57cgzskTROZFaVG1TEpwqtxuFfvrrLE5ga4
 SLBxqgDxuWrAGr0pjhE3wbY10xZiuSgRUuPJxjVkelhV32PClXgc+hn7o
 0WXX6RPyABuOxTnDj84E+RldEPcWMiqWozL/ut8jWA6n5VFBbziXZ+542 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="408446007"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="408446007"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 12:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="777192800"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="777192800"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 12:24:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 12:24:13 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 12:24:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 12:24:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 12:24:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j35jAoT6PK7L0drToyoYaHik1dq/8Vlq8+n7i095duFvSipSudbeEBrfZomPxXci21SLMb7lcdQftRlhk1yeKcxAWOv4mBt6pS4uG2U/LoUmevfKqHhOyVyE8nQ0S4OIaDDqnpzzs8KNMtRDKFoZLgppDNk53R3HyVNVeCAzwXmLZXqWzlLajTYSjRJ/xNooCg6U3aSjuDNCQFSBGUQq4+z4foRUS/5+bH39o82QnKrmvhE/62QV0xKgGhMUJimU5yX7CV7QMxUDcyJnm8CNW4KkoQnOZiYHACIMM/HEQjnxAoNM9qs9BJz1yDiGCcnQBrpQczgVOQJufq1S0MRvoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8XKkX2H7o5TcHLHaqStf88eokqlEAiJS2mvrCytSd2Y=;
 b=D+H8Dp30epRV9M8CL8YdfkcCy0WOH1C0roHlMatQtXs8nSkbPYtLEPaY3hh84baHwGE3RkOWSmbF7AeRT9P2ADgRLdgyGrQeAbN/bdyYmj+1LNt7Eekxd6njTID5sgepIP4HrbctlDQMnnMNdmZfEfYlLjFl5B6RaK32myX/di+9nX17XKECDutMvfMo5ROmtere+fDNydoWqZhEPRYBNVIZh/bGgkQARV4GM7bCfwh4wXrucoMCLwLlxGjHEpuzO88HUrANnxFMYGfdPN4YUmZhWh/0CmFo7s5oIS2dtVut8bH8fC/f+3Ux68GG1h6Ayln//TrmoX6DZP5nqTvfvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.35; Thu, 7 Sep 2023 19:24:08 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 19:24:08 +0000
Date: Thu, 7 Sep 2023 14:24:03 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <hoa75vwtteqfkwnqc3uxbesctj75o6ot4xrehw2txswq22qfhe@ysblhuq5kxgq>
X-Patchwork-Hint: comment
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-13-lucas.demarchi@intel.com>
 <20230907175741.GM2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230907175741.GM2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR08CA0030.namprd08.prod.outlook.com
 (2603:10b6:a03:100::43) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: e72dc8eb-3f97-4ffb-f345-08dbafd801b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M7hvwSVKUYoF6uf+2xBqzLciXcFnFEoF3mk7hMP0Cy6DxhrZbeL90P0Zjf29WBIdzRgwgUfdjDTUcwyJF0DJWrMDQX4RLqY7OZd7xO8owwVCJivgKcEGXSQzmdfLHgmN5pMwXjbze9prE2+MUVivu/wz5TY+NggsXFcBlGzvD0QgrBQ3yt7bAYGqB3/Ls6Bs9QsG+yjtrf9bYIkkn8JL5y3ZLeU38QSwX13a3bJPUXm5/FJxuPMt7Q1Vr8AQVn2zQwChVxJ17Plw5rBV9Immhm/A0+w8fMCZ2+T08HE4S9hFkgZpzXKt/GqU3hh5Pqeik6obhAblesOiU11DQmMVtENivb2VJ5+gHiKy2itnt1gQ6fFjfnYzg0ITm2pCyKMku4sXEU5mP5Wd4uLI6Q2VUxUkJZMNn3E/AGRWMVhBXNDK5YI5Nb5f2H41ReTwHgdU2suZ7Sw2AhLd6do1Fvp1/BHyiVbY0nKIa+hOkNyiZFC7CUAvdckAR/Ptp8o/lKGMSgVCFr4f6NVDRYVz9DuOb5UFlGxLptBouacJmxhaaQ/qIYhzx1Fh1tf8tvVRQcZc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199024)(186009)(1800799009)(8936002)(478600001)(6862004)(8676002)(4326008)(66476007)(66556008)(66946007)(5660300002)(6666004)(2906002)(41300700001)(450100002)(86362001)(316002)(6636002)(6486002)(6506007)(9686003)(6512007)(33716001)(82960400001)(38100700002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1rXshHYvV0PTUwj5q3+7B39aFC9bvX+RrO6uZJGV1Cl+ajap6tK+hX3+8PPS?=
 =?us-ascii?Q?vSQ1FYa7oZ/V7irkEYeBf6UCNgybqeIzbo8TFXVlWv0CCeDv6vRRvNR/rFHu?=
 =?us-ascii?Q?vqG1dEoqDr+HHgqPT5z2vX6YZCHgXTc0Rul/dRuYg+sMgMYxpjHAfJOfuMT9?=
 =?us-ascii?Q?/6TW9dWGik9ppxdllfgXocpvF4zQYpcAi/mDhpA3+VChvAkbhiwYLDw6hDU3?=
 =?us-ascii?Q?J2OqR9G5wsuhkid2Vis87rPLZKDQOwAJPIAYoyKMwebt63truIG/ZoFe1B1o?=
 =?us-ascii?Q?faphiMZKCvQAbVWAnXCiu9VZrUYeb7INtegRPii4UPJdUclo0mfC3+JBOteN?=
 =?us-ascii?Q?sM/levbjWiRgumt44SjhtqMZXCo1vYoyM7PAqJpspB549+eug2rQremofH9d?=
 =?us-ascii?Q?DkkM0DR8u1IIlGUghKVTmTL6FR02Sz4HEPDvyYKBUU3vqoiMid8gWQh7ACje?=
 =?us-ascii?Q?ky63HJ+QDyEQB84ucrlUDvzm9E2KcZTC1r3CJ+IzifUwStKSqagqphhxAQL3?=
 =?us-ascii?Q?CxG6RNSbvbX9q9LTEf6S0ExjpLzDf5VMUP1Kq6MtlGJKN/RgrcKZt21WF7nV?=
 =?us-ascii?Q?XOW3dCQqTCfHwPEjIFvomU66NZHsOqIv63BCKLCp0QlQGTc42GoDdZRE4uXw?=
 =?us-ascii?Q?DSCpghlfmYMDJ1Vdxh8wdBB+h/hLekbuez8WOv0CoB/AWtZoK1Qio8opv9qx?=
 =?us-ascii?Q?m87Jlcx3Y9yLhv9GXNX/z01mYVlyyNkCikEcFm+mFQgEx45Fv9xHaEao7tV+?=
 =?us-ascii?Q?zq9pf+Y445IfRB17wwND3xBVrm8hB2jyQAywSvUAzo5zoIr5iWBbs366RLXv?=
 =?us-ascii?Q?/JxK9snWk02GOZ9pFMDDYpQtheIinq+KHKN72LDnEUaKqFhHAHk6QuNs5Uab?=
 =?us-ascii?Q?4H3rwBNXMAqzN8RCr9Sgi0okAjmWYqRxy5UuiiORuO/C7rw4ur0reGVgu87t?=
 =?us-ascii?Q?ZdUwBCj+Uh2LxY/gRd4GXqNLRRN/p3vmkYpd3kmEAwFQjMXQ4fjd6N+c4Exr?=
 =?us-ascii?Q?p4MwOjB70W3pCK2POGyPUD0MTiOP+8ovAIvbKfdN8iW7fpQT78LwOpCo9fka?=
 =?us-ascii?Q?oVVsMSjQUkaVGo5ajijrsT5gvbkzBySPTxXfG9xNoPSOhbLFOHrgGJCTnJV8?=
 =?us-ascii?Q?pDBHMd3xWDs/wJIGFYBQC8CPdIViUMGRnig/lgPdtOF47R9PsQ9JzOnQUA1W?=
 =?us-ascii?Q?+J9oqamo7vkXR9r3csB5CMJX88HKlpQIEaW6r/MKMKlxogdqfPG+qnxUNhQV?=
 =?us-ascii?Q?fCW3u5aBakZXF80PNa68dzMPiRFCNwObfAhawgDk95JrQABREI/IwVkZE/R0?=
 =?us-ascii?Q?RBUb+ZLvp5GDx6omSZiIErr6U6g6Evic6DB3UHeikCkVZeCUe3xCj1z/GY53?=
 =?us-ascii?Q?8TwL4Vmj7leygWhmWQws1YgLE5f1H9gT0oAOhbPuEHxy5wkjUR9PJ7gCPSy6?=
 =?us-ascii?Q?nnfn4rqwyXPqdEotIbCHwpbp/eSoXSMZ7HYyaNhhfzPD4ldQpO3emacsyAkB?=
 =?us-ascii?Q?+EbFZmDwbeYLkM8g72fjzfKM+NT3WiC+YH7XnZLMLSKhy7zFxvFrXMPG6UvV?=
 =?us-ascii?Q?YJtXkpudH9nxDGAUEhitXJnl5K7dyeFF2ntdn2qZ+XDw3as9OmQ+BQtt6x3O?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e72dc8eb-3f97-4ffb-f345-08dbafd801b6
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 19:24:08.1140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zRbXlj1MzEIPYbBR5JVr1KY70GtF6wmcoasHJumW6yTqod0nKKPairNYzFrr2d1l44Va0ptm2QKc5821d4GrfyixEVwVf+4hcxYz3GTi31o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 12/27] FIXME: drm/i915/xe2lpd: Add
 display power well
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 10:57:41AM -0700, Matt Roper wrote:
>On Thu, Sep 07, 2023 at 08:37:42AM -0700, Lucas De Marchi wrote:
>> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>>
>> Add Display Power Well for LNL platform, mostly it is same as MTL
>> platform so reused the code
>>
>> Changes are:
>> 1. AUX_CH_CTL and AUX_CH_DATA1 are different from MTL so added extra
>>    logic xelpdp_aux_power_well_ops functions.
>> 2. PGPICA1 contains type-C capable port slices which requires the well
>>    to power powered up, so added new power well definition for PGPICA1
>>
>> FIXME: make this commit and "drm/i915/xe2lpd: Move registers to PICA"
>> to use a similar approach how the ranges are handled
>
>Is this FIXME still planned before we apply this?  Or are you expecting
>to do it as a follow-up commit later?

Before applying. What I'm looking for here is to get agreement on the
approach done in "drm/i915/xe2lpd: Move registers to PICA" as it changed
from v1 (even outside the feedback received).

Lucas De Marchi
