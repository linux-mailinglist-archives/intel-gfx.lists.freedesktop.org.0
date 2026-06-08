Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xMfDJJG3Jmr7bgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:37:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5B76563E2
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:37:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=KtgS6509;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200F610F332;
	Mon,  8 Jun 2026 12:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D83C10F330;
 Mon,  8 Jun 2026 12:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780922255; x=1812458255;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bUCTuXWdR7TB9eVVAd6fsZvz0EWuETCysC2Yf58ZkxY=;
 b=KtgS6509X4FUP4koCwBgypGAEGA7wx5FnSHiTBK2w3kUECFII59MJX27
 RgTRlSLrJLIW+ziUJKoiu0LALe/sTnmGf75GnbTN+aVbHdLiQmhHlTRu1
 ir7dSW+dpMFle8Za7jnkIv8YO/wzQEiIYxpe2DZkINUIgk3ysvN0jV9UO
 sgPYbGbUFSbukog3F+8daw56K2jIp4OepPI9F7rgssrWLFuW2bQflLWrh
 MlIplIC0t5a7jb0D51FQNnpRM87oL3CuNA7DhqHjWUsEQUBthHYCCH318
 mXe34OzWALv91w327wBVJ4jDoArk+3meCnUFznZptxRmF+iPhITxBWXLL w==;
X-CSE-ConnectionGUID: w6mYoNGoQiiW4d7KQOMmHw==
X-CSE-MsgGUID: S7gl2wn/Sb2uZQ8Sn4A0cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81837187"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81837187"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:37:34 -0700
X-CSE-ConnectionGUID: twLkSzVdTcKR1BTwdKaRHA==
X-CSE-MsgGUID: xbB1g77lSGa0zY4qOtKV2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="244421310"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:37:34 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 05:37:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 05:37:33 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 05:37:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=THr47kKLY9PfqD7m+wBrLz/PXEsNaHGfVvejIe6ufYZaQJxWFU74l4z+JYqeJqGKiuGMG6z6A3lWh866wFjrh6rcIhq4Qj89cWx2jkawLRvgLL+IQdr9A/bGdbVCyozGmdHPwDhQwe1yOEZvo5LN6iqC+YnqnJatR/9Bei8bXe111bzGHsC8Al/pxu9dDgqQ/fBpjAo4aIvkr6TyOZNz8FbrH5ZGjbsrvTBEp/ZpL9GdAb/HQc5TOqaSRV2tWs5ZaLEtMz3OZL5blz0UXQEpviy/R4fWYUVJqxvHPrKnm792xTsA5fXdCb3BAg4FiORljxnIbhEsK6EmX9LHvBO0Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vfI/QBKBCJz+J5n1rDCt2aBQoiK488wFx8o1CDxNKDo=;
 b=HBKVR06d2cw+88ZLRRDP/+iAs73d3r+T9e+xdlcqpUVaeBZg/OoG87U30V1uFaiwT1ImMZhQx7+7eTtmq5wKKXUMM9hRGRHcltrNr5UK2pkfIfXFPiTYSPxvXk0UCuXqf+ZsrGZVRTqVOzw3bjhOFoizfCxAEChXkuxzOo379oB4fiHSUE6i6S8/8WdgRN+t/uF1GjFCOQGBWdkuU7L56RAQL3oOiOOOTEUy75a+0+yViaTa6Ztoi0/tKqlGCpMJUxzK8aa5iW1AFe8zzjhSS5nLRmVPAifwZULV3uOclq3zqYqs3YSjsu5UHzqvBR8dmm1IvLxry7iAdE8ejNCWmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH2PR11MB8835.namprd11.prod.outlook.com (2603:10b6:610:285::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 12:37:28 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.007; Mon, 8 Jun 2026
 12:37:28 +0000
Date: Mon, 8 Jun 2026 15:36:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <rodrigo.vivi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/tc: Disable outputs instead of modesetting them
 on link reset
Message-ID: <aia3UtOtXD65T8Eq@ideak-desk.lan>
References: <20260605212837.4265-1-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260605212837.4265-1-alexander.kaplan@sms-medipool.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0012.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::23) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH2PR11MB8835:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c63d3b-66c0-434a-ec29-08dec55ab393
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099006|11063799006|5023799004|3023799007|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: zrZaRVtQvZJ4IMKErDa4AJTwvlx3qWBbLaueVNH4Y2B8qj10cx1u0oP1/PhktvvGccLzYczuDUfVHtVOSubayHE3/5TUGYOw2LGjwI6xZn+2MacZch5gAETQBoUfZhEKXI8tmtmM5TZqJvp6gc0rd2tSwX0/7Sy3tPY2aw/PbBdVAqiZ2XsdlR5HcoR1bN7OHvV9zFkKSLVQ4aCCS9ShqoaokVUpVmXhi/mBAWaav18nAgMMd34dpz8Cwy2AB/aZ+8ovTyHCNSIu8aogIKdiU1Ox4vLQLxeXIFtlFdeMJBuSCNZhygSSLqYxMwvQkFRPPEcq9u57mkZZX3hf0B59EXnFl/tVObFag2NMbbp5+6bPPINt+LXIS7QbfVmn4swB19fHigM3o8ZVbLwb4Fp8KEqVlMB/PcRCnJaYcWPt8LfQu9a+6UeHDqLe08piAawy5RJTWGMDzctT4YGynmJfxd2Foet8zYUthI5tALdWcoUzqlPJ9VbLPhLJL64BwPqa23bd1+w0YyvYtPB/IuTh/FdE8ygQHaK7kl1k3QGZeAUWY6uTE7m7ypnS/B+gxLGy23SJ92vuCAkDM0DuAn23AQNmqs1smxBIG3qgWWXSiwqWbAt9XPdne7LyoXN5OLLmUOlLsjqwDaOt2+w8XL/gTQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099006)(11063799006)(5023799004)(3023799007)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?DdfxiGeWB++SNPQdO1y+FRZ24HY38RrYchD5YAaid9U0V5ul/7FYaZnW6y?=
 =?iso-8859-1?Q?RB8VSFb79q2XevOx+RHgRPPgb7MABB7T8Y9bA+fCOlv6c6RyiV3WpO1sfy?=
 =?iso-8859-1?Q?iXzO9ZPiEnlJWbnef1ksBuJqgNoQzVxlvspFox5R+xkFe9TZtcBJgnCU3f?=
 =?iso-8859-1?Q?PIF/cUD1UYNXoGYgfOFBH+DmV9cV4okrg+SUoaV+dwPbQi91rTwub4OoAS?=
 =?iso-8859-1?Q?zU/9hj/kt/JY14XT3JwkBc8zoTTsirG6MMDimPpc97DZyk34Q89XdKdagB?=
 =?iso-8859-1?Q?ZLsBl48L4bfrQ+h+yZEzpm3745uaRpk/KUDniXPzXj/3g/2gmWl1Vhoc91?=
 =?iso-8859-1?Q?ZJSQ8Rd/8cyEK2fDKTL3D3OHKGGhrg19jQIvpogw0WzyvFN84y6Yy6Qw1L?=
 =?iso-8859-1?Q?FHuSIVZWpenU5uS6TOeH6ScfWQ1FVemBqFcSpwcecl1gdIGPThUJPZSBis?=
 =?iso-8859-1?Q?/o1lrv38NILV6rH04nhNHaLzSW6EjEZz0y4Xtd3JHH1mjJ/vyjdsOJ/rYX?=
 =?iso-8859-1?Q?P8z69xcqKvo7LNInZxIxaqp1YFDsY5oMfB2Kf59oDV1MdMwLVUP8Ye1S/U?=
 =?iso-8859-1?Q?EEv/T8haMCC/GLjB3RTGMjcrlr+7ZJAY3naq3wUP9d9/PIo2WSIP63fE5X?=
 =?iso-8859-1?Q?Cx2tgDhh51fjGfRWU5DYZdrhi2xiWdQOvwD4VLXnGojWBLroX8tsU8zfuc?=
 =?iso-8859-1?Q?BM4uJKJBtJ5jMFp4dZzPVt/cm0N/EL//VSeOSoCoylPRXulVcJrycqahy0?=
 =?iso-8859-1?Q?Fcpt6q6ThQX2iGkFfYrWjT+rPYtp7QPsxqkcCZSBnLUHUuocbf3H+UWhWS?=
 =?iso-8859-1?Q?2/OmT8a3gtVUH9uCTPRebkj1JLYPVQOxVsd4hTLihDooSoielyYd0mO94w?=
 =?iso-8859-1?Q?I4RkgapgJXdIylUXN6+TNe2R6Ne2muAd+mR/8EjincBp++4zGbxoaWMM/P?=
 =?iso-8859-1?Q?6Ix0qXSBPG7AstA2N15niabPnKMG/bArMUk602ljQ4JD3+B1yikOapwNd1?=
 =?iso-8859-1?Q?lRQ6Eaoz37F3I8KyJGAHIh40lEOxVpErH1yinNgyX2r8BdqKQwQ9+HdRCR?=
 =?iso-8859-1?Q?i2BWhiomMPww7SggvPFRbkTuspJiHu0w70kGfWWVA6TKLCHmkWTtr3U3cE?=
 =?iso-8859-1?Q?2VnkqS/bIppZykhZtTHQZxRgM8moWzP40WPgoqT5nppI5F+GN8qPo/t3dD?=
 =?iso-8859-1?Q?qQXgfVj+E4tDuZVGgmYO14ZB4FsPTMND6EamNPqV0uofIZuB1A+NqPPik0?=
 =?iso-8859-1?Q?OTs3tyHe5H8AAwMkKHuBWTz7BCZ9qNslVOXLMnxtnab+pIGueRvoXogRCU?=
 =?iso-8859-1?Q?q+mPT6oN+9GXEorDm7LvIX47oAHodnLwTqSVa7jOozchD0tS4Q2zroGlWL?=
 =?iso-8859-1?Q?UP0+n/1UtzjDRmoTFtQA0sXL3YaQiXjfct3VEO0w2ajG3OjVRm1azJP48E?=
 =?iso-8859-1?Q?OoVPXZ1iZWi+wmlQ7PPKzO9u0qnhqE/Q/P56eaGwG/p33Au40aC7ryFzRy?=
 =?iso-8859-1?Q?qJrZBqnKF/xR7XR95FFeD44hN/g8PiFMu570vo+WnOuIjoOf6SGQfwflxF?=
 =?iso-8859-1?Q?40GVgbkuQDoPOJnBd1II9J3Loa8w0mNizd0QfSuVpPLwFwPk99oUjIn3EO?=
 =?iso-8859-1?Q?R5mCs1JGmvTr/nrKmtdBIC1c5LZOGZI3LUGz87O/M5g8uStpT1EPjVPXS6?=
 =?iso-8859-1?Q?33sJWgDLiU9By3Z9DVi6nhQYVkCnVJfDyc90BagM8iCcffz4r3tlW6Iez1?=
 =?iso-8859-1?Q?6qyglxuIjfnDr5JIuLBEpzxpufFwAw7T64Tzgp/7EAAlss93hpOhJdj7Y1?=
 =?iso-8859-1?Q?aawteSVwPg=3D=3D?=
X-Exchange-RoutingPolicyChecked: aaioDA2FOGSVdOIWwL7K+ql0y8XKaDBhTIXhM01hM8/L+0puZ+ZZM/2U87uZdKIy4k2GDWEZ4aMPaHbeG0iV2bRiGlIwXC4TlY8XwkrzXB8zm5FwJDOjqkSQnnx7bsPIDPE+7P15shfu7NcMcfraC57LWfWTEwWktIJQagggHxIFNugx7BXHVDudZpP7Tvo6NRCsJieSgI51jpPHjvBRzrGfG+4E+FoBLt408pChwAjCLxrD5fw0yhQYK8IyzGWRwMD3B+BBVRhLWvJQGjS5ulcYAI50JkULOnONxuugpxfN/bK+CkqhwK0dpPw6O6tFF/7Qyh5tMeu7pIZeJPvkkA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c63d3b-66c0-434a-ec29-08dec55ab393
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2026 12:37:28.7220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0yCEJvBDekQTcbbxycTHXzektKlJ42PO7dNj6mHuBKdRUQIKAfG6lYBXpLHj/FCZI9LyVp9vh8k5elTp7jfU1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8835
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:email,intel.com:from_mime,intel.com:replyto,sms-medipool.de:email];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA5B76563E2

On Fri, Jun 05, 2026 at 11:28:37PM +0200, Alexander Kaplan wrote:
> After a DP-alt sink is disconnected with the link still active,
> intel_tc_port_link_reset_work() tries to recover the link via a
> modeset, flagging the active CRTCs with connectors_changed in
> reset_link_commit(). By that point intel_dp_detect() has already
> reset the sink capabilities (EDID, dfp.*, DSC DPCD - see the FIXME in
> intel_dp_detect()), so the recovery modeset is computed without them.
> Depending on which capabilities the connected mode requires, this
> either fails the atomic check with -EINVAL, triggering the WARN in
> intel_tc_port_link_reset_work():
> 
>   i915 0000:00:02.0: [drm] drm_WARN_ON(ret)
>   WARNING: ... at drivers/gpu/drm/i915/display/intel_tc.c:1838
>            intel_tc_port_link_reset_work+0x38c/0x420
> 
> or commits a configuration the disconnected link can't sustain: link
> training fails and the output is left enabled on the disconnected
> port. Either way the output stays enabled, keeping the TC PHY
> ownership held and the TC mode locked. AUX transfers then get
> rejected based on intel_digital_port_connected_locked(), so detecting
> a newly connected sink keeps failing as well: the port can't be
> recovered without disabling the output by some other means (in
> practice a reboot).
> 
> Disable the affected outputs instead of modesetting them, matching
> how commit c598c335da42 ("drm/i915/tc: Reset TypeC PHYs left enabled
> in DP-alt mode after the sink disconnects") handles the equivalent
> situation during boot/resume sanitization, for the same reason. The
> disable also releases the PHY ownership synchronously - via the
> encoder's post-PLL-disable hook - avoiding the IOM/TCSS firmware
> timeout the above commit worked around, and unblocking the HPD status
> updates of other TypeC ports. The output gets re-enabled via the
> normal hotplug flow once a sink is connected again.
> 
> Preserving the sink capabilities across the disconnect instead (the
> direction proposed for the DSC caps in the gitlab reports below)
> would avoid the -EINVAL, but not the second failure mode: the
> recovery modeset would still be committed against a dead link,
> leaving the enabled output behind after a failed link training.
> Disabling the output covers both.
> 
> Observed on PTL with a DP-alt -> HDMI 2.1 PCON adapter on a TV power
> cycle (both failure modes above); reports with the matching WARN on
> ADL and MTL in the links below.

The driver cannot disable an output that userspace has enabled. The TC
port reset above should also result in a hotplug notification, which
userspace should handle reconfiguring and re-enabling the output as
needed. Could you please provide a dmesg log on the first Link: ticket
below with the rebased

https://gitlab.freedesktop.org/-/project/4519/uploads/326fe332d4e847b29c1f38907be171df/0001-drm-i915-dp-Fix-resetting-DSC-capability-during-dete.patch

applied on the lastest drm-tip kernel, booting with drm.debug=0x15e and
reproducing the problem you still observe (also mentioning the
reproducation steps)?

Thanks.

> Fixes: c598c335da42 ("drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects")
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14807
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11551
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index a21dd4e3fe4c..ae9da59ca8e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -5,6 +5,7 @@
> 
>  #include <linux/iopoll.h>
> 
> +#include <drm/drm_atomic_uapi.h>
>  #include <drm/drm_print.h>
> 
>  #include "intel_atomic.h"
> @@ -1764,9 +1765,13 @@ static int reset_link_commit(struct intel_tc_port *tc,
>  	struct intel_display *display = to_intel_display(tc->dig_port);
>  	struct intel_digital_port *dig_port = tc->dig_port;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(&dig_port->base);
> +	struct drm_connector_state *conn_state;
> +	struct drm_connector *connector;
> +	struct drm_plane_state *plane_state;
> +	struct drm_plane *plane;
>  	struct intel_crtc *crtc;
>  	u8 pipe_mask;
> -	int ret;
> +	int i, ret;
> 
>  	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex, ctx);
>  	if (ret)
> @@ -1779,6 +1784,13 @@ static int reset_link_commit(struct intel_tc_port *tc,
>  	if (!pipe_mask)
>  		return 0;
> 
> +	/*
> +	 * The sink is gone, so intel_dp_detect() has already reset the sink
> +	 * capabilities, and recomputing the config for the still active mode
> +	 * would fail (see the FIXME in intel_dp_detect()). Disable the
> +	 * outputs instead; the next sink connect re-enables them via the
> +	 * normal hotplug flow.
> +	 */
>  	for_each_intel_crtc_in_pipe_mask(display, crtc, pipe_mask) {
>  		struct intel_crtc_state *crtc_state;
> 
> @@ -1786,7 +1798,33 @@ static int reset_link_commit(struct intel_tc_port *tc,
>  		if (IS_ERR(crtc_state))
>  			return PTR_ERR(crtc_state);
> 
> -		crtc_state->uapi.connectors_changed = true;
> +		crtc_state->uapi.active = false;
> +
> +		ret = drm_atomic_set_mode_prop_for_crtc(&crtc_state->uapi, NULL);
> +		if (ret)
> +			return ret;
> +
> +		ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
> +		if (ret)
> +			return ret;
> +
> +		ret = drm_atomic_add_affected_connectors(&state->base, &crtc->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_new_connector_in_state(&state->base, connector, conn_state, i) {
> +		ret = drm_atomic_set_crtc_for_connector(conn_state, NULL);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_new_plane_in_state(&state->base, plane, plane_state, i) {
> +		ret = drm_atomic_set_crtc_for_plane(plane_state, NULL);
> +		if (ret)
> +			return ret;
> +
> +		drm_atomic_set_fb_for_plane(plane_state, NULL);
>  	}
> 
>  	if (!__intel_tc_port_link_needs_reset(tc))
> 
