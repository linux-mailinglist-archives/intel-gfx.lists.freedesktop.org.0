Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Frn7GBH+Kmoi0wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:27:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F216746BB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:27:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TgDUdJ92;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BA910F061;
	Thu, 11 Jun 2026 18:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4DE810F0A1;
 Thu, 11 Jun 2026 18:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781202445; x=1812738445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h9E4vtv54+1j1zDH3m2zxkGWu8lAbwH7V1wS0UDqIwY=;
 b=TgDUdJ92FSPPdmyTSoi58FZ7pWv2o1Nt5wkWfOXq7JjAxQy+10NHAQLY
 Hx1MqIBG7OZH4U1YOm31YnL5shlLIFEsfNganP649KH/+zMkFAY56kYd1
 Sxb7y7LCX2RJTmOFKTJxEYPCJVHPPwTYKvougmcc3a+sWI6dZFVRC46ws
 wsS7XlqiJPpBr2QZ7fX2QcSO2cNXalpQtO5Wu6l6l9qfXBQ3lRUGuIZjN
 t4QgUJX8Fpu6zjfr6SM8WE8UguoNh194Y2c8Pz7nO2KuHwEzrJAd848ye
 UknzJT4ZBJpHczal3GQRGlQZ1OWpjNF9ToVLMWlBwCbOAD2pc0xaFtd7u g==;
X-CSE-ConnectionGUID: 7T68SkrqQiGpOZ2MD+g32A==
X-CSE-MsgGUID: ahSxXuafQgWbd3+kGdbVTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81041901"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="81041901"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:27:25 -0700
X-CSE-ConnectionGUID: eMPry0bpTiGx1XqxIcfYiQ==
X-CSE-MsgGUID: Pz1DICGmTMeSbh+6iukZYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="242438825"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:27:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:27:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:27:25 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.70) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:27:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qwZlKshbJ11w2JNhZsKh1PToMR8hOtvL23z0AYnNSCni5UukIbi+G5Gy0FVQ2zTJrcicGYB4Bm96GbnE6Zvxh7J5K8wJ8LN5uVXBosoCGHS384Yt3D6ChRsIP1J44Uheh53Sxe7IXYGiQacEasLaps8QT4ygpT6e/z1OxHaRo5fEGl8JZDgwhxEz27q0zjtOiMikod4UK7fewdN5APa7Zwj4SQtgWeyIrKXcJDy6dyx4ZboCvFmNnFH+dJHv737w/lTy262zN9gzEVxopU6hcJSUK9EJnfNkHxYT0vV/QVv7b3tVow22Qi6CE7RvRrU9DayIkZLDkrXEII1C2wSR9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qCo8ScCvAiMWMtx/ied4eXpQ315EMRPZ+q6hbxnabe4=;
 b=dMmC59od24JpzxZHPz2vTMaw70nQ+hhupqlx27zFUBtGZMS31d0V4deU+1jk4XwKZCH/McyNEaFCQ2RLDIjHy6NRUSNoHzl7/C7gJGJOEUBnjLya592AM3bouMNKyP+jiM1ubdCj7E03bHBanimi5iH6DqJvBFLvr5gMfqPeU7SFNUrDHR4pXPOHRUI7E2Oxqz6ydlb747hK6E3a4RtyCiekuzyRWdP/pdzoFVhTEYJtfbVD0HC90XxJnAqGCRp04o2awvQmTo6vZD2aJ3PpEdYhEKTK3R617bx/50Bv6S2sQud5qMT0VwWiFXh4ChFFzAmdF4iwYNU0VkBJAEcGlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH3PPFBC2C58BB4.namprd11.prod.outlook.com (2603:10b6:518:1::d47) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 18:27:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:27:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable cmtg
Thread-Topic: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable
 cmtg
Thread-Index: AQHc85dmZEnlCWCL8UuKvMCe8PdePbY5t1Eg
Date: Thu, 11 Jun 2026 18:27:22 +0000
Message-ID: <DM4PR11MB63603C98F1539BF62BBD8D24F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-19-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-19-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH3PPFBC2C58BB4:EE_
x-ms-office365-filtering-correlation-id: f15c15c3-9869-411b-d6c1-08dec7e71497
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|4143699003|6133799003|11063799006|56012099006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: mcOaFlTCT1hmxVcQFy3Q/MYtUtp0tvHAuzc9ChaZ7bAuapvm1cPoBO11MNjvnbltvlqQBDp8RLl++PQpcZaq6LwNcDWI74o9OqNbWgJ4Qv0AhEaGXZiuA3RcK52/elTSexb+lTYLwexNj7F9JbvVWS4G3fXlNc1NJ+Y4q5XbuUiOox0mzG5jabuCR7E2kRtF50zdNPKp+Yi+ylw1L9VwdThOOT6Z+TpngbAtolyIfrC/wSWb85m86V3MSOdwGy16ULjQsnSDA9KXo9In7upwrsMteCoZk/SZ7oaBtePnFph5F6Qs0x2wiAz740E6EFmoM0SZ7IUfnzDM3iL1r4zdr6AK87AcwAbXf/SbM0hcAsCE0AaXBqdKkjzAs1DCrRBBD2/bGDJpBdi/22L7QcUwZoFpt1rbPicBWWqMjlgnewAkhywdvPC3K3U7GvfypcYxpRakdgb/RhcGT+f2Nwm2ydYEImzOrtKAZ7hjtcLb4ANOkkFnKIsRs9I+N8zN5FW11CaB13tO2G1yfY/aijRmSDX1GQSXwju9y4dNRuP9sbsovNEcK9B8KiMN62vis03DcVjAl7jqzrx62HJ5Lc0Q4xJ+vBbF/8PE4VWkMXEKxgPxlid2hHU+LVXq3EtStO9Gw8iiNHP+MAbmEKnQFemMAcjPex1aE09sBMOHgGg4+Vfun5yHRyZppsJxzdYdA0dv81N270DhiOg026K0caea0j//HOLFXnTMbpEEildYQmObPRyzgSfm1vtjFMQNsQFB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(4143699003)(6133799003)(11063799006)(56012099006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Q9jIENZvBCnh0WCahv7KcMezmVXK07EH9gfRpunsAEy5g8uJLuU+l5Uj5aA?=
 =?us-ascii?Q?f9xyvu/VphJtD51mauSIOA3i3SneIULqh7USRx8GTUu1OOLFC+9SOieauMRh?=
 =?us-ascii?Q?vJ3VbosvigTrFGDdNac2iXv9qiN+NzJpaHF3M7uGFGfPTbpyuzje2+Gl5gCX?=
 =?us-ascii?Q?LMPsO2r8T/thILvqAy2feSyjTb/bRDaqQcOmOE6NHh+EA5+QUxlkXgeKnQQ6?=
 =?us-ascii?Q?HgJW7joeTUGsF9SeZe7EVYtdYyzXc8XgYY8+TGbHYXudk31Ag3yAtvNST91d?=
 =?us-ascii?Q?vcqhHEVySPeb8YnKbpiLR800hQRtIl115WkFA2ZfBj8SKcFO3Pe0S96PJnUS?=
 =?us-ascii?Q?CgQ0TEViFRrPucNKjL1FeBkLY27pzebMaCGABIsByOeKG4Y1FwMiGTqwzWy0?=
 =?us-ascii?Q?2q47gRokmMVjos70Yj87PHMsr36aNL5Wji8vA8tWwmJGwSHMsy/0wrVQty8G?=
 =?us-ascii?Q?Q0+0JPpo/yDp2WgMOgXNVSalOMRYD6L7nXNQSoC1OJead82Kgf50WSFJjBGX?=
 =?us-ascii?Q?IOa1+8JydeT348epWvihky8XW4cjKfiBBzBesuvqF9ja/i4yZ5rA4ftR33XJ?=
 =?us-ascii?Q?iLuqm35xgUlEhZ3LsSWuLDSOlCapKyZWDZRSBu72Iu18NgjEhCet0ECH+h4E?=
 =?us-ascii?Q?yh8vAODPgBxdKYJqsipGhvLnQMQJAezi3a8k5WyS9dH5n9BlhM6RRqobGly0?=
 =?us-ascii?Q?+mkx09r366mJzB0qPrBv6C2X6IrCVN5Gykjfy17crHI4QARxb/tvLzEQyNv2?=
 =?us-ascii?Q?B2FQEdqq+sUJYKS0w+S818uKXS6OzqmgBRK4czt1GSAiaaWYf4DYDFaCdWIW?=
 =?us-ascii?Q?QgdZycEAbnSHKM9gj6/fHDfaywOCFkFntsaviMi4WwcooUDbUyROj2Ydl5tW?=
 =?us-ascii?Q?a7x/f8KQjsyCaoZq3SMdaOLriWG19raU4r/EHKD0cZR7DrAacjzkAhoh5QMv?=
 =?us-ascii?Q?wzFNtBeWgwlLtjANI72SXs2axBUMhnaintwuVjhx4soxnZrX19d+IoZcvP89?=
 =?us-ascii?Q?eHS9Qhvs9bGlo/583EGyG2QGnjtqLHZHZcRSKCvyeC8ndT506hbcoGiSis0Z?=
 =?us-ascii?Q?ShfKbh1urx+6HgbC8bnt4T9nA7FZF5YV5AnXDUAYNJwOE5zKEDHX/A8Yl1k1?=
 =?us-ascii?Q?OCpl31kDGtnh80NFnQ9gtmaovbFjDHrqyAzOeLsHqHrNTELCG5B5E6T3ebdn?=
 =?us-ascii?Q?SJnW6V01Jx/LqhP1kL4uJEVZSqdhlmcpqDpULC1vZVHXBRN3asz5BS9ORX/L?=
 =?us-ascii?Q?Su7soBdtqW5CKSOFd1C7TW5L2QcdrFFnf+NXku/GHMrpsmFXw2Urulx3cIQW?=
 =?us-ascii?Q?ckMzMHqX1LOlIEqhhcz2qpW6TXoL2yqVvQpEJs4mxvrejTlEsIpWZ4rLByPY?=
 =?us-ascii?Q?hoHcVYl7rU1pwbLm+4dS7AQyHDF00Yg7m/eT67gxY9BL8giaEjl0+/jPGGAs?=
 =?us-ascii?Q?N3cDbLLTWvjS6HDMOBCKptqmgIw3e0cCEGn9jgr/l3MpihYoR5VJ4YmASUqP?=
 =?us-ascii?Q?0bQoaKnwYkw/D2NBS4Lo/L53cvKTfu1DWauFycLVS6Zsw4PVntMvudBWMunP?=
 =?us-ascii?Q?fVay6fmdyGGkffF1E14zPWbtBPW1q46nnaoyvmbXO06gmrmZLHXGmoYROCe0?=
 =?us-ascii?Q?uUHyrrsuDCeO/5yCpNa+JPlcIWycO26i/Yh83N5/R89OysEptmZ8vavaATje?=
 =?us-ascii?Q?Zvoak39SU2+ktmOqo32ydY2B/xP2amj/PofKre9+bcDOIz/CC/WnXsQNQ1f1?=
 =?us-ascii?Q?bQ0lyjxK5w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eSTCUdQPb8e8k48T0thh7ejDYBC2nf3/HZGTASZhD346V8YvLEQdAfVS3WH3O/Be6/J73t1fMootpizIz4/7kcVIQF0eB+vHuOwT41ToLUa8tCnWFFVbvMt8buMYQWL8bTvisHnmtL/xD2rUNJ44LwYFHtEqptDed1toG897CHaM4uVN6UhcFeZAoNMJgwxdGtbkZGldE2bvC4xLg1Udt/GdnNZKDYv7TnBJR3cSUobR7VSIsydsOxS5h6i5wZ+I0IQMClNOXpIVJLlpUkYbg5lVfcJLFJYhi9HiIVFZKT/q5mrxoi290EW6gql4XaGU844tD4lAjY2ds5EOWyUEOA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f15c15c3-9869-411b-d6c1-08dec7e71497
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:27:22.9979 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5+4UTY79qfAuRXaztsTLQI8w6Vyd2VlGBnnl/jGBtDlG+/IwaaYTaVUVV8pvR1W/GYTL2Yb5TW+7+QIloJXSZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFBC2C58BB4
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: 93F216746BB



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 18/20] drm/i915/cmtg: Add trigger to enable/disable cm=
tg
>=20
> Enable CMTG with fixed refresh rate mode and with dynamic dc state enable=
d.
>=20
> Disable CMTG with transcoder disable or if there is a transition to vrr m=
ode from
> fixed refresh rate mode.
>=20
> v2:
> - Move the enabled flag update to avoid issue in the disable timeout path=
. [Uma]
>=20
> v3:
> - Introduce intel_cmtg_program() rather calling multiple cmtg functions. =
[Dibin]
> - Set clock select before cmtg disable as can lost during dc6 entry. [Dib=
in]
> - Disable cmtg interrupt in crtc-disable(). [Dibin]


> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c    | 25 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_cmtg.h    |  4 +---
>  drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++
>  3 files changed, 38 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 1d63b612c44b..b7f4be33ce2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -323,15 +323,12 @@ void intel_cmtg_set_m_n(const struct intel_crtc_sta=
te
> *crtc_state)
>  	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n-
> >link_n);  }
>=20
> -void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
> +static void intel_cmtg_enable_sync(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 cmtg_ctl;
>=20
> -	if (!intel_cmtg_is_allowed(crtc_state))
> -		return;
> -
>  	cmtg_ctl =3D CMTG_SYNC_TO_PORT | CMTG_ENABLE;
>=20
>  	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0, cmtg_ctl);
> @@ -342,15 +339,12 @@ void intel_cmtg_enable_sync(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>=20
> -void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
> +static void intel_cmtg_enable_ddi(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>=20
> -	if (!intel_cmtg_is_allowed(crtc_state))
> -		return;
> -
>  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display,
> cpu_transcoder), 0, CMTG_SECONDARY_MODE);
>  	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0,
> CMTG_HW_GB_ENABLE);
>  	crtc->cmtg.enabled =3D true;
> @@ -406,7 +400,7 @@ void intel_cmtg_disable_interrupt(const struct
> intel_crtc_state *crtc_state)
>  #define DC3CO_ENTRY_LATENCY	55
>  #define DC3CO_EXIT_LATENCY	40
>=20
> -void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
> +static void intel_cmtg_set_hwgb(const struct intel_crtc_state
> +*crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder; @@ -
> 415,9 +409,6 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state
> *crtc_state)
>  	u32 line_time_us =3D 75;
>  	u32 val;
>=20
> -	if (!intel_cmtg_is_allowed(crtc_state))
> -		return;
> -
>  	if (crtc_state->linetime)
>  		line_time_us =3D DIV_ROUND_UP(crtc_state->linetime, 8);
>=20
> @@ -433,3 +424,13 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_sta=
te
> *crtc_state)
>=20
>  	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);  }
> +
> +void intel_cmtg_program(const struct intel_crtc_state *crtc_state) {
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	intel_cmtg_enable_sync(crtc_state);
> +	intel_cmtg_set_hwgb(crtc_state);
> +	intel_cmtg_enable_ddi(crtc_state);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 2c801a74acf9..51fc3f5a89f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -12,8 +12,6 @@ struct intel_display;
>  struct intel_crtc_state;
>=20
>  void intel_cmtg_disable(const struct intel_crtc_state *crtc_state); -voi=
d
> intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state); -void
> intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state);  v=
oid
> intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state); @@ -23=
,6 +21,6
> @@ void intel_cmtg_sanitize(struct intel_display *display);  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);  =
void
> intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state); =
-void
> intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_program(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index e4763ac81c39..e751a4c37842 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1790,6 +1790,11 @@ static void hsw_crtc_disable(struct intel_atomic_s=
tate
> *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
>=20
> +	if (crtc->cmtg.enabled) {

In this path we differ from enable where we check for cmtg_is_allowed as we=
ll.
We can make both enable and disable consistent.

> +		intel_cmtg_set_clk_select(old_crtc_state);
> +		intel_cmtg_disable(old_crtc_state);
> +		intel_cmtg_disable_interrupt(old_crtc_state);
> +	}
>  	/*
>  	 * FIXME collapse everything to one hook.
>  	 * Need care with mst->ddi interactions.
> @@ -6878,6 +6883,12 @@ static void intel_update_crtc(struct intel_atomic_=
state
> *state,
>  	if (intel_crtc_needs_fastset(new_crtc_state) &&
>  	    old_crtc_state->inherited)
>  		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> +
> +	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc))) {
> +		intel_cmtg_set_clk_select(new_crtc_state);
> +		intel_cmtg_disable(new_crtc_state);
> +		intel_cmtg_disable_interrupt(new_crtc_state);
> +	}
>  }
>=20
>  static void intel_old_crtc_state_disables(struct intel_atomic_state *sta=
te, @@ -
> 7547,6 +7558,19 @@ static void intel_atomic_commit_tail(struct
> intel_atomic_state *state)
>  	/* FIXME probably need to sequence this properly */
>  	intel_program_dpkgc_latency(state);
>=20
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state) {
> +		bool modeset =3D intel_crtc_needs_modeset(new_crtc_state);
> +
> +		/*
> +		 * TODO: CMTG needs to be restored on DC6 exit and DC3co
> entry condition
> +		 * need to be checked before calling CMTG functions.
> +		 */

Assuming this is going to be taken care as part of DC3Co enabling.

With above addressed, this is
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> +		if (modeset && new_crtc_state->hw.active && !crtc-
> >cmtg.enabled) {
> +			intel_cmtg_program(new_crtc_state);
> +			intel_cmtg_enable_interrupt(new_crtc_state);
> +		}
> +	}
> +
>  	intel_wait_for_vblank_workers(state);
>=20
>  	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
> --
> 2.29.0

