Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2FAB1E5BF
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 11:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FC010E8F1;
	Fri,  8 Aug 2025 09:40:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HK8bcxJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B9C10E8F1
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Aug 2025 09:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754646009; x=1786182009;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=shi3nhLwepB2zCGGvnB/2KQ6XDgqIeOUy5f9hDq/EYs=;
 b=HK8bcxJFYfjH3p6g4PB7lvH3PVyjk7MvPeM43fbK3TmFsSVhcn/E8nk3
 4sGYr0Tf89ooBflDbEGqsASHX3NKngn6V2UWs+vffFRJTpo57fqovyLEt
 8LyYfCDX1kZ9wWz18CQNZUZ00fpO4IG80SZU9M9DoRMM8McZ4IrHnPsaP
 9kNXIb0dN2iilWz0zaeIuZyto2kTCADx1G8cp2DZ0TrYNUN8LeH8OPLHk
 lZW8zZAJMua10JnxsaZnBzeFz/IfaI9I7Q3dG+K4uGXze/8UOCePKxGJJ
 +GfyCGV5wqVVbLSItVyYi7EK+I1QGlLxeQWeJFLpM8TeR7AX0p4y8MMXF Q==;
X-CSE-ConnectionGUID: pFt/NjZoRF6DZ/Adnw4xfw==
X-CSE-MsgGUID: zdf13tGUQEayBxenJiJprA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67582688"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67582688"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 02:40:09 -0700
X-CSE-ConnectionGUID: Gi8WYyUqQGG00VAaKOIlYQ==
X-CSE-MsgGUID: gp9gbZZUTNeX+lCzu1Kb6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="170540384"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 02:40:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 02:40:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 02:40:08 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.80) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 02:40:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCXZCMB0ifTBpgE02+WIldOYQfgxr8ysdGOmZXrR9eALQDrFXjm9HdmTg9tskFSbRuvd0HS3IIIfRt/tZC3Pm1vei3juj/TZwTkK03uUiQ7i+wnCf75BN4GiVAmuxvKAZsTwLcO+p6NY3zZR+o2ydPXE9El3C2TuRorSD0WBMMiGmMI0c5VvCImBLQI+0nW45y3l1MdzsbaxgBJG5+oe1ai6yj5bUk/oJeGhA8S1XZpoB23x45yyUVFQ0D6HdRhMDy9ugJglHxP+/2AvbPHh5f+iL5OvD3pjnRvAZ18yeDKSsaThLSmVppNa+joJz3EcnzOnwHJk7Nb95sTujsQWCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xLbRvTCB7qcTlgbxoA5P55FFKkfEmI0SjaSdwca+esQ=;
 b=F5lT25Ca30913uGJFv2cUb74KnSUDJcmn6hN5RT9LROsZHS4cxqJgI1sUREoPv7VN5T567h3I26J32sKtq+BKdES4MqptXR7Frd7Mx0hOfKjZJqxG9nn1QDsX5N7yn75XDk9JNXlaNykdyWhHRIYbaATiYjSF9pXQq3kZenk1vZ/1gaSGjNo1+0GSn78zF7wJ4Q9tLQkf+7U20hNhMCxKOzMdNNVDJrYefzXDp8yH5KjAguB4Yj6WcJHxDm4MOOFfqs5zFAKndczHL4eNHfj1AH1mUclTb0yymwiOfH3nTwFIFNlw42Cf444GBvDOrBArLyWWlTLI5XyFdfooXgS7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.17; Fri, 8 Aug
 2025 09:40:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 09:40:06 +0000
Date: Fri, 8 Aug 2025 12:39:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Vidya Srinivas
 <vidya.srinivas@intel.com>
Subject: Re: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Message-ID: <aJXF7egTCfx5bAgg@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250808091602.288323-1-shawn.c.lee@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250808091602.288323-1-shawn.c.lee@intel.com>
X-ClientProxiedBy: DB8PR03CA0029.eurprd03.prod.outlook.com
 (2603:10a6:10:be::42) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BN9PR11MB5276:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c1f323-e78b-4ae3-c020-08ddd65f8e92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RBJf6hFXD9GhhBFsHVEBCS7zWY6IPE1MXiFWyJiHWhLaBHx1crg1IJiIjRRX?=
 =?us-ascii?Q?5/rDQcw5+eiMxCh9q4/GKrzGBN377UQvx4LUd2qFe+MQCrtjYOefrF1HRuVQ?=
 =?us-ascii?Q?96GE4sB/t6lczAVI0wAnPd9dSgX6wJlm4ou6vOTQc1bq1//WbLfomvAp0g1E?=
 =?us-ascii?Q?euQTldqgWdfYR9yLF0I6Xl7BOpxD0x7TeQPjXyLtcMVsqBsZSRb0hfhbHjzZ?=
 =?us-ascii?Q?ITzVYTot4ju9qf6VVoc/zGA6/JzlFO4buk72m3/Ei3Bz4/d35gyY5Tzu6BcT?=
 =?us-ascii?Q?8xliK5n6zWgIYNXhIJi97gKluLQcSgRC1oB9yEwkcDkwAnN/l/zkSLPiE+ZU?=
 =?us-ascii?Q?JWKfEflcLbLGCbZlYTbR1wbpf4j7yMfEkauI+V11k65Y59xCks2tkQVtrj09?=
 =?us-ascii?Q?66WOn2wNzXsx4U7RDfu9xuvNuA0rkgq5m9oa/TeDbe//WPMNz/MRCtkPTeA7?=
 =?us-ascii?Q?1Ej58KjA05yHffOGVBAINKLwZ9CurPqFWWCI5aHMpWgOwRrZ4wFLD+fPx0yN?=
 =?us-ascii?Q?o0aaae3Js4lkKWe9Mb2e+cQEvJ600iduAp6QvBKpsTU6qqj9YqyosD59fmgw?=
 =?us-ascii?Q?fol4PItUFGbJD3RqyvLplkyCZK2oOHEGcj0+brqZUIWK68ayQO2eCbpSsBsF?=
 =?us-ascii?Q?wVS7eskcXT0kEM8c4TE7gaVEm+3D+GzZ90i3AjADMyT2N/uENJsFMlxzFBEb?=
 =?us-ascii?Q?8cyDa645b8Q/1zbbkvVVRgvVOIrsS6DahVmL9fMq8PB/WiCbvZIt1Vd0PZc/?=
 =?us-ascii?Q?hy4G/Ha/NhYchv3Ws8Hrv+XO+2wcC0R7FFl4Co+eyd0TaCxY6/VayDv3e/G1?=
 =?us-ascii?Q?VTs0TOCvFG3JywH45lWpRlPsO/9Ihuf1Mb0fTjzUtZSbCcwUhYengXRWxWOm?=
 =?us-ascii?Q?FJo07f59X8QxUhdV5SFtsfUgGVIarDwzeapdLa6ItWgTjS2dyoByuekdHMyG?=
 =?us-ascii?Q?dSFkh/kg7eAjfrup6PBAH7tTwCY9m1EPalkq9gfLuBbtYpEh83Dl7mI4Ww7i?=
 =?us-ascii?Q?gkjfIDo1aBPD2Y9Etp3aBO4tB1c5U3BLwGCCIa9T58hc+GtTtHQUXA7ih2YU?=
 =?us-ascii?Q?c93vi0zWNlwdDR4w2BpNuWmxxsPBKAdrByxuGtkIilRFpxbuJSb4T5q+DeUu?=
 =?us-ascii?Q?Ccrz3DYnFw859vRybUkSJImyMB63wH6JoBiBU/xEih64o9Vkq6enMp/6H6yd?=
 =?us-ascii?Q?0n2FhspYnZrpHjiVUdRFf+nQ5ugENck3rr+DOPQgmdrxqQU2YKWfA6W8P7JO?=
 =?us-ascii?Q?f3XA6wm7V0dL4sNwaX4EXb6mWZMp+ySbJdJQH8k70qUlD4oOiarr1IhSGmQV?=
 =?us-ascii?Q?Ob+YXqkOs8xUhy8V7qyusP9/NpmB/t6mC+1Zxg+/n2iLnyPZohRYDW0/xNVZ?=
 =?us-ascii?Q?vBdwldYe4GwG6aLo8apQeQ5u+BmtHSpMxvpDXmiNJx8Cul2f2WMB2a6RZX8z?=
 =?us-ascii?Q?IIip5Iva18E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ymXyjADP7LgFhRA/Y6/JtFi7wyxclMs0cKC3wYwdoF37F3bx65o8v/gIDBMx?=
 =?us-ascii?Q?r0ohPqoKUricUmjFLHar0kPpXQbYhfxjVhCgAj7Vvdyo5bc6dv32kx4CoIYU?=
 =?us-ascii?Q?iXxlnzxrdejjDZ4DLpVVb4UwS6AhfA89At5SLkNzNhqB6oQvvf2P5Tm1A1Zc?=
 =?us-ascii?Q?L/OHg9ISxvzDd223e51sSyLNOLDqY5YNkgyE+8QQFH3TKEFcHQcIbTgXBmhA?=
 =?us-ascii?Q?/21nxAytXkYKVLN9iyxMCMvGqhgWhX8fAkjvaK0oqMCh9Q74jS4AXaaZGhLm?=
 =?us-ascii?Q?twBIrKkvoiB5DebLf1qfgsP4hayRmmxR9hpcP9zoQA6Pqm+DDayIF9WpaTlc?=
 =?us-ascii?Q?dTtZ5UeKL+Bfmdh5u61Yk1EOWlD1jgcxoy8ZkJPAFyMjoSG0HHlpEbVDtTEI?=
 =?us-ascii?Q?04oh1YPfofrdG9vhenElf+aLFp+ulfeL8wXzq8XDJL2Y3HMgQf3Sbf1X3Dvu?=
 =?us-ascii?Q?YD8EWdDBPQkeR8BBYzuIYth2mRRtydBYWYzQxMjfl8g+Vu1lwA4xO3YzQzPI?=
 =?us-ascii?Q?odtQE2nltoyj6XqAjNmPhCWR6FCu5xMwjTuQc35PZNzhRl6VoIwVrEWjsSPd?=
 =?us-ascii?Q?siAIG+MiayDz1SLzaDJRcYSD7WB0q9SFg7lJzCQtscLc3Zpv2WnrD9TBsTv5?=
 =?us-ascii?Q?F+8TT4sK3aVDeM6btQwl7fSfCfHNe8oCL1XHzxhp+Soizeoemg4Feauwl0Iv?=
 =?us-ascii?Q?Wtou2wKxv4WcW09qBLfUmKZKOfF9CBJJ44r/oPAKuZIBeSMQtUZFWJKMrVqL?=
 =?us-ascii?Q?NepQMaTujnYgm6qbjaEICSuDKtY45R0Y+moSjpQFnFQcD5euM+amKK8Vjjps?=
 =?us-ascii?Q?J8+4V/zz8zfpYzkLtZkJsgO1iEyoCwd3HpGW9XN2Gk9/j43grVY1ZTKin/pa?=
 =?us-ascii?Q?dkUTaCXpRAgI4j1HY17rjLL0g9w90e6CpFusiIMeW4Op5uF0hDrNdyGv3s63?=
 =?us-ascii?Q?rwGY1jCoiOC9czzw+TutGEqV+X/P6unjJnM2PvVoizhXkDRx3IAaah7XnYov?=
 =?us-ascii?Q?BAtPRc/rVtnkNaBkqEBp0pYrS71G5ac7MD7NWoT6SBLsa48CZeXq5+cJSRbP?=
 =?us-ascii?Q?a7Zr5XvQcPsn0oyvLxHyZVmYDk7Fpa8wKTgua98W7fQRWwuX4cfrC1eh712N?=
 =?us-ascii?Q?C7e2Ks+t7IlzwdMYgwKJ5JuMK/1ARPHX3giA+Yqp07mFJXM/efIH2DI0N/Lb?=
 =?us-ascii?Q?cDnrr7dPsQf3NUoBHcnUOT76PDSL9sI2m1Cr8zC2ys7Wl6xU03Z12dBZHlas?=
 =?us-ascii?Q?eJyBuO8CbmOloV/IDopvT8uXqpd1Hk/IUhxnhMZN234Ej5rlgRPiETUPpkGI?=
 =?us-ascii?Q?qhuy3rWj+trehrcXFWVr1hCFu+Lbe7ZU2AKFfIy8p/93bqjZg7vLfdEdnGWi?=
 =?us-ascii?Q?EW/r6VZixcfM3C6rXeG0mPbBCIYQ3EFEm+fWW0gM7SE58PN+DDQywKCrW+Z+?=
 =?us-ascii?Q?d5LrJQCEr0tVXddgDSI6Y6dHwrF7Ew08j4WWPPffFr+qRNJCbzRQ2efle+By?=
 =?us-ascii?Q?Db6/jQyEyakRlDpRGUlgz4+96XySWvojw+dygVh1rHuFPe4g7JJhG9YI5nzx?=
 =?us-ascii?Q?ocHaHOTKmU6V+zYi4DF8ksVaW34twQkUHB93AcwvGa27Kb4bomQX4R90T7pJ?=
 =?us-ascii?Q?SOkl7VtAPjKHgH51nPVmpOOHgWQq7lDDPqDe26pLSn9a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c1f323-e78b-4ae3-c020-08ddd65f8e92
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2025 09:40:06.0258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xe6mrkYfM/avCpjMeWLRdMfqafDgw49Y3HllLjyNH2Q/PlvfFU1CaiiQvWG+HDeRirsCUWpGj3ymDHcHTc4jxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5276
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 08, 2025 at 09:16:02AM +0000, Lee Shawn C wrote:
> While performing HDMI compliance testing, test equipment may request
> different bpc output for signal measurement. However, display driver
> typically determines the maximum available bpc based on HW bandwidth.
> 
> Introduce a new debugfs that allows user to configure dedicated bpc
> manually, and making HDMI compliance test much easier.
> 
> v2: Using exist variable max_requested_bpc.

How come this doesn't get reset after a hotplug as you described for the
case when the property is used, even though both the property and this
debug entries use the same state variable? (Not saying that the reset
happing after a hotplug is a valid justification for a new debugfs entry,
the hotplug could be also handled by the user, but you could argue the
debugfs entry is more convenient.)

Have you also considered enabling the force_link_bpp debugfs entry for
all HDMI connectors instead?

> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index ce3f9810c42d..5ef2bcffefc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1208,6 +1208,47 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
>  	.write = i915_dsc_fractional_bpp_write
>  };
>  
> +static int i915_force_bpc_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +	struct drm_connector *conn = &connector->base;
> +
> +	seq_printf(m, "%u\n", conn->state->max_requested_bpc);
> +
> +	return 0;
> +}
> +
> +static ssize_t i915_force_bpc_write(struct file *file,
> +				       const char __user *ubuf,
> +				       size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	struct intel_display *display = to_intel_display(connector);
> +	struct drm_connector *conn = &connector->base;
> +	int new_bpc, ret;
> +
> +	ret = kstrtoint_from_user(ubuf, len, 0, &new_bpc);
> +	if (ret < 0)
> +		return ret;
> +
> +	switch (new_bpc) {
> +	case 8:
> +	case 10:
> +	case 12:
> +		break;
> +	default:
> +		drm_dbg_kms(display->drm, "Invalid bpc value (%u)\n", new_bpc);
> +		return -EINVAL;
> +	}
> +
> +	conn->state->max_requested_bpc = new_bpc;
> +
> +	*offp += len;
> +	return len;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_force_bpc);
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1359,6 +1400,11 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
>  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>  				    connector, &i915_lpsp_capability_fops);
> +
> +	if (connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> +	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
> +		debugfs_create_file("i915_force_bpc", 0644, root,
> +				    connector, &i915_force_bpc_fops);
>  }
>  
>  /**
> -- 
> 2.34.1
> 
