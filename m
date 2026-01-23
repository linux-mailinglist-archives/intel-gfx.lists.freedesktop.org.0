Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /LyPEazBc2nnyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:45:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5313679BD2
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 19:44:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A105010EBBB;
	Fri, 23 Jan 2026 18:44:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mup3rRcW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CEE610EBB3;
 Fri, 23 Jan 2026 18:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769193897; x=1800729897;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=YghZaLofqoe1f47FkS36+xSRaTZiKRG36MWSTwixF3U=;
 b=mup3rRcWFEhQfYhVxHSxipb39pphUW4pKos2LRAZZP2LCyppwb4G/9uG
 5ChiM4IZJX4UksHNVQEo1j72F6WyBYvAdq2UVa5H9pBxm8XSKdUxJBnar
 Lw1rQ+BV0niBw9ai6D1o8XWVpEN5JsgL7lOBbrr4HzwbooAsHXQ6xEkAo
 EfzgOCxlNnzMKfXgk72hlDGIPwnxJuctxPQVk7/rOGJKTRjG4nqVriTfW
 CL7mWG4zsox2wgLbT0YZ/6urGDtVbDRPUrYnIjOCVB78li01cGyGYdfN1
 jwsputcacRA3lovg0mRXP6Il4Q6DkHCMz0jBQz8ITS7secP5ux9YTiE6O Q==;
X-CSE-ConnectionGUID: 67PfD16ES6+SAeXtgaU8eQ==
X-CSE-MsgGUID: tIvOqRrEQg6akW5KtdAaZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70172964"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70172964"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:44:47 -0800
X-CSE-ConnectionGUID: pcT6Mum/Rw6dWXuMm4Slvw==
X-CSE-MsgGUID: DMeBcLCvQ4+ig2LeaNJ3ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="206698779"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 10:44:46 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:44:46 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 10:44:46 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 10:44:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lUFp/1D3P7Pr8IHi+PPi9k6zeKkubGXX9zPNIB+RsLe/dGqY8z4Vj0WUl/+QL/+vDR7+bls8jwu8AINMytOyr6Qr5UI92FT5iRRwYeXfjyvcIZAxeEhcExgCxiX37EdzVgWz5p2XdqJPkXwxP56IrcLbSBw9tk/xnZ3RyJfvRyJIgxKHyptayiuVNR8Ma94ztj7PrP4YAVr1pcmgHY/te//QQRldr0H0aCk8+gd1mP6aic1J3fIKk8xSe51WhLWj6iqx06XJ68i4Onznt0lminXPJ6bomM5CzOFz2y2A7sZyZkN4tSbamE5wL8ktlJHCIJ01I1UPnoGbXa9vgOmh2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TdDLrDT7Sj8FyRni6l/BH3fSzZ0aW1zQMdAS4CwvpSY=;
 b=A9tckKSUKw+uuksbXQsFcqgEI+pQKb/HXzaIL2fBjMGCdQuCNMJiKvI/ufDIANm14sQi7L5aIK7i4dqC2E/zwRKZ18pgKR53QgVIhn1ZnPkGnHokMG5gok3myul9ERXAsnIx7lDGnv1fO2XLQus+xCxnQv1qdqFGvkSVIiaiOub1UMJhIW4NEIdQFoXsFb9c4dyaCeYN0Ac/T8gGAyLvFR8CAPx4+inrlY+wvb3peVQyu/r9xKJaskib6/xAtYq9bdVs74gDtviGVBFOld268A6PvRvRZAv9tJoquX8CSeXuDERpesms6MrQIFnLApaVmc7mDz8Otgxs+977OeuSHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB7039.namprd11.prod.outlook.com (2603:10b6:806:2b5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 18:44:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Fri, 23 Jan 2026
 18:44:40 +0000
Date: Fri, 23 Jan 2026 20:44:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 04/14] drm/i915/dp: Rework pipe joiner logic in mode_valid
Message-ID: <aXPBk4j_wxQr7cPm@ideak-desk>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
 <20260121035330.2793386-5-ankit.k.nautiyal@intel.com>
 <746b08e5d92c4c734011868711da53eda8883a12@intel.com>
 <8e26e8cf-5893-409d-9e17-74d8f072cafc@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8e26e8cf-5893-409d-9e17-74d8f072cafc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: LO4P265CA0035.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB7039:EE_
X-MS-Office365-Filtering-Correlation-Id: ac310640-7720-4bb4-6074-08de5aaf7727
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yoxcjpeIqx2Sifn7EHohOZUwEh0SlQSU7vsu8yctkNGaeLcr3ssm4AMnM/I/?=
 =?us-ascii?Q?IL+7+fU6Fswg8CaBrPtt17D97m79R6SN3g6pDXV6vmtFE9WKd3waDj7b5OOc?=
 =?us-ascii?Q?5BUgZ4IZ3XSdzseMCUYcL/WnXJQrK301VOls6UxTY/QlV2heWnOvWQrkGn7I?=
 =?us-ascii?Q?o0nGKQIz8NyqrTxGYKd26isUSoA7mxZwdbGR1FSht5eOLHK+U/+jj2EjbEoX?=
 =?us-ascii?Q?B9pvtGdQtZecOS1NMYKKoreO4+0tIL8BAdHO1cAKEz0BR0OKgxd/X/EeXls5?=
 =?us-ascii?Q?dVslkgYhajJSJ3N9gL1TjpLE/JiabTTiPxwVyUN6nb0IrTD+cAAOrhDWxQAx?=
 =?us-ascii?Q?EOMxdIyQdsymgnIM/DRj9fLFz4+esWnHGzGY6bm9viKlWaoUfkrT5+4Oxv+u?=
 =?us-ascii?Q?c2cnP7BgSAM9vgZit54BevaaOIKLM1LA93Ne4k+DugItKMUsfojN7SF8gA/W?=
 =?us-ascii?Q?6/OdfQRevG0aFD+94dTSMlOD8Al8UcU2faqqIln2qI5mTlxvArT0PVMOSgjg?=
 =?us-ascii?Q?qNw32e8HsRbsHVyEUvNZSqYmTHYWdlrpsTiHkAV7Kr4Ful4tV74OcZk9pPXi?=
 =?us-ascii?Q?LPsP8U5ENTlPxw65RF1ONAMdaBor4+VKkNk5jRcCud1opdMyVyj+B25axciB?=
 =?us-ascii?Q?viqE/wERBph+n5pARPXrNlKgvtLYNhJTJIZQKabxS5DGvzVlaBZSwx9VYTm8?=
 =?us-ascii?Q?IdRPUa3WF3u1krLvyB23AE2FVGQyPbGtDk74ARNvfmgOQJask+sZmLehj8n9?=
 =?us-ascii?Q?904x96K4kMOXPUyO0p21lEHa0QTMpgC4QutDWKVmjXn3AQ1j+Ue+BUinlLKY?=
 =?us-ascii?Q?LWmXHN49gQygrloxCB9hHIEVm8VBeFEsltDAUZukq8zHdos6UqCglIeXU+Kv?=
 =?us-ascii?Q?jD8bBkHB3Q2DORORcpaIULBKR8iDm0+42zdc82hr/xDStrdWtVY+j4leH7ue?=
 =?us-ascii?Q?Vbg+ItW/NliNC5BJdrBv3PCJLr1Ux0bf8gHr2lSZF4Z+frQI9MWGi/GZYLPh?=
 =?us-ascii?Q?a1I7hzm9LohPoKipp+pY5h2GH2d0DZAuXigYmi+BKcJUI0Nmyx5Z177/pZ8x?=
 =?us-ascii?Q?0/3anXVsGlHM990mL70fxTNLukuYbZGUAGngSX0+Unx4kDwYmOx+GBj6R5ik?=
 =?us-ascii?Q?/xlplROxMFJyhXDsf4SxlXicjUGNVCPAd/4SKdQGZn2g+WSUvzZz526SkUXn?=
 =?us-ascii?Q?IEkUmvI/dLMk1e3FVHg33MDsxh9U+jSTplFw2SwFHlP1wAqkrpyLPeJrObZH?=
 =?us-ascii?Q?Iu2NUZnxlPt3d6c97qNK6t2+3adb9PXREE1MxEqxzXn353UbGia4heColLkQ?=
 =?us-ascii?Q?0awhNm5XsFU/ARd2ktLT8P2xKuMdbosq0NxQSyA27AqixNNNk6UKRiIfY3gZ?=
 =?us-ascii?Q?GR68YB9S+qwNFBxIl7fSGw8kPMtDKkXiYn5z0xQYHnsurRstHCwUEFQbhZdQ?=
 =?us-ascii?Q?gGW81xUrGrrghaIRbFSgy3Uc7WX0p6Ps0+9/HHoJcyWz4EhAeOgnmMFdt2Z3?=
 =?us-ascii?Q?sbyJhMhUrvyj5WUKrjpYkEBQq7vZgfqLr2TxbPIXv4NLBPFzgh7SBxxj7xS1?=
 =?us-ascii?Q?8BbJ46REhDVspZDFVjM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uI5kQ+9fT9X/isbCbMkyu0aJAgeS6NeV7HCRgBk+UOhCGu9tKAs8/NdoFRUD?=
 =?us-ascii?Q?/Tjx0uLCZTGMEh3XJViPIeZbWN22GlkWSwBsGT3QpaV5Rr+Kvsb0CZigNBY7?=
 =?us-ascii?Q?RgVt5h2lTM6GWM66y4pVzuJc0fCYloVHzKoHLWxvQHI3eaFqD2rc6HcY6Ypa?=
 =?us-ascii?Q?9H/4hhJB96GruAyYd4h1stSs7Yk3EjI5oZVCSdwydWYWrV27QRd5fvdO7AXB?=
 =?us-ascii?Q?adIOcmsGNZ19rbFVhgpfuhPWz9Zaw2gIqBB3J1U+rCreGpFZ5DqtaZT294z5?=
 =?us-ascii?Q?p831xXpwBxFJ32xygDPBu0+EJIhGcqhPbaZkQ3F9kQJYxCZq4VkXHLsOkVKd?=
 =?us-ascii?Q?B6shGczufdR9hAO/f1SqR6LClVFr2eExTYfgnuplGjkdzgm0tZTXkfTguqGk?=
 =?us-ascii?Q?K/UBuepWA3roSs70JkKxblcXmXVlzcM8rx4p4Q4Oaoq8L9nkfyNR0rMQ1Ht/?=
 =?us-ascii?Q?drrnK5Fcvdf/scW6HPOMBifzTehz7fkEpmoFzM9VYyOsbhoBOyfTqGGzC5Dm?=
 =?us-ascii?Q?3+zM2dGIoL/ZXZrg78tuXul/7FAhq7IWLEp6YpMMJGg1oqdrwLU6abmizh36?=
 =?us-ascii?Q?WUoW2nKBj8oa9ChPJOyWRbDt64c6Mjdmc8PHyoUYKP7FxLteqgs2AWzqBXNk?=
 =?us-ascii?Q?UhvT9gfXKJn3j72Dov/xvZ551+XQ1Auq0AD6pupF/4eb4gYKQDEPYTSqhkiR?=
 =?us-ascii?Q?6r0qYK4PYf1YawHTNt3S76nqFq01oBaiHO+lZKbG3K4G5nAT9F44PfJyh8dY?=
 =?us-ascii?Q?lCYXE5Wmrn++I4ilxZntdqZnqJNcgQAKA3vd0uEWBHae68inOm/v4lzGRdfi?=
 =?us-ascii?Q?Yc8qsTicTo4PR+8ialNFZbNICZuriXQzpkdd5xb4JQpto3IsViFlgyitritb?=
 =?us-ascii?Q?17ucesYZKuqii3i4ZIaiMuFUDwNKgCP921V7cUiKt5e0xVpHFyk7zFTldgt2?=
 =?us-ascii?Q?6wbkgog0oitMBFyf8BIzxO64LYl464Hu3kPnUv4ZvFsEgWS8oYYdhouxZjxq?=
 =?us-ascii?Q?4wtNWqk4q+38tyl/1kMgnT9D2PDNDt9ZS/sPSNVtFEjEyqjfrQO6YIrLEiFN?=
 =?us-ascii?Q?UUvAvtG6Wp3CpcbPOVOAz2H2VHcVKeK9EzFL63sb3M02ceaO8LXgRRzWGvxH?=
 =?us-ascii?Q?BEtKvhoAsgUAE2A9E8vmT1jEtQxbrQNW/khhD1ml0qsKfch9COktsoRUSwGp?=
 =?us-ascii?Q?busbNZpysKTZjp/zRevrx+nwt1vGJO2bqfuymxbWv51JeO3jwh15CCZLfk1t?=
 =?us-ascii?Q?yiIOpHmrEQNC8DRq76JBcp9BvxsFrpaXvVwFrXctMbFsLmcZnUFdl73Lwp1I?=
 =?us-ascii?Q?05bKCFtCyUVGLo3cLahjM0YQWWlqxqYPU8Cf06cH23Eein6eV/lDANCWIsny?=
 =?us-ascii?Q?DesS07FnNhFnN1Nr0MbiiikZFnzqA5uTgXTeiKkCVIs0dlepgfXwm/2FuXui?=
 =?us-ascii?Q?zlz3dxMBiao6atD/BiK3msdhlIvhVXGwR/9VSQyX9QRry/IiwyyDRIcL2KF1?=
 =?us-ascii?Q?R82vMRRP5zTsC+sBoUaFg6TXfDQZ081siTP7wo1kUMTOiASzDr+6XGgJEpWn?=
 =?us-ascii?Q?SJzUED1g6A7P0JoMaQa9EMsEqhJVNlAyVp8aux0l6EjDCeyjcoZ8hxviFf1n?=
 =?us-ascii?Q?uJGvxEC4cVKDr5jINCm6p2u8xrdS0f6cp59aLm9RaaFSqvuBPGbu4Nd9mPPN?=
 =?us-ascii?Q?9u2d/GlC/XZslKHM2hnPQrRkYVkLbWaZMde2eb3uNisFieL2NJ1t78onmVqy?=
 =?us-ascii?Q?QabSphf9EQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac310640-7720-4bb4-6074-08de5aaf7727
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 18:44:40.0549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l7sA7O6j+vsps4iYEw3OqQm6rg8MWCwS0+n+/dEXA+m/oCmoU+xGqxOg6rtM2vKBMQVcUdIYPrkwnE/zedOyRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7039
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5313679BD2
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 04:49:46PM +0530, Nautiyal, Ankit K wrote:
> 
> On 1/21/2026 4:24 PM, Jani Nikula wrote:
> > On Wed, 21 Jan 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> > > Currently in intel_dp_mode_valid(), we compute the number of joined pipes
> > > required before deciding whether DSC is needed. This ordering prevents us
> > > from accounting for DSC-related overhead when determining pipe
> > > requirements.

It isn't possible either to first (a) determine if DSC is needed and
then (b) calculate the required number of joined pipes, since (a) also
requires (b). This could be added here as well explaining why a loop
over the number of joined pipes is the only way.

> > > 
> > > Refactor the logic to start with a single pipe and incrementally try
> > > additional pipes only if needed. While DSC overhead is not yet computed
> > > here, this restructuring prepares the code to support that in a follow-up
> > > changes.
> > > 
> > > Additionally, if a forced joiner configuration is present, we first check
> > > whether it satisfies the bandwidth and timing constraints. If it does not,
> > > we fall back to evaluating configurations with 1, 2, or 4 pipes joined
> > > and prune or keep the mode accordingly.
> > > 
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp.c | 144 +++++++++++++++---------
> > >   drivers/gpu/drm/i915/display/intel_dp.h |   7 ++
> > >   2 files changed, 96 insertions(+), 55 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index fc7d48460a52..02381f84fa58 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -107,6 +107,13 @@
> > >   /* Constants for DP DSC configurations */
> > >   static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
> > > +static const enum joiner_type joiner_candidates[] = {
> > > +	FORCED_JOINER,
> > > +	NO_JOINER,
> > > +	BIG_JOINER,
> > > +	ULTRA_JOINER,
> > > +};
> > > +
> > >
> > > [...]
> > >
> > > +	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
> > > +		int max_dotclk = display->cdclk.max_dotclk_freq;
> > > +		enum joiner_type joiner = joiner_candidates[i];
> > > +
> > > +		status = MODE_CLOCK_HIGH;
> > > +
> > > +		if (joiner == FORCED_JOINER) {
> > > +			if (!connector->force_joined_pipes)
> > > +				continue;
> > > +			num_joined_pipes = connector->force_joined_pipes;
> > > +		} else {
> > > +			num_joined_pipes = 1 << joiner;
> > > +		}
> > > +
> > > +		if ((joiner >= NO_JOINER && !intel_dp_has_joiner(intel_dp)) ||
> > > +		    (joiner == BIG_JOINER && !HAS_BIGJOINER(display)) ||
> > > +		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display)))
> > There's a bunch of superfluous braces in there.
> > 
> > Anyway, this makes me think if we should reconsider the HAS_BIGJOINER()
> > and HAS_ULTRAJOINER() naming, and the enum thing here.
> > 
> > We're adding a bunch of logic to enumerate combos, and to check those
> > against joiner availability. But really, we could have a HAS_JOINER(num)
> > which says whether we can join that many pipes. Maybe even have the
> > compression as parameter.
> > 
> > I know the spec talks about big/ultra joiner, but for the more casual
> > reader of the code, you really want to know how many pipes you're
> > talking about joining, not the *name* of the thing.
> > 
> > If we had that in place, we could turn the whole joiner loop here from
> > enumerating the enums to enumerating the number of joined pipes. and
> > whether we can join them. No need for the enum at all, and I think the
> > code might end up cleaner too.
> 
> Oh yes you are right! It will indeed be more intuitive to iterate over
> number of pipes we want to join rather than iterating over the joiner type.
> 
> Still need that weird force joiner index though.

Agreed, a simple loop over the possible number of joined pipes would be
cleaner.

> 
> Also realized check for NO_JOINER should have been (joiner > NO_JOINER ...)
> 
> This explains the BAT issues. (With above suggestion this will be not be
> needed).
> 
> > 
> > 
> > > +			break;
> > > +
> > > +		if (mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
> > > +			continue;
> > > +
> > > +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> > > +		if (status != MODE_OK)
> > > +			continue;
> > > +
> > > +		if (intel_dp_has_dsc(connector)) {
> > > +			int pipe_bpp;
> > > +
> > > +			/*
> > > +			 * TBD pass the connector BPC,
> > > +			 * for now U8_MAX so that max BPC on that platform would be picked
> > > +			 */
> > > +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
> > > +
> > > +			/*
> > > +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> > > +			 * integer value since we support only integer values of bpp.
> > > +			 */
> > > +			if (intel_dp_is_edp(intel_dp)) {
> > > +				dsc_max_compressed_bpp =
> > > +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
> > > +
> > > +				dsc_slice_count =
> > > +					intel_dp_dsc_get_slice_count(connector,
> > > +								     target_clock,
> > > +								     mode->hdisplay,
> > > +								     num_joined_pipes);
> > > +
> > > +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
> > > +				unsigned long bw_overhead_flags = 0;
> > > +
> > > +				if (!drm_dp_is_uhbr_rate(max_link_clock))
> > > +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
> > > +
> > > +				dsc = intel_dp_mode_valid_with_dsc(connector,
> > > +								   max_link_clock, max_lanes,
> > > +								   target_clock, mode->hdisplay,
> > > +								   num_joined_pipes,
> > > +								   output_format, pipe_bpp,
> > > +								   bw_overhead_flags);
> > > +			}
> > > +		}
> > > +
> > > +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> > > +			continue;
> > > +
> > > +		if (mode_rate > max_rate && !dsc)
> > > +			continue;
> > > +
> > > +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> > > +		if (status != MODE_OK)
> > > +			continue;
> > > +
> > > +		max_dotclk *= num_joined_pipes;
> > > +
> > > +		if (target_clock <= max_dotclk) {
> > > +			status = MODE_OK;
> > > +			break;
> > >   		}
> > >   	}
> > > -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
> > > -		return MODE_CLOCK_HIGH;
> > > -
> > > -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> > >   	if (status != MODE_OK)
> > >   		return status;
> > > -	if (mode_rate > max_rate && !dsc)
> > > -		return MODE_CLOCK_HIGH;
> > > -
> > >   	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
> > > +
> > >   }
> > >   bool intel_dp_source_supports_tps3(struct intel_display *display)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > > index 25bfbfd291b0..a27e3b5829bd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -24,6 +24,13 @@ struct intel_display;
> > >   struct intel_dp;
> > >   struct intel_encoder;
> > > +enum joiner_type {
> > I wrote the below *before* I wrote the comment above, which makes all of
> > this moot, but here goes anyway:
> > 
> > "joiner_type" is too generic, it needs a prefix.
> > 
> > > +	FORCED_JOINER = -1,
> > > +	NO_JOINER = 0,		/* 1 pipe */
> > > +	BIG_JOINER = 1,		/* 2 pipes */
> > > +	ULTRA_JOINER = 2,	/* 4 pipes */
> > Ditto for the enumerations. Why are you explicitly initializing the
> > values, are they somehow meaningful?
> 
> The idea was to shift 1 << joiner_type to get number of pipes that are used.
> 
> Wanted to check for forced joiner first that we get from the debugfs, if the
> value provided can be supported well and good but if it cannot be supported,
> we do our default thing from next iteration onward.
> 
> 
> > 
> > > +};
> > The enum is about the joiner, not about DP. intel_dp.h doesn't have
> > anything that requires the joiner type.
> 
> Agreed. This is more of a DSS CTL thing.
> 
> 
> Regards,
> 
> Ankit
> 
> > 
> > > +
> > >   struct link_config_limits {
> > >   	int min_rate, max_rate;
> > >   	int min_lane_count, max_lane_count;
