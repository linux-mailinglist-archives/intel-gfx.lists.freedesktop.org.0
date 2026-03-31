Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOb7FVLNy2luLwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:34:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B702536A505
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 15:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4160310E9DA;
	Tue, 31 Mar 2026 13:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iuroECi0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F4B10E9C2;
 Tue, 31 Mar 2026 13:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774964046; x=1806500046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fOzngS0glXnj/nalB0pgE0CZNzp6tVZfijsjUSppLPw=;
 b=iuroECi08rjFzQRfrZes7KGEPky5IVrR3OyeA6Ore8kcq3SSYIgh7XSO
 12n29KkeWGWbl5VZyyYfI791RYNNVDuJ1hw/GUAxwlwT48aEJGykMYVFj
 xX09zoFQmle9iKX+Z67FRIG4iJc0u/t4nAcl1ZVGriACc637GmpezAx8T
 Sh2JC/L4Od53CsY6HnbwK5IP/7pR4NhqChxqucgBIOnuOzgL2BpJPDC0M
 CJTF/O8ELUVZNf41Ekxa95OYH2KhhLlert3o66i9i5ULVZiActeFLDwda
 UPJUOXWFU+uMddoYUs/TnWt43q3bVplaprZ3LhRLNoO3ZjGDXSRbPgurt w==;
X-CSE-ConnectionGUID: jyRMqQLTRIWkM/Jal0/8AA==
X-CSE-MsgGUID: kwDGRuUrS8OcgfSDtYfOOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="87368317"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="87368317"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 06:33:59 -0700
X-CSE-ConnectionGUID: QgdKEq8JTqKTwr7QO/SuXw==
X-CSE-MsgGUID: 1FZ1gr2mSn2hZGopaugHRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="230432216"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 06:33:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 06:33:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 06:33:56 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 06:33:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CB/VEdFBdZpK6b6l2ovSm52FRN03h7wJJ4yX8f5AO42JHRB5l2hQahqlF2Y1YrPLUgk9a78Fvxc5VJWWIK8CArthbe5fBnZronBAN0F7En7ETP4dlAd9vhn+SQ2NEHPKM8vLpaZr9uSboJ/YC+bUWsYkIi7r9UXdG3PEfkGPy+QTei4HTvVlj1e1OGZK5teffOZQ85tsQZntIDNCXHxRB0Z2WXJx6ybUbQmtpdte7PPbrl4zQecXXj+N2LaVUumcqAGE6Ln3iuCN82rOkaPyZzXbG65BdPYRnWhn5UWSS5g3dFJYwrjoZ8KnNR0OQO+zwSFyQaz9aKKKCadmTKZDHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdJnq6h6FU13zIs13QEBjfSxlSY8lcweAL8sG7K+C7M=;
 b=erIrO4RYz8DMLdI9oSbL4OitWb09+AcV+V+C46mLpxRpM//Ba2H9SCSes/eI6G564GRNikFd+F4hDHRITNmiNZv5135ShkyJyVov+CqLFT8LYoPSjkwAHVWvt/DI846pQV4PhvCRzvzkDYMD9gELNpezMk7xiLgPMV0giiL922deViox2/IhsE21Q6mr9039pxgyiUWkQgq+Yo6Xrp1wtp/QDd9NCOX7H+5mDmFikPve8Hs0cYWRcyOeJD2yplhtveD+AiwUQhcxFaVnzbAUlsk4CcYNJnbLdZ/vHZIDWhn76U57UafFrs/bXBUk5C8nwdWN2M0S+jUV0+jlXuToPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ2PR11MB7598.namprd11.prod.outlook.com (2603:10b6:a03:4c6::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 13:33:48 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 13:33:47 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 9/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Thread-Topic: [PATCH 9/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
Thread-Index: AQHcvXBzcVK21K1Q7kOQXJvp2lBH+7XIbBEAgAA+KkA=
Date: Tue, 31 Mar 2026 13:33:47 +0000
Message-ID: <IA1PR11MB6467A67B68E435ADC991BDF0E353A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-10-ville.syrjala@linux.intel.com>
 <acuYVhpNeDzvHJ7e@intel.com>
In-Reply-To: <acuYVhpNeDzvHJ7e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ2PR11MB7598:EE_
x-ms-office365-filtering-correlation-id: da7f6823-20a3-4fe8-cc1d-08de8f2a2370
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: eEQruoJrGEq9R2SSVzMVgRrOZGCcu1KOH3vZUy/zyk2xOg99gp7HGtJtTH1tUlCJxktKX8OecqZogTvQdnUf0E0RrbbgZ/ZiwLZbtPjiKs24IzuKd+K0eoe1qLR52R/tl+KVfo3qGo75DFdS5PO/SCKu9nAhf58p+fNUZMmVrKhBzDpx31OcD7gyGW1Z/Ig4sd5fnlXAsOkhWk7nhWrwqKrtG9/8OyRCth194VSoZxsYtHCoY9aSZavpWqVc70uBp6apaM1/9WUyRYbYSa3L30qUWWITolk+Q5rFA24qY8Bwbp8qQkDYEocdA+VjcMpt8ZTUNUwxOJSLgMKWXy2s/6vdXOgZPcBmQxjD4MlRLPvx292b9lr6XVeP+C/DH4umOAipG99PJeVUnkYSAtFC6ziHdrx/6+3MLk99PES18Q25eMTM8t3/1AcsR9i2s46oIhymsapUXy3OpgHBqJ9InUgCV9MQzGIKNxhYGZK5lVbjO9FRgRF1nQi6ZQ6NFUdj2ef1rdq6iCUeQOlD987Fz2PaVLy6OJfztVBZHu1Ei1gBslRARtN+N1oIbjsMeXtTh6Wlx6GzfNRlSnhkoCXrtrq2AyeXymg+s80Dl1W4EJBFdCSHjdSYjqQZm94P6TgWgrII1dPb0RMJOpOmVGhpx0WYLgtPr4JpgRxBMlHhOCfv7BJbpkK8IlI7HEn/EUyMjItaym8Ku7lqCXTvXlxVx24JiwVlHAMueRywuB2xZNlpKiFmnHFtUhMtj6RyQ9MEwG9vnY0hyJcMlkEyjxGg4WdqKivTC0qWWPYo2MpnjB0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?BzarEhRbbcAZK1yamDdU797PQ6xHAZuUPjudVskUeHcJuLuTzRCNW421WV?=
 =?iso-8859-1?Q?/jR559WTYojJayHz/PsOrUBIkOoO4oO0aAnO1ct/ADajKCBRJYUSnneAfB?=
 =?iso-8859-1?Q?2ALzVFdneQs65/yJmBUL+M5Yw6eHWrgxbgAo7xxJVisB67PahwMaPqJxG/?=
 =?iso-8859-1?Q?vRyFmkz4bdgycqCp0I1ZGbCAzEgPxv0jw4s+YSdRZopPwzjlW29G1bOMcH?=
 =?iso-8859-1?Q?oYPz8hfX5FM3oymIbTrs6ULjPJDueAqYIFhBf+0YkEjW8yKSRVvjV5rBaI?=
 =?iso-8859-1?Q?1EcqeJRHp+1021DQKkhL8bdZH+t1EfRo2JfZBIR1iIxNW27kiaF/0BnGr2?=
 =?iso-8859-1?Q?deN8AuVLUClPMpzvUsMBgE5yGmtB8hgoBVndA7549mnjRBNhcMQqQhG2IK?=
 =?iso-8859-1?Q?hOAOssKqaA1n5/b/dwhSZi8dN+4u1VenmeOTRXr3CTaqTlbWflrduOzKUU?=
 =?iso-8859-1?Q?qsJgn6oPrUmTomaYflcjeHdgl4QqWyB/jQRfz12tE/zjfOd70uijDaAiRG?=
 =?iso-8859-1?Q?3Tt54ZUweEj2qaHBWO8nixE/caIdMHOL3ns/ByAAaZpyZ2diSRpSRIZp/P?=
 =?iso-8859-1?Q?19V18Ai9JkrwjDXfjLJN4st25/+dxuKluy3xMR7t7KeyPCL0XJc6qQI2ll?=
 =?iso-8859-1?Q?efTvmUPcsH4Ji4m9ez41A575HZn/IYf9qoSczB34fel2+b0HYU5aUNY5gg?=
 =?iso-8859-1?Q?qTgJq9BzmTKqFgpv8oXSMhPbJxcWD36lFGKsLqS1jl61sSkzlWyTHw7MqZ?=
 =?iso-8859-1?Q?S+dSd8fx4cEe/oSdX7HYcQiZoaqGVtHLxMAZj38uiLyKC4/jBocthL0CSM?=
 =?iso-8859-1?Q?uQ2DxAcw1H/cAaxX2azaxy0Iq/lfZfpODhKiUmYGEDb2undQ7pLB+XsS1K?=
 =?iso-8859-1?Q?Hxs5h6mjz8fRmDV6awttQZYtvq5AGNZlFWohnYD4BiWbWGirew4nPiH65y?=
 =?iso-8859-1?Q?vsdqRaZsSEZVJ7pt/SFRIEH1OjGoiM/NllXKQXD+MtiMW3Qgx6PYxb4kyU?=
 =?iso-8859-1?Q?ohMsvnQ0g+/FJ9skZQH/isCr/zF2pb6ZxSYxjregIHk45cPDJMarlvtzGM?=
 =?iso-8859-1?Q?bpa5hGD4GW8nSZEsZGoBijXWhp6Q1rc0+UkrzlMWIxZakjWWJsoUYlUKzp?=
 =?iso-8859-1?Q?BvR3+q9iUHklKAq4m88WEivzlguLC+67kfQOX2mFTbJD79k/vWxPy1Ip0k?=
 =?iso-8859-1?Q?GLVbgSkVU+bIm8zD5CC0fZKh3RH6CuQVsQW9ETONlG+C8mhwDO5sBURxwC?=
 =?iso-8859-1?Q?b/pxf0wtcec8Gf24V9u6pa42q24K8yPQ92EMecSVVwkVa5pzlbw4peiLyg?=
 =?iso-8859-1?Q?+l2o/9DW6b/D4l4Wym201JnPCG+ym+1qsf3IYBJOMWNL7Ug4g6EXKFWipt?=
 =?iso-8859-1?Q?ZJEOEwYrzdHG3SvPSYfjVl+nuo+QC8Zc3HVf/g/LnrWdEmKefvOLc3JEgW?=
 =?iso-8859-1?Q?Woqs+17pY2HXW5/oZDFR1Smgjvk0pQf3n6YmrE5W7r8RmYGw6GcTlMhLcs?=
 =?iso-8859-1?Q?AAOGSKBSBkBaPsCWOI92hAC5jDv7GQnLopO3eTDCd/bszf04gHMkgIbDK3?=
 =?iso-8859-1?Q?nuKYoJCyo8QAs8g1fQUSlF+Fj9qjtuYaU4zEsnm5repxRJPKzNJGyFcNNE?=
 =?iso-8859-1?Q?+lBaJ7pSQgAKfGpgpU6xMhLTnqf/+sXL+lNjeTXoLtRgejH0QUlMxpt1im?=
 =?iso-8859-1?Q?RX/Ijs9Yu0Ng1bNFUwzKw+/y2EbbVkOaG7hwnqxe6UxIMlXHAfy/xBaL97?=
 =?iso-8859-1?Q?yFq+9veYy0WI7EnvG1YUqfNhGN8U1MpT76Xp2p6nYpKRaTTcDVyht/wdWz?=
 =?iso-8859-1?Q?+KAChnArLA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: oIDYjqk7+TFCZ5nt18UT608ZVmJ+iqHlpNzyTzc4g7ikdjoadWs7B+tct+iTdCXCOVsky0nbEO88cns93DZZNgFqxZUL4qAltFBeY8qheu1I2DWe3d61Gl1KPUO68PqGy628FJA9mhqlNq+dK9oJnm/T9KqiNa1/w6GRwqv1LlshTRXh6vfSDjCS/+7NJ7BT6Yc/z1pEZPmcQaFhhpGCAQNOVrBps8P7OJ05rE94m5xBqQ4goPNT+++/D0pRRjva86xgxvJB0lfe8H5AYajShwUNBZymZHAbSbu9kBDKtTjHrwSdPsYSwY18bgrCQwLwvyex+MzCJVCQkdGVjVXyDQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da7f6823-20a3-4fe8-cc1d-08de8f2a2370
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2026 13:33:47.9012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EIigqnFb8/PTExzHK1rTSWQVDrh+21Uo2t5k00AwO+inubznJC+4Ox/KRncFjlEi1vAeh64fDi0iCmlxjjIO6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7598
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B702536A505
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, March 31, 2026 3:18 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH 9/9] drm/i915/casf: Integrate the sharpness filter pr=
operly
> into the scaler code
>=20
> On Fri, Mar 27, 2026 at 12:31:39AM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > The sharpness filter is just a special mode of the pipe scaler.
> > It doesn't warrant all this special casing everywhere. Just integrate
> > it properly into the scaler code so that it's treated no different
> > from the other pipe scaler uses (scaling,centering, YCbCr 4:2:0
> > output).
> >
> > Cc: Nemesa Garg <nemesa.garg@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_casf.c    | 62 ++------------
> >  drivers/gpu/drm/i915/display/intel_casf.h    |  6 +-
> >  drivers/gpu/drm/i915/display/intel_display.c | 34 +-------
> >  drivers/gpu/drm/i915/display/intel_pfit.c    | 13 ++-
> >  drivers/gpu/drm/i915/display/skl_scaler.c    | 85 ++++++++------------
> >  drivers/gpu/drm/i915/display/skl_scaler.h    |  2 -
> >  6 files changed, 53 insertions(+), 149 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > b/drivers/gpu/drm/i915/display/intel_casf.c
> > index 21e84a4f9ff5..c2d2746c5f04 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.c
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > @@ -75,20 +75,6 @@ static void intel_casf_filter_lut_load(const struct
> intel_crtc_state *crtc_state
> >  			       sharpness_lut[i]);
> >  }
> >
> > -void intel_casf_update_strength(const struct intel_crtc_state
> > *crtc_state) -{
> > -	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	int win_size;
> > -
> > -	intel_de_rmw(display, SHARPNESS_CTL(crtc->pipe),
> FILTER_STRENGTH_MASK,
> > -		     FILTER_STRENGTH(crtc_state->pch_pfit.casf.strength));
> > -
> > -	win_size =3D intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, 1));
> > -
> > -	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, 1), win_size);
> > -}
> > -
> >  static void intel_casf_compute_win_size(struct intel_crtc_state
> > *crtc_state)  {
> >  	const struct drm_display_mode *mode =3D &crtc_state-
> >hw.adjusted_mode;
> > @@ -102,19 +88,15 @@ static void intel_casf_compute_win_size(struct
> intel_crtc_state *crtc_state)
> >  		crtc_state->pch_pfit.casf.win_size =3D
> SHARPNESS_FILTER_SIZE_7X7;  }
> >
> > +static void intel_casf_scaler_compute_coef(struct intel_crtc_state
> > +*crtc_state);
> > +
> >  int intel_casf_compute_config(struct intel_crtc_state *crtc_state)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >
> > -	if (!HAS_CASF(display))
> > +	if (crtc_state->hw.sharpness_strength =3D=3D 0)
> >  		return 0;
> >
> > -	if (crtc_state->hw.sharpness_strength =3D=3D 0) {
> > -		crtc_state->pch_pfit.casf.enable =3D false;
> > -		crtc_state->pch_pfit.casf.strength =3D 0;
> > -		return 0;
> > -	}
> > -
> >  	/* CASF with joiner not supported in hardware */
> >  	if (crtc_state->joiner_pipes) {
> >  		drm_dbg_kms(display->drm, "CASF not supported with
> joiner\n"); @@
> > -136,7 +118,7 @@ int intel_casf_compute_config(struct intel_crtc_state
> > *crtc_state)
> >
> >  	intel_casf_compute_win_size(crtc_state);
> >
> > -	intel_casf_scaler_compute_config(crtc_state);
> > +	intel_casf_scaler_compute_coef(crtc_state);
> >
> >  	return 0;
> >  }
> > @@ -161,14 +143,6 @@ void intel_casf_sharpness_get_config(struct
> intel_crtc_state *crtc_state)
> >  	}
> >  }
> >
> > -bool intel_casf_needs_scaler(const struct intel_crtc_state
> > *crtc_state) -{
> > -	if (crtc_state->pch_pfit.casf.enable)
> > -		return true;
> > -
> > -	return false;
> > -}
> > -
> >  static int casf_coeff_tap(int i)
> >  {
> >  	return i % SCALER_FILTER_NUM_TAPS;
> > @@ -240,7 +214,7 @@ static void convert_sharpness_coef_binary(struct
> scaler_filter_coeff *coeff,
> >  	}
> >  }
> >
> > -void intel_casf_scaler_compute_config(struct intel_crtc_state
> > *crtc_state)
> > +static void intel_casf_scaler_compute_coef(struct intel_crtc_state
> > +*crtc_state)
> >  {
> >  	const u16 *filtercoeff;
> >  	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> > @@ -264,32 +238,8 @@ void intel_casf_scaler_compute_config(struct
> intel_crtc_state *crtc_state)
> >  	}
> >  }
> >
> > -void intel_casf_enable(const struct intel_crtc_state *crtc_state)
> > +void intel_casf_setup(const struct intel_crtc_state *crtc_state)
> >  {
> > -	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	u32 sharpness_ctl;
> > -
> >  	intel_casf_filter_lut_load(crtc_state);
> > -
> >  	intel_casf_write_coeff(crtc_state);
> > -
> > -	sharpness_ctl =3D FILTER_EN | FILTER_STRENGTH(crtc_state-
> >pch_pfit.casf.strength);
> > -
> > -	sharpness_ctl |=3D crtc_state->pch_pfit.casf.win_size;
> > -
> > -	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), sharpness_ctl);
> > -
> > -	skl_scaler_setup_casf(crtc_state);
> > -}
> > -
> > -void intel_casf_disable(const struct intel_crtc_state *crtc_state) -{
> > -	struct intel_display *display =3D to_intel_display(crtc_state);
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -
> > -	intel_de_write(display, SKL_PS_CTRL(crtc->pipe, 1), 0);
> > -	intel_de_write(display, SKL_PS_WIN_POS(crtc->pipe, 1), 0);
> > -	intel_de_write(display, SHARPNESS_CTL(crtc->pipe), 0);
> > -	intel_de_write(display, SKL_PS_WIN_SZ(crtc->pipe, 1), 0);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_casf.h
> > b/drivers/gpu/drm/i915/display/intel_casf.h
> > index c4f984b73348..3ebb7522af0a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_casf.h
> > +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> > @@ -11,11 +11,7 @@
> >  struct intel_crtc_state;
> >
> >  int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
> > -void intel_casf_update_strength(const struct intel_crtc_state
> > *new_crtc_state);  void intel_casf_sharpness_get_config(struct
> > intel_crtc_state *crtc_state); -void intel_casf_enable(const struct
> > intel_crtc_state *crtc_state); -void intel_casf_disable(const struct
> > intel_crtc_state *crtc_state); -void
> > intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
> > -bool intel_casf_needs_scaler(const struct intel_crtc_state
> > *crtc_state);
> > +void intel_casf_setup(const struct intel_crtc_state *crtc_state);
> >
> >  #endif /* __INTEL_CASF_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e02e69467871..58a654ca0d20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -58,7 +58,6 @@
> >  #include "intel_audio.h"
> >  #include "intel_bo.h"
> >  #include "intel_bw.h"
> > -#include "intel_casf.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_clock_gating.h"
> >  #include "intel_color.h"
> > @@ -988,24 +987,6 @@ static bool audio_disabling(const struct
> intel_crtc_state *old_crtc_state,
> >  		 memcmp(old_crtc_state->eld, new_crtc_state->eld,
> MAX_ELD_BYTES) !=3D
> > 0);  }
> >
> > -static bool intel_casf_enabling(const struct intel_crtc_state *new_crt=
c_state,
> > -				const struct intel_crtc_state *old_crtc_state)
> > -{
> > -	if (!new_crtc_state->hw.active)
> > -		return false;
> > -
> > -	return is_enabling(pch_pfit.casf.enable, old_crtc_state,
> new_crtc_state);
> > -}
> > -
> > -static bool intel_casf_disabling(const struct intel_crtc_state *old_cr=
tc_state,
> > -				 const struct intel_crtc_state *new_crtc_state)
> > -{
> > -	if (!new_crtc_state->hw.active)
> > -		return false;
> > -
> > -	return is_disabling(pch_pfit.casf.enable, old_crtc_state,
> new_crtc_state);
> > -}
> > -
> >  static bool intel_crtc_lobf_enabling(const struct intel_crtc_state
> *old_crtc_state,
> >  				     const struct intel_crtc_state
> *new_crtc_state)  { @@ -1187,9
> > +1168,6 @@ static void intel_pre_plane_update(struct intel_atomic_state
> *state,
> >  	if (audio_disabling(old_crtc_state, new_crtc_state))
> >  		intel_encoders_audio_disable(state, crtc);
> >
> > -	if (intel_casf_disabling(old_crtc_state, new_crtc_state))
> > -		intel_casf_disable(new_crtc_state);
> > -
> >  	intel_drrs_deactivate(old_crtc_state);
> >
> >  	if (hsw_ips_pre_update(state, crtc)) @@ -4308,14 +4286,9 @@ static
> > int intel_crtc_atomic_check(struct intel_atomic_state *state,
> >  		return ret;
> >  	}
> >
> > -	ret =3D intel_casf_compute_config(crtc_state);
> > -	if (ret)
> > -		return ret;
> > -
> >  	if (DISPLAY_VER(display) >=3D 9) {
> >  		if (intel_crtc_needs_modeset(crtc_state) ||
> > -		    intel_crtc_needs_fastset(crtc_state) ||
> > -		    intel_casf_needs_scaler(crtc_state)) {
> > +		    intel_crtc_needs_fastset(crtc_state)) {
> >  			ret =3D skl_update_scaler_crtc(crtc_state);
> >  			if (ret)
> >  				return ret;
> > @@ -6817,11 +6790,6 @@ static void intel_pre_update_crtc(struct
> intel_atomic_state *state,
> >  			intel_vrr_set_transcoder_timings(new_crtc_state);
> >  	}
> >
> > -	if (intel_casf_enabling(new_crtc_state, old_crtc_state))
> > -		intel_casf_enable(new_crtc_state);
> > -	else if (new_crtc_state->pch_pfit.casf.strength !=3D old_crtc_state-
> >pch_pfit.casf.strength)
> > -		intel_casf_update_strength(new_crtc_state);
> > -
> >  	intel_fbc_update(state, crtc);
> >
> >  	drm_WARN_ON(display->drm,
> !intel_display_power_is_enabled(display,
> > POWER_DOMAIN_DC_OFF)); diff --git
> > a/drivers/gpu/drm/i915/display/intel_pfit.c
> > b/drivers/gpu/drm/i915/display/intel_pfit.c
> > index 6dda496190e0..e04ca960f115 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> > @@ -186,6 +186,7 @@ static int pch_panel_fitting(struct intel_crtc_stat=
e
> *crtc_state,
> >  			     const struct drm_connector_state *conn_state)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	const struct drm_display_mode *adjusted_mode =3D
> >  		&crtc_state->hw.adjusted_mode;
> >  	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
> > @@ -195,7 +196,8 @@ static int pch_panel_fitting(struct intel_crtc_stat=
e
> *crtc_state,
> >  	/* Native modes don't need fitting */
> >  	if (adjusted_mode->crtc_hdisplay =3D=3D pipe_src_w &&
> >  	    adjusted_mode->crtc_vdisplay =3D=3D pipe_src_h &&
> > -	    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> > +	    crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_YCBCR420
> &&
> > +	    crtc_state->hw.sharpness_strength =3D=3D 0)
> >  		return 0;
> >
> >  	switch (conn_state->scaling_mode) {
> > @@ -249,6 +251,15 @@ static int pch_panel_fitting(struct intel_crtc_sta=
te
> *crtc_state,
> >  		return -EINVAL;
> >  	}
> >
> > +	if (crtc_state->hw.sharpness_strength &&
> > +	    (width !=3D pipe_src_w || height !=3D pipe_src_h ||
> > +	     crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)) {
>=20
> We should probably also reject
>  sharpness_strength !=3D 0 && scaling_filter !=3D DEFAULT
>=20
> I suppose it's not strictly needed because we only allow sharpness with 1=
:1
> scaling, and that makes the nearest neighbor filter a NOP.
> But probably a good idea to make the uapi behaviour consistent, especiall=
y if
> we later add other filter modes that maybe aren't NOPs.
>=20
Yes for now it will work but better to add to reduce future noise.

> > +		drm_dbg_kms(display->drm,
> > +			    "[CRTC:%d:%s] no scaling/YCbCr output with
> sharpness filter\n",
> > +			    crtc->base.base.id, crtc->base.name);
> > +		return -EINVAL;
> > +	}
> > +
> >  	drm_rect_init(&crtc_state->pch_pfit.dst,
> >  		      x, y, width, height);
> >  	crtc_state->pch_pfit.enabled =3D true;
>=20
> --
> Ville Syrj=E4l=E4
> Intel
