Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLeAEL0w+GlBrQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:38:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7959F4B8939
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:38:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1471D10E374;
	Mon,  4 May 2026 05:38:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naLS8BMi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366F410E36F;
 Mon,  4 May 2026 05:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777873080; x=1809409080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4XZQ/WWu9NP5LilWDxzK+CuGh965kf4xB4w/Wrjkrz8=;
 b=naLS8BMiD3SyrA7skWEzHn+0kbTABRjXP9UDsuRGqkJ5WpmejwTMl157
 LoIL6sbPqWLEikpvQ0kRqWC5ahiT43Ddxug/VEnVY7zWj0uDDo6WKkXYy
 OGj3Zm5oFsF1psJVBtjCwryEap1WOi2VICqpNPegpkk352AueLuKbIrNE
 WgbgfiZDNBgyFfqxv1K3LuXH/k+Y1UewRS0K70KQ4VB0o634YXb4f8JUy
 5wF0xI1avWGF04HLX2TMFw1fk5URuQUtJj4GAg3HEfa5igZ9NoXEV175b
 gGkvOumiYHDZeRCpnAM7QlIDDZsHUB9oVtSTQHkyAE/1hidzdrwrGxBUK A==;
X-CSE-ConnectionGUID: /KX2edovR42x3r1I/Cl0Tg==
X-CSE-MsgGUID: 6l39wh6DSW6dDW0kTVQyEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="77747954"
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="77747954"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:37:59 -0700
X-CSE-ConnectionGUID: uV6FKXAOTxqY4lzk6jj2fg==
X-CSE-MsgGUID: 6J/Kbfl3QcWZ88mtwa4juA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,214,1770624000"; d="scan'208";a="234402941"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:37:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:37:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 22:37:58 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.24)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:37:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OE6fk/IbvrDdByNVu+9KDQRz7cgGtRqIhrMbJP1t7hxY0B2qyIxB3ZM0VDhfXe8WYY7q5jQzpww5DauOVArVmgZq4B0rCqYqog4FPY2u07+A35GBDlxgEhYNuoCxmTBuntt0bFgq97ujyuyY/L5oJjD4CwvTtcLq4ry98X29RUkJr/y6ZutjqmzsnGlhvwSqjElbMeNrpqPZyf+bz0bKOafU+wQYyDef4m6XZQd/idj6GD0lxksFgJVMMT0TUQe7bh+rhZUwzsw+6cbxXLzzEkaxhICfHj9gVZMks4OPSvtFplUB8hQ/R+eUs5WJsR2d1pY/R9c3VFjSDqV82jXUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X08ewm9y/FihItP12jm6he3Dn3+4hG+b+VnWLy1fgJs=;
 b=ii/gr2ltt1jQDiatuAuL7HP3wT2FijXcbIV6wSXeNZbwtUb01nXHLmdSlkfSWFd1tkUSdgdeohH0nKDCRTHxf6tSDl8SVXYS2Qeq8QPTtfmpyI6R4M+GHgAabs371BiiZ+1G0FUpD3us77gjorQIiN7ZHN8rUbN56hEBOIJ7If3UW2z0HBxSxutrRL17cVqvAdg21erZX4gTqIMjh844wY+jtqBMrkmjQPTsrMEzepInWnfRqJTKSI3GeCof0KSKg9xO2bVjoFyi9BqAzzdiRE4ddmoyFCTYBz3mrfwlfsShIMsxCVVS2yemeEDChyTlZO6j6u9TMYG3VVz+NOOHkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA0PR11MB4576.namprd11.prod.outlook.com
 (2603:10b6:806:97::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 05:37:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 05:37:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
 intel_panel_fixed_mode() in mode_valid
Thread-Topic: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
 intel_panel_fixed_mode() in mode_valid
Thread-Index: AQHc2KUVR0zSdZJpmUWCNkrdSTaGHbX9Xniw
Date: Mon, 4 May 2026 05:37:56 +0000
Message-ID: <DM3PPF208195D8D1843C2EF191CBC73406EE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260430131220.3891497-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA0PR11MB4576:EE_
x-ms-office365-filtering-correlation-id: 2dcc389a-4c94-4f17-b946-08dea99f4b63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: /dGozr8OklmMK8MHfL69Dazxg7Jva/n/IQnrbrBshS/wFcC4CH7UC0Ga1f907GDQt5EKzTLDatNfSGQMeVCfBEOistMXuvCw+GkdP6Kg582ziHnXWYgHEy4PJD/DB93neozp0kBVcI0vxJmzi/JPBekcFe1GDHTaGZB9BvWkaPcTEcQJJBZ1cB/v8rsaLy0vf1xI/Zd40SQXzWGWFP+ZDSxyt/dRrXdheu72JS6I7bd/egphVTTMXeJf9p9GNUJODo3cwQtZfUwvUedGC5Nln3it7VrCaG/h5tCpC7+UWQZ4LovL+regHwVOiGS6KGUCfC0k75J1zsQ67dVV3IrwijpTaJ7o4YH6td+eMXWVWzcK+C6zRsAAW17TEcPqELErzizXRNIfGsJaACYJKta+KmXU0xlp6V5H7qFs92AhzgDOun+Vstp01SfAgwGW+U/qaJmVkWGnd+kBrPtyg3dDlBJygk2d734stxe7tWogocQuv2uY3yWGh9AdR2P4KIhAMek8Jl/zxNt8r7YgslH3Bf4VXkFF1KUUb+CxGuWRCygJ9W9B620e6K1py3+I9+jIMX+nMdbPbq8oOjkDXUI0a7JuUQ8m/cEtFRYK1MBofCJ3Jk8y2uR4U3h1sQPuSqLyUr/+B4BuIXfofcQplYZ6Hp2mnkpWJPeF/sFOb8SyHl0h0/fpTNuVztHHmT43uLEOjdY7UacDUcyXVgfOcHIYWn3c7iLrBhAI6B13uSd5BlM75vYeByykq+Xg03kyqiln
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1WpfsDMAZIc3q0qDt8QYbRwDa3opKaTLNBvtS1DX9HF5Y0I+rx48QOJAcDeQ?=
 =?us-ascii?Q?TE/mDxtcb3ahXxGgSwFPiznaVifO9LZQ6OXrVoPC/Sbk68ju6SdKfKCsVF/Q?=
 =?us-ascii?Q?G+Qzn9+kJ1Fejtg5wXWqDvBflnGHBZA5zSBBatd0EjRdX9lwL0oFnohOQX46?=
 =?us-ascii?Q?O9HQiRqVbyGE4OqwdT4uH3jT0pS9bMFy2HQ907TzJrhif5U91vpbmNukI8ue?=
 =?us-ascii?Q?WypgIqgaHWGPimjSPnNeC/gE1SDODlyTOe16B3yKMeRIrnnbxqIOl4QEDv+0?=
 =?us-ascii?Q?fEHme9khltwb08r722X/auBDImlz9psgLRJhBZwN+K4fnzfTF22vvrQ9Iwz3?=
 =?us-ascii?Q?oM7QN0TTNl4C/xPd2gW9TjnWo4HPG8d3GlP4KD0WbJPkddAf2muDoQgd4aji?=
 =?us-ascii?Q?elAf6coiP0AV4YQCoBDzmxgUBB1CQr2XJgz8naz5Mz8nN/SCC9W/dN7ld+jO?=
 =?us-ascii?Q?wCaisN1YgIqW/kJ5bK8lhtmpQu/FsR0VqQ3D8uG26K1mQk8fWNTZ7JAQORy+?=
 =?us-ascii?Q?Ms3RHym/6lqKNj/0aWmiCqE7DNiTpZHY9XP1oQJjgn6O5O2tHALSgDFl83jf?=
 =?us-ascii?Q?Am1ej34afXD+EwcWOBEr6/i85ZrYzbHPXB1JgeV1fIkz23wTx2epnJOktZqF?=
 =?us-ascii?Q?S3kKhfTz6wydi47+IDneKn+vgQmMrhPj0N1o7eX6VuoZZN3y7tht2+w6kPrZ?=
 =?us-ascii?Q?PzbTpZATawQTA50vlj/FXelyct425tCEiV/sVuHiRs+xMA16UzHAXFVT0rpn?=
 =?us-ascii?Q?0k7Rvv6O52Vj1i6lvOoGp/pob7t+OFwBG15DlcksiK8Yf58xqyuYErKR84Ic?=
 =?us-ascii?Q?gFTlUi/osc9EPSUBhQJjZdQI2rwszi6u+YG2ZA6RSszc7D6VvrTMvPTtskx3?=
 =?us-ascii?Q?P2K6cUtbFpX9YjS0hUQwgDl2CJRQZkNzCEchEgXFe6DPs8Zvqr2GJnsmtS7i?=
 =?us-ascii?Q?w/HzwwXNA6NZyS0OfASgAsqGyb+Mh0rWtVP5LKwfDPanyEcIPEhBlc5/kRp+?=
 =?us-ascii?Q?fR5bvWOx9WB6Kt67/SPb2DjSJ+M5LqQhkUWiokz6Xdpe9Ysrlm5FMVqbLa9o?=
 =?us-ascii?Q?/serZ99H7qx8zsrVXNqPOTA4RhkQODhO82FDl81PDXqrHjPmPTdioXHpGHci?=
 =?us-ascii?Q?/WUIpUNX6RB/B4i+4+l5fACP7888QwFAhqLKfFe5h4HNcw4y1sYPUocEXfof?=
 =?us-ascii?Q?vtT48cNnBuglqWb3f8wRDzhYEgXuoJTlsG1fXzvH2gg2G4MoCfHEnoh3EUaL?=
 =?us-ascii?Q?l6HiTId3CT/xMGQYHgsLhhdkeweD0FOwZpl1KMOj9TOCZ+0vjFqX+eaMlBt6?=
 =?us-ascii?Q?sy8NtVf08sjxN3N87YPMfnR72VBXHlpnVeub2uNBURh9mneI3lAsyVA4gqfP?=
 =?us-ascii?Q?gn4z2QMGiaEGSfnMuDvi3YaTP9pDIVMjnNZ0xZhOWpGdLNjBHPoGJTS/+s5d?=
 =?us-ascii?Q?KJDZxdKlOhQDmR5Za/tthRXji6Y0RFtT7+TDf7IoOfneKid3pPoU1Fjpi7s6?=
 =?us-ascii?Q?ZDr0Et6kSTmLrHhaNRhbYAuEFq+o8POEWOw0kK32exMZ+ehiGFZZuJvleylk?=
 =?us-ascii?Q?LEtAZxo8LGv/MKNoBh61e6mEpnE0fzXwuaS6Y+NBsU9eI2AmMyU5upcO50ak?=
 =?us-ascii?Q?EzFiq4X8YBtI/1E0IYjQY7JyeH/xIvs42Bdej74iDD69rDi6+p7DJcCEobo4?=
 =?us-ascii?Q?/5QOkduLvmsTUDmqMfGH0xa2FB9Be5ejyBJoWg059gOtWAybjjfLPB4x899L?=
 =?us-ascii?Q?Gk+OUeDbQg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QpRZjKP+FlsNMo6DVVN7+igjlWzQ7SfUHzFZ3uirCHtHGuOeibcIiUFreRSKYS0BDBuqCZCnVZx7T/Qy8WtUK+1ybt1+RQ8fE2duabfAJ/DE4lUokXXbbxbNxkHrDQ0jYmtFiw9gUUXl9h4/VPYRDwWubU0NHfxkMckkQ/d5VqB1FXf4QRpLubKiLhKR/8Wr9mta21Dny56HuU2aKHcff0LmsYLrwDx0DKV4ZVS0z7pAo07FEJK2R/USQaABPvtsm5bn3kVlO3fgucXZX4wGceNpoPyUgVilIwC8/XV1Ea1SqyzVPQJCJN+FqT4PcfnAEK61PmeZ1IhFbrzfpTwdug==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dcc389a-4c94-4f17-b946-08dea99f4b63
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 05:37:56.2817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H60SkgY0DcCtrm4I9u26KhO3Au9WmOQas4xRat7osLBVOjpHAV0okXy5NBSxF1h9B7GP12vu7PuKhwN4PxRPDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4576
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
X-Rspamd-Queue-Id: 7959F4B8939
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

> Subject: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
> intel_panel_fixed_mode() in mode_valid
>=20
> Currently, most callers of intel_panel_mode_valid() also call
> intel_panel_fixed_mode(). This is done either to check for the presence o=
f a
> fixed mode for the connector or to get the clock of the fixed mode, which=
 is
> then compared against the max dotclock for the pipe.
>=20
> Since intel_panel_mode_valid() already calls intel_panel_fixed_mode()
> internally, we can avoid yet another call to intel_panel_fixed_mode() fro=
m the
> caller.
>=20
> Remove the redundant call to intel_panel_fixed_mode() in mode_valid paths=
.
> To get the clock for the fixed mode, extend the helper
> intel_panel_mode_valid() to accept 'target_clock' as an out param.
> The 'target_clock' can then be used by the callers to check against the m=
ax
> dotclock.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    |  8 ++------
>  drivers/gpu/drm/i915/display/intel_dsi.c   |  7 +++----
>  drivers/gpu/drm/i915/display/intel_dvo.c   | 15 +++------------
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +++----
> drivers/gpu/drm/i915/display/intel_panel.c |  9 ++++++++-
> drivers/gpu/drm/i915/display/intel_panel.h |  3 ++-
> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 +++-----
>  7 files changed, 24 insertions(+), 33 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8631df908b07..eef85598bcd9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1571,7 +1571,6 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
>  	const struct drm_display_info *info =3D &connector->base.display_info;
>  	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> -	const struct drm_display_mode *fixed_mode;
>  	int target_clock =3D mode->clock;
>  	enum drm_mode_status status;
>=20
> @@ -1588,13 +1587,10 @@ intel_dp_mode_valid(struct drm_connector
> *_connector,
>  	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>  		return MODE_H_ILLEGAL;
>=20
> -	fixed_mode =3D intel_panel_fixed_mode(connector, mode);
> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		status =3D intel_panel_mode_valid(connector, mode);
> +	if (intel_dp_is_edp(intel_dp)) {
> +		status =3D intel_panel_mode_valid(connector, mode,
> &target_clock);
>  		if (status !=3D MODE_OK)
>  			return status;
> -
> -		target_clock =3D fixed_mode->clock;
>  	}
>=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
> b/drivers/gpu/drm/i915/display/intel_dsi.c
> index 9005c1f5d857..3a111f041071 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -63,18 +63,17 @@ enum drm_mode_status intel_dsi_mode_valid(struct
> drm_connector *connector,  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct intel_connector *intel_connector =3D
> to_intel_connector(connector);
> -	const struct drm_display_mode *fixed_mode =3D
> -		intel_panel_fixed_mode(intel_connector, mode);
>  	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
> +	int target_clock;
>=20
>  	drm_dbg_kms(display->drm, "\n");
>=20
> -	status =3D intel_panel_mode_valid(intel_connector, mode);
> +	status =3D intel_panel_mode_valid(intel_connector, mode,
> &target_clock);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> -	if (fixed_mode->clock > max_dotclk)
> +	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;

Maybe this check needs to be move inside intel_panel_mode_valid()
I see almost all places call this check right after panel mode valid call a=
nyway.
This will reduce that repetition. Also I feel "Mode isn't really valid if c=
lock is higher than max_clk".

Regards,
Suraj Kandpal

>=20
>  	return intel_mode_valid_max_plane_size(display, mode, 1); diff --git
> a/drivers/gpu/drm/i915/display/intel_dvo.c
> b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 405b33aca9dd..65015477abed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -223,8 +223,6 @@ intel_dvo_mode_valid(struct drm_connector
> *_connector,
>  	struct intel_display *display =3D to_intel_display(_connector->dev);
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
>  	struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
> -	const struct drm_display_mode *fixed_mode =3D
> -		intel_panel_fixed_mode(connector, mode);
>  	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	int target_clock =3D mode->clock;
>  	enum drm_mode_status status;
> @@ -234,16 +232,9 @@ intel_dvo_mode_valid(struct drm_connector
> *_connector,
>  		return status;
>=20
>  	/* XXX: Validate clock range */
> -
> -	if (fixed_mode) {
> -		enum drm_mode_status status;
> -
> -		status =3D intel_panel_mode_valid(connector, mode);
> -		if (status !=3D MODE_OK)
> -			return status;
> -
> -		target_clock =3D fixed_mode->clock;
> -	}
> +	status =3D intel_panel_mode_valid(connector, mode, &target_clock);
> +	if (status !=3D MODE_OK)
> +		return status;
>=20
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> b/drivers/gpu/drm/i915/display/intel_lvds.c
> index cc6d4bfcff10..ab6ba08ac091 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -395,20 +395,19 @@ intel_lvds_mode_valid(struct drm_connector
> *_connector,  {
>  	struct intel_display *display =3D to_intel_display(_connector->dev);
>  	struct intel_connector *connector =3D to_intel_connector(_connector);
> -	const struct drm_display_mode *fixed_mode =3D
> -		intel_panel_fixed_mode(connector, mode);
>  	int max_pixclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
> +	int target_clock;
>=20
>  	status =3D intel_cpu_transcoder_mode_valid(display, mode);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> -	status =3D intel_panel_mode_valid(connector, mode);
> +	status =3D intel_panel_mode_valid(connector, mode, &target_clock);
>  	if (status !=3D MODE_OK)
>  		return status;
>=20
> -	if (fixed_mode->clock > max_pixclk)
> +	if (target_clock > max_pixclk)
>  		return MODE_CLOCK_HIGH;
>=20
>  	return MODE_OK;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> b/drivers/gpu/drm/i915/display/intel_panel.c
> index 2a20aaaaac39..20c548eea6da 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -396,11 +396,15 @@ intel_panel_detect(struct drm_connector
> *connector, bool force)
>=20
>  enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
> -		       const struct drm_display_mode *mode)
> +		       const struct drm_display_mode *mode,
> +		       int *target_clock)
>  {
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_fixed_mode(connector, mode);
>=20
> +	if (target_clock)
> +		*target_clock =3D mode->clock;
> +
>  	if (!fixed_mode)
>  		return MODE_OK;
>=20
> @@ -413,6 +417,9 @@ intel_panel_mode_valid(struct intel_connector
> *connector,
>  	if (drm_mode_vrefresh(mode) !=3D drm_mode_vrefresh(fixed_mode))
>  		return MODE_PANEL;
>=20
> +	if (target_clock)
> +		*target_clock =3D fixed_mode->clock;
> +
>  	return MODE_OK;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
> b/drivers/gpu/drm/i915/display/intel_panel.h
> index 56a6412cf0fb..23bd227826c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -43,7 +43,8 @@ int intel_panel_get_modes(struct intel_connector
> *connector);  enum drrs_type intel_panel_drrs_type(struct intel_connector
> *connector);  enum drm_mode_status  intel_panel_mode_valid(struct
> intel_connector *connector,
> -		       const struct drm_display_mode *mode);
> +		       const struct drm_display_mode *mode,
> +		       int *target_clock);
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode);  void
> intel_panel_add_edid_fixed_modes(struct intel_connector *connector, diff =
--git
> a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index e7aaa5b203fd..7843eb13f2e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1967,15 +1967,13 @@ intel_sdvo_mode_valid(struct drm_connector
> *connector,
>=20
>  	if (IS_LVDS(intel_sdvo_connector)) {
>  		enum drm_mode_status status;
> -		const struct drm_display_mode *fixed_mode;
> +		int target_clock;
>=20
> -		status =3D intel_panel_mode_valid(&intel_sdvo_connector-
> >base, mode);
> +		status =3D intel_panel_mode_valid(&intel_sdvo_connector-
> >base, mode,
> +&target_clock);
>  		if (status !=3D MODE_OK)
>  			return status;
>=20
> -		fixed_mode =3D
> intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> -
> -		if (fixed_mode && fixed_mode->clock > max_dotclk)
> +		if (target_clock > max_dotclk)
>  			return MODE_CLOCK_HIGH;
>  	}
>=20
> --
> 2.45.2

