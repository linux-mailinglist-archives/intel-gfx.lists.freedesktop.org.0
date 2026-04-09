Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDcbAs8A2GktWAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 21:41:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669643CF125
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 21:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B4210E11F;
	Thu,  9 Apr 2026 19:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkwiaJaG";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBAB010E11F
 for <Intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 19:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775763659; x=1807299659;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WByfioZdb2/15Svg/mp4OYgCMU4Meav595ex4NhIko0=;
 b=WkwiaJaGW4J9rrD6YWlAL81uhrmeXBUmem6WGDvuYDWjeeVghc5Z+qdH
 G9seZMQcybuuGN+KPrK9D8iAVJ4L9LRHMhUXFKppUlY46+/zSfWWExmNV
 G8aTXtKlyXdkVAtwLiiTAs9s+PEIombCBXXuCfrVYmSAqfVOWZc04EpZQ
 OpraJvVfQ76tNt1xmmIk25wHIu3Vd7vdfwCsy7Gh2CGhVdxtZ6A1nC95r
 eP9VN4Y2dD4MFafEK1w1o2g4xoUoD8777TW7fyf/qDZUOHJm3eZhlIj39
 Nhpq7yd3utCAtsInLdysM1/302H0jfvLMwYlMMHx1bbNFr9uq7H9CgYgg w==;
X-CSE-ConnectionGUID: t70CfZyTTQKXfq8l//teEg==
X-CSE-MsgGUID: kmE1gHllQEyN7VVfoLNRrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80639476"
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="80639476"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 12:40:58 -0700
X-CSE-ConnectionGUID: d6Aq6zGvRz2uGqyPEC42iQ==
X-CSE-MsgGUID: rl+fFg/VRs6XScOPWlPCfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,170,1770624000"; d="scan'208";a="252003837"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 12:40:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 12:40:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 12:40:57 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 12:40:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=apOoO40wbp09CwujpHluYoZaJJCSnNpGQZ5zgv4uLY2gBxXP4GjKH7u+w3VfjX84PH7BsB61lT96Zmxa2NbI85zNHsTvXWAVxtbBml2GHpRBsOWh0xxEpsVcgHgRF995zKsFZHfWGSfSSvHZ176a9Hh0qBzIpQ9L0Jn9wUSGdOuUOfosdG2EXXEkhHc9xIGxV7KdKVCFe76+EcilI6eZyfVNYss0l2PWbpUbVqMNsT8N0ccGLqqeolBp0IQvu/OlOpWWXXXyCDgO7tNZygwBszuB8JZXLksCaot+6zifoeEsk39gbCa3Lt5OWkzOtzVLWmnCyIDhwbGcl9yrLvs3Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9mmBCJ5gVRdcY8V+0BGKm+RYlDt9yIOdQEIy9mxNKkw=;
 b=nb7/C0so75tMMQj+hTToCxitnnuFS6HfWBmsuIveWH+5HdYqW42l4s0e6xyVti3xPfwLIey8ubDh2jBMaQNJB0vd3ekbSa2gv+5bIyGR414Af5kC3rjSdGTtzdmJUlTOCbNY8XrEw/CcaqxU7GgnBWcX6jRGc97CaJNJdk/cAtfqRbFWXWvyl5YJjVx9QdHNO2wtLq05LahOg/HjKFF5cXuvxyCHhcIUYQVQFa78QLfNGRDoJlSt98xZo5gKSfugONwrPvfuvz1FRhGwThBtXFfzuZaGM2JsWr0oZ2r8kZILYE1F9vLhbU/kUndOGX3bMEmnT6KyMuU3uFlMmFEPGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MN2PR11MB4678.namprd11.prod.outlook.com (2603:10b6:208:264::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.18; Thu, 9 Apr
 2026 19:40:55 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 19:40:55 +0000
Date: Thu, 9 Apr 2026 12:40:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <Intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe: Apply WA_14026810691 to engine
Message-ID: <20260409194052.GS2729713@mdroper-desk1.amr.corp.intel.com>
References: <20260408213418.1738915-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260408213418.1738915-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: SJ0PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:a03:333::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MN2PR11MB4678:EE_
X-MS-Office365-Filtering-Correlation-Id: 342389a8-103a-48d7-498e-08de966fea30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Ezggn8+BFfowxwBy5LK/G9BPKVEzA0/RHevWR+vp1iKaOrR9efMGayRZj0aQ/8IPBwu8Nb5pkKH/AHfEsHXeY8DYuqMxOl1MusLBCXjIQSEpA8JP+YiIfUdB+UXyi5zZXHFkO+PwShXXspdBCQYoDLD5N0hqVeHBntjbwGoEmfNVKPIk+Hc8bM9ZJzzt3MTsMljQdVKTEumr7vvgRi+C+/DJp9ACXFrqIalYINDU65JrFf3zgZYEAeupCz0JvpxLcQBWDiYcp3X1aAICayjsZlF69EpPmhPG29gnluKLFWwXP7AL/M+h+SY5HIWfFMP1PVqpKu1SM0XKywEz5X+1mfLG0+vAG+1X0GiYixzQB0wqcexZJYgVXSqecWTSgq46CFJKYreGkzzAB0ChuFT7F3CFRhYEYnu/Ubk6jFpkoAYLhy6y9OETiW0eRaDAZSNLXUpY9MoLYD9Sx7xX2N3FX23VIMjYnT4DfKvTfjiUX8N0IxjKubnwib3Xm5NmqdBc+jI+qpHsoyq/RnYQyGtGTyJa5dFcoHMYGoGTPFdlvmANp9iaMsJVf8T6whujL5h4zYt5+ww7erweBJtTrV8MRMgdVXGY3B0yVJwgoeLsFRvXlQ8ufcoZBQ+dQOrjEmKoq2o9Nkuxo7T08L1CjGYsdA7guwQ5Nu/1BpyBcF2HZEU6ME2kzMUYF0Cs9jfb18/jlUVksTsw63yfmO7bzeTobtO3vN29XJ1WusPQ+WFRpr0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?E0dpPkBNXt1tbZd99FGzaEzg81mGfpC8SeO/DxZBCqyribSRJcF9a4mOuBL0?=
 =?us-ascii?Q?VxuqrvTr3GQP6jcWPfYfopUZqHAM4m52eTz4ZR84/xnr3r7zTHByC1/CKwzC?=
 =?us-ascii?Q?2l5qgEAHr7S1UUDQFxx+HwkSrD8PAsoUgsiBPQqmOMMKCWqlGz8fC90ONT1p?=
 =?us-ascii?Q?cZ1N5kqUDuLtACfP5xWDho5xW44XOIiwxhy7HNQ9ovYGsAIZXyvd11x7R7nU?=
 =?us-ascii?Q?AKtbD90NTGIdtaQfXWmxN9A7/VlBdYlcRy4atOZFnWuO0SenM3zSZUQzO19C?=
 =?us-ascii?Q?oS6fgtOulsO8h0Y98t4FHCM+YpsBIHCQu84HCCa/3Hzkp4iNGRhE7DJN+Irr?=
 =?us-ascii?Q?u2kaTSnDeHbEK5o5Uk+gGuHUFrICjzw5n/MesPzpkoeTzxl6ejYR5GdMA8M9?=
 =?us-ascii?Q?LOCYgwSr3MUvSBh0NgiaAOO+LL0z0EfA/6Ut1Wtais6t7uf33yWFtofezdih?=
 =?us-ascii?Q?qxNd1ho7mNPJ6MgL+cLxnIvFNXzCwgsVyunEv4r2zDb2MLH6V3MaKxb731sD?=
 =?us-ascii?Q?aT/h2QxB1hxPMA9y0GqzVVYu/OLPEBvjWEwFWHxd3/2lq4Qi/4+wdZaw8sU7?=
 =?us-ascii?Q?ujNHCK1PHG8bqBVoorepjCklo8b4EJc7tu3BhJRV1ILbrAgkTTCddX+EdDzv?=
 =?us-ascii?Q?piq+9YLWeuE7PDZclLJ4WsLJQb5BLmbUb1gXNZHMUYLKKTeau12McSRguvbT?=
 =?us-ascii?Q?o5g66c91tNjfvlv0729o5JcN1RxkcGhH5PeAIl54PqOgP4CCheQUoBgGyjzF?=
 =?us-ascii?Q?so2hIsQ9CVUSeCvFEqANEGZt8PlpImIKHhB3t3PrOT9offQoJj8EbYI/b+ff?=
 =?us-ascii?Q?zIuICK2y2AK6kSu319KQ0u+tj4xNtn7xSguYda5hlTCQNlUjJ499f8gDhjhz?=
 =?us-ascii?Q?NkeZVd3CI1tv9ijzP4W3rR55WRYXkjIK6JKonmc+8JR5R4+R5FNh00477ucE?=
 =?us-ascii?Q?Y7kbI03CcArhHXBaOcXIPaN4JF+Mngx5ycxKSGT+ouodSL7ZZMchKO8bo6JS?=
 =?us-ascii?Q?F6d0Jiw8x0c8a/wexEiHRajPvSwUvjvRF/trxJJ/n/erKFVgjCcomV1lb7o0?=
 =?us-ascii?Q?w4KbIdgyuv5SGeE/9/JLMstESqH69Byjp7Abp5s+XA8XZfRFJnFC9HQuvmu5?=
 =?us-ascii?Q?xWDKDIEUEo/dvsmhbwRbmG+2T9Fnm1QuFn6F3nsjQSP+rfYtAi9CkZyUA+29?=
 =?us-ascii?Q?FQKyvyn0H/1tRuE1nPxnkDjGy+gA4R+CWHFPRmI/d5UoXfgeIoDfBCbPptiC?=
 =?us-ascii?Q?w0phfn3lTb8hCzw/Yi+Xnl+8VpqdOMXuJEfVviiT1OfuYb9S8pbAalO1Yihb?=
 =?us-ascii?Q?e01DgVEnISH5Qo6Q+N7D4Dd9jeRON6vN57aXr5F8R1xCZucGy82smHT4ei5p?=
 =?us-ascii?Q?RHWwlPu7WpS//pvu4l15BUELN3IVWIB5i09asjPVlcUnSd0cdG3bIXfraBbf?=
 =?us-ascii?Q?cPqGpKIvLobirtU6xQTfcu7bgaJBwN4ffE7gDgHsUHa2+AOfjL/oCzy0kVOx?=
 =?us-ascii?Q?ILPEovlaG9yndHZZOWnul3NmKd5f5oXp+3XEzxaiKeoesZVU7vmc6UG+1sEN?=
 =?us-ascii?Q?EXL0lcnuBJwQX0xFYBtGoE2D8u2cNUj/jNDhE7CLmjuYQ/+iAeZwznZVC35g?=
 =?us-ascii?Q?WEPArbIBiRttBqhDiPZp0JTGx6pvFZVHry4F/XDwyzybqDKtVSdgJI8k4cd9?=
 =?us-ascii?Q?ps6GYz99/4s088eO5tnZAzIkxKrt635ZrfgRnrhTfx927K9q1xbAxj86UKyB?=
 =?us-ascii?Q?4tHDXHjBQsg1Y+YoiYCKWiX7bZrFBLk=3D?=
X-Exchange-RoutingPolicyChecked: sUpD18nkETF1BLKYh5MyyPvk27xT9tq5YNyla/B7g3dhgO9hUdBHJcqGRJrwDVOjJ2swwLciuGQ9MnPiEc9wVduKN7z8IhUKsVglcIto9bYfJilWXPivewTDHKj+tN6oMZr8sYs1sWLX0vFopx23px+eD164KipjQ6xb8xknMs5RkGfkO0uFNTfrLlqwHgHKZ6r+79hHUzWli8g06VMVE+KXSmczshpW9GdYEgfVLnXkkqXiwoEJqW5GN0D4Qi20NS18+C/oJfdVSb38c5o0yQ6PMX2QhCssHDg78aFY/+pIBh9pXi/uT7ptE2fAe5yDQvKyIgGAe32WAhADa7IHUQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 342389a8-103a-48d7-498e-08de966fea30
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 19:40:54.9895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZM4mIN7H1maf9Qr2ZKDi4aYrpROmAuxDUYKJEjOvBxPz802rvNQ6qA5LZvykgr69bLJSp5G0SFk3LFQg99k7E2m+la4bemaVx5QDZjOYT8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4678
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:clinton.a.taylor@intel.com,m:Intel-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 669643CF125
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 02:34:18PM -0700, Clint Taylor wrote:
> Apply WA_14026810691 to following IPs:
> Xe3p_LPG
> Xe3p_XPC
> 

I think you may have accidentally sent this to the wrong list.  Can you
re-send on intel-xe@lists.freedesktop.org to make sure we get reviews
from the proper audience and CI testing?


Matt

> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/xe/regs/xe_gt_regs.h | 3 +++
>  drivers/gpu/drm/xe/xe_wa.c           | 6 ++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index aa267c2f6162..6a16ac1aca96 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -536,6 +536,9 @@
>  #define   SLM_WMTP_RESTORE			REG_BIT(11)
>  #define   RES_CHK_SPR_DIS			REG_BIT(6)
>  
> +#define TDL_TSL_CHICKEN2			XE_REG_MCR(0xe4cc, XE_REG_OPTION_MASKED)
> +#define   TILEY_LOCALID				REG_BIT(2)
> +
>  #define ROW_CHICKEN				XE_REG_MCR(0xe4f0, XE_REG_OPTION_MASKED)
>  #define   UGM_BACKUP_MODE			REG_BIT(13)
>  #define   MDQ_ARBITRATION_MODE			REG_BIT(12)
> diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> index 2ec70be78bf9..30dd1687cc8d 100644
> --- a/drivers/gpu/drm/xe/xe_wa.c
> +++ b/drivers/gpu/drm/xe/xe_wa.c
> @@ -609,6 +609,12 @@ static const struct xe_rtp_entry_sr engine_was[] = {
>  		       FUNC(xe_rtp_match_first_render_or_compute)),
>  	  XE_RTP_ACTIONS(SET(ROW_CHICKEN3, DIS_EU_GRF_POISON_TO_LSC))
>  	},
> +	{ XE_RTP_NAME("14026810691"),
> +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3510, 3511),
> +		       FUNC(xe_rtp_match_first_render_or_compute)),
> +	  XE_RTP_ACTIONS(SET(TDL_TSL_CHICKEN2, TILEY_LOCALID))
> +	},
> +
>  };
>  
>  static const struct xe_rtp_entry_sr lrc_was[] = {
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
