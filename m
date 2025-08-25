Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8211CB33678
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 08:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEA210E33B;
	Mon, 25 Aug 2025 06:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKCnDDmA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785E510E33B;
 Mon, 25 Aug 2025 06:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756103427; x=1787639427;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pxyVr+b/ECqjMt0Ac15NXg6m5t1ffQotr7ULZbzDv9w=;
 b=jKCnDDmApluADFo1rIrIjl20V7Ngs3J6jcD0VEA5xNpm5Hicrg86av2E
 HiIphaP56fjdna7JZ28RTmvJwGB5tnR/GTkrFgBE/E9l4Mle9Rx0794p2
 X2c7gbWE3vxoMWl21ELG4Nu0f5NWIPtOKZY/hK2VXx8wCnnrzByoL2PUQ
 aMzm1lYOAmOIs0XKnZhooj7xR0BJNkMAD51fNjvkZQjEMYfh7m5Q5khO+
 xwXYvNOhJn5Xz2WiTHnlaz2M/jMQpKLjNew492VLrSsQKrGrxtrFJntQ4
 FUogwJrzbXvQE2CF8jx/4kVkyQRyXFREPqyrmXk7ZNQFJbHY+prPNUcV6 Q==;
X-CSE-ConnectionGUID: /QX046HhTiKgaaSepscqgw==
X-CSE-MsgGUID: s3a02vs6RPuiuuj48sUeZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="58166223"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58166223"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 23:30:26 -0700
X-CSE-ConnectionGUID: fEnTmWJ5Q4CIInqZrWTMqg==
X-CSE-MsgGUID: wd5MTtuPTfSR/qpOCq1dYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="169588167"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 23:30:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 23:30:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 23:30:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.84)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 23:30:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QvQikphLMsncc7RdEQ7OI3jlr9m4zuGibEftvqnH/lMLat2TyEdP0sxDamfmRafBzemM6KKpXNovJTe6eu6WJVpmJt+t2UUyXAhfBlYbkH0VFZkYOPEpxTJ6B0n9dkif39ewnTchJDybNzC9DVlR+rT4DzYHxLybQ9ICpVuxhoE/BsgYwzJTw/SEXZtnylBAhxlyYAr42nZIXM9SVDWw0b+6u+Y9yrAcRznKUeu98SodwMd29x/EyObdinH/itbZjxaqBpT4tAW5vUSzlFwArof0YWLD1HBoYbihNLS7VD0HqxA9rQaBHJPyilOyW6sjAFPIKCvGEdabCjWOBwLyTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pxyVr+b/ECqjMt0Ac15NXg6m5t1ffQotr7ULZbzDv9w=;
 b=FIdG7R/Ypwwn+xVEznCSvc+0k7LfrAx/KNT7Au8QMS9OGDG4UyzZ/1v4VgEqw0OmDYqT/75tgWGkgezKR6Fr0Qx3Pq4GZqLpuPd8gsG8zlOPUEzVMczNFBcOTDKg4W96CqypfE+XKyjNY8sguQdl+T3ie03r6IOcST6W9GyFeR0dt1w3maNISrnp93MbxIm9VUIQ18P6B+XBeS5yQpinF4V9edL+LE5gHg7iEnBW4hEAGGlEkW4P0pgbjYAPYrAoycdSOS/JeO5MvsEvJOb89AC2EPHQqFtvCGB7JqeyQ+mEe9wHa6g3erJxSKLY7xpAFRLc4wxQQXRXv7D7QHr1eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7820.namprd11.prod.outlook.com (2603:10b6:610:120::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.20; Mon, 25 Aug 2025 06:30:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 06:30:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/psr: Do not unnecessarily remove underrun on
 idle PSR WA
Thread-Topic: [PATCH] drm/i915/psr: Do not unnecessarily remove underrun on
 idle PSR WA
Thread-Index: AQHcE1PLUsJaiCxDD0arWleTw6TOdLRy7FhA
Date: Mon, 25 Aug 2025 06:30:21 +0000
Message-ID: <DM4PR11MB63606B19B182535C43C1FF5DF43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250822105846.1023631-1-jouni.hogander@intel.com>
In-Reply-To: <20250822105846.1023631-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7820:EE_
x-ms-office365-filtering-correlation-id: b6e34cf3-da1c-4e08-f82a-08dde3a0dded
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OERvcWFhbHh5Y1hURGFPNTVuMFdyU25Bc0FheWs3bWhFYUdrZzJ5WUJpWFh0?=
 =?utf-8?B?MXRpOTRpdkd0SmREM005a09LMFN0ZTFseXI4czhHNzNHU3I4a1pTYnV4QUNr?=
 =?utf-8?B?SVFVUnh1cENpb2lpYXJVK2tQdytrNDVqSndCRHBLcVltMzBZMi9rVHovNEFL?=
 =?utf-8?B?WTk2V2xMc2NsU1U0bGxhdzdSK3o5TW1jbVUzOFFvRm1wZUxYU0VUTWJjZFFl?=
 =?utf-8?B?Mi9tYWc4U3dWUmxPNTlucTZTWkEyd0MveHlkZ1NzNEovK0JVVWpkK0cyeHJv?=
 =?utf-8?B?bzZNa0lodE9RTHVEMG9rZmRVbHAyVHphMkkzbDBvQ3hGTEhTY3NSa0I2dFMv?=
 =?utf-8?B?Z0FVZHM4V1ljTEpQWm9PWGhBTnR2RnpPeVFiano0UzlJaUNPUmJCMlJuY2pi?=
 =?utf-8?B?SzdqSXQweGdsYWNBOFd4RXhBaFA1d0Mwcmt0SDNOVUlsU3ZDelRQWmsxbGpY?=
 =?utf-8?B?d29UV3pOb05JVTJWSjc2K0dQMFJxays3NW1lM0M5QjVSUm5ib0ZaS3IzL1Fs?=
 =?utf-8?B?NzBId1FiM2Q2aGY2TnBqbkVIMFVTczB1eDZpY21ndUNla0ZhNGlhWXNSb2N0?=
 =?utf-8?B?TVljaXVDbkxnZWlpTUpkWlhIYkpaN1JsWDl5cWp0WmZEcmpWZlNJdWlXNWVS?=
 =?utf-8?B?bkRxSFN2VGt3bmZPRkovVzhxd2NxNWR2ODd4aTB1eURjWHNEZmtCQjVGT1pJ?=
 =?utf-8?B?MFQ2NGhzRDd1bGFPdWhPaUVzZ3BqRUorbkszVXZ1VFNyVlBtV2tyMjJJVmJr?=
 =?utf-8?B?RHE5WWg0N0ZsT05LMXlpcENvREJZNDN1dWFZcHEyZnVtaTVUSVI2OEhEUjlv?=
 =?utf-8?B?b0tUMW9mRTdxbEZyYnhnK1pYS2FzL09JcUI5UXdYWVZpUkdHRHBKQjdqSHQ4?=
 =?utf-8?B?cURWOGNqUFovWXk2TXNPUlpzTVlKQ3J2ZkVrWmptNFl2dHhEWG1EemFvcW9I?=
 =?utf-8?B?c3lmRFJDaE5PdVcyWFBSYk1mVnk3NzV2OEs5VmFEdG1UZWc3OWxkdU1JVUdw?=
 =?utf-8?B?WG0yNllkWm5qRnFYTEdCT2xmS2VLdVAyQkpGSGVqMlloVWppckgwWUJNVnd2?=
 =?utf-8?B?bzczNDg2TTUzaFdmakxrZHc1UWZoMStIK2xjeXpDUElTZEE4NVpZdXpFMGNt?=
 =?utf-8?B?RFpNZmdzWFVrM2M1M0d1bGVWa09zVTc4RGkrNE5PT1ZVRVRzZEptZVFINno1?=
 =?utf-8?B?cGtRb0N5bHY0WFZRMmVKS0FRUmUxQjJHR1JTMTNCMWpwQVp4c1MvaUwwRmxF?=
 =?utf-8?B?Yi9KNzBGbHk1eHNpRGNKV3FubjVjSDAraHZMV0ZGSTcwaWcvNzFQaHlISUFO?=
 =?utf-8?B?WnQxclFtSnBTRDZpbmlrZ0orVHU0enBSRDBaQ1RuNUJtL0lhOTBGcEZYNDNN?=
 =?utf-8?B?L0ZZYXNjTmpZWTdURnZYdis1T1JVZmZZd0daMmErNFZzUm1NcnNaSHl4aTRY?=
 =?utf-8?B?b091S3VHbko2dkZEN0RjNTkrL1RLVm4yb1ovU1UySFhYdExVdk5PQUFUUmJV?=
 =?utf-8?B?NzNjdTZnSjJ2YUxBbm40R1RrV1YyV21TaDJTZHFtV3JxdXE0QkFsNWFHNUNB?=
 =?utf-8?B?ZHdvTkhtcnJtejRPZjBRREluRFlkUVU5aWRSZ1AyUjNwbW11aFkvQVRkbUFh?=
 =?utf-8?B?dUpRZWNkY3JmZXFIS3Z6SnQzQ0lDNmErSkVNcUxKelVuLzdZS3hNTlkyV0lX?=
 =?utf-8?B?N0oxczFaRlQ2c2RtQ2NFRnBEa0syY3Axdm11MzhBWDJTSGJsWHZqNzlkZmpZ?=
 =?utf-8?B?R2RiMzBqTmF6V0Z6NG5GYU12MFJ0NllSWEIrTjFOVklGakZCMWdOMmg1WjAr?=
 =?utf-8?B?bnY0b09yRTBLajhkeCtWUE1XWnVENFRsRlFoSGdtRXNsSjhpSEM5WVZ6eVE5?=
 =?utf-8?B?YWxYeUVZendIYi80YlZIRFB2QkE0WFpWSlMybTg3WXZYYi9ac0IvUWVrcVVL?=
 =?utf-8?B?cXRwWVZReG1SWkhXVDRTSDhvOUpwS3dFdFU5Y0dHZEo1WEl3SldRbEdzUHpx?=
 =?utf-8?Q?5PNpEEfszivHfyviqwNqAFbCEX5h5A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cllJZCt2TlRrMEsySk5BNmJWNk1HQ2hPMWVDNmsrc0RDRDgrb3UzQ29QblpF?=
 =?utf-8?B?a2RWUVdlTnJGSFU1ZUlTYmJxaHZpV25QNFg0TVl5VjdCaDlQSjNYa2VnbFNF?=
 =?utf-8?B?SnVueU9CU00yUU96bXQ3Ym1uc0ZNWDQ4OTYyZEp1TjIzQmgvc3pCSWJINEFy?=
 =?utf-8?B?em5uTkdzdmVSdlpKbzdFd1ViQUJWU3NqbnNNRml5a3VWUHJkTnhzQklDbVFV?=
 =?utf-8?B?bm9MU1Q5RVEySUJ2Slh4MzBoekVtQ05JRWNibEJJSEkrSWNyL3lVZ2hVaXZH?=
 =?utf-8?B?RjY4UmRKR0J4bE9GUEJBaER6WUFjRWQyK21IQW1OT1dzZ0dXYVFCVHZ2TlQw?=
 =?utf-8?B?ODlRV0VVamMzaDFqREdKeWJReWVzSUNXN1lNSW9uc2JXcHhISHlwRERPK3JW?=
 =?utf-8?B?aXh3R3R5SmJudFdISFN4MUN5VHF5NDNiVDh1djc3a3VoaDVycDdzLzgvbUFC?=
 =?utf-8?B?ZExrWnNkVzFTMms4MFFmYTZRb0R0YTJ2NnhvenplOWNFTlFqRHBleGoybVVw?=
 =?utf-8?B?TFlpY25vMGhQeiszOXZnOG0xRm0vSktrcHpKbjlCd0tRZXdBQ3dQN2dOUERG?=
 =?utf-8?B?ZDVhSHJiQzBlRkNiS1gvOWZSdDdiOURjVDZLbmVCbGxHRHJJSGdHaG9GOHdT?=
 =?utf-8?B?TjRGbnpoNkRmQldGQVFFNmI3VGZndHgxQmxWczJBeHEzazA0bHBkdzRxQnh6?=
 =?utf-8?B?QmhkR1VKSEdDcDl3enJ2UncvUk5SZ2tRclNpMWQ0czlTUFZNa2RVSWFPTkto?=
 =?utf-8?B?QjczN1JLdXh0WWQrUmltVFk3T2hteUoxcG5PbWQzZ3djd0tYK0N2a1FqUjlV?=
 =?utf-8?B?ZzZudkRrTTJVSm1FbUcvY24zczNrTTlGUWp6QzhyaTI4eWJ2aExYcUpKN2JE?=
 =?utf-8?B?TSszMFBzV0RpUVVaSjE2WFNxcVFqZ2VzcFJTaTVkZHpaNlB3RFNyZ09VbUdN?=
 =?utf-8?B?elZOQ0FTWkIvM2lHbUlFWnNoMTJ3MkJlMDhZOFVySWxhOWpLY1AyZ1BBcmhN?=
 =?utf-8?B?Z212Y04zbkFDcTU4cHArYXZWdXUzVW5nLzBXdzJvME5HV1pxelZzUnZVRVJR?=
 =?utf-8?B?U0FEUW8rRWI5RXUvcWdwcHVsd0JOTUVSdU9JQ3JNYldXVGFPbjJ4ckRCV0pC?=
 =?utf-8?B?cyt0NEFGdHpWTmd6SThoRW5iaXhwMS8rdTVEakJrWFdwaHg4NDdrN1Vsb0gr?=
 =?utf-8?B?MWRXc01Xb2pVU3pISEZobU1wdUVwSlFDTmtUdTBhR2F2aUpORk9GZGRDTWUz?=
 =?utf-8?B?SHdSKzVtVzhtQ1BiZVVhRmxhRFlDMnlianB1VnFkQkQ1QWlBejlKTUJGM21u?=
 =?utf-8?B?TU9hVjB1Tk81WVhSN29vbE1rdlhVZHRBdUpCQzI4VEcrS0poNmVvaHQrbUZ4?=
 =?utf-8?B?Q3hyQ1QrbDlVUCtwWlRlZEUvV2pCZGxsVlp3REZlUkdFRXBqUlh3aFNZQlRF?=
 =?utf-8?B?bUkrV3AyeGQ2cUk2VXNOVGYzUUtyZmNpUVRydW00aGVHT0I1Rnp4Y1RYRVFR?=
 =?utf-8?B?RmtOeE03VWNOcXJKYStOMWl3V0NlRGxSc0xNbnZwcmgrczdQY1hGNlBNM09Z?=
 =?utf-8?B?RjBxZ2lhMDF3ekNmS0paT0lhK1MvTExKWHdQdnQyU21vYklRTVpWSXJiQmd3?=
 =?utf-8?B?aUxtMzd4aFFXckdPRjllcGxSaXVNczZONGR4bk51dlRYQ0tCbEVZekRld1l6?=
 =?utf-8?B?WG5UWDJKN2VBeWF3M2xua1BaNUlnOVhTMG00bWVxZGxsbWh3ZHdEaXpLT1BD?=
 =?utf-8?B?cmNTbWM3VnZBRTZtdlIwQWVQK0o1Z0M4TnFOTlFQNmdTcWVtOE02a0ZhRFFz?=
 =?utf-8?B?VnZsNzNXTW1STTAzQzlITWluNkNpbzVFcXJiMURlZDQ4QjlydVYvTDE4VUN0?=
 =?utf-8?B?dHFsYkszUC9zT2FvSVlURXRqR0xFUklBMFRvWS9OeUxSYWJyNUVHUEJoNDNy?=
 =?utf-8?B?WHZ3U25UbnVtdlpWY0xnNlEyL1lwVFJQcm55bFFwcWYxdGVsR1hNbFkxNG9X?=
 =?utf-8?B?MCtucVIyWjR3eFBVMFUxRkd1R3hENzEyUERvV0FtT2lqSjdWbjBtdUJzVzFa?=
 =?utf-8?B?ZG1SQ1c5SGplTmh4cDI0SXhhTzBvcGtjV3lTUWVpOUZ6aXNUaUgxOGxoSWNs?=
 =?utf-8?Q?YuB3E2awl/daA3kwi3BWbrhfa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e34cf3-da1c-4e08-f82a-08dde3a0dded
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 06:30:21.3597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4W4xgOx10Y2CfTD43wLzA++BtKsd3Bb3Vloqzbv7y+uPiBRvPuOsLeWuvfwgfSZmMvHxXq1uhZoHIjkg74SqQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7820
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgQXVndXN0IDIyLCAy
MDI1IDQ6MjkgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVs
LXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9wc3I6IERvIG5vdCB1bm5lY2Vzc2FyaWx5
IHJlbW92ZSB1bmRlcnJ1biBvbiBpZGxlDQo+IFBTUiBXQQ0KPiANCj4gV2UgYXJlIGN1cnJlbnRs
eSByZW1vdmluZyB1bmRlcnJ1biBvbiBpZGxlIFBTUiBXQSBldmVuIGlmIGl0J3Mgbm90IGFwcGxp
ZWQuIEZpeA0KPiB0aGlzIGJ5IGNoZWNraW5nIHBrZ19jX2xhdGVuY3lfdXNlZCBvbiBQU1IgZXhp
dCBhcyB3ZWxsLg0KPiANCj4gRml4ZXM6IDliMTc5NWU5YjBhZSAoImRybS9pOTE1L3BzcjogVW5k
ZXJydW4gb24gaWRsZSBQU1Igd2Egb25seSB3aGVuIHBrZ2MNCj4gbGF0ZW5jeSA+IGRlbGF5ZWQg
dmJsYW5rIikNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDUgKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gaW5kZXggYjQwOTFkMjhlODE0Li44OGVjZWI4ZjAwZmQgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjA5MCw4ICsyMDkwLDkg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2V4aXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gDQo+ICAJCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgISh2YWwgJiBFRFBfUFNSMl9FTkFC
TEUpKTsNCj4gIAl9IGVsc2Ugew0KPiAtCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAg
fHwNCj4gLQkJICAgIElTX0RJU1BMQVlfVkVSeDEwMF9TVEVQKGRpc3BsYXksIDMwMDAsIFNURVBf
QTAsDQo+IFNURVBfQjApKQ0KPiArCQlpZiAoKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDIwIHx8
DQo+ICsJCSAgICAgSVNfRElTUExBWV9WRVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwgU1RFUF9B
MCwNCj4gU1RFUF9CMCkpICYmDQo+ICsJCQlpbnRlbF9kcC0+cHNyLnBrZ19jX2xhdGVuY3lfdXNl
ZCkNCj4gDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiAJaW50ZWxfZG1jX3N0YXJ0X3BrZ2NfZXhpdF9hdF9z
dGFydF9vZl91bmRlbGF5ZWRfdmJsYW5rKGRpc3BsYXksDQo+ICAJCQkJCQkJCSAgICAgICBpbnRl
bF9kcC0NCj4gPnBzci5waXBlLA0KPiAgCQkJCQkJCQkgICAgICAgZmFsc2UpOw0KPiAtLQ0KPiAy
LjQzLjANCg0K
