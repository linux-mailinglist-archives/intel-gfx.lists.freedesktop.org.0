Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h8mJJYYIVmo3yQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:59:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8A3753293
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 11:59:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="SQOEd/Hx";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689D610ECA7;
	Tue, 14 Jul 2026 09:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF8410ECA7;
 Tue, 14 Jul 2026 09:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784023171; x=1815559171;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6wVF0ysftP4YVtRJouHtZviv8dq0tOU4Un6nbemCg6E=;
 b=SQOEd/HxxP+e1uWGrwJN25/JLoMV4Qx7a299R66sXas3I7IrwyGmB1i3
 BEDs1re2jGj4DtLK+6lzA/+usvTtdUd5CmleB1xRS93k/nZkrYn8IsRaU
 rzCw9a+LQndBY9mE/edRkJRELQJm128ds/MW9AmtBaCP1H0LQWETzTYds
 J2c7STybk7dO959/1Gx4DsnYf1t/Gy0/Me/5MUb4lqJT4GnDPjkPUnFo7
 6Fa/CSftwUt7p0TuFC9jiZEZTD/htz/CGw7SDaTOT5XYWPLs5WtP6U5tL
 o03taxRku0J+VmX0PqjNfd6UJCrXitzV4sZPUVMgH6XdqOsEJSL6Z2nLP g==;
X-CSE-ConnectionGUID: K//wMcF3QKKJcaOpXcKhbA==
X-CSE-MsgGUID: 5aQTz/A/R7yLgU4kHRoNTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88319813"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88319813"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:59:31 -0700
X-CSE-ConnectionGUID: EdPb9C41TzuUOPeCGBWtjQ==
X-CSE-MsgGUID: 8aQU+jd8S/OhqkHxpsG0iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="279082870"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 02:59:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:59:29 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 02:59:29 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 02:59:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9htp/AqFqUwbc9WjhDNz0KYKOxkk4Mc7vcNHYI+YWqkrGQCXXm8dO3aDNiwReK7RdHESxDytMr5vt273qMlPTi5CzSbl3ZDXU+Zq172i/Px2KB74u50f5IuWk4r1CgTHyTtKjsPMa6R3SCYGCJWQQWy2NqtOBRYn+peqdmyTZAcC//XJkkS+AUdgkWenM4gdP73aqnDxHsGI9+XXmBW+Ql+y4s2mAay7XaHG0QYYx6pcZWsi8LgeNuOp1PCWKEzaqfVoqDKDuV9U0RlOyE7i+aDpdYNh94ARc51/hxF13rP8F38gJU6+QfRtYOFA8UOpAjRIwWFER7QHbU370OmyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=huIgBp1AGX+yViZGKAcvfom4UxfGMc+8Gopxs0k9Qbg=;
 b=PvOJDTaY1WPiGodj0RhcVw74mXgE9dIvlkMxR5n6Qy5ROelGOV4BB2LrahfninwSXilfnb/vVQtZLBw1WYjrH+8jEKV2WmEe0e6UVlKDUmfZY1gKIQzwxGVUdNZehv2MjPaF/dSYBj7Of1gIFlW7gfJrWM1H1trQJMnV/2aUYi9liWLnzVqzLjcUHAfYcTlHzZZfSHXIF53LImvEjIfsf9x2kSdA4xYSPZO1yAzOV1536TpEwTHUXYKtwh1JiTWIYNeDFgtSSuk2/NhOCocjUs1FVbl03UldaD00Rab8woJHMr2c4BTJsTXvSY0dKz/ZpKpIDqHC4h4rkiMm9pbu2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by MW5PR11MB5882.namprd11.prod.outlook.com
 (2603:10b6:303:19e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.20; Tue, 14 Jul
 2026 09:59:25 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 09:59:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v3 4/7] drm/i915/bw: Extract icl_init_qgv_info()
Thread-Topic: [PATCH v3 4/7] drm/i915/bw: Extract icl_init_qgv_info()
Thread-Index: AQHc/QZklG/I8UbWEkuvuFbU5IKWa7Zs9JxA
Date: Tue, 14 Jul 2026 09:59:25 +0000
Message-ID: <DS4PPFE901A304F5958514C16D016149B4CE3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-5-vinod.govindapillai@intel.com>
In-Reply-To: <20260615203355.218578-5-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|MW5PR11MB5882:EE_
x-ms-office365-filtering-correlation-id: 3483a558-b940-4487-2f84-08dee18e9655
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|6133799003|4143699003|56012099006|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 47w2hXqzBDjVR3E9vue6aXErPVQlyWinKYLuXGw713+vtL6EuIUF1LEmPCL3FaaKSeQn4Z8Ysok2Dv1sT3HAzdLDpEHYVv5gijwAQBmQiPBMI3T0gP6GwIzzN9aT3duz1GL+LFadvcYXmHO72OE8W68x/UUeZo+R30bw9yp3mmUwlUtBpjH3cD2wsl8uRc3aVrU/W80NTM51vz0p8h2sObdNiVtaTssrzzqy+5AfyXa7EwBPxP3s321tvWlYJCvWGpUGLxxEHciIStW67/QlSocpNH09iP/DamrNWHi6TzOLR2xfGlp4pwcmFyNh3Ou3TdAXjxPXXHfV815r4knSKe07RdIiTz33rqxLfAY7g5CuJ8gdKyJCfEy7seOq0mNLccFxyQE8gQsZp4kOJ128aZCVhaMB3+NZJQAdeieNE+moJoiF9x4RlEcpZuMNeSaOno9TbktUpP2UbQJjpuA9fIX8mzVX73sdBjE28poEZtmL5W7tcGOVqk25Y9cWeI9vnnFIqqZ1nC2ZEuGh+zu2bzPOOm6gOG99PLH9OME+6jyB3kgIrnI8AESN0+Hma/TByKqeTYWHKHUbvL2vPR3rVb9JXfKVxdDWW5lG207IcVe4/YxkPjCrIJmLEobfZFs+EuiLLYGwFtdQuaxyMhDiznM9eFwqTSbyLU0VuH5COowVheHmqsyJAl8ZSaMb4o3XwmxJETP4HGpc+4seNWhXL8iLHWUGT/HP5dhkx6dRr2Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(6133799003)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UTrTGQA2+tqbLiwQ3CJd/uce1t6mYoLDle2wRFZbEm6rrA9PopmjCCGP/lu2?=
 =?us-ascii?Q?cIwVDq6zMzzeGIf2RMu4Oj/A1zhqycfln/rG4rLSB314gHW9Y8abw5gXBOfQ?=
 =?us-ascii?Q?sdNVN8VTX8kC8pwTqWDhg0H2iZgoGeZDQNZ68OAhfFkhizfvtLMiTO8X1q94?=
 =?us-ascii?Q?oo2U9FrhcCsqNwqeFUQLtGldYKWcWJDM+ZqmYtrrrl6KPz/quxlMUmoRGpaf?=
 =?us-ascii?Q?+LZwMU8dopFRy8NwI78LO3z9LYajOtOv2o3D1IVOw/mm1pQfVOBGw5WaQukt?=
 =?us-ascii?Q?ZUl84G56mf/EnGPYzokZPljVM4i934ze9K54g1nca8hEED/z9YAtNhEPOqDt?=
 =?us-ascii?Q?0x9MZU0YrwE+HsAKyitC0rtVGpCMk1FDQdqVMkhNJkj5XAtL7M3aD2LASscf?=
 =?us-ascii?Q?lKDYcDF/3X/CT4FrfLuZW+B1DILBFsqnYEOcjfgSnX0z3qfdtuANn7e4UqgH?=
 =?us-ascii?Q?O//CnHKDtpdizoyE514a9QEi4h0241PGkiU2yo64lksj4d319255D5H34QFK?=
 =?us-ascii?Q?B9JJyeO02zXoYQX7Zb014cfdCkFc98rHP+e9MvhpdVGASM9iAlXwIaDCKh9H?=
 =?us-ascii?Q?hzuXdECqIEdELxIE+KZ5P8v7LV/LTr9vuBxR7ORvHT2IP966HOJV6Pvb0nBg?=
 =?us-ascii?Q?C9KKxea7uJAH5cW2rINu+Vvk+HUIsjqW70CtX7VfMnM7IcfFTxux781msoHr?=
 =?us-ascii?Q?FN7ZrCFRqN1Y5r/rSZKpe4KjZuj256YU1xBqzuesZVaMJ+0VJYttELRG1ysj?=
 =?us-ascii?Q?bkKtQZdlNP/vYd8WwZGf+PPgUjTa5my7CPAAG6KFGKzS4vXDGUWXnM6DHhhj?=
 =?us-ascii?Q?sJ2qPiW4cvzXb03k49ya/3c0hxSaokReVIFlwWl+eXQTpzDb8SPFiigJN/MP?=
 =?us-ascii?Q?6yOPyiC+Fe7AsxDv0NIY/efKgkbImRXlcjIsMa97rqvDJezSLPYMlIB5OT2/?=
 =?us-ascii?Q?JBzF7jI0kIi1A4pl2WoWk7erLM3OGKpvV/uDTTBZnl5AeW5ACilG68kdcIob?=
 =?us-ascii?Q?amJZxjeiiOtHpUiHIlrvoJdrocfjBCdK/O9a8zpovFrAfYcZf17oxHtkSSAj?=
 =?us-ascii?Q?hn57P32cLeBDAM11jDz9GwSAQV7Ng17FyUciIbY+Sx0Que5XDuKlXYRRe3y3?=
 =?us-ascii?Q?G877j2XdNcK228qkXcyANZuscAjWAmZvSR3/zn6RS34Ep3tr6G+wDyl/I4Mv?=
 =?us-ascii?Q?1/nsJgtbjNawsms6b2bqc0cJhIjgc0DIfqGFXbCdgT8d10RCZng/cQNgTTNo?=
 =?us-ascii?Q?imdHTuGVgpTHWkRowIs6Uum/Ozjx0whWwq4zetjw286DaLCeSOLku1u6sNcC?=
 =?us-ascii?Q?Tge4TFCBj3aEdQ7o6r1AtRgciicmKmFwzsWlJzMsE9xnqkGPQQkPjSCq+ocV?=
 =?us-ascii?Q?CEfF0pAt38+KLZtJQ9Doqolx8vMZcQtG/FUx3IZ2+TE1EPp44/2XYd5gPzQn?=
 =?us-ascii?Q?c00/Qc2OdyUqXAGC0bchj+5tV4KR/KLxjQ+yczPqz2C6pcoDfxCFevLlSzpi?=
 =?us-ascii?Q?avZpPgfw9Uw5OVINXElaKbOCAfGCvtO86sJkL7jfHHTYASWRFQ1NxcUHhtEz?=
 =?us-ascii?Q?w6L67Q1F6kf0P4fVU/pDaVTsllV4D+TY63MMVShK3rOyIFk9BXa1189Sj4WY?=
 =?us-ascii?Q?hV5P8w27SunXOTC6USi32581RGKE6toxVi2Z6RPNrndUiX5egZwBtCnrcxcy?=
 =?us-ascii?Q?1PpaTh4i5daGFE/KmzftjvgB3c7I3gpxeDquOdCiFjLgHNyxNbavBdr4v6PO?=
 =?us-ascii?Q?osXIbyDkow=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NbPFMnUZ4mM8h+S8jTJwl+I9gPeGLGSnKi1YQno1vKz9weE65NzZasDyBwDX7FcU7P0KnVaOZ8A+HwCJnhWYTIacZOius/CAUyaBVoKrVYOlHNDHQ9Kq+Y1UBV0YUt1Dgh52I6tF6KcrQXlz91Lt50Ir/YeXRrCVu95541c3C6wEeExYbFm5pCnZFdaxmJimP9GNdUnpjC1ITlCTvKmeLHHK7Bj+Q+9+iDM97127sBabFVMuoq1Id1wgmyqhRLuZHThhGLW5HCLOYeutUEvBdDkiIRoJph7iQ4anS5alRjGQj7U6kMA2b4/0rmdNsg9V/1B46XPKdItb2WTTR2PF1A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3483a558-b940-4487-2f84-08dee18e9655
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 09:59:25.6788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZEBL65zALjkQ4SDDmB7CgAEqMJgJW8yUhgSkmdGxJkJcC8aFtFJqdH0NT44V8JY0PqEIq3CRJf63wDUeGj+ywg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA8A3753293

> Subject: [PATCH v3 4/7] drm/i915/bw: Extract icl_init_qgv_info()
>=20
> Simplify the initialization of qgv points info by extracting the code to =
initialize
> the qgv points info from dram info based on the memory type.

Maybe mention why this extraction of code helps.

>=20
> v2: rebase after Ville's refactoring
>=20


Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>


> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 4557de85fade..6649220d81b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -246,12 +246,10 @@ static bool is_y_tile(struct intel_display *display=
)
>  	return !HAS_4TILE(display);
>  }
>=20
> -static int icl_get_qgv_points(struct intel_display *display,
> -			      const struct dram_info *dram_info,
> -			      struct intel_qgv_info *qi)
> +static int icl_init_qgv_info(struct intel_display *display,
> +			     const struct dram_info *dram_info,
> +			     struct intel_qgv_info *qi)
>  {
> -	int i, ret;
> -
>  	qi->num_qgv_points =3D dram_info->num_qgv_points;
>  	qi->num_psf_points =3D dram_info->num_psf_gv_points;
>=20
> @@ -323,6 +321,18 @@ static int icl_get_qgv_points(struct intel_display
> *display,
>  		qi->max_numchannels =3D 1;
>  	}
>=20
> +	return 0;
> +}
> +
> +static int icl_get_qgv_points(struct intel_display *display,
> +			      const struct dram_info *dram_info,
> +			      struct intel_qgv_info *qi)
> +{
> +	int i, ret;
> +
> +	if (icl_init_qgv_info(display, dram_info, qi))
> +		return -EINVAL;
> +
>  	if (drm_WARN_ON(display->drm,
>  			qi->num_qgv_points > ARRAY_SIZE(qi->points)))
>  		qi->num_qgv_points =3D ARRAY_SIZE(qi->points);
> --
> 2.43.0

