Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D83ADBB6E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 22:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2E310E449;
	Mon, 16 Jun 2025 20:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cD1GY5Pm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94C510E448;
 Mon, 16 Jun 2025 20:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750106749; x=1781642749;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SiF/7eSDz7i6rOz7IhX+Vj8IJO3JBH+19yKkYp8Mu84=;
 b=cD1GY5PmrIi6D2qKXA3rm4v0aABrROFIBIA1gybmwbE5BZsw+fCrk53B
 JYwIAgonV7bGwu9i+v+/uag6gIEQlLN373qkUwiz1Gx6i1g2Pg0OTiI/n
 agLDFkmSnRNLm8YBzXKb4qrzOgZ4vNW/ngzRrCU55gJtppaB9jVYDMAj/
 BEepOUeU9E/zxqA+67Hy6sVj2PwfvCtlaH3F+cxEtmrnY0XNtMWwSbyVn
 ippRGgpjOqdMepcqaPd6tOtYKecw6cwmNF8WwL5VdD2TUhgE/5dQRMU9z
 aQOxVH5gLeuvSh627z8uAfaQvgYVp0+4Oq/qYizQXZ37zXcPaxs59Zbcd A==;
X-CSE-ConnectionGUID: t1FJHIsaTVGaNVJJuYk6/A==
X-CSE-MsgGUID: zBK/wSJYT8uBiv+S/p7sXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51373169"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="51373169"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:45:49 -0700
X-CSE-ConnectionGUID: osQHDJC/Q7SRc/Y7c/67yA==
X-CSE-MsgGUID: j/K10YcASIKU5cjAugTGHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="149467168"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:45:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:45:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 13:45:48 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.76)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:45:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LWFyx5gKePsrAFf2VQMrKr43UEAQmXXxsC+h/OphH8EU8jQmafmby80mCdvbfdNmiilAwlctjANwgL4kRFGuZ5lEiQSReiIDgtb1CUvvZKtMtmLnBQNZ5P/wpVPwpELfgjTiH/EmHgDxUMQmbFIrVD6D8EtWqkkS8f4nNKMga8mDmRM/Gf+VA7GXhDO4bG8IguyJTq9h5M+kiRz5/l6l0N4+lvGGLGm0yRfJI72+IqhCxIRHHHmyfo2UcEzbWtTkrBu2md/ilqXLMFj/Gr78eE1U4nTaCRTgs4qKBofeqz62P43iFo5cm7P88N/FP0w4D+goOqNl8lfmBxadyGgDhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O5ClgN8EteJBr7okNURDvG2oMfKZ8N4xXwB+o8s7SkU=;
 b=FxrMfbU1i95H6B9cpUrSrSe5mRJamR1h3rtK+DrHVaHBalkJ/FEO2xwVvJeIYd6VHAf8j146MM2Ylzn4D750Pbb2r6+/RPbBJyFOtne8venJmrXKw1qTjfweM7bLb8nHLxAn4XZHZILTfvxVP5rC1dbLQXIaKdNSxONln7JbPfRFTyk675EUPt3uLyVvFJeUiF0rHk8NS5w4l0MPuI95Ld/RzyU0SRduubPnuEzqiFid1aikq+BC7LUACgVizuUXizwCqucV5or95HmqJIVisLVFgRHvM3J8BB3xftcUWo77IDEN1Y8JrNHMo3pFywla4SEZq/DG8O5Pr5YeV0ei7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 20:45:46 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 20:45:46 +0000
Date: Mon, 16 Jun 2025 16:45:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/6] drm/i915/pcode: add struct drm_device based interface
Message-ID: <aFCCcHzOX7JqXE7q@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <a40c9d61b47e4b0ebfb00c7244398d4daaecca3d.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a40c9d61b47e4b0ebfb00c7244398d4daaecca3d.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: ROAP284CA0313.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:10:f4::15) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB4834:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b00d463-5455-4743-16fa-08ddad16c495
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?kMGkH6i4yKdGQCmTUczcdoBISXlE0pGCll+LJlTD54JdXcvrDbOz3dGscgaz?=
 =?us-ascii?Q?xFutlBpD2SjoZ8lk1+DV74UZgCGUsBVxq0So4Ply4Wu/QlypCAQe+T64RbLA?=
 =?us-ascii?Q?BbvzaOf0oSnAm1oU9rX0/SQ/w0+ahEossNtFJpbVwCHr36MQGzBl2AUp+Kws?=
 =?us-ascii?Q?84u+POyPKMhRq0GcHD74wElxisCfhkX0F+umkChA9loSONLZhxUeqFywjz3n?=
 =?us-ascii?Q?KhZwGrx03g65uGJJMmCetY83p2muo5DU5lXWQEZYOr/1gRu/Zo6tGnNlgU01?=
 =?us-ascii?Q?9gCC0eDAOB++n9FdNebXN9D92mM4ZCJQsh/yRDfjxGG8+QPDWa4lT5LndPzU?=
 =?us-ascii?Q?0eksGU2Ysrd9dp0VUHBvh8nltdoXWE4HGgQGqcXf5q2kkFZquS8OF6IHkNM+?=
 =?us-ascii?Q?MLb8rcnl6r7wX6QCP4CKWLtMnpEHEQPaUiz8DKpzNfmBIqDjAIl4COMaabOn?=
 =?us-ascii?Q?jo+PRtbSRzXwhi2xOC09kb6wCVRZCs8ueC3w1lN3JQPCLLvNshwm3OWnkY6Q?=
 =?us-ascii?Q?e+GmxKizGnW6V0AS6UE5q7q3dDY70NfNY6eir3ahDzHQIpcjZ8Sp0GuHB+1A?=
 =?us-ascii?Q?4DWt7Wuek6xIIojVIfM1+2setUhAmlsBhk6cnlCefUUqvcT9T5ueoEJnvbym?=
 =?us-ascii?Q?MvcozINdLHIli5ObW+m4JSWdJYGu7uT1PJ33DEY0rgCHPQwLyupS0cIzroZU?=
 =?us-ascii?Q?T9FvZzsmIu0EjGjcKp2QKYWqbza+iBCMsMR5+NAOkJxdVCKjnxYVB2clsT/t?=
 =?us-ascii?Q?M0uL6qlYkjwssxoslJP0dt/jvaZlLbVEB/ZsdT+JvG3Y1i8kgqmzjv9lB6hK?=
 =?us-ascii?Q?QAyDcS2GWVWJYoLfMWJFLyKZQK53C8Apd/pFj96b3qB1Cdwb3eSikRD3z72A?=
 =?us-ascii?Q?na4Gjg7AOneHszHynk9HfyAIrkDgr5O3+H+gzO+j1YL5FdBB99qw4AG/bGcq?=
 =?us-ascii?Q?s1QCSr51vNCOMIhK68W5Vbxj+GSGa9uA0xub9+lBo8m7M8p4p1Ws/gjW3JPi?=
 =?us-ascii?Q?TagZrx60b3LNr8AuLvBUFnMblo5EIMO2zry2ZWwc37mltLOi8VTmr+4lMoTe?=
 =?us-ascii?Q?8+SUR9PRPOncSq/5DxpKdl11Wu83lk2czs/GxMG9weQTlJq5oUL7XghyQuQR?=
 =?us-ascii?Q?FEbYUllmO2wzVb0jiAJleU+cb4kVZYIGTHatm6XVi/4Y0vqOXI4IYpes1MoR?=
 =?us-ascii?Q?/YJXBWdg/jN6tIXIXYFk/Md50udEndil//BabfZpvhyRT9Exm+wmPce5b1vo?=
 =?us-ascii?Q?h14wFiIYwUTaV0Qgs3HLCDBx+uTFXqVdgb03uYVuqUbSlfOQvgVJMlWBCa4i?=
 =?us-ascii?Q?HeSkLcvvFuyPHtm00970SuEasdQMtcq1XCth1hj3LCjfkPtjBGnxv1UbwHi2?=
 =?us-ascii?Q?XrOzkAh+7xCS6O2NKs5XptHlN9xFRlY0ixZyfRKaEKicCZjp/35eLpD8AWb6?=
 =?us-ascii?Q?pdm00H95ubk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aQJTjULti6QZNRpJVs2cBVVZoBkCG4P0qmooJpWKFMhrnDLrNffWCRlGV9B1?=
 =?us-ascii?Q?Uo27xE4STkNO7v7fk5SM6zZGeCXwdZA+TYwzj07y5V3gQFn4799ek50IJHXj?=
 =?us-ascii?Q?my44ygumhMaEbSfhiMV8hwpLeDSPn0Yh0MpIvmVrdw21Zf4Gom3pEQbmVC5Y?=
 =?us-ascii?Q?oFxOvwD6AHAz0IBIXZmQ9YAOWkBVjrUfHslDJnB0pkJhoWTNSZYFyIZ2Zi6I?=
 =?us-ascii?Q?Ma7rXX3l7dc7EqrMI9yzCREVROrnYYBEsfWwEeX11K2hRCXOlOPMjqChZosJ?=
 =?us-ascii?Q?oArRmuPq4wJx1hfBwJo3kCD76fnAeSodfIjXh7ioGfUrUAhoMREpAeby7Or+?=
 =?us-ascii?Q?BPs5sPzM8Zstn64Hec8vhrfafex8Y/1m+4GSxzheA7c8Qc1OhenAi6rtMFfZ?=
 =?us-ascii?Q?KuTRVTDJgXV64N5TFPU0mTpFDUXMsxs9qia15MdByi7Vby0EUeYwv1TYGfgD?=
 =?us-ascii?Q?8b91bXl0uVAim/cVthTuBw6XHAkiHE9LhX3sMVMwmzPTD95IPDvG40y5UrwM?=
 =?us-ascii?Q?R3icVPEXrEKKQVI8KjQaSk9IwteXnXzjGfL2b+jfzQJzY3B52RhkYEC0jKSb?=
 =?us-ascii?Q?uWqYpQYEWGoD49g20OTn3ECupFpmdf6o8PkFD3Orw76RygWZNf6BO3fCQz8A?=
 =?us-ascii?Q?CwK5H5S0S8nI1JHBA+YkeGwG1oJyeDYfZO1MNCYkgBhwl2orRNnPhYQiIb2T?=
 =?us-ascii?Q?u4Nyucedl8IGNs2vdViLOIBUUhUPlY/0xNwS1Z+8RcQWVmKMo9iAfxTkvA00?=
 =?us-ascii?Q?im/qhx2NQbsvWY3jLbvkCXh/Vkbe9ngq2A9toQmitc2kMyxutzO2abbwHwQo?=
 =?us-ascii?Q?hdFCPOPK4Mfn/bH0vSvLuimzLkLxvMOHr6MzaNhl6iH7xUrs9TrueoZbz/9X?=
 =?us-ascii?Q?/APS7U//Xk9JImX1bI2IkVcGVy/Xwtvtt2L6OrUbf03+LsxJ82gN20U53qz9?=
 =?us-ascii?Q?FBC+L+vEIjL8h8+VyEqWF5SSM0t/E8+powOZHCEhK3dnJKuNKTmaLfoLtUzc?=
 =?us-ascii?Q?wP1wFwZ/2BaDv3d5vPU1u6wucxWBkF528AJznqq0hkWcQUGY33V6cxBQMacE?=
 =?us-ascii?Q?uuhY6tgu/gEELw730/INBjPv80xP2r7lWvHXZdwqecztNZKn9N+uvkkOmB+b?=
 =?us-ascii?Q?UymS1fcukM31W71G+MhKth3878mFupLNV5Hf4+VuY/l+6Vje9BNhHmxSBXXM?=
 =?us-ascii?Q?ImWzQefsEPvQ6flfTKcEIAPkRnVyZs3WMCFXVoWPrCLh3NF1kgDT4F//eDH6?=
 =?us-ascii?Q?5bY6WRZFuOf8KUsld2rSbkmA+ofwk/k4YIBBtHJ5npbFGdQH55LQg8Wl5adk?=
 =?us-ascii?Q?7NYre/FhHfYy/9UBiO+XO4i4l0UvQtVjUHt+G7MrYHIbphevPxQ6ZqMAlCLU?=
 =?us-ascii?Q?f+xW2+GOKOlDsmUiqcUWYIAnTpW9eBq/AMy57xM8Fl3o44/F02SO3JQiG9e6?=
 =?us-ascii?Q?XajcVeqB6ivoKr27sPQWJJHPYBnmCwCrEPVR2PJ9nBY/308JTSEh3pWcYL8+?=
 =?us-ascii?Q?3dyu68MqCG3xZJqOdNCXtb+OtH2/QPuFNjQunXQAqvXOOczyLm/qkYSIqymS?=
 =?us-ascii?Q?y7CQxehXBpz+9jmzRpHXtkSLdaU1LoQbgBpJxaenpYrpzqirLyDqhREyAVQT?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b00d463-5455-4743-16fa-08ddad16c495
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 20:45:45.7251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R8z60ssSSNad+tGxJfJVeBDwXsyh4sTCUG4q42AQyGRyZmCoMaR2QgkqUXoZCAirmV9RBFmi6VuOYRFyzptK1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4834
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

On Thu, Jun 05, 2025 at 01:29:34PM +0300, Jani Nikula wrote:
> In preparation for dropping the dependency on struct intel_uncore from
> display code, add a struct drm_device based interface to pcode.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pcode.c | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pcode.h | 10 ++++++++++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index b7e9b4ee1425..81da75108c60 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -272,3 +272,27 @@ int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u3
>  
>  	return err;
>  }
> +
> +/* Helpers with drm device */
> +int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	return snb_pcode_read(&i915->uncore, mbox, val, val1);
> +}
> +
> +int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	return snb_pcode_write_timeout(&i915->uncore, mbox, val, timeout_ms);
> +}
> +
> +int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
> +			u32 reply_mask, u32 reply, int timeout_base_ms)
> +{
> +	struct drm_i915_private *i915 = to_i915(drm);
> +
> +	return skl_pcode_request(&i915->uncore, mbox, request, reply_mask, reply,
> +				 timeout_base_ms);
> +}
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 401ce27f72d4..c91a821a88d4 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_device;
>  struct intel_uncore;
>  
>  int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
> @@ -26,4 +27,13 @@ int intel_pcode_init(struct intel_uncore *uncore);
>  int snb_pcode_read_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 *val);
>  int snb_pcode_write_p(struct intel_uncore *uncore, u32 mbcmd, u32 p1, u32 p2, u32 val);
>  
> +/* Helpers with drm device */
> +int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
> +int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
> +#define intel_pcode_write(drm, mbox, val) \
> +	intel_pcode_write_timeout((drm), (mbox), (val), 1)
> +
> +int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
> +			u32 reply_mask, u32 reply, int timeout_base_ms);
> +
>  #endif /* _INTEL_PCODE_H */
> -- 
> 2.39.5
> 
