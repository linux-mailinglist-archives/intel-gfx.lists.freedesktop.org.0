Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CACD32492
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 15:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F1B10E8A6;
	Fri, 16 Jan 2026 14:03:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9zeTWgx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F170210E8A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jan 2026 14:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768572206; x=1800108206;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QxNlAhjZhSBEHBzWkYHfVajdt8/Vj3YTPHXOKKKC8EQ=;
 b=M9zeTWgxO8yNL7YVUVtIkCGixJpWvcCv0jl7Z2OiDUGyWL6kWcco1Acc
 t/7fJlcuy8uf5ShgP3jJ1Oc66voC/Cfx1aNHULj6dU9kkvEEEVqovc7Pq
 dF7DtvswEkMSVURjaz2s1vH1JU6PwsHuD8ssxj0bB1hnCkYrNksx7odL1
 TL4DfAtu2iK/rXrU6o7kfGebYgyc635keasmEfI2vzISxqSrvz0tiMzMp
 QVWCZWZKosDFj5+u+oBcWxDC+D5qplmGN0hJnUS+cJzAgRTovnvCgSyam
 WlisVJCePmIJjoUDr7qlnuklX3hW2GubVRaSZ4Pgjesef488VOuj/1BgH g==;
X-CSE-ConnectionGUID: jPC//vpTRRyuKNkJpVZFfg==
X-CSE-MsgGUID: QLlfZAB0T4i0W4kn8oYKxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11673"; a="69781556"
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="69781556"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 06:03:26 -0800
X-CSE-ConnectionGUID: z5B2+p0xS2yT223ni0p1sQ==
X-CSE-MsgGUID: yP28NLNxQpi6vz+AVRMVnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,231,1763452800"; d="scan'208";a="204853825"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 06:03:25 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 06:03:24 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 16 Jan 2026 06:03:24 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.14) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 06:03:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GVx3sK6/TRQErrIbCgbpHXps+UKMcOpOAJpyPtjBN72xWiehAhYNcKg9SWIY7IXHpsK5BfBL7gNU6yAyx4BpW0k3J4YqIBp3Hyiudqk/gnBfVn0WjKvU116HkR2W6yI4Xy+aqMks4lxZoqcJ4FIiVXowKnYIzYjYvjejLOO/jC7S/BzhY9etgiGTa6b1sn4ojyuw7aFvbvFRUJJ5InFPrZm0wM7O5wBgewaLtLF3+pQl+J7XK9LvMCorQSeJd8xZ3OoWpEWAdIhXm1LosB7s//hmPqpeCs+ToLvNv6w5KtUhJqV+L+IBG9Yd1fYlGHgk75zUK29Y3gLbJyAeQlrcOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QxNlAhjZhSBEHBzWkYHfVajdt8/Vj3YTPHXOKKKC8EQ=;
 b=CcWKAhDYriIziyDygYefMZFGMIFRhEYPEAbCnWrdq/bQNpTXKoiFkMalrt2FddFC3pTEfT2nsGeCYKg5yXNUwRmvCrVlAE2ZnEare0CwGfqwILf+siqK+6qr2IC03La5Ujt3l7lX1eYB1YubfZuHCWJR281ax7xUU9jv2wcA61M1mY9LS5PKhppXe1uTar6LnM0NB1LZUAuazgbl6Cnrsl8U/kmO/NWORxafdl2h2hti55gkG3UPxFM3Z16xK/Uhz5sAg+u8+SJ8DQN6MXdYk9Q3+mkdCTMKyUXMhDYT6seD4gI59e8Wa5T8A6AL+V4uNSqpPPJJWIzHv/rtR1fLNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8768.namprd11.prod.outlook.com (2603:10b6:408:211::19)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Fri, 16 Jan
 2026 14:03:21 +0000
Received: from LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5]) by LV3PR11MB8768.namprd11.prod.outlook.com
 ([fe80::b22e:7955:ed0d:54f5%7]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 14:03:21 +0000
From: "Kumar, Kaushlendra" <kaushlendra.kumar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/crtc: Guard vblank wait when CRTC lookup fails
Thread-Topic: [PATCH] drm/i915/crtc: Guard vblank wait when CRTC lookup fails
Thread-Index: AQHchs2hzU4GQaWVgUK4TaSYJu298bVUnCnAgAAgNgCAABd8sA==
Date: Fri, 16 Jan 2026 14:03:20 +0000
Message-ID: <LV3PR11MB8768F1FBA3B52028FEEDA455F58DA@LV3PR11MB8768.namprd11.prod.outlook.com>
References: <20260116062203.1650454-1-kaushlendra.kumar@intel.com>
 <6f7ad8bd5d41e50176d98cfb658aaa7b77f63cd0@intel.com>
 <LV3PR11MB87689200E77909E362FAC0A6F58DA@LV3PR11MB8768.namprd11.prod.outlook.com>
 <71f5fe5fe81d887c3a1331f76a46f8e889fdaa1d@intel.com>
In-Reply-To: <71f5fe5fe81d887c3a1331f76a46f8e889fdaa1d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV3PR11MB8768:EE_|PH8PR11MB7094:EE_
x-ms-office365-filtering-correlation-id: e35f32a7-4ba1-41c5-d58f-08de550801c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HoBINoZHHMtTx6vi7EhH7AldgMWPRuneGzgrh00JGqQsrM8sq7OVhF0R9aG9?=
 =?us-ascii?Q?aTkJKN1DqjjZaaT5YJVwasfiTiVgfuMbmMHEJtXsgHBSSqDUsUGutFoSsSRa?=
 =?us-ascii?Q?tWlVWt88Id/EUTadR13Ospr6T2p6KxZMWK/eYBuMjSZvSRouIyV+b82ZsWxY?=
 =?us-ascii?Q?gyLI8LmNGep03p8B25MVkiV7Bq+MjxVcFDxGpZuRicrXnVLUYgR4z5aQHLFX?=
 =?us-ascii?Q?yvVNlosSnU9YqUMcJEMNe/1X8Jz98RK9o4zdThMgvWGK0LAblcGTKYAD/awW?=
 =?us-ascii?Q?7zHDUMOypj99Q/BzhCLxC7QohCw2jWV4cIdjVoFgWrpN5ibstC3ojC6bTo4P?=
 =?us-ascii?Q?AwdRdiliV1GwCYHmScmPMBpEq4wnGm0GxYsDYzqNlPmT3poRcxr4YpHp40YU?=
 =?us-ascii?Q?o5YupKYd/hzJ3i5I/lxg+cUkMay4hlyVcQ/fAnr2w/Nh5YpwFx/L4ncWcyIb?=
 =?us-ascii?Q?GG0zSKSyR4WMaE2EFATBSFNAwYxKdlrCNsyBRroV+4DqF5LmiayBK1rnlGLc?=
 =?us-ascii?Q?33LFd+XR9KN7r9HvSiVDm7VdrVEmiOVYeaeigQqVYe+67SpSmoHZ5vA7nvH9?=
 =?us-ascii?Q?myvC2cmCkvPpB2lbajIe03+l6XdTwPcH8wi/s/gKUEoVo0QAzNEHsBGY6g/2?=
 =?us-ascii?Q?yda4+BtaGtiSO7LwpAocEaH3iNtVa+qWS3YrrUX4zO4pO37/B9GsWLUpQkKH?=
 =?us-ascii?Q?dzW8yS9KUHi6YrTShWOTP5Kz+9J7lCWiK3VRQXK6dHflXgpF8IMK2LlLBfjM?=
 =?us-ascii?Q?oPwr5B0a1pyQK80ZiPn0muVt+6k2ZYWMNTtLaeEEPqqW41D67/3bSZ0rSSki?=
 =?us-ascii?Q?+/BAyb3qBjVS4DzG0KfwepF6P7/l7EMQbS3S/r3v9wItC4ds4zGjBkRfdtyP?=
 =?us-ascii?Q?nJw5MvKE4XnUNoocS4aaVKDnHgH+s3bU6SPQdlT8dH7jWgzEIm1kB+8+htOh?=
 =?us-ascii?Q?4FTojOHJPgQgjlbRKDEzO5r0XqhNZ7f7q7vxmysF6IzyrCCuxqdg0kvLfBtc?=
 =?us-ascii?Q?8Q01RVtdt/lmsFm1lVKNdBxQfEfOQukFFaZTkXRMJ3vOEDMNaqZnezZkEOtC?=
 =?us-ascii?Q?E4NWwm/U07P8DaDqk+0dKxWwTgaxGqzY9RLaKnq9q3o06dySZmpK+bLW8+nc?=
 =?us-ascii?Q?/szIYeVfhg1JSyFGbegRJ/b73n43BTOuMuOiiX8yu+2IOnVNPUYn8ksjHwmj?=
 =?us-ascii?Q?zLf3wiRvILQfpExJOIKQ7KXuAHMgpNuFF2ZwsjDL3xvK/tcrodf81GbLd1lY?=
 =?us-ascii?Q?o0dJyG5oH/7lbl6rjqvA6tpzdFJF8pYIuFnC8kUQ0Ja3KDSuNBrjJ0rrb6a0?=
 =?us-ascii?Q?trAOywqFQOMiZegu6i/xqBIzGbWjU4KZ0mK0biM2rgpU1VdTtPHVs9TvfIts?=
 =?us-ascii?Q?Yn3pdQgtj7KTvDeT7HkzjMxov4lEQwV321uVRpy9Gjy/ryfu08D1qugfRCIR?=
 =?us-ascii?Q?FDJ99ieh3yVspI+F9Cy6Ra0OBnQtJCpqEZAJnRDt4gLzsSxGP6d1JOfVG480?=
 =?us-ascii?Q?/7HKq0E3HbFyQyYcyKO24BbL8W1vIDWK+dmYqS4fz2HDGkTQu7uq8PTIZRLa?=
 =?us-ascii?Q?UWnDA+pAkCp9nWAaI7gEvIryXGFv4c7iTwCp0AvXINmKr1cStXCvm0tAMZON?=
 =?us-ascii?Q?1bgxo+1UDlrc9J1s0H2dMZQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rLQmdSsuRhyxEbyWObJphbJX06KZ67+/OzhetWHTuoLu4dU9r9ngl2q+2WAR?=
 =?us-ascii?Q?MvrG1QIox3ZyW058VY2Hxw+LVKQMlu6+az86tB8lWLxc9f5d03eyDXBTRx3i?=
 =?us-ascii?Q?+3lEQFWuMb6802rnJiH/rj7rlCWqqL5jHkkx8Zbfk9UH8NxR32vqRZuZGV38?=
 =?us-ascii?Q?5U2mypErZ6c40JTBjlfks1fr0CDO3pdBEPUBMzHoc2neW9dXOzVr5NflW7Ed?=
 =?us-ascii?Q?dauofXal4QzWYfwv1xgmBpJ9vykg+5PdHYzvvj+vfvkQYcYweOnJbCOLzue1?=
 =?us-ascii?Q?6vvn+ilRjed3n1XReTyJoOBQEyOZWKsZOVLvh2d4A3csdXUokXyJUiPCUqIE?=
 =?us-ascii?Q?bcVjWgVMRhtldmrweNO4nbnBq/JKOduWnG9slPuTCeUj0rMny3KBHPqoRycM?=
 =?us-ascii?Q?28pMgnxOJX/dxN/L5NxuJC+oH3PDQotT/cKKMtGDl7NbhsmI9EyZSlIvLhed?=
 =?us-ascii?Q?4MZncYAIZPudesogz11BUnhsk+6uDnXO/rFEyZWRwvVr9U42lTJfV8wpZvzm?=
 =?us-ascii?Q?m9qBWV9SezmgCavzkopmxCR1K4FYDZSNfNd3K5IEoN83MLxbpyijjvSWc+ge?=
 =?us-ascii?Q?AwbUv8oyjYLtC6BOWg7gJkxtkJPdgmNb9pXCcOeML+8IusMk5EUWl1AxzdBX?=
 =?us-ascii?Q?XY3urbIpmeB9WvWdLHd/w9morXeap5RoXP1GVRR1GNJYGCdj685idTjETL7m?=
 =?us-ascii?Q?9Fx0EDTEIO5SadmEZBOaAMYOY5BBJwGHoSf+UjFKUmU7TjgP6dnT52H1b2D5?=
 =?us-ascii?Q?Pwwft6B+giKS8Ki8NkF/8y4LjhfadG2VG5Y7jCwmAdX30U7aLjQaZDPonKzC?=
 =?us-ascii?Q?PHeDAhxdFla9rHgVpJJRF1lhdyODDZrVGjOVgOx4mbsAvDi3FiPun7/RbkLE?=
 =?us-ascii?Q?wb+vJWt9xfSfu3TyClkYZSc1pDvJkWBkQ+awjmHrJl+vcv6p00qJrUa4czvZ?=
 =?us-ascii?Q?MFmokucbLzHRoT9Q3ZUP4kHY28eRNMRU3ddTQCRYj1uQHbbB+mgYkL+bSp3k?=
 =?us-ascii?Q?rj6KJmJDFF5CaDVJitO5mwMIgBYz+C9YWTHdIAHXsjaWv1hcHjZ7IIiAeR17?=
 =?us-ascii?Q?MdTLKoe44kpyDS4sLdBruDfYZpA4u6XYfCWs5fj5L77SBh6ECK2snrpSjS2Q?=
 =?us-ascii?Q?/RFXK42nD9wFaPSFJf8rDuKtXu4Z11LoRrQAFn1whooFdPmLPIZr3Vgbeb+3?=
 =?us-ascii?Q?wyrePtiqVN3lbMzHbdgUZov3lErLHCUFU5CUynZkyIybS9M4WK9otdPKWTvC?=
 =?us-ascii?Q?KwzlYoOuGsbasiMcXvIr9B9nFXh+B+Hr5ayVQqfZVNutjovGd24Qd2faeOid?=
 =?us-ascii?Q?8FlQ7IkQHkY5O5tHTn8MTp8IanIyZxnyJgH5QwjGEgAvatL4JHJ/6PJVucuv?=
 =?us-ascii?Q?oMOsP2zM63CO2zh9cB4KT3TNudNX3onHNAfVFDT5t2/fJkO+f1domv8pwC0Z?=
 =?us-ascii?Q?3PVDmWlDqHj/nzkNARL81dxd48pJcX+xbRcdh9543CaayRZEJIEHun528966?=
 =?us-ascii?Q?WsneahOFlZuYWMpG0yel8oBrPsHGrSM9o1f3PIGAOLp3xTd1iqjryWtQ4/9Y?=
 =?us-ascii?Q?6W1h7v9Ua8kLOK+oPEdj0yuuQZz5q2C1qCJc/TCCeQSVIXwWj9cbjb/Wulnq?=
 =?us-ascii?Q?3XJIw5zVpd8oHs3AfcLzOij5jiytKV6j81f4h7VmCSlOHp7tyWNCaHP9dhNH?=
 =?us-ascii?Q?DARP1pevbeKRWtikepyjwDFzMs51RQSVkMqnvIC0hMbaalLa2Lk6eSbyQFm/?=
 =?us-ascii?Q?fjpQzseCGJ3e4I1I0Xio+rUhIzOhjwA2/XoXyLU39agsLrQBSgD4AUKX/ybZ?=
x-ms-exchange-antispam-messagedata-1: R35sFKd9tP0YRUHju2Mw9hVzjGHX1a9XnPU=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e35f32a7-4ba1-41c5-d58f-08de550801c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2026 14:03:21.0477 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZxfGhRw1ZD1QJVV87sRFSY9XnKELYCkG8ti4MCMlznHzAHKOGJ0yVh7rUZGImvWGKmtOqIE8Myka/peTV2EiG9ZpT8rocutiK+/MHsilofc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
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

On Fri, 16 Jan 2026, Jani Nikula wrote:

> Yeah, I'd like to know if this can actually happen, and if it has ever=20
> happened.
>=20
> If this is static analyzer inspired, there's the problem that IME adding=
=20
> NULL checks on these is a positive feedback loop to the analyzer that=20
> some places check for NULL i.e. not checking is an error.

Hi Jani,

That makes sense. I don't have evidence this happens in practice, so lets=20
drop this patch. Thanks for the explanation.

Kaushlendra
