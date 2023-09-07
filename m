Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF745797E1E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 23:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9649B10E81E;
	Thu,  7 Sep 2023 21:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1776210E817;
 Thu,  7 Sep 2023 21:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694123531; x=1725659531;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L7ZI+Y5JATpscqjNQsdVJmN7WVBmsIFNVXGryw8Y1x8=;
 b=bdyKCQf7Z22p1D7BRP/19cNXthgM6DavnJ/82HNEuXBaQ5x1PNM2JLM3
 C5O/wLcBmI00w+8JypZlD3IbzE44AVcY/Rqh2gfe725b6eMyk+s1Gt6gC
 QMAl5d5g9SjZKPKttAeu8ujYsWV/fPNsWBQZVZkAsKAjDhCtD4lR3x+jG
 krEXpF1ZsDzE9YwpcRtzIrhCpSQ6uKdw93SNKlq+b3Z7hlvdalTTB33II
 cCGGgmPK5m3fi81p0y773dBlMWU/KF8+GiC/xWV0n+UQcIIrstIu7uer3
 et2Et31hQMcMjYseV+3TBOb2NPaBcOU7sOoyMR7D1uHhWznUCZqpVmxLo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="408478570"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="408478570"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 14:52:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="742197555"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="742197555"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 14:52:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 14:52:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 14:52:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 14:52:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eSSly+jjlctPMcg/+vR2Jqiyum7Xw4JY3zt02VIAfjYlYFk2UrpEcmdaVOLBg4fln35Jxy676zfRDskFf48V58+tfL95OJzDAtbdrBAc2FXYlPCzeqmcDVBUwy/edlJ5i1huDu1sYvfou3vcYKQ4y5fr9F1SacqZeUAWXIkhlhOKKZzWePvXGGXDkMAN+BQICEt+OJx6KyXZBB1DN0qeEmAwgnJya5ZtRAvDW4F06vt3+k+7sknCZntVUtS0tPSsKWIP90tqq04/WzHi0BaxSPHmgdnL6LPq+sdGC46yROS2FEWJY29TfCeNJoXxMn3fmu9pBMm7MasBm1rnuSgVaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cWKMER4/hvrFSl8C1t0rKMQjJ+yEj9qCovNmvkEqhiI=;
 b=lguyM22kOc89o3RhN5PtjlBfw8uEaoXpzbI1lq8YrpS3YU7L2+tThnl/wLKkcq/rt641IVqE6z2iRNSJLc637YKd4zd0tXWPT5PRapiW84bt+DAeYZ1SZwUa6ig7vNl1an2J1bCo5t/ijXvktXZyvAoBS0utq525OgYfI2B0CovZQxrDcutR3Y86QBOC6A9EkX4tjpQlfd/KxSbnHNwyygYEvdA5AvOrHz3ZjKN6+wMDIBs4nqDfd1JfeXKvfU4vrnT/eWZS+xmFMSvcCcUVhzkiGZoxCRkikHSJu/+ySXlKLEKMPdSa+aHp06OVDH6R75JgK69TueoID8wMgTbvhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB6760.namprd11.prod.outlook.com (2603:10b6:806:25f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 21:52:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 21:52:07 +0000
Date: Thu, 7 Sep 2023 14:52:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907215204.GP2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-23-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-23-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB6760:EE_
X-MS-Office365-Filtering-Correlation-Id: 80beb58d-a2e3-4ae0-2065-08dbafecadcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hEguOefMI83PREw72n2wJDNHtbpWtk+e0/RVtFqrKGD7w6rzDoQRFF8C5iI1ClveN+6UGNxKsLCE8fSQjoL4zzvvMqSakFoEuRETYJaxQItu0Pe7Wvh3oUBv7mFOqkGDdJg3cMe4CUVYYTkhyEIHsC+SGwkTGeTW8emiNfKP1mBpSRJpbdBPhrtbPDJr4QcWwvPD+9fbGGITpyWnUy33EFrXEhJxQprUMJQaOjaiOTULa2dQ1CTLjZuZJLwWlsIorzXbS0kayaUdTuokV4z/WOqCCBGxdNX2kAKWfjP5Anki5V84RvX9IszNXQI9bnOwZTBSZudutCL3DIl7Kn8raxrxi+Mo3xuBnoanTv+CqheBjTUujQ7V9xW8JH3WEHKta0AUA7EVEpU0VTY66YrgWx8ceMsHGDvEnniP46iC30Ha+0aT5Cn7wbfCAM6XSV7nq3iVGixmGKb9L+svvRUOT1zA0CCVMiBVLNB7d5ed92ED56sqnZke/nCdgf1gn3wVmYj/q066eq5jgz9zizdPg7/yqzIu1jptClZW8dMzUqarJdasBZ3CNdNNx/LiFjaZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(376002)(346002)(366004)(186009)(1800799009)(451199024)(6486002)(6506007)(6666004)(6512007)(83380400001)(26005)(1076003)(66946007)(38100700002)(6636002)(66556008)(66476007)(5660300002)(316002)(82960400001)(41300700001)(450100002)(86362001)(8936002)(8676002)(6862004)(4326008)(2906002)(33656002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5RkBY6kmuFqSLSJ41U/QFIlaA8qRbCHB6CwWNstZSmLx88GHPar22XhLHPew?=
 =?us-ascii?Q?Sz+XDt95290koZRYizyiksHe2K749FCqpZcnYK91mFBS2b/Xr1KRoVtjxDT5?=
 =?us-ascii?Q?9caA1XCpJ8NyzxzVYc4eCLL3HbDSIVcoS0aZjv2/YzhTM6R1dO1zE44/GSmX?=
 =?us-ascii?Q?p5WCR+xzyIAw1p5xXCkHZ6gsA904yoY3kQ9EJ/hHKwscjgKUdlijCmsURu9K?=
 =?us-ascii?Q?fq6iZMxPI3cnhlnZ67zAhkOmfZ05+aWBX0+nSFY0zJ8g09J5P+QhfEinKx5o?=
 =?us-ascii?Q?FV408/rg66yKGKT5ECzgotPEP7VnQY81gftNY0AFsQ0S/kEhE+P/UxJSWpUB?=
 =?us-ascii?Q?xY1e+09dJORFtNXq2Fk20/u0b5sprHAAfTzjyStGrLag5mza9vEhT53+M487?=
 =?us-ascii?Q?AYJAePxqzyscDVPic46MvB4cI+10kL2ZvX9ozEFuPhGcJMPq23xkXmmem4iR?=
 =?us-ascii?Q?23vQlsooaVdn+H9JnjaULwjFgZBK12vRJJ3dYXoGJnhZQsAUEkDM1iuW8618?=
 =?us-ascii?Q?+AptdttboF6l6PkjvokPk5HbGzNXWQbPhkSdsw4/H2K1g8nlZfe4I+OGERFz?=
 =?us-ascii?Q?CxmZTOE+OY1T4hi7/VTQxZyCK/SpH5tN0kWdAHaCP6rFZlvd//O/6xRaR0V5?=
 =?us-ascii?Q?0e3Cm3YmOU9Z3PTW3gKojpxyCC9wV4TXh+pwV9k8SgUuWa3YHEg428C3VoNx?=
 =?us-ascii?Q?KvUVQRKjFaVmTW63rpsN4y1uAlCG4JzglIBtzfkNAhy6qterzhP/lwl70KHl?=
 =?us-ascii?Q?wORLc3D2oRhEQKjRdJc/R1HkN6Ksf4X8PbtHf+1/yzRNDJ+Y31wTZUo5XFNb?=
 =?us-ascii?Q?emFk8If9zoO7kUGiWXN0ucNbdm1rFyofjPgIlWgLQ488ODj3MGyePk+G/VTz?=
 =?us-ascii?Q?gcxDg7y3s40sgPzzkZaZQbeBIfo0PyiC18WsMOH/HjGDrMrqNrJ71s5SWSv/?=
 =?us-ascii?Q?ig57UnKpzTbYIkmWi5gI4/HCIUgLCCyyG0F8PdUgt64BWM/PU0rgBUZf+ec4?=
 =?us-ascii?Q?mSoLKYuljKKD8TyayHyUVqzJR1C7yXeWfAdiLy6vp7V0lfKAtNGRpiGzCCt7?=
 =?us-ascii?Q?5tVH2GQDTNMlLrC2cKlrgyyrMyb30SlaIxvGj+i+h5he1lmzKE6ImG+MBW/S?=
 =?us-ascii?Q?6K6kByIx/jRKtkX6YED2mm5uq1V0M2Ad20ns/MTjvE1wVD6d4AS/qdW8KpGq?=
 =?us-ascii?Q?FtKX+lM+jcOl67Q1svwhB+QFob07MxEl+vnpuKDqMV4JSa5Lqg0roQywIwa2?=
 =?us-ascii?Q?Q3KtjKgB3nyMjf3lsqkILN5JzYH3g9oYegFBm8pN+7rr3WOeRQGH9ciR3RlI?=
 =?us-ascii?Q?dI7zO1puFewhu0+eKtD6Jjde3tqYHLeoXwQ+ogQH5sh3/YLBifa04URj3DzN?=
 =?us-ascii?Q?CrF1ZL4KExkWL65n3Q3G1bF4r0QpVE5mNAaqIhQa3WlPuLwysibvqLv8RQkZ?=
 =?us-ascii?Q?mKgK5oJZnnjYU3fBjL3Ox9mA/afueaGCZpo/t40Sef9R7cC4vOg1Y4IqgziA?=
 =?us-ascii?Q?JZy6lJhK6QeEKtxTb2eE6OOPna0+6DxP2RKsZ62VQkbioonFS9rZHjn2RKbE?=
 =?us-ascii?Q?AR7g2YUaIlUAdplA8/ZapyePBeyQIYkaAg0CBTDPbsTb+jzMz6Gv+r01YqHd?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80beb58d-a2e3-4ae0-2065-08dbafecadcf
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 21:52:06.8013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B2oyPYdYmxrvGPzCjs0q+iDNmgsE+qJgDgMJnhobhZaOTY7HyLjhmGQGtiHEZvKKrOLMQ3vNu3JF1Wpb7X49kH2RU1mKih+Vv+CISWgbJVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 22/27] drm/i915/lnl: Add CDCLK table
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

On Thu, Sep 07, 2023 at 08:37:52AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Add a new Lunar Lake CDCLK table from BSpec and also a helper function
> in order to be able to find lowest possible CDCLK.
> 
> v2:
>   - Remove mdclk from the table as it's not needed (Matt Roper)
>   - Update waveform values to the latest from spec (Matt Roper)
>   - Rename functions and calculation to match by pixel rate (Lucas)
> 
> Bspec: 68861
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 55 +++++++++++++++++++++-
>  1 file changed, 53 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index cfd01050f7f1..7307af2a4af5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1382,6 +1382,31 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> +	{}
> +};
> +
>  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
>  {
>  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> @@ -2504,12 +2529,35 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
>  	}
>  }
>  
> +static int
> +xe2lpd_cdclk_match_by_pixel_rate(struct drm_i915_private *i915, int pixel_rate)
> +{
> +	const struct intel_cdclk_vals *table = i915->display.cdclk.table;
> +	int i;
> +
> +	for (i = 0; table[i].refclk; i++) {
> +		if (table[i].refclk != i915->display.cdclk.hw.ref)
> +			continue;
> +
> +		if (table[i].refclk * table[i].ratio >= pixel_rate)
> +			return table[i].cdclk;
> +	}
> +
> +	drm_WARN(&i915->drm, 1,
> +		 "Cannot satisfy pixel rate %d with refclk %u\n",
> +		 pixel_rate, i915->display.cdclk.hw.ref);
> +
> +	return 0;
> +}
> +
>  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  	int pixel_rate = crtc_state->pixel_rate;
>  
> -	if (DISPLAY_VER(dev_priv) >= 10)
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		return xe2lpd_cdclk_match_by_pixel_rate(dev_priv, pixel_rate);

Is this actually what we want to be doing?  Generally this function
returns a minimum possible value cdclk value that could support the
pixel rate (e.g., pixel_rate / 2 on modern platforms), without caring
(yet) about the set of cdclk values that the platform is capable of
generating.  We then do some additional CRTC-level or device-level
adjustments to that minimum in intel_crtc_compute_min_cdclk and
intel_compute_min_cdclk, and only at the very end of the process (in
bxt_calc_cdclk) do we go into the table to find the lowest possible
clock greater than or equal to the adjusted minimum we had calculated.

From what I can see, the minimum cdclk (as far as this specific function
is concerned) should still be half the pixel rate on Xe2 (bspec 68858:
"Pipe maximum pixel rate = 2 * CDCLK frequency * Pipe Ratio").  The only
thing that really changes with all the mdclk stuff is that cdclk and
mdclk are no longer fundamentally locked together in hardware; that's
why the table of possible cdclk settings in the bspec now has additional
rows where the cdclk value ranges anywhere from mdclk/4 to mdclk/2
(whereas on previous platforms every single row corresponded to an
mdclk/2 value).

tl;dr:  I don't think we want/need this hunk of the patch.


Matt

> +	else if (DISPLAY_VER(dev_priv) >= 10)
>  		return DIV_ROUND_UP(pixel_rate, 2);
>  	else if (DISPLAY_VER(dev_priv) == 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> @@ -3591,7 +3639,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>   */
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >= 14) {
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> +		dev_priv->display.cdclk.table = lnl_cdclk_table;
> +	} else if (DISPLAY_VER(dev_priv) >= 14) {
>  		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
>  		dev_priv->display.cdclk.table = mtl_cdclk_table;
>  	} else if (IS_DG2(dev_priv)) {
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
