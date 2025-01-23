Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAD2A1A2C7
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 12:18:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577A710E190;
	Thu, 23 Jan 2025 11:18:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Usxcid+X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEC9210E190;
 Thu, 23 Jan 2025 11:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737631122; x=1769167122;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ifym+6zNoC8NEsvblkoQ4RsH/Q7dnhcUUupRdDbhSag=;
 b=Usxcid+Xt7M5bICEIBCDgW7L4X7CnlJbwv4nYjAeQhE6pZSf6B+dvOmg
 xr7ryhuI2cmq+80I2Z+nylaDPaUQ5Ruu7v/MM/yN4gtktJn5Y+jd5QrKk
 70295zNlHEpE/yna7po2HyUnuVhauDBs9M/NrnwE2/Su7AnCHMgn/4hvj
 KRMOEqP21F5mFlqcCMt8iD3c9DK2j6eYXiVEl0PGE5c7MdL+YCT6T4fZo
 upM2zKWBqb37L0kkb4EvCyYEojnBcRv6W0dlVD2iiLjo0ahyXaZ1aXzfl
 JQpoP0hTRtzoA02bVNxg0DPSOMdFw6zPYEXDIf43hPCmr6g2dcIm3CgHW g==;
X-CSE-ConnectionGUID: Qm93FEmwRxWejftIdmcgTA==
X-CSE-MsgGUID: t2mEPWm0QhavZjhjlrjVLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="48789606"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="48789606"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 03:18:42 -0800
X-CSE-ConnectionGUID: w/4+zVaZQ06qoYQi/TNh9Q==
X-CSE-MsgGUID: CjjEGlb9QWqUnpr6v+Yd6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="130721987"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 03:18:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 03:18:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 03:18:41 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 03:18:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jL3Dgx1BWVJDfaTfn2Yf66bU5Zjjx3wmSPcQ4DHwyquFQbkRHw2Wm5EuP8KFGPlAMFu9NNTBGQMj7VfOk+/wCMy/c+QMI8vGHQSMWFae1djNH9frDMLy07So0bClisTbZ4XRqGA7gwY3sNdEYgo03xWLwd1fO3b/5VBj409fxXXPbSYlj/vrQaRABQpbiF0tsLHppNEVVxjmwQNcLF8J04guLSKTJLrOLO6PhHLgXn8jAFrclZwYvhmM3PGLPlkU/dWAjezv7a0vT9zg/y0hrfuSJM5n0Ec/gbW6Wv0dVIZQHDysMHkYU6jL5XfUYcwXvLK3VpbCww2S+0kcRqoVnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ifym+6zNoC8NEsvblkoQ4RsH/Q7dnhcUUupRdDbhSag=;
 b=SjH5Ftv9383BOCuVPjuIQfHs9SEsSXdR/k+H1KPb9a5mpgLWH+LsEn8oQpHGohwYIjQv8YPvo2+ZtA3xSHH2f13eMZjfIZZvRS3FLosHB/quznuf4mnYtlZtrZO5eOXE6BDSUHWe5yAcHYWaHsKyi5EBqGPpMdvnDyQorte0bjiRkjaEgLZE4AsHiRx5fAip2GJJwmAdIAr+maldnr8C5zeivG4CsHszbA8R3o6UfFv7p/ZShfu7IE/XAmKB82qOEVxA6W1NkvPOmE2ZLHwAmLt06nPSZuMX2sO46CBNGMcFtXi+PmSrSb9KqYL/3vlPBbenXm0eCIHMexBLTNpnpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by DS7PR11MB7806.namprd11.prod.outlook.com (2603:10b6:8:db::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Thu, 23 Jan
 2025 11:18:38 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%5]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 11:18:38 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvY210?=
 =?utf-8?Q?g:_Disable_the_CMTG_(rev8)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9jbXRnOiBE?=
 =?utf-8?Q?isable_the_CMTG_(rev8)?=
Thread-Index: AQHbbRbKrCXxNCQiq06ogeIJet/ws7MkN5ew
Date: Thu, 23 Jan 2025 11:18:38 +0000
Message-ID: <CH0PR11MB54919175C7DFCCE1E96C9655EFE02@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20250122200355.89389-1-gustavo.sousa@intel.com>
 <173757965250.3227875.7613136217234942242@b555e5b46a47>
 <173758216162.5500.3879005975506749987@intel.com>
In-Reply-To: <173758216162.5500.3879005975506749987@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|DS7PR11MB7806:EE_
x-ms-office365-filtering-correlation-id: d14bd0ec-4812-4cc6-9b9d-08dd3b9faf56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|13003099007|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Ym4yQzhWbDBxajVIWEZIMWc2c3lhRDkzalBPUml3YTRIWFBPNGpkUU5xM2hP?=
 =?utf-8?B?d0FzYzVQQUR5aVJzL212SVFrWVlFazhlazhLTXhCakFsSTZMdkFkK3M0TGFz?=
 =?utf-8?B?dUtjTFkrOGR1d1l1UjdaZTRNYVNwMGRHRW81Skx0UWpERXZKbWNFMndBY1l2?=
 =?utf-8?B?MTY5SXQ5YXdUM3AwOFdjUDYwSlk1ajJzcU9Mbkh4NkZia0ZFSXUwSzNXVUxP?=
 =?utf-8?B?Z2FNOW5TYWhoTGFtUTByWTkwVlN5VjA0NWM2TWRHQWIxMWdLZjZySXV1RDl4?=
 =?utf-8?B?cFZyQnBQQm1nY0J0VHJiZUpYUStqemlCZlRpVDRNejVORloxM0FSaDljZjE2?=
 =?utf-8?B?Ui8xTEVjcGFHSUxSSlo0V3pvUUk4MFpzenZ6bkJUMHdQT29pRmtmRC9qa2RX?=
 =?utf-8?B?RkZhSThBcW9Sa1JBUXd6WjlZUUxFYkVyQ1E4alloc0NmNVY0QU5LS1hiZW0x?=
 =?utf-8?B?YWJZSE9yN3FrcWZWZUIxelc0TWlCd0ptZDNBWTV5NTN3dWJCd2hWRmhpVzMr?=
 =?utf-8?B?RDV0NkFOK2VKNDA0dXZxaW1nWWlvaytQRDZTVFhWMVRabXk4YkJLME9QRkRP?=
 =?utf-8?B?VzM4QS8zNWxRWXFjQVJMbjBPQnJMcWpXZWJlZ21jK1hLSENhQ2ZTY2VSaU81?=
 =?utf-8?B?SEFJWHRlSTR3VkZacVd3b2hzcGZGdmZDMUNNMUdIc0orV3I1TVFUZmlPOHdk?=
 =?utf-8?B?QmhmbVVwKzhLdHhuSVpqRFE5NzB2a01mL0tkd3ZDbkVkN2lGaFMvRjZYWDEz?=
 =?utf-8?B?Tm9NcTJtWkVrSk9QQ1BmdC91Tjk1bE9DRlg5ZFlOZElFNmJiVEtBeCs3Z0o2?=
 =?utf-8?B?Q3R5RlJGMjg0dFEvTkFkVkZTYm1aYjQzTXRPVE9BRmZ3ZDJRd0IvbXNnNVcr?=
 =?utf-8?B?RCt1VHdaN1pjbFZrZC9MNkUxY0JrMzlYSW1ZQnhyU1NMU2Q3U0paZVlkOUtG?=
 =?utf-8?B?L3hUd2FFMWQ1aFprZjhRb0RLQ1BMRm5FbEtBSXJtRThDNjM2OVEzNm5yY3d4?=
 =?utf-8?B?b1ozVzFyTmVIa1ZoUm9mR0ZQZFJ6K2Jxc2NzeUxiNVpTRjJBWjVzVjF6dnVi?=
 =?utf-8?B?czlLcEpBK1FkRHB3SVlKRUNhZUpqNU1QWVVoQjh1cDRvclpyYTN1SEhwdW5D?=
 =?utf-8?B?cVlSM2NZb3FPR01IU0RYcWpDV0d1Q3dRaU9Scm5hWDJzYitIN2VCcFBIaFc0?=
 =?utf-8?B?MnhpR2xZSEh0SmRqbSsxV2ptTE43N05tUkhXMzRVWjRVWU54ekNLcGZmU1NC?=
 =?utf-8?B?TmErLzVLY3M1dXI4V2NVTE9OQ2Z2eWwrREt0RHU4SEsrdGJLeXJ5eFpaMTNE?=
 =?utf-8?B?U0I0a0xnUG94aXRDRVYyS2J0K1N0ME82Q2NVZzBuMTNnL1V0WnF6Mlg3dldD?=
 =?utf-8?B?YWhzeWY2RXQ0ejJyRUhNdXg1OE1NamZVcGMzU0FKUXpqVnJLL1dpN0cvRkVn?=
 =?utf-8?B?MGtlNVNveGJIRmhoK2lBVXRuUml1MzJ6ZDEvVmtwWFVuTFNlZERzU25oMmhY?=
 =?utf-8?B?Wkw5MFB0cWVLT3F0NHhLVGVxQ0ZRTTk3UDR4V0Y1L2lwTFdTdWVvUlBUb1Fx?=
 =?utf-8?B?U0htMTFVT2Y4QnUrZWVxYzI3eWErdWlDaXlqaGxwdVU3b2duOXNCbnNmK08w?=
 =?utf-8?B?V1lDQnBGWk02RVZzWlVPWnlpRGZrTU1UTXgxdnBMbC9tYWQxNERTN1hHM1g5?=
 =?utf-8?B?eDVQRXB4emlCRS9BRld4dVRySDBJT0YvMHVPZ1A2cGRJVDhidEdTdVFTY1JU?=
 =?utf-8?B?T2FpQk9iMWRIQlZydGpnNkJacDVOeU8vSGI5aVZmV3VySExWOERVaXhXQkQ4?=
 =?utf-8?B?aXJSNUZ0R0JZa21icXpQdXVXTCtVUXJoZmI4NngzOWdrN1E1YkMxVmhrM0tq?=
 =?utf-8?B?dUVpRjN5ZVhZOUtkb0pOOGwrRWlwOXVQSjRqWHpYcEQrL1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGcrKzhDN1haKzFSZlp6QTM1RWVIUHMrdjZZd1JXbnRSc2pxYW9OUTNwOHdv?=
 =?utf-8?B?S3NucFdqWk9nSGhITHFPMVVMTmcrMEs5ZWdkNWd1TzFvMUpGU0Mrb20xUHFQ?=
 =?utf-8?B?cm1jZmNvZlBTVmEvTUZaQWhoeUNIQlVTSCt2a3pnVE83c3QxTTdsNHFJQ0U1?=
 =?utf-8?B?eW9RaHB5c3J6aXRER2twczllQkdBUmprbVZhaHplanVUT01XcjIrb0xLY1Aw?=
 =?utf-8?B?NXZsOFVjaGt6K1VqTDBaN1RvRGQwV1N4ZjJuSEpEalRDdGlPZDd5QWlwSlU3?=
 =?utf-8?B?dXB3YlNMVDBwYWlYaVN1THc5U0dLWHNHSGJIcWVaTmkzTzl4K0owQVk5WHBD?=
 =?utf-8?B?R3pSblBNNzI4Tmh4MzJCeWt1SGlUOWxBbktuV3JvMksvR0hnQmhtUjFUSGNJ?=
 =?utf-8?B?MWZZR3cyZ2JKRVRMQlVmSG04WTloOXppZ0RjYnZDeDRSazZYQWZOZFNMOEhP?=
 =?utf-8?B?bTVubHFuOFVSL242Nlh6b3RiMmV2cXlEQnR2ZTVxVlhsWVJlaW9wMTRXbkd6?=
 =?utf-8?B?K1IrSDhBQUl4K1UwYXlEQXltMCt5TC9uZU1zV0RYRzlSM21hOHQya1hUd1Ry?=
 =?utf-8?B?OG9pS2VhaDhnUEJZSndvK0JFYmU5SVViRmZzZVBmZ3lGdkJYMHozSUNNL3pY?=
 =?utf-8?B?Q205OGdOK2QrVUtNTTJvaENMODJUbk5QQ3ZoZ2V4eklMVEUvSDBiK05SZ2hI?=
 =?utf-8?B?aCt5cXFhSFhnUURuWldkSWVYWDB1TkxmbVpWUytxMEk3blpCSFVPcUpGdk5O?=
 =?utf-8?B?d0ZwaUZtY1UzRnRuOGtoOWJ3MjlrdHVqSmlydENrZmFDYWYyUGJ1OGtmRFE0?=
 =?utf-8?B?QVdJOGdXeWtEcXFuYUVmR1JBVlhVRjAxOUYyV3ZOdElmVkFsYjR0S2Zyem9l?=
 =?utf-8?B?dTJVSk5EbUlsSlJqdVFWSzlNbk1GSFVVR0dFNkVMcUExeWh1SHJDSmhiN25B?=
 =?utf-8?B?SjZIMTF1STdJMXNWOFROMlRaVG1WWUdNQVRNME1qOHZpWkJabXViY2tqaDVi?=
 =?utf-8?B?SG5wRkc1UCtaMUJUVERleEdMN0Y0QTR0UkZlWGhYNFV6RWMvb3B6dGsvZ2FY?=
 =?utf-8?B?M1psTHlYU0RPRlVERnQvbkNxMmd0UVFVS3VSYTlBNkNsVG5lM2MrZ1h0aGow?=
 =?utf-8?B?UlRaUG5TQXVha29MdGZXR1dmRHEra1pmcGs4Wis4OXQzV1pCSVBpam5UazNJ?=
 =?utf-8?B?ZXhVUHJQcWNPd05DRGpFUHAwV1AwU0w1WXNqdlJ5VlhxQjZoQ1NUUXpIRElD?=
 =?utf-8?B?ZUVuandab003OGVpeU51VHhNQVZGWEt6K1QrL0cza3RlV014cGI0VDlNSnpV?=
 =?utf-8?B?a1ZuNW5OSWRJRVZWcDdqeVJzcUZOVWU0NzFzSlFYMWVVNzV2dW9za0xoSEJM?=
 =?utf-8?B?Vk5wOWIrUk1hbXpnSWM2TEV4eXltcDFGdHZlV2lLNmhiMy9hRm85TmdqdUJs?=
 =?utf-8?B?dkk2VnYwR203ZnNwcTdiUGwwUHMrSE5jVGQxMGNTTERNRmNqQ1lSZSszNXhw?=
 =?utf-8?B?NGUxcUhwUTZ0bFhFZ1F6UlN1bWVNaVVjUXJXcjREMVBBUk1XVHhCSGg1TDln?=
 =?utf-8?B?bGRGSEc0QWVkd2hmUzIvRkFRR3Q1RjhaV1hEdjJxcGxvRDNYK2VYNXR0VFpV?=
 =?utf-8?B?ME9ZZEtSK3BDMVR4OGRXN1I5dVpWSFpTV09RemZKbWRpdjVTZXN3NnAwUjgw?=
 =?utf-8?B?Z3JldlkydzVKem5yQkV1RHhJQUhpY1dVaEZOZW9RRUhZNlU4TWNaT3lNVDBO?=
 =?utf-8?B?TGhFWml2dUNCMU5PdmJ0RjlEZ2dPYXBla1FkVHVrZ0w1d0RhL0Zqd25WelVB?=
 =?utf-8?B?cVBXcXBUSEZVcDVlS3A4MDNRclJQMlovVzJXUlFpMmQxVGxYbXlEWW1LQ0VH?=
 =?utf-8?B?QmxSb3MvcWV6eTN5cURiZUNwNlZrOXppakdhelBUVVlDanhYK3cwLytpUUpZ?=
 =?utf-8?B?djhQN2F4UW1rcjNTYUxqTzM5czQvakRCTjJmazZrNEl4dFZvdERzUnFIWVNY?=
 =?utf-8?B?RmdvWXg3NTYwNHRuRHI4WTVjOGlzdmFuWlFUVUZTYldMbnNWdWJyQmFuelVI?=
 =?utf-8?B?L043TFFESHd1VmlCbld2OWpoMEZOY1J1WUNPYmJsb096cTBXcjZ5OXAyKytJ?=
 =?utf-8?Q?FaP5FsY9M5pzyN4X+nuw4Q7js?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d14bd0ec-4812-4cc6-9b9d-08dd3b9faf56
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2025 11:18:38.3417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /jZqkERZfbnB+Oxd1tzoT1DKHUQh7BRZi8PypxEWF9cjGyHZ7irYAQYkMq+sV2W+z7VMS8Ua0iuBR8IKcElQpD++h7ccByYK9z5LCzDiAtI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7806
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQyOTQ3LyAt
IFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KDQpUaGFua3MsDQpS
YXZhbGkuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJh
IDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYg
T2YgR3VzdGF2byBTb3VzYQ0KU2VudDogMjMgSmFudWFyeSAyMDI1IDAzOjEzDQpUbzogSTkxNS1j
aS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog
4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9jbXRnOiBEaXNhYmxlIHRoZSBD
TVRHIChyZXY4KQ0KDQpRdW90aW5nIFBhdGNod29yayAoMjAyNS0wMS0yMiAxODowMDo1Mi0wMzow
MCkNCj49PSBTZXJpZXMgRGV0YWlscyA9PQ0KPg0KPlNlcmllczogZHJtL2k5MTUvY210ZzogRGlz
YWJsZSB0aGUgQ01URyAocmV2OCkNCj5VUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvMTQyOTQ3Lw0KPlN0YXRlIDogZmFpbHVyZQ0KPg0KPj09IFN1bW1hcnkg
PT0NCj4NCj5DSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNjAwMiAtPiBQYXRjaHdv
cmtfMTQyOTQ3djggDQo+PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQ0KPg0KPlN1bW1hcnkNCj4tLS0tLS0tDQo+DQo+ICAqKkZBSUxVUkUqKg0KPg0K
PiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0Mjk0N3Y4
IGFic29sdXRlbHkgDQo+IG5lZWQgdG8gYmUgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgDQo+ICBJ
ZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGgg
dGhlIGNoYW5nZXMgIA0KPiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDI5NDd2OCwgcGxlYXNl
IG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIA0KPiAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcpIHRvIGFsbG93IHRoZW0gIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwg
d2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPiAgRXh0ZXJuYWwg
VVJMOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTQyOTQ3djgvaW5kZXguaHRtbA0KPg0KPlBhcnRpY2lwYXRpbmcgaG9zdHMgKDQzIC0+IDQz
KQ0KPi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgQWRkaXRpb25hbCAoMSk6
IGZpLWl2Yi0zNzcwIA0KPiAgTWlzc2luZyAgICAoMSk6IGZpLXNuYi0yNTIwbSANCj4NCj5Qb3Nz
aWJsZSBuZXcgaXNzdWVzDQo+LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgSGVyZSBhcmUgdGhl
IHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdv
cmtfMTQyOTQ3djg6DQo+DQo+IyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiMjIyMgUG9zc2libGUg
cmVncmVzc2lvbnMgIyMjIw0KPg0KPiAgKiBpZ3RAY29yZV9ob3R1bnBsdWdAdW5iaW5kLXJlYmlu
ZDoNCj4gICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIFtQQVNTXVsxXSAtPiBbRE1FU0ctV0FSTl1b
Ml0NCj4gICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lf
RFJNXzE2MDAyL2ZpLWNmbC04MTA5dS9pZ3RAY29yZV9ob3R1bnBsdWdAdW5iaW5kLXJlYmluZC5o
dG1sDQo+ICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQyOTQ3djgvZmktY2ZsLTgxMA0KPiA5dS9pZ3RAY29yZV9ob3R1bnBsdWdA
dW5iaW5kLXJlYmluZC5odG1sDQoNCkhpLCBDSSBUZWFtLg0KDQpUaGlzIHNlZW1zIHVucmVsYXRl
ZCB0byB0aGlzIHBhdGNoLg0KDQpEaXNwbGF5IHZlcnNpb24gOSBkb2VzIG5vdCBoYXZlIHRoZSBD
TVRHIGFuZCwgYXMgc3VjaCwNCmludGVsX2NtdGdfc2FuaXRpemUoKSB3b3VsZCBzaW1wbHkgcmV0
dXJuIHdpdGhvdXQgZG9pbmcgYW55dGhpbmcuDQoNCkNvdWxkIHlvdSBwbGVhc2UgcmUtcmVwb3J0
Pw0KDQotLQ0KR3VzdGF2byBTb3VzYQ0K
