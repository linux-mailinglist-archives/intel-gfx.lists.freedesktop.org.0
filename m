Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3D68D6150
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4484F10E54B;
	Fri, 31 May 2024 12:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FKZt1afV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C1710E54B;
 Fri, 31 May 2024 12:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157262; x=1748693262;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mYKsZjb5STfrqiQMmsYw9En4YyxbU6mFn13PIXxSHR0=;
 b=FKZt1afVXphXVFeH/sCRCrA+Pj2lw69Q7RW60Pwz3puwr7Z95G0wvbSA
 fjT1Qws2r2hd+c1qd8+WNZSVxe2J+mQ84WhkfrXlZKei6hnZQPTDOwwCp
 1kq/Qn68UE8SCyevBEA4OO8tmSq5fL0YT9pbfbFn4gq7gisJPnv6mR0f9
 Gaw+Kz664S9QEuHNNa3s3qxPGYGTI3ATTgYKpsi+t5+GvF9aRdpJV0n12
 iHneYeNvLvBOP8I7vhnWg11QVACDfRwcAAnFvQonvyaiSlI14dLs8tlJ+
 H1jH6oCGjQ5b4b+XUf2/0OVHkieX0SyfSdGjyEc2NgBdBRDeCSkr71d38 g==;
X-CSE-ConnectionGUID: eb0FNNP8SACYLuJJwZpGSA==
X-CSE-MsgGUID: iIDxD4Y7ReW/+K3PWTKZ0Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="25100982"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="25100982"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:07:41 -0700
X-CSE-ConnectionGUID: vRiL1YWMRxSZOT0eeyjjIQ==
X-CSE-MsgGUID: cXhtqHlQSk23jPtRrqIMIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="41216732"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:07:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:07:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:07:40 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:07:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nXeUovCWyhjrbVr1nHTKyre+/i/mJN3cDuScefSYwVD2jvXUfZXCgTZXm6GkK/T0YIuQwWMjb5Hie0Jy3bOiXal95LVmta0WJ0hmVhARhuIdWjUsDibk7OwYEpi9crRQ6n1V03G4rf4eclbI4Xqgz3DDk7eBuK5rjyNSJMDf0c1VJWF64ThkTPjbcN9j1w14c7Hx6b05vIUAB+WmzeKQ1GtM2NHRHzd2WWtqNIfpnNzVxWwRndNAhLkabVovk/J8zz8KbvBaEu1c7WUvESf+YOlP4WCZoSV2MN4zj4OlvX42gZbDzPIwAURQ93lDyZ/rcJ3TOB6LKsGXatXG6OT1yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b3Au8TRG9X4ao5XbzPuTVHqwlWpOIQov1XyxscieveY=;
 b=km1k9IoB5QjM/12HmeAn0dpoyE96k9V61cmNIZusUvwmJPmyseQhNQ4nQx6I85nyz2nB4+APsRozotxRn/vHvhJSWKY0EnoYvz7ZzJ7NpgeiPiv2nR8RxKxYlIuByfD+UaGhe/AfLsQGR0fmjcp31jrx+/QDbTRFQXk/6zTBJQtytRGI6lVYfHseWt9lXCiWKrsB6VHy7PRmt1+uFAs8AL2d500763lmdr50YCc/99sZx/CLIkbWuHvUXAqN8/VwjluTzKK31V8OZpKwWogQWOk+lUgmJNBHxFFpl2+fCwmnTsNALuQYc4VdcH1D6rex+8ohxPGS0W6cW6T36cmnjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB8501.namprd11.prod.outlook.com (2603:10b6:510:308::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Fri, 31 May
 2024 12:07:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:07:38 +0000
Date: Fri, 31 May 2024 08:07:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 06/10] drm/i915/display: include xe_bo.h,
 gem_object_types etc. where needed
Message-ID: <Zlm9huP2AvsNpCph@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <e9ca3d6127ea22f252d9dbf30cfde99e37538c99.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e9ca3d6127ea22f252d9dbf30cfde99e37538c99.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0077.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB8501:EE_
X-MS-Office365-Filtering-Correlation-Id: 230b90dd-f232-4460-df10-08dc816a43ae
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ER4+vU0lkRIYxolavP5UW87jG1s/AJrE9zcPWFLxph54HECUmjanYa8eIg?=
 =?iso-8859-1?Q?1damFwkMnwSkV4cK2VlH/4g5gZ1Ob0ToocvT9hSPY0NekoV47vGkRessJ5?=
 =?iso-8859-1?Q?5jOue/j7Tw0Vqk3KhmyhKa3Ma4cPS3IyMIfiz58LbsP6rYDC+9ToIBfKBT?=
 =?iso-8859-1?Q?OUduQ2r0fl6aklK/5p8NTJbqBeCRneUFTzx2UVMNw2H7NwR4BLyGkugEUC?=
 =?iso-8859-1?Q?QsoZKfPu2Wx/gS0PHQ9I8oixq1lPdf4seYT+botOcqjRxCPx4RkU7PzLXS?=
 =?iso-8859-1?Q?aljLGLYaUMNE+2k+Pkdlc6gBpUn9SmD7DD/427ibVs/+ksoYlMKUtfk9da?=
 =?iso-8859-1?Q?ywMUiMtECJGGSzLZxiwQBOXKCidxsRLDQG7b9n22Tgz0HFz/Kv6mMFouAn?=
 =?iso-8859-1?Q?t9XL++XSJfRLvibFc/zltafJkNy2FkjZmAP7uL0KCJMoCll4cnbZOU5y51?=
 =?iso-8859-1?Q?Htcqr10pIOw2tU/X90Ws/6W/PM4Shck0HgCyZyM8l6LRxSt7DrOAyPQAc8?=
 =?iso-8859-1?Q?rgfR4eEXFfk5rG2e/8CCQGAGVvza/RZHC+KoXzCFf4GGWtaWaa+KnyqwSU?=
 =?iso-8859-1?Q?40zWo0BIN3Q5wU/BCkMc3TlarKqSlzQnoUJUC0Fz4+xJ4o+iQy5dIHKfTH?=
 =?iso-8859-1?Q?SfEv7WNN7VAoWKf20TP6AfLHEnESVfSusjSXQdh0uQphegAcT+16SPjpj/?=
 =?iso-8859-1?Q?jvEY6i/obsv66m2TQA/HzMWTir3yvVeyRSrkOnN+Zn1YI7pxs6YSTxH+9i?=
 =?iso-8859-1?Q?hq+JgPGa3eMFZXCxnpX7U9LdWckbVOH9OvMxKlVGtxoJ+9i8Tln0XOBnVk?=
 =?iso-8859-1?Q?LY3xuqx51c63qfPvCb5OKgnjr+H0SXuwNT5SIfLRlKBklF4EaHCBbBrjAr?=
 =?iso-8859-1?Q?FO/CfSGoS4y8jOnSYMAThcLwqruCw46oGPkU6KNlDcUCwx7ERz8oWa36hj?=
 =?iso-8859-1?Q?nUQ0v5dT5RtD6Ypu3HNEE1CCPVaIXVV6Suhhti66uBZpILgx2wXapqRCae?=
 =?iso-8859-1?Q?TjsTevS/r54fMKPzc96EwsQUXwtgYCQB8AAj+k2mVDn1Pa320x+R+EgHka?=
 =?iso-8859-1?Q?qwL538PaqKGbnFON6t3asMulCFpigpDJ7DNbEEPk/NgdDY29qPyBU45wPT?=
 =?iso-8859-1?Q?jKXp7du1GqGHj0WYz8G0epZUxlz9Em6FKoR2qUNBEFxNBspYU5a2+MbE9l?=
 =?iso-8859-1?Q?9IZJ2JGlJo0+CUyDEDuUH5dl7N2nqlA3yTNcEv3xAnrcamMqtOjVLuED+8?=
 =?iso-8859-1?Q?rD4r9tTj5X2ig/OvnbXoV9ZaNf3lzLsGMA7CmKL5rhr31gSD1HplM1M/sY?=
 =?iso-8859-1?Q?/jt/MET0gBdL9ZN/c5t7S0O0eQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?meLfHZb1PoSYlumhP684pQ5UpDzCvjttR8q05/2Q6vSgyE1FMYaxGZXbmX?=
 =?iso-8859-1?Q?ifsDM7xoVpnzS61SLcrSNGewV/aegztQ6joH76Ocu5196tkkzrFxjNma9N?=
 =?iso-8859-1?Q?m4WA3k31W5QGFj0PQBHVUZ9cEoeE2HxBQ6k8NT0prlh8pmwP8iVzvWlZvt?=
 =?iso-8859-1?Q?0XX6YRsvE+RxXJwDwtqAL3RRz4TFkKQ7iHxtRp5EdzaRCqeq3m3auOjTPA?=
 =?iso-8859-1?Q?+ZycemKt89xBdvxt/XWovgKLr4gnPeAXK/2rW3d9lUgnSiyEm8JlDzZ9pi?=
 =?iso-8859-1?Q?sx0S8NiaXjDm09BR/37LR+86HaoOx6m5AbsGuLm2o7ed3v1hxXmm2A8SLB?=
 =?iso-8859-1?Q?IHf/kRgFgRpyA473W34JCNtOjDttXGCbwWlAzRIMMUV/Q5iAFhwjcLTJiU?=
 =?iso-8859-1?Q?Pseq/jsOszPPlkLac29OrLluKFumwJugoLO7xkzh9o/gccRDJ2dlCSbmyj?=
 =?iso-8859-1?Q?F/OwUHC5gu+6O4tx4DPVy2IJJSg4jOSWqZU9aeL1ChGugvSKQZB1YYl9c+?=
 =?iso-8859-1?Q?F/jZCorM9YYlIiIqxWg7/dOe4rA09sQYJjhzBwR3KsbNLJKBm4r9z9oHak?=
 =?iso-8859-1?Q?sfrWC7IziwTUx/vCBAoD1dgk4gLAKI1k9ewwSxNtQASMZYTAk3bdHk0Fbc?=
 =?iso-8859-1?Q?lyQqxhPESNVJJfJUBUfAfYGF//r7gvp565isMGAiIjdrTfUZ/LfOBRrfd6?=
 =?iso-8859-1?Q?XCOEEXChpFeqw/6U6GjRHaHzY6TRUDOPSiSgmSf4gdquYRdDs4WGXRJC+D?=
 =?iso-8859-1?Q?y6QQyxLLN1FJYhtraO+xdyi1TzsA9ATTG2juhPJKQwevlz8Xzt74Z34lLD?=
 =?iso-8859-1?Q?CUNdviAII9M4xZ9aR5qjGrIiG1aR0EbqghgFpT8+p2Q17O5pjdpfDk5x4Y?=
 =?iso-8859-1?Q?M4OyQ3ayQ7lJYgGvamey6sQabz4y/jrTiNx5XnHpLCLfzYJsQDuTsfP0dw?=
 =?iso-8859-1?Q?nj4V4UHof+F2DVNTD/aoXY9ZJ+cbYPd28aKSMmSYa8V8Q+lCMw9cGptlC5?=
 =?iso-8859-1?Q?VscVhyRYxYsBRUCn4EvRxytn5LY1MkMSyzZdH0M1xyWofrQBUPMMW+Llld?=
 =?iso-8859-1?Q?cQqqY7R4KUy1freBln66yPpGc81Oqw7HRhFt/dbxA7xByOXSEvuvrfx8tb?=
 =?iso-8859-1?Q?h4Qq22U/lo0Ek6KdFayoWk8o0VXgdqZXIH3/77wWrPCmnQqyyccPqANMvC?=
 =?iso-8859-1?Q?Pf2FX0Yz1U9LOe5GhnB+0RHhoyisOC0mG71rhqFsPHIsxDQl43XDCy1rRk?=
 =?iso-8859-1?Q?fGN6wzT7A16mRehpmDsA6hbeWYIe6d3rse9ki+fK/4/SxueiyiCBrgGd7V?=
 =?iso-8859-1?Q?KtzLNYKPE+zAk5x20xDwo+ZzH/jPJfMmp36LPetmMEEma+aaObezidy3GJ?=
 =?iso-8859-1?Q?jR0lS3j8KYJuqGe5JTwcbUtWHfecTcLTrLRSKG5IIVElZRC4WbyAcTw9RK?=
 =?iso-8859-1?Q?o896beYL5BGp4FCDL4WwT08iiRWK56kKwnC67SkF5ha9Vaf+LKoI0UbIJj?=
 =?iso-8859-1?Q?Tf3Mkyw0ge+8LtciPvi20OR6fuLKObeQXrrZBFS3lIkgUAf/VX5sZDffI3?=
 =?iso-8859-1?Q?ZeDt0rF7AJO45viQDZRMgPFykPuJaEUoVHkZr3WBsEWh1n3mLeI0CWwqNr?=
 =?iso-8859-1?Q?XAwUb4JgCMJVY9A8b9vK+fqdtP1WWbuAQW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 230b90dd-f232-4460-df10-08dc816a43ae
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:07:38.4585 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1xQZpRRntSM57uk4H2dgzmMs5JRVF/ajGDqPyg8gEoSae/sx4ZFn4HZ/BT2yOu6PLFC7Wzm+5UF/zaLxnTLXlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8501
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

On Wed, May 29, 2024 at 08:48:10PM +0300, Jani Nikula wrote:
> Include what you use. The dependencies on the headers, and what they
> include, is a bit convoluted. Add xe compat gem/gem_object_types.h. Fix
> all the places needed.

it was indeed convoluted. Nice clean up here.

Although it introduces a new compat header, at least it organize things better
and clean up the main pain point of the compat headers...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_fb.c               |  1 +
>  drivers/gpu/drm/i915/display/intel_fbdev.c            |  1 +
>  .../compat-i915-headers/gem/i915_gem_object_types.h   | 11 +++++++++++
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h     |  4 ----
>  drivers/gpu/drm/xe/display/intel_fb_bo.c              |  2 ++
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c           |  9 ++++-----
>  drivers/gpu/drm/xe/display/xe_fb_pin.c                |  5 +++--
>  drivers/gpu/drm/xe/display/xe_plane_initial.c         |  1 +
>  10 files changed, 25 insertions(+), 11 deletions(-)
>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index a2a827070c33..1143ba5b4f7c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -32,6 +32,7 @@
>   */
>  
>  #include <linux/dma-fence-chain.h>
> +#include <linux/dma-resv.h>
>  
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_gem_atomic_helper.h>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 6fbfe8a18f45..4de86e299c91 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -47,6 +47,7 @@
>  #include <drm/i915_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>  
> +#include "gem/i915_gem_object_types.h" /* for to_intel_bo() */
>  #include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index b6638726949d..8069abf91c5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -9,6 +9,7 @@
>  #include <linux/dma-fence.h>
>  #include <linux/dma-resv.h>
>  
> +#include "gem/i915_gem_object.h"
>  #include "i915_drv.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 5ad0b4c8a0fd..37ae176bfeb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -44,6 +44,7 @@
>  #include <drm/drm_gem_framebuffer_helper.h>
>  
>  #include "gem/i915_gem_mman.h"
> +#include "gem/i915_gem_object.h"
>  
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
> new file mode 100644
> index 000000000000..7d6bb1abab73
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object_types.h
> @@ -0,0 +1,11 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2024 Intel Corporation */
> +
> +#ifndef __I915_GEM_OBJECT_TYPES_H__
> +#define __I915_GEM_OBJECT_TYPES_H__
> +
> +#include "xe_bo.h"
> +
> +#define to_intel_bo(x) gem_to_xe_bo((x))
> +
> +#endif
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 3e930ce25c90..7b3f53427b03 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -12,11 +12,8 @@
>  
>  #include <drm/drm_drv.h>
>  
> -#include "gem/i915_gem_object.h"
> -
>  #include "soc/intel_pch.h"
>  #include "xe_device.h"
> -#include "xe_bo.h"
>  #include "xe_pm.h"
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
> @@ -113,7 +110,6 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  #define IS_RAPTORLAKE_U(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_ALDERLAKE_P_RPLU)
>  #define IS_ICL_WITH_PORT_F(xe) (xe && 0)
>  #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
> -#define to_intel_bo(x) gem_to_xe_bo((x))
>  
>  #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
>  
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index e18521acc516..b89cda053d2c 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -4,10 +4,12 @@
>   */
>  
>  #include <drm/drm_modeset_helper.h>
> +#include <drm/ttm/ttm_bo.h>
>  
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_fb_bo.h"
> +#include "xe_bo.h"
>  
>  void intel_fb_bo_framebuffer_fini(struct xe_bo *bo)
>  {
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index f6bf5896ff1b..5ecc7d467934 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -3,15 +3,14 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> -#include "intel_fbdev_fb.h"
> -
>  #include <drm/drm_fb_helper.h>
>  
> -#include "xe_gt.h"
> -#include "xe_ttm_stolen_mgr.h"
> -
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
> +#include "intel_fbdev_fb.h"
> +#include "xe_bo.h"
> +#include "xe_gt.h"
> +#include "xe_ttm_stolen_mgr.h"
>  
>  struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  					       struct drm_fb_helper_surface_size *sizes)
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 36e15c4961c1..0449cdb892f3 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -3,17 +3,18 @@
>   * Copyright © 2021 Intel Corporation
>   */
>  
> +#include <drm/ttm/ttm_bo.h>
> +
>  #include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
> +#include "xe_bo.h"
>  #include "xe_ggtt.h"
>  #include "xe_gt.h"
>  #include "xe_pm.h"
>  
> -#include <drm/ttm/ttm_bo.h>
> -
>  static void
>  write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_ofs,
>  		  u32 width, u32 height, u32 src_stride, u32 dst_stride)
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 9eaa29e733e1..7672a0cffbd8 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -18,6 +18,7 @@
>  #include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
>  #include "intel_plane_initial.h"
> +#include "xe_bo.h"
>  
>  static bool
>  intel_reuse_initial_plane_obj(struct intel_crtc *this,
> -- 
> 2.39.2
> 
