Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A9T5CfpQKmrlnAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 08:08:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BE266EE9D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 08:08:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aP08j6NX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA0E10ECDE;
	Thu, 11 Jun 2026 06:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD1E10ECDB;
 Thu, 11 Jun 2026 06:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781158135; x=1812694135;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H9qyizBLwj5G2bJZfpGYSbMzqyI2i3pbsobTr6PIebA=;
 b=aP08j6NXHlx63wI0UG0QM+iTjOlXjf9nHbr13vPfJvKsh4ZVV5lVDVNN
 nPb/t9EcIFd05jgW5hyHFXTP0Gmuk4BgR9HjjijHKS6kOShvE6uLepJdX
 ZfoTxUuDTToXqvWyHhUzPwdg0/e+zeSPPOYZjE6cQodyUrmcJCinAGMT3
 Q6fL9+pDv1PNPwIPW9aKc39v4AVf6RuiaEzyfXDrKJkk3pzz1ahGB9bkY
 7a/H0T+/t0aerfWkydsZDOVBZGXurP2cdLzf+Xy+VXuRAen5TMhCHV2rS
 J/xdTTNQziuBLDegQS1X1XIk/JXD0KUx+6XOEUU5ryBSXMZ5dTquylByS w==;
X-CSE-ConnectionGUID: 91GFE5cXTaq+JNe4oy/zjA==
X-CSE-MsgGUID: 3t1eYmwbQ7GeUlrT9174yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93352738"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93352738"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 23:08:54 -0700
X-CSE-ConnectionGUID: rJTk1dzQQCSEY8zhsZmyOQ==
X-CSE-MsgGUID: XWhOdQ90Sb+19e4QHNEi+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="246458949"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 23:08:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 23:08:54 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 23:08:54 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 23:08:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yLeXqtFcDCUu7g2+mi3NyZBGmBA1OJtRqXinjXHQwRtX8avvWKg8eBoIQGcfWuRjG+iYFTmLkL9ymrMlpYrWJye+derEOo9Nyk80QGnZ8mfMmsIUb7BHBdcqBDwLD+xmj/SY1idymUhwKnwZFKErKwBJCwRusIiQY6P1cpH+o4EBCrQ/oq9eWFxjO+nf2X5wEg/H79DZ0glKyBRoStIltcbC0DrDXP2sD45IpDotvbzlx7CvvorzyMaULoIJFe1d5s2MAeBcxWdug3pDuXPfxhgned/xwQ12Qjzy0/4dx1WN9yqBWmGI9tnYUgIPtsQkqm4OjtRxBRoSqw6h53bcLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RD3qMZgqW4ZlxnRkc3QriJkPOEh7Xgg8icSDQoIY6Is=;
 b=leTR1jFXAJB88OAbz38zfaaLoUqjv/CMm3Sg/3Ff2s6q6z5BRpjfkLjcJ4O1vRF8ayyHRb7hjnlifuW0QkuKlzvcQZCxd5ejciVb0c/sWwwuL5yyfCTIbwTtreu2+SGCQ1cIY4+rHbfiWl3qYAbkfRne7lVfvHwWhZRfaZcZSjrpXb7oqjOVZaiNgq9m62NvPA2DfMNENcRVlj9WIxyg5bOZYRFtVokbX+rvw6OXA09KPE9VGiRJF/tg7wurja4qmxkilXlvlj8cOXjrO/E5ElhCv4rRVrG16n9RaRDZ4gwsFaKTSbjXPJXczZywbQ4WZLp/WOqrL3vl1pZMgpULsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 EAYPR11MB9969.namprd11.prod.outlook.com (2603:10b6:303:2d7::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.13; Thu, 11 Jun 2026 06:08:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 06:08:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 06/20] drm/i915/display: Pass transcoder to
 intel_set_transcoder_timings_lrr()
Thread-Topic: [PATCH v8 06/20] drm/i915/display: Pass transcoder to
 intel_set_transcoder_timings_lrr()
Thread-Index: AQHc85dHY9dQqsjwgkiqaC5mHY8tNbY46jhA
Date: Thu, 11 Jun 2026 06:08:52 +0000
Message-ID: <DM4PR11MB6360C35B0E3D12D240BD9557F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-7-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-7-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|EAYPR11MB9969:EE_
x-ms-office365-filtering-correlation-id: 184f36ea-dc0e-4d08-ef6b-08dec77fe96d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|11063799006|56012099006|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: lvynifn3yTBWyoziVLdIc78YsKfkWOX8iOM8RnXJD/0DK7W2fsPQSccqWfPJqjwqRfdkXFI6zqskUtN+yL1x4LZ0J9sI6CG3vPfFP+oV/wfuw7AfY/ZIwn1Q1PWM2sLf+YQR3UhjaGGLmdbHgHRhM3j3YoHcYAEvj9wHEGCPQSoi0jbl0xvXQwk4lBIwLcSocJIXNGrG339uCIar1mXv3G4DtQR7+WB/yVmsxWGDZGK6nDYSgsa4Virqv7S5fplPcUgEEeApWLKD8WXULWoL/ITy/lYw+o+U5ZECEl5VtRYWbwKcLUlNsnSxCGWpYK0Q16ocnTmSY47qF4BpKLrWXCkels/nQCOhdeTkqTpNnYFt46i976QUnvcYpgGxBeSIwg574OaCioNptkwVsAdPoYo5HzaeyJ9ZpH9LN7kN5Ys6cnUFQwjHpsWyELhkPUTY2JU4V0T+yMNQqcvAldiHPkKdFkl20rfrMHPW/XUwkq8EikMV8LZ8LHAzRALHz6V4ApZjR+4PP45u43+Tfzo/jEdiftcPOTm/4JAdPNXoTTLqvKfwgLR0vYeAkHl+Ej3orJZsV7lUYAc/rYtmjsmYXrYX+W1UaznJQ51twON1WVAiaMQjv0cRSqBXxwgEmlzziWD216acOiVsn1JOxEovu3sAHds+69/agZydD8XPqUzACT+B72GfxYz2mASiGUkb2BpvHsyGFaJTkBt/Vw773c8kPdjyiFxQa2jzhjSg36oE7S/tqo0ey1OusQ+IpIS/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(11063799006)(56012099006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Z76H2cuTV4Ih7MCR01MHQI7tNJMMZLnJd74CCwBuibXggzBSqmG5wOFbRZt+?=
 =?us-ascii?Q?LBG2KuunWnfmjXocCNmt96b2HiletdhAeakZlSTXUKu0oOR/haf3ZRdwGOY3?=
 =?us-ascii?Q?ZNon4MmLLghVhX0YJQZmj/KRR8FcpLDGWR/PGoPA0veuLow9seq1GicTd+1D?=
 =?us-ascii?Q?0ZgX1Yw8xxAOCspYmIZXLD+GeNZ8gazQrKq+0RqSYkjrQs7qi4xz3NedO7bk?=
 =?us-ascii?Q?HaRJtawRfd8tprNGVRAeByrvE2nFIWcan69DQlV6t9zhjJ0+iZXSDApC8jcZ?=
 =?us-ascii?Q?1+OmzwDx3nWgF0WKdRXJZ1HZBem/O+wKjU5hRaaHGlqtzI/khV3EXpHHzrXE?=
 =?us-ascii?Q?nbTmApghzxfRLe4nZUFs1TwM1VUB0yTwPCqneZKiz8whzwkG+FgzJ/mk63zS?=
 =?us-ascii?Q?p4qv7YFcMKAGT8zFtO121yPWmqQpFZlVSX52jKRMHR8DpQ0/acb9BfXPW+TF?=
 =?us-ascii?Q?bMnjiOxdwUjDbpx4K5baxi1VlmlA32QubEGgzyhfSnu5ER/OGWtZjBaEnad9?=
 =?us-ascii?Q?pT7u6ZIjV2Fta0sG2Zj0toSFqTYr0HA6Zx59ibzxEms130GHQ1xC6Z4BwYMw?=
 =?us-ascii?Q?lqXByddZlDZ/thBQ7Nki2LeqoL1GRf3+ElYgqqik0Q/IO+JStcXN0rc+vDaG?=
 =?us-ascii?Q?kaim3n3JdgNUstd51idrVfts39mIFhaJJ9Z8NGqGx/foPXzSNrBiG5gxAxtl?=
 =?us-ascii?Q?Yx7xnG5l4nW8Sbx2+JNfwrAeQmdkiVjCoXjIdr0uSI7+p12RdI8Cd1PdgTnF?=
 =?us-ascii?Q?hmk9SlqLqzOC/w6GhyGYaBo8QWaKjIw2yHLkkILoCZcde9BVf9YJ2tRnV0X5?=
 =?us-ascii?Q?Tk//OZZvTlNYWZVasGDJNry6+mcgUYibkwo6/zWT8c6LJwH9rQ261NCA9k+m?=
 =?us-ascii?Q?zCevaB0ZVNrayutrfnKm0CjoRqBqZYDIvEuqP3ZEhzCm6eaUpMkcM2hDxDZg?=
 =?us-ascii?Q?YrwWxMJF5DDt6uGpgZD8kX7v0bbQAC5Eblh99atpr2F+0itrfMoIjb2ijCSH?=
 =?us-ascii?Q?pUwpRDw/fZL1ThpVsjPeSN7Hg+SgOLFCTwYoiistoybvbnBmxzL4KtLMMZnH?=
 =?us-ascii?Q?Xt9Crdn/occHeiByZmO2gswxlyWrptmPEYnSuQpGFFtcbSofFaWeXAjzRQjz?=
 =?us-ascii?Q?i93g9ZaLoudu4XEfMWOHWwsxJ3CIjWQfaNskDMspU5LCm4zeKDWpYlOHNRsS?=
 =?us-ascii?Q?R1XXyFE7rquDvPofREcFslk2R4uS4m4gPAmHg1GrmLk/IzyR5jsQk53xL2ds?=
 =?us-ascii?Q?HNm9o9TmlpsNijECEcfu5rjAXxNDFTPZHGHZ/u3/YTavHZ7hs7HFoluFL3y3?=
 =?us-ascii?Q?a15E4xBeHeyn2xVJu9mSB6Ml0QBAv68sED4r+nNZ31jV5mKeq49Eh7dFXh0H?=
 =?us-ascii?Q?8faAbLZa+SKF4njj07IxHNXLZ9mKlG3GLA1ldS0tIYAmHV96E3YddMGNfcHK?=
 =?us-ascii?Q?3qfAWkuhk0ksdBvRbzWaOWx5AbxnIAcLmlEfjYn/KOPAUvZEE1zy2OIOSHyx?=
 =?us-ascii?Q?jifasaHvxxQ1CA+rbrV1LzGrAc2psjPXTl3exTSQaNGuQp7ytZQTvyUgKL+V?=
 =?us-ascii?Q?28b2WglmVGi49vibUn4Q5NAMWtmLrnB+aYuGZtcWPAzexZcjcDPMJrSNf1nu?=
 =?us-ascii?Q?4bT6HT4bSg+bFXN3OrvK5bozEvQKPq6Gf+JYxOZEVb8FSyi7112s2Skojfga?=
 =?us-ascii?Q?oPDLXDyVG+80ZuVSI+GXLikAvk69BPnRmvZkS3W/lcuR3XT/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ScTw5wIhQ08vCYFsVWYu7ZjD5/qvhDOkALe4n6jKQe9bAmsmK/6lW3qDUknJGmgiIxKV5GripjbQ+xa1QCTGa8W+zyTUsB1Dj4t+k8L2VlT2qyXD5cir0fg0ZEo4ox1hYuKJSUSTQzDIaTHzLfg1AAGRVZSNhx/4xOZkztF5/eqcg+q3Nav1V+cPCH8JK3nTYwjSZ2/IlT21dEFhOtMRpaZYtYBUg3vBVDAoWGgJx5BtHrtYfzcSnfNe1/AnikqCk02RwHraHRI0cBVTd8aGJeEeu76vfuxclrDPPw7aLq0YLSMr2kTArGWIPDrnqx+9TmFSWu8971UM0MCsKhYsYQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 184f36ea-dc0e-4d08-ef6b-08dec77fe96d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 06:08:52.3731 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +j8n5ufaAeDRR7orBxI27lpvxEYG5vca8988dvEPrvzdfvilJ6duJB64FdR6Ybbe+iJiorjh0PJJd/xDlclWIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: EAYPR11MB9969
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8BE266EE9D



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 06/20] drm/i915/display: Pass transcoder to
> intel_set_transcoder_timings_lrr()
>=20
> Make intel_set_transcoder_timings_lrr() take the target transcoder as an =
explicit
> parameter instead of always using crtc_state->cpu_transcoder.
> This allows the LRR timing programming sequence to be reused for other
> transcoders (e.g. CMTG).
>=20
> Move the intel_vrr_set_fixed_rr_timings() and intel_vrr_transcoder_enable=
() calls
> out of intel_set_transcoder_timings_lrr() and into its only caller
> intel_pipe_fastset(), so the helper now strictly programs the LRR timing =
registers
> for the given transcoder.
>=20
> No functional change intended.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 2c15dd4c6d66..17621f66501f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2777,14 +2777,14 @@ static void intel_set_transcoder_timings(const st=
ruct
> intel_crtc_state *crtc_sta
>  	}
>  }
>=20
> -static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te
> *crtc_state)
> +static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te
> *crtc_state,
> +					     enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>=20
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, transcoder_is_dsi(transcoder));
>=20
>  	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
>  	crtc_vtotal =3D adjusted_mode->crtc_vtotal; @@ -2799,7 +2799,7 @@
> static void intel_set_transcoder_timings_lrr(const struct intel_crtc_stat=
e *crtc
>=20
>  	if (DISPLAY_VER(display) >=3D 13) {
>  		intel_de_write(display,
> -			       TRANS_SET_CONTEXT_LATENCY(display,
> cpu_transcoder),
> +			       TRANS_SET_CONTEXT_LATENCY(display,
> transcoder),
>  			       crtc_state->set_context_latency);
>=20
>  		/*
> @@ -2816,7 +2816,7 @@ static void intel_set_transcoder_timings_lrr(const
> struct intel_crtc_state *crtc
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP
> mode.
>  	 * But let's write it anyway to keep the state checker happy.
>  	 */
> -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VBLANK(display, transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
>  	/*
> @@ -2832,12 +2832,9 @@ static void intel_set_transcoder_timings_lrr(const
> struct intel_crtc_state *crtc
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> +	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> -
> -	intel_vrr_set_fixed_rr_timings(crtc_state);
> -	intel_vrr_transcoder_enable(crtc_state);
>  }
>=20
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state) @@
> -6674,8 +6671,11 @@ static void intel_pipe_fastset(const struct intel_crt=
c_state
> *old_crtc_state,
>  		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state-
> >cpu_transcoder,
>  					       &new_crtc_state->dp_m_n);
>=20
> -	if (new_crtc_state->update_lrr)
> -		intel_set_transcoder_timings_lrr(new_crtc_state);
> +	if (new_crtc_state->update_lrr) {
> +		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state-
> >cpu_transcoder);
> +		intel_vrr_set_fixed_rr_timings(new_crtc_state);
> +		intel_vrr_transcoder_enable(new_crtc_state);
> +	}
>  }
>=20
>  static void commit_pipe_pre_planes(struct intel_atomic_state *state,
> --
> 2.29.0

