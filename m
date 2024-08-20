Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB919590B7
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D85F810E540;
	Tue, 20 Aug 2024 22:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LN1z2aby";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E010A10E53D;
 Tue, 20 Aug 2024 22:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724194501; x=1755730501;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pn38xzjpkICeVorpaqSqN6jNUBHdfGBZfxvMCdhSsYY=;
 b=LN1z2abyR3jYhhwwedSb6oU9WOnXRXqSaRz9AIXAgFG2j0/IzMnpQikT
 JGEKjXfWPljhSNDNzU2DKfUY4cldGswBATEDh/4U/y+1VGMJ4thLCmCid
 dSoFUuIJac6oT3XwPl90oTQnkEIxJz78UAbh8fQukBtx6I57DdtD649VG
 /6OAKGWzGGHrooHu+YTTNwIPrmr1vMooue/cKUYRU5+mwOSmGnB/osSCL
 8pN3JmvQ/Zc1Qo/rzs4vCFUyTEtW12711gE4KJpAho4Y35zGtdqrUXeGR
 56DL/kBkWzf6AbXOeiha532Dh4jhUzQRGd2GBIbPnQMp5iK0gDg9A1ofK g==;
X-CSE-ConnectionGUID: W/myPOvcSeqk0OCxoYI5Sw==
X-CSE-MsgGUID: dqpByr7vQimL4ynoZr7vYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="26396198"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="26396198"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:55:00 -0700
X-CSE-ConnectionGUID: 9PpEjOAuTOyrnO4gK2DNpg==
X-CSE-MsgGUID: qK2YTTerRe+rw47AelIsmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60740098"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:55:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:54:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:54:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:54:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tk1lroM2fk2yC+Usm8UG9Cd5F2V0EkF6C76VRRTE7qfGmTwzZ3lhYBLe+v3u/P9aERcOz9ABfWPNlzGQbOOPuV5mjvyWySDs9j2YpRMEhelNXLZC5FgV6Vt6hdHW4iKFTEec5Ar/QxZl1T/4LeLxdPXhraIdabRNFamzeNkkD8r7soT0vaQ/csqYHT9Ac1h5Hh+WcZM9yYsU6rJ2rbOic+qDmIzJRPyvMDz4p7AXVnrQJS4Oi5Yjx3eLXSXu7Acm5SLO1Rxcd7f9ssq8X+M5bt2kBnkJwvOxRvdTM7o2CHoK8bzPDCSQT9AFtPdk9oO0TSmym7aCco9BVcG430ViWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ddlVVUHsmbLy1jd/60oNMWcC/tYRIkBxfUUOt4wAv6o=;
 b=ZseUWr2F0L6h4fFHgIMHDMhGFrga+xsM7Uh7090lj3DUSYJpnBjqUvoPEETOhXOF09gyAFPhXdvUzOUUDtkMvC1FjTeC+c2clyGyOH0CH74Gcz+zS4ptB0Ebk6VfNrrZrbkwMepdnjUrySaK18x7nUhDbai8+u1DAT1RLIq81SROJPqzmtVW0VqxKqXju9QH9zx3FTYXSjIfQfB3jp695wPr791PGFSLGejSTcVc6htr61qGn81Ep40O+sHfXbJ63gy3UBNQ6w5ZfTf1FnZ36z60kwHCgu6ABuB1q3rTro/HnmnqkhDTs1ZlZmhgCq0oCaQlZ9q2W3VYE5cCky6Wrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.17; Tue, 20 Aug
 2024 22:54:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:54:56 +0000
Date: Tue, 20 Aug 2024 15:54:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 05/10] drm/i915/display: rename IS_DISPLAY_IP_RANGE() to
 IS_DISPLAY_VER_FULL()
Message-ID: <20240820225452.GQ5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <adb43f45ad0b1846c2cb9a5861ba1f727c41ae83.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <adb43f45ad0b1846c2cb9a5861ba1f727c41ae83.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM6PR11MB4546:EE_
X-MS-Office365-Filtering-Correlation-Id: 36e1bb4b-e670-4622-f45f-08dcc16b1c45
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nxPlQT/gNYs8D66e/AlN5R3TtZLWwifpfIb9mWDNoXijollgSJkH8RN+7LCp?=
 =?us-ascii?Q?6MDjekAP3o/bVVNJL0KJQCeofZQDpjvErlL0MgKRi8owaoyLmS3bVgq8W1EL?=
 =?us-ascii?Q?H8MqXlRi67u1nL9UeSzYD/RbPRQTkgq9zrb7TdqHe8vuIgBnI52dRlY0+ha0?=
 =?us-ascii?Q?o4BfnuncTE9PS7kxM3GMBwYlN3zx4/eMIiIOEMCJuVGVTabRAEsEDRjuk3K8?=
 =?us-ascii?Q?DcMZvBtdI04q63Gt+5SkCHmcAQ9tofVB56fQ4cJgF30cfLvsZMSJsND0mkT5?=
 =?us-ascii?Q?U+aFroFiREps2N5MLFMC7lshveTYgAUGwS+DK0inEySlLZBtHWXTc+qGOkCN?=
 =?us-ascii?Q?ZWc4aBntdyWOwjeBlpTtIDtVPih+uRr+zR2u/vd3irstxQ17nWvLKp2VT18e?=
 =?us-ascii?Q?3M6nWU5lXnvCVjiU87uDOVBfKBqyLzORenvQqXDXPOyYMQDSaKNGNKBqPifL?=
 =?us-ascii?Q?nkQ1EhDA880rsNVv/kBJVcTQuGH6KWacGYj+laWcf4lqOZ0vBWAXjVE7fs3b?=
 =?us-ascii?Q?vX3FHkPIY+yJGhQayzG/1UAcvFo4LofhwGuDwTd+/mRk6NTcWDtzhdCtVK1T?=
 =?us-ascii?Q?ZzgEU1Gd2TcGJALpGiALRRpYzpioNue3ZUMdaV7OC3NxbNxmJSNPF7qCag1u?=
 =?us-ascii?Q?ed07hRxRMS1evEp6QfYgf6mbIZZw9QIXguKHfMp2/UW5MV94aamikJyuBlkW?=
 =?us-ascii?Q?E68DcEcAuPy+nIxkKYDc4I7TOHezXXPtOpCS8ASdbJ4tISO2iyGsrCRgny7V?=
 =?us-ascii?Q?BTfC44cg5aj5wElpOy835NftcRCVCASc0udoWZ2zwt3qi78zG/STVsaEfVvP?=
 =?us-ascii?Q?UeJv3yGMzbig/HLyWmFnXyXaBOqQexSeP9Lg1gEtyoadjnPZIozrNnTdItDE?=
 =?us-ascii?Q?L7/CNL08Fuvo81j5NNuNaNSNBs//AtKnHOZ9Pi5C5VN+KfXyAdWTxs8GSHgv?=
 =?us-ascii?Q?STB7C9zmMQEhosBx65rhcLKhtRrQIv8zH6wyBYr/IzlUGoWBeemyeFDgw9fW?=
 =?us-ascii?Q?qaqbR14Tlk+EMVs31w9vbbMmsA3l9h/RGXrUUsUczvpPUNZYEIIjiVnNG4N1?=
 =?us-ascii?Q?VZlqZIiZbHr07iellH73q5QW8py5Lo9EK4KJf6pTn4LswZARiMQ73zXm0K0l?=
 =?us-ascii?Q?Q5Sk+oA2Oufb47jY9uQB8aL5GH3VccpzTrboGCZ7KtA7rIUgia1Jqgwxj3Nb?=
 =?us-ascii?Q?cD0RUm8qv6VNPDasirOY2hmvSWPuoiYnaBubJSUAjOuMkPuJ3mh0IVEMskSF?=
 =?us-ascii?Q?mL5MB1z4cAElrPrQjx7QDHtw3WO73RBFYcWKJjoEwtls3+gkIi8Jlp1/CDAB?=
 =?us-ascii?Q?75bzEVLdfiv0hlfWB4G1g/Ie78+haJunB+oNeDi5wZ8jGw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZdrkEUfLpXTrkDlr4J7UwwcF0QKGYOhVYrBwP9P3lxbSy4NlCIKhtna/arWs?=
 =?us-ascii?Q?f+f2r3EQS5dzbWIqAxwKQeIyvEaxzGbPm9Uk2074BimF+v6w0gRmX4U1s28G?=
 =?us-ascii?Q?NT+PHEoDIr3GlKYkwqsvPMKn4bjQYw6+tIAQDUcIjEl+2mV5sypJgieUjuW3?=
 =?us-ascii?Q?fDdVKXdvwFjLCy3T3bmv8v2r00WqmamTfy1hhZFJIR2TYQtDs6TePmzmep2d?=
 =?us-ascii?Q?Hk2G6PP1wzlSNSN+x3jh9NgA/4+rHgB6gl9QxZogMQ99ef8mxlU1EEjrlce9?=
 =?us-ascii?Q?fZjoqhb5cWbJVYzYdV6ew8avOZC14SA9VT2jGDCIOaDI3QW6Joe8nbsPEOEh?=
 =?us-ascii?Q?W8E/OnU7hPQK6myi/okeg2BxtSTKA0yINz6egJSehg5hJW+amNad95M2yz3Z?=
 =?us-ascii?Q?VZOgUuzGQdnfyn7c6F+lQYWZQIKPKqBQh3pdWkRvwzsBpRR9HJ8lZx8NCufr?=
 =?us-ascii?Q?aaxaTqWs+DB2KzK0wxpyrHKh+jeAoSDjo8KUYHwMdxBQFwGZoECX365GWLlD?=
 =?us-ascii?Q?8ucHToUTXpOM1L01nbvS8q4Si4znzUNFIxpxGlB1pkOpiTSXi90oJOg1vWfO?=
 =?us-ascii?Q?egjH/Y86do49ifxMMohL+YcP0729CWm/l5/4st8LElRJDi0KXneMcoH7BBdG?=
 =?us-ascii?Q?I/ORDlCY0pdLCRvlqe+/1ltOh98mLcWQvTmXfI/zzOx5Xi/1RDHFJPOtG5E5?=
 =?us-ascii?Q?7MPXr1ZzE7Xn9EWQzRdIu15rMTRpARKX0eKgqyi11nETw07FakEqiOvi/A66?=
 =?us-ascii?Q?w3ir8kj/hcnC5tQ0nqe1215tONaYao2pqD7GAPHJ/2alMzY6Tp0ZvEJNI6xa?=
 =?us-ascii?Q?J+h9GWo/Wh3CNzmULGzUaQ3Y5RTiucHnFe3LecQtAl3Hiu58SBdKhMLb7ugW?=
 =?us-ascii?Q?lXok/bcY2XC8utssdABj70MRtNoT0F2EHbrmjzWE0saofO9sCBDegq9MeXMA?=
 =?us-ascii?Q?loThmZpE7ZkmCL8VPE5eEGr0AjOTjVdre82Estu3yjlWsWuYh30GvfOKBtus?=
 =?us-ascii?Q?TMmyqgL8VeRdonYXrEFBm9zCWZ/+jJTFRqrVx4k5jkGPvhbZrBWvqlT4/Vfo?=
 =?us-ascii?Q?xw4X4geETIZUjXwZzA9VajcHAyuNtxXq61W3eyMspIEg7VqLTOViIFZGy8xL?=
 =?us-ascii?Q?KhDTD3wMeLNjevvtH/3D/3o6bcgr1SLm9FK/s1SP5DtPC7HLvSJaBfbaSS6R?=
 =?us-ascii?Q?xvbLAVsmLG5Q2Qwn8ODfHr+Fs4XMmN+cBH806Vi90FT80PWwAkyFfZYTBigY?=
 =?us-ascii?Q?0ZF2sqpOdDP/0eV4qVDX6H64orvC3qVuYVsxhbuLapvy2Ec3HD0kexVwZ+c3?=
 =?us-ascii?Q?o7DrKAKqVaDubrW5CtstJGo3TQpx8MHwVMUWVlST1PpNoUxvW7UdbAxVY+mB?=
 =?us-ascii?Q?HHJSnVgBlTr/9FjAvAcDYyXsmXoDjUS4p9yOhrG52oXLbFUwVz/ES+mtT5sv?=
 =?us-ascii?Q?7DSjbP17g700WKeXjh/iOaZaMe0+7C3NsKXC7uHVJ3tftyoLMFLmWrBAWXXK?=
 =?us-ascii?Q?Jze1EMApP9DFonDLok/GcKtcEoFo1VzjjWl/QZLiSHt3l0K32r13Au/SAsNW?=
 =?us-ascii?Q?u9HN58SePf3MekNgX00Y38bNs3oCy2FE82JXmhUTiM6Di9O4HT+OsVO9YG+s?=
 =?us-ascii?Q?8A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36e1bb4b-e670-4622-f45f-08dcc16b1c45
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:54:56.0837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gmv9oEtwdhA6ssrGjnon/Z44ETJoqnRzn3tO6EthEMOSrFmzNqsNpI0J/5bScRo4bzg8VbyviSvbZt7FchefFcMjmBNJxX4pk0fFtDbDivc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4546
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

On Tue, Aug 20, 2024 at 10:00:38PM +0300, Jani Nikula wrote:
> Unify macro naming. Be more in line with DISPLAY_VER() and
> IS_DISPLAY_VER().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This does make it less consistent with the i915-specific graphics/media
macros, but since the goal is to make display its own unit that should
be fine.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_power.c  | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 13453ea4daea..30c624989902 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -161,7 +161,7 @@ enum intel_display_subplatform {
>  #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
>  
>  /* Check that device has a display IP version within the specific range. */
> -#define IS_DISPLAY_IP_RANGE(__i915, from, until) ( \
> +#define IS_DISPLAY_VER_FULL(__i915, from, until) ( \
>  	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
>  	(DISPLAY_VER_FULL(__i915) >= (from) && \
>  	 DISPLAY_VER_FULL(__i915) <= (until)))
> @@ -182,7 +182,7 @@ enum intel_display_subplatform {
>   * stepping bound for the specified IP version.
>   */
>  #define IS_DISPLAY_IP_STEP(__i915, ipver, from, until) \
> -	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
> +	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>  
>  #define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 39ab3117265c..ef2fdbf97346 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1684,7 +1684,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		intel_dmc_load_program(dev_priv);
>  
>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
> -	if (IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
> +	if (IS_DISPLAY_VER_FULL(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
>  		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
>  			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
>  			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
