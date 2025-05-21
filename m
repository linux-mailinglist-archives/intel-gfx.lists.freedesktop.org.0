Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06015ABFB59
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 18:35:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BC410EE63;
	Wed, 21 May 2025 16:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RgO+2n4x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1180B113267;
 Wed, 21 May 2025 16:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747845331; x=1779381331;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/j79791jnHalyyHw9ubM4O2qy7+mpJAz49Io9xgYGsE=;
 b=RgO+2n4xL4IuBWFwIHj4eo/Ni6fjGZhsO7Oq6Z1CRHlkal6COnzMMeJP
 hldKj2do8FL0BWMQs09OOZKlBa6mueNoGw6+tBVVl3POxldd+umXAa5ds
 tzpsTU7uw+kus2VNX0JqQheWQi69WWkSLZ1L899rGvzDp/ge/UY+j+6+K
 8gQGkpgA7wuYvg/WxNLAuUGFKkz7hiFy1CjqmJrDjvBTHAV7Y10v/IVa7
 cufHS/24o88j5eU4O9J/hl58xUrtcxVeUj9C+k94ne8Yc5Yw+4FoBfNHN
 OLwnds91ACYbvTRBQxDLd7a88RWogspxKT6m+GoXexTq1cvnUpWseaDnW g==;
X-CSE-ConnectionGUID: TxqArcd6R9mEWlyAC7VXdg==
X-CSE-MsgGUID: HValtAx6RMywp/1MzPbyyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49823635"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49823635"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 09:35:30 -0700
X-CSE-ConnectionGUID: Sk/yXtKPRHOT6X2jmeI4ZQ==
X-CSE-MsgGUID: 6NLEcZ3/QCCQCT8M2uWZvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145285147"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 09:35:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 09:35:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 09:35:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 09:35:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCnLxAASXxBL7dkQrbNHOOE/soBmr5gmOJsuOpDrCS5gGoxIYbAF2vkhO1SqbOmc5VGD0GdjqgmZpqhcxfDZAg56g1c4nJWahiBk5AOAMmz9LnD7jxbKwQ8ZKNJb6Mi+gIZidEvqqmyqwg7PNqaRvCsyN0ILTmNSOKvn9ZremxqLUiVuALAvygisnXmvDIvKkDHq44QJ/zd8uyTsu7DY5IrVV6Qo+OuXI4duyfFThFwMyokUVVYTZgYNrfNifamrDI3hI9VtJPbUwBo9GSTOzMwyJ80wTJ83/8dNo31gYs8p0XcsQ9WsK5Z/ZCatfVvH/6N6efVR5rQQS2If3hbGfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7whzFuITySGOD1hI4b0cbGXMXsRXHxa1asdT3TWb87s=;
 b=tNVrlRqnte+OmgyP/Q+DLKMckJ9wzh8Iv3tLpVLs0bOs7OvktdKGGZQ4CDcZDyGNKamCcyq3H7Hj1TMz8iadz6q/sXn4KSxbRbgP8wLe4ytFTjJgTfsTPFpjGIbip5CxgGRy00Cvb5iHnVtkqiuLjeEsLfGRvC2sqWgyKc4vc8UmM3FYKwh951mU/g35qHHUQisohD5e21G59UFPT+5xrc8uyKKxY0wW4JLB0FBE1YyQG/n6T3wLILtBinmtaIJ3ySKMOk0nufssTX7CaRmiwv+nNYD4bk0yXi0NlQ2t/zWNo+ZkQcpKTob2aV9rlfTQVkaK3L2QLZ3zC5WXYUHj9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6617.namprd11.prod.outlook.com (2603:10b6:303:20d::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Wed, 21 May
 2025 16:35:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8746.029; Wed, 21 May 2025
 16:35:25 +0000
Date: Wed, 21 May 2025 11:35:19 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 3/3] drm/xe: stop including intel_display_{core,
 device}.h from xe_device_types.h
Message-ID: <ihqpmh5mbbrbq4m5djerkar5quu75ykamq2vyf55ltmd3l3ngz@4wr7dtsv7z6c>
References: <cover.1747822630.git.jani.nikula@intel.com>
 <48e57f0813a4531f857ff449af4f2ab2c54eb4f1.1747822630.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <48e57f0813a4531f857ff449af4f2ab2c54eb4f1.1747822630.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR13CA0001.namprd13.prod.outlook.com
 (2603:10b6:a03:180::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6617:EE_
X-MS-Office365-Filtering-Correlation-Id: 28d14c35-5820-4f9b-1d97-08dd98857d07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?kf9055paf+DgotYDuYTKwfQa9PGo9RnoAHgn7ys+pHbeXZ3orgbhpa3enP?=
 =?iso-8859-1?Q?NW9mvT6NI/Rcgdc8thxUZE1fqP+jGpIKJ+PBNQ3YALiKUAgoy98K0k3Aam?=
 =?iso-8859-1?Q?nZ2heKlE7b9xJUOR9BPpFXe0mgVP2Xngy8jVuk66yvL6zumOBWlx8sYw+k?=
 =?iso-8859-1?Q?kgAT3ujSSDEswn8k921r7oxvB7dLPqVqpEfmbi2a8xqQqS/W+55mBSIPL7?=
 =?iso-8859-1?Q?Rdk3LBoX9OKb9nI7358TSQ4WV1/LWDOUtzPZc2/IiJcl4fXv7Dx1tBiJKh?=
 =?iso-8859-1?Q?rNGUylb1uija+Z/xRbITDg0hgckSL4FBRrv2hXB8ARTIeANQl1ECPZdaCQ?=
 =?iso-8859-1?Q?fFEjc1xzw/R4Q/Zy0hp5/ZFiXaLReUVSsy+eVgJgT1cjmtqP4tzKJ1KmO0?=
 =?iso-8859-1?Q?WR/tqZr52q8IaAYWUkIba54As9uZd9N4d7go41hCjf44PZ2H7l+Hhqee3d?=
 =?iso-8859-1?Q?X/cchp/EQc49ri46OApe2HjN/BmIJtlLBMpLZrCF0y/y7KswMICECm2PiI?=
 =?iso-8859-1?Q?D2+FxCYwNhRjICtBlfYqJOdE3zRG6/AexUbRz8ZRnfss/GIbd9s/j8FFBX?=
 =?iso-8859-1?Q?btutX2XnkWroUsnqP7KSh+4pLua3YcFbZqTa8SHhvfocKSEeFHBdN4Rqzl?=
 =?iso-8859-1?Q?6wAzrtUXvNLZ9/ZUrYmGse28reUzSF6FCZwlBVUPR9Z19cDZs5gzTb4o/b?=
 =?iso-8859-1?Q?EdCuGaFhtjKZZGZ1LBdUWl+jz1UyuEQoBm+RHQEZOUDA1R3LFz+gbyEsku?=
 =?iso-8859-1?Q?3eAOSpFeaVGGUxk2mtLLg17rsqvfebgasMxD6xwfD5pbYOelFHea5/CelZ?=
 =?iso-8859-1?Q?wLx2BJsrhvRbFIu6d+1Ou8al25Fj8JS0UOUWDJee0uKeAudtwzw+YxaGnE?=
 =?iso-8859-1?Q?JbTCVZENLRLBFKBCQXMlAAGn55+R3tnJC7ykUHa1dj7vQZa0EN8MSpslZH?=
 =?iso-8859-1?Q?OAy+pWr20k7TANvIB5iIUSaNPv0M00oTI+Iir9jLClChFItZ3VguQyViMx?=
 =?iso-8859-1?Q?JFiF+1tfLqOMAYckJ7jJoynj/kMM84aR3IWBe3FlSqZ3kWZTOEJZ/3lkvK?=
 =?iso-8859-1?Q?PNuLudejrRtRL93/o88nSozys/wKUgYfaQuu/OzsPJYnPqabPSG/4wHbdF?=
 =?iso-8859-1?Q?QkI4rq7c8Xki2gEkM77JZA5WWhUZypk8B7OvijC736JjiGjDtuHaqE3BKf?=
 =?iso-8859-1?Q?yveiqxaVJrRN2GYcYXWwqDIXAY+S9CGbR9oqo4oEgvq0ip0JVpDHIYBfhR?=
 =?iso-8859-1?Q?8HulWCfCKB0dJWM3a84jXHiphQ5umwIQIcZcPRPEU2tuIKaH1rz5poPfUE?=
 =?iso-8859-1?Q?dFlb6nhl/89Jd2WDhRkaB+Xkemy6hD98j7Yol0qMskJpjczZIODFtVyVq+?=
 =?iso-8859-1?Q?NiGnIkUWPQOWC/t46Q/xlk993T01q57uJdAWZZHLh6B3mxuAo7Q/DeIm2w?=
 =?iso-8859-1?Q?FHAoGqOGET420PsVVn/8VXQDdcMeXf1Zp5Zryg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Byl+eGDxQEBRObpGnfYEj3anR6JVUXHqHuhd2LQQwJzq2PwfcmE/yk23O2?=
 =?iso-8859-1?Q?K2S/zzdpbVsIUEn827Ee24zCOil4Q0XOCUSzsmoG/sN19UBM6SLHFTPrHM?=
 =?iso-8859-1?Q?+3BU3/SMV1Vbh8Aa9WkjNvSFVtQ4dQAcCWWSttobJhRIBA044/WLrhYOM0?=
 =?iso-8859-1?Q?T3DzB1A12Pq2MJ2fgeFhy148xO3j9vGqr/bcyr6z5hylXCYRK+D75KuhQ9?=
 =?iso-8859-1?Q?KA3Qkgilr7arVI940oruzvcs+1Dr2W5GUyaAz2DRwtTMgr/W5hfmaRIzU5?=
 =?iso-8859-1?Q?hxPyBpHite2wj4SSfyLiK6THtfhjQoHZzwAJPggt+NXFknDI+UWGX/Bu1Z?=
 =?iso-8859-1?Q?2CyLDOX9Xjohv2Z2nGX/ZemTvp+2FZJXkvkvoQ+wFD/dkleXjcB/UWgQKa?=
 =?iso-8859-1?Q?HBN/Q0f8HswzadANuuN2xGoD0LJhqaZoh1/Ap8IFuGC9us6nF4DyCAYI1T?=
 =?iso-8859-1?Q?9eyv3m9insaiEU5tCdzLam5JnuQkM58LRh+zDJwxcQKoInfjyar1tE/l+s?=
 =?iso-8859-1?Q?tbebgaiZHvc+dsDEeo5txx+PvJcj7jzSZk97RN7cjYi66j+qmkj0TZ1zFp?=
 =?iso-8859-1?Q?dxN/r8EU7NDOZXJGDqLIKMlh7KjjLxru6XfXHZ5A4du3C3KKk8NxrUePQC?=
 =?iso-8859-1?Q?8ivEnjXbWtqungmpQtVcIPtY2mbOh5r1Y+e/W7y+CQOkSu9UcuCr9GBhwR?=
 =?iso-8859-1?Q?WOdanoRFworY3hID1aBdwNpEh2k7nDosqW73mgUR62LRhlpRcIkLP0u1Ch?=
 =?iso-8859-1?Q?8qZrohHNrHFSBxaDjMQ7L6OshEorCpF3qf2QWYpr+el0bXIvlVsy9tgdXs?=
 =?iso-8859-1?Q?W+8AqIRELONL4kAUJrwQ4Yi3owk1VSFaThLwEFR3Scu8pHE/83s+ZmPCxb?=
 =?iso-8859-1?Q?jfhY2/xa4Wcgtz3XH5+CR+j7gyPKzK/NcXKp29MebvvFRjc/8SSRoPj9t7?=
 =?iso-8859-1?Q?GskD8lKqnPqvHMihSnGG0O2AMgoX/FxAd+Qv7J0bndRVn5VRdZTxdVmSdo?=
 =?iso-8859-1?Q?LwHyf2gb+pF4bnMZkJISNzKp6HmNIcjDX+jUxym9z7BA3GE0vDM+eI7D45?=
 =?iso-8859-1?Q?a8g4U6pw1eBY7U/0whUHFCgO1hf9dGnxiwqGFPffb8fzd31gVdbUUG5OSo?=
 =?iso-8859-1?Q?HJG1hyG9cZrVBGW4WA73jrmrduz3NujjJK3RXOvJlXnbsoKuP3O3as387R?=
 =?iso-8859-1?Q?IAd4W5XckaD8p46YQXDtVf4QBXgmxiT3cFf0T/bJ5GFs5civ5DzXZepuGw?=
 =?iso-8859-1?Q?j00hNb2xCaimxePwhXiAb3F3EiioySx164Zn8aA39pdEkWMkD617G+eHLW?=
 =?iso-8859-1?Q?up2JRB86TQ2r8h9IPTiGgdTwuwvNyV/MqVC/JvE4+kU6Otm9Qh8j3QELJN?=
 =?iso-8859-1?Q?qRLtWnEylQAPWCzg/2zpUdcmf2HBaKQuujKmctFPHheGuk1e0RAtBF6j2D?=
 =?iso-8859-1?Q?6JgqFMOWLOWytmz0ohm4GNRX+UyMg88pfQBgcA+uH46b9SOQwzr4Y9TXaC?=
 =?iso-8859-1?Q?zO+Xsv0hApKRnxqAweAOlGxdzCz9nQrl64T1y7BJvBBDoqUih0tulgxxWr?=
 =?iso-8859-1?Q?4Ee6KppTpSk63wFO0+kOGUKi+2R86e6L/aswNBxU5NtrydtiK2MGaaszTV?=
 =?iso-8859-1?Q?k3FdMhoJKYTZxvSc42asBHW5MojlIXbCPpHBsznzo2YMwpNffSjkKwwg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d14c35-5820-4f9b-1d97-08dd98857d07
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 16:35:25.4538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0B7dGNLQyny9LEgafEEWx4y/D89VkmyY6R0rDhXk5eY/uWzM4kXOnrY2wDi3HwA/Q3xyiafOB+ntMiM1kmvVL2kLlZliCbewT1BdZAGD/b4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6617
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

On Wed, May 21, 2025 at 01:21:48PM +0300, Jani Nikula wrote:
>Make xe->display pointer opaque to most of core xe driver. A few places
>now need explicit include of intel_display_core.h.
>
>With this dependency broken, changes in display should cause radically
>less recompilation of xe.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 1 +
> drivers/gpu/drm/xe/display/xe_display.c       | 1 +
> drivers/gpu/drm/xe/display/xe_display_rpm.c   | 1 +
> drivers/gpu/drm/xe/display/xe_display_wa.c    | 2 +-
> drivers/gpu/drm/xe/display/xe_fb_pin.c        | 1 +
> drivers/gpu/drm/xe/display/xe_plane_initial.c | 1 +
> drivers/gpu/drm/xe/display/xe_tdf.c           | 4 ++--
> drivers/gpu/drm/xe/xe_device_types.h          | 6 +-----
> 8 files changed, 9 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>index e8191562d122..b28a94df824f 100644
>--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>@@ -5,6 +5,7 @@
>
> #include <drm/drm_fb_helper.h>
>
>+#include "intel_display_core.h"
> #include "intel_display_types.h"
> #include "intel_fb.h"
> #include "intel_fbdev_fb.h"
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index e3e5d41db29d..d52b9de9cdf8 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -20,6 +20,7 @@
> #include "intel_audio.h"
> #include "intel_bw.h"
> #include "intel_display.h"
>+#include "intel_display_core.h"
> #include "intel_display_driver.h"
> #include "intel_display_irq.h"
> #include "intel_display_types.h"
>diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
>index ef76efe42e9f..3825376e98cc 100644
>--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
>+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
>@@ -1,6 +1,7 @@
> // SPDX-License-Identifier: MIT
> /* Copyright © 2025 Intel Corporation */
>
>+#include "intel_display_core.h"
> #include "intel_display_rpm.h"
> #include "xe_device.h"
> #include "xe_device_types.h"
>diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
>index 2933ca97d673..68d1387d81a0 100644
>--- a/drivers/gpu/drm/xe/display/xe_display_wa.c
>+++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
>@@ -3,8 +3,8 @@
>  * Copyright © 2024 Intel Corporation
>  */
>
>+#include "intel_display_core.h"
> #include "intel_display_wa.h"
>-
> #include "xe_device.h"
> #include "xe_wa.h"
>
>diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>index c2b4be72f7a0..461ecdfdb742 100644
>--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>@@ -6,6 +6,7 @@
> #include <drm/ttm/ttm_bo.h>
>
> #include "i915_vma.h"
>+#include "intel_display_core.h"
> #include "intel_display_types.h"
> #include "intel_dpt.h"
> #include "intel_fb.h"
>diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>index 6502b8274173..fada6f877bca 100644
>--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>@@ -14,6 +14,7 @@
> #include "intel_atomic_plane.h"
> #include "intel_crtc.h"
> #include "intel_display.h"
>+#include "intel_display_core.h"
> #include "intel_display_types.h"
> #include "intel_fb.h"
> #include "intel_fb_pin.h"
>diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
>index 2a7fccbeb1d5..78bda4c47874 100644
>--- a/drivers/gpu/drm/xe/display/xe_tdf.c
>+++ b/drivers/gpu/drm/xe/display/xe_tdf.c
>@@ -3,9 +3,9 @@
>  * Copyright © 2024 Intel Corporation
>  */
>
>-#include "xe_device.h"
>-#include "intel_display_types.h"
>+#include "intel_display_core.h"
> #include "intel_tdf.h"
>+#include "xe_device.h"
>
> void intel_td_flush(struct intel_display *display)
> {
>diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
>index 7659222703d2..0482e00e58df 100644
>--- a/drivers/gpu/drm/xe/xe_device_types.h
>+++ b/drivers/gpu/drm/xe/xe_device_types.h
>@@ -30,11 +30,7 @@
> #define TEST_VM_OPS_ERROR
> #endif
>
>-#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
>-#include "intel_display_core.h"
>-#include "intel_display_device.h"
>-#endif
>-
>+struct intel_display;
> struct xe_ggtt;
> struct xe_pat_ops;
> struct xe_pxp;
>-- 
>2.39.5
>
