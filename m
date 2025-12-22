Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8B7CD691B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7931410E6D7;
	Mon, 22 Dec 2025 15:36:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TLbz5xLA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E5410E6D4;
 Mon, 22 Dec 2025 15:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417775; x=1797953775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=PfzUvEMdNwmVZmJ4A8s37TSt87uUeXl6ynB3fv0Ozsg=;
 b=TLbz5xLAVHlZxyfHL1YUxVNTTgWf+Dj4qnSAxg3RCyOfRmUiNkbnV9Bu
 RdpRgbr6hYeulQpWsa9fyHkTlTaWXcOPOk80pOYiNd4XAyDrgllY0DNuJ
 jkVQJMCLhG7Af0SuFe+b21kP+NcJm/+b9ev/QlSzA1l3zLedq2OMSQsb4
 9i6nElwSpUZAMACWOmvGME3ZOZ5ZpmmiMKYzR/Fp17rtSC3oJXegLgNGb
 WFf7memd3o6R9WhLBxfEt+3Q06lEYspOn+NrNlfQX3ISYS7QWq0q8mI0K
 Vlmrotd9ZK8rMU5uG195gF4TkVekoZCJ+62TVX5l3OW5zC9h31JB7Udik Q==;
X-CSE-ConnectionGUID: ZVZX5m2RRJu4xQH83ANxsA==
X-CSE-MsgGUID: YdhjSshNTz6b3+rG4isRwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79636586"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79636586"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:14 -0800
X-CSE-ConnectionGUID: Wc4lV6w6RBG8GzVDdIv+gg==
X-CSE-MsgGUID: AZ3kC8oQTaSGZQU2Cn8LOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199320006"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:13 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:13 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.46)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dr2Z+cxQp0CuPNb0KkcqDgVN56P8srIkX4AP2FmBy2vYemGEc9ft7QBtYCcAlTsfQbEC1xbQwMrHh74c3CHM8GQHQtGOl+5zSpgUZucOz7YhQTNvBCSvtV6B8aXxYOYGZdcm68oV473Ab1IFNbSIeydaN8O9wrl2NlwH5qeIHCKuTqsb8nDlzGD9bOwWbut5aDO5WujcaAVbN9f7/6C98RrNnz3VvCrgrPAprkmv61o4iaz+yJcgl61q4pktamKDUTWOjEPQP7hI4cN7+DBaqXHXii7B5QOOO8AlC3IdPwWIlmdRG2z4WD5PwrCWc1ra9dJ9MnbmDzd7R2m/ou9qRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3gbE2W8bhJE+8y3NOSizom+1G+J9RFgL6sxIZMWQ5ck=;
 b=hKYmv9NFGWhuNjJEvDO07xB0xDTRurHJvkDh9hwgW73CfF005llNMnlfB7ajL+wldgrjrYO6RQ8Nmja5cof2mj0saFOcK4E1kb1T/+oCHKbat2K2xraBsdtQ5fm+Q4SlA9mebkiS24K0pPiauDvoVsepPrfjXBKXygqVHMhWtYqTWcTNfJ1gXhwDUtwDnBLAep0hh6l+KByp8pUPjVDgkewhKs4crfFkyIj887OXyGUEmHq/F1Tl7gsFN5XQAkOpMXPV1wy/Za8KwLNE1rRZ83txwwW47J0Ymj8n7zIYvHNus+nXlZEgeQxpsD9NBOg4/pAqEln5ZxXlQgnRm5h6qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 03/19] drm/i915/dp: Factor out
 align_max_vesa_compressed_bpp_x16()
Date: Mon, 22 Dec 2025 17:35:31 +0200
Message-ID: <20251222153547.713360-5-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 6f6e2680-f887-477d-5f87-08de416fd535
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1UU8674erCwHVoeCK0q/CdiQhuboUFFBy6fVxp/h1DCjpsHFcUjZKff+w2/+?=
 =?us-ascii?Q?CYC3XuZsLPaRFEoUbCBq89eUNr6jlQmejE7DtaayhYcZFSMZOi3unfSldYha?=
 =?us-ascii?Q?HPwLakEzD4qwUpFhT6muA3MBElFqQa6d/wk/xKKYHx6QuUjG5U1lEwLeSB7O?=
 =?us-ascii?Q?mXxLzTFZOqJ6teUS+Iuu9uLZiRxPRkcd564jVQtzxe60Ak8G8s+MqFwMEehL?=
 =?us-ascii?Q?PMLRY9E0WspSiFiL7nV9cyctb9pPaweYfc781nHfqXgXUYmbfP1Al+LPmtog?=
 =?us-ascii?Q?SmXSCU+7CPH1yjx918q598I+93H3EM7SdMcP/MIUZxz8SyvwmwMGQx8Sd72a?=
 =?us-ascii?Q?1Kfl3Xi691XgOwmCAbpNWpsT6/KkgAqf3sYJT5RVRJrA9DqRH+jflTesXtOj?=
 =?us-ascii?Q?E3Wfl2plTRNpV1JJcrnQAv1cZ1wT/9ZIm4AW9DeUL+z01Z9fSMJKYwHyOMsr?=
 =?us-ascii?Q?MIyoJ8xPlOLITCjlQO9iUOnzV+vCq+pkwIE80Gg8cjUl/Q4cZtbDIxdjok7k?=
 =?us-ascii?Q?5Cxc1fDYibo/yy0MjndnFphjp9iAHyDe6NztrAw/0ehBkTeFsS2a1U5nSdhA?=
 =?us-ascii?Q?SGWpk7tJO8ek1koVJHEDUHOPoRKiaOlR5OnNmszNU8ywJXndY2EefrFMZmXh?=
 =?us-ascii?Q?4Vmi7bSowtKpLhbY7FVng2mnBtQu2nvSX1Lkiy1cwHx0oQ4c5qa6G6T1x7wl?=
 =?us-ascii?Q?kFi64FSUNfHYZx9aHBcecsQ0FVCY07UAG5ddLqo8pr/HaWTbxyWfslS7bDwk?=
 =?us-ascii?Q?KpuI5+5H3OkkNFR2b9SPlH0IQveydKLl4NfHvUWK94ekB5JS/8llTl+EUAMe?=
 =?us-ascii?Q?vQyvOeWsjiCyugxRLnbzC7oyuZ6rX9cBqC4/qLg6g5LH8M96loVojdhpTYvG?=
 =?us-ascii?Q?2C3BM4FOmAET+bGNGyHz5Y/LH8+FmnWBcku2vr/HIU48hkA3f0n54lQQZIoe?=
 =?us-ascii?Q?Ji9Rctm5JPaR6fksfbYDwUZ/O6fTnhdS8lwz7uVfoF3VFsYjal8asIGeDl8n?=
 =?us-ascii?Q?0L98SY4lJ2TEql4KJ15HQc1i0MBrhWPlxSLnvsRtWTnCwDpOs+2zQNR5XGLc?=
 =?us-ascii?Q?kdIpbWsvHv3VLbpGTyyn6gF9SnMN5+S3aHV14KdAoBIpvKG3OCU/iWFIbBna?=
 =?us-ascii?Q?M6/gCxBvEjq0JKq4PAXENIM6ymdmaE1LBN/FYVHS/9EJRu8LoeKok0/goKXs?=
 =?us-ascii?Q?WnBhndaO6H6ojI/378b3EQsFoyeZdSrgbImdDMzkTVhKsIKLeuwOTKd3VDRU?=
 =?us-ascii?Q?gWcNIHRLMETbnzmCkSrGzWcxZbsgCNr9mWeB3X4Fx//AA5dkZUlkVaSrUSUq?=
 =?us-ascii?Q?PzaAqWuz3U4BeMAYBw28pAkxWRR2Z64UIimRB/V+HMKp11nqzxqXv3i+he4O?=
 =?us-ascii?Q?qN49koKCmWz0xnlSb02B5QtmwQCn78eIGU2NMtL3V96wO4mOTSBdj/m4zGhQ?=
 =?us-ascii?Q?17lBWcMaUH6KS44IiSOKbd0M69Mwz/gC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BeDdQKsc+jjkNTrB0Htb5cXRvOy7OYFS91oPixrV4Ef5CLfY9wGpiiX9pZpC?=
 =?us-ascii?Q?0Uq0y84GYbl16ABqjHQucwih92thhl9W46zG0lq/Mo6nhe6zpaIvK2MPHseQ?=
 =?us-ascii?Q?3JioJU/C8sxjFYTGyYPUFgMrLkl8u2GVf07bdsD/fTXuIzhDNiDbp5m7iFa6?=
 =?us-ascii?Q?iWyh62nyFuIv2N+UXPbFc8j4faQ7wWiMPJKSErCaKZaMZ3lI86i6SpE8wpOC?=
 =?us-ascii?Q?zbge53NviM7BOSCjOFD+iFNuwwKOY0iIeZ2kPksDcvuKZarWswOvzWa5KU0O?=
 =?us-ascii?Q?snolvcI3oN91mh7DnSGGmQCAl1PTy1qNoI+Jh324gwVb5oJMTVAsO6EYHaN/?=
 =?us-ascii?Q?gNU3/gTO+NNTn1dF0pcWSMP5YhWoRQIY67LVYuI7gFFVOuyk5EDIp8MdHp8g?=
 =?us-ascii?Q?jQi39X9TixfeIXbusxb92RT10gKl3pFmq9al1dU9xAaswoVpzy5SszEz5TS5?=
 =?us-ascii?Q?ckyVcc4XNMx911AC0fWRezbbQiyF/Gmmww7XggUHq9652fNvmQqk8xZ/GWVc?=
 =?us-ascii?Q?Wly99MPbiBMyYEq9FhnWMWNaq2QHE8rpDsY/JLxS+u8pU1Vu3UV1EiJsnuHk?=
 =?us-ascii?Q?mGt4Xv9DocXe/RL6uNL01l35iy9zCOqtU9i1iFUBE0cQ6lHZL8sVSWfDKY0Z?=
 =?us-ascii?Q?EhFqRvFsG5y4+H15XfuCO1nfdFZ3aq1Q66m7sIKojaElTGTil4q4RPinZ9pn?=
 =?us-ascii?Q?sp7fTgm4ifReTJNHJAWc4KgfbXj6yEUGmQoZb5YUjqc37880MVIOyH1wCdnV?=
 =?us-ascii?Q?ps+gL91E4rIzDdu5s7Dw2MeCFpSstvot7ZJN4h5vCc3fUXnIwNT/+VBnl7t6?=
 =?us-ascii?Q?p22rkpEucqt2dVpFoEx5s1Dx13fbUHBjQZsu1CFCCVgwYKAOKPSxK0SvNRDL?=
 =?us-ascii?Q?51je+YWtR3wR4jEvFE1ICRKfBNRiCTNImriNcpUDF5S8jqrxq4CQ1mpY1Yd7?=
 =?us-ascii?Q?xlKTOSb0O+379zqJxsNJe+I9jIiW7Cad/ERMycEcW+hbf7HZaebw2CsfUmhB?=
 =?us-ascii?Q?7dA1OxL0C+vKXXfg7Q/rOee3U8vEjv72T1GXmDxsCO5DW4n72cUZXRGf+mrl?=
 =?us-ascii?Q?gO0zXyYRq8cwT/l1stnuHVL0k/Ltc6ctuTK3h19cz2SXdv12RXqR7H0jNhpX?=
 =?us-ascii?Q?rx1MYvvd+N/8eqGO/xIdhnDUtGctIEHrSApf4VUdO6eJeGl280wRpL/Da4aN?=
 =?us-ascii?Q?XlFL/nOENX32ROazDJR2QuaEtv6D9JMwy5dOiRtt4n2HWYfC6nr9yxUZ3ZPn?=
 =?us-ascii?Q?qcQxNXTtMfuQChN0ewOKKGfP9GSNmjgdL3VxBKE7Yis57gu6o9nDxSESGXmx?=
 =?us-ascii?Q?e5Xw9P+eMmp6Tu1qURMVGyqQ9//iTe+1Z/yXy75CQxXiwDSMTbyIZA4jRB61?=
 =?us-ascii?Q?9vzkqFdTL5WYxMm/86PeEPO36BpB8bIMlfEFF09uSbPPprqKVxQpizOcW4IL?=
 =?us-ascii?Q?tqrhYainWHHKU/J+tg5VyBkG4m8tc5AGglZMLjvJJ1Gb3VX9KG1ceqz7YWrA?=
 =?us-ascii?Q?I9tnp1OaGnOIq6buLz6wfL1WggNeysGM5lTXXCmI+5WwR5LKnptkBcU0PxkI?=
 =?us-ascii?Q?F1nHtqgc0QDzbkb4yqaS1Neq18B8oywdHrlkaTYWbOcBN97cWHE+qB3zA+PJ?=
 =?us-ascii?Q?gbtQFxPXfby6tJeN526ig8D436iXsDiPWpok4M5K5EuvstMzoDa8rsmaqUl8?=
 =?us-ascii?Q?yfK4WKxTeqRtg/rx2/TR0Wzr2uV/Zh6MoatyjtTZPFFzO9B8WtUMV+8ldbir?=
 =?us-ascii?Q?XNT61gIpa7ASyOpV0koVH/1VD04PFvHSFfFc2wMaInfhBQV94ThWX4vv1Sl4?=
X-MS-Exchange-AntiSpam-MessageData-1: z3o38OLGf46gsg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f6e2680-f887-477d-5f87-08de416fd535
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:10.8879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IYKqx1yG5BP4rtuYLZ4B9AUt837f0bewade79Pt3rKdnLp2mzAYt3njKZnT+6AX6cESg94rKn5lYgcfz7Dpu3Q==
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

Factor out align_max_vesa_compressed_bpp_x16(), also used later for
computing the maximum DSC compressed BPP limit.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 35 ++++++++++++++-----------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b08d308ead1b..9d7a1df179a4e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -868,10 +868,23 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
+static int align_max_vesa_compressed_bpp_x16(int max_link_bpp_x16)
+{
+	int i;
+
+	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
+		int vesa_bpp_x16 = fxp_q4_from_int(valid_dsc_bpp[i]);
+
+		if (vesa_bpp_x16 <= max_link_bpp_x16)
+			return vesa_bpp_x16;
+	}
+
+	return 0;
+}
+
 static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
 {
 	u32 bits_per_pixel = bpp;
-	int i;
 
 	/* Error out if the max bpp is less than smallest allowed valid bpp */
 	if (bits_per_pixel < valid_dsc_bpp[0]) {
@@ -900,15 +913,13 @@ static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp
 		}
 		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
 	} else {
+		int link_bpp_x16 = fxp_q4_from_int(bits_per_pixel);
+
 		/* Find the nearest match in the array of known BPPs from VESA */
-		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
-			if (bits_per_pixel < valid_dsc_bpp[i + 1])
-				break;
-		}
-		drm_dbg_kms(display->drm, "Set dsc bpp from %d to VESA %d\n",
-			    bits_per_pixel, valid_dsc_bpp[i]);
+		link_bpp_x16 = align_max_vesa_compressed_bpp_x16(link_bpp_x16);
 
-		bits_per_pixel = valid_dsc_bpp[i];
+		drm_WARN_ON(display->drm, fxp_q4_to_frac(link_bpp_x16));
+		bits_per_pixel = fxp_q4_to_int(link_bpp_x16);
 	}
 
 	return bits_per_pixel;
@@ -2220,7 +2231,6 @@ int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	int i;
 
 	if (DISPLAY_VER(display) >= 13) {
 		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x16))
@@ -2232,12 +2242,7 @@ bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
 	if (fxp_q4_to_frac(bpp_x16))
 		return false;
 
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
-		if (fxp_q4_to_int(bpp_x16) == valid_dsc_bpp[i])
-			return true;
-	}
-
-	return false;
+	return align_max_vesa_compressed_bpp_x16(bpp_x16) == bpp_x16;
 }
 
 /*
-- 
2.49.1

