Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E548CDA03
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B46A210EE46;
	Thu, 23 May 2024 18:33:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TTnrUjmu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C81810EDF0;
 Thu, 23 May 2024 18:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716489201; x=1748025201;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wQkvNgGzPGdicQqmACMKdx1n+14sMBPhQQLu89sIaVM=;
 b=TTnrUjmuePQFglJ31rNF8ubabakyOqfwKAM1svGXe2VXrvnUipEcSgPa
 GWzUyxifDzms32xAvMFaDO5hvMp0F41VmVJlSiB21cDuTzb5NjJKvaWAe
 zpTjSH9AneGy7qrPUkW3z/uIcgerfsQUV0SYbDISyLYU1JfjqNRPF++zs
 cG58L14VA75JjU+RVBLIcOPCH6nAN5hPJXbLh34DAWM790NAHenBiKuYG
 qEctCuWfjjLDgHuP/jOD+1kNdjNkOBO99+DQOKfJMGLnJ0M6hzJbVJS1h
 FVf7KQHai3LgffqYe7ro2T/4SMk/QdpYUYfr8UHSexpiqzTY2Cf1+O1oW g==;
X-CSE-ConnectionGUID: ghoWnqc7RliocwIwhGD1HQ==
X-CSE-MsgGUID: FD+CRqIISdSaFu5iG7Vejw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12953257"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12953257"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:33:21 -0700
X-CSE-ConnectionGUID: n66bRrOxQB+PSpK545fBaQ==
X-CSE-MsgGUID: tJ0FV7fIQMm/klWs9URV1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="56999234"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:33:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:33:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:33:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:33:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M2jTBnvQsAoR3WuCtd6UFLH6tLv6nQiF7etx6hf/DcQZmP9628vCmfenpjuz2jWsQ7/big5ZxKByqJlFXU3zrdc/FpjimS3O7Co8UVwiqPEELWi1FEQg0YWMpDHGHG7lu1C0MgCfrTZapp5acF2Nkh9Ydk9kSV/+b4zBVrknNTg0T197NPwQP2v+2vcXWLdA8tXQRtGZ5n7X65uXI7+geC+30lBxW+2x/T3w6iaOqS3K60ehsbt3xzD/m54DddV2FcAeFfStm+2utU9MhUSIoFpqSc3N1vQONFk8xwvXtvyrUFawTar++icf2G56TlENkSGGfQRKSkLWA8bMikWS5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXMy8Ew83Io6dvNHvxCgyiqPNjPjKSNQa3isbQZylFs=;
 b=YOrx2iNCuMjOWpeXpOWYcC+2T5M4dZW+ozZvzC+NiOI6lnl5AhzRh7jIPZkvxWFT84z1jvS2jXlTROzGHJ0JWFqVn0xl/myJIQE8vb2GXT8hNlcln0lFpmefUaUQ26Nkig2v6q4cPAKoIfr3YV0GE1WYnKm0M6kYTy8vhAssRB66Y1T2sYMkGcsq9roXZzNRQ01vo7wEuFOnBXfBtmW5lhkZV2v6WuOk9qtDsFMx7U3D3UVs+2rJeBShVriVhCcgU/F6vm9BquXSpgoIUGxicTJLkJRPAX3pI99fsIMMkIBiRcYXr/a8d97RWXGPkshfOTYbZyq6xSSNwLq/Bix+Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB6470.namprd11.prod.outlook.com (2603:10b6:8:c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.36; Thu, 23 May 2024 18:33:16 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 18:33:16 +0000
Date: Thu, 23 May 2024 14:33:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 10/10] drm/i915/display: add probe message
Message-ID: <Zk-L6F5ZCedORfif@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <f9a4d015a2981ace2ef5b40b189efeaf6b18fb29.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f9a4d015a2981ace2ef5b40b189efeaf6b18fb29.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB6470:EE_
X-MS-Office365-Filtering-Correlation-Id: 064b2a08-db51-4539-ca11-08dc7b56cfd9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mIY2BAj2Q3tIizxrpzDu2ZzWNXN1f2BMUIlBL5Cz6FQmPufWDsqXHqiZGD51?=
 =?us-ascii?Q?oDSzyokclDS0Q0NJ1oQ4hFJm5ZnAjL/4HjdOSESXWZQjHylHm13acLIwhnsF?=
 =?us-ascii?Q?ioGdL8NQC4NEZWwW7mDBV62dFcAQ3uxCcgnxEyqzx9htMrvPA5voQffmYS3b?=
 =?us-ascii?Q?1NwbbyCUJb/a0LecWWYne9OUQgFGhgNXoS6xf9u6C/CCj2lMT4v0AQelHUYm?=
 =?us-ascii?Q?VDtp2ab8Wn5c+IvbcEspDsNhtuOzQBRoPUvX2i1N2Dkp0U5R1/Qr/LrpHyiF?=
 =?us-ascii?Q?0ttzGSK+6wrI6Cvp2PjkdQqYo0ukQLtgMWzNFutUZHMbZL3/SpWjhiwwONZb?=
 =?us-ascii?Q?UQZTRywOm671o7C0Nuwl4sKDnDYbKadWiTVcZbGOthD+DAfPpjYOnQSwR/PE?=
 =?us-ascii?Q?FP73rDtp1KeF30lhNpYo15Ea5mz1NW/QuCfS2o4mBnshOFRw0xSjPOxwHdCV?=
 =?us-ascii?Q?89Z7B+mN/61wi1tlN/AZS8ghDnA9OpPdbj4aIZebHQmdxIwNHGR4F+vkNFyk?=
 =?us-ascii?Q?By1BiuzR3wNW9hnxX+hK2b1A4Yfi2lNNfRRqQpSIfjnU7uOX2Mi54XOm7EMT?=
 =?us-ascii?Q?DeoN2Jd7qOrhL6UWQ410AkVOHQJpbEOde0I27eb55oRAEa1xrQhCttao6zFQ?=
 =?us-ascii?Q?71t9zvasWE3xAkk3WAioVB7ed2bBHpD3aQ1NFJCyvVZh0A/OfqYJe+dEgYHf?=
 =?us-ascii?Q?Lr1GzoZuf313lHMz+KOPKoVJA34nrJ/objH11BF0H8Z8MyoJBPGCOlkCFqp0?=
 =?us-ascii?Q?ziIclAWt6hd5uUCjSyAHvHr2MMK2iAzqA1IGtWEJ5de9AvnJI3RKbtdPsw1w?=
 =?us-ascii?Q?8obD+h4YwIhWO4wK/NoXXimOR7oX+Q7KEzdzaxA/A0dN6wvLuLC5zvRMzRLM?=
 =?us-ascii?Q?Z85hq2kNGwk6yQ0Jfr15SRW6DHkFWPHhQ0C7huqyUtWckbS8oJ+8GtCq/1/I?=
 =?us-ascii?Q?4gZfm7aJuh3wPB7BadZI0LsauISrQiyPYGZmChNzirPTDUONdIVfLM8rcaNO?=
 =?us-ascii?Q?rh3UbdCl74Y8ttpCbHdA0+dTrlqUW/p3kbV/3LEJBuJBMbcquAL3vxCcyIPB?=
 =?us-ascii?Q?3bqiV3+8u2G9dROdDSs1vgvrWKQPPGQ4kRcgJTAqrIzaMmmoKSP07Guw8Sf+?=
 =?us-ascii?Q?gaFSqeiW2W0OajWTzSps0bWSRnJyDysEl8EsHNZYYHBz0nbo2zcF50jsM2Km?=
 =?us-ascii?Q?8L09YJCTFJJkKJ9szBN+0TIjaV1ePS+lwnw6XkWt6LdW9lKvYg7tQY3ltLlM?=
 =?us-ascii?Q?R4yrf8ZQebes82hLS98aWH08WxDc1NhTPh/se8GVWg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tGQu8FqKvbyk3G0Q73sYH7m5g1nqdC5O1Mnst2vBYkT7JGKdGhFEisp2j5Uz?=
 =?us-ascii?Q?LrUvx4z3HXVS7pKhbO1MLAIAyMa5DvuWd8kzgEIFxRDCEf52ucpFIFhdGip+?=
 =?us-ascii?Q?rbuZhr32eA4vO4tsQ3YMi2dsKVN0yBTK5gBxQYL4UEYZmyv8e1Jm7UBcknbd?=
 =?us-ascii?Q?nx4OnCPu6w1hG9tgX/STwFsRgSk3G16u/Oo52tG8Xk6TrHZv/ImK5OYI8PYo?=
 =?us-ascii?Q?jkfTugB/cFaU+wsXFFRshsLSV/gDSmn778IrzHDW9uaQj3cK2HYIuo2wkEXB?=
 =?us-ascii?Q?PsTtfh8AWTgvdijKSrbSdn6L1gxYsTXk3xGbtAPf9t8XY0ZiywXigzvEoyi+?=
 =?us-ascii?Q?KWAKyA+19i9nVGkt3fNex/gPbWmd0D2Ow5W8wzgSf7YafwbLOokGNGjJP7r/?=
 =?us-ascii?Q?411SFYG8UzYYnsEEqNxL1n+W48/oPl/WL/OEIt7V1EhrRU5w4Q0mwWRwZ+EC?=
 =?us-ascii?Q?in/FMXtABy31+uY22ujfFTJ5/XF860dauEQ1EJd0B2zlhgCy11DQcF92UDbj?=
 =?us-ascii?Q?crXn36VhQkyMenM794RQXTova/lOucOnxcX6DTF9AxcyE0t4xhNp469hah83?=
 =?us-ascii?Q?ksnbB/S58Wc6IePM23iduu9A/aApNOT6kqIQ0xROA7loqbYd51k8wKSXr5e1?=
 =?us-ascii?Q?HLVwRaTkKj/Z3964tay3JeAf91to4BR+ZyBEOyRc64anfww/JqVSmJJdD5gA?=
 =?us-ascii?Q?I79hMeYvdBhFCORc0Yme32bc5zWrsyVAZj3KR/EoQw6CCl3J1RldKxbQr3Vb?=
 =?us-ascii?Q?HpO/ouxKewZLi0lgG4TgkXJRisGX2KBh4oVtP32AgoHlnnmWvit9jDAkiH1G?=
 =?us-ascii?Q?/JLybVDbJD91wkKkP3rYcwCszEpqcK9WtV9miwiAQe90jGaEP+saNG3sHcW3?=
 =?us-ascii?Q?cAOZmkZ4w1ssZBynkmRceiUIolJz6R7T5a5R4IlwDPt2Xmb1Gozw+4j33H01?=
 =?us-ascii?Q?jlX7eptJIeScEEhPZdOAXl33r1jleJeMRWXIdFwI/yhK1CDlVFRfAgnIEUU5?=
 =?us-ascii?Q?45PXbpHBQDnHLTm6tA6DCQRbg8wBBCunnm0oocQJ66EXye0sDqntf5QDnV8c?=
 =?us-ascii?Q?yRIlg8vo0XjEZPHh5MY3hqYpV/Y3L0JAfDAZSasOfUqmEgwFhvxEp0zqRldm?=
 =?us-ascii?Q?34toXLxytLRLVItf1ta4eQoXoenc9bTPBN6gf+KEQzhDMsyJ1KqC+4/QF/id?=
 =?us-ascii?Q?c22pP18opF2ZNDf0rhP/cvR+Yp1vDC9+WbdIw/5eOea/XB7Trvt/JmdpMtRg?=
 =?us-ascii?Q?ALGC0ZulQOY0UbIS4UnyQ8EXf7wLAGeA1ADCu7JZMZRm5PMLJn4+PS2eT7li?=
 =?us-ascii?Q?J155iLUeQ6QSiy6gakp8OEMzYd9cqVAwk1ZuwlabiC5tVeR//GIWN5qMV00h?=
 =?us-ascii?Q?7cxeXnP44Fpvf9+1GlCg4JgkE+vjM9rhIIc+ezHy8nr2mkg64As7pJV70Yjz?=
 =?us-ascii?Q?7tFBvip6yWgEnksnkbJsqHvsLi27X+IGsE3a0tZGmTRkL1SHIDZ6w5z4XXhh?=
 =?us-ascii?Q?tM1Jl8UyAKJepJyh0TZ9jP0CwANL45MUPrs4uc8NEvkj89yCgMSQ9bNr1FRZ?=
 =?us-ascii?Q?TnXgCZBKSs67eQEOe5G0Qsq7JKiUVgDnXOqln570PZYhl9/EMWcYu28Lh4YH?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 064b2a08-db51-4539-ca11-08dc7b56cfd9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:33:16.7246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PyqphFDsF7PnCcZvWVqmXD/V5q5vEdWcb9j2ciKSd+UPJ6QG+bmYVpPEfp9mWF8RrpZgadolXw224aXwrcnqgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6470
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

On Wed, May 22, 2024 at 08:33:47PM +0300, Jani Nikula wrote:
> Add an info message about which display device was probed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 59b8ca174ef8..5b6dfb5032e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1305,6 +1305,11 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>  		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
>  
> +	drm_info(&i915->drm, "Found %s%s%s (device ID %04x) display version %u.%02u\n",
> +		 desc->name, subdesc ? "/" : "", subdesc ? subdesc->name : "",
> +		 pdev->device, DISPLAY_RUNTIME_INFO(i915)->ip.ver,
> +		 DISPLAY_RUNTIME_INFO(i915)->ip.rel);
> +
>  	return;
>  
>  no_display:
> -- 
> 2.39.2
> 
