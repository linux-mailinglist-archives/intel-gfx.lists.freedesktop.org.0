Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74BE8FF1D8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1595D10E13F;
	Thu,  6 Jun 2024 16:12:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NNN8siIi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50AEE10E13F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690378; x=1749226378;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3YeqMlxnELC14Q9eJZa+NQ2jQnIHbiIpVeHa1J25ZL0=;
 b=NNN8siIiTqykXukQ3Wr+Jvn8VsZePLq+ErwJwNfuuRyBjOUHvx4Og/gT
 6T2TQ3FPakIBOe6vLVaLmrCaEVl5Kurc9or/X538/MBNf1zapYVLV+OBK
 nwa2KVlaJhLb2Nq+7EW8j4rxEN2836tvmuU0ExasGVOaH7mwRsbdtOhoG
 0AQGD8Z3+ZtG4QfG7o5H3fTFDfdTokXC8dw+z+W3TZPaMimNRgSevZiQb
 BTu2wy5oQ7DJyspRj2QTKJvo1YIF5lV2Ls+O47RwxpKXd7Cp+85WQ4zwa
 J7rosGs7B/1iUHObhSY/Ccqu37yVpBf6pmWXc79ARA+YS18+loq+kaZxh w==;
X-CSE-ConnectionGUID: LirmeLeFS5iDaLYta4UfLg==
X-CSE-MsgGUID: ukV9NttJSpG3UjzRj9KFXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525872"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14525872"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:12:57 -0700
X-CSE-ConnectionGUID: tzsGNel5SEa6AZbIZ5Mf+w==
X-CSE-MsgGUID: xR3PqLgwT7qp0xnmTksULw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38696666"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:12:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:12:53 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BtdO7sXPL3nuKpMA6Fz9WqSARndvTO152rb05GPrEn5aNYtjUQpMWS9JxYCSLe9Q4/jc66Zt57Wli9Rc0YqneNK7vKE+rS0wSr4CJejnZdebspSOIHecUwXPG5haV3DG3QbcjT3oXHNPO0wmlaJgoTGqZmdl0tSpGF1whSJcj0oGKATfBWSeYAKzhJP1690/T2j1d1mf8zYs8msv7C4C8c+y1Fbt6rRDBReXDP+T7yxnrT1bKDoSIwMsEVzpj6VB97H16nktgqFSjMN92rOlGzKlE6enIr/MUZgw26IZiXQyQB3QpUfoMpmUSAonekT6tA6RF5ZEorHrVhVDMv0wnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uOoI2X8LRr/i8DSVZ3g58LBHAfC3vdRbleL5X8ZUXyA=;
 b=QBvpIU4FBd/vlKAuzreZy3QnIiYIoCzTkCvzrPTUu+GY0BNLsc0IlhyADqMTmXRXsM95gMN8z0pXLrqh3K/tIObVK3mpB0s6Z406Smm2bM/4oA0tI4Yq1+1EcNf088Nlpi3AKBFefFo9r3YSdclN5VzVd1ACgrKqdSJnYqmbYRSLlo+c7d4v6RSJP6Z9ltjjyUsbYKc7HMEoehWiVN3mOZRBRlXq0BKZWbG85ywgWGW2JI972byvVlDkxIBlhAjlYuuVULmZ/GvvD6818xOZVx5yWwDOSJo2lDYetXBD3dZ1CqgTbRAdtv+oHZz6g8ep7sJTVJhybLszBz3eaK5uKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:12:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:12:50 +0000
Date: Thu, 6 Jun 2024 12:12:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 53/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_N2
Message-ID: <ZmHgAAX6C1YIhh9U@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <6eeb0c74d6e566f04a193b2a3f1272e58df66f20.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6eeb0c74d6e566f04a193b2a3f1272e58df66f20.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: e698b7a8-3f77-425d-b5e1-08dc86438339
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oWOe2yJf8F/0OfvOM8I9MzH0GXlSvzoIAjUdOOCZ9h5AhuPuDubUjZvk7WRN?=
 =?us-ascii?Q?KmGpt5xQ3txXRtE8oXQQyUf1aXbbrQP79EGNcL0wL+DemcSSZLmO6VDQU2Ff?=
 =?us-ascii?Q?mzgxKHg6midO9oVLDM+SzlZDD93c89vghSrwM5bhcUXwBTsXNAEK8zVEiVfg?=
 =?us-ascii?Q?dTyjL3zlV+iQCU7SPlpX2Ldrg/FtpUNxG0VC9du9Q65vimLAdv9Tau//EQY2?=
 =?us-ascii?Q?gEnUEBumTz9Q4/x1KZGVXpJF2W3CU43RZ+gcZVHA0DBwvxyOg8qhP1+IGpub?=
 =?us-ascii?Q?qlkMURYvLG+oLrHgSjNccu54zgazawPyfKnOTh0hCPg38b7/dcmYpUnSFsmo?=
 =?us-ascii?Q?wjwcbz9/puZzSLMi6uCDQUQj+XwgaBV1lkSNArITQO6b9KIM9XtlwjRbonON?=
 =?us-ascii?Q?/J7Z0xAsvb25CwSnwfnKxIqpAiVfPgthO9kTf/xUGdJnsTnFMKnC6/OublQ6?=
 =?us-ascii?Q?loRAbtBL5+cSvPHMHrSYavKD3w1/BdASusylOPu4/QFldfYixOW/6nPSnc6Z?=
 =?us-ascii?Q?Rp2uEVKtvI/0akX9U16ne4b82EBpCloShwFc1AqCFq93af+TQb9d5rQr5NA2?=
 =?us-ascii?Q?LtInQu15V2/4aogJnjAZVEj9cv8ERVAreuPM5iGSN2VsF4Nms/bLlCoWHvJX?=
 =?us-ascii?Q?AYTfV+pd8goBEUmvYc75D1YS2/DloQcKnvjpYsrQ/1Wgd8dajmGqsN9JSDUN?=
 =?us-ascii?Q?uzXwhYGUSRhld7oAcCbsdcmrZ/nXwkLyaN7KilrT7bJBVBrdLmzlF577gxoB?=
 =?us-ascii?Q?RS7xXcZUray1gzJypVqgZkfTAqsTMGi3jWk0zbs+ULfqOJv9G0vzYlTqeZNF?=
 =?us-ascii?Q?AHBEDpHMAD4GI/UCkCrA4xpdLSHxJbYP9TnzEzWy9V+ovyN+9tTZoCT12rPh?=
 =?us-ascii?Q?/YnziMEVt7Pml6NQsYnc8nyBYYvrcZjfWEkUQUqSZHaKtI+1u1Nx2BVO8HQU?=
 =?us-ascii?Q?YmsxZHM+x8GnTbNES4qJlE53ZgKCWaYtlZTbjX8gcOjwxXwum/kTiel34fHx?=
 =?us-ascii?Q?uePJ5CwE89fcKtL6OnSW/VguAgfDGXReAJ4SV4D3X4iTOZd8Ty7wcLKaaT2E?=
 =?us-ascii?Q?DyyvaTPGGn6lWxZQ/AezMsxiWcUtFRb0i9qMBgwmlJ271f+IckFaKOx1VtED?=
 =?us-ascii?Q?ZN4eh/sgneqDarXil9ERp9xwrL3GObe/DkdHzFY+D5JQ4WUwk0rQy+OuZ/pB?=
 =?us-ascii?Q?ForjV3GvzniyUl3CHssJPcrOxaOQ03Z9NAfGRrsyQFeWeLFzEgsqynIKRnMA?=
 =?us-ascii?Q?7IWWtpuf7nFbEck9VUuL8OD59PM/kJjeKDFNT/pH78+aRA4cRUCXnql6Exnb?=
 =?us-ascii?Q?2ArjklmrpJ/uu0Zdp03GLHw3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q7t7Xm56FTZWf/XcSqNZzGyfUcEF5YMLkHSFxvScjGQHn6USbixxDCMFliUD?=
 =?us-ascii?Q?HHsc3Ucv4MQHDxDkY8DT+0dfSUbdZC9mTlI1askVUuiuItu/QefyO5nzvwHn?=
 =?us-ascii?Q?RO2Etz+NTzoX7WW6Q7RhN2IWB0LP6OJddWz+Js2QCLb9DIDVRH6zWi6lgGoI?=
 =?us-ascii?Q?dDBkDDcpzqCXYVpzIe9RMiv1UlRAv41KhZWFdGjUgl/XRZ7K2u5cE+JoqoKO?=
 =?us-ascii?Q?qQd+gOVBNau85fVhauOYZMnlSmdQUOp6FKXsgZmmdjDoTrAlGdaxQM/CpRzr?=
 =?us-ascii?Q?WWj4rY6IEsXMTaMNrG3afEbSalfaH5im7/fhdDdxwWMTlO4eqEIcDzI0JmFy?=
 =?us-ascii?Q?6j3PwG/kjbj3SA6uICYRfUfjXdacv62FmGcoRkBryuSMWrAXYgRV2iVNRMss?=
 =?us-ascii?Q?Pg9CzbfBOWypTdrKmhO62ieeVpUooNkZPulfp5fzeL4sEVkNEwzKRi5Ho5xy?=
 =?us-ascii?Q?hz/0qamMwFVUY/o708wcpXDAPPOOdcsm3ROjzXC8MVu8AEqTALp3NEwGy5Om?=
 =?us-ascii?Q?d2wIG9aI4dPcDRoYDSPxw7G0rUuTDEV9cGwl205odXmu6H5STyjvXU5wRGFO?=
 =?us-ascii?Q?DEnEs2RecAgPWgSUhNq4cJcV4QIj6DvcVfQe3rvinrkOnixdQ3u/W5iScD1W?=
 =?us-ascii?Q?DjYDYTRRiy3t7u0LH+ofgcVFTeWTexGERTQ+wq08yCTSmQnTvpz1L4ONJPRJ?=
 =?us-ascii?Q?0XnCI5TyWRdAEb81gJlg2n4Renr3tEm0V22amyklExdXmDof5YWLPVVQXLCa?=
 =?us-ascii?Q?5vWAiJZv+BCeUGr3JFZN20XqEDVQ3I7YcgJd5Exdgsub66aW75v9VMc2OLTx?=
 =?us-ascii?Q?AIKajIiRwvjB/huPE+5gWbN4SKOVvRUbI6hEJCUbAoG7ThlWaPYQMROof8i0?=
 =?us-ascii?Q?3QiNB3RlP27FLnDRYvA56VoX+VcQGo1fw1NoNtdBMf+sLYZZia1mH+E5jNow?=
 =?us-ascii?Q?mVdoVhoiL6/1/bNkr7oqiwLmM5DgEGYbzgCZt1GNZoLwN/s/vw+nR992APLh?=
 =?us-ascii?Q?s0QES2sE+6NM7ypUbuUwiX4/6TAFC5izH71fURDyLdxApqhAOJ36a8tlNCGC?=
 =?us-ascii?Q?I0PPvG55f91IFrQ1ZX2HGW/u0YMuzoGC7C/WR97XPnchEQJrZL/33EgStBLN?=
 =?us-ascii?Q?FE6T/3wk70fSwW4IER1/8nS58HmQNgpM1xNR4jOSqgy7fhvdHESp2iBA/4uy?=
 =?us-ascii?Q?TBBVSm6YAoOezQIf4knZpWhiev8XDi1joyJXaZahQgZuipSepGDyX00ZFYNz?=
 =?us-ascii?Q?k4eycpMb1Jcylw/vr6HCoDXGLX4PdOEHTUU7ZGn7GMVB5gDabkERwcTabZre?=
 =?us-ascii?Q?prjkzw39zszxQFQRc5WNjY6U3fjEc6B5cPltKiA2sGs6lapMTKSBFHM6b51e?=
 =?us-ascii?Q?X/bPnJLIB9yKy00aAq1uEYNZeAke4mi3TEWVBQGgDwjzhdzC82+Rn2qPwpz+?=
 =?us-ascii?Q?plrBYMvmWnMpJn9btE5OdRnyDheeDWI9F45bRYBdveNEBgJP0PWrgG930Ig+?=
 =?us-ascii?Q?ZhpDzUtzrtKrkfApwo/jcKXC+Z9zmeMxDvYiN0WZqEL2pNaTcRtWhyTgMDUl?=
 =?us-ascii?Q?vO7AruGlllgZ5skswyHBw3cb0+eLj+KDaX7PhpAt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e698b7a8-3f77-425d-b5e1-08dc86438339
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:12:50.3796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cRhyQnnf8BQu2czIM+FsS2kyW3dpSEiRFPbPxdjQJaDEdjspZw04p2e5zSF8aGEBY7Twvr/Zk2afRVCPoTwcbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:11PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_DATA_N2 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c2a2061a467d..7bf5b2559143 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2661,7 +2661,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  
>  	intel_set_m_n(dev_priv, m_n,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
> -		      PIPE_DATA_N2(transcoder),
> +		      PIPE_DATA_N2(dev_priv, transcoder),
>  		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  }
>  
> @@ -3359,7 +3359,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  
>  	intel_get_m_n(dev_priv, m_n,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
> -		      PIPE_DATA_N2(transcoder),
> +		      PIPE_DATA_N2(dev_priv, transcoder),
>  		      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9c56df4c1f9f..465d73ef43e2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2382,7 +2382,7 @@
>  #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
>  #define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
>  #define PIPE_DATA_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
> -#define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
> +#define PIPE_DATA_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
>  #define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
>  #define PIPE_LINK_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>  #define PIPE_LINK_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 4199106f7202..829196c665c6 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -269,7 +269,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
> +	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
> @@ -277,7 +277,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
> +	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
> @@ -285,7 +285,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
> +	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
> @@ -293,7 +293,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
> +	MMIO_D(PIPE_DATA_N2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N1(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
