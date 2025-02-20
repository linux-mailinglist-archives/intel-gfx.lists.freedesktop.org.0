Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A75A3D5CA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 11:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8845A10E904;
	Thu, 20 Feb 2025 10:02:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xg2mEsCU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350BF10E904;
 Thu, 20 Feb 2025 10:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740045750; x=1771581750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kFRGD+EM8GtyRFjfhN4x76h5WMghLLVSwT1tWWqSDi0=;
 b=Xg2mEsCUkiFOFaXGUIHEfVo74X/o9mGnxerDXIsxVK32Fjh+xLqAa7rS
 nyylVWkhFcfZihjDQRta7HcKMC81yc+g6q4AatysjwhV3TKKprm0IQDjy
 RxC+J7Ealj5bhGeI7KwDS4ImshkPEMAq2kyOeSLus/AMkY8E4lLifm9JH
 1omYh4W654YlDVPOXZb/1gfTln8XL3XBVg+ymP90nzEwMXgCwMaz8tqdw
 w1kddMJCsKe+t470KLQmYA1wif38UpaB3TlLaQK6eRHodkwPcuvkb1e2d
 LIDlqlW5UT1bxuTxqtVPppYxwDJlAUUJq2EJXPhv2yyyapcJ4cVR8FNgh A==;
X-CSE-ConnectionGUID: wb4M+eMGTuClFexFw9Hy2Q==
X-CSE-MsgGUID: MaCENkhYTGWVlXgI5nHULg==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40937452"
X-IronPort-AV: E=Sophos;i="6.13,301,1732608000"; d="scan'208";a="40937452"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 02:02:29 -0800
X-CSE-ConnectionGUID: sNoPFOwLRAu+dpjnFplRLg==
X-CSE-MsgGUID: TT7hik1cSZa0cBzybSuWvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115491384"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 02:02:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Feb 2025 02:02:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 02:02:28 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 02:02:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NAgkx7h1hDxg3TH0OQWpa/CzYeI11o5//V+bQC5OxAveNTJ3ju4wWeMVJ6yJRchohgZovjZXcVAQ3dJSQivqjKRcBcXM5+rV4z+IwzxtVUK8pMRLxmx99JD0ay6iMjEjOForuTJl9NAET1BFcqoO8bJMEgIL4zac91DWjpfy+d7HDLlq+gzhVGsTzRZS6uf7doIzJ5RRHmbZaQRGgZpGGfpUoHFDAJE1u1eNexUPe4EvunNX5jqAMQLP17Be2sZ60xtbbKqOeykjTKq2pqzQZ+YBYMLIlBbvll5W1AZq2X2JvIE1PmwJG8fFV90QQInqi6YCik9Ba+Be/Cl6svft6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kFRGD+EM8GtyRFjfhN4x76h5WMghLLVSwT1tWWqSDi0=;
 b=oBYVIG2n+m9NxNRAiRLco6Hm2XwMQSlF1O1PxRi5u04JtcZBRLbqFqbUaIWcOgtsSmlMp4472LIGZCJtpVO5ER/S8xd0K/Mfb39yG4tChi8BX2W3x0GBzWq8grC9ObKZ9aBJqz68aJd4MiH4WHBARFjMuj+nvFw1FMiv/lULs/lfvk95XGA9s/70tnvG1L7dJra1G7glFZNs+dS25PbNoJWQ65h90HItutchxWjbaB+XIJtCbn67wSZIWvnmbrSxdRdNLQbgZYEi1A7BUT9bbUFB4LIHREUhRxkwPMa+M+ol5oybPVmssdNOZAt9/Yl5Zsu9rip+cVN+rUi0Ch0MqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8466.15; Thu, 20 Feb 2025 10:02:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8445.017; Thu, 20 Feb 2025
 10:02:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915: Reverse the scanline_offset if ladder
Thread-Topic: [PATCH 2/3] drm/i915: Reverse the scanline_offset if ladder
Thread-Index: AQHbear/XdnHJNOM4kuNg+UrkOycTbNQCb0A
Date: Thu, 20 Feb 2025 10:02:25 +0000
Message-ID: <056ff2f0877c17a92af4350d8aabf819df97fa4c.camel@intel.com>
References: <20250207215406.19348-1-ville.syrjala@linux.intel.com>
 <20250207215406.19348-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20250207215406.19348-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4771:EE_
x-ms-office365-filtering-correlation-id: 4ea5d1f7-2cf6-47b7-b5dd-08dd5195ad6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dGlpbzVtdnVsU2M0ZWtsaHE4ODAvNGw4dVRKYzIwd255Y3F0OWY0Z2xoNHlV?=
 =?utf-8?B?VTIzWUVaNmVJOTcreEJjMnhBK0J4UUs0QzEyc3JNdHNZZWFKemFpV0dFOWs3?=
 =?utf-8?B?YjJYL3ZnUWV2eDh1TnpjN1dMeFJvVldzS3I2QmRpbXZCc1E5MDZ1Yi9BRHNL?=
 =?utf-8?B?VzdEYi8rZlg4MTFMOURoQi9IaGZoZEoySHp3MjVFOVFqNEhmblJzQmNVSUh2?=
 =?utf-8?B?d1FRNE00U2dGTldSNlE0b0ZjanlIYnp6dE5sOHAyb1RPMDdRcFlucTh4S3l1?=
 =?utf-8?B?bTkvdzQ5MTBDYnRuTnQ3NUY2QnhuNlg4UmVkb2Rac0ZBRVFBWXF0bU1HRjJN?=
 =?utf-8?B?UEdpdVRaVStNRGkvVkcvZWJyazdoSy9ZWXNjQTVqNlgwS0NVbmlSbTJwdjdP?=
 =?utf-8?B?Z2ZDNWxJU2t4NkY0RGJPaDBTaTRrcnZMNnpESDZxMXBlYW1hRzFBdHlycDMw?=
 =?utf-8?B?eFNQVE8veCsxNXFFQ2x0VFlSYldMM3I1V09rbGJRVGQrcWZJYjBCMzZnamxR?=
 =?utf-8?B?aDhHVWJuTzdWbEIzVlZLZ2ZCcjhZNzB4TXBTZGJHNlFWRERBcmZWUGZ0T0RO?=
 =?utf-8?B?V3c1eVdMRGhvUmdBbkI5M0x2SWc4c3QzOURUdFkyallCMmhkRkJhNEVEQndG?=
 =?utf-8?B?YjZKbDRoUGxyYk9yKzZJU2c4VDR5WWMrVHJxbnhTUzdhaU42RFZwMWpGcmFC?=
 =?utf-8?B?cVZmbjhtWVM3TElEMzIzcHNHUVBXKzQwUlJSQ3IzR0V2UEthQUpLWXlnZWtW?=
 =?utf-8?B?c3RNbW1FeTI5elhtbTJiV3NzQXNhVUh2Z05xUlRjK2pRNGtxSXVvZkNSeUdN?=
 =?utf-8?B?WUdjU0h5V0xLcFRiQm45SGdQd2EvZi9ldlFqL2hSRW9JWkFQcGpSUnRUdlZK?=
 =?utf-8?B?QVNpRVFXekorMXlxeHJCakRxaWxOT1hQeVpZTWQxRnE0R01pVHRKMXBUdXFS?=
 =?utf-8?B?Rm1RT2dpc0ZwV2xGQ3Vibmt3VEUzOHRsV0JndkVHMjMzZlJNcnYrVkEwbGRr?=
 =?utf-8?B?SkxxeXk4dnVINStMQnB6dzVTUXJCLzRkTWM2ZkpBVmtJNVpob0lrSGVhZ3hQ?=
 =?utf-8?B?cFRHbVRPcURNcFdDVG9EbU9RZ2JqT0pFakhoL29iVk9sQi9tU1YzSG1KY0Qx?=
 =?utf-8?B?S0RnTk4zdGQzb1BUcFRDNExzZ2JhdkZwRWsvVmlSV1hzNmNjcUdGTGlNcVlk?=
 =?utf-8?B?SlNyUGJ1UWJQTnJ3aFpyN055ODhXa3A2NlVicjlsYXJxeGk4WWxWK3R3ZzZj?=
 =?utf-8?B?MnM0NkIxWmtkOWhrYk5mRFNzbTAxTTltanJpS1pRZ0gwNWMrNDlINDRwS09l?=
 =?utf-8?B?MStSU1ZmdEFwMStUUzFsZlRyRWFmOElseWtRVkVxeE0xQk42UzlINFVxMG1j?=
 =?utf-8?B?eSs0RjFjMCtIQ3E5U1hCMkJNWVdscFdEYjFPQStnb1MrTndUbU44TWRXT1ZR?=
 =?utf-8?B?cTBWaUhLOUZEcDBObEhGbnNaa29EcmVMdmpUN1JJYmtISmx3SEgxZ0dNZFpG?=
 =?utf-8?B?TFFrYmJnTXI4S2ZQQjlJcVRiUjBoTDNRckJjWmJPdVRBWVdRd2h2am90R2sx?=
 =?utf-8?B?a2ovYlVQbnFaRmE4a0dQdmJ6bkVEVGIxRmd4YThEN25ocVJ3ZWVxd2ZQRWhT?=
 =?utf-8?B?UERnUGFrcWIvV2kwZEg1Nm42WHRXYjJVcVNEdThhZFl4VmFML2Y1ckRGQzVs?=
 =?utf-8?B?ZGsyU091OHFwRTVrVkc3SVhaSW1ua1BDblhUNnRTSzllS1Yzc09pd3lpWkdy?=
 =?utf-8?B?YmkwQVk1NGt0bjliSW1aWmdIRXhLcHF4VFhzNTFQVWJHdEdod0lhTDhwbWhw?=
 =?utf-8?B?VktjckovTDlvVTBzMVBsbzh2a2M2MDFNVGN5ZDdhVDB0MDdKVGZQUzRGYlFu?=
 =?utf-8?B?SWRpdE1qZTBWQTBQYmNZYzBEVFo2N0pBaEx4RVp2UlpjUjd3Uzg2ZTJPcGVL?=
 =?utf-8?Q?R+iok1mVYoKxnuOXiODFeJKC8lu7PUCm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTJLcVZNN2JnMFliU0xEZUppNWxlQm1KYXk1YmZmYitROVB3aFZacmlLTkha?=
 =?utf-8?B?dXpjcHNzbGtGUllVbzdydm9jY2VjZFdTMmRramRKUWNuUnFUTHNQRm8yWmFn?=
 =?utf-8?B?Y1QyL3p1OUFGZVpISGd5dEtTRVM3aVh6YlRHQ1ZGOEFrUGpLQ2dNdXFsSVN1?=
 =?utf-8?B?VGVYNWxnMWdjSTFlSENLWmZDYnBpdXpXaUxnK3NzVHNid2dsWk5BeHhkMXdm?=
 =?utf-8?B?NHlMeTgvaE93WnlqV3JRL1FnaXR4U05rYitkZkJpMUp3SjNOSE4yRjZERldY?=
 =?utf-8?B?R0NHNDFZak9zM3lLRDZUMjBHZDdFVDM2bEI5a1RxUVlzODJwNDVVTStiYlYy?=
 =?utf-8?B?U0ZnWHZIQVMyWEVGU21qWFVRWjhJWm1OZWc1dml1cmo1QjYzWHF6czY2UlRm?=
 =?utf-8?B?cU4xbkd0UnFKWlBMY2UyLzgzRXRiOTV1bHV1YVhPaElVNXl0UFhRRHJnc3Mr?=
 =?utf-8?B?VjBlNFFMUnRGbHB6TFlST3Z0YTNaMkNRc0Z5U1hPOEhVUFNnZlhvSkFxVi80?=
 =?utf-8?B?ZGE4SU5ZT2dNcG4yNS9OV1lmcWZDLzBrNW5kSlpXWXp2aDhUZkI3Wmpsa0RG?=
 =?utf-8?B?VXNOcTZtV0k1Y3dRNWxGNXpTcExBWmhvWDVPVVFjVzZObkV0MzVNNVVyRFcv?=
 =?utf-8?B?NFk1aGc2bVpMRnU5ZDRUYzBNVjB2TmRxR3QwWlhCSXNPNjJJQmY3Ry9yMlV2?=
 =?utf-8?B?Yk85VlAxK2VmU21OZnp3SXc3RE9xanFOakJ1dS8xa002dVkzMEx5MXV0V082?=
 =?utf-8?B?TDA3MHBXVlV4ck9yU2srL0VjeG40RzlLUGZKMitHeDBhdGZFdnBhN0dpN2Ev?=
 =?utf-8?B?aitmQUJkc3Rqd0hBZjAxendTYmFJUTJlVGJ5Vkl5anBndjZaVUNRSHBuWlNG?=
 =?utf-8?B?ZFRHSE1HdzlsbW1yazEzY2RiL21BZGdyNG5uT3hReWE2cFc1UG9GdVlTcE8y?=
 =?utf-8?B?VFdObThzWUZSK2FDOXFBSFlSbjQ0K25BN3RycDNRZnVRZnJUdFhCRkhLbG4r?=
 =?utf-8?B?ZkNvRFVVaEFMazFoczcycTF6OUZXUUpQTkJzVnQySitVRzQvM05ETnMwMjJa?=
 =?utf-8?B?QkJZTUFCeE94Qmx0MTVkaWJJNzd0b05EbnlGSDNOMVdvdGZRRTkvZmlJVEVY?=
 =?utf-8?B?SnAvWk85ajdDQUdrVWd5aGRJVzZQY0hKZlZwKzluQnNoc2lsTnBoSDAzbE5s?=
 =?utf-8?B?Sm5WZ1ZFanZpajdhMkhTNGtoTnNzeDNHN3pCV2RvMk5leHJBc050TEZua0My?=
 =?utf-8?B?OWFYOHk4TGt1clJBQnJFdHM2OW5pcDdZSGJQREdMcHJweVhiMTFUa205Ykx4?=
 =?utf-8?B?OGZNRTRMOTNxTGpkVEpEeC90elA3YVdJbTh4MHdZZUJVY1JEOHdYSTltbyta?=
 =?utf-8?B?SUxOQU9ydnJOT0JPd2RsRUVPQS9YV0NRbktFQVNVOUtVS2lSZ0hGazRURVQx?=
 =?utf-8?B?RWJPaytvRTVZaWZVcy9HRCtuRkVmUml1WWJZcDJDdmxzb3gzMnBCTGNCMWkv?=
 =?utf-8?B?TDdNbDRWd3p0VnZMaXlGTkJ5aFpmaGdQNWRQRWdyZFFDZWFPc3BhcEVaZjdM?=
 =?utf-8?B?WkNOaVBjUzQvK1ZhOU5EbmZxRnBjTHp4N3g3ZWN1Zmd6KzAxeUIwMXlZNTRO?=
 =?utf-8?B?aGZjMXgwL2k1bHVMQWltTm5pdGQwRHNtaHZzMzZVcHlHM1lLMStjWUNKd3NP?=
 =?utf-8?B?bFBaQ3NIRGJhdTJ6VkYvS1VPdlp6a2hTRVFXZmdISHVwSWdXeTl6WFAxeUEz?=
 =?utf-8?B?MldiTE5NQUVZMG1PU08vdW03QWFWbWNKT3BBeXN4QzJ3bFllZVFLc3IzYVRX?=
 =?utf-8?B?RFFzRW5ZNUdmZ3Uvc212T3NVeXdWdnBJQ3A1RVE5UVVHTXBuNlRlUiswejF1?=
 =?utf-8?B?THNZeEVVOXVZTUNQU2YrSnVSa05kUi9JUTBGTm91aFBudlhsVU4wMVMzWmVN?=
 =?utf-8?B?eGxQb1ptMXdTREhaQytNeWVlMzFUZVVYUExKdWNhRlFSWDFoRkUzbXRQNldq?=
 =?utf-8?B?RkVNUkp4ZlVrRHRzdGVVU25FQmVqeWptRHl1dU9nMHlpUTVhektxTTJWZWlF?=
 =?utf-8?B?Zy9zWU11Z2E1Z3lCR3lMZW1kcWIrdmx4U2lQc1RMUDdLVGNVbGM3RUdRVUVa?=
 =?utf-8?B?Ym9CbHdEUHNuZGlUZjBkNitZT2RPK1AwTmlaRnpLWTNkVXRvb0Z2N2xPeTJ2?=
 =?utf-8?B?bmZKK3FrVTJLWnI3STN4T2I0NkQzR3JFc21WcThtdlZBR3ZBUEdEUWRWeHVq?=
 =?utf-8?B?dE8xZkkxUldzTS9iT0tIZURsWkx3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D44130050766B40AE2D90318B3D98B2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ea5d1f7-2cf6-47b7-b5dd-08dd5195ad6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2025 10:02:25.8075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3yqcGxvitMnk5HkbCfylGIgKlAyglgHhUN1SZWc6h1yIdy7kgHZoQWYIoqfqPSPSWmKznolD04NXdOSs/xMUqJG9cEZkkPFNcQQEdp+V23g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
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

T24gRnJpLCAyMDI1LTAyLTA3IGF0IDIzOjU0ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTWFrZSBpbnRlbF9jcnRjX3NjYW5saW5lX29mZnNldCgpIGEgYml0IGxlc3MgY29uZnVz
aW5nIGJ5DQo+IGZ1bGx5IHJlb3JkZXJpbmcgdGhlIGlmIGxhZGRlciB0byB1c2UgdGhlIG5ldy0+
b2xkIHBsYXRmb3JtDQo+IG9yZGVyLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMgfCA2ICsrKy0tLQ0KPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gaW5kZXggN2Iy
NDBjZTY4MWEwLi5kZDkyOGQ4OTBlM2EgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBAQCAtMjI0LDEyICsyMjQsMTIgQEAgaW50IGludGVs
X2NydGNfc2NhbmxpbmVfb2Zmc2V0KGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiDCoAkgKi8NCj4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIw
IHx8IGRpc3BsYXktDQo+ID5wbGF0Zm9ybS5iYXR0bGVtYWdlKQ0KPiDCoAkJcmV0dXJuIDE7DQo+
IC0JZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMikNCj4gLQkJcmV0dXJuIC0xOw0K
PiDCoAllbHNlIGlmIChIQVNfRERJKGRpc3BsYXkpICYmIGludGVsX2NydGNfaGFzX3R5cGUoY3J0
Y19zdGF0ZSwNCj4gSU5URUxfT1VUUFVUX0hETUkpKQ0KPiDCoAkJcmV0dXJuIDI7DQo+IC0JZWxz
ZQ0KPiArCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMpDQo+IMKgCQlyZXR1cm4g
MTsNCj4gKwllbHNlDQo+ICsJCXJldHVybiAtMTsNCj4gwqB9DQo+IMKgDQo+IMKgLyoNCg0K
