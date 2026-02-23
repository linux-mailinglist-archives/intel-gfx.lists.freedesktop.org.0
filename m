Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QOhoMnF8nGm6IQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:12:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28364179750
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:12:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4262110E2F8;
	Mon, 23 Feb 2026 16:12:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TxboiVeH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124E210E167;
 Mon, 23 Feb 2026 16:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771863149; x=1803399149;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l1pwrCzgXotaXDbY+N6v2GcckLFqLDiUHOvmKkPKXQw=;
 b=TxboiVeH8B9fIAkxhk0Ef46k5sARK3+KKzcUsrqhkidoInYpQkC+8/MP
 STfk7fPidWcCpcVwl+oZU4YeSzW2Hx3PqJVIHKFUhY1L+CSg7kxgHRXtu
 wUlM7p9KHdxpWdV1W+jAjD2WCTf4+eh/DYGGmtJkbKXdE8G7PGj1EJ8aK
 /M3e2tgbX1biK6su+wLusNSUk/1+slkYz2pLF8zpmRlZSwk6aTWdljJQw
 rOQx8cHSdhVcUVHK4pLvB2ghGeg5JOmWqua4uhQJtkEF2eyqhnP7aEo7r
 /qUDT8nmmeKRRa4qeYc+v2sxxnb7XLOATfWyB4lx+dAH2b4vX4nv46EJZ A==;
X-CSE-ConnectionGUID: Nb9CGvQ/QPSDMk2gcHzsxA==
X-CSE-MsgGUID: ASl08Q3SRfeifHmzVOQEfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="84222551"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="84222551"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:12:28 -0800
X-CSE-ConnectionGUID: MOvtycW1RUy6L74U5VbPAw==
X-CSE-MsgGUID: mc1lkRNNTuqnPdU74/AS1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="213949177"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:12:28 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:12:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 08:12:27 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:12:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FDV8IzzCuqrcRbaw2UPVxh9F4I8UqV7nfLGNd6seqVjsJkKLzFgbl58RcvC8jAgRcd79FnnNNfv4B2H/u0N6HiUtNs0M/rNUoo0PJpfpm5IOL5Bay/+4c4nn8J5ibLLHLzLKGYYZGUNtjEvFgegBt8t2BfwifBAAKSKsegFzDN/CjpphpvQhjGGVmL+vKvm3e9TiJL+rTykLFHvM/6lKnex1gb2O+brG4elUUN0tp8hbl7qYqZ0FuvNQffwbqDtd4nmSwOj9sk7dk7P+dvrREhD3OfR7bkOMTlBGoW+wNTcCJ2HgxaL7ESedtuu2IqFQP4IYH2aYoJp8sYO7wAaBvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0+YYpE4V3lQoFp5smu76kx1JhBA1Akc5fvRBcEz1N4=;
 b=JK/sbQhM3qWHrT/PutMD2ukcNaKqUsOveiKGNzbUorSEl6x9WjJGqLzRTn25Bie2gHIF0teewutFwVN6KyVWwQBYsILIi/kRJl/3Jizx8uVrMSXMa00wbgvU/q0sPRK5fimR/vwoo3GU6Q2bHHA+cQRdgMB5eSC4wvS27NfR0SLxEI5W+2PfjwIAIXhux2hYjvnOZOgBiqi3kNGZCBPD6XOuJ2SRgNOWp95RtLrXTgKA7OT0fJ0x+70PhDt+jCZoeZGJYp5p1sJQUtZuRgy/6T5ghUyLvYAvB5oPx93VB6wGgUHzfWleUwRsfvsB9E/bDrwRjFcqbU0bwNzxId5GhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ5PPFF8B526086.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::862) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Mon, 23 Feb
 2026 16:12:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 16:12:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Thread-Topic: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Thread-Index: AQHcoc27yWJOKQZCm0+OFfnDwILbPbWQejRw
Date: Mon, 23 Feb 2026 16:12:23 +0000
Message-ID: <IA0PR11MB7307ED11D322F4B53B76988FBA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-5-imre.deak@intel.com>
In-Reply-To: <20260219182823.926702-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ5PPFF8B526086:EE_
x-ms-office365-filtering-correlation-id: e31596df-685e-4932-6739-08de72f654cc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?LqP1SFf6RjxSkmMzX4V359uYQM4Zb8CAPN136GJrWqoNfT1n8D9migBDIi2b?=
 =?us-ascii?Q?NtCKwZ6QzXuva7cx3WsD2Bf5rIA1fgnNZG9zRyIvMnAyCOhKRBTAczflAq9L?=
 =?us-ascii?Q?nxV4oGPpfq+oWOI/x+7RoAeeM0FhLJiWmBLnYOqYR76MtBTo1TwzNZBi2q+b?=
 =?us-ascii?Q?F+RiXon+33iR0Gjx3zwZU/3czczfqatxd+euw7yDNVpaFNz1vZfVWu7GOhJZ?=
 =?us-ascii?Q?kd71t3zNUGnAVb8Ye4UaC+WN0Nqe80OwLaOM2ZLghR10BX/E8JImDu3PvzaK?=
 =?us-ascii?Q?vhRFGBRXfePDtPYQRW+JDWi7jG2IxvQfGKYZytitR9dpcKU0C9sBnPzUdGgP?=
 =?us-ascii?Q?ekbvx78nJNBu/9h8iXXd1q8d4SNGW9FU70+NZWEEj3/50FDgs4hzvuvDrUvN?=
 =?us-ascii?Q?HC9qFjeHwTRmYdeZIaUK+BBlegWToP/4nlS+uqk+X64EgBqY+GaocdOQshrD?=
 =?us-ascii?Q?Yo4EECMZOvQXx9+FlMRtNgt+R1aS8kcXQCXobNm9eyHo9vWGgeekkIjQVaeD?=
 =?us-ascii?Q?qHerfeJYMNlV47h1XHghVfldszNoKdAT1tF4M3ltCDyu0xQTcY0k3D+MjOYa?=
 =?us-ascii?Q?+miDLmBrSdBIXmea5sTwJmtddjHvbfKCprmvnREJq+rxZPX0Q0vNYqp7ChEk?=
 =?us-ascii?Q?0n9MVDwwrIzraAcpVP+TIhgW1N/nTnZDHy0TcHah6ZZMC5kwRmwnYYYHJGPw?=
 =?us-ascii?Q?XVigHdwb/8TQeIaLFECE8AHC14IHSEN5LIMVC2maA0NqXqIsuVHKVrKGi4j8?=
 =?us-ascii?Q?S4nGDP2BD/QDAjZQsTIMjibZnnbjwtqp7PEAxB/g6+ACw2sTs/u7EuDidNd+?=
 =?us-ascii?Q?d/deXXIxgZLwyt+zMGvacKtQ7nR050U/QkMXUblPhKovJNsxJMKailvO0O3T?=
 =?us-ascii?Q?h0edhn0paMYg9AxlQvD4ANHd9ZlqiTYr2bdnE5jZ8STYm20bXj7KbXqQM3MS?=
 =?us-ascii?Q?fJsnJmqVDnn6teyfeAfzBWvJFOV6jPNQDboGAJNGHSmE0snVtL/5GAmgafIT?=
 =?us-ascii?Q?7fR4rOd7cWFVPlEeIpW8802OceA3cZ0dsXzT+8klR3b5shZikwsPwxcC1ytp?=
 =?us-ascii?Q?D6calupPi5KxDPggZYCHFjiF9ZmPlWJUcAWgpVDr5rt3GjakitQ9CASgEMlh?=
 =?us-ascii?Q?PLQ/eR12GAfRlk2lNg4oYutpW3vr398xVsGnAD/mZje1d3SLPBz2W1HKAZqL?=
 =?us-ascii?Q?nidhk3oYj9QDBzOGL6uepXO2wryQPUdigFHE+cgu6/1huCRPgD2ZtecTiLab?=
 =?us-ascii?Q?sK69Ow6DrGuc+FMkeM0ldts2jLDdZcWMg7hVwHNTuOX5DbFLnqrKwDSr6Uof?=
 =?us-ascii?Q?biz5WR/bobgHxwTmRx7vfqJhNGyPQNcig3Tw+e4tFbGTVA3S3/FEqQS+YhFO?=
 =?us-ascii?Q?5nfpgITXw4tA6buxcGSCJsluPPnt51RjNLM0BUPF79V8rLZjNvqfaGXjkb/Y?=
 =?us-ascii?Q?xFrL3kvyyUIhHyBRtBAXHiv7remuTvkey9JOO27m5ilw5WW1WTB1LRYxPzLF?=
 =?us-ascii?Q?z/VkSKye8g9kAq0OwBAVbWR9cyIVHsE5MpJdNQlL2EG2MMEr+XtlJKkRt/BP?=
 =?us-ascii?Q?h5Z6uxyot6IXg/kVM/t1o+MZJfR52pGIPboXyI30S0UtvdWdxN51v7s01+fI?=
 =?us-ascii?Q?tziMjgof3PyY8igVylsCxCg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KD8uI8wxLHO5Q2KDTmKcYmeP/07s7kq8fm7E4dW93wZQIXEn6QRjz+to8da9?=
 =?us-ascii?Q?UcpSq5Tw4CuptdWi7Z44dhjsxNuiRcULQRHGaqBWY2K8UIPRsee5/dQ+0Tq4?=
 =?us-ascii?Q?zo1z3sV2Hl42QL//ISKmU+NXLSq1VG0n/0FyXAQqvQF+U0TsZU7PW34ZOyIN?=
 =?us-ascii?Q?kewlz/uhbSkHJcCyV8FCb2KYDuqBtICOfPV7AiE0u1XdrvRuOOJBSDPgegC4?=
 =?us-ascii?Q?7WePYitMIcyh0/7Opkc3eS/h0TJLms3rC23Q2bz2kwB+bOfH4L/Y15yBA88C?=
 =?us-ascii?Q?3+Y0UvOloxjcpZOTYoSoIUQdq3+PyxIZNgwVdHaPbZ/3WjKV47FAxH3BDF3k?=
 =?us-ascii?Q?j3btRdLfvXJ1JkCeqz3rB3FZAV7/ibSoF+RrEiLcjHsXkFoUtlJ7mKG9I7xO?=
 =?us-ascii?Q?DOAVqQz9OmG6jMeVKQx8KH5Uo/h5KtJlXxPVWfSS1TxqUtSJdpGUApb6/PXC?=
 =?us-ascii?Q?bmFzik6WcKKxJdHDJ0RriEMmK+6wIUulO6ebTP+EreqBOiWTKYXQYZm6G5u0?=
 =?us-ascii?Q?MCWBBHWpiwpM0G1O8vdf7dzSNNP3VHpQMNWX7gIw++jGGhXNygiPj8qbpUQZ?=
 =?us-ascii?Q?2181ynWpytU+sr+7e1yUy7TkrfYkZB6hRPrXyG112+oQYyjBSzGWrsDGAu93?=
 =?us-ascii?Q?o5mSoseYd+0QpJbeja4jq15q0kGX0VPUHbTWl88wuZ5mMWQldnOHZw+hOkFS?=
 =?us-ascii?Q?8P4b5rlYdOaj03jywPyKhxXNXNM8rtfuiOzLnbybbxbkdHezeEZWcycenPvY?=
 =?us-ascii?Q?NgkZG1+sgla0vVXHZUP/UoWV6KjyL1WBJxRmTrSE6RUTZP2K1KEoLl8v/1aB?=
 =?us-ascii?Q?ebEl8Z2HkzDyugZYKJn4y5jxZjhbVfmq09dm0I7elOcQCk5JU+yCSOuRlfVk?=
 =?us-ascii?Q?5sMndOfXq7ggxUlAYkXdCJ6iCTcKVd7PFgBLlrLGL1iBFSKIeMrQCY4uxGzt?=
 =?us-ascii?Q?fNkoj/EWtA48vsTIZDH94BqoNdfUfTUSs1h4UV/flFsJA4tCWUEFEe/NjQ+X?=
 =?us-ascii?Q?o2iTdO7RAJx3A/OJxE79hTvuys9JK3WGGmEJMXVj8wEdu+lUQwciI8bXzIS9?=
 =?us-ascii?Q?AoGWg1AsveTzb774+uIlHy5adqcNSLMM1XUvcpFis1bRdpOYmqYj+5LnLLvW?=
 =?us-ascii?Q?qyQy7HoG9YCjp+g/oHE2iDkbm/85iCtRS40K18ZrgnkkO50WTMUfPA1YiEmp?=
 =?us-ascii?Q?Hh6Fipw0vc5WqINjPpI1qvB+F/igL5bujnj2zCrTNcNePLgZsafGqIlKz65p?=
 =?us-ascii?Q?M168VkYz3XhxWA7CSwIT2UsChhw8h490p9rbV1RIOg2lPRVl7D4nczapZJxl?=
 =?us-ascii?Q?pZxGKISJvGZuIayNjUIoxgmoalXX60NMw5F3FOtD10NgCPJ5vZTQs1Qc5G2A?=
 =?us-ascii?Q?wuKqgdPkgK0HAssmn4Bx2WwRxorFhlItFQdaLM3IwZGpc3DapA8pDXKqsK+Q?=
 =?us-ascii?Q?b9azBfumVVxjXTSqE6wGUDmHdTBTrIzifTfUHYtNo1zM1mfUgwq7W9zL1dXI?=
 =?us-ascii?Q?ZRYdmNrEO+1PyOVSik4pIbmw9LyX5pGCqtGrZEGak+3eW3Z6sCrdeHtKYlWM?=
 =?us-ascii?Q?7xh6RTc7fXVGnRo7tZKW6dV4YhMR9sqMz8ezpUcYPQb39T2QzBdOP+7RUXHJ?=
 =?us-ascii?Q?aZIHrHDeKS2UnWYR0mNFyq6OV3xEwdrTU31kn6nWlwjMiSoL704C8hreDqN/?=
 =?us-ascii?Q?hIjf0ydEdNn5hJG0sd8TNxvbyWDongFwVKvdbuRgDthCnDBVemTde150ewYf?=
 =?us-ascii?Q?1+Kbyq/ycdcdkj49x5pWCny6oIDE7EfO61Ns7NV9+5CR9TY8GzM/Kbigb0r7?=
x-ms-exchange-antispam-messagedata-1: GTIThmdlxhnGmQ==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e31596df-685e-4932-6739-08de72f654cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 16:12:23.7307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DqS2Y2/cxBfZhsYwzIYjKHFeLFcsE0GkrGnXfcLL8nzwtLPLn0qx65sTuPP9NEEWOudNx05AMpIgE90GqWV7Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFF8B526086
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
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 28364179750
X-Rspamd-Action: no action


> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Thursday, February 19, 2026 11:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> intel_dp_tunnel_detect()
>=20
> Clarify the documentation of detect_new_tunnel() return values, including=
 the
> failure case.
>=20
Can this change be merged with the previous patch as the previous patch mak=
es this change.

Thanks and Regards,
Arun R Murthy
-------------------
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 5840b92dace19..1c552a7091897 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -241,9 +241,12 @@ static int detect_new_tunnel(struct intel_dp
> *intel_dp, struct drm_modeset_acqui
>   * tunnel. If the tunnel's state change requires this - for instance the
>   * tunnel's group ID has changed - the tunnel will be dropped and recrea=
ted.
>   *
> - * Return 0 in case of success - after any tunnel detected and added to
> - * @intel_dp - 1 in case the BW on an already existing tunnel has change=
d in a
> - * way that requires notifying user space.
> + * Returns:
> + * - 0 in case of success - after any tunnel detected and added to
> + @intel_dp
> + * - 1 in case the link BW via the new or an already existing tunnel has
> changed
> + *   in a way that requires notifying user space
> + * - Negative error code, if creating a new tunnel or updating the tunne=
l
> + *   state failed
>   */
>  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct
> drm_modeset_acquire_ctx *ctx)  {
> --
> 2.49.1

