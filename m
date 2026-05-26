Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHdXEitZFWp7UgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 10:26:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1045D2701
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 10:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1CE10E603;
	Tue, 26 May 2026 08:26:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K33fV5el";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFEF10E465;
 Tue, 26 May 2026 08:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779783976; x=1811319976;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UWkmKMqeQ2iYcyiG7zaorIeC8QekT1xPJUUD6b2iS20=;
 b=K33fV5elvjb1LzNPtjyO2SMQzlaeO8tlvSMc3YOLj+K1yeJR5XlDiQmO
 rlc+NR65Ya1wrlbHo4HDcwNI/VFFpyHhsjfmXeb0qn/HdL+a9f1f6KDI4
 5eykbOY8gbEN0VlTdYXM+MtXRc3cEtsCkP6xMfdfrQmphF+avTbWDKHh9
 0dx4jUSZ7inSk7xlj85v5d57Y4kPeClbmg5oi6E/kDNQKlywi67yTENoe
 LNQCtab6uEa2O7yFelZEpx8ytiKuU1bRRPy2wgPJO2vpZBwpYMnOlDmQ+
 gCUFq0gRVlilSpiPrwDhSCsRO5SQW8cPeQ+yD64enlgL0F4T6Q5T7CuLe g==;
X-CSE-ConnectionGUID: W0KKqPRFRx+TASPUyhtbHQ==
X-CSE-MsgGUID: qeqf+UkiS8uzbCIOUtiEyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="92062171"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="92062171"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 01:26:15 -0700
X-CSE-ConnectionGUID: l0fSdy7/RNWtPyU4dAag/w==
X-CSE-MsgGUID: rHokjES0RvS7NoAqlyj2oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="272167193"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 01:26:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 01:26:14 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 01:26:14 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 01:26:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lgfK13au0bQg9i/J8K3ntE3ukxAOxHVpNLV4iEpl7tEwxl4F1EfOGNiZt7KHBk9iV0Q1t3rd6SJ/6dBpXqPt/2QF3V6jiZdydgulFPw8G7ApYp6G7uqexLkqzQVX1p2hOQKXUO4pyeDnpms2zveIaX1vRPmftZzYBISttdS3klss1MPiIgZPpMjZNG/WJu1HJy+VOxYenl905qZq7Wtg1sa0zaTlqc5lyrhN9udkLuymN08QSBa4F6FUA44sQlpgynbQzh7m97zoLNmv3EK1+ZHip8mBs7xMdtckDeLr4dVujyN0QXBBaiSb7SRemr9Vc1lE69DKi/+4DUp1xiVnUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UWkmKMqeQ2iYcyiG7zaorIeC8QekT1xPJUUD6b2iS20=;
 b=YtPDKSzm97Ndur31wDlWdMDM4Sgjnwoz8bsNWZNYzeb5XCP7Y0Vp0a/F3cuSzk8h/XjDCAVehQy5h9IAPom6xJ/syGqv3ZZ05AVlbbFyUJzRQXqfaMxPJK08ofGS+LNXyq0zWg/4Et+lT92wRBK7YptpZyfmkMNiFPPXFdUFvdGLWbY+G5JbuVXcr3CrwuTVCHsB2YJvCZpDB+5IUUXmdUeYeVl9dxd6qXvFRh17NrSdpo5VvwIqmkCV0tKx8grwtQgTYA0p54HoXkeJPgzwCEiIjO5OOUGYyMqs9Pp8475I5rnz2BcXVtoS/MmFPdYBQqV3vk7W4DzcdCA5BJEx3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DM3PPF68472F2DC.namprd11.prod.outlook.com (2603:10b6:f:fc00::f29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Tue, 26 May
 2026 08:26:07 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd%3]) with mapi id 15.21.0048.019; Tue, 26 May 2026
 08:26:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Topic: [PATCH v6 01/16] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
Thread-Index: AQHc4vtkYH3TNdevlU+k8BlzMCRJR7YYLucAgAAL1ACAADwAgIABEygAgAaBAhA=
Date: Tue, 26 May 2026 08:26:07 +0000
Message-ID: <CY5PR11MB6344B7850B81CB73CA45F34EF40B2@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-2-animesh.manna@intel.com>
 <074e4d37-9bf0-45da-9541-8b27164e743c@intel.com>
 <DS0PR11MB8049DBAF76058351534A3334F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
 <9c4928ff-6520-4dbd-92ee-2fc49c2630ca@intel.com>
 <DS0PR11MB8049E6FAA055C615676F3BCBF90F2@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB8049E6FAA055C615676F3BCBF90F2@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DM3PPF68472F2DC:EE_
x-ms-office365-filtering-correlation-id: 8d7a8e81-26b6-4e70-665a-08debb006f21
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|11063799006|4143699003|56012099003|22082099003|18002099003|3023799007|6133799003;
x-microsoft-antispam-message-info: BfvmFnwyAUl3UUdfP0OfBp2bQ5MwardypptBt+UpWTB6a3CGykSaccWHnENXPPhMij39IlSK0Mhc8h7Xe9HvSyGJwdbh5sz2WwoNdKiQ1P3lsNGRAfLYwkSzMeb/McC65JEqTgiA6ZbiaoZ33fhSc3ULCOTJx3mVz4VuamiXLeOgsXO3CwiNC4l5qmb3kBB+H0YFP/YL5f6CLhSFKUYguEoKL0cz0EBa0xz+yRwifUSMRhQt0xpByVQM/qIl86bI3GvqaVg8q2VoE0OScOf6ZKuA5Hv98fnp+ojbSEwbiwng0K7ocj1W0H7x3nauxpeJ9XNluAkblpxmPnEErHk4mES9WSHJOMCnZSiqljW0XzpZmROk3acStu7kVi5LmNB21+ReXZDvWCC7Gv7dreufFEtw+jrTP30s12M63a4sGk8PYlXYc5RTyvJLN44UiB3CG7qIBvxYEdVJ4vgKMzojAYH4ci6XYgh/q903iSbkVKHNura4QygVy+PcFFx1SULkcOmK+B8+J/k9Min8fAclmofnto9Kk9Ejfv4I5Ok4Kri4QlpBiP3yzGhrRgkFyxNxLOlhvG64HRQILGowKjf2B4RLtD2ibkzwM5HOCgv7xz/2tOSlWPkJf3e8DjnT81zmFHf8GBI46voWiJp8KIxnpV39ZDNTI3j0yMqb6zpVCaxRFnbRYpTaJSIGe2YdyS9dVwCA89JE3alK1EB5IcKJ/kw6xsTcn6opL8ymBCrWy+GUhKnZNkiLfk7cZ3RR2Yxv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(11063799006)(4143699003)(56012099003)(22082099003)(18002099003)(3023799007)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnhsVmwvYjliSm53ZFV4T2wrdHdjQytkNzh0bFdPdWxXdWdkMFpoTE9wYlk0?=
 =?utf-8?B?bms0SVpmKzhGUmRKb3lESXcybjlXRUwzZUk2NlU5YkVhZzk1L1pFRXdNcUlZ?=
 =?utf-8?B?bHFGYS9GQWh3dm9va21nYmFONUJYNWtlUThUR1YyMGdiYnRjR3NNb2RXelc3?=
 =?utf-8?B?cFd0TUFrdlFNamdud1pWZHRXZ0Y0R2xUZ1VlS1lWWUV1NzVqQm1MNFdWaVZO?=
 =?utf-8?B?bVkrR3V2L0pWcTdidmEvOVZjU2tHOEZqMHVrMkpwdlM5SHFwaHZ5NFVPRVEw?=
 =?utf-8?B?aS9YOEtXUTlQcndJVTlTVHZzUVJYakQwYzB0UjhlN1ZkUFJkcFpVUUNNVEJ5?=
 =?utf-8?B?SDlQM0N0RDVDU2dybHJDT2o4S1I5Qk1DeVdvb1BCZUI4WlhiWTJZYk8vTDNV?=
 =?utf-8?B?SDhvUGNhN0x6T2F3N2FtUGI4c3BUSEtmS0tGRFZpZ20wVXlDYmdGYU85VzF3?=
 =?utf-8?B?dEV1aStYTTdMM3BXT3IzT3NkeWhGNEdaOHBuSjJtbnFmUzV2Tk1ra3ZZQ1Qr?=
 =?utf-8?B?dVllOWdiaWlLMHM3QkM4b3RqSWVVMUxoQzJrQzRCSzNxcVFKcWYycmliSldv?=
 =?utf-8?B?dUlhWTZqUkVyalRLSU0vb3Fla0FUWkNyVXN6K2ZlTUlBb3RCajZUclhFbnFH?=
 =?utf-8?B?cFBESER6NHk0c25jc3A0Rjc0U0ZHYXYvS2NWdEZ6UU9Kdi9XbTRBY0UxbnZ6?=
 =?utf-8?B?RVNQWStJVC91RnZ5dFRUU1RjanE4RjlXb2RYaWhQNXFHcEMrb2tQakVaWFdy?=
 =?utf-8?B?Q3JpdFo5ZlJtSXpyWlRnU1h4K2FtQTlyb1EwaXNTVy9ZTDZXclhjSmI5QU9X?=
 =?utf-8?B?VGRMaHFDd25kckxCclNNbjBaUDNteXNzWHAxWDR6VndwKzhQTXZzdnBDRnZj?=
 =?utf-8?B?bkpJK2xaQ0Vid0JzU0hNRzhOdEUxS09IOFFnYmQ3elBHSDJnLzJ1V0tpcUg3?=
 =?utf-8?B?NThOZnhIYUZWbEJYWTZJRmVkS25jTm1FaE9SMFlIb2hEZGJXZ24wQlJub1hY?=
 =?utf-8?B?UU5qVWNWZmswVlVBa3QySUk0VXl1Mm94REFpdEJFQW5VZFRHeFNqdnBrVTI5?=
 =?utf-8?B?VU5uMDJpa3plTnRIRmFkT1k3cFR0Y2NmOVNxL2xFV0RLNGdMNUJ0QkZnS1lq?=
 =?utf-8?B?TndzSmxtbW4vLzlvY0lnYVNLY0tQQjZjOEllUzBCVy9oWEUxUTZDTHhWT1RI?=
 =?utf-8?B?U1JUM2VUZ2l2NnZOK1ZGNmhPdkkreVllK3VsNnd5R282bHdXUU1MdFBBOWdY?=
 =?utf-8?B?VEJ3enZLUWNCVm8vM05kMzlKRVVjLzcvWG9oY0hVN1VZT21ES0ozdWQ4WEhh?=
 =?utf-8?B?ZEM1UzJ0U1Qyb2RxMDcvdEJ1ZnlZZElVckhCVzlSWmFqQzNaSUZOcFBCQnZJ?=
 =?utf-8?B?YXl5WEU2WVN2R21sdmZ2WFg2LzZjb0dHRlpaZnpJQ1BMWUFPeDlYRXUvcllQ?=
 =?utf-8?B?R3dhOWhUSHdZY21XY0xWWkhlNjNleHc5QU40NTBBVUEybUVZNVlzdmxwRXAx?=
 =?utf-8?B?b0tVWlBZWDRuckJmdm9OaGkvVHZxR1U3by9SZ0NFaEU5L29PcThFUDBHRFA1?=
 =?utf-8?B?TXQvMk16Tjc2SG50TnFTdTBFQzRYNlhNanl0YVlnQ203UUZpV3UyQks3a2lS?=
 =?utf-8?B?NUlBUlNLYWFJN0ZYbkFRVWpTck94MmxDejdSbDdYS3lFeTN4TVlISUlYSUg5?=
 =?utf-8?B?NSt1Q2t2VnZyOXNQOEJSdUdMTFhIbUVuRE5IT0ExcTkrU3JKRnBjOGFaekdK?=
 =?utf-8?B?MW5VNEZEVXMveVRMNVlkR0IxRUt0ZWhaOE5hODd1b3RyOVFyN1ZpZC8wVFYv?=
 =?utf-8?B?VnZQemoyZmJ4UDRpVEdpVGpmQmhwbnp5b2F3eTZVS1dxYjFWRFNPbzRSY1kr?=
 =?utf-8?B?ZFF4emo3cHl3Z0luZk5mbjFmQ1p4S1ZUY3NZR0ZHY1ZHNUNrM3NveU1iTmdR?=
 =?utf-8?B?dHcyWExrODVDWTFiaVNEY1RCeVRaL2tjbDFhVUxyTHUyYTZDWmV2Um4vTVJu?=
 =?utf-8?B?VytURHJLYTQ5REhOYXRGVCtnVG9CWnRwam9xUE9qWC80RzUxM3RKbWR2RDlC?=
 =?utf-8?B?N1dRTlJLOXQ5VURrVi9CVVBwek85SzJGN0FndlBjK29aMTZWeXlsUnlVSXhj?=
 =?utf-8?B?Sm1GMVkxZDh5VWgrR0tUeVQ5MThhb0FjTkFxRWx2KzBMeXFUNmJ2VWVuUEV3?=
 =?utf-8?B?azRQY1F4a0dGNFFiSlk2N2pBRy9vMXJZWm90U3R6NjQ5TmNnakRxRkQrbjd5?=
 =?utf-8?B?TG14VmQ2dEpJTHpDSHdvTUp1b1NPUGRFd2VvQUtqMnh6RVZJaDZqS1lTeVRO?=
 =?utf-8?B?UVRGbHM4bE9vR29IcjVWWWlFVnF0UmthTEpPRXVhNjEzNGRVT000UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: abQsoRkeiajryuuow17ZCr3YdbaHLR26vbzyK47eTrkxy05c5D3/Q9gyoXa6OmRy/NjUDAaVxBiQMcaxRMT3jX6LteK8XYyAe5VE7A3mzv3eEYABWnqPM2PPvf9TO1AFtmPlIB3PSw6UG2Ogr4gL479MXmCxxSUkPIHXtGaed7cg8ADdX8OQfAgGFzeONE8wBbh4JRsd7/b9kDg+flIL5OTAaGy4yW0XfMqODC3Mb6QcDtMXHMMrOS8oqdM4/JSYh4q+1LSTX9LUHVIn+L1Yic3dUq2pIQJ31hhxNp9L3AXFkEW4Lrk/Mxqdiqr72AztSv7HOdvjY44Y+I2pP5dVxw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d7a8e81-26b6-4e70-665a-08debb006f21
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 08:26:07.1841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KWxFsHxxNNS7yXelfR/wDM1hRRnB0xpZjZbJQ6GR1B4k1st4IRvGr9mTHn9el4UElmwrLvjpyZSNQ6FCtpDwSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF68472F2DC
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6F1045D2701
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1heSAyMiwgMjAyNiAx
MDozMSBBTQ0KPiBUbzogRGliaW4gTW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1v
b2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7DQo+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmth
ciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbTsNCj4gTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6
IFJFOiBbUEFUQ0ggdjYgMDEvMTZdIGRybS9pOTE1L2NtdGc6IEFkZCBpbnRlbF9jbXRnX2lzX2Fs
bG93ZWQoKSBmb3INCj4gQ01URw0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+ID4gRnJvbTogRGliaW4gTW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4NCj4gPiA8ZGli
aW4ubW9vbGFrYWRhbi5zdWJyYWhtYW5pYW5AaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFRodXJzZGF5
LCBNYXkgMjEsIDIwMjYgNjowNiBQTQ0KPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBp
bnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogU2hhbmthciwgVW1hIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+Ow0KPiA+IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOyBO
aWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSZTogW1BB
VENIIHY2IDAxLzE2XSBkcm0vaTkxNS9jbXRnOiBBZGQNCj4gPiBpbnRlbF9jbXRnX2lzX2FsbG93
ZWQoKSBmb3IgQ01URw0KPiA+DQo+ID4NCj4gPiBPbiAyMS0wNS0yMDI2IDE0OjMxLCBNYW5uYSwg
QW5pbWVzaCB3cm90ZToNCj4gPiA+DQo+ID4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiA+PiBGcm9tOiBEaWJpbiBNb29sYWthZGFuIFN1YnJhaG1hbmlhbg0KPiA+ID4+IDxkaWJp
bi5tb29sYWthZGFuLnN1YnJhaG1hbmlhbkBpbnRlbC5jb20+DQo+ID4gPj4gU2VudDogVGh1cnNk
YXksIE1heSAyMSwgMjAyNiAxOjQ5IFBNDQo+ID4gPj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0KPiA+ID4+IGdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4+IENjOiBTaGFua2Fy
LCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47DQo+ID4gPj4gdmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb207IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+ID4+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjYgMDEvMTZdIGRybS9pOTE1L2NtdGc6IEFkZA0KPiA+ID4+
IGludGVsX2NtdGdfaXNfYWxsb3dlZCgpIGZvciBDTVRHDQo+ID4gPj4NCj4gPiA+Pg0KPiA+ID4+
IE9uIDEzLTA1LTIwMjYgMjI6MDgsIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4gPj4+IENNVEcg
d2lsbCBiZSBlbmFibGVkIG9ubHkgd2l0aCBEQzNjbywgc28gYWRkIGEgc2VwYXJhdGUgZnVuY3Rp
b24NCj4gPiA+Pj4gaW50ZWxfY210Z19pc19hbGxvd2VkKCkgdG8gY2hlY2sgdGhlIHByZXJlcXVp
c2l0ZXMgZm9yIGVuYWJsaW5nIENNVEcuDQo+ID4gPj4+IERDM2NvIHdpbGwgYmUgZW5hYmxlZCBp
biBhIHNlcGFyYXRlIHBhdGNoLg0KPiA+ID4+Pg0KPiA+ID4+PiB2MjoNCj4gPiA+Pj4gLSBSZW1v
dmUgc2VwYXJhdGUgZmxhZyBmb3IgREMzY28gZnJvbSBjcnRjX3N0YXRlLiBbVW1hLCBEaWJpbl0N
Cj4gPiA+Pj4NCj4gPiA+Pj4gdjM6DQo+ID4gPj4+IC0gRG8gbm90IGFjY2VzcyBwb3dlciBkb21h
aW4gbWVtYmVycyBkaXJlY3RseS4gW0phbmldDQo+ID4gPj4+DQo+ID4gPj4+IFNpZ25lZC1vZmYt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+ID4+PiAtLS0N
Cj4gPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMgfCAx
NSArKysrKysrKysrKysrKy0NCj4gPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jbXRnLmggfCAgNCArKysrDQo+ID4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgMTgg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4+Pg0KPiA+ID4+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiA+Pj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGcuYw0KPiA+ID4+PiBpbmRleCBl
MWZkYzZmZTk3NjIuLmRjMDM5YmVhNDUyYyAxMDA2NDQNCj4gPiA+Pj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiA+Pj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmMNCj4gPiA+Pj4gQEAgLTQsNyArNCw2IEBA
DQo+ID4gPj4+ICAgICAqLw0KPiA+ID4+Pg0KPiA+ID4+PiAgICAjaW5jbHVkZSA8bGludXgvc3Ry
aW5nX2Nob2ljZXMuaD4gLSNpbmNsdWRlIDxsaW51eC90eXBlcy5oPg0KPiA+ID4+Pg0KPiA+ID4+
PiAgICAjaW5jbHVkZSA8ZHJtL2RybV9kZXZpY2UuaD4NCj4gPiA+Pj4gICAgI2luY2x1ZGUgPGRy
bS9kcm1fcHJpbnQuaD4NCj4gPiA+Pj4gQEAgLTE2LDYgKzE1LDcgQEANCj4gPiA+Pj4gICAgI2lu
Y2x1ZGUgImludGVsX2Rpc3BsYXlfZGV2aWNlLmgiDQo+ID4gPj4+ICAgICNpbmNsdWRlICJpbnRl
bF9kaXNwbGF5X3Bvd2VyLmgiDQo+ID4gPj4+ICAgICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3Jl
Z3MuaCINCj4gPiA+Pj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gPj4+
DQo+ID4gPj4+ICAgIC8qKg0KPiA+ID4+PiAgICAgKiBET0M6IENvbW1vbiBQcmltYXJ5IFRpbWlu
ZyBHZW5lcmF0b3IgKENNVEcpIEBAIC0xODUsMw0KPiA+ICsxODUsMTYNCj4gPiA+PiBAQA0KPiA+
ID4+PiB2b2lkIGludGVsX2NtdGdfc2FuaXRpemUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkpDQo+ID4gPj4+DQo+ID4gPj4+ICAgIAlpbnRlbF9jbXRnX2Rpc2FibGUoZGlzcGxheSwgJmNt
dGdfY29uZmlnKTsNCj4gPiA+Pj4gICAgfQ0KPiA+ID4+PiArDQo+ID4gPj4+ICtib29sIGludGVs
X2NtdGdfaXNfYWxsb3dlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4+PiAr
KmNydGNfc3RhdGUpIHsNCj4gPiA+Pj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9
IHRvX2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gPj4+ICsJZW51bSB0cmFuc2NvZGVy
IGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+ID4gPj4+ICsN
Cj4gPiA+Pj4gKwlpZiAoKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfQSB8fCBjcHVfdHJh
bnNjb2RlciA9PQ0KPiA+ID4+IFRSQU5TQ09ERVJfQikgJiYNCj4gPiA+Pj4gKwkgICAgRElTUExB
WV9WRVIoZGlzcGxheSkgPT0gMzUgJiYNCj4gPiA+Pj4gK2ludGVsX2NydGNfaGFzX3R5cGUoY3J0
Y19zdGF0ZSwNCj4gPiA+PiBJTlRFTF9PVVRQVVRfRURQKSAmJg0KPiA+ID4+PiArCSAgICBpbnRl
bF9kaXNwbGF5X3Bvd2VyX2dldF9jdXJyZW50X2RjX3N0YXRlKGRpc3BsYXkpID09DQo+ID4gPj4+
ICtEQ19TVEFURV9FTl9EQzNDTykNCj4gPiA+PiBJIHdvdWxkIGVuYWJsZSBDTVRHIGJlZm9yZSBz
ZXR0aW5nIHRoZSBEQzNDTyBzdGF0ZSwgc2luY2UgQ01URw0KPiA+ID4+IHJ1bm5pbmcgaXMgYSBt
dXN0IGNvbmRpdGlvbiBmb3IgREMzQ08uDQo+ID4gPj4gRG9pbmcgaXQgdGhlIGN1cnJlbnQgd2F5
IGNyZWF0ZXMgYSBjeWNsaWMgZGVwZW5kZW5jeS4NCj4gPiA+IENvcHkgLXBhc3RpbmcgZnJvbSBi
c3BlYzoNCj4gPiA+IENNVEcgbXVzdCBiZSBlbmFibGVkIHdpdGggZHluYW1pYyBEQyBzdGF0ZXMu
4oCL4oCL4oCLDQo+ID4gPg0KPiA+ID4gRHluYW1pYyBEQyBzdGF0ZSByZWZlcnMgdG8gRGMzY28v
RGM2di4NCj4gPiA+IFNvIGFkZGVkIGEgY2hlY2sgZm9yIGRjLXN0YXRlIHdoaWNoIHdpbGwgYmUg
dXNlZCBpbnNpZGUgY210Zw0KPiA+ID4gZnVuY3Rpb25zLiBEbw0KPiA+IG5vdCB3YW50IHRvIGFs
bG93IHRvdWNoaW5nIENNVEcgcmVnaXN0ZXIgaWYgdGFyZ2V0X2RjX3N0YXRlIGlzIG5vdCBEQzNj
by4NCj4gPiA+DQo+ID4gPiBBZ2FpbiBjb3B5LXBhc3RpbmcgZnJvbSBic3BlYzoNCj4gPiA+IENN
VEcgc3RhdGUgbmVlZHMgdG8gYmUgc2F2ZWQgYW5kIHJlc3RvcmVkIGR1cmluZyBwb3dlciBzdGF0
ZSB0cmFuc2l0aW9ucy4NCj4gPiA+DQo+ID4gPiBXaGljaCBtZWFucyBDTVRHIHdpbGwgbG9zZSBp
dHMgdmFsdWUgd2l0aCBEQzUvREM2LiBTbyB3YW50IHRvIGJlDQo+ID4gPiBsaXR0bGUNCj4gPiBj
YXV0aW91cyB3aGlsZSBoYW5kbGluZyBDTVRHLg0KPiA+DQo+ID4gSSBjYW4gc2VlIERDNiByZXN0
b3JlIGlzIGFscmVhZHkgaGFuZGxlZCBpbiBwYXRjaCAxNS4NCj4gPg0KPiA+IHRhcmdldF9kY19z
dGF0ZSBpcyBhIHNvZnR3YXJlIHN0YXRlIGRvZXNuJ3QgZ3VhcmFudGVlIGFueSBhY3R1YWwgREMN
Cj4gPiBzdGF0ZSByZWdpc3RlciB3cml0ZS4NCj4gPg0KPiA+IEkgdGhpbmsgaXRzIGJldHRlciB0
byBsZWF2ZSB0aGUgdGFyZ2V0IGRjIHN0YXRlIGRlY2lzaW9uIHRvIERDM0NPDQo+ID4gaW1wbGVt
ZW50YXRpb24gcmF0aGVyIHRoYW4gdXNpbmcgIGl0IGFzIGZsYWcgdmFyaWFibGUgZm9yIENNVEcg
ZW5hYmxlIGNoZWNrLg0KPiANCj4gVGhpcyBpcyBqdXN0IGEgcHJvdGVjdGl2ZSBtZWFzdXJlLCBp
biBteSBvcGluaW9uIG5vdCBoYXJtZnVsLg0KDQpJIHRoaW5rIHdlIGNhbiBsZWF2ZSBDTVRHIGVu
YWJsaW5nIHRvIHRoZSBjYWxsZXIuIENhbGxlciBzaG91bGQgY2hlY2sgaWYgQ01URw0KaXMgbmVl
ZGVkIGFuZCBjYWxsIHRoZSBlbmFibGUgaGVscGVyLiBObyBuZWVkIGZvciBDTVRHIHRvIGNoZWNr
IGZvciB0YXJnZXQgREMgc3RhdGUuDQoNCkFsc28gZHVyaW5nIHJlc3RvcmUgZnJvbSBEQzYsIGJl
Zm9yZSBlbmFibGluZyBEQzNDTyBDTVRHIHRpbWluZyByZWdpc3RlcnMgd2hpY2ggbG9zZQ0KdmFs
dWUgc2hvdWxkIGJlIHJlc3RvcmVkLiBUaGlzIHdpbGwgc2ltcGxpZnkgdGhlIGNoZWNrcy4NCg0K
UmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiANCj4gPg0K
PiA+ID4NCj4gPiA+IFdlIHNob3VsZCBmaW5hbGl6ZSB3aGF0IHdpbGwgYmUgdGhlIHRhcmdldF9k
Y19zdGF0ZSBiYXNlZCB1c2UgY2FzZQ0KPiA+ID4gbGlrZQ0KPiA+IFBTUjIvTE9CRi9QUi1BTFBN
IGFuZCBzaW5nbGUgRURQIGNvbmZpZ3VyYXRpb24uDQo+ID4gPiBUaGlzIGlzIHRoZSBvbmx5IGZs
YWcgYW5kIGJhc2VkIG9uIHRoYXQgQ01URyBhbmQgREMzY28gd2lsbCBiZQ0KPiA+ID4gZW5hYmxl
ZC4gU28sDQo+ID4gbm8gY3ljbGljIGRlcGVuZGVuY3kuIEdvb2QgdG8ga25vdyBpZiBJIGFtIG1p
c3NpbmcgYW55dGhpbmcuDQo+ID4gPg0KPiA+ID4gUmVnYXJkcywNCj4gPiA+IEFuaW1lc2gNCj4g
PiA+DQo+ID4gPj4+ICsJCXJldHVybiB0cnVlOw0KPiA+ID4+PiArDQo+ID4gPj4+ICsJcmV0dXJu
IGZhbHNlOw0KPiA+ID4+PiArfQ0KPiA+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jbXRnLmgNCj4gPiA+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NtdGcuaA0KPiA+ID4+PiBpbmRleCBiYTYyMTk5YWRhYTIuLmVkNTQw
NTgxNzM4ZiAxMDA2NDQNCj4gPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jbXRnLmgNCj4gPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jbXRnLmgNCj4gPiA+Pj4gQEAgLTYsOCArNiwxMiBAQA0KPiA+ID4+PiAgICAjaWZu
ZGVmIF9fSU5URUxfQ01UR19IX18NCj4gPiA+Pj4gICAgI2RlZmluZSBfX0lOVEVMX0NNVEdfSF9f
DQo+ID4gPj4+DQo+ID4gPj4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4NCj4gPiA+Pj4gKw0K
PiA+ID4+PiAgICBzdHJ1Y3QgaW50ZWxfZGlzcGxheTsNCj4gPiA+Pj4gK3N0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlOw0KPiA+ID4+Pg0KPiA+ID4+PiAgICB2b2lkIGludGVsX2NtdGdfc2FuaXRpemUo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+ID4+PiArYm9vbCBpbnRlbF9jbXRn
X2lzX2FsbG93ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiA+Pj4gKypjcnRj
X3N0YXRlKTsNCj4gPiA+Pj4NCj4gPiA+Pj4gICAgI2VuZGlmIC8qIF9fSU5URUxfQ01UR19IX18g
Ki8NCg==
