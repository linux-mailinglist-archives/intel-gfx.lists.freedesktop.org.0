Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CVhFPGRgmmhWQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 01:25:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C10DDFFF9
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 01:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FC210E300;
	Wed,  4 Feb 2026 00:25:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WkCZpjYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDAF10E243;
 Wed,  4 Feb 2026 00:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770164717; x=1801700717;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pYQ6O9YKE6qCaUokHY6EKtU9CU2Qi494CFPuzCJiYqQ=;
 b=WkCZpjYbY91crFDN4cEJH+iXSYVlzriw4r/j6B7sfaILN0/ELqgJljfs
 60pPENJdvgkvZj2pm12854ObIhUPXVNVpVamaqX2ydgkYmfu6WtgTVSXe
 HETm6yXzgZ9Y7H3vJDWWOIlKQ1MZqf+8hnUADBYwa/putijOmkMkgMCV5
 1/DS1FcHROKRu5rtGjXkA4xJ9QZP52qqwlu57OhAff9cMUphoikRwwtFo
 2/xZ8X3zut38Qw47f8I3ta3sQQtdviQEcKd5k3hgvie3f8GIlDmHwDV90
 q+mzA8FGOydINdwFKL54C4/QeOsa/dxTOM8aS9ENnwVrx8431PccFkSue w==;
X-CSE-ConnectionGUID: v9cEkjGJQ1aQRmsUXmAQuw==
X-CSE-MsgGUID: dyujt4KCRh6j30Sw+m5SBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="75205270"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="75205270"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 16:25:17 -0800
X-CSE-ConnectionGUID: BZAatxZLRLOBzoSZV29hRQ==
X-CSE-MsgGUID: n+8IH30vQvKh4wPbBPpvHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="214484990"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 16:25:17 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 16:25:14 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 16:25:14 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 16:25:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jGiZ6eCaNNoMu1F76aEkM54XGeyrZldA8X9L+VRmlIAFnQ69Mafb0Xy2Z8lkYVOy1HWuf4gQSg+2ZMtIbXrSo2Ubc7soRssI7oQh3HmgRxV36YVj4hn2PrRkXa+TBmyQ/Zak3x17wHuirUvsFWPGGvBVsHyVAAxTR+MPIePXEfGQa81dPiNVqa9dg13vYIwrG3JKMk55zdRqNdmnSrx2q6CoOz+LPr5+JUDD1vGrI+T2oJCtidXiQxthw77WLAdQyltBOh0kX/X4ePO1LtsxpvMCrtt7NHhu11nK8BhoiOyAOsWktA2bYtqLS++1wrVM47KMA03tJD5ebbU8Q6FkNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=djz679cuPNsiB0bHDsFaEWmlXHrKjCcyFI+9qsD+rZA=;
 b=p4QzHH5s74pedpTG0nkga+BgjlJX29GdvI/UL1rJCKORTGF+KNx837LGi23V0yIvyh9OdpmHDhTa1nA7PnDGMhKDQxr0ehVMIaY0nJoDBAfRbrnid4pkLbvT1idasNago2Qz1PdOwS0zKm6F+PWs3wprKzwFCjRTwafyfjct9cj+cgaWBMLA5mjUJ5SmEbI4yV9qfRHICKfJ3ObhMaJBRTDbp+qYst+yzwVQ2hP2qQLjNWzVv4EiRsYIlffzGAkUkwbuKTrvhuXw+EhndbFCXT8AV/JnKsRzqFGy+agS3kJZoj4Se8Oy0ElVO5v4KCODTeisiB49H6yJUjKeaFE1BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB8250.namprd11.prod.outlook.com (2603:10b6:510:1a8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 00:25:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 00:25:07 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>, Tangudu Tilak Tirumalesh
 <tilak.tirumalesh.tangudu@intel.com>, Mallesh Koujalagi
 <mallesh.koujalagi@intel.com>
Subject: Re: [PATCH 02/16] drm/xe/xe3p_lpg: Add initial workarounds for
 graphics version 35.10
In-Reply-To: <20260202224720.GJ458797@mdroper-desk1.amr.corp.intel.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-2-653e4ff105dc@intel.com>
 <20260202224720.GJ458797@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 3 Feb 2026 21:25:02 -0300
Message-ID: <87ldh973tt.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0040.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB8250:EE_
X-MS-Office365-Filtering-Correlation-Id: dce578d8-d8f4-481c-f44c-08de6383d93e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tw51/JIdyz0ukRLJHeQ0ztaUGGXz57YWExnwepaBE4O4OM4AAld7YgRB/5+b?=
 =?us-ascii?Q?fN2YYwaLxy3oEFpMH9p9X8ZJJk3lpKBz7kt1r8cZImk3YUxtbChSU2qONoYZ?=
 =?us-ascii?Q?bJucOVMcf7bIZ6XLBPbfOf7hhV6cUyizbLABEczrj6AQjOjj24zRcXMIhF3R?=
 =?us-ascii?Q?idfPhWy7/EqPTc1gUCoYyv4zROBX5dZu/SAPUQe1BsK84YoihYpT1XIDPGWl?=
 =?us-ascii?Q?vvM5+VaIczWHy5NgUfCfoe/aBPUHBOXwwP6r1xcGpcUVXkErGDrOFHzq23rc?=
 =?us-ascii?Q?MVBoNQqT7LCUC92fb2fjq667Y5ciBvzHYfVyqEwCK4Hnec2XkNe8VR+eoRo5?=
 =?us-ascii?Q?A724aVvT/9N5NijwE3f+i5sfpufXduPegvEF2U00xxiuWtHVy5hDSUf4Ck3H?=
 =?us-ascii?Q?QZ68DLLYN2NyAlneh/VcTKEvnM0fJCm3/smy4x9V3pmKX9MkyLuABMxpnabN?=
 =?us-ascii?Q?y/rGxK1bYISO7VfWVRYVUVHFw+b+u5Xda99mpSh90rB4WtMv90yj5eriDFSN?=
 =?us-ascii?Q?ixh3bBSw97CQCD50KsiJtJiPHu87HZ0HeXdVGQ0CqOHdij0QVXklgbvlNxIb?=
 =?us-ascii?Q?0OoYm3JkGjJS5VkoTi61ufP8JKwIUlZm3un4kYqpjCIcNWg1mCZgZKJ5701+?=
 =?us-ascii?Q?0yEef/PMyACO7T75yWTfeSZZ8SYCEPG54BObd4sWpKcYq9iIefy2EIxG/d4g?=
 =?us-ascii?Q?QDQu2lanEmcUBynYtcJRrgyI3Ox/dSprO9mffBJD141FmnqbvGyBkyAOBWsg?=
 =?us-ascii?Q?+a2gb/JR+ahvD6vHJV/X4ok4dP3Up57T8+4qJ70Kez4uPuDlB4fniBfWXnhz?=
 =?us-ascii?Q?+3Z0ks4rpymLz62AfzentN8jtZE3i/0buh+n92HDDU/9uDiT/Oq8IrfJehEP?=
 =?us-ascii?Q?Kf/DAYF8JHqkPRD5m4Yfld3OsQvyAP8L64Of/0k4TVaCRm4es6z4+0me/VwR?=
 =?us-ascii?Q?cVCzb3SBrIrcOplca43IrxOgSvOPmUgzRdhv6hZ1XcPUvY18ODOC+lQdXcSN?=
 =?us-ascii?Q?BWdylBkr/XHOHsp4IaikBhlCgjZpLTT1zVHKJUnzZjY2Gx/hLEbsCR/RrNey?=
 =?us-ascii?Q?Fwrk+giqUwZ7ZEuZ+71aKybiJwizmLXTZXON8FLPt7/loLfBXium4bGLqe/9?=
 =?us-ascii?Q?G7XGAY3/pEOhoe38fzY3zoojByAtY1R7jIDgQtDu+N6TbxyqeUDpaskfxrgy?=
 =?us-ascii?Q?puuKR3/8DMeNhpL1VX1y7xvIveRPvdXSB8DrNqwZOg3jQo1ufDOt1MKMzG5N?=
 =?us-ascii?Q?dIQINcL+Im9EsYTo+O8lRr5sw5/Merl+xe0cJOvTlLRFT6HuCckc1kR0IsH4?=
 =?us-ascii?Q?ZpagcqNlkqkJWtYk6HLefUGhq21RPT9yu+eUpimN1ErLLrY/8sRTNppppayC?=
 =?us-ascii?Q?8ht+T9wR6q1bceJx1dlv27ZPpKPqzLcLpqapY2uNFxLQALgKNiZjbpQFDypp?=
 =?us-ascii?Q?qGchFnpO6oisqGyD21zVDr1mWCi8/PToXz/K09sSTc6W6EuuZaEws2HDHxUf?=
 =?us-ascii?Q?l+r+dOtjKA/SFOjL0Df6RRIiinJFp0s3IQZDjRoee4tl6ch4BcCwaQB9cZUp?=
 =?us-ascii?Q?xSYteqRrvMxc63UgWJI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f1Ll4yS7Zej5XoavnHcD0pS/iq7B0W7WnUIDcESKiYrNDniG4w3eGpzAQdfm?=
 =?us-ascii?Q?MdFzJRD/VNRS8cWj3tiTfbu9mt+w/okXFjCbkKLMny8PMF9b05oO8JUlMEK/?=
 =?us-ascii?Q?5hQxq18sIpSzP2MV/kLB8MtXaZdFwtULVbOKmr+GETrjFYSe5ThZansbdnfY?=
 =?us-ascii?Q?LZ7uFXCdBk/AV2edosqU4mQaQAhHgSSiDb7IAH+Wd4FkmVgQ7Bmrk0p6ymz0?=
 =?us-ascii?Q?qQ0otoxAgbzOVb4MDawaRg0u7P6VPFDN0RDbQRQdT7bDIL8MonQrloy9IV97?=
 =?us-ascii?Q?a+fJJ5pZ2OGFGyDafZe3b6/XVSM0TAF0S4hzWDLZt2t62MkgVIZnPsgJdc+x?=
 =?us-ascii?Q?Kp9umpaH7PtMfhfjdFc2igWyS8t30BJ+op8B0cqPCLRVc8VoPd7lRsBuewgV?=
 =?us-ascii?Q?nOjUf5O9Vmz4KYZg3Qm65UO7uNlA+Wg7Bg42zpZeOTUYxFfFfoJ4DppEuN6J?=
 =?us-ascii?Q?9pR2xPV0jsxKP2X1comYbE4I+hEvLfIz12hw61VWdt0sTCNjLLeH9WepWSYD?=
 =?us-ascii?Q?wgnV+mMZ1WcSbpHJ75n7RLq98TLTOTamVB8wtqOlcR9XoBeR+ZbDRb7DsXP9?=
 =?us-ascii?Q?snlZuXMEPJhQ1+VLEX2gfENKQcT7IllXnfqpnhuX5rjNBrABxtO/ZaDSAawG?=
 =?us-ascii?Q?Xu2mXLBueefIYG5/AD10Urt3nGYsaoTvObJnMxcthnromALqaUjO6cAuD0RX?=
 =?us-ascii?Q?mRFh9a0TxJaXWJ7a/KbFF5h5Hy5AZp+XVWE0eCr8uIVDWTqkUBgb2WpjoABc?=
 =?us-ascii?Q?mM6SGqGXC6tZsjXj48EMYqztALFBPU62RTzSRcUGXct7Slmt+fEd0OEs1//1?=
 =?us-ascii?Q?UVOLMa22jec6sXi0Ue520a1iyR2Q63tb39SsElsN3QjWyBHpMUK+svYYMVYv?=
 =?us-ascii?Q?xbQVbpstww/LBwHFHGsYjREjjlvpAroS7jX1XtZxZrKY10Zzn0xjCkx++JUy?=
 =?us-ascii?Q?Pf5nwZz49s24PiexIQh0b7Of6SwQpg4pRl7Sctnbb7Vj/TLZ5dKcKWUj+ZAq?=
 =?us-ascii?Q?Ck2PtRyTzhies7GdKpRPmaRmtyIa//qZXCsZbp2mwqQ0y+bCgd3LianeMnF5?=
 =?us-ascii?Q?zJTpHyKjpSAShBZzeQf4wea4JAithxsGg0AIaB74FQgb2rEj+tAsMhGdbbri?=
 =?us-ascii?Q?yVjCDq4Tpl5lnGCvfX7YotnegoZ0eCDDOX3CMiSOP7Nld3u7A2f0+v+gObXP?=
 =?us-ascii?Q?23mJClpZ3Oae6cgcpoFLIQUzOjuuWQVvvxRE7LLKZPaOuS4bx5nRGP9qMkXl?=
 =?us-ascii?Q?C0yVSnW7BdQEW752UERrTVljmG7KjSQnTZ8ItW9IuZ3uuWrR5YfuLihTq+le?=
 =?us-ascii?Q?0vhOE5kWNNedRWeYxejGjh5LFxgJGDG+40dheG13ppJN4H23ASmk5tVpf2HM?=
 =?us-ascii?Q?ucV5e287xTAB07eg/6h5blvtdu+WjCilc2EU8ryGoTMYl3ZiDQ1GVHeK+rKM?=
 =?us-ascii?Q?wkUurpUarFV5m+6uLabCiz8wG3bATjBitWBYOh3vqeFeVgdizTJNFn/Gyi0C?=
 =?us-ascii?Q?ZYtkM9ISP1tPpsbosfTpDQA7OiOlL7leK8o6I27KvkRHhsJMkgq06HTsNGsF?=
 =?us-ascii?Q?CwlSaaEyE/3ToS9Ofl4wlLfcjKBM8YePh3OvSU+ZyFVnRnylEmQkVNTjDzWf?=
 =?us-ascii?Q?Uim5GV3ipy67C80MlLk65TlCPpujfM/G3ELb7cUbB1oT4A4zdgZaq/ZYCa3h?=
 =?us-ascii?Q?yTiAmf2+HRtSPVR3zRxqoyTQP5zPv8wvg75+KBoLqLAehAisd1IuaWkGZcJm?=
 =?us-ascii?Q?+GJOK5krcg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dce578d8-d8f4-481c-f44c-08de6383d93e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 00:25:07.0980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HrlTjewKibjywsGwBdcO5u1SDvndHXvUs+Ask617O4vNiRem0gMuL38ddcidu5BPN44LekSCF7uyTIGBUrE5og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8250
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9C10DDFFF9
X-Rspamd-Action: no action

Matt Roper <matthew.d.roper@intel.com> writes:

> On Mon, Feb 02, 2026 at 06:43:08PM -0300, Gustavo Sousa wrote:
>> From: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> 
>> Add the initial set of workarounds for Xe3p_LPG graphics version 35.10.
>> 
>> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> Co-developed-by: Nitin Gote <nitin.r.gote@intel.com>
>> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
>> Co-developed-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
>> Signed-off-by: Tangudu Tilak Tirumalesh <tilak.tirumalesh.tangudu@intel.com>
>> Co-developed-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
>> Signed-off-by: Mallesh Koujalagi <mallesh.koujalagi@intel.com>
>> Co-developed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/xe/regs/xe_gt_regs.h  | 19 ++++++++++++++
>>  drivers/gpu/drm/xe/xe_reg_whitelist.c |  8 ++++++
>>  drivers/gpu/drm/xe/xe_wa.c            | 48 +++++++++++++++++++++++++++++++++++
>>  3 files changed, 75 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
>> index 24fc64fc832e..b5a7cc45f13d 100644
>> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
>> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
>> @@ -100,6 +100,9 @@
>>  #define VE1_AUX_INV				XE_REG(0x42b8)
>>  #define   AUX_INV				REG_BIT(0)
>>  
>> +#define GAMSTLB_CTRL2				XE_REG_MCR(0x4788)
>> +#define   STLB_SINGLE_BANK_MODE			REG_BIT(11)
>> +
>>  #define XE2_LMEM_CFG				XE_REG(0x48b0)
>>  
>>  #define XE2_GAMWALK_CTRL			0x47e4
>> @@ -107,12 +110,18 @@
>>  #define XE2_GAMWALK_CTRL_3D			XE_REG_MCR(XE2_GAMWALK_CTRL)
>>  #define   EN_CMP_1WCOH_GW			REG_BIT(14)
>>  
>> +#define MMIOATSREQLIMIT_GAM_WALK_3D             XE_REG_MCR(0x47f8)
>> +#define   DIS_ATS_WRONLY_PG                     REG_BIT(18)
>> +
>>  #define XEHP_FLAT_CCS_BASE_ADDR			XE_REG_MCR(0x4910)
>>  #define XEHP_FLAT_CCS_PTR			REG_GENMASK(31, 8)
>>  
>>  #define WM_CHICKEN3				XE_REG_MCR(0x5588, XE_REG_OPTION_MASKED)
>>  #define   HIZ_PLANE_COMPRESSION_DIS		REG_BIT(10)
>>  
>> +#define TBIMR_MODE				XE_REG_MCR(0x6200, XE_REG_OPTION_MASKED)
>> +#define   RXBAR_NO_UAV_DEC_SYNC			REG_BIT(12)
>> +
>>  #define CHICKEN_RASTER_1			XE_REG_MCR(0x6204, XE_REG_OPTION_MASKED)
>>  #define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
>>  #define   DIS_CLIP_NEGATIVE_BOUNDING_BOX	REG_BIT(6)
>> @@ -210,6 +219,9 @@
>>  
>>  #define GSCPSMI_BASE				XE_REG(0x880c)
>>  
>> +#define CCCHKNREG2				XE_REG_MCR(0x881c)
>> +#define  LOCALITYDIS				REG_BIT(7)
>
> Nitpick: the formatting is slightly off here (the field name should be
> spaced over one more column).
>
>> +
>>  #define CCCHKNREG1				XE_REG_MCR(0x8828)
>>  #define   L3CMPCTRL				REG_BIT(23)
>>  #define   ENCOMPPERFFIX				REG_BIT(18)
>> @@ -420,6 +432,8 @@
>>  #define   LSN_DIM_Z_WGT(value)			REG_FIELD_PREP(LSN_DIM_Z_WGT_MASK, value)
>>  
>>  #define L3SQCREG2				XE_REG_MCR(0xb104)
>> +#define   L3_SQ_DISABLE_COAMA_2WAY_COH		REG_BIT(30)
>> +#define   L3_SQ_DISABLE_COAMA			REG_BIT(22)
>>  #define   COMPMEMRD256BOVRFETCHEN		REG_BIT(20)
>>  
>>  #define L3SQCREG3				XE_REG_MCR(0xb108)
>> @@ -550,11 +564,16 @@
>>  #define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
>>  #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
>>  #define   XE2_ALLOC_DPA_STARVE_FIX_DIS		REG_BIT(47 - 32)
>> +#define   SAMPLER_LD_LSC_DISABLE                REG_BIT(45 - 32)
>>  #define   ENABLE_SMP_LD_RENDER_SURFACE_CONTROL	REG_BIT(44 - 32)
>>  #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
>>  #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
>>  #define   MAXREQS_PER_BANK			REG_GENMASK(39 - 32, 37 - 32)
>>  #define   DISABLE_128B_EVICTION_COMMAND_UDW	REG_BIT(36 - 32)
>> +#define   LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE	REG_BIT(35 - 32)
>> +
>> +#define ROW_CHICKEN5				XE_REG_MCR(0xe7f0)
>> +#define   CPSS_AWARE_DIS			REG_BIT(3)
>>  
>>  #define SARB_CHICKEN1				XE_REG_MCR(0xe90c)
>>  #define   COMP_CKN_IN				REG_GENMASK(30, 29)
>> diff --git a/drivers/gpu/drm/xe/xe_reg_whitelist.c b/drivers/gpu/drm/xe/xe_reg_whitelist.c
>> index 1d36c09681aa..9c513778d370 100644
>> --- a/drivers/gpu/drm/xe/xe_reg_whitelist.c
>> +++ b/drivers/gpu/drm/xe/xe_reg_whitelist.c
>> @@ -81,6 +81,14 @@ static const struct xe_rtp_entry_sr register_whitelist[] = {
>>  			 WHITELIST(VFLSKPD,
>>  				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
>>  	},
>> +	{ XE_RTP_NAME("14024997852"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
>> +		       ENGINE_CLASS(RENDER)),
>> +	  XE_RTP_ACTIONS(WHITELIST(FF_MODE,
>> +				   RING_FORCE_TO_NONPRIV_ACCESS_RW),
>> +			 WHITELIST(VFLSKPD,
>> +				   RING_FORCE_TO_NONPRIV_ACCESS_RW))
>> +	},
>>  
>>  #define WHITELIST_OA_MMIO_TRG(trg, status, head) \
>>  	WHITELIST(trg, RING_FORCE_TO_NONPRIV_ACCESS_RW), \
>> diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
>> index a991ee2b8781..68a494743b34 100644
>> --- a/drivers/gpu/drm/xe/xe_wa.c
>> +++ b/drivers/gpu/drm/xe/xe_wa.c
>> @@ -306,6 +306,31 @@ static const struct xe_rtp_entry_sr gt_was[] = {
>>  	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3005)),
>>  	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
>>  	},
>> +
>> +	/* Xe3P_LPG */
>> +
>> +	{ XE_RTP_NAME("14025160223"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
>> +	  XE_RTP_ACTIONS(SET(MMIOATSREQLIMIT_GAM_WALK_3D,
>> +			     DIS_ATS_WRONLY_PG))
>> +	},
>> +	{ XE_RTP_NAME("16028780921"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
>> +	  XE_RTP_ACTIONS(SET(CCCHKNREG2, LOCALITYDIS))
>> +	},
>> +	{ XE_RTP_NAME("14026144927"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
>> +	  XE_RTP_ACTIONS(SET(L3SQCREG2, L3_SQ_DISABLE_COAMA_2WAY_COH |
>> +			     L3_SQ_DISABLE_COAMA))
>> +	},
>> +	{ XE_RTP_NAME("14025635424"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
>> +	  XE_RTP_ACTIONS(SET(GAMSTLB_CTRL2, STLB_SINGLE_BANK_MODE))
>> +	},
>> +	{ XE_RTP_NAME("16028005424"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0)),
>> +	  XE_RTP_ACTIONS(SET(GUC_INTR_CHICKEN, DISABLE_SIGNALING_ENGINES))
>> +	},
>>  };
>>  
>>  static const struct xe_rtp_entry_sr engine_was[] = {
>> @@ -680,6 +705,24 @@ static const struct xe_rtp_entry_sr engine_was[] = {
>>  		       FUNC(xe_rtp_match_gt_has_discontiguous_dss_groups)),
>>  	  XE_RTP_ACTIONS(SET(TDL_CHICKEN, EUSTALL_PERF_SAMPLING_DISABLE))
>>  	},
>> +
>> +	/* Xe3p_LPG*/
>> +
>> +	{ XE_RTP_NAME("22021149932"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
>> +		       FUNC(xe_rtp_match_first_render_or_compute)),
>> +	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, SAMPLER_LD_LSC_DISABLE))
>> +	},
>> +	{ XE_RTP_NAME("14025676848"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
>> +		       FUNC(xe_rtp_match_first_render_or_compute)),
>> +	  XE_RTP_ACTIONS(SET(LSC_CHICKEN_BIT_0_UDW, LSCFE_SAME_ADDRESS_ATOMICS_COALESCING_DISABLE))
>> +	},
>> +	{ XE_RTP_NAME("16028951944"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
>> +		       FUNC(xe_rtp_match_first_render_or_compute)),
>> +	  XE_RTP_ACTIONS(SET(ROW_CHICKEN5, CPSS_AWARE_DIS))
>> +	},
>>  };
>>  
>>  static const struct xe_rtp_entry_sr lrc_was[] = {
>> @@ -879,6 +922,11 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
>>  		       ENGINE_CLASS(RENDER)),
>>  	  XE_RTP_ACTIONS(SET(CHICKEN_RASTER_1, DIS_CLIP_NEGATIVE_BOUNDING_BOX))
>>  	},
>> +	{ XE_RTP_NAME("14025780377"),
>> +	  XE_RTP_RULES(GRAPHICS_VERSION(3510), GRAPHICS_STEP(A0, B0),
>> +		       ENGINE_CLASS(RENDER)),
>> +	  XE_RTP_ACTIONS(SET(TBIMR_MODE, RXBAR_NO_UAV_DEC_SYNC))
>
> I'm not sure if this one is actually needed.  Originally the workaround
> ticket just said "program 0x6200[12]" but it's since been updated to an
> "if (por) no workaround needed, else if (non-POR thing) program the
> register and add a stalling flush."  There are also comments in the
> ticket itself that indicate it shouldn't actually be relevant to this
> specific platform due to other characteristics of the platform; it's
> just something that they'll need to fix or workaround in the future so
> that it doesn't impact future derivative platforms.

Incorporated feedback and they will be in v2 of this series.

Thanks!

Gustavo Sousa

>
>
> Matt
>
>> +	},
>>  };
>>  
>>  static __maybe_unused const struct xe_rtp_entry oob_was[] = {
>> 
>> -- 
>> 2.52.0
>> 
>
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
