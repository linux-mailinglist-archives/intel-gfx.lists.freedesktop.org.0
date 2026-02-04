Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CB8oGsZCg2nqkgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 13:59:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7698E61BF
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 13:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDF510E361;
	Wed,  4 Feb 2026 12:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvSj55YC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFBA10E361;
 Wed,  4 Feb 2026 12:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770209985; x=1801745985;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Glt5XQjyieYVSdhVXkzXZRHfyq/fziJZAjz2BgiVwLo=;
 b=PvSj55YCcxzwnRQAHZ03OANCeU0wosWk9nhnv77puWk5SIrmEIxWQX0l
 jlUpyIM8rmEqgfER4RRAJpvz/MEo25DuDm+/UQehkPgpcEhEzju/NmZqS
 m3jvDooLpF0BQymwNEeif3irKccQ/b0FraZfvlN0GDXHoPmr3oVW+Cy3j
 6q9hP3fXUHL8NzcGsh0d77rJpEZBydwn6ME3/2Dt1nxwAuQFooTRRPlwF
 b3jxtRG+fusQUvt+mYtOGD+nkoKSBktLPFBq4C03N6rWGrtFlQ3BI5IPI
 PfY783I+QDVjM1L6/46vR90p4/uksXzs/cnt3jkSiNumY1k9bXleLvOuC g==;
X-CSE-ConnectionGUID: mJvWR+tPQ7Ok0nkqO318RQ==
X-CSE-MsgGUID: vZC3o4VrTFimZrZM5o+PPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="96847489"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="96847489"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 04:59:35 -0800
X-CSE-ConnectionGUID: IWMV9UeuTReSh3CdJEdSnQ==
X-CSE-MsgGUID: Y1zFyzeVS1CQCDJLUX1fqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="215136217"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 04:59:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 04:59:34 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 04:59:34 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 04:59:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dFxeY7L9mb2ShRHoB9XerH2yCHaqS2XzCiNKIl1YffeJPoDxhCEZd1RVyC4p+BJH66xOfcSQEI+hSrbnWHgE+2tYnUtHaUvOj8HikQqAu4WdBTCQL/9Ch3o7R+X0GXp0vPhLB6SxCO7w2NzUVbr2UK9pdb34yjG+MRq2p4cdsDTCmz2DiLyxihEpSjeqkgL2qiuQgeIgZoS6WXWZpy6pZpMokHpdJTGbmGnlDLHtRD96b4tSDo3EVxj33JJnVi4olGE4doiX5A9D3X7f4uYx3nF33YombG8khqDjlce9uZTStazY8l5nd+4Ad6ej2oUKZSsvsLyo3CI9eZspp001vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U0sLgoq5GXDKOWzaNdhVjv84IaNv69h31jkh1CC03Hg=;
 b=UAm7SkOMtaJK87sMgDg9pxJ0yQq6cW7thPrKwCdjjXQa/T6FE3XIpYazzS7GNxiBsORcYjdIskuyxrR7PQOqSbna+V4tHdkqmv9pXXjMUYgkEMGvQxQ6iMOWVbhuuVkr0oLuso1cn7ADWptYreVl7Gg2CW+L3e3cx14mC3x9FTljlCL2LhSdg8JQQ9nrMh1dQLxQKarqaz8Vf/gl3l+xHvzt0Cysbt+rpLR3L7rgeyqJReR50DkH1DeqK6VbxRJsX74IB2jwaHlSR19U69OYLlnglZcfYw3v3mColdEA5VtS2jFuFIqoKyj9a+rWosohP8tkeCIuP46NUcQjHpsWGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM3PPF90FB92BE6.namprd11.prod.outlook.com (2603:10b6:f:fc00::f38)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Wed, 4 Feb
 2026 12:59:27 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9587.013; Wed, 4 Feb 2026
 12:59:27 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>
Subject: Re: [PATCH 13/16] drm/xe/nvlp: Add NVL-P platform definition
In-Reply-To: <20260202234806.GP458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-13-653e4ff105dc@intel.com>
 <20260202234806.GP458797@mdroper-desk1.amr.corp.intel.com>
Date: Wed, 4 Feb 2026 09:59:22 -0300
Message-ID: <87fr7g7jh1.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM3PPF90FB92BE6:EE_
X-MS-Office365-Filtering-Correlation-Id: f66b3404-aebe-44a5-fa3c-08de63ed3a26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Jp6D+vD/BYKNEZvNW3MnR58EpaervjF5Wjy4GYte0wNsru+pcF+dpZyYH8Yj?=
 =?us-ascii?Q?UkZ2TEDXxAtw2BsCuFv4sk5Y32+oiwtOIjsJzLTCS/GQr3eGxLa1kCP3+nTz?=
 =?us-ascii?Q?VYJBXOI5F9hI6FhtikuOwe1AoX6He1tZWQWYBxXZlZ9SPzZmT6jrAEKM7IZ0?=
 =?us-ascii?Q?+z9Bh6M08F1I5sWRFsiqK0p6gWytlnRoMAewSSMO0C3a4UmwNAcUStnd1Gm4?=
 =?us-ascii?Q?3BA44xMfI1uppljG96ylK/N9f2orosPre7C5z/Io3G2fPGHWTJMn95IL5nMC?=
 =?us-ascii?Q?GfJLkFQz74zPHmUYCjdpQzycS8a4QsIprybh8u5zkOYOF7hakNLWydRdFzWl?=
 =?us-ascii?Q?rc0kdFxZdn/pEm29ZVzqvcgBHZJNZTPgum541EkMOU3VVtTmr3V5eEsE0woD?=
 =?us-ascii?Q?nP14wBA22jqluNITUdXPpE5612s3rr9yWvsbSCF+VHmD9N9UT41Au3xyVw1N?=
 =?us-ascii?Q?ElJ1A/IP+hHYD77KW+XoRrNMPJ65rbg83V/QIeARxw6vPWWfF84pW5TI/kyc?=
 =?us-ascii?Q?WHFXWHdqJv091/jQjRfzy5EnhlG55/cbo4MGwuJekpqKaI+FWNxCOOiiehIq?=
 =?us-ascii?Q?3udRjyk24t341FftkvbLBdaja6hwVOB8h6rHmVcXs1AJK0u9xeiA6Yubo//4?=
 =?us-ascii?Q?ZyPelaHlK9FOrkJ9D5CdRDG3fwbHs4O7dcJ69xjtwXWue0VaG7/LlQCck43P?=
 =?us-ascii?Q?Dy1ehPwM6f4wmB9UDfZobzkkT2QQf+kGEH7uXWoPyiCsuzomDIp/WmJbPR2J?=
 =?us-ascii?Q?ySzQMCpXDyAnx5nz9ela6pObnJLmdUSrzGtRjYvDylyuDwIH2gq2uKsBAmcZ?=
 =?us-ascii?Q?Shy07Y0wzPujeyCx7039lf+8k12NBAeYJuLAvk9M9CMwQ1vBfZ5fSWNgFliA?=
 =?us-ascii?Q?WkgNvQoOWfmwgP0FNjmETSCFwut5sluMJtdVwn4MjPeb5unqK1UUsvMUsIIt?=
 =?us-ascii?Q?xZbUFIMaiqF15wzibDoBNcz+OGjxEJZJZA/MH36VhSpcEwL1vNXpP5tSJ2m6?=
 =?us-ascii?Q?WeIhpzqzcXxx3VprxXuecE0SOj4TSN+5aUxAK+7rhMjuH7by8tHtv0A0iY6G?=
 =?us-ascii?Q?mq04jHW6aRZ7MGbFeOopmvn0BGYkKJrt0NrCN6cy2oulpm2yHYmPLcqQJRJm?=
 =?us-ascii?Q?fPuxK4vgUXIpuEE5nQlyI41Mv/MDnCf4Tf3fgrTfgGZ5FXhBbLNMpVQiuzcC?=
 =?us-ascii?Q?yLQEr/5MmXuiEV2q/88Mrn7qrfclGw1Lo+ZzGwvU7W67IQE8I09ZTy8ZJuTh?=
 =?us-ascii?Q?OpYGZqF7WFsCLpUq4Pnq0jkyrHm7y98Erp1edG+Q6pa8sF7wIOlPfiGP6PFC?=
 =?us-ascii?Q?AnkvmWaHVMwchg/TIi5HE1hDTm8sDjMSNM3o/JxPdFyX/lzbJ0aeiN5zYr9u?=
 =?us-ascii?Q?YjKCYgO4Q3NmX5oGpm23xnTFMaEf5l9mZWUIFxSYBDnKbX/XmkSBsQo74hfu?=
 =?us-ascii?Q?j9mEAxBZqkOEDprbOtqlOtMWb91vIcka8tHTPCJuZLSlbHLNTRIFlN3qGbOX?=
 =?us-ascii?Q?JB00do/vZ4AgZkllfaug1bzHWl1D/wTcjMLI3UlYcRYpU//tLIZkRv1uv7+J?=
 =?us-ascii?Q?BVt40vrAO93REJgCrI8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FCwFg42ZF389Aog32p0s20FUsk74sYv3fRRMjcKKPOKfrwVkr/vnBGLQ6op5?=
 =?us-ascii?Q?CacAhwbSFiRK//NSWtWrqdzKLjWCjLUJZvofctIs+3d0wSibAO5yaYb+Kttf?=
 =?us-ascii?Q?KfzkhoL/qoSjtBibiiSoHlLBO14OwVfwXAPkMsoMg/00C6NSM3OXXlL/a4i5?=
 =?us-ascii?Q?xhaDT/vF/sv474Ixzi+huAvpc3YM8Kt6ITe9SDdeMEinRnV111/4ajZvne0U?=
 =?us-ascii?Q?mfpqbqueVYMhZ78P4/h4qguMSXgPtFGZz+obJhMljOaiRlrzJfe26y5t1rRZ?=
 =?us-ascii?Q?KE4Fa4kvwE3tOWHZpve25vz7N70FbFvZV3XcYM5u2W60xSAhjrQOo4AHeNDM?=
 =?us-ascii?Q?CGufH60+CL+QoIRD+MRqiyFjNgeDzQrWy3u1KpfduRZvZKkVlBz0bvxL2uW7?=
 =?us-ascii?Q?nwQTJxizGVQVhfckWWN95cdtICIyTRF6P7ePbLzqEGS1EMQt5H7XY7VvUXDB?=
 =?us-ascii?Q?hlZQf5MHIgLenzCQ0ORLabfzR7mVkaeZPLtGCFzzfcxw+XwokhVK3nJCrb+9?=
 =?us-ascii?Q?7QqugJ1fQP16c2EIJkunHyyOVTzFhWmclGak39kgmKat+9SGgzHuBrnq/qOc?=
 =?us-ascii?Q?CzgDTPyANpj3sHfE1gmCmrCBzdw/YF6hw3BAgm1KzUVRHVi3DmQoq2it3E6s?=
 =?us-ascii?Q?IELFvHV9DvyC6H4qvtxlaK4cNckVg+2fvpjcrUP3fmUEvuoFvN4MO0VmEgK/?=
 =?us-ascii?Q?RjN6f5X6fGQTxNvdkWMi3TsjKskhGT1gtL0wPqab/H4E9YY/wpkyORa8igOT?=
 =?us-ascii?Q?Fu/5QXeBmdqSD71R8mUoImly8HbFd+GCCR7I2QSrkIuCHasv0NjZ6LHlcC7/?=
 =?us-ascii?Q?+tV8+gbV/6U/aPZABNkRFru/xUy05WpalE1KoLDeRAbPFR51OgW1rFZIO/xV?=
 =?us-ascii?Q?dxhKIRaWNKIPNAUgqOgsWlu9D6L5F8jVt5gZiynsnTQlJ0dIAIBN6WwolQm7?=
 =?us-ascii?Q?xsWttX61us0quDTxGO+ubuPhHOydSiiXnpyrsK10cP3pHqcBsWygFFikQING?=
 =?us-ascii?Q?KpChVQwyelZ84V8XPxf7Lrhx/bUv77XqsSG8Ef7lJclu0BfkUO0rPttK6SZ4?=
 =?us-ascii?Q?s/X4HGordNavovsJbFHSReFjM3SLH4+od8xoj9N8aG4svbu89rAy/0E35H7J?=
 =?us-ascii?Q?p5nCxGF1Gr4Lvs8lyHlMhFrRaTL95rWKfnpGgpIdSPMA6g/gmgwkL6vHTk/v?=
 =?us-ascii?Q?jMlJwp8Zu884ggfDmVB7dgm0rHju9aAuRCHHOIBBOwQYlXc3JoJsGikorMM6?=
 =?us-ascii?Q?JcqywM/9/z/YIQLICQzH3vgAT1vHUuKa6sro0BT5wMr2d6ruS5abCRyzVoP9?=
 =?us-ascii?Q?9tREk5gFsHDInH7Rockgry0NX06n4pwZK+TjUGrScSaaITplD/fVkl3V+7Ma?=
 =?us-ascii?Q?ogcGuhP2DFISoI7bBtcxsCr+AuW88eXGhKFrY0Mhkx399EUKNnLcyg9l9PjP?=
 =?us-ascii?Q?Jz8RTMfs65ee/khKC4+tW3+Jz1JH6SyXG+QXKNAdPhQQqAmvTuGpCJHPU5GE?=
 =?us-ascii?Q?1o0GjsMwUxB7O9fcY9xlbcZZ3AO8HW3mxWSPlpTa/H56U6ru/pQbIz1y4XVV?=
 =?us-ascii?Q?4baFd4pO/5vtF+S9W9jwkH3APaGJpwCso1aikxzooVzeEK0r9mQJ6YcGnPQg?=
 =?us-ascii?Q?cZubARnYgwQjBhOBGrHokoi+21EC920aIhCw4r4K12QuzTAxJoMcy2l8DTQk?=
 =?us-ascii?Q?P6wX3ig3hMnag02S/Gu/0MmnaEKYmmWrPLwG4M1AAyTfHhE7cEe6v+nztqRy?=
 =?us-ascii?Q?XlKMu6TSPg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f66b3404-aebe-44a5-fa3c-08de63ed3a26
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 12:59:27.0029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5cwgqi4a+az4C305aRybCPqyXaIvd69DnVSRneL1JyPKe4dY9tmNgevNIPncaNzCsf1RjXKT4AXdh6+ei+wJ8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF90FB92BE6
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B7698E61BF
X-Rspamd-Action: no action

Matt Roper <matthew.d.roper@intel.com> writes:

> On Mon, Feb 02, 2026 at 06:43:19PM -0300, Gustavo Sousa wrote:
>> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> 
>> Add platform definition along with device IDs for NVL-P.
>
> Not sure if you wanted to add bspec references to this one like you had
> for the Xe3p_LPG descriptor, but the flags you have here look correct to
> me for now and the PCI IDs look correct so,
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

I'll send v2 with the list of fields and Bspec references. I'm
copying/pasting them here as well, just in case you can spot any errors
before I post v2:

      .dma_mask_size (Bspec 74198)
      .has_cached_pt (Bspec 71582)
      .has_display (Bspec 74196)
      .has_flat_ccs (Bspec 65255)
      .has_page_reclaim_hw_assist (Bspec 73451)
      .max_gt_per_tile (Bspec 74196)
      .va_bits (Bspec 74198)
      .vm_max_level (Bspec 59507)

--
Gustavo Sousa
