Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGJQAKwMnWnLMgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:27:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D091018102B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:27:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9511310E483;
	Tue, 24 Feb 2026 02:27:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VU5pzM1+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF76010E481;
 Tue, 24 Feb 2026 02:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771900071; x=1803436071;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K1n/sLLXltvCQMA7eNsfHhIWMqoPJeLX10ogUM5xEuQ=;
 b=VU5pzM1++l6TNd+8/aJ6irxBZdXC8N14bvBXFscMmIJKmVZcCSFfO+jw
 oupJAZMhP71RqALkxinwpKW8WAYPejzoO2qyVs7Pz7VL0u7mC0HzmN9yh
 zrWRWV8366VO8pIKWdruY3i/wBZOeLoRLAUdCAlFkanjpQvWo+mzA5wRu
 18yZHLsMt5QvbdFW+AKBi+ZULO08SoivfPgf65Yvy08hBge4j05Sory9N
 FTnzbLNRvM1EDGTl8Zu+u34ia9bQ5VxGVQ11qof+rqUTjb7GLDTdvgVxc
 ACWmQ2vJRxHYPIriOZhSee+NLLp4O6VNLnXSv2BP+kVAqVj/8VJ3gDQai g==;
X-CSE-ConnectionGUID: 0H+1NDMxQeqN/Dk5cBTEHA==
X-CSE-MsgGUID: 1kI/7F3RR+uftm1xEf/G/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="98371174"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="98371174"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:27:50 -0800
X-CSE-ConnectionGUID: Tpwa36cdTl6IPxmwH597Ug==
X-CSE-MsgGUID: vOR2IQTER1SknoWhCRnRAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214132683"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:27:49 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:27:49 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:27:49 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:27:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WyJ085otxZ/c++Q25sv4fBhbALSvHEsZMWdXoLF3FhHnVrPxoEUs5qfvbq6P67jZnwdFy6X2VnNMs355N7yudEmlwpzNx87aWQxuy56BPz/oabYT/F/yblKlKF4Ld5XIcGj8XsSHuvnOgqTVr2Lk3Obj+HWy1SPaP6BC9diYqJi/76fB9BTkO4IvQYSqGIV/M+tQlm2ESQOP4ew0Qd6I7r6GPQ10Wyj/ANAvGiMHTEOV6fVVhdywCLKsyiOITQAAjCx3eaQ2OGe8oNgvYRsaD75bf32u4wvJyxKUcjGdWRRPZPqJZ6m6FBOuxyj6bHyyd/A0aXpHs/n03rgOVsreYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CXQd7dq1RPSomq+9JL/+DGyHkngYeFBgMGLZs3o+70w=;
 b=eYMgPYzrP9ZxUJj7i1HkzeG78N7to2/2WIioFFfF25kz1UJ3SXE7sT+JhfIzVbBifFIqf0eVtUQtTGOH4/sxgp0aDgi4IblqYP3DZ0zVLEDa+47HICBFEeA3hIFFH6IPSQ/jIPduFuTaOQOXrPtDzK8xrPMOrvRvx46SgZ7FnmuUPF7k7kqIeOHnkgAwY5UddtyFPCwv3RNlUe3q3qXZKXs7vOTw+DLH+mtEGX2xpOwNwtZy2Cv41dpXxhf29/IW4biY0zUexbrhe0dWroT/5izKc9pl+h1OK0oYOcaBVpunE6nim3GuqcoP0j/ATJBO9VuTMYBsbiuxLYjll/4Pfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CO1PR11MB5124.namprd11.prod.outlook.com (2603:10b6:303:92::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 02:27:46 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:27:46 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
Thread-Topic: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
Thread-Index: AQHcoXp0lr3r55eRKUm2bCG0MtCDVLWQhUGAgAChmUA=
Date: Tue, 24 Feb 2026 02:27:46 +0000
Message-ID: <IA0PR11MB730733656127F5334E4B01F3BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219083219.32256-1-arun.r.murthy@intel.com>
 <5a99ff903414cc76845a54be0b85c394cb2db7cf@intel.com>
In-Reply-To: <5a99ff903414cc76845a54be0b85c394cb2db7cf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CO1PR11MB5124:EE_
x-ms-office365-filtering-correlation-id: 6cfd9af3-9ac2-45a4-6044-08de734c4bed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?w8yv1YGT4xN0l0utbZUL5i5I7nxylUQbIp6L2Kxlz4T3wX6HjIeQbmeQDK58?=
 =?us-ascii?Q?+Ib4xRoaKHvF1PI69QoCXwoSgtF7z5U5h45VwweXN5EWnqdvkU+3zCMdHRu3?=
 =?us-ascii?Q?rxTVrbysHPJOIBtt2UoO1stAVyF3RLehniwMuhyQF059IOjuBGJCHmSO+NoD?=
 =?us-ascii?Q?j/Vblxi8DejLjHQctYOPXQNoyjWv+nObSI1k3WznerPBXObx3ItTjT3FtZ3S?=
 =?us-ascii?Q?Tm5Zb3+EZGOjxW1rAoPxTPlWqJ1QMsebM+qM9eKfgNtQ93rhabjy7+vTz5Xm?=
 =?us-ascii?Q?UYSix3S+Rg6p6niJogZE5Mdljbr9OwacxxxwtnKbSV7HVHY52PpJ/pdODTkg?=
 =?us-ascii?Q?7eaBbmmijZBOT3xwqkzUY5eMqkhFHwQKlbGAh2tMn9mmw8U6bAJ1/dKKR3nM?=
 =?us-ascii?Q?6lT3Ssmf80TLi6AhjWgfmqiQN9jDYoSN9jOO0vERYNI6Ikj8HVyXrflCpPe3?=
 =?us-ascii?Q?dtG8bSUg8ImjZCl7+/rv3brGVtWZonm0VcUhffRLlh1RurpZknAbFAeGIBpN?=
 =?us-ascii?Q?PPeN6yKqT+jwjN3vx5js7qTDbzZYgdgHAPWTiNQqLwuoqJLb1tXslO79fSoS?=
 =?us-ascii?Q?LixjFHY+qKgQVqOoqaBHPMrWxwYfF0qQ7n3gEIFHYZaTfPcXAqVB17GT3S3D?=
 =?us-ascii?Q?cKywPAI6aP/7xrN5w8swxTKE3f+DKmb/eRP7sPAcsltUShFlhJMtrG9J6T92?=
 =?us-ascii?Q?Qnm9MsDWlLcQjIuTwTby0Esq6jGB7URyhLy9q1BVZZ5pY5VVcCpRnDjSWHXt?=
 =?us-ascii?Q?iMYDlmRbAMz5SQfCq5fjel8YYXXH2xWeQn6GVnqZt6ReZuhEr1pwtLYU9Jj6?=
 =?us-ascii?Q?LIbnFvm9QzNPvwWrQignVx9T3UA7Ben+EnsVvfIQHz7jNFpMiTm3SlpM58cx?=
 =?us-ascii?Q?CdGv4ynYkrKivhSRZYXgI60n1nxcJ0QrJY/uS9gFxgTd6gefnMnyFx9X+Wfo?=
 =?us-ascii?Q?DgFatm89letGZ5C/33gONdDTnq+9t8JlCJaExtGtoCe/3dvJXjBT0GwUy+sF?=
 =?us-ascii?Q?sh00aUOnFDLbvDDavSfKIUZEXl6mt3EaIw2syQhYqjZpMXsdJKRg0xLa7QSN?=
 =?us-ascii?Q?hAwDsRkT9ZiS6scyFA93Y8TNEyQkz3J/1XW4ZkpDAtueyKQsH2Z1jOparoPE?=
 =?us-ascii?Q?8x6ZiGC76RBLZVF5Ahg21FwJexfVFmu/oA7n33nQG0zB9wv2geC2n3LTk4NS?=
 =?us-ascii?Q?ZR8nLFsiRUyHrSDQbAjqNLnNgR0rlX1ublQLKTSG+YOUQvRZeJJbhHqlmY3/?=
 =?us-ascii?Q?eEx+55Chff3KMPccEcC4QxW1ZrHvAMZ+mwRpWLgI88LOBH+Tk7ZGS88F+svt?=
 =?us-ascii?Q?sKzzB9Eo4eBOUBmbS92RI1xHBCHTuvLdjJ/yOVfeBR01nhBXULk+7+rrpq7W?=
 =?us-ascii?Q?B8dZ9LijlYs4thFh/GdzlFTketgWSOuOa4S8EqxKze9dXMSKvZs51T1KgiF9?=
 =?us-ascii?Q?WJK2V/+2IAYQU/eeJmi8rjMJIwv5ATaN2Y5WT2q8KAP9RyXeuCQpoWTopgDg?=
 =?us-ascii?Q?YY8u6G0A33l3Vbj0VqOF/njkg0S2XwWsuiCXx3oQv5sS0m/YGB0Ubtwu574y?=
 =?us-ascii?Q?G11GeZC7wWUuVwO/zRo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MO+0eCAUmKFzApktB1ZTZDxTzhlV6XEbhSSP5fkU+OXh9XSdeajlhiuOHJqx?=
 =?us-ascii?Q?mEcIPgSRBW9DY/WPEIzdjAshQRoDssuimcI6d1vYldrgvJ4ORDVWPxkkDhWy?=
 =?us-ascii?Q?Ilr5Sym7cNoND0XkRTxY8vTkVOdhQPXhzX7UQKHGDsrlo8gtLF2tZ73Xq/YI?=
 =?us-ascii?Q?gy0vXZsRGUJrQ36qFq49O2fTAROGYGGZXTvWZQqo3Ts6Wvi/CS3unpgClXNZ?=
 =?us-ascii?Q?nqT0P2kPnSbGwY57L497v6obKAlJ3H7ndwvKg9yJ+zxqN4DeOIot9TOJjqUR?=
 =?us-ascii?Q?cg0+aWKmb+MJOiN5y2A2BEaxKkhVuNgpseptB2j/Ubqe2eGIvJpZr4t3MF+t?=
 =?us-ascii?Q?LykDsKHSXKpVhyKcE6lgY4MqAe1MVbF4pQ5YoJm+2CzF0pXisYF67ylQNnAk?=
 =?us-ascii?Q?JnWF+FgU+/cZzKjLIXC31wU2nQaSPyzDBLnLDHrqb/jUgWHqC9bUuCW5aEn0?=
 =?us-ascii?Q?fer+kOGFY0pXjznzv1PO73QilZibvzEGGYksrywsna8TW0mZyz2M2+6lgiAx?=
 =?us-ascii?Q?iKF8Q1SxpgJLkXbe4ZwszK47gFZL4JgHrqgFoDI7spwwR1itM/Yh4A4pfWJt?=
 =?us-ascii?Q?FI+hue47jpI9hcuzWyLT4Y8NaFkfo88OIpjMEnmt60I0VJK5DlNqsixsyW+w?=
 =?us-ascii?Q?I8yS2KaJGnb/uT5QNW5zsBd9uK8OtDJcVzosg6nUZLeE0E8LtB2zOX8hScyT?=
 =?us-ascii?Q?4B9iVK9HqqANcYwcDrjuvyEHgcp4TIqUvwSg9oxA8Y59gFRoR0Pm5CNYnzoK?=
 =?us-ascii?Q?QrxroDnXF+h2WXYJdNbQZ1Hi41ficyTyQf8bONzXznWS0meFLNpaXKGaz2b0?=
 =?us-ascii?Q?vLD02iM7ptEzOJVvZ107IAWf243z5kUI4HEr5yXqBptkoS3gbUOerimlof8L?=
 =?us-ascii?Q?Qdgi0y7Bm0zu7R1JNIL7ILfsH5WzS5KyI2d41PhqST8r/jcinZwzfYyCf57i?=
 =?us-ascii?Q?AowWsxT5zK58iyU1nJlYdjbqIjYTRvwRHoI72pp1D6WHGY6oazCtcrXiZfnY?=
 =?us-ascii?Q?fYk+W8uRnP+lWpFBwMAdzuCJmdMCmYKXC6wdeye9iA/OFeVF7y7Kpa7mZ+r9?=
 =?us-ascii?Q?yVIYrL6/auCGSqlXRLNgXX9Ce62JNzpeRIBs1uUYO0fSXNPIDNaQxoUhs/1k?=
 =?us-ascii?Q?GBMFvkQf6H+ePCweG4LKffJuX5GXB7j27aVih7Ab0zoTKB6CT/4hDy4iJIFr?=
 =?us-ascii?Q?bfB37DzPjJM5QoZ06pZvNt/dhIMGFIxi8220mb+lTXFpE4uWcGwFCe6YPlum?=
 =?us-ascii?Q?8BYjv+y1zmUzWuON+remRMf5IFQZmKBlGQW3JmyvfGfecfCnZ4HgWoXEya/I?=
 =?us-ascii?Q?35B+xmHppR2hWyF2y8aMQcxg/1LcD3ePoeKYZxJgjKlPFdZC9FGBmuzKgARh?=
 =?us-ascii?Q?dgJg57Cl4XHCymO1J+vQBAwp6QC2GfBig2Lm1F15I5j/xIFDtwnjYwWEN4Zo?=
 =?us-ascii?Q?kox9B0Iv6KRQqYwxiLQpxa0skfCzzPUC9FpvRrPMRamZmO1A9kUVMMq14YK5?=
 =?us-ascii?Q?/zgI7nlsqsewRjkP6Y8Owxg6oE+UjIpAqIcTpwVw9oQa2TiKQHRUrLRlk4IX?=
 =?us-ascii?Q?7mNg4nt8CIkG3vttdAw9bfXQpU+I9ze9qlUT20aPRT1Y/PG67qy5g7A+NNq+?=
 =?us-ascii?Q?CJi44s+ewRpU2koqvxULWhvpvVwlXnh0+dPVxASJjwYTypeE1bbv7fWcCZx/?=
 =?us-ascii?Q?w8RrpNwGHql7v3VBwYN+fd9NeFyufEkW+H5XszTSsTnRq2Wg9gBJdZisWdIv?=
 =?us-ascii?Q?4mlr0KEbug=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cfd9af3-9ac2-45a4-6044-08de734c4bed
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 02:27:46.1126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3z55uYe8ae+d+/zhKjDam0Kc1N6JrJMkAuSmo2uv0AOm1wkUwBWpuoTfzseXsH1QkYqv9t09RJO5QQQ1RyOZXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5124
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA0PR11MB7307.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,patchwork.freedesktop.org:url];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D091018102B
X-Rspamd-Action: no action

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, February 23, 2026 10:18 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Deak, Imre <imre.deak@intel.com>
> Subject: Re: [PATCH] drm/i915/display/dp: On dpcd init/caps wake the dprx
>=20
> On Thu, 19 Feb 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Before reading the dpcd caps for eDP wake the sink device and for DP
> > after reading the lttpr caps and before reading the dpcd caps wake up
> > the sink device.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> >  .../drm/i915/display/intel_dp_link_training.c |  3 ++
> >  3 files changed, 32 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 454e6144ee4e..4d86826dba1b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4705,6 +4705,32 @@ intel_edp_set_sink_rates(struct intel_dp
> *intel_dp)
> >  	intel_edp_set_data_override_rates(intel_dp);
> >  }
> >
> > +void intel_dp_wake_sink(struct intel_dp *intel_dp) {
> > +	u8 value =3D 0;
> > +	int ret =3D 0, try =3D 0;
> > +
> > +	intel_dp_dpcd_set_probe(intel_dp, false);
> > +
> > +	/*
> > +	 * Wake the sink device
> > +	 * Spec section 2.3.1.2 if AUX CH is powered down by writing 0x02 to
> > +	 * DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> > +	 */
> > +	while (try < 10 && ret < 0) {
> > +		ret =3D drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER,
> &value);
> > +		if (value)
> > +			break;
> > +		fsleep(1000);
> > +		try++;
> > +	}
>=20
> I'll defer to Imre on the functional change in general, but if we were to=
 add this,
> it *must* be written using poll_timeout_us() and friends.
>=20
> There needs to be an extremely good reason to hand roll new polling loops=
.
>=20
> The above loop isn't executed even one time. It's dead code.
>=20
Based on the comments, this patch was dropped and https://patchwork.freedes=
ktop.org/series/161818/ was submitted.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
>=20
> > +	/* After setting to D0 need a min of 1ms to wake(Spec sec 2.3.1.2) */
> > +	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> DP_SET_POWER_D0);
> > +	fsleep(1000);
> > +
> > +	intel_dp_dpcd_set_probe(intel_dp, true); }
> > +
> >  static bool
> >  intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector
> > *connector)  { @@ -4713,6 +4739,8 @@ intel_edp_init_dpcd(struct
> > intel_dp *intel_dp, struct intel_connector *connector
> >  	/* this function is meant to be called only once */
> >  	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] !=3D 0);
> >
> > +	intel_dp_wake_sink(intel_dp);
> > +
> >  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) !=3D 0)
> >  		return false;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index b0bbd5981f57..3f16077c0cc7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display
> > *display,  bool intel_dp_joiner_candidate_valid(struct intel_connector
> *connector,
> >  				     int hdisplay,
> >  				     int num_joined_pipes);
> > +void intel_dp_wake_sink(struct intel_dp *intel_dp);
> >
> >  #define for_each_joiner_candidate(__connector, __mode,
> __num_joined_pipes) \
> >  	for ((__num_joined_pipes) =3D 1; (__num_joined_pipes) <=3D
> > (I915_MAX_PIPES); (__num_joined_pipes)++) \ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 54c585c59b90..cbb712ea9f60 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_=
dp
> *intel_dp)
> >  		lttpr_count =3D intel_dp_init_lttpr(intel_dp, dpcd);
> >  	}
> >
> > +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> > +	intel_dp_wake_sink(intel_dp);
> > +
> >  	/*
> >  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-rea=
d
> >  	 * it here.
>=20
> --
> Jani Nikula, Intel
