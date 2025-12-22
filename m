Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3557CD6925
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127B410E6DE;
	Mon, 22 Dec 2025 15:36:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tx4gHWYn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA5A10E6D4;
 Mon, 22 Dec 2025 15:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417776; x=1797953776;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=6ZuIj0n0kuqGMNYjW9grzKiRgsXyXWQtrIVgOCNh3fM=;
 b=Tx4gHWYnfs+WgjUNb6/M+EmZP0TZnQp8sAStC+WQJVLAD9RQgEBcflnF
 LGRLCHH68MHeFNhkKByeGjLchG626tuclojCte6aGHkQJDbAMPE+kjILc
 hmTCo98GpZUCrsPwwr+OzGTy2MyRhBpmyI1/8PTvoYUTjx2cJksfNLt16
 AhKGL3jqnWcBnB+N73Q5RLKBSGbktPBE5vaZ7mn1BdArSDsDt4ndU+BIi
 ftajdtBSVMKJJSLOYHMuIzUX2u+qeEye1Pm3Pc3/o8xTRLt8RIh1yb/u7
 Wqn9NEj+d5brlBBX7xVsOLOrrAgUw1dvjFUt7FPJBZVPXbDvTOa4Lxx5k w==;
X-CSE-ConnectionGUID: 6vSEFoDgSAm9IkX0wK/pJw==
X-CSE-MsgGUID: hCtUafv5RHKRYbYMNTcI7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79390186"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79390186"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:15 -0800
X-CSE-ConnectionGUID: PAs9oaP9RwybvQ8yseqAlA==
X-CSE-MsgGUID: jmEtlSIZSzChjXmBSXq2Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="198783602"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:14 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:14 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.46)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VQ6YP16DX7g7nBGk8HmA4ABWGPSj2NS0UQm3xjPgoWrWCEDNJzMXKulHLffNWPwKLLRUkbV7yOPK9ZNkcE0ONjVSjZIL6NoTJeXKdPx8n7q2ajQdRxqXjYERmbySW/0SLPvjcGoT5jcVdwWtJFCTgVH0NQWKmUNzZoiiHJKQ0MW0z3x+bh679LaXQtGpWSQDZAWZ6FXHa1NWk+13sCe3kr7U9xrkMtpZsuwdO62NW1XFS8NO+OPRE9DhBVunrcneY0xjfCdjRaVFXd1orV9wLhpVX6NVZ8Iqswr5YNVuXwoZaGmh55nE0fGzpz+pCl7PllBEo1l6DCJTBNvlqtkZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDiiNbczBeVIf7NahdYW/llmLUmrmb2vQHEVgj1rQK0=;
 b=co678jJzdQ65vXK6YDh/8WK0ANHWK/iQZhvCHlOHoquz5xKn73gK59bPTo8YJnEakLiyvsYk/GElqwZoVu4dgVKOCtyaZdwbUqjIUyo1E3UF1645nQ0NEZcTpKC8SoLZ7Q2vqsuZNNnJJzodA3hglLrdi8eDcgbKYnP7IXv6XAx8JrYW3XFUH+uk85uQvsRFWC8GFTQthVdXf5RL7V2ITuYksdtTrlUWnrt423roo9yZnl2TEZWIqp/p4GFPvzXw5MFlDzPSs/5FGpSgG131pbj5cEJKfYh7Gyyd6Lw5VlDb0vIed2TDfwiDegYbNE3/mzpSkrah4p5Tfjo15izCXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 02/19] drm/i915/dp: Factor out align_max_sink_dsc_input_bpp()
Date: Mon, 22 Dec 2025 17:35:30 +0200
Message-ID: <20251222153547.713360-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: eaaf06fc-b209-47fd-f6bc-08de416fd453
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wlxq1qRMNYU6Rl4AvuSfQ0ihikPxIe3FhRsQD/OHIognmXtR6Mfstp6nWud4?=
 =?us-ascii?Q?tujJ34/q14EA0k4bSBo9h8fnGBMhE8/Ssevju9fu76M1RAq29JdJQMYM05tL?=
 =?us-ascii?Q?Bw97vlyuU4mjxu/gQVI9j9jUV4xs1eg+3ZxXgvi6dNwCzNPyvBXAlm7aYv6O?=
 =?us-ascii?Q?ELZvSq2/dXd/HRVUFOycX15TESqSLQ3jYwvM9Yy1uGcSSO08gz+DMDqwbPJa?=
 =?us-ascii?Q?ltM+Gc+vu//E/jLImigbvDrmtfKudKB6y8ifb+Thr55s15/+YqBCkj+Nri5b?=
 =?us-ascii?Q?UkeEmsPYJX3E74sIG5n5zEuvRbfEsX8/X6pN3LSi7/1Y1y1DOFXVWwYXEl/e?=
 =?us-ascii?Q?qS9ZVPq4JmrwFdkyS8RF9wjrNGndZf6mFHwr8kR1LLJ2xCenIamUaGYF6720?=
 =?us-ascii?Q?haEpkYzziBFdXj2EV22dmqrMYgjcDj9UN5Lkin0tvSfTFOJ1RfDro9CE8FML?=
 =?us-ascii?Q?P98Bb/6bY9QxltQtqGv5kGGsAfZVX2Hp/FaIM8MLw/Mx1Eoig7LCBzzN9OcY?=
 =?us-ascii?Q?mN/ZaCAn6Pt8HaKYX3EF/9YRAw6fl7JQdtqAXuhxIH7kWIde8Z9lXxPHY6ft?=
 =?us-ascii?Q?3Bci1Y/aUkPoZ7IxndI+YFq2nZx6qr6Kf82MaRZ7icIKjdPWqKF/3+xzdlvh?=
 =?us-ascii?Q?TfHpX9bf5Nr/vtyGh9J9UzlPce2P7xihTUk6MNrlvQbrBeu6PcekHEoVmKuM?=
 =?us-ascii?Q?R7UHBU/js3WD0glvj4b+Q+b7TVWjFmv67dlEYcLkqPnn5yGHgTulmXBmsUUq?=
 =?us-ascii?Q?IRxHdiLyPk+7ZF4BU2iqMkYs0utNhuLFAvvPFLJ2FoAU32JsycAz8FzPStos?=
 =?us-ascii?Q?+GR1tLMMzo8cgQSKDsKetCI+O/tWtuRsiQxWNSAJiHWvTcG/UulWBKXLtAji?=
 =?us-ascii?Q?X9zCvVjEqaCEQUIPhhQoV+2+NjoZpj0q8qXYlPDjRju3tPKgklyqEH/7aYlT?=
 =?us-ascii?Q?p/i9gyDOdhpD1O6WJUGtW63d7Owo8vW5BIezbw08Dygs9QCXKG73ZlGjySxf?=
 =?us-ascii?Q?FyIQAMyjvPzQaYGLuYseKg2GwET3IQ+CmPe3jn8XBUqIPUTB6A5226r4MyLN?=
 =?us-ascii?Q?TK9deGNyQdJHAyC3JMkpZEiBqocCG/dIimBg+VCZoG7mHl/c1AgaeJNEAe0V?=
 =?us-ascii?Q?ybp/v85rT2R6xE+znIj3FtrSjMRUlnJbs+NZlg+ZETvcObRHcvf6NnPrrk/c?=
 =?us-ascii?Q?Ar94FsiWgzJs3Ifx9a3R9AsNAEzOi83v83QCxVUve4JrPNerdz+bPpKY/64I?=
 =?us-ascii?Q?0HOzIW905LGf1445enld6Qg+NvbXgjVoYTSUohSmnXjOcVetz+I7atgli/bY?=
 =?us-ascii?Q?1BGiYg2STUg28QObdkF+CkwntVWx9zZxytNvzaBblSGiMfK3Tx1zkIKDdcfs?=
 =?us-ascii?Q?cmXsXoEhkj0G2VXoD9byYNWGjWd/bjFIDBhE6hJBDc80bsQftLZtWtZAzAJL?=
 =?us-ascii?Q?KXW1hUlVBEO+0qJc+E8OfoHEqXVs/8SZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9wpo5YBbsXu4UyE/8NlS6fxqbXXGMUnjJI7c/zcjB0VshXTbUtJQxQ7Cw+42?=
 =?us-ascii?Q?gR/z8HimiQDn5yBfWnJpRcovudFrigke55vqlow4MWj31qIHdgaWIIZWTz4V?=
 =?us-ascii?Q?WFLfeYH77lDO6K+L+clgAVKZTxwybiSoS8mU+wzy96MwgBUP2kmxW2Q33auZ?=
 =?us-ascii?Q?MYQye+AInpz2kFRrIITa25DdGcmW6js/PG/MWuEzETiGvYDUFnnMTHVGDv9l?=
 =?us-ascii?Q?0YX5iTRFnH3Q1dNdlwc8dMEwIbLyhxNohbFA1imbx8L0/gWUaKcGHc+XniLy?=
 =?us-ascii?Q?qNR9g48nP/dFmTveQa/hQ/a05fwHbHnaqYaKBpzeUy+FStFq3PLBnq/i1LLo?=
 =?us-ascii?Q?KOkWJPCRU2fXJDDM/rsDthJnCkXnkqukyvW2txm1xOF0ZXLXzCGSRyVAqJST?=
 =?us-ascii?Q?9pUgXnRKlO9hffLjzOv5Ctw+laNYLFZtvRHFbBZ1UIIYd49UDprkZRNvBfds?=
 =?us-ascii?Q?i6ylOZfF9fLEccq8iGQmKDQk15msiZpwvVF18FB60H9MAKD66NNAiymTgr4y?=
 =?us-ascii?Q?B9IEDmBJhwbQSfdUylCwb+NFA/QZYbgeQWcyKmGmJX4+ibTKJDIIUtRPW0DW?=
 =?us-ascii?Q?68/zDou+17s9R+PVO0R21SIg52ZTPzf7h15EqvGbbTImD4SaMod/GhqmblXN?=
 =?us-ascii?Q?92Nj4UiGWo3GX7fWGdvsIy1FBr5qlZKHR9f0AjEQ6i1Fql3BxvHb/G/n9ww4?=
 =?us-ascii?Q?2fKdxTcbaaDPnMkGtcTnoJ77Z72i49TnIJ+XFYxEfuwhgoWU4RGMjfQ4wKhx?=
 =?us-ascii?Q?2Y90Wp/p4cPzrEwYA3oDpu20tV5iyzyA07Tbw4GCO5OghCoFjomyUz7g2H18?=
 =?us-ascii?Q?/B9MVm45slV+c/rZZilzXN6hn3K/FavbGiFHTshzdmZt28Ezj/HHBFx26p5Z?=
 =?us-ascii?Q?AQZDyIpsVxXHl8Z18AjGpRIO99K1a6cZffZYQ3/ntiGqV41FA/G/B68P3e3Q?=
 =?us-ascii?Q?80tEIMeeDRUjWWpyOwJTELGfAb0Iv4/ARUKnQYxcNAnePvWcg6CLfJHb771E?=
 =?us-ascii?Q?PlNxeCIJbDAwQzJIO5mj54oi+eLmf+AKxZqUg9x8ewK1zH33wxC+PuksKSWo?=
 =?us-ascii?Q?F58UYUoX6wV1jFtB6OCls0hNZ/2lavpmVD+9V8MPNO3+m27RwbFB/wHULwsu?=
 =?us-ascii?Q?Oi8j1fv34na0IovS4gLc0WNpFtu69iqTXPJ9res+H0/5tHf6uMkIg0axJVYZ?=
 =?us-ascii?Q?DdyYbsxERZAbiW0c2aEbEdz1BTuUsMbY6oo17kkNrjCFu1w1pgXpzzQHLYnm?=
 =?us-ascii?Q?uIB33cIsMYWsIX66Q82krBNw3kEqHKbTdtOxgYkuzBj23pSK5NgmK3uDcsFg?=
 =?us-ascii?Q?lU1SwdgnsdlN5RlXaYoXOPrz/ziZUB6p2SWAzDpHdv/NoHoIldEPHMeC1XJr?=
 =?us-ascii?Q?+w0Pt3wYOqnOayP32bP/5mArxF5yE9OSERrWqa6Hd6mvPuIcypSM7HQ9pTVk?=
 =?us-ascii?Q?KQR0pu8lTmWyWrAAaskBRUy5LPsWdGRdO6XuY1gyrakPanjrdQt6Qofl8W5U?=
 =?us-ascii?Q?UxSKRis0QKGGl+MDZl9FjOlKvG/zJQPiYBZvYfJnG1HhHhRhpiNgLBywfxe6?=
 =?us-ascii?Q?WUXvXbO8gWYgEe5kF7mz7K+p3JcmQ67qByaq6/a78KHaisfGsvJsHgLqdnW0?=
 =?us-ascii?Q?rhP+SOSjj2yNKqQvaeHV7s6TKkjCP8kBuR6J03GghhyhdtFGXPavrgjeNQ+w?=
 =?us-ascii?Q?aRnKv6JzWaxnrgrzwdJXzcLTnSiXxxi6He8yF+qRDbdA1Tm5pbkJNHiHafdw?=
 =?us-ascii?Q?9EiSsi5xYiekT3l+8rhsxNCcYoHPRcXzT35R0gcQfhG8Qs2xh/nBrro/+ImD?=
X-MS-Exchange-AntiSpam-MessageData-1: 8Li0dbP/FmHKMg==
X-MS-Exchange-CrossTenant-Network-Message-Id: eaaf06fc-b209-47fd-f6bc-08de416fd453
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:09.4044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Goa6MXATM2cB01X/rFOBauLrTtdz0lJdjFAQtcJEc/kdUpWoLPAiE8x0Qk7yMExEz7WUJtaH1FbR5iCJb+WpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Factor out align_max_sink_dsc_input_bpp(), also used later for computing
the maximum DSC input BPP limit.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++---------
 1 file changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cc0549b41045b..5b08d308ead1b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1894,12 +1894,27 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 	return intel_dp_dsc_min_src_input_bpc();
 }
 
+static int align_max_sink_dsc_input_bpp(const struct intel_connector *connector,
+					int max_pipe_bpp)
+{
+	u8 dsc_bpc[3];
+	int num_bpc;
+	int i;
+
+	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
+						       dsc_bpc);
+	for (i = 0; i < num_bpc; i++) {
+		if (dsc_bpc[i] * 3 <= max_pipe_bpp)
+			return dsc_bpc[i] * 3;
+	}
+
+	return 0;
+}
+
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
 	struct intel_display *display = to_intel_display(connector);
-	int i, num_bpc;
-	u8 dsc_bpc[3] = {};
 	int dsc_max_bpc;
 
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
@@ -1909,14 +1924,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 
 	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
 
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
-						       dsc_bpc);
-	for (i = 0; i < num_bpc; i++) {
-		if (dsc_max_bpc >= dsc_bpc[i])
-			return dsc_bpc[i] * 3;
-	}
-
-	return 0;
+	return align_max_sink_dsc_input_bpp(connector, dsc_max_bpc * 3);
 }
 
 static int intel_dp_source_dsc_version_minor(struct intel_display *display)
-- 
2.49.1

