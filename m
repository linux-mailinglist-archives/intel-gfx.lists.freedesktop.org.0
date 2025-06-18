Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2F5ADF58B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 20:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6BB10E1E8;
	Wed, 18 Jun 2025 18:09:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NzdIGKsD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5146B10E1E8;
 Wed, 18 Jun 2025 18:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750270145; x=1781806145;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=XaguYgdR6hj/sNuLkV4oXJTwoTHj3qcWYwdxz8MJ8hQ=;
 b=NzdIGKsD/KHEhN1qEbdtRHltLcXf9x+XLCSxu2+BB7QtT+cWxGCTv6sx
 1GYJ4aWTETn8dz6/CEy+5SrN9y5/777A+HT2OINRiJJ7GVcsNSiJLpmO9
 YJcCITKTpraTTKADf5AqI8RMjSHHvNkshsRnBmT2Bs77U6T0joCwfnbEY
 cfrWOV1ETRj2IX/FLkdV0WMNyQinAyOUDEvhR3AayVqVQ3vLvycBFKFhH
 c1pqaSJGJrrgQo2XF8WCqAVx+C/w3IgZ1fqW9y8MN478cp+NZj0VqoprE
 AiihhuykTluZPuZ4R+mU/0lKjiEw8EtnxPZ9hhM2s7Cjx91w/HCeNAzAF g==;
X-CSE-ConnectionGUID: oeNQWEr5QgWT8f5ww5V0WA==
X-CSE-MsgGUID: obtc1fn6SLuhc3EWyW/mOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="77908684"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="77908684"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 11:09:05 -0700
X-CSE-ConnectionGUID: +ErWdgpkSjSaBOWj393SOw==
X-CSE-MsgGUID: Hq0I1FNlQ1+Mo+Bp6PSVrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150348929"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 11:09:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 11:09:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 11:09:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.72) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 11:09:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sSnLlIprTN6pbPXApljT6jxWdHIXUyP7fqEaR9Q+CuYjQsitBVL/f42Ery+ISkQSt1KGHAnAGH9bHLSNyA4LCA9ZHOwIhVlPIpdT4/Md3BOrIX/PKabtR0k7LJVw4XfbpG/WbKrB+oHA9HKl0nJoLobUK9dOnRmyuJLZB72USIJL5vW6iOflWRq8GDzZrjwgRFp1xR0jS24pWNqJINpQALDDKQuIaaDnlkylajtf4PKHk3ritosw1xs66E1svmF9YbsvhPNIczIuht41IP8RXbPEEK9vE/681DD9TwQJ6zD300zKL5ewitxoRbxJ2FjKkwbVt/KkZLrfw2O1zSkEBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sD+eeh3o/B/ZqyE2q8lV64jBhyNtlrDiZ9o2oM0xubE=;
 b=Mcr6s2nX2jdRkgwmjVUK5MbZbskfoFSjqjSjcLc4muG0EESki/8K0sGZfoK00i2SNekO/fXitS+VdOo0B06GlJlR2nBXU9krkkZ0b68UkA/+5QD6HI2mJR+ETqIhMSkHNa6Qr3ykjUngef1jXSw5quPGU/9Q2DkAerf/T1JKcgz/3N7rX5HxZzT+txiGX0BETyI5x82Wx0jtLMOe2cwLASos/F6HoXDEH4Nq/llLlnIhpbRrB8Oid4xQhO7VKGu16iNIV7vIWVcbchHJYoq2sXX2OtBvSMxmmOQIa75uTG2d+a9qHadDy7rn9BSUdL+zFsBPgx2NSBC9lnGh9PaZ6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 18:08:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 18:08:48 +0000
Date: Wed, 18 Jun 2025 21:08:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 00/16] drm/i915/display: make all global state opaque
Message-ID: <aFMAqoFlMqJ5Vg9x@ideak-desk>
References: <cover.1749730224.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1749730224.git.jani.nikula@intel.com>
X-ClientProxiedBy: DB7PR03CA0077.eurprd03.prod.outlook.com
 (2603:10a6:10:72::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4628:EE_
X-MS-Office365-Filtering-Correlation-Id: e8f48f2c-1a94-4281-cbb1-08ddae932c2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x49PNndmQqyOashDNcMXGKe/8cIdnpmM0PYMWjkNCKZWz1CBvFqmhlJZ05ih?=
 =?us-ascii?Q?bXFb3cyQ3Yy7Vn5/G/teV7sSXvC3gY4+VBIanoA4zSOH3dbkNlvpjyNPsgZ9?=
 =?us-ascii?Q?EI73rBxHm1spXD5EZXgw4HjL3yAYaQ7+mC0QtYjxTITYsH0Ej1gmTNTKth2c?=
 =?us-ascii?Q?XhcygFHgj1ORnxv/bmTBxZ/SMAsqLoN1xG9Ryqiyt3UIPARuImREtNliLbhA?=
 =?us-ascii?Q?Pl1uu2RvYI/oWEseafadJrPgMJWyFaxOmJWEnQ5h32IjiHWx4olwuKxHXCrG?=
 =?us-ascii?Q?RUjwPWndF4xnJhjJGVOy0vwRo2ofQ/e+bc5NwCV/emA5Ar9ziaySwBvm3Ps4?=
 =?us-ascii?Q?fBrvKc9QUuJVZT7RFwi1q0L1vu530LS6UZ7dO79EmQpcEcLkfOzw/dmHce9g?=
 =?us-ascii?Q?DYljnckoNjm4g3/n1KN9tJUDVw6k+N7ywOHrQeaSQa1Kfk8/nCqBxIIXgDDn?=
 =?us-ascii?Q?9uodizpXi2cejcuQAzITmWJrenfEtPzkB7nL0IdqLvIrc+c437YI18WQXoU9?=
 =?us-ascii?Q?9HhcBxJfVc9Mv398TZdQfRqEmGxqtlOAxb4bEMEWS/u7XaizbNT1GBXlYShl?=
 =?us-ascii?Q?v/GkXNpX5iRVgqxzW2m6kse4Kxy+L3JdSotKpulmHEInnMre8iAy/8Mgr04r?=
 =?us-ascii?Q?/eYZho4WRanHKr3HiTKSlnLyrApk4akyPUmgmOHglAROK1kevVYzW2+5IKde?=
 =?us-ascii?Q?QQhreKpW5fGjNWcnerl9M97Yh0YAbhSredKd2grwThWON6Vc8R2E3/cDKPlc?=
 =?us-ascii?Q?PBByotDLGGL4m67/u5KY3j77UgCo85DLvVl9Gns+IH5fjz2H0/FrEiDEtcuH?=
 =?us-ascii?Q?sEk/km7/SoIhF3ubkTS/RBNAUROUvXgI1qkS1uDMVwV0LrGjT+y1iZ5HDN7g?=
 =?us-ascii?Q?N83VCWTzV+Zg2xWK4bUMv2tDWwT3Kc35IQPHD9J7XU4d/9A/e4L9BJEadMZv?=
 =?us-ascii?Q?D74qbqIdWWbIutqa8TOPzlVehZx+MbPKQxVmWn6tMC07TPiB0QXMUU+J8c49?=
 =?us-ascii?Q?9QfUsirjDw42SS5EUuLdifzKXUmsOLWchfb9/1B5srkfoEVmR562vyIrwi+/?=
 =?us-ascii?Q?Mvit7fkj2nlo6TZGEA3BpcKrBiCM8U/wLTdL8gzj8zm0QSf+w4xJfWapIeHO?=
 =?us-ascii?Q?XqUVs9cxiX5RjYUaMmjhbEzJfjz1AZTCdbrDP6/bDJD88d4L4C0IvaxqySpr?=
 =?us-ascii?Q?KDbcR95PdlLV+FjKRIRhJsaM4UP7iohEc4nYBC8pYc1DSxsbd8r46FqAyXxN?=
 =?us-ascii?Q?LCRFFlNg+uVXyPIjRt5ZknIWwi+jlcQvgaP3Tfm452F2julRJiXRtXz8KewJ?=
 =?us-ascii?Q?qvFcy1QFZKDkyRNfgToXn/UukR4zzM+tDwui4nqnfQBDK/+E9jlyzAFnwUKN?=
 =?us-ascii?Q?n5RvL670jLmwCuy2+kSRKU1+FZi42g6DpiGQgPW7MwfxebtiOe+fels4zagA?=
 =?us-ascii?Q?b8pnV7I9Dt4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V6SFgILNp4zidHClS7coUXrD1nqcR3xOZwJYwMEi8zseNJHNqSCvlU2EzuQE?=
 =?us-ascii?Q?LSkzeKkOJHdwGS9T7O+mQb739WimIUPJbmCXxfRhJNzO4TEpNFEZjGluF7tm?=
 =?us-ascii?Q?GfcjrAJkHdtzqlIjEi6A5yChEyYnvdc3phRzlPCw2GHpEmpQFsaz/wtNPZ6A?=
 =?us-ascii?Q?XkHy9+j+o8Lv4+zdAgCotg/X9j/f8tvgw4LQ/0KizCi6Uo7nVH4KJMrV2vC/?=
 =?us-ascii?Q?GuNvOUzO+LVUH+7tVhbaxu7Tig8MoQnfq4mayIlH7FI4h15Q8j/I8aAuliUM?=
 =?us-ascii?Q?TORJBvTQxiG+SAPgiLQi3zlZKVVPO34q7WjRZhBEHbCfVsPRg9NY8oew9tj0?=
 =?us-ascii?Q?YK2w30WGVatGElTQFqSxzw+Dp/S4FACmvInMIyysUUYAQpMRYa3JwIixA9xw?=
 =?us-ascii?Q?nz/IjTY2j0dof5ecNBbjYm3bzchEhn2jm36+2WKzu7i+Hi1dNOK08F6H+24M?=
 =?us-ascii?Q?Nnvm+GKj+aSlIE08lHVHRYM/ntOv4jKjvk1tNItZ9FWA+5zxHtP4+WAVWoE6?=
 =?us-ascii?Q?pzo3ZoOQBvgk1MqwBl9TCmkuoXlK5JKvAJzV4bLpelzOdRGA0Xx12csdAnjj?=
 =?us-ascii?Q?16bLJG7gs64wv0EME/oUGLxFeQ7Y08RlGYm9s53+u+iAojCHu8CT+VZGezZR?=
 =?us-ascii?Q?fEW2xfqtD2OuLkDtxtSFaBlIVaz0iFEz0DTUsqPrZbaJZMpC7WxjIEXcx5Qr?=
 =?us-ascii?Q?eWspVAwWjvD7+kXm229GPamPQ5gK/YWTQRqD5FR6HkZ2dc6Vv8CoTFuTUr3m?=
 =?us-ascii?Q?SX+vS9A5HT6npSN+hzGq/JYcxnYHTfUUFh47NPo1vR3+GHDV7U7vkv+S31Gd?=
 =?us-ascii?Q?W4dkVkUCQsj5mojK34D56NRc/B9Cdyey8wAX/xx71RdhECrGS1BTBmSwVqkq?=
 =?us-ascii?Q?G8AC/4o4RvzMxxNJd01SYLxEoaNK68sC1sufmj08Bd4ki0J/ttQr8UT86yRE?=
 =?us-ascii?Q?nn5co+1aJO0B54Z1fmHXV2CzfGu76W+ST4XOWt/rgS6/fdZyEdS5h2OV97ta?=
 =?us-ascii?Q?FxrQXEaPIVFWhZeVuLOYadBHTs2BH9L6KGHwUvane/2c+9DMOsXmcJx2/TUr?=
 =?us-ascii?Q?ZphBTvZCrGatKmr3TcXG9+3MXTciz+PsyrLFoo22RwekBAA4PSycEoo2pZor?=
 =?us-ascii?Q?t6bL/0OlDPg5cJLTHfiU2pC5UJBHwu2QLF4BlgB68Mnh9Z58QhFM0jPH84II?=
 =?us-ascii?Q?FNReV/wUzU96oIeQz8GBKgZuEz7qAUmFahQqZds9WkHLqjYmLTmqqm0Y0yOE?=
 =?us-ascii?Q?kA3KiqmX2P1CLB6whNIRHCecJcIbMrC8ILNur/e3Xl41BkQgdV78we0Bq0aK?=
 =?us-ascii?Q?ggCojjF+yPm12necdkfQcIYAWtz9NFKoQYCtOd+8EDbtKZlrgCj8+9PJghSc?=
 =?us-ascii?Q?OU9o9nP6A9du0R9at1NrwBNm/wRaMA2RaHeI4gI5TpYXSwFRSck4Te0i/9E4?=
 =?us-ascii?Q?m5pdb3/uXMJrlbgXgh6IH3qOOut/U7w5m38qZnVE43bHfqT/TA/LhtIIWMvd?=
 =?us-ascii?Q?p5LgGj96Lnzo8oC3m9d0rKmDHFr90KLtwxC4HWoeQGKuHj6szeWFNQhdgMmP?=
 =?us-ascii?Q?s/HBJEPUFWNfq5A/wjc5i+q/h/dOdW0bJ2IoZPX7?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e8f48f2c-1a94-4281-cbb1-08ddae932c2e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 18:08:48.4281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lt/y0aSrHFPRzhRDNxNn1f7bXCS0kXqy1lRA25vVWrSwvFtxBhnoHZZtWDWiaqKVxtprU5/vNps/92reduR17A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
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

On Thu, Jun 12, 2025 at 03:11:55PM +0300, Jani Nikula wrote:
> Hide all the structs that "derive" from struct intel_global_state inside
> their respective implementation files.

On the patchset:
Reviewed-by: Imre Deak <imre.deak@intel.com>

A nit later about naming of functions.

> Jani Nikula (16):
>   drm/i915/wm: abstract intel_dbuf_pmdemand_needs_update()
>   drm/i915/wm: add more accessors to dbuf state
>   drm/i915/wm: make struct intel_dbuf_state opaque type
>   drm/i915/bw: abstract intel_bw_pmdemand_needs_update()
>   drm/i915/bw: relocate intel_can_enable_sagv() and rename to
>     intel_bw_can_enable_sagv()
>   drm/i915: move icl_sagv_{pre,post}_plane_update() to intel_bw.c
>   drm/i915/bw: abstract intel_bw_qgv_point_peakbw()
>   drm/i915/bw: make struct intel_bw_state opaque
>   drm/i915/cdclk: abstract intel_cdclk_logical()
>   drm/i915/cdclk: abstract intel_cdclk_min_cdclk()
>   drm/i915/cdclk: abstract intel_cdclk_bw_min_cdclk()
>   drm/i915/cdclk: abstract intel_cdclk_pmdemand_needs_update()
>   drm/i915/cdclk: abstract intel_cdclk_force_min_cdclk()
>   drm/i915/cdclk: abstract intel_cdclk_read_hw()
>   drm/i915/cdclk: abstract intel_cdclk_actual() and
>     intel_cdclk_actual_voltage_level()
>   drm/i915/cdclk: make struct intel_cdclk_state opaque
> 
>  drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   4 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       | 153 ++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_bw.h       |  53 ++----
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  93 +++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  50 ++----
>  drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
>  .../drm/i915/display/intel_display_driver.c   |   8 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  41 ++---
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 134 +++++++--------
>  drivers/gpu/drm/i915/display/skl_watermark.h  |  33 +---
>  13 files changed, 336 insertions(+), 241 deletions(-)
> 
> -- 
> 2.39.5
> 
