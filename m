Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0YUOGAgBVWr2igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 17:15:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DF674CE2F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 17:15:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=C5WdQDka;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59B3310EA2E;
	Mon, 13 Jul 2026 15:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CB410EA25;
 Mon, 13 Jul 2026 15:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783955715; x=1815491715;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TWH5Iqa0AdEwqcGr0ULDotLEWn/jGzc7IlTjnTAmskM=;
 b=C5WdQDkaamdCavgCtXiNAClGX20noKc+efAA6CyIo+dmZRyLKD9zlQR1
 dvw2c8Iw/XF+irO5/skPzzx7gH9EldJJFDvuZHeio33F0CV1pet8WK7Ir
 KNpV5eq5FFDG5dglApkkNRZAMcyG953bClMZ1n51kabysGREKZVwlBv9W
 2jakj7pQLva3OILJj4RkWBUJ/9RTjkGSnbx2bVPrzsDUug3Wl8zmbsk1o
 ZVGvJDcNp6BJWp+ODuXwhKQmGo0ov1NP6Rj0zd17n7rsfHTUpG+r+dGVX
 vJ5fm0JSwxerYHg81xPf47yalxMAisRW86jHxlfS2U1hNmD40mElcOvf+ g==;
X-CSE-ConnectionGUID: Z4i3wqP1SduESumbreT0Uw==
X-CSE-MsgGUID: zHmwmi+NSle9tVSJY0cGWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95168287"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95168287"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 08:15:14 -0700
X-CSE-ConnectionGUID: giTT3NrASCCMP/jycf/XHA==
X-CSE-MsgGUID: W6ROtPBHS/q+LhnVnHhgLw==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 08:15:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 08:15:13 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 08:15:13 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 08:15:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WEVH38dNhiKzomMn0U7bE5d2Dk6vDXHM8zHPzqLjk2Yy+lt9pXkSyEMB9PHmHVoM+Pc0uhxlNUpsXderAAOMGEczdpJ/oThxgunMI9qxor3ptXlyxH059jACFrYYgUNLod5XJ6U8hFsrna2hqtyVPODRfr39YOQeHRoMegg45oMQsTj28dNd20xRln4uoJwRvt+65XOhZbBNKWnvfM3LmVtwBJK93bp5ihZ5nhM+lprccZ1oahpEWKyQnUnnBgy8zW0KAC2GFBaG79Uc9yy6HyLOLSPPH6d8/O1fvZczYh4QkaEdbDyAg0C0VmVYSxok5zE5W/BEHkRS1hSI474uYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fzRUuebEdkY9nhFiY3Dr6bOvHnGN1Gb5XBkYY8i5nVk=;
 b=XctcM0UULpcevcLln/EjV1dg1XNFNkc/diVE6JTXAW93fKt3MWw5lSjPMgx6AQbHW4zsD8EZVLuCHhMV9RjkLOliYVySPyLyhwFmq1ZJxGN7h1W3VON9r1C7ptHiGQWOGZIgDycC6V4gCl07EW+1Xe1Sbvm7YkGqdi+zGPViMHm1n6Dmy1QEzFYeV1E08spy61IxF2sikKNBS4OHzr5ihhBiR24LbWNL3re3KA28qbNNgc8tahAGnQqLJhhrFuRiIYz8uiiwdzxEXUWMs6PLOgx6go2O0mDscwS6fn7C99mEQP8kNl/lQ9BJEo4N7PYRPY7BMkOrCXbtL6+FGkjRfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SJ0PR11MB6815.namprd11.prod.outlook.com (2603:10b6:a03:484::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 15:15:10 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 15:15:10 +0000
Date: Mon, 13 Jul 2026 08:15:07 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
CC: <christian.koenig@amd.com>, <dakr@kernel.org>, <ecourtney@nvidia.com>,
 <simona@ffwll.ch>, <nat@pixelcluster.dev>, <airlied@gmail.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/12] drm/ttm: Switch LRU cursor to track dma_resv
 instead of buffer objects
Message-ID: <alUA++4ihNYEiU5+@gsse-cloud1.jf.intel.com>
References: <20260710190752.2355-1-christian.koenig@amd.com>
 <20260710190752.2355-5-christian.koenig@amd.com>
 <051148cb56c32c89b6d06458144124d08d4b28d6.camel@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <051148cb56c32c89b6d06458144124d08d4b28d6.camel@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0320.namprd04.prod.outlook.com
 (2603:10b6:303:82::25) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SJ0PR11MB6815:EE_
X-MS-Office365-Filtering-Correlation-Id: 02ab2927-56f3-4a6b-877f-08dee0f18791
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|7416014|376014|23010399003|366016|1800799024|18002099003|22082099003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 8Nhc1XcvZQmZZG2Q+5TtSxfil5FnElgMTvGeFvmaGPhV+jpOC2YZqVV+kjS9LOsDB0gKHFNmyn1Emw61U8/FDYF1uMyX7qaWuaiogbeSOyqzjg8tv2ljVmi5lblpHWR3cIyl6SAX0bgI5lN7g1bUI3vDW4kt+A68m5N/DETKvtcWyGjtk0VxLpJ1FavsYUAhw0butXtDovqUSbSWW0oN7fZE/TCXpkttIBZF6Y5+0CAcj1fXxLrSUh5RF1twtCYnjkjrgnE//wta+GAHuXUnZQVA+UFE8ENNbN2N4ztviMAtth+m1HNrhERnnevm96rstlernCCm7F116QPNSSyf7hcQbefavL6LPsjGBcIrskz30d0iPlcWddjGOjtKAb4SglCkOV3bkC/XBccCeY/2GIzgHI/wWTZk931oewMLlaUsqVl1upt8sGKs0SojiqDGQk7INS4Ju6geVvr/u6QBCUQ+FdOiXj6uOCGZzOUjzZZGwXf3g4f0JPVp7O5DIQq6/UnnsEljs6lms2M41xSEHIiFLraYpfToCj1I4jzg5Z7ZL53+9+DN1UvYfmd0b5T5PaDypPabTHHh/9AbjXWXA5W1kTfIxFK7oKPSQItI0gGO81lAvBa8HsFr59GJ2hG8Gzikt5SFxxTssva7nAG1VpnsN61DjCM9RT3g7xc89MA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(23010399003)(366016)(1800799024)(18002099003)(22082099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?jT2kjoCGV275glexJRSuX7+XpM1+vdP9xlBviiyjn8Pqrz7TKyitsPElWH?=
 =?iso-8859-1?Q?E9D3BJGXxHX/P7AmPzrzgUw9cRP+vYtehrZbK8Mfoy9Wafwi8SN4SGBtja?=
 =?iso-8859-1?Q?0+vfdNduvnBwUr1zNeX4c2MUrYOlu+RrMwO2DiQAOy7VsaRY1gC3fYJtKC?=
 =?iso-8859-1?Q?5a5tWpCTbOvT0tnVs/iRRWPTS79ZZRSjZV+rQ27zQaEFZk2KQrmKSahTvL?=
 =?iso-8859-1?Q?dIQhDSHQLDQaQn2CIviiMwgcz0CDECrVYHIP8gNFbGvrsDW3oq7CCjSn4C?=
 =?iso-8859-1?Q?mHtS0wq4Oqdqp1LDInmmQ+7CfMwgL3D3pdxOQfjT7eS72WNG+6JkLgHji0?=
 =?iso-8859-1?Q?5N4/heYRaaonV6rEUriX1fIpGhbTYsATZDwhIv93sTgbw6nEF1iVYp3YH1?=
 =?iso-8859-1?Q?uvSznlYYAeQkPBhPzXulpcaalsLLCqXNjuR/MAt2N3R8Z0Y8QKA6jjuvzz?=
 =?iso-8859-1?Q?i6ZLpUkLSxRryCdyVnktKPrEQdx5KAwZA2GJ7fnzY4V9XLk7i1KRgNahvT?=
 =?iso-8859-1?Q?ckzaL195KzDm7vGxp/xEiGuM3vYpq6rIX2GokeSomRgKZQp23zEjIlqH/q?=
 =?iso-8859-1?Q?qlI4pznfaQ4jDehY9RjUCs3RVzOKYyFfM7c0gI+OwAoaefhqcoXLN0E00f?=
 =?iso-8859-1?Q?EHQaykTNZlFCnJ7eqQSm7Mah9XVb23sW9vvNMu2pKf1hEhAhCHSUvPcZ/0?=
 =?iso-8859-1?Q?qHqyrDDyH6bLUnz+tA16vLzEC7lT4X6qB5zIy3I+1/bdqyELzZl9fOVnn7?=
 =?iso-8859-1?Q?qxX4JZ6ZtmxBv1WMYfbxunhHlcsugWDj6sE1+Q3FMWeaTuBgx5odidr+hv?=
 =?iso-8859-1?Q?qKL8mHb/av2tFS7k8LPtuGYLML5xPwg34leAt7MII9wh1QP0ttk1DRmCFD?=
 =?iso-8859-1?Q?el0pnJAjY74iHbKLV0vKRfThi4QuwzJEFo0hOWt38qtIq/8XrLXA25E6dw?=
 =?iso-8859-1?Q?CXGo7MeK8HT/OP+GrjL91rS6EFVVw6FZ+MAoHtDFzjg4tY0ATiMbwzjQzx?=
 =?iso-8859-1?Q?vtLLBDpmNSeCGk2ZRFkgFzOol6xrYZ/vPvU1GekjE4qORJe7Eqr2orcSFV?=
 =?iso-8859-1?Q?zXEL/rRBwDsCLhvBOTcxdSXwZuXzTUznABXrwRo2emka8Z7t7qZkbCI0yR?=
 =?iso-8859-1?Q?g/48lR4wP7tqmNaOyh+15RSVlVPvxAlKmg6B77SbhN584hMMD3dtA7Yjd0?=
 =?iso-8859-1?Q?FO+cYhvFqllp3YHyPXmcVtvPEycCSa61mqZWtO+pa+Vsu9vtmiWB21YJu+?=
 =?iso-8859-1?Q?6/hoeEWvqoXovLF5fEfKGRpsPe0JM3YMTMOCJqfLRlSc9Q1Qr6S+YhqPdl?=
 =?iso-8859-1?Q?fg0wA/TT4aaB2q+/6A0EaPc8qc4wf88wLQID7yZ07+37dG98389xljVfoY?=
 =?iso-8859-1?Q?ikuUXrbEdI1EbYFZuzN2tUZrpquCkH9xTEOAaOPJxb5EUnP64XNi47x/5T?=
 =?iso-8859-1?Q?QS7MI1B7V0su0SZmGNVpxq6G9qc5tac/pioCoJTnQTcEgCgh07Z7BWc7JP?=
 =?iso-8859-1?Q?AiW3ODcOLZrbd/zSxk5LVZFeLcBDJSVNO2KGwSl8snxjG+TIff0Ymc1WJp?=
 =?iso-8859-1?Q?IyDRGptbmAXjKVvbKrF/rX42DGkfHNhcUGEl/hizTO8Hi0xlHeCr4Bp2Yk?=
 =?iso-8859-1?Q?HAdWORngBnvktHmjounFB7Z2he0YYDXZWVo7KV/MpxYdkAoflrrCGFnTgt?=
 =?iso-8859-1?Q?LWNE4emXn50fO3FJz3l+YqtWITlwRgrJOuOOoqBWwU7jucnHcv1D+H4Vuo?=
 =?iso-8859-1?Q?O7h3oWYo/WCeZYJw/WfkYwTj1Na8LQqWQ0Vs0nY0A5T/jRGrS5P9/jraHN?=
 =?iso-8859-1?Q?LH44SbfT8A=3D=3D?=
X-Exchange-RoutingPolicyChecked: OFxLQ1+7S+NGwrzbIAbt02iRNsJowSd5r0x7oTlhVfz3qv4rMHKKLJNoPJCHuA5gukGWXJjRH6omAXv5XMcaVqpiig9WYoIKhEK6sGDbY5bD0RkSCFiuUsVV09L+TZF4FzUpag4zeGxkQtaBiJIzqBxeOHIj88hORh0Wq0DY7nPKyuXcqHwaY1Ck1UAnSMgMTDGHu15s8NXZzIIz3OavrqD97daS4OEvVzRMXuRS6oWZ8uDvARwiRmo58j7fc4UN9GgkP+IUV0i4VONpx8OZYrEfw0BYA+0uLhDcV/TleoLSz8BlXSJhGv2jecodRKgdShxDFrLX/+ywFDV27jGPTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 02ab2927-56f3-4a6b-877f-08dee0f18791
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 15:15:10.1514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gzij9dvW7Ta1flaBTMUAX3kI83Xm+1yqJbK5rxIzFGuu5cnN7U0Hu2Ey/mUYspA2oiC+Jqn77D3M/KRD3jCFjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6815
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,nvidia.com,ffwll.ch,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gsse-cloud1.jf.intel.com:mid,lists.freedesktop.org:from_smtp,amd.com:email,intel.com:from_mime,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04DF674CE2F

On Mon, Jul 13, 2026 at 03:40:55PM +0200, Thomas Hellström wrote:
> On Fri, 2026-07-10 at 20:52 +0200, Christian König wrote:
> > Refactor the LRU cursor to hold references to dma_resv directly while
> > locking it rather than the buffer object.
> > 
> > This avoid the need to grab a reference to the BO and so allows
> > handling
> > of BOs with zero reference count.
> > 
> > Signed-off-by: Christian König <christian.koenig@amd.com>
> > ---
> >  drivers/gpu/drm/ttm/ttm_bo_util.c  | 124 +++++++++++++++------------
> > --
> >  drivers/gpu/drm/ttm/ttm_resource.c |  18 +++++
> >  include/drm/ttm/ttm_bo.h           |  10 +--
> >  include/drm/ttm/ttm_resource.h     |   2 +
> >  4 files changed, 87 insertions(+), 67 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > index 029c218f9fb47..1f7361604b552 100644
> > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > @@ -819,19 +819,17 @@ int ttm_bo_pipeline_gutting(struct
> > ttm_buffer_object *bo)
> >  }
> >  
> >  static bool ttm_lru_walk_trylock(struct ttm_bo_lru_cursor *curs,
> > -				 struct ttm_buffer_object *bo)
> > +				 struct dma_resv *resv)
> >  {
> >  	struct ttm_operation_ctx *ctx = curs->arg->ctx;
> >  
> > -	curs->needs_unlock = false;
> > -
> > -	if (dma_resv_trylock(bo->base.resv)) {
> > -		curs->needs_unlock = true;
> > +	if (dma_resv_trylock(resv)) {
> > +		curs->resv = dma_resv_get(resv);
> >  		return true;
> >  	}
> >  
> > -	if (bo->base.resv == ctx->resv && ctx->allow_res_evict) {
> > -		dma_resv_assert_held(bo->base.resv);
> > +	if (resv == ctx->resv && ctx->allow_res_evict) {
> > +		dma_resv_assert_held(resv);
> >  		return true;
> >  	}
> >  
> > @@ -839,18 +837,18 @@ static bool ttm_lru_walk_trylock(struct
> > ttm_bo_lru_cursor *curs,
> >  }
> >  
> >  static int ttm_lru_walk_ticketlock(struct ttm_bo_lru_cursor *curs,
> > -				   struct ttm_buffer_object *bo)
> > +				   struct dma_resv *resv)
> >  {
> >  	struct ttm_lru_walk_arg *arg = curs->arg;
> >  	int ret;
> >  
> >  	if (arg->ctx->interruptible)
> > -		ret = dma_resv_lock_interruptible(bo->base.resv,
> > arg->ticket);
> > +		ret = dma_resv_lock_interruptible(resv, arg-
> > >ticket);
> >  	else
> > -		ret = dma_resv_lock(bo->base.resv, arg->ticket);
> > +		ret = dma_resv_lock(resv, arg->ticket);
> >  
> >  	if (!ret) {
> > -		curs->needs_unlock = true;
> > +		curs->resv = dma_resv_get(resv);
> >  		/*
> >  		 * Only a single ticketlock per loop. Ticketlocks
> > are prone
> >  		 * to return -EDEADLK causing the eviction to fail,
> > so
> > @@ -920,14 +918,16 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk
> > *walk, struct ttm_device *bdev,
> >  }
> >  EXPORT_SYMBOL(ttm_lru_walk_for_evict);
> >  
> > -static void ttm_bo_lru_cursor_cleanup_bo(struct ttm_bo_lru_cursor
> > *curs)
> > +static void ttm_bo_lru_cursor_cleanup(struct ttm_bo_lru_cursor
> > *curs)
> >  {
> > -	struct ttm_buffer_object *bo = curs->bo;
> > +	if (curs->resv) {
> > +		dma_resv_unlock(curs->resv);
> > +		dma_resv_put(curs->resv);
> > +		curs->resv = NULL;
> > +	}
> >  
> > -	if (bo) {
> > -		if (curs->needs_unlock)
> > -			dma_resv_unlock(bo->base.resv);
> > -		ttm_bo_put(bo);
> > +	if (curs->bo) {
> > +		drm_gem_object_put(&curs->bo->base);
> >  		curs->bo = NULL;
> >  	}
> >  }
> > @@ -941,7 +941,7 @@ void ttm_bo_lru_cursor_fini(struct
> > ttm_bo_lru_cursor *curs)
> >  {
> >  	spinlock_t *lru_lock = &curs->res_curs.man->bdev->lru_lock;
> >  
> > -	ttm_bo_lru_cursor_cleanup_bo(curs);
> > +	ttm_bo_lru_cursor_cleanup(curs);
> >  	spin_lock(lru_lock);
> >  	ttm_resource_cursor_fini(&curs->res_curs);
> >  	spin_unlock(lru_lock);
> > @@ -972,21 +972,18 @@ ttm_bo_lru_cursor_init(struct ttm_bo_lru_cursor
> > *curs,
> >  EXPORT_SYMBOL(ttm_bo_lru_cursor_init);
> >  
> >  static struct ttm_buffer_object *
> > -__ttm_bo_lru_cursor_next(struct ttm_bo_lru_cursor *curs)
> > +__ttm_bo_lru_cursor_iter(struct ttm_bo_lru_cursor *curs, bool first)
> >  {
> >  	spinlock_t *lru_lock = &curs->res_curs.man->bdev->lru_lock;
> > -	struct ttm_resource *res = NULL;
> > -	struct ttm_buffer_object *bo;
> >  	struct ttm_lru_walk_arg *arg = curs->arg;
> > -	bool first = !curs->bo;
> > -
> > -	ttm_bo_lru_cursor_cleanup_bo(curs);
> > +	int ret;
> >  
> > -	spin_lock(lru_lock);
> >  	for (;;) {
> > -		int mem_type, ret = 0;
> > -		bool bo_locked = false;
> > +		struct ttm_resource *res;
> > +
> > +		ttm_bo_lru_cursor_cleanup(curs);
> >  
> > +		spin_lock(lru_lock);
> >  		if (first) {
> >  			res = ttm_resource_manager_first(&curs-
> > >res_curs);
> >  			first = false;
> > @@ -996,43 +993,48 @@ __ttm_bo_lru_cursor_next(struct
> > ttm_bo_lru_cursor *curs)
> >  		if (!res)
> >  			break;
> >  
> > -		bo = res->bo;
> > -		if (ttm_lru_walk_trylock(curs, bo))
> > -			bo_locked = true;
> > -		else if (!arg->ticket || arg->ctx->no_wait_gpu ||
> > arg->trylock_only)
> > -			continue;
> > -
> > -		if (!ttm_bo_get_unless_zero(bo)) {
> > -			if (curs->needs_unlock)
> > -				dma_resv_unlock(bo->base.resv);
> > -			continue;
> > +		if (!ttm_lru_walk_trylock(curs, res->bo->base.resv))
> > {
> > +			struct dma_resv *resv;
> > +
> > +			if (!arg->ticket || arg->ctx->no_wait_gpu ||
> > +			    arg->trylock_only) {
> > +				spin_unlock(lru_lock);
> > +				continue;
> > +			}
> > +
> > +			resv = dma_resv_get(res->bo->base.resv);
> > +			spin_unlock(lru_lock);
> > +
> > +			ret = ttm_lru_walk_ticketlock(curs, resv);
> > +			if (ret && ret != -EALREADY)
> > +				return ERR_PTR(ret);
> > +
> > +			/*
> > +			 * We need to double check that we still
> > have the same
> > +			 * dma_resv object.
> 
> While I think this would actually work, we need documentation and
> asserts of what exactly we're relying on here to keep the bo alive.
> Otherwise future work will most likely break something.
> 

As a general comment, we should build some TTM assertion macros akin to
xe_assert. TTM has a lot of subtle invariants that make the whole thing
work, and many of them are not guarded by assertions. Assertions, of
course, help catch bugs at runtime, but they also serve as
self-documenting invariants, which leads to a codebase that is easier to
understand and maintain.

Matt 

> Thanks,
> Thomas
> 
> 
> > +			 */
> > +			spin_lock(lru_lock);
> > +			res = ttm_resource_manager_current(&curs-
> > >res_curs);
> > +			if (ret || !res || res->bo->base.resv !=
> > resv) {
> > +				spin_unlock(lru_lock);
> > +				dma_resv_put(resv);
> > +				continue;
> > +			}
> > +			dma_resv_put(resv);
> >  		}
> > -
> > -		mem_type = res->mem_type;
> >  		spin_unlock(lru_lock);
> > -		if (!bo_locked)
> > -			ret = ttm_lru_walk_ticketlock(curs, bo);
> > +
> > +		/* Grab a GEM reference to the BO if it isn't
> > already deleted */
> 
> 
> 
> > +		if (kref_get_unless_zero(&res->bo->base.refcount))
> > +			curs->bo = res->bo;
> >  
> >  		/*
> > -		 * Note that in between the release of the lru lock
> > and the
> > -		 * ticketlock, the bo may have switched resource,
> > -		 * and also memory type, since the resource may have
> > been
> > -		 * freed and allocated again with a different memory
> > type.
> > -		 * In that case, just skip it.
> > +		 * The BO is now locked so it can't be released any
> > more until
> > +		 * we drop both the lock and the eventual GEM
> > reference.
> >  		 */
> > -		curs->bo = bo;
> > -		if (!ret && bo->resource && bo->resource->mem_type
> > == mem_type)
> > -			return bo;
> > -
> > -		ttm_bo_lru_cursor_cleanup_bo(curs);
> > -		if (ret && ret != -EALREADY)
> > -			return ERR_PTR(ret);
> > -
> > -		spin_lock(lru_lock);
> > +		return res->bo;
> >  	}
> > -
> > -	spin_unlock(lru_lock);
> > -	return res ? bo : NULL;
> > +	return NULL;
> >  }
> >  
> >  /**
> > @@ -1046,7 +1048,7 @@ __ttm_bo_lru_cursor_next(struct
> > ttm_bo_lru_cursor *curs)
> >   */
> >  struct ttm_buffer_object *ttm_bo_lru_cursor_next(struct
> > ttm_bo_lru_cursor *curs)
> >  {
> > -	return __ttm_bo_lru_cursor_next(curs);
> > +	return __ttm_bo_lru_cursor_iter(curs, false);
> >  }
> >  EXPORT_SYMBOL(ttm_bo_lru_cursor_next);
> >  
> > @@ -1060,8 +1062,8 @@ EXPORT_SYMBOL(ttm_bo_lru_cursor_next);
> >   */
> >  struct ttm_buffer_object *ttm_bo_lru_cursor_first(struct
> > ttm_bo_lru_cursor *curs)
> >  {
> > -	ttm_bo_lru_cursor_cleanup_bo(curs);
> > -	return __ttm_bo_lru_cursor_next(curs);
> > +	ttm_bo_lru_cursor_cleanup(curs);
> > +	return __ttm_bo_lru_cursor_iter(curs, true);
> >  }
> >  EXPORT_SYMBOL(ttm_bo_lru_cursor_first);
> >  
> > diff --git a/drivers/gpu/drm/ttm/ttm_resource.c
> > b/drivers/gpu/drm/ttm/ttm_resource.c
> > index 154d6739256f8..4a765b25472c3 100644
> > --- a/drivers/gpu/drm/ttm/ttm_resource.c
> > +++ b/drivers/gpu/drm/ttm/ttm_resource.c
> > @@ -714,6 +714,24 @@ ttm_resource_manager_next(struct
> > ttm_resource_cursor *cursor)
> >  	return NULL;
> >  }
> >  
> > +/* TODO */
> > +struct ttm_resource *
> > +ttm_resource_manager_current(struct ttm_resource_cursor *cursor)
> > +{
> > +	struct ttm_resource_manager *man = cursor->man;
> > +	struct ttm_lru_item *lru;
> > +
> > +	lockdep_assert_held(&man->bdev->lru_lock);
> > +
> > +	lru = &cursor->hitch;
> > +	list_for_each_entry_continue_reverse(lru, &man->lru[cursor-
> > >priority],
> > +					     link) {
> > +		if (ttm_lru_item_is_res(lru))
> > +			return ttm_lru_item_to_res(lru);
> > +	}
> > +	return NULL;
> > +}
> > +
> >  /**
> >   * ttm_lru_first_res_or_null() - Return the first resource on an lru
> > list
> >   * @head: The list head of the lru list.
> > diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> > index 8310bc3d55f90..30e835414e721 100644
> > --- a/include/drm/ttm/ttm_bo.h
> > +++ b/include/drm/ttm/ttm_bo.h
> > @@ -488,15 +488,13 @@ struct ttm_bo_lru_cursor {
> >  	/** @res_curs: Embedded struct ttm_resource_cursor. */
> >  	struct ttm_resource_cursor res_curs;
> >  	/**
> > -	 * @bo: Buffer object pointer if a buffer object is
> > refcounted,
> > -	 * NULL otherwise.
> > +	 * @resv: reference to the locked dma_resv
> >  	 */
> > -	struct ttm_buffer_object *bo;
> > +	struct dma_resv *resv;
> >  	/**
> > -	 * @needs_unlock: Valid iff @bo != NULL. The bo resv needs
> > -	 * unlock before the next iteration or after loop exit.
> > +	 * @bo: TTM BO with GEM reference, NULL for deleted BOs
> >  	 */
> > -	bool needs_unlock;
> > +	struct ttm_buffer_object *bo;
> >  	/** @arg: Pointer to common BO LRU walk arguments. */
> >  	struct ttm_lru_walk_arg *arg;
> >  };
> > diff --git a/include/drm/ttm/ttm_resource.h
> > b/include/drm/ttm/ttm_resource.h
> > index a5d386583fb6e..e8e9c8b81ce4b 100644
> > --- a/include/drm/ttm/ttm_resource.h
> > +++ b/include/drm/ttm/ttm_resource.h
> > @@ -488,6 +488,8 @@ struct ttm_resource *
> >  ttm_resource_manager_first(struct ttm_resource_cursor *cursor);
> >  struct ttm_resource *
> >  ttm_resource_manager_next(struct ttm_resource_cursor *cursor);
> > +struct ttm_resource *
> > +ttm_resource_manager_current(struct ttm_resource_cursor *cursor);
> >  
> >  struct ttm_resource *
> >  ttm_lru_first_res_or_null(struct list_head *head);
