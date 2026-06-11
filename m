Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eN6tDeTkKmrgywMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 18:40:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD8A6739BB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 18:40:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EdgELHjk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033B910F013;
	Thu, 11 Jun 2026 16:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E35D10F004;
 Thu, 11 Jun 2026 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781195999; x=1812731999;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jD4TiOtYxXl/k0/BwnNzNfZRv/iYXBLCsp3bqAnHRKo=;
 b=EdgELHjkG8DJ2qydI2GHAA6m8XV8eRqjlWncHJvWhUkPP7xxRLGt9i9Z
 tv9M3EUaJTcZpVzvwZxLYyzk1QzdicLChVOANy1p+cI7pqd51H/WAYYpG
 7IQKQMlPgfQvrZkaeiwNKTdleJANCyotmIrODkZKyQBD7MEVYk33l257w
 gLEvhzTsoCIiop/hKqcTTNEcWzgvxYx53SDU2UC79Yk7SPCgnLizMSvnE
 PlIM4nA7OElqYFGDWRORkd+1IT+cUcNfQhs0VtdD723Qh4nLrMq0yyj4P
 muOtjR0ikhNl+WzxHrlR6/7d3ciNolPzm1SJ2CvlpXPW6bqD1014c9Nte Q==;
X-CSE-ConnectionGUID: PdETkfkzTee9MeptTVNuDQ==
X-CSE-MsgGUID: xtiUVhkzQhC2mFjrXs4Dkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="85856550"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="85856550"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 09:39:59 -0700
X-CSE-ConnectionGUID: eC1pnhfvS2GjkrZAkuohrg==
X-CSE-MsgGUID: EczB10tFQ3iRRo8vDoVBLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="284627265"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 09:40:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 09:39:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 09:39:58 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 09:39:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KPIkZL3QLjIgl/nblfuf+Ag8J+EA9a0h4kzbDPSgDqnWSNuK/9boAorvh1g/m2rRiQ6V8CRQd4UoNxtVdaJKLVnBJ3Og44dOvL9z3/wdWbc0PENqtoj265CMys0Z/QeBnDLuvG4vb30YbKB+JaQA3rBYU1snVXT9g+LWxCUEJZr+vtRGyTbL2jawD5Oit/qN3FA0rldTXKKHlZ8xMNmJeA7IMhSA5LKoHCrRyoqzOCSlqBTF+XBElj3Yjr0N1pWKJxDQIRm/jmaVAlmzKqPbqFnD377cm0tQ+N8SJCwMEfir7F0Vu6zRC68hkt++hj5wvhE0Cei51xWiYWrTFuiAvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rHfntIw/6dH1oZhiT65tziHksLLo+Ckde7drdP6OGtg=;
 b=FJ965Xb5VBIL+GD4ruzFxIe4fDfFZRPg3PWUNBWziufjyW38RVo8hY2ZN/5MILRvluSxHVolXY+/IL2rg9wmbEci4QopLdBEL//uDWnM8dr3LJIXgs+qRMKGvtQACx1wprEKxus6GzrpthJStSfNIADW0rdMbB1YnqNAFyq+8YvLekenqpKiRqMbPHhX4zlcavXUfl6kDmyltH6N3KP682gBWTjO/QpYfqiAPOSO9g4OwEOp45om6xEeVdUL/mu55XjGp9gaZzNWu5CVvZTAe2rksGqHayxZX3rbdp53gNkmkbYKbhAFrhy6JwXMlE5H+Lx29OwHRpQtmGCPB9cGLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB7387.namprd11.prod.outlook.com (2603:10b6:208:421::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.18; Thu, 11 Jun 2026 16:39:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 16:39:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by using
 transcoder timing helpers
Thread-Topic: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by using
 transcoder timing helpers
Thread-Index: AQHc85dLceUcIu3Pfkq2a9jXhp/l+LY5lXDA
Date: Thu, 11 Jun 2026 16:39:54 +0000
Message-ID: <DM4PR11MB63600D482C3E8A9E90E82530F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-8-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-8-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB7387:EE_
x-ms-office365-filtering-correlation-id: 0e72c576-bad8-4f8b-b5eb-08dec7d81123
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|38070700021|22082099003|18002099003|4143699003|6133799003|11063799006|56012099006|5023799004;
x-microsoft-antispam-message-info: RcNhX0Qkx2gHGtTUiJQzmyLvq2ObRn+CPNppIRSJSqVYHA1P/eylKt0oenlWmF4pDx3hfeSoLNb9Z9SWRbUVr00GIZU5yNaoIMkG4HH7/jrAzo9WVXGSPJydKPUJReAl7uxwT2lSIaH+Z3hWLLyJVywQF9KL3z+4knFxzkGfyqZyxXQN9tLNJUzCn4HCqNSF+eEFU8cYzZPu2TC0oSSwlwQTOHgNfnWzQqq/e5xq0oQKdjx+X7O7KIKR/lxhkc1+7uGEnKQmssYKiNo8JDBO74dgqSb9kMJtCzCcYYJIAcfpp0fmSL+desSklAXjV6EhTDEsnsux1dQm+r3Rof0MPw/qzhAnBAY7NLANuBivROC2CnAAL7GNY/yQ2SvDzTubvypSc+17qbUbwFa4NyAhEJNRCSpBGyiQ5demzA0+9lnB80nUgJeD99JrYWNTjas6pHEOo2SvPGV4uts6Xzgi2BYOPdTazTDvCsK7hsm0IvtIe5pOaIaQ6DsiYdaKKrwx8M3/BBAFxzXGP/W/RV9c4hsp9dIQqRESnjeGyYwWLujGmNuOlqgLMCr6usnMYjUH1OMmm6C11xLcQksYye8f7O4w9pgyR4t36R/sT9h8ms2pOx8ewairEnZp3R+vCpUhK15kSbLIoi2fzWmQyzoCB9pTOyNGZlmeBqn/sHWz/XyoxOE/HiQgR96tigVZcO2+6bB/AnJx9L1zTmMzJh9bxtKE+7oGg3o2ncq/IX5fk3H2euWAFEowQxQdoAs4lFyZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(38070700021)(22082099003)(18002099003)(4143699003)(6133799003)(11063799006)(56012099006)(5023799004);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hX91dzb3ytLtKtCc+A77mUtz7GJ+FL0rUsKL5hRd4koGfz7cKYC13YZWIXxK?=
 =?us-ascii?Q?u+HBpEqEkfJkSI3nm7dHWRiz9uXMH+indWoPFgtAqocceXAVMjQBPeGCKloH?=
 =?us-ascii?Q?YkCFqAk7lFitaIt4QdYGfMLGkj/Wgd4x7jZcJxLdCkEU0fDZRPQ/zAhPmEDO?=
 =?us-ascii?Q?3oTX5T1h4cdjk0hTOsrQaXeoIzB7+mTSeLUSov1gxwQigh28Hi56okr2nrAb?=
 =?us-ascii?Q?aTxYIgFBLo6uJgrfmTrs7wPfBZjg9cZxhZS7nnBPnzbb3BfqI6U+7qFXOBiD?=
 =?us-ascii?Q?rLbCAgeBDhktITLQcCAFxx2+wDrowoTzBNCodI0ocxfywG/ptp/kB/EPMH3g?=
 =?us-ascii?Q?u8rP6Bc0pkp6OH2bKhuwp7VeK4M/3V2pcD9xckq5fAQfsXurfJkRUDUyyC6J?=
 =?us-ascii?Q?Ssn9KvQx64IX/KmgsZfYBkjkrTlJPSupaBsmRaF4Ow9dD8x8Wtis/ypgHuB3?=
 =?us-ascii?Q?Q+FPjO77rI0pe38eF94cqcXWkf1H+wPFbavNWRr/r3HHhdxVdNpj2iC3LhMY?=
 =?us-ascii?Q?lO5LCie5L5vwqAsb5tU0CFmt8T5ks+TmCDErEQxqCXtWSfd8HboRVJV0xjux?=
 =?us-ascii?Q?DlK3M1AmBM3vB+t+mm7qFmKnZn1nb4JePEbw7UtMNJDuAPZuvp7C5LZToB/Y?=
 =?us-ascii?Q?Q4AmnFdBxmNKDUKDJYPKtdyztE7xWnJuTeLT3k3l1tb23y0MBPZyYCMi9FvQ?=
 =?us-ascii?Q?X7fBOomIxSDnTQ+KwZBCdyBsK/J8SlAY3HQ79ZKCSnyWvHsqaQPJglzuPW6W?=
 =?us-ascii?Q?7r7O1KN7i/T/kuHGVGGKIjkpQkYYvuF+cdpVKauRUp7L35aftCyyiMMjGDAv?=
 =?us-ascii?Q?7hDrKiPgKy3dlbtv2sQAbkL1dU1OFaEw6VMFvGFYFgYwhWwgUsV/VANxQSqO?=
 =?us-ascii?Q?suXl7aVkgtsT7po0ymf85F4kF50p6yted0KHpeQFBr01+8Ix0TMu4in2D14L?=
 =?us-ascii?Q?l/5WNGiRwXHm5t1+fTLjBu1zNUOQp5HhcXxtmDc8C0LEtc1xhb1ujjT2QWcP?=
 =?us-ascii?Q?eNLBVRlEiVU+mHYP2NQBOWN3tkFgd0BLiH5mnpwPWBq7ESiewfly98PqDZvO?=
 =?us-ascii?Q?CunaGI6DxEeyM6wjDo11BNWi2LP5ZvTa+c/Z3jSPoDsUdvPgc3lXILo8cBLM?=
 =?us-ascii?Q?XyCIwRkqceXHCtyxV72DzLKoUXvLMYtTsMMCeRYMQg8LirKcexjmcLQC5s40?=
 =?us-ascii?Q?QyMdas5/kxqb42PiPHBRMAHhNvS8Ikm3UBakYTcv0pvlJDKBlDGQ7R5cHvAy?=
 =?us-ascii?Q?oexMng39O9NgXco0bVAuYjTfnfM9BLQaSxUA0Lx2rZq9yW7rfSCSkrNYMpck?=
 =?us-ascii?Q?jpt945F9V4HIL8XFgEJOMSe9SvBVgzRZee7Aq+dG49/YsrvYboN1to3uxIrt?=
 =?us-ascii?Q?XDhwlEUa3Uuq4x227o69ery4YcdEKCGnfdCckuSEMpby8RbDC1PM3lSsYUbM?=
 =?us-ascii?Q?x1IUpRu06xnzmrDhVsU2WHZMJlRASKifjLRoTyti/FRO8qauig1xOa1z7ji0?=
 =?us-ascii?Q?YKb5kYasfJHkcaVbwtBJlGPSL/pIm2Dar8zE4cWo8UgIaBkPe01Gr+jx/997?=
 =?us-ascii?Q?xSTNfXFGdhNsMVmDrSruP8OrOZ1T7x7m9rUkWBtlfuo1aqbLhhidCnornOj6?=
 =?us-ascii?Q?rmkuavutAGE/KKTdJ3tg/NXZ4YNcy3pH0ybswRi0lZdkODKqgZDd+p+9qCif?=
 =?us-ascii?Q?wKZWIlFD78VNKT674jGh/9rYOMsmoPp9WKUXA1WshuKiBZGIkXX75FQPYDqn?=
 =?us-ascii?Q?3CbE4g0B+A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KFlHc0r+UtNDQ34m8Te6VrEXQdJIdlKZhN/yYNGDSv+oO0iub9qBAH7zQO30X5b3+TM/oNzGDIPHhqL4KY3DwtAJy8tnX3hOlYjcR69R4CHQ0pxyowjrARgkixrf3qCcKmuQtfkworP7GBuciBnSSojHtQbY+aAdBVyYjJ8joof4si7mJEzgbYS8L9SPO/o8ngm0+EMGf8PmnQiqo6zpmGN/hagKcONyCuC4IAHyCGCY4x7IO5RSaSj6c0eW7hnXvZRt/tI3RJ0mUSdicLKEsNukcU8ZxH9QBWddfkdEDktanU4X2dTY0h5+1m8BDMXzdZCY1+8zRFmI5OLPYc/VLw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e72c576-bad8-4f8b-b5eb-08dec7d81123
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 16:39:54.7515 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Ns0dig6nDLrTOQbZmvPFCh9iokPlb3cT1ztFJZ+OaOG+KGH9Y2j4AYEc9VrhFyVqZeSuTRNRZrs//T71a4+nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7387
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 8BD8A6739BB



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 07/20] drm/i915/cmtg: Set timings for CMTG by using
> transcoder timing helpers
>=20
> Expose intel_set_transcoder_timings() & intel_set_transcoder_timings_lrr(=
)
> so that they can program timings on any transcoder, and use them from a n=
ew
> intel_cmtg_set_timings() helper instead of duplicating the timing registe=
r write
> sequence for CMTG.
>=20
> intel_cmtg_set_timings() maps the CPU transcoder to the corresponding CMT=
G
> transcoder (TRANSCODER_A->TRANSCODER_CMTG0, TRANSCODER_B->
> TRANSCODER_CMTG1) and calls the shared helper, gated by
> intel_cmtg_is_allowed(). It is invoked from hsw_configure_cpu_transcoder(=
) for
> the full modeset path and from intel_pipe_fastset() for the LRR update pa=
th.
>=20
> v2:
> - Use sw state instead of reading directly from hardware. [Jani]
> - Move set_timing later after encoder enable. [Dibin]
>=20
> v3:
> - Replace id with trans. [Jani]
> - Program cmtg set_timing() along with primary transcoder timing.
>=20
> v4:
> - Use _MMIO_TRANS() for cmtg registers instead of direct multiplication. =
[Jani]
>=20
> v5:
> - Modify register definition approach and match existing transcoder defin=
ition.
> [Ville]
>=20
> v6:
> - Reuse transcoder timing helpers. [Ville]
>=20
> Bspec: 68989
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c    | 25 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 13 +++++-----
> drivers/gpu/drm/i915/display/intel_display.h |  4 ++++
>  4 files changed, 37 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index fbc8a4f2b9cb..082c04bec9ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -219,3 +219,28 @@ void intel_cmtg_set_clk_select(const struct
> intel_crtc_state *crtc_state)
>  	if (clk_sel_set)
>  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
> }
> +
> +static inline enum transcoder to_cmtg_transcoder(enum transcoder
> +cpu_transcoder) {
> +	switch (cpu_transcoder) {
> +	case TRANSCODER_A:
> +		return TRANSCODER_CMTG0;
> +	case TRANSCODER_B:
> +		return TRANSCODER_CMTG1;
> +	default:
> +		return INVALID_TRANSCODER;
> +	}
> +}
> +
> +void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state,
> +bool lrr) {
> +	enum transcoder cmtg_transcoder =3D
> +to_cmtg_transcoder(crtc_state->cpu_transcoder);

This can get INVALID_TRANSCODER, we should add protection for it.
Check below should help, but better to add an explicit check.

> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	if (lrr)
> +		intel_set_transcoder_timings_lrr(crtc_state, cmtg_transcoder);
> +	else
> +		intel_set_transcoder_timings(crtc_state, cmtg_transcoder); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 87092ce6d67b..53a44f505dd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -11,6 +11,7 @@
>  struct intel_display;
>  struct intel_crtc_state;
>=20
> +void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state,
> +bool lrr);
>  void intel_cmtg_set_clk_select(const struct intel_crtc_state *crtc_state=
);  void
> intel_cmtg_sanitize(struct intel_display *display);  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state); diff --=
git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 17621f66501f..a6a1da4bd98d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -60,6 +60,7 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> +#include "intel_cmtg.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -132,8 +133,6 @@
>  #include "vlv_dsi_pll.h"
>  #include "vlv_dsi_regs.h"
>=20
> -static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state,
> -					 enum transcoder transcoder);
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state);
> static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);=
  static
> void bdw_set_pipe_misc(struct intel_dsb *dsb, @@ -1637,6 +1636,7 @@ stati=
c
> void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  	}
>=20
>  	intel_set_transcoder_timings(crtc_state, crtc_state->cpu_transcoder);
> +	intel_cmtg_set_timings(crtc_state, false);
>=20
>  	if (cpu_transcoder !=3D TRANSCODER_EDP)
>  		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
> @@ -2665,8 +2665,8 @@ transcoder_has_vrr(const struct intel_crtc_state
> *crtc_state)
>  	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>  }
>=20
> -static void intel_set_transcoder_timings(const struct intel_crtc_state *=
crtc_state,
> -					 enum transcoder transcoder)
> +void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_st=
ate,
> +				  enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -2777,8 +2777,8 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  	}
>  }
>=20
> -static void intel_set_transcoder_timings_lrr(const struct intel_crtc_sta=
te
> *crtc_state,
> -					     enum transcoder transcoder)
> +void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crt=
c_state,
> +				      enum transcoder transcoder)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode; @@ -6673,6 +6673,7 @@ static void
> intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
>=20
>  	if (new_crtc_state->update_lrr) {
>  		intel_set_transcoder_timings_lrr(new_crtc_state, new_crtc_state-
> >cpu_transcoder);
> +		intel_cmtg_set_timings(new_crtc_state, true);

Maybe instead of true and false here, an enum with explicit names can be
used as argument.

With above fixed, this is
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

>  		intel_vrr_set_fixed_rr_timings(new_crtc_state);
>  		intel_vrr_transcoder_enable(new_crtc_state);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> b/drivers/gpu/drm/i915/display/intel_display.h
> index 1963dbc80221..ef7e0506f77f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -424,6 +424,10 @@ void intel_set_m_n(struct intel_display *display,
>  		   const struct intel_link_m_n *m_n,
>  		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
>  		   intel_reg_t link_m_reg, intel_reg_t link_n_reg);
> +void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_st=
ate,
> +				  enum transcoder transcoder);
> +void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crt=
c_state,
> +				      enum transcoder transcoder);
>  void intel_get_m_n(struct intel_display *display,
>  		   struct intel_link_m_n *m_n,
>  		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
> --
> 2.29.0

