Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIS/CNMHsWnhpwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 07:12:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808BE25CB45
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 07:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC59E10E31F;
	Wed, 11 Mar 2026 06:12:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlIUeT3U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1071E10E31C;
 Wed, 11 Mar 2026 06:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773209551; x=1804745551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cyPDSROv2cfsgGXSLF8dZ9AM/ojcyWi/bmdfL2k7nqM=;
 b=mlIUeT3Ug0h6+45Ig2Dx1blpS7ENTLonGRhbEZZ5MC0cJmVgbzJZqQyb
 wDZbm6pgD/zIIOg6wEvh3gTfQv71qPkI0CgrG5RvRJoW4cP4a2P52nUFj
 zemKKZQLzbfZNaFEJ/b82vm94dHq9RJFqelC1cwmkPPTGVihIFa8lWbPe
 uDlPdWfX9t0G5+2ykI3TBzCmQyj2uJK+ANxXGQA6cQSBzrs+NbJUAjUTM
 i7IAUkW6tEmdvZ2/NJwjrMclx1pfQgYzL0eYXVy/Wxn4/VkcQ5/S+X51h
 +w4XjUx1RZ3QYRTWzgLvwuBdrlBmkJYvKTa5zhSxvatw8neQi38GvYbln g==;
X-CSE-ConnectionGUID: wOqmgXfvTVyVvo72iXoE1Q==
X-CSE-MsgGUID: L2p+8CXGSouCVms8XPL7PA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="77874476"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="77874476"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 23:12:30 -0700
X-CSE-ConnectionGUID: mQSPW/FPRGWypvzcz+D1gA==
X-CSE-MsgGUID: tLfwomUGShSChIRjhTJtmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="220307943"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 23:12:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 23:12:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 23:12:29 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 23:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iKDKvhFzeWZZIVYQGWMkt5ojlHj23YDaUr/1WcB/H8tDLJGSFmOJJPdnSSQnyqm6rDM1Pwwyv9zcGam+mtPEehWcRHtbCPGIRha7egK4J4S0LqwomGMtgueDOh0GApqt2bjn7rPr0aIim3qT+zYaLNTEZWf2OVARfBcQNsOE8OttqewUDI/6/f9n2+kW8nHZMSl7bfGLfG8k3rjhl4QDSqvxZl359qUHaRnTsM9TK/D4qjlsuXi0H75zflp1r9eVLe7v6PDDe0t+FYT7LT8A2xxhiGGk103uJb9h6IBqTHA9QNmUL49NVlgu8OxNMMlciWBulIBAwWmz8cVisG7Rcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pqeR2E6t0dL+XJPEaSVILQk1Lv723CPxEv3r+utAgLc=;
 b=E24FB4i6XMGIk8GfyieT9p/v1bUUDf16ovFgAEX+DaVn+rRa4V58LK2nPePQ0zbrs/nGDIXPq38R92Lc8NDwKeiM2wnLKpf7DYyMH3yTXW5AU+6T7u+v509PMSxciLnu3GRRVCwxNibuZUfAK086irOahSwF8q9iEu1VRz+K69UoGzfYnT3ToJBkQr7dcXx3qU9/kZDu4fXtl65F+gxVaOqLWOxAkd446aOCHsicRPdbGulCg7BPtEm7iT6jBjtgsk43Ikx50nIfRji3iZ7qcw8nMokjiz0AeuEDyslxAvBt+4XDFkORhH/QWXGi5KrSaR5NWSrgagFt7VVXhFUlyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5889.namprd11.prod.outlook.com
 (2603:10b6:303:168::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.13; Wed, 11 Mar
 2026 06:12:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Wed, 11 Mar 2026
 06:12:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 24/24] drm/i915/lt_phy: Enable dpll framework for
 xe3plpd
Thread-Topic: [PATCH v2 24/24] drm/i915/lt_phy: Enable dpll framework for
 xe3plpd
Thread-Index: AQHcq9phKhQiaASwPUexKrS2qhnBZ7Wo4+/w
Date: Wed, 11 Mar 2026 06:12:26 +0000
Message-ID: <DM3PPF208195D8D902D074B42F07D93535DE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-25-mika.kahola@intel.com>
In-Reply-To: <20260304131423.1017821-25-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5889:EE_
x-ms-office365-filtering-correlation-id: c642d7e3-bc7b-4703-f1a5-08de7f352b23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: molDMaH4bJ04VlSS1l6aVv3a3CeZnZ4JzsVKEmlj2+7MaNO66DvahQJ460Mdvs+Q1bwauJmSRjJG7MaqYgdt9Affh5aqTWvsGLEMSTnvHEoIOi7cKf+hL7vwT+vTzT/M3LVHg+RRKA6Fp3eEkMfoDvyy5jKWUjgrWAQjrkiGZ2mrHosZbzmnm/FuzEI+YlzjI4hJcxTvg8/72h6y1MN2ZP7MwDJVJnm9rsS55gB3daW5OHz4ShWKzf7vlXfCwvCCCOGWS3QISaMV8SnegGTK1PQHDGJ4+PZ8A4EmJAaYs1LOn8KweMMfR2/2YGT2/KjarxyXlDVp3QfCA3+H2iF5IoMRL3OLL6Hw+i+vXPVS9smOMgq2XXlDS9IRdAQkVTwd2Fqs88SDghefGFdeQbOsZIEMipvN8AK8R2/wi0mNaZupSsIXphhTffB3VFnEde/Nkzw3g4KbYBmPOyAK6XjYmF2m2zm55GhlcEsXgUYZRjPt1uVjZCsTu0FlG92o+xc5+kYqpNNGY3oVgeklUQSDFdrJdMYExeDVyWBNsrBXTRiPMvxmv5DEWWmISul/L/fZuu84+bLZNdFAPv4FHR3E0GAxaTDcBkxJA7xivh/ooIzouWfTXb/S+MZwwEfQPJWwI8jMmmurx/SrF6z7YQqMO+6X5WPHQMZh5s72DwB3TsfSsjVjP49nIRmnTT9xcNldpYMw9LsQAjEppyLFiz03GGYVxhjpQ17lsxckZa/p2rDa85X+DVsUQ+ws4Uhi2u19qCoQB0eNK2hBiY8YyvSMwf/EFO/OQ9TFmcWCS9W5iy0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?skPDplwiCrts/15ZWkoVA7xcEwhGOlJA1znrrFnudF+ZDTdwn24Q6wCU98fO?=
 =?us-ascii?Q?e4TNDWdK9q5ZmlvDD6ciuTSJCCVApGqKhLeS/lrjhoWXXRMiOP4tWi4FSSoQ?=
 =?us-ascii?Q?rRIGhzuUL5lg83dnzs6clNxjJMFOG2DN3G5Q1RqpUpW7I/C9Io1lBQ6rRMF5?=
 =?us-ascii?Q?2tW22QJCuDLryiyqMmJNfb828utmMwV9s06CkDJQFkqHnVKXiDTbimZz8M0O?=
 =?us-ascii?Q?/cy/gM+KBIq6BvyBhS9Cks6DCg/VSsOWoC+/rdgE+m0KRQrhGKT6DT5kDGjX?=
 =?us-ascii?Q?QzcRWVRC61RC8M1Cy8eZx7Ipw+KjR+sjEuNrXZa3H761v/v0eajJSjGuXrx9?=
 =?us-ascii?Q?Md+/Ut11STI7ea85oWsAnwov1pdHOmt8MH+V7xPEqltiMuUFSLbx1Q8gtV9V?=
 =?us-ascii?Q?4FVrV/9xSslHYY2+E8cjGrA2mi3+NprvU4Eg2Dh3Sg1FczyJSrdAYrsl+36Y?=
 =?us-ascii?Q?mb3qYtphN2xuY1Aec0mAEQ/22yjNRmcNyB7jMcOyxa1Ua4fAgbJevneRcq3j?=
 =?us-ascii?Q?s2OkHdQHVMFDumzPVVpN88zTAG0kYy2LW+lTJmzokrA+mDdFr8mr3SdzVu5h?=
 =?us-ascii?Q?aloXC5DfljqTrewXm0T+iKZhLyHkD0Hn1eDsGmLxsT8r61mAw22OamdYF5EX?=
 =?us-ascii?Q?538krQN2AmIy8VPDU9MCaIUchCgXef8ROB/jAXHRyFtSsVEi5slelQp2D8Xg?=
 =?us-ascii?Q?mzWIUN0kFTqmByu29dv+DFU5v1e2+IaBdu/dcTsQCyvSMQ5z1D4/Eoki0byZ?=
 =?us-ascii?Q?QclRYLGh/SA6+XisLWa13djZWq7V3LMPSgRE6sFdsuXDYQnggYu2/UszalZr?=
 =?us-ascii?Q?P0uJl6OLyCUbPNUjni+fvkY5arT5YjUlH8K5bEWOdFanSJlF4jGiWkIjvFCE?=
 =?us-ascii?Q?gju8A3UitCIO4gbEfjiUnz0FeZiWDXrO2W5dF4iQUxAIhazYg1y9OZwliHpj?=
 =?us-ascii?Q?12o7kUevrdR2YbAyAOdz1PRziIiP1L+r8n512YLvn33+3EaIycCkPmxiskFx?=
 =?us-ascii?Q?WF1i2wVS+XSQgABxFhU28J+FBMr/2wdx5hJrBHVEVGLHYVaMyCU6YESOAwyz?=
 =?us-ascii?Q?aB1oZJ1255kOJolYMQH+EkUP9i6xNdFqnTGlsmxcXsD/1K3sqeNlzSYh/Edf?=
 =?us-ascii?Q?Yky+twhRjJrgQO1IEiUyJxOc/cwtO86qaAigYhgkxAC8zI691jZAQKG2pTQv?=
 =?us-ascii?Q?BdEBtEXwikBgTzplg3Eph1ZYmOwFjsAKn6fB5hNsI62yA+750Y6mI55WkdGb?=
 =?us-ascii?Q?Z/L27ItlStqyb6YbT9GWsSO6u1PEd9Bjc2joFJZcjIwQRQ7NI0Xf4PzoIz5j?=
 =?us-ascii?Q?3D3JIU1yeLZ8oUxsaJKouOpcJIwXCf8guaIvYQK4KlXjYnhJOtHw8vSsWcvb?=
 =?us-ascii?Q?xk8K7J7+ZH1KH8Lozm7+voutnKvA5diLQLnhjvWIcK5WwwXGs1ale94dyXIa?=
 =?us-ascii?Q?v5Z88+H/Kj1Sn10SIo5aDxu1X7PmG+srQDzz+p62ceI4KFr+lpu5jS7cacbM?=
 =?us-ascii?Q?fpKYPUmo3RWn6DNfBzsVRfZs1VsgZwgv61sfGGlx3UJBCNxlaC6etkr0Plys?=
 =?us-ascii?Q?WA1dp/LAXsUtxgW2qIk5sEjFBA62OaAP1d7qT7zQdd/bPl9uVoIwhXKIMHEb?=
 =?us-ascii?Q?mh7hNx4Jx/hv9Gjd1inKrTMlGCTCar/udAhNo86B3mHaoFQNVdMUagU/jppl?=
 =?us-ascii?Q?Vc1lh1RrgRbThPYMjduQjWlA6QGvsVT/DTttG4b6y7iE0UTtaQ27RubELtna?=
 =?us-ascii?Q?QPZ16sE52g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lPJW+xSxLhB3HmkrjwCafSHGxiW8gUK0In/+0ekLt7SbjOOVxblL0nmm0k57E8WkthG36yvx4CjWZYcg0nljpBxWRIdVxOmBHN21/sIyCKiCRjVwXQBQrMiDLJD+529M2TzkzU4qOVZ4687h/2wESYuC/+o4ko1nRTZEcUG2/gN7/bTyGXA9FZ705yrX+VXJmRBk24xAJojazqCz6xQMDXJSeIrFjDXrmF3vx5zbfOnkRsCy/fuMzX+yO0KvVMdZqgBZx3baAlLcyMT8nNy1VMHo0kIrXhSzb7STUbKYx8YXJX08Q6BRwYoM9Wbi3ELE0q9FkSPdlpy86tcLWnhtpQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c642d7e3-bc7b-4703-f1a5-08de7f352b23
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 06:12:26.6885 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sXSuqtpiWPmqg4lTDSlRp2z8rlOWwqZ3IQ3Trr8IOTjQpqcgkG/Y47VLS6iWK+uSLSXOxgvaa4vaVEVyfl4tpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5889
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
X-Rspamd-Queue-Id: 808BE25CB45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v2 24/24] drm/i915/lt_phy: Enable dpll framework for
> xe3plpd
>=20
> xe3plpd platform is supported by dpll framework remove a separate check f=
or
> hw comparison and rely solely on dpll framework hw comparison.
>=20
> Finally, all required hooks are now in place so initialize PLL manager fo=
r
> xe3plpd platform and remove the redirections to the legacy code paths for
> clock enable/disable as well as state mismatch checks that are no longer
> needed.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Patch 16 need to be moved after this patch according to me
While also making sure that the change in patch 14 where we drop=20
-	/* TODO: Do the readback via intel_compute_shared_dplls() */
-	crtc_state->port_clock =3D
-			intel_lt_phy_calc_port_clock(display, &crtc_state->dpll_hw_state.ltpll)=
;
-

Is not done in that patch

Rest looks good to me

Regards,
Suraj Kandpal

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 31 -------------------
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 +++--
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |  8 +----
>  4 files changed, 6 insertions(+), 42 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 385d6b26693d..c3cceaf781ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5285,7 +5285,7 @@ void intel_ddi_init(struct intel_display *display,
>  	if (HAS_LT_PHY(display)) {
>  		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
>  		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
> -		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> +		encoder->port_pll_type =3D icl_ddi_tc_port_pll_type;
>  		if (intel_encoder_is_tc(encoder))
>  			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
>  		else
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index d67ec81c0b01..af02a666c3a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5058,23 +5058,6 @@ static bool allow_vblank_delay_fastset(const
> struct intel_crtc_state *old_crtc_s
>  	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);  }
>=20
> -static void
> -pipe_config_lt_phy_pll_mismatch(struct drm_printer *p, bool fastset,
> -				const struct intel_crtc *crtc,
> -				const char *name,
> -				const struct intel_lt_phy_pll_state *a,
> -				const struct intel_lt_phy_pll_state *b)
> -{
> -	char *chipname =3D "LTPHY";
> -
> -	pipe_config_mismatch(p, fastset, crtc, name, chipname);
> -
> -	drm_printf(p, "expected:\n");
> -	intel_lt_phy_dump_hw_state(p, a);
> -	drm_printf(p, "found:\n");
> -	intel_lt_phy_dump_hw_state(p, b);
> -}
> -
>  bool
>  intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			  const struct intel_crtc_state *pipe_config, @@ -
> 5189,16 +5172,6 @@ intel_pipe_config_compare(const struct intel_crtc_stat=
e
> *current_config,
>  	} \
>  } while (0)
>=20
> -#define PIPE_CONF_CHECK_PLL_LT(name) do { \
> -	if (!intel_lt_phy_pll_compare_hw_state(&current_config->name, \
> -					       &pipe_config->name)) { \
> -		pipe_config_lt_phy_pll_mismatch(&p, fastset, crtc,
> __stringify(name), \
> -						&current_config->name, \
> -						&pipe_config->name); \
> -		ret =3D false; \
> -	} \
> -} while (0)
> -
>  #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
>  	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
>  	PIPE_CONF_CHECK_I(name.crtc_htotal); \ @@ -5425,10 +5398,6
> @@ intel_pipe_config_compare(const struct intel_crtc_state *current_confi=
g,
>  	if (display->dpll.mgr || HAS_GMCH(display))
>  		PIPE_CONF_CHECK_PLL(dpll_hw_state);
>=20
> -	/* FIXME convert MTL+ platforms over to dpll_mgr */
> -	if (HAS_LT_PHY(display))
> -		PIPE_CONF_CHECK_PLL_LT(dpll_hw_state.ltpll);
> -
>  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
>  	PIPE_CONF_CHECK_X(dsi_pll.div);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 63a0469d4e65..c4add325d8d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4724,7 +4724,6 @@ static bool xe3plpd_compare_hw_state(const
> struct intel_dpll_hw_state *_a,
>  	return intel_lt_phy_pll_compare_hw_state(a, b);  }
>=20
> -__maybe_unused
>  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
>  	.dpll_info =3D xe3plpd_plls,
>  	.compute_dplls =3D xe3plpd_compute_dplls, @@ -4750,9 +4749,11 @@
> void intel_dpll_init(struct intel_display *display)
>=20
>  	mutex_init(&display->dpll.lock);
>=20
> -	if (DISPLAY_VER(display) >=3D 35 || display->platform.dg2)
> -		/* No shared DPLLs on NVL or DG2; port PLLs are part of the
> PHY */
> +	if (display->platform.dg2)
> +		/* No shared DPLLs on DG2; port PLLs are part of the PHY */
>  		dpll_mgr =3D NULL;
> +	else if (DISPLAY_VER(display) >=3D 35)
> +		dpll_mgr =3D &xe3plpd_pll_mgr;
>  	else if (DISPLAY_VER(display) >=3D 14)
>  		dpll_mgr =3D &mtl_pll_mgr;
>  	else if (display->platform.alderlake_p) diff --git
> a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 032fd80664c6..31669a435582 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -11,6 +11,7 @@
>  #include "intel_ddi_buf_trans.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
> +#include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_dpll.h"
> @@ -2277,9 +2278,6 @@ void intel_xe3plpd_pll_enable_clock(struct
> intel_encoder *encoder,
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_xe3plpd_pll_enable(encoder, NULL, &crtc_state-
> >dpll_hw_state);
>  }
>=20
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder) @@ -2298,1=
0
> +2296,6 @@ void intel_xe3plpd_pll_disable_clock(struct intel_encoder
> *encoder)
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_disable_clock(encoder);
> -	else
> -		/* TODO: remove when PLL mgr is in place. */
> -		intel_xe3plpd_pll_disable(encoder);
> -
>  }
>=20
>  static void intel_lt_phy_pll_verify_clock(struct intel_display *display,
> --
> 2.43.0

