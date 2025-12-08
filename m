Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6118CCAD34F
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 13:59:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB2910E444;
	Mon,  8 Dec 2025 12:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+nftog9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15EB110E146;
 Mon,  8 Dec 2025 12:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765198753; x=1796734753;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=x8YV+xp1SE1cO/ndN2M91qJmSALDOwAufYvVn4aaOY8=;
 b=i+nftog9u9YtAxenwRT0VSkj8Kgqj1m0S8ullVe4Lm9UbfN/4yebSfVh
 k3iWYaHpCasf1RNrZou6t0DwvjVqX6ni0wsTUDoBvXGL8DW4smdgOe/bA
 kcQn1xT/xfzJ7s6zzDyxyH7PlelmgHGPFECituanIS3Q8r9eG0PybxPZj
 d1vkCrU235BOr8FXwGr/ichnYglnduRiN60/vwFkmKUEmcbLv6vSgeRef
 v91nTr2SG8BquUEikJr8UH3TYLvTz9TnSn8zR1/E4B+J9JgOn3j1BUiyi
 fSmJTlRZcaZACUrpzEV7/osolp44MBuhW3KEmdb61ceGZ5YlpjHVL1gui Q==;
X-CSE-ConnectionGUID: kD1wgmO9TYyvOwE2Nqe8rA==
X-CSE-MsgGUID: F3udyPdFSbGya50k3TuGzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="77461084"
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="77461084"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 04:59:12 -0800
X-CSE-ConnectionGUID: xuJ+fIRQSuSm4H2cN91XOw==
X-CSE-MsgGUID: XqBot6UiQeWCzFSTRHJ7Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,258,1758610800"; d="scan'208";a="200397524"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 04:59:12 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 04:59:11 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 8 Dec 2025 04:59:11 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 8 Dec 2025 04:59:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SwUiQjOSGvMZo7pQ5niiSNJpTTC124Go40yGHWkwP1aQYHHPZuVA6qQPaJnE0oLyKWr49fcEPf3Bx0FOfc9DMx5+ZkvhMrLIz/1gAkONVrr8bhtkaFPbcygt3guJiwV5ml3HgFyITKwzwjTGyLEYrNlmz5+Pfg0RMnCkiSU/nzOvPuL681KOlWMGoNyT1ooAVOl9CEd9ZNE1QTH1EpUUftrxA3bZKP3Eph3FE5SvNc7Ik+C2oRepPRNU6St/r3BEoEN6CjYuBBsY8qZWWraldQ0eHoG+jW67zlI7OjsY8L0SIF2ES9/Fb1KS3hsqL1aEENJAP/VTktsVfgceb6Ji1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvWjJuVX0+++s/wefb04TUjRyM6c0lbvyYjy8F8l/yc=;
 b=OprBjk9dIespmjeMj2JMH6E2Ib0TTCd7yA2tobMWUOF3xXZsCtSjkrvdMtvVi+S8HMB7m5FSic/f2+q2JcsGF7+E6qje5o6dq9SJMziI3mwaPPWUVMKvhh/lnh9S7Kruo3L7nKFqoSP9INHEs+hZrkzDa/eRx4YaUrxQ9U74FhV4L6gjaZWQ1k+uGpXOfv+j4yhqdegs/l1KEMCvhLX5lIWgP8aApRU9EOqzDbfbwvw0Nl+79TsD6M4fJY7Z2PAKMnnOTsmM8TbLasfpQWPwO3SpftlurJp+8Obsvzh4lAIGa5PZPPcX4KN5Rsrpc5mOq14Pe7yzeG3rM29bvbS3Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Mon, 8 Dec
 2025 12:59:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9388.013; Mon, 8 Dec 2025
 12:59:08 +0000
Date: Mon, 8 Dec 2025 14:59:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Mika
 Kahola" <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch
 WARN to a debug message
Message-ID: <aTbLlxBBBocZFdQy@ideak-desk>
References: <20251205122902.1724498-1-imre.deak@intel.com>
 <1365d3888c719e7bf8455164910be9a6d33d6be9@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1365d3888c719e7bf8455164910be9a6d33d6be9@intel.com>
X-ClientProxiedBy: LO4P123CA0143.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:193::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5010:EE_
X-MS-Office365-Filtering-Correlation-Id: decf0599-9f73-487f-dbde-08de36599338
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ysncjSTEilh7Qp4gsprzXPOffYkCtB5IkymfnjBfDoz4x8qrbCxDwFKYV/FW?=
 =?us-ascii?Q?P7IJi0MvCsdlQ1hRLZ0zWtUpUH4hv/z3H4+rdOrOJYAp9oWYG2S8NpHL7OWW?=
 =?us-ascii?Q?nDob/+2ET2ZDOvIYioH0FBPP/j1QRh5SrTqUNA3GI7W8HPXDIzF7JyAutWV5?=
 =?us-ascii?Q?rw35uOeuzPqqswKNnhVURYFfZmQyVZXRsfMnUzWOUnuqXMN2GwSHwAUF754T?=
 =?us-ascii?Q?S2lFUluW96H3OD8oZbyApxZDxzQxX3DL7ZgEKVYHK9YWzPpGNF3z6LUEo6QZ?=
 =?us-ascii?Q?vahs9Bm4fjDnBr/XbmQgnKnZy/i/xX9e7BpUmoC6W0PozcuzTvyiCQig3sZs?=
 =?us-ascii?Q?FOKBsHd+/EXjYlFPpe/cZcBFxgFgEX/wLJeMO/wPLj7oJXB9nGozdD5s9MAa?=
 =?us-ascii?Q?tfW4znyB6SvX3eGiMhZW0ImvSANjWVrtilKyQ4BqtyEKd6+SufqnZYm3wLx9?=
 =?us-ascii?Q?agOfpG7oqLOCMgvGA15Opqlh2tNe+YfJQ/677s/Jjw27UExtlGQhoNTP/oKN?=
 =?us-ascii?Q?y9B2kq6qVf71A3bmWwinoBIA2aeiZl8db5mx+OXpZ4WmWSdkk56MufwOD5jv?=
 =?us-ascii?Q?rk29vKRCALXjXbbKpp1rWYnwrlbtw4ujdTFRN79Th8EvivHI3Sr70F/gc7fN?=
 =?us-ascii?Q?2GSADGAwh4sEsBst1ChDaTlPv8/13b25fgTHAvTsdZ7z83+OEGjePBaylgTd?=
 =?us-ascii?Q?vqNAKDlasGlNsMkUARp7umghcp8MvCyD5AIf+MXyHbz0LvI4WWvIVmQ4BNLx?=
 =?us-ascii?Q?NoBH0aTGlI+kUD2ORVEUTS4dI/IV6o+A4v1bW9w9I5OdFdaG2a4dLA3np9tF?=
 =?us-ascii?Q?yVAgpISfTpxHNYcZDkXRWMLsguH9ka7/e/RSfrjjGB095mEHTjRgXmmLBT/7?=
 =?us-ascii?Q?fHgQ6dsq9Zm8wlbfKlTCH/aPkjDim8FRW9Pvl5jyDQwrfqv7WE89Upmx6F3+?=
 =?us-ascii?Q?Ps3lOE+VJ7jfeQ+q04DpM45D9bLxkb7sI4N5HSX4i5vcuPgqvkvBYlzEVDBi?=
 =?us-ascii?Q?+grTAuktHa5Emk4UruY4vuNuKHVHp15kblN1ivAsf0DdSSE9WYptHGNnK1hw?=
 =?us-ascii?Q?3rWzBTm9d8DFYzRAdE+acyZUR7Imcm5dF5kq32Dl67sv0zmSsuGvFkR/9CTI?=
 =?us-ascii?Q?bwbRUgbJ5YpHddjeXNscjwTfk2adtD3JIzB+Psw09wGcHoZdh9Rv4W7x/Cw+?=
 =?us-ascii?Q?y27tmNAWxCMkCWVh2IC7vwsw+hgaTcO5A0/fcHGKq2S/eUT8VK2hxG4qDVb4?=
 =?us-ascii?Q?0uZsWQVcWzN2nPVKRTF386yD2bFbs81QWP+twQaUw61NErfCktsmOrm3mZAj?=
 =?us-ascii?Q?N3ytC0bNqSjqQDBIB1Vp8RSlYOqgG6JaasF5b1xsWuTzhjMGVvan+SQ1Doho?=
 =?us-ascii?Q?wg6zYmp6IgxmL1KWBd1WwHh6JkTCDUvaYQOyFGlkntNwvvlfv8PHNJtdCeB9?=
 =?us-ascii?Q?5JwNL6jsPkgXLG8SvSkGrikJVo8oL386?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WDY+pKUo4cPjIJQfVDUY219PkuIg5AWwmt5N+4Pt+Iz5iq+0CBccUyo/LFyb?=
 =?us-ascii?Q?2DiEUwirYp99R15kd85W4C0bwI6HIhLOT02cAqJ6lM2oIjMTTOegWz3yWBY4?=
 =?us-ascii?Q?xEfVICQVDY5lKW7f1ccINs3pJLAym5H8LMPgw+o1HdN+YFPGWAKfkOh50FNd?=
 =?us-ascii?Q?bIZUtDC/K0HFTGr8z4pwJkCs+LUec1UQk2twYsHugvHd/sNqxEj7XK+QKaFi?=
 =?us-ascii?Q?4Bwjw+R38bYG6qUTr5OJg7T9dNKRC+WvxQLPzYR6tQvxKNvK+BskB8ua4XcO?=
 =?us-ascii?Q?383hi+m/sNpBgNg9uwt0bzFr62QCM5yIZufazPwn7OE61JDcBphXERPuiww8?=
 =?us-ascii?Q?OmpWVeofvxc+IV0R4/ktT5p5rQaodJBdlbMRfvLd7vxlbHMO4y/3L9b92NRD?=
 =?us-ascii?Q?WsvoI+KoJbO3yk9ZYwJ/xCamynNqkOMk7wAtV/U2KXmQJb4y1dsxhzOILvNB?=
 =?us-ascii?Q?KPrXUaGOjp2P2Xv9sL0XtNmU2poZ4YE5hLz1RvJf+RoxlghEGrab9L0/jEgC?=
 =?us-ascii?Q?uHdQC/EGGYHWWt4Zofmcx3kQjmDmMLEzXWDD9LGBrSK+VXMKbmtASrf4n60t?=
 =?us-ascii?Q?zWqttHRi9Kt6cR+izrXkid7XdUMg9xzCjg89uxh/AN5KMr3AWX3Kjz617aS3?=
 =?us-ascii?Q?88gtZpXDyD6L+45k7YmUaBUOwKgGLzpA4ZhWTH1dY3aHQWF0cmRziZnkXnfe?=
 =?us-ascii?Q?YmV6EcyekcVZvgH0JvDQLvgKkqoR4A2YHiS/WeteHepPgwzzjOo5ty0+Y6Te?=
 =?us-ascii?Q?jk+5hz/A5fzL2zT8hTslx/H8RHghWWazOlfXhptWxIiXh7nZEDiw2icoaT1p?=
 =?us-ascii?Q?WgBEOgQHL4erq+zO3VV+k43bXe0EJqNzdqvMQdur4ndwmXMSyzoUTLA+h2xe?=
 =?us-ascii?Q?Wi/ZJ1Hls8nNF8p/Y243WTJqpsw4SgZiJqA4UJkz6J3zdNOOJqPN4/6I+tjn?=
 =?us-ascii?Q?/06tYp/d2wo+mTOu1QjQkBZ6yEpwL9XfG1hNWeF5k+2ApXmOBd22z6T3UM2u?=
 =?us-ascii?Q?mrrfBz6BIZDIaHMs+/mh1Rk/huzSYMb2aM8gIhg1bi/URVnXzVEAiV42ZulU?=
 =?us-ascii?Q?4euYGbsWWKGT0ZFHUFwEu1c1/nSbELRihwL6LfBzhx1qJC1H7EN0EBN1bHUH?=
 =?us-ascii?Q?7D7pPACh8a+mXUYuKUh1iiIHAx7Is+FbJMCBUT9fTd2ECwANp4V/zIPQRFls?=
 =?us-ascii?Q?rXoXqUeEtslSnThWX+t+PNWdDu6a5gMuc1LhpYf7nFHnrttx5VMZakaKLCuA?=
 =?us-ascii?Q?o74oPbZWeAhvbc8bZqSsyl/vTbN0eTJwhK1Ng2E1TlU1LYiNbUqaXLSVLOtM?=
 =?us-ascii?Q?RkCNtoskS8mbt+d+//NJ8vF9H6xxEzH94dVimMefbHgHR6N0ghfbnU81b+od?=
 =?us-ascii?Q?8hFozbU+gVU6O16tC1S/aGVHP6aAwORophpQWyMxFl6+Ob/ot+ya8+ISQu3j?=
 =?us-ascii?Q?Ww3OiGSxJLAyujpIj9te9495+xLgjBOKqqWNzHVhCPsj9/gmeX8l66IXGY8J?=
 =?us-ascii?Q?wXfHe3RYym1BsI3tazG2QJf04jhFWexzU/JwZ6SEzWVz9DFOOjPTse2tJ+Cq?=
 =?us-ascii?Q?FkYU1SLRNBLteprw6aIS3Syc60pG2VYhqrceV3ZgzjscT/eCEhrDabFN3ES+?=
 =?us-ascii?Q?Hf4cW0iW39lHQCAfhCUCUtNzLRae4dWWbI/zB+QFKL3m?=
X-MS-Exchange-CrossTenant-Network-Message-Id: decf0599-9f73-487f-dbde-08de36599338
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2025 12:59:08.8474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6AnmmEO5zWN3Co2FFejRZmsszCxtqdDVUVoCGzxWcogjmDvtDA2Y91meUitEJyxG9EGrunZ0pHCUAspdNhQ/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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

On Mon, Dec 08, 2025 at 02:03:15PM +0200, Jani Nikula wrote:
> On Fri, 05 Dec 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On C10 PHY PLLs the SSC is enabled by programming the
> > XELPDP_PORT_CLOCK_CTL / XELPDP_SSC_ENABLE_PLLB flag and the
> > PHY_C10_VDR_PLL 4..8 registers:
> >
> > - If SSC is enabled XELPDP_SSC_ENABLE_PLLB is set and the
> >   PHY_C10_VDR_PLL registers are programmed to non-zero values.
> > - If SSC is disabled XELPDP_SSC_ENABLE_PLLB is cleared and the
> >   PHY_C10_VDR_PLL registers are programmed to zeroed-out values.
> >
> > The driver's state checker verifies if the above settings are consistent,
> > i.e. if XELPDP_SSC_ENABLE_PLLB being set corresponds to the
> > PHY_C10_VDR_PLL registers being zeroed-out or not.
> >
> > On WCL the BIOS programs non-zero values to the PHY_C10_VDR_PLL 4..8
> > registers, but does not set the XELPDP_SSC_ENABLE_PLLB flag. This will
> > trigger the following PLL state check warning during driver loading:
> >
> > <4>[   44.457809] xe 0000:00:02.0: [drm] PHY B: SSC enabled state (no), doesn't match PLL configuration (SSC-enabled)
> 
> BTW I also think the message is really confusing.
> 
> "SSC enabled state (no)" vs. "PLL configuration (SSC-enabled)".
> 
> *BOTH* need to say SSC with str_enabled_disabled() and ditch the clumsy
> "SSC enabled state yes/no" and "SSC-enabled/SSC-disabled".

Makes sense, can change it to:
if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
	drm_dbg_kms(display->drm,
		    "PHY %c: SSC state mismatch: port SSC is %s, PLL SSC is %s\n",
		    phy_name(phy),
		    str_enabled_disabled(cx0pll_state->ssc_enabled),
		    str_enabled_disabled(intel_c10pll_ssc_enabled(pll_state)));

> 
> BR,
> Jani.
> 
> 
> > <4>[   44.457833] WARNING: CPU: 4 PID: 298 at drivers/gpu/drm/i915/display/intel_cx0_phy.c:2281 intel_cx0pll_readout_hw_state+0x221/0x620 [xe]
> >
> > It's not clear whether the HW uses the PHY_C10_VDR_PLL 4..8 register
> > values if the XELPDP_SSC_ENABLE_PLLB flag is cleared, or just ignores
> > them in this case. Since the driver always programs the register values
> > according to the above, it still makes sense to verify that the
> > programming happened correctly.
> >
> > To avoid the state check WARN during driver loading due to the way BIOS
> > programs the registers, convert the WARN to a debug message.
> >
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 7bd17723e7abb..b973a9201edda 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2278,11 +2278,12 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
> >  	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
> >  
> >  	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
> > -	drm_WARN(display->drm,
> > -		 cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state),
> > -		 "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
> > -		 phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
> > -		 intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
> > +
> > +	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
> > +		drm_dbg_kms(display->drm,
> > +			    "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
> > +			    phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
> > +			    intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
> >  }
> >  
> >  static void intel_c10_pll_program(struct intel_display *display,
> 
> -- 
> Jani Nikula, Intel
