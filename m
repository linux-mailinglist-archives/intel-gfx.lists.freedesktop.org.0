Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D7AAACFBA
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ECB510E2BF;
	Tue,  6 May 2025 21:39:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TgYkVJB6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7108310E101;
 Tue,  6 May 2025 21:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567595; x=1778103595;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=DAnCEEipM2MPjJ3ioc2cM+2MwTLm91vBcBArMox4G3M=;
 b=TgYkVJB6jjWTS+dJY2R2kxDMJreQ98jvcYQsM9LOa61yr99E18ZtBGRV
 WwkrVeeAyVevWmEkX1q0RrnZuPr72Z9+iEyi7pYaiKTkyKRn1ivw3ZWhb
 OElY7tN8gLCC/bcnyJ8Fx2a6+40B1jEaa3dFmPXOUJ8fEuVemypLK62eE
 BdcdsnGckS/adEb7wx7IDJIfMf0e0kZ4JdmbZIgKu7VrCnRq8mS3a8BtN
 IcWg6TCQteKYXAhtltL/ADuLW5ExQgTE2d2vEGzJ8Psn/FjLE4I9F0gRo
 zeLRXUFUxMyQHWGaXzg3x4lSTNKg+ecmVaouJ6Qon2V+rxL91hSyce4n7 A==;
X-CSE-ConnectionGUID: UMIbaeXqRiCmLVW3JeSt8A==
X-CSE-MsgGUID: aEqX/TVXS5yu2OX1ELA/1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="52074197"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="52074197"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:39:55 -0700
X-CSE-ConnectionGUID: 08nswNWVTaC7IOCBS90FQg==
X-CSE-MsgGUID: 0kBCDREKTQW0nTDcqBmV2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="172939298"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:39:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:39:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:39:54 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:39:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fbaX+6pRIDJP8fasocYexDq5c9LtHfACgWYqt24S4sS+Jx8v2wO7uq+APXPWY0HohjiyBPy/l90Z7gmKx67QNF5OMgVEWTaBXgcn2iBV7dPiZHzvv6aZ9trUjmgwmSOXeb1EK72uWGiiyYrxZNYob6mt1y2RSyJepa9HhlXxr6ZkT5hRnwk7SQW4K3kjEFyjvqCtEWy5jcKklfhp1bd8Yj44bvV7lDhp0L+TPBTU/tUBWccSMOdD3V3t6XjyN15vvDG492fo5MxTSS9PG33kKQMgX+P5wSbf6q2DOmZ6ifg9A7mBv6zwuM3+okZB/t9B6N7vWVBfqFs9aZb3dF3+GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EcYO9zkIiW+thRv+Jap/k/KjRmgrKqCsFk2uFseZddc=;
 b=OnjJ/YXUAWLSdRC0bJFf/SDHd6KugR/ZqFRswjtJArIqg4EJeMFlL+muFxyoR0diY+GaWdgGooMfxAddA8OVQSbNInBehC61yzkYEcyP++j/oGUPbMw0yW43UU7/OhDj/ep4dH2N6e2VRCU9ueh20euZpMibDd7X24UALXZSnxmG86e8r+WUjvveOPVDIt0bbGhTGqDR+9mwPB4FK806oBYMha1VQE4lZaapaATVxMyCcVRtb9FPNoNn22qq4NsScYYPI892/7mBNFTEEiyvV1afdCrCEXpCgs6EYLCiJ5zx3UiYkpTPUnH4GtoPSnkZrAYxIKq7R/RP0BQWYyEzhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8673.namprd11.prod.outlook.com (2603:10b6:408:21c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:39:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:39:33 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <93ea785d2d9bdb4e18328aa42a00a492d9d783c0.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <93ea785d2d9bdb4e18328aa42a00a492d9d783c0.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 3/8] drm/i915/irq: move locking inside
 vlv_display_irq_postinstall()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:39:29 -0300
Message-ID: <174656756965.1401.5390052837550181265@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0324.namprd04.prod.outlook.com
 (2603:10b6:303:82::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8673:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b96071b-1ad9-4aeb-d29f-08dd8ce67dc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TnAvc1I1d1VDTTgwdU9XZjZQMU9RdG9vR05UWWlCNWY1QUF2UkhGa1FNRkNh?=
 =?utf-8?B?anhvUUhKajBwS0dLa1JJejFqZ3BDd3ZZNjQrczM1RXk2VTNPSU9PWFE3NGc5?=
 =?utf-8?B?RmtXMmRQaXQ5b0lURDhVeWFjanhYTk91NHdnejFaaWFSL09JRUlJNFdDR3Z2?=
 =?utf-8?B?WHVlZGpadWpDQ01QN3JlM1N3VGtLNkptdWNmZmM1SHMxcVIrRmRnWFFmcE90?=
 =?utf-8?B?MTdwZ2daMDY1WVBQQWovWXo3K21BenhJUjVSSW55Q3p3ZDRxdTN6MmJJTnVY?=
 =?utf-8?B?a3k4Z0tSRE5RYmRWUzYrN3dxd2IybWtYdHdJSFBWTzZtT2doOGtpa24zS0pU?=
 =?utf-8?B?SE5FaFdmUHU4V3A5Zk5uT3d5RXBYZmVDL05CNG9SbGhnNm9PUjdnZ1F2ZG1H?=
 =?utf-8?B?eDdSV1BiVVZYZGpJUXJzOW5CYkZQRU9ZZUlJL0lOQUZKQVorL3hKK0VGVFU2?=
 =?utf-8?B?c0lZVGZjQlFlTXl4Tld1ZCthQjVRVnBORDJGR0xXM2U4OFFDcGsyYVBMNWJ0?=
 =?utf-8?B?cWpwRGh0elNlRGJhM2Rpc0lOcHBiQTc3MjVxRXhNSkRkWm9NMFVWVTZaUnJ6?=
 =?utf-8?B?b1RWSW1HU2o3RGZRaGdPTHFyVndHQUxoZWdtWFp5MVptZEdGQzhjYnI2bzM0?=
 =?utf-8?B?SWlDVER3dUJDY2ZvbEErYzErVC82Zmo0enRlcWNlZzZ5VEVUZGtFL0ZobkEv?=
 =?utf-8?B?Nml6cTROWk43ZkU5b1EyYXMzUGZaRVBGMnB6aDBHNHROVURwVVZkd2VwTS9F?=
 =?utf-8?B?aGFyenhVRm84SEhxOTkreGdNVEJHdXZpWlh5djg4QldnVUU1dXBLOXYxZzlG?=
 =?utf-8?B?bFRaSlpBdDV4WmFjcmptd2lEL2VXaGxRMXlRRG5YMjJlOWI2dGpjQW5uc2xR?=
 =?utf-8?B?VTZLYldvUTdBbDhrTDRuUC9jcU1YNm14TzM5VFc2V3d5VUxza2lCVnExUGdF?=
 =?utf-8?B?bmRvODhoNjBoQ0JmRGhuelNDamZkT0RaajdPdDdDblVMam85d25vT1NSYk13?=
 =?utf-8?B?R3REaGVxWGk3a3E4RXpJOHZ2cUJWL2xySWZnczVwcStONFRZREhkcnB3UEl5?=
 =?utf-8?B?M24zVmZ0TDFWeVV0TDIrZy9zVDZxckNpdUQ4QTEySTIwdEZZVTdBamFvSjJY?=
 =?utf-8?B?MGx5cHoxUkZOdkwyNVduN040OFg2eGpZRmlKTzVjWWJZelRHdzJPQjVNTjFi?=
 =?utf-8?B?ZWczZnI5NFpQVHRxQ1FIT0trbW15WW9DV1ZLaXF6WkE4RE5YNlkzekpzMUwv?=
 =?utf-8?B?UVJvT3p5U2xqMDVVamVjeWxsMlZoa1pZUzh5KzF4VG5kWitqTDBqNmFlbnlN?=
 =?utf-8?B?SXliNE9HNFJnSjRwclREVzNJTVR1b0ZuUVo5QlE2UnBYTWtWUmg5ZHZ1S1RY?=
 =?utf-8?B?MXcyVGtzVFMrdWdnKzA5T1FiK0hPbERxa2xoK21rK0ZHbnFsWHZoRFIwbjNV?=
 =?utf-8?B?SnFuUU9xdi82L3J1WmY5QnUwdGdMcEFnUHE2TThENTRnbWJPYkU5bE5pbHdJ?=
 =?utf-8?B?elY3UlZURU1aZFlEV21NQm9YdVNYLzVGcHV3ZGN3cGtQVEtYY1JmRUZaY0ty?=
 =?utf-8?B?L1VMYzk1d084UUs2ZEdJNXVrWXRMV2NBdUFMVzk5TFBOU2NGY1A2dG1oQVVw?=
 =?utf-8?B?ZTBiWmZhcGhIQ2o2U0JFTXpUV2V0aDZwRjhBZ0ZtOGhtbVVmNWpHdlB6WmZj?=
 =?utf-8?B?Tk8rNmI1QVJlUG9UbzQ2REpyMVA4ZXFKMTRWYk5Ja0FNY3Zkdjdla0N4RlQ0?=
 =?utf-8?B?azFsSnpubHVTdWRVS2haMlZ4UWJ0KzBqNkp5UFNEdGVjUDZYT2NLYjZIZGpH?=
 =?utf-8?B?WTFPYW02MWExLytITUdGSXZrV3p3QVdxUisyeVBzc2kxSWpDRkJDaWQ1cE4z?=
 =?utf-8?B?ZWYwT2k2M3NtMkNjZUF5NnFLNG43aDllUVMxZ3Z6NHBDWGwwR3dIb1pWa2Nz?=
 =?utf-8?Q?KJhBfwQYtBw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnpOR1R0cFYrdTJVVUU0elFPL2dsUlZQVTMySjR5RmRQUWNwUUllNzN6WG5X?=
 =?utf-8?B?OHUxd1M2TGt5SXljT2pjakY0dHpXSHNqdkhwelVtMGtzbTNiZmhQd3BOOFMy?=
 =?utf-8?B?eDgrWXFxSXozTWdWdGNOcHppcnhRQU5mdkNob1lNVTJOcy94ZUVnMHNUQ2d0?=
 =?utf-8?B?ZExmM1ZzWDZMOUxaTnZKQ05oaGUvN0JoaEV0YzFCTm82M0ZLWG9HOHkyeDYy?=
 =?utf-8?B?ZXU1eHU5Z1cyckJvSHNtSDdHcFdBRjRhVjVUaHZIZCtlNUo2NVY3bzhYZTJ0?=
 =?utf-8?B?SWxlRnFKNFlqaDl0Ti91MFN1Ly9UeHl0OUlMR1Z0SEo4WjZJM1B2ZnIzZFNX?=
 =?utf-8?B?cTB6Ym51MXMyR1pmb0s3MWllWnBDVFNld0thV2ZHWE82aWtlNFpTTlFxK0VE?=
 =?utf-8?B?U05kbUlEUzNXekZxVndvSkdjMDBuamdVUmNrcnh1aTZCMjVXK2xGOWRyRFpV?=
 =?utf-8?B?Ri9qMVljTmkvZDh4NVdMZUZXVFdZeDNTUGRPa2VhZkkzNlBUUDFob0R4NFJm?=
 =?utf-8?B?VFM1Kyt6SjBWWXNXSHB1VXNZRFQrN2FlQkFIdVc1T05qZmNqT29UVFRIU3l3?=
 =?utf-8?B?bHBhV3FXYjBVVCtlSzJKTllCejdEbmV3NjdXQi9RTmh5ZmFTVk8wV3VwekYz?=
 =?utf-8?B?a1Yrc09SUDBNaFlqbE1XWTN3Y2VrakRZckt1QnQ0UTVhbmdtTkxoZ0MxVlZQ?=
 =?utf-8?B?TDAwaXdoVzhXNXJQOXhoT2JaQjJtZXRJaDFIQkF4ejNVSmtaMy92WmFLOWc0?=
 =?utf-8?B?cXR6ZFhQVUZ6ZlNPa2VLNzZzRSs1UjhRbmh6eWg3ZHhidHEwVWJIUGNOczl0?=
 =?utf-8?B?ZFJ6WnRKTXYyeTZNdUlvR2IreFRHMTMvME5Fd1BLZkwxdkIrSEgyNU5oRW85?=
 =?utf-8?B?L054NU9sTzIyTEo0YndwM3Z0OTRtemJWWmh6dWg4OFZDZDg4cEpIUUpORnA2?=
 =?utf-8?B?NnpMRDFtbTBlcWN0T3pSd2RzYm1EQTRtb3lDa3ZkMmtuUlZTVUxaU1RpMTht?=
 =?utf-8?B?RkVSSEdONEErR1JodVNKQWx5UnpCV3BiYnR3QjNxTXZrZ0ZBR0d0NmxUdmRQ?=
 =?utf-8?B?SHp3MDZ6cnczdVh1Q1o3ckFyNThuWVpRSFB6TjF0TDQrWmIwYlgxS00rODNu?=
 =?utf-8?B?ZXJERElKSDh2NGtWUTBoU0E1WCtpS29Gd0JPNEVVN0VXTU1HREQydGwxTDVp?=
 =?utf-8?B?RXh0YitySUZ5UXlTcDBDaUlERThHY3VlUkpxMFhkT3haY1BVYzNXd3BoZnBG?=
 =?utf-8?B?SFNFOERRY1Bablc2bDRVcXVaQ2xGZ1Evd2prc3ByVm9BOHduMVEyRHcxbDlV?=
 =?utf-8?B?SWFYL0ozQjJTbVJjMWtHZmVJbGdnN0MraTI0WHNjTi9nK1Y2Zm15Ynh2Nisy?=
 =?utf-8?B?UTdQQ1NQQjRxcnNPTkZuSkdoT3pvKzNjRHUxc3VsK2lSU1lXaHRDU2t2cW5P?=
 =?utf-8?B?blRDMmdCaDFEZjYzb3RQbE54bUpmMFlSZ2RCTzJ5TE0wdDFkTVdCOG1aZlZB?=
 =?utf-8?B?ckpyZ2hxUU1OT0Vodk1DcVc5L3YzTllGeFBHL1JSY0p6cDdObVRpR044R05L?=
 =?utf-8?B?eTM1V3N2MWJVTlV5UlZ5UjFxcWVFZ1hrbm9QRmZyd3ZJK3JmbU9IWGZrOUNL?=
 =?utf-8?B?Ump2OTR1dDQ2dXJQcGZSTkNSbHo5Tithd3E2QmdsdytwdlVJUk5jWVhWeGY0?=
 =?utf-8?B?WkN2YXJaL1NUUkVxWDg5TERpMnZVRHBDRkR0WTZ6eERuK1plN2JKbzRaSURk?=
 =?utf-8?B?Z3FLSUpMd0QrK3JqZjBvcHBEbm5MeTlTUEF3YXZTMktjVzhsOEFlaFYzVUFN?=
 =?utf-8?B?WUwyZDFkM1VqZjB3cE4wR2VjTDVMRFRNazdzdFFva1FYUzBCaE5CVmpnd2NU?=
 =?utf-8?B?NWpyYmpEQlNtVFg0bm96N3NLZU5ONDA5RUswakZzT25QbE40REtMYTN2RFFM?=
 =?utf-8?B?RHRNZWo4QXQ2YnlwUFpvRmxwME1iVktqWUpSWnI5OGhZRmFQSTRYZmZqbUhj?=
 =?utf-8?B?L2VNUlh6NGF2dDU2c1grZkY4ODRuK3ppbXlwdXYrdGJxS2tLaXBVS0d2OXdh?=
 =?utf-8?B?S1FFTEhGMHBsTW82V25QUXQzQ3dYNzVPS3V3UUJUZGl1eG8yZC8wV05YRzlX?=
 =?utf-8?B?N0FFK2E2VVgzNDA3YnNTcHdtZ05ab2ZaMTlKajNEYnl6c3NSZTRienNzWm10?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b96071b-1ad9-4aeb-d29f-08dd8ce67dc9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:39:33.8284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TxFFRu9Do68nqwijvkPTWtG6W6MMnMESHbyTEdE8PZig7s2Rayry+hBPg52bzTJVZf6yeL+7YMjDPJb7jles3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8673
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

Quoting Jani Nikula (2025-05-06 10:06:45-03:00)
>All users of vlv_display_irq_postinstall() outside of
>intel_display_irq.c have a lock/unlock pair. Move the locking inside the
>function. Add an unlocked variant for internal use, similar to the
>_vlv_display_irq_reset() and vlv_display_irq_reset() functions.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../gpu/drm/i915/display/intel_display_irq.c    | 17 ++++++++++++-----
> drivers/gpu/drm/i915/i915_irq.c                 |  4 ----
> 2 files changed, 12 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 3d2294a4d83d..a0e08b8752e7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -1908,16 +1908,13 @@ static u32 vlv_error_mask(void)
>         return VLV_ERROR_PAGE_TABLE;
> }
>=20
>-void vlv_display_irq_postinstall(struct intel_display *display)
>+static void _vlv_display_irq_postinstall(struct intel_display *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         u32 pipestat_mask;
>         u32 enable_mask;
>         enum pipe pipe;
>=20
>-        if (!display->irq.vlv_display_irqs_enabled)
>-                return;
>-
>         if (display->platform.cherryview)
>                 intel_de_write(display, DPINVGTT,
>                                DPINVGTT_STATUS_MASK_CHV |
>@@ -1954,6 +1951,16 @@ void vlv_display_irq_postinstall(struct intel_displ=
ay *display)
>         intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_=
mask, enable_mask);
> }
>=20
>+void vlv_display_irq_postinstall(struct intel_display *display)
>+{
>+        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>+
>+        spin_lock_irq(&dev_priv->irq_lock);
>+        if (display->irq.vlv_display_irqs_enabled)
>+                _vlv_display_irq_postinstall(display);
>+        spin_unlock_irq(&dev_priv->irq_lock);
>+}
>+
> void ibx_display_irq_reset(struct intel_display *display)
> {
>         struct drm_i915_private *i915 =3D to_i915(display->drm);
>@@ -2126,7 +2133,7 @@ void valleyview_enable_display_irqs(struct intel_dis=
play *display)
>=20
>         if (intel_irqs_enabled(dev_priv)) {
>                 _vlv_display_irq_reset(display);
>-                vlv_display_irq_postinstall(display);
>+                _vlv_display_irq_postinstall(display);
>         }
>=20
> out:
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index b918b440cbce..19d8a7c29eac 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -768,9 +768,7 @@ static void valleyview_irq_postinstall(struct drm_i915=
_private *dev_priv)
>=20
>         gen5_gt_irq_postinstall(to_gt(dev_priv));
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>         vlv_display_irq_postinstall(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>=20
>         intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTE=
RRUPT_ENABLE);
>         intel_uncore_posting_read(&dev_priv->uncore, VLV_MASTER_IER);
>@@ -827,9 +825,7 @@ static void cherryview_irq_postinstall(struct drm_i915=
_private *dev_priv)
>=20
>         gen8_gt_irq_postinstall(to_gt(dev_priv));
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>         vlv_display_irq_postinstall(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>=20
>         intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTE=
R_IRQ_CONTROL);
>         intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
>--=20
>2.39.5
>
