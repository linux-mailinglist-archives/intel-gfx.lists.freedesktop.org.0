Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F87C8E107
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 12:37:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0391910E047;
	Thu, 27 Nov 2025 11:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUUYmA1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BECF10E047;
 Thu, 27 Nov 2025 11:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764243432; x=1795779432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9goFgg7zX9sQ9GYYAbN4pnRFqaZdUQSnz7ydNy3GREM=;
 b=UUUYmA1O6porbxdgZXA3RRUgSeh0+hKrrya03z2CIGaij5Vg3LRlmq2W
 MruMLvoDF1ZELadBaWIKMRtUBWeLOslVqHe8w+WGl+Q+9FWyvl4qgHQYc
 BfUtNY9By1/iiyWVTCgHRF7XgEYv5QjdkJjYVDelrH+Z2gV4nxwUZ+yxi
 xg48wISx+XEbHDTHqfa6VmoxJk3MHaOkrfG0oXOElDIP9tnBYo05WuUx3
 hifjdG0+cTGRFg7eCnXEkPTNDeepg2gfa87sc//N/VHYFQMg1CKFbf2c6
 FiEC0Qni8ZZLzNW4zIjWPyypwMh/sCr8jE8wUEC+3j16o/RSYcQcnSBL/ w==;
X-CSE-ConnectionGUID: ZjqoibSCRQGvSxeLJ6Gi6w==
X-CSE-MsgGUID: 0JbSijxjQyC58om6H69K2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66181801"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66181801"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 03:37:07 -0800
X-CSE-ConnectionGUID: /lBih8QFR8itDow5vJ67ZA==
X-CSE-MsgGUID: Lw/77AAbTdG0MpO3fF8/PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197373683"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 03:37:07 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 03:37:06 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 03:37:06 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.16) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 03:37:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fdq2q3N3nhctBBS0LPujq/PkDZZZMzboRl3QTiqEMQCiOxK2kR0F8OIDFxd5Y6jSIQ9zzFOTds1+4ubbdnr3XrbAKK/JUVoIODimc2H5Gsgs5B1QSLJoK3PpWtN3tvdd8v0BXBPFF58UKUHI3WE5IwGY/BIrqLJngerfCDkzQjiOq75HlCuGOZENHNmj6IeLzCJYl91qCgcGe1e/bsAqS7JRRri6Bn+si/tbGXe12WYMdYlQbE7H1Q2B1Y3pqSPaJ1HYbqBJLMiJxEf6J12wTzqDQ2HiP56voWgVdtFM8xNLVYTc7xMz9E5sYiS4eOuYgvSiNK527L4uMRp0+OJeKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9goFgg7zX9sQ9GYYAbN4pnRFqaZdUQSnz7ydNy3GREM=;
 b=DQCug64RbrtBlLAPmqB4jMixjikdEnD/HXrsKHOMLQUUafaQ/BHKzCdz/7REKnVcn59zmzyT8prISLeSapJEoNwhauh0fAoeagN5BlQ5CeYgrbnZ1zLk9Sh1XCb8hMDSiPCRv/afjdXgke0Dx0CT/UhSQQD/pss8vR+OrphE7bvkNz2lewbILfOV3MUQc3GJlf6QhtEbyFyaVW6l2voEnrKMDC4WFdalv+oMQaSVxI/UDmlG3VX3n7JBVf9ipkt3qqQnb3LC6409mlan3Ui/JcIg2epLogCIdm9Yx8sCnwQHLzgFwXNiPIqqJMt+YkGmqJngH2mSe6nSYZncu0KEmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5269.namprd11.prod.outlook.com (2603:10b6:208:310::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 11:36:59 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 11:36:59 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip as
 well for PSR
Thread-Topic: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip
 as well for PSR
Thread-Index: AQHcXdVjFBCb/eQwwUmLJzTAbHIGE7UD5rGAgAJ2yICAAAsjAA==
Date: Thu, 27 Nov 2025 11:36:59 +0000
Message-ID: <712ee58c18870231fb0341162482853c6a44aa97.camel@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-3-jouni.hogander@intel.com>
 <aSYdX7eGVOMapiJ7@intel.com>
 <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
In-Reply-To: <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5269:EE_
x-ms-office365-filtering-correlation-id: 238d30a5-da44-45a3-2c7b-08de2da946b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?dlA2WlJaMXkyWFdYOHV6bFdtQnZKRE9BdkhRazBXc0Q2MXV2bk5JQWRKMEVX?=
 =?utf-8?B?Z2J1Vi9nOE1Da1VnN044MWpFMTFvTlIrWlJOdlpKc1VVTnhiV1NsNzVEakl3?=
 =?utf-8?B?RytyNlVzYjRmOUZCdXlCWUY1K01peHVhYldaV3ltbkVVb3NWM3RjS0xaUG5B?=
 =?utf-8?B?VWdzRWFOS25XTnJ0cm44M1BDbWg0SzI5bHliM3BUbHpEdEpXWjZTcFNxL1Rj?=
 =?utf-8?B?a0dzMFp0Ulh2V0c0QVErblpkeCtSQUFHbjkwRDNOVEFKSVFReHFjT1ZkNXpy?=
 =?utf-8?B?TFc5ckVpM1V5UlQrL1NkRTdjN2loT203SlhxWXExREg3M2xVVk0rbFBPOGM4?=
 =?utf-8?B?SFRtcWpQZkRlMzJ0SDhrbkxIZjF2cjFiZWhialIxalpDb0VBdnRxYVBON21M?=
 =?utf-8?B?aHpocnhTSlA3ajluMkQvb0tna2l4b0ZXclZiUENjNlh4dERXSTQza3RFRTJK?=
 =?utf-8?B?aHpIanZIWTNHeWJRcnBmR0JqQmZHRDNJSU1lZ1NzeUcwaFdHd3Byb1p6dkh6?=
 =?utf-8?B?VFkxQkplbXRROTR2SmlMNFovQmRHVE9NREdEbVNxZGxqTWdoSnRZbzh5VG8v?=
 =?utf-8?B?MzJkMVdsTDdpcE5wTDFKZzJRUEd3cTZqbFdqS1p6QXg3aW9SRkoxbDV4ekNv?=
 =?utf-8?B?MEhaVjJ0ZE0zSG4xaWlneThWODdxNjBpQjNmQkZibEFJL2h2NFBzK1Rqamh1?=
 =?utf-8?B?alJDLzV6VkhSZlFjeVRhM1FCOVdObklzN1NnV012aUp2WnVGZGFaYllFOEVG?=
 =?utf-8?B?TzNzY3N0SnpqS3h1eUZrc05HcDRMeE8vT1ArZUc5aVRnRVd1RlU3UkFVL2lE?=
 =?utf-8?B?U3NNVEcwangxMXZ3bUtScHBSQmxKWHZXOXdvWHd0emgyS0IvZVRQVUlpL2I0?=
 =?utf-8?B?RFNBWTRFb0o1UFZzazZzcUUzeWUydEJaU2U1U3dkT3lkM0xXV2dSS2I3TEVR?=
 =?utf-8?B?WUpXdkVSUVBPb1B3SXIxNWlPSk9aYVpTMHZyRnpESCtHQnJPVmYwUmtjTWpX?=
 =?utf-8?B?UUltOWRIMm5GRkhGRjV6SWtmUUNZRDd5aWNMd0xOTFRydGtsdXEzUmNHZDRU?=
 =?utf-8?B?bk1pMWJvTVBOYWlKNVZXZ2kwbEVoWnEzRFVYU3pKVEhBM3JoVVY2dHliMXYy?=
 =?utf-8?B?VFpFTDkxNzJBWnB3TVZVZjk4SnkrUis4a1ZhL3lJUDd2MmpyRzRuMThiWC92?=
 =?utf-8?B?L3pEZVUxRGFJMzlzNnZhSEgwYXNuayswVVFjOG5nc1kvbjdMVHdHYlBLNlZ1?=
 =?utf-8?B?RTNHYmF3amNERjhlNzN5STBGWkpRdVcyZHZaQ1pDT0U4bTIzV2ZxdElNWkI1?=
 =?utf-8?B?MW1wZzNJT0EraUNYRkE3aktYMkdtNmVjelZTb1BkL2N2NGN3TzI4bnRPOXF5?=
 =?utf-8?B?R2d5MzZENHR6MWdEZEpBc2N1U3EyejFUOHhsMHBmTzZJaGEwcGxYaEg2UFcx?=
 =?utf-8?B?TENTRDU4YnRTbzJoK0UyQWJyUjJvZzgwY3FHSFNBM1lpV0tqS0JRQitGTndq?=
 =?utf-8?B?L1F2UmduakkvMXYxYVNyMHZIRXRHNmljVEt0SFB2Z2xlUlNDejV1RHN6SlNQ?=
 =?utf-8?B?NkdrYWFDbHR3Vms0a0xYek9DV09QK2h6N3c4Yit0UFZNWVpMcXpLanByZktC?=
 =?utf-8?B?UmJaaytmanFsdHNhbGtOVU5CbkhEKzEyQ3lld3ByY0Fhd0JJVnROTktuNDdW?=
 =?utf-8?B?Ri9QSWNkWHlGMUxVVmVLcEFuTCs5aGNTSHBoMFZIUUNtekdhMWVwYW9VaFAw?=
 =?utf-8?B?U25yeEZHT3BvbzJleTVOTFVwejZPWnlqZEhWUVFYMmpnVEkyM2JqcG1OMlhW?=
 =?utf-8?B?VGxhR1I2WmNHS1YrN1ZUSGk4Y0pkZVRMbG9uQStZK1VJd0VFWXFzMHV0SFc4?=
 =?utf-8?B?STNza2FvdFcyb3ZURnJLZ2tkaERPZVp4Rm9VVm5RakE2clpPakJkemlsODJs?=
 =?utf-8?B?WHkxQmpMUlNKUlVLd0FuMVg3bDhNNldCL1FHVi9zUnBjd0xORjBhNEZYTFdK?=
 =?utf-8?B?b2xiZnNBTHM1Q2dNNzY1eXlNZnNodngvRHA0TFBJUkRiaWJDbTRrczVRdVBS?=
 =?utf-8?Q?8Arw5Y?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmFEeENEcW9PbGRLOGtqWmd5aUM3anV2N2lxbXNHTVYvSEl0WnhsVE9pOGh6?=
 =?utf-8?B?SUdxU0JLbkk4b0hVaGx1RG9FV1J0S0NXME0rV0x2OFZrbS9xc2duMjVSRysv?=
 =?utf-8?B?L0VIOFp0RmtVQldOSHJTbjJJTVRFSHZ2NDE1OHVnQ1BoQVlaSDJOU09TT09I?=
 =?utf-8?B?RFRGbHcrZDhUd3ZyMS9HUWxKaGJ1L0V0N0NzRmZsWVFWSFo5MTZBRFEvWWxl?=
 =?utf-8?B?VGI4MlZLVVY3eUprK2c0VVg0WWdjNGlLc3loVEw5ajJvQkxlUHd1c3NmTVRa?=
 =?utf-8?B?dWhtbDlEWERhQTZybVo4MnNKeVc3YkJWL2wxbnJ5S3hKWHFwdWc5K0l0blpT?=
 =?utf-8?B?OEJLZlRpaUpyZjlsYjcyRG9wMDE1ZlVmeEMwRW9wL2p5K3g3QzJLNkdUOHlS?=
 =?utf-8?B?OXZ6d2NjejFadm1FeEh0cmRxcVkrZzlYUmVkemVZSzRGWWh4bmdCa01ZQ1JI?=
 =?utf-8?B?VTdTK0ZXV09XNERueUhIWWJVRDNxVHdXQ2lqdEFJWkZUTVBocitzd1Q4ZzEy?=
 =?utf-8?B?UWF2eVNNYTVmTTJ3Z0NyVjlpdHpiK2paNFIvd0pMaVZmMnpwQ2M1ME1ZMGMw?=
 =?utf-8?B?N2t5Uncxc1VwTmRjWkJOK25MMjlSWDkxWjVvS1FZeXJKQkFnWGNUR0FXbHpl?=
 =?utf-8?B?WHJTT0FSRStuTDY4V1ZPNnVTUkdVU3NKb2VPeW1SRUx6aVpNNjNpSTZrbEhw?=
 =?utf-8?B?c1VoeHNwMHRSZS81RWFJbkxwajlBVi9PcFFWMTNZK1g3bEhmVTNkN2svOXhL?=
 =?utf-8?B?a29ENnBiYTM4Vm1TeEV4RkNFRkREb05JbktZVTIyNzM5UDA2UXpyTzJlK2R5?=
 =?utf-8?B?dkpSN2hma0J3OURWS0RHVWhyL1k0dVBmMi8xV1lVbUpLbllSK1NWRndQQnBD?=
 =?utf-8?B?S0NlS01XT2ZYSWNTSjB6eU8vcGpYaENwRW5abHl6dExxVkNmWUlmV3ZtcnpR?=
 =?utf-8?B?LzZyZGN6a3JIclJrSjBIMGdRV09SWEp2Nkd3Wkt2NW96N25yWGFiNWNYNmxz?=
 =?utf-8?B?TFJwZTZzbVYwc2RCTkRGb3U3R2dlTWx0MXhjeFB0NUV3Rkxlbm8zcDl3V2hh?=
 =?utf-8?B?ZFlOUVZpZ0NSdXlYbFZmN2E3ZXpmMlpXd3RuYzJ6cDkxMnFRU1dCMmUzM0lx?=
 =?utf-8?B?RzcwUXd6WWgvOGNLYTZtL0JjdS9qNENOOUh5T2pDVm5nZytOMHdrZ0dFZVho?=
 =?utf-8?B?emVYWUJXam1NOXhLdmtoRitiSDhxQWtpbmI1SUNlZlJYRWk2cmdnU1NKcXlj?=
 =?utf-8?B?dkw0ZmNjWk5pVXU2MUFSQmVENmJCWnNWeUkzQ2NZQjRaNjJYWnJyVHc4eUZi?=
 =?utf-8?B?ek45ZStUL0NPM1RySE56eDJLYmdJWEFaM3gzWkVZNjJXS09tdDIvajE4RDE4?=
 =?utf-8?B?V2ZxYkViVHpOTURUa012ODRhNERKOXYrMnFWTm9jQlVuS1NaRnpjWDI3UTc2?=
 =?utf-8?B?U0lKcGFTOXVHdlY4bS9iUjY5UTNmSkNOZGQ5NDRwR0hDZUY2RFN0b2pXQnFU?=
 =?utf-8?B?MkRvdUFzSWJNL25XS3NrU29NMTdmajJHRFNQWVFKWFJYL0pqa3dEUnpSM0hV?=
 =?utf-8?B?VHA2ZGt0M2FtczIvelZPc05HQUZ3aUdKaTR4bVY2Ynl6Ym5oWllBUWpVdU0z?=
 =?utf-8?B?cm42Z2FBaFBOM1RnQ0xES1ZYOEttbU9KenlQU0JTT3FEeDZGaHl5aTJuSHl1?=
 =?utf-8?B?d3JhdHA4bmpORU5WTVJZeFpMbHdwTW0yZS9xVjhHVHRmSDc0dkRkL3JGQmlX?=
 =?utf-8?B?a0FYaWs1M2dMZ0V5alNYMUFkMnZKajZoRnJLbUs4TjZBNVI3Y1VQUmhzSFFq?=
 =?utf-8?B?TFVOeVBkQ0EwVU15MnZ1eFB2bzJubW9nd3F2TGQwUnQyYWhCQStPSUUzWXF4?=
 =?utf-8?B?UzZXc01JcTRjUFNRTm5oeVJscTA1ZjFtK2JKQTNBMG1xNExtejNiTzBVelhi?=
 =?utf-8?B?ZjZmaFNwb2dHK2NybWJjSmg4alM3MlJXNzl2eUVaK1VEQUNYc1p6TndPM3Ji?=
 =?utf-8?B?OXdkYVNoWTQ5Y0hqWEpIQWh5Rzh2elZFV1FIZzdXTVlWZHlBeXFwVGVFWllW?=
 =?utf-8?B?czBoR29rOHRrMnRQRkxVWjhWdU4wZUFKZ3Z2NUNUY1JEZjBSazY3RFJzbW9D?=
 =?utf-8?B?UWE0MkFwRjVmYmFjRGV0dXo0eEJ4eHZkVHBHRllBVEZiQWMvS3FLdHQzeTdV?=
 =?utf-8?B?YmFhcEFKRm42czRVd3hqc2k0ZDlxVHg5MTczRXJWYkwxbitCRjhVS0Zoc2h6?=
 =?utf-8?B?cmhwRFFlL21zU0tab09laHBGWXRBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <706B4A78BF731F4FB64FBD1D1F8BE34F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 238d30a5-da44-45a3-2c7b-08de2da946b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2025 11:36:59.1763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M2nwkGqRfL1tZSZFo/335LAIeD0gmAB+xsyDWsVdF8/so7okFLo2NahbuF+dEmOLBRZ+kouFofrecxhCmwL1uW246ueyo1s3b2oZ73n+w9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5269
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDEyOjU3ICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyNS0xMS0yNSBhdCAyMzoxOSArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdy
b3RlOg0KPiA+IE9uIFR1ZSwgTm92IDI1LCAyMDI1IGF0IDA4OjMyOjUxQU0gKzAyMDAsIEpvdW5p
IEjDtmdhbmRlciB3cm90ZToNCj4gPiA+IFBTUjJfTUFOX1RSS19DVExbU0YgQ29udGludW91cyBm
dWxsIGZyYW1lXSBpcyBzYW1wbGVkIG9uIHRoZQ0KPiA+ID4gcmlzaW5nDQo+ID4gPiBlZGdlIG9m
DQo+ID4gPiBkZWxheWVkIHZibGFuay4gU1cgbXVzdCBlbnN1cmUgdGhpcyBiaXQgaXMgbm90IGNo
YW5naW5nIGFyb3VuZA0KPiA+ID4gdGhhdC4gRHVlIHRvDQo+ID4gPiB0aGlzIFBTUjIgU2VsZWN0
aXZlIEZldGNoIG5lZWRzIHZibGFuayBldmFzaW9uLg0KPiA+ID4gDQo+ID4gPiBDdXJyZW50bHkg
dmJsYW5rIGV2YXNpb24gaXMgbm90IGRvbmUgb24gYXN5bmMgZmxpcC4gUGVyZm9ybSBpdCBpbg0K
PiA+ID4gY2FzZQ0KPiA+ID4gcmVxdWlyZWQgYnkgUFNSLg0KPiA+ID4gDQo+ID4gPiBCc3BlYzog
NTA0MjQNCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3J0Yy5jIHwgNiArKysrLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiBpbmRleCAxNTNmZjRi
NGI1MmMuLjQyYzRjZTA3ZjhjMCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiA+ID4gQEAgLTQzMyw3ICs0MzMsOCBAQCBzdGF0aWMg
Ym9vbA0KPiA+ID4gaW50ZWxfY3J0Y19uZWVkc192Ymxhbmtfd29yayhjb25zdA0KPiA+ID4gc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhDQo+ID4gPiDCoAkJKGludGVsX2NydGNfbmVl
ZHNfY29sb3JfdXBkYXRlKGNydGNfc3RhdGUpICYmDQo+ID4gPiDCoAkJICFIQVNfRE9VQkxFX0JV
RkZFUkVEX0xVVChkaXNwbGF5KSkgJiYNCj4gPiA+IMKgCQkhaW50ZWxfY29sb3JfdXNlc19kc2Io
Y3J0Y19zdGF0ZSkgJiYNCj4gPiA+IC0JCSFjcnRjX3N0YXRlLT51c2VfZHNiOw0KPiA+ID4gKwkJ
IWNydGNfc3RhdGUtPnVzZV9kc2IgJiYNCj4gPiA+ICsJCSFjcnRjX3N0YXRlLT5kb19hc3luY19m
bGlwOw0KPiA+ID4gwqB9DQo+ID4gPiDCoA0KPiA+ID4gwqBzdGF0aWMgdm9pZCBpbnRlbF9jcnRj
X3ZibGFua193b3JrKHN0cnVjdCBrdGhyZWFkX3dvcmsgKmJhc2UpDQo+ID4gPiBAQCAtNTM5LDcg
KzU0MCw4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoc3RydWN0DQo+ID4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ID4gwqAJaWYgKG5ld19jcnRjX3N0YXRlLT5kb19h
c3luY19mbGlwKSB7DQo+ID4gPiDCoAkJaW50ZWxfY3J0Y19wcmVwYXJlX3ZibGFua19ldmVudChu
ZXdfY3J0Y19zdGF0ZSwNCj4gPiA+IMKgCQkJCQkJJmNydGMtDQo+ID4gPiA+IGZsaXBfZG9uZV9l
dmVudCk7DQo+ID4gPiAtCQlyZXR1cm47DQo+ID4gPiArCQlpZiAoIWludGVsX3Bzcl9uZWVkc19l
dmFzaW9uKG5ld19jcnRjX3N0YXRlKSkNCj4gPiA+ICsJCQlyZXR1cm47DQo+ID4gDQo+ID4gSSBk
b24ndCB0aGluayB3ZSB3YW50IGhhY2sgdGhpcyBpbnRvIHN1Y2ggbG93IGxldmVsIGNvZGUuIFdl
DQo+ID4gYW55d2F5IGNvbnZlcnQgdGhlIGZpcnN0IGFzeW5jIGZsaXAgdG8gYSBzeW5jIGZsaXAg
KHNlZQ0KPiA+IGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAoKSksIHNvIHRoYXQncyB3aGVuIHlv
dSBzaG91bGQgZGlzYWJsZQ0KPiA+IHNlbGVjdGl2ZSBmZXRjaCwgYW5kIGtlZXAgaXQgZGlzYWJs
ZWQgYWZ0ZXJ3YXJkcyBhcyBsb25nIGFzDQo+ID4gYXN5bmMgZmxpcHMgYXJlIGJlaW5nIHJlcXVl
c3RlZCBmb3IgdGhlIHBsYW5lIGJ5IHVzZXJzcGFjZS4NCj4gDQo+IElzbid0IGFzeW5jIGZsaXAg
YWx3YXlzIGluaXRpYXRlZCBieSB1c2VyIHNwYWNlICh1YXBpLmFzeW5jX2ZsaXAgPT0NCj4gMSk/
DQo+IEFyZSB5b3UgY29uY2VybmVkIG9uIHRoaXMgc2VxdWVuY2U6DQo+IA0KPiAxLiBhc3luYyBm
bGlwIG9uIHByaW1hcnkgcGxhbmUgKGZ1bGwgZnJhbWUgdXBkYXRlKQ0KPiAyLiBub3JtYWwgZmxp
cCBvbiBzZWNvbmRhcnkgcGxhbmUgKHNlbGVjdGl2ZSBmZXRjaC91cGRhdGUpDQo+IDMuIGFzeW5j
IGZsaXAgb24gcHJpbWFyeSBwbGFuZSAoZnVsbCBmcmFtZSB1cGRhdGUpDQo+IA0KPiBJcyB0aGVy
ZSBzb21lIHByb2JsZW0gaW4gcGVyZm9ybWluZyBzZWxlY3RpdmUgZmV0Y2gvdXBkYXRlIG9uIHN0
ZXAgMj8NCj4gUGxlYXNlIG5vdGUgdGhhdCB3ZSBhcmUgbm90IGRpc2FibGluZyBQU1IyIGF0IHN0
ZXAgMi7CoA0KPiBXZSBhcmUganVzdCBwZXJmb3JtaW5nIDEgc2VsZWN0aXZlIGZldGNoL3VwZGF0
ZSBpbiBiZXR3ZWVuIHRoZXJlLg0KDQpJIHNob3VsZCBoYXZlIHNhaWQgIndlIGFyZSBub3QgZGlz
YWJsaW5nIFBTUjIgYXQgc3RlcCAxIGFuZCAzLiBXZSBhcmUNCmp1c3QgcGVyZm9ybWluZyBmdWxs
IGZyYW1lIHVwZGF0ZXMgdGhlcmUgYW5kIG9uZSBzZWxlY3RpdmUgZmV0Y2gvdXBkYXRlDQppbiBi
ZXR3ZWVuIGF0IHN0ZXAyLiINCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBCUiwN
Cj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPiANCj4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0
IHVhcGkuYXN5bmNfZmxpcCBpcyBlcGhlbWVyYWwsIHNvIHlvdSBjYW4ndA0KPiA+IGp1c3QgY2hl
Y2sgZm9yIHRoYXQuIEkgdGhpbmsgd2hhdCB3ZSBuZWVkIGlzIGEgd2F5IHRvIHRyYWNrDQo+ID4g
d2hpY2ggcGxhbmVzIGhhdmUgYmVlbiByZXF1ZXN0ZWQgdG8gZG8gYXN5bmMgZmxpcHMuIFdlIGFs
bW9zdCANCj4gPiBoYXZlIHRoYXQgd2l0aCB0aGUgYXN5bmNfZmxpcF9wbGFuZXMgYml0bWFzaywg
YW5kIEkgdGhpbmsgd2UNCj4gPiBjYW4gbWFrZSBpdCBkbyBleGFjdGx5IHdoYXQgd2Ugd2FudCBi
eSBqdXN0IGRyb3BwaW5nIHRoZQ0KPiA+IG5lZWRfYXN5bmNfZmxpcF90b2dnbGVfd2EgY2hlY2sg
ZnJvbSANCj4gPiBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKCkuIFRoYXQgc2hvdWxk
IGJlIHNhZmUgc2luY2UNCj4gPiBhbGwgcGxhY2VzIHRoYXQgY3VycmVudGx5IHVzZSB0aGUgYml0
bWFzayBhbHNvIGNoZWNrIGZvcg0KPiA+IG5lZWRfYXN5bmNfZmxpcF90b2dnbGVfd2EuDQo+ID4g
DQo+ID4gVGhlIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIHRyYWNrIHRoZSB1YXBpIGFzeW5jIGZs
aXAgcmVxdWVzdHMNCj4gPiBpbiBhIHNlcGFyYXRlIGJpdG1hc2suIFRoYXQgbWlnaHQgYmUgYSBi
aXQgbW9yZSBvcHRpbWFsIGluIHRoYXQNCj4gPiB3ZSB3b3VsZG4ndCBjbGVhciB0aGUgYml0IGZy
b20gdGhlcmUgd2hlbiBzb21lIG90aGVyIHBsYW5lDQo+ID4gb3IgdGhlIHBpcGUgaXRzZWxmIG5l
ZWRzIGEgc3luYyB1cGRhdGUgd2hpbGUgdGhlIHBsYW5lIGlzIGFscmVhZHkNCj4gPiBwZXJmb3Jt
aW5nIGFzeW5jIGZsaXBzLiBCdXQgbm90IGhhdmluZyB0aGF0IGp1c3QgbWVhbnMgeW91J2xsDQo+
ID4gZW5kIHVwIHRvZ2dsaW5nIHNlbGVjdGl2ZSBmZXRjaCBiYWNrIG9uIGFuZCB0aGUgb2ZmIGFn
YWluIHdoZW4NCj4gPiBhIHN5bmMgdXBkYXRlIGludGVydmVuZXMgYSBzdHJlYW0gb2YgYXN5bmMg
ZmxpcHMuDQo+ID4gDQo+ID4gT2gsIGFuZCBuZWVkc19hc3luY19mbGlwX3Z0ZF93YSgpIHNob3Vs
ZCBwcm9iYWJseSBhbHNvIHVzZQ0KPiA+IHRoZSBiaXRtYXNrIHJhdGhlciB0aGFuIGxvb2tpbmcg
YXQgdWFwaS5hc3luY19mbGlwLg0KPiA+IA0KPiA+ID4gwqAJfQ0KPiA+ID4gwqANCj4gPiA+IMKg
CWlmIChpbnRlbF9jcnRjX25lZWRzX3ZibGFua193b3JrKG5ld19jcnRjX3N0YXRlKSkNCj4gPiA+
IC0tIA0KPiA+ID4gMi40My4wDQo+ID4gDQo+IA0KDQo=
