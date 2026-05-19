Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKkAAy7lC2r+QAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:21:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E95C657733B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E347F10E2E7;
	Tue, 19 May 2026 04:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tds05voQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797E510E16E;
 Tue, 19 May 2026 04:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779164458; x=1810700458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+ci4jU8id3pHrXt5Eh6SfcCD2XxAXhHh3iVlRV3/BxM=;
 b=Tds05voQL2DT60rxeBnTopSEfgAdfpjvaVFMH9LH3MbVC0Vu99+hgKE6
 uIDmn5EtdliO/e8r8X5shltZuVAiAbSFCB7Ogn8lHs78UIHkbWEOVDXCx
 I5PeEMXoOCRFER/QnaDq7W0dml6CO5LGb4aINsPAZ7Nqmzn/rLGbsnyku
 Zl5CRU/w+xGy3Qn8RVmux4MJPVARQZIRkAwlXhwnI2Nr0snXdxTlPYuPX
 TdCz47RnYqmOA3+gUC0wwfK3nLR/bFUwR3bbXoWQYRurR5PPZ7xvqZf5q
 kLG+1+UMvbxvjXxsLynypwCOab5bD9Jhd8Xy6jx2Ezm0JTQ8K7f+M8Q8a A==;
X-CSE-ConnectionGUID: r0PSHfi5TuCABD0GgmbG+g==
X-CSE-MsgGUID: PYCCGi0rSzKtXUACUAPNnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="105492141"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="105492141"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:20:57 -0700
X-CSE-ConnectionGUID: afxyCDi4TYKT8b+HgBCZiw==
X-CSE-MsgGUID: sEOsazmsSUatyRrx8iD2/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243624346"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:20:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:20:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 21:20:56 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:20:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ocSVg26Q7rXfaNtMIM+ZdCz/qEXFTuRi7r4vcKEz5/QBhfn2PYvPDm6+RIJ0HCPqGqdAQP6biBakJklwR0iNst7Q1lBFo+EgZAAvX5F7l0t/tXyKEBmY1OfBB+mv+DCRkPgG4E0XMMDLEiqGSTGJgrcu0bnWzYzeFzIeZHYJka2hM78zoJJvLTSO0N9G5epAyJeEgpf68PhUO/uDwKSCsw9409PJrT2Krv35bqAOokSjIMx9eKKXD4nrcbL8d2kkcahcvC9Ut14P7XQh6RdzlVUsqpXcCLc6uEVDxR7gMOvYsF0FHuSPtKO8kOvBxL8bv27O9qi1sLyPBaG50jCF3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ci4jU8id3pHrXt5Eh6SfcCD2XxAXhHh3iVlRV3/BxM=;
 b=nIaLIcAqh6fJCPLNwdyTM1BHWCp3DnCt40JR97XYdCf6jMoZTWwkiROPBQIHHgs1RKit+ZcS27andsoKGuSEZBXB9+ukH9CTNlcz8tKKz7OcttSSdc+UfS1/lXvmHzCz2PF9TN/vC1Ck6MC7FhnszcIRbvwjrWRdgylGhZE601uWoXErjDIINbhFnHbuF2oCvAFgvZ0eY2fwiVkWBCyplq14lvmtQ+KQ37Ovu6hunsyjiW9wvBVO4AKvWUAuujMZXyOXDtWmYl2gPtqElaZiuVHPlnmUMMTMIGQMZkbpQ6edvC4tsPZoAVlMkTvISf230UjwGBSWPqe8+uLICvrwWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DSVPR11MB9694.namprd11.prod.outlook.com
 (2603:10b6:8:34d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 04:20:48 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 04:20:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 02/31] drm/i915/bios: search for VBT #57 by default
Thread-Topic: [PATCH v3 02/31] drm/i915/bios: search for VBT #57 by default
Thread-Index: AQHc3cFO4EkhNAhYw0GfjXbxH1wsWbYUzbkw
Date: Tue, 19 May 2026 04:20:48 +0000
Message-ID: <DM3PPF208195D8D319C32D57F3860336882E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-3-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-3-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DSVPR11MB9694:EE_
x-ms-office365-filtering-correlation-id: 8063a765-42f8-4f63-4b5c-08deb55e0123
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|3023799003|4143699003|11063799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: vQdL+nafFiamNRD1JpwERrbm9QKf1ptbPMgECKCun7d4PCK4cB203h1qcq3+MXH8Yfb/jPJ1qjxoSJhGd0oWi/i1e48BCFE00GAnRdVfN6hzLgoqd4IBViehzZz/R3XgPClM9XBgxnKqOE/cc1xRIxPLE/Q7eUR9NFddCibylf2+SIZUoZmOQN0p5n6Nr+2KYAu1JX7Xkx0Es5eCsLWrKyXDK1vh9CfbZmUFJfbZqExIfVfNwucut2XZbf+BWdMB/6ewKTJ/UtImrsUfD4bd29y1JqO1Hei28k8Xn8wOkbFEydvmmConrHifSQvIpOx0huDAUYnzt1cqZhnAwzhAGuG+z+MAlSk9I/t3cdWJ/VqNEmaD8k59gpf7QljEOR3Z5l/tRwgiy8Cy05+lnDMjOwdk5AkIqy+rgNAcbcOcMq59BFDh5us40o9yMNsXDH4A1PUCccCBEYlu73+qUEmG4Otd2cRHfuv24gjuzJ5sCei8vE31eUQZnpig3aBKJgPtJOq7MODYvPyEUjfcJ26vvfk3fPEVVy9sKcNO9uCzIdI8qgkqIy94fYaHREq9DrK5vDQ2x5Z8bajSGddcRLFdhbY/D1pvNlE1q+/jg+yTaB8QcSY2FmpiYCIeY9B1zY0UjCeVpzd/VxZSnuWtTt/HYxsAXTb6OZsuApwNymj/EhlJvEKj6HWlfzrFNpr2JZdFKANek4UD+lsqg3kiEXI4ZV14LwijSL87j7ox/5spthOEOElG4kZdvc7LXczLn/V+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(3023799003)(4143699003)(11063799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXl4a2dMcnoreG5hcE5Yek85dnVuMm9lUm1oekhlUEVDaTgzY0llSkh3ekdE?=
 =?utf-8?B?QStOd25rWHc1dUJWVEh2dmh1VnI2MjNIMFd5SzZ1anJ5a3pKdWQvekt6REIv?=
 =?utf-8?B?Uk51QXJZVGFSY3NYb0NlZGZlK2hMTGJtOElXeUcwUVJpcW9CUFhmTm8rWXJ3?=
 =?utf-8?B?WUt0MS9sTFNLUXpVcjdDUytnQTE1c0hSdnVmTXREOTdKNXpydnJTelB1bWZI?=
 =?utf-8?B?WnZQK08xLzE3YTF3QWttSDZpaFpQRUNiVXFiZjh6L3dHN0dFS25YdS9acHlS?=
 =?utf-8?B?aTU4VFIrOERpODc1TDVKbTdoaFZKUG5lUXNhWTBMOW5qdmhITVNXaEVFdG5z?=
 =?utf-8?B?TWl0VlpqN1ZoL0g3T3NaWXRQMmFQVGdVbUl5NnROMVFZM2lXbHRxTlZjdE9K?=
 =?utf-8?B?bWVXV0JhbFZuZEhyTW5rWktGelhrWFV2SUUrWE43aTNzaWJUUVdaTXNXemF3?=
 =?utf-8?B?azVmbGxqZlF3VVIvMHlaMFpuVy9aNUM1TGVwZlZZdTBBOXpUL2J4TXB3WDZ1?=
 =?utf-8?B?ZjRGV2xUaWszSklSRFhqbnp5ZGlUcDRhTVdiOEZtMjhvVlorNUcxV1NoZW5N?=
 =?utf-8?B?ZWphNy80bThtM01HZXMwNGhXRDJXamxCcnRqUmthRG1nQndzOFhWZitkZ0hO?=
 =?utf-8?B?Z3M1bXFBMXBDNm1MUEdSYWhOTjhob1ByZk5YU05nUnlXYnpnbDh1cEpZSytC?=
 =?utf-8?B?NS9uK1FHbGloZnRyNjBaTFpwWkxEbHFtN0c2R1lHbVE5R1BLdkVTNW9ibzA2?=
 =?utf-8?B?bnFXYkJDQmxjM3dEcWNRcTBvbmxTWXVLMTFJSHY5RkZFeGo1NVBDT0dWRi9r?=
 =?utf-8?B?Y3hQVWZjMnBpNVNvSEltK3hWUWtoYVpsdFhBVGpXbHJ2c0xId2hYNFd1Ry9v?=
 =?utf-8?B?N25LSDlsdEpRZmh2cUQ2UHJ3emowL0pQNXo4eDBBSG9qbnFmcm52ODJHSTJV?=
 =?utf-8?B?Z1lxODBLb0RjRFlDNTVOdTZBVW1SZkVvUElYTGg1Wkpva0FtSCtPbGhPUGZ2?=
 =?utf-8?B?WjBTb3FldnVsL3dqdHoxaHZvZTBQU0VmTitzNGt2TDUxNldrWkdHb0dPSzB3?=
 =?utf-8?B?QURTNDQ2TXdaeEFHdjVNdDJJTzN6U3p6SEoxbGYwTW1vamJuUzc3WlhwazQy?=
 =?utf-8?B?VDdiY3FzVXUxclRFWnV4NUVDU2ZlUkpBK0RUNE9iS3ZaUHMwdUJiSmNMbk9p?=
 =?utf-8?B?c1p6YXd2Vmd1Rm5uZmhjNU9SR284MHV5akxrOFZHS3VQVG5xYjBteDlDc0l0?=
 =?utf-8?B?SkJDQk1DdGNFYUJFRmlxaXZTRTFZcmd4QWZoUmplTnhDSVFncThUUjQ1NlhV?=
 =?utf-8?B?eUQya3JIQy9odytrU3ZvN0V1K05BaDdLMjJrUU1UUktmMlRWZFNkMlhPSmY3?=
 =?utf-8?B?OGJDZkhWb3JpM1lUSWVHRlJpU1F6TFViWFpMbkFFSjBxMUZ4cjVZUzdSWGtW?=
 =?utf-8?B?azd2S2ZaMXBiTFFhcS9RU1V3RDd1UUdXRXQza01MZXhvVytnSHVYTmRmYnBO?=
 =?utf-8?B?VGNMQ211M2dQN3FWY05ZdkIrQWZsZEJPU3owbmpna0hnalRXQ3JLQ2NrcUdF?=
 =?utf-8?B?cFNjaXpvRGgvKzdNNU0xdlYza0ppWURibVNsWHZWTkhkMmVsU0dFYzUrOTlB?=
 =?utf-8?B?K2M2a3J0VEs4R3RJa0x0aHZNeTR0RGtVYmJNUzdTaGFTeUhDZkNKdmNENEZL?=
 =?utf-8?B?c25XaE41L2FzQkExcVA2L29WSWExaDRUQ1E3VFhTRnBRdmhpVVQ4L2o5RExC?=
 =?utf-8?B?ZEhLVVhsaVArR3Q1emVMTjUxSXJtbmVOM2dvbHRnQ1AzMkNpWXFLSDZYSmJZ?=
 =?utf-8?B?b3dtNXZZdUtiTGpWOGI1YWx5L1M5YThaSGEyWjJuNndwcUxZc3RmaGZKTmc2?=
 =?utf-8?B?Mms0Nk51dllEblI5dldXUU5SbERCT1QwWDMyQzNWVmZNZWlMSWl1QWtwN0ZY?=
 =?utf-8?B?aGdrNTJzampBZkRjQVhqdkMxZTRTRnJiT3pWY0pDdUtjbUNnVjU3MlZaY1Zl?=
 =?utf-8?B?bTV3Wm9DMHVyUkErZGlNVWhiYVB4Rm1Qb29KMXZlRm5pM3pSMWNDcUZNbE9q?=
 =?utf-8?B?Sm5kNmhHSWdObUhMb0ZycXRDd2UrUjMwNm0yd3ZNdnFsZ0JIaG5sRFBKTzd0?=
 =?utf-8?B?eitwVGxoQiszS1I1K2hCNkI0bjd0OFV0ZWxpM3ZjL1gydUc4eWRMbEhVTmVo?=
 =?utf-8?B?VmgzcXBzUGRJSXM2TUlJVHAvTG9MclI4S1FZMFJ0M1o3UXNuMFRNR3lRKzl3?=
 =?utf-8?B?T0YyTVhySGlmZStmVmRxZjZZMjNZMVE2T0tUMW5KL2xPQWQyWnROY0RnVC9x?=
 =?utf-8?B?RXYvWkQycmZDZkZnd05OSk1RT1AvQ1hKaDVZbFIwdnM5K09UOG90UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DODjhrbxKh+Rx9RC1SOxBTjL2LiEEgYsvFqCR6LE9m/Ac30MyaL/sR5BImJ2g78gpNlLtPcCpZTCLIVrCF2BMHgX+qlULjFGqymQSq1Wp9zhj1u3eMY+/O5qqfvUuGa4nAW/5XZsMftx0dlO9PVv6hnRCotx/jQue4DEkWaSHOBVm0Qi8OwJdfCUAcqGiw/j/0doDd9tM1Zj9/TNZJ+oeAxLG0jpxpkSCLqRdsaKBafb9vc6vEZCAU1oWPqyij+4gMgf//gxkw3CUW/Yzbbb7DHCeA02Hv5E/3IJfZ9PGmdaD8owCi6eoX6IaPCs1X4bTXpnr+tFccLSC115kiN22Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8063a765-42f8-4f63-4b5c-08deb55e0123
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 04:20:48.3426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tMz4kaqZIuGWCE8tM/xa6qB3OtHDjyv5I7VfbBQxPGZAk33tZN7nevxjUV41Cxd5jIj3fCJwJjJsZwbjVNqwZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB9694
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E95C657733B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDIvMzFdIGRybS9pOTE1L2Jpb3M6IHNlYXJjaCBmb3IgVkJU
ICM1NyBieSBkZWZhdWx0DQo+IA0KPiBTdGFydCBzZWFyY2hpbmcgZm9yIFZzd2luZyAvIFByZWVt
cGhhc2lzIE92ZXJyaWRlIEJsb2NrIGR1cmluZyBWQlQgcGFyc2luZyBhdA0KPiBpbml0X2JkYl9i
bG9ja3MoKS4NCj4gDQoNCkJzcGVjIG5vLiBoZXJlDQpPdGhlcndpc2UsDQpMR1RNLA0KUmV2aWV3
ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IFNpZ25l
ZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMiArKw0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggYjZmZTg3YzI5YWE3Yy4uNTcw
MGRlNDM4ZmRmZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMNCj4gQEAgLTIwMCw2ICsyMDAsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHsNCj4gIAkg
IC5taW5fc2l6ZSA9IHNpemVvZihzdHJ1Y3QgYmRiX21pcGlfc2VxdWVuY2UpIH0sDQo+ICAJeyAu
c2VjdGlvbl9pZCA9IEJEQl9DT01QUkVTU0lPTl9QQVJBTUVURVJTLA0KPiAgCSAgLm1pbl9zaXpl
ID0gc2l6ZW9mKHN0cnVjdCBiZGJfY29tcHJlc3Npb25fcGFyYW1ldGVycyksIH0sDQo+ICsJeyAu
c2VjdGlvbl9pZCA9IEJEQl9WU1dJTkdfUFJFRU1QSCwNCj4gKwkgIC5taW5fc2l6ZSA9IHNpemVv
ZihzdHJ1Y3QgYmRiX3Zzd2luZ19wcmVlbXBoKSwgfSwNCj4gIAl7IC5zZWN0aW9uX2lkID0gQkRC
X0dFTkVSSUNfRFRELA0KPiAgCSAgLm1pbl9zaXplID0gc2l6ZW9mKHN0cnVjdCBiZGJfZ2VuZXJp
Y19kdGQpLCB9LCAgfTsNCj4gLS0NCj4gMi40NS4yDQoNCg==
