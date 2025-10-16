Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D86BE4A20
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 18:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C714410EA4E;
	Thu, 16 Oct 2025 16:39:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hmz7Ttjh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F0B10EA4D;
 Thu, 16 Oct 2025 16:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760632789; x=1792168789;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=htuVr6BgGjcXxGuAJdEIp/lbmgFA6MMDjZpO07LHG9M=;
 b=hmz7Ttjh8683BJmMzsBvfGtswICAw4bJuFM9roLLbNqSwpRCFPBP56ls
 oDj+LieVDPBTIFc4qI8dYqusY6TNwKkYlXhtf71CEds98dZbMSmvyBqdV
 zpF7oCM8Ppuhlc9oFEQu2TRBjuHuufvwgYKFfPkieHoC8iwqzP+VJ7jLo
 kOu66xBvEFxbtQylaHGMzSURE7NYTkJ4OOZoQmZAkZI52MF4gC6dzfKyu
 fXan/W2W+zzYnD/Ylt683yfE7TqXXGv2BaGaslxCEbPCFtvJ+gVxwT+h7
 Ow6ZEyCQCV7xz8eq3cQYgNHlb/rQU5bsAiRcbKUNixEFYeG0jcrWEyX3c Q==;
X-CSE-ConnectionGUID: E6LZJX++QlWsuU8LzhTZ2g==
X-CSE-MsgGUID: XE/qoo5+Qkm9aIcyuKt6Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="80470146"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="80470146"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:39:49 -0700
X-CSE-ConnectionGUID: 65KB403TRf6bCrriyQNdig==
X-CSE-MsgGUID: esM7otDCSGaoduhv8uKXXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182432235"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 09:39:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:39:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 09:39:48 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 09:39:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6eaTS1ltd/EDLXGhEOdttahvccSGy3yC9pNQNdIeNu17GBKciR38S0RVS4kG54g9csbJb81yxLV3gVERJigchZ1rvLhnnwYw2Tz06WcNSBWEGgt5nFVB8rn49mutjyQ6aQF+Xy6Z6rz0zzLb2bck2amZzt6448HKtnDIZeHSXZPZPbYHvYCSN0tW+Pk9+Mn/rH4rC6w+BdZakbl4i6Z/Zw1nStCsvTin1UPKQfukz15nmK5hGBGaSmWRoX06cGypvJuk2MDjWzI2F6LWwEW4M6lQdluIdz2Eqj5joIsL0Osuc8TuG/qR7QjHMAjchaD0hoHo9g5R7LXoU86xE/0GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=htuVr6BgGjcXxGuAJdEIp/lbmgFA6MMDjZpO07LHG9M=;
 b=PIGokJHcuFOqm/SpGFGHCz04jL7x5rB/oahdjiy5LdrHuC+peHcJFZiJkua1gUqelfOHgJM/SkmI3TRDx+ryqLI3XmSL9J8pvZmDci0SMcd+QEyr9GIhkWXAc/EcrDewh4pNl2gnqsmuJAD/iUrpYwbaVEPqwdcu018w3IaJg2YIzSJTCUpStD5aykS+5Mq7jxzQ4kzHxOh34bZmV7mAV27s65SQ/jUizeFvvGi688Xci2pTiVop/FMrNQ8TRHd88KK6towhSteEuBFF9I8+WLLmmPGhCJnDHFGBpntwKoNcfRHgnYME4Dx6GTxAUZ926b5L6yz1HKsG3uryyb6TFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7057.namprd11.prod.outlook.com (2603:10b6:930:53::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.10; Thu, 16 Oct 2025 16:39:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 16:39:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2 1/7] drm/i915/dsc: Add helper to enable the DSC
 configuration for a CRTC
Thread-Topic: [PATCH v2 1/7] drm/i915/dsc: Add helper to enable the DSC
 configuration for a CRTC
Thread-Index: AQHcPe+gHZ/Pyb9eyUmkxNiqQ2tyWbTE+xIA
Date: Thu, 16 Oct 2025 16:39:43 +0000
Message-ID: <5967dc926192967e33262a2d03c85d0a79c81e24.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-2-imre.deak@intel.com>
In-Reply-To: <20251015161934.262108-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7057:EE_
x-ms-office365-filtering-correlation-id: 1de65fba-4b0b-4177-b9c9-08de0cd29c5f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cTdKSTM3WE13LzRFQ0haZFBSWE52NTVFb3dOaVRBdXhlMW1SbkVLeVFPRk44?=
 =?utf-8?B?M0pSS25LQ3M4YmFqQWNkN3NhRXNPYTZsZ21SODdOS2p0NXUrRk82REs0eDRv?=
 =?utf-8?B?clJCbzl5ZTFlUFoyRWhRY1BNMFFmZ0x6cGhXTHRmVEU2WDdXVVNNdk5YZ2xC?=
 =?utf-8?B?R09PdGtUaWx3UUZUTFExMktwVTJBWTNtRytkcGpsWFVFM1RRT09PQ2xZUzIr?=
 =?utf-8?B?bk03Q1dTRmN0cWxjazlDRDZDYWRaTXZ6TjJWdHg1K3VKNjB2OThqbFpSTTB1?=
 =?utf-8?B?VGtoZkNjTzZvUEoreXNxbGIzWmFuamVQaUJIRHBXcE00dTBTV3VJY3h4cENQ?=
 =?utf-8?B?SzFCWjBPc3hhdjFzbHkzNG14clllM0srbFB2RnZxWGFyY0NBcUF2SkNxSFJY?=
 =?utf-8?B?ZnNXWHRTYyt0Z2h1bEowMmEzVzcyOXQ5Y0J1bGpQZEs1WWFBeEY5b1lDQmNq?=
 =?utf-8?B?aVhLdHNSYWFvcDJlZlFvUDZRT29SdWh2VHhqYk1UWk90S3VpeFN3bmpaQVM5?=
 =?utf-8?B?WU5oMVBBZFNGVmV1R0d3UTEwbWdPYUs0eWh5RkFVb1UwdXpWK2sxb2Z3MVM5?=
 =?utf-8?B?RXhFY1hqdWhNK3dyVHErV2I5ZlJod2c2RTczQ3JySXBTdkRmUGhzeHg3UEdU?=
 =?utf-8?B?aWJNMytNbFphSTkzSUFwM3YyYXRMcHhTNTN5cVhLSU9mUXRmL2h1Q3hQRVQz?=
 =?utf-8?B?aXNPZ0F6WnlJVXJiNERMc2RUZjMxRmF3dloraElMTEVqS3JCSm5NTGprSmFh?=
 =?utf-8?B?UCsvUTJpYVFLTnhFbFR1Rm11QWFmQTkycXZ2ckQ2NmMzdmFBMzRDRHVzbWFS?=
 =?utf-8?B?K1VObUZMTCtCWlhvTGxrVlNvWGJoYWUwRHdNcU5oN3JJTmhwYnBxRUJVVUY5?=
 =?utf-8?B?aUZ2Z1NyVHExRGwwQTZQbFdmd0V0QWpxckNlSkJNZ296QjZZSXg4MHQrcGM3?=
 =?utf-8?B?MDhLeEMzdlU5c1ZQN0Y5NHlYWUJGMW50QmZSS2hSMVZJZXQwYnc4S2NmcFlv?=
 =?utf-8?B?VWZDTENTNEdPMmRXem5sLzgrRVVqQWwybnpXVlZjSkVWcm5saU1RYXgzb2ZU?=
 =?utf-8?B?elJDWGdkd0ZCaDlYZ3VaZ0I5NjR5TTkyaUJZaFozOGI5OTVsN01zOHRzeFEy?=
 =?utf-8?B?K1ZzbVpFOW82bjZObjZCR2REVkJ2OG1HcWNicVh2RER5djhBM1lIamFVbDd5?=
 =?utf-8?B?eGovL0hjbUZwaURnUlhRUm5wYVdGcms5OEQrNGp6NEN2U2V5eGRXS25iNmtz?=
 =?utf-8?B?Z2ZhbEdNbTVma2U2L1ArdXRldUlDSU9RUlNsSThrRllMV3ByTkJNcDhGcENh?=
 =?utf-8?B?VjRUQm5hdG1nS2kxK01FcENhNW5NK00vampmWWFMQTFFYkZTTzVlNHRtTUtx?=
 =?utf-8?B?WnVhODgrR01icU0vOWJBM0gxaUYzTWc4SjIxNTlrWW9mNmZwaTJ6Y3FpcVlD?=
 =?utf-8?B?S1ZoZm1MdE9zZkVYUmxpeGg1emh5dXlWYTYrWGxRb1BRTTVRYWxiYnQwdmhr?=
 =?utf-8?B?aUk3MmFVZmIwNU1BWGdBQU9vS0hkRDBRd00vditNOWFLNTJGQUwyTWphVERI?=
 =?utf-8?B?cW5JaVcvb3dLZU05YWhUQ2hNK3JrNVI5V1BNMHl2SU1qMVoxVkxOU1VySGxy?=
 =?utf-8?B?TzNEelRndERtWlJWK3Rhd3VSNTlxL3NaeWhqYzdQekJNVlRycURuTm9oRmRh?=
 =?utf-8?B?LzZ1NVN6ajVTUXZsbFV5cVYwbC9HNk4xZzVKM2tPMkMyenhoS3laVkRSZHQ0?=
 =?utf-8?B?M2JtNUlhSjNxNmdpWDZKNGc0Mk0rcEZ4czVBL2lHS1RQQURCdzA2dEVBa3dM?=
 =?utf-8?B?TXR5T2VMYVdNc0JNbVE4czRxaFEwcUNxeXZVTUo1UHFRWTNQejFsWTlpclA1?=
 =?utf-8?B?SmFIV2hnTVpjeHE3VUl5cGhVRmxtc3ZXMFBzYzRZbE5BbUlTck5SbitKOVVp?=
 =?utf-8?B?RUk2TUFZVE5MT1B3SzhPakNqbHYvRHpIZUQvOC8xTXpDYmtzVk9BS2dhMlpS?=
 =?utf-8?B?ZTFRNHBMUzRTb1dWVlg4cHRUa1VJTWdsankvcGdBWDI1VUMyeXZFZ0V5dDcr?=
 =?utf-8?Q?p3ce7h?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2NEbnlMTjRGSUpsWXdEV0dVWEhuS2l3QVJRb0dSOWltNDlGVS83ajAzSy94?=
 =?utf-8?B?ZnRqMmdGSFlVb2tSbGhMMlEzUndsWEpHRkxKT05rUG8yMGNaR01jM09oclU1?=
 =?utf-8?B?NU5Wc3NiZWlKcGl5NXp2N3FBaG9rRVE2Q1c0amhveUVZUnRlRXZxRXFoc09P?=
 =?utf-8?B?Z1gvd2Qzb1RyQjE0Mnp5MkVRQjN4aElWQnB5QXJKL0lTRHNzeUtEQlFHc2k3?=
 =?utf-8?B?R2w5RFJkc3NrQjFrU001N3dOZi82N3NoRjhyWUNkR3BIU0Myb3ZFa1BkVkNp?=
 =?utf-8?B?aDhPNTYwRFJxRG5ZdTdJc3Vjckp2OHRnU3dXbVFvWjdZOWladHp6R2g1Mnhl?=
 =?utf-8?B?STV1SzdGOVlYbXZ2TGJUdXNmblRpV3lKWmh4YjV1RkJETWZWQWx1V2pNVDQ3?=
 =?utf-8?B?Y2hNZkJoR1J1NEFrOE1qbStQTUJkOXQ0dk1lU2xmSEJsSTJ2c0haSHZYN3A2?=
 =?utf-8?B?T0RsOU4yZTlxMnBuRlBQWDRxcVZOemQ1dnBkeDR5YlZ3eHNDaUkyZ3Q0OUhm?=
 =?utf-8?B?N2hwVXRWOHNSbDFCME80dXJmSHdUaFZxOHgydDZ6K3hhWEVGeldoOWYrWUM5?=
 =?utf-8?B?cHM5Z01BbkxnSXZWUlBRd2tVMUF2cDBJQnkwaHlMcmEyT2tZNGJNck1ZVUdE?=
 =?utf-8?B?K1pMSXE1UlduVnNpa3RXcWI1WUNvZWNWVTlqVlNWRHROb3RJTkhaV2Zpa2RQ?=
 =?utf-8?B?MFJXdVRVUjRlclFCcXhVMFJwMW1oUVorZWtKV21PaHVMb0RjeVRIOHUyM3lm?=
 =?utf-8?B?UkNYTVB6MXZscXF5cFBlNXFyakd6TjdOT2VQYVIvM0VQY0U0ZFMzOTBvTHk3?=
 =?utf-8?B?a3VRMU15ai96WlhoVkRMc0Y4SDFGbnZoOUJxa1h2Z1FxMHJLNW9KYTBZa2ps?=
 =?utf-8?B?MTJCTHhSL1VIQzBjSFhwNWh2c0tES1JnTTFVUnREenU1bytDR2ljVUJGZWlT?=
 =?utf-8?B?dUZqNzNYd3VEVTMvM0kwVGJZQmhRZjFjNXorajl1V1RzeXdiT1B1QWtvVXQ4?=
 =?utf-8?B?ZHJyUC9mUXF5RlgxM1N4cHFSTHhoNXFsa3lWOE41aDA4RzdWV2h1SS9tUHJP?=
 =?utf-8?B?bnN4cWpGNThMaDgrQytCZmpSV3ByRGlLQU9DdklCZlJUbUdRTkgzTnZTekhN?=
 =?utf-8?B?eTRFS0ZuLy90bDUvN1hPbjdNMDNSMUttNDZHcTBaeGdSNHRNVkJWR2FRbTVL?=
 =?utf-8?B?T0x1QVlkTjgxSTRWVGFMNDN2ZFpKZHJPOURZWHZQMVJpS0VUcmpUZXZMK2Zo?=
 =?utf-8?B?Nmp5VGdTcTlha0l6WXpVbURKYW5NL09jL01FRXRnMnV5VHAxeDVFdUFkYisv?=
 =?utf-8?B?L2ZNaWtYaEhiSEZKb1JFQ3lma1gwc3NVQStYbGpNZk1yaGJQaFRSNWRqNjgx?=
 =?utf-8?B?T1BYaVF3YXcxNW5YVHJPb0M4ZGdvbVdzS1VNSWdYL0pOQUhDajhWdnN6Q3o2?=
 =?utf-8?B?dlR2bzVUbDczbU1nYkxIQi9kQU5Cd3VoSU5JVStQTCtoTldaRDRlOHlKWTZF?=
 =?utf-8?B?TXJkOStRT3pZN0FPQUI3Y0FoelZuZk1laUdmMEh2a1U1RjlXWHFyaUtYNmhP?=
 =?utf-8?B?L0tKSVRDNlVGUUZsaDJKL0s2Q09UbGRoMFJlVk1ZNzgvclQ1TWJmdEMwYzQz?=
 =?utf-8?B?Y1JrVTRwR3RGVlJucTdYOUJOUmNSNkdxM3Y3ci9NU09tUy9lM2t3akE5U0ln?=
 =?utf-8?B?VUFZNVJLMitaZ2l3Wm0zS2xSUW82czVxY281TDRoQU5YMkZIV2RuQllhNmw5?=
 =?utf-8?B?ZXkrY0Y4RUtMY24vV1RCd3pjZ3lRZmtLUjc2aVFjU2pXTkV2TGJOS0lNWURq?=
 =?utf-8?B?K2xGVjZ3M0dMVk4vdlBTaWZUcjdhdlpkdW1rTzIyN1lCTWoySGQ4ME10WUFO?=
 =?utf-8?B?dE95VzFHcXU5STVaVTlWVXRCWlFQUVU4MUNtZ241RSt6bC90a2ROSzBkaTcx?=
 =?utf-8?B?aHpVZXUrSEpmTGdVL0NuVHhob0tGemFvdVF5ZnB3dlNqaDZrSFdUTElhdDVD?=
 =?utf-8?B?QWUrQm8wZUlNT1BvV2N4ME5LVU9odERzWjk4SEdramZZbWw3N0tWZ1FqOEdn?=
 =?utf-8?B?OEJCRVNhbUxObHNUQndmSUFtVjg0a3V0STlSNDVNcWcxQ2dnaXBCdmxWbnVy?=
 =?utf-8?B?eXEwY29mY3Q5OGVpRmJQMUZxM1g4RmxOQVJ2b3FBZzlJVEg0V2Vqc1lPRXU3?=
 =?utf-8?B?SFhPN0V1N280cHcrYmdXU0ViUFZrYU9SNlZNcHhOLzRwRXE2UXZqVzFVMnYx?=
 =?utf-8?B?NDVPbUJWdGw4aXlnVTRZUWdqYmZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A0D2B66949303B4DA9015AA378C94153@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1de65fba-4b0b-4177-b9c9-08de0cd29c5f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 16:39:43.9159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UVq6cv6N56biTAYLvIPyrXGTtO5zAwoUJ/l/2dlZdpIEgaX/rJ1m1bbnKUHVg8yOdXaWly+x3uQTS/VjS/RBZRBnYSy9Y57ex9tYpJb8qkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7057
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE5OjE5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBhIGhlbHBlciB0byBlbmFibGUgdGhlIERTQyBjb21wcmVzc2lvbiBjb25maWd1cmF0aW9uIGZv
ciBhIENSVEMuDQo+IEZvbGxvdy11cCBjaGFuZ2VzIHdpbGwgaW50cm9kdWNlIHRyYWNraW5nIGZv
ciB0aGUgc2FtZSBEU0Mgc3RhdGUgb24NCj4gdGhlDQo+IHdob2xlIGxpbmssIHdoaWNoIHdpbGwg
bmVlZCB0byBiZSBzZXQgd2hlbmV2ZXIgRFNDIGlzIGVuYWJsZWQgZm9yIHRoZQ0KPiBDUlRDLiBB
bHNvLCBhY2NvcmRpbmcgdG8gdGhlIGFib3ZlLCB3aGVuIHF1ZXJ5aW5nIHRoZSBEU0Mgc3RhdGUg
b24NCj4gdGhlDQo+IGxpbmssIGJvdGggdGhlIENSVEMncyBhbmQgdGhlIGxpbmsncyBEU0Mgc3Rh
dGUgbXVzdCBiZSBjb25zaWRlcmVkLg0KPiANCj4gU2V0dGluZyB0aGUgRFNDIGNvbmZpZ3VyYXRp
b24gZm9yIGEgQ1JUQyBhbmQgcXVlcnlpbmcgdGhlIERTQw0KPiBjb25maWd1cmF0aW9uIGZvciB0
aGUgbGluayAoYWRkZWQgYnkgZm9sbG93LXVwIGNoYW5nZXMpIGlzIGJldHRlcg0KPiBkb25lDQo+
IHZpYSBoZWxwZXIgZnVuY3Rpb25zIGJhc2VkIG9uIHRoZSBhYm92ZSwgcHJlcGFyZSBmb3IgdGhh
dCBoZXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5j
wqDCoMKgIHwgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Y8KgwqAgfCAzICsrLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5jIHwgNSArKysrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRz
Yy5oIHwgMSArDQo+IMKgNCBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
Y2xfZHNpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBp
bmRleCAzN2ZhYThmMTlmNmU0Li4yOTczNjhmZjQyYTVlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBAQCAtMTY1NSw3ICsxNjU1LDcgQEAgc3RhdGljIGlu
dCBnZW4xMV9kc2lfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLA0KPiDCoAlpZiAocmV0KQ0KPiDCoAkJcmV0dXJuIHJldDsNCj4gwqANCj4gLQljcnRj
X3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlID0gdHJ1ZTsNCj4gKwlpbnRlbF9kc2NfZW5h
YmxlX29uX2NydGMoY3J0Y19zdGF0ZSk7DQo+IMKgDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCBhNzIzZTg0
NjMyMWZkLi4xZDNjYTE5NzBmMjVmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+IEBAIC0yNDc1LDcgKzI0NzUsOCBAQCBpbnQgaW50ZWxfZHBfZHNjX2Nv
bXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgCQlyZXR1cm4g
cmV0Ow0KPiDCoAl9DQo+IMKgDQo+IC0JcGlwZV9jb25maWctPmRzYy5jb21wcmVzc2lvbl9lbmFi
bGUgPSB0cnVlOw0KPiArCWludGVsX2RzY19lbmFibGVfb25fY3J0YyhwaXBlX2NvbmZpZyk7DQo+
ICsNCj4gwqAJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiRFAgRFNDIGNvbXB1dGVkIHdpdGgg
SW5wdXQgQnBwID0NCj4gJWQgIg0KPiDCoAkJwqDCoMKgICJDb21wcmVzc2VkIEJwcCA9ICIgRlhQ
X1E0X0ZNVCAiIFNsaWNlIENvdW50ID0NCj4gJWRcbiIsDQo+IMKgCQnCoMKgwqAgcGlwZV9jb25m
aWctPnBpcGVfYnBwLA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92ZHNjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zk
c2MuYw0KPiBpbmRleCA4ZTc5OWUyMjVhZjE3Li42NGExZTlmMGExODkzIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBAQCAtMzcyLDYgKzM3Miwx
MSBAQCBpbnQgaW50ZWxfZHNjX2NvbXB1dGVfcGFyYW1zKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZykNCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0KPiDCoA0KPiArdm9pZCBp
bnRlbF9kc2NfZW5hYmxlX29uX2NydGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+ICt7DQo+ICsJY3J0Y19zdGF0ZS0+ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSA9IHRydWU7
DQo+ICt9DQo+ICsNCj4gwqBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+IMKgaW50
ZWxfZHNjX3Bvd2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgZW51bSB0cmFuc2Nv
ZGVyDQo+IGNwdV90cmFuc2NvZGVyKQ0KPiDCoHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4gaW5kZXggOWUyODEyZjk5ZGQ3NC4uMjQwYmVmODJkMzU3
NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNj
LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4g
QEAgLTIwLDYgKzIwLDcgQEAgdm9pZCBpbnRlbF91bmNvbXByZXNzZWRfam9pbmVyX2VuYWJsZShj
b25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqB2b2lkIGlu
dGVsX2RzY19lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Ow0KPiDCoHZvaWQgaW50ZWxfZHNjX2Rpc2FibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOw0KPiDCoGludCBpbnRlbF9kc2NfY29tcHV0ZV9wYXJhbXMoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKTsNCj4gK3ZvaWQgaW50ZWxfZHNjX2VuYWJs
ZV9vbl9jcnRjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gwqB2b2lk
IGludGVsX2RzY19nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsNCj4gwqBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+IMKgaW50ZWxfZHNjX3Bv
d2VyX2RvbWFpbihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgZW51bSB0cmFuc2NvZGVyDQo+IGNw
dV90cmFuc2NvZGVyKTsNCg0K
