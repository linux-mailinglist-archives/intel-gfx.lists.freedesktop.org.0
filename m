Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8kagHU8ysmkkJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:26:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81F826CC4F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:26:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECAB10E949;
	Thu, 12 Mar 2026 03:26:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jbz0WURs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295D310E947;
 Thu, 12 Mar 2026 03:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773285964; x=1804821964;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=u7BbnHRlDFc9owE1hgs/HKbpQUUKaQoxaaCYmGLSPPE=;
 b=Jbz0WURsifwtsChCL0GAUxdb9IpcMFOzoHm9iFlMP/HeoYXVEsSNn2T5
 MTqJrkjkKOiDLhkRr7A2mt6+8o6C99atdae2meE4e0CrPELCwtaBj9xnz
 3zMVaEeU581So7oy01DIH1iORGdc9rOaCLIYQvMJ05Ox8TcKlTY9H5vn+
 8RE+NDsa5TwpWWvPkUh0hIg841QglMvqVkwHgCf9HDGxdc6/XtTmnVqw1
 kHKo/8NxZhy6mdFQkuBLl4+7V2jISvpzj86tPjBtOC+oGpg8m0rpUvBZg
 o/aK7NctdawYnafLDMyCQcvnrKcf3iULCwjeSqTjLlAYN30jxHUX8XWi1 Q==;
X-CSE-ConnectionGUID: vNBIZXJ6SGGlUrcyhGcqKA==
X-CSE-MsgGUID: GIXZ8DhPSYOdhHroSMPVWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91942148"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="91942148"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:26:02 -0700
X-CSE-ConnectionGUID: tTCcYDktTcuBFrr73Mp2UQ==
X-CSE-MsgGUID: 2n4R+9weT/uNCVTQO1wypg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="225125806"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:26:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:26:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:26:01 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.25) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:26:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dB5CqDe1N5yROu3TNJhUtkF9xuIkQTCivjp7TpyiLx+m/oBqM4+fLb1FmQJ8Octr04NNqK22JLrC4+v4G0/r257KFaWSnXtzRiLp5OVBELNC5e6Y3wiOv2lDDKguZV/uBELWxXeDjvqnH3mFG2rKJ71bHKUWtV2R2oYeAbImloUPsNKimuYdasaaViIZGyS1DEg0ecrNC/foP7hdoLOv6NcP6DzQjK0PHCzgpqzclkmPbak7V3PU0u8lut6PJVx/JENw2WZY4PuDu5pz1v9mUeTfTj9HzE6V/5R9BcJZnefsoMoP6NBN2tkI2ubDz1ez1EVgLt4ZQmlBCuS7Rj/ilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1GfoDUQQ9oWhmT+qaSRZTENgouhlrGNty2DJmKE/DM8=;
 b=jhR5aZrNs0pCcqDHnwHe5Mdwmtgl7Nmjfh4od3eJ3W8fp+ebQG+qVa10hHUCWbdO8Owl6M99jfTdyUVV5oMQuA3MM86xK0xq1cCEstO2KVenpBea1+4uC93hGpeppcxTSVk1Xtff6l/hbv8flODu9BGDvLdwb4gPjX3+J41UUGiV5XzHJohIWXYAqz18ThiE4vWUEDOF+qSu6CmUPvJVu0oTnItWKE4RWxv926k/EvfLDEUW53oYCOCL3csP39HSjLHleKRF4hS4gSXtd1ZWd6i8b6DuXQ7FYZnc/SWZWUJP2biytZDGZyCamBmUj34V9CAzGPyKSAlMC0aCJM2/nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB7254.namprd11.prod.outlook.com
 (2603:10b6:8:10e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Thu, 12 Mar
 2026 03:25:59 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:25:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3 17/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Topic: [PATCH v3 17/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Index: AQHcsWIYN6O5h3bqV0aJwP5tVrVBRLWqPPjQ
Date: Thu, 12 Mar 2026 03:25:59 +0000
Message-ID: <DM3PPF208195D8DF1347B692955A2454C74E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311141905.2526418-1-mika.kahola@intel.com>
 <20260311141905.2526418-18-mika.kahola@intel.com>
In-Reply-To: <20260311141905.2526418-18-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB7254:EE_
x-ms-office365-filtering-correlation-id: b8c37603-b0a3-41ae-d90a-08de7fe7148c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: qYAEPnNhgp9AgFZeXzPlYoq1b64OD6e48+egSNy7tfT7w1GhNUUkEmG8LoTWkUagAOuIfCKGrBAQHPPFdRubYo8rLK+GSGHqHg01XsssHnWaWpH868SStKK3t8MBwjekvIi8R3vVbzcy+0Nx3B4GPPYeLE+Aimx8qBYoO8QTaaAkkbZFABbgdb8UClzgqxR2I/ZY1ijB+YpuAAtSyWuh51FNXT8UnWeV7Hd9vAi2404SYjqxusG59n4O5c8gQmdSxp2CKLgbuGTO6sDbIdxXyLrq0g15lC05cYZJJ04lYN7oupNp4eKjWq+raf78TPhW0k6u+Ci7VsGoLvi7nGHoXa8BCrQUtjNDOh4REdByeWiujkI3TGuvjoqr36RWY/G/Pp1RBX7LS82LF2P+/ss9SqApSkEY/9lurRyocOZEXJj7K9OTna4jVdAglLokMCZ1TNyDKQKCWZLGmhSRyC9s1h5/WpSRGCNXtee8eCQa0rQectBJ/Eep2u1qIfidxc3bDW9XDLfTJTap2vmyLIqu2iWMpZ9ZLZB2nnQHrCC8//wYvQ3Det0kyY/tS/DBhShugwqwp+d61l31L8mF0a5iA+OQRQGSH6Iba76tiZI200TOoJN74/raZY0U+slLiqZEP5yYyC05bg/L1MWbY8Aq0wHuO6sW5PeQjeDyVZOx5NggcKVpqkPhAgoi50byXKs4oyeo6NJPzeJTJcmD04BH53Ulzzoo9OpNWQOTyvY74ke+rCEx+7xojCn0OKIg1iQiHfOq7Ri8Qlcy4lEILkxpBSCqCeawSabHPspv6sirSPg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9lOtE/hPRbiKdMTb4HfE/+vBrQUoAcn81kr+g8iUHxKZXOeg+pdhuv6q+F3M?=
 =?us-ascii?Q?T5dqjFXmSxAQE4xZUxHJLMp47y6X+MDvvYsNXHt5cBngTIsVb7msJvEWdol4?=
 =?us-ascii?Q?MFWUnYOGRksf5edshZICBwP+K8VMFCQ9VFEuaxhvI8+5yv76gytf796GzV2q?=
 =?us-ascii?Q?rXJV+hOAgNnJCxisiRKPhJGwzGoVNT6JQNy14RDACuL27Vbk1pjunZ8VQEHE?=
 =?us-ascii?Q?rYkYnVvfI1yoeif7YTsKo3l0hJJKSQtK4AydvLzG0Zfwz3O4PfkhwDFpgSjk?=
 =?us-ascii?Q?MUqWvKqvM7bR4Ct0rcBQxiuqhlvtJU3zjwpUdZzuFkZ4Zhs4L5D9Z+7Sc8hn?=
 =?us-ascii?Q?9YJJJcb4+7KDvGyT7sVkkXdnQm4LLgIu6pf6Q3CBLP2qmtW8XPrv/8kJGY54?=
 =?us-ascii?Q?/IO/PSvWguWM18rI4uwX51z/1e4lyIWJUHVkr7C/xiRMr5D/LR0YgRo77QN9?=
 =?us-ascii?Q?FeUZEb/3ZYE7HzfBIzGsEbJ+hNshL/0PbnQXjfprNH045kLxW36pNJ9+2w2B?=
 =?us-ascii?Q?H4HtJQmL6EF/ZGmQjnoyn+r0sjZsLc0HIj49XFGI+rnvQWFm830y2wPAJiEY?=
 =?us-ascii?Q?N92FcB0ACv3nnwsCUE15ltIZy4bCJOMzb2q7tRmsC5keWLwlBJYysGDFyyIf?=
 =?us-ascii?Q?enriZT7oyTcuQ1SKJu0Sqv43im5gbkbmlwhNm9zoL23WtbqWhU/TnHnEyGDT?=
 =?us-ascii?Q?o48dPJ8H1pe7qXMoAgH76tkZJurUZBHeondlR+5CwGOl6ubuwi9D41bFvxSQ?=
 =?us-ascii?Q?DMzRgtEJ5yZ+YkcdsTamy9jkuLOMzrIBQ3wuzG9ByzrYz5lDc3K5egLCYWiH?=
 =?us-ascii?Q?0S0mZMowmCuwbi5QiViS7SFakpGq6Ozt0yuo15IfJ6QtSh5srypsX0OtBdWP?=
 =?us-ascii?Q?Gq7juGX1ZCml/fYQbVnAgV5Xk6HpN9Sjg58D49ZpQ9eN+995rtyfavOs8n45?=
 =?us-ascii?Q?PYm3Sf8Yil7MlyFTSL/XwR7JXR4HCMmqbYd9jaCKgWXUPQJYQbM8xGyM5Rdc?=
 =?us-ascii?Q?coZSq5qNnSqRSchi02WtqQH9/3jYQmnVE+DBPkChTrCEUziq/by9hc4UeQgM?=
 =?us-ascii?Q?u3xDjY3/8faj2fUQn/OS3bHQ7f8c+Kx0/LYgo1dWk0UEK0Yn1QljeCz50MMY?=
 =?us-ascii?Q?KedJBafphg7Wh7YzdSWzP5iTxIp9fbtnWOIJJTviJXQ1XoEiGnUcRW3Ll2H8?=
 =?us-ascii?Q?aPL13WFZHysCLkv0I5SqI6I9ozGph2r+YcNubHwOtEYAV/AIRWWdA0RJ6Gmm?=
 =?us-ascii?Q?q7eSSO9D8ihkVpSCaK+PLU+Zm7LxnCinBPZIz5kJpbYjIoWPetkHV1ZMC35X?=
 =?us-ascii?Q?8fCKc5l8wqkVJA/rxStNvaQlTlCZYf1iYHa1OzxI4HgLk+VuhWXujmTfdZnm?=
 =?us-ascii?Q?JjZjqGXiJy0LbrDvPridlFO+W/0n+M0eF9friGbm+r/O48MARBkYZPPprlou?=
 =?us-ascii?Q?3RFim4wqT/ULW6N4k4rPyfvBRoyWAUmxy8VGAo4/eaPC3eMTFg499e1Ce0C8?=
 =?us-ascii?Q?DdpfjQZ2WqtGCZyvF09Fb4QqVSKxW7wivWTTqSADb5o8MalWYNHsjs0JPzu1?=
 =?us-ascii?Q?wa2KZJUsV6xbsa/GC5aOd98F6ryaLqxCKDO5LzcucrPXS847qWZnA+kQuoi9?=
 =?us-ascii?Q?qhj37kTHbGRMcJBd8qBXpcVM3H1HQp01XTA1YUq6v5Z8Mrg9QwqL3mKFQykN?=
 =?us-ascii?Q?rDTBOC9ltloETvRGA/o8y6JOkEEhSKQ2oSQ4PGnfLl9bwl1RDhrojeBy3NgJ?=
 =?us-ascii?Q?gRBbZUyfyQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WMCmJQdqajvq0BWXcpyEtJ6xOPUq/lgEBaTI10ULgZiVnNKGB/4UYlWjYgemEg3HzqKA1QptI8E2eyELIaf9tQ3eXOHlq/CAq93GOHajZFnRfpRDptI+RdaI2j39zaxEsp0qItZ7NSXLeNJJU468T8JAUZBlpOLM8S0QrFVpCTQQRTBbcI5tQN7dtgHaysmjVnWrdJHri3+zf/aATfT+6iYdVsx1SNWgzzVVs2NX8/AVMRWBmq73r9fdMCdQfpNDfrGZO9NYSBxLjRw5CxY5/8XRgtGX5KFiKaHFu3/S/gRdH/FTDDuHMPiZYii/zcgBMM2vPhTGyr7dk2ETryOjnA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8c37603-b0a3-41ae-d90a-08de7fe7148c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:25:59.1995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6oyJxLxJpFTKyRfm3wucjHcaHS5p3whRoGK4YjcasTOfLsiyYqROjZMtWqMzZdSDt94jsprwGkbCtoyqVBbr6g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7254
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C81F826CC4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH v3 17/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
>=20
> Add new pll_disable_clock functions so that they can be hooked up to dpll=
-
> >disable. This is just a wrapper over the exitisting intel_xe3plpd_pll_di=
sable to
> make it compatible With dpll->disable function
>=20
> v2: Revise commit message (Suraj)
>     Drop wrapper for TBT clock disabling and reuse
>     intel_mtl_pll_disable_clock() for DDI clock
>     disabling hook (Suraj)
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 12 ++++++++++++
>  2 files changed, 13 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 93f62d995e96..3cc8c681c352 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5299,7 +5299,7 @@ void intel_ddi_init(struct intel_display *display,
>=20
>  	if (HAS_LT_PHY(display)) {
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
> -		encoder->disable_clock =3D intel_xe3plpd_pll_disable;
> +		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
>  		encoder->get_config =3D xe3plpd_ddi_get_config;
>  	} else if (DISPLAY_VER(display) >=3D 14) { diff --git
> a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 54c7a255b3a5..28c560417409 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4607,8 +4607,20 @@ static void xe3plpd_pll_enable(struct intel_displa=
y
> *display,
>  	intel_xe3plpd_pll_enable(encoder, pll, dpll_hw_state);  }
>=20
> +static void xe3plpd_pll_disable(struct intel_display *display,
> +				struct intel_dpll *pll)
> +{
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return;
> +
> +	intel_xe3plpd_pll_disable(encoder);
> +}
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
>  	.enable =3D xe3plpd_pll_enable,
> +	.disable =3D xe3plpd_pll_disable,
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
>  	.get_freq =3D xe3plpd_pll_get_freq,
>  };
> --
> 2.43.0

