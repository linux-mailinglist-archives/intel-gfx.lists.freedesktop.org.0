Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8090B202D2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 11:11:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F24610E2F0;
	Mon, 11 Aug 2025 09:11:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CW01whWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FEA10E2F0;
 Mon, 11 Aug 2025 09:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754903505; x=1786439505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=duxblyueg+ls04BkPMGzzptbo1W/t9333UOAyJK0CHI=;
 b=CW01whWa/opQHfi7d/piOp4YQ2SJ3dIWayjIFChMoX8U4gzp3RaPDiIa
 cBVyr5Ve7V78fJDZN/kTBBklT1G2EjycL3/u+jyPOo1hyOI+7zJBfbOGt
 oOnIcYWy9hJ05346cG8j+J/G/a/NOk0GDEBsyqdt/E8zM23ATDfvl7uYk
 BSW06w3Qg1GB4lmrCYnHAeyXp/q7koEF+OYAVS/IggCZ/IaxF+xRc6FUw
 RsLbbuN1opRwPhuBHJubntPwYkUMTg+PRaGuCgFac1gnRW6/uG2peyNeI
 FHrJMlz6LxOhN7GE6OUIi/bUZI+fGQp2jCUetZYOzQNf9kl45LoGArW9Z Q==;
X-CSE-ConnectionGUID: 4HvGbBVIQ+ODxNpOGhIXNg==
X-CSE-MsgGUID: P/sZ2Du7QeWRSypxttGXIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="67748629"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="67748629"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:11:41 -0700
X-CSE-ConnectionGUID: EBmHUL8+T+qqfzbtalMTaw==
X-CSE-MsgGUID: aydHcslMRn+oOZ0EWosWzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196860221"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 02:11:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:11:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 02:11:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.71)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 02:11:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jtsRX/1K+aycnOIsWmt7qDU2pADTYxrwTamPW/F9veslbcWGRki66FAVdqE196MLdlFLr7Rh1LtEu1yRLvlBkreDJiDyBmrz++K1m0R7YQ3B99jiPRhJRenPN6HyTKhA/IO5aCVDT1PUybpPmtQcyxr7Dp7JeYAg4VHHy6lyTYVN8bXNXB/4XEWjZvajBBADk5QOx+YeBw/u8tM4FVz51E8345jSdFZjuU9Q0nY8TprYJ2niARn5iJaEtUg1O+/WG441ysGFLLSLkNNo1iOVnDZiyxBYL56oDYWvz37hDnHaltpcYLeE8wkRRJbT+3O+VF+BDrNMoX49JmuQQAoNVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KUv4EfSob/ONh5svgxtCDITO0d6so2KyhQD9WAlLGZg=;
 b=JDfo7oA/p6HGikj6c9CSnQi8vufLK+nh+YE/7t/YoQe+aUH5dfrlwg/a4giawtZwpLKoJ8tLlrj9BdNHlTH99ngVhaXzhbURbIXgcuO6tXFI5BKlp1PmnmO0E+MKdhzeSCzcxe0e8+gI1H9Djpy7RZEllMkOKLaV4u/hdpbJpKoOAWzXiJWonrJuueUP2iRd4yXZw5suIis38+1p7nTaDXpWpODiu7qfGTkMqLJpsi6FaEss54anlTzQVcAIvkuKj3Ri6R5c5g8NFoXheIS4vp2xAROXoVebmvmN4bLTbhEYJwHBCHHJOZliGmCMxFay4P1og8xA1bQIZebo+fTxUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS4PPF30373102B.namprd11.prod.outlook.com (2603:10b6:f:fc02::1b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Mon, 11 Aug
 2025 09:11:36 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 09:11:36 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Thread-Topic: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Thread-Index: AQHcB46zqWcObD6N6U2HE5RICkj1nrRdMHcw
Date: Mon, 11 Aug 2025 09:11:35 +0000
Message-ID: <IA1PR11MB6348D0CBB47D6406CCEDF024B228A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250807111548.1490624-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS4PPF30373102B:EE_
x-ms-office365-filtering-correlation-id: 06f15815-a392-4aba-7c42-08ddd8b712a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?plX6+3EHpb6V4uRas2PmTImBhDMRWbhJZHCnW4LC2IQWhLD6sCURH69aPrt1?=
 =?us-ascii?Q?UFvRHV3qIOR31fXRj/fE6OPMcvk9xjJVk3BTIpuo1OEdbIpfjAdAzbVbAiIH?=
 =?us-ascii?Q?xh0wAzHwZLsNQg31baLVtRHJ48Hn2mc1PwFk95Ib4lBZpBUK/aCu68mW+idU?=
 =?us-ascii?Q?2JcKmtSLeMeY7CaqqdciYm+QutGiEXTUGCpGWUEJr0kb4WC6BMfPEHLfkZ2N?=
 =?us-ascii?Q?EnJkv16qGaXhdt+C3EodEet10w6D1TEQ/03jDslN/oPWxmqdoTkFXCQrkGUu?=
 =?us-ascii?Q?KbN0V3O1vcjdHoMQig7ccjlscIRxa2P6i/8+A7cR05MN07ki53gUEf77Ge3h?=
 =?us-ascii?Q?4D0Rww3KPAb1nYkbGYpjG2gXExf8/+3vEGkXjcPejeRi1s+DBZu3NpwkNjxb?=
 =?us-ascii?Q?1a85/TdzNpSl3RsljqJxlGRYauy5JxdwYr3sSywKg4/ZDSFyomdiMxGiUjgU?=
 =?us-ascii?Q?gkMVi/zD7NAOyj/7SI3gFoxmwkOg9WXA/Z4TmpQqgRjmLTWwpoNbcy8S2EhM?=
 =?us-ascii?Q?DxA9O0ScB2v3PnS16LSIp9mUwb3RDjfEpNdK6sdODFUdwYqGnjzK0qu/MC5z?=
 =?us-ascii?Q?qziLX0zFxmOI+By8X2CM0D2TUMZ7/L+V/1ayGBia/6QgHDmw5H6Ml8wMDY8m?=
 =?us-ascii?Q?CGu8QFUl9r/Oq1jizG879a/Ik9TwimOvay6OrAm20+AmViES95WBB7IY1IhA?=
 =?us-ascii?Q?xQgdlAJqnVNgTnV6U/pOsk5TizSyqE/A4yr4/QBzv52UATEIZpYIJKgmpwxk?=
 =?us-ascii?Q?4oEJreNP5ziJDLUh+1KalolUQbmhFfqsywVjNyDXga+Zm2sYJTb6hjAkEpPg?=
 =?us-ascii?Q?+Q8TYWcttW5MqkkHytC6YRl6dPQdysaue2YQFKlm6mshwIQ5jRv381lwt72i?=
 =?us-ascii?Q?BQ1J2qTgZO5jn0GScTJNT5X4FBsPeFkqYwbxcN9TNblwqYryvsTC3w0uH27c?=
 =?us-ascii?Q?aZwV0MVjlmSWGiQviLmETZMxJ1rsyITjOraU8EXeEp5O3mPsAENG29mr3j1u?=
 =?us-ascii?Q?JRZwVet5hyzvewj3fED4v8iMnWdOgtF/azD4Bw3ndLEVvgzRXKKf70lafa2T?=
 =?us-ascii?Q?EtgYBq9jqW+TLymLeoSN5yLu5F6nJr/hWew9Ga2agQppEI/8Q6+49x4rWj9x?=
 =?us-ascii?Q?e7+/UdUgf2QxXEqdljSiJM3GyyBA4TY6lFg/O1Kk/otQ3g0pgaJHW8dkMKmL?=
 =?us-ascii?Q?h6HpvGnImA1xs005xyW4gDCAsS/vjXHwgn02Fsj8XWoPm+YKKbEPxGcCkww6?=
 =?us-ascii?Q?ARZld0A6EoXMDArye/yrubGHK2MzDRSlMLyiRLPDEqw3AFRWxeySYAC9p5f+?=
 =?us-ascii?Q?bVePqtAmN0bCL/77ZCx1fgktuhw4Y+IAFoeJytTbsTMpy0v9ypesk060yXjQ?=
 =?us-ascii?Q?u8n8ZiGI8XtxEBr6P1iHQm8hc127gdg3zMhcR168vkTHa+/fPkJ8sANN1VpN?=
 =?us-ascii?Q?99mupwh3Bs8EZUB0uBRWRD/FPmUSVWLFDQSUOjFbWtgjgkXNwEmkrQWMl9zG?=
 =?us-ascii?Q?f6DUoE6lFoQVYvg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?eAjweEXWMG5H7WxWFYBvTCh9T+PS6Ruj98e7qV2rQtG7V+29fA2xLSzLlBHd?=
 =?us-ascii?Q?5w9gmAez21CrPk68yz54PhSObAOdKByZMESkzN6vENECfXf5yVrYcieeHcjv?=
 =?us-ascii?Q?mlL8XRPPbomDFw4B9ElwxPF7nHXpwqRpLs1cQJodkzpZMc+iNpaCrFZQQrM/?=
 =?us-ascii?Q?2iakiR4667sLOyO/8w/cbivlNkiyRZhxgQOwt9+O4M61BGEYqE7pXYIWQfwD?=
 =?us-ascii?Q?tN48QA694IlNsFW092uGQaUlqwBuW0E0O/+gnjUi/ietJ7jIM2zejJaEtCze?=
 =?us-ascii?Q?s6eS4WRpb82cxZpQYr8XrZ8j1TPJKCXFxvz7nIv+Hv781JC4IUrMQ7AIxSbN?=
 =?us-ascii?Q?JAsV6gelrYgCaUDdeN12Gi/3KSWcZsU4K2Es1TUeH9cKAuEhA8Jb5LfSxy6k?=
 =?us-ascii?Q?I1zLi8MaYBY6ZKn69Z0kdfWdxRdMgTfaoR0ndkp2C/giqbTGUxrndkKSDGS7?=
 =?us-ascii?Q?j5J9uPkR+4hwK1Nn9I0AQLh9B0QMbZZZ48TK+WbjSJ9I1xJt03tZaSiP5xTL?=
 =?us-ascii?Q?rs9umQxX1SKDrJMgvcVmazVFoSd7B69mbVR23YP43SaTx+guE7UY0Y2lLBvi?=
 =?us-ascii?Q?9ua0HbdeENo/Hy1xFztr5ZGPpqdGnmoLBt3jpp8TzwZEAIwgjzPSp93xZa+R?=
 =?us-ascii?Q?ETBhjVpUfuA2spkaW2JnNnKIT06LdOxiKS6eSISrhCOF6I4kJOcRPPybWLvy?=
 =?us-ascii?Q?G2SHU6e7efBhzWOoquVBHktVVA2jsl+P7UU6UyFMYHGfTWKK5AwnOG/5uFz3?=
 =?us-ascii?Q?8fQKmcuGwPCTMa0CZkkUFNP4aNwKCP9tBkeA5VWvNHkk9G5yR8WR0hpN3kOj?=
 =?us-ascii?Q?SAHx0Dqw2RzgSdvgHX4U5mfaRWzjlIV7QKoJxnR6T9i47sT9bjqw3avSU5U3?=
 =?us-ascii?Q?wMOIT2rvFj24I7jP8DqxQZLz/0RpmG+utaKZc7KqpFgVSyy+y/nDb3sgHQg6?=
 =?us-ascii?Q?aOZYvqtjBzHpC5kc0hQFUq40i13K7D8gkI2loWjMkj5vax3+G3Bo5NbQTQuM?=
 =?us-ascii?Q?4P9PKMfdQ3EfUwM05soW4erGohYG+ja/CDmhia3C4hdStgIK2/mOMfJR8S1l?=
 =?us-ascii?Q?a/P1JjtDsHv/PgFkVIr9BSPZKrP6XxFpkrCbpmEgl9umLM6kKNtObPETCFDa?=
 =?us-ascii?Q?AcQsiRrFBepXFtHsV2ZIHjBKSD03Kv3AEzsPZBq/dKE6JxqF++3QzhFrVlMe?=
 =?us-ascii?Q?yr5vtG/A5gmp7wI6CEbRD9EFtRtNPm2aeSUGVxn/wK3DdMfYPyjUgO0Qx5VD?=
 =?us-ascii?Q?WHI/WLNncAul0cfXiVp0+v7nmBH0J6QBxibZssESmf9PmEpMOAiZSDS6CddV?=
 =?us-ascii?Q?31zeuNZkMngJBF6Mo3lEOBrBN8Cg0LarsIdDWT07MmcvboKlBy4/CXImzerP?=
 =?us-ascii?Q?QPMtjKj5ASq3BYedpzsAiwS+Dt7ySTjDsH8xTKlx2dd126W8bheukbtmj8FI?=
 =?us-ascii?Q?x6cIEmhGorsaNKoP93HVSYWcruwHgkOJcbfSrm1btokv6+X0Ct68Afruio9O?=
 =?us-ascii?Q?ivIH6yWPscoYdnFmRe12EAkpSdgfvapJx2MponfHVFRqubx1WLJUxP4P/C/V?=
 =?us-ascii?Q?/GyO40TBSMo7iIRyxcdjgglz6KTbAHyqjOlsyRYjNxBKTZJTeXFNVr7A/8tO?=
 =?us-ascii?Q?ZDBI1mxnmJ2EoCq4lc+g82A=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06f15815-a392-4aba-7c42-08ddd8b712a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 09:11:35.9639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 16XDe7IAYDWGpWWducsddCswKPjtNQvD4xUqZSobJqEdZdQnqFyWz+jOBeXWE7cOqP2eyxr9OpNhEjDPxmp87TC7G3BlKN1PgvLO8spkEYPnudA1ESy9FQ+v7pqC1E11
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF30373102B
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: 07 August 2025 16:46
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; jani.nikula@linux.intel.com; Golani,
> Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, A=
nkit
> K <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 08/12] drm/i915/display: Add guardband check for feature
> latencies
>=20
> Add a check during atomic crtc check phase to ensure the programmed VRR
> guardband is sufficient to cover latencies introduced by enabled features=
 such as
> DSC, PSR/PR, scalers, and DP SDPs.
>=20
> Currently, the guardband is programmed to match the vblank length, so exi=
sting
> checks in skl_is_vblank_too_short() are valid. However, upcoming changes =
will
> optimize the guardband independently of vblank, making those checks incor=
rect.
>=20
> Introduce an explicit guardband check to prepare for future updates that =
will
> remove checking against the vblank length and later program an optimized
> guardband.
>=20
> v2: Use new helper for PSR2/Panel Replay latency.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 138 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
>  3 files changed, 140 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index af4d54672d0d..c542a3110051 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4227,6 +4227,138 @@ static int hsw_compute_linetime_wm(struct
> intel_atomic_state *state,
>  	return 0;
>  }
>=20
> +static int
> +cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_cdclk_state *cdclk_state;
> +
> +	cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +	if (IS_ERR(cdclk_state)) {
> +		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
> +		return 1;
> +	}
> +
> +	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
> +				   2 * intel_cdclk_logical(cdclk_state)));
> +}
> +
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime) {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
> +	u32 dsc_prefill_latency =3D 0;
> +
> +	if (!crtc_state->dsc.compression_enable ||
> +	    !num_scaler_users ||
> +	    num_scaler_users > crtc->num_scalers ||
> +	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
> +		return dsc_prefill_latency;
> +
> +	for (int i =3D 0; i < num_scaler_users; i++) {
> +		hscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[i].vscale, 1000) >> 16);
> +	}
> +
> +	dsc_prefill_latency =3D
> +		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						  chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						  linetime);
> +
> +	return dsc_prefill_latency;
> +}
> +
> +static int
> +scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int
> +linetime) {
> +	const struct intel_crtc_scaler_state *scaler_state =3D &crtc_state-
> >scaler_state;
> +	int chroma_downscaling_factor =3D
> skl_scaler_chroma_downscale_factor(crtc_state);
> +	int num_scaler_users =3D hweight32(scaler_state->scaler_users);
> +	u64 hscale_k =3D 1000, vscale_k =3D 1000;

Should be zero while initialization ? as already we are maxing with scaler =
user checks

> +	int scaler_prefill_latency =3D 0;
> +
> +	if (!num_scaler_users)
> +		return scaler_prefill_latency;
> +
> +	if (num_scaler_users > 1) {
> +		hscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].hscale, 1000) >> 16);
> +		vscale_k =3D max(1000, mul_u32_u32(scaler_state-
> >scalers[0].vscale, 1000) >> 16);
> +	}
> +
> +	scaler_prefill_latency =3D
> +		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k,
> vscale_k,
> +						     chroma_downscaling_factor,
> +
> cdclk_prefill_adjustment(crtc_state),
> +						     linetime);
> +
> +	return scaler_prefill_latency;
> +}
> +
> +static int intel_crtc_check_guardband(struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	int dsc_prefill_time =3D 0;
> +	int scaler_prefill_time;
> +	int wm0_prefill_time;
> +	int pkgc_max_latency;
> +	int psr2_pr_latency;
> +	int min_guardband;
> +	int guardband_us;
> +	int sagv_latency;
> +	int linetime_us;
> +	int sdp_latency;
> +	int pm_delay;
> +
> +	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
> +		return 0;
> +
> +	if (!adjusted_mode->crtc_clock)
> +		return 0;
> +
> +	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +
> +	pkgc_max_latency =3D skl_watermark_max_latency(display, 1);
> +	sagv_latency =3D display->sagv.block_time_us;
> +
> +	wm0_prefill_time =3D skl_max_wm0_lines(crtc_state) * linetime_us + 20;
> +
> +	scaler_prefill_time =3D scaler_prefill_latency(crtc_state, linetime_us)=
;
> +
> +	if (crtc_state->dsc.compression_enable)
> +		dsc_prefill_time =3D dsc_prefill_latency(crtc_state, linetime_us);
> +
> +	pm_delay =3D crtc_state->framestart_delay +
> +		   max(sagv_latency, pkgc_max_latency) +
> +		   wm0_prefill_time +
> +		   scaler_prefill_time +
> +		   dsc_prefill_time;
> +
> +	psr2_pr_latency =3D
> intel_alpm_compute_max_link_wake_latency(crtc_state, false);
> +	sdp_latency =3D intel_dp_compute_sdp_latency(crtc_state, false);
> +
> +	guardband_us =3D max(sdp_latency, psr2_pr_latency);
> +	guardband_us =3D max(guardband_us, pm_delay);
> +	min_guardband =3D DIV_ROUND_UP(guardband_us, linetime_us);
> +
> +	if (crtc_state->vrr.guardband < min_guardband) {
> +		drm_dbg_kms(display->drm, "vrr.guardband %d < min
> guardband %d\n",
> +			    crtc_state->vrr.guardband, min_guardband);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> @@ -4289,6 +4421,12 @@ static int intel_crtc_atomic_check(struct
> intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>=20
> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
> +		ret =3D intel_crtc_check_guardband(crtc_state);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 4474f987de06..5ffa76cb1633 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_sta=
te
> *crtc_state,
>  		adjusted_mode->crtc_vtotal - adjusted_mode-
> >crtc_vblank_start;  }
>=20
> -static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum plane_id plane_id;
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h
> b/drivers/gpu/drm/i915/display/skl_watermark.h
> index 62790816f030..8706c2010ebe 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct
> intel_atomic_state *state);  void intel_program_dpkgc_latency(struct
> intel_atomic_state *state);
>=20
>  bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
> +int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __SKL_WATERMARK_H__ */
>=20
> --
> 2.45.2

