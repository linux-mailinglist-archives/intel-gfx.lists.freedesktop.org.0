Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC27AA87782
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 07:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4C310E0AB;
	Mon, 14 Apr 2025 05:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JOuC7ihN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1477C10E0AB;
 Mon, 14 Apr 2025 05:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744609534; x=1776145534;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=yFdlVxNfopalq0mG6/C4XNJxrVeNV7T9A6y7wiKSdzE=;
 b=JOuC7ihN5Qt7aaRVktO4FeBZcQfreLLRhL94WXHLiNvVYd+u9KIOwl4s
 jLMUzDH4wkumkSjZc6ekzMO4fAvDsgesQeMuVmHJzt6fviU82qQZYq0kW
 H/yvWhSE/vBw+AyYkvxKtcpFQNMXDzSXL5kOO78lCvuaIJbMkRymWq73S
 oJB8RttDg7sHEtFKi89a3gf4u2WGYxrYOZmufZ5Zc49l1dM18G99aIi+6
 Fe0TQUj5vc0AqEh6xT6kj+advRHCJ6tk2OeIPJvPK3j5xvfrUhrfr5mJZ
 O6S+0tuP2eo/aPCmdlXhdRCkznBDlVqKctjEsLwMwdX35TY/uo/jsQ8Bi g==;
X-CSE-ConnectionGUID: +wT3Eca9TmyQZYJPS/w7pg==
X-CSE-MsgGUID: V5eqq2KSRserQChpyITBfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45951032"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="45951032"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 22:45:31 -0700
X-CSE-ConnectionGUID: Jg8IZzVwSxaRaE5je4bGww==
X-CSE-MsgGUID: DaskltPXQsm+XU/SQRw52g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="130263207"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 22:45:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 22:45:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 22:45:31 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 22:45:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=teYa5+UTG7TCqi2cWxDmntgTUKH6P6A4kunqVkgZXx+Ty8w9k9P3hh/K39YbV9NqgIQC/SSC4WCDeZ2wYQOjYdtiMZxYobpWKgpwQQHN5Q9z85Si+cK/c7/bnpJJF2lCO2Uie/iHvBB9777F8/zAeKU76eCa+1qgBh2nZOhHeY/URDDwwNadD3Q6RVJc+G6C9s34TkvpJ+fy3PALMdpRgm4ewr+jiSt4tTjtOtaXYSu8GeiYLICUMgCQBw+X8zILG3Ttei8spakYS8aepCwQzYCuV2vco3q5QW7Qu57uqWjU6F5alUWz/nY+LVxXYbUojMP8GuSLJAZXRgTAggwrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yFdlVxNfopalq0mG6/C4XNJxrVeNV7T9A6y7wiKSdzE=;
 b=WiV4txpt9pSYtUniMbSsXm+238uenDgYjbvySr8Lu9K8eYXkD2U95WrLY9fNxr+gy2tnYk1EkPOaKTV4ygdptQ5xduE2SmBug0PY2OG5AvQEIETROZfz1csAVxCRpuUF6y2O/mGranjDP6pOPjcHIy6D/QwKsdUFHJUfAfASYU3nFJObF0RPsGvRttqoaz6H5f9SmsQEa5WTpABPVi6q883RBSsN5FL770SH9auYCAICOnvGeR9CEgoY06Swgk40izDlTgXDW5kUchBVLQsSN63G452T57U3o+37MYcpQN/1hUhGkSnJOxdEsrMR7pO9dJ3m9UKc/SxIgjSLkB8gmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Mon, 14 Apr
 2025 05:45:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%3]) with mapi id 15.20.8632.030; Mon, 14 Apr 2025
 05:45:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for
 MTL onwards
Thread-Topic: [PATCH v2] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for
 MTL onwards
Thread-Index: AQHbqRMuO0KaGgaecE+R3KOCCW6qErOa+OOAgAe1ToA=
Date: Mon, 14 Apr 2025 05:45:23 +0000
Message-ID: <d07d03c0272fa309dd34ac60aac2d7d268a30524.camel@intel.com>
References: <20250409054909.968531-1-jouni.hogander@intel.com>
 <08dfcf42-b58a-48b1-a602-de2a6f783d18@intel.com>
In-Reply-To: <08dfcf42-b58a-48b1-a602-de2a6f783d18@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6193:EE_
x-ms-office365-filtering-correlation-id: 46420052-e444-47bf-f9fb-08dd7b178cec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WlQvczdNOW5iTjBCS1ZaMzFJc2xtT2lNaEhBdmljZXljcmozYnJRaC8zcXE0?=
 =?utf-8?B?K3hyS1pMTWczWWMxNjQ0eExWd1dORnFMaHNkUWtlNGRXOHNqbDgzajNKUWk4?=
 =?utf-8?B?bTZWZnRxc2Uwb0U3T2x2d01TR1NkTWxsaVNCOERHSHdCMFl1QTRwcTRyS3l0?=
 =?utf-8?B?NU5kWDN2bkh3K0o5ZmxLVlVMMXNsUWR1enpCZkdRZlp1Nkg0Q1lMVmd4WlNN?=
 =?utf-8?B?S3pJK216dTFtQmpWTlB4YTBoOFk0WnM5ajZKdlhHRkVXYnRGalJsWkxnZDZI?=
 =?utf-8?B?RzFaeGZJdDdlWXV3R1JOSUszTkgxcnZIbjNUMlRneDcrWWQ5ajd1VFRueWpD?=
 =?utf-8?B?UXNKM2J5bVJrdTdwSy9abzB0NUFsK1I4RWtIbDNsNFR6ZXByZGJFZ2h3S09R?=
 =?utf-8?B?eU1hSTAwT0ZRVmU5b2dwd1hZUi9lbkV2MVFCK2tmZm1KNE9MZmMxVkVQY1BC?=
 =?utf-8?B?WFFBREFUN2ZOQjhZeEhzajc3OEFsRFc3QmdyRkkwbk81b05uVHo0b3h2VWxs?=
 =?utf-8?B?dzdWYWU3MkUvN1hCRUlyV1B4SStkamk4MkMwVUQ0WXhtcUo5cDZ3Qkg4WXRs?=
 =?utf-8?B?d094M1JpRmxpejRHRmRvcWVJUTdmQXFUWGFFWFYvMFB4ZlFPQ254ZUUrcExV?=
 =?utf-8?B?RUJuQ3FGZU9zRGQyWnMxOEJEN2I4NnZveDh4SEJwbzE3Qnh2MWtKTzFpSWZw?=
 =?utf-8?B?VUw0c2x5cmJtYkd6ZWJNcmZ5clRtVFFRU2tCaldWdGNzbTVSbHNGdHhGTkMr?=
 =?utf-8?B?bE5RcW1hUFVTdlJxd1U4NkVOSmVKN3NUcm9sOWxKTVdQc2FtZ25Kem44djM0?=
 =?utf-8?B?d0g3c00xeDJuUDVwQ2dacHFpQ0YwUmdPaGdvcVNsSE93ZjVPWHpVVURVcG1N?=
 =?utf-8?B?Tmt2TzA0U0lZb3ZSY1hESEVSZkpQcE1URTNrdHQxbDQwLzdTK3NRd09vWVgz?=
 =?utf-8?B?NEhxaWVrK0oyVHZrTjIrSnI0dVpWRFdjWEFYZW9IT1o5Q2xJNWJuaDdNc2Qz?=
 =?utf-8?B?Rlg5eFo2NEQ1RklvZlpZc2ZqMDREczBkaWFxQU0rS3ZCNnJPeHVVMXBHNHJP?=
 =?utf-8?B?VHR1N2tmTFNkMWVlY2hYemcwOGdLRmVWOWVNSXZnbFJzYyt1Y2JiaktYcm9M?=
 =?utf-8?B?MUs3dERlZnBHT1Fndmc3OGZ6ZFZGemlZQVUxOTBGV2dRSjc1YkdUQU5DTnFt?=
 =?utf-8?B?STZTdzdZUEFCQ2w3ckVtVSt1dHZrbGF6T25QS2MzL21JcXdmT0pxWkNNMmhP?=
 =?utf-8?B?Y1BRNkgzNXRJZzNiT1Q0ZHJCM3JyOUdQRDUxd1VZck1FWFZrNDhGRmQ4NE83?=
 =?utf-8?B?bjVKUjluQUY2T2s5SjlFN1lVVURzTUtBc01FUEZmOUpKNWdSekVrdXJUT1li?=
 =?utf-8?B?cTdDN3FJMUwvcjB0V1pYa29wYVdPdEZtVWZsd0xBRnJRbE9GY2hlVFNtZ3g2?=
 =?utf-8?B?eHVOVHdwU2tobzQ4aGZZWGlPb3djUllCdW1IdzNsS2pzWEp4N2w0QVhtcFlo?=
 =?utf-8?B?R29CWTNCdGNlTTZZck1WVUptaXFEOG5lM01sU1NuRzlNaXlUVGhsOTZnaWM0?=
 =?utf-8?B?b2t2SytoWUJjaExtdkJBVk41YjgyM0R6TGNldHhNU01QVFlyWWxJVnRwSnFo?=
 =?utf-8?B?bHd0dldqVGNJbzd0R3dMYXREUWxvY1ZNOHJVcUVTOVRCNUErcmZ0WjcyRUR5?=
 =?utf-8?B?NTd2MERreWdRODdKNjRzdjF1WjZZUCtLVkI3Y3pmM1d1S1h6U1ZRR04wZmQ5?=
 =?utf-8?B?cytGcHM3V1RRTTZnOU44ejdRWWhVb25XWmxuSEZSWXRVVTNHa3N3RG9sQjUr?=
 =?utf-8?B?QXpMWDFFeGZ6WFd3eHVpNm4rMUNZSDBuRFNFejdLQlpud0VwMUNjM0tDd1Va?=
 =?utf-8?B?NHdnZXY1c2NXci8wOXI1d1NHWXUrcW1UTzRyYlo5SXJaWGxUTnA3UzhsWDQ4?=
 =?utf-8?B?VHdqdERsbVhzdmVTTGhXZDM4b0phclVkOHpjclppb1c1aUtSUDlENjFFcEdy?=
 =?utf-8?Q?OH6bPp1malocP3yPVnxdtD9jcXsvIY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZjRxM3JmZGpQQzlxU25KczZITURXQk1jSG02TWw2bFdjTC8wTXcvYlNrMFRM?=
 =?utf-8?B?SmFIdHpmYXhvZlNJN0FxSGVPUUFDM1hDUTk4SE5BMFV5T1BJeTFGNXJ0NnFu?=
 =?utf-8?B?dm40QUM4QUljbVVpUlllZUVTWjV6dEwvZDlkNDRDZHZkUk13SlVWZWtkSlVU?=
 =?utf-8?B?TUJMSUpRYTZMVVN6WEtFVlJNODJJb1ZZTzNaSGpLN1BuckpTUlowOWY2Mjhj?=
 =?utf-8?B?VEZMZ3FIQy9rbW8vZXovVG5iajRjT1kxU0Rwc0hTSnJIWVY0Q3hwNkxXeFE4?=
 =?utf-8?B?ZDZzOEttVXJPOTdpbTNEMUNMS0hldWZNRis3Y1VZbTVQbHoyYXkxaWplaldl?=
 =?utf-8?B?SmltVGZIV0JveDk2b0hpMmZjT1oyREpvWGo4N0E3cldQM3plejVXMGM2aytJ?=
 =?utf-8?B?RlozTlpOZzFvY2F3Z3grcnJmSVJZVFkzMU44UlFsd3hjUjRHUWNUbnRCMEpp?=
 =?utf-8?B?Z1paQkRmdEdtd3hxUStPTlZ6Q3hNSVhEbmt6MU9YSnRscHpqTFRjY0l5UEs1?=
 =?utf-8?B?NUM1WS9ZSUx1aSs5MFRTbzNXc0V3SWdsY1crZ29aUlIyQ21UWHB4Kzc0NEM5?=
 =?utf-8?B?OURsTzZZeER5MnVHMFpXYlBSb2xiN1E3QW01YVE0Q2x4QXFXdERiVThrdkVx?=
 =?utf-8?B?K3dndUhCU3ZlcWw5dXdBZTVZZmNkNFRaTXF2QXpTeWthcUFTQnZ2dFEveVda?=
 =?utf-8?B?MS83RkJHdGxIUmZPMTdDVDhpc0lGM0daTG5qT0wySW1qYkJwSjF3amZNS0xj?=
 =?utf-8?B?YktKYVRHZFJjZzE4VXNqZ2dMcGo3eDQxZ0pldUM2cEJKM1pXdXdsZXQzQnFl?=
 =?utf-8?B?S2tzSk1sY0pydFVOQ3lDUC9OaWk3RTdSRXNVaGpENytpOFNpSmJLNkR0SWx4?=
 =?utf-8?B?UVlOZUhYbFMwMU5qSVdkQkdIYWtNN0Urc2hGRU5COXI1VFlHWUUxNUh3c2N0?=
 =?utf-8?B?T1VibWk3dTZjQStuNVlhTkpjOFJndktjZEJFUDNmRkNER1EycnBWdjRpMks1?=
 =?utf-8?B?RXZKdk82bEc3MzhPa1dhdzVKQmd5V3BiYThXMUhETVQva1VNUk5Xczc1MFhi?=
 =?utf-8?B?S3FJWjhRWVNmRDIvK21DbWErYkpWWVZjS0ZNUisxSUtzNWlzVnU4a2pnWHRp?=
 =?utf-8?B?QnpzYXVjcVN0OFpnZUNtZHgzaHZERlo0bUU2SFVOQ1B3T0FYanp3MEYwY3RJ?=
 =?utf-8?B?TTZXdThnc0hOWnlURzN0Y1VoVkZ2azJpeTl0a2ZrRWV1QlB4cUtScmJlaXVB?=
 =?utf-8?B?ZENlS09yQ0dhVzhCVkNkMkgyKzNKRkx5UUFab0E5Y1Y1VXBEanFWVk1hUW1y?=
 =?utf-8?B?Q0wzMExVcHVvSUs5WDkyUlZaQ1JvNytIMkRkeHdPbzRCSENLRFZBWUw5NDVE?=
 =?utf-8?B?d0h5SGpOVkUxTDdjQ2k5Y01SRG14L1dFaUVSdWozdHJKMDFVdUtmS3IvZTJG?=
 =?utf-8?B?MFBmVklMUjJxdkIzYWFKaytmZDRMb1c3dWcvTE5XWEVJKzJQeWlMekNXVE14?=
 =?utf-8?B?dkVreUM1U29PeDV1L0hUZ3FUTENJVGEzSytTRVZCYWZkTjJxMEhjRFlWbkZp?=
 =?utf-8?B?SUhweVpLV25ndmYxS3F0TmQyQUp3aTlrTi9DbWJKV1RGYzhBUjRlcU1XbEVW?=
 =?utf-8?B?TDN0NjBLQktQV256YkpQdVFBMlQydEZZb0dDczEwNWVZZG81cTY3VUMvTUVp?=
 =?utf-8?B?aDhKdllaenZ4c3JjUFhvbkVkVnZxYk94TG5mYUF4WDJjN1ByaFJTSUZrYjQw?=
 =?utf-8?B?RVp3YVlEcUtySHVOZFdXTG5UODFkaTBzZVFsTDczOFVuNWRxOVRwdGNvQm5T?=
 =?utf-8?B?ZEJ6WEFvZlJGdzU1QkRMVjI1ZFFSZXYzcVh5K1ZFTGtkKzdrbXZrcDZVZ1pB?=
 =?utf-8?B?OWRyNzFONG1QbWo1ZFZSYXZLUUpiaDM0ZEhmL1Q1eWhPcGoraWxlQk5GZ2s0?=
 =?utf-8?B?ZjVlQ3p4WnU1VEJyMG84dzJ5SS9hZzRjbXErT0c5RVB6TTJnMEM1ODgwUE5m?=
 =?utf-8?B?dS8rSFZUZTFjTWMzaHZJOGhaSUZVTW5QdklESVhndXMvS2NGUDNZdmtIOGpt?=
 =?utf-8?B?RUpmLzFvYTZKazF5cXU4MU8xN3M4bHZHTWxXN29EeEJ3aG5aaityekcrMlhs?=
 =?utf-8?B?MUp4enZRV3JES0dqcitJUjZhc2NiSUZ5RmtBcXl3TzVEVjVGS0hnWjhxS2pG?=
 =?utf-8?B?Yy8yWHIvMHZSM2U1L0xBWjlUZnpyRnIyYmN3dFd5WXl5ZzN2V3RGR2c2MjN5?=
 =?utf-8?B?RitxNXN1eEttaWdCcVlHRDFZb0FBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F42584B005D9B240B13CF7B7CD5B0076@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46420052-e444-47bf-f9fb-08dd7b178cec
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 05:45:23.5034 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cXqHzaIm/28sJd3M3mVdMQsW5xS0vnk+u6efJmbqVkvMAOL12fSB29czfp7SsfTnlrRv6ltkNJvWjPZrClVwG1GWWXmrMWM15iMjioe6lfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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

T24gV2VkLCAyMDI1LTA0LTA5IGF0IDEzOjMwICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDQvOS8yMDI1IDExOjE5IEFNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gQWNjb3JkaW5nIHRvIEJzcGVjIFZSUl9DVExfSUdOX01BWF9TSElGVCBkb2Vzbid0IGV4aXN0
IGZvciBNVEwgYW5kDQo+ID4gb253YXJkcy4gT24gTHVuYXJMYWtlIGFuZCBvbndhcmRzIEJpdCAz
MCBpcyAiTWFzayBCbG9jayBQa2dDIg0KPiA+IGluc3RlYWQuIFN0b3ANCj4gPiB3cml0aW5nIHRo
ZSBiaXQgZm9yIE1ldGVvckxha2UgYW5kIG9ud2FyZHMNCj4gPiANCj4gPiB2MjogIklnbm9yZSBN
YXggU2hpZnQiIGJpdCBkb2Vzbid0IGV4aXN0IG9uIE1ldGVvckxha2UgZWl0aGVyDQo+ID4gDQo+
ID4gQnNwZWM6IDY4OTI1DQo+IA0KPiBQZXJoYXBzIHlvdSBjYW4gYWRkIDUwNTA4IG9yIDcxOTU2
IGZvciBNVEwuDQo+IA0KPiBSZXZpZXdlZC1ieTogQW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1
dGl5YWxAaW50ZWwuY29tPg0KDQpUaGlzIGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQu
IFRoYW5rIHlvdSBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92cnIuYyB8IDUgKysrKy0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gPiBpbmRleCA2MzNhNjZmNmI3M2IuLmM2NTY1
YmFmODE1YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
cnIuYw0KPiA+IEBAIC00NDQsNyArNDQ0LDEwIEBAIHN0YXRpYyB1MzIgdHJhbnNfdnJyX2N0bChj
b25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgIHsN
Cj4gPiDCoMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9k
aXNwbGF5KGNydGNfc3RhdGUpOw0KPiA+IMKgIA0KPiA+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpID49IDEzKQ0KPiA+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiA+ICsJ
CXJldHVybiBWUlJfQ1RMX0ZMSVBfTElORV9FTiB8DQo+ID4gKwkJCVhFTFBEX1ZSUl9DVExfVlJS
X0dVQVJEQkFORChjcnRjX3N0YXRlLQ0KPiA+ID52cnIuZ3VhcmRiYW5kKTsNCj4gPiArCWVsc2Ug
aWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEzKQ0KPiA+IMKgwqAJCXJldHVybiBWUlJfQ1RM
X0lHTl9NQVhfU0hJRlQgfA0KPiA+IFZSUl9DVExfRkxJUF9MSU5FX0VOIHwNCj4gPiDCoMKgCQkJ
WEVMUERfVlJSX0NUTF9WUlJfR1VBUkRCQU5EKGNydGNfc3RhdGUtDQo+ID4gPnZyci5ndWFyZGJh
bmQpOw0KPiA+IMKgwqAJZWxzZQ0KDQo=
