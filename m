Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFRBGhXjjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:38:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB50913421D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3F710E7AF;
	Fri, 13 Feb 2026 08:38:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V3TPAfpD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B224A10E7AF;
 Fri, 13 Feb 2026 08:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971922; x=1802507922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L5lETTMRnegn7LNR4hmUEZqCiq4MKHrw5na/OnVzwQ4=;
 b=V3TPAfpDpHArMUIVB0xpmgf9rF5qdc85elEniVEUeHlENJKyAoqpi7eH
 C0kBnzZaF1CUuJk6z+e5VVvlQR4TQ5A592qr+MBfDr6xtVIbO3AGY/t2U
 JVAMgCpKLCQPw8SrnwrJotn6HO7t3IJKFY5uzrTBtgDjSwQi8cpWQHoRS
 NjGgSs7OxD7jh0ZDM1vcOz3ZowlybA8WUeiyAosgKDQAmDZxZKkiRLjMb
 5Kz6oR5aY3cOksgUL26E+eVtvDVOPWaUCLqXMBomq8UuOphWJrI10DtKx
 vxTsxlrptwQ/VGCUGcAqJy5LiqtPVJme4n7zjFm7p0CiRZSEsPc+MI7bV A==;
X-CSE-ConnectionGUID: JaCQovW2RS658pSkho/6fw==
X-CSE-MsgGUID: kCJBBIn2SB2F5Jwx28YmvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72141733"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72141733"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:38:42 -0800
X-CSE-ConnectionGUID: nHLmQ/zJQQ++Bf2FHzHyrA==
X-CSE-MsgGUID: mREoOK74RfOQxqlSBQIvcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="217335650"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:38:41 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:38:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:38:40 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:38:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HRJTzmGiFBou2PFoTzu9tdopneTG+mSHoCivOIR71AKnx1elLDO7pHGZHzQF2hyprAXtLfg6yT7tV0b2jEwl4mNioNBwW3OZNfy+47z4kabKKuEje9x+rldasw5b5NIDjJWAPMrxp4qPdGHSX1Oydru2jzMm4rlfJS/5jimTr2JlpKO0JUOr/lIB7ctA5MCmFksnH+9O7o59HapfV70nr+Z+YxkXMMGUq0Iqg8I3kuEj11vVkyD4/+wo+pXDXg98BSUUFqrKquXEQWaEky8dIClqfQfbJJdTwYjUMcqRJEvJrEG09ZS+nc9oxNaYDbqBSBwucGxSD/P7aa1Xp9P2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6n0OaFg0g+bVqfVZDJcj6sUFo5kZr8nfnVp6i+KcwPg=;
 b=MOqu2h4E6t/P6VxwER0YgWsofZOacW6UoFv5BBKiAJKfRRI2t9tUqjFb+4Ei1CJvVD/QwyIZAgHtSX/91FV7hL03BV4JCppDvQE5UyL8jfvQS6AsjODeUmLWaBvHbU8GWc9Abf4Jw2P8+fjJUvPHkDUiLBy/Ylq9aVYpRvb1IDJhTjyM8yXq0gvyMNZMyCIZvadY2ekjS/SH9BCDK2/nLpIn1XOl8KOmg7w+jCC0nqWvRr5LGFQnl/I9HDGjpscW/tcIIldO9esFYq7PAwkGyMDaoXS8TsoIA99ow4aMeRRUughy87X+xgLCyRGX0egy90coLzNdyMRdsB+39kfS6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Fri, 13 Feb
 2026 08:38:33 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:38:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 06/15] drm/i915/display: convert W/As in
 intel_display.c to new framework
Thread-Topic: [PATCH v2 06/15] drm/i915/display: convert W/As in
 intel_display.c to new framework
Thread-Index: AQHcnFBNaXBLLfNpoU6n6c+2PpiWfrWAT2hg
Date: Fri, 13 Feb 2026 08:38:33 +0000
Message-ID: <DM3PPF208195D8D3BD7C9482EADBC6C32CEE361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-7-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-7-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS0PR11MB6399:EE_
x-ms-office365-filtering-correlation-id: 9d541967-9cce-488f-8525-08de6adb45df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?faRG/Kp5ckYC09kW8h9LSD41Et6SgHJUmaQkP0Opa3G5U+fgb3xu3dY+KFe2?=
 =?us-ascii?Q?Mi8fIg612tzJFI2m44L5gGsyDeyJKeTbbipnvlvQqXSL0ZN93+Wt40CAHI18?=
 =?us-ascii?Q?7I3C/6frzvN3EEJGSNQew6OlnxtrFNbGKRzPYiWYSUaXb0BHcFrPJ5AmXsXG?=
 =?us-ascii?Q?B26OZQMtmYq8GkiHXNNNv8769OAhDRXZsJ4hq3OqP6QOeHt8kq//+KJ8uuIc?=
 =?us-ascii?Q?FiI1eMu6lGxWr2uGXYLLgwsFN/bK6vUwtQvpmDCOdKwN5VscRo8YjjS5DR+d?=
 =?us-ascii?Q?yRbye9XI/frigsqyxUHiPI6L79mYwQcHepgzqKvN6t1KoPYW4V9zej+0FVWT?=
 =?us-ascii?Q?1+0VRsLWKEER/eW//nx8GyvIW0XT7eb3i+BtRz52Uevo2GEnH673OT6VW1KK?=
 =?us-ascii?Q?279kLwAhhXcjnHv/el+lsQvp/eOJayWFG4VceFv2yQNRAFK52FIWslWzFaN5?=
 =?us-ascii?Q?b2spc80FbcpZnfaSvFbC3dCC21ncwxTAviAd6Wr40FVUPryjqY3nPWulc7e1?=
 =?us-ascii?Q?wFgZJ3z0JGeu1hn1Md5TQAMqFrREUD5oo79CkbJW8Y7+yNMAztNh2J772o4n?=
 =?us-ascii?Q?oO+UfKilqk6Dm473d8TKnyk0oBWU8pJKije0CWXniRYYNkgmrVQcBL5AbSZi?=
 =?us-ascii?Q?irAAEd3AAA/KiRMhPKcy5VIHEb65Ks4TI9DDb52oR8/WaaaFVgf2wYlbdAkn?=
 =?us-ascii?Q?ntWkg6eD2qm5VDIyuB8J9sql+1OVCw1UgNxeNxwWTYkLionn1GBOjUuugBi6?=
 =?us-ascii?Q?MbDEQczxANqerOx2uw74HbEHSMfulJRUz9E7g1OEuMVQFETKrNVmhQ6FZNpA?=
 =?us-ascii?Q?qzNj2wHPKy7yEYgsDoqWUg33cg01dU8Bq4ayZwbrOFxwxf1D+G5ZbDB/BETE?=
 =?us-ascii?Q?2lQxu7frw/UoB8jWRlqjPzIU19/701qx5h66pN46/MicW7SgbZf9T6Cug2My?=
 =?us-ascii?Q?K81ZZ/v7jcQU0YU2JuPzeGqlD+DzZjK5QzXwO7o3DK/lUx/p3o5Kds9YYCIY?=
 =?us-ascii?Q?SuqAQQQcIKv/ic6Lu0n4GTOQhox4nkyFFmRElCrvQyG8gNCMcDrIswu4diz2?=
 =?us-ascii?Q?8x9PFIxbbz1miR6W1Wzmzep/3H3RbIllpLPSm1RGzEMouznD7Ja1CUKffMgb?=
 =?us-ascii?Q?9wp6dUFOKeWs6Ef9y4NVF04zTkyceJbDRcd5mWq7I0ru3DDJcvzx5rVsXZtc?=
 =?us-ascii?Q?dQxVXWZmFWMVRaW0NrhG/dhoyZt1hqauxIdj5JmnIPfvZ7AKoIXI75h5ko19?=
 =?us-ascii?Q?6UgnHt7Sg+MLTBopiYt6gx/9IzRXykt89yl+U8WII6csvBNtCpYIF+pf2T2T?=
 =?us-ascii?Q?r2c5dvBGYorHt2+kSgju5ARZtg0Q0h9kKXQsp79yqBVIcrLEEbKK6+v//wiW?=
 =?us-ascii?Q?J32472Tr8LGwPWucMQjrHZOWTblc5830Aa4fjNxsneVeFjv/+OYvB2z7l6r6?=
 =?us-ascii?Q?Qxjy58eb12jLo0hteberfqHp5M2KVYhN6Mryq0xWaxy3TCEnClkK3LaLgE5z?=
 =?us-ascii?Q?PqZ9kAxc+5gXyeWaRccSsfw84mn8MgWKWjxc2DG8YW6fNLGN6Gba8UoXTKU/?=
 =?us-ascii?Q?sKBtlpJwyAAs159vZJ/2951OL3sG/Kf9AlsiycNdQAU0h+dRKDzsPnD721hZ?=
 =?us-ascii?Q?wCwNuFqKPYgLy+WyF9Y7z70=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hRHglGN8B0DTRgJDdeGBCNVqTCCqa0LJWAL8RnLN9RNBBwS/31qW3c5T0bK2?=
 =?us-ascii?Q?FaW0FoG/H+Ga4FvXsBNLjL3PLpStWZbhdoVk/14TRW/Qh4cnAoXvaLlHtLF4?=
 =?us-ascii?Q?SB/MI6byD25rAB1/di9mE2HClx8fy29mTj9tKJJ8q7cwaohAJ+OsR54L3nwM?=
 =?us-ascii?Q?8yEHFZI/RrmZUHCQ1L2osErR+23xswvKOoHx8K6xXOfEsQ+XAn91IkcfuUyQ?=
 =?us-ascii?Q?s7I2bufbBzVz7buef+84WVZxOwJlbQonhZ38kuG/qUA2vg2cMWAt5a3zFvP0?=
 =?us-ascii?Q?yLbPj9LOjgQlp5WUQBrEKSiioR2DxcSlE+S/41ld71+S/ZH5ggb0sG586jOJ?=
 =?us-ascii?Q?TXN3caU3tMzbh/nV38keQem/nurM2aeL/ELEojClxDUHitUPO8mTdI8iQ4ju?=
 =?us-ascii?Q?iIcHjafvIefd/XCj79BeY6/i9m+t5g+dPeUyMfUjuwMPiomw0fGySXUH7/k1?=
 =?us-ascii?Q?2UN1891ofxwHlW9AaBCg4MZZHNkmrMxMGitUs+qepTPEvsPO/wmdedBiLQso?=
 =?us-ascii?Q?U6EzjQ4tn8E1SC1SoUu6XngPFkHCkyhQlQAGbYc+tXnHc58RwqzjktX+xsa8?=
 =?us-ascii?Q?HyPKz5vNmOt9bmRXQKTNo/qtPBmtNf14Ila2YX53j5Gr+Jw6k7iGNRSi1TSA?=
 =?us-ascii?Q?keMWEaED56JoevqnTHDYtU4Swr2ImTISNAF1pVB5puzvAAxV695gLNxV0Qky?=
 =?us-ascii?Q?DlNb8QUmQfN7A9ctF7ne0VenF3si1S3LWV55dsmYYsfk242cW3FgMHhMvwFy?=
 =?us-ascii?Q?1TapKPPYHXL8HG6XLTkfiE9PwP/5yo5qFj2cJYWGtMBs3S1pgwwDl7K4fhuQ?=
 =?us-ascii?Q?62GVKwKuqj8DZ4IztFFRAeD2HXi1dDf001vM7uuFfUuWtjy47v0EA938PtFx?=
 =?us-ascii?Q?VkPnwFy91NoptC+861Lf0Fn5qDcjjYF8/ssweHe7qpzeYvgcXo87+CUdifLb?=
 =?us-ascii?Q?t0D1cyPVomtdArZOMv6lH1E8zI/iccy8JcAmIQJ2hk61ho4GH4pVKyWbOWx5?=
 =?us-ascii?Q?soR6upMHtimHiUwA6ynNVp2bPH1uAq02vvaltLXqmDof2v9fII7fvf3uJojW?=
 =?us-ascii?Q?xw8w/8Wr4vc/fNAkdv3OqVax6tYIo3J1YXJDUZbzlrveekv3FgNS00w3lc1y?=
 =?us-ascii?Q?gZ+oJafPpy+HDg+Erxi0cSXCQ2BwYTInah97NM7s3TM52wrs2Cio4j0uXJ88?=
 =?us-ascii?Q?uNLCbROelEkXLbgIHl6Hp3UA/rJyrWrzZLlnu5NW4YF6iMM48YQ1xzSBra6/?=
 =?us-ascii?Q?hR8eK/cYjoC+W36xRFUboUFimybiYWQBVwl7ruRanfVXvhpbNO6sLSYs2c5l?=
 =?us-ascii?Q?CGNP7YJ35V5T9iMcwR95jiUwVsEej1U7Fgu4pLOUQMIl90PKJ3bEQFzv8Xj7?=
 =?us-ascii?Q?xyR6MSmwXhTk46Eno9Ww/CjsxAgfsfcPK/f87R00VsA+xCwHjo0RGL4aTu55?=
 =?us-ascii?Q?647HEmZUbSZrTTroJbVq8Yffc5+ZQMrnpafZgbqplGUte3IZIYh3jjhzY1vl?=
 =?us-ascii?Q?xeymVNmizniDaWXtqhtEIzyoxUWzrr9rXawQY/thRXDrZaIQGUUYvWdtTD9C?=
 =?us-ascii?Q?7ZTs+I0tVkwwXjTmRRzZpbgWeW0uNuXt720Ka3MUoJiWBnNJqUon/vu2JeO7?=
 =?us-ascii?Q?kJFdbtHDs/37+KbWHF2tFobUbzmbXjYV8lr8ZD+c60PxLlU/J5ty4VBWqXvR?=
 =?us-ascii?Q?u7iC52QTD/BlELWTAAi2gzRqsDksPKzUJ6UtpAkg3tHfY84nbxVCo6cjQCz2?=
 =?us-ascii?Q?1ErTF4UGiw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d541967-9cce-488f-8525-08de6adb45df
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:38:33.5348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bBKhRULFC+FrkzGdBbiJYjy21o2y5m9IhfL67k1Mq5R+TSKqyXyjb4MG3lNLJ7diFDLwxfyLNu+DG3Bo5YNGLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CB50913421D
X-Rspamd-Action: no action

> Subject: [PATCH v2 06/15] drm/i915/display: convert W/As in intel_display=
.c to
> new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  3 files changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index bd93add5101b..36312e8444bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -454,7 +454,7 @@ void intel_enable_transcoder(const struct
> intel_crtc_state *new_crtc_state)
>  	}
>=20
>  	/* Wa_22012358565:adl-p */
> -	if (DISPLAY_VER(display) =3D=3D 13)
> +	if (intel_display_wa(display, 22012358565))

Did you forget to add this as an enum

Regards,
Suraj Kandpal

>  		intel_de_rmw(display, PIPE_ARB_CTL(display, pipe),
>  			     0, PIPE_ARB_USE_PROG_SLOTS);
>=20
> @@ -708,7 +708,7 @@ static void icl_set_pipe_chicken(const struct
> intel_crtc_state *crtc_state)
>  		tmp |=3D UNDERRUN_RECOVERY_DISABLE_ADLP;
>=20
>  	/* Wa_14010547955:dg2 */
> -	if (display->platform.dg2)
> +	if (intel_display_wa(display, 14010547955))
>  		tmp |=3D DG2_RENDER_CCSTAG_4_3_EN;
>=20
>  	intel_de_write(display, PIPE_CHICKEN(pipe), tmp); diff --git
> a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index e2bbc3a90eca..744ca7828f06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -77,6 +77,8 @@ bool __intel_display_wa(struct intel_display *display,
> enum intel_display_wa wa,
>  	case INTEL_DISPLAY_WA_13012396614:
>  		return DISPLAY_VERx100(display) =3D=3D 3000 ||
>  			DISPLAY_VERx100(display) =3D=3D 3500;
> +	case INTEL_DISPLAY_WA_14010547955:
> +		return display->platform.dg2;
>  	case INTEL_DISPLAY_WA_14010685332:
>  		return INTEL_PCH_TYPE(display) >=3D PCH_CNP &&
>  			INTEL_PCH_TYPE(display) < PCH_DG1;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index b9c088025fd7..4fab1b27087a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -29,6 +29,7 @@ bool intel_display_needs_wa_16023588340(struct
> intel_display *display);  enum intel_display_wa {
>  	INTEL_DISPLAY_WA_1409767108,
>  	INTEL_DISPLAY_WA_13012396614,
> +	INTEL_DISPLAY_WA_14010547955,
>  	INTEL_DISPLAY_WA_14010685332,
>  	INTEL_DISPLAY_WA_14011294188,
>  	INTEL_DISPLAY_WA_14011503030,
> --
> 2.51.0

