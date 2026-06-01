Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gD7PHModHWoeVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:51:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE34A619CE8
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 07:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692CE112DBB;
	Mon,  1 Jun 2026 05:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XlUzg4t4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B57B112DBA;
 Mon,  1 Jun 2026 05:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780293064; x=1811829064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8H9AgQ/TwUOo175c/DXKk9/dPQ6tj1363FmnXW627hM=;
 b=XlUzg4t4Vtcmnu/0Ze4KmPZMEWabIMn1civ78iMC6B50rIXLGqJnzarI
 Cx4IHiRmc+X7BN1HpKYYFKsi2eDWYrbkU2OhmW48BdhiJ53xfik6LZf+X
 rgct3th5avUHwNuO4vG4gVt/d0PtcgLJuVYVCK4tEr3AR7oT/jRRfnmKC
 9gFStEKYsTw/qR39o4a2bKv57fDS9LlZ9O/TIt8iXWE5yBeLj/SIKv00D
 Wo67iiAz+R3vx5vryWeiBsuIiZH1q6ddIrnhAo+tbkmh/HTgPyjvyzOaI
 QSAQAUcMO7uoTXDOMCt9CVPOBLyxzb2V6a0JpHJT21zcGilMSeDE5UIBi A==;
X-CSE-ConnectionGUID: qk+W0+wHRiGfk3Cdw/GXYg==
X-CSE-MsgGUID: 4XPdjC1nTUavER4e6r5C6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84669963"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="84669963"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:51:03 -0700
X-CSE-ConnectionGUID: NvF4VzSiTHS9ln99PCJstw==
X-CSE-MsgGUID: WHCdYNwPTaickLpQiTrwbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="242417576"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 22:51:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:51:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 22:51:02 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 22:51:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ci6yNfuf6yQ0AntVVpZRxxnZgxWsYJLUsSmBB36PwevleEyZz1o/N6LiwlxWnhOV70ka3VAqhb/ANxrNN7jKm0cVfZYS5V+NOjrOh/0N4z5KeKfhVCj+UEyvKI4FRoOkvsv2qjvh8IBIlY6aiPnYq32j+b251loJ/X8D5E0fp3M46+/uDjpjwfvggPH1gDUMYgLJQ0bb+cfhh8M2Q1t0BRaqNYaHEe2eVjeBEB+fW0CBK8y+AkAc14lELTFqJty+Cui28q7EhWj8HR0om7Eatv6Qbwtra+XRii2Meys03y9NrdDCJYTKBAFhYfWu6o59aQHjb+qxai9wglrXYDJ36g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K5TN47ZrbQ8MooMn/efXOW6jFAixlrumNfvCOIRM/W0=;
 b=Qi0iWT5Y7b9a5YTdIhDsXHc3zgFevB13ITFZiJoupCO6tdbt5aCOlyKvUnLGBZFnXxCWNEykZ/du5mk3vYBuTkHg1caMQddEGzV+M6W5ZyAmDhZAz5DG6tc6IVjmfKmz+/mhLed8AZWq7nRCoCQtISY5BydD4KJfVWK3OIgH/I2mUloDI2K710rZZVIFbRp+H7+x6DFAzDpXq/juHAeUCXLOorPBVCBCr1L3facEFnC9tjoHUx7tfv1RMlLpBbHq6xz9cgQ3xWBY+VsQysMCS5svc/xNA+WXnjIFWQ5oStjLT0bDZOOE3zlpFN+5RL6P5Z3RfYoB62ljc2a55mSFnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA0PR11MB8377.namprd11.prod.outlook.com (2603:10b6:208:487::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.71.13; Mon, 1 Jun 2026 05:50:59 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 05:50:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v4 13/13] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
Thread-Topic: [PATCH v4 13/13] drm/i915/display: Add DC3CO count and residency
 in dmc debugfs
Thread-Index: AQHc7USR0aUUp7khxUiniLQSyc/OdLYpOliA
Date: Mon, 1 Jun 2026 05:50:59 +0000
Message-ID: <DS0PR11MB8049419C11C883D2B72B303DF9152@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260526191826.3786009-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260526191826.3786009-14-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526191826.3786009-14-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA0PR11MB8377:EE_
x-ms-office365-filtering-correlation-id: d7674093-3106-4189-2015-08debfa1c1cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|6133799003|22082099003|18002099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: 6ZxvGxdu4Qoe2JQn31isxzr3Eo2uAlYDf8iutagpwpkhGPr+6EfcLxpS+ul4KDAtlvHHj8utUlMZ/H/L0h6XkIw3M7H05yMqPGlEh5ZxWEl3ubZAegsf4zsUmjx0k34CsN4y1tRR2YXj6nzsawRBnh36xBCgK8/O/lAW++f1iEJMsPFZVhqIFNcU2r40eIgUyU5TMk+0VSyngLuoEuGNtw7HKuakvlD7oBvYvI6dXfeOuKx1R8cwcv4TH+86VDn+GwsLN3rqa+0IaHQ3KbB86C39Mki5syxNu743XbHPvEJC1fQHoFvKbMdjDC3xvWExD9js5NHaocPqH3fvDsRKnwbMFAY96u8qRUsLtFTdLxKanSUNnYpkTThotIJZSsY+M50QgeFQyLlQJlO7ApfJc+2wwSLjxroEX2ik5HgkPQ5vxqN9ZAru91HfJVAcA3wz57+G24Y+N/ASvYfjRzFHcr/vJNFt5M9W/3m/zHaxQ3fzAhtp++Q/QU2ZBfm0DR3O6XqS0XZZShQD2Sg6ECTOeh3xWCwNa3DPe5o7rBWRmvz/sUVyD8h4TTmGCBHD3q8/vmCUs3OMFmAn3kMnQEM56Ffl8l1gqsgV8a8s/RMgQUZdSG97LfK9MftUn28pITtMVl/A8/GAV9cRIswZgrT420NIcYcby2I92+ehqb00smi09XV8ffSusH1j8U9vPwPYhs8RWbla0He6XcN3yVj0IcQ2muWo78Jck38ivma6teQRBld8s4fGEfekm7FvT0O5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(6133799003)(22082099003)(18002099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o8/O6VX1pLyeRS/fLK9pMBInNufpZYg8h+dTd6gCVAS73Mz11dOZaYP8/3F6?=
 =?us-ascii?Q?S35DlVLZbWXH4OuLLp9urMzPGHHaOeKPtN0at65WWDlaEljOwsB9guepSzpU?=
 =?us-ascii?Q?Mha/CP+cCm8pf7M5Unq4a8VjKIqLG/Dc72te2MiiiPhm19+PXaqdY09k7/s1?=
 =?us-ascii?Q?mDnXuK2IPo0ZmNF9JsPuUftW/nr521apw46JxkpFJjhblYMCIO35tp6ipTXF?=
 =?us-ascii?Q?eLk2gB6Uoawgb5SeYGpnOdxNE7WYTo/z8yGB8Rn7vdDM5B48zM17MiXe3ex6?=
 =?us-ascii?Q?P6hUexc3+rD5kNHbvr3GPSs0PpOJcCIsi2FZki8ICFEE8zp2MYOn0kmLZQvh?=
 =?us-ascii?Q?yJ6n5QHoDmrnRVoqG6BW7PXxjbkF1NQsWLq/Ap3O0rNAI68gaQYMwiFQ14dc?=
 =?us-ascii?Q?LjD9mEVYvN4jxyNyZRzxRDRWXa9imfyvPAw4/65bznvFUL4AlBCh9mpiGMKg?=
 =?us-ascii?Q?6vH8+s7+0TbkHDti3l/kMbob2py0yV4ReJmnrzYJxKnYwobsMcRofBsK/feg?=
 =?us-ascii?Q?dADoqqcrhNXzziiPtGb4ESFlsZ5YGv/xVsFLo3CwBLO6i5g9l2/pRsGrDgbq?=
 =?us-ascii?Q?rEWIaHsUtnBSQ7Dym7hIcrOmkGNgPobaEdtYPEdqFpLV8GzoDDGIaEgu3lVc?=
 =?us-ascii?Q?xrtkFt+X9kWXFgrfzzLFkYp5gMj+7TaQaKWDpM5+d7WdMTi660r0b/RDZg3N?=
 =?us-ascii?Q?7SRzv/FxdQMJNZEzi26Hmfi50c2oOZ89hGipP/m/YHo9jU209zr/jsCOS/AD?=
 =?us-ascii?Q?cKmFvY8Zo/ao7Q3BzYSc4U6LDgMjqdvc4T3Bta38OzpUJQ8qFJDmcHwarkLg?=
 =?us-ascii?Q?b0B5wEyTjQjQBo7BuVOda3/elBB1hnADlzhebgbbZ8xc1fwQdi+ny6JMy098?=
 =?us-ascii?Q?Zyr+1e+vpVuElBgTRy31DtlFzZ1gafh4TQG18FdIttqBrW7JxafS2YSFaKqu?=
 =?us-ascii?Q?kwLZDPVbAVmQvae2GxZnOJAk0SJ+HveURNVmIiANXT4UQCO2XgyTxcRnUQzq?=
 =?us-ascii?Q?Ec2lbma8W8zAiYfjX5lrwiJinmtSbfgcEfi11EscfXjNdw6LWN/zMHWHSi1b?=
 =?us-ascii?Q?gmnOlR3vRdubuofqny0yWseRGYc/pMv0MSTbZ++R6HwGm3TIZcZoFXPQICMQ?=
 =?us-ascii?Q?uoOAiT2Ovhx4iu/3amrsv4AM0rjp3BXJXGQycXuryVYfEuJ7Jt8MCWj53HOX?=
 =?us-ascii?Q?J0t12KxNihthc+8m+2UPBZHkPGQSUfw4Xq4H+d9lavN/ntukrxyYO8KB9VG9?=
 =?us-ascii?Q?tu2Ag7CJTwPcf635nYCxH6JQGBoE//mUl678QpwDTgchQgRhpueNDV7gi7uw?=
 =?us-ascii?Q?PX4+1+zH+Pk8/a4vBlQofARHNtkemK63vq+eeN8Qq1B1/ob7GxJe4kJBkbYq?=
 =?us-ascii?Q?BtqxyeRODAtet4rxidOUT/PSk3mh00UVIoZI0/tRUH3EL6jUPZr6F6yBIp4F?=
 =?us-ascii?Q?cXPmmLOnUFDF3hqiaethQEUT6B4+c4SGnAB3O3HyLujQJhmm645xdTmk5Dj2?=
 =?us-ascii?Q?YB2bqbHQ4I8QbtNH6gShK8MLSaiVUqn2zKACKeuP7DWk8GABMuTWE5TxAQ5M?=
 =?us-ascii?Q?dt9ZA41IbBZgGgQqY27jaU6HzUz2hZtu5A8tJZlBAx/tsjTTrN0OqCvLhTu8?=
 =?us-ascii?Q?0ifWL2a3IlCY7EMHrnMOXwEOgA2qd2uhlm3f6d5qCoAKnZlP4eSbnXIBFJSD?=
 =?us-ascii?Q?Xgw3cIZAkas4NtcuZ8pLJ6ipi87tkf7Eof9nIGMiybLGR92mLeG6h/+ASgOQ?=
 =?us-ascii?Q?nl8qaX0okA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EV2Fdf8yzMW3VsdgNdnCK1mXbpnAV0ZkZbIZ9/qzSFbKOwr1uRCAZ/hExjpPiNh7qVzZo150Ff0kZfLlTHhcC0yH+10skHly2/wakAyMZQjlfc+b6/lg995hmlX8pDGQWQ6PxwerU+2+aakHimxqrOP17VIfg4pe5ucMf8Yhh7Jbz4+zs7v2LEcmxtmUOOwTKpx4TKvRTT2PKj3SaPzyjWlCYkcNgAGzQc8rqaofXDdB2GJdF/cDUmgE/egeVPrlQMOJHZqUHh4lhMeqoY4I1XSAgo8B7+AdvKPc+W2kuXvLaoNHMi/VnJ9AeNEuzFasYXgx9TV4MDnyePa7BXbwTg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7674093-3106-4189-2015-08debfa1c1cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 05:50:59.4870 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lQsPGi0qraa8dqtfYCXtcF29g/vDCZoecAlyWjrUGWxypB9m/kMhBUaoFW6wy8oUib/d2QDQqmIRDGYznKvUEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8377
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DE34A619CE8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, May 27, 2026 12:48 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH v4 13/13] drm/i915/display: Add DC3CO count and residency
> in dmc debugfs
>=20
> Expose DC3CO count and residency for xe3lp platforms via debugfs.
>=20
> Changes in v4:
> - Keep dc5_reg register initialization to avoid any
>   invalid access (sashiko)
>=20
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 2 ++
>  2 files changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index a133785c815b..5ffe2b1c3c51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1650,7 +1650,14 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
>  		   DMC_VERSION_MINOR(dmc->version));
>=20
>  	if (DISPLAY_VER(display) >=3D 12) {
> -		if (display->platform.dgfx || DISPLAY_VER(display) >=3D 14) {
> +		if (DISPLAY_VER(display) >=3D 35) {
> +			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
> +			seq_printf(m, "DC3CO count: %d\n",
> +				   intel_de_read(display,
> XE3P_DMC_DC3CO_COUNT));
> +
> +			seq_printf(m, "DC3CO residency: %d\n",
> +				   intel_de_read(display,
> DC_STATE_DC3CO_RESIDENCY));
> +		} else if (display->platform.dgfx || DISPLAY_VER(display) >=3D
> 14) {
>  			dc5_reg =3D DG1_DMC_DEBUG_DC5_COUNT;
>  		} else {
>  			dc5_reg =3D TGL_DMC_DEBUG_DC5_COUNT;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index 38e342b45af0..1998549b6318 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -531,6 +531,8 @@ enum pipedmc_event_id {
>  #define TGL_DMC_DEBUG3		_MMIO(0x101090)
>  #define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>=20
> +#define XE3P_DMC_DC3CO_COUNT	_MMIO(0x8f05C)

Lower and upper-case mixing.

Regards,
Animesh

> +
>  #define DMC_WAKELOCK_CFG	_MMIO(0x8F1B0)
>  #define  DMC_WAKELOCK_CFG_ENABLE REG_BIT(31)
>  #define DMC_WAKELOCK1_CTL	_MMIO(0x8F140)
> --
> 2.43.0

