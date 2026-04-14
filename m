Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIJIBfli3mlqDgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 17:53:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6073FC2CC
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2026 17:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD55E10E0ED;
	Tue, 14 Apr 2026 15:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LaZe9eDS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F59310E0EA
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2026 15:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776182005; x=1807718005;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eOGTgOzycWw8cucqM8eFVWdp95nTfBm7oiDGk31mwKw=;
 b=LaZe9eDSPYhYSSKO6FP5Robcjwhw0OG84qScInJ4S+xd3lByuIEIvboX
 JFb8doONBDiJtYKrPtxahai6kkCPd3wjkkaQJGP3Q7G3VmzwUHdc+dYZC
 Bt0AOwvVB9zl+WK681odIj7grIJb/dByzE6qGwOxypIWgiqgntZEdWoL/
 HxK3BDLHsVkhY4MLqtbDRE731/7Eoy6Tt7uYjtVIHSDAondoFgmdvRyFs
 jX15aKl5kc/pqizQAOIpMfgfuguw3g9YQ8jhCFVwFgncaPuaBoYRKTpUZ
 jF7xQOC+tscgA3sjbo8dBvKYg/0e7CmkhRcskXuMP3lWAOK4JKpFRHs9I Q==;
X-CSE-ConnectionGUID: p4VVxssnSVKHGzyGfvhPqQ==
X-CSE-MsgGUID: m6cSkoFPR8iFq0UaVwotwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77021734"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77021734"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:53:24 -0700
X-CSE-ConnectionGUID: feKy134MRnSMyRm8trHd7Q==
X-CSE-MsgGUID: 7PIkNg6VTZ215bZSd3BvLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="260570412"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 08:53:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 08:53:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 08:53:24 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.16) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 08:53:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kOO+3d+NuPrJMtEuWj1toUjvnkYA/2FEb8b3AiTM49nukXYMUCop9ltOVpCP9uxb/AHQ+b3LV/CvUu4XPddBVFTPfhD7yYmxkr1urlTUZgcJuTAlKQAJviEIzcLXC9dh2lk+J/3VAEyjh2t1HjZ/VBQdlgcTkGwEcWR9jJQNjuA3RL9+o8zGCgN2HX+SGGB68B1evaKFPFi8F0z3P74Yc47oTjFFsvHURbURMSOWJ2a63+mRmv16asWDHbGPj5/p5uZpIoQ94gPo1RWPfkr6pEU6xIr/pZ7foBlyMOeutibXrAEcaquMT2wGz1jWSk0BNQ3XsiPVchOlYVx3AZSKHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KSo6/2y9/WA2s/+71rcUm1toQK3kW3+NuTf/d0WonTw=;
 b=RzSd9j9hUEzM6z4yf9ixH+lKdxBaaT27Ib5USUk7nKD0t84MGmmjR+T5MM1C9kXYEs+Bf9p/u+ZtqEcvhubmgmaErfCJLcG87QyZj2sxj2BBc9IUwJki4LEBiPFRQWvQ8voOmRi0B/kRVErvAmw17bFrjdaW4EnNkIJUY0wvF72d+6N3rwQWlo6P6ONgFCdcWxn1xw5+2oTjI10Is97HRcftnhFAP9iaGbKobyDeNa3MEfBQZB7FdFd8J4cRAugqzL3X4iCrV0C8fcbNt+TzjvuGRSFc2FJLHpRwHK261V7Exsa3XFgGwwYUSCesggAbykJoNx7Oc61LRgSYqlHC2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by DM4PR11MB7375.namprd11.prod.outlook.com (2603:10b6:8:101::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Tue, 14 Apr
 2026 15:53:15 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5%5]) with mapi id 15.20.9818.017; Tue, 14 Apr 2026
 15:53:15 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, "Lin, Shuicheng"
 <shuicheng.lin@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Plewka, Maciej" <maciej.plewka@intel.com>
Subject: RE: [PATCH v2] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Topic: [PATCH v2] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Thread-Index: AQHcyPM9lEA49MzR6kqXlBnUk6CX/7XeYD8AgABY3sA=
Date: Tue, 14 Apr 2026 15:53:15 +0000
Message-ID: <PH8PR11MB804058EC00F8D78D132E3641F4252@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20260410140619.736008-1-jia.yao@intel.com>
 <ad4V09-JiU4kH2BW@zenone.zhora.eu>
In-Reply-To: <ad4V09-JiU4kH2BW@zenone.zhora.eu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|DM4PR11MB7375:EE_
x-ms-office365-filtering-correlation-id: fa5bd0b8-c1b1-4eef-7cf4-08de9a3df0bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|42112799006|1800799024|376014|10070799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: fPmGTf1YGGn4N1HcePWGIsN9lfXFiU4xBhoMmMowAncOOhw0V6ZX07c6dNUPmUypsb5oMbTpMsUEhPDgnb6WkrI/cn5caMKEExlxQcibbGB/h8TeWrKzfLvH8nNc97BuwFuv06Gfvziz++EZCKF/I8O7ngw1eC7TguFgVGgV2zS1k7ivblxvu78euI6tOnWJ/5iAoB2Xb5EL+V3sBqwmLu7N55ZeXM1rji7rDVNai3PIz0tTolLWbqrR2//TZs31sxo3jH0kWup5OQ/XMqXewQhwE3XPc+8Yi32KJaZKibOs3JU4NXWZnmncNtSuEERHOGJ9pTYOBFbXuGuDw2QRzDCS2Bp8zsb2vJROtbbHl6lcWTVR8e85IeySsNv5WaHI88JBKvFGLjZblfk3qEtppH00V4+ouC3cxj+fH5gKpi19GV8pM8D7QXPVXfsneGx2SOhYER4ShnfZKXkDiMgHFW26vC90popneNmlJyS/OxrCoOwJRSyE0CQ3cYwqTJrs1D8VwpbvaTiY0e2gLhIB1wX92exvMeXChKGvCmlEEEc5Cut4v0K25bb/RoORWJ34UynaaQ24K4cb3EVHorbCRypy/suTu/I9+NpoLdbdgOWUdXgR1uwPqKt74PvHvq17LvWQS6dHn+80xMnoTFHx7JowABVuDD6w5mHynVKNGH/CLg24sx0kiym9w5SL6BSX9yulGMDDhl1Yz4ZPJMP7/7Q9rFiBh4Gx08qwSAlEE/xFLuvwkGa110Uf7DTFSxAwqTq2uFd8G0wpvv2HUYIIASr/JFpNe2nzR+m1pFLjD8Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(42112799006)(1800799024)(376014)(10070799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8EekqxHfJr6ek7Ub5Qm3iE2ahJKOoxRhThSQfYvLUNblyXVEMJfaBHpBIyft?=
 =?us-ascii?Q?pa9c8JXEv2foJqDu1Ea4YNu6/wJjgzTz9EwtgQK0nS4Tjs/pnqHAETZ2rk3k?=
 =?us-ascii?Q?PS8e63ijEUuwK428qE3emHnG86sTNyBMcqDnEgNSA9VNWoKFVouwtsjkg3JD?=
 =?us-ascii?Q?6goWPPwk3c9M2v1Qrg2sPYQivvFuNxlIwrCe9ODr9/4nnrev8wL7u/quB5Lx?=
 =?us-ascii?Q?TseGX6+5LtG9YklHzvQiNR4pgsKC0tSjuKNG9+caFjYfrN+82CvYt4VX09qO?=
 =?us-ascii?Q?sYd92x2evY8SinArDHHVx/DBKUKa1OeQFCOpn/hyCkck+lKRxCVpE5vqPb1L?=
 =?us-ascii?Q?25/0VcpAzp3Ny/ooCtx5leraxKIgeuHN4C/hEg0F5GUMwyRoJiW9xVa0tkWO?=
 =?us-ascii?Q?sbkVno3B/Xnbrp56qwPIVg5Hd8O/OpgNLuObx7Hr56OGZvVrkgdKIUVtIkTI?=
 =?us-ascii?Q?LC5ArVKJq3pA68x2A2+pvW2XXY6hBCzeWIXnuOdRDMoqemLATrjMwzfidh8N?=
 =?us-ascii?Q?vfAi3+45Hz5cJWQFa9oqg3zjkuGkXCaqcd4Av3ZvHscmWK71h02nfUs9mu0v?=
 =?us-ascii?Q?3FNtwKP6zIxi0GN2TJfTACl7fpncHCaDjz3kep8tXQQvyAyVUQ+LO65fxsJk?=
 =?us-ascii?Q?sk/5CedOXlPQiL8JWkAkH93fbbN61TFqN88z9Z6U5atTK8jmLS8fgwbnVm3l?=
 =?us-ascii?Q?yDPak8FcYamk9324Vda0EvFkDKLegLn0K2qm13SnXitnG6zsb9S0+TgSBkiF?=
 =?us-ascii?Q?Ci4ZKxC9V1ypTzGHxPDwmn5MR1sgHkRSNjelNSTqeIp5pdUOclARmv/5hiVc?=
 =?us-ascii?Q?X/ysDV2vBa79mr9EiwSwAotXm9SsgC9JxYJ0ob06jjrnnji66P9KxX1dV/J5?=
 =?us-ascii?Q?ZXwMGYbGOSA3mZUS0ULUbVuPKO/fix/A1XjRw8aGWuNMUX3XOPydcwU4aYvI?=
 =?us-ascii?Q?vNUg1RN2d7lUEkLIdf/ap17CM7v9rvl3Y6l1sUCP5R9pgbcMoHG3O61bvklL?=
 =?us-ascii?Q?S51vulFHsPDlaIYr8xsce/FgQnIxyw2xowH1HG9tIWUQ62KjC4OLWrzlbW+3?=
 =?us-ascii?Q?Qb6ulhsUhARw3bI95aK44cdV2NQ1cyJcUiOp5vVmAZa6uAc0N32ByP/lw8lo?=
 =?us-ascii?Q?bAf28fwPuWzm9CNjyKCxigO/P2R78HdsKMontBB9apn7R1jTniDj6BE/daZQ?=
 =?us-ascii?Q?D4Bre11diUTdxbU0R8SH9MPPGGc74ilo1h+DvWnDPiOkoS+3VBzO7tyqqTy5?=
 =?us-ascii?Q?f263wUDYpnQ27Jvvfe9NfJZylH/fK4hOjKdBwHTVrvXfQdmXvs1a+PtcjEP6?=
 =?us-ascii?Q?ExkqMAQ6YnkNVxZk7N789g2EtTwFxjDqq+KwR4HK/QnRP2jc3ju+sdoOfM8n?=
 =?us-ascii?Q?+IxNTcSP1rGnUb7g5yiyat2Ad0bZWDWxwlR73GYi0RMABe2U4NUha8pFit0t?=
 =?us-ascii?Q?b5km6+3CE4NvhCBpMIkKnTQU+mJ63Y09p2ZC4EXH8OJRJG+5V1x15f3UQgpK?=
 =?us-ascii?Q?wZ6aIRmA1cSotVCkjp1HIYEd3qmGTuwUlG89qQzXwmNOkYg/+GR2tcJu/rZB?=
 =?us-ascii?Q?P+GrlQdNWqCFHQK3HZ4Va8EEvKJi7kGwO+ZO6vIJqxXBuSIbsVjgKBuu065A?=
 =?us-ascii?Q?+eqRES/TDrqZoguR1ES+g/iNSvxwZd4B9b6qFb0CLwf0toUQLyGqXDuj7bZx?=
 =?us-ascii?Q?aMX2RrGw8VWldNST0GzPhd+248WwOGXd1bwDc/jFQGaSX5NtoJPEIkDYBZN6?=
 =?us-ascii?Q?SpiIEZcUzgWPl/YPeZFcGidB0wJIbpHpuYqhJ9XnNYuqDKJ5UzR6?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QO0wClCsbjd56sYGaar4VYDKxErrOgDYpYIpMss/UAXUJhNat7KvQgjJQdOV8/5W1ibt2jh47VAiQPk1PJQweaC02owuhjJ0XfLRztvNEnFvbXrRI9D1fa/On5YHws4RJDYXL5rUy8NK8Api+qVWpDxQPV228F369+m1KCf87E9O688CYCP5NTJIMVxHHhSu8rTy39sVBeUy31eSPZjUePenl698K++v+hsykAg0XuirFGXPsvepdAGaKGVh789lv7hOg6X3maUlxb4jqaKmycMxJHYyw2N00t4CAa/FAOw3qg4Dr8vHYZxwmMdHP7KsgeQ74jeIF7amHqk/mSZOag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa5bd0b8-c1b1-4eef-7cf4-08de9a3df0bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 15:53:15.5329 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Orv22JCz08GFZvZ2ox3X/w50CuPjBSBKIDdWTyiRdZ9VslO9JK7ksnNnSuH8XpX6b9/50F4HdLQb4NasuLl/LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7375
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,lists.freedesktop.org:email,PH8PR11MB8040.namprd11.prod.outlook.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:stable@vger.kernel.org,m:shuicheng.lin@intel.com,m:matthew.d.roper@intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:maciej.plewka@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6E6073FC2CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andi,

Platform is checked here, consistent with other WA processing.

static u32 *
 gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 {
@@ -1371,6 +1400,10 @@ gen12_emit_indirect_ctx_rcs(const struct intel_conte=
xt *ce, u32 *cs)
            IS_DG2(ce->engine->i915))
                cs =3D dg2_emit_draw_watermark_setting(cs);
=20
+       /* Wa_22013059131:dg2 */
+       if (IS_DG2_G11(ce->engine->i915))
+               cs =3D dg2_g11_emit_wa_22013059131(ce, cs);
+
        return cs;
 }

Thanks,
Jia

> -----Original Message-----
> From: Andi Shyti <andi.shyti@kernel.org>
> Sent: Tuesday, April 14, 2026 3:26 AM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; stable@vger.kernel.org; Lin, Shuiche=
ng
> <shuicheng.lin@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Joonas Lahtinen
> <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>=
;
> Plewka, Maciej <maciej.plewka@intel.com>
> Subject: Re: [PATCH v2] drm/i915/dg2: Add per-context control for
> Wa_22013059131
>=20
> Hi Jia,
>=20
> ...
>=20
> > +	case I915_CONTEXT_PARAM_WA_22013059131:
> > +		if (args->size)
> > +			ret =3D -EINVAL;
> > +		else if (args->value)
> > +			pc->user_flags |=3D BIT(UCONTEXT_WA_22013059131);
> > +		else
> > +			pc->user_flags &=3D
> ~BIT(UCONTEXT_WA_22013059131);
> > +		break;
>=20
> Should we check here for the platform type?
>=20
> Andi
>=20
> > +
> >  	case I915_CONTEXT_PARAM_RECOVERABLE:
> >  		if (args->size)
> >  			ret =3D -EINVAL;
