Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gY0DEsB6KWpRXgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:54:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D61866A757
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 16:54:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=AWBraR7Z;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2FEF10E62D;
	Wed, 10 Jun 2026 14:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED05D10E4D4;
 Wed, 10 Jun 2026 14:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781103292; x=1812639292;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=4Zs0qZmZnPmSrkYo9UTFoLmAPZD+a304pVwDpckRsLQ=;
 b=AWBraR7Z8w9KohmGkdEoUnDLuvgjou1zwY0JNJN0Ms61VG7MkGWuidkO
 cY28lDnd7l6PGgV/6D0fMtpfkEjutvK4QwDP0FASUoxdjbtuOmCcCfRAE
 cNVX5XXWlgYqQCL0pF210/jAKo/8buSemsx9Kaqe31rUO8/ypcH8tVYjr
 rdasT8mGWZ8BX1gsGOAdZlRjcnzr1MR686NNug+8LEXzLo5OxGX1pdIez
 SfhUmZXv5L/Wllw8GMwF9FqoGy46rswx4p3jdqgVXem9kbPa2R28U2j9a
 SBvjPq4DF5DydKazsTK3qvx3z0fzULC+RCZuNIVDToYuZWfhG1SJ5UBlv w==;
X-CSE-ConnectionGUID: RXLwarzZQReL5utUzTVQLw==
X-CSE-MsgGUID: Ap9lusuUSIqh/ItiSuf7bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82089296"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="82089296"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 07:54:52 -0700
X-CSE-ConnectionGUID: 65+0oAYpTWiBXY6l+vgXgg==
X-CSE-MsgGUID: /o0/q5MOQKefzMjFixRynw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246214920"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 07:54:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 07:54:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 07:54:51 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 07:54:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TLNuUr3A/nKpG5sf+wGn+Uvg6Kr0mRi1cVeXqjJgmCrrajArcBJe94+nvQd/N6u1ObxswBG9gvDcvm0CQjOll+DiJBOkoAlquP96WPhZyx54jYiKdjRyFjGb14PF7UpWJcVDifjiB/lWqqA41P4v4n3KIrCphGFeeKztXuVv5RkkKd0UQ5ySRCzuIGHZbHWWXM2e3x0QLVRnkBTztM0wIVKIeik1Ua/cAn2z9U7nGYXjNSUHxY1LYu9/exCzw5FZ/gjpKpIR2mSbpn628U+9tQ9owCWkZpHM6OoIkzvTvt5S2+66W6i5v18NSJSALfRky1SA8AS6Uz4zKMdGyIOWXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PnI9U6YN8RldhMZe1NpoIAtF3ZxwacGEoHx/WanNbV4=;
 b=hYMYwha2G7DNpn/6XFdSczlpNTxuPySoX55htwgX9VM4uqOVwr/+nG85pwjWdsqvaRRvSyTk2rKNIEqSU8mLBu41KOYUJcElWSHPxvkwBSabX3uwHSEPyoXfy6MvNA6CruZjNyO54+wBmxQMSNRYK2h09YoVpo6rRESqTUv3mFe973UvhvuhnAoJhplDM/OE8xLVA32khvbvE9HpZ8QcfEPR+1pyVE+6zYJd4Gq++1zJWrw4Mz+EhHaOcFdBmchubd0O1obTdS5qlaPXPZtwDRJ/NzasZ7zbg9ItmbOL0WlAz6mR/modHoemEFrdgbA4Gv5kLvGdIjSAJVjF9dnAiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH0PR11MB9775.namprd11.prod.outlook.com (2603:10b6:510:397::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 14:54:47 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.007; Wed, 10 Jun 2026
 14:54:47 +0000
Date: Wed, 10 Jun 2026 17:54:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Guangshuo Li <lgs201920130244@gmail.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Uma Shankar <uma.shankar@intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915: clear CRTC color blob pointers after
 dropping refs
Message-ID: <ail6r13cZSN5EPLx@ideak-desk.lan>
References: <20260610035419.1596963-1-lgs201920130244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260610035419.1596963-1-lgs201920130244@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3PEPF0001DC3E.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2e5) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH0PR11MB9775:EE_
X-MS-Office365-Filtering-Correlation-Id: 121295ce-cb97-4959-6147-08dec7003750
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|23010399003|366016|56012099006|11063799006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: BXOrYJkn5IaS7M00rH1f0pQ+ueti8TZzC3EfPCaNb4GBsZibv6ojKb2cqMk0+bG/Emqz3YcEFvL26b4FF8EJzUv3SZx11El3sSSCtg946B+kP5dyrovVnSQeYZ+5AbbxDrY1NmAgkwqwlMhm45qEASr7sJt/b2uWJyCQuXuRFUfq1HTD9K/EDo0vJT2OgJjBfRM1aI9DCJcWsFtcptR8kJ+jUafVFXKVplZUIJ/Z+CGAIrtvx0CxUTOd77uS66gebZzhYNkHiEJpvruRkrBT4RsvFyNM5VOSTYA1X7whvLluQVT8QwLXsmwlTlM+RVXRfZ/vBuN1LJLQWm8GwcbVJHZ0dTL7Pw4t6t/kQuy2MkaXNQsQYG42kQj8mLMWQlouOWW2W1ihHD8NJplYwd7T5/XG2OzQzSNvYG3fsnDFmzp/Z68Ii01k3HhzUIYNxKgNz6vG4Y7vMZeuNW3eykZWPpLmDjJpCasDOsPqa5uToiVW0vEMKCVNxPZt0YfVu/lGMR8vj9TbWN7Nns9te+0VT4PO6x2n3VimexLxV7bCL47EWSAlRElfgyAMU7JkzFxbSnWDR+RQOOPUuoTe6SuLzIiH+obQ0o39L3qghzU2OQg87qf2mHRhJ7R1hc58l0E90ETYt1rj9H2J4ZBQvjx6Qft4D96/6rDS18AIjJEhABIQulSSuNqfi2Dl4HPf/uOK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(23010399003)(366016)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Iuhhn6M03+bs8wyf6bKtxTsJ00EHeTjkZ/URPcHemTnvGsIvK16bGjkmND67?=
 =?us-ascii?Q?eJWiiBguMe1Lji/+xPYPGDby4I3ULIq8uDoHmOEdrlRns0+Re+TQfWP6RKiT?=
 =?us-ascii?Q?dNW1mpeyfVELDZjIjGn5yUpk1UG4Yq/fStCpzVs1BPLLPJ5dXL+J2s2fzcLw?=
 =?us-ascii?Q?fC4ZKw3CycS1zu3m10UzeqGjdZ+OFQVkfBSYdoLFIEyZmIKflzXiZB1jCubc?=
 =?us-ascii?Q?0E6IhB5U/jX77IjNimhGyN5HvX9/zGaVXbNYChq0BOYLzoq7gF3mR+S8gfhD?=
 =?us-ascii?Q?XrO4LSZN+Ked3oprhA9qt/qldZiVKfj6QPfEEDGhvSQ4Pj6I24SuXwcWtJhN?=
 =?us-ascii?Q?nWwtMzOk8QGHtQ7d78Nfsg3Wb1lADIFEFW3OSq5ksr0JgkUEmdCU1P96ZCCc?=
 =?us-ascii?Q?F56JJbrvPkXvgYToT5zThdZPp2o8M2gE4YjxvNm3Tzunk6m9R1AGs49B26Oh?=
 =?us-ascii?Q?XiHqAcCqkOBvx8FMaGTYzj/gwKpQP4nf+gTx0LGagvbUxhxkua8K4k+aIp+s?=
 =?us-ascii?Q?j1ZxGY7TUPO+eBDUbsu+1DIWcHgO/5UnlnOqIb9cBqZhJNpV7i3Km7P260Op?=
 =?us-ascii?Q?e2szJaZbPrHbhios4o4VTZzzFgBMQ8cuhJAL+Gkb9k9GKbi/fpgpf/yMTguY?=
 =?us-ascii?Q?ULWml2IWyhASQKlLEAdycIbW8bPWjhWdJ2XPjCOkZS0Kq6/nkm1lQSpCIxWu?=
 =?us-ascii?Q?mFREHaIIJyUAcA3llicLmZrg450rXwAR5ZnA/o5bnuJtx6REv0y61HV2Hl+f?=
 =?us-ascii?Q?Qb/yjYh3GmWfZlYj7WliOQVKZECfKpN5U3ad3WtMW7jWHqUd3HsBFmnxwa8O?=
 =?us-ascii?Q?g0zB7T6bJRNCUc+A92r9n6onsoSIBQTr05pNjxQhuCQ68HoxHWccDPZCuaZA?=
 =?us-ascii?Q?s5Tg/S126Jln1/7VtFVjTTe8xsFKMXZY2P7FC2Eyp6wLw8UPXqAreNFCPzdQ?=
 =?us-ascii?Q?ST7Ddo4AIcqCVetpGKU/105YGZ+U7H7jmnASsYKK+36XQZVxyyOh38I55fh8?=
 =?us-ascii?Q?2AD4vgflF/HbybXp01jRRFqfN2njpjZsaVwZLXohuwgSt8U/OmUeSGPfEeTn?=
 =?us-ascii?Q?IV4BvptmL3K8qv9qw/CUnV45qy4rWKg+izDfPO0usxgs/Vl4aoLFXdqhudhs?=
 =?us-ascii?Q?KTsvDvq+3SDILsRnUD8bv4RJ8aqwG87kyDigYeN1baSjCIYOnx+fyKYplVex?=
 =?us-ascii?Q?fIUNAebm++eZ5XYEzFxsbgIeR67pMTAZqjhaffIN5Fpk5YzApxCgRLqVLpPY?=
 =?us-ascii?Q?wSW3mRmP3d67dIa4c5MqZgiGS9xc50Mys4TfzLnQjyrTh75j35zYhAyjq8j2?=
 =?us-ascii?Q?KK1eq0CI9x+xK4M0JoqqYQspFJM59bg3wdwOExl1fQWpzxAMaqZw3PU2AZgd?=
 =?us-ascii?Q?/PFlCO2YMLGIw2Z9jyLJAr6qF7f9Nf7Ciqyl/reX3UWeOg81DgN/leIX5hAu?=
 =?us-ascii?Q?Ug6be92jzjTy+/zt3OZZch7VSqov7dpT0V7395Nr8ziMd3MOjcqHY3Ky+TnM?=
 =?us-ascii?Q?9LWuTvc4OL1GaEjD2W749akLt22F++f5mp2Vj3v4KIiIbvZuI8CxWVCEsS78?=
 =?us-ascii?Q?iZb/eCVVZeaH1EizAZ6qD+JYSmgXd38OXRdYM9IMfEHzlqCDZ3K1nm0DjyN5?=
 =?us-ascii?Q?0IS8mbK0bfi4DnK7Pn3bI703pMg47Y1XWmjyUh2OJ+7AD1RFr7irFunphF+O?=
 =?us-ascii?Q?M2S+HEYcnfn33iEklQKKbBoSsX5N/VaGC2x06LorUspax+x2QQPfHDO35cAb?=
 =?us-ascii?Q?k6QAbGsN0g=3D=3D?=
X-Exchange-RoutingPolicyChecked: Gz/jmI1ztdFVp8EZhftmTjt2SRa4RPjZL4umqZG2PdVpOlBLSiZymOiLqXpyZyynxtJFwnvtnTCi9ZlRBZwkpl+gh/TXMbw4kSUlJJBXFEFq4/tlgm6o7d3s1f/OW/k7WcpPPhtNt0FSgGr8sdlOu2MoFkTpjd31prZH5fwIwVZSUy0rtLB0lY8BP69BDVUZpwL85pLFEwgjWpUFnb57mHPoT87gVZdLHSiCea2XF8Q7R6Ql6R+dMuqZLdibZBoBmo4yQ0Vy5q8AXkdYkxd00J12ePxuj+BrUxS5jIQRTyNnaExnbyvsik3LNNpk7lu0PPRsqgQH9seB2gO0wtT9+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 121295ce-cb97-4959-6147-08dec7003750
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 14:54:47.6888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DQikucTFkMUikNz7WvVD7crNIr5VZyppOr5nddMvhH2J1k68EV3meJt61YdMwWNh378H69yL1wqIAyjf4AW1YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9775
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:replyto,intel.com:email,intel.com:from_mime,ideak-desk.lan:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D61866A757

On Wed, Jun 10, 2026 at 11:54:19AM +0800, Guangshuo Li wrote:
> intel_crtc_free_hw_state() drops the CRTC color blob references, but
> leaves the corresponding pointers unchanged.
> 
> This can matter in intel_crtc_prepare_cleared_state(), which frees the
> old CRTC hw state before calling intel_dp_tunnel_atomic_clear_stream_bw().
> The latter can fail while looking up the DP tunnel group state, for
> example with -EDEADLK.
> 
> If that happens, the function returns without completing the cleared
> state preparation. The failed atomic state will then be cleared by the
> atomic core and intel_crtc_free_hw_state() can be called again for the
> same state, dropping the same blob references again.
> 
> Clear the blob pointers after dropping the references so repeated cleanup
> of the same CRTC hw state is safe.
> 
> Fixes: fb69d0076e68 ("drm/i915/dp_tunnel: Fix error handling when clearing stream BW in atomic state")
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
> ---
> v2:
>   - Keep the original ordering in intel_crtc_prepare_cleared_state().
>   - Clear the blob reference pointers in intel_crtc_free_hw_state(), as
>     suggested by Imre.
> 
>  drivers/gpu/drm/i915/display/intel_atomic.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> index 71b7325917b6..0cdae87e4bfc 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -294,6 +294,12 @@ static void intel_crtc_put_color_blobs(struct intel_crtc_state *crtc_state)
>  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state)
>  {
>  	intel_crtc_put_color_blobs(crtc_state);
> +
> +	crtc_state->hw.degamma_lut = NULL;
> +	crtc_state->hw.gamma_lut = NULL;
> +	crtc_state->hw.ctm = NULL;
> +	crtc_state->pre_csc_lut = NULL;
> +	crtc_state->post_csc_lut = NULL;
>  }

Could you still move the clearing closer where the refs are dropped, to
the end of intel_crtc_put_color_blobs()? Otherwise this looks ok to me.

>  
>  /**
> -- 
> 2.43.0
> 
