Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2246A27EED
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 23:55:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379A010E6FB;
	Tue,  4 Feb 2025 22:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrL5W/GJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80C8210E6FB;
 Tue,  4 Feb 2025 22:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738709732; x=1770245732;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HNrQBojlFp7RJ7yRSBxG7uROfzIUMfOAu/ApLVNqyOk=;
 b=nrL5W/GJ976/Im01qXaYYztlnTOrBvyPcQzZJt/d7eUXN7Bf7TQ6QgdO
 qsb1i6IiUfejYApjVrJ9i4Na9ORPJD9zxfsKKjKmkXqowzgfULkdgBehe
 cNCCj9Ik36PJ+AEGkXr/VaSunYDskzCVlDDrTzeBiy4KFYfJ/i6UCbLZX
 dmJNywl5rjHApks9wUhjJAUZYjl4/R+lKv4pI+0wdclO+lUed58C6uDW1
 wqJ73mtrqxQRR/Obss8LGgvTPpphBTfiQgERB+0ELn4dan5ZHBf4T+njT
 4zMZH738lpNJbTfg4uENwaVecR+XnM7fUc0WFHUNngzloWBfBdBWG9XQy Q==;
X-CSE-ConnectionGUID: bG24UTofRzKfQoKepoTp6g==
X-CSE-MsgGUID: C6zAW8KMSB+H9cjlHBwEng==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26860459"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="26860459"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:55:31 -0800
X-CSE-ConnectionGUID: faci3I5AQu+acPebMW156A==
X-CSE-MsgGUID: 5CZwvooLTAeCy3FAiY5wHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141617258"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 14:55:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 14:55:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 14:55:21 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 14:55:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qRvHto+/1hZutPADsUvoLJtX/cbvvBWJI5pcaEuHOckpWkmGweqITehGEGDx1OtQTi5b3RrzgGrPWDE6+iojzFNAxbfM+ldKhwMcWXibHR8r20NjAaodI1sYvB7+Dwgt3vZnr1ZVXLPPxDXBQ5jGWdi5PYOlcmIEKGquxWo9eLcXa9P6WK+eqBTO7GCEg/BXdhcX3OnHpafMpSf0FUiPglQfTdovdirPEQyPwHN2qcU6MrMIgRWLONSSXgInJe0HFIIwbN3vIWD95qxxOKHQMVPWE71ygjw6N0CHEtKip0aJhUZ6RZu1ak2BiGMD5ZKrWB3X8EiQZaWiwivbjJLctA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EICBfM0xmyKrhwlj2EEN2PRYb0N6wobNXsqCwjZkYaU=;
 b=d9GnsyfOiD6HWND+A/KbCifHcGNkwLjlnyC8OMUl4/wfW0W8wBpQZ9dB9PdPLTBURxYLMWC0UixVwAAjHbRcNVCA5XwBFoNtDmwqmRSo3g1u8Rfk35EDivwl5zxuEjsB6TBDGyzATcuQYdDtZas4VPEeZrtGaJ+LsW+XvwX1mZOLKHxrLDDdSety52Zk/LTsmplyMQ4np/SFxsz5v9o45hhuIyC1KLVaJ86jdbw05kyrMenA9JBSGVKstnCtafEXtpDyWtVhgmrnn4CkaCGkzpzjX740ivoN2oirvLcUdxdYbRShzwlWZIqnsMrvr3hq/6CJEXW5mgqle0ZaHgRAOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 22:55:19 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 22:55:19 +0000
Date: Tue, 4 Feb 2025 17:55:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/6] drm/i915/hdmi: move declarations for
 hsw_read/write_infoframe() to the right place
Message-ID: <Z6Ka1I4TWbS-g8IQ@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <e8cd28a3c46f06b9654df8b7990e1e6a1d9e18c1.1738677489.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e8cd28a3c46f06b9654df8b7990e1e6a1d9e18c1.1738677489.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0338.namprd04.prod.outlook.com
 (2603:10b6:303:8a::13) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 72a38679-3cfd-471c-9f8f-08dd456eff63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?l8Qmmw9tA5L1nTj5MVCSsP4uP6etVkfcjpJh5nNlAL8M0QXKFzvVhFF7mRV6?=
 =?us-ascii?Q?e9zZOuy9M8+gNEy4zLW7u/pspdX2q44lAwO0+KsWGWLzvwp+kU3MHGKDQ9cl?=
 =?us-ascii?Q?8jPrzhmB27CuwNblI+UYwNEkhYLgdGdFJPVhKI1c/pMEDYpTv7t60LiwbWvt?=
 =?us-ascii?Q?Q+zDqD7Nt+SZdgSZW3utjAb6wLvD0JQ0Vk2zXBJdgL6rmhMYDdLW+a4ZdCWb?=
 =?us-ascii?Q?lwQTpymHVQc5qhghSfwOpvhSx9OvfLpNGBBY+v6tJK1yr3JB8f1S3wXvHrNe?=
 =?us-ascii?Q?W8DGGLz/A15m58qgP+5fpR535sT1a2mz7mz+VNHFX8nHkFRon3oK5QDws8C/?=
 =?us-ascii?Q?6exi44splL3rHlSWu7dBkFwswHDN91KyHQOknfIJSXyNcd+r524IrPuUrScV?=
 =?us-ascii?Q?wAkhSOZKx0Sqk3RZgpsGcepwqr6DV4xNCv8B6KFnzK6tq8h1ullns86bmNhr?=
 =?us-ascii?Q?3OuAS1RAPc3g7qsC0xKUcOUBKf08Bzkr8V6r2+XODF8/1S5b9FEAvsTph6NS?=
 =?us-ascii?Q?amknxmQZyFaxSIj93+9A0XGra564XBfLUA3HEezrXAwV7h7+dT3RmdoRnIpS?=
 =?us-ascii?Q?xS0PvmF4MFd6R7Xp7TdFoV5WDI/1Rik1ECJSZBPyNqpdWne+mmiZBImjTAV6?=
 =?us-ascii?Q?MxpzakGFKatfjINut+Hf9O+OBWb+tk4e7LU/1Vvhl0YMUZtteAZbhTEjaP0U?=
 =?us-ascii?Q?nz7y4GyW4f9jYQrcgNSB74rjzuNIgXQolBIGAf/Tk9hbbEc78aJE7Ov3VOOr?=
 =?us-ascii?Q?pYdQjeQWU+/swOrDXsdJQODrIiqXAg65TjOYndG0eIiXXtQbsty1zBWsIZh1?=
 =?us-ascii?Q?v2elGpsjURMffAzaM7ihqwStsPlu74jZF/hnVtHxJuRx/3OwZNloZ39U27t8?=
 =?us-ascii?Q?ACFQ2V+3xhshKZ+DzBdWu+BABf+nocEtUdkWbPkZtmvIPGcQt5HxOUtPDZ0C?=
 =?us-ascii?Q?apu33gYXd6SO3R68kvJDwP99dkJ9vy3ZGpF/b0sdcjl8ABhoo1LgrHNyCXD1?=
 =?us-ascii?Q?6fwHBtNBLo5EnvRYf1jezwEDzzpEiFAndDnz+R9GN8qZUElbclKfva6Iyd+h?=
 =?us-ascii?Q?oXoNFMaAGhkBY8lS1SPyy/vCqPQp4cbzrXyRlVccj6uNmjhD0IDZPO0fC0zI?=
 =?us-ascii?Q?z0ZHqqRdAdHUq80uuWTE43oSb1Hhdi9ite5hmjkGOok/c0VKGnM66SIeayvl?=
 =?us-ascii?Q?zKw3PYIzvjaZPu78RWOPhdRbjwDUuhQ2VPZpWiZkBsw/wM0KlzFwcVwMUbk0?=
 =?us-ascii?Q?FbG+1Wfp5cYXxpkFTxBMFok9G3pLdIs7X7v/5E4+NFfLzUzx31ApZaddxn+H?=
 =?us-ascii?Q?x/y2ZwNp8Et9uogti/JUZ/u+1NIWmCA8AO7kCwpoLzQmXrkZ8FlfqG6t4vjG?=
 =?us-ascii?Q?CBKI5yqL+f3vP5vkDcZA/MW2hWP5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7kc0WSnYXd//byMAJtUCYiwqjOWNq3bH5tw5ZjVdGnhtdT8EkM06G5c03sRi?=
 =?us-ascii?Q?3t41LJqUh9HY4v/kVTag6LemkzESugzAVxpIgon8Nu4OMZTpdxX12qP6Tu/Y?=
 =?us-ascii?Q?0PfimRc+KjiOOwh1qle//I/Gt8AgLFGnqttvx1NIUMs8qMpA8EHdeiFYIWhu?=
 =?us-ascii?Q?e3AOb360BXzzb8066j6wTHRZBkn8dHioeY4+1AtYEA3BSjsxaxUJ+hGgIaRE?=
 =?us-ascii?Q?sypuLCr7TbRfqusCDcohgsKoQbh4upSWLly3JFTrjlZFI869l/jkkBiq8uaC?=
 =?us-ascii?Q?iXklL+t6CKsfKNFswd9CfN0qfH7DL3E5CVakhjYvQdFHgmvIZgA4phqa/lwU?=
 =?us-ascii?Q?p0CLDXGlL3w9fBTZnIhjuEIWUZvAuze1GXa67AqZMflvdP+baqxwXyiZfJ1v?=
 =?us-ascii?Q?Qld3yofwUvGYuFyTOLEtT75DGWb0yuj1WhaJd9DRGQvvoOMmeLVSJQfztNfX?=
 =?us-ascii?Q?aIMIp8TE9xQjj3h9M6all5sr4NCb3xKn31+RxtOwA7OdHpVqdLuNEkxuRft3?=
 =?us-ascii?Q?yOwvAq1z1snBzbElnd0Hvtq/pWAC5PrjfkfqbTqD9yfyg7ByLqbqOZTHZJdh?=
 =?us-ascii?Q?sKVzy9AdFQJtP5FLrMJ4Zf2Gfr1VRnTmppgCAfkZTNLJ8xJpkF1zgR8WlwmK?=
 =?us-ascii?Q?sYkqhw1gdRlwAFAixmnFKXES2bFtA75QKqmM4lOyLuPznhfXA8zJCnjrRsuh?=
 =?us-ascii?Q?IyH39K/biP9kZBRs8IhZj5zyj0OrLTnUTS+HzJ4juocvqWnWB/FCjR3nLCl6?=
 =?us-ascii?Q?GsWRbl5IWZqq97oGmPNk/8MdHIZQhyWd1Be75vXFyNQfv/teqrguyMp9MhXg?=
 =?us-ascii?Q?lNAEXlr0UzEUqqyf7Z+Cb06Ob5Jy4nqKjO0FdsfMoqShCYNyW2Vk9q0vvrN3?=
 =?us-ascii?Q?/B4xeO7yxkRU3YIJABHMY4hqnrCpZ6h+OKhvtIeZPo2n76IB+pq3ZG+byTe5?=
 =?us-ascii?Q?tT2sjcowelHxpASKaqUf2QSndTOKPhEgklk1X2XoC4Sjt9QvWGS6YOGvyHec?=
 =?us-ascii?Q?/rufZ9ZkBN2rF2rAc5tuPQh4dC8sPMsshDyMCG/Smm4IgE068t/QHxrTg2+j?=
 =?us-ascii?Q?13K5JUKFXIqqd3cYxTYhx3ObWP/9rA/0memwXkQ86rlxU/D33ovKqSOzAsgD?=
 =?us-ascii?Q?UDJn6yEQnJ45wPhplQma/21dIpX0u99MEWAYZVETnr8IbpwksgWSa46AQiU5?=
 =?us-ascii?Q?3vQim/Gb0SAYggHgRMe/kThJsCK7bEOnLJ30laFE56frfM7faemy64TYeKlO?=
 =?us-ascii?Q?ihGPNKBWt0AA66NvID/8ovTC4DIrIuy5Eukrxdo28ZW+WDo74UkXM4B9KNQr?=
 =?us-ascii?Q?cAh6RETGZR8JToJjUP8LvxV3qMXBsn0s5blRvEg9Soi0SJ+USIvTJFQTLe7/?=
 =?us-ascii?Q?09DX707AYejKfWQWduZa0+hRxurZsMMDkI8xh7ESaH93Gpv67j2Z5r1Gh7cj?=
 =?us-ascii?Q?EujDp2MRH0X+ECrZOzoHbWemwJCUJiz1BgInkJaIHNmGYdGPt612y4Rrr1ZD?=
 =?us-ascii?Q?idZqy7aUSEL6ZRO3cvL75YjazXAVuGi0MrvwT8yM+OdnwIyS0EVtV6ZGMACI?=
 =?us-ascii?Q?TT662cjvrzK+RB0RQxgoCCRppaHxl2Ps5mYeu4oldKP3nVvtmI8GLe9do4t4?=
 =?us-ascii?Q?vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a38679-3cfd-471c-9f8f-08dd456eff63
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 22:55:19.2114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZkeKa53Ve0qvK/iQ5fzmELSus0PcCKvQ9JZKVE2MFhxjy6SrVpeKi+FxvW5rsNSJAkxYUcI9E3q4aUUTt8EMhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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

On Tue, Feb 04, 2025 at 03:58:38PM +0200, Jani Nikula wrote:
> The functions are located in intel_hdmi.c, put the declarations in
> intel_hdmi.h.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.h   | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 8 --------
>  2 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 38deaeb302a2..d237fe08c3e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -62,4 +62,13 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
>  				  int hdmi_max_slices, int hdmi_throughput);
>  int intel_hdmi_dsc_get_slice_height(int vactive);
>  
> +void hsw_write_infoframe(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state,
> +			 unsigned int type,
> +			 const void *frame, ssize_t len);
> +void hsw_read_infoframe(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
> +			unsigned int type,
> +			void *frame, ssize_t len);
> +
>  #endif /* __INTEL_HDMI_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index e19e10492b05..47f9ae77b328 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -35,13 +35,5 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config);
>  u32 intel_lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *pipe_config);
> -void hsw_write_infoframe(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state,
> -			 unsigned int type,
> -			 const void *frame, ssize_t len);
> -void hsw_read_infoframe(struct intel_encoder *encoder,
> -			const struct intel_crtc_state *crtc_state,
> -			unsigned int type,
> -			void *frame, ssize_t len);
>  
>  #endif /* __INTEL_LSPCON_H__ */
> -- 
> 2.39.5
> 
