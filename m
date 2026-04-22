Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGZ0MQxM6GlaIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 06:18:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226BC441F4F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 06:18:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75C710E267;
	Wed, 22 Apr 2026 04:18:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YcDhpoSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C4410E261;
 Wed, 22 Apr 2026 04:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776831496; x=1808367496;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YGmW+QdFBa2Dn8DB8ipIRq2t7CRJsKs2oq5Z7vJlNEc=;
 b=YcDhpoSUabV8TkBFTgGrqIlqSFRqvjkaaU2gFJsxrN2Qv9sFeGBT+I8O
 UG1x6I5IPenio34JhbBmq3CEaCe9VTOS3Lpv5KxIUxp+TiU1x+TIKDiuX
 gq5K7igT1ldWgZ1ntVVeOjsqYHAU6l5Yil/uf3L3xFqviO3NSNvSOJgm7
 tnq0BegITTjR8g+WbgmzzVtJCH3HK6UrVOsZ/116ET6ckzsFQd61Jpn20
 8RRjNK76JRcdmdrjx20waDJVRcoIaH6FN3bC7nMfnerdF7jYVh0u6LDAQ
 aYPYfyz3a1AdTUritmWtQ7Bo3lOuU2XzyrDMNACibauEAc+02zIJxWzE6 g==;
X-CSE-ConnectionGUID: Z2l9MNb9TQC3hlveKoGdnQ==
X-CSE-MsgGUID: Hv3kRUK0RSiq5nHAX+Jz2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="88079928"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="88079928"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 21:18:15 -0700
X-CSE-ConnectionGUID: UyL6WhgrQGecGMb5FuhvBg==
X-CSE-MsgGUID: 8NJziSdnRQGELylW0A5RLw==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 21:18:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 21:18:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 21 Apr 2026 21:18:14 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 21:18:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l5eUAulnNlACsUZMIgsb+qZ4YP8ni10BLf5Aiz1LhW/fmYA6juVjS1n+y/zxqEBt01yDV3OtNZTurmFwzuE66pp8g21ywQrcFonnfWxMcDP4YUGS2cvEPkq6/1RMAlBg/IHbAP/JYDYklfMWdGlqhDZO30t+6zcNwRbquND6RFHvVHiFU4/STvgG8upRID0WbumULtai31Nj4yPGvCYGw+u5mHXoAENumhOt5P+eS3VjGmTDVjZu69FJlxay+Pw7upV1rwBm8wwbVcShaZikAT9GZPt/zqRisOJkp4atmp9/yY1xnMt7L3qSxJ3QX4DlDvG56EgI9V2NhnHAkGBqPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ND7Pt2ySFNyP8oT+QH7ZbGSNywMHXtCi8iVxXC5qcsM=;
 b=NchGiDZ3JVSmhxZw1C2pwtvti5FFxrsivKPslANkF6is3bK136ELpPoWAqciI3h+/0f6UPKjo/UPWvflt44Ff1pRYaomjFYh8s6T2qVZG05+i91kupk4yF11Q7V5x68DeXUOYy9PUp9baDoWvIdnA1XmD61GDXEiglbCS27RWy5tfzeLeXwQfv+YWvzSzrZkZh/AF0uQ0C8I9NXjii5jhg3PkbE2rt0GWXMC5H9eJp8QRM/r2XdIR5zpcgCmgbpI7zM2xA6cwRoZ24VgMJR41QLiIUsxh0SN1qAoL9XyUan5l6/D2N/zsqn9f59w2w65Dtmuo+GeqeY62p0WVHT0pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by MN2PR11MB4519.namprd11.prod.outlook.com (2603:10b6:208:26c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.20; Wed, 22 Apr
 2026 04:18:07 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%4]) with mapi id 15.20.9846.014; Wed, 22 Apr 2026
 04:18:07 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Shankar,
 Uma" <uma.shankar@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "seanpaul@google.com" <seanpaul@google.com>,
 "Navare, Manasi" <navaremanasi@google.com>, "Lee, Shawn C"
 <shawn.c.lee@intel.com>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Fix vblank timestamps for fixed
 RR on VRR-TG-always platforms
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Fix vblank timestamps for fixed
 RR on VRR-TG-always platforms
Thread-Index: AQHczoDg7/LPzqfW70C0V4gmT0U14bXqgMnA
Date: Wed, 22 Apr 2026 04:18:07 +0000
Message-ID: <PH7PR11MB8252DF9ADFBB1017ACE66C6F892D2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260417124439.206962-1-vidya.srinivas@intel.com>
 <aeJU9ubmOwiukGuG@intel.com>
In-Reply-To: <aeJU9ubmOwiukGuG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|MN2PR11MB4519:EE_
x-ms-office365-filtering-correlation-id: bcb4afaa-a363-4b73-48cb-08dea02627f0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: j/ufMSlnl8Eex/ia3tQY0pCdf7OR0izJw8jKq1FnFOW/10oOXbYC4oAk/HkuoMe9y9biuUvdguoSy1HZwaswJLuY70QsGljFIxaf4itex6POndDc2YGlZ1m55z0CnTBUb4MgXSIROoN2y2tqIfx6MmV/LBiJ4kACs75x7bi3C+uCxV9FxWzrk1S11wu3TkB3ZWQ1CSM6WHTJoSwTelledvIjqKDEHFgLlBPGsrJxJu10jWso6JXJcj8oqYCdM0/TQld53lPzLoMVWNY1maj4Z4Rtm3SwRFpeqhsE6IJr775hk2aSMERBpKKUzcBZY2qk9ApYTqKfG7Uad4dKMFJ/i7Temi+92EH1X59FvJUeUIQ0qP0l/2DX93vaV4SlGSB5hmYufCBdqgTM0WhXMNBCDgF01DAuBXX7A/hQywG8R/CVltzqBv66dCzWl0nD5RcBe5hidVnDpTA4+ZvmhSuf2QXpYVJj8/2YZEvzCfD6Q+aaXfRyPzcvKN6hK/GItSL/fYQwKQZp3z9qUZAY0Qg3/qoegEmE2pxerHY0D/Knt8XCNXxQODPG/JBAGZkK4meW6f0uI3Y5btDPaUsrhgeLSDHubIX66mmG4V1hHPgkhMbPqr8IaMX+5xmusfs5lApvYhOV572S1+cnsfijNR7jPIazFkJkELCCPcTMloQCyxPYCNEcNWIZvox+zmg3mFbaPoqDQBBRtQ4eG8+urWiIhRj6zI7qh5Si/mh++Bj7j6WIufhUZ2GO8agJIFX2LNkRBV4D3ojyrv8CbCGiaHQq60FaEjmtlsUjzCBhWAkIDTA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?c5abVkzOAKs+frqwYXSkAl5ETQ6mxpdBGSFiHRGYgLDGO/BGRfMpw/Dmpw?=
 =?iso-8859-1?Q?85vAzpVErycjD/t6FStHtuX7Vwr71WtkAkNb4BqQ0lkszh8x3zIj48U5Rt?=
 =?iso-8859-1?Q?40FeZPpXj74tTMc3g9Kj0rcd0xTUp+pG623HpbWX1qHxrn7yo51yYz9b7f?=
 =?iso-8859-1?Q?6z5SulHXmLX3ecx2un1xE6p76W/cQMyENsUL0UG0X7RucNEKvjhyRK/d31?=
 =?iso-8859-1?Q?bkigL88Ib2rhNllNEvSkypz2nBFcK7NOQvrRVEK0Ut40co1wR7YoErMQDk?=
 =?iso-8859-1?Q?ciS9FFvAQztlw2RMWN52wxAGCJpqXqXqoudfxv4oMmGTsZgPAjWqbIjJ0b?=
 =?iso-8859-1?Q?CxEzhQi24jOsGxQgiGZOezis/EGtXg2b/M1Ulrt5Lp20mK9mO8Dn5QmTMc?=
 =?iso-8859-1?Q?Sh5pFTkakMRVnYokKgpxl98+EmwXSrpEXMk4VKS/tdfqq414TMC150WGs8?=
 =?iso-8859-1?Q?Jy5TawpwUsACh9TKsfWJi/HMzpRQ//5rr6dETLNuPaXAqocEJO/357p7xZ?=
 =?iso-8859-1?Q?2SgpT27aHZaCzXFrvMKo8EQiQqKcQVcBUXmg5n0nbjTeaI7/C8Sk2R1nzA?=
 =?iso-8859-1?Q?4NVjEx9DiR78MZ7Uqr5oif5Wd65i5YSHZpQSnpviHqeJYwkvM/AELWNI+4?=
 =?iso-8859-1?Q?mT2jJNBFAC1stenk8zpEkiW/IzDobQPDgm34fB6OWuB+9PYFJQ7QFnIodj?=
 =?iso-8859-1?Q?eTZXrSnE4nqr3dMNhAritNET5SzXh9jLHb9Wi4zUjrUg0ggUT6QROLFXbJ?=
 =?iso-8859-1?Q?jAMsHIxDczuczSo33w3ePVgsd9p9bCz2L3vMjPFrziiSjEe4QndOqvVnAt?=
 =?iso-8859-1?Q?IdiNgmOC7ljxp6bwjvh9fGkSzafL9CdioS3dwhFhHNvCgyzvGi3XXEGLaX?=
 =?iso-8859-1?Q?rc4bsaOqYz1xnlPvDhsxRfRJmlHg3fPvnkAoWz6jAHa7GBG500pptcZdlK?=
 =?iso-8859-1?Q?xyPYi7pluITOoeCLKL3gJ5YS/VisWJU9t3OZ+D7gWWBHHo2fX11SWI32TT?=
 =?iso-8859-1?Q?8pP++tT+BO/zCLXFbmnnVMesOC5ZnHdG9YqdNpGkmLCxg2FSoixx10vpmV?=
 =?iso-8859-1?Q?TPy2Tpm6FBF9oCJ1ZrZbtMeoEl72A4nkiM8eYRLSeChaThe2uljd4qc9i7?=
 =?iso-8859-1?Q?Xvnafbn3mx47kcm/LuvMdy8eUkWyf6WEnyOMkgPQn3AORnTK8TVYBu0Pyb?=
 =?iso-8859-1?Q?gNwU+zu3RxeG3HZQNegVWZSO0RqCova6sgQusq2NKowKfA/1Bf4qO+7oCt?=
 =?iso-8859-1?Q?+n92X+y7F+GHaIYMAeHU1ndL0wbbClz1lsAEbhbf1oFATPo+PQU4+7NJeE?=
 =?iso-8859-1?Q?p+KiOn7iit3fMCNIZLKe8y9wDyAhJ6S16PtmNQgevnpJKYuuToih0PmI5H?=
 =?iso-8859-1?Q?/tx7xPxd0q6s37PbMJgIFgP9eW8EzvpFpjcilhNlETO1BzeHO4fvC3nKPC?=
 =?iso-8859-1?Q?Fp9XQ1Xq3IDIU92PYsBeWjU1mk+dEz47LKW2obwxJohHqsw46+kZe18CN6?=
 =?iso-8859-1?Q?nFr7BrUoRn9NYz7terBOV+MG7kInxa0i5zKRCPU5XTV93Np2Cwfyqptket?=
 =?iso-8859-1?Q?pY7vO3DZnbua3TgkyYTsBAw3iXif4hL0e76Zm40qWAnlL7kA4MnIAGU6dq?=
 =?iso-8859-1?Q?KRxgI2XXqw/pODVMCvg4v4Z6cOUy7CoJ8bBhDsUPxdUvOJrZXdDcqonB6R?=
 =?iso-8859-1?Q?K3clE9GQqVFDjVIi5yR6KQYprbok3VJbWeg5EfMiJxFskLR1Yz9mNHVXLC?=
 =?iso-8859-1?Q?pXvmLo8twKJRAv4ICpXk2/HZmLfQxID98pSHFe6AIKmmaeXAF+G9Y9B7pr?=
 =?iso-8859-1?Q?NSnP30WBxw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZWCPjVEQ+owsUhexkAfVU2bqdsmUg79hrybHuxysnCpqzlZ2mfiM728gSXQAbr7hcrRkBTz9Jo5H69kiE3h9hvjp/XRC56h3ANG/5ySszClCUMPQbR+B7M3PphMgcWhNcae5pFE0bZ+UTwnnh5ZxiDhulhivA9MOIUvti1RX4jUqQKHW4bxcpnLncqUt07fhteJbyRumAg7raQdDOwNiKabCBNHRDIXwMTTC8I/vdzIRO85upMnNwgYio6UP8uBKNj9e07SyldxldOaXHxPx7OP3WmoA+PPNn1yYHLjKAZJZE+2LmbbnASnS8h6YJGBf7zItFHGlJwMTn4LgbYY5Xw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb4afaa-a363-4b73-48cb-08dea02627f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2026 04:18:07.2141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d2o4YmzH0XZfAfljv5wxF7/LK0Urui+hj+XYUYqhRysuIb2sw0QgK74PVB6Cy1DLujMMLvoMVxTvDaHUb2tBjwCpo0cNvLmiflr8/8fg4nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4519
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 226BC441F4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: 17 April 2026 21:13
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; seanpaul@google.com; Navare, Manasi
> <navaremanasi@google.com>; Lee, Shawn C <shawn.c.lee@intel.com>
> Subject: Re: [PATCH] [RFC]: drm/i915/display: Fix vblank timestamps for f=
ixed
> RR on VRR-TG-always platforms
>=20
> On Fri, Apr 17, 2026 at 06:14:39PM +0530, Vidya Srinivas wrote:
> > On LNL+ VRR timing generator is always active.
> > For panels like this
> >
> > "2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920 0x48
> > 0xa
> > "2880x1800":  60 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x40
> > 0xa
> >
> > that use the same pixel clock with a stretched vtotal have a large
> > front porch. For this case 2880x1800 panel:
> > 120Hz: vtotal=3D1920 (120 lines of front porch)
> > 60Hz: vtotal=3D3840 (2000 lines of front porch)
> >
> > When at lower RR (60Hz) and "vrr_enable =3D false" this issue was seen
> > The intel_crtc_active_timings() function is not adjusting
> > crtc_vblank_start for the VRR TG when vrr_enable=3Dfalse, leaving it at
> > the raw mode value of 1800 (vactive end). Since the VRR TG counts all
> > the way to vtotal=3D3840, the actual frame latch happens at line 3840
> > (16.67ms), but the vblank timestamp was reported at line 1800 (7.8ms).
> >
> > This caused Android SurfaceFlinger to miscalculate frame deadlines --
> > it received fence signals ~8ms into the 16.67ms frame and concluded
> > frames were being presented late, leading to dropped frames during
> > heavy workloads like video playback at 60Hz.
> >
> > Fix by adjusting crtc_vblank_start, crtc_vblank_end, and crtc_vtotal
> > to match the VRR timing generator values when
> > intel_vrr_always_use_vrr_tg() is true, even when vrr_enable is false.a
>=20
> intel_vrr_compute_guardband() is supposed to tweak the adjusted_mode
> timings appropriately.

Hello Ville,

Apologies for missing this. Thank you so much.
Will check what else might be wrong in our case.

Regards
Vidya

>=20
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vblank.c | 20 +++++++++++++++++++-
> >  1 file changed, 19 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c
> > b/drivers/gpu/drm/i915/display/intel_vblank.c
> > index 0726a2abed38..8e0798277d5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > @@ -527,8 +527,26 @@ static void intel_crtc_active_timings(struct
> drm_display_mode *mode,
> >  	drm_mode_init(mode, &crtc_state->hw.adjusted_mode);
> >  	*vmax_vblank_start =3D 0;
> >
> > -	if (!vrr_enable)
> > +	if (!vrr_enable) {
> > +		/*
> > +		 * On platforms that always use the VRR timing generator
> > +		 * LNL+, even fixed refresh rate modes run
> > +		 * through the VRR TG. The actual frame boundary is at
> > +		 * flipline (=3D vtotal), not at vactive end. Without this
> > +		 * adjustment, vblank timestamps and flip-done fences are
> > +		 * signaled at vactive end (line 1800 for 60Hz) instead of
> > +		 * near the real frame boundary, causing
> > +		 * compositors like SurfaceFlinger to see ~8ms late fences
> > +		 * and drop frames during GPU-heavy workloads.
> > +		 */
> > +		if (intel_vrr_always_use_vrr_tg(to_intel_display(crtc_state))) {
> > +			mode->crtc_vtotal =3D
> intel_vrr_vmin_vtotal(crtc_state);
> > +			mode->crtc_vblank_end =3D
> intel_vrr_vmin_vtotal(crtc_state);
> > +			mode->crtc_vblank_start =3D
> > +				intel_vrr_vmin_vblank_start(crtc_state);
> > +		}
> >  		return;
> > +	}
> >
> >  	mode->crtc_vtotal =3D intel_vrr_vmax_vtotal(crtc_state);
> >  	mode->crtc_vblank_end =3D intel_vrr_vmax_vtotal(crtc_state);
> > --
> > 2.45.2
>=20
> --
> Ville Syrj=E4l=E4
> Intel
