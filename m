Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MGONK0j72lV7gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 10:51:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBBE46F68F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 10:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031E210E26B;
	Mon, 27 Apr 2026 08:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gOGOkj9w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67EC10E26B;
 Mon, 27 Apr 2026 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777279914; x=1808815914;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qHJlCCvtggyQ/+z1TzdFkpAalF/+GNEBuQjgGlscg3Y=;
 b=gOGOkj9wYEYwPNc6/Sk7VcD4/fdtcerqJfCZ1blWe/RzGTWtA6sjiuL9
 61vHvBfhBrrggnT7xyFS7hnfbHAh0Kqot5HkofJSl4kh3dGXJRLvfLhnO
 ngOtURrBqG6X4dZUeZ6evkG/dD+q/S2YvHJKPr8CZ2L+jpXh1I+zUj86U
 Kl3fVGQH4Lm8YVH2N/ZLkvpUil7Nm+/ubOO7QcJK7ACuqQ3sZFDh0BcwM
 KmnfGud7xL0y8q0jePKcy3KL1x5XGVEouU/UtblvxKI+bA1YeuahWxsDs
 2/seAUAXaQ6zsEGEATtw715i3aThRKTatj5F+hyluu1GEM7tWKf70uiVP A==;
X-CSE-ConnectionGUID: eTqyug8aQ4G5tpD1CATOFw==
X-CSE-MsgGUID: 4tvG60RvQeudIqRGVoPNlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="100816946"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="100816946"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 01:51:54 -0700
X-CSE-ConnectionGUID: M5WIm/9rT1mZ6bFUiql+Aw==
X-CSE-MsgGUID: DxMTEgerRyCDA4dVETfchg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="238570784"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2026 01:51:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 01:51:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 27 Apr 2026 01:51:52 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 27 Apr 2026 01:51:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QAp78k03RHkG3Qa6Xc4brQq/OsE2MGOkGMHFm10cx/UMEvxJaM8hPRuLyoAQ8eWgy8dqrQBxu5KLZXylH9m+1dSsqx9eLJlOhVFTns0yNOv5O5pne54n2GokHF34GL2Qm336aggj+8Wj9Qy1Wt86gn5b0Mj2rzWF71R5luL8pozBX5/YvX1Md7ZHxNfZ3MzDKPD6CXO1/LsLQy4A4IJYRqcwhW2E6hYyRpXxHITWbpyNdjs3/oN/qyi7EZxEn5FC3Kq8UCPI+Iuyq3hTpGMvUuHL1MMAWjetT5HDbrzLhxrDAzvdGjpHkjQZUo1ReW/VXROcihHeEgwSXlsjw3nKcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1owILuq4EPKvSR/PPeXT4AlAqhUEzywBnAPpf72Fvw0=;
 b=GK+CyRh+l+zbMjCvYryBxmGzo4Ey6ZEfUz4P+glZsHDsSDDsV+R6N0lsBNMgVWM1upb2678ornz5kH3voDT7UhE9ooUpP5zHjMmH9nSKemR7xP4VAEkpXKDGFnzt6gnzJARiPn/wSY0jiYOlvG+iE2ZvXbaPymBBvIR2bF/GTnretUEzH3iTH3Xn8zxFzwzfrZEA6GhGwlJSkNakFG8ELZ5yeikZJ+g4kdV7LBuHVpfAhW8NHJr3iAwHyy5w9l6y9WHm6UUJCg9EkXjPLv7oUmr8xKYHrZm0tq3iUxGbm7fMW5QVKY4WR4qIwhJ2Qq6juKb5e+AmJCkiSd1xrJIz+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ1PR11MB6252.namprd11.prod.outlook.com (2603:10b6:a03:457::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Mon, 27 Apr
 2026 08:51:45 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9870.012; Mon, 27 Apr 2026
 08:51:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Change drm_err to drm_dbg_kms
Thread-Topic: [PATCH] drm/i915/dp: Change drm_err to drm_dbg_kms
Thread-Index: AQHc0vfPo3U3sFxSXkeJLMymUqh58LXyn7pw
Date: Mon, 27 Apr 2026 08:51:44 +0000
Message-ID: <IA0PR11MB73075785D72ECD70C5B83531BA362@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260423080355.2744117-1-suraj.kandpal@intel.com>
In-Reply-To: <20260423080355.2744117-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ1PR11MB6252:EE_
x-ms-office365-filtering-correlation-id: 577770e0-53b0-4006-1a81-08dea43a35b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: k8UQ6Ni7h/YYaukKWQMvnAQxH97OwbYXXPClqXJjDjOinnPookuN3O3NJUqgSvOz7Ch6ArsqDG380yFZaTIpX89etreXNf6N+OKCeRYd9TD/WIaroOFYCjg8Gmlc1b3+y0fIb4v99d15No0UhUYCeWjDSU7q/OAmJY44sjq5Pdss5DBpH6raGK/cDvgmUO1hG5E9rQd+8mPTo/ryN3HRAKLfGH0I7CpF5t8qStTvMJA5/Fx7snwvqqqL2STutqRpJ8vWwQ3cWgWrHciqZlUgIV1BSGIqFYmGdqAqy2jBgzrOnLF5N3T1be8OEz5PiFNoqTnP7luV4WIbQMjObk9Q7XengRdHVoV8Kc9G+Iedg/+I13U9VM3vbAgv5frF97NdNcPLl4LBVX+w8kNrJVKtdfafNBax+RKCvIrxTIHDy1dk71/qY4KwvqmrFPFPxO3q1Zxdt2HC5Quip2XmxxXvMxVoFwzhqf2sZdkYFadaq5w39grqqQFiyM8njN/S5qtguxugJ9ZAohQfWdAK2sEEjZhhmQQ9PHR1GATG5U6b+FcgH9D85OPj6+xBe+1JsMX1aTZBA9kKiaeZah4GWfamPBMH/YKWV5swm+xirtpJeFFG2eY+4d3/mGZAEr7nGAHwGpfulU+0fpnN1QDR0AjPkdxuszJjHvzPui7qwkuLfdWd/LPACz9nXb+Ew+3eAqZw6RipTawalOIMN8r2r1Zxl/g6AC2z51BvssVJINIMIpA383YytMrr133vOGyhXaAetXtrJpWTGu+43MHh4vdmr99T5lB6A0ybH4yyjXD3UfA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?J9/aVZ36wCtzkUo6gvOiFYvjJ0JCOcPskIGXVecQXJQFzEKd2Tgy2nt+ANV4?=
 =?us-ascii?Q?wpvk7QCz2nvIanz3tV7H4E3WdDI1BFJv3dil8qo3LfTH1736nNgpse2tYm2x?=
 =?us-ascii?Q?d27PXVgDw4I4SJJ6kr377YdwHlBX5hvepYs1Q/dRdcC2At4Q2R/ByZv8W7i1?=
 =?us-ascii?Q?743sMvtJSozzl8mg3TxjTk/j9aeR2nPAIzXuLMnXZUMGjsh5uXHHTZ/4zF+Q?=
 =?us-ascii?Q?+Ar4TvpfGVc1jfWI+iJb8Vcdc+vqDZazaHBiZuyXHZy/EAeA244Mnp3NlLpe?=
 =?us-ascii?Q?3CE4hn3jQvbew8g99xEg8sQKAByd/AUhyZwO9/TyICszJrpmEhAiF5S3yN6P?=
 =?us-ascii?Q?t2G8SHYhqoJX/+FHll+j9uVrSHgoF3oVTV+SWhXCDT01c9MRAKVXKGH1sOjt?=
 =?us-ascii?Q?5lyqMXbmquDjFI6K65om2E2wM5SvYSvQ/cK+IV9AjvtsYEhHjdLIiRdacD+B?=
 =?us-ascii?Q?H96bIRYhfgatN+iwD1bDItXGfiWURZ2siX/cwb6t3/fN9kiGquvkIBx3QFlo?=
 =?us-ascii?Q?PsPaBnPf/teDukc03s1atfOp7Pg4EadkxdPBeQ1usJooY9Z9dlQJ5v+VZx15?=
 =?us-ascii?Q?Jq7GW8GbspZHsTPJzqkB8L30/ShMkOmjNcidDwsRDX1rGcx/UqXaZvDG2gky?=
 =?us-ascii?Q?mRHNwluS8uRtCfQ+0U2VSPZTwpfQW/TZYOB3e5LTT+cDXuI6R5WCigRQhulw?=
 =?us-ascii?Q?jboz4iz7qPCpEh8cPEWI/NkddNntd7xCLdQDU2L/xlPKyQwnCYPsRydvhC73?=
 =?us-ascii?Q?gWoOZBsV9KgKWcquqiI5ttzrnOB/EG09LZiWpotidAHga8WIW+vEWv98Xsyh?=
 =?us-ascii?Q?p64uiU+VziKiVpDW/lz78E7EluRueFLz24A+1aANGsuCGoBgjL+Aio4KIvPd?=
 =?us-ascii?Q?OtqQURDv4pvPUhpFTGibgfPDwZ3b/jUxmnct8QNuhkvhB6JQ12D5JVSmzQy/?=
 =?us-ascii?Q?Qc+4ZfIDTLHIwn20vjlWOa6AJp5lRypzoZATNZ8rdJuPgWswVrl92b1iN1pF?=
 =?us-ascii?Q?EcP9CmCX7J17sUD8jkAKi2KpcXjQv5/FigFOOdcmv2ko+VwyWCz8/yISY2S0?=
 =?us-ascii?Q?mzFm7VyVJL3tKZZZUkZ6kpU6qzJHeCXQMWe9crTOJ3CXsAhOXCrB/5SHWyMV?=
 =?us-ascii?Q?bIr7MCypSYyeQlrG45rocUH5ObZOE1lduMElOsBQYNq2zpH8qCk/0vp3maVB?=
 =?us-ascii?Q?Cn1VEgn6hM+QaptirKGThXdDmBKPslpv9gK4nOJAwuUQRcGn9/aRKSvAUDTw?=
 =?us-ascii?Q?5Wia5E/tXSbTCxS9OGF7BmIErwUv5Swfb1UIbo5GDYm2S94By0ISbR+qiRdJ?=
 =?us-ascii?Q?ws4d1f9nzOJ1XigzUPAUIYWJFjNBABuQaKZClq4z5uhVurV7t8rQ8ph6NNBv?=
 =?us-ascii?Q?GpeXAttcUddaRaXLbFvGL3gSO9KaOJlFbsmsupJmp+rFC/hcsckTWHHG8uE8?=
 =?us-ascii?Q?BNZjmQVrK0IuQHsc7fxxJqVmC6sxpTfOacZR3+H94LAR+nN2VSr3+Gps4EQT?=
 =?us-ascii?Q?JcziDnSoE82GW05ZjoEJ0gLczuWczxnUwHt/239uJnwmL4/RloJM8YB3LBjV?=
 =?us-ascii?Q?PQ1pYQZNUpmBZ7iFtHpPb/LD3uYG/MKag+P0xZBorNORF0rSrmoWueLsbQ32?=
 =?us-ascii?Q?Mg+chU3tFRIej7FdIIbIyxA4Eix015PyVBbrQ4MYCz4sa/Lc7zTgLqMl2lTC?=
 =?us-ascii?Q?OZs7GFPBINKhB663jTm+kZFX/nSOPJTdGY78iCaBcVJKjDMMKY2yS6Iw1gIB?=
 =?us-ascii?Q?7LAKfhLVrw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kDAeeSDorFKHnhrqU6SkSYJPucmwvT9TthhaagkJ8goi9TibsRZpG3VBiFaBSdGqh5ZU0OxECl88EGwBfavmmdQI8okC2mDvyRu/9Bs/TWE0qiFFr67PdqaUvNkLHpQC5F/VwpHsK+vRdjuiu/R6yJ10vpXcKQA8ZaFkmCP0WKyqHZeNYwVYlWg9JV1gWOG8orE0ZivXOsKq2RRWz6esyNOWJ/hbH7hkei0z3/P7NCVqCdMLGCRm58vz2vzp7/jss18zw2xtVcghYpx36jOOWI+ipIsc7qz8lK6jNpKET273xqZWEWPZhBKIip1CuIoczcTNjNIOeL/uRmME0inuHw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 577770e0-53b0-4006-1a81-08dea43a35b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 08:51:44.8579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JpN4t46UfwPMng3Ve2fJ3QUYNCFQTXVnYj0NX76s9+SkVbgDCZx0W8buTWqeaDCp27e801GhY0TzBtkeaKR1QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6252
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
X-Rspamd-Queue-Id: EDBBE46F68F
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Thursday, April 23, 2026 1:34 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dp: Change drm_err to drm_dbg_kms
>=20
> Change the drm_err to drm_dbg_kms when we fail to read the FEC capability=
.
> This is mainly because this is called from intel_dp_detect.
> Which ends up in race more frequently in case of MST scenarios, when we a=
re
> disabling streams but the downstream Dock still sends signals which cause=
s
> intel_dp_detect to be invoked which has DPCD reads. These pass until the
> Transcoder and DPLL go down causing AUX to go down too. At this point AUX
> Timeouts are expected and not an issue. But this drm_err gets flagged in =
CI
> causing noise even for passing scenarios.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 35b8fb5740aa..8631df908b07 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4564,7 +4564,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>=20
>  	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux,
> DP_FEC_CAPABILITY,
>  			      &connector->dp.fec_capability) < 0) {
> -		drm_err(display->drm, "Failed to read FEC DPCD register\n");
> +		drm_dbg_kms(display->drm, "Could not read FEC DPCD
> register\n");
>  		return;
>  	}
>=20
> --
> 2.34.1

