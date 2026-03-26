Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ipFtN5uuxGnU2QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:57:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E298632EEC4
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 04:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9549010E24E;
	Thu, 26 Mar 2026 03:57:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k4uI1bSU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C12110E24E;
 Thu, 26 Mar 2026 03:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774497432; x=1806033432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b9eyQ34msZCK0069mneA/rQKkzLV1K8x9puG1WcETDo=;
 b=k4uI1bSU6JrGtVzUCOx2A0WXmFAfKxLUGcYJzDNVUlyX1Yy9zkIDC3Ua
 k1M0pctVHCOiRiwEWtVSMPOTGUSlus/InKH/SjvnFKR+9YQD5T8fMTd1d
 niQcepo0LueHVsS2ddf73bcc4+mKBTdTT0i3vxXPRC0nszkX+nkaGgO2u
 ejANSGCAroUdFcscIPNOd0+mAxM1CDMski8lYVnh6FNqg4OkTjTQqtLix
 LvXvmr8U/rqsvILxAI4jPKLeEkBfrmE12nrWoFj/Olco9Djq6gfgqohdd
 kxpUGdEVs2Vr710kdRrx29EGN92EgVyUtnnzNus+/A0gQL4uLyuLm6yjr A==;
X-CSE-ConnectionGUID: 6DB4w71XRAmuA8srnic48Q==
X-CSE-MsgGUID: 3vuWZCdsQGGDlxmqNjdFKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="79147803"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="79147803"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:57:12 -0700
X-CSE-ConnectionGUID: S51hPjGfQjy6nwlxAKrp9g==
X-CSE-MsgGUID: MM7rvSBTQBumS57DiO9TKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="229816048"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 20:57:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:57:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 20:57:10 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 20:57:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N5KHi+hUb+xdEk+GnTlsNBrW8mM/MqeSVT7WW+2Wz71qXTKTOBV1gbanOqoZoCQaNh6e2WzmHTMs+g9avtioPDlP7uEaEi+qQ47Kbm03+/LEoWTXZU8M6U1JCISQizCXAkBirnRL+2J3jWAF0EZhkrLcbk35UDSWA85ytrCD92hQokgw4aXBy/WwFmq1+0LWEHTpzxomJCRqSZiR8EW3l6ZFduGeKoht1RXA/UdgpLk7A4rGIzGtCGzTd2I8cGnLsIBSKAlqc4U+uxqmjxNe+mYp68LU4t68IUMpN+V2H4HIiSwDmAtYYrv764wagKr6N8ATWCOqzV91PT56M4Y7Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQ58+kqdpLAkZQyNRgiHDhl1uVnS3L4/iGBy5QWQ+OU=;
 b=WOegfUfVL9KRvWz9YSKIAfzSW7CGJke8ejZRhRJA5chyhKgBjgwAKYwb41YF5SsiQXgx7wm/LdM+ifRak+jlwW+3uAZ8l4SSeo6/INFNRvqDlZfFKImeM+7Hk/q9oH9PcJVavu7+k2RlsqxO5WS1zWDsJoGaljulAReUJUATXv0NM+PzSnE79f9Y7s8qsXrMkHMaJ+dgEhL/GwW1QppjSGxnYoqgPK+UJuUEHoCSVEY3xpUE3a/WdeGoO5She7A/e4mD2/EH9FwF6A/aoIbah31GtPbRqKcswyYL3+i/eh2frVif+bSOyqouMGIp+C8QueVMQ/MKnJvr2K+tTWCPWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7140.namprd11.prod.outlook.com
 (2603:10b6:806:2a3::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Thu, 26 Mar
 2026 03:57:07 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 03:57:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 26/26] drm/i915/writeback: Modify state verify function
Thread-Topic: [PATCH v3 26/26] drm/i915/writeback: Modify state verify function
Thread-Index: AQHcvEfMWr5WzBvgPEOrqTDJsH6lILW/NpAAgAD58AA=
Date: Thu, 26 Mar 2026 03:57:07 +0000
Message-ID: <DM3PPF208195D8DEBF180380F3181942F52E356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-27-suraj.kandpal@intel.com>
 <acPcxrDhs4PEMc4L@intel.com>
In-Reply-To: <acPcxrDhs4PEMc4L@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7140:EE_
x-ms-office365-filtering-correlation-id: a15f9b4f-9563-4fde-fb7f-08de8aebc020
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: HiweF5Ow5IU8yKdVLaRWSLmCkALw6if4LEN5weaefxgVCer5PQecx2RPgeaWWCa9rQKXDxfWShKVCMvAkgD6lRRyRkPUsd2SJ7i+3p+9+wmHw7PYGj04Oy1MKaDpL1F/K1Ml72r2MaaHq7BpIdaUZykZIAJcuQloImuV6DonAlIeLvD3Awcp6YaWSKnfiAft9kyIvxZWL3PFLNiSzmelv2Sl/gzM5eZ4ReIq4Gej4m51VQCXc3yR0YvFvSVp+/9OZN5uPFUOskqIgQlK+HGshBRdRN91BZ2mkUTyLMCkRbWBdO0JGjfTBTKcDpWxCb4RcthT9Fj5YEud/COI3cin48lb/RwktFt8zQ5OihssfHKttved9yqfpQSLCNAIGHpVl57WBAq9jyrKztYuNTwfM4CEG2Pvh0STQJbAIXnkarEJCIaszRN6kiB5fhy/+wZXvqw1+3owm8f/ac1k4rdHH6GE2Ph5FxunHrPckzHM85meS+K2jiOlZ/S05jdfDeLyP3dHGqqWktFD9nvZB3Dk4GKy0DK2UNbKJBsDe80RiCwJ/k0ye7MnLiPciWbGXv31kvZJJJfcpcQPnONcjTpUc6hSh7rVZO/qk9JgLpRmAyk9OhdPYGiBD7pMw3R3D+K0YjoBF0hr+ZQFpU9zAzQ08r4oEbqo49E7LXF77qsshLTlAkmxhYYji4gT+2QZWzoqGcp/MTkhGKpGFq3r6x5AJvlncf4TIrV8sqap8VURmncwWIltUGfD9ytfAcHZBfEGjgpLkABqTHibuexNOo5fo44qAAhLqcrf1yLtb6kS7E8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PZMte//8Ri1rYWllfZiGBOTI9EZwW6aFO/AKRI4TTpWc+7CSk6t0jdkqSD?=
 =?iso-8859-1?Q?pPhfVYdqx5ZN4sVR0U8GmKy2rRBO/gMQk337SyGPDDH7q2wcP7PayH07R4?=
 =?iso-8859-1?Q?F2rHUcJ93D31NAMk51h2LwhbJqvHgXyxuu2uLxBKlDs+7eI6BIK71EmVE5?=
 =?iso-8859-1?Q?hqb8kJ7AGz2b/pALPN7qOK7nmPlb1kVjJhRkNvd3SEhSAmqMDHVsOjqC3c?=
 =?iso-8859-1?Q?oaP3EQrtz1ijjLwHGLAxz7ch853GK4mT0+t+daJRcS/h2ID7ertfUtdye8?=
 =?iso-8859-1?Q?hl7UixdzXspWfooD9Dp+1PCnCJhswoLv2doPmVK9mrdnovB71H+Bs1BL5e?=
 =?iso-8859-1?Q?9ixEiIa6NDr9K5YR8d4Mmgx8fbKhYwaMq5pXu50v22EoNjoU1rS7F89UJV?=
 =?iso-8859-1?Q?5n3ruxskyEsFcsh/EPIVWNVmlTVXO5JfdjFDdY/8CQ4s2OdPdJteJE0zko?=
 =?iso-8859-1?Q?pR6632EUAfNSTXYaoOxTq/XANPcTO8yIHgZx1/MbRm7v6FiKiVddeGcogw?=
 =?iso-8859-1?Q?ZstbFdOJbHxYOlVsU/HD3GfnTDfKNu+ZVJF/Qh6yC0RXRWZOEhgSZpYmvr?=
 =?iso-8859-1?Q?9rM2nZh+mxHmriLJkHAYwp4QY5FfWTA1KjyWpxZeYmQYV2/wJHl5Fm22KB?=
 =?iso-8859-1?Q?5Qy845Q9swX83mDsXtOiSTbB7erj5d7fmalPwlo8AIofLPXE4kJ7hGYYNM?=
 =?iso-8859-1?Q?mH2akjEva5z/6pQEbAVIjUD9TLAAMa7X82LUWL+TgJDzasdJnEi40xwsAv?=
 =?iso-8859-1?Q?0HgV6OIDJ30qTfcixa6s1KYjDyQDVXYKeLiqyDNN9cNT5MZaO892RYcQXP?=
 =?iso-8859-1?Q?FyFL3tK1qbgHGPkdlYsm9JOa7fjWOnYvudBL+E5bfTY9uTcLc6i7znGi5S?=
 =?iso-8859-1?Q?OeVxm7MtM6vO+Z5KpUZ5S/1D72729PZhDtlXpPfVzCgvkxbacBjiN/djmZ?=
 =?iso-8859-1?Q?3pLjNesmfcESPjJUeK/no6uQcqoDDieFqj95yzv7xSARsIeO+lw1zvqzYK?=
 =?iso-8859-1?Q?2Fvx6BDdqaPSGRVCtdZZCDRW4tLlMOuISGbOvIhB3vSyvTQBg6aa5eB7ha?=
 =?iso-8859-1?Q?QWSz8S1AcY0aKThDMofzq+uh67lmZA0g45iEvn9T/lHnNqSna6q1TKfLTE?=
 =?iso-8859-1?Q?nOli3xpNz2qYzUSfTxh5lklcxieShtyM+p/A+CtB69RvwoX4uFOgvWjtqH?=
 =?iso-8859-1?Q?NgiE6639Hifb2CVGfv1GZekCQhFztl/qZ4jDAXFjNBHVYpbgDUYpNPkdKW?=
 =?iso-8859-1?Q?Wa8YPr1W8fWaelREdsmY9WndoR9ryUUBjS8BzfKoJLpaPplGGKjb6Ia0xd?=
 =?iso-8859-1?Q?iBAkVgsISj00Av9PTgfXaYhAwYRQetKkWDQJw5B6KjI0sL/k5BW0yKjjFu?=
 =?iso-8859-1?Q?54oQfvZEQxmU1cjrGTOKzn1pFvU433LPK59soj1xFnaiyuFy7i2M+f8y7P?=
 =?iso-8859-1?Q?jJP5JTlajy2P5MlJJ4cwnZjwywtkxIqnf4vky2cAv/KGaQYhRwWRYhnWjA?=
 =?iso-8859-1?Q?S2YxxV9/nkF9fdWPqrj8NPQiBKdTxueA3+aLrOg8ltVkL/eGRP/dRHo1U3?=
 =?iso-8859-1?Q?alNqk+hPGztatIv00VM+IGaT1oyI24xP/juujoKc5XHUm+NT5Imaqb/Jfx?=
 =?iso-8859-1?Q?vRDXTaAp4Bzc8hvWdmFYZicLLStYlAfilxqmlB60TwfRdfjz5oz7vVAKIm?=
 =?iso-8859-1?Q?adpVee4lMJLYIZ3lhi3JqAr3uoTyU4toYt14D7Ja5xLGg55yO9fYDZhbP6?=
 =?iso-8859-1?Q?u/48RihLuxk0j8JctMGo2Y0JAXkNVLMV6UGvCz3HZXPx8fu4h1jiEAuAGE?=
 =?iso-8859-1?Q?DEij87sJGQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dJKXTHfLeysLPraGXD12E9H1rsQ531F8qWcotr4cuAput+Qml6mT0yVNnOzCWiJd0QYIKcyK0Bww/Kv41z/vjcnRhiSWKryWEpbJ+kYmH6lMhf7KrFqnBOjqITwbNMnH1CVd+0QVa3mvv7KowL+nDN8eL6Dkufk49aQHyY2gytxrqYsgRUzygnm3dZJWNvhH2H/nH34LNKop8AvYyA0u05HEiO1v6JY5S6PIR2M2d/HnecGVe1e/eNTi8FMp2ao1AVM3vkFfQQtZja3cjmIkcF7cZ3XlJbE6C4mesI1NFWqqbavzFPRB52Xh6c6ci82rDltL260LZcht117AcNZjhQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a15f9b4f-9563-4fde-fb7f-08de8aebc020
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 03:57:07.3798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2CAK2c+N1M03/IX3OCMf7Abm74R80Dy4uWVMhZAEtSsJmSs0/5fRePKS/BHzy3rDOQpE8CDOoaR61Pr+3xxU9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7140
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E298632EEC4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> <arun.r.murthy@intel.com>
> Subject: Re: [PATCH v3 26/26] drm/i915/writeback: Modify state verify
> function
>=20
> On Wed, Mar 25, 2026 at 04:37:44PM +0530, Suraj Kandpal wrote:
> > Modify the state verify functions to take into account the fact that
> > writeback does not need all the timings for it to be set.
> > Moreover there is no need for dpll state nor do we need to set any
> > sort of flags for it.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 57
> > ++++++++++++--------
> >  1 file changed, 35 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index e47b4e667fec..59b6c61890bc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5140,6 +5140,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	struct drm_printer p;
> >  	u32 exclude_infoframes =3D 0;
> >  	bool ret =3D true;
> > +	bool is_writeback =3D
> > +		intel_crtc_has_type(current_config,
> INTEL_OUTPUT_WRITEBACK);
> >
> >  	if (fastset)
> >  		p =3D drm_dbg_printer(display->drm, DRM_UT_KMS, NULL);
> @@ -5245,20
> > +5247,25 @@ intel_pipe_config_compare(const struct intel_crtc_state
> > *current_config,  } while (0)
> >
> >  #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
> > -	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> > -	PIPE_CONF_CHECK_I(name.crtc_htotal); \
> > -	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
> > -	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
> > -	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> > -	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> > -	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> > -	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> > -		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> > -	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> > -	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> > -	if (!fastset || !pipe_config->update_lrr) { \
> > -		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> > -		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> > +	if (is_writeback) { \
> > +		PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> > +		PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> > +	} else { \
> > +		PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
> > +		PIPE_CONF_CHECK_I(name.crtc_htotal); \
> > +		PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
> > +		PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
> > +		PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> > +		PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> > +		PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> > +		if (!fastset || !allow_vblank_delay_fastset(current_config)) \
> > +			PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> > +		PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> > +		PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> > +		if (!fastset || !pipe_config->update_lrr) { \
> > +			PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> > +			PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> > +		} \
>=20
> This is ugly. I think a much better option is to make sure the writeback =
stuff
> actually does proper compute/readout for all of this.
>=20

Sure will try optimize this=20

Regards,
Suraj Kandpal

> >  	} \
> >  } while (0)
> >
> > @@ -5387,10 +5394,11 @@ intel_pipe_config_compare(const struct
> > intel_crtc_state *current_config,
> >
> >  	PIPE_CONF_CHECK_I(pixel_multiplier);
> >
> > -	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > -			      DRM_MODE_FLAG_INTERLACE);
> > +	if (!is_writeback)
> > +		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > +				      DRM_MODE_FLAG_INTERLACE);
> >
> > -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> > +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)
> &&
> > +!is_writeback) {
> >  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >  				      DRM_MODE_FLAG_PHSYNC);
> >  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > @@ -5441,6 +5449,8 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  		PIPE_CONF_CHECK_BOOL(hw.casf_params.casf_enable);
> >  		PIPE_CONF_CHECK_I(hw.casf_params.win_size);
> >  		PIPE_CONF_CHECK_I(hw.casf_params.strength);
> > +		if (!is_writeback)
> > +			PIPE_CONF_CHECK_I(pixel_rate);
> >
> >  		PIPE_CONF_CHECK_X(gamma_mode);
> >  		if (display->platform.cherryview)
> > @@ -5463,24 +5473,27 @@ intel_pipe_config_compare(const struct
> > intel_crtc_state *current_config,
> >
> >  	PIPE_CONF_CHECK_BOOL(double_wide);
> >
> > -	if (display->dpll.mgr)
> > +	if (display->dpll.mgr && !is_writeback)
> >  		PIPE_CONF_CHECK_P(intel_dpll);
> >
> >  	/* FIXME convert everything over the dpll_mgr */
> > -	if (display->dpll.mgr || HAS_GMCH(display))
> > +	if ((display->dpll.mgr || HAS_GMCH(display)) && !is_writeback)
> >  		PIPE_CONF_CHECK_PLL(dpll_hw_state);
> >
> >  	PIPE_CONF_CHECK_X(dsi_pll.ctrl);
> >  	PIPE_CONF_CHECK_X(dsi_pll.div);
> >
> > -	if (display->platform.g4x || DISPLAY_VER(display) >=3D 5)
> > +	if ((display->platform.g4x || DISPLAY_VER(display) >=3D 5) &&
> > +	    !is_writeback)
> >  		PIPE_CONF_CHECK_I(pipe_bpp);
> >
> > -	if (!fastset || !pipe_config->update_m_n) {
> > +	if ((!fastset || !pipe_config->update_m_n) && !is_writeback) {
> >  		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> >  		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> >  	}
> > -	PIPE_CONF_CHECK_I(port_clock);
> > +
> > +	if (!is_writeback)
> > +		PIPE_CONF_CHECK_I(port_clock);
> >
> >  	PIPE_CONF_CHECK_I(min_voltage_level);
> >
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
