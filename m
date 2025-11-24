Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC341C7EE07
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 04:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A766710E1C2;
	Mon, 24 Nov 2025 03:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OdLqri0d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA1210E1BF;
 Mon, 24 Nov 2025 03:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763953890; x=1795489890;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wP1OyHkoX6V93sTUAgRTiewTVKDOtMOdkt2s5QMKdJ0=;
 b=OdLqri0dYBQHfccpw7aBLoIncSozSRkE99bzGBZgK49L0UPZTf+dJ908
 nlgXifUsyKM/OnJPHHJwUwxQahStatfDBoOr3KBj7Iyvy3fJ2nz0CL2ls
 lrPzUzxXwqvE6wM+jA59wOx/ioLaMbpfsEIOPrUgwNy3pH3wW9AJlDiET
 pPO+rIlSdl9kKZ5m7at9FuRI+VixX5CkuOEWWwUyHz4Sj227HQd7I4c77
 cJ8jgvHMJM6t1kDA7bWQEisFlCJio+Tke8QOY7hW6zp87EnnM1eA8MGJy
 IYKQCFDN1BrS8iGxU7Ldm4E3GDmKkr+Qtk/osrJVqz8bu0PgG3QRdmGTQ A==;
X-CSE-ConnectionGUID: Kh3T5vrYTXWp4VkaQC5XDg==
X-CSE-MsgGUID: vZddLCsXT6+bJnCfwcb6Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="91434844"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="91434844"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 19:11:29 -0800
X-CSE-ConnectionGUID: 4R7oW3YrTMiywR9+VDl+YA==
X-CSE-MsgGUID: ero2d+1pQMqPHmwYVhj41A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="222857878"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2025 19:11:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 23 Nov 2025 19:11:28 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 23 Nov 2025 19:11:28 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.15) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 23 Nov 2025 19:11:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oyfB+zGVYv0iCHT4vzPj/irfnvdGcWx2P5x0KXCLvL7QdpzYqwmTpoBW+p1GV34WDqU4M6XBCE7ztEFKj26WspONehGQsgvTJDk941JI/2J+1cq5ECV4AyXnXjbHWjlwtwtCLeHHv8aQ1FtCkow2ubCFTPa1wSc+Fi66VcPjk+VmHLeyTza5Ady7RxwYN+AvBW8VLfTyYTl/ybJ2aBS+Pujgy0DFCyjlPW2/+SFLpCYyr0bquxpQdWbAjYfChAguG+BHRZw9ed7Tm6OyAbnwus0BPk3m2ka+Yj0/XL1kIwvi8nBzWEP5JVVxXkumuUmT9Al9BFZ3U3uCRsu2pjJQmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V0xTGYO/BXgNXB+fvNDHfqR/9khQRVYwjbYc8qPR1OE=;
 b=fumxhVOjx/tbDLc9Fz/KinSuMPrKWhyZB6ZJye6L6TJtCh+Ph86ybSdbUxD+iKF6fogy2hSUrtClprmO+fAWAbNAIO3aY5/FxDLniHF41lkIGKrlM1o+QqQnzgUNai+v4q2nyZExcSljm1stOPbBZ+XcNlW3aRGYfSeGxpKggpHaiwM5KDM4EyqeB+YujJs2mM1+ucfZjX1RH3Ttym6lygKbBXmZwKBuqOpsL9Y2GEdSPKkksMbbSf7PC18hNd5hJNiIQcjkpcsUMw2j7SmqYZyIZrsYvHEWqCYblolhmTMg12tVhA+krKDBThfoiZdXll8otYl2pcXad9UsRiDLkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA4PR11MB9204.namprd11.prod.outlook.com
 (2603:10b6:208:56d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.16; Mon, 24 Nov
 2025 03:11:26 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 03:11:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
Thread-Topic: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
Thread-Index: AQHcVTntj0a4ZJXGikuKHaL2iEOa3bT+OY2AgAL74FA=
Date: Mon, 24 Nov 2025 03:11:25 +0000
Message-ID: <DM3PPF208195D8DE9028FAB536F6F68CF6EE3D0A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251114072712.161982-1-ankit.k.nautiyal@intel.com>
 <20251122053651.759389-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251122053651.759389-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA4PR11MB9204:EE_
x-ms-office365-filtering-correlation-id: b4a9e10b-0de1-4683-9f67-08de2b07276e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?SbDdqhpmVUiEbYmRU25CLkVYMYqWCMoCSS4SMFvsP+fTtcQM75tvzF/rmn1r?=
 =?us-ascii?Q?rnpwjg7PcWNDrJHDGuyB4LqX7bNyE4hq5/PiPUvoPi3UXdQ5gZlmuTPIXk2H?=
 =?us-ascii?Q?H2QBe8pQWtVCDaJqOviD1rbFDoNycyKgbdOgbHmGDNfCFpX5x7qCIksAO6xa?=
 =?us-ascii?Q?/MUBrl3gVgSviW06lCgjWeYzwhF/QVon20LIGSDJ+ye/8kHZg3yhnZNn6C7W?=
 =?us-ascii?Q?YRciU9puCKRXsACHoHnoNbAR/qDRV0VK8dLDoBTzG9xiDjYedOSB/7x/d6x6?=
 =?us-ascii?Q?Zd4+FHTOoENHbWtuLQImukU5sJVIcTKbLvwYclEl00yWhX5SuiI6g7TKHfxq?=
 =?us-ascii?Q?4K8OSUKlYZp+GambiLYfTJnHl5YJwboPWFPVSDJTOzKpsKbarVkp9gm68kGN?=
 =?us-ascii?Q?slzwiWrrSZrb7fxiC7jQ2KaEl7CJLO0FxYqGUhXooR6gxeNeU0/Iu8J1ajTy?=
 =?us-ascii?Q?2yxAP+seLwzmbpT67Jhd6T5CGMcznf46Ls+OkfPgNwEf/Ped9dTa5vJXQMEP?=
 =?us-ascii?Q?vLAZ8FhFLQzMjigxnN4MSsuOWkGsnZMN4NTIMhT3USZxYUbUXlpfcI90d8jK?=
 =?us-ascii?Q?grzdpjPNyiG219cf7RuYMxRv0REO1KC7cuNEbhArn1MdCoB8La1EW7xwG2DB?=
 =?us-ascii?Q?O/ssptMi3HIBJvxLMXSp5gl/2mqeKc8QY/TF4i/BEr8bqQB1fAG9HKWi/wil?=
 =?us-ascii?Q?yHOtoT8G1v3JJzk2/nsX8zuwtyCKc+75RHIJ/Z2amuVXUsn9r5agrMG0vpBd?=
 =?us-ascii?Q?T3qas4zihAsmuN3GbzWhcpYjzgYzxqBAKe+NuHhDZ7cM9owpVZgR9fPMZMhY?=
 =?us-ascii?Q?aGUlHARJVstSckJyUjH2FrYANb0F78MI4Xo/C67ax9TQzHyVk/Pw7BmaxGRh?=
 =?us-ascii?Q?DejNtJ35VTEEL8WWcM8VoP2Q4FUGUAbD04ugq5Vp8kfR7YZiCDQzr8cTY9YK?=
 =?us-ascii?Q?AZCsMnpe6areOMjfMpPiciWQKP7ktSBN8uzpZgGFQat1Ob5KHbdQGULbvieW?=
 =?us-ascii?Q?dx0MYkdrFq9CPUzBMlnzB9gLnPbfJ1Jkb7Vujj9J/pBanQUjBSR2yRKItF2s?=
 =?us-ascii?Q?qogpaFKspJu1cIE8sOgp/PYvfEuKGF5hn/oFjhqlthDEaFsIrZk8qiIakgA+?=
 =?us-ascii?Q?OxFNEcamNOveREcUFHJsyRf/8JxJ4ijFCKHpyPlFlkwyBTqBWOUYIlmxMxFG?=
 =?us-ascii?Q?xdbRZ6zDU7f3R5LBDdJByLtRyHEikCWorMeg39qS8TdRx7+38bdcStr38tAR?=
 =?us-ascii?Q?nUzRhlABRl1sXoIbwH1MvvOea1wri/BkXPez0yL8eJs45n+LtJ6X/l5yWlqi?=
 =?us-ascii?Q?RE3HMyqPc6+VRtExdIo927HK6+Y7rDWdfjvZt2vmmkvjC0xej+qyrOUprTCV?=
 =?us-ascii?Q?UiuHRDQyJ8FAZDMQo+oeTNrBm1LKhoNOZsMYGB+TDlNoAzYjgErwDkdFl2Tb?=
 =?us-ascii?Q?frgR9q6yx6RrV761SOq/GlIa/aqmEz19+zSVsxAFn6erpM67GiENM5CMWhGv?=
 =?us-ascii?Q?rQ1BV0o+afuolVE26hriBdu/K6JdBgS+Zy70?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?I0JZ9q09IsRFM4VOEyetsEDaT2FSnckm39P8M3EQb5eSgaHE8R1buPIOBMTH?=
 =?us-ascii?Q?cCLaF6t87De/O+2jqZXa7pDJIYmxdmrR5oJT/bb2os0HAAiyAmoc3JP7r0FY?=
 =?us-ascii?Q?N6ZJ6CaTbZM58ecCPnZAdGMVcUV3FApBg59lNqS/FCX8DnBu8jm2TubI3u+/?=
 =?us-ascii?Q?/CFPV5t40jCapzSW+E5rcjKpErXKWT1FQvBO0W6BvJzzb4WVv2xPF4rPHklj?=
 =?us-ascii?Q?bOFi9JFZpmnv8skOoLyCK+Qa/xOazQAlJyt6FN9SQ8lkpXH0mVwuwoWXIOSG?=
 =?us-ascii?Q?WczUxv7vpAe7BoFbglryWZ0TAxA+51IecnqiWp0sD3prFX4/kWCtpHV/zw2w?=
 =?us-ascii?Q?REgOPQWoeMDEyKVtDcWmumEves0qIAAnOg5lFnqxXU7gipthmjNEqUG2Q75+?=
 =?us-ascii?Q?KtwvU8iOsfyIiAfFoBWXs2XJLlnOwwOu/Fs1Q49fbycZh5AqWQllwP9Lw3Cw?=
 =?us-ascii?Q?Ag8X2dw1ZB626dxGwUQegzTPrh9bRkP9vitpEeao88WQ4u6bfzGqcnzSoQoX?=
 =?us-ascii?Q?2kbNCZKqL1EtcxbHoNPN8iU9T1hICnPunHt6E4dEKpoatTA6kfE9hsp0AjPy?=
 =?us-ascii?Q?AoqHb8zScEYRyGfGNe/3aFMQj4ZgedH2zGohqQdLOIIkVi4pqA/A6SL+VwCB?=
 =?us-ascii?Q?VlBm6pHeTuQEGM2fc/Z8QzcLzk3MYD+Bq8U9G9sc5/aUNV7tkturnUkdcSNn?=
 =?us-ascii?Q?igybiEy/1UB+PbmGMnHiy+K1jyBeyNYac4K5qm8ka3TJOKGhJsUCXwo1Q+4g?=
 =?us-ascii?Q?Z2iy15FhNRgbp6C0Gu/zUHT198TYjfMmGdb0aewL4Y75SFsrits/lLxZ2ZkU?=
 =?us-ascii?Q?dh7UDksd4EI7jJjUYj3gBZnEffbJI6r4Zfv5zRHq7A73braF+ODvJ/DlekZ+?=
 =?us-ascii?Q?SN3RPXClgyER0vfjHaOb2YwMlwjZQtD81PsK8TLfP7nlQOdZRqu+7//stHlS?=
 =?us-ascii?Q?DTCVQE+3IU6DoFSYiibO2KClGn/UUXldn56H49jH63qbKtVR8zzvJMeEP2Yr?=
 =?us-ascii?Q?niMN03DPF2+HdYNZ6/0kIW+0dMZqxuO+XqodvVgbiMW91IyLSQcLXrUXQOuC?=
 =?us-ascii?Q?Owqo8lR0hv2fHvT9bgSkiJXM9qpJ/Nm5+ltt3Kc6xLa3V4yp+5K4Xu1UTbbv?=
 =?us-ascii?Q?nIDJO3vekuVWF29oue8OJPhiwxaJoUbtw8uUzuZCaRKxOrEU5PSnfbGfGlye?=
 =?us-ascii?Q?rrsQT4MVO6Y8o7ppX3W1KnKuGw6KXNwF0JGpTSQQcMTFVLoMHiidSY3SPf4t?=
 =?us-ascii?Q?+0c3SRzqYIT162u7CIQfOQq7e9ch+4cQAdwh/fsVjqJQTOrudmTry4w2sCPK?=
 =?us-ascii?Q?h4naEMuq5LayzURrAoLaNZcp5lxzCS2mgfuiUqGieD4uubWKrxrTouiimNhy?=
 =?us-ascii?Q?f8UpPOmWJa8BHftTo3ek+ajNPg6Vha1VL5E6+k4gmtsabWEE9X6BcRLEuBiy?=
 =?us-ascii?Q?JjbgzbSCARQGc0VY8cxR8AAEwXv7lLWlHpu3L886YC1j6oEnfZfOIF6wO4Rx?=
 =?us-ascii?Q?yxPlE/nFQFuWBoeQscW1lAAyRQ3UP1J1Jln6CIuhm6qiDGkQgpdk/Nefj1uu?=
 =?us-ascii?Q?ReSq7AJdNhmlrAQiok0zBb3s/tWVZG6PnK7XyEnR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4a9e10b-0de1-4683-9f67-08de2b07276e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2025 03:11:25.9387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Ct8CwaUOynJnEvkFxTV/0LrkafeKIYhC7sjeNr9RaBl3Wg7LQY851mYTfwB6oeM0F/z1tzMUny7mXoiuufHxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9204
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



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Saturday, November 22, 2025 11:07 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH] drm/i915/dp: Restrict max source rate for WCL to HBR3
>=20
> WCL supports a maximum of HBR3 8.1 Gbps for both eDP/DP.
> Limit the max source rate to HBR3 for WCL.
>=20
> v2: Move the check inside mtl_max_source_rate(). (Suraj)
>=20
> Bspec:74286
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0ec82fcbcf48..fe6f3afa0715 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -520,7 +520,8 @@ static int mtl_max_source_rate(struct intel_dp
> *intel_dp)
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>=20
> -	if (intel_encoder_is_c10phy(encoder))
> +	if (intel_encoder_is_c10phy(encoder) ||
> +	    display->platform.pantherlake_wildcatlake)
>  		return 810000;
>=20
>  	if (DISPLAY_VERx100(display) =3D=3D 1401)
> --
> 2.45.2

