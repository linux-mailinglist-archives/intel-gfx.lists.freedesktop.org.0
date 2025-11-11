Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A97F6C4DBE4
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 13:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29BF10E579;
	Tue, 11 Nov 2025 12:34:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhox8STs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E9410E572;
 Tue, 11 Nov 2025 12:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762864451; x=1794400451;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Hwepk+rFoBf2stThc9WcZVGfiKkd5xGsA2PIka2nCpU=;
 b=bhox8STsuJgYHhvmW/XXEhA1V4JKkrv6Rp2d7UKI9YX24hFuVh9NAATN
 1neWyn2TrxDQ7j/8V8+j0BDMSpJ+KLBAVZjqZc5fDXd8sUEKMLs1oix0c
 SIozFbVuiisLKvgYKnIQvNuHJf6AaCMepHorNA9LGbZXopU3SkVsix6ED
 WS+8ERfhzrr09lH4vc891ZhakdUwu7SnTCBYXiAxg5GtmSETrWDZ7rQ0L
 RNzlIMoG5qh+3ZSpJh6XIN4v9gkcMn0doJl0EAEgDjXLSTxp3sA8BsyL1
 5pMegJUk+ac2Svo1Xob8L3vvuvO1IS2CXNwPqCbIxneoe7v3yeuO6IcjT g==;
X-CSE-ConnectionGUID: 8/kkO2jKTHqI7w8saDyquQ==
X-CSE-MsgGUID: gcl4F/3ySn2i3cxgTkR5aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82553708"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="82553708"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:34:10 -0800
X-CSE-ConnectionGUID: NaC0z9y4TNqCLahmuNpMyw==
X-CSE-MsgGUID: QmvDYyuORY20e1Bq3GBqcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="212344391"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:34:11 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 04:34:10 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 04:34:10 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 04:34:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DrV756nxfUJ8TBAJWy7PzocjayyJCDY2nSc5LGlAOYwzdfWSRWyZ7RYMXgORu1UPz+cXDwefM50khTW8THOE9C/Ggdro6Rmg/rnNA3DY3Mh1AkNUKyWPRMrzU5Cq3L1tFE8WrJXpH46M+9pGekgJ1rf+FmCGhaYluSZPLL/J46FoaSttY6R2f3o9WzLhkGMB/fJABKYkJyNhv77xGq5UFzi6vW/p2adBgfGdSDYX4NddQ/zHC413miTtx5Rx/1O2RAQGxwc6M9CwIaim71zytnwTNM5U4WEMhn9s7f0wNe7JmGcCl66zcKahiDZ2YQW6DOqTfBlGpfktrPVIT8iI3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7xgK2/oCpDbdAj1Q3AWN8zvqKHE2f0J6OE9a9cwjNWI=;
 b=igOK4bYO8FcTkMFhLVH2n4EdJmp8ijLnbimMC3OEUKuNHGIH5Lbq84wR0iOWOxylmK0DOTBPRytpoXt8UpNJCfBqvwxZycD6pWqIAZ/hThtBYhqpMW6a2wLwqOhvz6HI28tKRw9Mpu+dptxT8uAE1kxXCuKNx9fsqZsOlSjbx2Qew8lvHmi3zznIx8ycLxzdVZ0ea/ovAgP4Ze0NaApqcuJW6tw3JqpdzijHgOZdp7Jhyr9M3nKDVDyu3pKqotC/i/FIhAA61JYIdpuarGtmXxgnLCPtyFCAiUiBjgclugXI9qlQIPiXESSPhX2ElQgs1uLlHRb1NRSmCZ7OdDDJPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6368.namprd11.prod.outlook.com (2603:10b6:930:38::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 12:34:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Tue, 11 Nov 2025
 12:34:07 +0000
Date: Tue, 11 Nov 2025 14:34:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [CI 14/32] drm/i915/display: Print additional Cx0 PLL HW state
Message-ID: <aRMtOZulNUsSSArd@ideak-desk>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-15-mika.kahola@intel.com>
 <141250547b313dd31f20741af553847f1e2bfa45@intel.com>
 <64c941480959a8e70cd903d414bd55a3e47a67d7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <64c941480959a8e70cd903d414bd55a3e47a67d7@intel.com>
X-ClientProxiedBy: LO4P123CA0069.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6368:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d99dc73-32f2-4b23-e591-08de211e9b34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4+kI1HFla79XovGLM+ydP+z7ukozj+21YvulWSth9b1bzwS+K/Wff3m2MywF?=
 =?us-ascii?Q?hs4FzXxGd5b2V08zZE4gXmqRzmw41Ec2XZBDZVuWi8hU/OJVNeF13sBZlHgv?=
 =?us-ascii?Q?ttZVQmMDG0OrMkvSpSTees6x+EjYjiKrioAmnQYOgUM5KgSKCQDvu67CKPyi?=
 =?us-ascii?Q?axFosqgjE0DD4gMmh5zsuGszufNPx0Q3CmhZUXTcrSwjaTB5Cj2MaLTma75K?=
 =?us-ascii?Q?XxmWsnnomIQ1tLLmLTs3JjiSd7RVjbDs0JwJdJWrpV7zH5hD6gRy1pXos1yN?=
 =?us-ascii?Q?5fZul2I7ZJ+6Fp+4v88opmHwGJ/dq/0m80W0wftBthZlSW4DVGte/nFFVaGB?=
 =?us-ascii?Q?Xgf+lPcbIpa8OYYvgw3OWtFY8LsttbOGond2SRkLNefVo5Hffbt0Q0vUOgU0?=
 =?us-ascii?Q?92oX1ZlDum8ebo2IITxaDMbp0zPQRKWsVz9p6Y/Kzx7HVCKhy5nRltuz8i0o?=
 =?us-ascii?Q?Shyoeu5+JIryNxroAUidONMpIHy0V4XScD7n0pM8VRpoMMDFjAlezAT1tz8W?=
 =?us-ascii?Q?tfhgm3uX4hpASPHz88sg5c6z6Qvf9E+SzVr17xNf1S4SKjH5bVCz8Aa6bncL?=
 =?us-ascii?Q?wzFqscUGW7N15y8iGfcVBQrGM/XXlhWcSPXlliiiTAxLvQ7MdhwWq1eeGIgP?=
 =?us-ascii?Q?YXEcE/qzc9bmnyOKA4M9eaO156WeIJxqzduk0iXw6tfSaOsOrt6wYgyuwHtA?=
 =?us-ascii?Q?NiCRrMw5jyqRF8yS+ih26nIlRgXyUTRAONFPe3ToUbYQup+rkDQpufnFDn7L?=
 =?us-ascii?Q?EzT7KykUOZvZLsQffcMMBkqMl0but4qJwFAQ9+jzxYGO2gnL/Fd6ZdPRvKnA?=
 =?us-ascii?Q?tYXWKXXFWz2b4IerdA8R2rsrKDUgcMj8B0lacQ3QgIqOF0kIbLSuBRao1PiQ?=
 =?us-ascii?Q?bkw2J+PtYnigHK7zGGBYx3tQUhbU2IcMeaRckfxIR9MXmGeYr1DxUJal9g6I?=
 =?us-ascii?Q?2pBqoGv8HEsFjIDwz+F80Lgso9uzqWZA+pI6vm5y/bnFQr4htJHDVknboebG?=
 =?us-ascii?Q?lZ21D3H+k5x9BlLr763w/C3bazOWZBkA3yvuZeVhinplzv8jPkQa9rrbiAb3?=
 =?us-ascii?Q?jlJV8XWBamgLVOiFMTpbl9/B+5MaB1JdkVSw25UtoQO33mwOfO+9AxCwjOQV?=
 =?us-ascii?Q?N+JWaoZi8wzzYTgYCbx5cLVHzmddZnnlF3cYNv5DfKj6rgaawlM6WXt9kpyA?=
 =?us-ascii?Q?FRbNAeqBtblyx5oxFEwZeujlsW+rOTwpiaPiFX5sfHXwsvMT7pT9Bh0AY/Am?=
 =?us-ascii?Q?ML3elNUVivPBmJGpHQJeHn63suWV6t5yAOiHS4uRvh+xwVYt5lnT+1oHjrF2?=
 =?us-ascii?Q?BvgdEBNubfhgRzaokvfT7DHqWBlIOJt8zqRpoV82zZpZ7Y7hOsoCJXNHDzSP?=
 =?us-ascii?Q?N2bGI6mv2lP/qgpkXqjR5s5wLnaQdgn6JjwbZF3lJcV5gi0rTyPreD1egLK1?=
 =?us-ascii?Q?+CNK2dNTUQe/hMERLPiCSKWuyds0Fc9y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sbvGJUU9rWoazd58wa26oL74oxKLIMNDzCZbVJZnO6I0XGQJmoRFNL/h5op/?=
 =?us-ascii?Q?mjnh7SgU7PQ7qclagdrWp8Mwii6F44QM4ql5hbW1ypkfCOAyuUZXKXOOFxZ0?=
 =?us-ascii?Q?hJoZX4O84n0Bp9oZeZhnkGQD4dQJxH3Ef34v7IsCekGbMTIYGuwinyGBO/vJ?=
 =?us-ascii?Q?vJrOOhQOi7Ty50MXT459GrL2/KNWEF+4WiJM5rKID9IWNI244sm2EgR5R9CT?=
 =?us-ascii?Q?yD5zwbOFrcs/R/LWDp9D3AwWe2JroemnzpWtv5g/WkDodR6oUa2R4HSnhP/l?=
 =?us-ascii?Q?Wz1y9q8jV2JFeyVLzlWOJJoxJs374UZpQm0bJH2kU4VzaBuNSTsp6ZvGk9yg?=
 =?us-ascii?Q?wW4iupTf4eE4idHq1rLnsiifwhTZZtYaZ9v2u9w0zWExX0e6wP/Oa2x6sGV0?=
 =?us-ascii?Q?U+oLSTl03i49jeR31ULujUytiL3ep/vAhk3rH/L8461p0KsD4HujIf0FqSwk?=
 =?us-ascii?Q?EiDMB4T9L5154qNju9DF2wGjSwa0CdA+MNof78LB5R283/eUaPDM/xWlEyet?=
 =?us-ascii?Q?u84rUgMg3srxBCb6K8LczKecZpBTY0dNlbDq3SxKZ0QmrNAfODtpb9BanXrE?=
 =?us-ascii?Q?k1nUSGaGSTc03Vl41I4q2Z5QMEjrwMvQ2+37PoQnTGOQgSmrgxfgTLniP1v4?=
 =?us-ascii?Q?R8WQe8AXX0TloONK40elGl8FzMTyXVl89V1EmCAgzuhH31yv+RrsQXEp6b9G?=
 =?us-ascii?Q?vYqng3m8A8/lFfpJFCBCKwnC5vvUcmcJJ/99qd4ubRvZcDJl2WceG1qcpQXd?=
 =?us-ascii?Q?dI1MwtyXO8gWmo6EguJj09lFo8r87+2z/w5onDE4odOxg/NP9xSalbodmoNn?=
 =?us-ascii?Q?kfSN5M0hJPTOhAHeF8lLuM7IqGhnLEsWP9wQsuI+Gbmi3cNgcYrb+cFs4Uo0?=
 =?us-ascii?Q?933R9M2P4Vx7YZEnOQcg+oOfzS+oDOUnOF97dc7SwU8CBU56Yd7vPkAEuSRO?=
 =?us-ascii?Q?T1TVIUXPpWN+jHDA5uvflviLWd6BlZqLbuSwnIYdKUoMd3HJ4u7yoJY+Zkkr?=
 =?us-ascii?Q?0Hbrz6OpXVjOFgIil8T5BHFO3rcIjJw7IBJmJnogzUdUkfipTWAuUAde7265?=
 =?us-ascii?Q?eW+q2zvCzvp+HCxJKjTIpRHWghURTRW7RxQH+CpLUPB2udzau5VqvRNXjwDz?=
 =?us-ascii?Q?3R7pUYDNrCD2nJf0yk0/IrzkwjCMQO2lfHH1O7pzpYFVbTvHYcf9M40jVC9Z?=
 =?us-ascii?Q?16zVMHJtQnMx8P+7526kzIDBYVyCNjqT7AHLgQULYvtsNkLc9M+HQCYEUEVn?=
 =?us-ascii?Q?6EheSah2eNB4mU6AEMre9tPQOIfiArzh5X2qK4jreU/l9Vrzn2RMjnKvmglw?=
 =?us-ascii?Q?c2D0K9chK4h3unGLOwxvrPNJYQKMmEgcRV3ov9ApKZjMqOuNd7eJqF3iC5YQ?=
 =?us-ascii?Q?dLbQYDYmP36Z/Ms9a0PcTn4mjq5C8Vr+PjQZB/f4xMn/MyyfYgrAlSjP/1Mr?=
 =?us-ascii?Q?3Q4HDHg1L4XLzM0BaARS8Nq0mcEiIGBs66hy53qzUApPh+PHLnrcykBU0cHS?=
 =?us-ascii?Q?WP90wg3oqxGgQGvToKd9MMjYH3sq2NEf+Xn9MbYLIZE1LEUlBnZB7Q39UE6j?=
 =?us-ascii?Q?CjTU06I7O9teNg7mtwThl6xD6hrCN77xnXG7URBAEGvZx5Wvj48rSMGEC+9y?=
 =?us-ascii?Q?p4MAIgliub0Bz+ZXBOQ2h7quMmoknNJV3De6b3DFL0wu?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d99dc73-32f2-4b23-e591-08de211e9b34
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 12:34:07.2790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WMVa/sYBC5ChsZQJWVxz2ySyJFjDFy7SK9637GP4+FjxUuPg3Lft/qq2Y5nr7+GocoDFDMFbigSgH7px8tAVcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
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

On Tue, Nov 11, 2025 at 01:16:46PM +0200, Jani Nikula wrote:
> On Tue, 11 Nov 2025, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Fri, 31 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> >> From: Imre Deak <imre.deak@intel.com>
> >>
> >> Print all the Cx0 PLL state in the PLL state dumper.
> >>
> >> Signed-off-by: Imre Deak <imre.deak@intel.com>
> >> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 18 +++++++++++++++---
> >>  1 file changed, 15 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> index 3418fc560faf..1e68a73c2ca8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> @@ -2311,8 +2311,8 @@ static void intel_c10pll_dump_hw_state(struct intel_display *display,
> >>  	unsigned int multiplier, tx_clk_div;
> >>  
> >>  	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
> >> -	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
> >> -		    str_yes_no(fracen));
> >> +	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
> >> +		    hw_state->clock, str_yes_no(fracen));
> >>  
> >>  	if (fracen) {
> >>  		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
> >> @@ -2835,7 +2835,7 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
> >>  {
> >>  	int i;
> >>  
> >> -	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
> >> +	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state->clock);
> >>  	drm_dbg_kms(display->drm,
> >>  		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
> >>  		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> >> @@ -2851,12 +2851,24 @@ static void intel_c20pll_dump_hw_state(struct intel_display *display,
> >>  		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> >>  			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
> >>  				    hw_state->mplla[i]);
> >> +
> >> +		/* For full coverage, also print the additional PLL B entry. */
> >> +		WARN_ON(i + 1 != ARRAY_SIZE(hw_state->mpllb));
> >
> > Why? What if we hit this? At the very least please use
> > drm_WARN_ON(). What does the comment have to do with the WARN?

The WARN verifies that the additional entry to include in the print
exists and it is the only entry to print.

> Besides after the loop i == ARRAY_SIZE(hw_state->mplla), i.e. the whole
> thing can be
> 
> 	BUILD_BUG_ON(ARRAY_SIZE(hw_state->mplla) + 1 != ARRAY_SIZE(hw_state->mpllb));

Yes, BUILD_BUG_ON() is better here, no reason for delaying the check
until runtime.

> >
> >> +		drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
> >>  	}
> >> +
> >> +	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes rate: 0x%02x, hdmi rate: 0x%02x\n",
> >> +		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate, hw_state->vdr.hdmi_rate);
> >>  }
> >>  
> >>  void intel_cx0pll_dump_hw_state(struct intel_display *display,
> >>  				const struct intel_cx0pll_state *hw_state)
> >>  {
> >> +	drm_dbg_kms(display->drm,
> >> +		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10: %s, tbt_mode: %s\n",
> >> +		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> >> +		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state->tbt_mode));
> >> +
> >>  	if (hw_state->use_c10)
> >>  		intel_c10pll_dump_hw_state(display, &hw_state->c10);
> >>  	else
> 
> -- 
> Jani Nikula, Intel
