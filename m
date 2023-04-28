Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F726F2016
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 23:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9599110EDEF;
	Fri, 28 Apr 2023 21:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDB3810EDEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 21:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682717169; x=1714253169;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9soqSTx9FHHUN09AL1Uq0yNBIh9vnpDIfdhsW1xfmh0=;
 b=T5w31zY/qurBC9tOm2VMBIuVwmotDWKNdLzmicARRRywFiooESXB5ao4
 I6R6qLbOwGLoLJQJLVhRDkD7URikkYHQVhKPYxsoaFKBRoeD7hSxnbh2M
 uRil9s6f6k6pi/3laI3ek9Fx3KCtAHgGoSIAzQHx5I7/M2WVUsrS4nHmP
 Oq6T++7C754xcvy3IZQAPfBVpnBj64nEEuO9ifCzVfMjaHPIeEBC/h4In
 6vzrrJK2IrdziXD/KtdKJtkDQ763Kt5Hzi66l6HW5XswshvvI9QJzA6Xr
 TCAmnbef/E6Yxyy2iWTxPYlDgElDPSKBWGmQ1KJvvPUuTtA80vHp3hrtE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="434154051"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="434154051"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 14:26:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="688984638"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="688984638"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 28 Apr 2023 14:26:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 14:26:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 14:26:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 14:26:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yc9Ca++/nRrHTAshIYgL7k+uT66hFVVrq8wmF/iIyDzvKXfJEvuNTPoLJt1Tg7r/VPRAnb0GWFghmwruAyVcDFuWDya89v31W08MiGpUXprNBs/NbebpbC8WBTSWfaKMU2yIcehgT+wUP692lJdQTrjM3NvOzHWzR8EVFBtb1bxoQyCfO+aePz1gMaOZOTAF7BLbZ0eEoWGjTDLf+eUHQbNOCLqarAmyv8uPvXKYcEtuxwGByMF/13pqsBMXhzjROZ0mDBVGord3FmcL++t6SHR6slYzqsm0+NR2oUZQ5uTku+CqTvr7ISnMGnjgOm8su0hLdpx8WPYHrKOjxdaZyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lZTvsC3ESL3hmDtza8iE5aNHXJ5FoDivGW+Lprd+7ao=;
 b=Y4KcnI1VhVjSrtI/HR9WDA0cLC5CKo6gUTeJ+5MUMEPPsT/XoooS7TCg5bzmQ/65ceR8khwHqQXoayAjbvyFKCxHNn43hwVnk06DzWv4XZ+4kzDWuVf+SfGh21UXegI7+mf5200KYEhm/UJ3sQNGdIF3lei8CuhHMCKnoYI4Bm4zgaeUsqXgG81b6mvVvugOkZfDHn8nTpPajuccml8prpsgIfdj4mUwd0v80hvGsGNh+E5v+/4EszTzd2dpuyEvZ08wuA9TlVYN2VWcwl4bZOoa2lV2gvBbYZjtc4Mo9G3R1wIi5d3byNKsfR+wLXMTnptAasMIshnxW4Qt47YGCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 by MN0PR11MB6183.namprd11.prod.outlook.com (2603:10b6:208:3c5::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Fri, 28 Apr
 2023 21:26:00 +0000
Received: from BL1PR11MB5953.namprd11.prod.outlook.com
 ([fe80::c378:ebc:8936:7167]) by BL1PR11MB5953.namprd11.prod.outlook.com
 ([fe80::c378:ebc:8936:7167%7]) with mapi id 15.20.6340.024; Fri, 28 Apr 2023
 21:26:00 +0000
Date: Fri, 28 Apr 2023 14:24:52 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEw5pFInuHyRM8PF@invictus>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
 <20230428095433.4109054-3-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230428095433.4109054-3-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR11CA0063.namprd11.prod.outlook.com
 (2603:10b6:a03:80::40) To BL1PR11MB5953.namprd11.prod.outlook.com
 (2603:10b6:208:384::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5953:EE_|MN0PR11MB6183:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a578875-02c8-4851-84be-08db482f2909
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GpYDltHsdrDeJKh7kPFSJJNmic7NgPqqlS6ofYbbuiZGGU6/EfQO4fJ9DVyzvcRxb89OimMDpU5AOUYkbNYf6VI/wSzJbKJCqCJrj8B++CKj+6d3vWIOnpZnYoqvH/oXv7NztnLeP87qNPn5DETmai+P1qAXEgCg3hOFYjZBi5ZpgbfWedh5VeS3JjeyCdB5nSuLui8IhA97PX1wa1aIOCgMB3eDJm0YaOOm5IZymQCtbYR9rOVrjyg0EOze3Vx+zOZwHQJi/zW2GCKM0+CBagnIkYICwzV6d1f8XLG0LqWUUzIXdBI7Nblfaw9yMx/nqh0/RbMLm9NjvYDUwxufVdCxRtN/EBj1pqRwUtBVrE+qYnkjptNWFH6hUPtUbVcAdKet2QCb9g9dsbGg7PL5cZMKXa980S+KF5ef7WHULMmqBZLl+1bCTsWLFmgvMjb1JW4YxmBidPAFDNxL9GkjqGiMCEZKz1fYJ5mrgvSREXkElmnXzhxw/FX7Tf3+GaHmfuS7S56xTgW1uyGBPq0Ff2Tyla7tSQMCYy53sz8eyRf13j96lzdc2cHXqQLrPHD6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5953.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(376002)(396003)(366004)(136003)(39860400002)(451199021)(83380400001)(66556008)(186003)(6512007)(6506007)(9686003)(6636002)(316002)(2906002)(38100700002)(66946007)(86362001)(26005)(82960400001)(30864003)(41300700001)(44832011)(4326008)(66476007)(478600001)(33716001)(6666004)(8936002)(6486002)(8676002)(6862004)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ocprzo1KVX79b/hqNDJDpULXoo3YWMuhV/+o3EyW2V9u3o4GFISeYasDYd7+?=
 =?us-ascii?Q?8dMSfiHboChWWu5knzErSr1E5opnHzQxwHU+9ExWJw+NRslbn8A68IjJ7ATp?=
 =?us-ascii?Q?1McA9hKN4ohbF/BRYWW7CruZUto7ksSaCiy9NNEfNps6dl8S4EBVCzz9GIm/?=
 =?us-ascii?Q?qiSPCXUJO3U3i7DiQALd/Peqer6ZXvH2s0jg2CAL5rLHX5CiNLltR7nuh70F?=
 =?us-ascii?Q?Bv0V767DEgHP2RnyAo1tcpyzCXfXiIRDnajAza2C1b8CZ0THKwxr7X9DQnws?=
 =?us-ascii?Q?WKbjSgNXQgNn/6qZZ+6mDECn6DZyneFjwtHTuGxI5JsHTRP7ARjLFp5sWX1k?=
 =?us-ascii?Q?6Og5cj1XkFMpQCZyA/rOVTt4eDXsQEE5sp2cNsCdcWxdzslCK7vbWeZ8kkUH?=
 =?us-ascii?Q?AYlbAxNAjXbLLfR5ln/xAS2o6whm65kxBspV8dznkPEQwM3lwl9VE1GDhUE8?=
 =?us-ascii?Q?2qAdWFK3MXwNrnTf+i1SpMpPcFvzF/Qe/UM3CZedk0A0zUUeUXJYqqJorvR2?=
 =?us-ascii?Q?ry0HCVZJelzE0DUVqwSI5pLTrSquPA+xDEuH2gMvfFC1wpTb4UkxjaSHOJKn?=
 =?us-ascii?Q?VvNzehMkWUPPAVZK7bv/N7R0HkiVlX/hoksTKw8f6YO4JI6g4cZwiajKPVeh?=
 =?us-ascii?Q?qH9WpoQzHnyQNaIjYpFHfpeqppagfcDfbVy/2ZZHO7p1wBF6f3psCTlRRvUK?=
 =?us-ascii?Q?x2CesIqACEjLwltqIy2rKO0qWji17MXWFZNlIST1GYcAuwQKrgJy0N364Rp2?=
 =?us-ascii?Q?Oz2OjZoHn45Xeg75zYcV29ETA0zM8pqut1S6yJCRAoGKPt7rj+yO4b02HN+b?=
 =?us-ascii?Q?7M0cQJLoNFhidSbeJwoWSczFGUFuCN4/dJPFh72/dEmxBfM+AlIWIlnGXI/M?=
 =?us-ascii?Q?bSTPtEraA7Jqo5jf31kH8Tzd2bI3fdVo+CWPb6TQXHvmyA3H7D1B1iooBacY?=
 =?us-ascii?Q?R9I7/sWbXi7JOdAV+1IVnccCE5m2rGbL/AcgFTBaxsMDumq0R/yIqi6g5WLT?=
 =?us-ascii?Q?R6rF9vLNxBLNZNGm7U3QgTDkgo2L62dYBjiZ+oXQq60/WJ3ZJz+0odou9ERv?=
 =?us-ascii?Q?AQRqY+OGRVlEN3aAKtGT/Y3rrYeW82daZDGWHpRsysbVKfHqDl+Nh+Ge8M8r?=
 =?us-ascii?Q?O4DBeu94j2OTOOBlItFgq6TZDKuR4XOdz6AN3nZ0b1+TQt9UHG/nZp8aFK7R?=
 =?us-ascii?Q?NkLRbC7CNhhVcm3BD6hM+j7s2ZRE9onwwIt45uyhBl/oeO5s9ZFZkQVEJvNP?=
 =?us-ascii?Q?z6BqCwPzKAU9rMU2zTyHV+5y9rpbTeLKnzUFSAMxUZ5Gc5IWjXj7Xy9KFcjo?=
 =?us-ascii?Q?vgxRanESQ+kmvhhrt19I5x5RDcARKT9rSAfmrB82M23au0Gfp4E5U6r6GglA?=
 =?us-ascii?Q?XEEWbONwODUsyjEFHwBf4I57pT8JdIdVN3NNjIFGKvxncnWl7fcaZyHk9wuw?=
 =?us-ascii?Q?8eulF5U7L3qpxvM8OheOwRzYit+spSvjsBwZ/jddeBhYhJaGA9ilJcAW4cJE?=
 =?us-ascii?Q?NKlUsYOZD2B6LOxXRvWoT6x6BOmD6XL1EESY+d8zvB4oZ8HkF4Wt5ug8I96U?=
 =?us-ascii?Q?NjqPho3LtGfd0SfO8SztfVzrofjljzgAGf2J8WJya1op/U3bDcz7zJoZEAQM?=
 =?us-ascii?Q?V3EzJhhm4x92dryAkgDD2ww=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a578875-02c8-4851-84be-08db482f2909
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5953.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2023 21:25:59.5573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3cnKz2CGFKj4R6VlswI2370tJ8Ohb76JwVo2orNlYxnEfx9TqMxcJUg5hO0+eBOPKXIFVL15o/iL3rTxEEHSOI1yJO7rSpr1SDmoiDfJyIE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6183
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 02/13] drm/i915/mtl: C20 HW readout
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 28, 2023 at 12:54:22PM +0300, Mika Kahola wrote:
> Create a table for C20 DP1.4, DP2.0 and HDMI2.1 rates.
> The PLL settings are based on table, not for algorithmic alternative.
> For DP 1.4 only MPLLB is in use.
> 
> Once register settings are done, we read back C20 HW state.
> 
> BSpec: 64568
> 
> v2: Updated pll tables (RK)
>     MPLLB selection fix (RK)
> 
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 624 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +-
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   9 +-
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 +
>  7 files changed, 630 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 71163bc5bbf5..f58b3112baea 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -11,6 +11,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_psr.h"
>  #include "intel_tc.h"
> @@ -285,6 +286,23 @@ static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
>  	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
>  }
>  
> +static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port port,
> +			       int lane, u16 addr)
> +{
> +	u16 val;
> +
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, addr >> 8, 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 1);
> +
> +	val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
> +	val <<= 8;
> +	val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
> +
> +	return val;
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  			    int lane, u16 addr, u8 clear, u8 set, bool committed)
>  {
> @@ -659,6 +677,199 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
>  	NULL,
>  };
>  
> +/* C20 basic DP 1.4 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_rbr = {
> +	.link_bit_rate = 162000,
> +	.clock = 162000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x5800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x50a8,	/* mpllb cfg0 */
> +		0x2120,		/* mpllb cfg1 */
> +		0xcd9a,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x5ab8,         /* mpllb cfg4 */
> +		0x4c34,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x6000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
> +	.link_bit_rate = 270000,
> +	.clock = 270000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x308c,	/* mpllb cfg0 */
> +		0x2110,		/* mpllb cfg1 */
> +		0xcc9c,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x4b9a,         /* mpllb cfg4 */
> +		0x3f81,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x5000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
> +	.link_bit_rate = 540000,
> +	.clock = 540000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x108c,	/* mpllb cfg0 */
> +		0x2108,		/* mpllb cfg1 */
> +		0xcc9c,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x4b9a,         /* mpllb cfg4 */
> +		0x3f81,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x5000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
> +	.link_bit_rate = 810000,
> +	.clock = 810000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x10d2,	/* mpllb cfg0 */
> +		0x2108,		/* mpllb cfg1 */
> +		0x8d98,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x7166,         /* mpllb cfg4 */
> +		0x5f42,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x7800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +/* C20 basic DP 2.0 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
> +	.link_bit_rate = 1000000, /* 10 Gbps */
> +	.clock = 312500,
> +	.tx = {	0xbe21, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mplla = { 0x3104,	/* mplla cfg0 */
> +		0xd105,		/* mplla cfg1 */
> +		0xc025,		/* mplla cfg2 */
> +		0xc025,		/* mplla cfg3 */
> +		0x8c00,		/* mplla cfg4 */
> +		0x759a,		/* mplla cfg5 */
> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0001,		/* mplla cfg9 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
> +	.link_bit_rate = 1350000, /* 13.5 Gbps */
> +	.clock = 421875,
> +	.tx = {	0xbea0, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x015f,	/* mpllb cfg0 */
> +		0x2205,		/* mpllb cfg1 */
> +		0x1b17,		/* mpllb cfg2 */
> +		0xffc1,		/* mpllb cfg3 */
> +		0xe100,		/* mpllb cfg4 */
> +		0xbd00,		/* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x4800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
> +	.link_bit_rate = 2000000, /* 20 Gbps */
> +	.clock = 625000,
> +	.tx = {	0xbe20, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mplla = { 0x3104,	/* mplla cfg0 */
> +		0xd105,		/* mplla cfg1 */
> +		0xc025,		/* mplla cfg2 */
> +		0xc025,		/* mplla cfg3 */
> +		0xa6ab,		/* mplla cfg4 */
> +		0x8c00,		/* mplla cfg5 */
> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0001,		/* mplla cfg9 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
> +	&mtl_c20_dp_rbr,
> +	&mtl_c20_dp_hbr1,
> +	&mtl_c20_dp_hbr2,
> +	&mtl_c20_dp_hbr3,
> +	&mtl_c20_dp_uhbr10,
> +	&mtl_c20_dp_uhbr13_5,
> +	&mtl_c20_dp_uhbr20,
> +	NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -1243,7 +1454,281 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
>  	NULL,
>  };
>  
> -int intel_c10_phy_check_hdmi_link_rate(int clock)
> +static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
> +	.link_bit_rate = 25175,
> +	.clock = 25175,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0xa0d2,	/* mpllb cfg0 */
> +		   0x7d80,	/* mpllb cfg1 */
> +		   0x0906,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x0200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x0000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
> +	.link_bit_rate = 27000,
> +	.clock = 27000,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0xa0e0,	/* mpllb cfg0 */
> +		   0x7d80,	/* mpllb cfg1 */
> +		   0x0906,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x8000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
> +	.link_bit_rate = 74250,
> +	.clock = 74250,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x609a,	/* mpllb cfg0 */
> +		   0x7d40,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
> +	.link_bit_rate = 148500,
> +	.clock = 148500,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x409a,	/* mpllb cfg0 */
> +		   0x7d20,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
> +	.link_bit_rate = 594000,
> +	.clock = 594000,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x009a,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
> +	.link_bit_rate = 3000000,
> +	.clock = 166670,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x209c,	/* mpllb cfg0 */
> +		   0x7d10,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x2000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
> +	.link_bit_rate = 6000000,
> +	.clock = 333330,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x009c,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x2000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
> +	.link_bit_rate = 8000000,
> +	.clock = 444440,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x00d0,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x4a06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0003,	/* mpllb cfg7 */
> +		   0x2aaa,	/* mpllb cfg8 */
> +		   0x0002,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
> +	.link_bit_rate = 10000000,
> +	.clock = 555560,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x1104,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x0a06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0003,	/* mpllb cfg7 */
> +		   0x3555,	/* mpllb cfg8 */
> +		   0x0001,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
> +	.link_bit_rate = 12000000,
> +	.clock = 666670,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x0138,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x5486,	/* mpllb cfg2 */
> +		   0xfe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x4000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
> +	&mtl_c20_hdmi_25_175,
> +	&mtl_c20_hdmi_27_0,
> +	&mtl_c20_hdmi_74_25,
> +	&mtl_c20_hdmi_148_5,
> +	&mtl_c20_hdmi_594,
> +	&mtl_c20_hdmi_300,
> +	&mtl_c20_hdmi_600,
> +	&mtl_c20_hdmi_800,
> +	&mtl_c20_hdmi_1000,
> +	&mtl_c20_hdmi_1200,
> +	NULL,
> +};
> +
> +static int intel_c10_phy_check_hdmi_link_rate(int clock)
>  {
>  	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
>  	int i;
> @@ -1319,17 +1804,6 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>  	return -EINVAL;
>  }
>  
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -
> -	return intel_c10pll_calc_state(crtc_state, encoder);
> -}
> -
>  void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_c10pll_state *pll_state)
>  {
> @@ -1427,6 +1901,74 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> +static int intel_c20_phy_check_hdmi_link_rate(int clock)
> +{
> +	const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
> +	int i;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (clock == tables[i]->link_bit_rate)
> +			return MODE_OK;
> +	}
> +
> +	return MODE_CLOCK_RANGE;
> +}
> +
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
> +{
> +	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
> +	struct drm_i915_private *i915 = intel_hdmi_to_i915(hdmi);
> +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_c10_phy_check_hdmi_link_rate(clock);
> +	return intel_c20_phy_check_hdmi_link_rate(clock);
> +}
> +
> +static const struct intel_c20pll_state * const *
> +intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		return mtl_c20_dp_tables;
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return mtl_c20_hdmi_tables;
> +
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> +				   struct intel_encoder *encoder)
> +{
> +	const struct intel_c20pll_state * const *tables;
> +	int i;
> +
> +	tables = intel_c20_pll_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (crtc_state->port_clock == tables[i]->link_bit_rate) {
> +			crtc_state->cx0pll_state.c20 = *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_c10pll_calc_state(crtc_state, encoder);
> +	return intel_c20pll_calc_state(crtc_state, encoder);
> +}
> +
>  static bool intel_c20_use_mplla(u32 clock)
>  {
>  	/* 10G and 20G rates use MPLLA */
> @@ -1436,6 +1978,64 @@ static bool intel_c20_use_mplla(u32 clock)
>  	return false;
>  }
>  
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	bool cntx;
> +	intel_wakeref_t wakeref;
> +	int i;
> +
> +	wakeref = intel_cx0_phy_transaction_begin(encoder);
> +
> +	/* 1. Read current context selection */
> +	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* Read Tx configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> +		if (cntx)
> +			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +							       PHY_C20_B_TX_CNTX_CFG(i));
> +		else
> +			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +							       PHY_C20_A_TX_CNTX_CFG(i));
> +	}
> +
> +	/* Read common configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> +		if (cntx)
> +			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								PHY_C20_B_CMN_CNTX_CFG(i));
> +		else
> +			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								PHY_C20_A_CMN_CNTX_CFG(i));
> +	}
> +
> +	if (pll_state->tx[0] & C20_PHY_USE_MPLLB) {
> +		/* MPLLB configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +			if (cntx)
> +				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_B_MPLLB_CNTX_CFG(i));
> +			else
> +				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_A_MPLLB_CNTX_CFG(i));
> +		}
> +	} else {
> +		/* MPLLA configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +			if (cntx)
> +				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_B_MPLLA_CNTX_CFG(i));
> +			else
> +				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_A_MPLLA_CNTX_CFG(i));
> +		}
> +	}
> +
> +	intel_cx0_phy_transaction_end(encoder, wakeref);
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)
>  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 509d1d12776e..9760c6292c81 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -30,8 +30,12 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_c10pll_state *pll_state);
>  void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc_state *new_crtc_state);
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
> -int intel_c10_phy_check_hdmi_link_rate(int clock);
> -
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> +void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       u32 level);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 3aa334b15eaf..bfb39bce3b04 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -207,6 +207,7 @@
>  #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
>  #define   C20_MPLLB_FRACEN		REG_BIT(13)
>  #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
> +#define   C20_PHY_USE_MPLLB		REG_BIT(7)
>  
>  #define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f445f2613adb..44f07011245b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3853,10 +3853,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	if (intel_is_c10phy(i915, phy)) {
> +		intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
> +		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
> +	} else {
> +		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
> +	}
>  
> -	intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
> -	intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
>  	crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
>  
>  	intel_ddi_get_config(encoder, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 99b187f2f4ed..96a3183675be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -997,6 +997,7 @@ struct intel_c10pll_state {
>  };
>  
>  struct intel_c20pll_state {
> +	u32 link_bit_rate;
>  	u32 clock; /* in kHz */
>  	u16 tx[3];
>  	u16 cmn[4];
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 8141d5184856..65a258507d62 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -58,7 +58,7 @@
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
>  
> -static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
> +inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
>  {
>  	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
>  }
> @@ -1865,8 +1865,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	 * FIXME: We will hopefully get an algorithmic way of programming
>  	 * the MPLLB for HDMI in the future.
>  	 */
> -	if (IS_METEORLAKE(dev_priv))
> -		return intel_c10_phy_check_hdmi_link_rate(clock);
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
>  	else if (IS_DG2(dev_priv))
>  		return intel_snps_phy_check_hdmi_link_rate(clock);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 774dda2376ed..492bd3921385 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -54,5 +54,6 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
>  				  int src_max_slices, int src_max_slice_width,
>  				  int hdmi_max_slices, int hdmi_throughput);
>  int intel_hdmi_dsc_get_slice_height(int vactive);
> +struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi);
>  
>  #endif /* __INTEL_HDMI_H__ */
> -- 
> 2.34.1
> 
