Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id XhrzMzZ+lmlRgQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:06:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7097315BD26
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 04:06:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EBF610E65D;
	Thu, 19 Feb 2026 03:06:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MqYbVrV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED3F10E65D;
 Thu, 19 Feb 2026 03:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771470383; x=1803006383;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p21wUb5wfmaBeAM9eEvB35nI0PvlS5g3JRc/EgpdtBo=;
 b=MqYbVrV4GYVzODx/GdRGso9+7qHrrRrKTjYhfqTJrM1v2wKjogktcFiL
 2yHwmJs6bY9qeMy0DgzobCxS8RAgD2Cvbbhqq6c7zpDoAQxmmk4UYG0Np
 HOl6bVC8tKHvAum6+HU2tQM2WKlUnJ7hS+aCrlLmBds8rAQEXyavqugbS
 tmNs/waXRssMNVvVxVR1FBGHQxz1HH/1xFywTUuQK5b1prF55k00+BXBn
 ipzVht1S37S3eV0Zrpw4XbHLp8eXPEJmcDbNG+bUwd2Vs66S/Oz+efXO/
 BQXBvJRMxTO1X0m+FKzDwOfBHul2igHIDO+z8Nz2asdkHYZUxLuTjP3cq g==;
X-CSE-ConnectionGUID: sHF+HFF7RHKj9P3UNlfrzg==
X-CSE-MsgGUID: zvH4cGQ/QgmvDEuoBMzRJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72544728"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72544728"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:06:23 -0800
X-CSE-ConnectionGUID: FyESVjNYRoa2uUNRvswxAg==
X-CSE-MsgGUID: YjgbZtqPTTKBa/PfuGg0UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="213624325"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 19:06:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:06:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 19:06:22 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.24) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 19:06:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wuOm1ka6SSfFom/kol7lDvwRG16rAe+yD+W5I7FuhZV4elYyiBD2IuCGw87/i509MW25Ii7lCWg90+raCARfhz/i/oZx9K+vH+2YT29EJY/VenIeDnKU48VTNMwzS5hOGMu3lAN64m82vYfuyu2FlApF6vJf+BXBKCkV/T8Ld10FOYMnHOovi+JSe9ZnQ5f7G1M5J41AmqcsKQsRx7xgK2/Qk1IjDHjHLgEIp1NMxL3y+RYkExSabTVfSfYVmnmMRnLmy7wZf3/IfHRZVVcftfkzb43ck2oVenzw5Q0R7jhpYG7OaTkeO1FeEqxD/V+8hgrA670ewIq7o1u0Own2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJrXHauWji1Faqv2lmvbHqppklCmcAHcYfs58WC1DAo=;
 b=gFInuviGZUKnCYPPu6xq45yIkyLabEKvv+3ySQJvLTghC+214quBQakcq7iGjBHqW6kAao1U/jreolN3FQ99zF7h//CNJVDc+q2q1j3xxQKWJpVCHazuDSRMWNRrBbHOYQBIojz2IWVOAIY4UlhrdA/x2kquhPS1rEyojiqRi43+mwx4BPx7Prtgtw9XCI5ToKhOZ9cR5/qzATgDVzAmiVZVzy2rnHmtPJOjDaEnSViRG6R5it+Kq2boUGqCUayhFik29TxZNmrwRTfxc2QFrTzih5CbXVttfXZ4KLkrJfN3ctiaAtfWmPzicsTU/dT+eADjD8uDGhuaSsfd5fy0KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA3PR11MB9255.namprd11.prod.outlook.com
 (2603:10b6:208:578::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.14; Thu, 19 Feb
 2026 03:06:15 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 03:06:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 05/19] drm/i915/lt_phy: Add xe3plpd .get_dplls hook
Thread-Topic: [PATCH 05/19] drm/i915/lt_phy: Add xe3plpd .get_dplls hook
Thread-Index: AQHcnOWCimqyiMpIsky4pActF9PIerWJX4DA
Date: Thu, 19 Feb 2026 03:06:14 +0000
Message-ID: <DM3PPF208195D8D7B4328CE5DDBD4103012E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-6-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA3PR11MB9255:EE_
x-ms-office365-filtering-correlation-id: fad8706a-6399-4810-5ea9-08de6f63d7fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?eNNN8KpsFCpPKj+4fxMGDeJla3WPO8mLayWcPSDs2GjePOSqYAAsMa5SKndv?=
 =?us-ascii?Q?D8JQpy8OvGupI99S/7whoQIHJrxLosfZpXjlqq9/dUxMbQ2DWDKSo9sqTyQV?=
 =?us-ascii?Q?oej2jaNUC2E4rzOWQvyPHeZw6KLMhKsQFITB3Ree68Wx85tjfZlCgJshH8Zv?=
 =?us-ascii?Q?7JmbnLmxycXTyJKA3NQA/gel7ezOWujMTwnxgjFoivB0lOnUaN+flwZDVd2/?=
 =?us-ascii?Q?4oacQjaPfO5/NxWdCnC3ZpSGFbjfVm+rkzOW5Tkxp8/73jKq/TXdHMER6L3j?=
 =?us-ascii?Q?8xV2J/M+tkCeDZU48uha7lerjNoxRb07viynyfhySvU1OPxStNYeph63GGzV?=
 =?us-ascii?Q?Ypo4KaCEi+6UFPTAIoVYqdpzfBqgr/LY07af0vIR57nX0nKt+p+Nxo4IfS8P?=
 =?us-ascii?Q?x4vZG1ZC7PgPOrs4E4kz6t0GpcgiTsaTZ30Pt5eM1Xpwkzo/GzXPTn13443h?=
 =?us-ascii?Q?NT+LoZcxtL29CbYWOsApBTWMVoFKMw8KuCSgJaDpyP7DbLdHFsQLXEhsqjhE?=
 =?us-ascii?Q?At9fNeeuSF2IE7IcILnWYxrtrUY2iSzOXqVpVVQC/IQj/mkDDNEiTm75uF4s?=
 =?us-ascii?Q?Ett8OHUKzIXnltLD2l5e/upL7vp7Mm9/8piFLP09TlsrK2CR5kaR1iXePquD?=
 =?us-ascii?Q?igz58ChZfmtZFaQ995N7wQk8LMhQqQNW7alrahJPv6QaJR2g5+fU43OrEFta?=
 =?us-ascii?Q?mdWGXWrCOTRbJFO2J19c8TeFJtsWzYjctjwUlRQ8pBeZuBBja9cI2NUjSphf?=
 =?us-ascii?Q?D5rKD+npvl0cNuESBKjnijRSVyxOIk6AHcIOqgN9SQ9xKYYDWp0+zSvQkFEf?=
 =?us-ascii?Q?rd4VQs7m0qImbxjdVtLwpcNIZe/bi7WWFcpH/J9wDXKyrIJA8Wn/eKL/XF/7?=
 =?us-ascii?Q?smz72AJjjeOwCwyayK1adeZuvQntmUB2Ogl3KgOYj5Yl0gDmoYBlTHqWU8+6?=
 =?us-ascii?Q?v+0mks9fajZQw3SiQACXNTZIdCbBpnDXxxDAjD0DdchJWDaX3DEUMwyUu2JJ?=
 =?us-ascii?Q?MY0ScH/Szveutvu0uw1eU5mm2wtrR39r2z7ER1QtruOWsU57UtIAMsctLYom?=
 =?us-ascii?Q?G4B+DgxqORGtfHbMEyseWEAcWsPixfTBhZGSagW645SLI+YppURwRyRje9wp?=
 =?us-ascii?Q?MIDbcsalslSdiUd6bLo9lxHb2KqyAgB+hrhZj6d0mFq/+ng8fvkOdzOsBeJE?=
 =?us-ascii?Q?lA8WFShPAnRdMAzrzpFhhfy8btaDvP6y8vT+kqDAfudcbhheVGnmg5Fia139?=
 =?us-ascii?Q?lWIv0hF83NuGmRVcA/HO82MbYiFFl/4ju2Vy5dYFX/OqNZLEV54gbx5U7O/X?=
 =?us-ascii?Q?m+71XFynvVOsFynq1GIh8Gk49KUjifrI/NKRmen+EL6JQpKf6m5ohf+ppXxC?=
 =?us-ascii?Q?7Jl/AjdnOPhN1142TsdDG5baFojfcCwTF/5F9Pvh+IWp4L8CEuPLA9c52/U4?=
 =?us-ascii?Q?N6sbmSt91Ry0fbjTp/A1TRAl2ljSbI5QhxyZz/KI99qOMJzXwmcPeqVg6hR4?=
 =?us-ascii?Q?3w8cZpnIvaOJsqPiB9QSfgkxzZBZOsDUqfWXbONmcQHVuHKmqkvX46IMaAMf?=
 =?us-ascii?Q?guEQhuEDDIhw/XG2t68uJyXHfpl2q6zto3+/dkAY2nNmj96t/T2EuUr03cMl?=
 =?us-ascii?Q?uh5dBxJjX3JpQ9VIWM7INO0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UqdqLKxrW1Jxp5jZcYDVr84+Gzng80REWs7PG/sIO+usnuOHOvTDXzcOlHzs?=
 =?us-ascii?Q?oeGVFNnUwgM3+WSJmxfAAZb4LcXXdnGih4QHXpwKwc7UnDuvmEFgpPEQHbx2?=
 =?us-ascii?Q?llSKGEOmvL1KGA9oDpeetFxXaP6/6EosTXlesLt8XJf68hlbnL6OF5IaVky6?=
 =?us-ascii?Q?65oFpyco2zBk5pNzrwle1+46pXn8yQR+B/KwKzqZIZpvjuRX6KHfbempSfoV?=
 =?us-ascii?Q?BVBIrXHEZwPtn8FSOFkAC4jzOg1BE0YGy9kkVPRq8oEvwZ2lhpNlmj07KH6R?=
 =?us-ascii?Q?mRPyY2/9Wu31BX/ysdwYUqK96J+FODnPyaGylvY1MKTdwSWcaESbb9481Qon?=
 =?us-ascii?Q?fFSDxeBccpVnl+/B+CGAFxblzN7jpCW5+pjYf7wPm+6fjVR39Ci+Aqs/sLj/?=
 =?us-ascii?Q?myf4W4pmEWxk2kJwYQtZq3+wQGD2RRO6yj0Ty0Z1+B2BGTA0q9LpRR+dMgpH?=
 =?us-ascii?Q?1APgOk8eHll6kat5A3ua6ideX802pGQVh8M6aSFPEIs+rPx30VrjRY+4EGBO?=
 =?us-ascii?Q?UlbNIQR/VXKzNOTSP0YO2SVzB2qvfdy1fFKNiQYSVpZh1CZAhYi/WsE9oGQB?=
 =?us-ascii?Q?TJFOs9yFqiqW/yak7HQSD210s6vrbIolvz/I2vN6b3FtGF8ej1m+DNBfy2DH?=
 =?us-ascii?Q?zw05uwBD4K4mYsCsbS0LJKdMkCUDbpqHjv5aHT7aHPtGuJvU9VV6cMjD875+?=
 =?us-ascii?Q?ur9HAmRC07i2f0myppGYwE+R8MIqGRlHgpyveYbOJkF3orJTnFRpM7wSqJ8T?=
 =?us-ascii?Q?FuqJzjNsi79Etoj5udfwNKRrJF7AnoeP7x958Vupiadt51LQ56XyLEoJB+fE?=
 =?us-ascii?Q?7KhUSKhR0PcIqSymccLNlwN13wL71SkYzKQwSbK+y/77BxNpB9dGVPjq7mTV?=
 =?us-ascii?Q?q5J2t6BJAP6C6vmxALpL4LtrW9d9XE75UPZO32y0afNm20yEaZfyic5ZsSxJ?=
 =?us-ascii?Q?Q690fUBU1AssBj62ZMsLCO7IJlTx2KMmchZ4oh4XiGE6bAadLBvjx96P/zlb?=
 =?us-ascii?Q?Nn4n00IjD1OmhBT1piVBPHbaaKFhdI3+u8QfmgeE9PP5ExrXS4G/+qefmq/y?=
 =?us-ascii?Q?06Zq1jlTktS4LvQwYUnGLoGQ3FL+uaZQod4TVwqIZePNjmMIeUbDuW8tkxKp?=
 =?us-ascii?Q?Ns0RU2iY073c/bFtl/zab/qQ9KGGy42pcLLD0BMSl/H7tpZl25bDnFKGPO/x?=
 =?us-ascii?Q?xmIMCoNtRgb5gTH/4IvyUoG+NPoI6vifkaD+Iaf7YzVvQwX+k9tx+2UqP1TQ?=
 =?us-ascii?Q?dUqbQuNxIPOUJIOdLZnVGbZHyKyI6Z0O1i8YnTqX2hEzDubojJyeRlkkVb0Z?=
 =?us-ascii?Q?/1S+2c57lAQ+0OGl9d0DVtFxsw21hxP6jmWRkQXOrxU7XeCdqza98Turwber?=
 =?us-ascii?Q?WNKOOsx/LSiyKSmBOhehzHrKtbSyCrAftlZnwWRyBVoXdQCshUfbxJERz8jf?=
 =?us-ascii?Q?3KLNxm8XXuZ+XDEkLk7PIJ1tijeIRwpoCrN39/JwAcRHNsNoBPGrRVqcc2il?=
 =?us-ascii?Q?2ZKjHSOp/UehfuY1TabJpN7llYXS10YSW9kU37wdIrAJSotBJPkNJgOEYgTJ?=
 =?us-ascii?Q?5X8QOKJLvbngNzmE/riugWhgyOSB9wTCaJjqflRS8mnIUxCgYGqsmYt8UjhJ?=
 =?us-ascii?Q?0CLGi4rjSd2gKY68ISqhA/YyoASIpmncyUyoNmIHG7btaJ6l7EoSF4U+pSFq?=
 =?us-ascii?Q?rZpXjUo7eYly8jM+bFn39xfGdHHKD+lj6vuNnT4WI68jn3d9IgotvETqU+S0?=
 =?us-ascii?Q?MjVHs1gsiw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fad8706a-6399-4810-5ea9-08de6f63d7fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 03:06:14.9088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fFAzEVqMIboh2mJtobNBKfbYeLyQ+VbU+qLBUWUx+G3BGLATvGpJiF0FnpDONiSgip8eXZc0MQry679WCwIwtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9255
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7097315BD26
X-Rspamd-Action: no action

> Subject: [PATCH 05/19] drm/i915/lt_phy: Add xe3plpd .get_dplls hook
>=20
> Add .get_dplls function pointer for xe3plpd platforms to support dpll
> framework. Reuse the ICL function pointer.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 58c24e2164ca..9aa8eb0a7d4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4653,6 +4653,7 @@ __maybe_unused
>  static const struct intel_dpll_mgr xe3plpd_pll_mgr =3D {
>  	.dpll_info =3D xe3plpd_plls,
>  	.compute_dplls =3D xe3plpd_compute_dplls,
> +	.get_dplls =3D mtl_get_dplls,
>  };
>=20
>  /**
> --
> 2.43.0

