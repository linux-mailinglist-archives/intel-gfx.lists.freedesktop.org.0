Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oH3hD3N2emmE6wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 21:49:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB7FA8D23
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 21:49:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CDA10E76E;
	Wed, 28 Jan 2026 20:49:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MeE49AA2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177CB10E76D;
 Wed, 28 Jan 2026 20:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769633392; x=1801169392;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ZG6vg0xtVp1V6qIcKWKNeGEbb4NCdB7jDpaoD2OCUGI=;
 b=MeE49AA2bCOizyzoOKnxH1htngdRPn2JPHF5mJ+0XUDya5Gg7XvARCbd
 9zrl7MJID3qIV/ZzN1o6lm6fEuVo5Se39gQMLOvpEbUaXTeZEl0CR+L+W
 kpcfRIocYlFLADGnIvDcs1NQcxQkHNwyu0UzHsCk6rwsqe//wmxLUCAMr
 /8HlMe3g1utxfeYm5frZvek5O4W0rz3/Dx2gRmNkqyunRu+Y3a+HA65Yh
 XiWANhLfOphXOQLxai32sJpoZWUjmkzkSQ4bn3cmE5DaV4/nYb2uo0tO/
 ZxV55WtU824P6PIYhWR6AlmXwtxSa25KecugDsRn8ABfUDznZ6eyhDIkn g==;
X-CSE-ConnectionGUID: hF5vmQnzSnaiREbHQK8TlA==
X-CSE-MsgGUID: 6K0FqTCDSCuFAMQ/wUNwiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70753163"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70753163"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 12:49:51 -0800
X-CSE-ConnectionGUID: QQAOJI8ZTBuXHHyVNr1EWQ==
X-CSE-MsgGUID: HO+SuGA6TOmQHLcngzV4Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="231312729"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 12:49:51 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 12:49:50 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 12:49:50 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 12:49:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nbomkz35GfPYGIJNYiCM+DR5TtlMSM1hL32sgggnOxz4qQIuDe/4SbAtLUubv0yvFgQoA+9GJYYetztYCmWCAEpcjTBfn14UhVbs+C7B2Tiq3kPWsxftDfwLUO7ND8kKjPhwyNgR1a0T4E7/ujYEesKMTDM7OQxCc4ELpJlsK1Ygw1R7Z3hsKS98yHYhkfRoCQiRqkapBoiMC1e9+J0LnljmCJzvd7Pz/Mj3qd6vsia75Y0rHk7+oMQ31NCRR27n37EDHYUgNg00/pKFtFK6MH7fL9h+zVzbhJbKExNLs0sl3PxcLuNHqZ9QTlhiidDqzuUkrISStP8z5oMvIt6Xmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OjERDg8zL58MwJUjPJHgTu5yC4IEt4BRZXF2RTU8MPA=;
 b=ChlxFMWfFijsH6FGRxMXNSleJzEgPW034z7ZqsDSAaDMuMvsICRUwn7Cc+td6cCArXWVUFGUW+kECpfgb1JAXNaCn7mFKna/kjogTrQsPwufQVqN20RrwcSKPW9V/pIDf5ZoZrCyAs3qqOifCO/8t32e67igFt3u4Nkq3Mpa72Q0YFIOe1WlxUTWesLK92xdldpBqDtITc3vBhZhCWlCI28/47NGDnU3TfHN4oSXLkGh4iz0y90IqYOtisp04Jqj97yEPG99EYzCqc2XqhjsGZ/7b0UCAx6jo1/NoH7U1dqDJOQBu4OgfKW03ByzqGonjla60ub1NMU1PRdgCjkAdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB5139.namprd11.prod.outlook.com (2603:10b6:303:95::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 20:49:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 20:49:45 +0000
Date: Wed, 28 Jan 2026 22:49:11 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 15/16] drm/i915/display: Add upper limit check for pixel
 clock
Message-ID: <aXp2R4b51PeoWGwb@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-16-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-16-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00006637.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3d4) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f1b8f52-f222-4a97-1eb2-08de5eaec520
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ajSx6ATDaUxUP42DWmSdfTso2CnvKa1wxkCZjsnpvuj/j6w0xHuCUpfQrPLZ?=
 =?us-ascii?Q?UgPuK8jyVp7ySJwoplouCJ+wGPA9gtmMHhXGYEhm6Kce0k6c1q/hSW5YMIM5?=
 =?us-ascii?Q?yJEy+JtCKpTZeP+NEBB+abDRCkzaNwlNAMgHt6nZk/jQe4oACpiT7UnV5WWK?=
 =?us-ascii?Q?/0Lipe0z+mHTJ8kpLQmYufP7ab+BMBdm7WkvcszXqbgkWtV2TjhXkaYv4NwK?=
 =?us-ascii?Q?RG3RZbNla9c6E6Gz4ixRp1tFbsJkSMamo9OD9MEITOqQ3UsCgTTTyaH8L/eA?=
 =?us-ascii?Q?sZxlwMNLP9hcTTj++ZuOm6BKOINz3k6PKXKMjBE/4mrK82LDfsVzogrvC+tJ?=
 =?us-ascii?Q?ua76tVZIs7eyWqXYWkAN9FYD/iPMursSeQwS3bbrNpqkiuRbIzrVx8EN3a3g?=
 =?us-ascii?Q?8CcHcgKbNuiXzey/AvYcRS0X1AHkXpz1jlIOn31V23fCg5I9pvT4ToRyC65D?=
 =?us-ascii?Q?UDgeIRm4qyyvzNblrQYJtjvkfa+VOfuwADNexAAyQ53Pza+KK/VshK0aZBMn?=
 =?us-ascii?Q?TZdGg35COm4XkkOAIUNIPELxk+esIy7U1FUt1shmpFr2c1hfVeW/d7R8Xv6K?=
 =?us-ascii?Q?tdPgmboOT8g8Q/2NcD8CC0wMbpg+i9lAKpDWmiu3y3RPNoeGk8f8+OSQAUP5?=
 =?us-ascii?Q?MMaPFW2LWXbCC7Yi8gFZ3agLAcUkL8L7gLzNND5wtKp0zaIkBzgFaEasGy9L?=
 =?us-ascii?Q?3SCu0Wqv6dxzmBmY8beIuQgbE7LzdRaoxLUfITySjgD1GlGU1XilGn6i7fE2?=
 =?us-ascii?Q?1JYaynCDPmX1w8KitAhavGshPmfknBM1tZ8F6pW7iwVueDQ7yob6sGZWg2A/?=
 =?us-ascii?Q?/dC5s6tY2gU076mFzN7pAb7UkKM7wfBid0eQfTdsnp9H4ltax1bE4kdya1Sf?=
 =?us-ascii?Q?NnZr7zYQb2CR/NQ33Zo3hVqUAZNJDYgoMg+wqD56jgvaJ/R4fQXz6/VT4xly?=
 =?us-ascii?Q?O0sTQ5JKk5ZIyb9KaTkN80FBA+w5gcWarAySEzvZ+1d/67IYl1yi8q8Q+zCZ?=
 =?us-ascii?Q?/K4+v+JAnHtee2MtwzML40nmF/nb3EghAaxVn1kQ8xxmdADPh8Nx+RkFAFTL?=
 =?us-ascii?Q?FC8gaG4hL1C7jxVpeEjiBj+Gj7FW853l+IwQwuDVTPJkAoaoxKfmmY8grORp?=
 =?us-ascii?Q?mo/rhunNeHptjTt6JN8AsklzqsDs4q65/gd4H8bI7TrvaxiPv6uGlyN8oMNY?=
 =?us-ascii?Q?ZvRDAsuk4chyDJbYlU4t7JNbQmM8sXhkeMf6WIYuQaN4LEqkFQObnpJ1V3Ho?=
 =?us-ascii?Q?FO11EvA1RptNyWjIp57Q6nDgA6hQJcpn6hG1ac1l5MZIkyxJ5ivvrLcc0hxQ?=
 =?us-ascii?Q?vgdp5PKaUrECitC+z/St4NEnZvlVyMa5PNOgHvk5Q5yHBQWJnzObhUEfGZ8B?=
 =?us-ascii?Q?4OjeK+mMjHrzXlnjPdsGBaHMiNrdJ/0yxjUUY7LHzhteHPSKWj5WjCRe71tn?=
 =?us-ascii?Q?3h/qjlYut8DaN4itdCGOtA7FVN1Q5LRE8XmhoicvPUxvvcKYEvHev7bMgkdi?=
 =?us-ascii?Q?usAeKSNuf+O77javAz7GVY51L+P194RaOKAnvqQjpO48oFBcBzdcO2t5HF3e?=
 =?us-ascii?Q?3kNRlGghypMirv8UFW4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?urYsh5Dyy84geSd8YD333lUpwj3N6FTpWPIdMWpq6YzPwCjzav2PvJYMQXKe?=
 =?us-ascii?Q?YMsuECwRpwYN8UktLO9uEbNru0qOkSmhy6u9o0ROTO+hFGJ0p4X5fjHbFD+f?=
 =?us-ascii?Q?v040srwzD1R+X6yTJk349OxlKEbVS3FYKAbEfRv6N5qSF2u9AjxXvTUytY16?=
 =?us-ascii?Q?pVYKuSVBp+Gr7u0VFerfl+YMQTNfwZ8Ngw4qV1ZCtNSOCnwC6u1TgInWr+UE?=
 =?us-ascii?Q?W0g0XD2/NQudActfYag+Z6r4LZS3DGDsCCqQ/8B+0jeAPvfv965JAQmMWJoN?=
 =?us-ascii?Q?C0VfqI+jij6tuyk9tTo05+LRF9oj/QOtOCuQtd2eqc8pBeWyipEQbIFJ4fXe?=
 =?us-ascii?Q?GolQGcxRIjEruesA/U1WCQclbKJWROHJaqoGuekjQtsXZZNUSlP+ZGVJMZwO?=
 =?us-ascii?Q?I0Ryo4Rc9oTXPF5H5cvIm4NKL3Mar1VsZnbf/UjwVmfzUzbFIQIK7ADXvz5U?=
 =?us-ascii?Q?deA5WefTlvy3wEhBYb5Kq5i/7+rxn7hU4fiqHt1bdDQASAJotIHR0e0nRY0V?=
 =?us-ascii?Q?sQvG1+lHQEq4i2uWNyimzJTnqEoWGc2iOT5o6ANmcd61z2hvqsT+aS+keVqH?=
 =?us-ascii?Q?ol0ZS/fdJx6SxMxoxkBRWRDABGFib81nrz7S4YAg5YtfGArQEt94ROUcy6Ww?=
 =?us-ascii?Q?ioJ9BGPQK3qLfCrCXWrvjKNn0RBwF7lfJqrFQ08YoSz0so93ujFa4Ekrprpw?=
 =?us-ascii?Q?imHD15mVcZ/Xt9DdXcmk8t9AYPnkkYRV4GoBVE59JfOPB1mzBeuguWtzFqez?=
 =?us-ascii?Q?jLD5b7cRSwPuPEVQIJguQVFI2bTRGoLkln+Ownp0UNzwN1IwWYx4NyoWQ+oR?=
 =?us-ascii?Q?1AzTHAK3zg/SMxOtRE/poKwhiZ8cU/447LExgLmRAhKP2c26wCHuiFKAl8FT?=
 =?us-ascii?Q?lm7GdKI/WbsAIXvy0B9mSZUNivtni2MEA4PmlK0Obdil3xyFMP4SH67lrQXS?=
 =?us-ascii?Q?laLOyx6iZ0VRupN9lOnb47QAnCfBkREMoVQt7KrvjFR3ZvAVFJNbmytT98sV?=
 =?us-ascii?Q?GjRttma33SZMPz7P30reh/Kbtuy7vC/SSNF4F60POsebhOPEeJJfvP1Rflrt?=
 =?us-ascii?Q?YGMd6hS3KXlmt90xoZAcqvlE9Wk4rn6n8QDbkVech6f7WZ6x5QnCrVOkSI51?=
 =?us-ascii?Q?Igq0vsddwNk1T/FQx++ptpMwDprzfYJjd7JEFM2UxbMSihNvEREfaOWYFTmq?=
 =?us-ascii?Q?5RQA+a7yfyHldbEd8ucKZ/phn3rGwLJaaxxgfD1tHSAscSPMlQ3YK3Go/cI3?=
 =?us-ascii?Q?TaQ9zI7BdyoZoHA8a9gAp3PcrDQWIPdQsb4KRo1JXW5MSx3IwZbkLJ1HvPFb?=
 =?us-ascii?Q?X81bGjtBLYF8kKBs4cse2zAk2SUEGzvOoHqGL3Dobc2nDd5IvjDQ76Asdc3g?=
 =?us-ascii?Q?pdPxZBVjpLOk64wc3vBejGVlEq0nTwgiYwRco8NUVf1XtIwZ89TOh9QWQ3+g?=
 =?us-ascii?Q?nMAUztCnr0c4JipejN9McjsML/Qe0qD6knkGCNz3+WoL6zkNMmAUm3PjfY+V?=
 =?us-ascii?Q?bJt8gaVL/8YN+RnQ0s4gZtYfzUgj9IbAy57e5/OZpkb1FkxSCFAyFBBhTwK+?=
 =?us-ascii?Q?uSFa4whYJN/736oVOhEuj61G2sIn5+rbNn4SboJwZQb5WUWQbdn6i33fwDy9?=
 =?us-ascii?Q?I+tcvrEq98ANfTiSjDmeoCMTE1AsFtk4v2RLmU5JjlmbcuOoATeUM/1BDOim?=
 =?us-ascii?Q?jGOZ1MsOW78cR2QQbOPMfa+zHfh9+HmEDtgRQTw7wdnbNtIFoT9dszjXVFzs?=
 =?us-ascii?Q?lqwNwR8a1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f1b8f52-f222-4a97-1eb2-08de5eaec520
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 20:49:45.9437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JX+1Z1lgHsmMa/3phw6uAoY+Bqd3QUbom6PFneJhmmmdZRuRuAxRKS/TmbSM341WgkcG4TQqrDMx9jMzRnDNtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5139
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
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
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
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9EB7FA8D23
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:35PM +0530, Ankit Nautiyal wrote:
> From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Add upper limit check for pixel clock for DISPLAY_VER >= 30.
> Limits don't apply when DSC is enabled.
> 
> The helper returns the upper limit for the platforms, capped to the
> max dotclock (khz).
> 
> For the currently supported versions of HDMI, pixel clock is already
> limited to 600Mhz so nothing needs to be done there as of now.
> 
> v2:
>  - Add this limit to the new helper.
> v3:
>  - Rename helper to intel_max_uncompressed_dotclock(). (Imre)
>  - Limit only for PTL and cap the limit to max_dotclock. (Imre)
> 
> BSpec: 49199, 68912
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
>  3 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7491e00e3858..9cfeb5530fd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8001,6 +8001,17 @@ void intel_setup_outputs(struct intel_display *display)
>  	drm_helper_move_panel_connectors_to_head(display->drm);
>  }
>  
> +int intel_max_uncompressed_dotclock(struct intel_display *display)
> +{
> +	int max_dotclock = display->cdclk.max_dotclk_freq;
> +	int limit = max_dotclock;
> +
> +	if (DISPLAY_VER(display) >= 30)
> +		limit = 1350000;
> +
> +	return min(max_dotclock, limit);
> +}
> +
>  static int max_dotclock(struct intel_display *display)
>  {
>  	int max_dotclock = display->cdclk.max_dotclk_freq;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index f8e6e4e82722..0e9192da601d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -488,6 +488,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  				    struct intel_link_m_n *m_n);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
>  int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
> +int intel_max_uncompressed_dotclock(struct intel_display *display);
>  enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9eba8f90bc90..6584e28ab2fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1465,6 +1465,9 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>  									 target_clock,
>  									 htotal,
>  									 dsc_slice_count);
> +	else
> +		effective_dotclk_limit =
> +			intel_max_uncompressed_dotclock(display) * num_joined_pipes;
>  
>  	return target_clock <= effective_dotclk_limit;
>  }
> -- 
> 2.45.2
> 
