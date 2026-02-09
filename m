Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FyeOikAimluFQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 16:41:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC4D112049
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 16:41:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF52410E41D;
	Mon,  9 Feb 2026 15:41:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PeIRH1vR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B9810E41D;
 Mon,  9 Feb 2026 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770651686; x=1802187686;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Yd66+gveRXuURrcy3ZOhET73a7tWv1ah9r1EsAEFSXU=;
 b=PeIRH1vRhBZ5BlcSHlMvZnVTF39PBZFqHMKiVw2JtSmIlTvox8PNNSpS
 s1hige6SUgYVG5N1DTfao75T5JCCUJlo7p9qCJMlTRrn6HcLSACz0h2Pk
 M3e6L041Kr1hxz6kRVSE5qs9DCNI/g9aVG2Qc3KWJXcySQ1nGajZA8upr
 uAiOaMmFSqg5rqwjKdMbwgJm1jyCgOlyOx2in254zqJlRT9dsz8nCqHfl
 IzMsSKa40wQ6GWW0U3Ym2wGczsbD2gl6qOnTRuBUkgnYYymOec1d96YrJ
 fitdGPFeJgVCJZXQmK59GnhWYwlS6t1vwOq95TcKQzOss2V3laoWVg/zU g==;
X-CSE-ConnectionGUID: yW3KpXv3SNu25+MrLhRBtQ==
X-CSE-MsgGUID: b3ubhO57TlS5XybhcXEbLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="71665349"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="71665349"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 07:41:25 -0800
X-CSE-ConnectionGUID: tE/BGDWkRU+4kH0g2edBjg==
X-CSE-MsgGUID: dgPriF0WStu/EoxHBMhalA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="211628480"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 07:41:23 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 07:41:22 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 9 Feb 2026 07:41:22 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.47) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 9 Feb 2026 07:41:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jmqf8SmoCZ02pLouNsEh+BhXL9HyOj8/a/vUpY5Dxlq3nbGeqzla64o199L8q1zAEDJww55umvfQTIX6GDttNq3laeEogFYOzQnylbqDhYqjbFZ7UYVnqQMsRmnMLxJI5ixm8vWQytHnL4ZuBxP+M7ZRobLR5qolQo8Pzq9N5M7A6WC/CJjqRYwjzuDY6v7W6D1ILKlzl3r3QiHmhm1Vmm0NQp+CTg5eNJWWdxjZwFNsxTUDviPnd/y8Z/qwVJGmrHpJdbcyLfTp7QdA75sUpzdWgaz87V3ZEghO7SsWH+3w+S+GdQ+M3euDCHIxmaUHAn4uolbYcyyrR29T1ol+DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4fICzN1nLPGqt19aPPhVlyqTgYpjL7F4FRi3XzElek=;
 b=XpH6vFirMyuZE4MEV0jcymZhnxC8eNby13Rqy8DOxEVC0ONK2fiGnWGjYK7ezXLFij7zZxWbt9op26zSl1C3NKNBjt5rdigVHnzTf/mMzG7TnP/AiDU3hJGJPGp21ZJF82fryociZvfEWMCU+NfHTJCu+lQZZN5yby/YKp4oYzYo+S+EmcwgZ8aH6XvCw3uUny+0rPFSVguUqb7t13VaJKhQB99Lj90hjbzkmNDt0XPqLpbh1g2R93Dm0et8P64yaAwDnufI+Sz2kiNGhnHJSxiltTEsV1J0UjCpm9ZvNBL5BeDdThFYrP/bXbCkPLnS+uESjZS5vLr0wnuNllEwJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6812.namprd11.prod.outlook.com (2603:10b6:303:1ee::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Mon, 9 Feb
 2026 15:41:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%4]) with mapi id 15.20.9587.017; Mon, 9 Feb 2026
 15:41:05 +0000
Date: Mon, 9 Feb 2026 17:40:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <stable@vger.kernel.org>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Fix pipe BPP clamping due to HDR
Message-ID: <aYn_5pIAIq2C5Ezc@ideak-desk.lan>
References: <20260209133817.395823-1-imre.deak@intel.com>
 <baa6c5c6-5adb-4cf5-9d01-ad8d2c37db1d@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <baa6c5c6-5adb-4cf5-9d01-ad8d2c37db1d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0022.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:b::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6812:EE_
X-MS-Office365-Filtering-Correlation-Id: 3954d67d-2c7c-45be-ddc9-08de67f1a319
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VPjYU+rzyqMnD5ljQKiBOEH5AU78j7DWeD/c8IOP5e6EomXjYIPtHmM0McN8?=
 =?us-ascii?Q?0o1/sgJc/tSOVOib/Os47V4+64srnWMC+4TLa9LYMrEEOeGFYXBlfKfHi7gZ?=
 =?us-ascii?Q?kjPdF6glqs6zKW1KM9pOEeNhv64yyD7UmpnU2Hv8UfqMNdgr0m3VafD5d4IK?=
 =?us-ascii?Q?qKsvZ0jcnxmz/7GH99gyneuc32TZcuvOr7eGvY8ypUGgLx35ZsayAS6n5DNF?=
 =?us-ascii?Q?DG5nx9vmVBDh5cm2m4q+7VPolM5FURK5W/EJKDkMzGFWjxOgSujgnodLJCmE?=
 =?us-ascii?Q?uXM3ym9LrcpBz+sZODvKfCOM/UL8yEWpCOgKMVFVaYwibbkacgrfqlGonL8G?=
 =?us-ascii?Q?QO5CSqR/iXPbWQWcXVsLHj0gDv/L0cZq4rwEvSu1TH8qmvJpVujf6bLuuKLC?=
 =?us-ascii?Q?MgEdVIU4tRne1TuuCGSOdwIzaNEnmjoWCDxDpSSeXIMJgIFTi3uqptqcVKk3?=
 =?us-ascii?Q?hSrXS6dSGeAVwQ8hRbF4AYFRLqUXnpXUmRtLQIz9nqvRFqgYc9rTW+llp48Y?=
 =?us-ascii?Q?Z8CPpfGHzpgKeyjbH6h8OIXsX1cOonGA9d2zyI7HQ33tK76M9FLjZJ5j6hcq?=
 =?us-ascii?Q?upD/rOtUJjIkSkJ7My+Ff/Z7PymD4SELsMZxM+R/HTTgzWOXmbvEI1hZ0J3Q?=
 =?us-ascii?Q?sDBdvTHyqhAq2+EaPWVgNlr2RiiTIx+1eCGlQihZUUcrkVZoH+Xf50vj3pO+?=
 =?us-ascii?Q?d4wrzQ4tpYed2VBhXnYCfioj2xYuFq9ZsmtCnR8wpLq6SNQBzky809NYO3oN?=
 =?us-ascii?Q?7Jg79NnQCcLLLz2v/Vsu1DMQxUSS9muOePjAVyu7Z8SVqjtWypPDy06loe5w?=
 =?us-ascii?Q?8lXqMFQKFfW0NRkzWcbBEELGCTm5AQUxxzAD5etaOlLuk1qFwv50oao1y+iz?=
 =?us-ascii?Q?gM6w5gINM5Or3r51rHhLd/Jbuli6j6QQxS06spAu22FQtLaTDHYThLV51v3+?=
 =?us-ascii?Q?H8BvycQ19aBltbuAEx/HapvfbeMndH0qlGo/VpChbopETktFMgV9lDe7rScX?=
 =?us-ascii?Q?NClip2wFzqXAS71SHYpZGADulyEWQjyCnI2bKsNMjUorM07hVYUXYTXyTLSf?=
 =?us-ascii?Q?2qMYmXoQIN07nxqqfjYcnuyw1ehlsEshV0ZD4ygL4YOMAj9L9YrzMpwKnYH7?=
 =?us-ascii?Q?YrJzdvfLpOeHun67MjNGEpUZ9DO9BaSn0q9f+6vcYhcK3VHtMNaAC71pzXgI?=
 =?us-ascii?Q?9XQL2nBxZ/s/9o9adTc8jSV8z9dZ6fzMqnYulCGU/fa1bzmjFRdk/8fXRC9T?=
 =?us-ascii?Q?sMxeHOcN7Kg2gp4En63l2cUNxdCDPO8VVBKjesPVI3Z+a+uOQ8QhrOrrwZZ8?=
 =?us-ascii?Q?fmVEQGB+kLmkJUV3X5HG/9TQD9SDgXebsQlPEAQDUOp/Fiai2yA4E3A7qNPn?=
 =?us-ascii?Q?f6vwDI2mr5XEWKXPtXuwtGmxnD0mVEXHWJRz/YBMxK/QfpvuMG8t901IfOQh?=
 =?us-ascii?Q?wsOxtQ6QUTDPHcrC6lucf4eF442jQnmLF6mYYgGzVv01nxF59bMZJfwCS3DX?=
 =?us-ascii?Q?Fhwm3W5aMPPjw1fw5wAHQ7AWs9cDh+X3tpE1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jy1Jh5XHDTv1/WZkjzWT2lXeeasxHlqxxeUp3cigqOfpMhmqdYmJCpq8LgUS?=
 =?us-ascii?Q?/LZtViv/2+Hy0Sqa4RagvH5NjXbf7A2h4izmTZ2ci72R2qblTnWzcGuiTI9x?=
 =?us-ascii?Q?UnA22fqsH00pm/1j7VLK1KJQjUCRx3GP5xrN8YhoASfB2JNFinMpJD+tavAV?=
 =?us-ascii?Q?QFQqrJxOTWfvCMxwYAq8adUWUc5WIZx26JsiYtVrePpgAEiD3KewVl5QnUE3?=
 =?us-ascii?Q?XGiNdFn067uFI+3KW8e1RXQxLNRwnMfxrUYQu++YiFHfL2fcNQ3fGfM1oKB0?=
 =?us-ascii?Q?1QdVKFymw4eTIrQvdmMZCaeIS0dddko39nJOkqJ6z0uEKFvp+0NRMXWWO6wY?=
 =?us-ascii?Q?6KpKXdNAHGIWuI4Ye60D8WFKDchRWUlIK8V3lB6md4/cKuZDRewZSphro/Aa?=
 =?us-ascii?Q?bIwNBXJ0ZFXuMRnGB5Tc7WuO+Ovr0CKepnTDCUdzCIO+BR3lgzneX34suwlb?=
 =?us-ascii?Q?/nQOfDhU6SIKhVyjPNJ0XrxTd/q0cXpEvlpSb16Xdveb7f3mZZbwSd08n3B+?=
 =?us-ascii?Q?H5Xhgu68a/Vit+h6xbV3yQ5OThEChPSubDU8weQ2ZJYD5tpBK+fYEJzgagQc?=
 =?us-ascii?Q?1JjwtSzPVHapE5k8c9LQBsDnVdGU6vbepYjR2mKNjXNygRHJUR2FNw1U+3KT?=
 =?us-ascii?Q?peR6+r/DcK8hIm24dam1nEixl8o7Zmz96O+M9OzIWShTtXs8Lg/BadPzOLiW?=
 =?us-ascii?Q?kE8y5JIKp9twJXLIjc2jogi7pCG22RmZpe/kV7E8Xufe3i0lROdc+Hqd3iTe?=
 =?us-ascii?Q?HbQh6yOPoBJctHp2UJ1f97fX6wgYzkoVlfc+Z6FDFcKrlAG401mdVec4NWNo?=
 =?us-ascii?Q?LSbYqK75Fsw7hzeGWUokPmAnfbC60XQWViO+jd6pgupIJii1YZOjd3NPq0E/?=
 =?us-ascii?Q?ZaXBk5HQc91AvTDtYHSMvjTCnJuxMy0erEPOtVHhbmm5xZNbUNsIvKGLV16l?=
 =?us-ascii?Q?mU9IIuP+1ql0GGmp15H7crwliJT5mGormdIoG15KOtmZz7zZRjSVxAN/lFsy?=
 =?us-ascii?Q?MCrvK/MpJaDuk/Xl07XUaP+e42nIKk7REjZ+/L/IHSIgoAWmkd6CP3ZdNqCW?=
 =?us-ascii?Q?4zu4mbTs51V5DyN3I95/6hrBynobB4x0KAM/+Mj1iW562jXpSuBP97arX03g?=
 =?us-ascii?Q?i8H0cIOGw/iOVOmYaRyZ/wUg/mfPPJazQwCHy990iF26MllNgI0mVF/Jr/U6?=
 =?us-ascii?Q?pcyxolKgLOzSs47IkqfOxknk6unc5N2uJEKctXpexvB6gbtRgs2VLH5RRJSD?=
 =?us-ascii?Q?2wfu/CKM6How4DJhvXay3oL6LDKsHD0IYsD+mu0fUcFx3sm0TRs3oyv5291r?=
 =?us-ascii?Q?KNWm+ME/LDzGN3+MoXqP6/SxrO/7H/QRXT7+nm//uiwJ149U+JgY1KfvD0R2?=
 =?us-ascii?Q?hOo7pwPjyMrj1chKcDyTewkSw9GEVjitTmNoLhHaNrmSbfmNFDK1j1FCisC+?=
 =?us-ascii?Q?djFVD8SQwbyK1Ipf4S76M9ZSYy6PTJhdyf2RhWJdHcGfUhxp5h78CEHoq+E3?=
 =?us-ascii?Q?jYODEPSBQJjJrlkaZ44Wt2qwUydljvgkdX2I1sx+MktkViuETWQktaNNqZtr?=
 =?us-ascii?Q?qdns6RfzQPci6Qmd/2mARqMxdjyxv4UvwEsOGK4A29wb6AOXItjWRwPzKAvX?=
 =?us-ascii?Q?ILTobFgtic9SaxBgdc2na+sDuyQQ02JsmY51azTItz3/gqI0yG07Vfk0i2PV?=
 =?us-ascii?Q?Dd35YsAC3LvCbX2vZgnhh2ERyToDgmcV2I1HSylWGQsFEwu6slaf8x1OWa5x?=
 =?us-ascii?Q?+XWiNptjrg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3954d67d-2c7c-45be-ddc9-08de67f1a319
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2026 15:41:05.5962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cjb+xYhZQxJ7yJuRbkBqCjsCaeOiC09NAa9i2yE6LeJrivkazFR+ZsZzKeTJ0GF8/5lnHAiQOlTipqxzLQApNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6812
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: CBC4D112049
X-Rspamd-Action: no action

On Mon, Feb 09, 2026 at 07:58:32PM +0530, Borah, Chaitanya Kumar wrote:
> 
> 
> On 2/9/2026 7:08 PM, Imre Deak wrote:
> > The pipe BPP value shouldn't be set outside of the source's / sink's
> > valid pipe BPP range, ensure this when increasing the minimum pipe BPP
> > value to 30 due to HDR.
> > 
> > While at it debug print if the HDR mode was requested for a connector by
> > setting the corresponding HDR connector property. This indicates
> > if the requested HDR mode could not be enabled, since the selected
> > pipe BPP is below 30, due to a sink capability or link BW limit.
> > 
> > v2:
> > - Also handle the case where the sink could support the target 30 BPP
> >    only in DSC mode due to a BW limit, but the sink doesn't support DSC
> >    or 30 BPP as a DSC input BPP. (Chaitanya)
> > - Debug print the connector's HDR mode in the link config dump, to
> >    indicate if a BPP >= 30 required by HDR couldn't be reached. (Ankit)
> > - Add Closes: trailer. (Ankit)
> > - Don't print the 30 BPP-outside of valid BPP range debug message if
> >    the min BPP is already > 30 (and so a target BPP >= 30 required
> >    for HDR is ensured).
> 
> Does this match the current implementation?

If you mean the logic that, after the point where the min/max pipe BPP
based on the source/sink caps has been determined, constrains when the
minimum pipe BPP is increased due to the requested HDR, then yes.

> > 
> > Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7052
> 
> Also,
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15503

Ok, can add this as well, while applying the patch.

> > Fixes: ba49a4643cf53 ("drm/i915/dp: Set min_bpp limit to 30 in HDR mode")
> > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > Cc: <stable@vger.kernel.org> # v6.18+
> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> # v1
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp.c | 20 +++++++++++++++++---
> >   1 file changed, 17 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 4b786706ea2de..7fd20df10f26f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2703,6 +2703,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >   			       bool dsc,
> >   			       struct link_config_limits *limits)
> >   {
> > +	struct intel_display *display = to_intel_display(intel_dp);
> >   	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> >   	struct intel_connector *connector =
> >   		to_intel_connector(conn_state->connector);
> > @@ -2715,8 +2716,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >   	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
> >   	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
> > -	limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
> > -				intel_dp_min_bpp(crtc_state->output_format);
> > +	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
> >   	if (is_mst) {
> >   		/*
> >   		 * FIXME: If all the streams can't fit into the link with their
> > @@ -2732,6 +2732,19 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >   							respect_downstream_limits);
> >   	}
> > +	if (!dsc && intel_dp_in_hdr_mode(conn_state)) {
> > +		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state) &&
> > +		    limits->pipe.max_bpp >= 30)
> > +			limits->pipe.min_bpp = max(limits->pipe.min_bpp, 30);
> > +		else
> > +			drm_dbg_kms(display->drm,
> > +				    "[CONNECTOR:%d:%s] Can't force 30 bpp for HDR (pipe bpp: %d-%d DSC-support: %s)\n",
> > +				    connector->base.base.id, connector->base.name,
> > +				    limits->pipe.min_bpp, limits->pipe.max_bpp,
> > +				    str_yes_no(intel_dp_supports_dsc(intel_dp, connector,
> > +								     crtc_state)));
> > +	}
> > +
> 
> Nit: We could collect the output of intel_dp_supports_dsc() in a variable.

It's also an extra step to go back and check what that variable exactly
contains. I prefer a function call for that reason, unless using a
variable is unavoidable and the code stays readable.

> But not a blocker.
> 
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks.

> 
> >   	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
> >   		return false;
> > @@ -2869,10 +2882,11 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
> >   	}
> >   	drm_dbg_kms(display->drm,
> > -		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " link rate required %d available %d\n",
> > +		    "DP lane count %d clock %d bpp input %d compressed " FXP_Q4_FMT " HDR %s link rate required %d available %d\n",
> >   		    pipe_config->lane_count, pipe_config->port_clock,
> >   		    pipe_config->pipe_bpp,
> >   		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
> > +		    str_yes_no(intel_dp_in_hdr_mode(conn_state)),
> >   		    intel_dp_config_required_rate(pipe_config),
> >   		    intel_dp_max_link_data_rate(intel_dp,
> >   						pipe_config->port_clock,
> 
