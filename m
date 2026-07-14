Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PWpkGhsIVmogyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:57:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE30B753249
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:57:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=iDwpp2HN;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665C610EC8E;
	Tue, 14 Jul 2026 09:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6610810E682;
 Tue, 14 Jul 2026 09:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784023064; x=1815559064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y+4drYf9/TACw8q3bvd49Ac8dGf2u8Rjsi9aaa4gWQ0=;
 b=iDwpp2HNfK3NqibIig6bDoBtslJfUXJs0jLqMB5+NBYBsweunU/vB3qm
 7fPZanMsI4dY80JvtKAG2Ibk6r0ZB7W9df1VaFXPXPTuhF0R6H9R1rVyp
 38S8+rKxHJbzfWUOZmHnIokVHe0dVRUU+euzTm9Kne2l+viiaSGN/yqPz
 7bjmAcDqSm4ak6kf9jX8qN3DX5maqqOatMHJ8Ypo/f1K9ukMsRr2j/sc6
 s2KswuBSq4pujmCdETpR/t/w3kDFdTiXgWMqkQ/v3g+GVlxFCCvDJOA9a
 plUuddrPDhEB/wxZXQROZAYNbQ36swSoFwS6eD1P15rjP45kQjzioQTwk w==;
X-CSE-ConnectionGUID: 3+rrrABMRcaLa7CNrfMLnA==
X-CSE-MsgGUID: ahPeHmdIQOOrIi+uyjIV9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="94993726"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="94993726"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:57:43 -0700
X-CSE-ConnectionGUID: rqi8ONBYQ3mSJq4ATZVTrQ==
X-CSE-MsgGUID: VCBF3csORfqSyNvpKsLV8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="254687264"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:57:43 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:57:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:57:42 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.50)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:57:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BX9CRQ2VozUql43/RXWT38wxHdZGwEEOwPpkQTpntCgTtFsdJ23wZj/FpDrJGh7RshyBRjHS9gDGnq57DkvCuMysO57VPsfqgU469bDjXdm515Am9M3uIkoIXMTT9nP8ENUWTHgdqeITDJJTjxHVmqeaU3pJ4IXJWoV/TrgzI6QTkQ9xtRm4sA7dmt34Jcx48WiRb/4lzfI22Y944KGpdaJ/vqOVTmtCTNGerAeWNBbkXm+hH9QZefLo2Og5EF1X6AYhOidQwOCfHgqciue/Q8oCcmrywwck9RG+a7PnFBhRmySrOP7/wFslSVFYsOs0VvU9+gWixJvPsDDl8WYPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gv4WFH7LbUQUUn26HJ98GkNBFadApvmsH/7mwuoJoZA=;
 b=tqyw/6L9paMAZtn9HZLK0Rzl1MxwKhUspWCT5kV3Xco32j19k41FrArmJvAaS1w/Tc7k0eCygsl9bP1c6hMN4mQK5EifBJggzxnKruhDnPtSCVGKagzHecgwNDwKOlkoNh7GEuCKFSTG7wbvBhVXRQ1qH6CHrvojXFViTZrtEq6P+xhvPJq+5fn4UHbIZBjblEqQtYGdGhreoU+jWRh6eJNej+u6/bH0+rpS5IoH+ykoDs4fXO6jQd4juVMY5edrQgXj9K7xNDJBpB1G/bPxhIoLR09P1WLTvsH1BHm8JJjY2aGPDR0Qxsy/9PzhK9ohWqEEopoVOhN5afB90o6ttQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW5PR11MB5882.namprd11.prod.outlook.com
 (2603:10b6:303:19e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.20; Tue, 14 Jul
 2026 09:57:39 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 09:57:39 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 2/7] drm/i915/pm_demand: introduce HAS_PMDEMAND macro
Thread-Topic: [PATCH v3 2/7] drm/i915/pm_demand: introduce HAS_PMDEMAND macro
Thread-Index: AQHc/Q1dImaaQigExUGF7GqUsEjPobZs9DBw
Date: Tue, 14 Jul 2026 09:57:39 +0000
Message-ID: <DS4PPFE901A304FBD87B19763FD0FC929BDE3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-3-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: 76549704-781c-4c81-4ef9-08dee18e571e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|4143699003|56012099006|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: XjTDEIvvDybz3HCGBIck0cLFwL++ErgPWqPjdt/u2pXA5PKsAmbNlPNNz/UMUHt1pPD9uHd4ak2YealBEvcMrnDj5kQExGvI8WRQTBsKZRNuiguPjKPFh31xZ07Rq5ULJ95wvmQNyxLycs3dvBd0HfYpTi2qJGjGvyEVb9BsHZnSrXEZqo+4anS9vCkCVVh9ewv4mAjDl5BIqCJm7EPIngQCrFHpJSV1KbacZGEiLjvblFZzGKDQ23tdYkNTbDuXJhzEgn96tjGRPb4+sJLZ1fIzJw84/nl7WmoMjzDiF/gtzn72L2ZQOcvEfve033rz6OgZp0a5Zv44yfkW7eo6H+2xRtdlxpFxEp+IX6CNAKjVty9NGwI29UAJwRoWDhigz59rTWq/1q02qh+xW46IlJLQvrJ8189mFaG7PcQCg0RVV/2SO+6fRyJHnMdRyThxrB6zYtuqqSUkkozKOo9u8Ct1z+2O/XfksaityZTsBIby70BDW1TpdPjs/adTHSE0+ThWIkvtaBqVHCqupmZpcMF1z/MRK5mbHk7LLO3ldQ5prhJazGL+GH8A/KzDvM1xsMOaUBhFta+cglqB/A5gsSE+Xh3qV3pBCzU3uixox1iR2ZuNOrgYHQTROGuG7+QtsUfV9fS8N8dk+TN4TiLDSFpLfS2CsXPkZ9Z8wrHFepXkIB8S1lbd3QX8Uj9ZXMW813i5XqhZMrfbGqixhgwSb5wIs+bZnHyBWj4/OOz8lO8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gYJy4vhXr3Ftxdhwg1uqBw2+DW2YEWFHjPWnAkkEIGMrbQznys+rCu10LHK/?=
 =?us-ascii?Q?31lCfUdqBOKabcNtc12zMzod4drhjOFmSVMtXa1guBQPP/OOY3Dcv5Xl/k/0?=
 =?us-ascii?Q?+ZQQl3ZHkfYe0U4+IgpYKW9getFrXjupIyhYLZCg++nBEilgD5uK5/CzBX76?=
 =?us-ascii?Q?jkEzJBOvim/1ayJQ046GjFoLAvwgdP1LJQDwgqvuXMKl+PPLeMTjmLqiglXo?=
 =?us-ascii?Q?bwpHzvScIB1SJRVpWEjWW0E8h2xXwkuoW0GqDi53CVxX2Czf3b/bbsaxkDGw?=
 =?us-ascii?Q?lcZ8Sinws7cAwhynPSaqytLzF8DVcZ70+j0w5Q7RAeig/iV833tmnbq/G/yv?=
 =?us-ascii?Q?GBN2NwqnfGuJM0CH8SMYZsyPfTD8WzXVRHRgF0RRUyAQB1gNfvq5pKJ7+N+X?=
 =?us-ascii?Q?QuTBVwa4Lu83tlEZoaB3hSEmCVPAgTEHyFQYWYA8Rzon9GL2XYUiqlwWotFu?=
 =?us-ascii?Q?6r6gKwaFvMOhk0BOarT2uvwLWoao/tCyH3NkN0OY9wc6EwHCHVvod+uLwy3R?=
 =?us-ascii?Q?ncyuzhG+9wye8bGPFAwRjTt2ZZZxZhxi3W2D36NYOsAl7nEP/n5GHQgIDa72?=
 =?us-ascii?Q?yGVIpMzYOoQhwtX359zd+StkI3vVbnn305x0XuU0kBplnkhsbXIt+JQegKTY?=
 =?us-ascii?Q?hNZvSj/TmA7M1GUjM1x3tsVEy6q0bj7KGAjoV83E+XCS2IPTvoUD49UWAvsc?=
 =?us-ascii?Q?iRWTKPIiJsu8/f1/Za9m5WL5PI0cbfaCmgKF9i9R2a2B4LXlhHVHNYmYPzTw?=
 =?us-ascii?Q?N1o0hxznWRgJ7vK9aSBrGC/4NjY5AtNiBHj+FY5FOk64ZTV7GgYf9sfRhxV2?=
 =?us-ascii?Q?Mf2SjvFQV6COpKiBmGwdsBYk4JyF7/UPaNMnKj/jyKqye2QZlS5KQlLSkvZr?=
 =?us-ascii?Q?dypSiTi/4sFYK2je7eYphZkUk+tvuSlNPD/HSPG2W1olQmp3ZMAanGn31XNb?=
 =?us-ascii?Q?wceemVGwncfrpMtbEkNhHACNf/RA8rTxEGy4Nsm34TOnEpwS66MWsU5/ouUW?=
 =?us-ascii?Q?HRdihq2pKWgzq7ZaE/Riltya7NM57Khwi/+ZxeKYkg6uZJpRVF7FKlUr+VX9?=
 =?us-ascii?Q?8/9VDrxgXoHKXF9zMmBTuD3Tv4j0g5tezsq/1dEtCcrBmUuDyux8LQJTPozv?=
 =?us-ascii?Q?1Xwj3fQg/CoMaYccEw1pbmU40pOfpa4WjIbLCEDV2ZpbKjAkPlTK+1XwPKq9?=
 =?us-ascii?Q?tzrgApCzB7mKtVTO8QV+Sa5zfP2uV+TRYR1IkTqdhiok1gB57KeSDFX6kT0N?=
 =?us-ascii?Q?ykyC7OeYe6SO6hIAtG2lJ3yGEX7mLWzf0TkpqpyeyJXgy+jkUr2/F3hKdbCu?=
 =?us-ascii?Q?VAQQpUxFabLpfeChjqCr8SVE8wpCOucHa19+00H8WA2+EO+cC98PZe2R6MA0?=
 =?us-ascii?Q?i8TaEnyrOMct3YxcrsTuY21VYiEfxwgjvPASzzNzxmCeFucdiL/nIMYzuJcu?=
 =?us-ascii?Q?fBqvKk0oL3DD5necr1iLWUgPw30DRXbIJKS+vwAOzhEWJKKHT1P2JVE1s4De?=
 =?us-ascii?Q?VXFikWKbCQAFb0LeY1iwemUbruX17eG5bS8+OMmWBzpHUz9eNXhPg37+G9TE?=
 =?us-ascii?Q?aWni5ax0BerBJ3fROYiP/ULWh1x876pMuZ5Xzko06KV3gO0FhgWpb5w1phEb?=
 =?us-ascii?Q?gzFiEUU39eOuJ3CRccNBXS6nHiSsTNMRYfxBvoW/iJKcuqx3AsNhoYSNFR25?=
 =?us-ascii?Q?WZaTMCXDK8cPGs2JsRdBsLbQVNR/0aPmqBB6q7lc3fCkT8ZUwVxCStk6qMQI?=
 =?us-ascii?Q?64FkeHNv6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: cX/SiTCuAIQgakBGhjhefZZg/g+1JQTMCq/xeRKyzRSQ8VyzeP5PplmfmhX7XYxC032Db6M1g9V5183tVEFqq3D9sZZ+PUHdJlwTnM0+/W2JyTrBGwvJEqrXc8Tpuu/ffkpR+lR6py1TH5ByVRPufeYPDdhTL+WzsZGbX3vWSd73XScd9fDuSwXymykcRl2hk6myDUWJ1jmwAxJz0V3FACIFxE1ffKwyvaro9uvvYJfLz2PGJ2GB6b4oERL+KpahKnuEJJME0Tra0U4H4fXbm8KZFfnMgDDZ+cg+IE8lT2DiRssv24Oq5fm8TLytAmes5zfTelxGYbT696NOq3jtbg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76549704-781c-4c81-4ef9-08dee18e571e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:57:39.6205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0sg8k/A5J2quVkY6mKIL7WwCjpQ5X6ybJ7KtX2IybmaMH6v8TvfB6MvJfPw2Zh8Ezr5Kg4dx3rkSiMrk9z0RFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DS4PPFE901A304F.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE30B753249

> Subject: [PATCH v3 2/7] drm/i915/pm_demand: introduce HAS_PMDEMAND
> macro
>=20
> PM demand feature introduces a new way to set bw, power and performance
> requirements to pcode from display version 14 onwards.
> Use an identifiable name as a macro to distinguish the pm demand specific
> changes in the code.
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c             |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display_device.h |  1 +
>  drivers/gpu/drm/i915/display/intel_display_irq.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.c  |  4 ++--
>  drivers/gpu/drm/i915/display/intel_pmdemand.c       | 12 ++++++------
>  5 files changed, 12 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 41539fdfeac5..4557de85fade 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -184,7 +184,7 @@ static int icl_pcode_restrict_qgv_points(struct
> intel_display *display,  {
>  	int ret;
>=20
> -	if (DISPLAY_VER(display) >=3D 14)
> +	if (HAS_PMDEMAND(display))
>  		return 0;
>=20
>  	/* bspec says to keep retrying for at least 1 ms */ @@ -1238,7 +1238,7
> @@ static int intel_bw_check_qgv_points(struct intel_display *display,
>=20
>  	data_rate =3D DIV_ROUND_UP(data_rate, 1000);
>=20
> -	if (DISPLAY_VER(display) >=3D 14)
> +	if (HAS_PMDEMAND(display))
>  		return mtl_find_qgv_points(display, data_rate,
> num_active_planes,
>  					   new_bw_state);
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 12e5a522a299..13e93a4b4f5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -193,6 +193,7 @@ struct intel_display_platforms {
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)-
> >has_overlay)
>  #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >=3D
> 12)
>  #define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >=3D
> 35)
> +#define HAS_PMDEMAND(__display)		(DISPLAY_VER(__display) >=3D
> 14)
>  #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
>  #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)-
> >has_psr_hw_tracking)
>  #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >=3D
> 12)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 4a821b0674fd..a58bd54e2dc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1262,7 +1262,7 @@ gen8_de_misc_irq_handler(struct intel_display
> *display, u32 iir)
>  		}
>  	}
>=20
> -	if (DISPLAY_VER(display) >=3D 14) {
> +	if (HAS_PMDEMAND(display)) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
>  			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR) diff --git
> a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2e51dfcd5dce..03f860313515 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1122,7 +1122,7 @@ static void gen9_dbuf_enable(struct intel_display
> *display)
>=20
>  	slices_mask =3D BIT(DBUF_S1) | display->dbuf.enabled_slices;
>=20
> -	if (DISPLAY_VER(display) >=3D 14)
> +	if (HAS_PMDEMAND(display))
>  		intel_pmdemand_program_dbuf(display, slices_mask);
>=20
>  	/*
> @@ -1136,7 +1136,7 @@ static void gen9_dbuf_disable(struct intel_display
> *display)  {
>  	gen9_dbuf_slices_update(display, 0);
>=20
> -	if (DISPLAY_VER(display) >=3D 14)
> +	if (HAS_PMDEMAND(display))
>  		intel_pmdemand_program_dbuf(display, 0);  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index 6d32c52269a6..f96545a5b881 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -152,7 +152,7 @@ intel_pmdemand_update_phys_mask(struct
> intel_display *display,  {
>  	enum phy phy;
>=20
> -	if (DISPLAY_VER(display) < 14)
> +	if (!HAS_PMDEMAND(display))
>  		return;
>=20
>  	if (!encoder)
> @@ -174,7 +174,7 @@ intel_pmdemand_update_port_clock(struct
> intel_display *display,
>  				 struct intel_pmdemand_state
> *pmdemand_state,
>  				 enum pipe pipe, int port_clock)
>  {
> -	if (DISPLAY_VER(display) < 14)
> +	if (!HAS_PMDEMAND(display))
>  		return;
>=20
>  	pmdemand_state->ddi_clocks[pipe] =3D port_clock; @@ -324,7 +324,7
> @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>  	const struct intel_dbuf_state *new_dbuf_state;
>  	struct intel_pmdemand_state *new_pmdemand_state;
>=20
> -	if (DISPLAY_VER(display) < 14)
> +	if (!HAS_PMDEMAND(display))
>  		return 0;
>=20
>  	if (!intel_pmdemand_needs_update(state))
> @@ -404,7 +404,7 @@ intel_pmdemand_init_pmdemand_params(struct
> intel_display *display,  {
>  	u32 reg1, reg2;
>=20
> -	if (DISPLAY_VER(display) < 14)
> +	if (!HAS_PMDEMAND(display))
>  		return;
>=20
>  	mutex_lock(&display->pmdemand.lock);
> @@ -637,7 +637,7 @@ void intel_pmdemand_pre_plane_update(struct
> intel_atomic_state *state)
>  	const struct intel_pmdemand_state *old_pmdemand_state =3D
>  		intel_atomic_get_old_pmdemand_state(state);
>=20
> -	if (DISPLAY_VER(display) < 14)
> +	if (!HAS_PMDEMAND(display))
>  		return;
>=20
>  	if (!new_pmdemand_state ||
> @@ -660,7 +660,7 @@ void intel_pmdemand_post_plane_update(struct
> intel_atomic_state *state)
>  	const struct intel_pmdemand_state *old_pmdemand_state =3D
>  		intel_atomic_get_old_pmdemand_state(state);
>=20
> -	if (DISPLAY_VER(display) < 14)
> +	if (!HAS_PMDEMAND(display))
>  		return;
>=20
>  	if (!new_pmdemand_state ||
> --
> 2.43.0

