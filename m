Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B69E197C9EE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 15:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 583DD10E6E5;
	Thu, 19 Sep 2024 13:16:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdqT//34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08FD210E6D4;
 Thu, 19 Sep 2024 13:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726751796; x=1758287796;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+GhoW4XImwAonY/B7y87hbwkoym3GCzfpXQl+gcojzI=;
 b=IdqT//344GFJx+nMBh7RxxBif0uWn/4oSNtSJOu1UXSmiowbeAIC7+DH
 I37QjU1fSisCFMueVPUHrd1JZyzl8cNlHWemY/akn8+p8qBCJp8HFvTqV
 /UlhhRRHlflcNDtSfht4gyUcNAOQiUyxlZeUqdzb6GUgA1gX2s5+FC7N9
 IaSns4A7+J6xs2knYZDqmt7O4j8r9EPZmo5mRW948U8n/0xwUTUQVc0RB
 7nZyIKGya9g0LaMg7/vC7ISqfYFE4uOui/rgFQMEPyWb5vY8lkhqqsViM
 UtXLw6GX0xbIQTrr8z5cIrxR/BM8uNuOiKGOlDlAvrw39FH1e/8v6/NcB A==;
X-CSE-ConnectionGUID: l8N9TRGnRWqxjSQQ0hiGgg==
X-CSE-MsgGUID: aOBr/p5TSce1ULPR6LFIQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48245459"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="48245459"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 06:16:36 -0700
X-CSE-ConnectionGUID: Nd9CbvvVSBGO9nw/rakjZA==
X-CSE-MsgGUID: wYlRpjyGSvKMQSVgspqpVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="69951974"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 06:16:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 06:16:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 06:16:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 06:16:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CMyJwIAoiZkWvyrjcnkK7x1c/Bng6HkmxnA4C+r5OYXgXeron44Z0EUOxx8NGahM3irKEe675dejSGlMl85+EwpLjxr8aHz4+GWJ7ReJULfp8J7qsoOOxmo0ZoPL9NYMnfUNlbfEQZ1VM9eJcsfjfMI1EOXjVGExys2XLLb7LTnEASO/ejIjTIRUXCRnyI26r1/CCmqKFxOwFCr4NsJF6M8049euwpB92NUT6nLE9TSSsSkX3W1y4phJPz482GyTdNcnMo9gBKh+tXVD6hEeub6LNk1GKSBT7zXWOLwm5hezuqVArP+OrNtQDDfms4wtFn2/rZC5LuzdCNRK/paZRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+GhoW4XImwAonY/B7y87hbwkoym3GCzfpXQl+gcojzI=;
 b=HRAgbqzZ0Vv3aqvXFGqSxoAw/MToiNi7/t/K5qCB8kSq848y70TMEPnRGiSZPZRYTISAnzFLRFu0hfdUY41VdyGGh4sJi+jiDRW9AQfLgqtI/jDBgQTsMEQ/khWthfNgGeC+rAtBf6rxew4l3c/lYkADnCw36L3orafoFbtRVnpMtxTnRHC3+LMMyduEMVX0Z2MGKdgnvv7Wa8YymBdxmAyqQcSIP3+56onj2NuQ9YTX8CYTLh6cSim4pvGbC0RZrDVMe0n9aR6wvyoq/8qNQT4CrXlFv1aE89ae27Cj8XE//oqOOXdk2hlafM+t9JkBwvrNeDqAafB6bM35OQj+4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB6324.namprd11.prod.outlook.com (2603:10b6:208:388::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Thu, 19 Sep
 2024 13:16:32 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.016; Thu, 19 Sep 2024
 13:16:32 +0000
Date: Thu, 19 Sep 2024 08:16:29 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 20/22] drm/xe/compat: remove a bunch of compat gem headers
Message-ID: <wkdvpb2pvyowtabzalp4taj3zebjltz2aawhlq6s7kdbpsllmd@qqe4z4nrvvlw>
References: <cover.1726589119.git.jani.nikula@intel.com>
 <2ac115c5dd5f68da9172e9b5bd3a7eb4e10fce60.1726589119.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <2ac115c5dd5f68da9172e9b5bd3a7eb4e10fce60.1726589119.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0135.namprd04.prod.outlook.com
 (2603:10b6:303:84::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB6324:EE_
X-MS-Office365-Filtering-Correlation-Id: a6157f4c-73aa-4640-d7e6-08dcd8ad4764
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?94O9Wp32c+RECmEbv4sGPfpi9IsK3810pBR+837v9Mag1ketrZw15zVoYRtx?=
 =?us-ascii?Q?ycyBMQOCj44DyBpT5fHUVihgJLUn3O7o+z/2cWqq+Ri9Jwg//JMWVA/1P/6G?=
 =?us-ascii?Q?H5B5aPz9mMumZjA3swA7dh8yXnczrh4lI47MqNQRwmuOWSQjcwYs21UZNR1Q?=
 =?us-ascii?Q?JVXqBgLdqCdu2oNa3hBemNLlCNw8zP8lTCSLqpQ/iT2Dl2RT513iPNHuiF1S?=
 =?us-ascii?Q?2h5XzG4mKEdX85IIDTcRWtH3lW5DA64A+gY6+UDxv/nsYfbBUyE4Hr0r6h4s?=
 =?us-ascii?Q?LZtwulYqI++rkTiqTW1yAttKlA9nhrhT6//0++gIjmDS56eCI5RZp865GxhH?=
 =?us-ascii?Q?Esm6ODT9XRHj+zVTI+6Lik4TyRptBM30ywIViRLWQgal8sr/yyzCDLg2HDR1?=
 =?us-ascii?Q?1lc6pPMmZ1C12lJOQDxpdeVYFEUmNWTYNeqnODnI8YpmbobeRgkn+X9GVXeR?=
 =?us-ascii?Q?DVqafi0h8yYHW22QKMnSQb++tIffYvtf//D4PnhYIbLDtU493f5H7BxownJ9?=
 =?us-ascii?Q?Szms3sxPBzGwB3iSzDRBJnlNxSXyPAfTehkH1tk2cYgO8n03gsWMNsD14Gks?=
 =?us-ascii?Q?BwSORUgHpFYmqU0aE91QNxxmgs594owE0vWZ1aPcJNrkPlUcH/8wp2CBz+lQ?=
 =?us-ascii?Q?G6W0T+qUD9neXX6Tv3ca/tV+S1tfr3bQpvIjV+URftdWiYhFifjd1j3GX7zy?=
 =?us-ascii?Q?kFAVaQ1izCcVWNWm2N9f82gVmhmg0wNo9HEgGQdhnHmDgpCuEU9SViFwB+9E?=
 =?us-ascii?Q?Gqft7JYV6PhGa5Ct59xpFqt2ayJBNA7/MYCtyCCJSqisf4h+twKyiO5moZpR?=
 =?us-ascii?Q?Jh+dDnib8DrJg/+SgvnzmYWYBZcZ873oY99VyfxBdvW778othqZzaRlYxp9k?=
 =?us-ascii?Q?4brsZ59BD8q/RGWKmTH0+AnYMZp514j9UroFLlM5hdYyM0UVeK3cw+dqcA8l?=
 =?us-ascii?Q?ebcTimzUBD+xgmYctbZJRWpkVkeoNZ7xhchEmudyQY1BfNp5ISog39QyP8Vs?=
 =?us-ascii?Q?ULJpNSIyf7Wxg5x51SdjLcR3faH2dnqOI8DrBOPPJp6VGLQsbHdywIuNUOrI?=
 =?us-ascii?Q?X5cFGE9lY8LtkUYS9a21aJNBZFACJauXF0Q+x28Ev4cJ860TgXLML+0AIwI7?=
 =?us-ascii?Q?SbV+EZVg2BBWcAYmaXfee8ZEY1vwLvyyS+SIlMxqKD2B3Trwn1q7ON7/o1K7?=
 =?us-ascii?Q?GNH3vc532EyGEg/NGlQyTt78TY/dAZm5LQHr8oq3V8VanyEwHa4Lyl4gR881?=
 =?us-ascii?Q?Elr1Bn7CiVJKSD7FKK8CidFA0R4EFF3zsG+5RhWZIRSLOPuiLRmFWO2TXjno?=
 =?us-ascii?Q?ow76N0g1SFK30sGp/03ccwK86pezLG6Ow+ImzqcuJdh78A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tcFfOBWNCVGUYXZI6Zaxan6gsRaBN5bD3FzFaWM1TyWdyiaES+wMnSRhIpxP?=
 =?us-ascii?Q?Y6snsoXc/gTXh3ePJIB/zojxkYv1Zz6wqWcYyh+c4VJyqURzXBZl575yIys8?=
 =?us-ascii?Q?65stkk0evUqyuQRAkEtSn+ELxmrKfc++bK1C8oL1oJcNYrVh/OXNLHGlypAM?=
 =?us-ascii?Q?Vvb1WZ4N1oF1sX3rSAev9j4UAlt8qg3ym6b2TKHRhKg/Am9kgDPDv3m8y6/l?=
 =?us-ascii?Q?Dortj7071vv0JH94drR5uRp5G1tUsMODf2TRETwN8aSUEkdY/43C2GmUslxo?=
 =?us-ascii?Q?HvtmoI0wMvHdYg1r23dsEpPfCgbGTVcNEtI+BbKScNPMMqJ58OgTuSIZRbNi?=
 =?us-ascii?Q?E+DSEXhFFijgw+5hQsdj/rybNSxEV891ER+JFhCDKe511RpH+gksB5zdnDsx?=
 =?us-ascii?Q?PvjvW6D4+yQiRqkf6m/7jw2myCZEu8T5wq4cGXoOdrKs+g4GlH8pl986xIi6?=
 =?us-ascii?Q?Ef8Uy31OkrN14a7RkJGYZswGoA/MCXNl2wMO5hqrrJ7UGOV2oyr43B99SUlF?=
 =?us-ascii?Q?OJ8O4xsr6RYN3B6e7tyDv6lPSWkXHH0Xgd+3rxE2FnwRkN1ZsrpN8t1rSd6/?=
 =?us-ascii?Q?dgOfOOCChJ9mRfcoJGfd5lva1BTG8ca+PM9DuhHPAaRRt40I9TZ/kPIWmUb6?=
 =?us-ascii?Q?F9dl1xlRjwKUzmxDWwyPgXOKjvkriaP7gz/+z/l+LKz8wg3uza0JsK4zKeVT?=
 =?us-ascii?Q?BYIhyDTRUW1ePDXU6o3C99YYPnvIPwXExCW3FHByojwb2vluuQBs78omVXfZ?=
 =?us-ascii?Q?b8unI8EdZ6SoMh1vXaJTwqOCvyYl6DOviQxLvHNMsxyPJ4J2pGbfVy8+vBtg?=
 =?us-ascii?Q?BzTGmAYZQbSx54Cxhf4VUfwR/o6/zsG/bLlU4+aubgvQUE70pJuMaKNt50k5?=
 =?us-ascii?Q?xdQqPvno0JRN7lHytPikLJTIkjbbWnOY+VG5SA7S4/gp7rrOwD//GTd3IpSU?=
 =?us-ascii?Q?uDUJY9oUKF3rk466XkJwJsrzAEhvTPIW1HpAaLHil6yh9WwkvYsWTcA1GsxO?=
 =?us-ascii?Q?VWNMCiZ/8EOrc00FUfj4eW/P+Xl2TDI+FxYVSmjdEuUOH5EyebjhN3yywSIp?=
 =?us-ascii?Q?EUWRhnGz0qX94IkdFIOZDcWtHGUSp+vwEISrhut6wPSnnStHDHXFuf7ohX5P?=
 =?us-ascii?Q?K25bwzsxlgtbb7n6jXoW6WEuBIHsPpVrY70RBjv+LlcbaHBL5yVbU3eltEnW?=
 =?us-ascii?Q?bqFfWDHUmxK58qfeISN2VqVUBmQYWEE+1UCfTTxOodIRXKjhC9py6NPxxKGa?=
 =?us-ascii?Q?jpgR/gJI2OdUUdm4qKMPHgQQUtfQqHSmUUmBLw9pBWspDM3v4Dwbu/a1d1ms?=
 =?us-ascii?Q?I+vsRmM7hhOBbLqzoWur6SHzCdV8ZDJoHS0uP0gtdiJFUmblTyoJUTZDyjml?=
 =?us-ascii?Q?kIgsflVG2Z0BirSHSTgLVd3tKBx8XW4rW+5a3cdikcYqXP9T7BZ06yxjobU3?=
 =?us-ascii?Q?/21Dh+gi3Vr9Ck04cFrRmsC0WRqgBZrXUVLiGXbzCSzY2CZ2BV6VbKrLIGlg?=
 =?us-ascii?Q?WNkUSoF1H2NlFT75tCOikRezOzlrH4dVlUU6sXzYN1sJVBF4pgKyH/Vo8vDL?=
 =?us-ascii?Q?0Fav3kWskdtGPfq4rLdXUD/JxQXPsrhZjp+kqlJBYkrwZRy/yN+0puDl07uS?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6157f4c-73aa-4640-d7e6-08dcd8ad4764
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2024 13:16:32.0198 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cpu6Buuy6mowCxvg1vNlE7M9uq5jyffX4SapfBxLcQMvI9+nTRwRw+0w4hEAP2C0wyTxd58wpLNlW49S++zwPmXho5++rHHJYcPw6GF2ZBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6324
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

On Tue, Sep 17, 2024 at 07:13:59PM GMT, Jani Nikula wrote:
>Now that we've switched to struct drm_gem_object and the intel_bo_*
>interfaces, we no longer need most of the compat gem headers. Remove.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

for merging through drm-intel.

Lucas De Marchi
