Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D2B79DA8E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 23:05:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E4B10E083;
	Tue, 12 Sep 2023 21:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EC1110E083
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 21:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694552749; x=1726088749;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=M9dWaEeLn2IClaE+ZfKRYOJpUaqJ5+xo8SkBbWToemI=;
 b=b5PnpTvEKQUhnPs9kSOzV3JUkla43hnKOn2gBm/D3k3o0xB4EBSA1LQR
 GV8kLfau7a/kF9EUK8jHqf6mWJuYjUU5vclxECtRuQODsKM274vz6xcmi
 gKU6xBRh/8zLd58BbK6bkBJ+eOh0dKPoyJAvH302gTvvWsJMjTulsM59C
 0eifdU13mmerSNhsc4pOvkf1xrom5o6NEGDjP8iPdm2uIgihebS9ZmRRN
 BFzxnLf/hZId1AM+0gfkl0dOBq/vJLRT/xLoplsb0hrOyd9R+db/ftbGH
 lo5jYnDSemr9ZWlejSLkBq3u8eWSpqAYaJfWHSV755eAHhwtKEaqicIfx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="358765394"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="358765394"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 14:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="720555295"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="720555295"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 14:05:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 14:05:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 14:05:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 14:05:47 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 14:05:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YYFcrMYdSPtbfQMVEOgLWqSRp8ahZ0H+BzvYfsTs4adMjQjPwxni0K7YX1bcEltHh+momp3rzkwDa2EOUdVotJGSnRV5PyNKNd5CNFeDdb0DFhPxQWWn3X7oYG7gut6Y7N6H7BKOa5PrATP+qP/gqCu+q7I9t1NionQqsxosuRevF4SWRcBjyskV01bVgkn4kIDpp3nqxQENt/3d6XmPE3C3PtdQrEVrO6L0JcRswfid+rZnpy43JFzTkqSMzlqtUS90YjgfmYVVQspJdYuXzQx+mA7UfQa7ryzZvowuVM/6vhe/kbME0yC7IgdMjAF8ZRXG1iWwXzYVZWZ34yVMxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9TTET8vpVaZE2Emq7RKI9l/+OrmBjKo+/DWiLaPh+do=;
 b=friJJseAQkMMGESj53T21h1WE/2tvLa4CtXYJ+KKQXf9pIDVTzWSwE41GOBuarT7fL8zPIeBHfZb8JHXsYZhRVG82T107G1UcHek3TYMt2H0A4x9VQ1rbNRFD/23eil1EUp0PF1ltJxDgt4imtpitK0eeCRxFgCeFvvz2jD+z6SUg8+s5nRUiSjH310zwoa+0oqhhrJPeUpasb7Abk9Ps6zf0d+yXKz28WsbcrqF31snmcHJzCuJ/xTxy+cccjUoUnODok/M9EBnHxJ0JNvB0lEqPBzK7od0QNaCulApTwFCGZD/Pw5orApSMR5k9oxLzrXmI4RdFBHrgH7JY9cutQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB6037.namprd11.prod.outlook.com (2603:10b6:8:74::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Tue, 12 Sep 2023 21:05:44 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 21:05:43 +0000
Date: Tue, 12 Sep 2023 14:05:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <20230912210540.GN2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912073521.2106162-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912073521.2106162-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: BY3PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:254::12) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB6037:EE_
X-MS-Office365-Filtering-Correlation-Id: 733e7d67-3d0d-4dd3-1cae-08dbb3d406d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RKRNyXJqlnr9Tdwcb6NQGlRgcTKYY6fR7kd11y3IyK4qAcbpbn0eOFaV6aBHrbzXDGS19b1dCEKEUx7YQJCoZZAQ3IEMY/lbeyBBIb/Q74DR/pm/Rbj6ux0BGxPqopcpp49c8ToATYbW4//n6xxv6jGuZg9pe6PaT7i3rZPl4WT2cewGB9akagl89PsYYSbL/2u1IHmj+9wTdcBybZYo9RQPfuut1AYp1Wey2uQl1O2BkDEAN7PdyIdqqq97S3GOXYv1UdWZU7gWI9UZaUm4FLvls529eeVsufdjYJzAC5SSp1PG7Yw7p1i9RaHrHJH2/u+ihKSqLg4zi3mlFD45naIK5YsIB3/Ea4INXXae4D05FcOfRrwHOfOqsA7NzPimD/BBI5DAcC5XgK/BdhOJJs5rxfTsScMYYYAv/P+27CbBN6zVJLSxQTGAByfqO/6t5PkXOkf4FXMXmvNHsjOrdTujYOMUWps3fkIFpbSYWYFY5x8CtxT4a8Sx2vJ99eZsYylmsDQuCcFx7ms2CdFi5KsAv1hD7VradiWbXgn+l0s6vi7zvgnAK8L80VgOzWDT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(366004)(396003)(376002)(1800799009)(186009)(451199024)(6506007)(6486002)(41300700001)(66946007)(33656002)(478600001)(2906002)(86362001)(316002)(82960400001)(66476007)(6636002)(38100700002)(66556008)(83380400001)(1076003)(107886003)(8676002)(4326008)(8936002)(5660300002)(26005)(6512007)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lNahWlba1kn4v5Qumr5OBaje+mQj/7K12MxUH2T9oY2BQdx3RJ0Itx5qJoz0?=
 =?us-ascii?Q?hd5NlP7MUECKo1EQ+dNrb52p040hw0GBGg9Srv8noqxzu638YznIeeJkCMWY?=
 =?us-ascii?Q?fdhg1X7t+zMNKHWT85ppFwYSIK3qWyCKTGXGGJ7tUoQqeZuYtXbCJsGBdRfB?=
 =?us-ascii?Q?D/ViZu9Xw8quRCkBWovvIdXhKPZb+4G6KX0IvY2rKaA5L2zkfJx6SggBrq2r?=
 =?us-ascii?Q?P29R4q2QNrmxeMJQUXIuP9RsnD+/hrYTaPx658ktmwOp6q0OTkZbTayQ2Fd4?=
 =?us-ascii?Q?77fjYoo+SJFNc0U7DF92GbSGhenjGZ+hsCVerzQNv+uC3EWcTfmLmJY2LaBN?=
 =?us-ascii?Q?LJd4ckY72XSikKvPqOcUNipTFEZvEahEJq6wNn3bX5yjQzSp/sHJmpfrCyrg?=
 =?us-ascii?Q?qtHydHRXMLTCmGvWamTcYjhTevJ+phUdA344CUqZhIwpRhPHnAI4+IUhVDw0?=
 =?us-ascii?Q?ktVFrzqOmtHCa/c9wzL8F8RHJeGVjaF3YYcjA9JoRyWfngyTVCaMcuUJJM/4?=
 =?us-ascii?Q?rZQ9XWGS/dvSdCEzegbIH1s/vMKosOECgUebifD52F5fkqs9x3mdr/kKK7GO?=
 =?us-ascii?Q?adembI5B/Q1NUiTujkDlECWeEBAByIUQK0r28b/U1Q0JUIOdG9XU/+YqWE0w?=
 =?us-ascii?Q?T+zvFPIBaq+3fNLRidJXRP7tJ91kCX32rhdc2tDCr8kPJeTHCsHo+G1YegWv?=
 =?us-ascii?Q?lBoWoBV/0noyG2YNaBBmDHj4+NvrK249oordwiioH5MX1TOLTb2azztfZuyb?=
 =?us-ascii?Q?B3YiMiy6ChOwja3WpnWYFqJ07RyEN4ymFL1jZSSFt460nweXjQG09xnf0Wbj?=
 =?us-ascii?Q?8ElCO1x0t/lEqB99ErSnNRTkkJXFoUZc0qJ2nz9urGnjP9XOktGVjLSqY8bb?=
 =?us-ascii?Q?3lhbY+ZjHoxLafJhI2YRUt2vb/WAPqD1NGz89MqtAc0wgMDeeTHOg+ahscDk?=
 =?us-ascii?Q?AAAlYNTkA0lOY4pJuxviUahx13ueEtU/NPZCmYv+obkck5FtilavwlfFlx8+?=
 =?us-ascii?Q?+zZTK+q0ej0PxAGQjz5lV0T41zAyOTezQXA3XkAgAgGb+Xbep3IwfgjoBQmK?=
 =?us-ascii?Q?jvcLw24LkmzL4B2Dae9rW5kRKmTOUdsptJqwA9nRsuwaG0fJB0iR8UKKNcmg?=
 =?us-ascii?Q?32znrUwkiPgqWnNIUsIId4lw8Vwzqlu2nAdVrGF/+SaeqACKaYXMJrampesB?=
 =?us-ascii?Q?mzqvnC4HokNVy5loaZjJQfu8xo4I48d1VFMu08sXRrQUp/0s/Ew/4LqOF72W?=
 =?us-ascii?Q?WTnwkcCHY+yMciZIvq5fCipNKEx2egLDA4ncNIu1YVw8Ca2KBmv5wSWPJlun?=
 =?us-ascii?Q?JoeigINGW8DrvcSNcqgdzH0KDNAm6jLAawG5Nar8d68wcoBPOfFPO9w/oJRW?=
 =?us-ascii?Q?7xHpG6JL0C0oIMs+fXJzgwiZhF5i84qk830Ec6NxqN/JyMP1NHpvkVaoN5Zp?=
 =?us-ascii?Q?rKwvpT7Wx/rx/BtB195OGvM5fQkStAP+nENRS3YLppp5afwk5H0nL69HdlPv?=
 =?us-ascii?Q?G0R6iw0WzUT/NNQhblN3qRX6sfe6U2vFbH48U4M28nYyvyAD3FfgvxSznsi9?=
 =?us-ascii?Q?QYjKQvrevAUYUkN0a6+GQjG7UVDsJ/8sd3M4eTQVlrWzYVZifoEY2MKsENMg?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 733e7d67-3d0d-4dd3-1cae-08dbb3d406d1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 21:05:43.3125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YvUNV6zHBXwdEsnGWmZ9aU4IJhudCtpmD/Co6Uy5I0hNGnbhtaRWbd9cCAgUEG0YXGale2QnBvKlcsQQyapi88Xo40xMvG3ao/47EzlUrGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6037
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: skip WA verfication for
 GEN7_MISCCPCTL on DG2
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 12, 2023 at 09:35:21AM +0200, Andrzej Hajda wrote:
> Some DG2 firmware locks this register for modification. Using wa_add
> with read_mask 0 allows to skip checks of such registers.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 70071ead0659cc..1d1474ad945e0c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1597,8 +1597,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	/* Wa_14014830051:dg2 */
>  	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>  
> -	/* Wa_14015795083 */
> -	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +	/* Wa_14015795083

Minor nitpick:  kernel coding style says that "/*" should be on a line
by itself for multi-line comments.  Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +	 * Skip verification for possibly locked register.
> +	 */
> +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
> +	       0, 0, false);
>  
>  	/* Wa_18018781329 */
>  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
