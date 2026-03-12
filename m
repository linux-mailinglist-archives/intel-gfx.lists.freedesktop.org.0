Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id r27WJ9U1sml7JgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:41:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A7926CD88
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 04:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334E910E94E;
	Thu, 12 Mar 2026 03:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fm+sYHK4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F8E10E94D;
 Thu, 12 Mar 2026 03:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773286866; x=1804822866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nmk1jNpGG0P6jYojtlEfuJ6/ReZz/SsPHhxKuCA2V3Q=;
 b=fm+sYHK4L0llhGj70vVoFAhmE57B5EGskHvdC3WRVCiun7dchdDquKVU
 jsK0aweaZUSY5kbSPDssKHWU1X+y6XT2F20YbS5G3jYZvYvgkhHxJCFnK
 xvKpTuQA68Bh2t2DjZqH/kdNwXdU/PMqPTpu0TJ2TVLpO3sGCXNXP/6Lh
 RLASsmeiu8RiUFHEOJJGahFLi9r5CC54uyPqyeqV+fsWeurzvZ/2wHAKc
 CHGxP+1oFKeDKORFx3VvhZ4nbhurhsnKnNQXLEjz1kVOFwSJDkUBfxi6n
 Czo2AEwqw0pvfUcU8MMugXsFgblrvCus9bFKl0yCXWWwzQv5qakUy5i// g==;
X-CSE-ConnectionGUID: 6h0fy7RqQhS2GL2pPwWeXw==
X-CSE-MsgGUID: 6iNbgZjwTdaHrclSrZghRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91748794"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="91748794"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:41:06 -0700
X-CSE-ConnectionGUID: LTyY0p1uTuOni6Y6rPEnvA==
X-CSE-MsgGUID: aeSoBvkMRMui7hE+lBiyuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="219950692"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 20:41:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:41:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 20:41:03 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 20:41:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kviz0GNP1RvmZqNtcu2gjfQiZcgidxTV7kkhAzp2zeyiA/oBPViITrHHQHqiOtskSEAe2dUwFhzIal19nFxpjE2qUlZPWmg4JHL6SObntELZlKO0CKkG30HAvrp6SC57Ly3IKZjqYgQS9dvYbgYMTwO7LmmT9p6LWsNqcw39ryPFuX2TJ7apHqYPNEi04xIyJXc4f8giV5dlEUQYJ0dhkf56T/dy+lNmxzoKIrZkioi99VD3yXzrW2KR4w1e4Vf7YgUGaR74yakVieYekOkoCnuExaaLwuA6TklnokHaNpI9gvstKWPwW+7SExZQphR+QEn8l4bM4bdzhxtpSe9Osw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAWueyYzEO1Et9yIzw7MmWSR2pbu05x9ye8KeDxfkn8=;
 b=q0sW8rfjl/SSFLOVo+1HcK7LRoKN+D42qkO6sMhUcUpYJt9wG1nEbMRbrK0nCP0D+7+g04h8VMvvnVkwFLq/4B6LhdhVlrogVu3TR+IDIUES3P7GnPW0wu5MHNIV6783Ep5X03AwqxthPivtRYddbe2cFb9jS586CxuShHY8uY86im1lP4iXwY7hr3tNQX6zJ89BV5VfyvLmNINxXVXh+GGMk+FGi1Zhhw7yz+VEMXRA9BFIMopKQyE/SLAg5mxYxlapvMD1dP2bO0Y4GCaHZGhWHB/ESlaTSGf2GjcpdVR8liQAfrRzvxOM7uASFbEXZOfTFTSrzCKjS1cK9SWy/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB8515.namprd11.prod.outlook.com
 (2603:10b6:a03:568::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 03:40:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Thu, 12 Mar 2026
 03:40:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/5] drm/xe: rename intel_bo.c to xe_display_bo.c
Thread-Topic: [PATCH 2/5] drm/xe: rename intel_bo.c to xe_display_bo.c
Thread-Index: AQHcsWIFSvqg9WRSp06fqSooUxJRorWqQRdw
Date: Thu, 12 Mar 2026 03:40:53 +0000
Message-ID: <DM3PPF208195D8D0ECE28F2CAE1168328FCE344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1773238670.git.jani.nikula@intel.com>
 <2f73eda5117462407f12113ce096496282ee3fcc.1773238670.git.jani.nikula@intel.com>
In-Reply-To: <2f73eda5117462407f12113ce096496282ee3fcc.1773238670.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB8515:EE_
x-ms-office365-filtering-correlation-id: a403b34b-086b-4ac4-ca6c-08de7fe929dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: N3T4Khu4wZilrPxQGvs/qWgQK86e9p14vVGxDI5OOc2dKE0Be6/YMb0shD7qKQD1ysdCePceCUoxIelG4xbK0x2LoTRi8kvSRB/eSHtaToLb85BdPnPveharngrgZ1HhXz5u8nxm6GRuR5i0FcxufyBFpmMnK8/vtJXel1JAmLhyWmzyB2wDVT1GP3Q442aVp0mf3fohj0Btt8Gk6s/O2d1UnOr7POUBXIZnbUpm/nfw9HeQbRPlXX3QYffu4MUW7OJylTncdWyMRB4Gry9E9D4toHYBoQhTTfh3Ca2eOVRnTSeenxljIXBk/gQ9DWVXHiIr3g/KmvkieaiD65shVHt4yCCWx9wqDqtwsymTpPP6hu/mg3lKaU7T/vaPja76c81xHdx4PqdZe257Te7UCsusM9mwqVmq5QOT1DpQsO7stuV7mC/ulKzj5cJun8el2pTQTERb0OGn+W47SVhbMAbqG3rCkLBuFQkRRxXzmadbAC4LIF9drTocFXXP4pvC/4QvjOnz1BrR7fTVYRIpcCHjw9aHo77zVnaKfiPHXHcoFlVEQl5ew71NWn/RMUe5lFW0MGqSjN64qYi5JFRbGVJ8JpPqSw2/mGy/1F8rMs0CL+uoWXcVSt61lEo1AZRRmvkztWBIXt13N0PQ4EzhVyfPKvn+rv0rxU1QjOg6hPdJdAiwJE65hZvDLWvKd9+/C3XU5ulWAxPD6jDAlMz7HUmU3k+WD06p3UDYUSjtVj+yA97YQ/kkElnt/7AOvMTFJmCwj6rywwIv19+poLAMO48PDM6cIaeahhYNg/F5ieM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?E64aLMpZ2Dza26PE7YOwxuvQrf6tnhUj2eHu9rkIpnfwM4PZ0fjDbWuoUe6H?=
 =?us-ascii?Q?nbC8znIQhK8SbDAAuBrcHHnJl9p39saJwRc6KM/rvUV+iF0f75DdZyJqqa1x?=
 =?us-ascii?Q?yGd581boP/ircB0buuaR85HdRQLeLnAdsH0s2dcW088jjezJ/Fumt7j2XN9t?=
 =?us-ascii?Q?LHQAG12+sKrFx0CaCYBRvkoSbk+7JBy9DLJ54xv3DqZS3bk4CSksT2frmyvg?=
 =?us-ascii?Q?gxvLIU2YspAaH3d/OSKSZU433e+e0XFk8MUlMuE8YP9FS9mkUGlZ8J4vwKHr?=
 =?us-ascii?Q?ibhGjsqIylEzx6S3/BIUeUi7uvrX01iEGpP4nKLpBUok2uMnru7V6U8MfDqO?=
 =?us-ascii?Q?8maqsSxehTIMddGUfloFUzLbZ19+KU2dFFi94pjRJp5zW/DXHZk70jgTUvql?=
 =?us-ascii?Q?aQgl7Wlge1rWbeFFKvQlZxFG4+kUDAQUpM3WxEaFA1iIqTsiAbx4UQru+9mo?=
 =?us-ascii?Q?NNoRa8aDGnnhM3f3lB3SiAQuR66yCeuynHanCioXvejCR9M5U/zfg4lXXQsq?=
 =?us-ascii?Q?uEqWJo4DsMgHtCUhY0Hqz1ny2jkdjqkUvEd5EgvMDKQPVlmc/Elbsuo+o62s?=
 =?us-ascii?Q?zP8iGlxjFBSVe6cSlYWrduXhxEgRawlejW3/clndu5ZW0WShA+BbaBqYMkMX?=
 =?us-ascii?Q?a49+dfyU0q4/QVVS/r4QLva2hNiQI+pWFB/JMyXinQJdf5ty+OK+rABiC1Sv?=
 =?us-ascii?Q?xgfoqhsslMjhdh0pbLs+yq50Som9IzOlWhfo6+UqEqa+0gDNMyGsUU8gDCTc?=
 =?us-ascii?Q?C11G1M+2v2BGCRFx3srwog1h4KN9I9Tncpe+lVAJrc7Fyq+6wnpn7TSSA4hd?=
 =?us-ascii?Q?uiU0vIGa72S8n2cLjQJl2plqJsGg6UW1L51YmG4qpGCajEUHQZETIajExn4f?=
 =?us-ascii?Q?Ixr50Q0wdJEU8MUvaN6B8hmrGZAXPvT04ZHBHXxsvF9nkRVDjhc77Wu7GL9w?=
 =?us-ascii?Q?d5Ang/oMQpZ4u4i3HPgJwW1+78Etrlsw17kjIqqMFSZ+6DZKXkW0J6wdM5gz?=
 =?us-ascii?Q?BHzeQCWt+XyoFXVjGqfWBmz1uM/tei0hVG9ZPsoLmjkcCsvHnVX59rhxKGZO?=
 =?us-ascii?Q?MGCGavk/YOrmDrYK7BaXvILW2CFqlIvOv+pvEtL2Vy9Rnu47I7IXLvS8UOs4?=
 =?us-ascii?Q?+rg5GzG6460o4hsDkOgjKi6V/RvGfGxcOxwMJDWnjNt7P9RwebSRG4z4DB5C?=
 =?us-ascii?Q?q4EX/Kj5HzH+OFlBPrdfY1vlPir1+xnfTl5/L/iz0/OUrACWIK5J9gA7vEBN?=
 =?us-ascii?Q?7RYqjdpf7MlsiMCk6uYYz9ZRUji8LO1FsuWI0kaD0QDjhoEJNCgFU090RBnU?=
 =?us-ascii?Q?Ldkl+hU8LZ2AWERTnWBarZZx1gk7eZAO3AqSZqBWKwJ5Bw68GXj7e61ubuu5?=
 =?us-ascii?Q?Gh841OU+BoFGTL9OxGOwSk5TRx17l6H0KBBocKtIoUDmKoEBG2KAdHVgofoW?=
 =?us-ascii?Q?FzXHCUclGx5OCnvebtNUVABeOM+I0/u2WcxOaZJSg53nm4t5XFzSZBrq9SWz?=
 =?us-ascii?Q?olaDpmKs66SI8S3WEREIi8GpkcBUgEphSWM+Kdv6gpX9ATGvgK/WmcySFAe3?=
 =?us-ascii?Q?ptdoHkpm/y/nZh3VXCc0f2/VjB4OsjJ5Ig+GTLUtUrnWOLqQBSElXA5Qfhsz?=
 =?us-ascii?Q?T39BEaLEYvT46BkI3WcVqFoOn/hi2q9kWHwZP/3ZvPBZOdWjRNGZo1cAjo/Z?=
 =?us-ascii?Q?T6heT1yJK9C2510+JNmuXL40hJmiy5jkH32JZIfFrkLWd8/v4kcFGre2Ilyx?=
 =?us-ascii?Q?iq3jt2t1aQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ecc+qeegvzIQjqORyvk0lxUr2dZWYIIPBjCg+UQ0RTWtclNBf29iivtZz97rP4jBK1wmXfdcidvno4sKeBsjzu2ciDyLkazptAdmQVXpeksrF4OfaAiWD9z1fUTADsZ4GMaskh5I9Bh7SUFEAT4RfM3TWGVs7ZSHxAuXBMSezUrs/lfRF2IPNcWFTTivJZuMbz5wD8S1Wq+FB8bH9HaZ0dYhkNlVTUPIq6pebsZFCBL6xHarxx+HKivLkMWzZzxnfkteqiH2tGv3Be95vpk2hlGkjSMmdm8QJ+21+Db4LSEZntI6+nj2MuQQN8TTxbETBmszLeZLv/v3PRCp5o2XYw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a403b34b-086b-4ac4-ca6c-08de7fe929dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 03:40:53.9610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YDU4rlUd4CPMV8iOmetpFIddkkpjQfohGizCzfs8/iXTTkeEDjp0e3J20/HASOA8lDYf2yvhK1hGYSh0D9S3GQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8515
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A6A7926CD88
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: [PATCH 2/5] drm/xe: rename intel_bo.c to xe_display_bo.c
>=20
> Follow the xe_ prefixed file naming in xe. With xe_bo.[ch] already being =
a
> thing in xe core, use xe_display_bo.c.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/xe/Makefile                                | 2 +-
>  drivers/gpu/drm/xe/display/{intel_bo.c =3D> xe_display_bo.c} | 0
>  2 files changed, 1 insertion(+), 1 deletion(-)  rename
> drivers/gpu/drm/xe/display/{intel_bo.c =3D> xe_display_bo.c} (100%)
>=20
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 50608312bc66..aeede4423680 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -211,10 +211,10 @@ $(obj)/i915-display/%.o:
> $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
>=20
>  # Display code specific to xe
>  xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> -	display/intel_bo.o \
>  	display/intel_fb_bo.o \
>  	display/intel_fbdev_fb.o \
>  	display/xe_display.o \
> +	display/xe_display_bo.o \
>  	display/xe_display_pcode.o \
>  	display/xe_display_rpm.o \
>  	display/xe_display_wa.o \
> diff --git a/drivers/gpu/drm/xe/display/intel_bo.c
> b/drivers/gpu/drm/xe/display/xe_display_bo.c
> similarity index 100%
> rename from drivers/gpu/drm/xe/display/intel_bo.c
> rename to drivers/gpu/drm/xe/display/xe_display_bo.c
> --
> 2.47.3

