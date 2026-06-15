Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pITbNauAL2pCBgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:33:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366C5683494
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 06:33:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="A/WjdZu0";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70ED10E18E;
	Mon, 15 Jun 2026 04:33:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D5010E18A;
 Mon, 15 Jun 2026 04:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781498024; x=1813034024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mUlIM5XdM4yvkkejnwYrlk1erA9+wki4iBfv460qtak=;
 b=A/WjdZu0rfaafsPvXy9tK+HzCComWpfAubsIPhlwIh1FZq8jFYg5euOL
 R9fxS9ABJnjxdOr/a6rOuA/Zwn5K64lvvlZwLUxLbDaY1aFaGCVUpATnh
 08/MEufXbDWMH4GM4ks447FG7ft4y1heh7lLREZlr/Raza9A+Im2q7lHd
 fiRY6d+lS+JhXW0U8pp8zCCNA/Pe9pJ/3CoUcYMru4W/uEZNltrRflYk/
 IdJrzB88t3KhcnZnJXrl/bCjKm+8cOs3cbliwhicScppdGKKJjAZwUx5v
 x6RITwv1pNovsYc7bKcIcvWbTJRYm1LV0M9sX0qcqQET07fed9MTQHelf w==;
X-CSE-ConnectionGUID: DQKwEm5fRq+ut2YS5YFg5w==
X-CSE-MsgGUID: 7PZzF2IfQ7uXyNdE+9MB6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93723760"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="93723760"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:33:44 -0700
X-CSE-ConnectionGUID: p/19TPHxRZaeWWg1C+M8MQ==
X-CSE-MsgGUID: dswnUB3jTg6jU1g/cOlpqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="251641704"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 21:33:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:33:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 21:33:43 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 21:33:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wNO3pUFmUKiWd4ikENavLtCU1OXMFacTzOZeCzaqCMFbUs90UZf7l10nMSghSGXS3miC0qYaOJPVyCOnCctX4ONj34sFeVd74ofoHU6lWcyWQfxA2+y51XkvMkkLLzZ4MW3+fT0bXCF+CgpTm6F6piCaGrSbTOIEUO5rRne+Lm52K1QN/+Jjj0dIkJK7BzEP7n8aRibCElv30lxpIfoH6kidcL5TEcwYfar6pz6N7fL4mHXLskuO6OQy5SoB77fz5IFBV1TVeOjNSVp5CRim8FTREhF3hl/9xKisZnN4yvtGrTGjHBB0EsEyTN3iyvGfnbGhBULokY/F6gwoINNJ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=25k7YQw2ZJ2IxYZ4CQOxl9h8acwh6BXKEnoS9fZi3gQ=;
 b=bgbyGXTRfhnAUbCrJJV23Go5B6yePohSW8hSNylsUHNagrHRrUYA0gj/4U5u09V5nNYIuf6Pd9o44WhMVqp9V1EqfSaX8/aOpSdK9QA6Hs1WGZywbHHPIluNmMWqgXDl2neIXRH6E4e8ovIAhRPK70z2e2ptv1X2p5CZFbq3p5v3aOtX82LRRx98Q/UG2t8ZFaKxQ1ZNiLwyLyFyL3b5CdRMJ0oioObNr3MSmGaCVz9K4TCJP3nFbS0GkrJWNrWlpyC0XmWzXCbaLuu661kFolWd9VZGIfQ0IwGAM3ZQKvjw9B11iY45drwI7GInI9jsXoOFvVMkkZIJURwBD9n6dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SA1PR11MB6918.namprd11.prod.outlook.com (2603:10b6:806:2bf::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Mon, 15 Jun 2026 04:33:35 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0092.011; Mon, 15 Jun 2026
 04:33:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Thread-Topic: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
 intel_set_transcoder_timings()
Thread-Index: AQHc85dF10Mv1ySTqE20fwze0mEPVbY5DCCAgAYMrgA=
Date: Mon, 15 Jun 2026 04:33:35 +0000
Message-ID: <DS0PR11MB8049A8CD0A9D668DD1217AFDF9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-5-animesh.manna@intel.com> <aiptRZnAtlMivRUl@intel.com>
In-Reply-To: <aiptRZnAtlMivRUl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SA1PR11MB6918:EE_
x-ms-office365-filtering-correlation-id: fa1575b0-1cf6-4d29-8fad-08deca974377
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|56012099006|11063799006|4143699003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: b+w0Ke4cDSRXwDPrMZ7v02QJRCjMevTec5F1xGYHgIdYcRujQdAF0C6ecqDRApjVwvoOZOjA3SV+52TwTcT1cl9YxU6DViqi/W/iNflYdsmEqKprOTrpMVT058NrtAkFmwEKL0El3dDsy2TTEIvG6FB8DO6Nti31YZ7eetUFVVSa0mjeon9k8YLKF1AzgZycd20tVvre4ANKlir6JyFNtu9sAJ4QpP3p3v8FLusA2+1cOWZzWDYTEUmAfujtJ8O686K9IQsnWmfoG1624LYRWD7CCSePFRsntN1RQqloEtDHquP8CZdQIMXSC+8oGY/urrN0aAdM4H89zsfa6lwCu2uC0QgUiLQHIn6gt68f/uPs0FL+69uY7XkzXHysdXPbQBTud6AkT+k5wQT77T3AQJG29k/yooInFkrdViBSNtmP/6rU5/s3AFxPIzQrW8uhW5yDSmt/6Wp1Ds5bDkxXmNnb3WTNUmW2su4nEb7epupdQpDK1kRqNiw3iOucBjla2KAaXpZFTvLJ0KUutu+2u2KmXNG5R/u768/3+CvzI8pEBfsOsrbUu8b0ABm6oKJX/78pqMnRYqfrRtcOr1qsgqprZkmC8qcrhoxfBJX/vfm4ft5ipxYVpyEE4hHFJ34y8ZNKf5u5eSGgiEFhvqFVibE1ahljsbyUWeZ5sXyNCQ5GVelWFJ+9cHGHmbrWHx4mMusxm+5eVE25MuK95IOEIq44H2g5ogi3Ce8s0U5rGuVH7RrTuFuG+Z7SQOnZTWVD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(56012099006)(11063799006)(4143699003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kw3XvZhWmuqnXLf3DCBdDFo0nMx6SsrPSnSEOwjJBE1WCGv6bGz/7hKxYy?=
 =?iso-8859-1?Q?osN4H0KLUbTT5zxxx/KilekpXQsbpFG7uzfoTW+xB4fqKtDlt3rSXouLcg?=
 =?iso-8859-1?Q?4yiCYxgz3eIi8EZ+37zqN80JizNv4amYQD9ekgjrOc40cjnbLbPRLwts+u?=
 =?iso-8859-1?Q?MTT5imRMT4rb8NXAFu9Pu2TswtJxQf4KN57Twrza5qZp2a6p3ryMc5QxHC?=
 =?iso-8859-1?Q?e8nqfiT+3aSUuotZU9ZvfGIrHXVTAqHd53xkKYtwklkvBBp0rdATTPcwqx?=
 =?iso-8859-1?Q?Dh3EHf+ZONvZ+n/AgHGpFF1gEFnki4hV2Y6Wk4fCw7jv32cSxvAov0lp3m?=
 =?iso-8859-1?Q?cfpTHKSCoKomQa2b6mj/NpGH4YV0K1H7OEke6vnepojJdowFoa68BPOxVI?=
 =?iso-8859-1?Q?wgLU5fV0mvdpfQ277i2NGsmhKt+UpZMekiGQyGiFRv8zqtQvDF+MsZdmt8?=
 =?iso-8859-1?Q?fyOWM/HRwYJdBXQ+Ne6EweJOp2rsdbKquJA2SjdOSJu4PmRvpklDtwGrfP?=
 =?iso-8859-1?Q?x8N+ANIUQiid0VuyEr83EuaCnhyjFMgDbksijl9sJCjdMAnoERoYXiV54n?=
 =?iso-8859-1?Q?9JTDDBuU9ekFjs8zVAunajlr3sHVPfPvqy7wikpQo+MbjYAGB47v4PPRkT?=
 =?iso-8859-1?Q?TcybLYTUQFH7UqbtoiwH4mJcSo3X2p3IN6NCSM7u35V1DTaQ1K4b/U3oaV?=
 =?iso-8859-1?Q?DIccaWCRTL0QrYZwgdrxyLLHVubZ89fm08NmUJ27UyG2Nx5oYGlUfMrreW?=
 =?iso-8859-1?Q?EcEb1PgX+Gt20Rns0FE7qkGASg7466yc8rC/CqHLHGU1U/uBEZE44PXX3/?=
 =?iso-8859-1?Q?HOxAYrT8k/XPmDLY4pErBXo3atinx+MkQe/ho+BXjoG7r5N0TpL5D3iQNK?=
 =?iso-8859-1?Q?RRDZbrSIz1wlvpShTP320xqtjaNDYa6kSY4DnyCYtlA5CWR9alE6lyrOaz?=
 =?iso-8859-1?Q?WTrfAJ3uuAVvo/NTq4iVcgjoavWueWgipwPCGbtVjCFkSHpjNtAfi2+tcw?=
 =?iso-8859-1?Q?7fR5ghSsure39sk9ccIkO0sHjl21/XYllmdm1xyija+5eG66EUea6uPPv3?=
 =?iso-8859-1?Q?IadwFb7HqeFa1FSZoJeUlYMQ7GHrzCEcMszZMZE9anR6OC72WRiqnTwS6R?=
 =?iso-8859-1?Q?YqnPUFUpKW7S3+/HU9F2R/k6t/zX1XJaXYswySNb/VixwxsAIiwfQ0wGfl?=
 =?iso-8859-1?Q?FMd8F2kudVUISxHyO8tfL67U1gIpuEPaGPGDnAC7WUcZhPsTagzxXrBrw6?=
 =?iso-8859-1?Q?0guZrXLuUj+xxWnVAKBVkGeqsl0QW/fn15QMFJnta9+/PzN0x4OdXxllPx?=
 =?iso-8859-1?Q?wcyIKmF8KJkntOCAbqo6lWEpYQLF1WBYH8wGycSq1i33VJ9grqXQtZY7jg?=
 =?iso-8859-1?Q?34Xi45VoMekmO0CrMI3haDdq5t1J5u/E1RLmS2Wn9q9gsVKLY0gFqtjjHA?=
 =?iso-8859-1?Q?GkI8kSa/wBHqOsqJAAIGiiJUDqdbGaRVBA0hnrXU0LXikxGo+Za83Kj7eS?=
 =?iso-8859-1?Q?oJR+zp/YAjOgAaqtBvrGwYQuRo49qH4qw8saDEG9PNBCTfXAGwD8S3XgCy?=
 =?iso-8859-1?Q?mvHFQetYhSPhHeQaAk4y1gSNxSxEPAZJ1sX6ImnzF9M+Bwl1TV7X8nVO6b?=
 =?iso-8859-1?Q?+GTeVrZzCzHHebCW58m/jWmeq3dAJhMU8VVUsIIrzHpKAvj/9Eb4B9p5Pd?=
 =?iso-8859-1?Q?pFyiOJRRiQ3YUmZsw08p93rNWY4JqsG3efpiVXiifJqEfReYfk3nfMM22h?=
 =?iso-8859-1?Q?DNYdUvdpuAU1J562mF2KjCnWGlWNSt5glzQx6Znxb06b/Dk4lxUxf69Sau?=
 =?iso-8859-1?Q?Sl8o/jQyZg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pHQejwz/ho+w4M6a5yG/tFP24mab9i72ZT5CKiou3koPHe+OQ1l4BtIM23KAkHE4BU0cN4YqCQks3B5tgfPjLaqVnTfAr3WTJvQHFeZLOC3J+X2QPJtDZISWzB2lOI4nVvE0tC58TiwDAUoekyNSAezB/jFCDzNfomTt0hRQqBH2KUx5oEUzp0NJg2dfRKWY84mNHFP847LzY6q0PLAiWERtN1kqNU8Cw3VpbqlK/EfJ+eaBTo5cBr+g4oMEgFkdbvnbB/uMp7TdTTezcij+dsxGaiUjtGXPpAmzOkEfJy4CI5Ofuh2Uhu8N5Ws/OuW5WvghW4iwaXWATXTVNR8tQw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1575b0-1cf6-4d29-8fad-08deca974377
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 04:33:35.3365 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FhlIhz3zeY8oQ2UymwSbLpelgohjeUli0dn2DvwN6TXmmWDeiuD5dNa83+zN1jRRqLk2WR54oIctjVMSEV5Slg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6918
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 366C5683494



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, June 11, 2026 1:40 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: Re: [PATCH v8 04/20] drm/i915/display: Pass target transcoder to
> intel_set_transcoder_timings()
>=20
> On Thu, Jun 04, 2026 at 01:24:00AM +0530, Animesh Manna wrote:
> > Let intel_set_transcoder_timings() take the target transcoder as an
> > explicit argument instead of always using crtc_state->cpu_transcoder.
> > This makes the helper reusable for callers that need to program
> > timings for a transcoder other than the CRTC's CPU transcoder.
> >
> > Update all existing callers to pass crtc_state->cpu_transcoder so
> > there is no functional change.
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 35
> > ++++++++++----------
> >  1 file changed, 18 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 8e269b71f18e..9031264a34fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -132,7 +132,8 @@
> >  #include "vlv_dsi_pll.h"
> >  #include "vlv_dsi_regs.h"
> >
> > -static void intel_set_transcoder_timings(const struct
> > intel_crtc_state *crtc_state);
> > +static void intel_set_transcoder_timings(const struct intel_crtc_state
> *crtc_state,
> > +					 enum transcoder transcoder);
> >  static void intel_set_pipe_src_size(const struct intel_crtc_state
> > *crtc_state);  static void hsw_set_transconf(const struct
> > intel_crtc_state *crtc_state);  static void bdw_set_pipe_misc(struct
> > intel_dsb *dsb, @@ -1504,7 +1505,7 @@ static void
> ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >  					       &crtc_state->dp_m2_n2);
> >  	}
> >
> > -	intel_set_transcoder_timings(crtc_state);
> > +	intel_set_transcoder_timings(crtc_state,
> > +crtc_state->cpu_transcoder);
> >
> >  	ilk_set_pipeconf(crtc_state);
> >  }
> > @@ -1635,7 +1636,7 @@ static void hsw_configure_cpu_transcoder(const
> struct intel_crtc_state *crtc_sta
> >  					       &crtc_state->dp_m2_n2);
> >  	}
> >
> > -	intel_set_transcoder_timings(crtc_state);
> > +	intel_set_transcoder_timings(crtc_state,
> > +crtc_state->cpu_transcoder);
> >
> >  	if (cpu_transcoder !=3D TRANSCODER_EDP)
> >  		intel_de_write(display, TRANS_MULT(display,
> cpu_transcoder), @@
> > -2048,7 +2049,7 @@ static void i9xx_configure_cpu_transcoder(const
> struct intel_crtc_state *crtc_st
> >  					       &crtc_state->dp_m2_n2);
> >  	}
> >
> > -	intel_set_transcoder_timings(crtc_state);
> > +	intel_set_transcoder_timings(crtc_state,
> > +crtc_state->cpu_transcoder);
> >
> >  	i9xx_set_pipeconf(crtc_state);
> >  }
> > @@ -2664,17 +2665,17 @@ transcoder_has_vrr(const struct
> intel_crtc_state *crtc_state)
> >  	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
> >  }
> >
> > -static void intel_set_transcoder_timings(const struct
> > intel_crtc_state *crtc_state)
> > +static void intel_set_transcoder_timings(const struct intel_crtc_state
> *crtc_state,
> > +					 enum transcoder transcoder)
> >  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> > -	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> >  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
> >  	int vsyncshift =3D 0;
> >
> > -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> > +	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
>=20
> If you want to rename the variable, then do so in a separate patch.
> Mixing the rename with other changes is destroying the signal to noise ra=
tio
> of the patch.

Sure, taken care in next version.

Regards,
Animesh
>=20
> >
> >  	/* We need to be careful not to changed the adjusted mode, for
> otherwise
> >  	 * the hw state checker will get angry at the mismatch. */ @@
> > -2703,7 +2704,7 @@ static void intel_set_transcoder_timings(const struc=
t
> intel_crtc_state *crtc_sta
> >  	 */
> >  	if (DISPLAY_VER(display) >=3D 13) {
> >  		intel_de_write(display,
> > -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> > +			       TRANS_SET_CONTEXT_LATENCY(display,
> transcoder),
> >  			       crtc_state->set_context_latency);
> >
> >  		/*
> > @@ -2718,16 +2719,16 @@ static void intel_set_transcoder_timings(const
> > struct intel_crtc_state *crtc_sta
> >
> >  	if (DISPLAY_VER(display) >=3D 4 && DISPLAY_VER(display) < 35)
> >  		intel_de_write(display,
> > -			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
> > +			       TRANS_VSYNCSHIFT(display, transcoder),
> >  			       vsyncshift);
> >
> > -	intel_de_write(display, TRANS_HTOTAL(display, cpu_transcoder),
> > +	intel_de_write(display, TRANS_HTOTAL(display, transcoder),
> >  		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> >  		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > -	intel_de_write(display, TRANS_HBLANK(display, cpu_transcoder),
> > +	intel_de_write(display, TRANS_HBLANK(display, transcoder),
> >  		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
> >  		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
> > -	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
> > +	intel_de_write(display, TRANS_HSYNC(display, transcoder),
> >  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
> >  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
> >
> > @@ -2740,13 +2741,13 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
> >  	if (intel_vrr_always_use_vrr_tg(display))
> >  		crtc_vtotal =3D 1;
> >
> > -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> > +	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
> >  		       VACTIVE(crtc_vdisplay - 1) |
> >  		       VTOTAL(crtc_vtotal - 1));
> > -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> > +	intel_de_write(display, TRANS_VBLANK(display, transcoder),
> >  		       VBLANK_START(crtc_vblank_start - 1) |
> >  		       VBLANK_END(crtc_vblank_end - 1));
> > -	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> > +	intel_de_write(display, TRANS_VSYNC(display, transcoder),
> >  		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
> >  		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
> >
> > @@ -2754,7 +2755,7 @@ static void intel_set_transcoder_timings(const
> struct intel_crtc_state *crtc_sta
> >  	 * programmed with the VTOTAL_EDP value. Same for VTOTAL_C.
> This is
> >  	 * documented on the DDI_FUNC_CTL register description, EDP Input
> Select
> >  	 * bits. */
> > -	if (display->platform.haswell && cpu_transcoder =3D=3D
> TRANSCODER_EDP &&
> > +	if (display->platform.haswell && transcoder =3D=3D TRANSCODER_EDP
> &&
> >  	    (pipe =3D=3D PIPE_B || pipe =3D=3D PIPE_C))
> >  		intel_de_write(display, TRANS_VTOTAL(display, pipe),
> >  			       VACTIVE(crtc_vdisplay - 1) | @@ -2769,7 +2770,7
> @@ static
> > void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_s=
ta
> >  		 * followed by BE which DPRX devices are unable to handle.
> >  		 * https://groups.vesa.org/wg/DP/document/20494
> >  		 */
> > -		intel_de_write(display,
> DP_MIN_HBLANK_CTL(cpu_transcoder),
> > +		intel_de_write(display, DP_MIN_HBLANK_CTL(transcoder),
> >  			       crtc_state->min_hblank);
> >  	}
> >  }
> > --
> > 2.29.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
