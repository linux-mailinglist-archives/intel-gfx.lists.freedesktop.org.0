Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DCAD2C6D1
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 07:17:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609F410E132;
	Fri, 16 Jan 2026 06:17:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9G150UL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D235B10E132;
 Fri, 16 Jan 2026 06:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768544253; x=1800080253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4N8E6EKJdLlw4RiEe31bPtwMwuUFgojox9qRWCpkCcc=;
 b=A9G150ULgf4MB+YmcJrxIKcoP9ZPRZqhPcVHLzwBNZzxJldirKuEhhqF
 zsaTHCXM2fRm1RuUMSHCIqRdL2D6+0uSppax5F9RJfoX+qVJwrNIYW2PY
 jRZ5fMKv7NYrPOanAUgXFczKjRJbgUFL1pmhWD9kU5OKxRx3S4LXAeG6G
 wDiI0WhNqa3fQqscRUeNZzxkra20AjEDsA5CZA5V4nEFHYxjT1dfUcNUd
 AgKKJjMRcdQz0RNJQUApD3T25eHfjQMINRndwZRV0yzCM3wZbbcOAUW+d
 0dziRDprE0WHWUNZgRRPAnXLfR0Wjxk8Ln3/V/ICkwSLoZkrKzjSCKJd9 Q==;
X-CSE-ConnectionGUID: qIrF8elZSV+jRZBQKxNPWg==
X-CSE-MsgGUID: 91+Vh6uOQX+MEYal1j19nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="73703499"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="73703499"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 22:17:32 -0800
X-CSE-ConnectionGUID: WMtayprsR3+Zdr5NPLvfzw==
X-CSE-MsgGUID: axY64ilkR4KyD8D15ATmUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="205578086"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2026 22:17:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 22:17:31 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 15 Jan 2026 22:17:31 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.14) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 15 Jan 2026 22:17:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FXoJE8ytusCkedIpiBAmnTEblbrko9ZSMm36wrTrv7n1B7hgAdwPLMIhedOL44XfqCvW7Xl87NnxCve7yAPsueML9tlU3Augrwogfm/5oa8shoM3/t3lAbeE+l1AK7hTzpaxDCrytVH4P8++vbQFrXYJ1wge0W0dg/zwCN7fu//GJgphkGkeQ78OZlyq5JDSjLO1XWq3gH6rFjQHe9KW2t1+HfwbGx0OGW1TQ2qpIi0ICA9F7aHz1WoKg2Jw5+SAe6zoSSKJJuNpzArR6J0ZxTHCw9OIA0+bpzfJ/c/HqXWnX0lK3Aqh1LM6CdpwskoNx6uYbSApNF7VQL65lZ1HtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nycVY7p5MS1Ew8qXBjXqtP/69UUJBrYVyNHkKmv9UK8=;
 b=XdV26+buPbnitZK4DoGX8U/T3QmkInOyUk3MJ0jSIuZAmxsmm1geWZ55GzJ6u0LJqnV/xFV1mUCYOKSAoYgyFawWiP15sx45VupgKlzfYzlv6mgAL48/GoXlrfp/H+raEXRqJsoAh0ASEiOYdZQQR9dZGCZyDVMl07mrhaJoxUAAQ6a3BGy8gbJzYU93fLnZw2Bw8tZPpuyRuKHbsUkng9C0xA+PK0cHuqSMu+RB9LOD8+HjDiz9hi3ByUYbEK+pdakR0MbFPQ1MOhZzKXxTOROvUdl/9ZE4RoqeC5Dj0ZQAEyd7bprlumRc0ImasbjPIhqVDqq7isr42jQOMI9Z3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB6808.namprd11.prod.outlook.com
 (2603:10b6:806:24f::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.6; Fri, 16 Jan
 2026 06:17:23 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 06:17:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v3 00/15] drm/i915/pll: Verify pll dividers and remove
 redundant .clock member
Thread-Topic: [PATCH v3 00/15] drm/i915/pll: Verify pll dividers and remove
 redundant .clock member
Thread-Index: AQHchfO5T/Zu0V90fEqXqoaQQE48yrVUU0YA
Date: Fri, 16 Jan 2026 06:17:23 +0000
Message-ID: <DM3PPF208195D8D01D2E895A42C64591FEFE38DA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260115075101.2214842-1-mika.kahola@intel.com>
In-Reply-To: <20260115075101.2214842-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB6808:EE_
x-ms-office365-filtering-correlation-id: fe63f408-8445-4b6e-3d1b-08de54c6e9d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?IlffKJ47WLkpOkfN6dDQMMnXbhQILnWZr4c79oK3vhIdpH6XvYSBu5Ykvhxw?=
 =?us-ascii?Q?CFOHpboiVt3drVMWWRKyPlWQEEQETR2U4XxsmpSwB8EmTs2inhORWCcLPMEn?=
 =?us-ascii?Q?ErTcvM4/RPryMw/nhIpe8d7ODHfqa7UaVkOL7CVF54ak4N0KFNXXLJ4luey4?=
 =?us-ascii?Q?8nCq7bhceeF8APHu8ZgHH98GbfIYt5JbWwrWqx1fpGbySBxzsNfOwsNUT08A?=
 =?us-ascii?Q?BKWYjleWQsJe4vs9IgXVa4Gfj1OY+Miy2tmUw7ZZsBERFaORU3SZCmXXml8n?=
 =?us-ascii?Q?GhzgN6JqHNKt1Lur5MlUbHttJGzZXKROCAkuP6e27na33QEmY7Ko+VmAGl+D?=
 =?us-ascii?Q?i/eRCv9726s81nWzT3kuKboZN6pH0ccWuZi0vJPsdEykMKMh0L1byVnjISRN?=
 =?us-ascii?Q?HTRWOL11biR06vj523JFqWfvfvt/Yv3Zcw3/aqG/kXDGRCUZu4yUuwXyQERK?=
 =?us-ascii?Q?ew7zCHQ7lUpbnxoPZytwcP3XzpDP+wSUmIPU/mAI07P0AvlUAQQwBbIyVOBr?=
 =?us-ascii?Q?YgZoQNNiFvL25/R7Zx6O8sBpVCRcphX8snk0s2EAVsgsgJKQiHsRZIT/frD9?=
 =?us-ascii?Q?uvN8wtv5G1uds3gNtqt9F5lScC80+hX4HB/kF6y/H1Fu10jNJLrX+qx8jnhG?=
 =?us-ascii?Q?0/vcQpLztyHGdHrw1NmKa/O0TOn3YGBL8jg4RTQvYx4U+WV7vTnUrMCsv+h4?=
 =?us-ascii?Q?l2GshKbFYbe3RSu9BiOaWtXUOXw2iy9FjMbJK9X6VInIkb6BJDfq1lWg+O+g?=
 =?us-ascii?Q?28DelHy5j6Aif4fqVVctARqs7uJjhzr8GDh03ThZGK7jf35e16v6RA6HnToI?=
 =?us-ascii?Q?9eEJ2yO6L0bqvQc+ULl01Wue1g9KBnjEvHIrcS819eqYIBchEhGarbMyaltx?=
 =?us-ascii?Q?L6/dAE/U4jbJ3G+8xjMA8Dnk53xYNbiHdJ8KJoDA6a+fTWiLLtXmgl3kLPCY?=
 =?us-ascii?Q?o/0Vf5Zq85Ncwrv/iixHhQKa3p0zZ0kYSkfRPN67ZrP9lQRAhYCjKeE4VdMW?=
 =?us-ascii?Q?fv4dviLm99gth2OLQJkNlEdzZAjD9+DnF+GLobC9yr9rfwI7FvY7HmkPJsFZ?=
 =?us-ascii?Q?dWnJrv9k7trxWvT1AwcQQbn+Mn5d1S8PXLKN4a6h9fVuPbfKPTFjZjvPKdPB?=
 =?us-ascii?Q?8OeUbjQEK5LISOxWrOrYdWK5u9GEmP9pNA9nUihg3Z6+ISsyAyIwhAS/BfIt?=
 =?us-ascii?Q?g956bGx0oKFgTM8BOivUUbpXmCl7xr0Do6GW4Y45vlKCaDiXLPVRmsJzd7Zn?=
 =?us-ascii?Q?nMwm7sIkV2sIgfrKggWYXtnPVeItEZoQG+ku6fFJAzDlMM2KhkK7xb2zOFDB?=
 =?us-ascii?Q?6Q+Usq8CB2KWpWRqOugu9OMUMB22ZEnsGy15r3j6s0iYREAGhwoseEECkOPI?=
 =?us-ascii?Q?Cb8VOXetiQF3WU7ZRtL3Snaiub7C879hSIyMQbDx3kMj/Ip9Btx4MNG4tLS1?=
 =?us-ascii?Q?alaAXhz8dSrD6TJEducfv6uoPCO/XGXw44z4674pS9lZ1fXLpk+5MwqiPkTz?=
 =?us-ascii?Q?7JQCjt0rAIHn1VKZsQgi/geu4oxMPTo/8MRgPDWbeNzayvU/ysoLrWMRxamh?=
 =?us-ascii?Q?PsTQMcFtW7gR/eyAFKhI+Sg/u6R3jsulb0iD11hrzEHexxVSXf9FZBkvbw51?=
 =?us-ascii?Q?rc4nUDw1FxtlhO395OOGM5A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wS4ItU5CD5uJaCpxK0h0qj84G1qowPsPHNc71lIHtyYizFtrXyy9OfxVHXf9?=
 =?us-ascii?Q?GS41k++1bPYsFFMoyam9J+KiqWqbPbfFsDafUE5ZZ1Dz+3kaNCZgbirxHIce?=
 =?us-ascii?Q?vzwfb9as5DvCNP/kam003leKlGvlkBhPG35Un6ZNgLkHP7APwGtuN2MD/o9h?=
 =?us-ascii?Q?t0hIHZWiydnatFEoIiLJpXlAd14Vn7KNJPpLuXu9qIW2WwlR5yTALxm9rXw0?=
 =?us-ascii?Q?zNA+XJ0+seYSaUw4v525wf4Gbg/pTaFr5C2bEhEfceUkkgELKu8W0TRW/rE1?=
 =?us-ascii?Q?mxpwmlQEQog6QPQjzWvVf8AoRhNx3WUBoKM2QciQnHXy1DtNtbZ7fqHjU0qR?=
 =?us-ascii?Q?jTg8/mAgtogUj5aLB49rMeJlt44yEgIU31gm/AZlbU8CqXvM9ghZH4smbreZ?=
 =?us-ascii?Q?q1/PEkIhydZOPIia5BfJ9t4RmPl5McL9rukuM2n0jS/dvMB0dWbdgldthwzp?=
 =?us-ascii?Q?hX9IybKIYHPDUaACDIdkHsMTfALnmKiq73ElQbf5m/9n9WdWrn4uXDAdtsBF?=
 =?us-ascii?Q?vFwJo+kN6MYdLnBtOL7xUHwjeE7Nvz+FLG8nCcJk0HcQ2Sx30uqyPN1Y1nk3?=
 =?us-ascii?Q?jZpcyYWACyKMGI6yaaBvxzaZTcD5J+21Iu2YNOGfjf/49nRtDk7T5AoT2IYn?=
 =?us-ascii?Q?OFwre81YL0w/g9qfFJp7bHp/TcF78EGR59sZ/cOk3+aKKL6WdFiCm34xX1Ak?=
 =?us-ascii?Q?Wb7/MUh67t0chQGU6Q35Nx+ycr2XeE4NZAZTKPhuN3YHQhNGvMm+HcQtKUH5?=
 =?us-ascii?Q?4LS2LCQHtnQKlYCy32HD7grIwJBMnLwl36R90peMHJbcAChDRExNgzo2+HE3?=
 =?us-ascii?Q?bdnfeesd0NRCAOPg1Qn3b97wOgzS6ul61xoaTYnTHUDiXa2WAMXcrXOKe0Fx?=
 =?us-ascii?Q?+M3duacr5oEGzoA72grELHOYBeZKPR7dsH1xrWxeBgXDl8DkuvKdAmh3mmGf?=
 =?us-ascii?Q?AXrE3M8J+XnkiXb0IfcoPh3HEk7yp+V0tBlQMqKqNMFiQQRllbXQWkBwcWhM?=
 =?us-ascii?Q?TpCQS3hFH300CkdHDYYr3yErkZekWbdMRjT2yOZDN7BY1vrxiB/fMePmrbZM?=
 =?us-ascii?Q?B3Z8ziq12dGTcgyC6+W0H948NYFBGcghivUhYtXNtoFxqxspKZFuOWYRPbj1?=
 =?us-ascii?Q?mGr1epDWwFjv+wTVfaQIzBypQhpi3w1eYR80kjNaTUEyJFY8f6lsredMDlZQ?=
 =?us-ascii?Q?9zd7cSPjvKKFCdNFEx3MRHSLU1TQe8x4iFsUJZYcVrCT7ZXSX9JpUYrj0b7y?=
 =?us-ascii?Q?2X90QuKevC3pTXs8kj4PZ2v8QR1welMSBK8iPPDtpmUqdmbd6Ij8+HsUMlir?=
 =?us-ascii?Q?B8HagZHtEHkJPmPRHXC/NxkiyWmiuaUWuoTvpwPm2fXzf3Br3IYCCIDw3gCx?=
 =?us-ascii?Q?tb0EzIfxanoSn4xK+eFLQmxA+TXdpmMJhaixmpkyTRGchZTzz0+mpuoI7aOV?=
 =?us-ascii?Q?Q+L/m+XmMDdiafL5ho7aiFZyb9+6XuY0NteUfIKYkhpg9fiJYus9QFOEFn6p?=
 =?us-ascii?Q?GjB/LnBJcKgjZOGXV7XSDrFoOhElaJiv0h7O6lxxuAzuoAvJ2PJKS7Dt5gYe?=
 =?us-ascii?Q?fmanRllpMp46LT2es1zvththJZHoXwwAO/e3866d4So7E3kzxPDHMT+RR1wZ?=
 =?us-ascii?Q?M7DsyZJZ2CjGUc7V3ii2uHGeBwEW67OoQ9Jqv68TGkf/r2R9IJlVQrHgu6w9?=
 =?us-ascii?Q?w6JSZFcIJy8+U1Hu59ZYXzdWG7e9/nUIymlRcUzi4cNr0S7Aw7CCxdZPmchL?=
 =?us-ascii?Q?djJY7o7ulQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe63f408-8445-4b6e-3d1b-08de54c6e9d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 06:17:23.5352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qkCz+dAJoq8roG9TVon4T8VmPsg1xWUb+gJSdSkg3RBn2VX5vRXI5J/y6Moeuiu/qmjAnSebkpqclPz48+vs5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6808
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

> Subject: [PATCH v3 00/15] drm/i915/pll: Verify pll dividers and remove
> redundant .clock member
>=20
> This is v2 of [1], with the updates on commit messages and fuzzy clock ch=
eck.
>=20
> [1] https://lore.kernel.org/intel-xe/20251217151955.1690202-1-
> mika.kahola@intel.com/
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>


Some checkpatch errors are seen in this that can and should be solved.
Other Checkpatch warning  seem unavoidable.

#102: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:2340:
+        return abs(clock1 - clock2) <=3D 1;$

-:102: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#102: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:2340:
+        return abs(clock1 - clock2) <=3D 1;$

total: 1 errors, 1 warnings, 0 checks, 98 lines checked
53143dadc14d drm/i915/cx0: Fix HDMI FRL clock rates
392ebb6424e0 drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates during=
 programming
0f3fd13cc6a7 drm/i915/cx0: Verify C10/C20 pll dividers
-:70: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#70: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3878:
+	intel_c10pll_verify_clock(display, pll_params->clock_rate, pll_params->na=
me, pll_params->c10, true);

-:77: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3885:
+	intel_c10pll_verify_clock(display, pll_params->clock_rate, pll_params->na=
me, &pll_state, false);

-:116: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3924:
+	intel_c20pll_verify_clock(display, pll_params->clock_rate, pll_params->na=
me, pll_params->c20, true);

-:124: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3932:
+	intel_c20pll_verify_clock(display, pll_params->clock_rate, pll_params->na=
me, &pll_state, false);

total: 0 errors, 4 warnings, 0 checks, 152 lines checked
f912da10fb8c drm/i915/lt_phy: Add verification for lt phy pll dividers
-:86: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#86: FILE: drivers/gpu/drm/i915/display/intel_lt_phy.c:2377:
+	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params=
->name, pll_params->state, true);

-:94: WARNING:LONG_LINE: line length of 108 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_lt_phy.c:2385:
+	intel_lt_phy_pll_verify_clock(display, pll_params->clock_rate, pll_params=
->name, &pll_state, false);

Regards,
Suraj Kandpal

>=20
> Mika Kahola (15):
>   drm/i915/cx0: Move C10 port clock calculation
>   drm/i915/cx0: Move C20 port clock calculation
>   drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS pll divider
>     calculation
>   drm/i915/lt_phy: Drop LT PHY crtc_state for port calculation
>   drm/i915/cx0: Drop encoder from port clock calculation
>   drm/i915/cx0: Create macro around PLL tables
>   drm/i915/lt_phy: Create macro for LT PHY PLL state
>   drm/i915/display: Add helper function for fuzzy clock check
>   drm/i915/cx0: Fix HDMI FRL clock rates
>   drm/i915/cx0: Add a fuzzy check for DP/HDMI clock rates during
>     programming
>   drm/i915/cx0: Verify C10/C20 pll dividers
>   drm/i915/lt_phy: Add verification for lt phy pll dividers
>   drm/i915/cx0: Drop C20 25.175 MHz rate
>   drm/i915/lt_phy: Drop 27.2 MHz rate
>   drm/i915/display: Remove .clock member from eDP/DP/HDMI pll tables
>=20
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 727 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   8 +-
>  drivers/gpu/drm/i915/display/intel_dpll.h     |   1 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  11 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   3 -
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  19 +-
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 239 +++---
>  drivers/gpu/drm/i915/display/intel_lt_phy.h   |   5 +-
>  .../drm/i915/display/intel_snps_hdmi_pll.c    |   2 -
>  11 files changed, 553 insertions(+), 467 deletions(-)
>=20
> --
> 2.43.0

