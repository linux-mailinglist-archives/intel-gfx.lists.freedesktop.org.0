Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CD3CB8BB6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 12:42:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D952F10E6DC;
	Fri, 12 Dec 2025 11:42:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AbfAysni";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0958910E6DC;
 Fri, 12 Dec 2025 11:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765539727; x=1797075727;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Uy1hOKPtQLDEt4EC5+G2WyY8n5J+S3L1qNRnZJn3Lws=;
 b=AbfAysni1Ap4RMV1OC5NFFgz5nmYFciZWunsPU6zWKITHB0qRWeKXzB7
 DeG/QfgrtoHmpnFVC8cq6UQ1f8M+jQ/X+2b1Fnl1X8IM7TAVFhiFJKdAL
 xNxptsdYCnIuB+sekZXYyUNduBson83WeafjpdqLR734qhU/oCGgnE0uL
 3Napz4E6ZlrXt676/sznaMyk+5EOdeNRjBr6TCqg/WRi4hMaFNAvQMyx4
 fnNNKlXduLxeP2sckcOvEOtc7E+gTvXlQmsSCGDCuigDpYsVGFrw0/k7c
 4DMTlopYXsc8P1hH7ldk2LHBBqyltL+2cBMbsUUC0oCq8iecN6qRv87dL Q==;
X-CSE-ConnectionGUID: rAPpfhnRQoKYHH8hzPIyIA==
X-CSE-MsgGUID: /d0ZUiRITRGfxV//a1ZzcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="78913181"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78913181"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:42:07 -0800
X-CSE-ConnectionGUID: xSAd+UlORZapp/6U34lDPA==
X-CSE-MsgGUID: iAJPMxvXQm6FSTuTLiSlHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="201545362"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:42:07 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:42:06 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 03:42:06 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:42:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ns5HTJ9qb2SWZ7Ftra0BzjArQ3A+0hMquRppqtqsgYGzd4adlulw5XKi5QQOZOap8e98GQUadl4SucCRhwNUlysi0Ogn3uh2p1jyKl/uhvd/hBkjgHtvR/69Rcu7tAOpDzpjovidIaOeeoQNDFEmUQlJGZC028koa9CcjHO3b4YYLHZQ1vLxY2CJ5nYGrhciJzh8Cqlq31gSkbqwK1PXYSGxLzohcya7qU5JdDpp/UUAPvj8nrD9sMaTDNnmqGNfUCWv5MhXV6dmwktdKWLZ8auU/ts/x7D1x8+7Od5spEN/dBUBJ9wlb29MMlw2nzm4mrdoWBtU6vg6SM+l/FC3pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uy1hOKPtQLDEt4EC5+G2WyY8n5J+S3L1qNRnZJn3Lws=;
 b=eYsWjp/nJd1vzl0GoNViZvxWBI5nsZiqplMCoLggVAsukGrIdW8gheWx6dbUy3FFy0Rtp0dXVYCbisRKXa0kmopyN8j/AYxtNCLSda+pwPF6c6iHJNyg1fwLq6XYu6MUMGaIMUm7cjYJIHebZ/ac5HchNJ17vuT3bssMQsGpmEi2sBMSw/YOijOe83OM7hNNvWkBtOuJbX5V9gKyVfDTS1XPxzZfXDOEAYtLmOVrzQgTtrw770mOWM0CPv3S4i3v7YGa/Ztd+f8vgG5UMwvKi4X6HcIFhmRovg7/OZJTyynIWFNbw3iFYef5/4Q4yPfkuEf9pu6KlUIhdEvRId0ThQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 11:41:58 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:41:58 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 25/50] drm/i915/dp: Factor out
 compute_min_compressed_bpp_x16()
Thread-Topic: [PATCH 25/50] drm/i915/dp: Factor out
 compute_min_compressed_bpp_x16()
Thread-Index: AQHcX8vSXz2yJwwHe0C8eDsDhiezU7Ud1uyAgAAW6ACAAAs3AA==
Date: Fri, 12 Dec 2025 11:41:58 +0000
Message-ID: <56474d968e3db5b375c055d06a74f14b6c76c649.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-26-imre.deak@intel.com>
 <276db28877253cbdb285cfed24d81dc00d5dd0bd.camel@intel.com>
 <aTv2HGvIChY01PJ8@ideak-desk>
In-Reply-To: <aTv2HGvIChY01PJ8@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BY1PR11MB8005:EE_
x-ms-office365-filtering-correlation-id: 0725650d-0064-47ec-c354-08de39737568
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?c2VJcjJmeERIaWpBRmozSnRPekZMTVhEWDRGQ1NvM1dydnlNTEU3em4yZTIr?=
 =?utf-8?B?dGh4cWlZcFNUNFZvbEQyMzVSQXlaQnN6OVU5NUErUnJicTlsTldzOC9KQ0Rm?=
 =?utf-8?B?TEZQUndTcWxWbmw4YmxWUzVIbk9QbzRDcnk5WGFnbnJUWG9JNzVES2ZRMXFG?=
 =?utf-8?B?YjFNWlYwb0lMMFg2OVpBcUpBODJqbzR5akhWV3ZYek9Ja1BwVHhEeE1WeGdi?=
 =?utf-8?B?aWR0UVQ3aDJzVEhUN205aGFFV0xlbmlzSmVIdGdZY1lTQTgvaE9zb0RCZFJw?=
 =?utf-8?B?MFB1ZHhCZDJpczBuNVRZZzk1aWpId0x6S1NKRlppNzU3bG9wazEvbmJiWVdW?=
 =?utf-8?B?TVJCRHJ2U1B3cFFIMW5MWVd5ejlXS1JBbXZTbUNXU3MxKzBVR3A4YUNyRDAw?=
 =?utf-8?B?UmgyaHVsMjRVVmJWR3Z1dklCdWVsVmtKNGU0SFcxMWxlRzVkb0ZDQlpFdjRW?=
 =?utf-8?B?cUtTWG13N25xNEV2NzZlMU9qa08yd1hZTjY0dm5LUENHbTVhQlRuWTBrczRN?=
 =?utf-8?B?R2o2azRwR2F3SVZxWTBtbjdKMVQxWWNBeGpKL01UNFJZS3E4ZVk1UlhCbFBV?=
 =?utf-8?B?d0YxRy8xVzg1ZVhJOFVnbDRKcE1sZ0NXNlVNRm1GK2Z4OVc1MDhGQXNnRlhJ?=
 =?utf-8?B?V0swelhvMWhDNEtrQ2dVQjVTVkxzTkYyalNRM1FoVm5rU3Y2VTdDcTNQTDhn?=
 =?utf-8?B?d0ovcUdHa1hNRXk3UnpOZzRCZTZraTVlMVpUQm1WUXBWL0NqTHRiZHpuSnJn?=
 =?utf-8?B?Y1REYlM3K3A5eG44eUI5Y2UzY0xXQXVWZ3hXcXdGc3RwOEpSc0hJUUpyb0dm?=
 =?utf-8?B?aE1vUW43U0dlSGJvVWc5STlpWUVXOWN4bnZQUTl1Z2VyZXovckV3VWZBK0VJ?=
 =?utf-8?B?dVhxeU9uZ2pRRnNoeWVYTmp4dUI5NS9nSW1SL1FYbFIwREFkRXVkRU5oMk03?=
 =?utf-8?B?Y3hPRGxMTlQ5RkN0TTI2SnplNHNxTXlRd2dMUlhBTUdDbEY3bllDOGU5eDdY?=
 =?utf-8?B?K1dJWG5FMmNSLzBKTTVJVm9yWGtDQkgyeExrbjI3UHNYTm92alFMNVZsWC9y?=
 =?utf-8?B?V3ZHN3ZpdFo2eWJrTFRIOU5mbzlISmVaZDBWc1JYeG9CakdFek1NbVhOaElN?=
 =?utf-8?B?L0IxSnE1U1ZHbGk0S25VbTVmWmF2VjVvcWU3T0dsenZ2TTM5WU04SWtQYmtz?=
 =?utf-8?B?MWNZY1BSREZhRUU3ZVY5T0Q4aDVDNmFBUVFwMkJiVjUxcmRCakpobGt6czNP?=
 =?utf-8?B?d0o2ZCswdUFDUCtVYnFGQlQxVWVjZUNSOCtxRE1yS2NyYndCQUwzTDF2aW1m?=
 =?utf-8?B?OU9aZ3Q1bzI0OFFVajJaNlRRNU9JYytCL2g5d01aQTJKUWs0d3l6M01zVXJM?=
 =?utf-8?B?eWJ2SUtISHFtSmt0YU0zQVN0UzJGRzJ0dTRsN04vem9DYTI0SmtRckZlck9N?=
 =?utf-8?B?YU5EeXBUUzVXYnpyY1FLVXJ2aGxSVlovWjF3SmVpUDRWVEZYMmpXTG1BbDNQ?=
 =?utf-8?B?eURySmRNdzBINXMwZkQ5VDU1dDlMNDE2eTVJVXhuSUNyZnpzUkZCOU50Ym5u?=
 =?utf-8?B?QkZTa0lYVmVLTk1jTEhxTGxTQmNoMkEwVmlkMG8xOHc4NjZWSGoxUng0dTlK?=
 =?utf-8?B?SWhrUTRKcG1lcE5BU2xBVGhNWkR3Um1VdVBtU2d5d01vL0dEMU96ODBNVUFK?=
 =?utf-8?B?Y1NjMFR4RnNlZytyeGNaNENaTXVqZXErdkVnckVHZUxBcTN5R2duZUNIWTJk?=
 =?utf-8?B?YiszMjhTNkpGY09KbDhRVzZjZnhEdk5GVDRCWG0vQ2hneTZNZ0dXaUdibWR0?=
 =?utf-8?B?NHhaWHRhcW9vS0ZVcVpCM0dIbU5UR3JJK1l0d2JxNGhCeTgxWmRyenZTeDNQ?=
 =?utf-8?B?aU9SWkpna01FZGFIZUI3ZHI2RklDSTFlSGkyQldlSlAzNVpNZ2hCNDErdThZ?=
 =?utf-8?B?SERncjBoaDZrY0ZVb1FEQzNRZkFOTDZRajlOdkRkTVZHVms3YUIyTzVUdUVr?=
 =?utf-8?B?M1AxVG5yd0NQUzRvUEVLOFV2TTJSTjhjN0JyL3NqVnF3QUxaN29MZDEvSTNR?=
 =?utf-8?Q?hnd0Bp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1FZTlY1REJUSzUwRCtkUFJzTklmVDFTajlON3Z1a3VJaG8xWVFDS2xvbWhS?=
 =?utf-8?B?NEViSVhTUnRVSTVlSGdGMWNvaUdDUGR5cVRxaW0rMWMvWmtRQWtzRnpVaW5M?=
 =?utf-8?B?SnFMWndOaGRxMVZHUzlVSFJ6Qm8wdFZyK2E5VnV0bXpTay9SWTZBKzI1dUZm?=
 =?utf-8?B?aFVVekNUd3Y1UmppZVhyRThZTUQxa3NudmZLeGtlUms2cGhhR0I3UkxFNUlO?=
 =?utf-8?B?bDBoNHk5WDZtUnhaQkF0YkEwS1R6L2ZOMXJ2TnJtZEVWa0JKQWVqRGxMTTVV?=
 =?utf-8?B?V2hienoreWlPN2xNVWNpRFBCZWs0ZHFXbEhvUngvV3BOdlgxN0IrcS9NWjgy?=
 =?utf-8?B?RTFxdGVqZHMvcUhMUGJUUHN0UFdyb3dJWnB5bWlndnRNQ0hjVmw2R1N0dFFk?=
 =?utf-8?B?VzVrNUwxOGoxU1FuTmw4Rlk3cG1JTWlaU3dYWlZRUElCS3lKZTYrbnhRb2xR?=
 =?utf-8?B?QnpOWllmdW9PRXNHWlBhK1k0QjlPQVE5eDlIdHNRTEFHOWxkdlZjUWs0STZ1?=
 =?utf-8?B?ZW9pWnB6R2RxdmQ4Qlc4YlhvaFNYWkFGUVJyOVBuVi8raXRTcDl4Umk0YkJq?=
 =?utf-8?B?Q3hncXJLWDhISDJxR0dqeUIxMjZRNkpFZ0NRN2tsdVExeXpOSjd6ZW5hY1pp?=
 =?utf-8?B?U2c4WHNmS3VZbXd6Zlg2SHcvYXZDcUNTMXV1N2swbm9XREQ0UkkxUzNpQ2VN?=
 =?utf-8?B?M1hRTk1qU0YyVWxQbWxFYTZWQWh6QlNtV2x4MDI0aGpPRDRoa3FWNVhxazNU?=
 =?utf-8?B?MG9rT2J1U1o2L3R5M1ZoSDNSTTZyMDN1UmdCL2FsOTVzYXpEZVpjRkhGZ2wv?=
 =?utf-8?B?OHNNaVlRY25aNUFkM1RaMnZ4TG84NVRkNmlZY0IzanpHVzMzejg1UVdHNHBk?=
 =?utf-8?B?cWJoNUp1TU9aL3lna1hmdE5pVnNqQVlUNWhkaGV4SDhGQ09yaDRpb1FleG1o?=
 =?utf-8?B?VEEzTXZIZ01vRFZERFU5eGJwL1FsNlBPZ1NQRm94Ui83cWY1bEZiUTk0cjNY?=
 =?utf-8?B?aGhURm1xRWF0NEVRMHhCZTNSYUNmQVJkcUhkd0JnV05mSmVNM0dQTWIybk5s?=
 =?utf-8?B?ck0zQ3ZVelJVYXc1WGdMUWRUTDhiNmNoWkdPeFQzdzlsTGZIZzFTd0xkWkY1?=
 =?utf-8?B?UVVWYURsQlRpTFNvRWNGSDFneEFWMTJTakZCWUQycmpBUE1RR0xYRnZZYW1X?=
 =?utf-8?B?SDRKUjZzTWFDZlpkSnZaWXh6eTUvZzllckM1Y1orSURscXJSZlcveEQ5Z1pW?=
 =?utf-8?B?UFlKMW44ajl3Ymg2NlphVVpFWWpybkxYZVZhdURUKzBVbnU2VzFZZFZzR0NC?=
 =?utf-8?B?aXRZUVNvR1ptSHVyYXc1VjRQbHh3OHVJRURMblJYbGk4SnhVVHI4SmNaS3FN?=
 =?utf-8?B?YW92cDA3UFRxVWo4YnJIK0tKblVLa3VEUWxMWlVpclVUZ3k0RExZRWNkZWJ6?=
 =?utf-8?B?ZC93ZWM1MC83cFpBUTZSMUpoNTc2WmM0MkNFWlZSd3dJWk03bndESGZyanlj?=
 =?utf-8?B?MnVPYjNPUHNIWWc2cEszUm1vMWJmSHU2Q1E4UHVCNVJGajkrU3ppQXN4Q2lZ?=
 =?utf-8?B?ZnppZUNQUVBrcmlrRVZUcDJCVFEvNDRjV2x4bUdCTkUwbmhsMUk0KzlxSVpp?=
 =?utf-8?B?ZWlKdnRMNVoyT0JIa1JWYWFNSXlJbkgxeG5BZGVNMGpROGVwVEVBQjlWYlVE?=
 =?utf-8?B?WWZ2YW51ZVBFKzQ3UDJLb3V3WmdxMUtJbnpvT0Z4T1VZWGw5V1JPVDdFd3hN?=
 =?utf-8?B?eEo5WHNHZzdsYXE2aFl3d3BTNlVWaWxaSVNWZHBJQit6N21FUkVBTXYzTGNl?=
 =?utf-8?B?U2N2QVNOMHlsMHlleVRMSjZtOG92Y2NDVDNUZVBaZjd4VnhvNzcxQ1hFai9n?=
 =?utf-8?B?UUkxVTN6ZmIxU1p4UWYyaFVBVVR3eVY2R2N1RDRqR3hSZENUa05MQWpuN2hN?=
 =?utf-8?B?dHFPT2paWTVYaERUbHR0VHNCejM3ekxURlB4b3dXSHN0TCtGbVdsMHN3dG5C?=
 =?utf-8?B?T1lPamxIQUNob2dibkVxRFhFSVFzOFFYWjQ3R0VlVytKOTAvOHBoVlYvNzlC?=
 =?utf-8?B?aXZmNmN3UXJDWVVYbUw4QmxXay91YUxQSFdWZjliWDhidTVNSEhZT2M4Vlcr?=
 =?utf-8?B?QWZQS1BiM0tlU29sSVpDbDNheW92SEkzcGJjYmttblQrL0FwYTNocmVQTlk2?=
 =?utf-8?Q?iI0FhdgtgJn3QlsHKC1CzOo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CE1538EC38539F45AC3526AD922A4C63@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0725650d-0064-47ec-c354-08de39737568
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 11:41:58.6927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaSD4noOyuf1X+ByQmq9Hstp+1v3GXSSL0kPmtKDnJXgB0N0iLwISi5PS6Ha2c+oYDoPDU64Ve9v075XigPRFBm2y3RoYm3UzEQ0y4dS7tM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

T24gRnJpLCAyMDI1LTEyLTEyIGF0IDEzOjAxICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEZyaSwgRGVjIDEyLCAyMDI1IGF0IDExOjM5OjUxQU0gKzAyMDAsIFZpbm9kIEdvdmluZGFwaWxs
YWkgd3JvdGU6DQo+ID4gT24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERl
YWsgd3JvdGU6DQo+ID4gPiBGYWN0b3Igb3V0IGNvbXB1dGVfbWluX2NvbXByZXNzZWRfYnBwX3gx
NigpIGFsc28gdXNlZCBkdXJpbmcgbW9kZQ0KPiA+ID4gdmFsaWRhdGlvbiBpbiBhIGZvbGxvdy11
cCBjaGFuZ2UuDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgfCAyNiArKysrKysrKysrKysrKysrKy0tDQo+ID4gPiAtLS0tDQo+
ID4gPiAtLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gPiA+IGluZGV4IDE5M2Q5YzIwNzkzNDcuLjJhNWY1ZjFiNGIxMjggMTAw
NjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+
ID4gQEAgLTI2NDUsNiArMjY0NSwyMyBAQCBkc2NfdGhyb3VnaHB1dF9xdWlya19tYXhfYnBwX3gx
Nihjb25zdA0KPiA+ID4gc3RydWN0DQo+ID4gPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwN
Cj4gPiA+IMKgCXJldHVybiBmeHBfcTRfZnJvbV9pbnQoMTIpOw0KPiA+ID4gwqB9DQo+ID4gPiDC
oA0KPiA+ID4gK3N0YXRpYyBpbnQgY29tcHV0ZV9taW5fY29tcHJlc3NlZF9icHBfeDE2KHN0cnVj
dCBpbnRlbF9jb25uZWN0b3INCj4gPiA+ICpjb25uZWN0b3IsDQo+ID4gPiArCQkJCQnCoCBlbnVt
DQo+ID4gPiBpbnRlbF9vdXRwdXRfZm9ybWF0IG91dHB1dF9mb3JtYXQpDQo+ID4gPiArew0KPiA+
IA0KPiA+IENvdWxkIGJlICJjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yIi4NCj4gDQo+IE15
IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB0aGUgY29ubmVjdG9yL2NydGMgZXRjLiBvYmplY3RzIHNo
b3VsZCBub3QNCj4gYmUNCj4gcGFzc2VkIHZpYSBhIGNvbnN0IHBvaW50ZXIgdnMuIHRoZSBjb25u
ZWN0b3Jfc3RhdGUvY3J0Y19zdGF0ZSBldGMuDQo+IHN0YXRlIHBvaW50ZXJzIGZvciB0aGVzZSBv
YmplY3RzIHdoaWNoIHNob3VsZCBiZSBjb25zdCB3aGVuZXZlcg0KPiBwb3NzaWJsZS4NCg0KT2th
eS4gR29vZCB0byBrbm93LiANCg0KQlINClZpbm9kDQoNCj4gDQo+ID4gYWxpZ25fbWluX2NvbXBy
ZXNzZWRfYnBwX3gxNigpIGFsc28gdGFrZXMgY29uc3QgaW50ZWxfY29ubmVjdG9yDQo+IA0KPiBZ
ZXMsIGJ1dCBvbmx5IHRvIG1hdGNoIGFsaWduX21heF9jb21wcmVzc2VkX2JwcF94MTYoKSB3aGlj
aCBpcyBhbHNvDQo+IGNhbGxlZCBmcm9tIGRzY19jb21wdXRlX2NvbXByZXNzZWRfYnBwKCkuIFRo
ZSBsYXR0ZXIgb25lIGNhbiBwYXNzDQo+IG9ubHkgYQ0KPiBjb25zdCBjb25uZWN0b3IgcG9pbnRl
ciB0byB0aGUgY2FsbGVkIGZ1bmN0aW9uLg0KPiANCj4gPiB3aXRoIHRoYXQsDQo+ID4gDQo+ID4g
UmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50
ZWwuY29tPg0KDQo=
