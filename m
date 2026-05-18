Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDdJNhB7Cmqe1wQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 04:36:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 342C6565201
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 04:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4FE310E10B;
	Mon, 18 May 2026 02:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vt4g+A0U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E2CB10E10B;
 Mon, 18 May 2026 02:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779071757; x=1810607757;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=88HyNpYgghYUszbdytmB9QIBe7Py/no5TlpPjpcgniE=;
 b=Vt4g+A0UBDOIVZTcvX/PPbOlwDbTKCXqCyLcf1Yxj4k4RQumVIP3ywsS
 9KTbTezgiYXrUi2qhCcZ5vfAQ/3EZ1kapnM4TC1ZM6tsVMcndGhQkfdT9
 rkJIZU3dXdA8UO4NOK1KowFCghCK/zLl5qODUFOs+LKvCoYjTbJ5lWaU6
 DmEY5VxElfpbyTcKIzWupTutUqGD7nMZlYN26KKa/WuDQly+A2SvTHe7k
 +H/7QsuO/ev0iJg1MMdgcCyd1csjjB2kEDjsc2MKNF+tOVSgBKwDfleNg
 TsoF/QFXIB5Be77xHDAin5uLCB9v3gbom37v7PClwHzYU/rklTKFMHwMa w==;
X-CSE-ConnectionGUID: ceexiqrhRWWrVT6DHBSRPg==
X-CSE-MsgGUID: 2g1SVLsYQOGOgpGgh3/7Cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="91310986"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="91310986"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 19:35:57 -0700
X-CSE-ConnectionGUID: cU9GdL1HRnqMLsFD3qqTQw==
X-CSE-MsgGUID: 7MUcIsOmRN2GF0JiOaQgFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="235053858"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 19:35:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 19:35:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 17 May 2026 19:35:56 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 17 May 2026 19:35:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OSs+gTFkR85p5vhOM6Zb85M67g/gij4dCe/3PudXAIEABVxzksIXQAQJ6QlJJugJkF8pJJo8yD0baLYdhLkefljZZADfG9M/ksfW/8NEpkCHqPcl/oxIw4zGIAHMvN2LnbZ7eTPzrVaMFwuUtPJ78Vv9sPiUBNfuhxUHTxWxiELjOg5X4ojl081vpMH9ZBXyhupnQa2pivfWcqPCfnCAcLMvO5/uIgrIU+2B4n8MrZWT5+KOkrdYw1y7TyOGEgjHoB5jw9IJ29P9Swis4FxXUSFYgOovTFJs3Z3HyfpwDGohriXeKs/24CyGw+kbq19lsK29f/aEE+gI9TfBpFfwHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g73u0MQ3btG+95wJBdualFjnyhwW7K4KbWJXXtD7OHI=;
 b=GAIwmMeug3Y7LBGJD6LrKhJcxWaUi2UxpRVtGKaSeWYVcrqw2QRo3p7pY5r/pfICfn2jmGOrQt8qmc9Wo2ocLkkEZK4vKjMQ/CzfmZqit+90RjvL0U1Cbb40K15D+c4w4/rG/A7fBIHRNJOB8uq2coh55NeTqxoX8J3VEdj+0Th7CuW6Gz+s/tB41fKfgCdyVH8thrApvq5HgqPqNS1J/6gJvWHmyhSrNWevf3zk+/0PSuIJuadYaNW8I2VZKukZmQA71a3E+D77yqVmqTsH5uMOQsGOyiNhFG8jw/FXQqjiT4L1KwEGwBZEv6IOTUCkldIbfKA3yo/ope0U1onC3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB8152.namprd11.prod.outlook.com
 (2603:10b6:208:446::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Mon, 18 May
 2026 02:35:53 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 02:35:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
Thread-Topic: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
Thread-Index: AQHc5gtufSr2MeBKwU6Z83tJ7W6M3LYTEeQA
Date: Mon, 18 May 2026 02:35:53 +0000
Message-ID: <DM3PPF208195D8DFA8E1C1F5A962C0CE3C1E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
 <20260517142753.2813959-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260517142753.2813959-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB8152:EE_
x-ms-office365-filtering-correlation-id: bb720025-e670-4965-6561-08deb4862ed2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003|38070700021|3023799003|4143699003|11063799003;
x-microsoft-antispam-message-info: KuVY/LVFNfdHkTLjpdVw2hnaVAzajHZ/6YPhBZLNEJu4wXzA5wSB1XRmWauG++KMe7v296hTx5E+g/UfgK+8V1xKnJiSIW/6WRAflOW7qgNGyU2jsr5jDHeSe+7BJqd355+km7tZl/fLW2FwOxOlFIRoMnuduYV5YdaHMQ1tEEQR7h/ZpES9u0LeFTQMX7HDFZOqzh60+hp1f7qTms2/dzgoNWIg9BvZSKAYyp4+0IwYN1pPmPEriGUxqrhnRL9s3benq2+j+Pub5yHRRhYW+uHQSZfaJQFTvCiFdrcXlovRHDGqJuRKDnr9+6jdwknnsxmTmswZvKY9uJp3sUNIinQhsBIWpbYNC9u1ZfaiWNgiNyPnHNCCmvw5EGqplzQnY+ZRcr2h7Ryd0ReklroIbQVX418TYqt0P13S6ilmR0D0G3r7I//hAmHCyX602s2cEfAqRKD9+kFrTRPPEX5PsmY8utPujYpFRnG2xa7q1HW1LY4iz3V8jIPYOhw6QaQh5ZBge4xsmtZWrOTarfjxCJqYYlMqgKmi6JIG/gO/ipZgcm9MvCZo3snW0ScORn+VE+6OFsKj6OG52A485xV+blf6zqVMQeOPqonhJkwhlN/LV6O5GoV4D5TR9lEEEAlHEes56cpHIIRzYJ4f7gkRlFBPzAaCzRsIFsMAT+Z5O6YgLO90jZnn1ZYryG6x16Iaw/LWwmhJOI1x6JcuMRkC8kF5v8pTPulFteJwlZBnqnxlbrxFDhN19Ljasqztb1LC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003)(38070700021)(3023799003)(4143699003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OTUi3/lmbjHCYSnqSP3h8NKmCmINPo4Tez5tthlzCc62vpW8MdVyjkxMd1QN?=
 =?us-ascii?Q?hNf7RP32MKnhZI171p91YpXSmnbH0BxqDC1OmHeV3Axi3hlVSmi4yMRU7pnN?=
 =?us-ascii?Q?Un0WFP4AXlLDuzoJk1+BWsvW2VjN1EcJR3FvDjI8Cp0Y3X8O/zJ89K84M2KW?=
 =?us-ascii?Q?Txywo8lCXfYYUd8Bvy0nkIDal8/S3BeLNhS3QrjY9sbOrY+PUIyqEGKXHAFf?=
 =?us-ascii?Q?KXhPJYwq7TMNWEUplHHiDKRKLrtE3Ai5SPo+QN+qeS2ixZf2w1nu45ou7Xgc?=
 =?us-ascii?Q?aeKfEmAOYgDljiHsJs2hworgzqoYxuieHzFhIhMhWwrCmu7DahddLrmb+JY7?=
 =?us-ascii?Q?NTcB+4bHJhfwlhCstm4x8aQr8rF2AK0n038Oz+99IPSXGUeph3aH2o2D/YPl?=
 =?us-ascii?Q?PUHTHiC6Rrp/W4gZ2nC7Arf6O00e1RjGZgBHLuuVqvEMhTGXjvQ9fqY/yJWW?=
 =?us-ascii?Q?42ZXPZJt2WDtuiwWoWyPuE/X2/pgeOo+SDGdHvyppHd7EwBCaKyJjRW5/mnn?=
 =?us-ascii?Q?yL9anLueYwazlPcjUgy4mT4M+IwMOiq3GnHta7XZVvXMhRl700TVUELPmaoQ?=
 =?us-ascii?Q?vnH9d5qsO/0jxCyCBBjoW1Y9KWl0lzpu5GzSJ1hYqP0sOJIKysQMfzoZ6MQ5?=
 =?us-ascii?Q?HC4FY7JuDHcXl6ohS0CaKEjZPdIv6ylNK+F0oRw2PBbzOMNMy/89XAL1jAGA?=
 =?us-ascii?Q?09XzCPqQ+3r3U00FAEe+sWw6BYO9dJFwyKpnNTOcQvlMKcxvV/Q4kc0FCcHo?=
 =?us-ascii?Q?On9Y07MkWbCmjWfZXKGlivGQc0RcpQY5Ahykd40EC2/JbNUHrj2tilwkWShq?=
 =?us-ascii?Q?9C80Zz0tWDf7hEZ3amMBXNsHlHB+mB4PkiBCPvh98qzpY1vHWk69N7tITeIU?=
 =?us-ascii?Q?bSkdA/DuyJp94SW9Fgl7rQYd0r6AMZEz02G/4A9r4xpz3ik7HDAvCE/tHrS6?=
 =?us-ascii?Q?JYgHxjegfJOlAmakBkYp9aPln7hZrg+YRiX7FR/3ez3ns+rof60FpIZhx3Vk?=
 =?us-ascii?Q?ubHDFVETe+zBtDHBnsoNY8k3+tn7/AeUULwbWMdZDpK3DE3FImTHKogBVkdA?=
 =?us-ascii?Q?+/hBqEqHvOvXDVUI3Wn2ZVrlKrJbnyuVN58FpvLsYmtxa1S0dy/KmVX09r9A?=
 =?us-ascii?Q?fbqrnDzPFCSha4FOeJy6d/XoMIAHns2cCMwv50tRWCxlgJYk1O3o4I739jXH?=
 =?us-ascii?Q?p73IniRXAc3OYH9SVGTYF0okoyhSRaZAawbFTQAfbLgpTtDoBXjVxwUZQsaH?=
 =?us-ascii?Q?n+g4Szxc9/F0H3iD1gWbKeAQhCcy6i1vw75jF37tCLHGrL70qqgZw+amWtA7?=
 =?us-ascii?Q?kOJZzpDVcXo3Fa+9axok9zzi8LbixLjRSYqKXn65P2hW0OkcbPQ7MbRToR/U?=
 =?us-ascii?Q?07HpsQxr/nVxH1+LJ3OLichKslcMgxpL0ZBwzEtz5zwT8+kiv5YIpx+I16Kw?=
 =?us-ascii?Q?2oKefDBEbVt3e8lLtipmRNP7X+qbjS8IwBP7hLLKQb3T/pTLiOJZAp6G3Dsh?=
 =?us-ascii?Q?+Q467U6Ih2/vWv9EUF2nPl30p18Gp9AETis577x+1ThzOFTA3R1+a6SfK9lj?=
 =?us-ascii?Q?ffCEibIoigSre1HTgpu24NRrEeNVT0dVtVWFqbiQfeLtOg3i1273FbcnVFgP?=
 =?us-ascii?Q?UUgGu1nD1WVVrF4JtUQJkuXWWDmiDNzm8fdvRJ1yAa+PESj14+5QEnMnhKAW?=
 =?us-ascii?Q?3i43/KAA3FGE0UNh2UrsnNa00VEC+G/Lolxy3TncbM9zwsybnqS4mapX6KlZ?=
 =?us-ascii?Q?e+7yTzhVGA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lkPV9xrOciYPYwFs0fTNT/+7/F3DXuhB3Bs+LPJQ9DFcePqw+ynBSfkgy2BKJzablDofwnCwLbKQ/iZPHlSzpicSRk7Y67+KGAjsiuyhwp8WaIy+oY6rwJ2odkK/HgP7GorGaGIAALQYqyN1xOfEUXVbsgh+ukDaECyJL0J/Bu+8DjaOBCvpy5zNZerhqORYaGPsMYtioax40Z9SRxLfgls5DohqSteN6x48w2KdhgBj/jiaFiG2GPmeblg2KMWOh7Q9MC+wAFGi0yWpNSuwEjfzYt9dpr0dctgNRt8o86rDQ6TbCGJNmV9lMHa1bMovSK+/qoUSqtETdQEwxPcYPA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb720025-e670-4965-6561-08deb4862ed2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2026 02:35:53.7165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1M/Vv1u9/hU7rFNOtxU3rU5I3WEGcn9l8EbFVBPEknnGuoIU1sG1qLvpidU3BaDy51IU9HFaGeWYZjbaz60Iqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8152
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
X-Rspamd-Queue-Id: 342C6565201
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

> Subject: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL comput=
ation
>=20
> 'needs_sel_update' is common for both display version branches, so check =
it
> once and keep the version specific checks as separate early returns.
>=20
> v2: Split into separate early returns. (Jani)
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index 546ce9846865..f6cd88902be9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1477,15 +1477,18 @@ int _intel_psr_min_set_context_latency(const
> struct intel_crtc_state *crtc_state
>  	 * SRD_STATUS is used by PSR1 and Panel Replay DP on LunarLake.
>  	 */
>=20
> -	if (DISPLAY_VER(display) >=3D 30 && (needs_panel_replay ||
> -					   needs_sel_update))
> +	if (needs_sel_update)
>  		return 0;
> -	else if (DISPLAY_VER(display) < 30 && (needs_sel_update ||
> -					       intel_crtc_has_type(crtc_state,
> -
> INTEL_OUTPUT_EDP)))
> +
> +	if (DISPLAY_VER(display) < 30 &&
> +	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  		return 0;
> -	else
> -		return 1;
> +
> +	if (DISPLAY_VER(display) >=3D 30 &&
> +	    needs_panel_replay)
> +		return 0;
> +
> +	return 1;
>  }
>=20
>  static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state
> *crtc_state,
> --
> 2.45.2

