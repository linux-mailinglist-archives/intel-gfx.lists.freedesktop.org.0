Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DD1CBDC59
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 13:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBFE10E27A;
	Mon, 15 Dec 2025 12:24:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gtF7ekap";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F26910E202;
 Mon, 15 Dec 2025 12:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765801463; x=1797337463;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=L70piuCcZOavX0ZUotqVWIN2nN6Yb3Jv4BrJbV30sR8=;
 b=gtF7ekape/hM0zhOwvGto39vUdSK6LOYEdI8jQNWnItt+1AXDpL04aic
 +5RTxZVvQgmSSpJDrXRqrC4cYerlYAPDlb6Kvvftz7SeCryrM+SCjp6P5
 AoXZQxE4UYycbNYi20eAz7UHGeterlmMAmF/ya4O631G0fJPs8zCBybwM
 NFfvt/Sr7nWW3tkWyR7xHnyUhjPc+GbbhE3+NeJea0xhPWA1BqP/7xYIP
 NQpii5RlTpSGW+18tGrWRAs9vOaRhkjYeyBgi8i8MBDlgVTW+mMKUqIHa
 J8xOCXifxke0+x00q+8rOCoRcQKhwcGIt4RpV2bEPWFJyXppiOlFT+IC8 A==;
X-CSE-ConnectionGUID: FMwG/U5XREWKhS4jOH3MTg==
X-CSE-MsgGUID: XRGKj0JPTTGT3356q8AeVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="67454091"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="67454091"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:24:22 -0800
X-CSE-ConnectionGUID: VlCu2YKwRNq4GUsmi2IHng==
X-CSE-MsgGUID: 9fUmVZiBTrStOaTuel1tAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="221090340"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:24:22 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 04:24:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 04:24:21 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 04:24:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vHu/IJZG2y1dAs6V7y3+mw4oljsH5OL3aQMTPkCkODi9IMTkwyxgUu7XOAgN+ouRKMqjz2Wzj+XOYFCC4Yw5G1PAaeLE4Bs5YuUEX+SrMYGmE23C1FcCbmMPDsvWeTS8zxKv238MqSxf9EwNxCh0ekQ8F7fzp7xRl95GFNSU+38hnpXZW/M5NkQv5VhskCwTcw9iB67uh3SWVXpng+wbPnbFZYTBXZ587BkXEpOanPF+Csy9qcaFv+exfmfqc4SRfmHjxyzRzb3EoudmiYNaHOQmlFWL9pYHKSrZ6Xs90tJKcr9xcMRG4OIQyKNke1Y+tmhMeNFGz35GYLZlh6SZ/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=svKiFkjSs23amSLC+4dUO+sEUuFVt7Ki9ptoHwBw0XM=;
 b=KP3B+R4cDTuzIS35sNn8APIsk3zj9fg3DCHLVhgWTBiTj23PmB+QDzhhj3qmrBi5ItKG1FLokspGpeFVTcf+h7Sq5c8muTDY2y1brHJPSKoH6+tVjMihEO5XiqdjUOZVLYaz1x1pmHqj8/mK35IvIR/h188qSxW7lGplKSJJziubWeneszJ3je2O08YVjLeL/yQmSq9eOFBAIeMRr8jKJJ1QSDW+l8X+J+Uuhz3Rrph6Hjy3GmDMUde8nszOFHpcO3V2KFOl31VTyGkd5kxHj8aeOeTcWPqTNR7T2EKN/11AWCQJOr7s7tyycmXQnNESLXWmO7Z4V6N4suxBPnTKeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9133.namprd11.prod.outlook.com (2603:10b6:208:572::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 12:24:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 12:24:18 +0000
Date: Mon, 15 Dec 2025 14:24:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 15/50] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
Message-ID: <aT_97grvzvX0J905@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-16-imre.deak@intel.com>
 <b99036ffc22bc31bdecff2b57a6a630dd941c634.camel@coelho.fi>
 <aT_4ZsaerMLKqdEb@ideak-desk>
 <20c7439d3635514785e107b589569e659938f5d4.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20c7439d3635514785e107b589569e659938f5d4.camel@coelho.fi>
X-ClientProxiedBy: LO4P265CA0252.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:350::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9133:EE_
X-MS-Office365-Filtering-Correlation-Id: 92dbb563-dfac-47be-5190-08de3bd4de77
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cMLVvfsKy8xH2+2dKiNaGHee10LgRy1j+9dvjdbZyji3hcscazKbhWjJLX5b?=
 =?us-ascii?Q?ANqkThTBYvtzn3jtsP2ekNT6LP+esKlg1Jjlh0G9I0WzN0MxiZmRxt+FUA5d?=
 =?us-ascii?Q?koJioDwYOoU2EODZC9R+RJEwx9e5tRzqXu5k1plSbIiUemwtYcd9F7FNjpUN?=
 =?us-ascii?Q?j5XcpJ+VCG/gGDK2atJg23h0ayjg0MNd8dDfk2Gelr4qhTRmWRW5RiLqsbCB?=
 =?us-ascii?Q?i+VMaxfITTxOyvGMB8LkVY4uk10iVtfncpXW6N4Z1zwmKz7b11GJbZzgooA3?=
 =?us-ascii?Q?YNuvielbbpYMuwNP+fXtl9bHS+HQmpWRNq67Aj6V7IsGjytwCn+nFjpU1Kqg?=
 =?us-ascii?Q?4HIrdA2v4QshLX9oHjmyLaVzkRtaadtbbVuim3m8Qdaa5HoUvOyoQ0OcwPIr?=
 =?us-ascii?Q?0jtAKHtthSEYbe3BAY4H/zeMPNgIN+75fO4lv/pC9CprpJXqmvzSzNXkMAsP?=
 =?us-ascii?Q?0hqvwIQGP6IsGjAd+kcjBhSTeuFJyq8v7/pGES0HmZ/cRhGqH6OxJ/G0Hmli?=
 =?us-ascii?Q?GhGMq0aAX9xtFBHN5DjuNDp0CVU0sOaZDwvAv61S+ER+/Rtda4lxxVwNezvO?=
 =?us-ascii?Q?PO0sED3bDQuidEs/QtjfhFx3H2HV6ybujn1j5aB7cWQhnEfug5uR3PsV70ZC?=
 =?us-ascii?Q?An9dysN2mJCjE7dOnwSHbYwPdjIb6SeKjr8cAbgWPmR+NwQ4McpkmMyFgvVz?=
 =?us-ascii?Q?+5jCUAZjsC18OaP6P+t6UDfkBJvOnEn7ME9VFoXolEpI0rTw78Xu56NWUnYz?=
 =?us-ascii?Q?myYPFkJhwfB0v5j0WptRJ79daxGHken26SDBO6ZtseqSSns5f20PvbXNQYrM?=
 =?us-ascii?Q?U4J6xxES5usQ/UrwEqAd9rjYIAjBBV5h0K/4LIQKBIfrddLUA9O+goxCE2E1?=
 =?us-ascii?Q?AYcGpcd70vBVd48coraio8pYAhWk17xc94HD8KQVSn2G3wDkKzauanDXDE0O?=
 =?us-ascii?Q?mwPJp0JK3ywKCDvxlGWtJTzcVhhUuTJdzp1xfFPUWSdKZbPdsfLL5mP4eHHh?=
 =?us-ascii?Q?MwI5j66V0NyIqNerZD7N1gPtbGyLjCzfldc6tIKO9xlyqQaARZnJHYmVMmyi?=
 =?us-ascii?Q?P8EHrB4A8eJFB3kPmqAxrori+Umh7akqZpVKZdxIVzjU+aniJv09i3pWq0rM?=
 =?us-ascii?Q?FJquyyaNJSyZZ4uzNZnW9g7aUr9gNkzcabL4304XHrdV8FL75VOa4eB5DDxn?=
 =?us-ascii?Q?P4FWhRkI8TQV+moUpOf/L+5Sjj3O/vdjNCwHWTJQbGVdQw6iHK4W36a1hjF2?=
 =?us-ascii?Q?ipcoC+H+a3+0ZYmrCFcAaUPjEwAYOtebkGUEXUZ0B0Zl4zw4ffwL6CxwV7Gu?=
 =?us-ascii?Q?fpPad/F4WAFgjhVWGRZu5j+m1OXF9TAwp60VxBXkTiVn3GfXQPMucew6KSNw?=
 =?us-ascii?Q?z7jkBDKwKftB0EFDK1I25ix8hVVVrZMu1wDkLhHevKB5oBvhav0Q+L2VEzsV?=
 =?us-ascii?Q?UBXBymM8lLuCNaApDuqHSBfdlypdP5VB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6PSqfIcVQLGSGkVRyTZ5MJotaK6OtExVe8ad7vY753Al1588hCF9wcYLIL4P?=
 =?us-ascii?Q?rzu2RBseS8E9d1spkmt4tWD5XpwjJi1HFyM5Sv3VHUrTDJoEgQXTSW7GR0H1?=
 =?us-ascii?Q?CO5lRYk0RXrJ4/RAX5MYxNJozczeUQAbo7GkqjSABel6uS3F99ssjHoRol93?=
 =?us-ascii?Q?5pv5jYXB3sUA9Vh1IVQSLg6auap8+qg4p9IHEmbSeCkmDfhMWMn9diITJTaD?=
 =?us-ascii?Q?9onhiyfPMFrfMDnVn1kgiSx2+ATeRHxVq5R+CpPRI0DM09c4/QMdShYxWtd+?=
 =?us-ascii?Q?WDExQGHdIQ8mU55GRgq/tlD8vSlrANcuqcNxfweJnhwHdOmVT9qwIJ/yY92c?=
 =?us-ascii?Q?JBrXZi1mEAMoPHmtOZE1e/Sm4qQ/MxDlmc/LS38iFHw9JUneZgbTZFRKbDVf?=
 =?us-ascii?Q?xq8ktBS9/O/YuQ5PPS5+E9LKGJrAcnDjh60iKX2PufX4sHBhsgnzz4LwbxKA?=
 =?us-ascii?Q?g36OeW7YkQ7zcMOFxD3AhEsWiaRPTj4iphTkNhtN6QyE6RjoEGLI6x5DjvEN?=
 =?us-ascii?Q?UI01Xw2deI0KJtrUulDb5xyJgE20/B+eDzelbV+BRWY896rbVJ3/74f3jJBf?=
 =?us-ascii?Q?y5MSPkh5LF5eRhM8ZhV0oPkVGNk/5BMDCEnyFmCS/qLrTLdFcGudC+Q0KmrJ?=
 =?us-ascii?Q?lKEeTPizE/88MJQGhrYUX51LcIGc8EsOLrfCCbwJKyoKEgIj1xU5LCLoSOF/?=
 =?us-ascii?Q?70Q6z1URZNf26C5pvYeE/11ku814ECGlQQhihhJW9oFN9cDA/UnZD/U2yZ1y?=
 =?us-ascii?Q?5lNzrt1bETRD7K7b7oHBwb5dYcsXv4Qb8BIS2mDbfmOuKDxhhX70IC+BonOu?=
 =?us-ascii?Q?1Eqiq8CShypJFsF5JRM93DC05yXHQNBdGOD4GRAHvFOXZOiYakr4uLs4zvAR?=
 =?us-ascii?Q?UM9JY6mfL1JDPq2OSetz+B2dIN1Ke8npw2F+npHyssKYxMJ7gw1bPu/HeBpn?=
 =?us-ascii?Q?RHEAfYt9yrlH6FzjP3CHbZsdqEC009HuxtrEw5yfZRJmDDmMSxx1iCB1d+xR?=
 =?us-ascii?Q?m6lmL3NPImaqfVzwHkZXbFeVpjgK81sSkEeF6gx9mpbYVRgc0XswruMtNV8O?=
 =?us-ascii?Q?Y2YvgRrlNW/OhYnjWkcS4u78hXtJGc8oHTOyfkb/8pfFsxkXtCg2TBMfB6nj?=
 =?us-ascii?Q?gsYVcW3P9fwOUaf+O/H6CMnE42DJh0cw1vd859oKx8r1aPAWId2if9WSyXmL?=
 =?us-ascii?Q?E5w2nINIX+67fPsiVToN6gXeqLpKEReEXUiNx7YfXjBxuMuBpsFPp5sL3q05?=
 =?us-ascii?Q?3eiEYqDKIYJGbLLCMVw0LvnemdQmUADZ3pfdUYES+RpBsuHRkcfmeA4W0vB3?=
 =?us-ascii?Q?p+MeYfSHQzg6lggyDjdSH0jFr4YjAYQTg3hoj9MrPpPSwkgVRoKu2j5j2Q5p?=
 =?us-ascii?Q?QQ2besbhVe2Frmhk4+ML27LEwcSysGYaYp4g9zA37VVWRbqXGW3ix73ME9na?=
 =?us-ascii?Q?t6WcZuo3bWBgBkpWSpGdtUjwEqlstQyyNw2BxWZW3Nc/yc7O0mY1gJh2mQp2?=
 =?us-ascii?Q?S5dnpMlqQGulAiAMxDUt0ECN/vve+XnfjjxSl16GJ/8SQ0iCPslDjQCkZ6Wk?=
 =?us-ascii?Q?/+vkRBMYfF6aGhPhLGgx5fBNSSL73HBTBIlZ87pJ5kmj6R7gC7YIwRT5zv3g?=
 =?us-ascii?Q?mDilNvmx/iiRcuUfxGL4Zg/Mu+r38Wnb/izKt0T7XemM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92dbb563-dfac-47be-5190-08de3bd4de77
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 12:24:18.6746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Chx9bajUR0FnTAOOPunfAR7SDi8fg4Vp401Xc/+KQmDWoMo5JvxfxxfC1EcjfdhHY0Cz6a90wpMg3cI9mJnGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9133
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

On Mon, Dec 15, 2025 at 02:08:04PM +0200, Luca Coelho wrote:
> On Mon, 2025-12-15 at 14:00 +0200, Imre Deak wrote:
> > On Mon, Dec 15, 2025 at 09:49:45AM +0200, Luca Coelho wrote:
> > > On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > > > Factor out align_max_vesa_compressed_bpp_x16(), also used later for
> > > > computing the maximum DSC compressed BPP limit.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++-----------
> > > >  1 file changed, 20 insertions(+), 15 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index dcb9bc11e677b..3111758578d6c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -867,10 +867,23 @@ small_joiner_ram_size_bits(struct intel_display *display)
> > > >  		return 6144 * 8;
> > > >  }
> > > >  
> > > > +static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
> > > > +{
> > > > +	int i;
> > > > +
> > > > +	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
> > > > +		int vesa_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
> > > 
> > > Any reason why you're doing the loop from the end to the beginning,
> > > instead of the more natural from 0 to the end?
> > 
> > Yes. The values in valid_dsc_bpp[] are stored in increasing order, so to
> > find the maximum value <= the passed-in limit, the natural iteration
> > order is from the end of the array.
> 
> I don't really see how this affects anything functionally and by
> "natural" I meant for the person reading the code.  I had to think a
> bit deeper when reviewing this loop because it's not the "for (i = 0; i
> < ARRAY_SIZE(...); i++)" format I'm mostly used to.

Yes, I also meant more natural from the reviewer POV. The forward
iteration wouldn't be obvious for three reasons: it iterates only
through ARRAY_SIZE()-1 elements not ARRAY_SIZE elemts, in iteration "i"
it must check the array element at index i+1 not at index i and it also
depends an extra check outside of the loop to return 0 if even the first
element of the array is above the passed-in limit. 

> Anyway, another nitpick with not functional issues, so:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
> 
> 
> 
> > > I think this is clearer and less prone to mistakes:
> > > 
> > > 	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {...}
> > > 
> > > 
> > > > +
> > > > +		if (vesa_bpp_x16 <= max_link_bpp_x16)
> > > > +			return vesa_bpp_x16;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > >  static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
> > > >  {
> > > >  	u32 bits_per_pixel = bpp;
> > > > -	int i;
> > > >  
> > > >  	/* Error out if the max bpp is less than smallest allowed valid bpp */
> > > >  	if (bits_per_pixel < valid_dsc_bpp[0]) {
> > > > @@ -899,15 +912,13 @@ static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp
> > > >  		}
> > > >  		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
> > > >  	} else {
> > > > +		int link_bpp_x16 = fxp_q4_from_int(bits_per_pixel);
> > > > +
> > > >  		/* Find the nearest match in the array of known BPPs from VESA */
> > > > -		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
> > > > -			if (bits_per_pixel < valid_dsc_bpp[i + 1])
> > > > -				break;
> > > > -		}
> > > > -		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
> > > > -			    bits_per_pixel, valid_dsc_bpp[i]);
> > > > +		link_bpp_x16 = align_max_vesa_compressed_bpp_x16(link_bpp_x16);
> > > >  
> > > > -		bits_per_pixel = valid_dsc_bpp[i];
> > > > +		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
> > > > +		bits_per_pixel = fxp_q4_to_int(link_bpp_x16);
> > > >  	}
> > > >  
> > > >  	return bits_per_pixel;
> > > > @@ -2219,7 +2230,6 @@ int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
> > > >  bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
> > > >  {
> > > >  	struct intel_display *display = to_intel_display(intel_dp);
> > > > -	int i;
> > > >  
> > > >  	if (DISPLAY_VER(display) >= 13) {
> > > >  		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x16))
> > > > @@ -2231,12 +2241,7 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
> > > >  	if (fxp_q4_to_frac(bpp_x16))
> > > >  		return false;
> > > >  
> > > > -	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> > > > -		if (fxp_q4_to_int(bpp_x16) == valid_dsc_bpp[i])
> > > > -			return true;
> > > > -	}
> > > > -
> > > > -	return false;
> > > > +	return align_max_vesa_compressed_bpp_x16(bpp_x16) == bpp_x16;
> > > >  }
> > > >  
> > > >  /*
