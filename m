Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66026C41F08
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 00:22:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5589510EB8A;
	Fri,  7 Nov 2025 23:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KoWnAaD9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D305F10E0C9;
 Fri,  7 Nov 2025 23:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762557765; x=1794093765;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=YdyJ3dkTHBpTSG8OKQcoRbGwm/zXD5xUqutB1nZElcI=;
 b=KoWnAaD9yMzLCFQ5+g/1ue7ARwZcTMMN91y9neF0rVMWTPFSgom8TA7F
 gOMHpw/I+pVhdrcudyKGaycBIHbeMU3vUdDnslS5KRtqAP259xTKCK9pg
 iaFJhHqqCRdP0Y7odOh1/8djFKHm26k5lIYZOEa4dZ/zLG8L9f84TraIN
 SKp0SQ+8ikdHcBE/Ep0u6UMCcBANC9GEKQl4CWzHWuqLiUnB/L2bTySsq
 M2TQc60o6slJbFFmvABdqojRltMT9ZyatdNqJjQ2aGm29kMmOPP2YfjGp
 9r7SkmE1mKtjvyxJNlHAAl3gp8N9ADgoOLt9iNJMd/Nk6dIrRZIh3LAFy w==;
X-CSE-ConnectionGUID: ifsQRm+0S7Kp1EyJKiodFg==
X-CSE-MsgGUID: bjJsI7f9T+a9FV/kZc5NDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="76160708"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="76160708"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:22:44 -0800
X-CSE-ConnectionGUID: Bgm3kLjnTEGmGoI7hEQYaQ==
X-CSE-MsgGUID: TlkeOjZUR+6ZfCWEqjIKZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="192254980"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:22:43 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 15:22:43 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 15:22:43 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 15:22:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V5t7AryvNuTqG1m23ykuyLNgrhIe4oi+gcNRiJmi/m2HCMT8LDPz3Yfy0AHlU6cU1zBiwMB84PIiVVC+8C1mRbZHFAv9UPApBpywmdYSKAlud55tLR0y0b8NeDw3V6+Uw+yEnmYdnLc2wz7mFoHnjyRy+9jxp9tItcQ4Ao1kWEEGcUAzITUg6mp5XDPKpOuOcmCf5BELB16iai5eNA599l3qTuIrbE5KqJFPtQ5L3hSZaYvTsXXBwCB9bsKLLZOsAltRb9Z9/kdgh24s/S9b+so5fDd8ZrueaBcvdkE32RPo4vE+aVelHMNNLr//pDkakPd5kx3P0Nvwh7ALJSKtMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SfQlGCsVo8OkEX/z8NaKES3RWub5iVW+sTNUkbO13ZE=;
 b=Paj5KFaMUNJ2Kkk9vvflqRfp+yXYQgCnvr9q2BRF3sEud2FEhZYZCC5T+M8lAEtMOWlQv3l/bvD9DMENYyvbMOHcyc7gquoYH53L0KMRUGlpyyJe2A0b6o1DiSMrNUP8LEWvBY3dmmMNMz2Fh42/fuk34sRfOxTn+WStrmmJc4bJr3DbJWq0E6LTM5FIbKFmLweuyX2uiIik90+YlYzPEa25eaK41BikZlOsHgumYCRUrC90Bd+U/J5evCSUwjhPdn4ws+mzvyGDUPTiKz334akxWHHuoWwvhM4uBGQbJAqRESWBfr7g5yGTTW6eUaNEw3MLqF474lCLK7VV90X/qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB7280.namprd11.prod.outlook.com (2603:10b6:8:108::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 23:22:40 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 23:22:40 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7bde5fa23c84894057bd52235f7065675e366083.camel@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
 <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
 <7bde5fa23c84894057bd52235f7065675e366083.camel@intel.com>
Subject: Re: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Date: Fri, 7 Nov 2025 20:22:36 -0300
Message-ID: <176255775628.2001.3273093974564082659@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0218.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB7280:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d1476d5-4df8-4c96-1e19-08de1e548bcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHhVRTUybnRMcmswY2I3eGhSdWVZcXZlUEdZOXpocStKdDdMNm14RTdXSnFW?=
 =?utf-8?B?TGFMZ2UxdUdzblhBaGFMdzdnNnVmWmxiQ3MyQ3BOa1JrampPcElOR3Npb21x?=
 =?utf-8?B?S2FiSVFZTThXUGd6TWZKSGUvT1lTUU9VakZJSlR0Lzl0R2xkTk9VcDk0WjRq?=
 =?utf-8?B?SUM0VU1NNnR5aWhEdm41Z3AwRlcyd0NFMEhzUUx5N2pJOTBQQVB0SGxkR1Fv?=
 =?utf-8?B?bG1YQkhNWU1HeGR6K3N2aXRMQXlvZ1N3ZzBRaVhkSXJOaTlRaDd3U0dzeEpU?=
 =?utf-8?B?eExXS1Z0ZWF2bUZNNFFSV2QzWk0yK2Rqc0l5eldNTnBOTzRPR1BaQXpoSUlv?=
 =?utf-8?B?UGRhSnRRZzhRYWc4MWNqaHFKdVYrcitXMGkzdS94RVl4aWgvMVpwQVZXcFN3?=
 =?utf-8?B?RTF0Tlk1NlZZOE8zUVJxQTkyOG5ma2hsREozaVBtY1NUWENIdWFTVmwydmkv?=
 =?utf-8?B?bnoyQUN0TWtPZjZBZWJVU2oxVW13aUZnYzhqNHA0QjlXSHJwSCt5UzcrRyt2?=
 =?utf-8?B?elFRaUpwdFdzYVNHQmkxZmVoRzJSU00wTVZiSmdFSWwxZ3cxUkt4dERRMnFL?=
 =?utf-8?B?bThwd054MUsyZkFCK2xmNjBld3NXM1V3b0g5bkxKS05heUdvMmNVWlh2RGZj?=
 =?utf-8?B?ZHRNVmdvWk1pM1psMTN4aXlaL1RHeWN2QUErbFNDZzk4NmRiSmUrdHRBeFFp?=
 =?utf-8?B?dDc2OTVUd0tMaTRDemNoNWk3ZWkyQ3lJOGxEQ0VBajNQa2pBVWtiUVdOVzds?=
 =?utf-8?B?eXhJWW5LWmQ1NkRYWnBMUGg0ZkFPMkJIYlhGOEwrQmYwYUtVM0lPdDlKOWRx?=
 =?utf-8?B?WjRtTXRLMTA0UTY0M0ZzZ1NJUVNsZzVCOFh0U3VvcXo4MmhpV085QU9BNGpx?=
 =?utf-8?B?TFhETFlXM01xMXJBNy9NR2h4N0tpUlFXUmVIbTQrSGxLVGZlcGJ0b3JvUHNJ?=
 =?utf-8?B?dkg1SWQ3aWRkZU5HOWFCdzhaWWYzZ3FsZEp5RGt3MjBDUmFkeHlNdWF0QzZh?=
 =?utf-8?B?UWlJVXJCUW9tOG5BdUpncHE3VGVmVkVFbmFBSHF3d0J4K1k2Rko1cEpjNSty?=
 =?utf-8?B?Y3FRUmlpekpDTHp3Tnd4bG5uY2NHSXE3eHB5RmtFZ202UzhJVnhMNzN6SGVi?=
 =?utf-8?B?WlBMWmJVeFRlNytPTXBDT0pYR3d4K0g3OUFUUDEvaFUyZzNiaTN3SlFOcC8y?=
 =?utf-8?B?Y0xjQkQ4Wks5RTRGVys3MlBoWStWenhrMnRvem1XSXFXTG9zcEdDYlJKNTBo?=
 =?utf-8?B?UXd1eDFjaGx2ejVMQlYyeHg1ZzJlVy9rNzAveDIzOXptM09uMXllRjRZaHRo?=
 =?utf-8?B?ekxKbUIzbTQ0N3ZoUlM4K2JFUGRnUmlaY09xZmlER1YyaXJuR0NpMnRBUVBv?=
 =?utf-8?B?YlJjb2VxVm55T043ODFURGcrQ0NscXNGVjVCb3hCK3UvdEFreDNMNzZoOXdj?=
 =?utf-8?B?dFZucVQ0ak5HdmRnK2R6UVJjWWEvWEVMRUVOQTlFYVh2REtRNmo4bTRXV0cz?=
 =?utf-8?B?dnJsTlF0ZGxDNjZVVDVXNURBSGIyc2txQ2NRTmpOS1ltSm1SUENHa0R1WDgz?=
 =?utf-8?B?UGIySnlBNGlGMkt0WXRBZVJuQ1ViZXl6K2VmSUZBbWFwMXZOMGhPdVJqWDdh?=
 =?utf-8?B?ajVYMklzZHdXbjFCMDJDS3JrQWsyWkVSZGlCb01JbFE0bHlhb1RQeS9xL3BH?=
 =?utf-8?B?YlllcHFqVHdWS0YraS9JOW9xK2VUSFc3ek5VaHJoOTB5KzZxV2ZabEVtV0ht?=
 =?utf-8?B?R21TbTBOalVnKzljTGVhVVNkNTFlQld6cTdneExUb21OQUt2Qm5GK3FzUCs5?=
 =?utf-8?B?UlFsOFhVK0o5RlJBNmw1MWQrWUNOampqbUpQTjUvelJEeHdKSEM4enhET0lp?=
 =?utf-8?B?Wml2OE5vMHY2YkkxU1lQZzA1YVBCUGhrMjByeTBVbDN4MGZSVkluVmN1QnRw?=
 =?utf-8?Q?QugiSXABtpZ2beMzcCIOAzfITOj5N1uE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VU14czFkVGRJQnl0aFI0ZzFQa1lEYTk5eTY5VnhkTDZQK0d2LzkyQU5Icjhp?=
 =?utf-8?B?NUlLVHJkUlJQVW9nRmdPQy8yQ1VKRU5iMVBwdS9rcVdGNWY2WXJuM3FTd280?=
 =?utf-8?B?TlcvTHErKzZVUUlRTWdvRSsyeE1VZ3hiQmgwbVFxSjFhN0V5M3JNcEl2THBQ?=
 =?utf-8?B?UnFoTmFWUnBzb2hpNCtaTCs0RkxsYlJud2tVYmtMdGRmTEIzTDVGL1R4MUhu?=
 =?utf-8?B?UGk3Znhsam1GWEE2OG1MbVNCbXpCZFdUanFzajVTK3Z5M0hxOW1oL0dyRWRV?=
 =?utf-8?B?UDNOVWFINkJJTTN2TTZGUDlmSGFacU5TbWMxbDFJa2ZLVERLQmNuNXZsUDRQ?=
 =?utf-8?B?MzhEeU1iQ241QkV5VlQxK0I0dW81L0ZQbDBIU1A5OFM0QUc4T0lQV0NTaGVT?=
 =?utf-8?B?Vll6Q0g1MGs1THlWUW5KSklQeWh5bkE1eFVSbnJ2bC9mZ1FGbUFjcmtDU1Ey?=
 =?utf-8?B?Y2pWTzZ1V0orbllJUHpGbnJLZ29OTkNpVkdaVGtRbndQeEk0dDJrU2tWdWVv?=
 =?utf-8?B?NGxRUzRSNUd0K0hTRHk4VnY2L0NPN1NyUXV2QlU1T2R6TjZGempGUi9uZnBp?=
 =?utf-8?B?YndHOHoraEFKeU1oYzBleEhFeXFsQWhEcXNpbjJSa2VoUjZ5UW1zNktpSnZy?=
 =?utf-8?B?WkovYThrcUw0eDhEUURaeENjM3ZUWGpJVnhiZHl1RjJMTFppd0psZHlpcDN0?=
 =?utf-8?B?NDgyWEdwcWhpZzZMTkVSaGZDQ3N1SjdGWVArbFRocFJVRTBDV1pJZFFOaDB0?=
 =?utf-8?B?VjVvYll3UHlucnljaTlIOXZCZi9DeDFuMU5KR0duTnZEVEhmbFNxOTg5bTlw?=
 =?utf-8?B?Z3J2YmhXNS8xaEp2a0RGZ3VlTmpqcUVlc1BmNTJPVk1USUJUbGJjVzJzaFZU?=
 =?utf-8?B?R0VnY2c0T2plK0U2NWQ1WTVqMDhEUXFRa29wT3ltZEV3djZSZnBpWC9KWlc3?=
 =?utf-8?B?bzQxRUxwTW40QmNsMXBkcmNLcFdpOC9Jc1A3eXYxdXc5NkwrdFJkNnVPYmVB?=
 =?utf-8?B?ZG1RU0FYdlpSU05qdXdNS2NKbnVVS1lQWDVUTnp0Y05hME5mdGgxQUFRenJv?=
 =?utf-8?B?SFhIVTl6Ny92UWdQaVNudzhZY0JJSFhHMkE4TWhLdytqSkRzcDhsTXdDQ2FZ?=
 =?utf-8?B?NFVheksrQ05WM3JoWHY4d001dzRFaGVCSDU4QUx0ajFGZ3hjd2lwUm14RTNY?=
 =?utf-8?B?UW8vVnFJNURpdlk0eEtnOERpT0Vtd29iZkpZejNDV2g2QnpQdGpMR3d5Q2Nj?=
 =?utf-8?B?YkpVNFNwZWFhTW1TakZlTkZGVEFwNlM4aXMvWHBoSTA0NmhXSVBtN3BBUlUz?=
 =?utf-8?B?NW05dWl0OWdiQ1BoN2FvNHdKMXIvdTJWNEllMDdQa2N4RTY1a1N4R2xzSmNE?=
 =?utf-8?B?ZlIwTmp2YWdQNTVqV2MwT0JROEkzdTI3c2VpM1RaUnNpU3NRRWhwQ2ZDSDl5?=
 =?utf-8?B?dGRPOW93QmZmeEhrcXV5eGlHRGEvMExZM2wzajZhdy9sb1YrSmI3RHI0MXdY?=
 =?utf-8?B?Q1JJWklGVldJODN1dy9EekM4d0FHbGFCbHptWTdObU9pUjRpMXNaS1JrWkt3?=
 =?utf-8?B?WUpEZkRKcFlvUkxwR1RqL2dMN3dORGRaZTBrRDZNelUrSEVQRkduR1VEWG9n?=
 =?utf-8?B?QkIzdElLM01oaTR2Umg1NzRkK2VwWGVldFdKZmp5V1dwdGRaRmc4MXlONjNL?=
 =?utf-8?B?VktEQkcvRWlpcVIyVWhkRUFRWHBJZWFnK29Vdnk3VlJKVkszellabnd4U09K?=
 =?utf-8?B?eFR6UDB6UHdQN0lNek9yQ0VDbFRzTmVSWmFrdUV0QlJKM3ZtYnRBSmRVMWFq?=
 =?utf-8?B?enUreUpBTTFHOEgrY09aQ1REU3VwbGEzajA1aUR1U3lidVF1VzQzY0VIYm00?=
 =?utf-8?B?ZFhrOFF1bGYrZkw3STNjY3BqQTVReEM4MkZCUm1ZQ0pYbEtGc25xZ1N3d3lX?=
 =?utf-8?B?dmpKQm5McFZvMlkxMmtKenpRWjBDbXlhazRBQmNNczJZczI0cGdNMUxKWWxS?=
 =?utf-8?B?WUYxRkdmZDlOV1N1ZXlUMzNTRjBvYzBkSy9DcFlnamJxT0NHNEovOHNKTlYw?=
 =?utf-8?B?bDNLWFZGejJsK3RQa21oRXN6dlNmRWVTTEw3Z3hXRm9ab3Fyejh2azhadnpN?=
 =?utf-8?B?eVcvODlsTE9CWkQvRHBDVUxUS2ZUNi9Pdno4Wnp3UFNNeHhua0NDbUI1R2FV?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d1476d5-4df8-4c96-1e19-08de1e548bcd
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2025 23:22:40.6649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GajnMwEFZ45yekCjhsfGAxZ6W4U7ID8QXUHfgdzu+Vz0lvojlFGBKYG+xc+NV4+DKJHpGISor+1RFbbvyCYsvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7280
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

Quoting Govindapillai, Vinod (2025-11-04 13:35:43-03:00)
>Hi Matt,
>
>
>On Mon, 2025-11-03 at 16:15 -0800, Matt Roper wrote:
>> On Mon, Nov 03, 2025 at 02:18:12PM -0300, Gustavo Sousa wrote:
>> > From: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> >=20
>> > Configure one of the FBC instances to use system caching. FBC
>> > read/write requests are tagged as cacheable till a programmed
>> > limit is reached by the hw.
>>=20
>> What exactly is "system caching?"=C2=A0 We have lots of different caches
>> in
>> current platforms, and it's not really obvious to me from the
>> description here (or the bspec page) exactly which cache(s) are
>> involved
>> here.
>>=20
>> Is turning this on always a win or is it situational?=C2=A0 I.e., is the=
re
>> any potential for display memory traffic to fill a cache with FBC
>> data
>> by evicting data that was part of the CPU or GT's working set?=C2=A0 If
>> so,
>> that seems like it could potentially harm the performance of other
>> workloads running on the platform.
>>=20
>> Or is this whole thing about a completely new cache (unrelated to
>> and unusable by anything else) which is devoted solely to FBC?
>>=20
>> >=20
>> > Bspec: 74722
>>=20
>> You might want to add 68881 here since it has a bit more information
>> about how we're actually supposed to set the fields documented on
>> 74722.
>
>Okay I will include that. I guess, the HAS also talks about "system
>cache" - no further explanation. But only a fixed portion is allocated
>specifically for the display use and is "configurable". Motivation is
>to reduce to memory subsystem power especially in idle scenarios.
>
>>=20
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 47
>> > +++++++++++++++++++++++++++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc_regs.h |=C2=A0 9 +++++
>> > =C2=A02 files changed, 56 insertions(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > index 24b72951ea3c..e2e55c58ddbc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -127,6 +127,9 @@ struct intel_fbc {
>> > =C2=A0         */
>> > =C2=A0        struct intel_fbc_state state;
>> > =C2=A0        const char *no_fbc_reason;
>> > +
>> > +        /* Only one of FBC instances can use the system cache */
>> > +        bool own_sys_cache;
>> > =C2=A0};
>> > =C2=A0
>> > =C2=A0static char fbc_name(enum intel_fbc_id fbc_id)
>> > @@ -569,12 +572,51 @@ static bool ilk_fbc_is_compressing(struct
>> > intel_fbc *fbc)
>> > =C2=A0        return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc-
>> > >id)) & DPFC_COMP_SEG_MASK;
>> > =C2=A0}
>> > =C2=A0
>> > +static void nvl_fbc_program_system_cache(struct intel_fbc *fbc,
>> > bool enable)
>> > +{
>> > +        struct intel_display *display =3D fbc->display;
>> > +        u32 cfb_offset, usage;
>> > +
>> > +        lockdep_assert_held(&fbc->lock);
>> > +
>> > +        usage =3D intel_de_read(display,
>> > NVL_FBC_SYS_CACHE_USAGE_CFG);
>> > +
>> > +        /* System cache already being used by another pipe */
>> > +        if (enable && (usage & FBC_SYS_CACHE_TAG_USE_RES_SPACE))
>> > +                return;
>>=20
>> Rather than relying on the current register contents, should we be
>> sanitizing this on driver probe (in case the pre-OS firmware already
>> set
>> this up) and then making our own decisions (as part of an atomic
>> transaction) about which pipe to prioritize after that?
>
>
>>=20
>> > +
>> > +        /* Only the fbc instance which owns system cache can
>> > disable it */
>> > +        if (!enable && !fbc->own_sys_cache)
>> > +                return;
>> > +
>> > +        /*
>> > +         * Not programming the cache limit and cache reading
>> > enable bits explicitly
>> > +         * here. The default values should take care of those and
>> > that could leave
>> > +         * adjustments of those bits to the system hw policy
>> > +         *
>> > +         * TODO: check if we need to explicitly program these?
>>=20
>> There's no hardware default documented for the range field, so unless
>> the pre-OS firmware sets it up (which we probably shouldn't rely on),
>> I'd expect this to be 0; I don't think that's what we want.
>
>The Bspec says it is 2MB. But according to the HAS it is "configurable"
>and I clarified that this is at the moment 2MB but can change. So I
>read it as something already configured and set as the default value to
>the register and it could be changed by the soc policy. Thats the
>reason I thought it be kept untouched. Will forward on email
>conversation I had.
>
>
>>=20
>> > +         */
>> > +        cfb_offset =3D enable ? i915_gem_stolen_node_offset(fbc-
>> > >compressed_fb) : 0;
>> > +        usage |=3D FBC_SYS_CACHE_START_BASE(cfb_offset);
>>=20
>> And if something *did* set this up already, then OR'ing a new address
>> over the old one isn't going to work.=C2=A0 We'd need "(old & ~mask) |
>> new"
>> to ensure we don't have leftover bits still set by accident.=C2=A0 But i=
t
>> would probably be better to just avoid RMW-style handling in general
>> and
>> build a complete register value with exactly what we want rather than
>> trying to modify the pre-existing value.
>>=20
>> > +        usage |=3D enable ? FBC_SYS_CACHE_TAG_USE_RES_SPACE :
>> > FBC_SYS_CACHE_TAG_DONT_CACHE;
>> > +
>> > +        intel_de_write(display, NVL_FBC_SYS_CACHE_USAGE_CFG,
>> > usage);
>> > +
>> > +        fbc->own_sys_cache =3D enable;
>
>Okay. Thanks. Will fix that!
>
>>=20
>> It feels like instead of having this as a boolean flag in fbc, this
>> should be a pointer/ID tracked at the intel_display level.=C2=A0 E.g.,
>>=20
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display->sys_cache_fbc =3D fb=
c;
>>=20
>> or possibly converted over to something tracked with atomic state so
>> that we can make better high-level decisions about which FBC we want
>> to
>> enable this on as various displays get enabled/disabled.
>
>Okay. Will check this and get rid of the bool from the intel_fbc
>structure! At the moment we can allocate only based on the firt pipe
>enabling the fbc. But may be in future we could have some logic for
>this I guess.


Vinod, based on your replies here, I'm assuming you are going to send an
updated version of this patch.  I'll drop it in the v4 of this series.

--
Gustavo Sousa

>
>> Matt
>>=20
>> > +
>> > +        drm_dbg_kms(display->drm, "System caching for FBC[%d]
>> > %s\n",
>> > +                =C2=A0=C2=A0=C2=A0 fbc->id, enable ? "configured" : "=
cleared");
>> > +}
>> > +
>> > =C2=A0static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>> > =C2=A0{
>> > =C2=A0        struct intel_display *display =3D fbc->display;
>> > =C2=A0
>> > =C2=A0        intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
>> > =C2=A0                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i915_gem_st=
olen_node_offset(fbc-
>> > >compressed_fb));
>> > +
>> > +        if (DISPLAY_VER(display) >=3D 35)
>> > +                nvl_fbc_program_system_cache(fbc, true);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static const struct intel_fbc_funcs ilk_fbc_funcs =3D {
>> > @@ -952,6 +994,8 @@ static void
>> > intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > =C2=A0
>> > =C2=A0static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>> > =C2=A0{
>> > +        struct intel_display *display =3D fbc->display;
>> > +
>> > =C2=A0        if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>> > =C2=A0                return;
>> > =C2=A0
>> > @@ -959,6 +1003,9 @@ static void __intel_fbc_cleanup_cfb(struct
>> > intel_fbc *fbc)
>> > =C2=A0                i915_gem_stolen_remove_node(fbc->compressed_llb)=
;
>> > =C2=A0        if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
>> > =C2=A0                i915_gem_stolen_remove_node(fbc->compressed_fb);
>> > +
>> > +        if (DISPLAY_VER(display) >=3D 35)
>> > +                nvl_fbc_program_system_cache(fbc, false);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0void intel_fbc_cleanup(struct intel_display *display)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > index 77d8321c4fb3..592cd2384255 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > @@ -128,4 +128,13 @@
>> > =C2=A0#define=C2=A0=C2=A0 FBC_REND_NUKE                        REG_BIT=
(2)
>> > =C2=A0#define=C2=A0=C2=A0 FBC_REND_CACHE_CLEAN                REG_BIT(=
1)
>> > =C2=A0
>> > +#define NVL_FBC_SYS_CACHE_USAGE_CFG=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _MMIO(0x1344E0)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_START_BASE_MASK=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(31,
>> > 16)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_START_BASE(base)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_MASK, (base))
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(15, 4)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE(range)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MASK, (range))
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK=
(3, 2)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_DONT_CACHE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_USE_RES_SPACE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 3)
>> > +
>> > =C2=A0#endif /* __INTEL_FBC_REGS__ */
>> >=20
>> > --=20
>> > 2.51.0
>> >=20
>>=20
>
