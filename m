Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNVcLxE2B2rftQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:04:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD19551D95
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 17:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1E210F55A;
	Fri, 15 May 2026 15:04:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGt9K4ph";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276F210F55C;
 Fri, 15 May 2026 15:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778857485; x=1810393485;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4RYjxNHYfk1C3PWdncweSDU3Au7ntJqFqAXfARJtrGg=;
 b=IGt9K4ph2ATab8DoPWlWwrRJWXnhNDKtd4xbuiJQZAywmHAWOJse1PWC
 UG4+mQzrxMauWtvawqRSKK4ecoonIMznswvOx+k1KJSNbw4vV+lCnBN6h
 vC/IPS20drKvpwPmEESfTNL6INFo5hvrEktGp5HH/2sBX+BHVFyJJI7ir
 L9KJeLxzxiSfKH6q5nepGbblVe0USbueY91EyDVbeuU592AhH8N1xjm1x
 V13X/7nhvDrQeCgZkTm09oJEWzgwD16bgUWIQ/O0+gjr9mH9tKrlx3rqt
 NtKbQHwrETBnCCrvqc/8vWxrunyEMTAHDmTJcd17q/2khJayPb9F7aumC w==;
X-CSE-ConnectionGUID: sZe4IiOSRTSA0tFzck6Fdw==
X-CSE-MsgGUID: degkBf7qQliSZ8YdRlwf2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="82379540"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="82379540"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:04:44 -0700
X-CSE-ConnectionGUID: IaEvFuiMTf+2MzpUaoLtYg==
X-CSE-MsgGUID: ZxlCg8g4TyaDWYfkj2Id7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243688543"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 08:04:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:04:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 08:04:43 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 08:04:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kR3xsfMTJ0G/9LiqAYu6amQO9CgWlrH3ayA5ZkqiMnaaNCOGt1qJ3BWhkUUBXQJN6NVAc6PwOjXpxC+AVd289EcIJohDk5K2PpyGz2pkKW/iKYHZ2LiYccdS/pj1zUQ51UIxhfczLaB4Ys5TIjoKERzhU+j2bf6xMQ8K93Vt8jwazFXmmIBrT9Etr2HgAaf0J6BDexy/JGZmvFFehTtNs/tTNUzlViaTNBnNNj7LPEuO3WVI+sJG9n+J2RnS/T19ljQA6MkPXPN6VMilMo62WGceuqn60WwpjvBZRLCRjHJWGV2OjIdYWPvAOxMjqVZPwONvi4ZUxOsFVBGgo2ckzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GgnLEDwc/tK+ATo9R/3YX2uvvPj8jsWDsmeT+cqUqS8=;
 b=emfhIqhcNKdEz3uZdp1l0TFCUAKaQJG4VIeCN44dkGoIqY7uS2+9/HK/vMfpZdAFzbQcQVWekxzRGZ1BrkukWRbRPqxUk6DU+wGmmM5tewoco1XiOZGRa0HRRDW24hTEOsymT9iyWV28lsIs4i43YQGWxn5iqH9wUaVn9aQll6Co1kMw+b7PoHC2ERh2I/+fWkjbAFZGN96cFLOhUYCiLjYlTFDeXLE3LrFJ7B8PX9kPVD8vfPT0iLXF0UJ4vVK7zHxguLL4Y4k2Kyn51Aj6Hl4NtPzUcY4bxVBoFWZCqpxEvgwtT7FaVLI1LUzFVgpZyrgDlbRRldr5TitnRzw1nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9376.namprd11.prod.outlook.com
 (2603:10b6:208:570::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.13; Fri, 15 May
 2026 15:04:40 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Fri, 15 May 2026
 15:04:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver >=
 30
Thread-Topic: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display ver
 >= 30
Thread-Index: AQHc5ERRwRj9Up3Kxk2Kig5c92abY7YO4J+AgAAA1nA=
Date: Fri, 15 May 2026 15:04:39 +0000
Message-ID: <DM3PPF208195D8D3C889E1900D95DEED712E3042@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260515082443.975592-1-suraj.kandpal@intel.com>
 <af6c1f14f5b4efa0d3ecb34848f9f900fa8f97e5@intel.com>
In-Reply-To: <af6c1f14f5b4efa0d3ecb34848f9f900fa8f97e5@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9376:EE_
x-ms-office365-filtering-correlation-id: 8d7c649b-0f10-4a8d-96dd-08deb2934979
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|4143699003|11063799003|38070700021;
x-microsoft-antispam-message-info: 0QG0qI/uVdXIvYW8Nccgwyl9t5PMYu8XGrO6XaCTokWFJ2lFcA69F/bXLgSQJic8C2RlAjKlV0HkeHEO2DRsoYpyqww2zbFhNCMZaEvGpCNlv0ddppzg5qzEPuoykzOqdBT1k3JIBO5f059i0pFZCivY0SsKwkDriq3cYhiJkk8EOVNFYaTORTeDLVwuLd7ZCJetk5Z4mxmwjM1xHKAytAa4RFimiIIih4IiPFeg5SA6e3DxJwNDmrsbgRD1kIacPVCeOPgKFcjo6oUEJdFQcSLS1fmYSsRTTi3eag1LVvcIrm3LixVFUA5NF8cF9ztvkktggTbvpptBq9TUrRW9dQBXOdmdnLt56t25YwnWOB9vqkzmlrmT6zkwRAhRFnmmUf5BT8FVXWHUGbfCO0em5ZT4jWoPjC0MaRQMv/WdWAot8o2SHQ397JhnIzn3eHNbDJ+YY7PFaXGwF/5Nj9Hnqy3zbd5Bu9RpadBkh4PdqxwNAI1hRwcrSdLslDFLjGL7qcvRipiSki7Q1UnNBNBgW/cWVYrLGlAN4fseO+u1yzeQAtFATkwkW8KfEGmdUw9D7vlgI+WOoH12is69xtl2RujVqE00krq67Pu1TKiKJ0Q0cdc6byXV9KbiyKJl+lAS1LXP09M1LhLwUZ8Tq+qLkvd2wXLKbHebHWaM4LtRGvUKVI9sBqSFNbU1zqCt7KXUK6rB8PYvLrqOjzmSfpP8uQCBrYkFzzcYBQDStGMoPJ26D/D66/q+QNTj+JhOpXem
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(4143699003)(11063799003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?h78mHDIipuhuThfg4E2DOvl6ysaL7viTpdbcrZREHlnh+puacvQ5WyZ8DbMe?=
 =?us-ascii?Q?+23a5PLvGl4UY+bo8/8ux2j2SuIRsIHxgRLFPctobNVVNzC545aRPk4Vwrxy?=
 =?us-ascii?Q?2S92lSycitH1sUYCywi7hEodKpCmS0iEb0NGN6CDzez5Tu0H1NbBIieNBclz?=
 =?us-ascii?Q?0cozJNrgAiDAxP8Cx/UslDBBXW0JpzY8WKn6006DQGBUyue2JKfOcfCFt1b8?=
 =?us-ascii?Q?77aOm3IdwjCdyvac+IQswE+Dh67jJay1Hedlutdb5ZYyTnEnlIZcXXcDKFhX?=
 =?us-ascii?Q?vF8k5R4q6JHf6eSAzN/LvBJOylHMrsshbhm3BCB7gQOCpBNQYDyaBITavVKy?=
 =?us-ascii?Q?qjJG/VtSPLvhKPkEiW3tOkOOrZFdKOsyAM7Tz7IDD4+LYa3zl8UEgOsz/4Dz?=
 =?us-ascii?Q?fRw+7AGwXXL+ucvxLWitpk2tTDPoaNfGsXO3+5wlkS2HLUP3cvTrY0vQjF87?=
 =?us-ascii?Q?n7WzK3KWvp/ltL/W8a4FppAji1VAHPJUzszvOMq9AzwxISSsmHVS0oaOvgtc?=
 =?us-ascii?Q?y9/g9DSsPFNeFZvp9O8kAXDMMjyoVCI+1dbrGgkslRcV26ZVE7ILlZlNB9cs?=
 =?us-ascii?Q?Obh79SS5kz3HxKhDQyctMlmDFW9tePZnni6LhFUJ7REnQztHpkT4n4H8nLd+?=
 =?us-ascii?Q?NYFc/dBzhmpD2/t9oLxu34ykhh9tstsgmMtv6NGF/ic2c/SRatilpC1otjiw?=
 =?us-ascii?Q?0KXern+fqwY0jmPpsEHTVuzFnDfqSYNGXlS2McTlSIm6smiA/nWRbPtVX9y1?=
 =?us-ascii?Q?/v1XwU8cfibzxEp6fNLWvQ3Eqq2qz+VVB9t60nq6AcxERspPTJVCS21jfBvH?=
 =?us-ascii?Q?dkjtFQ8Lwx/h4YCCjhaHzU+PN45F+Ytkiz9s9gt62Xxx8PuxjmDct5H9INO9?=
 =?us-ascii?Q?WETWjZRP62XHzMoKKwS68IOxKUnmCPAsZJgzt9KxTah7XC5CFawpI9xTG3bd?=
 =?us-ascii?Q?RtqOJw2RouIjIYw171A7K9YSb9Cqw6ke/2GEirxVCYXMUUKc3KJINpvZsucK?=
 =?us-ascii?Q?93TYb59gOpqS49bveNwHf/9Uw5u1prf1jYpBH1EbkHCNOd84YgSIJGMhckoV?=
 =?us-ascii?Q?KK32z4qTupjlKY25TGSZxvGcdT6qXyIvtbB4MHkFjMYPVZc8HcMm5VKMoBsM?=
 =?us-ascii?Q?ykUQuiA2WohERQn9AQqT8vHI8oAFlW3ufnUIKtVQI04WAwkck3LQVF/RY3pd?=
 =?us-ascii?Q?uNHeEzqFqIs3tmaHuAdoBHodN5d+GDI07liDPfsPBHOTL/LLhs4AvRs1wq+F?=
 =?us-ascii?Q?Y/iM7R3k56PJ+nDVNmzIt351k3I87RCIkxPqzzvmjPwHU11gTB1XNRaqkcyp?=
 =?us-ascii?Q?d+IFpYvm5C5JvkLQhU6sD6av4cZis6qqKt8YImjlYdjl7Gye6Mn0vq3JUDat?=
 =?us-ascii?Q?Qgg6NpCZqUykdRxfnRsGncEaVp0Q16jK2DOiO1PFmUuHnRxZ2Ane9bvbwuSi?=
 =?us-ascii?Q?VfB5Fb78QOH9aBKaqCLUW9P/JkspHb1p2udHC6N/f3Ny3LX6Z9WVJByYEPTD?=
 =?us-ascii?Q?Ml9egF+evFkU8COEKcdlZFKzzI7hcK0hxjpV9X4IOJB3bhGKoXbGpYTiL0NL?=
 =?us-ascii?Q?PQESkiB/mpdvu679JZUAscRe/mKWuzNOH7hJCERlbnykCG7eBFNM01uJ2Hsw?=
 =?us-ascii?Q?5znJHMSFd3WFWiolz/qnT5MFTX4+L//VnR8+2TmxCBrUONXi+7+BINU3y9K5?=
 =?us-ascii?Q?XeGsIwQ9KpCnELsG5cLS4zKWbCj/lJ09xSY9HpAA8PvpJhiEh8zTaFREJSVh?=
 =?us-ascii?Q?zzaLtWp6gg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: K94XHke0CgGiUuLJpG3Th4KmBT+pC8Gg3ye0E21GS7Y40ozV9WBhas3uaiTpfqOs4Sa1ZNBenmYA177AoAR6fXfhb+8l6GWsC6UJ/kLoRGH7WnH4CLGwxPvj49R/J0uQdz+DIM3ejCsHAHP6LM61R5h/e79Y7GrtmrutGwvZPQH23EyLYWxpJS8ilYaQEHrEfNYy+N1+nYCY1TcPS7WhmqLXPNI94BlI0n/5Ld5CUSa4KNFV2C0msxGdPe27aWiY0UsmgVRyY6z96BRHldFtFMezpHb7TGsEEcdgiE6YyrB74F73Lg4AfzfxsxVfhsG3PWI3S/Cm/JDQHeO6YGwEzA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d7c649b-0f10-4a8d-96dd-08deb2934979
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2026 15:04:39.5342 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n2G+BPGz8+2X6u2yfIfhMXEUXfGFj1hB4McBDxkd6OWOFftZOnAsdpXrykj9BNs0gPA8X5EbkwG6PDzCfkuA7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9376
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
X-Rspamd-Queue-Id: 2DD19551D95
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: Re: [PATCH] drm/i915/display: Use PIPEDMC_FRMTMSTMP on display
> ver >=3D 30
>=20
> On Fri, 15 May 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Starting with display version 30, the per-pipe frame timestamp is read
> > from the PIPEDMC register block (PIPEDMC_FRMTMSTMP) instead of the
> > legacy PIPE_FRMTMSTMP MMIO. Extend PIPE_FRMTMSTMP() to take the
> > display and select the appropriate register based on DISPLAY_VER(),
> > and update all callers (intel_vblank, intel_initial_plane) accordingly.
> >
> > Bspec: 79482
> > WA: 14022946399
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_regs.h  | 7 +++++--
> > drivers/gpu/drm/i915/display/intel_initial_plane.c | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_vblank.c        | 4 ++--
> >  3 files changed, 9 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 4321f8b529da..579f802215d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -3149,8 +3149,11 @@ enum skl_power_gate {
> >  /* g4x+, except vlv/chv! */
> >  #define _PIPE_FRMTMSTMP_A		0x70048
> >  #define _PIPE_FRMTMSTMP_B		0x71048
> > -#define PIPE_FRMTMSTMP(pipe)		\
> > -	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B)
> > +#define _PIPEDMC_FRMTMSTMP_A		0x5f0ac
> > +#define _PIPEDMC_FRMTMSTMP_B		0x5f4ac
> > +#define PIPE_FRMTMSTMP(display, pipe)	(DISPLAY_VER(display) >=3D 30 ?
> \
> > +	_MMIO_PIPE(pipe, _PIPEDMC_FRMTMSTMP_A,
> _PIPEDMC_FRMTMSTMP_B) : \
> > +	_MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B))
>=20
> I'm wondering if we want to hide this difference inside the register macr=
o,
> though.
>=20
> Yes, it's the easy thing to do.
>=20
> But PIPEDMC registers belong in intel_dmc_regs.h, and it's a bit question=
able to
> have something that looks like PIPE_FRMTMSTMP() suddenly end up being
> PIPMEDMC_FRMTMSTMP.

True the reason I did it was to avoid all the if else cases everywhere this=
 had been called.
Also helps make sure that this WA does not get lost in case someone at some=
 point of time
decides to use PIPE_FRMTMSTMP() instead of PIPE_DMC_FRMTMSTMP().
Which makes me think if I do, choose to do the if -else way wherever this h=
as been called.
I should perhaps add a comments in intel_display_regs.h stating to use PIPE=
_DMC_FRMTMSTMP() instead.

>=20
> BR,
> Jani.
>=20
>=20
> PS. It's absolutely disgusting that this is named "FRMTMSTMP" in bspec. V=
owels
> exist for a reason.

Oh I absolutely agree. Its revolting to end up defining them like this too,=
 to maintain consistency with Bspec.

Regards,
Suraj Kandpal

>=20
> >
> >  /* g4x+, except vlv/chv! */
> >  #define _PIPE_FLIPTMSTMP_A		0x7004C
> > diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > index 034fe199c2a1..004cbdb6be32 100644
> > --- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
> > @@ -34,9 +34,9 @@ void intel_initial_plane_vblank_wait(struct intel_crt=
c
> *crtc)
> >  		return;
> >  	}
> >
> > -	start_ts =3D intel_de_read(display, PIPE_FRMTMSTMP(crtc->pipe));
> > +	start_ts =3D intel_de_read(display, PIPE_FRMTMSTMP(display,
> > +crtc->pipe));
> >
> > -	ret =3D poll_timeout_us(end_ts =3D intel_de_read(display,
> PIPE_FRMTMSTMP(crtc->pipe)),
> > +	ret =3D poll_timeout_us(end_ts =3D intel_de_read(display,
> > +PIPE_FRMTMSTMP(display, crtc->pipe)),
> >  			      end_ts !=3D start_ts, 1000, 1000 * 1000, false);
> >  	if (ret)
> >  		drm_warn(display->drm, "[CRTC:%d:%s] early vblank wait
> timed
> > out\n", diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> > b/drivers/gpu/drm/i915/display/intel_vblank.c
> > index 28d81199792e..52ff47936f9e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > @@ -157,7 +157,7 @@ static u32
> intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
> >  		 * is sampled at every start of vertical blank.
> >  		 */
> >  		scan_prev_time =3D intel_de_read_fw(display,
> > -						  PIPE_FRMTMSTMP(crtc-
> >pipe));
> > +						  PIPE_FRMTMSTMP(display,
> crtc->pipe));
> >
> >  		/*
> >  		 * The TIMESTAMP_CTR register has the current @@ -166,7
> +166,7 @@
> > static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc=
 *crtc)
> >  		scan_curr_time =3D intel_de_read_fw(display,
> IVB_TIMESTAMP_CTR);
> >
> >  		scan_post_time =3D intel_de_read_fw(display,
> > -						  PIPE_FRMTMSTMP(crtc-
> >pipe));
> > +						  PIPE_FRMTMSTMP(display,
> crtc->pipe));
> >  	} while (scan_post_time !=3D scan_prev_time);
> >
> >  	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
>=20
> --
> Jani Nikula, Intel
