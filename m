Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8OCFISP+sGljpgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:31:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC2525C70A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 06:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2C710E314;
	Wed, 11 Mar 2026 05:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b7AGZv/V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79D010E0F6;
 Wed, 11 Mar 2026 05:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773207071; x=1804743071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fZ3cv1MYaDTRGPt3sBB6HMWrZeKmDVH3uVxAUmifamY=;
 b=b7AGZv/V88gFYaKbOuQFW4tA9uOd1BD4bG0ETW2Jbnf8UJDfH7wj8O9/
 mxd6+pD3wpNX/IypdBCwO9SSm2X3SUncu55KNnKS7Z/W4zCkiC01gsztU
 +NQGwAoeeLpav4/ZPZGBCuhRMZYlzEj/h7nCK7gv+vbbm/vODvY6OhZfH
 6YgkiXORhSA8Ky97meMemEh1gWUhoWlSbqclmmOU9ACgfj2AbuGEAHIqa
 fUVoBsybrHQTJOGdoEiRtHP3ArEwk/n/m4XEa91sd9cZWCm0y5mkTkBP5
 rubbpkf1XnxwLRCRuaroRIp/C/26z++QjwrAiat+6Ebb69gfgeBjWMDcb g==;
X-CSE-ConnectionGUID: SuODI5xkTYyYmhouGLZf3g==
X-CSE-MsgGUID: 7Cm/1ebkSde0ixQ9r44ImQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="84973111"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="84973111"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:31:09 -0700
X-CSE-ConnectionGUID: 0uJcvVx1RQKMhJzryfcyag==
X-CSE-MsgGUID: NEnEjBZrQBGPLuro3mykyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="220529643"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 22:31:09 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:31:08 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 22:31:08 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 22:31:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LpXkIOti/aOeQahv605CB2VpW7nWeE4ABgszW35wobKxyxedTwutRCmmXiXijI5iUcjONSkLQV9geNkgsrLDceHmTCIuuVDLCdy7KHjdcJqCcreEpviV94jZMC+2Ni1uJ6f9jtlqZpfj5UaRnLZuTgfnxvkoN+XI3wihadzOJNC8PhJAup7ULFfzmsWbgXFRx4Qz+b6gLvd6/YvKxZ2OeVz4r5wVz+Dhqn255X7jsplgJrNW5YeeplthK9As1WM+6Ym9YhXRzb9ST5l0Qn94NOo211dOoK079R6R1HyGk+v3qvzXDNDyEuMSTHUJaSbxL9OKtWE5371vx9KVIhcX6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQalwTRdetRZNb78iXya4Zc8U8s7+SqxaTRr83/b32c=;
 b=ldHcOovcbOa6FHkOeklV88ibLau3N/sjz1sC8uWDkNXAHcZduacKxS+J34aUIIfkwLWgS3D74P67AQ9aSO4pSfiTXQyQ9j0ABbEwahbBAyjwsRCHIYGOvXaBqBcJFeqYHTeZpmRPNiMsmH9P/HdU5JJWB1J9n1LYm/30FoqN56BDynEVqZvRI6rbSLz+gd5ozKnX5wm9kqH1uBXcsarBmc+CpWmrP8vEmZeAnaRk2kRtwJ8m+XGRuySCjef9EN1AQtW/0a7rYEltRdHWIYCcvcLHc+3gAlXEj9EZKLRGi+fF28Y5eDQ0InNKJjaWDxMSZAYq81gdILhjAv/PckMXkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV3PR11MB8765.namprd11.prod.outlook.com
 (2603:10b6:408:21d::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 05:31:05 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 05:31:05 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Topic: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Index: AQHcq9pTl68o39H6gESwH+uFQhX4OLWozWZw
Date: Wed, 11 Mar 2026 05:31:05 +0000
Message-ID: <DM3PPF208195D8D181A8242316BE048F2DBE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-19-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-19-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV3PR11MB8765:EE_
x-ms-office365-filtering-correlation-id: cbf68d8b-607d-4a92-db0f-08de7f2f643f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: cr4Oi3k+s0tVISNiUrvqkkTVRD1RXi6w/cU9b1w0213U86Z9et9HHfE12f+AMsWVyQZ4yCA0+Npinz3ark5bI5Qtxs52OQOnK76RnFCLYLCjrE91YbtTt1F4oSHMK83YDcwzyz2sCjeDKvVD36DniwKmE0BouaLgUeqrY97HjkOQ6KjLvIYoqe0nX7aaP0oC6GQttAofVE0hsKObuI/2VQoiJR8Up1aZO0OBJIchKvlCgYukysFGfWN/qIsGgu3XxuuAwZ3RfD7RoKhVOX5Mu4Z34VXi/U4HyCLqznCWNYzZow4SNQv2Bpobmdaa2QEAoAj3FJuVUkZYaNnAn8725oVdGiRebE/cTmRSK36e/TZEBEgl6g/lCeNwtL/ou92EZ8Icoe99Y7o72XWUUXj+gAgXT1NmKpeGfbmintwJolY+qxZK3yyo08alAS0/NhurEeTZfaIamKtm14vT/aN38qiiAwfmCcTookroQJ8rEvDfaezWq3jSneOPhVF/MqRbuFy2Aj0NnkdvCVJdmdxmW+NJ8bAp/ozaSVVr21RbD8Ean9h8o4PoOdClZeDKhHuC5dP2YvjEAYMQurlMK507TO4f2jZbYoHl7RrzY3pefM+i0s3P3Sax6f5E0hMhWVXeoJ5vrV1vVO4UXCPg5iVhS4IMQkxae+L3peZCiDtUphhSfJVGQVNQ7T53IHmMq/KEjlvqcq+ZVl7z4okzZJy9HgGYS8k/gUfN6vhx8RJnEf+LkKqOk7gne8dA6oBGm7uNSHWevI3skkSURopYITE/9X/j0ZCG5Xq9vfx554lqitk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I9Hl8TTCcn/POSkXIuD+2ppOGI8qTjo52xDi0srygJ3/jmldu+zYWDaHZpbh?=
 =?us-ascii?Q?wnxWboUyJXeqFNu15psn1V7O3J0BO8gU6CAuCFF+QO9lkzV9TyvNT0KGw8uh?=
 =?us-ascii?Q?STa2HXezFwKRnhi8NKmeWosKqj628OHbVCo0fzUKd/34wx+3I2tu8ikzQ5nj?=
 =?us-ascii?Q?soVenvDoR8SITct2TMHHfkYYCyKPfDVV9GyxoOAJ/1gRtBVhCPs0HXaovgyU?=
 =?us-ascii?Q?316W/7nqEAZNM3qyy13zsLdGcVNkE+f9Rts+9iasYD+XCB+nS+0Sw8T+ZET3?=
 =?us-ascii?Q?BXSmBeTgDPuiTGbRnNQtQriN6LHowedZWS9AOoVa/EWp7OYbcL8MBuX2ieJ7?=
 =?us-ascii?Q?SHSL6R9cDl0QfJktbN23msMEzzmXkiyq8sZFDfWPSnprNqgeWikT0aCTYvqk?=
 =?us-ascii?Q?CjnqCW7jhouJfn142VxP6UuDMcsOTk8Y8JKxEPkOCGicmllRJZDvEquw/HmC?=
 =?us-ascii?Q?wvBwtOuUFUQ8lhIjpXxAZ51qfgZkxj6qMUKjPjK0Y8r47CKOCfrpwtM5mzpn?=
 =?us-ascii?Q?gC+svRo+01iOi4Z5ie66WOBCAQshrameP+Y9VY5cvvcr8uj1gVjohiqXfpXl?=
 =?us-ascii?Q?WRKO/lqFVJQl8zhHHZl0jGj2mcpeUwii1prlEsgtImeY7PKvcxTKB2mBHHN5?=
 =?us-ascii?Q?sHhuKDOXv+EvXNN6KXHob7IfCX23CNW7ZNW24O5UTX7+jFQVUVy6I3qSfo16?=
 =?us-ascii?Q?ZiaPAHqW/DxhQQ9Tzo5GNK3PT4M4+X0xRTaNTZByiNYtYboWVtc2ev1yS9MQ?=
 =?us-ascii?Q?Y1Q8+76rnH4pLN9XICdgjxm+BYycc42R4UWkSx8Ax7trZjZk/qko+0m6k4GB?=
 =?us-ascii?Q?Ejyh2lRf7uomhjbdhfDILArhjdaKgCnsVJoVC3PIYWnaBpJUNzBTZ7usnJwB?=
 =?us-ascii?Q?0BGjWg8C8bJkK2r9CVIFAUQyy/XaFrGma3B0kmYbyG1FpqC8zOFMokz3/n2F?=
 =?us-ascii?Q?eab/vJWH+V3L/xhPNbe2dZYRa2UnMqnImcEg3ibm1DSiO297XiMPEMY5Paht?=
 =?us-ascii?Q?jmiN6Sb54pjlMTxoOrtmRLR+XjQM09u8aMC83jeJUJAXYns+8zmd0Z+jn6mm?=
 =?us-ascii?Q?uRb4B0kZLYTBvBdWrSfU8d1AXNoFr4GJmjh2pQJkslvDURWKLZds6C+lNeJy?=
 =?us-ascii?Q?7MxV1+UyS/ip6L0obtDT8Dh4HPNwXg1In/P5vniEaP1i+SOJBzsn6fr8d5I/?=
 =?us-ascii?Q?qvOuT0npe4KY+5bv99uG5CNmqke9LlJlSOMMUM0qb54t743rs+exDQZZbAFw?=
 =?us-ascii?Q?Hb+5x5epMzxnU3Uw36yfuTcmwHeToJgdU+KRlb0yeZg/zKkLelrhr/59yOZu?=
 =?us-ascii?Q?JguUfQDMeXmc5XdUMesUQDgC6OpO5fNawe19EVPvVpgs6AaDKXb/4yDEiIPb?=
 =?us-ascii?Q?5unzQgHR3Gs2QRGsaJME5U9jl0VGuyLg9/HzqtrNAABcPZx7tWkwV0CeoCPE?=
 =?us-ascii?Q?1ZkhAWyFMYgu+sCJmOpqkHeM0ikjssNJsglDG1083PpipaGTB0biLtrQpcRe?=
 =?us-ascii?Q?0j1LZbju23dSPTP/FNrLYHyEmojz33mwtbJBkTVl7H1cF5m3yS4uezqda2gD?=
 =?us-ascii?Q?NAa8rqBTIkkB2975RtUxsDN2AC13nukX9YZSSTxBE7C95Z2mz5fB1qN/UeSx?=
 =?us-ascii?Q?GKygChIi8SW/OK+cbQFPyhem30gj8VdagU2EsWj2ZP12SVzTXtXEnTvdsKOF?=
 =?us-ascii?Q?hz4vBoXRs6juBa3kqTTWzxNKyauVss2PxYg/bT/e5Ubqg1H3myu4OafUbPLu?=
 =?us-ascii?Q?rTNHT9U7cg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: IgLiQwBW7ZxXpeLr/CpSoJ5DWoics1XmzrvJQmnIyAfXrTR0s4DTam3LVMCeS7rY3G9oqay0tk7S+5bP6gPuGNScQdtN3o1/UzFW3wAEifLNehsKLz25j+u7dzYJ9Qwbfwt5Dr5JmRdQ/pzrthKeCiOBQ1a9KAS2M+42ZMXMY1KLcupvjlEEDvAUDbZycP1usdcTQkuzdhT/nysoMQgZ8jHis9U8y4Ouuvzh5+9Js0m1NlIu3UO4r+rn+oT09/Dnev3gOXGy2df1YXfW8hVdnV1oPLUFsdhOi6hFJi34PTFEKyy2yn1kaoBhEZdOLzPQFS43zYnouJoN2Q78aavpIg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbf68d8b-607d-4a92-db0f-08de7f2f643f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 05:31:05.4951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LQqAdjyrfYIs/lp0R0+6ZU95TECHNF+MyMrTjYt3Cpi3VVBxXzKwJEY59X4cvuQdPsrqk6HGflpQDOuzoDkccg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8765
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
X-Rspamd-Queue-Id: 8AC2525C70A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
>=20
> Disable PLL clock on DDI by moving part of the PLL disabling sequence int=
o a
> DDI clock disabling function.
>=20

Commit message needs to be something like
"Add new pll_disable_clock functions so that they can be hooked up to dpll-=
>disable.
This is just a wrapper over the exitisting intel_xe3plpd_pll_disable to mak=
e it compatible
With dpll->disable function"


> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  1 +
>  4 files changed, 25 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 51403d09c477..191ae7cf81fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5299,7 +5299,7 @@ void intel_ddi_init(struct intel_display *display,
>=20
>  	if (HAS_LT_PHY(display)) {
>  		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
> -		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
> +		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
>  		encoder->get_config =3D xe3plpd_ddi_get_config;
>  	} else if (DISPLAY_VER(display) >=3D 14) { diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 54c7a255b3a5..28c560417409 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4607,8 +4607,20 @@ static void xe3plpd_pll_enable(struct intel_displa=
y
> *display,
>  	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state);  }
>=20
> +static void xe3plpd_pll_disable(struct intel_display *display,
> +				struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_xe3plpd_pll_disable(encoder);
> +}
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
>  	.enable =3D xe3plpd_pll_enable,
> +	.disable =3D xe3plpd_pll_disable,
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
>  	.get_freq =3D xe3plpd_pll_get_freq,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 6bc32d1734a7..3230d2e28d9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2309,6 +2309,17 @@ void intel_xe3plpd_pll_disable(struct
> intel_encoder *encoder)
>  		intel_mtl_tbt_pll_disable_clock(encoder);
>  	else
>  		intel_lt_phy_pll_disable(encoder);
> +}
> +
> +void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder) {
> +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		intel_mtl_tbt_pll_disable_clock(encoder);

This is already called inside intel_mtl_tbt_pll_disable clock.
Is there any specific reason to add a wrapper around this other than naming=
 if not
You can drop this wrapper and proceed without the below change
-		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
+		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;

Regards,
Suraj Kandpal

> +	else
> +		/* TODO: remove when PLL mgr is in place. */
> +		intel_xe3plpd_pll_disable(encoder);
>=20
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 9188ce980119..3838e9326773 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -49,5 +49,6 @@ void intel_xe3plpd_pll_disable(struct intel_encoder
> *encoder);  void intel_lt_phy_verify_plls(struct intel_display *display);=
  void
> intel_xe3plpd_pll_enable_clock(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state);
> +void intel_xe3plpd_pll_disable_clock(struct intel_encoder *encoder);
>=20
>  #endif /* __INTEL_LT_PHY_H__ */
> --
> 2.43.0

