Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k0qeJr9VVGoykwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 05:04:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BC3746D83
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 05:04:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BMYmyd0Y;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6813610E530;
	Mon, 13 Jul 2026 03:04:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9977410E16A;
 Mon, 13 Jul 2026 03:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783911865; x=1815447865;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7G/dveeqlifcdaEDHVFBmATaQyK+FVV+xLjle1QMQMI=;
 b=BMYmyd0Yd3MioEQipkIlWDHe5gxLxlKYZLt9ItI2veokoe2JaeNnkEvK
 Ct/+9gSEV3coT/hsRwIhv+HdcAYM7AQ/a2BHyrok8OfmIV1WIYHghLJPw
 Y4JGcXcuMXvCq1ML8R3XEy6HjLR1PVDhamdd0inXeCzFy/B0PEK/K7ahR
 1OUNy2/EF5I7FHoGsDDWncf1HnC+nnCyYPkkPYabIm/ryGhZOmJukuAQn
 Z1jd67QKve46/GKYFFhIiiXy62JIyp3nLhi+mT1oMhGMZLrcOe029Y3dv
 3LGBnGQQAxyoQYAuLZbmQAw2IIcKpqUEx8Fe8D4yNbImbZX9eZY+LAMcu Q==;
X-CSE-ConnectionGUID: C7+Nr2KOR1awZk343U3oSA==
X-CSE-MsgGUID: 4k9b/uy2RnyxDtRHjc9oog==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87060359"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="87060359"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 20:04:25 -0700
X-CSE-ConnectionGUID: xOAI8C4kQhutLZU96JMoKA==
X-CSE-MsgGUID: VPkJhbVzRgaPCdrg3qCgIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278685185"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 20:04:25 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 20:04:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Sun, 12 Jul 2026 20:04:24 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Sun, 12 Jul 2026 20:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xSenhC8FSBbiVSQ972pNY/daTYbdTWpNfqcrttE3M6WVMBj82LHpNUuJetfJ7h8r1CJh6aP+LPJ39ca701MuCo4KbruqJieuZ4mH1RmkjVDxQa16z1KdmclF1R+DFdN7JaicYRr5aPvGLpzSbjGBSUa+AoRAD4VTDsAgx8kXODWoQSidZnVEvQsANN+mdedtoxQYS/MuWR4ot+1k/QM4lXgktSsSHlPNKiANgSdlB0ZNCBdI/i1HMw9IOzmRutWXDf+/wiHohZsW6FPYP4eQgKc9SsGWrbixS3Tbde1ZBvA/oSzd0KFx4oQU2qRi9crHr+yEvPy63KvRKGE7BY2z6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xjejsbxz+FHb3b6cQ9gn1GyajqlH8DEV0/EcJhTWIiA=;
 b=MMYXuxAWZ2XcMglRwbAXDlC2nhpyCESiS11taCyibNJ17jNn0fSy0F6XV3VqLRry7/xD8h/YvL4Ndq3l/FePqLKz0th83tf46U7h/KhExTBUXff1HIXZL6y/FZeV5nxwPoXLGOHUDbY6yR8ZmoyzblnSezGHy84y5h5v7dnvz2CpSDPqZW8PTDcdrxc0e+4Dk3Z01tDGrizzBwQ9E2lIljrrUpxZkB9Ka8hkqmIiKXE1c02q92z/L5+H3ioa3VROk0c96iTF517Px15h69MxCLSw3XrAbW1177uBewhHln171gGbMsx1a1mJNulbE1ep7UPlqesX5soBQAcmhDw9ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA3PR11MB7413.namprd11.prod.outlook.com (2603:10b6:806:31a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Mon, 13 Jul
 2026 03:04:17 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%2]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 03:04:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Liou, 
 Mei Fan" <mei.fan.liou@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] drm/i915: skip eDP hw probe when connector forced off via
 cmdline
Thread-Topic: [PATCH] drm/i915: skip eDP hw probe when connector forced off
 via cmdline
Thread-Index: AQHdDe6tQa7Vx56SOkeSInwXJHxR7rZmy9IAgAQATqA=
Date: Mon, 13 Jul 2026 03:04:17 +0000
Message-ID: <IA0PR11MB7307FE9C633869ED21346AF1BAFA2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260707085704.14519-1-mei.fan.liou@intel.com>
 <alD58t0ihoGmzbj7@intel.com>
In-Reply-To: <alD58t0ihoGmzbj7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA3PR11MB7413:EE_
x-ms-office365-filtering-correlation-id: d4f1ab6e-6e34-43da-cffc-08dee08b6d5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|7416014|376014|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: bqU80hF15ULKytDLXxGhwQYfV476zrw1HmqIwfLArIiEnVfMW0U9X1RKcPdR/Fe3dGpMYfXwiR64FoT7DVBe0fBdm8T9UAbSXEbgWBBWPsUWDMiQFXkZ6rmLKDpouuHPUSfMKblhptbpuIkvJxEdoicYjdqDF6te95mga7pPASmuyVawm3A1XJPs76HoDyuCM2q3asbcNhjG9LMLJL8I7VlJSVdDwuSECEDWDzYllWuKLHSYkIXaLv2OIK2BlaGBKCJiw6dQNg31WaPc0MaTQCpFY7T1nXOYDWc3W0KUvgA2SNjpMLVbd5JySQYUwaqrd6SphGwUvm4OEDmBjOzhOnmSB09C/0vlZrLrBVbxccCSKQexZQ0cxXNCPAmYYZ9DlQoFGJk5VVC5BC8ySWgumhS8gu0PrcNez/AGpqbXrq5erjGD0Julc6ToW5pcbs5Qdo+WcKKB81rrwGLEDON81gTdLD/3mzqKldvf6f3P/LSXo0lfnnPINMQrb9/RLzv9P8v2XVb1bseR5/zf7+HDB2Sgh+6v/zkvVHI1S0RGeaioGhZQ4W3iFTuaWRXf7R32yEpXkV9MvvWy1DJROTlv9tco/KvflBTxBlXXQArXqIfZ6Ve4NiuDU6UYivf8nBgkr8SHAVl50mBlQkomjsYlqD7w6Tgy3MHMoDwwF6o/n1NmX2V13oKqj6epzzXtuVQGBnEPZJRjOtW49d6v4JdmM5SmCpfZqiDNprAG+yeqkEo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(7416014)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?RDW+UlT27LX7UdYImMaAzN+4RQtS+1LkUrkbV49W3w2qWCAsH1XgR9dwTg?=
 =?iso-8859-1?Q?NtNiLBz7f8AhAdnTtnoUxKBA3Jp6t9oPdbnMH+lzlGE8i/bNu22kYOn6BP?=
 =?iso-8859-1?Q?IsGA7Z2M8UdqGWpzkZHcuB/FNFh09vB5lbh7knS4FfqIfAavjKRGO9+C2x?=
 =?iso-8859-1?Q?7TKusx8B4IG/2xeatOAxfTCqgpwnBAYzm4XXwqojkenUbe6m1KPEHQb7Hr?=
 =?iso-8859-1?Q?ougc4spzpgzith44u9+4krbFUctCqc9pkw98X8Ir8ncTZwHwwPqDueqDsW?=
 =?iso-8859-1?Q?+AuXdVtrd/fxQVddrvHwfDWnVN1abTpV5Ut5224J66hJbFDRZr0gK0hZB+?=
 =?iso-8859-1?Q?Lq50siEp0tA2Dv78zfFMtQmBC0P9+hEXKhShzHkSDkOslRaJ1TSaOMZp8d?=
 =?iso-8859-1?Q?Og9YDmHrNQhjU0HpGLoackxh7c8JeNF+CDdBOun2N5r8luG+eMJpGmZIK3?=
 =?iso-8859-1?Q?ojUR9rJwAy1eSVdn/ik2D1XM/onkbuDYTWVwHeCHw5hjYpgLtIT6WAmIA3?=
 =?iso-8859-1?Q?zL6nXIM25PMZm2tvwAyZfiDZWcMX+PFRLgSGcIBTbZks0JhrJ41eCwf32Q?=
 =?iso-8859-1?Q?E8M+ZDyLHl7FVL4IlmxzSKaitt0GgshH7jZX1g/aYAEE3zviF8EVdIzZkr?=
 =?iso-8859-1?Q?hwbHSri7bZljsd3p1J03AKOy3RG+krKKHQiOJQxP3sdyU/XP1XmwwF24Ld?=
 =?iso-8859-1?Q?LQZO58h4GPPIg89oTZVu3beSKPX2nBza4Y3biwAI03PaTj7USpkl9Lggtp?=
 =?iso-8859-1?Q?X+pWLrxDb9/n8ka13RTVYOEVcp+Qn1XMXsJKjDshWtvM69OQWFbkJFGqUy?=
 =?iso-8859-1?Q?YmCaSkgE/nAb8a8A2buxgt9fPznD/q2iGCxqxwKsx6h7rvGcbSvKnGHEMw?=
 =?iso-8859-1?Q?gszokDwZ0bpdVMLDUmhVYisR3uerouni4MQ2pB+KF1Uzi+J8JUyR0gv6m8?=
 =?iso-8859-1?Q?P62wB0Qr8FQTiYfxXIUAJvsD9arOMM16zCkD9kJlSymJuaN/5HFBjgYGj4?=
 =?iso-8859-1?Q?PgMtoN5upDtudb6h2oGJeHbj+Sz/pJ5i0PdDQo4v13yeK0l5mlqcwNH9sF?=
 =?iso-8859-1?Q?FUoU9XVmQlfqJQjOUgdrbKvISY5Arh/O4WIpA8xiL/xAW6avC6GqfONmwr?=
 =?iso-8859-1?Q?qDFPP0kpEiV/9huWMwLjahD+2I75zzbHqDPI+h81UqzkMcDij+iNu6dU+o?=
 =?iso-8859-1?Q?+c53mQJ0jbuKcABmbLfPPsj8CEO2STIOoT/FddcP3kt6DuaqAM3FVqMJ0t?=
 =?iso-8859-1?Q?fagGaJ5vznuU9BzY9YXezaAE5DofwwvpQyVwD2H2rLnc+9Qr7XGux6Y87F?=
 =?iso-8859-1?Q?i0YnEYKdgrFLl1mcGFgUWF+IPvUJu+dvWlskfBkAAq4WDCn4uUOEj5+4Zf?=
 =?iso-8859-1?Q?SuR69XjNvtaG//JQPqexNqJr8ixYdgDe56N1scxhxSwNOUUUaEhJkmwR/E?=
 =?iso-8859-1?Q?635kk33TA33f9huzSvfy2Lv5K2R8vJcwxBkClP4WqleUcGS0BwTTIxgpqU?=
 =?iso-8859-1?Q?LgkR09m4J45u3NRCz7SD55py25rHV/5BSLPqhPHrtWZIlbIY9w2p/wsb2b?=
 =?iso-8859-1?Q?EhslI2j3w2klZRHBqlk9NMgbl6mBPB34xvIHMsHznrZeolKIki0bxi6zuh?=
 =?iso-8859-1?Q?2PYy2KCBg7NpCf+Ay42J0xi3mFDv3veVi6ugENzw0aMzttp+2ltvRpGM79?=
 =?iso-8859-1?Q?UFLHjRtIpsW+RdiKEqZsoD0se5k5c3jIuS8YR/pj43g9deAatLe6y8pMSg?=
 =?iso-8859-1?Q?WHaREL+VkvgH8/BMOzs67vDL/5v7S0yqUi9HOsdZRYw688pT8MGezXnuJ8?=
 =?iso-8859-1?Q?ZD2vB6d1mw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GVUbvQIDRELcsF1c2h6Vtdo00N5nAf/wVB49LO1zIy1BuGq8NMd4OHYQ9WFzodnsROIAA9YZv6GwiVn2uXnJ+uRrfg6banTw5tj1LobOaQSC9w5MBa6lg46NKMwW3Qhg+O/U2iHfyniRI5cbJfL0nVZ/iYdayI+RocG+qQ68oKIaIU1Knch6NplA8pkmgyYUg/XHxsDc2E3o1f1M3KBb87ULbu5QY75wO0lCeXIOFskpMR+bitp14yGpauDvoSi1Gf8xLsdcuAn44DEIMRVfM+fucxvIrPOc+beU/GLP66WpyDDe7oNEeOvREH+jfoZ2vu56woXxDLVxYyVCIh8wcQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4f1ab6e-6e34-43da-cffc-08dee08b6d5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2026 03:04:17.2685 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rtozeueM5f2dDEvsaQcLEXfmnjV3ohux9UjIfkK03KWFTB8WCkLZQmQyjj3zW6qN+9LO/GtXoQUiRch7exXxhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7413
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 27BC3746D83

> On Tue, Jul 07, 2026 at 04:57:04PM +0800, LIOU, Mei Fan wrote:
> > When eDP connector is forced off (video=3DeDP-1:d),
> > intel_edp_init_connector() ignores the force flag and still probes the
> > AUX channel for DPCD and EDID.
> >
> > video=3DeDP-1:d sets connector->force =3D DRM_FORCE_OFF via
> > drm_connector_get_cmdline_mode() inside drm_connector_init_with_ddc(),
> > which logs 'forcing eDP-1 connector off'. However,
> > intel_edp_init_connector() is called immediately after and ignores the
> > force flag, so AUX/PPS probing still occurs.
> >
> > Fix this by checking connector->base.force =3D=3D DRM_FORCE_OFF in
> > intel_edp_init_connector() after the intel_dp_is_edp() check, before
> > any AUX/DPCD probing is attempted. When the connector is forced off,
> > log an informational message and goto out_vdd_off to properly clean up
> > PPS state and skip all remaining hardware probing.
> >
> > Suggested-by: Arun R Murthy <arun.r.murthy@intel.com>
> > Signed-off-by: LIOU, Mei Fan <mei.fan.liou@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3569e61e7fee..fa61b299f83e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7057,6 +7057,17 @@ static bool intel_edp_init_connector(struct
> > intel_dp *intel_dp,
> >
> >  	intel_alpm_init(intel_dp);
> >
> > +	/*
> > +	 * If the connector has been forced off via the kernel cmdline
> > +	 * (e.g. video=3DeDP-1:d), skip DPCD/AUX probing.
> > +	 */
> > +	if (connector->base.force =3D=3D DRM_FORCE_OFF) {
> > +		drm_info(display->drm,
> > +			 "[ENCODER:%d:%s] eDP disabled via cmdline, skipping
> eDP init\n",
> > +			 encoder->base.base.id, encoder->base.name);
> > +		goto out_vdd_off;
> > +	}
>=20
> This doesn't looks sane if the eDP panel is actually there. We need to tu=
rn it off
> gracefully.
>=20
eDP panel is not connected.
Hence adding the parameter video=3Dedp-1:d should bypass the edp probe. But=
 even with adding this parameter edp is being probed and failure/error mess=
ages are being cascaded in dmesg.
Eventually trying to fix the parameter video=3Dedp-1:d !

Thanks and Regards,
Arun R Murthy
-------------------
> > +
> >  	/* Cache DPCD and EDID for edp. */
> >  	has_dpcd =3D intel_edp_init_dpcd(intel_dp, connector);
> >
> > --
> > 2.52.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
