Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF978BEFF5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 00:57:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EB41126F7;
	Tue,  7 May 2024 22:57:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Do5LU6/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E977C1126F6;
 Tue,  7 May 2024 22:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715122627; x=1746658627;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=56e3Si6RbbXxKfyq+s+bjN4Zvd/OvuWWxgJijZlgVyY=;
 b=Do5LU6/ZtXv7/PKGoW13FrKrfUIZbCFJQ8hT6kvwNmv0F+aldwmIZku7
 GoIjdmltZodl3EwCd2CyvZPUCxz3IsgC280YrR/N+BwFYbu3d+pPLRAgJ
 71egnOiM8jjRH9yR7RW5mS9ACrsiRU4jCJMOjzF/GlJU4VsFex2A4YzJl
 kMFaBBC4BjJ0kTvC+3gCJlBnaxZpBkwRrP3oiRR1ynngwPl/buTZk4gaG
 NZpGPq8dGzfQnSykReHXplIRsYMS5Ci2PEsD0RdwARq8QoGdMUMGz6Gud
 QMQxU8j98Q+pIi4v2LR545EyLGLasY7aILOXjam2B9pboWSXUeSdTBsAB g==;
X-CSE-ConnectionGUID: nPSHb9w9Q7WnWMcsiJlDIQ==
X-CSE-MsgGUID: 5GWr5kmiSBmNeAG4yE4PpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="10821138"
X-IronPort-AV: E=Sophos;i="6.08,143,1712646000"; d="scan'208";a="10821138"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 15:57:06 -0700
X-CSE-ConnectionGUID: yIX7nop/TemJdNoUyJrQew==
X-CSE-MsgGUID: 1rcy12mrSTKXCKGLUmPbLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,143,1712646000"; d="scan'208";a="33202993"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 15:57:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 15:57:05 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 15:57:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 15:57:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 15:57:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P08lkK1YFjUp/wFRzwCM/oXnuYAiulu/EehCtO+6JfHUXkpWUye/Q6XZU5CtTONQbEq+TuxSvuwznM2TYJsNZvAwUl95HpVAvm9KJpCNZIK/HX6xwsSwe5TZrUmgNcrP+dnaZFD8oLpBrIGIMF3J1MrU4fTHcGqrH+tYI0HY/qXcL63aweO352bDRj+Dhxpx/OeGgIxw7RiyCNBZ/hGv3KKnvc6tavks3NqP0p8XmTpuXoWY1giq5FAGDG5+X0eOk6uz7EM2QgBfltCJ03XP1O6Vk2pYdAzfA0JUW+AZTMj6p8CTXd2c4xfwWSAGlxMyIc8k/cqU53I7g0zbnrYp4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aEorFrSn2JTp7Zw95ZZmH7Vn9LfkbvqR4EhqvJENJsM=;
 b=ll9u7TVCLLh/pHOCig6GgyGIQlv19estcFZxkT0tD/gvJ8NWFHRq+zWayDxyjx668PTO9llZqt1YjM0zt+fkNjz9Vqy4W/E+9zCV1AQ75V/ZeW/DF+2f1gu2RZlavdiTmnWhlofXKBjaPzy9CN3lnZBU1dBbLx3pF3H3PKUwvgyWKf0BGtdv/fuRuO1leQ2ElAq57ZdkUlLbMZYirmtqzpw2Lf3/kVlKqGBjcR9gE/SnlJmM45PNWl0cMdyeOK9VZ/qBUJXJXCEgakyCPjLN1ZNCv8fvnI1SsS6Qkp+oVjdoCxAp2vhScmxSlU183XulW+fvED8qP2QUv9IBgpbQdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB8301.namprd11.prod.outlook.com (2603:10b6:208:48d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Tue, 7 May
 2024 22:57:00 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7544.036; Tue, 7 May 2024
 22:57:00 +0000
Date: Tue, 7 May 2024 15:56:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Chery, Nanley G" <nanley.g.chery@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "Graunke, Kenneth W"
 <kenneth.w.graunke@intel.com>, "Souza, Jose" <jose.souza@intel.com>, "Mathew, 
 Alwin" <alwin.mathew@intel.com>, "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: Re: [RFC PATCH 0/3] Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS
 Modifier for Xe2
Message-ID: <20240507225657.GI5615@mdroper-desk1.amr.corp.intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: SJ0PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB8301:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a41e4b2-e8f4-4396-97d1-08dc6ee900f7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?naDsB+viLeRRj+PSs06gRpSNfif80GxvCdc2Z3mDQqn3iFd7NGXi5PdZI/DR?=
 =?us-ascii?Q?Qm7gVXDod9U49twnGmpBjIORgHa+dD2KS+D1xjCXzf+bu6bC4JYF2DTvCRxX?=
 =?us-ascii?Q?Y8iV9z3c1A/fLxV7XDfXuEiFfup+O/StXgt1s9AwzTbbgKm7lL07TK3S1Kc0?=
 =?us-ascii?Q?qiSmEoL2e2qyEubOCtUH+r+NmPRbEAStswNxYpfOHEw25AaSpEy5gqIfzrrY?=
 =?us-ascii?Q?450LZGm0l69MMrM8KMLOi5mw65rSGLNYKcKVnc6yaMoYdpVZx6Q+LAhmO2k2?=
 =?us-ascii?Q?vsJiEvTWP0uerXMIkWlHvafxotXeyxf7iGt1U5iRwK8wB3/alYTNkKh1xwxy?=
 =?us-ascii?Q?1J45hdd9cl5w28c12RU9HMMR+RmNbZ8Ra6wnDtN+lSCgv6qVgt3BYhW/DW3G?=
 =?us-ascii?Q?WEvVuBK4FjtPXxmxY+LdBXf1jWURBENDatO2weoUi73qIE5SlF0TVht0TMtO?=
 =?us-ascii?Q?CnZlX17sBb+3oTUQB7+s5UvrsBWZXie2KKPNwi6hFIqnDyzFsBbOk8uGIgyZ?=
 =?us-ascii?Q?cJzH9+0puzNn+rFuCp33CedKDIF4o9IAnMpxLmVZpb6/W9aXSIEhEG4Z4uPq?=
 =?us-ascii?Q?96leG8PxROzrPw3LkWwT/dDSBeoTBFyuhJkwOYJBFTnIem5wqe82mc0qKL9w?=
 =?us-ascii?Q?SZoVbUgecnPzIj+vYY2eTkitg1Quytvd+sQhWrh8aLjKwEj1bxv1447NmbcC?=
 =?us-ascii?Q?4OCA1snL0OmbPjsGCo5dCkmsX2Uj7HlsUv8YtfxQ2wW5Z1VhOpF4Y4zKzF2g?=
 =?us-ascii?Q?Inu6qJY5Mx82XLdDZauLsbvY/FLjSM/eJ1rDhfJNtsS0QjXO2QcIcbHcPaSE?=
 =?us-ascii?Q?rY7Y80/mPtJgeaOS28YuGfrnTKQvGKNC/eQyQa5gFjxww0M84EHUDk984Bfa?=
 =?us-ascii?Q?5VFGqip3IO59MF/pHJ2RPdjbWm9XBZmLlYxRViv+mVTQpbxkRE+t+GKB3Q3o?=
 =?us-ascii?Q?IbqzhXVPwIM8Md+6o0yEuBbpZeckMfqyhI6PF1aMzM8yq1CmqxELml01n6i8?=
 =?us-ascii?Q?R19orBxIXmYSGJIWYueMOA3sPWpVdTx7mmQmcVGMCi/nPSFt+nJiBxukVQWx?=
 =?us-ascii?Q?3XqhSKbecBCzR7s+ja7+8ugzF2WmtkJM6e9U9MttMlcUTlR5r8wkh2q9784l?=
 =?us-ascii?Q?aub9JsLx+dd9kQ3O0RcTsl1cgWLSBPXOFnlfGf9QtrPao2Qhl/T3s9avZQ9d?=
 =?us-ascii?Q?N6l1hrc8pvhXCNgf0bBqX8zEVmVDfaRQtocbcTNFrpghRoNVDKFvAl9SyXsl?=
 =?us-ascii?Q?mtVo8Dwpmh7klfsHpuWijefkg0fW70IrCrot6KzNfQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EjR2ZSpyXY6RiX/nHjHnDATzyrJtVc1TQZryC8U7BPtWsk/T1vqX7AXXym9f?=
 =?us-ascii?Q?VXK707DVnT5J6BJud9fADdD8LoLBo7P8cBjkPLpulxgUhQVSlhzi8W5vdm9h?=
 =?us-ascii?Q?7cBystm5x/4iAAH0kFY15FpfyJVeoiv49zVgZSfR2qMQAxJKGvCX/DW+xfZB?=
 =?us-ascii?Q?pE1wqh2dqIlQNyqxmmhq5ftnV/e54Gr6l+kpthnZyMUOqtHXp4NZbqNbMwn/?=
 =?us-ascii?Q?6ne8TGWT2yf8XHVKBr0mAIRb+DT3ZpYNpWvEhyIoYWBMLWZ3O5SEvelI9sbl?=
 =?us-ascii?Q?OeAor4W5ZIQpbOZvWTUNQRD5wfm2rHl9LhTpnSm38hs3cDNsK9AYNoR364Ju?=
 =?us-ascii?Q?KRL/CIYz65zR3VKRgdPBM/V4bN0hgL8MdmHQdGWNvO13CElHeuPQdDanqemw?=
 =?us-ascii?Q?UgezGA+u/KDwd+Kq4nE6Powpbi64l6ywQ5wvLNihArxtt4RXHtWxdI9ryoqK?=
 =?us-ascii?Q?+zZuG1H+J0ucsBUdmtjpc1nav1b3vHKgsSVTSxq4O2jn/llnOE5EAtMbHEKE?=
 =?us-ascii?Q?tYBoH5GszeekdlLbraHD0GL5dHRxB2uEojv65Ts9nOpEszTkEodn3eCkaSVp?=
 =?us-ascii?Q?HpSP2KCQj1X1E6HeBj9Skr8r2nJgGRuYscQSljyIKuE+WRA4uvl69Z/qKhJ/?=
 =?us-ascii?Q?qzGAEWD9KpyZVz3O7VIdYe6ANlOIBgyV3OjlNqyiFP/eln0kCQaIoOnTKN7b?=
 =?us-ascii?Q?ONt3q8lrnH4J+Dhea53MkbJ/8RmUhMdkiNoge2kBESMa4dO1Mnz5lfWN61L/?=
 =?us-ascii?Q?5wwwyrN0iPyFU4llHPuMC+sMg7Z1uHc69oY6nJx+JPx0cQDk82EDS1GQ/ZwK?=
 =?us-ascii?Q?a8xR8KXcmgefpyucNm8ynPhLPGdi8DmbbkV4+K3AbXwCirnRSQnm4TpM6DLo?=
 =?us-ascii?Q?WaBFEkaeRTzcDa1ZASUbJvIbBu/KZDlsBKDTo02J7zvshWANwGFukTT7wZsJ?=
 =?us-ascii?Q?hKbf3BOlVPrq3wIdvMOoJIN9fjk9T7gy94OOxAFt5tcmvsyKf9iI4Sclc59v?=
 =?us-ascii?Q?iDn8yngxCWqw5GctcVQN2ZS0pRz/zIRiipAWAj6naqKBB+XMGLq0G/jyFdn6?=
 =?us-ascii?Q?H5VpnUssPe1/o6rEq7vVUenTzqKlob2tL+pAy3KEOS9fIPfiO3dF/hpb2pNh?=
 =?us-ascii?Q?1lczy0EJwfySz+Nescxoyd4sZY9+ksI4s8mhVlXbePQY4cxD+0Ux583oPRVj?=
 =?us-ascii?Q?gleDSgldk0JzxMR9MqrgSXajwU76V2HWtOVb0s858iUzIl5w/SkEQwcc24f/?=
 =?us-ascii?Q?/ln1KQwQkeHMY5cVA6cQoiTQ8TDwrkf1x7WLV2q8TrYD9KrUJSMSBguyfTeA?=
 =?us-ascii?Q?bHk1YbC1GwzixbYBeocY0IEB7moWo49S7aOgw2t6Fp03V4abiBZIQmQiYAHU?=
 =?us-ascii?Q?uS0B2bDCDYDzZjjweq8Rp73htBwyM5O49OaEZrHrQ4ZGTqkYrAXekcFOnc3V?=
 =?us-ascii?Q?Fv6iP+YBFHoCB4puY352R4WviorwLeQJXEjqaiRIKAU2OhPsL4EVMu14HbKp?=
 =?us-ascii?Q?RYeds23pDDNx0MJeADFeuhPM5xkytJOJsTfKNj31+WPMyT/SUhneNOYUm2rp?=
 =?us-ascii?Q?JezNogOgIxW5F/OBPWTGd/IrvmpD319iBCBuLvrYA2yawupOfCQ4nGo3Skjv?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a41e4b2-e8f4-4396-97d1-08dc6ee900f7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 22:57:00.4295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H80G4SgB3HQSJqpIvzQ/sZDbUqZ0blEnK0G6/v+zmYNOs+1i3x2dcm6xjM09GVz2iJxao7eV2MYQXkYjGHOe18ivN5jUEUhmoYFnrrKIvZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8301
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

On Mon, May 06, 2024 at 09:52:35PM +0300, Juha-Pekka Heikkila wrote:
> These patches introduce I915_FORMAT_MOD_4_TILED_XE2_CCS modifier, which,
> from the kernel's perspective, behaves similarly to `I915_FORMAT_MOD_4_TILED`.
> This new modifier is primarily intended for user space to effectively monitor
> compression status, especially when dealing with a mix of compressed and
> uncompressed buffers.
> 
> The addition of this modifier facilitates user space in managing compression
> status, particularly when utilizing both compressed and uncompressed buffers
> concurrently. To leverage compression for these buffers, user space
> applications must configure the appropriate Page Attribute Table (PAT) index.
> Display engine will treat all Tile4 as if it were compressed under all
> circumstances on Xe2 architecture.

I may have missed some discussion about this, but I thought the previous
consensus was that we didn't want/need new modifiers for compression on
Xe2?  If a userspace client (or the display hardware) receives a buffer
of unknown origin and unknown compression status, it's always fine to
select a compressed PAT when binding the buffer to read since even for
uncompressed buffers the CCS metadata will accurately reflect the
compression status.  Unlike Xe1, where generating content without
compression enabled would leave random garbage in the FlatCCS area, Xe2
will set the corresponding FlatCCS to '0x0' for each block, indicating
uncompressed data.

Can you explain more what the benefit of handling these modifiers
explicitly is?


Matt

> 
> Notably, this patch series omits support for X-tiled CCS and linear CCS
> for Xe2, neither of which is supported by display engine. X-tiled CCS
> offers stateless compression making it less likely to be extensively
> utilized. Linear CCS does possess state, but currently lacks expected users.
> 
> These patches aim to enhance the flexibility and efficiency of handling
> compressed and uncompressed buffers in Xe driver, particularly
> catering to the specific requirements of the Xe2 architecture.
> 
> Juha-Pekka Heikkila (3):
>   drm/fourcc: define Intel Xe2 related tile4 ccs modifier
>   drm/xe/display: allow creation of case I915_FORMAT_MOD_4_TILED_XE2_CCS
>     type framebuffer
>   drm/i915/display: allow creation of case
>     I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
> 
>  drivers/gpu/drm/i915/display/intel_display.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 +++-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c      |  1 +
>  include/uapi/drm/drm_fourcc.h                      | 12 ++++++++++++
>  5 files changed, 27 insertions(+), 1 deletion(-)
> 
> -- 
> 2.43.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
