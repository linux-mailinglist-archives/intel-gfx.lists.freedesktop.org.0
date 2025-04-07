Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA92BA7DCC8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 13:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49AB510E43E;
	Mon,  7 Apr 2025 11:50:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+EZzjzx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B66610E43E;
 Mon,  7 Apr 2025 11:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744026642; x=1775562642;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O/2rOU8BEigKlQfaL5Kr6t0c6Azcye7ImdyOo6Qb3EM=;
 b=V+EZzjzxApAtFUgRQsS0KWgDueqcbB7EoGrG7wzoGyxEE+ihgmq9q1Qa
 9KDaMbJdSc+6a7RXbfsKbWuWwsRsbLgVoE2fKeF6LlCjACrhsgy96F4UP
 XEhbWD7b9r9pDeRf4okTpYp53Rsb3KYeOqXAtngSLi6MGhMJ/GcoWVHRL
 R0xDL5t9JvuryJfBxLrq+m2XQaJOb7zJKZkDGaMiWxHTE38G5osecedHB
 +WzC1h/fvVq0FgmTqX2FNVMwap6irQI3lVLVNKn0wx+Y2sTQIrWn6a942
 2GT7KE2CbfZnOGxX1Ou5T63GB5+UTfMPvuVkR/Gs2Bb++faeYpsfODqoP Q==;
X-CSE-ConnectionGUID: XTzso2/2SJ+pVc0afWATcw==
X-CSE-MsgGUID: vcCIQbAuRDiNvC1wcwq5ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62954053"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="62954053"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:50:42 -0700
X-CSE-ConnectionGUID: GLVOZB38S+ujZ3GImqiwOA==
X-CSE-MsgGUID: nVRGbZZ3SlOJ385KSbZHsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="127919767"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:50:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 04:50:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 04:50:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 04:50:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wwshOSoKLMUhtjqYjXf87zlkKJjnbWfJxrQCK9AfR82LTd7aDVsdxZ5Sym3gg9tjzvFJRNxpakfzyKpEQ8XgUFJRUyD1lQobQOHapOLGEwarozYOu574rFZ1VVOn3P143UJs7FPJ/5NXTLFKSuTs8whMQbrcNXoOZipfYtgGUgvy6YLvDhQvrRQrossFCIoggs+jwH6Gxwrwx0cScm5A4sUeMG4OSMASlv67kLzAawzNLbsRV2RdjFEBpAzRNDWNXXnjDKpV+ZNeviikcebIrvXKPgTSwbAwF3KVN/uB6imChEitUkYmF25GL4yK2ZCsoJrECeIYEr/bF3ky88pK9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/2rOU8BEigKlQfaL5Kr6t0c6Azcye7ImdyOo6Qb3EM=;
 b=CL9AU5W4HvknIkr/cW5Zc8zjka1e6qAUjhxn0HLz2oleLO2k92TeseO/CDwCbPII56ddLnQGy7VIBxzjU//Oa/JkIKig6TsJJ+O/W8crHmy9bNBtL2ZHNMp9Xr5DaAZRk7lC64R+KA2bhl1Mb2km1P/6IxgtPRMY4fx+SfbwX9H0TcpklbMLF7yThKkf0Tix/W+od49SfSQTu8g2s8VglhhNiuBTAxzpI6/Dy4rvG79HdCL1PngzYf9VLxda/lFnFzBHPSylzPggedkMN9GrACTagfElxcnljPg37J7/2WqGcTlp9JLPxnFjlikLpF0n+8nRXlqrGJKjP1YiCsttTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB8857.namprd11.prod.outlook.com (2603:10b6:806:46b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Mon, 7 Apr
 2025 11:50:24 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Mon, 7 Apr 2025
 11:50:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 04/11] drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW
 definitions
Thread-Topic: [PATCH v2 04/11] drm/i915/dmc: Add PIPEDMC_BLOCK_PKGC_SW
 definitions
Thread-Index: AQHblxVUXpAioYB3eUmF4n4J7DunCLOYODcg
Date: Mon, 7 Apr 2025 11:50:23 +0000
Message-ID: <MW4PR11MB705446A2F1135BFC5A09B51DEFAA2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-5-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB8857:EE_
x-ms-office365-filtering-correlation-id: e824c3f2-66ca-474e-614f-08dd75ca61bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?RVU4aTN0SlNjTEdrTDV0RVpZVlg3dkdGWWJoeU80M1hidE94V2lXd3hjcGR4?=
 =?utf-8?B?azVoUUt6WkFnRGtmdjZZVmhTMnVlWXpoQ2NYRmJjY3FPZVkzSWcyMWhLQzIx?=
 =?utf-8?B?L0MwZzFUV2V6eEtvMHN4YlZGbnF3YzlkZDVqd3FZUVppcGRiWnA5WkJuY3FK?=
 =?utf-8?B?UENTVStBejBMRXFSNWpYb3hGeHhRTGlod2FwSll6YXJOcEV0NGVpNnd1Wllp?=
 =?utf-8?B?M2pCeUNsQmc1N0w5T1hVTjNQdEFnaS93dXRZTUc2YUxmZFBUOXN2NGRUdENT?=
 =?utf-8?B?SFJWenBhb0dFR2tUNGRoVzFUWFkvWEF4TVl4TTJhSmVqQ2FOWVk1TjFLSlg0?=
 =?utf-8?B?cm5UZUs2c0pUTGcxbGFKU2VxOXh5QnpxN3BoNUxPZ0ZaZGJNVEtXRTYvb1pk?=
 =?utf-8?B?YjlkZDVKSC9reEV3d1ZqUlhHV1pyVllOYXZWbnMxUklYNGpTMHdBYW11ZkpH?=
 =?utf-8?B?cTErZ2tiNlZubkpFU1hKQStuVjE4SmtQMDh4RktZTXJyYkNNVVlud2prNUg5?=
 =?utf-8?B?Q2QwSmJ0bVUrd3k5MU9rV2FQOTZudnFhNnI4NTN0eDFsVzlvYVQwVS84L2du?=
 =?utf-8?B?TzZNZFBkeDNsMXl1VFpSOURwa1R4QmNYWkxScDVYZDRpWVR2ejh0QkxKZEJv?=
 =?utf-8?B?eGQvZDlxOCtBNDhMQVQ5Zkk0dmRpRFVuVFJTMzVhMDF6bCs4RlVmZDliVldC?=
 =?utf-8?B?eE9iSnJsL0FpS3NVRnZ0UmR4YUhETUVBbnBwKytnVXJTMnZldENoaXhMTlhG?=
 =?utf-8?B?R0dweFZNZWxwSnJWWVdGdzgwbjdzOW14NFUrQlJqWXo0WWZYVXhZT0ZSUXpp?=
 =?utf-8?B?SG81U1l0MzBZUFloMkZxVmQvd3pkQU10cHd0WXB4M3R1eTFEQit5UDlPWHRX?=
 =?utf-8?B?R3VNeUlkMDMrTW53c3BCelZoMmRsUlU5ci9GdFlXenU2MXZleWpXZGJSMG4y?=
 =?utf-8?B?d0NPS2tWV1hXc0VYRFFYM21xNTBSYXo1aXBLbDY3RWhJRWd3U0NjTDc0VFR4?=
 =?utf-8?B?a0hQZVNKKzBtWDRHVjNiV1VNQlIxVXpseWc2MytYWEtJdGFIcldJbnZzQzhL?=
 =?utf-8?B?bGViaHNzUkh4dEVuTGczQzlCaG9pZ0piWng0QmRPRXlHUS9TaFdiQTJJYUdv?=
 =?utf-8?B?dUVic3g3dHhNbEk1UmRjcWZwNFM0MXI2Q2svZzVPQmNDci9KZENpbkVTR2Fm?=
 =?utf-8?B?UXUwOGFwbERWQ21XSlhUMHBiK01CUUxNTGVleFpIK1oyZkFWRlMwZlRnMlJ5?=
 =?utf-8?B?UVV3ZEtpZVFjZXZoRWNPMUNRaTJCSnE3eFdpVFJQblRHUGdzTmpYOTRURitL?=
 =?utf-8?B?bGdLSGVTN2srb0E5LzJOQ2RpRjNkSG9vUGZtaCtoeXdheXFyWmNrVlJsYUJv?=
 =?utf-8?B?M1J3YVVyRWxZRU8xQzgzdUJkWGxscEhydGxPbm9zeG1HZDIwVU16R3ZPaytJ?=
 =?utf-8?B?YjgrNmpmT1c1NmprUlpFcUdsMllhVmwwNDJmR2FRd0NHK3NwVk95cC9CKzN5?=
 =?utf-8?B?a1BrNE93SmhSaCtidjVUVHBWNGdqTkVOWjU5YzNDckpONGlndGcrSmdFYVFZ?=
 =?utf-8?B?NUZPUHhVY3JGenBZNUlHSG9pSG1RNXJYUzZRaGlLdWVUYTNNalJMTFJTV0w1?=
 =?utf-8?B?eFJhQlA5bHc2dVhzMTZWT0hSelY0NC9OT0xwaitTVXljNER3YXd4MXB0SWkz?=
 =?utf-8?B?dTlvRHRvbDJONm9uNUQ5VllXd2lvY3Y3TmVFRUlhWWc0aUtsQVM4aG1VRExF?=
 =?utf-8?B?U0hmOU9OWlJlRTlXOTdCRjg2ZzErRXoyODdySU5QWFUwazkyRWROOWVEUnRy?=
 =?utf-8?B?OXNnMVE1bU5VSmxMU1FHUVlLbGx3OEhEUHkzaDM4K3gvdDFvdnE1RnVkNFNP?=
 =?utf-8?B?MEQ0eTFsTmJ5UlRuZ3FaZmplZjlCY2FEaitSZEtndS9ISTJBS00wWXFYcWRB?=
 =?utf-8?Q?N/iF630FecLJNJGCSBbV5mh62GoGsGqz?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a29GWGM0QlVScS9aQUh0WkVjUnZlZWZGbnBBNG1Gb2hGSG8xTTY0dzJ6elZz?=
 =?utf-8?B?QzdEMEZlbFRmVDh5WE1sanNhbW9UUHVkSEJkZVl5dkdGQmdEbVI0R3pRT0tj?=
 =?utf-8?B?TmxhZTFvMDVQKzZzb3h0VmhHdVpyZHd4ck5NRTNvcHFOU2U3RzNBRVd4WGtO?=
 =?utf-8?B?OHYxb2hqRUxQenYxR1F2bWMwZEgzVE5FZXpGKzFuQVBXOXZZZWIvWGlyQzkz?=
 =?utf-8?B?dlBORTg0MmVnUzdhRzZsNlNZK0ZLV0xIYmpxd2RNdWExMXFTUWhzT09pL1FS?=
 =?utf-8?B?bXFCLzVNbnNPTUJqUFBQNE1aSGZoTmdOMlZXeVVQTUFJa3dhMDBOMEhBbVRo?=
 =?utf-8?B?d0U3cmd5S2lXRmNZNWpVVFZrdWJNSkRPS0JzMnFvUWtmd2F1QnBmUVRsVnpx?=
 =?utf-8?B?WE5pTThQYmJlaGlVMWowamQ2enI2K2VXSDNrbU5kUlFFVjBFU3ZCM0dJaWMy?=
 =?utf-8?B?SjY3ZmRPNkVNMXBLR09BbSs0SDJDNS8wT2hYbk9DTHV1bDNMczNXSEJPOCtX?=
 =?utf-8?B?U1hadTl6OXZCTGlJVFV3U3VwK0cydlJWM2RiWXd6OWIyNzRydUhyb01tdWwv?=
 =?utf-8?B?VlJYU3EzSW5FRmZnR1hMeHNEQklJZHRXbG5FazloczZRRS9rc09hTUprZDRv?=
 =?utf-8?B?dmhROHRsV3RaSjFuRWF4bHRXSVJYL2J3U1R3L0NRTFAybmpMRFJHWHZJdlJt?=
 =?utf-8?B?Qy90UnhoVjkvbXQrYWpBUHUyUithNWFiV1J6dDBVR3Z2ZGpSQkcvS2tWZ1B0?=
 =?utf-8?B?K29LM0xuMUFuRWlMaWdSb3dSMDRkbUt4bzlwVFpGVS9ZZHNPMUZ3c3pSYzI1?=
 =?utf-8?B?dkNxZUMrWWx5TWRLZzVpd3dLck52ekE1d0lpa2IzbzNFVy9hYlhhWGhxckFo?=
 =?utf-8?B?WHJyWHlkcjhVV1lzNm16WXEzMWpadWJkMU5GeXNVMkJENWVIMTYzbzRBTDdH?=
 =?utf-8?B?dDhrV205Y25wSktWdWltU3lJZnVhKzZtRmRrdGJYeXFyODFaNElmaSs3cVNp?=
 =?utf-8?B?aUhnQUJZQWh5VTRqZTdFMVRITi9wZFRtMldZbXZJMXM4ZTdYamJHVlJOdW1F?=
 =?utf-8?B?d2RBQTIxNHEyenltcDRLSHc0VnBzaG1QNm9hdU5HT0h1VWpqcWt0NjQySnlS?=
 =?utf-8?B?dm05RWk0M3hlSHIvbEFmTkhwc05FUmd3MFNGNUw2cllpTTRIZ040N0p3Z3Vy?=
 =?utf-8?B?S0t2UUUyMDAvYU1KcjJnWkZiNkN1VWZuaDRKT1NRY2l0aFZSb2pRYzhoZmk3?=
 =?utf-8?B?Tng1L2NVNnMvc0N6UEVTMEVhRlZNdkVWZnlYU0JpZjQrM0ZydXgxUWY2SXpr?=
 =?utf-8?B?V3gwMlBXTUJDRUdYcHQ4d3FQZ1FlL2d4S2taWU92SnVNZ1dNK1I0QmxqQzll?=
 =?utf-8?B?YWJVbENBVUoyaGdRdTlSc1B2ZkxVRG96dzU3Sm5DK25QNldxK21vUEVXZGZ0?=
 =?utf-8?B?QWI1aUlCMTZKWGVWdkFkMkdqMFJEeWczTXovQmZhMUVCME4rTTBuMVNRSWdP?=
 =?utf-8?B?VGtGU0NBY3ZPVjlOSlVqaUdVOHVqVU1HUUlPU3pIUWthYXdma2prTXd6UHJ6?=
 =?utf-8?B?ZEcva3B5RkExTjlGdHJKdFVJcENubFA1QzU0SW1HQi96a25KU0ZIWTlBTDRF?=
 =?utf-8?B?TWtRY0xpSHZoRFFDMHRMZjdUN0JaSncvREJEQkluVnkyYTF2NDZVSWVoaVhB?=
 =?utf-8?B?Q215RUFhN245a09rTDVyNVI2TVp4Um9TbFhHTWtTdXZXN0xQdE1FM0pxV2FX?=
 =?utf-8?B?K2tSWEx3eGFLK01qOXkwTnRLY3hCbHdJL1U0Q2NtV241R2xqQmxBRWVKQ2t4?=
 =?utf-8?B?dlN2U1k2NmlHU2xSRFh1b0kzQlo3UDhydlUySU44azByenNxa3orckxSbytF?=
 =?utf-8?B?RWI4cTdUT051azZPRjlqUzVSU2tYTm5JeVBHTTZFblhTOFlSVkpkdEZrYlhG?=
 =?utf-8?B?aGZteThiaXM1MkNxZnJEa1ZKL21ybUNPSmx2R09PWUtlSkhTU0Vvd3QxeWZB?=
 =?utf-8?B?MG5jYlZFdGp4ZGRLbmQxbmZVeGFrMENwYnVLMFhPMWd3bTNCRCtVZys1MDB6?=
 =?utf-8?B?YTY0YWpCOFB2emJERmxxT0pSVEZSN3UvVlFGdUlvNy84OW1VQ2p4WUZVdVUx?=
 =?utf-8?Q?k55c+RrRZUKBeL0OeOmR2UX76?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e824c3f2-66ca-474e-614f-08dd75ca61bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 11:50:23.9645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gMG0xndPLlwMqLBz2fjJn2a1VDjnyu3D8C8I5PHJXzU6yx/Cib5KhvzwqC1GeO0JUSMNFw2hGCIG+RMOCmRXPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8857
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIDE3IE1hcmNoIDIwMjUgMTAuMTkNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFtQQVRDSCB2MiAwNC8xMV0gZHJtL2k5MTUvZG1jOiBBZGQgUElQRURNQ19CTE9DS19Q
S0dDX1NXDQo+IGRlZmluaXRpb25zDQo+IA0KPiBXZSBuZWVkIFBJUEVETUNfQkxPQ0tfUEtHQ19T
VyBkZWZpbml0aW9ucyB0byBpbXBsZW1lbnQgd29ya2Fyb3VuZCBmb3INCj4gdW5kZXJydW4gb24g
aWRsZSBQU1IgSFcgaXNzdWUgKFdhXzE2MDI1NTk2NjQ3KS4gQWRkDQo+IFBJUEVETUNfQkxPQ0tf
UEtHQ19TVyByZWdpc3RlciBkZWZpbml0aW9ucy4NCj4gDQo+IEJzcGVjOiA3MTI2NQ0KPiANCg0K
UmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfcmVncy5oIHwg
OCArKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3JlZ3MuaA0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3JlZ3MuaA0KPiBpbmRl
eCAyZjFlM2NiMWEyNDc3Li5lMTZlYTNmMTZlZDg4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtY19yZWdzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfcmVncy5oDQo+IEBAIC0yNyw2ICsyNywxNCBAQA0K
PiANCj4gX01UTF9QSVBFRE1DX0VWVF9DVExfNF9BLCBcDQo+IA0KPiBfTVRMX1BJUEVETUNfRVZU
X0NUTF80X0IpDQo+IA0KPiArI2RlZmluZSBQSVBFRE1DX0JMT0NLX1BLR0NfU1dfQQkweDVmMWQw
DQo+ICsjZGVmaW5lIFBJUEVETUNfQkxPQ0tfUEtHQ19TV19CCTB4NUY1ZDANCj4gKyNkZWZpbmUg
UElQRURNQ19CTE9DS19QS0dDX1NXKHBpcGUpDQo+IAlfTU1JT19QSVBFKHBpcGUsIFwNCj4gKw0K
PiBQSVBFRE1DX0JMT0NLX1BLR0NfU1dfQSwgXA0KPiArDQo+IFBJUEVETUNfQkxPQ0tfUEtHQ19T
V19CKQ0KPiArI2RlZmluZSBQSVBFRE1DX0JMT0NLX1BLR0NfU1dfQkxPQ0tfUEtHQ19BTFdBWVMN
Cj4gCUJJVCgzMSkNCj4gKyNkZWZpbmUgUElQRURNQ19CTE9DS19QS0dDX1NXX0JMT0NLX1BLR0Nf
VU5USUxfTkVYVF9GUkFNRVNUQVJUDQo+IAlCSVQoMTUpDQo+ICsNCj4gICNkZWZpbmUgX0FETFBf
UElQRURNQ19SRUdfTU1JT19CQVNFX0EJMHg1ZjAwMA0KPiAgI2RlZmluZSBfVEdMX1BJUEVETUNf
UkVHX01NSU9fQkFTRV9BCTB4OTIwMDANCj4gDQo+IC0tDQo+IDIuNDMuMA0KDQo=
