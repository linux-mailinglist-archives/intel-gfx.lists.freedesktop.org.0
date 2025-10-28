Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F96C13FD7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 11:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1287F10E36D;
	Tue, 28 Oct 2025 10:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PwBkQtSs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BCE910E067;
 Tue, 28 Oct 2025 10:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761645821; x=1793181821;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5DNDOSwKx7kZpkF1ev5YE9yMm0JW40Ool9tYkChg+Hg=;
 b=PwBkQtSs9AE0Zuoq6N4zcm7oRlTpwYzjYTLl0gUcJz4B6rUvBvvC2C6C
 F69TdpPq6ilrLq9ki5y0D8p+StBzSeDY104hiukYYegcqdyY+JD4oJBq+
 6433cBOVJ6P1n9jB8S7J4k5hEVtKDFdrUyKAwUevhBLL8AbTpGLBKCmGa
 PzCA2D7m/1BdTsanzLlNBlKV1HsdHDwBJAyTgJRkRewMHHu8mRi3xeiam
 riWi2LqUeCDeVD3DfQ4f79tNTfr9x1Ph/iCa2ncwM4zumQhvte4mV+wm2
 1wSZJX630RrAcp3AsSNr5GJtRc4VkHkp8yEFBTHOG84OairzIz4nUQDaa A==;
X-CSE-ConnectionGUID: hhy/Hz2HR/i45DGWMuC8Fw==
X-CSE-MsgGUID: /ST4s/OCTJ21+D8gTZ0Tlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63630747"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="63630747"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 03:03:41 -0700
X-CSE-ConnectionGUID: IZ7ImAJPQ4+Egyq3CR2xyQ==
X-CSE-MsgGUID: xmf3VLJbSXO6qtVupa3rYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="185765632"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 03:03:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 03:03:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 03:03:39 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 03:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QSzWkPiLcHJBY7aN1apxHwmqzyMvXzIePKkQjhXtYv3z6kpflzqiWOKrPZl/LvRh7h+gxXHwM2cT1VnHXf/W/A8BqDRorlMalSUenPq14mzLwnKfNe6R9B9UBG5zUFoeRDrUjg5ztzIktWKlnq4oRJvIYlQuv65KXLH6QlAuvGbsfRTV9JLqezFnmy8BI1gAydW1U5w/KYnvB4S8QqvSGczoI94uf1k4HK90T5P6ZMrJxbeHUg/Fv5Yl8dG4ePGJDOP5+0upuEiqlPE/+fqY7mv3cUfYW2Ec6xCbsRn2MLmoalO99kgthSFnvvkHSJD4PyjLazNJNQL//Tsrr1yV9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e1CC49m3A56kgVpeU45Q1VyutlQ18+ESZ0hg+kKaSJY=;
 b=BWU7YShhRP8/r7jfzrvkQ9QTBoZVL1pM+Rs3eHUQmciBXe3lVHVcX9Q08fX/+zbWfXaRwDuXOQ2hlKSlWFvlFJS2rPI6hfoOMUri3MACqs1FWRYpzNQqNnVLn8q8J+GX9Qb1eiJAB2LVcPw4NO6LE75O03QVPY9wwutYzaWXq6TW1vU9SOue1MBtZog+kGPe+t5kf8yyXWRTxtC3z6t21N706rgdQznYDWsRk6g1lkXpl5rU9F1CiPI0xlvGCv+NURKCk46jH65B1Od3MLyucytEJQEDMJSJcqPjYjsPk2TK9mpV0N6a+qfJSLhruw52mB9LQzhIGMG8AtFMeS5bwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 10:03:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9275.011; Tue, 28 Oct 2025
 10:03:37 +0000
Date: Tue, 28 Oct 2025 12:03:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: [PATCH v5] drm/i915/display: Extend i915_display_info with
 Type-C port details
Message-ID: <aQCU9GYF98oh0Nnb@ideak-desk>
References: <20251027200256.3058319-1-khaled.almahallawy@intel.com>
 <20251027205628.3067346-1-khaled.almahallawy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251027205628.3067346-1-khaled.almahallawy@intel.com>
X-ClientProxiedBy: DU7PR01CA0010.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB4856:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ff9761b-85e0-4350-a246-08de16094346
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?xkdg/4QE3Kc4LQotdJh255WwMfgi/lTX0L3JIKB/IiGKiyCj5DvmANrQ+U?=
 =?iso-8859-1?Q?Hg3ppJJbWZWtID/8nWGKj7m/FDv6m8ypdHrr7gbYCgF3DlnZMq/hVG3jMe?=
 =?iso-8859-1?Q?RD7F7cz6gcjQ+3fEbCFIDtn545Ei3evlv/UexlP4vCbJ7BumS+P/sg/yB7?=
 =?iso-8859-1?Q?pCTrE2li7Vd/b/m1oDLqmjw78JH9KBkZ2DNdLCC+VIJNEenoP9LeGg9rfJ?=
 =?iso-8859-1?Q?raUj9MVfRUPyivX0loe02qVGEjUHYcIBk4ZGJoI5N56D5viS8tmbf2SinC?=
 =?iso-8859-1?Q?GJhg0TgT/c5TqjjSl3tzC8XOnLIryFVSQD1ePCjmWPu78dEzV48/0d42DC?=
 =?iso-8859-1?Q?dOfNChQHPzCll4kuBNE8HZAn/Wve+2bjByx29oRpTFBUMCKKTbh0fq4JBz?=
 =?iso-8859-1?Q?PPWtSEnBq8SSaCv7vGYyJL+L8fh3qri8E8Fxm/rOMdNYhMh/90lInngnm2?=
 =?iso-8859-1?Q?p91ooife4afjLCyBu6QCNF02bTLpcucU6+W1Bbcg1QlCTXVl8qqTrv/KRX?=
 =?iso-8859-1?Q?EgtVkoLJW6NuHlTazamTmyMZqmaIcwdHX09LtMX1VSQbVEp2+Jm0p7ZQTI?=
 =?iso-8859-1?Q?JR+VSi0aKGTCgrSf3IhmabRf2Vowl+9iJbpxWbhyiRGbqgTCOZCc3YYPzo?=
 =?iso-8859-1?Q?+BMsysd8fH6EuXWDzXnGpdHCDmdbXqJRMGSzIMgfojno0GPjnN1aWOQP3d?=
 =?iso-8859-1?Q?D3sok5RdYmqHLvlaFTqSQIe+H6KAnZwpWasmpaMGAeLSyXHUrBQx4qoBkw?=
 =?iso-8859-1?Q?AQdX4Wpu43qQv+8qE9oJsQt+h4OANQh4krdozpmYMIwzDBRu4SgiukEJPy?=
 =?iso-8859-1?Q?5i9/yuEhZL6vzm/sPcNNo2KEh+Wo/tliAuxx2agqS6qi1v2wrhBtkQ45bJ?=
 =?iso-8859-1?Q?KktjB6+wnzcLg1INp3sf2EaSgFqlNT0mQ4lv/m3up31DHEXidewsjGlLCy?=
 =?iso-8859-1?Q?cXJWQDERzovxYAIfR4mF9OfRguPkvgKN3BzPOiXVUVwmYr/M+Fzo1y8Kdj?=
 =?iso-8859-1?Q?K4Fn24Ce96frQVYVwa+hfLNHoYGXPI/x1oo7PTCSydmW4TxubB5CqvMdSM?=
 =?iso-8859-1?Q?AtC4TTE3OVKrnFa4FF0DNQt0lnfDVhtC13wScmZy3MPVo1r0o5gV4J0St5?=
 =?iso-8859-1?Q?fjftIvmVjFVWOn+Gwfyv7e0k/2/CAUbFZBL0kf7X8bQ6M/efKhaMpb+L2E?=
 =?iso-8859-1?Q?S48/bnUOi4Rr2Y+aJlR6VjWke0OQGby9wz871S4Ro0gMQkyYo1O0zbureh?=
 =?iso-8859-1?Q?LIkcgemgqhBsr7TQuRb+Sn0Z0FTaK0oYm8WYr94yFVEveFRRAlYBbAywPT?=
 =?iso-8859-1?Q?hbuJMuC5ZDIgCSvbp2yvXqFNnVn4grhphmBZlaXiibV5tjbbNQhuk8nIfu?=
 =?iso-8859-1?Q?VMr8BaFlfVPk925SjrhLCysgr5XVQTct4cveHX0J1ziQiPNxSFA3bvnInR?=
 =?iso-8859-1?Q?KY+sd+SBR7Bn4KwQ07MGZ6iWBX2Pi5dT/jfJiyVMGrb+2coT2fEqC0vgz3?=
 =?iso-8859-1?Q?nhT5tR6KSEIPK52DHvTCVH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?xBwil8dhabrhXJ/tqNZVdvlCGL9aXvc7h3Hokrhyc6ropQTM3QAF19nlO/?=
 =?iso-8859-1?Q?ZzveHxiVIm1OwcdiebmKu9w+Ms+7P4nnb4WxDyrB0Xu3lF/jk60I1J40V9?=
 =?iso-8859-1?Q?wzZxbJkyYEgIZovgYZDL9Gwl34SB6pvKtQgcAow1GjYjWht/6cEyX5rjNf?=
 =?iso-8859-1?Q?nJVKq7Pq5Z3Aiu+s9yFxT9lRqaGL814RmMGYKhbZjFVIJOHvFDG4jMaHTH?=
 =?iso-8859-1?Q?lxc1X8eByYKNkCuruWQ4DDTbjk1Uo2UbTFYdfT24W9qcKzF7pvVlbwh9uZ?=
 =?iso-8859-1?Q?XpmChu5bWrBjpnGgnwZjd+V2IZk8McNJeuZQ2653+lDo+nEYymXbEwvONl?=
 =?iso-8859-1?Q?NS5EE/IblhlCfXwk1kC+vfD5/YYuKjurI5/aIfFMFdCqBf1rQNjU36p8hy?=
 =?iso-8859-1?Q?XleNiUFYDTeHQQbnSdAi1XPP1Ad40WQN6OwCUQ+8Z7gzoFgQTuQVjmUjbs?=
 =?iso-8859-1?Q?XSYGkCYKIkm1IEYEdcUv3/PENehIyxNe/4hv9lM3a1oP2stergZvIarw10?=
 =?iso-8859-1?Q?lq6N9NpO9sZdj8grkhZZhrKgw3DpNzrRvabpDXzwHOsbQ+SJYOSHrLqena?=
 =?iso-8859-1?Q?Nmhtqcnd4Vc3/3icn5DmD2P9ljfUYOtRvKnrYOI5VrdjOVnQQw9NCfaruR?=
 =?iso-8859-1?Q?EYcZTs+vP3IG0s6eEjCsmJhaAok9VGulNdu3IRK6C8Dt19E9FFuJ8O7J9F?=
 =?iso-8859-1?Q?1PULREk0maGqBlp0zuQKpt1oB6o60rhEbcmTf6flwURE3Ng3Ap2XZMKpOg?=
 =?iso-8859-1?Q?L3NZUKxLFPmcVd585wUgkd6htr1J86qMiLr8aNaWqLzJzXkDiUbD8ZGffj?=
 =?iso-8859-1?Q?4W8OPQsTb7AQcIdeJZN5Vo2fBii4iN6HfhvL7jiXA8HiO+t57aAO/fDXQl?=
 =?iso-8859-1?Q?Wjrc/B/579ITghSwVR4QMcW1n96VgVpzJyZrluPabXFztAoxaTJKd3feng?=
 =?iso-8859-1?Q?1vSfSafqO81feQh8E56PDRTrxM2kbk/6sBazq09bThOHIYBO4qSKHn0F1l?=
 =?iso-8859-1?Q?fXfJEcuPkZYe0K+yQaPpoDFeHtGqgD5B7klYWaESpaou26cjJNrjwqcoBg?=
 =?iso-8859-1?Q?uzcFB62DNF5aliTVufqUw+rVhcDIn3h6QZPhs+ac/Mv2l0GSWH6tAMlFSu?=
 =?iso-8859-1?Q?daC0kwQwmm1fezj60k4Ob3sLze/Ntpf7WceLt0r5jmGRpUoVj7M5eS5Ctj?=
 =?iso-8859-1?Q?HB6+M6oMiBGncQhSULEpeabtSx0tKi/mBW1px+HwF9rDRCyJ/mhxYIH0DA?=
 =?iso-8859-1?Q?K4Ts/jsZlDKrW8XGhGZMd2iTi1lFktQwc7x6KYyAvyKr66JMnpyLkWD04d?=
 =?iso-8859-1?Q?9RRO3Soq4949W1zSRjT7THD4j7BqumAz8Lr2F6F65BjU+E/s3LgbrMTQlc?=
 =?iso-8859-1?Q?ow8qSfu+yNAKj2ljJmmCGPdjZ6jOvFFT8Sgvt/3ryCjkJdZm1jK3XADd/V?=
 =?iso-8859-1?Q?5UUL/YHnB3EjLcVgCAzM8PthsgP2rYld/KYj2p1+l976CMnyNNwkBzHEmw?=
 =?iso-8859-1?Q?LmTRNcsTo/vYXePjzoBng3gVE1KGrG15ZhGKzQfTPvJDWUBoduRkIAGkXY?=
 =?iso-8859-1?Q?dgLp5Y2RoT7UO+O5f9ORenFcHlFq7YC/nfnC4wXiTQcjpIdFxxh4Z5pNyv?=
 =?iso-8859-1?Q?nMPW8d+VLOg2vIQd3NWWqJpgID4KoHa0yBL+6cbsPtXFzJM1B3IsgsJEqF?=
 =?iso-8859-1?Q?5xAKb2ELmOM6kyusN9nf21osefiR7UFfDs90+FHe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ff9761b-85e0-4350-a246-08de16094346
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 10:03:37.4977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xaqrW++ce5WGTfHZIwWTFaQWX6nuJLV9EsjlzOwkOdWISJPK9ooXU/V0xjkvJ4SkSBcEUJ/x65f5iUwLly8ZJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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

On Mon, Oct 27, 2025 at 01:56:28PM -0700, Khaled Almahallawy wrote:
> Expose key Type-C port data in i915_display_info to make it easier to
> understand the port configuration and active mode, especially whether
> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
> 
> Tested in DP-Alt, TBT-Alt, SST, and MST.
> 
> Expected output:
> 
> [CONNECTOR:290:DP-2]: status: connected
> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
> 	physical dimensions: 600x340mm
> ...
> [CONNECTOR:263:DP-5]: status: connected
> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
> 	physical dimensions: 610x350mm
> 
> v2: Use drm_printer (Ville)
>     Lock/Unlock around the printf (Imre)
> v3: Forward Declaration drm_printer struct (Jani)
> v4: Handle MST connector with no active encoder (Imre)
>     Add a delimiter between fields and ":" after the port name (Imre)
> v5: Init dig_port and use it in intel_encorder_is_tc and tc_info (Imre)
>     Move tc->port_name to a newline (Imre)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c    |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_tc.c             | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_tc.h             |  3 +++
>  3 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..7014331108aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -47,6 +47,7 @@
>  #include "intel_psr_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
> +#include "intel_tc.h"
>  
>  static struct intel_display *node_to_intel_display(struct drm_info_node *node)
>  {
> @@ -246,6 +247,8 @@ static void intel_connector_info(struct seq_file *m,
>  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	const struct drm_display_mode *mode;
> +	struct drm_printer p = drm_seq_file_printer(m);
> +	struct intel_digital_port *dig_port = NULL;
>  
>  	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
>  		   connector->base.id, connector->name,
> @@ -268,14 +271,19 @@ static void intel_connector_info(struct seq_file *m,
>  			intel_dp_mst_info(m, intel_connector);
>  		else
>  			intel_dp_info(m, intel_connector);
> +		dig_port = dp_to_dig_port(intel_attached_dp(intel_connector));
>  		break;
>  	case DRM_MODE_CONNECTOR_HDMIA:
>  		intel_hdmi_info(m, intel_connector);
> +		dig_port = hdmi_to_dig_port(intel_attached_hdmi(intel_connector));
>  		break;
>  	default:
>  		break;
>  	}
>  
> +	if (dig_port != NULL && intel_encoder_is_tc(&dig_port->base))
> +		intel_tc_info(&p, dig_port);
> +
>  	intel_hdcp_info(m, intel_connector);
>  
>  	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index c4a5601c5107..addc876f455b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1703,6 +1703,19 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
>  	mutex_unlock(&tc->lock);
>  }
>  
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
> +{
> +	struct intel_tc_port *tc = to_tc_port(dig_port);
> +
> +	mutex_lock(&tc->lock);

Missed this in my earlier review, sorry for that:

This happens to work only by chance: tc->mode reflects the mode the port
was connected in only if the port's PHY is also connected, otherwise
tc->mode will be set to disconnected. So this function will print the
expected connnected mode only if the PHY happens to be connected at the
point the function is called. To fix that could you instead of the
mutex_lock/unlock do:

intel_tc_port_lock();
drm_printf();
intel_tc_port_unlock();

?

> +	drm_printf(p, "\tTC Port %s: mode: %s, pin assignment: %c, max lanes: %d\n",
> +		   tc->port_name,
> +		   tc_port_mode_name(tc->mode),
> +		   pin_assignment_name(tc->pin_assignment),
> +		   tc->max_lane_count);
> +	mutex_unlock(&tc->lock);
> +}
> +
>  /*
>   * The type-C ports are different because even when they are connected, they may
>   * not be available/usable by the graphics driver: see the comment on
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index fff8b96e4972..6719aea5bd58 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_printer;
>  struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_encoder;
> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
>  
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>  
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port);
> +
>  #endif /* __INTEL_TC_H__ */
> -- 
> 2.43.0
> 
