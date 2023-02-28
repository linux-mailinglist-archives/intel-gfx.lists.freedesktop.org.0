Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E596A5017
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 01:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E65810E047;
	Tue, 28 Feb 2023 00:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E46AA10E047
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677543412; x=1709079412;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=pjydNGW0rainvAndzlr8rvDl/WYYUmQHb7F1oYyXwxE=;
 b=RS+tI53Qf6iwpSfSW7+YZb3w9QP33JExv0owyKNEEQwCbcbUJqtHyNSD
 H4IimhVF/rb0J19w9JfnjHZoeDe+Q6/b1e8+CQnyMQM2Oypl24UXLBH0+
 bMF+Msn8nomSuNQl9umjoSp0qBqLpnNuzEmPlKp6749pWxzd+g56Qz6my
 jB5tK9jfzwA6l7ihsoW0EyAs1vcTB8QxuGmX4rALRUCHsr+rEIY+hzTlc
 FgphVYEYf3ndPj16ko2TMaxcHNZPxTuwgM1yL4/BX8f3Bkkgw4ln6I8r5
 RDfXc1pWiioMpOlaKad2QtrYLVxErIA7l/kOiY7KzqnjRm+cj1A85m2/I Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="335494908"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="335494908"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 16:16:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="737952324"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="737952324"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 27 Feb 2023 16:16:50 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 16:16:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 16:16:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 16:16:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZVnCuj3Z5uXqHu19vfQSXLIdXrJI4h26QKpEHjyhiNdnol4G4Dj+DcVJ9YKsVgArbZPvMK3O5TD9dNz7B6zh/Nvc/4jDgeYtmV78WlWYoVBFr4+u8kVvDDjo13ZfU821vtqLC5CJ7kTXrX533yLINNxIvULhKwexwRAQvRRtzst0N4wtjSU1/wu3PKvhDoQzM0yopz3oUVKp5ZivQaz4fypEL6w3RnQF0tbf433og7PIpZj7pxmoZ+XbaTB0uMSkURKLcPlH6K/Jqkitd91YPPSyP/ReFGiT15M9nQ3lmSoFYMc8FKNO7IJBcASnFv/3EGa1anOVW9rX9NWZMi8GtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BLodwuC5Z5P2o/Aiy5MvuHy/6qnn6vQvH60qPoXtDJI=;
 b=mRuteojw6vq04sax5/0qJZp3ge9QHfB1EeptlwTp9mL3N7jfhmRCGuAV9ZMM2/dbNEDa6bkLuO8eHhUinrMujJRgF03Bemyx/oDms2pub2/KLc+EsAOvg/M5icDIuRkYwt0swXmbQff3BDTKNbe043Br4WPDCzjSUFZYW83bb2ZzizNppdd7xgTiPQDkG/Gl2KOGgTQ2uoL/i59R6GFnP8Ok/7bkptp6PXldBrPSqjjfUyYxm8dWj7ImkuaZnq5Po4RWNfOjq3vZCfhBMr0dKszSD6ZMShiGnoOmehdOT6XEnEABwvt+cSNwijX3BIW4IvWKREGkL91PAF1X/sXqJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB8231.namprd11.prod.outlook.com (2603:10b6:8:15c::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.29; Tue, 28 Feb 2023 00:16:45 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6134.025; Tue, 28 Feb 2023
 00:16:45 +0000
Date: Mon, 27 Feb 2023 16:16:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <Y/1H6dKAjWZl42OH@mdroper-desk1.amr.corp.intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
 <20230224101356.2390838-4-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230224101356.2390838-4-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR11CA0044.namprd11.prod.outlook.com
 (2603:10b6:a03:80::21) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB8231:EE_
X-MS-Office365-Filtering-Correlation-Id: 94924a4e-ddcd-496a-20e7-08db192112f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QjjzA4bjHDFs+vZYhqoXGFZlxTA63G/rrmSU7E5vehpPmP6kQDIG1x3Kb6Rgfsm2DqDZElamIT5kDTEadrDqeLrCd4JNiOyoj1soGC3YW6voxh2EPdylMkpJ3EygCt08Mmo5hgZS9vnb5hiHzK4KiWQ1vtnngnvZFMOzCd36TBh2vI86cRcEGuAEsvbMCcSFavzEJvgnUsYCqG6PKs5m4ia6eXopt0n0jtIgvWtLSaIrxlGTOz6dnciNohBkzvhmeUdiFYhXycWN++AFkNrdrAnm/wJfITuPjIik318zbgyIZbT7AQjaXA6FxBl3AinKYJ5zN97UpfSfcoSDCm94lf5tvthHm7sCF8qXqnLBsJKuWC8+h+WZbVbnpqa6e5QI6Rsvyl+F9qv3NDlg4mFOwUJHkZNANFqPIjHi4HSIU9/plRz78dlZjE3rTpiBzgVwdFJV/g0X5eOGHOhYQLT6gvgDNPkKCHYHdX7g4uFt4oyZ2NFjC8eOh3hqDs4q8rE+BNiJFt04lVlO2IQa2pwYH5A+HJOkMfO71/jH+boJYjMvVsWTXZbE5pZ1b1Uo72xFHygOVz2YbrPtwIudQA3oQy9tumku3mDjKe+ISooitN1SC/aZ93lS2jsCpnkzkwRUPaaipHZqEZZmXHzRljtV6Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(396003)(136003)(366004)(39860400002)(451199018)(4326008)(41300700001)(66476007)(66556008)(66946007)(8676002)(83380400001)(38100700002)(82960400001)(86362001)(2906002)(6862004)(5660300002)(8936002)(478600001)(6486002)(107886003)(6512007)(6506007)(54906003)(316002)(6666004)(6636002)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?2WonxdEnOCt6c65pR93+wiZHwHOcIx9NQgH5F37jSDyqsILf97uEgQVzh6?=
 =?iso-8859-1?Q?SppODCfazrHdpm3KbgRdHAZLASQLzghE6DsSwAuePyFajkhcszW0QkkjPQ?=
 =?iso-8859-1?Q?9yBxPgA8OvOBTWU/uatjuGHr80KRnS2FdSlpgaTA4Med9S2Wq8eyi0jLrJ?=
 =?iso-8859-1?Q?hWHKzyYKjOx0QAP7SEjR6ZKsdEGjbm2TwekKC/xtb7UlJsTpKsBRzjKCVe?=
 =?iso-8859-1?Q?Q9DYUIOMM1nlWS9YnnHJrezGWkIIDD03tJoFmwBasuLCK1BEqjrwqemwAk?=
 =?iso-8859-1?Q?1v8YN6vPNxF6hY5K3cPaptN5UAlW2XTe1pOY/cuCToxCOaC9gTFwOw5zxe?=
 =?iso-8859-1?Q?DW01Rs1ZmmYh5EvGO7SQhFr0g4/YVhgkP9X2puJMRAD5NzvOGSD0vT/hv1?=
 =?iso-8859-1?Q?BNuV1KZEounvQ1TBra82E09UBI11avK6LRsCvA90lI1wMoCOz1Z6CpnEsf?=
 =?iso-8859-1?Q?YPC6XverlJmvTFbH+nx/vhIoo2c7no9883EfJi3xptz6qxRwOTo6fjH1+d?=
 =?iso-8859-1?Q?22X7U0bcmB37nD46gJWTkW7O4wHXKfDXAEL/o5P89KeOWXA0P9yxRGNBcl?=
 =?iso-8859-1?Q?bL3S34isZz7BTxWb2aBnudsRavmsra9ZvTR+WKuyPHPRzq9k79IkNRf6xF?=
 =?iso-8859-1?Q?4N/MENEaFEbznwZNx1vtO1fW2fem1toJzZKNjrQG6qMTMKiOse/G26HfAi?=
 =?iso-8859-1?Q?Y1oETWZ5A5Y7k0S3tELm+hg7objUInizrVYGJP9rhU29Bb7zmUC80JrXPB?=
 =?iso-8859-1?Q?Ktzg/q/uyqnw/T2zuKNNdkY81Dwq7NYHztQX+LsGbzjpvxWSQHq+beLTer?=
 =?iso-8859-1?Q?8I+QlHFyuwBDORWlczZBwbn0U41jS3+o+hDiNWNr960G2FAbsTKEWPQeGh?=
 =?iso-8859-1?Q?Jx3tnSKnq9vkN07TND8Fr+vLK/n0/JZCpeXxbBIq6QHy5ypLKMKsRl+KHw?=
 =?iso-8859-1?Q?/tHN1VLl4OtrwpUTx5tpQf8FhquHTVh8/VkZ7RreBI8Vi310IJqvMCk/xx?=
 =?iso-8859-1?Q?BZNdW+bf21hXOvgVLkPxTMwDRWY6iCO1Pvpx/UtfHRHJVWOHUxe+QBsnJo?=
 =?iso-8859-1?Q?GbBevcCyLObLd9BSsZlXxVz4QH37tVO5SDxe84Vrsm/nVLF7W29PZZICrL?=
 =?iso-8859-1?Q?49cOq3NKPuoYJ1vKpN5aCKvfjC93bk1jrQKAPSbqa7qaCkhX7VEzDhuLFO?=
 =?iso-8859-1?Q?xbauKcgpPRPFdW3eT3K8dE3lQW51GmUd6AjTY9Wz+ViEhOFC7r6e4W1tdL?=
 =?iso-8859-1?Q?0GRFwmfxLGRpwrcSG+pEVuVRbUMXOoVwYQvkmSdLbc9QtWISpC04KVt34/?=
 =?iso-8859-1?Q?RoCxyd7PnnAQI/KpRby65DhyF9PHkXvidlhKxFQ2UeYXSuM+DFn+/1GhiS?=
 =?iso-8859-1?Q?Xs739rXTCG4YlaBH9AS6fQVDDOV/i9J6AUIPVacYAHFZVLQICCVEZNUJcm?=
 =?iso-8859-1?Q?Pf2nmlv6DbZ9h0oQBHyRsizPKXaTcph971ZLhzhFsl0st6TjP8TMQFq1OV?=
 =?iso-8859-1?Q?hmR+ArniNZZ1F5uAGa0GJMTRDqgHDzisPWJwULFQOjw0PGXfMyAynf2Zf4?=
 =?iso-8859-1?Q?/qxUrKhTZEuBxkbanyaY3M1Svl2cZuKAW8Z/m5wmHA3oFctndD0HtR0E9M?=
 =?iso-8859-1?Q?AtOO9PrVL8WOj5Hw6vwAGt6Xgyvp9ITc1Fj7kghVwoH6bSXHpac5I16Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94924a4e-ddcd-496a-20e7-08db192112f8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 00:16:44.8111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: emTSIwOQwI41zC7go8Aq7d34/KZrqSbtYYeaVGwHYWQo95WP6C9CbNHotrfCG+IVHfiu+qKCavUjlKsqpKTiIfkF4TPvR5LHm38oIgkXHsA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8231
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 03/22] drm/i915/mtl: Create separate reg
 file for PICA registers
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

On Fri, Feb 24, 2023 at 12:13:37PM +0200, Mika Kahola wrote:
> Create a separate file to store registers for PICA chips
> C10 and C20.
> 
> v2: Rename file (Jani)
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 136 ++++++++++++++++++
>  1 file changed, 136 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> new file mode 100644
> index 000000000000..d6b3709d3762
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -0,0 +1,136 @@
> +/* SPDX-License-Identifier: MIT
> + *
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CX0_PHY_REGS_H__
> +#define __INTEL_CX0_PHY_REGS_H__
> +
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3		0x16F640
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4		0x16F840
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		(_PICK(port, \
> +							[PORT_A] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
> +							[PORT_B] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
> +							[PORT_TC1] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> +							[PORT_TC2] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2, \
> +							[PORT_TC3] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC3, \
> +							[PORT_TC4] = _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC4) + ((lane) * 4))
> +
> +#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))
> +#define  XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
> +#define  XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
> +#define  XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
> +#define  XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
> +#define  XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
> +#define  XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
> +#define  XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
> +#define  XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
> +#define  XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
> +#define  XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
> +
> +#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_XELPDP_PORT_M2P_MSGBUS_CTL(port, lane) + 8)
> +#define  XELPDP_PORT_P2M_RESPONSE_READY			REG_BIT(31)
> +#define  XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
> +#define  XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
> +#define  XELPDP_PORT_P2M_COMMAND_WRITE_ACK		0x5
> +#define  XELPDP_PORT_P2M_DATA_MASK			REG_GENMASK(23, 16)
> +#define  XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
> +#define  XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
> +#define  XELPDP_MSGBUS_TIMEOUT_SLOW			1
> +#define  XELPDP_MSGBUS_TIMEOUT_FAST_US			2
> +
> +#define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
> +#define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
> +#define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
> +#define XELPDP_PORT_RESET_START_TIMEOUT_US		5
> +#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100

Drive-by comment:  is this constant correct?  On bspec 65450 it looks
like there's a table of different values (anywhere from 2 to 1380) that
get used depending on the old/new state combination.


Matt

> +#define XELPDP_PORT_RESET_END_TIMEOUT			15
> +#define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
> +
> +#define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
> +#define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
> +#define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
> +#define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
> +#define _XELPDP_PORT_BUF_CTL1_LN0_USBC3			0x16F600
> +#define _XELPDP_PORT_BUF_CTL1_LN0_USBC4			0x16F800
> +#define _XELPDP_PORT_BUF_CTL1(port)			(_PICK(port, \
> +							[PORT_A] = _XELPDP_PORT_BUF_CTL1_LN0_A, \
> +							[PORT_B] = _XELPDP_PORT_BUF_CTL1_LN0_B, \
> +							[PORT_TC1] = _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> +							[PORT_TC2] = _XELPDP_PORT_BUF_CTL1_LN0_USBC2, \
> +							[PORT_TC3] = _XELPDP_PORT_BUF_CTL1_LN0_USBC3, \
> +							[PORT_TC4] = _XELPDP_PORT_BUF_CTL1_LN0_USBC4))
> +
> +#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port))
> +#define  XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
> +#define  XELPDP_PORT_REVERSAL				REG_BIT(16)
> +
> +#define  XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
> +#define  XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
> +#define  XELPDP_TCSS_POWER_STATE			REG_BIT(4)
> +#define  XELPDP_PORT_WIDTH_MASK				REG_GENMASK(3, 1)
> +#define  XELPDP_PORT_WIDTH(val)				REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
> +
> +#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 4)
> +#define  XELPDP_LANE0_PIPE_RESET			REG_BIT(31)
> +#define  XELPDP_LANE1_PIPE_RESET			REG_BIT(30)
> +#define  XELPDP_LANE0_PHY_CURRENT_STATUS		REG_BIT(29)
> +#define  XELPDP_LANE1_PHY_CURRENT_STATUS		REG_BIT(28)
> +#define  XELPDP_LANE0_POWERDOWN_UPDATE			REG_BIT(25)
> +#define  XELPDP_LANE1_POWERDOWN_UPDATE			REG_BIT(24)
> +#define  XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(23, 20)
> +#define  XELPDP_LANE0_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
> +#define  XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK		REG_GENMASK(19, 16)
> +#define  XELPDP_LANE1_POWERDOWN_NEW_STATE(val)		REG_FIELD_PREP(XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK, val)
> +#define  XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
> +#define  XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
> +
> +#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_XELPDP_PORT_BUF_CTL1(port) + 8)
> +#define  XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
> +#define  XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
> +#define  XELPDP_POWER_STATE_ACTIVE_MASK			REG_GENMASK(3, 0)
> +#define  XELPDP_POWER_STATE_ACTIVE(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
> +
> +#define _XELPDP_PORT_CLOCK_CTL_A			0x640E0
> +#define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
> +#define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
> +#define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
> +#define _XELPDP_PORT_CLOCK_CTL_USBC3			0x16F660
> +#define _XELPDP_PORT_CLOCK_CTL_USBC4			0x16F860
> +#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK(port, \
> +							[PORT_A] = _XELPDP_PORT_CLOCK_CTL_A, \
> +							[PORT_B] = _XELPDP_PORT_CLOCK_CTL_B, \
> +							[PORT_TC1] = _XELPDP_PORT_CLOCK_CTL_USBC1, \
> +							[PORT_TC2] = _XELPDP_PORT_CLOCK_CTL_USBC2, \
> +							[PORT_TC3] = _XELPDP_PORT_CLOCK_CTL_USBC3, \
> +							[PORT_TC4] = _XELPDP_PORT_CLOCK_CTL_USBC4))
> +
> +#define XELPDP_LANE0_PCLK_PLL_REQUEST			REG_BIT(31)
> +#define XELPDP_LANE0_PCLK_PLL_ACK			REG_BIT(30)
> +#define XELPDP_LANE0_PCLK_REFCLK_REQUEST		REG_BIT(29)
> +#define XELPDP_LANE0_PCLK_REFCLK_ACK			REG_BIT(28)
> +#define XELPDP_LANE1_PCLK_PLL_REQUEST			REG_BIT(27)
> +#define XELPDP_LANE1_PCLK_PLL_ACK			REG_BIT(26)
> +#define XELPDP_LANE1_PCLK_REFCLK_REQUEST		REG_BIT(25)
> +#define XELPDP_LANE1_PCLK_REFCLK_ACK			REG_BIT(24)
> +#define XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
> +#define XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
> +#define XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
> +#define XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
> +#define XELPDP_DDI_CLOCK_SELECT_NONE			0x0
> +#define XELPDP_DDI_CLOCK_SELECT_MAXPCLK			0x8
> +#define XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
> +#define XELPDP_DDI_CLOCK_SELECT_TBT_162			0xc
> +#define XELPDP_DDI_CLOCK_SELECT_TBT_270			0xd
> +#define XELPDP_DDI_CLOCK_SELECT_TBT_540			0xe
> +#define XELPDP_DDI_CLOCK_SELECT_TBT_810			0xf
> +#define XELPDP_FORWARD_CLOCK_UNGATE			REG_BIT(10)
> +#define XELPDP_LANE1_PHY_CLOCK_SELECT			REG_BIT(8)
> +#define XELPDP_SSC_ENABLE_PLLA				REG_BIT(1)
> +#define XELPDP_SSC_ENABLE_PLLB				REG_BIT(0)
> +
> +#endif /* __INTEL_CX0_PHY_REGS_H__ */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
