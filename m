Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C4ZDJvU7mkKyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:14:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8728946C4BA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 05:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB08A10E1A7;
	Mon, 27 Apr 2026 03:14:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EgKMPNIZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D760E10E1A7;
 Mon, 27 Apr 2026 03:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777259672; x=1808795672;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z/HB0OJh91CBx3dXYnihNn3LrkzQPMnXpDRQayPvWeI=;
 b=EgKMPNIZOlWmm1j7Z8bs9E+Tr158zLGIS8CmmaNxPk32n5g8xTE2fRLn
 cRAYDiv/yGzBLXkq0RWX+DGuT0gZpxQvDNh7FyYtyozuVeBpYOpkVwjlT
 HVdkgYh3YHH2G8wG1cWGoE+e9ZPZ+m+vG3Sir2swGgriUiUsHlXws85lk
 afun/cgS4hA05RDcamrku0fKZHN+gnjMRX6IVOcE6GYKmD+Y6yEkSOuDQ
 0oJsjww0mENtd+wnN38CzRDMrm4JYMo1fE6pWNhLRsC8hyggfgFBX+9+t
 /1ZgzHzBBP3Y9QwXuW2rbBjqToEY5Wifg+s0F5NbhSDCTWUo5in9xV9BW w==;
X-CSE-ConnectionGUID: WOMyUtbTQ0mAaui0PlE6rw==
X-CSE-MsgGUID: 1PEnHEm9TLCZnHV2IPH//w==
X-IronPort-AV: E=McAfee;i="6800,10657,11768"; a="95553946"
X-IronPort-AV: E=Sophos;i="6.23,201,1770624000"; d="scan'208";a="95553946"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:14:31 -0700
X-CSE-ConnectionGUID: QOdquPlOTIeJPnbo1Ral3g==
X-CSE-MsgGUID: nRo92aC4Qo2GJU2afNb/dQ==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2026 20:14:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:14:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 26 Apr 2026 20:14:30 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.39) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 26 Apr 2026 20:14:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFA9fYBScbWuT9RS/wlSvMkoSA8lHRXV7DEffjHtM/3hhuCb7IGa8aR/bSJD/z8iZvEF/AcxmcpuQ9FfAiKVYb9LVCFygj4xX4nPohU03M36vDMVT4pHO1XBFGYNQawXnyAj9ilfjzo1Yeu0fumTjldRPGTjbwAWOBM173xrd9+Ikc6WzzQS2Gzpxm+Ly6CmkNfYGuEtyshZ3qYHhXmLxfnv4DjeJehqIRXv6c5JqACoUx4gSI3jn2hRy4shvBLWLimme4hl2uWAeuH/aIBowmKox6Z9Z52J8RKiAnjSy+8XPVrjxAG4wnC11YWWIDu+rdVPIHiBwuQ8drsE+fUUvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eA92ku9ofeaN9eXQqduz3T27gL5uENmONHxwP8vWQTg=;
 b=alEWR+v1mmJaIGDYJmZUhnd2pRjBKGHCaN20UYb4mvd+U2qgky16xCewQF3JpXX0R68Dr2MYbjW74YI00LtMTDPFBEsK2xFsoVL3jrNnB2jCC1yRTAYZvP9HwkclZ30/mwB2fTeJVV28oGBktjjR2Dv5dOCOJLiqCAkZKn+aIDvMeB2gmGTMQYRhNr9uFdagMVm0riGO0yQqNewJC4W3xsDw5mVDwLA7NmrWRyghBx8IE+/5xYd/kILepQ4bO79Nz1DCFlaQ5yu/NkokJizsxryaqawNMUCxeZxo2gdbLnaKg/5U39c+9BsKf/+jOMoMDH3Xk9XmnfSxybrlnahzJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB7037.namprd11.prod.outlook.com (2603:10b6:806:2ba::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Mon, 27 Apr
 2026 03:14:28 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9870.013; Mon, 27 Apr 2026
 03:14:27 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
Subject: RE: [PATCH v2 10/13] drm/i915/display: Enable DC3CO idle protocol in
 ALPM
Thread-Topic: [PATCH v2 10/13] drm/i915/display: Enable DC3CO idle protocol in
 ALPM
Thread-Index: AQHc0nTKZOxFV9foXUidoIE4NVfj07XyQs7w
Date: Mon, 27 Apr 2026 03:14:27 +0000
Message-ID: <DM4PR11MB6360274D3E87092360E8BF86F4362@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260422162622.1869831-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260422162622.1869831-11-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260422162622.1869831-11-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB7037:EE_
x-ms-office365-filtering-correlation-id: e7e50369-86d1-41d1-f2be-08dea40b1772
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: gveIH2k9HT4KhmlYlddhqxrE090eS3GSmvGSa+dHwzQW93A4QYRNaiTHB+GDtGVDhFTMCNTcmYSCAb+Fa7jLprFDDOCnEIdGLIJ/Pq7OTdzbF8qC4PS/homncnmM1J9wmCFxPSZVJp2ZuZgMyJsKqVT7nHjS/XoX8cy3sqUZcgcE+zvatXslqYy4HKrCTMUsz/lN8OpfqaAChAhPfCuRfyVxcwCyeB5hc07H9bvSr2r8QrtLBjW9EkoaL+mmpJvFS9Y628ZozZ51lNYNiTM/JgkWQ+5ZZtQT6TCRi2imx/n1/U7GcmKQM8gVdAH1veYIvjlQCl6m5SzW+jA2A5zAalTaPFCTp05LdgGO5c8NB4KFGmrJG8w17c+Iwoln/2tf3e9YZ4kjS/he1UA5Yf6gZ1oEIZ3k8tIs3UlOEfzubxApUr6g+1P2UIn0ftEh+tPQDB3uHtnXrzxI3SCmitlzKWQKoq/t2fyuXXMLuq3nZ9uAxdJmEkM1sdB8O8k6kmZuXYUyw89NFTWlAqj7lMsyOOjyFcT8CG7s9mr9KG7uqXgZuGcs8cxcGWFvRJ3I8Gs15/MD/YDe8GlfHAS3u9ZrGO+DZ1AjOUyqEjYIi7ugsFS6tJ1iG6MK//G1Mh1zH3i/AbxnZ2tp0fRFEKClhNdjabvd1tCbvsAK1kmRzsJ2u3rH46lkSIv+s652gozNHD1BVsuAJGBRbzJ7cJc6gpKYUZFwU4NGT4OOllv3Kcq4uWexbzCo+FeatSK6VURE8bePV7Mxdj8q0FTpGrzE4o7OMg6bP/1r4W8Vr+LKtyL0BXw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NgIzxUfKv8Su0pjJgv8Ri9NdbcwwRekLge2JRgVLJRfqOIkGlyVlUd5F5946?=
 =?us-ascii?Q?ZO4l5or3qCYs1u25fIFmMT7b5OLJ7valgWKmqjNqXYORdB6Qoe6lHWnIjwSh?=
 =?us-ascii?Q?BFM/fzO8ysXQck9NCmC4K7GVKNiy5D3h4FMSr0K+qBa9fQQFWfRlK8Ud4ASX?=
 =?us-ascii?Q?A9pYQLNjD+E+1JEjsw5DqYO2fHaBdI4oPnBWRU/N+ez9/sdJ3/UU0yASJPRv?=
 =?us-ascii?Q?R5PtRPwhExtdS7ULE4HNpc2TxiDG87lNymHzaZxfLUrwb8wZ3Clt40Go/8Mv?=
 =?us-ascii?Q?+/SDM5s3g/+vdjDi9s3KRrYjg+8weoOMM5Nus4vQbC27ClYo5QYgOWDC/s5P?=
 =?us-ascii?Q?Ilw+An+1Dh2OcrrQe810gUA/LeyH41nSr5Yvao9noj16/8Od2aQKbWqnWSOy?=
 =?us-ascii?Q?zNUIOJxPOvDBkN7B0FsB+pE/5EELqCYDmjKCgvkoxdF3laMS16bTZ+Z8FC+Q?=
 =?us-ascii?Q?wJ3kGJPXNSq5j3kxc1lXNZSG7HM0rhvhjKNuu8mbuLV4BkPiFPIb83QScjjM?=
 =?us-ascii?Q?OYFXiJ4xRIGIM3BIJ4PWI5V6najiV4nqTwSOw9I/7IVezu7Q+IgW+pSPCtBU?=
 =?us-ascii?Q?4eQsHvet6cMJKkUij7zWEIByUQOIUUaMGyJS7EOOkKblo54w3t2dzfarNIB0?=
 =?us-ascii?Q?Syr94BV82U+vYOmNO64QQPc1AcjViZa11AsNk8JHbwxozBcIrUtUBXXOBl3h?=
 =?us-ascii?Q?nMo1sUmu/mO3QDLDkcBn26SWNofd2/ekmFJg5hUqeatlFlxmPhx8zvhbvej9?=
 =?us-ascii?Q?g1jYISXUJYJUGsTvHi+i76a5ziPkL4m5Sy6djTmDySsF/suTrSPAnGI8N+lw?=
 =?us-ascii?Q?U+la63skZIcvXaZC3EWPKrC7t/11vYLgPCD5coLMG7VnNvvLIHWuB5dhWAA9?=
 =?us-ascii?Q?0HLSRxXRMJn8z96DJdjXKO5IUj91e0+4t1dlEK86CQX7TJr0E9eky3VHK2MH?=
 =?us-ascii?Q?eDQWXqqlQBA+zidhgfo3XL97oZsuujhpXKXcO0PuyNuQVlMm+hKtRS/yuLJ+?=
 =?us-ascii?Q?Qkv653dqI7HpgkJYCfuaIM4KXX+UJykTs2QvmeD7AF/2NssdGlZuCjxyK+0D?=
 =?us-ascii?Q?hEa6sQ58DxzycvuQMIqSCqdD9ueJFnZD8lvjFVr5JKb+zcbIKXfSnhNnLrfe?=
 =?us-ascii?Q?EYo/jX8sYCVgspcWnvMHDLm8a68WsKMMCta7Mf0n+nKJnl5Hf/Uj4EMtsKs9?=
 =?us-ascii?Q?eZE4gn/dxjYbYXILT1i5aBDvuYK2NdGQMDAOa93k9KbwPAZaPsp7pzKP5tZi?=
 =?us-ascii?Q?NScJ60cbHsOv/wQy/VxN8iTjR29/vjf9R7LWeX3JujVFaFBeWtVNWj89RLYq?=
 =?us-ascii?Q?c2a6JjuvNkVSpMvisjcvFtHX9OXqRJ86/W526pSvdwAvCTCN7/DiuFKGVsN0?=
 =?us-ascii?Q?2billyLyo6jdI77U2RUAl9XZg2djQR7aM93m1EANngmg6qSD1pG4KJpvUMCL?=
 =?us-ascii?Q?Vs1QxAUThlRN5nLQqY3NQ8ey8gXkv+q1weKWEHOrdNLzlsyN9c9rPwuv4Ihv?=
 =?us-ascii?Q?HB7DAGTDcnufozy3cjV12wtZ1d51+y0zSyICq4+oeC6uWrENoqFYzgjfwoBD?=
 =?us-ascii?Q?3jVLfeCfQl3f4bS6s0rvWDW6HxW0v32IpaujKyUKY/nAVNkDcvbij8C8pm/L?=
 =?us-ascii?Q?BU9XJFAYSRDHCF5FcpcR8uQObKM2+0Xt5bS+f+zZgXmSmCxGhw/QxaUbC6AU?=
 =?us-ascii?Q?k13jKIi/QkhhCWew8y8b7fQhul86YO9vy0v3b2/e0hke9HYfLIATW/TvtrXa?=
 =?us-ascii?Q?ZGyOTc1o3stOaN0DipwmxpuiEqhMN5aZQTnhdBnvTL2K28F4wW4BD5mbiCx0?=
x-ms-exchange-antispam-messagedata-1: SQ35Dnl90bDbpw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XmeTB6TaBav3rhKVSYtLBiexmi9CLOQ0AwqHu7A8At7AZcMwEPccevIAft0fWxcmm/zndgzwxU5MwCJMJYqkXkDmSAParKq7nuNhIq13xY04YNZC0iBTKn8uXMsmk1jeZQb5T4Pf1i+vOuBOwDdTvx88a38Ru6lN1btK6mmfaRomvvJGDi3By7dDTcum2ImF1I0L1GM2qFbj+a+jqVjbxWRwYdt0Gh8nlicHcwt9EZRIZBf06h3LIZm7yzzIXWQTs9J4cGbFH4rEZDNOHPxp+9aqAZmEAGP7XfeGwWM0R7dmhvoRfw1guApeFALXjUDk3Pko7GnrRd2lLpdVEvL+tA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e50369-86d1-41d1-f2be-08dea40b1772
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2026 03:14:27.7966 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nq+fcOp7olhqDWGQ6II5a1GXtHj3+g4gwlmqZFR9nXi01EsVHCIUV/BcH1luq7DwqDBYumXLRPhVJ2Bfku6Xlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
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
X-Rspamd-Queue-Id: 8728946C4BA
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Wednesday, April 22, 2026 9:56 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
> <suresh.kumar.kurmi@intel.com>
> Subject: [PATCH v2 10/13] drm/i915/display: Enable DC3CO idle protocol in=
 ALPM
>=20
> Add PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL bit definition and set it
> when DC3CO is allowed.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Changes in v2:
> - Squash "Define DC3CO idle protocol bit in PR_ALPM_CTL"
>   into this patch (Uma Shankar)
> - Use intel_display_power_dc3co_allowed(display)
>   instead of intel_dc3co_allowed(state)
>=20
> BSpec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 1 +
>  2 files changed, 7 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> b/drivers/gpu/drm/i915/display/intel_alpm.c
> index a7350ce8e716..6394d1568b54 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -389,6 +389,12 @@ static void lnl_alpm_configure(struct intel_dp *inte=
l_dp,
>  			if (crtc_state->disable_as_sdp_when_pr_active)
>  				pr_alpm_ctl |=3D
> PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
>=20
> +			if (intel_display_power_dc3co_allowed(display) &&
> +			    intel_display_power_dc3co_supported(display))
> +				pr_alpm_ctl |=3D
> PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
> +			else
> +				pr_alpm_ctl &=3D
> ~PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL;
> +
>  			intel_de_write(display, PR_ALPM_CTL(display,
> cpu_transcoder),
>  				       pr_alpm_ctl);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 8afbf5a38335..16a9e3af198d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -268,6 +268,7 @@
>=20
>  #define _PR_ALPM_CTL_A	0x60948
>  #define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran,
> _PR_ALPM_CTL_A)
> +#define  PR_ALPM_CTL_USE_DC3CO_IDLE_PROTOCOL
> 	BIT(7)
>  #define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU
> 	BIT(6)
>  #define  PR_ALPM_CTL_RFB_UPDATE_CONTROL
> 	BIT(5)
>  #define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE
> 	BIT(4)
> --
> 2.43.0

