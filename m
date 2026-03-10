Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN50KQnZr2kLdAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:40:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3481C24770D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 09:40:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAB910E248;
	Tue, 10 Mar 2026 08:40:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WUaO2fHL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E235210E248;
 Tue, 10 Mar 2026 08:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773132039; x=1804668039;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=21FrW6FwZgLn++FVYNJBczpCTBoCoakkCdplWfOFfAc=;
 b=WUaO2fHLhbmIgA+C97Gd9Xaca0pVkkJU9VgMmHSynIEjY90dCmwpZwh7
 HiPrcvISg77IjixerJhSwO7ouTJ0cyTwnP+to8vF5eVZ9o9neL9m1lgYM
 hvUU7S8INjQrj71keh1RkADI2lSVbUV73JZKoax5YJBpcXrtniu8pA6iZ
 gbhzppF6rjA/UQfbtIIi/OtGDzCUbi+sgpIzvQUxbRuPE9OIOkJsVfKq+
 gObKcCHlE4zHNChhIFmmVrdVAS4BszT7X9tGL2gE69kE11NChI1pPNKR2
 nogf/8hodzQkr4296WKKP+ht7buda3z8EYma7ll/b2C0ObeW5hwY+b8+m A==;
X-CSE-ConnectionGUID: EHZ0Ts5aQZWI2r/O4BBWWQ==
X-CSE-MsgGUID: uj5s8TekRqipzlh61UPIkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="76778590"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="76778590"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:40:39 -0700
X-CSE-ConnectionGUID: 2dkymf47T8qvpnKR3y8sHg==
X-CSE-MsgGUID: 4CT5bsx7QvKSDTTGcJ+NKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="222650526"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 01:40:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 01:40:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 01:40:37 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 01:40:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QI2t9bVrN1sDiAwSyV/kVpIZ7rWEtm8lwAlLv9k/WFeWmEpaO+EvfM5ZbDWURZRUPxRjvpwT4l1TjVZYmOmqzOPpZUAYpBUxWnV6/bXgePHwZ8w3VLVw60OCt5FxRjv/BfwqV8UxD3JJ/NglGQGlrH7wQYzJ8WWQQgU3+cxkurysJ9FCR9HZv0f7/8I8QwsQ2DmOMGsJDMs39Py7ApPgS9+qrpoWLdym/cpNp1LsKkvGxuY0Q0V8PSpwRucBpa2aM74gc6fdHIhTdhCGhzna8B+OjXyp4G2rpXqiIXyQZQ6hvqpumAFe/ZiUpv8VrWl4OOSTF14Q/YKwRq+rDCB/cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AZFzDmu3IuGEItf6e6G1KSlKELrJiCmBgGOtrZw29I0=;
 b=j/fCaxR01wNvuPW8WxoFo/nvph0XQxMKJGWSowS/itjixgBOiDaGvVZsLMAce4GtkKIXVxhFi3hPShVRKULQNWUQ4Ow/Py3kWcOPDv9CJ7A7DaFqopmsi8Hu5zfwccvJnO8AqUw+vNpdmBisjkoCDY33vCncVPMdwYPxZrENC8XxlFkxJxaExrmYWL2ZkZjNBCM0JJ/AVSJ4sG///jYJ1jBGGsubXqQaeiAjARIS1vikIZhhlpSmXY5Q2a9EipstovewWN7TfAnKoglbB3L3+iHqVaRmuQD7ZQMuvOHWEptCAnnUxWXcC0evKrIaFaN2A66O41VtkvgrQLkFtzchzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB6801.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 08:40:30 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Tue, 10 Mar 2026
 08:40:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 23/24] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Topic: [PATCH v3 23/24] drm/i915/lt_phy: Remove LT PHY specific state
 verification
Thread-Index: AQHcrV6LE7e0PynUsE+u7YBPefneBbWneD6g
Date: Tue, 10 Mar 2026 08:40:30 +0000
Message-ID: <DM3PPF208195D8DE92E1F93306F48753390E346A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260304131423.1017821-24-mika.kahola@intel.com>
 <20260306114348.1161663-1-mika.kahola@intel.com>
In-Reply-To: <20260306114348.1161663-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB6801:EE_
x-ms-office365-filtering-correlation-id: 47663484-80dd-4b9b-bfee-08de7e80afbc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: pm+0QeIDTjp4j13seXD0n7VSIjmGM3hdrgtDToNdXY9Km/pZnEhsApwX4lbjwuLEUmSMRZEPODyzql789g/hoXzgxtf720ZzNSLbpfPQVztVD9yNEW5idYHlMDx48PgEzXXXTF3YPC95TNyM49NzRQj60dEpcDVoHHD+7MG+4Kgcx+3h4QXAC7Op1o4BNY+wNGD6ey+KhhkXPkAKeuMNC8XQBTXMfQ4a6yDt9sP2xKHBUbLL1DhZ65G73eJ4Zl2s6qBh1RgYKvO1FLklEZzW7W2KbLMCRu38DNaTQcVjXTUA8y0JJSf07d2oVXa+6J8EO8I2GHRKm7lfQIXZKvrYaPs8AnoqSry50RM36vIYjmDCGoMCCrAsBeFHzLaPz9MGCe8ap1tIv1Et8nVHcFlJqxOQPRXtokfKEHjHnADOvq4YOiucf77NmX3oNFq3FW574VNgL1j43oehLxufGJPuL6vngTlsBCt8u/zvdUfd6fEXE1jE+7+Ie+GJGgDtshWUfawAQyXbfeLhPQaP4qpXMIHf3WobMrltXyKGD7o1typUYIxpJ+of2cJ6MT2Pp1qinJF1jWrAHXqMphlnnC9x3AMVSA++glXkXGAOilhrKVO4A63XaAO4Gz3wKzRx3eCC4L5lnrkTNkMwKWx0na//6jqhKSRv57LATW4Bs6v1D6RrtX5tWgnSdGm13LGmNiyA4OwUA6AxVMCjzm+QFP09vD5SqwNRroJ/5YsFD9KKsThkLUp8dh1Vq0J/QXwwPcCZp/MRcmdBhk9FzvaWrWk44jCqa7JphlcCStHBb5lxvu8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OLQCOzlrmZqDcwRgOOL7YTWMPyAANQbbybNAy2HHuuOK7M9My2DaQwKmxacu?=
 =?us-ascii?Q?Yl/5c0weO7DBISGG7R3fk5QVtyC3BmoEtsTujNRR0zAN95DKQXUQK1LtQpnJ?=
 =?us-ascii?Q?kzBkhnNhadtz1Zz7w/QleYBNDZTyPkBrCoKaeGVoLK6gt4O/CUPaoXGAk4o7?=
 =?us-ascii?Q?yFshAX/WhfzxCpjbhkQG9RAijvg/592qSKjBiC6z9XMmb9MY6U0HlKxqHoaL?=
 =?us-ascii?Q?fvQDYawirsTKEi3xv5rQYKlkkgLa8w2NE2CGaUxHRxliPsZeOP7nKfaxiPBM?=
 =?us-ascii?Q?Pc0W08Sn5ks1Bq428UABrUCCiKNu4XuoapcTp1x1jkBvNYxCMm05wbsigFuC?=
 =?us-ascii?Q?Kh4lSaNp8fNbOnQ2iSy7VWfmG/3cOCyz5xMtG3N+wBZy5A4Z8feHAxNxGY1V?=
 =?us-ascii?Q?ebj6dc9IqJCHuNAuR2Uh3wdYu3WXN1vnBlD46O8MTYWUuYdceoNQu1Wy76q9?=
 =?us-ascii?Q?ZQGx3pVyokYECek/s1qwL0+6T+h5rfKCaBGHygi2jDKVdX82czfcF6P9PxcO?=
 =?us-ascii?Q?ULoGsWDEVHEY0jiWISFOPrfH9xGAZOdmkqOtn6iFBhueGnk+HKMLgu4eaoZE?=
 =?us-ascii?Q?uq0zqseZre+SqbC7OrxGsMLa1IO7IDsC/FkIxCWm8GvRLg9qyG8TDbsfUX0K?=
 =?us-ascii?Q?KSAlB29qstVm+xYOyCfVPNSwrKv7c3k1lFLZ9gKuo2MOCCdAsh5bmtO9H0ML?=
 =?us-ascii?Q?nPXPi+F9eLK41lb6142KG9T0cDPQ47f3+GC/FfC/MFo+6eorgszZGrJtddwD?=
 =?us-ascii?Q?UOW46QnQ0GgcSO5ITSRmiqnu1LvePsnL0feWRe+v4/4n13nW/R4APSmfuVKc?=
 =?us-ascii?Q?IZTqq1zF28/3H76aZi7j3pvTDCBP4OFh+uP+bC7I6HsRbMAKA7DEGb1ysl9K?=
 =?us-ascii?Q?sG53np5u7iwPryV+kpsNplx9B6k75b6QNBdRM77NLnVFJ7TmEDWKcXOmfY73?=
 =?us-ascii?Q?YMYPk4tmcEZb47Vp8Bs/rrXzwFwDpWwNKt292s5ZjWZZYIYlPWQxhumuAmHB?=
 =?us-ascii?Q?05RUfKovrEAQhlhW5m63lQxVtuhvTtE+zbTzarcp52JqcqoV5q2qKq0d1AII?=
 =?us-ascii?Q?/tu90mf+cOJAlz/x/70NbfvUpGhDf8PSuLImK6oH+KTSQ3nnT0o+yzqL2RFS?=
 =?us-ascii?Q?NP96DyaAhgdoK804EHMpuGUhcNh2dqwsnmePagSdJAcSw+UYiJAiMIcU9Tsy?=
 =?us-ascii?Q?SKWu2F7mJp21DtQrU2tW8l0fAGZ+YKLVTiC+HgRHpDctMjXUnR12TXMX+Z8T?=
 =?us-ascii?Q?CPBS5clAQLt12u84LCAc6/OcAGRoYrEceSKdcNietBp6lwtpg8/i7Xq/BjK6?=
 =?us-ascii?Q?XwoJ91oZSlT0HU7rpBPTE8Wn2jsgr/SR242J3Jjrq131Odo7wIl9I8kLCrBE?=
 =?us-ascii?Q?0Dxv6lpzuJw4HvVK1tFvGAcUsjQWV8kE4R+N2NMtERpm22T2ii1M4BkgXkqH?=
 =?us-ascii?Q?GO8JhngOCqIVjmf0+elMW4elxtDFFnZD6jyeDsKt8914ys+wOVBoRZw4Dae+?=
 =?us-ascii?Q?xjGHM7GKfaj1E7nbrPiE11htbX9LT/W1suCGQdl1TvIwAO/Pz6nlmlBjwqp2?=
 =?us-ascii?Q?liMu6B6LYtFrvcYBNcWHYjrQZI+ceZkZt15JzJeVqqS9IoCBTauCx5JLpJsH?=
 =?us-ascii?Q?beyo/C+WqD0xIXAhhIYmiCcmFx8tJTCKpH7qaNxI+z2+j7cnGHYxa3vNb5pJ?=
 =?us-ascii?Q?XRsAGEKJLk/87VhKnrvjqgI7h8nhyRDKS1wKmk3Wt42YOLU6GSmuggh9KtJq?=
 =?us-ascii?Q?eLvyAS0z3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qp6XlZx3XVAu+XVhFGh1ev4VzVoRvLQvU631F9IbgX/PXLItiiNft/+Fpx6XveFRs5Mi6GgSBrlYTKJU/y38Jg7IsAu0bkH4M8S2yZebBHngxOiF8gGZNSjaBnVJgNQlcxGVSJ14pYhcV+i2UfyfA84U72wkx0VcY1TL7duvKR8qzU1xRlgVxDQUQDh4hChJSw+ZhyvOsi23aiwXbJEzji5QawcoOLxU0zQ8FvdCegDOmToYXcUEiIY9GJVB0jqo3YWTWNQiR+7J/D4v/2rTNJlQR5PxLLJs+cy4HUor+PxB3UQ6rlOV8rec8OJUSl8bcWv166y+hldR4D1RSGEB2A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47663484-80dd-4b9b-bfee-08de7e80afbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 08:40:30.2025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c82iAFnWUjMdEB9VP5UWhaprDn07mpCGeX5BXgWFEOi0/2BCAG6lHKo6fezXcb/grRoKQrLCQ9IqhbwlfMwrpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6801
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
X-Rspamd-Queue-Id: 3481C24770D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH v3 23/24] drm/i915/lt_phy: Remove LT PHY specific state
> verification
>=20
> Remove LT PHY specific state verification as DPLL framework has state
> verification check.
>=20
> v2: Reuse intel_lt_phy_pll_compare_hw_state() as only config[0]
>     and config[0] parameters are reliable with LT PHY (Suraj)
> v3: Rephrase handling of LT PHY case when verifying the state (CI)
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 14 +++++--
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 39 -------------------
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 -
>  .../drm/i915/display/intel_modeset_verify.c   |  1 -
>  4 files changed, 11 insertions(+), 45 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 534cc691979f..c3f35250f192 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -5075,6 +5075,7 @@ verify_single_dpll_state(struct intel_display *disp=
lay,
>  			 const struct intel_crtc_state *new_crtc_state)  {
>  	struct intel_dpll_hw_state dpll_hw_state =3D {};
> +	bool pll_mismatch =3D false;
>  	u8 pipe_mask;
>  	bool active;
>=20
> @@ -5116,9 +5117,16 @@ verify_single_dpll_state(struct intel_display
> *display,
>  				 "%s: pll enabled crtcs mismatch (expected
> 0x%x in 0x%x)\n",
>  				 pll->info->name, pipe_mask, pll-
> >state.pipe_mask);
>=20
> -	if (INTEL_DISPLAY_STATE_WARN(display,
> -				     pll->on && memcmp(&pll->state.hw_state,
> &dpll_hw_state,
> -						       sizeof(dpll_hw_state)),
> +	if (pll->on) {
> +		const struct intel_dpll_mgr *dpll_mgr =3D display->dpll.mgr;
> +
> +		if (HAS_LT_PHY(display))
> +			pll_mismatch =3D !dpll_mgr->compare_hw_state(&pll-
> >state.hw_state, &dpll_hw_state);
> +		else
> +			pll_mismatch =3D memcmp(&pll->state.hw_state,
> &dpll_hw_state, sizeof(dpll_hw_state));
> +	}
> +
> +	if (INTEL_DISPLAY_STATE_WARN(display, pll_mismatch,
>  				     "%s: pll hw state mismatch\n",
>  				     pll->info->name)) {
>  		struct drm_printer p =3D drm_dbg_printer(display->drm,
> DRM_UT_KMS, NULL); diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy=
.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 746b0182362a..032fd80664c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2263,45 +2263,6 @@ bool intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	return true;
>  }
>=20
> -void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc)
> -{
> -	struct intel_display *display =3D to_intel_display(state);
> -	struct intel_digital_port *dig_port;
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder;
> -	struct intel_lt_phy_pll_state pll_hw_state =3D {};
> -	const struct intel_lt_phy_pll_state *pll_sw_state =3D &new_crtc_state-
> >dpll_hw_state.ltpll;
> -
> -	if (DISPLAY_VER(display) < 35)
> -		return;
> -
> -	if (!new_crtc_state->hw.active)
> -		return;
> -
> -	/* intel_get_crtc_new_encoder() only works for modeset/fastset
> commits */
> -	if (!intel_crtc_needs_modeset(new_crtc_state) &&
> -	    !intel_crtc_needs_fastset(new_crtc_state))
> -		return;
> -
> -	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> -	intel_lt_phy_pll_readout_hw_state(encoder, &pll_hw_state);
> -
> -	dig_port =3D enc_to_dig_port(encoder);
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> -		return;
> -
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[0] !=3D
> pll_sw_state->config[0],
> -				 "[CRTC:%d:%s] mismatch in LT PHY PLL
> CONFIG 0: (expected 0x%04x, found 0x%04x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->config[0],
> pll_hw_state.config[0]);
> -	INTEL_DISPLAY_STATE_WARN(display, pll_hw_state.config[2] !=3D
> pll_sw_state->config[2],
> -				 "[CRTC:%d:%s] mismatch in LT PHY PLL
> CONFIG 2: (expected 0x%04x, found 0x%04x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 pll_sw_state->config[2],
> pll_hw_state.config[2]);
> -}
> -
>  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>  			      struct intel_dpll *pll,
>  			      const struct intel_dpll_hw_state *dpll_hw_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 1c2ec438cd10..8b98997b3107 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -41,8 +41,6 @@ bool intel_lt_phy_tbt_pll_readout_hw_state(struct
> intel_display *display,
>  					   struct intel_dpll_hw_state
> *hw_state);  bool intel_lt_phy_pll_readout_hw_state(struct intel_encoder
> *encoder,
>  				       struct intel_lt_phy_pll_state *pll_state); -
> void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> -				   struct intel_crtc *crtc);
>  int
>  intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_stat=
e,
>  				  u32 frequency_khz);
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 12a00121c274..2ec17c2bfe0f 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -246,7 +246,6 @@ void intel_modeset_verify_crtc(struct
> intel_atomic_state *state,
>  	verify_crtc_state(state, crtc);
>  	intel_dpll_state_verify(state, crtc);
>  	intel_mpllb_state_verify(state, crtc);
> -	intel_lt_phy_pll_state_verify(state, crtc);
>  }
>=20
>  void intel_modeset_verify_disabled(struct intel_atomic_state *state)
> --
> 2.43.0

