Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BY36A/FpS2oXRAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:40:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5436770E352
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 10:40:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=NmE00jMc;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5AC10E828;
	Mon,  6 Jul 2026 08:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E8510E829;
 Mon,  6 Jul 2026 08:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783327213; x=1814863213;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UVCyL9SfIHZVP72P6TA1PnYM5hqjGa0sOdWTjAkm65s=;
 b=NmE00jMczjQkTJAwjjfnArvr8Vf/KHC+n93bOOSCRcK7rmkut7h7R7tV
 GKP+QF08Q3TBeA2YGlsjxJfCL5xuFYZBXH92uuTzNhozRm7aEeGI+Z9Bz
 RyD9Plk6lieroux9Zjx979newmnpvLmkFUdB0pYzDskuGUPZwrjEZbh8S
 7VHAGG7rT387auktjSN6Pnj5RxoSIfpiqtVDNc+MhNJH5+dvbPPq9hlkE
 EH2Zs/bNvYfxfwENGhDY7CnFXTY0nkwnmOmxXI8OIT6n39QW1DLBBaT9U
 4o8lH393WQZvZW8IXgeeAP9dXPEi6+4X6IYILyZ+3OP5QmHU2HuzHStQp g==;
X-CSE-ConnectionGUID: QXvEllyaSLmmwnB6jdIf1w==
X-CSE-MsgGUID: KbilEepQQaCtczeyv/NOQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="84048217"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="84048217"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:40:12 -0700
X-CSE-ConnectionGUID: /Ue/AeYERuCAK1IjcWS98Q==
X-CSE-MsgGUID: kVD1CBCPRpeLN3fp1iiaGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="276866564"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 01:40:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:40:11 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 01:40:11 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 01:40:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Renwq2a8LOx8u2F6YJCrGK9eNpcpuR8Qgtq43I2Fy0BsokiTyhyRLJMDA7KhTLORipOxGjWZUQCoKfCdnBs+aL3vuISThaX+/3CXQA6ga5JFjpNwl1yFzdgN+CgvJ8EUp3Z/PPq6YWrlO/vxrSOZHzVt1nYLyxzqNS7LhWPNYCH77U3U5B27ZQJ6xP4zztFxNl89XQf0KiWMHrvUTX3LvqpuwIMhWTLIpbwwFd+9839UYbVBx0u42vP5Fb+4I4nU2OiZ+mSpjHJIGbQHpnNxKWueIL8k3IbdTDq3qBkyIoUUV1YsROGvHMm/daQF18njA5cRiGIzkl7t35gX+TddtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yl8ZaFAwixdVt3YgnmEY8WX4wJt3Bjpei7RJM10mvfs=;
 b=GzvrLLXa+gw1DysBVwhvtv/WzNDTUwTks5H4Njm0m5U5cu5ItjUklgkRvFTDhvqZdWICMR0T0yxwBggKR40Ta+FLmzfJomH6KicWCr3D0MlQEc3IeXpZ0q8NilwRNY7cY3NeU75NvGEf1pEtrwgYs5j7u/3e4MHEHJTNkSQeLWcSC7XAHSYbwFq7eCGoKeXYQ3135PM2ZvnfvVvoAvORUdXtgvEWy1W3EsJVdlbwjwv1ZTDg3rq0OeHYjH+LBgEPGGBCGiDElAVCLKddDjSt7xwYH5IVApJL5wNJ03TzfeqvfqokIvikS4JQopqBnAh/Ou/rKTcDXTvzrGcSynUkYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SA1PR11MB6965.namprd11.prod.outlook.com (2603:10b6:806:2bf::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Mon, 6 Jul
 2026 08:40:09 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%3]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 08:40:09 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
Thread-Topic: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
Thread-Index: AQHc9xBU+vi1XbW6U0uvM/XeZEnA0rZY/leAgAdRflA=
Date: Mon, 6 Jul 2026 08:40:08 +0000
Message-ID: <IA1PR11MB6467542A3FD2FE926E62C624E3F12@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
 <20260608062629.820477-2-nemesa.garg@intel.com>
 <4b66cb8f-1df5-4dc8-b32d-fe865ea48114@intel.com>
In-Reply-To: <4b66cb8f-1df5-4dc8-b32d-fe865ea48114@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SA1PR11MB6965:EE_
x-ms-office365-filtering-correlation-id: 7660516f-a536-4855-d6ae-08dedb3a2fc3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|38070700021|56012099006|3023799007|18002099003|11063799006|4143699003|22082099003;
x-microsoft-antispam-message-info: +qW4HbfVCFuMuh7mxbGUFJeu0esKIj70TaOsQQDCbf/9+BTrnAKH5M6LXNKTCjLsbkg55hvRxAEKy5uUhaR3Bu4SqYYPBYwwc6ZshGEZN4UwHCWCYh/UzYbhtT/8sPaahk3gqdQ4qdqgtSnj0bHtVukGm+q3Yd1MaQ1MRlyMHoJ4ELVhnhI4LHFiCi7e2vN/FSyj3I9iepqCLju2986UEgTT/3XdYxP5uR1OrIaPY3EzykxfPgJxhhNQEGsDS0D+TeVckIHmGdRr1Bmio8QWDI2xDb0kV7PcYavJrsgukh63RmQg08z6qUcYSF4etFED/UHG9aUjy+/DK4JWjK7fhDHpFMhapqMKTUCqP0rogbyQwtegiGKLTNC8BUuMc0qfOyJPJJg6Y14gIBHHgb+KcDdDWo46erF+/K1gJ43aYUItFiUv8TRHXVMNg/aeZ3ecIJYgVOB6fYYcehZiMEIC7rJJjEGlaU3nqZ3chUYMobROcuDByrsq3E/LijfGDGRpCRa9P5cTSzfkBTZuu+dwn5+bHDXl1WJN19z5sZNCaWJ2JxLgWZfDmrMZ6ocrGgbqSAjXKdfVF/8SiluMWOE2yMaUHjmU7OW778IG22eo+0F5X/AUTwlQ74/lJfrwookJjF9vn4pm5LaBjDkT7johSDy/AaO5Z0g+XcsAw1jcsgJ5SxjcoFxdOB6q1E4QK/tv0/GphqLkjcBSvvOESm8xrexLwBXdZwxPt7w39JFjcuI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(38070700021)(56012099006)(3023799007)(18002099003)(11063799006)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YbaNF4TKYelHYjNvQvGpYOZDOrWcriW1kd3UXPBssTlIOTPXLiMv6lVDCSe7?=
 =?us-ascii?Q?wM2Cm5e7e0tFumd3/KBpwem9JCLco4XWjh7a+8H8rkF3q149urIQSosgM30S?=
 =?us-ascii?Q?4h2o0eYEQm15oGA/67H43zAYKPuNNVANqtJ+XhsbkvCZ/QqGGAbylGa2Z4EC?=
 =?us-ascii?Q?YGWook/YU16OeK3YmFIsLJU9NP5g40aPCJjdnvF8QoJXm58CdnZK+Sn7Fg3q?=
 =?us-ascii?Q?BBxVph48Xxax5vIdUvtjNEdcrgPWYkV+KF4p0XmSLpEEjGONmYBw5u8gjFvN?=
 =?us-ascii?Q?X2QBflXjnoMx922nvXZfat/c0aTgM9y/sVfYw8gVcZPX4M2I+fKrsuymNBTk?=
 =?us-ascii?Q?Jfu328NxhCi/YSTqJ43abFxfwhjAYLyPW1m8KnqCa/sDCBNPcat7bDLy8aJo?=
 =?us-ascii?Q?MazgLb16UlWU1J0rm1itOMpOE0alPjpz8koSFSLnS46kVXS8lAN27TrclKib?=
 =?us-ascii?Q?/pzOCKE7WQYTKDwkKLXSKX2Hq3cnlaZveBba0j7wVFoIKkS6A3V9twWeVIjC?=
 =?us-ascii?Q?s5c2Sv2bQ867n4kH9Zg7naS4xZvlSkDTIkeomIMnH5/3k3NCrTX5i6OiZ5ej?=
 =?us-ascii?Q?55Q8tIfXUyp6CEcsFH2D8EdupDG6tazRc3jZGRMAbfQObGJIa7p5NgPljabe?=
 =?us-ascii?Q?cSqOdoF1XHJordg1ocqGo5bVWJRuWh/tnwtnbhOLclJC3l/9/BiDVW3k+ym5?=
 =?us-ascii?Q?fHwFZlOJnFj9lM4+EwmN8O2Ji1JYtLECRR0aCjgl+o8TBii5MuYEVmaPWAbN?=
 =?us-ascii?Q?JWP81X7P9U2wKm5b3gCEOvpyWwkxLQosh5gALGf7p9QPTsROWGKh50rjlKnh?=
 =?us-ascii?Q?imC/K6PqdcJVBQxgwjBexswfEpKrd5Uw8XRwUGj1Nj2PMsn3/rt8fXgivAwh?=
 =?us-ascii?Q?DdRvv+Nuk65f57JdhAwaB6wjZ5uWvIRrlP3Ej2lsxa3DBdlQsM5NcOnMC2fE?=
 =?us-ascii?Q?vzEFsrg/kjKcFL0qPdmW2go4Q89uBX2rHgSu1LvT+mJtlnutaRqInY8zAPFJ?=
 =?us-ascii?Q?hb/I8JwLoHFKpsuKEoF9+NVyfWHWfgdJAm+M/tVzgmCLrKLMNiTfnaQoMdKU?=
 =?us-ascii?Q?0QhUvi61HvB/vijWRBNfYgwgW3NLcWLDhd4Y2euMI30Ln5hMUh4HquFb91w9?=
 =?us-ascii?Q?26Q3UkLmM+uCeDHYZg9e3WFe8wGWR+JOViP/uN/4CeilFB4hyvfSNkewizwE?=
 =?us-ascii?Q?DBTI1lN8NGE+0Wfp7gDzGSFYXEdhcKawfsrEgR8TuGwc9LTj7NziqYIMRBUO?=
 =?us-ascii?Q?YNFO7Zmpqf+Wc+KrILgTqT9MorvwB59qG/95R+FLoQIBb7Pu+FdJ+fy5CZHu?=
 =?us-ascii?Q?Jo3CV1NJmTZw207D+rfRSVW0IwkTl49YUwdsc+rwFZ+l2C/q/r9/PByqaLIt?=
 =?us-ascii?Q?BNgcqlvsK7Csx6KeZJCx8IfB377KhvC8xTTaaNzqFtx/o+pBfod2TA379xBA?=
 =?us-ascii?Q?eJRol0EhQYQZHnhoUHv17LZmTX+Pk/L9CDcjTntkKuWvmn2pRHF6ODclhUc9?=
 =?us-ascii?Q?txs/Ti59/SER6fCHgxD9D5tTKMI08p1y74iBkhA3HRv+8JCVaVVGAaMMkLO5?=
 =?us-ascii?Q?qQafdoqbgFNcp6oOT+7sR6eGhp58nw71RCutclGdpo6uotZsEYcGlz6wI2ue?=
 =?us-ascii?Q?YPN9xx8NI9CWgwkJ41rKVCu1F0dG9DEuRr5y4Iuxqy+qcEIJ6PWjCnXjei9T?=
 =?us-ascii?Q?pP6FQhdk0NO2JFqqJPM5I8JiEU0CzcOtRXs39y3Mba11VdBx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ikFDDer06y1GhFJMr/YgpCFup/iE2CTvE/YVDvccZECWa/b8RfqlqLna15b/4fLmkhIsXVRm7KeRBfGkZn2EhhbxmlimfIb5rw2V4bvnRswpbWzn74GiYYu2ZokXvWbIK7ujze1TbATVaZaKZmDDmZxNCzjDk7LCZtBwxfOeDHRdRSq0lwBgLNtK1iJ1gR1toIasiGdOcePulQmI9/LQEVn7rrX6NRjqv+/DwgmXxkFpuBaMmEdee8a+Ll9vAbT9J9y2IAnyivLqb2h9dbkAUeAqOyOjvkV2qRok6m+Hy5OCM5CfNywRrStPuZ4o7NQCWgT5TFcSIVp+A/YnF5jgWA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7660516f-a536-4855-d6ae-08dedb3a2fc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2026 08:40:08.8821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IElvp+72Ref4O0VnTC6U/Vh1yW7ISYbMparh+mWMSe18pNwCE+5H8/QFsOT232fOiHzLc+UHGIqwwdF3iwlBrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6965
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5436770E352



> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, July 1, 2026 9:56 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit stat=
us
>=20
> Hello Nemesa,
>=20
> On 6/8/2026 11:56 AM, Nemesa Garg wrote:
> > In joiner mode, secondary cursor commits may still be running even
> > when the primary cursor commit is done. Walking the secondary pipes
> > also requires holding the secondary planes modeset locks.
> > Add intel_cursor_lock_joined_planes() to acquire modeset locks for all
> > secondary cursor planes. Check all joined cursor commit status before
> > taking the fast path. If any commit is still pending, fallback to slow
> > path.
> >
> > v2: Use intel_crtc_joined_pipe_mask(). [Ville]
> > v3: Lock secondary cursor CRTCs and planes. [sashiko]
> >
> > Assisted-by: Claude:claude-sonnet-4.6
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_cursor.c | 63 ++++++++++++++++++++=
+
> >   1 file changed, 63 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index 88384dea868b..f8b24865c93a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -13,6 +13,7 @@
> >   #include <drm/drm_vblank.h>
> >
> >   #include "intel_atomic.h"
> > +#include "intel_crtc.h"
> >   #include "intel_cursor.h"
> >   #include "intel_cursor_regs.h"
> >   #include "intel_de.h"
> > @@ -796,6 +797,58 @@ void intel_cursor_unpin_work(struct kthread_work
> *base)
> >   	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
> >   }
> >
> > +static int intel_cursor_lock_joined_planes(struct intel_display *displ=
ay,
> > +					   const struct intel_crtc_state
> *crtc_state,
> > +					   struct intel_plane *primary_plane,
> > +					   struct drm_modeset_acquire_ctx
> *ctx) {
> > +	struct intel_crtc *pipe_crtc;
> > +	int ret;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
> > +
> intel_crtc_joined_pipe_mask(crtc_state)) {
> > +		struct intel_plane *pipe_plane =3D
> > +			intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
> > +
> > +		if (pipe_plane =3D=3D primary_plane)
> > +			continue;
>=20
> ...
>=20
> > +
> > +		ret =3D drm_modeset_lock(&pipe_crtc->base.mutex, ctx);
> > +		if (ret)
> > +			return ret;
> > +
> > +		ret =3D drm_modeset_lock(&pipe_plane->base.mutex, ctx);
> > +		if (ret)
> > +			return ret;
> > +	}
> > +	return 0;
> > +}
> > +
> > +static bool
> > +intel_cursor_joiner_commits_idle(struct intel_display *display,
> > +				 const struct intel_crtc_state *crtc_state) {
> > +	struct intel_crtc *pipe_crtc;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
> > +
> intel_crtc_joined_pipe_mask(crtc_state)) {
> > +		struct intel_plane *pipe_plane;
> > +		struct intel_plane_state *pipe_plane_state;
> > +
> > +		if (pipe_crtc =3D=3D to_intel_crtc(crtc_state->uapi.crtc))
> > +			continue;
> > +
>=20
> Both the helpers have two different ways to skip the primary. I would sug=
gest,
> pick one and use it in both.
>=20
> > +		pipe_plane =3D intel_crtc_get_plane(pipe_crtc,
> PLANE_CURSOR);
> > +		pipe_plane_state =3D to_intel_plane_state(pipe_plane-
> >base.state);
> > +
> > +		if (pipe_plane_state->uapi.commit &&
> > +		    !try_wait_for_completion(&pipe_plane_state-
> >uapi.commit->hw_done))
> > +			return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >   static int
> >   intel_legacy_cursor_update(struct drm_plane *_plane,
> >   			   struct drm_crtc *_crtc,
> > @@ -842,6 +895,16 @@ intel_legacy_cursor_update(struct drm_plane
> *_plane,
> >   	    !try_wait_for_completion(&old_plane_state->uapi.commit-
> >hw_done))
> >   		goto slow;
> >
> > +	ret =3D intel_cursor_lock_joined_planes(display, crtc_state, plane, c=
tx);
> > +	if (ret =3D=3D -EDEADLK)
> > +		return ret;
> > +	if (ret)
> > +		goto slow;
> > +
> > +	/* Check all joined pipes for pending commits */
> > +	if (!intel_cursor_joiner_commits_idle(display, crtc_state))
> > +		goto slow;
> > +
>=20
> The param check right below can be a quick early bail out to the slow pat=
h.
> Better to move it above the lock so we don't grab every secondary crtc/pl=
ane
> lock just to drop straight to the slow path.
>=20
> Rather than special-casing the primary pipe in both helpers (and in two
> different ways), can we just iterate the full joined mask uniformly?
> Obviously, taking care of any special treatment that the primary pipe nee=
ds.
>=20
> =3D=3D
> Chaitanya
>=20
Hi Chaitanya,
Ack.
> >   	/*
> >   	 * If any parameters change that may affect watermarks,
> >   	 * take the slowpath. Only changing fb or position should be

