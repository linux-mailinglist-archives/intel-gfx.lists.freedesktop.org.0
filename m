Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA21BB8217
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 22:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D2610E97C;
	Fri,  3 Oct 2025 20:44:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aStlnDOu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A37110E97A;
 Fri,  3 Oct 2025 20:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759524276; x=1791060276;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u9DYha2JtNRYlcbintjZBXlF5JN34KujqQdGjmuD0WU=;
 b=aStlnDOuL0dXGGPngKnicRsHT6FC1fxQOVxiXlKhLapmjDKYmTyjws7F
 m4wLash+hx/MF5bQ/cUKUKP/+cgr9WXW3UDIGKM7UfXuagl+xr4wZkaLI
 HY6vTzZkHOVSizxNNiul5CPpDJJ3jMVsd8mdf1FG6Y8mQPoeSGDvbOjpQ
 ygFpT6dUh2nlBvgvzqagDm2pw+HX4Dbp9J0+uLvLQshX5ukVGDUtax8k1
 fEQuHmQWx0gFYQKdqDc0v5UfmqfgINF8DOr9rnG0bgaiza0wnFs/48rxH
 Nbz7DzPNz2sLW0V//XfMgnVHKUs1LR/P9Ld9YQX/bKxDMA47cJl715KmW g==;
X-CSE-ConnectionGUID: 11nctZO9QtC/JTfdvnocYQ==
X-CSE-MsgGUID: kBPj4teFRMirpb/XoBDDxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="72487093"
X-IronPort-AV: E=Sophos;i="6.18,313,1751266800"; d="scan'208";a="72487093"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 13:44:35 -0700
X-CSE-ConnectionGUID: +wpvlaCkQx2DxCfDn5FKIw==
X-CSE-MsgGUID: U2zG4DsdSpu8r1w2A0Xdlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,313,1751266800"; d="scan'208";a="178500214"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 13:44:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 13:44:33 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 3 Oct 2025 13:44:33 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.15)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 3 Oct 2025 13:44:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BR+LpH+ZjbtQOV6qBcnaSjXytRuf5IgSPfqnvprjDZDrHucJXsoxZxBwv0pypBHU9fZBFXFRO4JhcEO/KD4elIX6aN1V+1pLr/HkgaHC/rRl+9KmFElXXQeFO0RFvzfwBvYNWUqUZViU1L9UWsrDOZmB7jFZuBfDZPyk9NfKgueJyb6I9N+62x78Shq4VZO7bFqURCd7dAZ9h7nHjjjaqKqRfvtegz73bAkp1uOCiMPId/edjtyrKoH+6qLYCSmiK0cL1/FvFjmZa3/fPRNGiSXpl4QhmjIhUU6SGCfV98E9SIgBTLWxDs5PnxJoWRJ5nZ5buAIprdPBG1hNWZBPTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jfe01L5U9gS1UT6/klz254UthnBEIZxBfHyMutj5Dz4=;
 b=YGovvJlIledtM9AmBrnshO0Antmg9MVSgTM4h27ynqnTPVkGBoH7e+eUC9LvBAmgGCK3kGpYz6VHSVT3jI7lE5QC/mUsqo36nneI1Ke35WCgGco/9o2H/k6r7E2Ex4s7r/1lWg0DhlRq4rozn2zki6Cp4HcupRxh3/TS/HN5M3/o0l2Djqj8uSE8SFNT5+7Wp3HjGZgGIUJL/6GLSDNWM58cG/a1WzEvKNau05M32ya7kQQ84z/4yySBupV66IC9fzV8k3oW5qMJf/n+KrU0EePm+N3YwQI0OjFyOuDjEd+8r9bZZnUGKD9CIa4QWxTqCjV43bpJE8JxAxKN7wl8Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Fri, 3 Oct
 2025 20:44:24 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9160.018; Fri, 3 Oct 2025
 20:44:24 +0000
Date: Fri, 3 Oct 2025 16:44:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
Subject: Re: [RFC] drm/{i915,xe}/display: pass hooks to display probe
Message-ID: <aOA1pJXB83R30139@intel.com>
References: <20251003092107.2892508-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251003092107.2892508-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0077.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::22) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN0PR11MB6304:EE_
X-MS-Office365-Filtering-Correlation-Id: 36d269e8-ad3c-431c-d607-08de02bda307
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?GbVJS3cy58n77JIvJZJdtnQcXb2iz82Sj1TxepAJgcpHfhgYxNPWsIKTl9?=
 =?iso-8859-1?Q?6XvJrtmBKW+d57dVvjIydfyiFH4zKdCI7xyrlsMVX5ylL47Z6SLcgu78Ag?=
 =?iso-8859-1?Q?CyfhjVYXDrtUHS0b4yuYfVkKw6v2dqFlrJGMJHA0f0Wpbx997xvXxZ8YDo?=
 =?iso-8859-1?Q?S/xp1vvS1qrDBafAWjox5VQvKqwrLMz1pyCaBkObJ0uBhpGrVwKRvMe2Wy?=
 =?iso-8859-1?Q?IldSpQ3nINkMLBAS5jZF5Jq555z27T3H981sSW0UOUN6lXZQxKrU9aqfzC?=
 =?iso-8859-1?Q?OgFNLtYmjB9GDqOxrodnYCmy06maeh42QThclJ/vcn2WhEkYqw08S9RRAj?=
 =?iso-8859-1?Q?FLwljoxSH62SehfRC1tyWriyvwb9hPz9YnFZzzWci9u4lTrNjbx6D9/LZy?=
 =?iso-8859-1?Q?DDojvGa7MvLZe5sVlezoaRZXFYAsyXpexU8lqvrNku+OraRT1v16t3FEJh?=
 =?iso-8859-1?Q?vYwuDc7nWutoN7k6BcYFWtn1i54ffWnjW8e9jllL/LFlIYFRP8swnueJD9?=
 =?iso-8859-1?Q?0/WFMF77OTVRPi8/68uTo0tQoxNvZiFIEudKauBoViUTd8lxDbIUNg8rLP?=
 =?iso-8859-1?Q?wjRW5VBpoauIez2lq3J33DW03MWSZ0goeKGdhMS5xVSoLx+c/LS1m5RLJA?=
 =?iso-8859-1?Q?NOtZWewIscN9Z0iUI9w19n53dy96fm9b6cmjhQXOa/cUduVh/4aLRBIqJq?=
 =?iso-8859-1?Q?TIu9nhqq7eJrLFrWZKpg7Jv5ZgGvfFxD4bmKp/yzZL9OGS9ory5yJub63E?=
 =?iso-8859-1?Q?7zGgpKWLNP2CP4Bngk5Sujne8PwFJnjuVSGTj/LYpeNyE3AhmN9T3U7iqP?=
 =?iso-8859-1?Q?kTygUCPwNP9NIqji6eccvule3ZoAWl/u+qc4cmHgh3OmL81I5OvEnslp8O?=
 =?iso-8859-1?Q?Ee3Wi89/SjKPcp+oqJLxu/Gw2B9C1WdT/7LGtSiax58LAWTnsrbFZkj0wT?=
 =?iso-8859-1?Q?Nsxzfx5F0VZLrNCkyV/JPYM/TDtZxgdX9yeZ7dcXhVzFiX7tdFetlKkKjR?=
 =?iso-8859-1?Q?Sz7pr6cbLALmLUPTvK5gxEohTXsz+YX2KscOoaz8ORgUoWpeLy+oxcisUS?=
 =?iso-8859-1?Q?Kzjj/1uxsyNJIJNUy6lm6jTiIOBvd2uqUBqWZS/la02trePrLaLs6D/fbK?=
 =?iso-8859-1?Q?QwJ/DTcCpaPoILgvlJ1MvGphaBbjLEPfGfWT3g9EboaAHbarusxs7Vx+Oo?=
 =?iso-8859-1?Q?3xL3UHUsOj9vYbYcLBlFlxSephAxnrrcOd9d2J854yuj3/N61Jdbhfq4rB?=
 =?iso-8859-1?Q?MiaYU6dmPDIM8OKLSF+qamxDLTWwt2jyxpWEj33n6e9BKJsmQiTg4uju+a?=
 =?iso-8859-1?Q?hrKR3z6BXQCK7S/ihz088rgHWPQpAT7gxR9s2Rh/CU8rnikUN+UM5d21oA?=
 =?iso-8859-1?Q?g2ky7QqbU+a3Kxmkb16/Xe2zV6QUcJsFEOasIcQBE5tG8khyjPQDKGlDy3?=
 =?iso-8859-1?Q?EB4S+Vo83qpxWuFXu4rAaeaZs8uL/IDTZ+p9CbdZI3cXOQcv4b3/8O6QCD?=
 =?iso-8859-1?Q?wQzo7lwAsxxnxDPJ/aIloH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?zWjGUoWEEVECDy67zX+nH4ZNGWGMZXrsK7CEgzmQ206intX3c2hlLN7DnM?=
 =?iso-8859-1?Q?iJQm/i5/D7YQKkAa34o7j2U62pMoz2hiIMtBjSERDNOzHIQSLN2M5WuZcu?=
 =?iso-8859-1?Q?sChGSYXj8GA+QbB96Kdnq0lhYEfCgfwfDNQIydoyy+FoDlfHUWQueqvTf6?=
 =?iso-8859-1?Q?h/yFkR7sWqMxwUFqXN5UufvnKs/X/d6Ta6FWK2zpuWukThoEhrw0BLvzFb?=
 =?iso-8859-1?Q?c1F+ghg2ks9zc+WiI9tx9bzTwlNEU55o5+152oQbBXqqt2HQGGnBvs0rNV?=
 =?iso-8859-1?Q?jDlmQw/QKQggu3ZlhLmH+nT6h7gmyXYCBrmBJTeQ4MMWq9RPxYxyS4mv8H?=
 =?iso-8859-1?Q?j65AIWA4/dyszrwwqEs0TpaQ8qDWyYBGXYM7vKUZNTc7tjSucjPIu80c1g?=
 =?iso-8859-1?Q?JWXx9SAYNqXZ3d4eyOoJMIB1Ac//bRRH2xndePMjs4jBCvlKi4dhMfk0xu?=
 =?iso-8859-1?Q?dDBJuXNMncmWsIwnDqEaH3mCTUUWnj2SOSQiSsYipmRLnUBZNwz6xvFX+c?=
 =?iso-8859-1?Q?bOo2TYgWgWAWF9IrVVxTqi1/NlA0bOFxeASy60a4EB0t233uBztO11PpBJ?=
 =?iso-8859-1?Q?D0oPrFePgjqmW6mgaSdMvxnZYwR4t9CYML1UTinYsNBjtSZ6SgmbmlzNv/?=
 =?iso-8859-1?Q?Yhn6uh011WXTAJ4qAL/wwKmTzOJH0Uf6Q/KSSF9PP6+OvmaUl7RiWzOAr5?=
 =?iso-8859-1?Q?FoFr4SjCL7c3A8ifWBy7kEDtgo29rPEA4cSRlEJR15vYTeXrruwJAfeefO?=
 =?iso-8859-1?Q?fzITV9vAcaCIX6A8j4bC2Z0oaifLuSOILeBNT8PXWYsBsDL8UVMZ1ZWQ/Q?=
 =?iso-8859-1?Q?2S/LBJbljs6hhe+PvS+QT/qbMr+rpRHVhP/viOP05G9CHji3rZgq5VIQR4?=
 =?iso-8859-1?Q?CY18YwmD+BuIyv5iLb2bfev5IG6xFezXGgH1uvX1XXjOtYu6acJ6pMjPsh?=
 =?iso-8859-1?Q?8nYTHIxqEETwFCBTDmHU0nWTHuTN07z1FkmeGrQexcdZeMuaVGT4was8zL?=
 =?iso-8859-1?Q?ts5rNQZ5bFFjCpz9PlBpoHP4/RqSD+PQJVnfi1Hfy01hBk7eDqtAyNRlpa?=
 =?iso-8859-1?Q?H4TTzlYU5ut1Hx0WK893BV1Qf7DwOy77yW62GZ4+QtsiKaXjZ1HQ8WqdNH?=
 =?iso-8859-1?Q?eCMXWenDtsezc0dTkk9bncEsurOI5qhIJo7TWOzYGBH5rgDkFsvTq2MT4k?=
 =?iso-8859-1?Q?Oo5XNAsDOGJOkezF3Jrta9Vdq5wzO9wsppButLHGFD9gv173QbdHPNeRTK?=
 =?iso-8859-1?Q?+l5CtpTS5TKy0PJJOhd4MvVAYa113EVbwsxTkGG5DehAWi20VtltQSRXzK?=
 =?iso-8859-1?Q?xmbEJs8fxcF+oUVWFdKrfzDUzcU61Yas4xwQYTcBJwHKCZJ05xbrZnmgs8?=
 =?iso-8859-1?Q?DNpzfiOLUK6T6E0PmrpZj6FGl4IcoWK/z8wtAbE+KTybV+SJbppGf6Mnh/?=
 =?iso-8859-1?Q?zamUd7Q0e86y9gtHSoQfkGjwJLqtkv56cJpEwkfxqwIsR9yleSjnoRTYBs?=
 =?iso-8859-1?Q?OOpI6jhtMk0L4U1GSd3Xg1j/ju+ENYPIuRlNRg4cAG8bYevfAAifqfwtes?=
 =?iso-8859-1?Q?0W2DgJYqDFy3BIIKG1XOLtGPmbn2T14NX2dwwTFRBFy+z3sVzGnJf/zAI7?=
 =?iso-8859-1?Q?gxu3psntUWWnekR7TF9JrjYgG5QJQ5yM8o?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36d269e8-ad3c-431c-d607-08de02bda307
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2025 20:44:24.3155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VV2FJpiQ8TJ8WrAxe1AAUYo4hw/f1C6zvIEPyvfBgcbZr1JosUxW/DATLeoqnpDHKpR40tPbKA6n1Y8+x6VOfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
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

On Fri, Oct 03, 2025 at 12:21:07PM +0300, Jani Nikula wrote:
> Let's gradually start calling i915 and xe core drivers from display via
> function pointers passed at display probe. For starters, just add a
> small feature test hook ->has_flat_ccs.

I like this idea.

> 
> FIXME: "hooks" is a terrible name, both as a parameter and a struct
> intel_display member name. It should reflect that we're calling the core
> or parent driver. This is a placeholder name for now.

core_ops ?
core_iface ?
parent_ops ?
parent_iface ?

> 
> FIXME: Initially, one struct is fine... but once it accumulates a lot of
> functions, should it have more indirection? Maybe everything should be
> in sub-structs, or the top struct should just be a collection of
> pointers to hook structs?
> 
> 	struct intel_core_hooks {
> 		const struct intel_rpm_hooks *rpm;
> 	};

struct intel_core_iface {
       const struct intel_rpm_ops *rpm;
}

?!

> 
> The above would allow having the struct initialization inside the
> implementation file, and the functions themselves static. In any case,
> it seems best to have just one initialization of the hooks, instead of
> one init/register call for each functional area.

+1 on this when needed.

> 
> The downside is of course having to call the functions like:
> 
> 	display->hooks->rpm->get(display->drm);

struct intel_core_iface *core = display->core;

core->rpm->get();

or when multiple of a single ops is used

struct intel_rpm_ops *rpm = display->core->rpm;

rpm->get();

> 
> FIXME: It would really be convenient if we could stop using a display
> device with mock_gem_device() in mock_gem_device.c. The purpose of the
> mock gem device is to run mock *gem* tests. Could we make it happen
> without display?

no thoughts on this...

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++++
>  .../drm/i915/display/intel_display_device.c   |  5 ++++-
>  .../drm/i915/display/intel_display_device.h   |  4 +++-
>  drivers/gpu/drm/i915/display/intel_fb.c       |  5 ++---
>  .../drm/i915/display/skl_universal_plane.c    |  5 +++--
>  drivers/gpu/drm/i915/i915_driver.c            | 17 ++++++++++++++++-
>  drivers/gpu/drm/i915/i915_driver.h            |  2 ++
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +++-
>  drivers/gpu/drm/xe/display/xe_display.c       | 12 +++++++++++-
>  include/drm/intel/display_interface.h         | 19 +++++++++++++++++++
>  10 files changed, 67 insertions(+), 10 deletions(-)
>  create mode 100644 include/drm/intel/display_interface.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index df4da52cbdb3..424d22725ca8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -39,6 +39,7 @@ struct intel_audio_funcs;
>  struct intel_cdclk_funcs;
>  struct intel_cdclk_vals;
>  struct intel_color_funcs;
> +struct intel_core_hooks;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_dmc;
> @@ -291,6 +292,9 @@ struct intel_display {
>  	/* Intel PCH: where the south display engine lives */
>  	enum intel_pch pch_type;
>  
> +	/* Core functions exposed to display */
> +	const struct intel_core_hooks *hooks;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f3f1f25b0f38..87aaa1930846 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1647,7 +1647,8 @@ static void display_platforms_or(struct intel_display_platforms *dst,
>  	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
>  }
>  
> -struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
> +struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
> +						 const struct intel_core_hooks *hooks)
>  {
>  	struct intel_display *display;
>  	const struct intel_display_device_info *info;
> @@ -1663,6 +1664,8 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
>  	/* Add drm device backpointer as early as possible. */
>  	display->drm = pci_get_drvdata(pdev);
>  
> +	display->hooks = hooks;
> +
>  	intel_display_params_copy(&display->params);
>  
>  	if (has_no_display(pdev)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0e062753cf9b..999570d15160 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -12,6 +12,7 @@
>  #include "intel_display_limits.h"
>  
>  struct drm_printer;
> +struct intel_core_hooks;
>  struct intel_display;
>  struct pci_dev;
>  
> @@ -310,7 +311,8 @@ struct intel_display_device_info {
>  
>  bool intel_display_device_present(struct intel_display *display);
>  bool intel_display_device_enabled(struct intel_display *display);
> -struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
> +struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
> +						 const struct intel_core_hooks *hooks);
>  void intel_display_device_remove(struct intel_display *display);
>  void intel_display_device_info_runtime_init(struct intel_display *display);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 69237dabdae8..dc321df4db28 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_modeset_helper.h>
> +#include <drm/intel/display_interface.h>
>  
>  #include "i915_drv.h"
>  #include "i915_utils.h"
> @@ -547,8 +548,6 @@ static bool plane_has_modifier(struct intel_display *display,
>  			       u8 plane_caps,
>  			       const struct intel_modifier_desc *md)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.until))
>  		return false;
>  
> @@ -560,7 +559,7 @@ static bool plane_has_modifier(struct intel_display *display,
>  	 * where supported.
>  	 */
>  	if (intel_fb_is_ccs_modifier(md->modifier) &&
> -	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> +	    display->hooks->has_flat_ccs(display->drm) != !md->ccs.packed_aux_planes)
>  		return false;
>  
>  	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index e13fb781e7b2..139d20e8accd 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
> +#include <drm/intel/display_interface.h>
>  
>  #include "pxp/intel_pxp.h"
>  #include "i915_drv.h"
> @@ -1572,7 +1573,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
>  	}
>  
>  	/* FLAT CCS doesn't need to program AUX_DIST */
> -	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
> +	if (!display->hooks->has_flat_ccs(display->drm) && DISPLAY_VER(display) < 20)
>  		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
>  				   skl_plane_aux_dist(plane_state, color_plane));
>  
> @@ -2930,7 +2931,7 @@ skl_universal_plane_create(struct intel_display *display,
>  		caps = skl_plane_caps(display, pipe, plane_id);
>  
>  	/* FIXME: xe has problems with AUX */
> -	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
> +	if (!IS_ENABLED(I915) && !display->hooks->has_flat_ccs(display->drm))
>  		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
>  			  INTEL_PLANE_CAP_CCS_RC_CC |
>  			  INTEL_PLANE_CAP_CCS_MC);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b46cb54ef5dc..cf042e5d1444 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -46,6 +46,7 @@
>  #include <drm/drm_ioctl.h>
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/intel/display_interface.h>
>  #include <drm/intel/display_member.h>
>  
>  #include "display/i9xx_display_sr.h"
> @@ -738,6 +739,20 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
>  }
>  
> +static bool has_flat_ccs(struct drm_device *drm)
> +{
> +	return HAS_FLAT_CCS(to_i915(drm));
> +}
> +
> +static const struct intel_core_hooks hooks = {
> +	.has_flat_ccs = has_flat_ccs,
> +};
> +
> +const struct intel_core_hooks *i915_driver_hooks(void)
> +{
> +	return &hooks;
> +}
> +
>  /* Ensure drm and display members are placed properly. */
>  INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct drm_i915_private, drm, display);
>  
> @@ -762,7 +777,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>  
> -	display = intel_display_device_probe(pdev);
> +	display = intel_display_device_probe(pdev, &hooks);
>  	if (IS_ERR(display))
>  		return ERR_CAST(display);
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
> index 1e95ecb2a163..26e3afb1d892 100644
> --- a/drivers/gpu/drm/i915/i915_driver.h
> +++ b/drivers/gpu/drm/i915/i915_driver.h
> @@ -12,6 +12,7 @@ struct pci_dev;
>  struct pci_device_id;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_core_hooks;
>  
>  #define DRIVER_NAME		"i915"
>  #define DRIVER_DESC		"Intel Graphics"
> @@ -24,6 +25,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
>  
>  int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
>  int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
> +const struct intel_core_hooks *i915_driver_hooks(void);
>  
>  void
>  i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index fb8751bd5df0..32bfea4a3cca 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -27,12 +27,14 @@
>  #include <linux/iommu.h>
>  
>  #include <drm/drm_managed.h>
> +#include <drm/intel/display_interface.h>
>  
>  #include "display/intel_display_device.h"
>  
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_requests.h"
>  #include "gt/mock_engine.h"
> +#include "i915_driver.h"
>  #include "intel_memory_region.h"
>  #include "intel_region_ttm.h"
>  
> @@ -183,7 +185,7 @@ struct drm_i915_private *mock_gem_device(void)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>  
> -	display = intel_display_device_probe(pdev);
> +	display = intel_display_device_probe(pdev, i915_driver_hooks());
>  	if (IS_ERR(display))
>  		goto err_device;
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 5f4044e63185..644641954125 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -13,6 +13,7 @@
>  #include <drm/drm_drv.h>
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/intel/display_interface.h>
>  #include <drm/intel/display_member.h>
>  #include <uapi/drm/xe_drm.h>
>  
> @@ -515,6 +516,15 @@ static void display_device_remove(struct drm_device *dev, void *arg)
>  	intel_display_device_remove(display);
>  }
>  
> +static bool has_flat_ccs(struct drm_device *drm)
> +{
> +	return xe_device_has_flat_ccs(to_xe_device(drm));
> +}
> +
> +static const struct intel_core_hooks hooks = {
> +	.has_flat_ccs = has_flat_ccs,
> +};
> +
>  /**
>   * xe_display_probe - probe display and create display struct
>   * @xe: XE device instance
> @@ -535,7 +545,7 @@ int xe_display_probe(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		goto no_display;
>  
> -	display = intel_display_device_probe(pdev);
> +	display = intel_display_device_probe(pdev, &hooks);
>  	if (IS_ERR(display))
>  		return PTR_ERR(display);
>  
> diff --git a/include/drm/intel/display_interface.h b/include/drm/intel/display_interface.h
> new file mode 100644
> index 000000000000..82e3b6b641f7
> --- /dev/null
> +++ b/include/drm/intel/display_interface.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation x*/
> +
> +#ifndef __DISPLAY_INTERFACE_H__
> +#define __DISPLAY_INTERFACE_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_device;
> +
> +/**
> + * struct intel_core_hooks - services core provides to display
> + */
> +struct intel_core_hooks {
> +	/** @has_flat_ccs: does the device support flat CCS */
> +	bool (*has_flat_ccs)(struct drm_device *drm);
> +};
> +
> +#endif
> -- 
> 2.47.3
> 
