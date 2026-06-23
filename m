Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7hMnMsAZOmrY1QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:29:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBEA6B42E6
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 07:29:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=HpUfxAYv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F406F10E94D;
	Tue, 23 Jun 2026 05:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC8F10E94B;
 Tue, 23 Jun 2026 05:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782192573; x=1813728573;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aj7UVM/9PpYT0zB3be9bxnFtacHD0OTo14tcEpNNn1o=;
 b=HpUfxAYvQYUFDr0pcqmKe7IZt5ma36nfv6Ozf8/8RgEp6FOI0ovwerS/
 Ylh1vxxNUGj2PRiAgcoS4IKvIcEvd6EPwhMnm8ZAbZxuA8EJ0ZlzdehCu
 u1ImOelXpOF2UwWKE4fkZXsQWbqpp/57f84YXO1MbR48huNer6wg0c9lj
 Y9xazCQdb43vfGU0eKkrJtIrdfvMU+uYzMxWZ1k0pkXHn4aRqzX9LoIr0
 YxC3NfoRdi6nzTxfRCDBHF+p9cvfe3eSdD1WhVa/SYcJB1j5OvmgNgAo0
 rmUilLp8XOwzDlukb43ynOMQUXpg94+fwz/df18yOLsOsVVy9Nt98oUeQ A==;
X-CSE-ConnectionGUID: +RAiAmqMQj6nav9WFW+VvQ==
X-CSE-MsgGUID: sNRGG90qQpOv2lpB4BJgzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="94043530"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="94043530"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:29:32 -0700
X-CSE-ConnectionGUID: fpeXEg7LS6OmhLSdpjvH5Q==
X-CSE-MsgGUID: JLLiotLRRG231HRRWlBDEg==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 22:29:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:29:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 22:29:32 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 22:29:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nHd84mGV9Z70UIx7ZoOg1aVXnes80eJk2Poy7zTkvm44Z0Iv/ZCLnTLZlYn8GJM77g6MycWZPkxbnOEF6HaKegcQdJCJIiSHU6jq0RvtdBCdIQitugsq7WfjqOY7uJmaCpDtA4kaiw3kJljgc6zaGRNpmNpPsLCURnVk7mcU+1NIVjA32M1Qm0o2dZZ+PZdmJOlKvkWekh6f4nd3NhAlAP1mknigzEqSIWiA8pIDYidarpa3UXBQlDseRKf6c/A2RmgVliSsWv8bvKgZk02GjvpLnUTUpVDNTCmDR10spKfUfIqIG3sCArJCmVnSJAFo5uX3wHUKb4koYJw3HEP9YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MR3ykfAKomTlD7zuGAGWCoW8ofjmz81/9UKCPZbELVk=;
 b=huxrUf4wRlMLqZmoZ6rGebTcXIAwtvkfH/pRs4pEznb9f1SqqEaJDlPZvT9/nI7P7MBTIrhTBqFZ7OU4wo6rVZtIudeFBqkEceBEDgrS2mNRbM9oKjqXTOZL+aUmuy+hqrWRSqboDb9VuXpQTO38weIEZiJyRazq4rUzUS0thLH2QvXOrnQC/USYz7+jrosNRBY6dV4319di2tsBICnw+e3iNWOq4SvY2b8X7TIlwYnKzMAlFiqqNHraf/WdTK3D9eG3sZHchESDbOhm9q5qna2b7s/2VLbpK7hzqpJ4PQeiSo7FESFLNVhITcoFx5VKC+Vx1uOlMOHbj9zg8kRFLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by CY8PR11MB6841.namprd11.prod.outlook.com (2603:10b6:930:62::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Tue, 23 Jun
 2026 05:29:24 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0139.018; Tue, 23 Jun 2026
 05:29:24 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 26/28] drm/i915/dp_link_caps: Pass link_caps to static
 functions
Thread-Topic: [PATCH v2 26/28] drm/i915/dp_link_caps: Pass link_caps to static
 functions
Thread-Index: AQHc/c2AReIjJroPyUGH46ASY8j7cLZLpsjA
Date: Tue, 23 Jun 2026 05:29:24 +0000
Message-ID: <IA1PR11MB64674189ACDB3C32088BD265E3EE2@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-27-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-27-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|CY8PR11MB6841:EE_
x-ms-office365-filtering-correlation-id: 2fe1c25a-e5ff-4a0c-9c88-08ded0e862d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|22082099003|18002099003|38070700021|3023799007|56012099006|11063799006|6133799003|4143699003;
x-microsoft-antispam-message-info: Hj1rplk93JjT1hLZiu+NUSP26/NQB0BhQMjPXlgbY6wjhoUlkMrQ0RNcLH1+uFEXBAsFT6TAJgnPVszvctxZOkY+KV7rUSyOMC7j9iQ2IlyrsqGKSxQWZhY3+u2UaDU7Gj1RBQdRaZdnRkPlNCaKqrPtoMtr7z00O6KM3abEre1vUqosyke/XGhz8QZe9RmWgyVJaKDdD0KXnbdSWl6rjdAwCANTJSfzrD+KzJdbYVeHMfQ5ZfrS0Cy/LpGgaDPMwAbUymYvu6eQj1PkGW4Vlg5b31lKKutul0MlgoH1gQTAltrIsMcm12Mwn42azY/P40ThVH6WkT9Mu5lBpWTiSKvQfNQ0GBbOZUz/gf/Wnp5TphwBzuBDpyaSD+29YgwzkhURH8goO5uoo3OpUIYyuiSyTdpokrToZ8oSoEh5xBXvfE+Aw11JDldYtPcmzUCOJJxVSlt95WmkzyEqbHPgSMG0RM4d0mx/sWSnl8UfvAiZbAX3RVWjGGp90vaeWVqxIeXF+dsw3WsY6OEXWpMb9+q3Bl7guD4DI2jHaKiti+CIrUJrr/jmEWXq7Zk4TEZ9pxbWUskiTrAl/LC6QN02/QvxSTrbZMXmOvfUwNMzW+doi/qqzXROiGcDP9XZ+r6AZf4o3NVP+lOL7ZnKqqzP8t3S75Dl4/c2zU6iaP85rRQNYIdLO9ZBB5QTxb+QIreT4vT2jluzMVdGmPE2DT94zercMQY922h6xzl/C5SQp6k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(3023799007)(56012099006)(11063799006)(6133799003)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MYcho2ATfdfH54OBkOdv7PC3rxICXi3aENl5YOV5DAc0hPMOif2TGcYQpMJg?=
 =?us-ascii?Q?IaKAFFfhNQ664YSbabWZt8PQyIj5Q8eahH0/4qwKR3brYnLwdowcvV9y/Fjn?=
 =?us-ascii?Q?mrUREuubSZzFaK+EvkAZyynNxPUVbppauScSmKZiHGfIcaeVXbMtmZYBBbQO?=
 =?us-ascii?Q?r6zci5AMsL8eiUelo0A7VaTQyo2g1o5H05QwYZatpaWUKz5Gy2tHSGc51+Er?=
 =?us-ascii?Q?FIzyQr78QVS5qa+VTgSNjBucC4MLDnvIbm+7Q9NaCYkQARc5Q6iq0AJdteiY?=
 =?us-ascii?Q?MdnePihH/bgJ8ftvFNEEJ919BY74oVeG4Mrsa2IYTK9F6xGDLz4+6Sr/jVtr?=
 =?us-ascii?Q?D1L9CTFBc7npfJpmxDgUBewyrwu8hbFO6afnbIYWRd7XrudTzNE0gKu77T3e?=
 =?us-ascii?Q?Tare+Dmi3KMKQ1GGJHl8jbb7bUx2N9LNcFkvCvs29xE85Siia5RMqBCiNovT?=
 =?us-ascii?Q?GiexJshp4SUWZBRNk/f/8We9eGX6XJMS7pJlvruOZ3UmLZktOvsefn0jDVGd?=
 =?us-ascii?Q?NYRPwI4HAD9gpVuUSUl/caKrxkfqcrU+JOm9dEnq1P4RPYT/s0rD4/XUYuR/?=
 =?us-ascii?Q?JKV1ntvFTdUtgHGedFjhsEsCstwOXduRlWmI9q4kP2plrups7TgSpUjRU5HU?=
 =?us-ascii?Q?DakbyGH1+XObG16dEH2yHUL8yDJMapX35kgRda0OsEJGhbnOcOwN44iRgW5S?=
 =?us-ascii?Q?TZytC1iwu/rd8BNbXkW5Z1+e0pA6m17GT+N7+5qslVY8ifJTe2iyX3Vu3OYu?=
 =?us-ascii?Q?QKSXy6BDwZXEekAR3UJ7HZwzAwBiMItgGdmOOFmYoLBD8iNrGT2n7fSilpiS?=
 =?us-ascii?Q?jwFGdp/ovTHOi2IosWnbzQeNbTFGngPYe5Sa0Pw5m214Ue1Bj55KYKh0Olpz?=
 =?us-ascii?Q?mqTiaDUNwQ2P/0gi9aPd+U/ak8Wia3RwTEr/ACFFIzbaXx5lfisKJQYMVLlD?=
 =?us-ascii?Q?mzKDCdBt3AyiRmyCHwjU0q7c6gmIJBwieAiByOM1CAqkTmB+IBoTdGabVdcR?=
 =?us-ascii?Q?3d5uUuSCyxHSKQ7v46aJJlopbLiTJQwLue5YxWguSMklnRyenR2I1Q+6NfjH?=
 =?us-ascii?Q?aQIZ3SPrzN3CyvyiWL6R4tLtnlgDGFcY75coX28kiCBTtuLpUgCrqgNyfk/y?=
 =?us-ascii?Q?IkkcHM2DD3dMoREXZK3DyWpBgNTcuS6tXGRbUqm/fHrRr9cP/S2Hm5whxPDr?=
 =?us-ascii?Q?SBIcu7E2O4YSW1g3mlJ3CneaUj67se9XGtPXMgoxO5KPFcDT+LHsgHh3FFL4?=
 =?us-ascii?Q?RiKJyT0mYMJe76CHdsbbTi0fvpk1eVIxrHsWgTPBa85KjxHS0+U2WOdw+7X7?=
 =?us-ascii?Q?2FPmG/pvg6lNoP1aBWVn9mqcl/phAu/gsQkjSyxLaxrnky7SiNXnw6+AxTla?=
 =?us-ascii?Q?yDjQdI/ZZ0yDS46zcFcXl0uqCF9e/92dceX8LFaEvYjeoaITZMrPZYQC14VB?=
 =?us-ascii?Q?a7h+DijM6ADqhy6xxPHl7nY18aM2fL8jYgPCz9aZWtYo/he+dfvsA7kJL0jM?=
 =?us-ascii?Q?8F4SDP8DshYo+kLQlf4cB82j2pHoGlVZBhNx5OSB/aQoYgBO2o8l73sdk9mw?=
 =?us-ascii?Q?uVwGRKsb03uS5q9j7MMr59xkuvjwv0m+cSfQTdgY9VrLoLOlnv/b746piaFS?=
 =?us-ascii?Q?/QvEd3wfBuPoZPCDDhzZzrLB2pNeVq0CD5rzXHrqL6wb2nnOsiu1rACF6odb?=
 =?us-ascii?Q?U0XPeJmm+hT1/5DWlX2uCGpQLpSqw9E2b91uxdbVwhgBboQg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Edurt2Nha+ILIOYJp1tZpNoQN21jvqcg54Wmvx4M1MokiNTJAY09m0zgovRP1h6fxZYGxa9yTbSRKgMZTmQ+N9Etrf22bHFwSzvQNgTyfxRrH0y0IFgjzCG7e1m9h0Dcar7MAUSZWHobWXm4qJL28MmTqV+5NwS5/0UwQW1H4PlSk3Qv3NStbrFM8cbP/ONGaA6fH41+DAqrvPSxG1dGF6D7Mz6tnQIs31KE7BAA4LLDvgGQTF/9L9rMPldzcbDa0rv+OuA599D/mtD74X35iFjhaEj1/1LdWPRh83RYMTeXaLWgdw7YzB46vZ5CDCPVcqnJxPBo74Hue0SgEWNClw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fe1c25a-e5ff-4a0c-9c88-08ded0e862d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2026 05:29:24.1781 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4W2H8BAdbJibF8AokT8T0WYNbMS9SsGzvr+Xnl20uDwP8tr8trcLs0nIGlJ+grKeEcRo5d4R3IEi9CjxRbkkMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6841
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1DBEA6B42E6



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Wednesday, June 17, 2026 1:39 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH v2 26/28] drm/i915/dp_link_caps: Pass link_caps to static
> functions
>=20
> Pass the link_caps pointer to static functions in intel_dp_link_caps.c, a=
s it
> holds the state with the relevant information.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 37 ++++++++++---------
>  1 file changed, 19 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 43427e7cf422a..fc1061149ef2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -118,10 +118,8 @@ int
> intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps
> *link_cap
>  	return link_caps->max_lane_count;
>  }
>=20
> -static int forced_lane_count(struct intel_dp *intel_dp)
> +static int forced_lane_count(struct intel_dp_link_caps *link_caps)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> -
>  	if (!link_caps->forced_params.lane_count)
>  		return 0;
>=20
> @@ -129,9 +127,9 @@ static int forced_lane_count(struct intel_dp *intel_d=
p)
>  		     1,
> intel_dp_link_caps_max_common_lane_count(link_caps));
>  }
>=20
> -static int forced_link_rate(struct intel_dp *intel_dp)
> +static int forced_link_rate(struct intel_dp_link_caps *link_caps)
>  {
> -	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +	struct intel_dp *intel_dp =3D link_caps->dp;
>  	int len;
>=20
>  	if (!link_caps->forced_params.rate)
> @@ -147,14 +145,14 @@ static int forced_link_rate(struct intel_dp *intel_=
dp)
> void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps
> *link_caps,
>  					  struct intel_dp_link_config
> *forced_params)  {
> -	forced_params->rate =3D forced_link_rate(link_caps->dp);
> -	forced_params->lane_count =3D forced_lane_count(link_caps->dp);
> +	forced_params->rate =3D forced_link_rate(link_caps);
> +	forced_params->lane_count =3D forced_lane_count(link_caps);
>  }
>=20
> -static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> +static int intel_dp_link_config_rate(struct intel_dp_link_caps
> +*link_caps,
>  				     const struct intel_dp_link_config_entry *lc)
> {
> -	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
> +	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
>  }
>=20
>  static int intel_dp_link_config_lane_count(const struct
> intel_dp_link_config_entry *lc) @@ -243,26 +241,28 @@ void
> intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
>  	reset_max_link_limits_no_update(link_caps);
>  }
>=20
> -static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> +static int intel_dp_link_config_bw(struct intel_dp_link_caps
> +*link_caps,
>  				   const struct intel_dp_link_config_entry *lc)
> {
> -	return
> drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> +	return
> drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps,
> +lc),
>  					 intel_dp_link_config_lane_count(lc));
>  }
>=20
>  static int link_config_cmp_by_bw(const void *a, const void *b, const voi=
d *p)
> {
>  	struct intel_dp *intel_dp =3D (struct intel_dp *)p;	/* remove const */
> +	struct intel_dp_link_caps *link_caps =3D intel_dp->link.caps;
> +
>  	const struct intel_dp_link_config_entry *lc_a =3D a;
>  	const struct intel_dp_link_config_entry *lc_b =3D b;
> -	int bw_a =3D intel_dp_link_config_bw(intel_dp, lc_a);
> -	int bw_b =3D intel_dp_link_config_bw(intel_dp, lc_b);
> +	int bw_a =3D intel_dp_link_config_bw(link_caps, lc_a);
> +	int bw_b =3D intel_dp_link_config_bw(link_caps, lc_b);
>=20
>  	if (bw_a !=3D bw_b)
>  		return bw_a - bw_b;
>=20
> -	return intel_dp_link_config_rate(intel_dp, lc_a) -
> -	       intel_dp_link_config_rate(intel_dp, lc_b);
> +	return intel_dp_link_config_rate(link_caps, lc_a) -
> +	       intel_dp_link_config_rate(link_caps, lc_b);
>  }
>=20
>  /* Return %true if the supported link parameters have changed. */ @@ -
> 333,7 +333,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, =
int
> idx, int *link_rate
>=20
>  	lc =3D &link_caps->configs[idx];
>=20
> -	*link_rate =3D intel_dp_link_config_rate(intel_dp, lc);
> +	*link_rate =3D intel_dp_link_config_rate(link_caps, lc);
>  	*lane_count =3D intel_dp_link_config_lane_count(lc);
>  }
>=20
> @@ -414,8 +414,9 @@ static int i915_dp_force_link_rate_show(struct
> seq_file *m, void *data)
>  	return 0;
>  }
>=20
> -static int parse_link_rate(struct intel_dp *intel_dp, const char __user =
*ubuf,
> size_t len)
> +static int parse_link_rate(struct intel_dp_link_caps *link_caps, const
> +char __user *ubuf, size_t len)
>  {
> +	struct intel_dp *intel_dp =3D link_caps->dp;
>  	char *kbuf;
>  	const char *p;
>  	int rate;
> @@ -458,7 +459,7 @@ static ssize_t i915_dp_force_link_rate_write(struct f=
ile
> *file,
>  	int rate;
>  	int err;
>=20
> -	rate =3D parse_link_rate(intel_dp, ubuf, len);
> +	rate =3D parse_link_rate(link_caps, ubuf, len);
>  	if (rate < 0)
>  		return rate;
>=20
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>

> --
> 2.49.1

