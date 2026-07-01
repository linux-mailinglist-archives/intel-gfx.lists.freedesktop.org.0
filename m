Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SivsC22pRGp9ygoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 07:45:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 387116E9E8B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 07:45:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nktd2gzO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DF910E2EF;
	Wed,  1 Jul 2026 05:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72F110E2EF;
 Wed,  1 Jul 2026 05:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782884714; x=1814420714;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q5SwzxQWyqc+7hsENKdVwLSLE6aBaiYST+GStA5DXNA=;
 b=nktd2gzO9WLKlW2jUW3os/GHFy4tlej1KUvS8OLJCysaBIKGRZJxTrQN
 Nd2oThiFsA89gTk7wrqrif0/n6gvi1E+7jl1AR1b55APnp8H1R0vsJ5Jf
 Vp+oQixz4NGX1mgNQfBflhQ5mJJBFzGu8QVtvrMT14osBLyVWE9wM9Ilv
 j8phzwm8p75w3l/hk+JOjtIASq8IUL9vdaESEhVmrovNaHFNQ+XTJ8Klb
 Mli3+4tCkH/8sBnbmpUaal43+aNe7EbS9B0SwOPeVLb/Q+pGleHsCbXa5
 i8Rj7NKYfYZAMGQ1rwgAMu28KrrXJEgR1xiJuEZxnH/niDbsZPM8f0ock Q==;
X-CSE-ConnectionGUID: C6kTEOijTZ+0mYZ2DRqCjw==
X-CSE-MsgGUID: ljOdOefDSnmNczLZK774oA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="94258739"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="94258739"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 22:45:13 -0700
X-CSE-ConnectionGUID: y1jDbb/aTJuDqmpAiKjH3Q==
X-CSE-MsgGUID: O1UnQRXNTceUC3pAyXnoyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="276772077"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 22:45:13 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 22:45:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 30 Jun 2026 22:45:12 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 30 Jun 2026 22:45:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nC/NJ9SrVrsOEKuLwa0JIp2p6OOx+S5M1omAREyAAKLftB2EEtCJlNVtM5x33mOQdWhUhNK/0QjApgL22W4h5rI0HWHqD0gn41OknZ9zk3CNzxsjx+tdix+ZzRAn1hIvEM8+0gFft1iOWPVQv7WhZoXgiL91zhkhy7oiRJRqN2sIqZ84CGPIXQWelWS8Hfr7+r2+2Y2xxppTPY6DWXU7DJMDxaDCfc1u8X6Ibz+CrX5jSpIamXhkPS7LUaatjw/ss6NPBPqyzPbRGcWIe9p4jQXiWBQkD7eJiUVTwfPIGkzkiUs6Z+E4LgmtGPPe4wNwDcHsA0lJ0t7S2+Kifl9kuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8NQ5pOnwSv9M54PImGovBN7faWPu245XSEp5OQeyJZI=;
 b=vTHrWadecKrJ74oOObCtC4afwfXK4gyo5a7WzVoSzZcWswS4RT6BJBkVSbGvTgxSohiFVRXk6ClLe/h6JyNO8jGXxKF1Jb5ehbfdQHwIkYc3TnfnD3lbOBzFoQNNQELzoJnPTgLqtB1S7KJC44rUMjr2Bw9NWTvmMQegHf8ZkY/UDg/Cy8mA/Et2RRmo425IIxr1+9TqDAi08W8Xtl1RTFd5FFE6jkxVJXXt8+x5VVlL/mMRe+RPCjPbAkt+XMVIryerBGA5/fcRPaHdyWnY8RitgAV7RHJEwTLzip+g357TAwPPz2xqh5Hjl048XIIAC+0yAH9olLRj2owtSX9cKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by SJ2PR11MB7501.namprd11.prod.outlook.com
 (2603:10b6:a03:4d2::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Wed, 1 Jul
 2026 05:45:07 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 05:45:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH 1/1] drm/i915/display/psr: Block DC3CO entry during active
 frame
Thread-Topic: [PATCH 1/1] drm/i915/display/psr: Block DC3CO entry during
 active frame
Thread-Index: AQHdCG8O5yNy6QCb8kCVjeNh/kDdZrZYJ8Jw
Date: Wed, 1 Jul 2026 05:45:06 +0000
Message-ID: <DS4PPFE901A304F76B8301BE5F920A333D4E3F62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260630085928.1317279-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260630085928.1317279-2-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260630085928.1317279-2-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|SJ2PR11MB7501:EE_
x-ms-office365-filtering-correlation-id: 65deb264-785e-44a4-299f-08ded733e80a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|376014|366016|22082099003|18002099003|56012099006|38070700021|11063799006|4143699003;
x-microsoft-antispam-message-info: Y8KJtHI5IBNF2a9LGWsyZwpyo591yRJrxPxzvsyU+zmz7pxLVZwwLAtiiZsxxjISw6KEzxpOqqTOPpWutKwFMus3WTNWgylSxfxrBACgCmUa3f07pYvc4mNKZrq3K44uvdAQNmY/YoCMy0aGQ0sFL2+9r+RZMLTW/6MHpwfIviwC22rYXYYnZeIPrfviQVBNpIqotYfaQqXJD8SmI7aIGD7ypEGfWSfXInANuWtfyvGW4qFhehqQRjMW63qsBZGq697i52PMkODINBtKq3LwZZI11L8LYR7lqDFwGTpavJtpmNbWJ43DOMT5NMFvmO3y8aYlCHs1j2aKoZQ03dLdEf73RWpIL1LfbgJKn6pZalKKyCeC5Fdne+CRRUiCuO5tU00fiL78kpbm931/6cCK90NtMShKr8zixV5L4ocM/mJWLZ4maySFkO8sdrNtX8AqdCX66PZQTPPJNYkPMWj7EOD8JvTxDuXfAvV+fLxaM9Y6pDvAeXwxv8twgkprou32mJAv95gHqpPLqhduVmVfdawTkQx0vy5cIM457Q8pKn0N6p7r5Do8oRopeaHctQ9mjocdTwOIzN9Gg3P5rUgTD+w1Ui8Uu5Y0ygnvaOOtKM7rnL5zZpdiPNBACgqKkIUCdoLgvUpDm3z0v8H2KLMAyj0w+pTre1QzX07AeR5bZ6CPiV5G+VmgZ2yifttiYJopxasse1l4cNNaG/67QMH7DW6GieXGHi46fvM7i5uacxY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099006)(38070700021)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SJlZXcgmYDtC+fPuHhGOiPWq/qajCAODzf1OdCiwkMUvEgVfAPesD3GZk1dV?=
 =?us-ascii?Q?vI3E3vZbdQccJII9LAKMksdICoswgRB6oBJrc+P78S82Glnc95a/FTeGEoH6?=
 =?us-ascii?Q?e9LgH98Lz07Tll2s8SZeLI1Oc+btHKWWLjOJcclMdd8HcZZuYFvtWX42ognW?=
 =?us-ascii?Q?Jh8tEI8oXiVFkIVilmGcNn1P1PWJ4PWTK1m+PYA1hnaxeXXq+ZSQgDVD26KG?=
 =?us-ascii?Q?PoQO/ntfC1GESLHdSzZJa4Iwce6nKukyGbjd0uIZLZ0NZckI+LJM4sxoz0g3?=
 =?us-ascii?Q?YN1Xj6CgUEOagtTzuP0jGTk8FtZLo751Krnjn39DRIF4+nK7vAQOTIc+xO/Z?=
 =?us-ascii?Q?Epuq7ui0G9vBA1CkzJCLFJAcWSgV+u/GtUztjXJjY/kCKATdI1BQWk052lpe?=
 =?us-ascii?Q?119EaJGxDib3LY7yz3ugWLVMs/yljy1QWuO46rrT/l2SQm4j0UzDPMl+fDvn?=
 =?us-ascii?Q?9p4AmDvKMSmVxNrsBiGiz4tK30uRELRiqnEgpCLGqWuIZv5h3ucVV4GBCv8d?=
 =?us-ascii?Q?P329gydSQd9MpW/rQtX100/vHfTznE+ZOf1MZ1ZbfOV0oRB4QG7H2I/PVT5o?=
 =?us-ascii?Q?WDPTPnE817AVEOvtaP2RY1IWrsIZxgyLZPSGSTDl66uN2HFrPeb1TglSiLMk?=
 =?us-ascii?Q?SE/DLg9zmkipVnnx8cjIsjTgI+g0liJBhfALGhnR+u+zKXx0nS+yN9WvLeuZ?=
 =?us-ascii?Q?u3g/e+hvfKheEsMwDASCUCMddid5XqrqfZtoSYUVANw7wk/IfUKhQFW68fKq?=
 =?us-ascii?Q?4TQlK+w6nSh11Biaz2yMaE5Usr5yz+uqjFWHNs32pPL28Sm7Vu9aVrBFNFnL?=
 =?us-ascii?Q?SJIavpR2RZjMW7eIVgidLsGmvGwCRFNGfUBZHEHDeYfqpjBh45UYSA7+yP3I?=
 =?us-ascii?Q?WeDxgByPieMiAc8Mj3Ces1+phjW8oa0S6GCj24Kf7D+DwmSXggMx/wNyhNuF?=
 =?us-ascii?Q?T6uQaGYiRDqlfWH9dmF1DyHTWl8Z9h4npZdCDXVMslz/uuOdKhl0fN0XpFSX?=
 =?us-ascii?Q?ABFn6Nfb//+06sEiN8a4tmZgOannhTsxD4ahQ0s8JrpYP3fk1ulCJOxwA2BY?=
 =?us-ascii?Q?KK+DBz134pqG7LI1TNODmVi4uPuTmlYtQWHDl9G4KJ63nBbQ7CLt7mwF/Iv6?=
 =?us-ascii?Q?fU9A690u8OEhgygVcLGheetF9fNIjZDoeD80zTnBOcENJHam+MdXxIPDpK+x?=
 =?us-ascii?Q?Rtd8I5krfoXfSyoG8ZcU2I7dt+JQ8XannzCs8NdhkS19p/G6tphWfDnLaUoN?=
 =?us-ascii?Q?YMkF8G/+DRjlaRiLwQb7JTl0FKRUztoAyQgKTRYTXM0qkqqpCXWGbYwuTtDb?=
 =?us-ascii?Q?Kt4H011ZK6ECWoSyg+sooGsXld7ZgvQW5RiDZPz+O1lAyqj0b/sWZVaYqQLL?=
 =?us-ascii?Q?VM+wTm6zBBJeo0dGyDfCQ0riccXZeB5BOiyIqG1w5Vn/TouWf9ga6Y38ryUH?=
 =?us-ascii?Q?3mIrCHQRfdCESAg/mChmlwctkTJBuMDV7EVc1fRkE3NFjYnQbaGH8F0hzVIn?=
 =?us-ascii?Q?jGp/d6Ogarf4GtHWs65rRWKWGsuaNuOF2aacjvXUVm9kMI2T5UwXrfnZeUL9?=
 =?us-ascii?Q?Xl27ePLb1roRjoiJ8F7+fCFcWNMiIPUVtNEdDhO7B8zK1dfnnpQsCWuPAGQL?=
 =?us-ascii?Q?st05i3tf+inqx+CG/aZtQpmv9yOYTCC6tiNY1JDAkaUcll/TS6C1LB1UteRG?=
 =?us-ascii?Q?Pm5AcIdYrtBGCpetTJ5KmCTq04a7roh+UVhWaBnDaZBivJfefOuUQZTzc/+5?=
 =?us-ascii?Q?jsgnPdWqlw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: puYtY4qdDANlUyOcMGVzQ5tVt+mFWLo0F5MeELsB5dPYDctnszInI+Ma/FeRthm2/Yns6SWDkTucq/Qynnc/gQi56ZBzxA4uLDvmnQupUHW5ZbFsEHef5CsHiUib4i8wpNM+B7bOGP8SaLvBItomvKfcdNQHr/oiTkLGpmGg8d/8hjQwaqqr6DB1+hFkvB+0cqzfj6SKAWuU+vDDLo6Jkc2SjzMFIaWWomd+r6G640x+tm92fh1+jP4gNULG6fxZy4A+qrMLpbytCgHy/ekLxQk0PtW1CHSXXHWIK1g/3EeNYhyvIIVPWRVW7bBlCnk9RI5guCQokbklN9MpYHO4EQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65deb264-785e-44a4-299f-08ded733e80a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 05:45:06.9051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WK+CJM2tLPycKwwqSLKw9KYDIvJmRrpfzGH/QLIPt1tCsETiy20h+nWACrXRKDNRD5K3+obeJBZTF1q2TQWqNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7501
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
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
X-Rspamd-Queue-Id: 387116E9E8B

> Subject: [PATCH 1/1] drm/i915/display/psr: Block DC3CO entry during activ=
e
> frame

Only drm/i915/psr should be enough as prefix

>=20
> On Xe3P onwards, when PSR2 is enabled on a panel that does not support Ea=
rly
> Transport, DC3CO can be entered in the middle of an active frame. This
> prevents the pipe from completing the frame and leaves it in a bad state =
that
> does not recover well, causing visible corruption on screen.
>=20
> Set CHICKEN_DCPR_4 bit 24 in the PSR2 enable path when Early Transport is
> not in use, to notify DMC to prevent DC3CO entry.
>=20
> BSpec: 71483

Add 75253 here too

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_regs.h    |  3 +++
>  drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
>  2 files changed, 19 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 39e50423132f..754bb9b188b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1747,6 +1747,9 @@
>  #define XELPD_CHICKEN_DCPR_3			_MMIO(0x46438)
>  #define   DMD_RSP_TIMEOUT_DISABLE		REG_BIT(19)
>=20
> +#define XE3LPD_CHICKEN_DCPR_4			_MMIO(0x454a0)

This should be XE3P_CHICKEN_DCPR_4

> +#define   DCPR4_BLOCK_DC3CO_ACTIVE_FRAME	REG_BIT(24)
> +
>  #define SKL_DFSM			_MMIO(0x51000)
>  #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
>  #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 911afb9cb24e..ad6ece3ce04d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2103,6 +2103,18 @@ static void intel_psr_enable_source(struct intel_d=
p
> *intel_dp,
>  		else if (display->platform.alderlake_p)
>  			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> +
> +		/*
> +		 * HSD: 14026643300

This can be WA: <WA no.>

> +		 * On Xe3P+, restrict DC3CO entry during active frame when
> PSR2 is
> +		 * enabled without panel Early Transport; required to avoid
> pipe bad state.
> +		 * DMC honours CHICKEN_DCPR_4 bit 24 to block DC3CO entry
> during active frame.
> +		 */
> +		if (HAS_DC3CO(display) &&

We can do away with HAS_DC3CO and just use the intel_display_wa framework
Check intel_display_wa.c intel_display_wa.h as reference.



> +		    !intel_dp->psr.panel_replay_enabled &&
> +		    !intel_dp->psr.su_region_et_enabled)
> +			intel_de_rmw(display, XE3LPD_CHICKEN_DCPR_4,
> +				     0, DCPR4_BLOCK_DC3CO_ACTIVE_FRAME);
>  	}
>=20
>  	/* Wa_16025596647 */
> @@ -2344,6 +2356,10 @@ static void intel_psr_disable_locked(struct intel_=
dp
> *intel_dp)
>  		else if (display->platform.alderlake_p)
>  			intel_de_rmw(display, CLKGATE_DIS_MISC,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS,
> 0);
> +
> +		if (HAS_DC3CO(display))
> +			intel_de_rmw(display, XE3LPD_CHICKEN_DCPR_4,
> +				     DCPR4_BLOCK_DC3CO_ACTIVE_FRAME, 0);

Ditto.

Regards,
Suraj Kandpal

>  	}
>=20
>  	if (intel_dp_is_edp(intel_dp))
> --
> 2.43.0

