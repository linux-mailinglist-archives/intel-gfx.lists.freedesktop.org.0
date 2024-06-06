Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 345598FF0F6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B076610E9AF;
	Thu,  6 Jun 2024 15:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NykrEBKe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADBA10E9AF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688584; x=1749224584;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mIW6/LHsxQLL9PPbmWUxr+0QYMft7xH+eKQSHK+qWME=;
 b=NykrEBKeEk80PkekBmKyMdk0tgRPnqXj76+lhu1hN9LlupP1dzRXm9iQ
 kJKYPtQejZnaklzzpaa+UoLVgjwd7gSjMjFPR6WEqtu1eC2VKrh5PVDTL
 EqMzTAyK4SI2Sh18Rcdx8Mt/4i3aF10Bc7tHUon/LUgvjXDjwvJ2UeaWD
 5GMyv8rBE9vX1aoyIBZH5RwfIxUbVwkUYP+7a+2JQ5tbIrVoLdTFjsKbr
 UuFnDGH8fDT672n3k4jVCfy9oJzusRThACWAARrlGrZpEUEtYblvvAU0E
 dC5/y0ftVNe6/fKDNcO/E3zoPpyPl8ekpGoaRiuwyip04s7jOASoA6f73 w==;
X-CSE-ConnectionGUID: sDn9g4BOTlq3HZHZj86eCw==
X-CSE-MsgGUID: eMkgkSncT8SOeB5xeRFENw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14108605"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14108605"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:43:01 -0700
X-CSE-ConnectionGUID: fsHnjaLRQiad8KOG8jRo+w==
X-CSE-MsgGUID: YHed0EmJStesq1MwgPe89A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38126282"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:43:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:43:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:43:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KVy9vdqoOiG9+NhYTQWKRWsaaTV8hR5LNPQKR/gbrxo/sY9/J4BOHp0n6h/Gra1J1IE1X5L6/V+Z7JvLye/v95S7eAUsgJlOnMv6FHQpqh28CHFUZLI+/Y5t+qJw7PasSgg+6WDolYE1YENClNzX+xYJDMvzGGjZoANJNTfEC6+vN+Hi9/CXGCk4u/nXddWKW5SAQ1OF6IxQFEH9Yg3hi3AXHf9Q0QHtXwOURKuGluIglsEfVlv6u1pFJkAnjMsfGEEEnvSckWoVDvFliYpD4mVmADYsrqK1kTtZm5GN09Xyn9dqlx3AFIWaOj6ygEKl5lQyNLMmIhNKo1twUjM5jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=evdVXb3GSGcM9wP9iz/Io30uR2b+QCDaaHJbomHSS3c=;
 b=ipLEobNiFF7KjNuEadhjLgVMkt5x10YYGnY+6fv5b4HGafITbo2oJcDBOWDieMa4kj6HK4L6yjdRHUN9Po3i6mLWkp4j/Rnnf/DshZ8/AbRKsBosegsUf1l5paN5ags2NtG4NIcxn6P5PphcwqRBmfICtaji5DWhD6ygLqntId7Yc4H/nGQ2nuLoiw/EUC8kc6ua0eCd5FeZqbjkZ/MjGrQlYylK0QHi3YgR8WrhCUcne0lW3uLrg3CPdVRPa/q8hG296Z+7ti15w7qNQbN2NpqCyaCZGhufy8jad57hzv5H+41UN1VGnRCww0rqfjcOAdQGvigdnrc5clY00Z00Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:42:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:42:58 +0000
Date: Thu, 6 Jun 2024 11:42:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 19/65] drm/i915: pass dev_priv explicitly to PIPEDSL
Message-ID: <ZmHY_0cPNTgi5Zum@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <53b751f5a883318d44b690284d2e9d5a43fba860.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <53b751f5a883318d44b690284d2e9d5a43fba860.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: e778e0fa-bd87-4d04-854d-08dc863f56f8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ErI3ayA/vnOLokNXo71RFryIhCJ05K+k/Z2zPUqbC8lyzdRaCkVWYVCq0Ht8?=
 =?us-ascii?Q?UUzpUR8Dy+bNQR/4sazZ/hqoM0/RFM1hYfXMWXcxu/Hk4AAx9Nsy0Re1bNOh?=
 =?us-ascii?Q?sj1VKPZ5XUzKegBPYmuWcExCbZJReOvr+DCFP6vGdJ24ihoGzsXwiYua4Jth?=
 =?us-ascii?Q?EbCU+sN+9a7JdLj2LHpdr2+6ib9tNdI3PpUoeRZ1QhL4/M2gAEsBPFEaBRUo?=
 =?us-ascii?Q?I0cAr5/b9qyU65ZjhLNLjabby75wVB9Gx9LiNR8nL3bTVCVDJaSMya4SayYA?=
 =?us-ascii?Q?KC6eezad87u06EJX4NhOaq/8JWVNsG+xGyOI2KHkTXDZhJRDKfIFUbJKsmhH?=
 =?us-ascii?Q?ZhTIRBYpBu2ogZlW3IrHyEkAJRGcIrUJ4lNJQleF3uzUG2G7YOFsq0p1UXi3?=
 =?us-ascii?Q?AdHP317OWynKkTHtNZMRATfavDbuSKa9TiRPpibI4nZY3z3OT1gjB6rPdjkr?=
 =?us-ascii?Q?wBYVt3RYw/bPHzB/PIN39pEIe+CWQDXvIiZ4U3gHT9/95fnde0jDvnmxHBei?=
 =?us-ascii?Q?BTrpSkRiiDz4zBAA0wzhxDRxWlhBz3iVDRD391c53k6UKPjV1riIyL+nFoA+?=
 =?us-ascii?Q?01MNAQNj9wzqr2SFBvrDDy6SmtwagjhSedkJ+FoMqbshZ5YDLBkklGIoYbHx?=
 =?us-ascii?Q?2IRWR3TVbRzSLka4MGdAgpR+mq5wDY6ld/qtq0A26AI5QDreo0eH3Oi1iZWq?=
 =?us-ascii?Q?dr1GT6GOaOtxQ+/qSbg5VLa7l3Ja1nhlUBjgXsuMj09YTDxMuqeIYU7QbGv0?=
 =?us-ascii?Q?+tudsZsRuIvXGkv8JIF26bgIctKVpwMeoy9AB2HlWpp6k6Cab3B6JgW8b+rx?=
 =?us-ascii?Q?GZrW3MUcJVgc7c0jYTRpNnC2e4OOH1YzQe9CmxhWBXniKBZBWPUlaAyLH4Yl?=
 =?us-ascii?Q?lP/xgy0XUT+P+YT7u9w3w34T5WxKTXb9uhbOr/+lNGubJxtJVZA0tujQUjEl?=
 =?us-ascii?Q?USS05EWW6EhcAo8GRKMX8t9TG8EGiXqNDfwpKILi42qGpeBMz6vtQG0BldF/?=
 =?us-ascii?Q?byLXE1/fqPvWuwKu/Ht0O6Rf3QR5yeAWRAcMrkn2C6Q1sK5F8gD4D7v7/13f?=
 =?us-ascii?Q?YWy9VuRXw0+3rheyfvA1iAmIEYVrdamJ6XKC2XX3JrntMNFXBOQyWcUaoxBS?=
 =?us-ascii?Q?s0uLZEPwRP0H/te0T7x/l/We4lvTZYhqglzNulf+HlgO9HYfpj/6J9JUJb8z?=
 =?us-ascii?Q?uZbNPLh13lRuevVBtsY+ISrxURCPB16LhJIUzGY8K4Q500RKMmqPolr6Yh7K?=
 =?us-ascii?Q?kE0M3gbiTIcfvlk/i21ZYJ1sCEwtXJELTNQa2J5ecC6cfvYUtm4aJZHBrURt?=
 =?us-ascii?Q?irk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RrA2wz0+zNH233LNz/cCJm2hmE6BuQWfftyJfFytcyTlM2IqBxR5zxtfGFhu?=
 =?us-ascii?Q?VdTlwnMP24R+jGNWE1LKMC5TClDx0pjyBlerKzpWS+HERXpu9Hjd3G9UBrGj?=
 =?us-ascii?Q?KwxtKjkt502Oi/rdcnRwjvs7DWF/oUoCcPKPKFveFxFFcwr/GF+6BGOHcxG9?=
 =?us-ascii?Q?WkzWOFUcE0g5gSqpjni7K8SbfCy3v6U+C+cmL9zpb0swY3DLH/rMPVPoBSYz?=
 =?us-ascii?Q?b/XH49zrqRmL7MDT5Ml7YOfi9Vt6K2C4gFI8MLc8/woAgVZKTNRfnn3dETf8?=
 =?us-ascii?Q?tHF5NnTEgOuPRaF4GaG4oN0wJ6h/4hqvXjQKPmchJrdr57wOpOZtD1lmyk8S?=
 =?us-ascii?Q?X95fakg6hVVFuqxoMJGwvFNs4lpCCRycsQlGSDERzoPY035vwi1IvrH7+vUs?=
 =?us-ascii?Q?1zo1khtA//hIy0g/vjorZKfCaqeTqGs5uk79O6z7YX17LiWpSHY55lP3BP3I?=
 =?us-ascii?Q?kxrlD2MDFXFg8knGU5ZhH74en/IN+55X+4HhFDhRzNzJELKK0pobeVuTA2LU?=
 =?us-ascii?Q?+kLrFsfKeEdKo5M8+ejlX1oVJp9HpRhqpUEuaGmzmo0rRxyS/48lxhMpAsPA?=
 =?us-ascii?Q?JtEc5V7uSA8Ack4RMDFUpP3E62MV8XZ32JRv28gOvB63ILD6EhzRqjpCsuZX?=
 =?us-ascii?Q?iRB34PWJy1jPWKtBRKfL7/9IBRJi2lSEwuVOeHgWLFKzZaEPmqsba1VdmFK8?=
 =?us-ascii?Q?j/P7tHFDtMYQdOS8t1+Vfzgaik8nSfhkE151CRcrbEkrZy+zIRFwE7kaB4wm?=
 =?us-ascii?Q?iDhm0y2Ik4O6kUsFRafCsDH/kpGxL0yxcl3R373W8DcIU2tWtghI8uAhAZQG?=
 =?us-ascii?Q?n4YkTKczaTh9hpXmI1oImZDiy2tnYOt7ZEqPMe+gk7QEQh7Y7+Yu357O40io?=
 =?us-ascii?Q?Ri1gzm+t8Z3GvenX6F6CasL1euqz+pjoBIpxKIDmDq9K/84CnzWTG6GB/x+o?=
 =?us-ascii?Q?keIexV88xqB2M3hJMrp/dxTFXAJbu17b31Dg2Ml3GwhCYYJEDyv/di57xf3K?=
 =?us-ascii?Q?aRYFdSlb46xS4CUoW+w066tbPge7+5yBSvrPcKOefK+E7vAmX/8HRu11wZM2?=
 =?us-ascii?Q?MAaq4yTeuyx/C1gCcEoU+rJkWcm6KG0Ky6lGzkfnob3EX6RigY3Cet95oAnU?=
 =?us-ascii?Q?K+udz86XaF5b7JRsavMBeL9wPuJ9vLFHaTHSyGfaEnd67aZi/53xvXbYvFk5?=
 =?us-ascii?Q?DBUO9q6+4bkgg8XY0lVoSf+3MgQUkzyHvPDnuH3ifAHrk8G4BE1o6YoOtKQq?=
 =?us-ascii?Q?4p8Cqr6SwrGlnAQDbD/wEkyRw74c1U82xZsiuC66q1lw1CqohIJh65H2Me0D?=
 =?us-ascii?Q?iaN9s1J2ARswVyJUr1py8wbP/f+aH/rXiRyIUoM8bjG0eOVv64k5QzIHDJGI?=
 =?us-ascii?Q?BH8cdQFtTKbYpKAK/ejgXATlFMcCUdG3ZPAgbIZMVVSED32L/36vRbUpdZrr?=
 =?us-ascii?Q?TIGCevk7qxs4hr1YMXg+hPdJJAsPVCPWf0oHMqdF9OM1ToA2WkMAoqV5+o2R?=
 =?us-ascii?Q?G5ng9F/TYd8ccdxK0K2fxTQkYUZX7FNyucyAa5Nh4DpF8f8iKwt7SIsyFENc?=
 =?us-ascii?Q?w24T22D2cnriYD7m4Mqqqiq2kSrE/pld8QB0rOUE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e778e0fa-bd87-4d04-854d-08dc863f56f8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:42:58.1749 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2nZbFHk+7OV2WVOQE0NfFWxbLH8EGc3wLNBX8vgEeatCHDJuFxhsEOo5/WJAzlNlr5kPb0acJSdY/QZskRw2pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:37PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPEDSL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c    | 6 +++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 3 ++-
>  drivers/gpu/drm/i915/display/intel_vblank.c | 7 ++++---
>  drivers/gpu/drm/i915/i915_reg.h             | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 8 ++++----
>  5 files changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index d4f16d894eda..835c8b844494 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -771,9 +771,9 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  		/*
>  		 * Wait for the border to be displayed
>  		 */
> -		while (intel_de_read(dev_priv, PIPEDSL(pipe)) >= vactive)
> +		while (intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe)) >= vactive)
>  			;
> -		while ((dsl = intel_de_read(dev_priv, PIPEDSL(pipe))) <= vsample)
> +		while ((dsl = intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe))) <= vsample)
>  			;
>  		/*
>  		 * Watch ST00 for an entire scanline
> @@ -786,7 +786,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  			st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
>  			if (st00 & (1 << 4))
>  				detect++;
> -		} while ((intel_de_read(dev_priv, PIPEDSL(pipe)) == dsl));
> +		} while ((intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe)) == dsl));
>  
>  		/* restore vblank if necessary */
>  		if (restore_vblank)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 06ec9ce7fe1c..7704ead5002d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1476,7 +1476,8 @@ static int kbl_repositioning_enc_en_signal(struct intel_connector *connector,
>  	int ret;
>  
>  	for (;;) {
> -		scanline = intel_de_read(dev_priv, PIPEDSL(crtc->pipe));
> +		scanline = intel_de_read(dev_priv,
> +					 PIPEDSL(dev_priv, crtc->pipe));
>  		if (scanline > 100 && scanline < 200)
>  			break;
>  		usleep_range(25, 50);
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index eb80952b0cfd..e2d20064e68d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -247,7 +247,7 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  
>  	vtotal = intel_mode_vtotal(mode);
>  
> -	position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
> +	position = intel_de_read_fw(dev_priv, PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
>  
>  	/*
>  	 * On HSW, the DSL reg (0x70000) appears to return 0 if we
> @@ -266,7 +266,8 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
>  
>  		for (i = 0; i < 100; i++) {
>  			udelay(1);
> -			temp = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
> +			temp = intel_de_read_fw(dev_priv,
> +						PIPEDSL(dev_priv, pipe)) & PIPEDSL_LINE_MASK;
>  			if (temp != position) {
>  				position = temp;
>  				break;
> @@ -473,7 +474,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  static bool pipe_scanline_is_moving(struct drm_i915_private *dev_priv,
>  				    enum pipe pipe)
>  {
> -	i915_reg_t reg = PIPEDSL(pipe);
> +	i915_reg_t reg = PIPEDSL(dev_priv, pipe);
>  	u32 line1, line2;
>  
>  	line1 = intel_de_read(dev_priv, reg) & PIPEDSL_LINE_MASK;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 72f5140cf109..fbd004bd1992 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1877,7 +1877,7 @@
>  #define PIPESTAT_INT_STATUS_MASK		0x0000ffff
>  
>  #define TRANSCONF(dev_priv, trans)	_MMIO_PIPE2(dev_priv, (trans), _TRANSACONF)
> -#define PIPEDSL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
> +#define PIPEDSL(dev_priv, pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEADSL)
>  #define PIPEFRAME(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEHIGH)
>  #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXEL)
>  #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 436d4a2eccd7..6a37f790c753 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -126,10 +126,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(_MMIO(0x650b4));
>  	MMIO_D(_MMIO(0xc4040));
>  	MMIO_D(DERRMR);
> -	MMIO_D(PIPEDSL(PIPE_A));
> -	MMIO_D(PIPEDSL(PIPE_B));
> -	MMIO_D(PIPEDSL(PIPE_C));
> -	MMIO_D(PIPEDSL(_PIPE_EDP));
> +	MMIO_D(PIPEDSL(dev_priv, PIPE_A));
> +	MMIO_D(PIPEDSL(dev_priv, PIPE_B));
> +	MMIO_D(PIPEDSL(dev_priv, PIPE_C));
> +	MMIO_D(PIPEDSL(dev_priv, _PIPE_EDP));
>  	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANSCONF(dev_priv, TRANSCODER_C));
> -- 
> 2.39.2
> 
