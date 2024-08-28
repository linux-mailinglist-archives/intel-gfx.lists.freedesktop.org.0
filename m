Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D115C96329B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADBF810E5B8;
	Wed, 28 Aug 2024 20:46:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JfDZYXnV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EE310E0AE;
 Wed, 28 Aug 2024 20:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724877978; x=1756413978;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0lzIN5TLjjUsVTp0MoG3Su5WNCzOdl5Tb1YkqzT8N0I=;
 b=JfDZYXnVTOGzbHrIL8ArIrkpxqVG5Wqu5P9NmEJWMN5Ko1/ZADNj12Gp
 sANYiZD5Q0mupkA9+nJGpCf0T/t/+ZG0No9wdyTY8BdvCSyLh/s2+f1Io
 faOnld0oYy1evx4Ad800wmbwV6B001WsQp4pGgqtVIf8OMxjQLvkRIwg0
 67hp8P+fHdIMZQbzNMKvU4ZRYt5KJzVtjKqsR7ZiGtfHCHe8uWy2e276I
 yT45mI0npvH/3GJ4mAjiowYJvRcUpsjJSlAgMUk3FsMJ2vRfvrGxrXJYA
 Nd0fJ8JOYoooO431YtUpYExYi8Gfl/sLit7yHJWTPgAy6dSrDs9gPSHPr g==;
X-CSE-ConnectionGUID: hKzRd7VMTcOTLEUYs22f/Q==
X-CSE-MsgGUID: /+Tq1IdxRN+BrYeGvZ1ymQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="27204335"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="27204335"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:46:16 -0700
X-CSE-ConnectionGUID: LHxaPbHHQli5xoRo2QzkYg==
X-CSE-MsgGUID: DGjOrsmaQm2D691QSxdr/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="63683744"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:46:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:46:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:46:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:46:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:46:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LpfgsGk/hS5h0SIiazwsWfn67Oa6ib6fOKlg3qVRDZnFg+h5SKPb5YUx4pvDLgJQgiExIBjBTzXnEXofUYQZfvrRuOGg6K6La0krfjfLC6FrV4Zoj/P7aZnWfpvvtWlE/sLz1JniC3CKPzfeFGbDWvgDBxXaHuDonL2GPwVFZjj7NAgtoHsDYAVoRTGSVvIzsmBmSIjNoD5GCIR5B9wbd//dUuMIasoglupzJKMqpVXGItL8LGPl5XpwL4Q6HsXFYvMLoGRgvSC8DMJy055ZnASwvtinx/6jSpOIiWfyl1lpJILy3oHffLEnF7ClvRQh9+05MjAgY/ggem/bq4kfCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v3BXNDuUOTjJqi2bysZ1Umfb0meh2wpyMNJ9evQf+3o=;
 b=hm6ulOJyBRvOc1mKw6cqe8VWruLuReAF4EZwVwHF8QFMrJt/+v6Bftdza2jETnkPs6DWSEj41gntvv5yT3CCfaDkct+a2IRDCBrTW1EoeTtFw7qnKdmBKeP7qwp8uYyfvOIBQoY1IL/FP6GojOnjUSXz0i60GakLjRaoS69//Sg6GoIKBnp+jmW8SoBhdDDK5F0eqX6iU88J8buXEgUSGY0uesDltdhvFtfLCDiXFbB3NxvG1mLTr8g5kdaO57fOBgvt6cK1JafTp8dMKQupr8xG0qtuau1yfJSTLA2h07yk9hzb1ZE4gJ4+HV054aA/FpYtAMT61Gp+cSe/xFHKGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by LV8PR11MB8559.namprd11.prod.outlook.com (2603:10b6:408:1e6::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 20:46:11 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:46:11 +0000
Date: Wed, 28 Aug 2024 16:46:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 4/9] drm/i915/display: add display platforms structure
 with platform members
Message-ID: <Zs-MkBk6H2kGFikF@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <0a0323da6ef02481187eae2c72df9eb0c8f1f2e7.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0a0323da6ef02481187eae2c72df9eb0c8f1f2e7.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0303.namprd03.prod.outlook.com
 (2603:10b6:303:dd::8) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|LV8PR11MB8559:EE_
X-MS-Office365-Filtering-Correlation-Id: 49de7211-8d05-401a-1044-08dcc7a27386
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Sh2lpFp1eSI81QKyuhct9jEUH6+oCmgd6no1xLX1uXYDYeDX6ynFWqa7vSjO?=
 =?us-ascii?Q?WYFDyXVgWrjICTFyTel5/roxiztVEPI/Hh4EKzPWR2ibagWyNRFhKqTu2zaz?=
 =?us-ascii?Q?ZZsHGdl9C9L5QrWu7Jxr/PZYxc+QPwkDa4w4/UElfyyroU/s9dW6SsBYI2ZG?=
 =?us-ascii?Q?6pja9FyjqtHKcVpgPip/4EWEP3TcOO3IaBkUH6APp4/Lt0Tr8iFElm0DKAU8?=
 =?us-ascii?Q?6A06t/3cCyQAsD7SvFlFS8hTBmiMURpk6r/5URBCMxyxZ5IW9mQqDPtvozBP?=
 =?us-ascii?Q?xmQEKxyJDHhij9sZyj492xtNL0lJ0HAavLhUYUa6N2bKw6x/tXToZvOqJA/W?=
 =?us-ascii?Q?FnwGLrzdQNzhl+uKZB1ICK50Eh4ojBzM0GSoBO6NzqsYGAJsxBTogU2VMA3j?=
 =?us-ascii?Q?MMnLuesCKzCHaOTdVLPnSed3D6x0LLU2u00eTlUr2c4ENSGiO599o/bfqqzU?=
 =?us-ascii?Q?QbYcZbg6c/2OaYn85ixHfKGPtczNbI1jYMTvW0iMx6gGAFmQoLJ7/DbjigRr?=
 =?us-ascii?Q?9Pf+V6z9AzHcCYdZsjf/KkiTxIRyNBjRSreHmQcLDT6/1dc7gAbgjQa/geee?=
 =?us-ascii?Q?mX1ym8nzNgSxBOW7vPSVu3iGnPsLC4Dk9C8CDWkQfu+wHYViaC+3YVAs/N8h?=
 =?us-ascii?Q?1/TM7P4H3CwAu/WX0XqXSmbG9Xpf2ZKX0NEW6lyo02pYv8Jp5A9uHRxCNOOc?=
 =?us-ascii?Q?M+I8bu05jOal66a8VEcOqRFTPjEtiN1nx5IkC8kU8MKRbgWfEq3nPsKPlIvO?=
 =?us-ascii?Q?gO2sDPdbVAjXQ2aWuZA84xLWFB56+w1qLmy35x8Zb1IwXepXEaNkKhloNvJR?=
 =?us-ascii?Q?ZVu2autIvnEjP/C7vS0RvD8k40dbJGWmBICQ+PK/wY3Tb1LrUREoj48Ls8Wk?=
 =?us-ascii?Q?B6ATaatpcB0Lfga4Ma9uhrk2CAeqR9B4QS+xUhGlVA/MsLfcF52x/gtZU+m8?=
 =?us-ascii?Q?kOmDkcEwmWfbSzxaJoNRhzzSzlzxX7vQ9O/lKkEr4iZDhBo3lQFHu6ABwOvg?=
 =?us-ascii?Q?rwFUQeQGLnenQEWVu6ofqO61L6g7O6aSYRX6Fy5il+vMidSyq9dGFPlrIdoJ?=
 =?us-ascii?Q?DIciyi6Eqhnp3MOOsa6n8NmFA8onYb7LHiOMyexWpBovGr65AnCVVq1HjIil?=
 =?us-ascii?Q?IF/hEkqgdZ3qp4ZvYKFz/TtkpIP+UWZTsNP6fPvJtFWCd2eSPijZZ75i0+YN?=
 =?us-ascii?Q?P+GRZ01y/ZJIJsfPZQ6V/2fKvAu3mg2h8Q1Hcxvor/4XfWCoux+sZsDtvRSS?=
 =?us-ascii?Q?FV+uIn0Hx/lzZHWUS7nonpONI/PBxmIW8EDgOJa/uUpcsZLv6vVCUCcgoqYL?=
 =?us-ascii?Q?E18sZegHUhKoYlCU0QgSk/8zATvJjcPDiTeSzUFJ4vPMFA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jB3EvKtMcaQA8OBzSZc35QjrOzWLMkZhvkrKmlcDuN2a5n1KSj/7euquo410?=
 =?us-ascii?Q?QFqmpxmLfR4PyvHL5zbEqu4F/rtatIFxp7iW5Rf4EuXaM2VOG4Know25HLjb?=
 =?us-ascii?Q?XT1tdqs62HnrfYQ68uNeQSIM++lhmirSsU5u1Z8QelUUyy35AjxMKMflgnF1?=
 =?us-ascii?Q?5jUWUlxYwkGgK2UZuctmyBLfPENi59QHcxPtX6l1wnF16XKXA/+8SLpzuWzL?=
 =?us-ascii?Q?40YS04Zeeg6ekBX2y/xABJ6p7NloUm9G1Z1KwCcSHLzlkiNTN8DjVk/OTlt0?=
 =?us-ascii?Q?MBf1cnaVkmzazOdDtNLLnKvmk0VHvY8LgjezsPLlHxpowmJM8dRhRVBL79wm?=
 =?us-ascii?Q?UeP9tsTE1IMaDGJy2L16BvOJg1kubdhVk3preswrb9SdHMXA9eHXO0lwObEZ?=
 =?us-ascii?Q?7trtQ1IJzvghkFB2Aq6nb/L1rwf9xfAIaAJgvSpEPsNi0sn3guDHvvQ+VbnC?=
 =?us-ascii?Q?AYTJOTVWhPoofKrzEmUAPpyY5yuKYiNFaPF8PQmayQVeC9LuLh6OToTLI5u2?=
 =?us-ascii?Q?stcQD+h4PdVLq8se+3wUZwgaGWHkJwU5+N5lBLDraBTzVwYRr9h08N/IFL1N?=
 =?us-ascii?Q?vO2gSNOOBsoY3pPxTYL42Q9+ouAVoV7q0tT2fTqaVqPE51mJIjMsYRKsWTdo?=
 =?us-ascii?Q?GzwtUwWoMx/NJObGyBIhPg3eLAcZxc7KHNgKU4wGtml2f/ySqNwheJv34VpC?=
 =?us-ascii?Q?jpny91J+xLBXj5bnDhuwbaRu6HFOwSVMJ7feHTchLZtxYGhOpfkZroOOo+Kq?=
 =?us-ascii?Q?cCPrpgG+RBtnfl2ih0Ln6ogAe7GCpdcd2LKJx7kpiZHvNE7yPB/hT0HS1fT/?=
 =?us-ascii?Q?hIefk5H024p3uPWeOIgRgQt9ORczAeldISyXfvVCwTNCai2VDaYC7EV/8u0Y?=
 =?us-ascii?Q?G1SX59rvTqx14wDCOdembUuWtqTtI6lpKhWLTi5YqwfG/275S7wR+MPJnu0a?=
 =?us-ascii?Q?oxqzcZyUQ8+qeIEYll4IHAw3RRuaFhHHpbkb+S5v+w+8ffX69r6cwsG3HVkj?=
 =?us-ascii?Q?x4yek0WvNnTiCHWhSgeVr36m+d95yXI6nV8EJkKvyz7oX6aGmg5fWUR95Yfs?=
 =?us-ascii?Q?gDpoddNXg1iAChxOHL8oSsm80z7szEIrqecLXH1ZyIQ3xqndGgaJDUEW57l4?=
 =?us-ascii?Q?AFwDvnnV0GHXldpteXT/xWF1BM1uNoI8va5o36FZgNixcv+o8WwAZa5nT7xJ?=
 =?us-ascii?Q?r8zRyJozaHnQYaRCFrohBNvITaiuK8AWzJMK9pS6/yqWqtoCnnXsmvtq/lCH?=
 =?us-ascii?Q?FjqyVtD0DRx5zX1lZU3HH3YTGWtlTHSvSJc58wvH6t5TI5zm+UmC42cNiFVt?=
 =?us-ascii?Q?9RrqAoItZofqIfyjfoAWYyB4z9lNByptikYTjeEbUhf54pbDCi+l+DZYLau8?=
 =?us-ascii?Q?YkeJGJeC5hytvHRULH8LZx5aWjui1rU8qCGG2d+IHurMepC82tTZC2xlH897?=
 =?us-ascii?Q?5ZXb+LA4DluRsXmqwJtUNEXJu1r8+CPqn9eoCItkLBKfZh/7p/CEqmuwEbCH?=
 =?us-ascii?Q?9fRTU5um3ew6SVxdHG/0hwNWsb70bXYqw4yZJKp3VHCSHjFOZb3D/G+CnWgO?=
 =?us-ascii?Q?wUkP5rP/JbVbX07izwuZGzUUmNdUSxJMKPWqNecIONFBbxlTj4ehxrNh1Uq2?=
 =?us-ascii?Q?AQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49de7211-8d05-401a-1044-08dcc7a27386
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:46:11.9072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xXyBmDwWL0EFiprMg8tSBuElWIPvH0bj/sUDj243NkHh2wpCupX6Ixtbg2j7kPQPxSTxMNJ1JekOaSxFivDOWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8559
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

On Mon, Aug 19, 2024 at 09:44:31PM +0300, Jani Nikula wrote:
> Add a structure with a bitfield member for each platform and
> subplatform, and initialize them in platform and subplatform descs.
> 
> The structure also contains a bitmap in a union for easier manipulation
> of the bits.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   |  8 ++++++--
>  .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
>  2 files changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 336cc8e717f5..55ab1923c8b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -21,6 +21,7 @@ __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
>  struct subplatform_desc {
> +	struct intel_display_platforms platforms;
>  	enum intel_display_platform subplatform;

singular and plural here gets a bit confusing as well...
perhaps we should change the enum to something else?
intel_display_plat_names :/


But well, again, I'm bad with names and without anything better to suggest:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	const char *name;
>  	const u16 *pciidlist;
> @@ -28,9 +29,11 @@ struct subplatform_desc {
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
>  	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
> -	.name = #_subplatform
> +	.name = #_subplatform,						\
> +	.platforms._platform##_##_subplatform = 1
>  
>  struct platform_desc {
> +	struct intel_display_platforms platforms;
>  	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
> @@ -39,7 +42,8 @@ struct platform_desc {
>  
>  #define PLATFORM(_platform)			 \
>  	.platform = (INTEL_DISPLAY_##_platform), \
> -	.name = #_platform
> +	.name = #_platform,			 \
> +	.platforms._platform = 1
>  
>  #define ID(id) (id)
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0a78f7438035..6f8814d1fabd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_DISPLAY_DEVICE_H__
>  #define __INTEL_DISPLAY_DEVICE_H__
>  
> +#include <linux/bitops.h>
>  #include <linux/types.h>
>  
>  #include "intel_display_conversion.h"
> @@ -101,6 +102,24 @@ enum intel_display_platform {
>  
>  #undef __ENUM
>  
> +#define __MEMBER(name) unsigned long name:1;
> +#define __COUNT(x) 1 +
> +
> +#define __NUM_PLATFORMS (INTEL_DISPLAY_PLATFORMS(__COUNT) 0)
> +
> +struct intel_display_platforms {
> +	union {
> +		struct {
> +			INTEL_DISPLAY_PLATFORMS(__MEMBER);
> +		};
> +		DECLARE_BITMAP(bitmap, __NUM_PLATFORMS);
> +	};
> +};
> +
> +#undef __MEMBER
> +#undef __COUNT
> +#undef __NUM_PLATFORMS
> +
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> -- 
> 2.39.2
> 
