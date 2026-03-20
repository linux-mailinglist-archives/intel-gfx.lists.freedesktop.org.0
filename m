Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHmSDNEyvWmI7QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 12:43:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D91A2D9BF1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 12:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764D910E1DD;
	Fri, 20 Mar 2026 11:43:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ElSuDEOZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3275010E1DD;
 Fri, 20 Mar 2026 11:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774006989; x=1805542989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZDLj/sSwMJdg5nJNcC0Idy9ctcrxG9xBL5HrB71rnUE=;
 b=ElSuDEOZR2mKsXsNtt7W+Vj76oNYqybSAHg9LQsNcW6BLm7cGEk7joLZ
 KHVGN1cy/NAKtDt7nweOvbNpnpj7zsoMIAtlWvKZV0L6G38QEqADHngVf
 oC6qI0YgXxOU86fcwTBtCZZDsze+Mig2cgnVz2P+Ua4BNae7o7zKxwLWn
 qtwCoHfriSD3Kp64Jcu/QKiCiU2Tt6hxfPmGCmeQePiiHkRG+pnZwPyiM
 2VKKcQVMFXkE51i5VKE7Rq5SFWVpTOgGZedMEVAjWbLYZRn2JSlhpKdOY
 u0rdya8KhDcUvTkAZ3otVGL8meK5cAPOf4U5sk9uq/YjLa7tUAgVjJMK5 g==;
X-CSE-ConnectionGUID: 4prLepY5Q2yk6HWbrrVJCA==
X-CSE-MsgGUID: 70gaATKNRZSUFQVu33M7BQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86452475"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="86452475"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 04:43:09 -0700
X-CSE-ConnectionGUID: ImE6TqMLRue6VmZlCtXISQ==
X-CSE-MsgGUID: eR0pUd9AQXOhNlIOdZNgdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227990978"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2026 04:43:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 04:43:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 20 Mar 2026 04:43:08 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 20 Mar 2026 04:43:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S7NoquK+GH8lswUDSxWJMzX86fYFIsXeWj4Pl5Y/nUT9MC1y1zd2FItIRaOFH3Z2j/whOeftv5t8vJM0hu1aqqr2lHR0tmWLGfYOq9xG3/LqWGPIG/KFmnlpuDLN5gCdbgzxJOJ+qJzQS89PsLR7WosheH+9nzYQKIRT18kydpK3guWSEqutC8am1jgz00ejR+PyIl4RdiLQT2CKzBobncMy8hLSHZz9uCT7RyMYNZqxkq13XXq5/jS8d2JrguYc/iXo7FCieeTJ3Z3P7eDCj6lzSgnT8mm2ji1valce4dsIPV0WElVGdJjD0rJ8aOTPcQVK6Dgr2ZerF6TPhwprhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZDLj/sSwMJdg5nJNcC0Idy9ctcrxG9xBL5HrB71rnUE=;
 b=V/yyD+QKNchJ2wQDINKI/PgAcKOG/FQkcA1UdbmAwjXhMuz26bY9/3rQ2xaupnlwFRkqfJZgMSsiS/Hv/tc+xhrL0WY3pUDJkRL+dh4+Kl7AMI7P3GiK7YJxQsExraBYG7nhtRbW7zNgIBTkaFuzTaICMhjusyPHJCNaJxaeeSAH0RLbp1gLbWXHvpy+fA10j5EIG18+vqFZOkZfw3kwCAGSiZC/NaEulWQSPvfDSJ7pDYL/2VYKYdKAOPzP8PceYB4UXODq7elaG0yMkFKNhV95ObVuyrB+CEoUrCOCahUNzbOTGWsKiqAlgtuD5dKMX3xL0LEI+WFY6fBlA9gM5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7762.namprd11.prod.outlook.com (2603:10b6:610:151::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Fri, 20 Mar
 2026 11:42:59 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9745.007; Fri, 20 Mar 2026
 11:42:58 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
Thread-Topic: [PATCH] drm/i915/dp_tunnel: Fix error handling when clearing
 stream BW in atomic state
Thread-Index: AQHcuEwCUjLU2tChGUCnKMCH7JQobLW3THTQ
Date: Fri, 20 Mar 2026 11:42:58 +0000
Message-ID: <DM4PR11MB63602830F5D63903389EF2DAF44CA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260320092900.13210-1-imre.deak@intel.com>
In-Reply-To: <20260320092900.13210-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7762:EE_
x-ms-office365-filtering-correlation-id: 39769e9b-d368-4bec-c4a0-08de8675d5ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|7053199007|38070700021|56012099003|22082099003;
x-microsoft-antispam-message-info: 6JxdGQau1Tzq2FVBEhU43opkqNY1HrXpvlEdbEEKeYB96kKDisIDXHHeNf6msSZKbPMUjg5quIHqbo+C2tgVUgLLN121/iBs4db/qy3vZRsaRsshjk+exMZZ4ElZ3P9gPx6RSvA23juigsD+UF5wT/UKvoXuLzfVo28awsm15Wa21O1HiXfWtUztSF1GoRxUwZif/E6mMrDP5xs41lImH6/bOoNG0v6yFV/zQFivGwqZx5S/FVcm+ophXC8r/QNNqlXVtve2BYltRMMa5dQhkVahcJut39hHe8JlHs6vzD+J+ARoVVAiNePQXfm4UUtO9jfSaJ/SoI+0mUU0G8kV+ZmxuB0+6Q0nJIVC57zqXEgFK/hULyf8EAYa7DxwKtsOXCNRuVyfedszQtXuKucMds2gBK+3p5/AcxiZx0mxqNbRGaDuzhw72/mkVvJoDf5OjdBHnKnQZcGaGKxP/cb4sW4iBnN11ma3456fPMi7WciGdm/GlpvQ3EWCPlr7o6wDqmEk92JSYTNbRG7Ktj8TFKMuOzJDqDzv+44ONpDAOUP8k0ikcnhBmeV1ZTIDsv9rPU0pdRl4eaziL91lg7DdTOTE0Zjneq8dzi6glOt8TL4JI3+UvxPNEJXlwr7F3CqwwUbE8m8oEh8bNyByUG67P5A0R6pWlSo+iw0zFQn+L7NpVyRVPyvUdX+/zob1qqSCBBO0T3MBckZjMKCdTa+JS9OU/eXf6T4U7WeVAp4rH/QcbHqq3gMkoIyEAvkWOuQ0ToW4sPxGG1mwe9fySw3knAAxAoC9U/DjH81j/EVGZtc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(7053199007)(38070700021)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clRCK1RzSURnU0t6dU9mMUE0bTc3M3VwWlAya2VCQXR2RU5pTWY4UlFWb2I3?=
 =?utf-8?B?TTdLdXFUVENpM3JxM2dFTkYrMmN3N0FGWFJiTUdza1hRUHVVZklvYUdVQnRG?=
 =?utf-8?B?RFBxMGZpcFRaRTVSSHFMbENJeUFJMjdxWFUwS25TN0FNdmxHdFoxcGdsS0ts?=
 =?utf-8?B?T2hRSVEvWnIwWkQ0Ry9USlRoc2R5NkVxZE5Md1FMWGg1VXdwNzB1aDNTbTd6?=
 =?utf-8?B?MktoZy9TQlNUalFER2Y0MDdFT2R6V1ovbldEcGFxUVdpV0xBdUNhelNCYzJZ?=
 =?utf-8?B?aFYrRmtxR2dZTWEzTDBEWjA2RE5UNjQycWdQSmx5b0VmS3AxUlpBZFVjOG92?=
 =?utf-8?B?eHhtNm1pSHV0OVZyeXNrS1k4Rjg0SXJnL3BKUWhZU0x6VDJEOWZLSzROT1BK?=
 =?utf-8?B?T0wvazU5QUlHbUl1aFgxZWdUOU5tbWVzM3JVQmlDc2hBdHdVckJ3Uisva1VT?=
 =?utf-8?B?YUtrT01HWEhuMkZhNnFxSURlRVBaNWRMVkdFUUtsZnlnNkJ3eUJNQXBMejl0?=
 =?utf-8?B?dzVENU9rRG4rakVRaDlvenJUanhqNDNvNmRyUE55RXlSMlhBenNRdDM5RVFF?=
 =?utf-8?B?ckg2V0dnbTNIK1FrOUU2V2lsbWpXNlQvRGFNcHFCRUxIcDVoeERXV3FmMlJm?=
 =?utf-8?B?RVA5UXJZSlpuVEpCdFRlVk5odS9kQmt1RVZrZGU3eVNPRk9rdGY1YVhYcitn?=
 =?utf-8?B?RHhnUVBWZWhvOWUyU1YySGloakNweXlQd3JLMitSMlpnMEE4WHpoRElYRERq?=
 =?utf-8?B?b3dVMSt3ZjNHN1V6TFBZUk1DYzROM0pOcHpXVHVqRXFINC9mdWh6Vkt2NkRX?=
 =?utf-8?B?UHc5aG1SRGZhdGluNVByMU9mZmdMMGgybkhqNTFDQjVITFhBOVNBMXh2eldo?=
 =?utf-8?B?b2kwRGdIMmtOeExRb2J5TmNhWFZmYUsxRkN6M3pkczhWc2dleXR4MGJka1Rt?=
 =?utf-8?B?cHl6ZmVQd2p6STE3SDA3U2tSVjlUYnY2RVRmWmwxVENnTTFQZ1dicDJEY0E4?=
 =?utf-8?B?VGxmUTBaaXBQV281U1p6OTRUR214WHlNNWdoVWF4eEMyaE5JaXZXTG1EL1Jj?=
 =?utf-8?B?eXloWkk3ZWFrTjdWdzlQeUM5b25hdzd5Qk1jNk9rZndzTjJCb1VmMEJNQmR3?=
 =?utf-8?B?aDBEdVlkYTRvOXZ5b2JpVTV1QXZORUdXbFluZHp2NjkyYk9zbURpOTgxcHds?=
 =?utf-8?B?SXVFclNBakRuYWpSdklrM3hvN3AwWlpBcnJnMjdyY2JacEEvM1lyTWt1M2cy?=
 =?utf-8?B?Tng1SWh5L3dQRGlXUnJZdHp1aDhQc1ZaWGVpTWtrekR4N0YrUkJVWWJhamo3?=
 =?utf-8?B?NnRmWGQ2MjdnK0JyUjdMdmgyNHFMMGRmSTAwdzAwUEN2YWZ5bDRudWZrQmZ0?=
 =?utf-8?B?amgyTTk1K3l4Z3JZTFA1V1RYRDFKN1ZkZUhNMU1GcVlld0lnOWV1ZXhpQ3Ew?=
 =?utf-8?B?MnNCQnhoYko3TVZrOW0yUlpMbUpPcDdVY2NISWdNYWQ2a3JTeWJYdWtMV25N?=
 =?utf-8?B?REMzSzZHemJOYkpZUVN4OVdJclVUY1pBcit4MUMrWUZqenBoaXYxN2E1NXF6?=
 =?utf-8?B?VmhNeTVYUHRaMkNjYTVGUy9KZjBLT3NFN1pkd0d4UDZxR0I2V1Ntc2ZGNWtv?=
 =?utf-8?B?SEx4NXZ1a0hBVUs0K0xrTHZnbXArNFZPNGZvb0NTR2xNamtnQlJyVThDeGUw?=
 =?utf-8?B?WWgxdzlEQ3NsSVdTMjlwWHl6R0lkVGFucFA2b3lEbFNxMHhHVERFWDZrUXBp?=
 =?utf-8?B?TGZrTWF5VnFDb001Znl6MW9GK1FDU1RiUVZGZ3ZxdGZJYkhjcFNmSEJEeGVR?=
 =?utf-8?B?RStiSDNVcEc1ZlpHZHFCOVMySUEycjlVaDlWeTdqVkw3Qm83V0ZmNzlDbENt?=
 =?utf-8?B?UTZucVEvVSs2UkRBVk14VFdMbnp0T2w3T3dsanVTbEVwaHFCSEhLMFp1cEk5?=
 =?utf-8?B?S3JGNks2U3lMd0dIVHhqcGJaZWFNYklCSFNJa3RRVXc0RkJ2empxanFiRTd6?=
 =?utf-8?B?SnlGelQ1b0NNc1VQU0h1ZmR1UmtmZ3c0T1dyQXRpRlQ0VFdhMzVpckFFRW5j?=
 =?utf-8?B?Z0JHdVZ2bFF5aEViRGd2c3ZNb1RNTHBXUXlUakVodDFJTjBFdkNUU0JibWR4?=
 =?utf-8?B?czRUN2YyYzlPQk5QMzRWZ1dkeGNVU1NVZzloeG1xY3NMc0xDekRUV0cyTWdi?=
 =?utf-8?B?QUNNYnhVdkxXSEdkeEswbVB2d0dUQWNjd3BjaERWZW5oOG9aYUxFeEZOWTI5?=
 =?utf-8?B?UWNrV0V5T2toTzZZZWZDaVhGRHVQdWsrRFd3VnhJSTA5WUpDZk1VR3JLdzBM?=
 =?utf-8?B?UlI4elI4dlR2MWdKTFJWVXdqdVhlTVJLRVZqZks1cC9VNGEvK0JCdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HBeNFmUsnEenVXsSnVeIBikhdTrv5Wg0nNuTnx/UUI8vC4g11QOJYcVDKVmJIi1MQR3Pn9U912Xk6xpkmmwsyDWELkh1jFMcegLRyD1OBwiLzk/nqxHxNMjjDPvXmZLExjWgnK4w0+3satoroVKV2WatkIddIfsVUrLihAv8bzTiPLW2vVIvU/zoUFg3n+bwFIqALSKMcv7YSVZG6TGZxsjz2Y8dkcogVLg+GlwD5/RoQHdq3dDQyhoArveYSzwTnjQ4d+GOWris2VSaU8I43aTtqPXUxRrxX1Y8LEkAfgqlroSZc8MF3peyxWE79nIw9bvmkwf51vlREJ0g1riR6Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39769e9b-d368-4bec-c4a0-08de8675d5ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2026 11:42:58.7915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qESyYSB1S/3vaCCAA33mutNkMNeabLSku1+jWc0xrMSDKyC3jBgnjllSpv1dVigVjelPMHNXmcSX0ugGGxiOSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7762
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
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8D91A2D9BF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGVhaywgSW1yZSA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyMCwgMjAyNiAyOjU5IFBN
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
PjsgVmlsbGUgU3lyasOkbMOkDQo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IHN0
YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kcF90dW5u
ZWw6IEZpeCBlcnJvciBoYW5kbGluZyB3aGVuIGNsZWFyaW5nIHN0cmVhbSBCVw0KPiBpbiBhdG9t
aWMgc3RhdGUNCj4gDQo+IENsZWFyaW5nIHRoZSBEUCB0dW5uZWwgc3RyZWFtIEJXIGluIHRoZSBh
dG9taWMgc3RhdGUgaW52b2x2ZXMgZ2V0dGluZyB0aGUgdHVubmVsDQo+IGdyb3VwIHN0YXRlLCB3
aGljaCBjYW4gZmFpbC4gSGFuZGxlIHRoZSBlcnJvciBhY2NvcmRpbmdseS4NCj4gDQo+IFRoaXMg
Zml4ZXMgYXQgbGVhc3Qgb25lIGlzc3VlIHdoZXJlIGRybV9kcF90dW5uZWxfYXRvbWljX3NldF9z
dHJlYW1fYncoKQ0KPiBmYWlsZWQgdG8gZ2V0IHRoZSB0dW5uZWwgZ3JvdXAgc3RhdGUgcmV0dXJu
aW5nIC1FREVBRExLLCB3aGljaCB3YXNuJ3QgaGFuZGxlZC4NCj4gVGhpcyBsZWFkIHRvIHRoZSBj
dHgtPmNvbnRlbmRlZCB3YXJuIGxhdGVyIGluIG1vZGVzZXRfbG9jaygpIHdoaWxlIHRha2luZyBh
IFdXDQo+IG11dGV4IGZvciBhbm90aGVyIG9iamVjdCBpbiB0aGUgc2FtZSBhdG9taWMgc3RhdGUs
IGFuZCB0aHVzIHdpdGhpbiB0aGUgc2FtZQ0KPiBhbHJlYWR5IGNvbnRlbmRlZCBXVyBjb250ZXh0
Lg0KPiANCj4gTW92aW5nIGludGVsX2NydGNfc3RhdGVfYWxsb2MoKSBsYXRlciB3b3VsZCBhdm9p
ZCBmcmVlaW5nIHNhdmVkX3N0YXRlIG9uIHRoZSBlcnJvcg0KPiBwYXRoOyB0aGlzIHN0YWJsZSBw
YXRjaCBsZWF2ZXMgdGhhdCBzaW1wbGlmaWNhdGlvbiBmb3IgYSBmb2xsb3ctdXAuDQo+IA0KPiBD
YzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiA8c3RhYmxlQHZnZXIu
a2VybmVsLm9yZz4gIyB2Ni45Kw0KPiBGaXhlczogYTRlZmFlODdlY2IyICgiZHJtL2k5MTUvZHA6
IENvbXB1dGUgRFAgdHVubmVsIEJXIGR1cmluZyBlbmNvZGVyIHN0YXRlDQo+IGNvbXB1dGF0aW9u
IikNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICA4
ICsrKysrKystDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMg
ICAgfCAyMCArKysrKysrKysrKysrLS0tLS0tDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfdHVubmVsLmggICAgfCAxMSArKysrKystLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQs
IDI4IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZWU1MDEwMDlhMjUx
Zi4uODgyZGI3N2MwYmJjZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTQ2NDAsNiArNDY0MCw3IEBAIGludGVsX2NydGNfcHJl
cGFyZV9jbGVhcmVkX3N0YXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gIAkJaW50ZWxfYXRv
bWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKnNhdmVkX3N0YXRlOw0KPiArCWludCBlcnI7DQo+IA0KPiAgCXNhdmVkX3N0YXRl
ID0gaW50ZWxfY3J0Y19zdGF0ZV9hbGxvYyhjcnRjKTsNCj4gIAlpZiAoIXNhdmVkX3N0YXRlKQ0K
PiBAQCAtNDY0OCw3ICs0NjQ5LDEyIEBAIGludGVsX2NydGNfcHJlcGFyZV9jbGVhcmVkX3N0YXRl
KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCS8qIGZyZWUgdGhlIG9s
ZCBjcnRjX3N0YXRlLT5odyBtZW1iZXJzICovDQo+ICAJaW50ZWxfY3J0Y19mcmVlX2h3X3N0YXRl
KGNydGNfc3RhdGUpOw0KPiANCj4gLQlpbnRlbF9kcF90dW5uZWxfYXRvbWljX2NsZWFyX3N0cmVh
bV9idyhzdGF0ZSwgY3J0Y19zdGF0ZSk7DQo+ICsJZXJyID0gaW50ZWxfZHBfdHVubmVsX2F0b21p
Y19jbGVhcl9zdHJlYW1fYncoc3RhdGUsIGNydGNfc3RhdGUpOw0KPiArCWlmIChlcnIpIHsNCj4g
KwkJa2ZyZWUoc2F2ZWRfc3RhdGUpOw0KPiArDQo+ICsJCXJldHVybiBlcnI7DQo+ICsJfQ0KPiAN
Cj4gIAkvKiBGSVhNRTogYmVmb3JlIHRoZSBzd2l0Y2ggdG8gYXRvbWljIHN0YXJ0ZWQsIGEgbmV3
IHBpcGVfY29uZmlnIHdhcw0KPiAgCSAqIGt6YWxsb2MnZC4gQ29kZSB0aGF0IGRlcGVuZHMgb24g
YW55IGZpZWxkIGJlaW5nIHplcm8gc2hvdWxkIGJlIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuYw0KPiBpbmRleCAxZmQxYWM4ZDU1NmQ4Li43
MzYzYzk4MTcyOTcxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX3R1bm5lbC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfdHVubmVsLmMNCj4gQEAgLTY1OSwxOSArNjU5LDI3IEBAIGludCBpbnRlbF9kcF90
dW5uZWxfYXRvbWljX2NvbXB1dGVfc3RyZWFtX2J3KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiAgICoNCj4gICAqIENsZWFyIGFueSBEUCB0dW5uZWwgc3RyZWFtIEJXIHJl
cXVpcmVtZW50IHNldCBieQ0KPiAgICogaW50ZWxfZHBfdHVubmVsX2F0b21pY19jb21wdXRlX3N0
cmVhbV9idygpLg0KPiArICoNCj4gKyAqIFJldHVybnMgMCBpbiBjYXNlIG9mIHN1Y2Nlc3MsIGEg
bmVnYXRpdmUgZXJyb3IgY29kZSBvdGhlcndpc2UuDQo+ICAgKi8NCj4gLXZvaWQgaW50ZWxfZHBf
dHVubmVsX2F0b21pY19jbGVhcl9zdHJlYW1fYncoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+IC0JCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkN
Cj4gK2ludCBpbnRlbF9kcF90dW5uZWxfYXRvbWljX2NsZWFyX3N0cmVhbV9idyhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQkJICAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19p
bnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICsJaW50IGVycjsNCj4gDQo+ICAJ
aWYgKCFjcnRjX3N0YXRlLT5kcF90dW5uZWxfcmVmLnR1bm5lbCkNCj4gLQkJcmV0dXJuOw0KPiAr
CQlyZXR1cm4gMDsNCj4gKw0KPiArCWVyciA9IGRybV9kcF90dW5uZWxfYXRvbWljX3NldF9zdHJl
YW1fYncoJnN0YXRlLT5iYXNlLA0KPiArCQkJCQkJIGNydGNfc3RhdGUtPmRwX3R1bm5lbF9yZWYu
dHVubmVsLA0KPiArCQkJCQkJIGNydGMtPnBpcGUsIDApOw0KPiArCWlmIChlcnIpDQo+ICsJCXJl
dHVybiBlcnI7DQo+IA0KPiAtCWRybV9kcF90dW5uZWxfYXRvbWljX3NldF9zdHJlYW1fYncoJnN0
YXRlLT5iYXNlLA0KPiAtCQkJCQkgICBjcnRjX3N0YXRlLT5kcF90dW5uZWxfcmVmLnR1bm5lbCwN
Cj4gLQkJCQkJICAgY3J0Yy0+cGlwZSwgMCk7DQo+ICAJZHJtX2RwX3R1bm5lbF9yZWZfcHV0KCZj
cnRjX3N0YXRlLT5kcF90dW5uZWxfcmVmKTsNCg0KSGkgSW1yZSwNClNob3VsZCB3ZSBub3QgZHJv
cCByZWZlcmVuY2UgZXZlbiBpbiBjYXNlIG9mIGZhaWx1cmUsIGlzIHRoaXMgaW50ZW50aW9uYWwg
Pw0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0KPiArDQo+ICsJcmV0dXJuIDA7DQo+ICB9DQo+
IA0KPiAgLyoqDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX3R1bm5lbC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF90dW5uZWwuaA0KPiBpbmRleCA3ZjBmNzIwZThkY2FkLi4xMGFiOWVlYmNlZjY5IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmgNCj4g
QEAgLTQwLDggKzQwLDggQEAgaW50IGludGVsX2RwX3R1bm5lbF9hdG9taWNfY29tcHV0ZV9zdHJl
YW1fYncoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJCSAgICAg
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yDQo+ICpjb25uZWN0b3IsDQo+ICAJCQkJCSAgICAgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOyAtDQo+IHZvaWQgaW50ZWxfZHBfdHVubmVsX2F0b21pY19j
bGVhcl9zdHJlYW1fYncoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IC0JCQkJ
CSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICtpbnQgaW50ZWxf
ZHBfdHVubmVsX2F0b21pY19jbGVhcl9zdHJlYW1fYncoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICsJCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KTsNCj4gDQo+ICBpbnQgaW50ZWxfZHBfdHVubmVsX2F0b21pY19hZGRfc3RhdGVfZm9yX2NydGMo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJCSAgICAgIHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjKTsNCj4gQEAgLTg4LDkgKzg4LDEyIEBAIGludGVsX2RwX3R1bm5lbF9h
dG9taWNfY29tcHV0ZV9zdHJlYW1fYncoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGlubGluZSB2b2lkDQo+ICtz
dGF0aWMgaW5saW5lIGludA0KPiAgaW50ZWxfZHBfdHVubmVsX2F0b21pY19jbGVhcl9zdHJlYW1f
Yncoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IC0JCQkJICAgICAgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7fQ0KPiArCQkJCSAgICAgICBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiArCXJldHVybiAwOw0KPiArfQ0KPiAN
Cj4gIHN0YXRpYyBpbmxpbmUgaW50DQo+ICBpbnRlbF9kcF90dW5uZWxfYXRvbWljX2FkZF9zdGF0
ZV9mb3JfY3J0YyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gLS0NCj4gMi40
OS4xDQoNCg==
