Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lDFuLizjMGp/YQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 07:46:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F0A68C407
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 07:46:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=M9j+A4PK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4BE10E60D;
	Tue, 16 Jun 2026 05:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7768F10E578;
 Tue, 16 Jun 2026 05:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781588776; x=1813124776;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ipyPA4Bav/cm5OrFauaj6uM+JDI+CGR9CuBs91zo9is=;
 b=M9j+A4PK21lCR1GCxzvH0HoMgK7f+XTwBh1f+rHT4LKuT4y5TOh8LTJP
 w47Nu0xcixuf0+jA22iapjJBd8laPrqWr0g3aw+7eLGebK3lockg0L5IJ
 U5wyRBPLX3JB5OEq+P0B1mO1qmHUS8IjwVHgyKAwSlG4vH5ylF8/h8kLr
 7dXm7G4kC7ygPFvmz0vdkOewuaXNHGnOpF0nOg0pENNwAdEptCAK1DUg5
 ce/OBTRyvh57ub7bijcdpXJ8cQEFELW4EnchTNxEEX+FJYmy3E7oOzbSb
 Q25GdP2PfGoAmS5dNlJRma1CecyQnKz/+2LH9rq1tKVKKzJuI/+l46C82 Q==;
X-CSE-ConnectionGUID: rWVNu7kERM+vcuAgBDGvBg==
X-CSE-MsgGUID: p/074ECFQwaGHeEcwNWRIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="107773873"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="107773873"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 22:46:16 -0700
X-CSE-ConnectionGUID: DiVoUUqjQHG/5pQegdp8dQ==
X-CSE-MsgGUID: 3j5hlvlHRrqgMtzbCBsSVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="247533592"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 22:46:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 22:46:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 22:46:15 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 22:46:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EbPP31pdn7aggwjQTxWF2RnkoVYFZHajfNaYaSa7gEmp/jV43++jrIKWaY1qq6yFJ4OweZ0zDJ6Vb3NQPHtcVpuX9CaGZUcRHUpvDbXt05D430s9oPmmjLBtzoaIIwyM3PAPx+zN7YJgSKtdV9q5eqfb8i1eR1KWcqC1q1yWKho5/buD8JClHPq66f1t5Oi8Jtq0/4UN3yD+53/TOAOqVxR+4wSHF/wNNTWO3MxoFZ4i6olg5h7yfGPcBcERvZl6VILysEopdjv2qjq6VEZWeoU1vWvQJkPePKaYvnhMBgpvx2KzdizGRl9NZikxKmnfgAM50Azi4V8wQzPaDeRraQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8w5X8ZvWzEG/iqZLc7EMTuLJnunYLXbgqvYtrNI8s9c=;
 b=LVXsN5D4kYJfwgoezbKMR3k80uZyrUeS53Ja8QJCsbkkrNZYv57RH4AsdZiNQE3qMMOhQt6qnQLaBn/qJPLadE2S5keXd2PeiyzsAqBitpwUrrx46HfMYLle+tI++en+8K9Fcnf154uttquOaitEYE1RAedTXBh4S5BPS39u5rNun8LYJcQdTEs0NxfbbUcOvwhlWHf1OGfryzwdB4x6Jom2+xAQB1F5hiAt4fJIc1D6R8h1NI5JEFd1/R550aT3BTl/3MOP2TXPoLe9ta53eMYQOAPuDveFWNnBVDQFZJecm5zZOUNhPYHjDiy7AgDDWXVJE1eJZe6ilX+7nytXBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB9773.namprd11.prod.outlook.com (2603:10b6:510:398::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 05:46:08 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%2]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 05:46:07 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Stephen
 Fuhry" <fuhrysteve@gmail.com>
Subject: RE: [PATCH] drm/i915/display: Refcount for fec enable/disable
Thread-Topic: [PATCH] drm/i915/display: Refcount for fec enable/disable
Thread-Index: AQHc8dNRMfnknTQoWUWsmXcLBW7hPbYrFoQAgAAuq+CAAAFwgIAVenAA
Date: Tue, 16 Jun 2026 05:46:07 +0000
Message-ID: <IA0PR11MB730741AD83240FA2CE95BDACBAE52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260601142943.1481728-1-arun.r.murthy@intel.com>
 <ah60jJkzbbw25R-L@ideak-desk.lan>
 <IA0PR11MB7307C39641297A08DB4C6A1ABA122@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ah7c59mNa4WfTJKu@ideak-desk.lan>
In-Reply-To: <ah7c59mNa4WfTJKu@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH0PR11MB9773:EE_
x-ms-office365-filtering-correlation-id: 73bf5203-6aed-42ad-79e2-08decb6a8fc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|6133799003|56012099006|4143699003|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: H0JdOJFUU4+XXSOeJpe6+u6GazWTyQsajrjIiqA+wElnIO72txwFK1ELHxAePjelAktOepnmMg41LEGp3R7LtHSf+XXiw9Rb8IZUHZjqwRbTdPuPoRLobXibU6Vwo7+uENEoaXhg1iePSR9J73mO7oztswfiW+0AUEYfNQnRcj6nvBU48/PrsBowtk0SFAIxlFKl0JQoplr5FSaW62O75TvspiRwybVD1prr7JGqZBsc7OnPJ3JZM+Epoc+oalbRW4MS11zZCGK63wotRGkUHreitTqhKQG6tv++7VDfXhT6P81sO5aIK/GRf48LyqixwwzFYtDkAa5sSx39b9j3pq5gmOvCDqi1b26I8OL6FhrEP6OIzwHnwVFK6atWaGgxNEFxTgkUiboC5acbR6fN9kPRuNVcSvbBDZVbT+4qrp9EPB5gfFp8gTjZ/egXRLITjPvD2MTmlDHnKI5LRyqum47+yOOgmPEhiF7CSdfJzxECGSJ+5q9Ka3b700qLhD+bbSF6o9Uy0AQFdSUlti/M+KPC/ZQIE7OV0fq525AIMSxDCpcaNOTfG5tnjri3R2ecJvHug42AUbuoelkIDxPtFxryyt6JdfR1EZ3ddEWNga4kQDX0/l9+Es255OmUFR6dguKuC5SIfaUUAtFy2Iefd7JeBxDneRU6DfOUQGZJZmXNGylqCz4lSBAUamYVprgjLGOR8XnjPf2ra/XEMk9fXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(6133799003)(56012099006)(4143699003)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VIZXoG/KkZ5taWM44egElThlKi26csH5uspoQF25bHe/zTgrpedb4YECnMsj?=
 =?us-ascii?Q?KQYwllHg849SaQMHRDJs2AHReKmv7x57XUr4yDdNTdm5ijyz9SLIvUjm9xQ4?=
 =?us-ascii?Q?/OOB2aAQJXOZQEM14OTNZRT0bB6gvBgeyWTXQniwY9TwZW9Mq86dPAAd5BzS?=
 =?us-ascii?Q?ziyN2pLVzsryTtbvyEAm4xa+JJAMpCxlPUqksyfP1SJ5ZeM4iqWI+4ICMZOo?=
 =?us-ascii?Q?grYqLHUmYbUg+wXn00qqlXkKX6PYZgVr/z/FyhcKhPODouYPx/lb8jbKeiOc?=
 =?us-ascii?Q?ko06/HfRHxxVHFg2vqAyrhR9hprjCdhxIt7p3b6EFuW3NXw6bOCJxhSKeiB+?=
 =?us-ascii?Q?kmr5T9Ns/jP1xLaOWcwjALtwsdRmudb+29hhsESRqLnWgzzSzqIxpAKphojO?=
 =?us-ascii?Q?Wdef91CzlJ7TVZMoV9uYrUSqgbu8+LcSlam0pU3XdfGqbw1dGEi3YQtEZCPX?=
 =?us-ascii?Q?RDD02jHKQvCwbBs3nY82NqKeypNlhrwRom+7ZRvhS2GBYAteYYJze8VZuzst?=
 =?us-ascii?Q?hZujSH1ow5TUQVuy0hEMCJ+O5mLKYj0U9T1FixXbmRhrHdycIObXfy58SzUo?=
 =?us-ascii?Q?Np/jIkkCkrGyElmVOqtCe/zukTvq378zVD08LBcqzkUKpu1ARW40Rh3wCb0r?=
 =?us-ascii?Q?RH1PWLY1hIM7J71uy7ZpJWXpT3bzd89pDYzMGBGN3zQkVnziLICzNJ72ycLj?=
 =?us-ascii?Q?zKUrkxsYA9zik3+9vqlm3oKqSGb29FBBhorS50c78wwrly2DHcwH7NwFt2aK?=
 =?us-ascii?Q?RA3bB72NPN0LXYi9IxFm+1nvug7r95ZT8SS2RUuC3MoUF6ywV75jkxHmPRdJ?=
 =?us-ascii?Q?Jpz9gxzwrze1JStU9dDkT3IBW5S41LCqWM8UuRVd+uqWOSeYWXSHLxOHzhBv?=
 =?us-ascii?Q?0iAX39IRq2Wcaw8eZ5aFwwGsUA8MD2jstmUuTf8EZP9rAalFLnrUx35HL0dz?=
 =?us-ascii?Q?C4vQv1TdbQUksnzhWKbTvHWJF+xdLXBMD13DXGi3TtDTxZg24Nj1V2Y7vvLa?=
 =?us-ascii?Q?3oscFf/VCpZ6fMxQaWN+LrFJSf5bl/6bptLBfY7pMULzh2LY4MCofixvgnO0?=
 =?us-ascii?Q?cWK0vRt5vZPRyBzD+Vqi8mop2DjJRdc8Y8IVEqS0XxeENbZy/9dSB1U9OYpz?=
 =?us-ascii?Q?jOjjglNYMh4iEFn0Iln7/toBjkyPUaIvMdDX1cc7wOGsjIN+kpA4aLKYF+1I?=
 =?us-ascii?Q?cCAk248TVGWW1029uw+pLR+u4QlVYbybw1oAi+F7xFe/5azNPjqtjpVPjxii?=
 =?us-ascii?Q?GCGH/Cu21S8ts9yd43vy7YL0QoPjTzdzbwKOeW2whM0W1tqz5LV6e0xegnKG?=
 =?us-ascii?Q?iW7jqLKdznehdKBnVSvHWb0Gv9L5Tx3Fg88DL1kOB1oIrsCz3ws7BU5a7p3W?=
 =?us-ascii?Q?OZA/qfrrR00T2JcalKnq5Wr6gH3l4VkKFLBiM4AfTV+kvaJ4T/KR3Z1b47o/?=
 =?us-ascii?Q?iVeLq+N4rxA+g+nsh0+tz/KyvF4Q4aEwL3qR5KAAmG0LEFroT3R/+VsPI3Id?=
 =?us-ascii?Q?e9cA2P/8ISMlmrDBvdHksi5OCFKK6JKA9c4ggdw8rEzya51t8ntTAgroOdas?=
 =?us-ascii?Q?7UobQKI1hJTxGpbK3LixiOMhhyxDH0O9wZtEgnYldYMPqJx1lmWeoIFU/icU?=
 =?us-ascii?Q?aDsRJChRaunzyOoZAmLd4w3cWpzwuFLix3+ntOXr9+4LId2Ese2elcaDPtiy?=
 =?us-ascii?Q?YAJSMRAyKymKmBMmpS66FksuUef1iF12xhrM6yUB28lr98j3XGCuONPlHFLp?=
 =?us-ascii?Q?JNLHt35HWw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oQL3LGl0Loj+spqzKMQs0KP0f11I4QaTn/NltFXOMg3zFLmuqCHRqBdIgn6vffYuFr6jlOhM+lYUVjE6sEkGQd+Qvz7j89L2BK7ESaDdDuN0tgYFf98K31I8VlpH9u5Xd/dg0X33eer+ywqgt5FChg4sDYoMa6HTVQ8onzcQXu/l2OiPLg9xCQYUvatTzd2MphpaQfTdgjKHESnKLmoaYdU8vFu7dbtHGkwyNHsDYdo41HtSyKbOkDEyiSzb/y27P1D0ZKqxvfwT+VtKnqrTJvYC03fJwoEXKmvRW5wFrTija6JeM+IC8CyNTCKMzlMzqQe53Gu5uvi/tlJDr7XNpg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73bf5203-6aed-42ad-79e2-08decb6a8fc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 05:46:07.1651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +fq8Y/9cEljREoD9L6HAKGBfBEiW039VWyD2ipFyTS25rRIwciqMq62U2RVcmeHqyJ9CkZhg+PNzymPkNV4abQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9773
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,gmail.com];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 17F0A68C407

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, June 2, 2026 7:09 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Step=
hen
> Fuhry <fuhrysteve@gmail.com>
> Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
>=20
> On Tue, Jun 02, 2026 at 04:35:42PM +0300, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Tuesday, June 2, 2026 4:17 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > > Stephen Fuhry <fuhrysteve@gmail.com>
> > > Subject: Re: [PATCH] drm/i915/display: Refcount for fec
> > > enable/disable
> > >
> > > On Mon, Jun 01, 2026 at 07:59:43PM +0530, Arun R Murthy wrote:
> > > > The FEC_ENABLE bit is per port basis and is enabled/disabled on
> > > > ddi pre_enable and post_disable. This fec is shared across the mst
> > > > streams and can be enabled per stream basis as well.
> > > > So have a refcount to track the usage of FEC and then
> > > > enable/disable accordingly.
> > > >
> > > > Closes:
> > > > https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16073
> > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_ddi.c      | 66 +++++++++++++++=
++++
> > > >  drivers/gpu/drm/i915/display/intel_ddi.h      |  1 +
> > > >  .../drm/i915/display/intel_display_types.h    | 12 ++++
> > > >  .../drm/i915/display/intel_modeset_setup.c    |  6 ++
> > > >  4 files changed, 85 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > index 86520848892e..e12a3d6d6a67 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > > @@ -2096,6 +2096,47 @@ void intel_ddi_disable_clock(struct
> > > > intel_encoder
> > > *encoder)
> > > >  		encoder->disable_clock(encoder);  }
> > > >
> > > > +/**
> > > > + * intel_ddi_seed_fec_refcounts - Seed per-port FEC refcounts
> > > > +from active CRTCs
> > > > + * @display: display device
> > > > + *
> > > > + * intel_digital_port::fec_active_streams is the per-port
> > > > +refcount that gates
> > > > + * programming of the shared DP_TP_CTL_FEC_ENABLE bit. After
> > > > +initial HW state
> > > > + * readout (driver load, resume, GPU reset takeover), the
> > > > +persistent
> > > > + * crtc_state->fec_enable values reflect what HW currently has;
> > > > +we need to
> > > > + * align the refcount with that so the first paired disable
> > > > +doesn't underflow
> > > > + * and the next enable doesn't incorrectly skip programming the HW=
 bit.
> > > > + *
> > > > + * Must be called once after intel_modeset_readout_hw_state(),
> > > > +before any new
> > > > + * modeset commit can run.
> > > > + */
> > > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display) {
> > > > +	struct intel_crtc *crtc;
> > > > +
> > > > +	for_each_intel_crtc(display->drm, crtc) {
> > > > +		const struct intel_crtc_state *crtc_state =3D
> > > > +			to_intel_crtc_state(crtc->base.state);
> > > > +		struct intel_encoder *encoder;
> > > > +
> > > > +		if (!crtc_state->hw.active || !crtc_state->fec_enable)
> > > > +			continue;
> > > > +
> > > > +		for_each_intel_encoder(display->drm, encoder) {
> > > > +			struct intel_digital_port *dig_port;
> > > > +
> > > > +			if (encoder->base.crtc !=3D &crtc->base)
> > > > +				continue;
> > > > +			if (!intel_encoder_is_dig_port(encoder))
> > > > +				continue;
> > > > +
> > > > +			dig_port =3D enc_to_dig_port(encoder);
> > > > +			dig_port->fec_active_streams++;
> > > > +			break;
> > > > +		}
> > > > +	}
> > > > +}
> > > > +
> > > >  void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > > > *encoder)  {
> > > >  	struct intel_display *display =3D to_intel_display(encoder); @@
> > > > -2413,12 +2454,22 @@ static void intel_ddi_enable_fec(struct
> > > > intel_encoder
> > > *encoder,
> > > >  				 const struct intel_crtc_state *crtc_state)  {
> > > >  	struct intel_display *display =3D to_intel_display(encoder);
> > > > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > > >  	int i;
> > > >  	int ret;
> > > >
> > > >  	if (!crtc_state->fec_enable)
> > > >  		return;
> > > >
> > > > +	/*
> > > > +	 * FEC is link-wide: DP_TP_CTL_FEC_ENABLE is per-port while
> > > > +	 * crtc_state->fec_enable is per-stream. For DP MST, several stre=
ams
> > > > +	 * on this port share the bit. Only program HW on the first strea=
m
> > > > +	 * needing FEC; subsequent streams just bump the refcount.
> > > > +	 */
> > > > +	if (dig_port->fec_active_streams++ > 0)
> > > > +		return;
> > >
> > > This doesn't make sense to me. FEC is enabled for the MST link and
> > > if it's enabled then fec_enabled is set in the crtc_state for all
> > > the streams in the MST topology. intel_ddi_enable_fec() will be
> > > called only for the first MST stream being enabled and
> > > intel_ddi_disable_fec() will be called only for the last MST stream
> > > being disabled. So I don't see why the above refcounting would be nee=
ded.
> >
> > The  logs mentioned in the above listed gitlab issue shows mismatch in
> > fec enable/disable in the MST scenario. Hence added this refcount
> > logic to overcome the mismatch.
>=20
> The root cause for the mismatch should be better understood then. I still=
 think
> that it's something else than the lack of refcounting.
>=20
FEC is a link-wide property: DP_TP_CTL_FEC_ENABLE is a per-port HW bit
while crtc_state->fec_enable is per-stream. With DP MST several streams
share the same port, so if any sibling stream needs FEC the per-port HW
bit is on for every sibling. If sibling crtc_states disagree the
following two symptoms appear(based on the 2 gitlab issues around the fec):

- intel_pipe_config_compare() rejects fastset on the sibling whose new
  crtc_state->fec_enable disagrees with the old (HW) value
   forcing an unnecessary full modeset.
- verify_crtc_state() after commit reports a fec_enable mismatch
  because the per-port HW bit is read back into every sibling's hw state.

Along with this refcount will have to unify the fec handling across the mst=
 streams.
This unify will be done by pulling the non-active state(mst stream not part=
 of the atomic commit, but is a sibling of the mst stream) and then will be=
 a OR operation across the mst streams.
Will be pushing a patch implementing this as well.

Thanks and Regards,
Arun R Murthy
--------------------
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > > +
> > > >  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > >  		     0, DP_TP_CTL_FEC_ENABLE);
> > > >
> > > > @@ -2454,10 +2505,25 @@ static void intel_ddi_disable_fec(struct
> > > intel_encoder *encoder,
> > > >  				  const struct intel_crtc_state *crtc_state)  {
> > > >  	struct intel_display *display =3D to_intel_display(encoder);
> > > > +	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> > > >
> > > >  	if (!crtc_state->fec_enable)
> > > >  		return;
> > > >
> > > > +	/*
> > > > +	 * FEC is a link-wide property and DP_TP_CTL_FEC_ENABLE is a per-=
port
> > > > +	 * register, but crtc_state->fec_enable is per-stream. For DP MST=
,
> > > > +	 * multiple streams on the same port share this bit. Refcount the
> > > > +	 * active FEC users on the port and only clear the HW bit when th=
e
> > > > +	 * last user goes away, otherwise tearing down one MST stream wou=
ld
> > > > +	 * disable FEC for sibling streams still using it.
> > > > +	 */
> > > > +	if (drm_WARN_ON(display->drm, dig_port->fec_active_streams <=3D 0=
))
> > > > +		return;
> > > > +
> > > > +	if (--dig_port->fec_active_streams > 0)
> > > > +		return;
> > > > +
> > > >  	intel_de_rmw(display, dp_tp_ctl_reg(encoder, crtc_state),
> > > >  		     DP_TP_CTL_FEC_ENABLE, 0);
> > > >  	intel_de_posting_read(display, dp_tp_ctl_reg(encoder,
> > > > crtc_state)); diff --git
> > > > a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > index 580ecb09b8b6..3678c28a0dc9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > > > @@ -78,6 +78,7 @@ int intel_ddi_toggle_hdcp_bits(struct
> > > > intel_encoder
> > > *intel_encoder,
> > > >  			       enum transcoder cpu_transcoder,
> > > >  			       bool enable, u32 hdcp_mask);  void
> > > > intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder
> > > > *encoder);
> > > > +void intel_ddi_seed_fec_refcounts(struct intel_display *display);
> > > >  int intel_ddi_level(struct intel_encoder *encoder,
> > > >  		    const struct intel_crtc_state *crtc_state,
> > > >  		    int lane);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index f44be5c689ae..84bd0d993197 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1987,6 +1987,18 @@ struct intel_digital_port {
> > > >  	struct ref_tracker *ddi_io_wakeref;
> > > >  	struct ref_tracker *aux_wakeref;
> > > >
> > > > +	/*
> > > > +	 * Number of active streams on this port currently using FEC.
> > > > +	 *
> > > > +	 * DP_TP_CTL_FEC_ENABLE is a per-port (link-wide) HW bit, but
> > > > +	 * crtc_state->fec_enable is per-stream. For DP MST several strea=
ms
> > > > +	 * share the same port and therefore the same FEC enable bit. Tra=
ck
> > > > +	 * how many active streams want FEC so that the HW bit is only
> > > > +	 * programmed on the first enable and only cleared on the last
> > > > +	 * disable. Modified under the modeset locks.
> > > > +	 */
> > > > +	int fec_active_streams;
> > > > +
> > > >  	struct intel_tc_port *tc;
> > > >
> > > >  	struct {
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > index e88082c8caac..14f038b8ef81 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > > > @@ -950,6 +950,12 @@ void intel_modeset_setup_hw_state(struct
> > > > intel_display *display,
> > > >
> > > >  	intel_modeset_readout_hw_state(display);
> > > >
> > > > +	/*
> > > > +	 * Seed per-port FEC refcounts from the just-populated active
> > > > +	 * crtc_states before anything can issue an enable/disable.
> > > > +	 */
> > > > +	intel_ddi_seed_fec_refcounts(display);
> > > > +
> > > >  	/* HW state is read out, now we need to sanitize this mess. */
> > > >  	get_encoder_power_domains(display);
> > > >
> > > > --
> > > > 2.25.1
> > > >
