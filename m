Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E585B8FF1B0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4E210E9EF;
	Thu,  6 Jun 2024 16:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LV23kv5O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A9710E9EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690122; x=1749226122;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MQYg3jVOJVNuUg21dSQSPMpbb8IRKzmgnepW6sL90qs=;
 b=LV23kv5OIPt9yJqbE9YEvUT4bnKy2buIDt4bHu3KGoJm/vM7Pl4oC/pS
 XRT5y16/IBS3xDfkRzPgMZb3KQiw2NlS5WGXgQYTvJGGeWbAOkqtcGo87
 8umdBEovHMtR2n7aP9FbxSmUnq7YrSXNmSUCzhiPRph/YYM8T2sjjN7fr
 Imqdc56Gk6Crxrd0kbQFt8+7Ln3IJwXlCll5oRpD30/byb+IWMcjPoDoJ
 YCBpMlSQxq64a8Ol0594SdyPINVF5aEwRUArxDHp2+QdYQhzwZWta2voT
 yz/LJuNcyYMNJzDdVMrxJXaFajD1GBoTz603ldh7GPiRRmm7JnSlo3ijP g==;
X-CSE-ConnectionGUID: Duxj/+TBRw+V2y377Eo6/A==
X-CSE-MsgGUID: /dOcHyQoR4qT3QWAo2TKWA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14507125"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14507125"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:07:42 -0700
X-CSE-ConnectionGUID: JtZXe/mhTKShtItwmFiPCg==
X-CSE-MsgGUID: BGGeCTtuRqK7HopyhfL+vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38024148"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:07:42 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:07:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:07:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:07:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f0NYhhkeU7xvkURu38yijdjHn4sZl928B0NrKAIMm2stHmgrnUMvf5YoyHVGp3eRSb4mU3pTFHlrLiDirCFfnrzu4m0Jb5KCkZjIbm4NuqQOqkkioyaFnJsZG5fSMUYcsQiFC61GqMamMPEQvX6elkDPXTBD4oJs+sSWw6uHnYJeFgtEYfW/JjlfzTsrzuGPuoPIZDkFxuhoGa+/GfmwAk48qgBFaIV5+bjfieJ6fvjHe/WZDJlBlWxF7c+XpmUAT9bFwtnoc2UiYCNF324ejik8j+bscvROFNsXbl6ldmIEjaVqjD3/Nfr1aQ7+NAeLIRdaSz8lJ76sCH7u3filZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SWOmWlHC0v1kY9Z1RRkoL+DW6r+ZRbB2xGEwy4wOo9U=;
 b=gwqTA+BhKg/OWEKZI/7Tho7qEHg1JDzC0gYmkUjt2KlPH3Zu/PNLXH5nR8d2u+SpbT7Gjp9XVG94QS+duOn8tQLHHce3G/k1aOuJsXMI8J1QRICsskxTFiwtnEzBRhiJZU4XDToCPvla1ROObBAw6qUQBkG15XiOT302TCY/Zr9wPOYBvZrmVdbIsFSfcXaUASCIfHTUVNnhZMk6r5hGFvh2lnFOdS42ZYFyFv10sZzVJ6M0hMq0mUfr4tbjl/f6/UfWhS9hulzKPhnLxMAPHmeuN62m5rK234fJNJ9S3/iwSgBadXDLSG4p+ZQTgymt4/iWwpoC8MrqksDfkYs6Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:07:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:07:38 +0000
Date: Thu, 6 Jun 2024 12:07:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 41/65] drm/i915: pass dev_priv explicitly to _DSPBCNTR
Message-ID: <ZmHex2IXnqyrOC89@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <3ed06769b934187d7a60d11f479d4adfa68fa469.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3ed06769b934187d7a60d11f479d4adfa68fa469.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0213.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::8) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 468f291a-a5e5-4f94-9553-08dc8642c92d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1NMeLEeWVqpmUO+eDwPteThghIe6gYTW9DawrA5xL3p7wc3vZCAhvJtPCq8H?=
 =?us-ascii?Q?iEw6haSx08oHicfsOxpZS60mTGDo967SCMdszNI77fs7fKIlmF/SUDGuyJd9?=
 =?us-ascii?Q?07Qn5lE5ohapZV3lnhuF7UDtP4q438R0+7mFjnvAeZ7fOUDEQltblVp9u1d7?=
 =?us-ascii?Q?LssFyxSjl/OZtjoXOEQKoqUAFw/vtVoBQO8esXRpQXr/R6ILjd6Yhd0rz1vT?=
 =?us-ascii?Q?uxJR3FbxXiGxjtWYwKex65vHW+JrrqNHtr7TkGzHBBbl3yoyhBf1pOL0hZ5t?=
 =?us-ascii?Q?7x+6Z6XtPWr+O3VXzFIUX+vHncEMJiS0fSf1IKj/IEUZ2TiM6GIfqbG1xK8h?=
 =?us-ascii?Q?dKpB69hd2IuXU/Vh0FSQFjEHI4Q6XCC7NGD13zHwsPJaGTMf1EbQChxnL1uu?=
 =?us-ascii?Q?NjVouYvIPoOMBj/DDnEXyJkxJw3kzqqyjlGOK1ekedf3oFw5hmSfZvE5PM8K?=
 =?us-ascii?Q?CaeMyVI4gFqRKq8gYk35jNTYTKqQMK6CoObCqGgt+fEKfjLCHwVj5QAvBHql?=
 =?us-ascii?Q?JAoPUqiQ7DNed1NjwTH6efGDoMMwovKv40qAI7PwsaQGf0q59WfuO+6EUl0e?=
 =?us-ascii?Q?wdfRy9nvoMMjIxnfQ8rLeXzC+BtLUpujKtaw+jr2MmyaYWujg0p6aFxS1/kU?=
 =?us-ascii?Q?FXD8YKsN+KAoxKuQPgZtN0Mt3l7Rmg7ISLKv8msSXW9qR5kytmhzRMBTBB7Q?=
 =?us-ascii?Q?164/90t0pkhpqJ64jM4xIayxpv/1PhpQ2FO9KHUahOvNHF+a+Qwqe2q1xUXf?=
 =?us-ascii?Q?GodvLkOOzSgkWicnGxbVF+6Hu6w7fTYFdzQ9UiBNQer4h8D06sOUa372fP5u?=
 =?us-ascii?Q?0AaI4KaxGxbIkQdvdO3VjI1cK8mISWJ15XBVtFYlqXR8N1IWJBVZ0Pke3r52?=
 =?us-ascii?Q?CUB3Y+xTklp1yF9HkEOtXc3oechn52T23lgskFs97bZasCGYr1rm1Uiue+mQ?=
 =?us-ascii?Q?D8qpDndz4yqxCKHLbdRbLUHrMwtVjt/72CZtGgar+2Kw+O+xXU/FjyEMBR+F?=
 =?us-ascii?Q?Uhi+OeXY3fCFgCy1yMHgYJsI6j3CUUwFvpB0YiUioGjFIgV54PZ5fQJ/0N9X?=
 =?us-ascii?Q?gs9LmefQ66j8autGNGi2Q0xTWJ1CaCwpPOG9IJhQwWuSCuC03LzKXJ4yJhD4?=
 =?us-ascii?Q?0mwndFuybfCjpsIdvtlmUYpa0zcsMXylWcgEKa8+N2Jov65QUNg1PXUmzzDA?=
 =?us-ascii?Q?GRl+Gsp9cyJJwB/x8qTDYnYD51bzXdCADIycbX+0ty+fcE+iJW9k0OhBqw8h?=
 =?us-ascii?Q?ts79BPlmQj2+apIoIOEK4AV5a1KrNwwj6erYFd2HEjAEdjuZ/3FkWUMSAvs2?=
 =?us-ascii?Q?TQTW+CzRFo06TomS57unaJu/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ynJ7lkVo9pEwNIep57K8QN0NpPw5Hv9dI7HTncY0pUxxyVFugBssj28jSQVz?=
 =?us-ascii?Q?CJo70bXlIUYTjfaoY12dkd5pREKrgZTnSwKBDNR7DE4/aqx1dlDg5KPAe7z4?=
 =?us-ascii?Q?0dWlwD06QFl6mhqAe7AmXjtozbresNRXZ5fcb5g7rFfE90e1iPBG7YKISjo0?=
 =?us-ascii?Q?NalMEeL/DMBC4VGUE28LMMDaK8F9x2Z+NXOcjr5OvsrgsBZkWZCU89CJtLNg?=
 =?us-ascii?Q?aO+UB7Bnujo3XMUhPMX37r+esRrXh98JC+wia6ZHfgS67YO6w6mu5Ez8hDF1?=
 =?us-ascii?Q?unefMpGrysVBIrPxn9SY9uoUEHwNWWphmRep6gA2G1iGLKsTeml/KZeqMljs?=
 =?us-ascii?Q?TelxR1sTxq0P2ktx44T/1oR1Brm0GvlY6uSBQ3n8DUvi+sSSgTKsZnpRQTha?=
 =?us-ascii?Q?LhkzOO0Y93/k0uAMoQFwQQ68CyexeCPPca9KBXT7aVwsKKI/t0cBoqljy8QF?=
 =?us-ascii?Q?KRuvMZMJFiokdoQ4nGCRNJmDkHwVa3MNG7V8NsaJwgWovJLz6lQg39s+27EX?=
 =?us-ascii?Q?6Rb0OBSZqi1O/3DBdbXClYyeToz9Hi7Bj28vNeF0J1XPyzoATbC13DyujiJl?=
 =?us-ascii?Q?98gGpdvU6LZN4KJSmzsAS0dz9NR7c2EJTayf/jUwaArEEs24SxI/l5ZW7E8v?=
 =?us-ascii?Q?vWdEXkZTutgE0feffx8vR12Gg2JT1fq6xmjDxIvohnMpMimMd79OprUVaWCg?=
 =?us-ascii?Q?Dvzntb8Sba3ZdwpzV7aI/FNY28j4zBd70ivVGUUENsu9NFyK//M5vS0UpRPZ?=
 =?us-ascii?Q?TXWMtSK8Z2wZ0ANatgb91GxU5iL4NYQfuNmYv+wy4lTHEiMxTkzCivLuAVku?=
 =?us-ascii?Q?DvPW6XHJ/nCg29T8Gbf1JUC3PPHAdLS7NDtcPa8uZ/KVRk47HvcxiPD9GFo6?=
 =?us-ascii?Q?DgB/DOhE5M7ujNpy6n7iKbQ5Vde4JpeyHt/ZO0zB0X36gCDkpFCQ0qO8sKpJ?=
 =?us-ascii?Q?R95dC40BQH7fz8C245tdxEMf/pLHfq013b86l/2+WpV+h6zdpy+O8F6PYjyS?=
 =?us-ascii?Q?R+a88mfW/x+bKAnZs/9+7DQ9X+VtEFkXEiJnp1Zkc4mbXqtpdXctWkOpa8T4?=
 =?us-ascii?Q?rRS3Sx6azUVFB0Ny7mYKU95PGgTdUKTnsJWOUPdKTFL3A9XPpDCwZKQKf0Px?=
 =?us-ascii?Q?ak0353Y7vI1anO+/juoO7RBRhJOMcq6TxWrmqzqXaiyfv87IlYjjMkTb5ajH?=
 =?us-ascii?Q?EhsBySLxAVQNTUSeKTdms8pOiFMAmOT7sn8pHFE+HjpmGEg5XkNtLyi4WPXw?=
 =?us-ascii?Q?kFGgBqeErxr44DmeNxBxVqRf4uhwA2FPZPQ0T3MVDuPUkBYOoQT8l2Q8XUwa?=
 =?us-ascii?Q?CVVaeuq0MMLDlVcu5rKKc6qGnTKzIZdJ6uz8Wdrhwo5VNKQKbmO+HCZNKVXp?=
 =?us-ascii?Q?b0MsYalnuF9pLe9zb6CKEYSTPkljvAuI/rZuNVifEOKcNTDoIIfOh3trn7dK?=
 =?us-ascii?Q?BykACRNkbfSlEPCos55sqTJWCjLrdmHKt8OYIW09Ab8rUxsia8MzOFlnJMZk?=
 =?us-ascii?Q?laTG9YIMyIsyVVXT0gsixxMrBU77l4kn+Uws5c/Xb5KyHFG1VQ8c6OMPJoDD?=
 =?us-ascii?Q?FIeOIwj9ccYppAjluIhb4e0oJ6gGUZusEHMF4MEx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 468f291a-a5e5-4f94-9553-08dc8642c92d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:07:38.2353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VQgpjdQr4EJzRlKRCsf0OdAxG1Ykc1dUEoVwVA9YBYP/xaiJxWI0u50zwO2c63wHECQexXShJYhFoqKNtSuPvg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:25:59PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBCNTR register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index fb1dc6f5e903..8390294aea5b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2306,7 +2306,7 @@
>  
>  
>  /* Display B control */
> -#define _DSPBCNTR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
> +#define _DSPBCNTR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
>  #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
>  #define _DSPBADDR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
> -- 
> 2.39.2
> 
