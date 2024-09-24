Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8119A984C41
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:42:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57EE210E047;
	Tue, 24 Sep 2024 20:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QL0BEIId";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9A010E047;
 Tue, 24 Sep 2024 20:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210556; x=1758746556;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=/TkVQb/cp98zkdptqweNL51c3QmtMtNGQPaxpeTwcgw=;
 b=QL0BEIIdpNJGGbVl2c06FFHaPBJ8TenyhgJvtyOg0mC/FhJPnSybigi1
 XgD7RLBy6GMZUoByArfC3kqPb2pjbrHqkSnU6siKDzjoQd93RUfJOr31L
 5IdpRzd7/08lR4E++5IYhA3Nw8GpMKDWp4SQPFibVLdh6vAzv9pDnHIbA
 tbT+3KIPRTlUmP4JOnQqOKu+9clUg2xmWKQY7X6+dNQ1oAQAY518m9rxL
 +4I09QZS4GnzEvc75TFbZVPdgmwDJkfBPGZVAXoqBU75zQ22k8GJAaw+0
 gDvZTbNvbpFLDuZCKVaRm4C1KsLupBo9+Coi8zb1bwo1NBPu7H92OLtTv g==;
X-CSE-ConnectionGUID: 9TvAZw3JQg6hQ/fVIRBmvA==
X-CSE-MsgGUID: qt7Dd7NUQpW6yXbaaT5qgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751423"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751423"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:36 -0700
X-CSE-ConnectionGUID: BUjh5rhtQIuDNgdNfF82uQ==
X-CSE-MsgGUID: ou6Z0Km2Q+yZf2Dlux2DGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298378"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yzQfiVLAWNQnZdHueBNRrePsqjIF72rrd5m21lMHJ2GIGQ70mHDdNlu6PgelPUJXgFjfKyYWDiPMyihKH+9UCp/FfMp+qpuVMs56HYa9kQWOIoSHaVQqZgQ+T7cp/2n7TibFv2mkVRXyaut2lDpKvExMWqPsaFjXholiOEOhl6jylCv89kaRP1l6jnGhTZ0rmDGvsHpc7OIiS1tCndc+c/yoxR8pKD6iMLMOsaciCt6Pfj7JAwL13AqtYVDV3JCr0iwSl8Lnw1I4NjFItRVIH1fqo3WycS0Gn9l9FnqiyK24X7FuD8z1G3zsJ8srlEsx1ZZ4N2fXArX9UpHVKs0mbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0OSnEjgufynGI0tL03fW3rqAKE5ZwgRoQK2odntvsY=;
 b=vJFdHhu3FIZfTXw5GJW9eyWWg6kL7gDGFc0HrDzjHzfVWkY9HGPimpBTjcusGb8RbzsrwltXvr3lCH4a1T5i6q6zL2lhz/SvBQuTd16sLgawceRCop1sJv9C2t5W2Wuv+sur5Bb+ReC0pPtaAnjNYjUbsYbLEgTQDVR6yQJcQ71ji2VZ783mQW9+Masb3d6Jkyk20TtDKE5cHUf1Ct5sWnNghboU50o/feWNnr6TV+lq/5CndwdWzTHboNkI0aV4JThUR66E8pT5m4PGPmCBroH/DxKUv8yKHj8jrosW7lFP/lfMiYDmvajhxdfXY0taWIkfwDhNrkj8Ws6rjrC2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Tue, 24 Sep
 2024 20:42:29 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:29 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 00/31] Reconcile i915's and xe's display power mgt sequences
Date: Tue, 24 Sep 2024 16:35:21 -0400
Message-ID: <20240924204222.246862-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0196.namprd04.prod.outlook.com
 (2603:10b6:303:86::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c929add-d771-4dc2-00fd-08dcdcd9682f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEY1ZU9NL280bFpiUmZCYnI0bWt0WHFWeEg0a3hIVE5MZnNTSHgzb0RqSWlW?=
 =?utf-8?B?dTdpNDNVZFQ5UW0xUkJ2dUZ5bVNMUFBORjNlY0xLU3BBL1dLeWRzUVpLSFpP?=
 =?utf-8?B?NEhkN3pndUt5U2ZSWGVpejRhM05hbGhyc1FDdFcvQW9ySTk4dkdsK2tQOE9s?=
 =?utf-8?B?QWtWY284NmpZQWtQVTFZNHVEb1Vxd21ENEcwKzl4OGtVUW0xMlRNNjlnM2Ux?=
 =?utf-8?B?Mk5yQmNmV3hJanlSMFVmUlZGY0p0M0ZSbUJ2RElhNjQ2dGVTRWtrdVNNRFhB?=
 =?utf-8?B?YmRKM05wRUtpVEZCOWpNamFPcHoxM2c1dklKMms5d2FlUzNya0Mwd3hHbW5B?=
 =?utf-8?B?QjBxZ09ha3ExdmNBdkowZFJCdWVxd3FqRXlvMUpYb0JaR1kwOEk1RzlWcVZJ?=
 =?utf-8?B?aDZqVUNPTmJPUCtiYmhzT3VyMlAzYjRZU0d2SDZmYm1ncUdUY0dtcTdPaEsr?=
 =?utf-8?B?SVd1Y1B5NVJmN2hzY25SbGxkM1dCRmpjZnlzckVGQ1hGdmwvT2lkMndqbmhm?=
 =?utf-8?B?L2g0ZkpoS09IaGZNQ1p5VDNWMFVrdldGb055OEloVUZnRlJCT3lWc3A5RlZD?=
 =?utf-8?B?SkVyN0hnVUdTcmZQK0UvaHBnSXJzS0RBZE1hbVNreisvTG45T1l0eU9JUUtm?=
 =?utf-8?B?LzZXUW00WXErQVJNVHJNWEw5RnNmNmEwQVp6YzdpcW5jUE1semoxMFRPdmdI?=
 =?utf-8?B?KzBGb3dZMFFMVzhLbVN0K2Q4V0hzR1FrT2tRVXNobGNQUjRQZkdkWlZWNWdz?=
 =?utf-8?B?TFY3NG5JdkZhWjhOZjJIYmw5RzBaYlRnMkRqUHhVdVZnblp0YWRHUmhQTFQ1?=
 =?utf-8?B?bWRiVTFHQmdQUVp5enJidWxhT1BJWExaOVVvUGh4bVgrM0dWTmpMbjB6NU9Y?=
 =?utf-8?B?NTBBUXRrUkt6bWpuc2lra0VjdXdicUwwZ2VVcS9WWUFidWtDb01TcFVydFBv?=
 =?utf-8?B?ck5WbWNOa3B1OXZ1eWpsNnkzNS9iaG5Cckd4bXBxSXMyKzVkUWIwNHJPRkJU?=
 =?utf-8?B?MGR3R3MzQWRXK2xHWFhnaVZhV29YTlY0UVFSTWoxb0tvUGxqYjZpY1RLaGlq?=
 =?utf-8?B?c1NXc1p6OUMxYmJDM2tZbXNWOFExRTRWOXFrd1Z4d3JITW9VcGc3VVBzc3Rx?=
 =?utf-8?B?NHEvWkdkMUlzakc3TmU1bktqZ1NlL0kvS0IrUTVtdm9oRXJ4aW82U0tPQzNU?=
 =?utf-8?B?enlXS0VuMmVGWDV1Tnd6Vnd1TW9qcDE1NDhzc2c3MDM0U0paa0ZxM0hUZ0xV?=
 =?utf-8?B?Y1FBVWFPOGw1L1ZsRENlRDB6SnRSYlo4YU9Nb3hnY3BBY0dLa1c0UlFaL25G?=
 =?utf-8?B?QUZZb1ovSzJvN2xLVnhoVDZ2NGhMOHlFbi9mQk5QWE9HUHhtR3d1c09aVGU1?=
 =?utf-8?B?UVIwZzFGYlJFaGhUYXFDbXB5SmxOU0ZwdWZ0cmlSVFhmb3h0a200SHQ3T01l?=
 =?utf-8?B?QWQzMVphMGo4dHpKbTMycmlCNkk2Qzh2aElKdWhYY1JPK3JhcXpXYVVydmZ1?=
 =?utf-8?B?VkNQVGlIK3plblhKMnJxV0hCbkJSTUk0TGplTlFLWWhJVlhOaWtpR0JvdGVU?=
 =?utf-8?B?M3FEUTRnbCtpZ3BsVWZpVFREeUtBZnVCT3lZd2FGSnYrcVVnc0VBdHhmWncv?=
 =?utf-8?B?aGcyTGMxUEtFV0lLUU0wei9UR2sybDlrNFRSWUdwbTM0T1MzRnNhcGttZW9y?=
 =?utf-8?B?TjA4MWZ6UlEyK0Q4Qk1kSTNGbnllT1JSMEFuTDE5aW9NSTh1TmxwejNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFZkZ2Jjc2NvK2tvazZDTGtkSFhveFJMKzJnNDdieVVJaGtQeVBISDkwci8y?=
 =?utf-8?B?VnlNT2FIOGJ6bE01SHdRWmJCcHl1SE9YTm9XRXpYaG5rR25OZGt5S2NTOWZV?=
 =?utf-8?B?MGNxVzJQanhzSDlRWUEwVW42ZHZaU3d3eDhiNGxIdVJJUWhvMkpOMDNobXMx?=
 =?utf-8?B?WFB3V0dNa1FXZ2sxdTRTOU1hNWJpUC9URlRoWmk2NjU1N3ByQXpSUktqWHRx?=
 =?utf-8?B?ZEcvSFdhKzREK0ZoNEV1OHdCR3ArS04zV3Nva1FHQlUxWW5HQ0tzVy9iZHRM?=
 =?utf-8?B?R0cydXREbzJPR0NTa2tFMmZqNW9HWm9UMHRSY2lzN0ZzMVRGUkRFaDVkQ3g1?=
 =?utf-8?B?QTgydHJJeERUQnZ1ZXQ0MlVEQjN6dHVxVW5pU1kzdzlFd1VlVVhnT1ZYbk9F?=
 =?utf-8?B?M1N6U1c5dlJpV1c4RFVGRmYvamk4VHZZRi9iby9hZDV2M1lJU09VRTIvZ0lI?=
 =?utf-8?B?MmR1MUU5NkQ2bFU2UmtDVk9vRloxZWpkQU9aSkVOYnBLaHlhVTVEVi8vdzBv?=
 =?utf-8?B?NHlxbWdpWDdxZEFkQ3FEZmU4K3kwOXNKVS9KMjlzU2VaVXowcnpMYUNOZkN0?=
 =?utf-8?B?U2twUlBWQmNoeCt2ZEYwTForU2Z1RXU4cHlISGxIVHRHVEdhTkxqaEJDUmNh?=
 =?utf-8?B?Y0Q1QmZ1d3Fod0NiSHFkeXNjemI2L3h4T1pibllkdCt6eEEzc2VOZktqR3gz?=
 =?utf-8?B?UkJaK1U4NGZNejNDSmFKUVpmTnRLV3JxS1pPTFAycWxwLzBRU2M5VVFzTExE?=
 =?utf-8?B?Ty9icWM3WW51cUNUbXdDM29HMlpnQjZzVUE4WWdqVXh5M1R3RWNDYVJ0eVQ0?=
 =?utf-8?B?WE9qTFV6eVFCWHBGTnQrRXZzaTFyZjBVeUZMQ202QUFCRUtGVFBhQjdHYUNz?=
 =?utf-8?B?T2kvNDJHS094V25VSVBZcnduK1Y0UEVjVHJqQTVOcFpjdGZseVFsTThOK2Jk?=
 =?utf-8?B?di9IczRUakZXTGoyaEpnSU5aLzVmMTAzUkppT1FqTGZsSSt6SlhiZ2E3L0I0?=
 =?utf-8?B?RG9NUFkxVnl4TEwzYUFQdUs5bWJOR0t4ZjBDenhjU0J6MnlSNzZ6UnlaSC95?=
 =?utf-8?B?TFNjbFVvWVV0dDFLbjZnWUxPVHJIa0lsaUdBQjh2MkhFZzBjODN6dExqR2Y4?=
 =?utf-8?B?RkdjT3JMV2hZZUxRYVBaVG5UdEZrR0hXbUx4QzlhR1dISEM1RFl3SUZLQm5h?=
 =?utf-8?B?aU4xVWJCeEw5MDl0VU9IUWhsT0NaaitoUVFSTS8wdkFWYjVrUE82aE9yMU1B?=
 =?utf-8?B?S2FERW5xYjdKQzk1b250SkxDbHRGb1RuWkZWQm4vc051UlVXMlBPTWlXL2NO?=
 =?utf-8?B?dDVMTkxlOGxVYlM1cFdRRWtxWGZWR3hoRzhYNVZGc3dyTFFVMTdHeW5qZzZU?=
 =?utf-8?B?UFZZc3FML1JvRXpaMGM4MVFuUWxPWWlhamdla3J2S2psUjgyMllWOEhzTXds?=
 =?utf-8?B?N0J4S3BlU2lUTGI1QzJ3czFxY2RyRWJRM1B6bjVjOERoL0xQZUN2RnJVUXQ3?=
 =?utf-8?B?cWd0VmUvS3JZTmpHa3NwVkczVmFSSjBJaCtGY1lRUnVUM0UrVkpHaWNMR3Nj?=
 =?utf-8?B?LzVuZXorcEJGcHF4YUpXbVZWUGNkQlBnT3EvWTVBNVFFNVZOZ25vb3ZYalJW?=
 =?utf-8?B?Vk1uRGpLT2FSTXI1bUVqd0dUNDNKdjBFdHcwT2dNY3dSN1p0TVR0OG5vTFpX?=
 =?utf-8?B?WE9GWEwyeW1WQzQwRGYzeXZYaVhHSk5HMjVINGFJUTBlOFd6M3krZGU0bEhT?=
 =?utf-8?B?YTBQTi93SWJXTk5RaXZhY2xSSzEyRThRMHd6V3FGZU1TMVU4ZHVISzExVTYr?=
 =?utf-8?B?VSs3ZW5PS3JJalBDVkdQdEJsOURxOVZDc090dGY0b0ZNRmoxSzZ6emNLcmpC?=
 =?utf-8?B?RUJQWHVzbkQrRGI2RGVBY2sxSE9qZ0Y0OHRhYVVlYWpNdGMwUnpodDYwTWlR?=
 =?utf-8?B?NHJmQzBrdGcyWnZSMVRwRmQ3Z0VTWENsSElIbGRreDkwMXNUWVQ3R2JWYndT?=
 =?utf-8?B?UHg3K1czcUNyMi93bmhRenlqV25kcW00Q1QxY3NUUVVLU3R5MVVnVk9sMW5P?=
 =?utf-8?B?ZktHQmh3WGcraytYUVlvbGp6Tks0bkZJR09wajVPOUNnNHdMNzFIK3hMUFEw?=
 =?utf-8?B?UGdXMStZOUlYOW1vM292YktWbEdTRDJNUzNVQVdEV1Z0SXNBU1FzNkdQSDli?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c929add-d771-4dc2-00fd-08dcdcd9682f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:29.6288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xNKwoNwx2XXKfMBxgOCPjGjv72bOe1Yda4LvKiCq+YWrXUBPRBuBCE9VmUpr5LQgja3rg/ykRRCfkD8YGK57+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
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

Reconcile i915's and xe's display power management sequences.

The main goal of this series is to ensure that the display
power management sequences from both drivers are fully aligned.
So, it needs to live under i915/display/ and xe_display_pm
can only be a wrapper to check for the xe's module
parameter before jumping in the i915/display functions.

During this process, it was clear that the Xe's runtime pm
sequences for integrated gfx (non d3cold capable) was totally
misaligned with i915 and prune to more bugs. So, this series ends
up fixing this and bringing a full alignment there as well.

The one new thing under i915 is the d3cold sequences. Apparently
that can be reduced, but for now this is what is validated and
stable on both DG2 and BMG. So, let's move that to the
i915/display side as well and continue on the improvements with
the code in the right place.

When I started this work I was hoping that I could run more
conversions to intel_display struct before moving things from
i915_driver.c to intel_display_driver, however that was a deeper
task and this series is already deep enough.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


Rodrigo Vivi (31):
  drm/i915: Remove vga and gmbus seq out of i915_restore_display
  drm/i915/display: Convert i915_suspend into i9xx_display_sr
  drm/i915/display: Move regfile registers intel_display.restore
  drm/i915/display: Move shutdown sequences under display driver
  drm/xe: At shutdown disable commit helpers instead of flushing
  drm/xe: Use i915-display shutdown sequence directly
  drm/{i915,xe}/display: Move DP MST calls to display_driver
  drm/i915/display: Move suspend sequences to intel_display_driver
  drm/xe/display: Delay hpd_init resume
  drm/xe/display: Spin-off xe_display runtime/d3cold sequences
  drm/{i915,xe}: Consolidate display resume functions
  drm/i915: Remove lingering pci_save_state
  drm/{i915,xe}: Consolidate display suspend functions
  drm/i915/display: Move resume sequences to intel_display_driver
  drm/xe/display: Delay dsm handler registration
  drm/{i915,xe}: Move power_domains suspend/resume to display_power
  drm/{i915,xe}: Move remaining intel_power_domains to intel_display
  drm/i915/display: Split resume_noirq calls for now
  drm/xe/display: Align display resume sequence with i915
  drm/xe/display: Align suspend sequence with i915
  drm/{i915,xe}/display: Move dsm registration under intel_driver
  drm/i915/display: Move runtime pm related calls under
    intel_display_driver
  drm/xe/display: Prepare runtime pm functions
  drm/xe/display: Call intel_hpd_init on every runtime resume
  drm/xe/display: Move hpd_poll calls to later runtime stages
  drm/xe/display: Add missing watermark ipc update at runtime resume
  drm/xe/display: Notify opregion upon runtime suspend/resume non-d3cold
  drm/xe/display: Move display runtime suspend to a later point
  drm/xe/display: Kill crtc commit flush
  drm/xe/display: Add missing power display handling on non-d3cold rpm
  drm/{i915,xe}/display: Consolidade entire runtime pm sequence

 drivers/gpu/drm/i915/Makefile                 |   2 +-
 .../gpu/drm/i915/display/i9xx_display_sr.c    |  99 +++++++
 .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |   5 +
 .../drm/i915/display/intel_display_driver.c   | 247 ++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  18 ++
 .../drm/i915/display/intel_display_power.c    |   6 +-
 .../drm/i915/display/intel_display_power.h    |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            | 161 ++----------
 drivers/gpu/drm/i915/i915_drv.h               |   9 -
 drivers/gpu/drm/i915/i915_suspend.c           | 141 ----------
 drivers/gpu/drm/i915/i915_suspend.h           |  14 -
 drivers/gpu/drm/xe/display/xe_display.c       | 185 ++++---------
 drivers/gpu/drm/xe/display/xe_display.h       |  11 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |   8 +
 drivers/gpu/drm/xe/xe_device.c                |   4 +-
 drivers/gpu/drm/xe/xe_pm.c                    |  16 +-
 17 files changed, 498 insertions(+), 444 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h

-- 
2.46.0

