Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D52D69742C9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 20:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 579C310E8F3;
	Tue, 10 Sep 2024 18:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKZ+SBUy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67E4310E8F3;
 Tue, 10 Sep 2024 18:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725994445; x=1757530445;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=alfE9Ulnj4fFfe7vMxetiOH8sicCujr6+b/hGfwX7vs=;
 b=jKZ+SBUyOh11VCjahkoa2hHP0W4tZ34hbp7dehj/NTzi936febAnUrTz
 xfV4T+uOJ6LyyoB7zPiKGHKEMOk0KtL/LWJFe/Y8yL9hb+v6cyFXpiepY
 omDyxL2qEozf8E4rmR88VTspuhz/O8TKNPOV95r5CmGBY/6cm3pe30WDO
 RTAWScj1e/jNnb3sHbqMJD7FA7BXoqw25txcNhofLcB4HN3D5gmMcqJa8
 WjcmK7vHmKJn46G1h4se6mT46+2d+QG4VoDh06Vue2DeoeU1k9eliqLAZ
 neC/UHOSUYwOOCUx+DINLAWZTobDHPubxm4v+MEIW5HWx/TjBBsccvARH A==;
X-CSE-ConnectionGUID: 5gW/ZXwgQ4adcdQpC864Vg==
X-CSE-MsgGUID: uJsa2m0pTbGJ0CEfIJCanA==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="24961727"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="24961727"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 11:54:04 -0700
X-CSE-ConnectionGUID: yFOX36EORx2JNwjlJ84DcQ==
X-CSE-MsgGUID: Z2LPgAmmT0OpB6xTR8/LMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="71917432"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 11:54:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 11:54:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 11:54:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 11:54:02 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 11:54:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jLDRzSOIahUDvVEVzq77uAna6vzbnTnRTAH2PGMn0NOFf0ltn1H2AFOWADMKKV5CcpPQmdBkOEEpj0Z7m8Uz0QaDUkLN760FtalCLrpm2u/9X9ZLYCzcpDcFyEUdu/KTwmJT9EPN+ufLYPE70jes32mcFFf65zLnaGtTSN45OynFaX0d6vlHMzdtT32CD67OC6CsWSIUNa4jqOxWhhMXRXMi5ad32Lwbj/MP8uQIsBtlivZObd9tuvIeQqvgyEI1/i201pe7J5z+X5VJ4HUMhWPUjNeURV+bQbWo1eyR5K0TbdFtU+xcWnFWfgmdOf7HK1RgtCr0Td3ZPjGIs1HSjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBU80NIBySBejhAHboapoHdwGWgIk7ypbQDWcycsZNQ=;
 b=s1zxTIxncyN6eC9zb6Lv782nawTr6aZ5GkQO5zi5RnepQ0ygkmCFgXOZlpecNCndL5y4BfKc0gG9XEEWSQSK9t3QTqZ/VwcL26DQkMlVT3OeayXf2n9I29NS5gRIn1FH7+HlW2dc8sE2zR2WqL2HpgEuh93JDCOpDB/zF74MLrWkuGjHzuBOUQvs4G/Yiho7HADCn6DVdxAm/fUXelJJ6P4ci8y+stHwIaRdNN1MfM0whl7T/OL7PgoO+9rR8It7v8VjKlywEA6LJc8uQeEiD3ffNiAuGNdInnxD7LyoFCURlMZn9A9edjUASzdN5NZofaIEYaMlyIjeumPJ7zpecg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB6384.namprd11.prod.outlook.com (2603:10b6:8:8a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 10 Sep
 2024 18:54:00 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 18:54:00 +0000
Date: Tue, 10 Sep 2024 14:53:56 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 8/8] drm/xe: switch to common PCI ID macros
Message-ID: <ZuCVxDW02gbFVDY3@intel.com>
References: <cover.1725297097.git.jani.nikula@intel.com>
 <5e703ab69846d519335f3e7f5bcf84ff1704cd09.1725297097.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5e703ab69846d519335f3e7f5bcf84ff1704cd09.1725297097.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0226.namprd04.prod.outlook.com
 (2603:10b6:303:87::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB6384:EE_
X-MS-Office365-Filtering-Correlation-Id: ecc4e59c-a77d-4e08-a0d9-08dcd1c9ee45
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?dL77cT6gwlnhLkyg5Eh41gAG1qFmntkDDZSJbWumg5HPs1ydobNEV3Bx5x?=
 =?iso-8859-1?Q?w4NXILpcMgF+A0g8kRhS4olLz5rphvmFH+Aa0yGdXT9ZxR0ljjhn/xyUK2?=
 =?iso-8859-1?Q?jsxz+LZgV9NQMrXLQpkIZcaqK+iULHa6ifJeGscn4XJ5/55I9K2D9wYd1M?=
 =?iso-8859-1?Q?Qi6tLM9QtERObwt90dwkNFv3GCKnPLx4D68+yK8tLlaUOepEEJCynrbrDE?=
 =?iso-8859-1?Q?BWMGi+0PoBuyUG34RyV5JXu87NY6CTi9gd1t9rdjttbtOayFGkli/uu7i9?=
 =?iso-8859-1?Q?hW7Xtub2nQ7m4jYAb3QjYyOiqzD4lbsCWja9PPrs+cL+Yp3HTlLa6ynpTp?=
 =?iso-8859-1?Q?UpgFxVhgslWkj7mRL7E5KHxXZ17cFAPpYmT3xsLSL47qSuksigDbA4C87u?=
 =?iso-8859-1?Q?O40bflA0xzfCkk1k2hbVk1g22zNJOEEq6stSDyGWoawMFaOGDMuuDP3+pF?=
 =?iso-8859-1?Q?0gQMI684oGWvCduupX7lRrvlhe5D2617BDAnw2p6jzjkFB8q6LtItyi38J?=
 =?iso-8859-1?Q?yzCuXhfew5j4Dtiz6+FsNtetKe/CG8IGdyWKJdRGe996u2c4s2QDgxISyX?=
 =?iso-8859-1?Q?o0R8NZv+7i8VGMkOs/NlYlZkLi90/UKTFgP6m3yRWOpPKoRNfAt5yPuDpM?=
 =?iso-8859-1?Q?PQgtnlyo6JlRpiDpqKdL+0uyvoAvvKshc/bQrbl6Kf9nsgdzpg7VCsF9Q0?=
 =?iso-8859-1?Q?hPWfmUVpEkU8YFm7vkZf78YlXHEtqXVxi//hkDSjgVEJT1RtbBOkBqRSEo?=
 =?iso-8859-1?Q?QFpFvBbOABeOzTbOaOPdO9zHwhkqLtgrYI1y9zQK9yvszjcJfgVhOx2+ma?=
 =?iso-8859-1?Q?q92eGv8mUdYE4jhg4FeLFAa3puHzxbrQPdbIzzdgvWRg/sHV9yKyHWl0Mv?=
 =?iso-8859-1?Q?MHAo8l2NyVxqzf/1u9a4HMkr3RxS8q7EKVSl4lqgMX1aXIaNoH1kbebiyE?=
 =?iso-8859-1?Q?jzV2JI3vueqJud+JNGFALnNTy2coWnRn3NQpJCAJBbd4FTerYha12LfBMX?=
 =?iso-8859-1?Q?pmlDR2Qpd5DsizJKnaw/giUBVAJkizmm6UWTp46IjQNLmcJHxJ5XDJht1+?=
 =?iso-8859-1?Q?HlCpS7IxT3lqiQbeGG/KMzVTyc8tdjCO1AiU6do8Ja1zvR12KLRUOUjQRg?=
 =?iso-8859-1?Q?B/jTxZRhvvJNGeWc0zd1LIvWCZEy/Z1BLxFX3jXUKPeAn0NHJfD2wYbn1/?=
 =?iso-8859-1?Q?f81ahFSpvXuDQ4IXW0Nd0pB5BFUcrnLxwFVaqSpd1nzR6oJiPK7B7MTT7n?=
 =?iso-8859-1?Q?hh18LxlAII4HLgYjEMnfbDDh0UcvMJNdCCdGZUwtYY9L0SsuPPEffBfbpy?=
 =?iso-8859-1?Q?mRzx4G1eoDkoBts2wtLXHFdbSN3d3W3Z0p7Vaff42SkOK7PnpVm+hHdM7O?=
 =?iso-8859-1?Q?StaFkwT/G+4ccR/ItuU5X3LCDSjHXEVg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?i6QGa7R6LqdLNyyBP9Hg83FYGhu8p97re6X0+N7yfKnJ1+Lc3yTe0ShpW9?=
 =?iso-8859-1?Q?x3SW0WeWJjcDN26kMBWc/ySYFjcli1hJcM24rjj+JM6/95T6twdcAL75QI?=
 =?iso-8859-1?Q?iFON5IGhFQAdbD/OySg4igiaggEjJJ82bHvg0gZ+aC95gWHTSk2gf0s445?=
 =?iso-8859-1?Q?nV42eL5GDaE0b9LBHEL7Pl2jFpmogV6+coEOFHKsf3dQ3bkh99SHOI6d+z?=
 =?iso-8859-1?Q?bTuFgI6w5i75EN/deERoZQcf8RO1P8MW3jKAuoEgvejjTNq0UZjuOZWok0?=
 =?iso-8859-1?Q?/UzNuIwDsBL30IJPRGfCyNwzm6X1dnk4K7ixbbYG14hqY14d9WBqskB+Jt?=
 =?iso-8859-1?Q?syUkftF4j+zOeivwc+jLbqb4bOj5GBqQJDNRhezAJIElhjY6tO9OrY+mR9?=
 =?iso-8859-1?Q?C3ZkvQjESyhuTIJnTbypQ18YTQHafukwd9FUPLGK30lUx+dTKWhQ9tH1AQ?=
 =?iso-8859-1?Q?T4JWdt9WCW78OiLNYnIE//r/+8laT5kOSxEW6muPTf7uOby6mf4M42b/uX?=
 =?iso-8859-1?Q?uP1JJLCCoK825OMrIS1mLcaFYbAprnVkQPQMmSc9E7zIpazYq+jJqHPCbO?=
 =?iso-8859-1?Q?MftYxrCx13yFuwsYzjtyG+jlhL2FeO0la/smwCQfoC5XN4Eh97ktdjSlPR?=
 =?iso-8859-1?Q?z7OpUIuPlKMWYPuAr0DU7jTHKr2htI7TD7RMXMQDz6Zw3PjzF0Z7O3anuB?=
 =?iso-8859-1?Q?ANpibBQEo2Rzce160hskC9K3kcIqd9aA5GOMOjLNJxOAInfvXGxMaTu5aN?=
 =?iso-8859-1?Q?PvYCYIohR4Zg+wM+XcEWGcNOXGioAK+WMLgS/maFHp7saiQVascv3VBaOV?=
 =?iso-8859-1?Q?LIVzUUmt+TLJDfN1bOib+HrmGLXzunbuZ1/xcKZuWJg8kSzKMkrRycSC0Z?=
 =?iso-8859-1?Q?ycRUsGEvlEcRBsfeo7VOt9OwlZOW4NngPl4Qagc9Dp3IN6wPZBvfsB++P6?=
 =?iso-8859-1?Q?U6Cq+RBkub8w25i1mj3mMs3+hdCgYkTsgdq/U97A44dFmCCF1VP5CH8CT8?=
 =?iso-8859-1?Q?zqHW46wLue7veFgPjNMmGZQarQ2P76J9nfSGk49DZ8exNiO1tLzQdXZmYc?=
 =?iso-8859-1?Q?kLu5KNr3jmlNwaNhlUrNQUX3bRxFe0CPcDCc2+m9qaXXC8uAXeUl+c/neR?=
 =?iso-8859-1?Q?EgQGtv/ko6NRFGOSzKjVnRfTpBLYFwv0i31rsrcwzru45Z08EQtgLPhLjC?=
 =?iso-8859-1?Q?U8L5U5RuUROJX7jee06ZAi2XREhWcj/ExiYyPgau6APrsiN94Q/TsNjo2m?=
 =?iso-8859-1?Q?TeVwxnPBhcZa12AFuI4jkizCQROeDVukHBc3ZgawDj/Nib2t+xwgjXftIP?=
 =?iso-8859-1?Q?SzlK1ymAZVLinAwWEiyTOkpTldtrfQj19NbZ3ewa5tjBjypfPrhOh49AQg?=
 =?iso-8859-1?Q?hS6iVXSTod6ioc5mtuY7a0CwUZIJ3VFK5Vfh058CdojYHv8NeovRrg5dam?=
 =?iso-8859-1?Q?Rox/ac4iscHCQpLsnq1xUWrLDnLfcp4hFrrYJMqvHXMlw5CGYTOamITbID?=
 =?iso-8859-1?Q?IBWS3uNWxrvBzQiht5hrR60kBzo+htkuBwHBgs5XXPQ2f5v53F8G++sf4F?=
 =?iso-8859-1?Q?pYcUpWmerniDjr0O2ZdVcpo9ZFJeGC/cvtU14tNiv18lIrfSSa3zEef7Mr?=
 =?iso-8859-1?Q?GH7/eC3HssL4Y07WDsuVTloCBnAtUWUlb8ZV0HcfSRtknV39VJu3Y9Dg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc4e59c-a77d-4e08-a0d9-08dcd1c9ee45
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 18:54:00.2794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jueySgwjDlkbxUWzsu7VJmw0xyTMgVX1eo477gftKKTZ2jKdyyCABQkKlELM44RxytE2d8Yp2YkbevcqKyd8Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6384
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

On Mon, Sep 02, 2024 at 08:14:07PM +0300, Jani Nikula wrote:
> Switch to the shared PCI ID macros in drm/intel/pciids.h. Remove
> xe_pciids.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_pci.c   |  51 ++++----
>  include/drm/intel/xe_pciids.h | 222 ----------------------------------
>  2 files changed, 22 insertions(+), 251 deletions(-)
>  delete mode 100644 include/drm/intel/xe_pciids.h
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 5c5eef2ae725..cc7c24549c65 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -13,7 +13,7 @@
>  
>  #include <drm/drm_color_mgmt.h>
>  #include <drm/drm_drv.h>
> -#include <drm/intel/xe_pciids.h>
> +#include <drm/intel/pciids.h>
>  
>  #include "display/xe_display.h"
>  #include "regs/xe_gt_regs.h"
> @@ -234,7 +234,7 @@ static const struct xe_device_desc rkl_desc = {
>  	.require_force_probe = true,
>  };
>  
> -static const u16 adls_rpls_ids[] = { XE_RPLS_IDS(NOP), 0 };
> +static const u16 adls_rpls_ids[] = { INTEL_RPLS_IDS(NOP), 0 };
>  
>  static const struct xe_device_desc adl_s_desc = {
>  	.graphics = &graphics_xelp,
> @@ -250,7 +250,7 @@ static const struct xe_device_desc adl_s_desc = {
>  	},
>  };
>  
> -static const u16 adlp_rplu_ids[] = { XE_RPLU_IDS(NOP), 0 };
> +static const u16 adlp_rplu_ids[] = { INTEL_RPLU_IDS(NOP), 0 };
>  
>  static const struct xe_device_desc adl_p_desc = {
>  	.graphics = &graphics_xelp,
> @@ -289,9 +289,9 @@ static const struct xe_device_desc dg1_desc = {
>  	.require_force_probe = true,
>  };
>  
> -static const u16 dg2_g10_ids[] = { XE_DG2_G10_IDS(NOP), XE_ATS_M150_IDS(NOP), 0 };
> -static const u16 dg2_g11_ids[] = { XE_DG2_G11_IDS(NOP), XE_ATS_M75_IDS(NOP), 0 };
> -static const u16 dg2_g12_ids[] = { XE_DG2_G12_IDS(NOP), 0 };
> +static const u16 dg2_g10_ids[] = { INTEL_DG2_G10_IDS(NOP), INTEL_ATS_M150_IDS(NOP), 0 };
> +static const u16 dg2_g11_ids[] = { INTEL_DG2_G11_IDS(NOP), INTEL_ATS_M75_IDS(NOP), 0 };
> +static const u16 dg2_g12_ids[] = { INTEL_DG2_G12_IDS(NOP), 0 };
>  
>  #define DG2_FEATURES \
>  	DGFX_FEATURES, \
> @@ -370,11 +370,6 @@ static const struct gmdid_map media_ip_map[] = {
>  	{ 2000, &media_xe2 },
>  };
>  
> -#define INTEL_VGA_DEVICE(id, info) {			\
> -	PCI_DEVICE(PCI_VENDOR_ID_INTEL, id),		\
> -	PCI_BASE_CLASS_DISPLAY << 16, 0xff << 16,	\
> -	(unsigned long) info }
> -
>  /*
>   * Make sure any device matches here are from most specific to most
>   * general.  For example, since the Quanta match is based on the subsystem
> @@ -382,28 +377,26 @@ static const struct gmdid_map media_ip_map[] = {
>   * PCI ID matches, otherwise we'll use the wrong info struct above.
>   */
>  static const struct pci_device_id pciidlist[] = {
> -	XE_TGL_IDS(INTEL_VGA_DEVICE, &tgl_desc),
> -	XE_RKL_IDS(INTEL_VGA_DEVICE, &rkl_desc),
> -	XE_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
> -	XE_ADLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
> -	XE_ADLN_IDS(INTEL_VGA_DEVICE, &adl_n_desc),
> -	XE_RPLU_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
> -	XE_RPLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
> -	XE_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
> -	XE_DG1_IDS(INTEL_VGA_DEVICE, &dg1_desc),
> -	XE_ATS_M_IDS(INTEL_VGA_DEVICE, &ats_m_desc),
> -	XE_DG2_IDS(INTEL_VGA_DEVICE, &dg2_desc),
> -	XE_PVC_IDS(INTEL_VGA_DEVICE, &pvc_desc),
> -	XE_ARL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
> -	XE_MTL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
> -	XE_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
> -	XE_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
> +	INTEL_TGL_IDS(INTEL_VGA_DEVICE, &tgl_desc),
> +	INTEL_RKL_IDS(INTEL_VGA_DEVICE, &rkl_desc),
> +	INTEL_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
> +	INTEL_ADLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
> +	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, &adl_n_desc),
> +	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
> +	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &adl_p_desc),
> +	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_desc),
> +	INTEL_DG1_IDS(INTEL_VGA_DEVICE, &dg1_desc),
> +	INTEL_ATS_M_IDS(INTEL_VGA_DEVICE, &ats_m_desc),
> +	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &dg2_desc),
> +	INTEL_PVC_IDS(INTEL_VGA_DEVICE, &pvc_desc),
> +	INTEL_ARL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
> +	INTEL_MTL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
> +	INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
> +	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
>  
> -#undef INTEL_VGA_DEVICE
> -
>  /* is device_id present in comma separated list of ids */
>  static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
>  {
> diff --git a/include/drm/intel/xe_pciids.h b/include/drm/intel/xe_pciids.h
> deleted file mode 100644
> index 67baa7c2246a..000000000000
> --- a/include/drm/intel/xe_pciids.h
> +++ /dev/null
> @@ -1,222 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2022 Intel Corporation
> - */
> -
> -#ifndef _XE_PCIIDS_H_
> -#define _XE_PCIIDS_H_
> -
> -/*
> - * Lists below can be turned into initializers for a struct pci_device_id
> - * by defining INTEL_VGA_DEVICE:
> - *
> - * #define INTEL_VGA_DEVICE(id, info) { \
> - *	0x8086, id,			\
> - *	~0, ~0,				\
> - *	0x030000, 0xff0000,		\
> - *	(unsigned long) info }
> - *
> - * And then calling like:
> - *
> - * XE_TGL_12_GT1_IDS(INTEL_VGA_DEVICE, ## __VA_ARGS__)
> - *
> - * To turn them into something else, just provide a different macro passed as
> - * first argument.
> - */
> -
> -/* TGL */
> -#define XE_TGL_GT1_IDS(MACRO__, ...)		\
> -	MACRO__(0x9A60, ## __VA_ARGS__),	\
> -	MACRO__(0x9A68, ## __VA_ARGS__),	\
> -	MACRO__(0x9A70, ## __VA_ARGS__)
> -
> -#define XE_TGL_GT2_IDS(MACRO__, ...)		\
> -	MACRO__(0x9A40, ## __VA_ARGS__),	\
> -	MACRO__(0x9A49, ## __VA_ARGS__),	\
> -	MACRO__(0x9A59, ## __VA_ARGS__),	\
> -	MACRO__(0x9A78, ## __VA_ARGS__),	\
> -	MACRO__(0x9AC0, ## __VA_ARGS__),	\
> -	MACRO__(0x9AC9, ## __VA_ARGS__),	\
> -	MACRO__(0x9AD9, ## __VA_ARGS__),	\
> -	MACRO__(0x9AF8, ## __VA_ARGS__)
> -
> -#define XE_TGL_IDS(MACRO__, ...)		\
> -	XE_TGL_GT1_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_TGL_GT2_IDS(MACRO__, ## __VA_ARGS__)
> -
> -/* RKL */
> -#define XE_RKL_IDS(MACRO__, ...)		\
> -	MACRO__(0x4C80, ## __VA_ARGS__),	\
> -	MACRO__(0x4C8A, ## __VA_ARGS__),	\
> -	MACRO__(0x4C8B, ## __VA_ARGS__),	\
> -	MACRO__(0x4C8C, ## __VA_ARGS__),	\
> -	MACRO__(0x4C90, ## __VA_ARGS__),	\
> -	MACRO__(0x4C9A, ## __VA_ARGS__)
> -
> -/* DG1 */
> -#define XE_DG1_IDS(MACRO__, ...)		\
> -	MACRO__(0x4905, ## __VA_ARGS__),	\
> -	MACRO__(0x4906, ## __VA_ARGS__),	\
> -	MACRO__(0x4907, ## __VA_ARGS__),	\
> -	MACRO__(0x4908, ## __VA_ARGS__),	\
> -	MACRO__(0x4909, ## __VA_ARGS__)
> -
> -/* ADL-S */
> -#define XE_ADLS_IDS(MACRO__, ...)		\
> -	MACRO__(0x4680, ## __VA_ARGS__),	\
> -	MACRO__(0x4682, ## __VA_ARGS__),	\
> -	MACRO__(0x4688, ## __VA_ARGS__),	\
> -	MACRO__(0x468A, ## __VA_ARGS__),	\
> -	MACRO__(0x468B, ## __VA_ARGS__),	\
> -	MACRO__(0x4690, ## __VA_ARGS__),	\
> -	MACRO__(0x4692, ## __VA_ARGS__),	\
> -	MACRO__(0x4693, ## __VA_ARGS__)
> -
> -/* ADL-P */
> -#define XE_ADLP_IDS(MACRO__, ...)		\
> -	MACRO__(0x46A0, ## __VA_ARGS__),	\
> -	MACRO__(0x46A1, ## __VA_ARGS__),	\
> -	MACRO__(0x46A2, ## __VA_ARGS__),	\
> -	MACRO__(0x46A3, ## __VA_ARGS__),	\
> -	MACRO__(0x46A6, ## __VA_ARGS__),	\
> -	MACRO__(0x46A8, ## __VA_ARGS__),	\
> -	MACRO__(0x46AA, ## __VA_ARGS__),	\
> -	MACRO__(0x462A, ## __VA_ARGS__),	\
> -	MACRO__(0x4626, ## __VA_ARGS__),	\
> -	MACRO__(0x4628, ## __VA_ARGS__),	\
> -	MACRO__(0x46B0, ## __VA_ARGS__),	\
> -	MACRO__(0x46B1, ## __VA_ARGS__),	\
> -	MACRO__(0x46B2, ## __VA_ARGS__),	\
> -	MACRO__(0x46B3, ## __VA_ARGS__),	\
> -	MACRO__(0x46C0, ## __VA_ARGS__),	\
> -	MACRO__(0x46C1, ## __VA_ARGS__),	\
> -	MACRO__(0x46C2, ## __VA_ARGS__),	\
> -	MACRO__(0x46C3, ## __VA_ARGS__)
> -
> -/* ADL-N */
> -#define XE_ADLN_IDS(MACRO__, ...)		\
> -	MACRO__(0x46D0, ## __VA_ARGS__),	\
> -	MACRO__(0x46D1, ## __VA_ARGS__),	\
> -	MACRO__(0x46D2, ## __VA_ARGS__),	\
> -	MACRO__(0x46D3, ## __VA_ARGS__),	\
> -	MACRO__(0x46D4, ## __VA_ARGS__)
> -
> -/* RPL-S */
> -#define XE_RPLS_IDS(MACRO__, ...)		\
> -	MACRO__(0xA780, ## __VA_ARGS__),	\
> -	MACRO__(0xA781, ## __VA_ARGS__),	\
> -	MACRO__(0xA782, ## __VA_ARGS__),	\
> -	MACRO__(0xA783, ## __VA_ARGS__),	\
> -	MACRO__(0xA788, ## __VA_ARGS__),	\
> -	MACRO__(0xA789, ## __VA_ARGS__),	\
> -	MACRO__(0xA78A, ## __VA_ARGS__),	\
> -	MACRO__(0xA78B, ## __VA_ARGS__)
> -
> -/* RPL-U */
> -#define XE_RPLU_IDS(MACRO__, ...)		\
> -	MACRO__(0xA721, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A1, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A9, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AC, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AD, ## __VA_ARGS__)
> -
> -/* RPL-P */
> -#define XE_RPLP_IDS(MACRO__, ...)		\
> -	MACRO__(0xA720, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A0, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A8, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AA, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AB, ## __VA_ARGS__)
> -
> -/* DG2 */
> -#define XE_DG2_G10_IDS(MACRO__, ...)		\
> -	MACRO__(0x5690, ## __VA_ARGS__),	\
> -	MACRO__(0x5691, ## __VA_ARGS__),	\
> -	MACRO__(0x5692, ## __VA_ARGS__),	\
> -	MACRO__(0x56A0, ## __VA_ARGS__),	\
> -	MACRO__(0x56A1, ## __VA_ARGS__),	\
> -	MACRO__(0x56A2, ## __VA_ARGS__),	\
> -	MACRO__(0x56BE, ## __VA_ARGS__),	\
> -	MACRO__(0x56BF, ## __VA_ARGS__)
> -
> -#define XE_DG2_G11_IDS(MACRO__, ...)		\
> -	MACRO__(0x5693, ## __VA_ARGS__),	\
> -	MACRO__(0x5694, ## __VA_ARGS__),	\
> -	MACRO__(0x5695, ## __VA_ARGS__),	\
> -	MACRO__(0x56A5, ## __VA_ARGS__),	\
> -	MACRO__(0x56A6, ## __VA_ARGS__),	\
> -	MACRO__(0x56B0, ## __VA_ARGS__),	\
> -	MACRO__(0x56B1, ## __VA_ARGS__),	\
> -	MACRO__(0x56BA, ## __VA_ARGS__),	\
> -	MACRO__(0x56BB, ## __VA_ARGS__),	\
> -	MACRO__(0x56BC, ## __VA_ARGS__),	\
> -	MACRO__(0x56BD, ## __VA_ARGS__)
> -
> -#define XE_DG2_G12_IDS(MACRO__, ...)		\
> -	MACRO__(0x5696, ## __VA_ARGS__),	\
> -	MACRO__(0x5697, ## __VA_ARGS__),	\
> -	MACRO__(0x56A3, ## __VA_ARGS__),	\
> -	MACRO__(0x56A4, ## __VA_ARGS__),	\
> -	MACRO__(0x56B2, ## __VA_ARGS__),	\
> -	MACRO__(0x56B3, ## __VA_ARGS__)
> -
> -#define XE_DG2_IDS(MACRO__, ...)		\
> -	XE_DG2_G10_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_DG2_G11_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)
> -
> -#define XE_ATS_M150_IDS(MACRO__, ...)		\
> -	MACRO__(0x56C0, ## __VA_ARGS__),	\
> -	MACRO__(0x56C2, ## __VA_ARGS__)
> -
> -#define XE_ATS_M75_IDS(MACRO__, ...)		\
> -	MACRO__(0x56C1, ## __VA_ARGS__)
> -
> -#define XE_ATS_M_IDS(MACRO__, ...)		\
> -	XE_ATS_M150_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
> -
> -/* ARL */
> -#define XE_ARL_IDS(MACRO__, ...)		\
> -	MACRO__(0x7D41, ## __VA_ARGS__),	\
> -	MACRO__(0x7D51, ## __VA_ARGS__),        \
> -	MACRO__(0x7D67, ## __VA_ARGS__),	\
> -	MACRO__(0x7DD1, ## __VA_ARGS__)
> -
> -/* MTL */
> -#define XE_MTL_IDS(MACRO__, ...)		\
> -	MACRO__(0x7D40, ## __VA_ARGS__),	\
> -	MACRO__(0x7D45, ## __VA_ARGS__),	\
> -	MACRO__(0x7D55, ## __VA_ARGS__),	\
> -	MACRO__(0x7D60, ## __VA_ARGS__),	\
> -	MACRO__(0x7DD5, ## __VA_ARGS__)
> -
> -/* PVC */
> -#define XE_PVC_IDS(MACRO__, ...)		\
> -	MACRO__(0x0B69, ## __VA_ARGS__),	\
> -	MACRO__(0x0B6E, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD4, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD5, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD6, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD7, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD8, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD9, ## __VA_ARGS__),	\
> -	MACRO__(0x0BDA, ## __VA_ARGS__),	\
> -	MACRO__(0x0BDB, ## __VA_ARGS__),	\
> -	MACRO__(0x0BE0, ## __VA_ARGS__),	\
> -	MACRO__(0x0BE1, ## __VA_ARGS__),	\
> -	MACRO__(0x0BE5, ## __VA_ARGS__)
> -
> -#define XE_LNL_IDS(MACRO__, ...) \
> -	MACRO__(0x6420, ## __VA_ARGS__), \
> -	MACRO__(0x64A0, ## __VA_ARGS__), \
> -	MACRO__(0x64B0, ## __VA_ARGS__)
> -
> -#define XE_BMG_IDS(MACRO__, ...) \
> -	MACRO__(0xE202, ## __VA_ARGS__), \
> -	MACRO__(0xE20B, ## __VA_ARGS__), \
> -	MACRO__(0xE20C, ## __VA_ARGS__), \
> -	MACRO__(0xE20D, ## __VA_ARGS__), \
> -	MACRO__(0xE212, ## __VA_ARGS__)
> -
> -#endif
> -- 
> 2.39.2
> 
