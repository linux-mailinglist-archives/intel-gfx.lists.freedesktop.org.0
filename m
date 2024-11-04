Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190509BB184
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 11:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5310810E3CA;
	Mon,  4 Nov 2024 10:50:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y7f8FwB6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FA410E3CA;
 Mon,  4 Nov 2024 10:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730717443; x=1762253443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RJ0+GdmrUdJnLt4jM686vMSGU+8DqimU4VaXVbNWiY4=;
 b=Y7f8FwB6/NC6qOJZ1NsIwGt5/wMhSs0ecvAzHQutcdUX3Txl9MxosQli
 YZPN8ZewphVkK3B9ZThaqVNyuJg0FWFTOIsrsC+DWyF5BI6Fm842+uFO/
 YH/1RF4gKaxEsXqjqCjduBLtXwq28on4lRfuen7aEzvbzq0NFBBVRp2we
 6zkBsSwLoA4/UBgQBKMHaN7odaHRkc47miSb2gGvJIwHLaSMyC1hdtXB0
 ZmAPOrYwAmYmss26Lngp9RNfsyn1i1LOEXKGez8N82tZN5jMsjWMhoDNm
 aFxUwWi4KmmgN653gMkZR5Mt5BdYr9YonUw9QKYFZ0h9PDzQ077Z21d73 w==;
X-CSE-ConnectionGUID: 5Dxs42YZSUO59Fr/C/6eYw==
X-CSE-MsgGUID: RC4VDhvoSAORCJHYnVUcBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41799328"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="41799328"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 02:50:43 -0800
X-CSE-ConnectionGUID: xHzn5lZWRmiXxNeavk3dzQ==
X-CSE-MsgGUID: 7LsUwsjNS8OcZ6Vn17Aaew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="88385569"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 02:50:43 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 02:50:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 02:50:42 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 02:50:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bky6WpFHoM1CbBNBHU0IfwGkrcABag6Us4IMl9udRhrCIAqYNArm4ywoyapY6Bdt+YWuGYMBzvf5aNwgHS07rJwYMi5b7yHWpkTxTz0mVK3pxlIVOdCdxlf8lpdcn4BRnNtd9IGKiqJOjMRgiwu81VAOksX7sdMARnFbC3EbYRB7Fog1U40Tx23mxNr012iJ7u7cqxXIaN7QDHrGKJ+P2ofP5rOUPYpWE3k/BwECFxLJIVTBRu8VQeWMeq2JNdUFT7wXLqi72Li5EiUf+uWg/ZxMmZ5wwEVkT698lqC/vWgbDawcPentFvDgL1qVulZd0/TbRdiy5FUO80vn4PIiRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RJ0+GdmrUdJnLt4jM686vMSGU+8DqimU4VaXVbNWiY4=;
 b=N+QhIc4eBfxNCy5Y6ZiG1zUKBKn18MiUkgp278CVOIlEQBvW2dBaebBObdMEW0VX+a3Mf5CwGW+DbnwyV813DFnmWiC6/IhS2y1L7+kmNOTb+rA8++/AtZwtMavpU1hRy9w1kz/+qcxrkEaguEJnvnHzDyrpirwfev6mCQ6CQBpSjtLOIh60Tjzw7yoQLAI1ehfc9AuW/VpF8cKkU4bz4jXVQ4eAJgPd7wpHAETbtnbx2KTvq/nTvoHw4eWoyCo1HULw7j1Y86kt51cf3xdt3CvZZlEKMJ6S7rUeUdGUtvRwSTh0hkjSYgj+0enw7vynddZpwr6nI1NhgdFRPxvP3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by BY1PR11MB8055.namprd11.prod.outlook.com (2603:10b6:a03:530::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.28; Mon, 4 Nov
 2024 10:50:39 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%7]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 10:50:39 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9kcF9tc3Q6IEZp?=
 =?utf-8?Q?x_DDI_function/DP2_config_programming?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2RwX21zdDogRml4IERE?=
 =?utf-8?Q?I_function/DP2_config_programming?=
Thread-Index: AQHbKxI9diLcvTqGW0+nWMOxPXC2irKf1KGAgAcj2cA=
Date: Mon, 4 Nov 2024 10:50:38 +0000
Message-ID: <PH8PR11MB67536AC659B38BE469862CFFF2512@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <173032349990.1364656.800062819986519252@2413ebb6fbb6>
 <ZyKpj01xTnI3Tai4@ideak-desk.fi.intel.com>
In-Reply-To: <ZyKpj01xTnI3Tai4@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|BY1PR11MB8055:EE_
x-ms-office365-filtering-correlation-id: 53fb6684-8caa-448b-59fa-08dcfcbe8549
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d0NxRk5Hb3NhVGxqRU0xcUxOVmxWdStBR1JEN1dHaTR5MHFwT0lSUmg1WlJB?=
 =?utf-8?B?dmMxL2plY042dnhzQ2dVMUF2NTNxOUVxT1k4WkE5Nk9JK0ZwWDc3MUd5aU1Q?=
 =?utf-8?B?MDlYcXhLaFBVZGRMa3E0U3Z1SEk5cWplOUtqMWdmenRlWjlMcXA1WFRpRmNl?=
 =?utf-8?B?T3E0TVpUV1F6MzdmREZqUjVxc3ZtNzNReDlhRCs5NDdtWnlpVHVGSU1UN2lw?=
 =?utf-8?B?allEeU9QVFR5bzErSmV6NlB2S0RKdUFlVUtwRy95Q01FeHFGK1dxbkRDMnNJ?=
 =?utf-8?B?d0ZhVUUyMXFhb2dlV2dDSzJOYUVDblFxM0F6eTA0RXozM0w5RTJTY0ZFQ1Ro?=
 =?utf-8?B?c1o5ekJ3MS94c0tQMWpreG5vUXlscEMvN2ZoREFwNFlSa0d0bGMwdUhFU3gy?=
 =?utf-8?B?T2RQRncrMVZkbE5JYmRiM1FsRzVXNjg0Yi94WndyZFhQdVpPQnpXUUtGRSsw?=
 =?utf-8?B?K2J0YVlPK3hSejR0RUw4MVdrR3kvUGFpSTBQbGxGZDFZOXdhM2phUSt6WHNN?=
 =?utf-8?B?VUkzZVAxQk5OMEZmSmJSYm10ZzN0bkY2NCt2d3ZISUtrbk9UQ2VuQUZnWDZu?=
 =?utf-8?B?SS9tTldMWno0dmVyQlhGMzRybTMyVm5BZ0tsODRrN1JYbnVvRkJ0MnBwVVFx?=
 =?utf-8?B?Wnc5ckNlaVpicU80Ymt5WmQ4WlZKQkp1VkhhUW1NcmpHYUE1V281YXlhY01H?=
 =?utf-8?B?aGFuUnRtck83SndTNnBROFowWDZURWlTMHJBcDRHRjdHZnRZTmkvcTk5eGZM?=
 =?utf-8?B?dlJIeENQQUNRNm9BUHEzTkRMMEhBVmFDU3NZWG50Nis0NCtRV0ZkU3hOK1o3?=
 =?utf-8?B?K2ZRVzJTT2NsUDRFZGRyMGJBWm5mSWFzQUZTVVF1Ni9DKy9BL21vS09wNFU2?=
 =?utf-8?B?NFRUZ01aZUxhejAwM3ZINGtHOE5aTDdXaVVSQ1oweDZJWmQwdWZBRkdsVUV3?=
 =?utf-8?B?Y0VNZiszdEZLMDBjdVk3MHh1enRCUFVBRURJSjNPNHJHcE1ZblpDYmhXQXVj?=
 =?utf-8?B?ZG56Ly9DTXZwaU4yaVNMOFhmdVZEY0ZDNm9hTlE0cC9Kdm1hMmZpMEc2NTZ1?=
 =?utf-8?B?TUZhRGZ2cDZEVzdUclVDOTN6cGxDWFhGUk1XY3JKVnpQMDZpOHdKVW42cDV4?=
 =?utf-8?B?eFp3OUVnSTY3ZzhNMjJjNTFjSzFyaUR4U3Bwb09COTM3enl4WGJjcDBiK044?=
 =?utf-8?B?RHc1ellRZFFJYWdOWVUyWjU4SG1yUzdZYzZqLzBHL3RlUHM2MCs4YTM3M29N?=
 =?utf-8?B?ZmpQMXkwMmdzdkk5ZGZ5a1A5Y0M2d2UwaEtVRGJobG9TM1ozZGRHWkdQdCsx?=
 =?utf-8?B?SXRDTjhWaVVpQ29LbjNST0l1eEd5OFJsZlEvSUxaNi9nUGU0SDRMZG1USklX?=
 =?utf-8?B?UEJTWWpFRTFqL2UycWNZaExvbWJEMkZSN1NyYmNYUEtpZ1BWYkp6ekFINFBm?=
 =?utf-8?B?M1lCTnZwZ0hlelgvL09iSW5GVjZYdUc0YWVFVDBZanpZNG9tT3JjOHdJcCti?=
 =?utf-8?B?Z0J1TmxraVRwRXF3ZHdlWlVsblBJUEdUZ0l0MGhsMlZXWktFc3RKZE01c1kv?=
 =?utf-8?B?L3lVSnlZcU90Sms2TUVlYWVDYmcyejNtWTZQejgwZFJlbWpLdmF6TFd3YURx?=
 =?utf-8?B?d3hTek1CUG8rNlpESzhOYkM4cUZpSmtLWGFkVk53Q3Nrc3ZEU2JuRGJjb0NU?=
 =?utf-8?B?Y3h5aVIrVHFEeVlyUHlyeEJjS3FBNE9FeHRDRXpsYTBoRDN1V1ZyYkcxbnUr?=
 =?utf-8?Q?ZMphVVvgd1SnaMBxF5RvIZ6QhB+0Mi5Ne827naO?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b3BvUTIwU1FnNHJoRnZleklscUdmMnZYOWUwMDJCdW9XMHlmK2ZjejdTck5a?=
 =?utf-8?B?S0FTWktZRWdkU2hPcFNRbFd6aExaWVlhalIyQ2RXSmlrcmhQL3g2TUhiR1N2?=
 =?utf-8?B?K3VwdTFyNThZaDI4NTAvWnZLNTZSNHpSSjZEK2R3SGNGT2lZS1JRR3dKZE5v?=
 =?utf-8?B?UDB1L3pPSzBIa3Q4UVA3YSt6OW1pemE1ZUd6a25MbzU3bFJBRVgwbmNnUjYv?=
 =?utf-8?B?VGNMNEpXKzQ0UTFrN1h6WExhSXg4UlpCcjhoRE4rR0tIZTE2YXZwUGJCUTRu?=
 =?utf-8?B?SHZjN2xnVWkyWFpLdXVHRytZMjFqek9LWFZqRG8xdnFUMzkwNk9kZGZ2OVFY?=
 =?utf-8?B?cnJESkpwRUc4Ym1oYXpUS3hQdGFxZUkvWmFmV29BT0k5Y0l1ZFVGaGVtajVO?=
 =?utf-8?B?eUN3SW82TEQ0UkVWeTNVYmJXdnNveXNFdlZ5YW5JdTdnZHJGRjdsRWpmSUdC?=
 =?utf-8?B?YUNlZ21aNVptS3p6Rmc1ckI5L3NWdDdwYzZIUlI4RVBrVSt3cEdjbFBwNzgw?=
 =?utf-8?B?RkZHWjRxckhSbHVrU3lBZXFuSkN4d1lpRlR1ejgrUHZNTHF0TlhyVmgxdUd1?=
 =?utf-8?B?VHBONVgwT29neGVJSEhkeS9ubEFLVGpuNVd2SEQyaVdCQ1BXNmJDNS9lQ0Zv?=
 =?utf-8?B?MGFRcnpsaFR3QlVEdGw5RWdIL1cvajB2WXFXU3RLMHFZcU9VdnB6QmNDaVJh?=
 =?utf-8?B?MDVLL3BIRURLNFB5OUp4MDlmK0dNN1ZWRldPM1F3R0NBaXBRNHQ4UDVPLzFI?=
 =?utf-8?B?QVZkUXZXY3dXeE0yUjJnVXhzVTNEekNBS05pQ0RTNTR4WGtzNjhIRjQycDhr?=
 =?utf-8?B?OUwwZlZsYTBUaUxrdmwzQkVwYTBvOEkzOGpJbEZJTm5TYlRsQWMvV1orYmRZ?=
 =?utf-8?B?YkpFQmQyRmJaV1RGZDdGZlBVRDNtYzFNRnNNZDNsTkRUdmVyVXY3azlwQVV1?=
 =?utf-8?B?YnpjZlJBeDRLbnZjZmhZTjNETnF5M2hJZStlTytvMGFCbDF6OElzeWhHOGx1?=
 =?utf-8?B?RWUyZUIwSFYvbmdIK1NqenBSU0pXaU1TQ2JlUU0xMnc3YVJYVDhRL2Frd2pZ?=
 =?utf-8?B?MGZnRGMrL3ZRdk0vNkdzbWh2bXRXTG5nWWt5eXhTcjFWSWE0bGRpZjM0emZJ?=
 =?utf-8?B?WFRCQTY4c2hYSElPMlhFelN3ZmE5bjNqcUFLWVVlemZSK2tDdUs0dnpqNWpa?=
 =?utf-8?B?SVNmRTJTc1dlcDNCS2hoY2NxVzRZM3hYY20xUC9zb3ZkamQ2ZUFOaWNQMHVS?=
 =?utf-8?B?NURCUlJ0MWpQY0xNZjd1UFY3S1ovOVVrTWhoVkVuR3ZGNVVFeGZiNmpFZFJQ?=
 =?utf-8?B?MXk2ZS9ZT010WHl3OEJwUlNOUkVzVHdySmRhOEl5bDhvUEpPSlpuUWMxOEdV?=
 =?utf-8?B?Lyt0RFkrdTBFc2Vxc2k3a1hFaCtaVWJwdC9CeFdtK1cyQzBWNkNEM1cyY1N2?=
 =?utf-8?B?TDY1S254UlRzeEczQzk3Z2RZSURUYzVhNHQ1Uyt5SHBUaVJZUjZkL3dGd29P?=
 =?utf-8?B?bnc2cDBWOG11aVExU0RINWRnVmlFV3pNdHptNDMySjdHSDJPd2E2aWJvZU5Z?=
 =?utf-8?B?ODB5TjFacXBIQ3dXbVUveVZtYzN4UjRmMnBPQlRIcmE4T0VFanVaUkt6aUJi?=
 =?utf-8?B?Tll3TGd3NXQzYXJLQkJsclNhMk9NQ0ovald3TEE4WFh1NnVuOWRmTzhrbC9u?=
 =?utf-8?B?cG0za21tZlAyOHJhUVhqMm5DRDJqZlRVMktHOVdUWVZyQ3hPMlRSQkV4bC9Q?=
 =?utf-8?B?MzNmWHFSUXVKd0VKUEppKzBiWmJZdTE1R0w4NEJqRzBWNzFrVUxCT2FyOEJt?=
 =?utf-8?B?b0xIdTY3VktFVzJNVmpJdFVxK0tBWTEyekx2bHN6M2plL3ZtR3pCK202bE1K?=
 =?utf-8?B?VmpPL3ZpL0ZqVU5lY3ZPaUF4ZlVyc2xkY1dZOWQ4OTZzc3ptQmdORkJNMEVX?=
 =?utf-8?B?Zk1kcDFIdklsaDlWNFdxWExiano3UmFvSHFjY0dwMEY4M3FKMURLZlBGL01u?=
 =?utf-8?B?dGZRemsvSDJOWENYV0N3eDlMSXp0TkJIOHEvakNIWlY5R3lIek5xTEM0OTB5?=
 =?utf-8?B?bWQrMU8xMXF4UTBpbnc0NHlvR3hwdjVBZUd3VkVtekhnTkgxT0lnNWNFd1Jy?=
 =?utf-8?B?K1lSTEE0Zk1sSGFHdkxvckxBRFZLSFdySWRVMzhqMmwxbWJTU0QvUklTd0ds?=
 =?utf-8?B?Rmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fb6684-8caa-448b-59fa-08dcfcbe8549
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 10:50:38.9535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qAi8Ro6PhKt2ghcZ/AWd2CvqkyvxE1Jth3B0Ry0BREnRti7RE7HT/93kGWumxkaRElgrLdjZqXOibYAMg9abeohi2SkJk0FPam+taMZQBW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8055
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQwNzMyLyAt
IHJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0KU2VudDogMzEgT2N0b2Jl
ciAyMDI0IDAzOjE4DQpUbzogSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJ
LkJBVDogZmFpbHVyZSBmb3IgZHJtL2RwX21zdDogRml4IERESSBmdW5jdGlvbi9EUDIgY29uZmln
IHByb2dyYW1taW5nDQoNCkhpIENJIHRlYW0sDQoNCk9uIFdlZCwgT2N0IDMwLCAyMDI0IGF0IDA5
OjI0OjU5UE0gKzAwMDAsIFBhdGNod29yayB3cm90ZToNCj4gPT0gU2VyaWVzIERldGFpbHMgPT0N
Cj4gDQo+IFNlcmllczogZHJtL2RwX21zdDogRml4IERESSBmdW5jdGlvbi9EUDIgY29uZmlnIHBy
b2dyYW1taW5nDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy8xNDA3MzIvDQo+IFN0YXRlIDogZmFpbHVyZQ0KDQp0aGUgZmFpbHVyZSBpcyB1bnJlbGF0
ZWQsIHNlZSBiZWxvdywgY291bGQgeW91IHBsZWFzZSByZS1yZXBvcnQgdGhpcyByZXN1bHQ/DQoN
Cj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1f
MTU2MTQgLT4gUGF0Y2h3b3JrXzE0MDczMnYxIA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+IA0KPiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4g
DQo+ICAgKipGQUlMVVJFKioNCj4gDQo+ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5n
IHdpdGggUGF0Y2h3b3JrXzE0MDczMnYxIGFic29sdXRlbHkgbmVlZCB0byBiZQ0KPiAgIHZlcmlm
aWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdl
cyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiAgIGludHJvZHVjZWQgaW4g
UGF0Y2h3b3JrXzE0MDczMnYxLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gKEk5MTUtY2kt
aW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1l
bnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2
ZXMgaW4gQ0kuDQo+IA0KPiAgIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDczMnYxL2luZGV4Lmh0bWwNCj4gDQo+
IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQ3IC0+IDQ2KQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4gDQo+ICAgTWlzc2luZyAgICAoMSk6IGZpLXNuYi0yNTIwbSANCj4gDQo+IFBv
c3NpYmxlIG5ldyBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFy
ZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBh
dGNod29ya18xNDA3MzJ2MToNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMg
UG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBpOTE1X3BtX3JwbUBtb2R1
bGUtcmVsb2FkOg0KPiAgICAgLSBiYXQtcnBscy00OiAgICAgICAgIFtQQVNTXVsxXSAtPiBbRE1F
U0ctV0FSTl1bMl0NCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xNTYxNC9iYXQtcnBscy00L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVs
b2FkLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQwNzMydjEvYmF0LXJwbHMtNA0KPiAvaWd0QGk5MTVfcG1fcnBt
QG1vZHVsZS1yZWxvYWQuaHRtbA0KDQpUaGVyZSBpcyBvbmx5IGFuIEhETUkgb3V0cHV0IG9uIHRo
ZSBhYm92ZSBtYWNoaW5lLCBzbyB0aGUgRFAgb25seSBjaGFuZ2VzIGluIHRoaXMgcGF0Y2hzZXQg
c2hvdWxkbid0IGhhdmUgYW4gZWZmZWN0IG9uIGl0Lg0KDQpUaGUgZmFpbHVyZSBpczoNCjwzPiBb
MjAwLjAwMDc5OV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUgQiBG
SUZPIHVuZGVycnVuDQoNCmFuZCBoYXMgYWxyZWFkeSBhbiBvcGVuIHRpY2tldDoNCmh0dHBzOi8v
Z2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIzNzkNCg0K
RWFybGllciBzZXZlcmFsIENJIHJ1bnMgZmFpbGVkIG9uIHRoZSBzYW1lIFJQTF9TIG1hY2hpbmUg
KGluIGRpZmZlcmVudCB0ZXN0cyksIGFsd2F5cyBvbiBIRE1JL3BpcGUgQjoNCg0KLi9kcm10aXBf
MTY4OS9iYXQtcnBscy00LzEwL2RtZXNnLmxvZzo8Mz5bICA1NTIuNjg0Njk1XSBpOTE1IDAwMDA6
MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJydW4gLi9JR1RQV18x
MTk3My9iYXQtcnBscy00LzAvZG1lc2cubG9nOjwzPlsgIDEyNy43ODYxMTBdIGk5MTUgMDAwMDow
MDowMi4wOiBbZHJtXSAqRVJST1IqIENQVSBwaXBlIEIgRklGTyB1bmRlcnJ1bg0KLi9JR1RQV18x
MjAwMC9iYXQtcnBscy00LzAvZG1lc2cubG9nOjwzPlsgICA3OC4wMDI5NDZdIGk5MTUgMDAwMDow
MDowMi4wOiBbZHJtXSAqRVJST1IqIENQVSBwaXBlIEIgRklGTyB1bmRlcnJ1bg0KLi9QYXRjaHdv
cmtfMTQwMTk2djMvYmF0LXJwbHMtNC8wL2RtZXNnLmxvZzo8Mz5bICAgNDguMTAwODk1XSBpOTE1
IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJydW4NCi4v
SUdUUFdfMTE5OTAvYmF0LXJwbHMtNC8wL2RtZXNnLmxvZzo8Mz5bICAxNDUuNTExMzQ1XSBpOTE1
IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJydW4gLi9D
SV9EUk1fMTU1ODUvYmF0LXJwbHMtNC8wL2RtZXNnLmxvZzo8Mz5bICAxMzkuODkyMjMxXSBpOTE1
IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJydW4gLi9k
cm10aXBfMTY5MC9iYXQtcnBscy00LzIzL2RtZXNnLmxvZzo8Mz5bICAzMzUuNTMzMzU0XSBpOTE1
IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJydW4gLi9Q
YXRjaHdvcmtfMTM5OTc4djMvYmF0LXJwbHMtNC8wL2RtZXNnLmxvZzo8Mz5bICAxNTYuMjIxMzA1
XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJy
dW4NCi4vSUdUUFdfMTE5ODMvYmF0LXJwbHMtNC8wL2RtZXNnLmxvZzo8Mz5bICAgMzAuNzg5MTAx
XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJy
dW4NCi4vQ0lfRElOXzE1NjcvYmF0LXJwbHMtNC8wL2RtZXNnLmxvZzo8Mz5bICAgNTMuMjkzNzc0
XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBDUFUgcGlwZSBCIEZJRk8gdW5kZXJy
dW4NCi4vZHJtdGlwXzE2ODgvYmF0LXJwbHMtNC8xMi9kbWVzZy5sb2c6PDM+WyAgMTQ3LjA0NDA3
Nl0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUgQiBGSUZPIHVuZGVy
cnVuIC4vQ0lfRFJNXzE1NTk0L2JhdC1ycGxzLTQvMC9kbWVzZy5sb2c6PDM+WyAgMTM2LjcwNjUx
NV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUgQiBGSUZPIHVuZGVy
cnVuDQouL0NJX0RSTV8xNTYwNy9iYXQtcnBscy00LzAvZG1lc2cubG9nOjwzPlsgICA3NC45NDI2
MTBdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIENQVSBwaXBlIEIgRklGTyB1bmRl
cnJ1bg0KLi9uZXh0LTIwMjQxMDI5L2JhdC1ycGxzLTQvMC9kbWVzZy5sb2c6PDM+WyAgIDQyLjE2
MTY2MF0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUgQiBGSUZPIHVu
ZGVycnVuDQouL1BhdGNod29ya18xNDAzNzl2Mi9iYXQtcnBscy00LzAvZG1lc2cubG9nOjwzPlsg
ICAyOS4yNzU3MTRdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIENQVSBwaXBlIEIg
RklGTyB1bmRlcnJ1bg0KLi9uZXh0LTIwMjQxMDIzL2JhdC1ycGxzLTQvMC9kbWVzZy5sb2c6PDM+
WyAgIDc3LjE2MDE5Ml0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBpcGUg
QiBGSUZPIHVuZGVycnVuDQouL2RybXRpcF8xNjg3L2JhdC1ycGxzLTQvMTUvNC9kbWVzZy50eHQ6
Myw0OTE4LDQyMDI5NDM2LC07aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBp
cGUgQiBGSUZPIHVuZGVycnVuIC4vZHJtdGlwXzE2ODYvYmF0LXJwbHMtNC8yMy9kbWVzZy5sb2c6
PDM+WyAgMjc0LjI0MzcyN10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogQ1BVIHBp
cGUgQiBGSUZPIHVuZGVycnVuDQoNCj4gS25vd24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPiAN
Cj4gICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTQwNzMydjEgdGhh
dCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KPiANCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPiAN
Cj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
Og0KPiAgICAgLSBiYXQtYXJscy0xOiAgICAgICAgIFtQQVNTXVszXSAtPiBbQUJPUlRdWzRdIChb
aTkxNSMxMjEzM10pDQo+ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fMTU2MTQvYmF0LWFybHMtMS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlLmh0
bWwNCj4gICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQwNzMydjEvYmF0LWFybHMtMQ0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZS5odG1sDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kczoNCj4g
ICAgIC0gYmF0LWFybHMtMTogICAgICAgICBbUEFTU11bNV0gLT4gW0FCT1JUXVs2XSAoW2k5MTUj
MTIwNjFdKQ0KPiAgICBbNV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzE1NjE0L2JhdC1hcmxzLTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJv
dW5kcy5odG1sDQo+ICAgIFs2XTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MDczMnYxL2JhdC1hcmxzLTENCj4gL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiANCj4gICANCj4gIyMjIyBQb3NzaWJsZSBmaXhl
cyAjIyMjDQo+IA0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBndF9oZWFydGJlYXQ6DQo+
ICAgICAtIGJhdC1kZzItMTE6ICAgICAgICAgW0FCT1JUXVs3XSAoW2k5MTUjMTIxMzNdKSAtPiBb
UEFTU11bOF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFs3XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU2MTQvYmF0LWRnMi0xMS9pZ3RAaTkxNV9z
ZWxmdGVzdEBsaXZlQGd0X2hlYXJ0YmVhdC5odG1sDQo+ICAgIFs4XTogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MDczMnYxL2JhdC1kZzIt
MTENCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfaGVhcnRiZWF0Lmh0bWwNCj4gDQo+ICAg
DQo+ICAgW2k5MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5
MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTIxMzNdOiANCj4gaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjEzMw0KPiAN
Cj4gDQo+IEJ1aWxkIGNoYW5nZXMNCj4gLS0tLS0tLS0tLS0tLQ0KPiANCj4gICAqIExpbnV4OiBD
SV9EUk1fMTU2MTQgLT4gUGF0Y2h3b3JrXzE0MDczMnYxDQo+IA0KPiAgIENJLTIwMTkwNTI5OiAy
MDE5MDUyOQ0KPiAgIENJX0RSTV8xNTYxNDogYWZkYjU2MzFhY2IzMTdlY2ExOGIxNzEwMDZlZmIz
OTMwZmVmN2ViNCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0K
PiAgIElHVF84MDg4OiAwMDMwZDViYzkyYjhlNGFjOTkxZGIxYzg4YWYxZjBhZDc1OTM4MTJhIEAg
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAg
IFBhdGNod29ya18xNDA3MzJ2MTogYWZkYjU2MzFhY2IzMTdlY2ExOGIxNzEwMDZlZmIzOTMwZmVm
N2ViNCBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4g
DQo+ID09IExvZ3MgPT0NCj4gDQo+IEZvciBtb3JlIGRldGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQwNzMydjEvaW5kZXgu
aHRtbA0K
