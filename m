Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB8086B439
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 17:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CC9310E527;
	Wed, 28 Feb 2024 16:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UkMZTVn9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04D9410E527
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 16:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709136583; x=1740672583;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bq0bITK1DhzBUzURkyYRw5hNj4LXjI8uE9FUl4IEzs4=;
 b=UkMZTVn9YLxmOe3ZuxI6qeLr4+apeYtnmsft3VwDKYSh/2A08ei9GgQ6
 PTtwCm4ukqr7/wQw2X4fHN9TFzKS+KvAJTy6ccVz8an8gvD5qn99K0I33
 aicx8Qn7VuqaayzdRgjBj2iHe8V2ok1+3zdMfza11CeluOj9FnGzXIJmh
 TGsZSIFxIY7T0qebi1Jovcm+wr8RXo1ztn6RpuGAry2/yv3LBZl0GjpGg
 GPvpuQ19g1YbZrDd0wvCyml2SNCj+ZBmJPoKFgcC2/zLIEtCtC2EJDv2J
 YYM9Woa/9MYGVkeBNY1Krf6kmkC5jE9NEejia+GK0VOuKchuW8loMaT8K Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3708021"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3708021"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 08:09:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7529072"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 08:09:40 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 08:09:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 08:09:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 08:09:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RoRN+xmdH5mwxuNEgOomMJUzYST0ReUKCNiOGoOMGsRaIwVp5ISZ2Bs/4TZQIR+hXKLt/Axi+mX6mlti/BN0znpMtgoKDUg+wjHQjoIrjAzY6Ja4e9iWeJoOFMKya9Ks4hL0KHnqnO7CgnGZeqYLpCseXcuN4Cb4M+FBnBxxI45Sg/a+Y0U2nL05k0tlrOYR7ZsGFMlxpuzaGaibE57ml/EsBuSs5fegjEatMIYaiW1NXj6sgY996fG4Wr17crZYIAHehj6g/KfiN2HpsYzHUBnZrCv0VfwqDU6Q+6KRl2DGcZB55xKcizJY0GGH9VMovZ6887SfjfF1tbcYi24XdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bq0bITK1DhzBUzURkyYRw5hNj4LXjI8uE9FUl4IEzs4=;
 b=S+n9Q8bxl6ePG0OIrw2XdU95XyzN90tcZkLQsRkrJg8Js1RRrSjfFosS0suse16y12DFF5M7M9fKNep8c9G8b8XgIK9gmrXvtZS6bLDKB3SId4CKMh40bjoEvZcJKRwZBfWuKGh0PscIBn4Cho76XXCY0l2bJf/sAxGyhp7rpB4Q7AfTFXgzXNK4KDYqSAf9OkDktVNl2qAtgPvqyqLdhtMmiV/NiLQCiyM2rmEGZbbPnZH+eNdB5rWPJA4g7iZ6RaRJ2ZDQosOYpN3YxUwSKFX95biYIinBPPXrlgN7oEX0qeMW6d/Wubf6l4IXpffhCfXbIuy6k26U4P1yX4yFNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB5518.namprd11.prod.outlook.com (2603:10b6:5:39a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Wed, 28 Feb
 2024 16:09:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7352:aa4b:e13e:cb01]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7352:aa4b:e13e:cb01%7]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 16:09:37 +0000
Date: Wed, 28 Feb 2024 10:09:29 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <rodrigo.vivi@intel.com>, <jani.nikula@intel.com>, <jani.saarinen@intel.com>, 
 <tomasz.mistat@intel.com>
Subject: Re: [PATCH topic/core-for-CI 1/3] mei: me: add arrow lake point S DID
Message-ID: <2han6tetrqh62npqu6mk5mzwtgtocsega7srulkhphko5e4hjn@xctzjqw3m3dg>
References: <20240228153718.1929978-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240228153718.1929978-1-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR03CA0054.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::29) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB5518:EE_
X-MS-Office365-Filtering-Correlation-Id: e8a7e28a-021d-4a24-fac5-08dc3877a906
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wPWzcmcickqItbEFQfv1a9UnBNEQlaOtZYcUMg2qZcRGyJzHRTJI0LHqxRhBZs/eNo9bzCmwJiewMsprBRAYuMGEe3l4POhz5kO1CJS2ZxkvgXC8mztVnnQ/IgNQ94NfMTT8O0ewGDprunv4ZoyylNCENFzBZIhwxqc5uj+Gj6z9PIGvZVnjeyNTFdwDiSYTDQK/oyFGg3hsDyaaapYHURIbgQG7hlpkswsb5eau9exetY8nHAWDQotR/AEbyfJ3yyTTFr7nUn+AnmwuJZNAJmYoywmFSZhbMKKD8frHQQmfnF8gLPXQFYaj6sIKO6ui32lhqueAzc6L73ooDEFBi2ILnqGiJfO3mhVkVYjSNUCnl/y0+UtDCU5HBSwFGsSF2JtSSaQo3oJkpyDw4Rxn1+qjJ96HWwjTa428EtbWbDdkg+aih4SxOepn+9MxYmdCLUNkWZDyCPmkp1yv9edK2Yobkdur7VfeHUZzS4MSRcP/L4Rpw6Ogd8aLuQsKCCXEQVxMlZMDwKGZa1YD1JYX0tJLGiSXhS90tcX5rE+MDPYlk5iw17rHpB/M9Gd6cO1e6oCxOMDcg5+PByIhKQtP7EH9GSSBkJC8yp23G2AOjZVKBQ6v4+t6VoW6Sw+mip02
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3+NmMKCJ4rTC0YBIAPVW/y6McQfwyvAnn4DNZsSMIn+tfveU4SYrYdmoDL1b?=
 =?us-ascii?Q?Gj9EyLH9sCmtPyNb612p6k6r255odqyN+MXU4vOkDPp8ADvKb0o/GlYnlsLZ?=
 =?us-ascii?Q?nJR9o4Xqy8tc977hfyE0ctdfqpEPror9QYHNpWVGTMhJ+6D5x8sK2A+0v2aP?=
 =?us-ascii?Q?YxoHZxrw7bC5yZ1aQpX91fRBQj1PTxoApLZaojMVRD6G4Myr7lbrLtnBI2Oc?=
 =?us-ascii?Q?Qtj+RsVJxau+5+g47edbdcoyzFubbk9glu15s6NA4dhfC5dj3GhC0cLpAWa9?=
 =?us-ascii?Q?22xk9McFUAwlxI83Brq00O8l+A7uKNpTHAzqt3cem9j/Ma2M5A84HlBVwMlG?=
 =?us-ascii?Q?M47mebnoNlpd2Kawecs7GtN69FjztM2doqXlq/TI/gAhGnIQ4v8ErAaGnji9?=
 =?us-ascii?Q?1xjnUwaQe0qsLKGxDg9lWoNgHwhZSE4us7XzrnBesH1biLcSziLYsHyytSpM?=
 =?us-ascii?Q?cFV5yO7lZSBvy9Ux2NLXBqcJP5knlDnqy+gx4vvOSmTwSQ8hzfVHxTiBTwRf?=
 =?us-ascii?Q?0LpDI1DigafGlVDpUVUZw3HuV1UU2B3hkw6HZEZ+SCJSTi4gcPknpjeqWZ1k?=
 =?us-ascii?Q?/Qvh+TPQXgU1FbKbcHtKufOQcJBGt2oBMyDTI+K1/4WckZWlIXVN9XP+2BjR?=
 =?us-ascii?Q?k5+E/pD12gN8Dc0SpNoMLSBS0ZqiAgnCfCaMMxIzcG8ek3G1Wxr/B5hPgVgR?=
 =?us-ascii?Q?c/yxPqT0hDBAmD0PSKiDOiMaJ0xMy9ymDtZy6hfxhM4SpVVrTORtROiMjuwy?=
 =?us-ascii?Q?C4LvLFwcMdAROX6om/53S/MLA74IrFx22aBcDZYfDEyxbNq3NsMdtXRxmXZo?=
 =?us-ascii?Q?VzU+de9OH96WXDO71zclqNYaAmh7CaMLkD15VXHAJUmviWOZm0A06GJ82Hfd?=
 =?us-ascii?Q?Oty4ihptwgiqC/q7OkGoe3MFc8pSl80//C2JMIHn0xlcfNbutDQQ0bttNyW1?=
 =?us-ascii?Q?7rNTcWGABZU800zoeaP3QvMj57pTx/58dqorN1Ldsmxax6gR6VtO6IJiMyZC?=
 =?us-ascii?Q?stTV9THwCIiVtLSVGQP4II3xwsz6eg48m66uWvtBPyqbjFGeyhKXI2fZfnCs?=
 =?us-ascii?Q?BrZLvmi26hV6vaHqb7DlhaooKbCd5EeNZbTqUGvVq8WJtRvEDKRi1+x1S4KH?=
 =?us-ascii?Q?huylZU3x2PiaKudOG23qvLoob/Lv7IVc/xTsjsQOvk1nDlKad8wkmUVNBwUL?=
 =?us-ascii?Q?WQnmVPtrO4rQyY5FdcbNl8RV+8LZ09b480IvTQcnW+fm2W5MAm9Hw6AXOorT?=
 =?us-ascii?Q?5VlIJ1M8WzgCBsHp2lKHCdyW6b7SsKKFns4ok85beN/hzoFajqcKwOvjzuZP?=
 =?us-ascii?Q?VAwV2ppBwNne1cE+OKOlP0YrEjk0zIpt6WaaAvsVIy+x8n/ElPr6N2q2yUnA?=
 =?us-ascii?Q?gDKsqguQUn76vcm4l6ADgO2G5YYqzTdXAtygeJXYP46gbXP1dUY8ljJ1086h?=
 =?us-ascii?Q?NVwdvHabU6y//NU4voFyqBBLOPUgvUgs+rAsed4dNDxJ5xogAgYDoQyb7/S3?=
 =?us-ascii?Q?nYY/I/WYQmUP/k2I+udhajGkO4z3kM2RBb3Rp5TudkhRJy0IlPhmW0Z+a9an?=
 =?us-ascii?Q?KokrrX74abeKStjzJVO8+R8yu1G0H74P2XEqCCbaPYDdjd9sp53+0gOIna4/?=
 =?us-ascii?Q?xA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8a7e28a-021d-4a24-fac5-08dc3877a906
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 16:09:36.9112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +4UCwz+L4MSHuS2UsxbqnriXkMn1D43Ueweu9sE5iQd6fgRNxRgpvdFS16ySmL93wyyTgLCSMdiZQmshtGpbaYPbuM/fSkYxUpOilvVLU5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5518
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

too late. These patches are already applied in topic/core-for-CI.

On Wed, Feb 28, 2024 at 07:37:16AM -0800, Jonathan Cavitt wrote:
>From: Alexander Usyskin <alexander.usyskin@intel.com>
>
>Add Arrow Lake S device id.
>
>Cc: <stable@vger.kernel.org>
>Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
>Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>

For all patches you submit you should add your s-o-b. And also see the
rules for patches in topic/core-for-CI:

https://drm.pages.freedesktop.org/maintainer-tools/drm-tip.html#hotfixes-in-topic-core-for-ci

The patches I applied yesterday already follows those rules. See
commits:

240b5555409fc mei: gsc_proxy: match component when GSC is on different bus
18f87660e5bfb mei: me: add arrow lake point H DID
0dc48377bbcf3 mei: me: add arrow lake point S DID


Lucas De Marchi
