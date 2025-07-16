Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC75B071E2
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 11:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA95E10E75B;
	Wed, 16 Jul 2025 09:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VvQqUk2O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65DC110E70D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 09:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752658644; x=1784194644;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=dDImr9C2I6N5/dDaTtOeXGR9AUGxWxX6IX16hXa9M5s=;
 b=VvQqUk2OKkDzpyHLN+US0ibJIGmW8K0USh9msulePG5l2i+CDSMB3/H6
 035rYyO/0wT+iEvdUOP3bhbfsucYLMZHFFZNWIivElHSoSMpT2inPIiDk
 /zv8TXDilxZNy2rfScOTQIDdyDLpyMwQ8uF4bN5RLFh2nLrBROxMh3X0w
 hOd2nk1k1me5qiS+/Vexv1hkGlyndMoqiK5CCrg6k4ktOBcwNIvTUrmHi
 91J7JnsmsWR+Sgae5z56TKQLOOe4/S6Ekz6NbjQRgeX3nw0MTwK/usEM6
 FYDkQzEZTP4U8BW8wqzmcDmTIkUCgygB5T3yEJBmPK8uzMiXUmOYqtEJg A==;
X-CSE-ConnectionGUID: KE4ISPMcQTKH0PmeJIIH2A==
X-CSE-MsgGUID: C11VVB3cSRiUj68KRN+xJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="80347230"
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="80347230"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:24 -0700
X-CSE-ConnectionGUID: IIVYnmcmRYSVPw3XDOAMbQ==
X-CSE-MsgGUID: MGNQWtUtQBeP46f/OyzYsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,315,1744095600"; d="scan'208";a="188418940"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 02:37:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 02:37:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 02:37:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Adfa6pKTQWt6sBwJ7WsSjdns/G5f7udcDgusnquJeYulXWp5BI16L1pgHUAGjXuhOCfjLQKsaVjdzGYpsuLDlK/00yBRDg3zsqqVetySDXuFzf+gsXLew45UDNWYPbFKDLAKdgn9fYWnUJ1ulkFLJJYhiAZ3WAaiwFr1Cm/vlGOfFctKlOSKBQnSxN0FGleTUzxks4Jf2MAirk8chBi/dq4c4ul7bd2KZ0AT7L889AH0a+XKIuFcmBhJ9FjXTeL2TY9r8P/CU7RDR2By14pVWdLACIQ+1garoiSQPmhG7+wHV13wBMbFBv2WqOh56UAyhskhRtCu5G4XGrm0o9R82g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rwWDoDYDN9aX4KtnRVXrpUc/uI1x/bz8kJWQEq0eTKo=;
 b=RAMjpmZF6QD9ybRoS2LiHyAL/om7wViy5bTh9mHiXsyoYajWM3NglQJ9+lYFUjEBZk9+vEQ0uS/adxaX13g/DIULQAbOjCOQ5+s7/oIqrQAY3yrTLtf2KTec8UvD/uZQVSiinb+fpc9wgOFAbvN6FUQlI5600H97uIvertYgqDULZ04tzQnx9P1AgqPZVSEDAFUXHf18Ml1199ifyAMWBpYOVGobB9bkrZdOBQWvvihJHkgBErjiWS9jibhHb+9r09IxsiMxl/J/d67hewhDekbq7/RGRQrTQiN5+Do9NGcDeRP7HokDcVZdrgsrcfyIdLPonobtHnnWjLy8FQTkpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by BL4PR11MB8869.namprd11.prod.outlook.com (2603:10b6:208:5a8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.32; Wed, 16 Jul
 2025 09:37:06 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 09:37:05 +0000
Date: Wed, 16 Jul 2025 09:36:59 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH 0/3] drm/i915: i915_gem_execbuffer.c minor improved
Message-ID: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA0P291CA0021.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::25) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|BL4PR11MB8869:EE_
X-MS-Office365-Filtering-Correlation-Id: d0202bb5-43b5-43ce-69f4-08ddc44c53b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWxZR2VydjF0TmFZZzA5TFhMaXlOTEJraWtWUWwyNjZPVEFIWmZjbHVJWlJs?=
 =?utf-8?B?TjlMY1dOMm13MzNrd3VMcVJWdE1OTEU1TjBWN1ZsSGNBS0l5blRYNHY3Y3Fp?=
 =?utf-8?B?eG5xbW9EQWRFQzUzYmczdytpZFQzTEFyTm04ek5GclNFM2dsQ1NXODZpNWlR?=
 =?utf-8?B?cDFIcHJVek4vSktwUExCQWFkNFY1eUUxc2loRTJoZFJwRjllNFVWUFJsRFYr?=
 =?utf-8?B?WWV5SlFhM25rMlZVaGNSRkVMb3lyOTRvVlBmV1RSV1liZy9PWHREa2J5TkVQ?=
 =?utf-8?B?YWxHazgvS3RYVjVIcURlRk4xU1lmOENLM1NPeHM0eDZwYWd3TlRWZmdWYXRp?=
 =?utf-8?B?RmNJVEFEdGdYRDNXLzlRVHl3OGhZWHMyZGxmNFE0eDhXQTRxU0hCSk9OVXJ0?=
 =?utf-8?B?YzBsb0Rnazk0M1RENEczUDRkVm9xVE9US1dKU2JqUTFjbytSbFQwZnZJL3Ey?=
 =?utf-8?B?WGdDY3VJNFJjS2NVL0pBeWFDWU1BYVUwS0lHM2hEbG8yQ2QwaGx3bnYzc0VV?=
 =?utf-8?B?QWlVdzdmaTB2V3UwYS9YNFdCL2dTVFIvVGk3eFNNWWxraWQrb09BTERZTWIx?=
 =?utf-8?B?OWZzczNyVmFac3NXNHBqNTQzZFo5Q25xYmhkYnIzMkpWTkMvNG9qY3J2VTFy?=
 =?utf-8?B?cWZ4QkFOek15K2tub3Zad203a2pOQWFxcFIxSzN5WE5OdUFOaGFVc0dxT3BQ?=
 =?utf-8?B?QW95MTYxdTNBTHBCQkphTFFmakl2S1hIRkpXblJRSXFZbm50b0hJZmNOZUVK?=
 =?utf-8?B?b2lRU3VEbEluV1RrVENySnlTTm1sbWlrT2JmMVFmRmhRMDVFTlFZbit4cDdo?=
 =?utf-8?B?S1JlSTk0SlltTWNweGpqYW5ZdjVpa0ZVWGJNQ0pRd0V4VDVwdVl5SW1WM0tm?=
 =?utf-8?B?eHJjWmMrTm4wY0RVT1UxSVB6dkd3MlorL3RZRXVBTGpkZUlQKzZEYWFkaW0x?=
 =?utf-8?B?MGIzTHcrWVBSRytWN29nbHc1Z29zU0N6R1RUQkVCT2VFUzN1TVQrRDk5NTlu?=
 =?utf-8?B?eThHaGZiQVZTbWdYVGdWdjB5eXNuRUZPVnVoSlIwVmxuRE8zK2phcmUwZFdu?=
 =?utf-8?B?MTZrb2JGR1FDYjVhSTY0T3BVSjBsUWhkVUFVM2NhRUY5NDErU0poNWhxTzFp?=
 =?utf-8?B?Q3lKU0MwT2RtSm5TTmJ0UmJRU1loNVpVWG1sYkh1NWxMU0plMGpFVUM5RktY?=
 =?utf-8?B?NGNVVms3ZzRNZEx2Z0dLeGVnNzJCaDJLMmhCUjV3Um0zSmNtMVVWUm81V2pY?=
 =?utf-8?B?S0VHSVMxdjNRZGR5U1BGeThBTGsxYUpsakxMTURRTGM3UjdtL0d1eUpFK1k4?=
 =?utf-8?B?TWlHVWRIZWhDN1lZdGZ0QlU3dWU3Ym9VWGo5azRoMndLclRVR20rTms0cjlw?=
 =?utf-8?B?K01kcHl5TVpIemd4L3QxMVI3THhPQW0yT1ltTlpoa0N5R3lXbmwyUWdrbG5x?=
 =?utf-8?B?cmVncVRnZWVMSFdOMi96Z2ZNbUhob0RmeStmT1ZKQjNWdkp5NklTTElVcDcz?=
 =?utf-8?B?WGhIV0tsN2dHODNNc2tDeXRZeU9aZ3ZEalI5MDVrN1JOU00yN2FpekdXTFVC?=
 =?utf-8?B?L1FIRTViT1VQVFB1bWc4M3FEdnBzZGM0YXRWUktKTml2eEhCTXZRUGt0ZWlp?=
 =?utf-8?B?Q2FNaVJNS1hpS2FFQ1FXVW9WV3cveDNwUHNGbDZEVm1KYmpCT1RySFZLZTMr?=
 =?utf-8?B?Sk1FT3dNOVZ1akpjQ3hnYjVQSTNYVi9XdDduVzJFa3JIcDJIaXpSWXZ4OGpt?=
 =?utf-8?B?ejY3Zk1VOCtkQmRkN3ZScUNZMjVTb1RnUG1PQ2Q3a0NXNkJxMW1UUUd5d2or?=
 =?utf-8?B?aXpnZTc4SllkL2M1V0hzZU0yanFGNjc2OVJkb2g0bGVnTThkbElySHZyN3Bm?=
 =?utf-8?B?bUJWT04rRzhKZ3hJSGNWVmJHZkFxTEJiRU1CYWtRd2RMYnVuWThOWUxIWktI?=
 =?utf-8?Q?VhT4N6F2pFI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3pGUXQycTF6SkptTXpJaHZhckUvK0U5Zk9UM1FUa1EvaExHeENBVjJtS25k?=
 =?utf-8?B?azRnSmhQWmIzQjB4eTFqN2didTFvR3RaY1RTZG5IdkhZcDBLQUhvYXJFV2x2?=
 =?utf-8?B?WVhYdDNySmVKV3VXRFJyVENTc3Jhb1FiTGlCMHRJSjN1aERWa2ZqalJEQ1dL?=
 =?utf-8?B?M3ErczJISzRIVXNiZW5ZUUVySkIvd05qSVdsU2tHUlhBMHBnV0pmL3VSZG1h?=
 =?utf-8?B?blFPSmMxWm82SytXOE9yc2pVc2lld3VheC9BVUVkOUwxanFyU25xcEZMMGZB?=
 =?utf-8?B?MFM4TG5menMwVGRXdXB0N1o0blUwNmFhRVJtbHpvcFpxVVlUMkNJbWliNDVQ?=
 =?utf-8?B?NDVaU1NrMzJ0Z25JdTN6ejZLNU9UbVYzNDllbVpnbVZObDliajZUa2NJeE9O?=
 =?utf-8?B?M3A5NHMyWldkWEZUUXR4czltZTZsdUc2Z1EvVUlUVnBsV0oyZk9zSExpOWdx?=
 =?utf-8?B?aTEvUzQ3dGRaNERybHhORlhobjJKWERaNWF5Y0REMDQyYWRSZFo2UlFNVENV?=
 =?utf-8?B?ZXM5T0twb0t1cmYrRkZvNUd6bUpWQXQ4d0JwbWNjdjM2VkQ4NnphdTN1MFJs?=
 =?utf-8?B?S1pBaTJFU0tFcm1CT0VRSzNTY2dCbSs2SzYvUk5PVW5ZenEzYkxLMTdqcWg3?=
 =?utf-8?B?dHA3Q3ZvbldDU29zVDFhSDVPZ3NEQTlXU2xUeUROd1FwSWJENTlEUThWWHlK?=
 =?utf-8?B?Nkw1V0g2aXpvWE9veHlQK1BZMVRJTXpGWS8raE5jUDlRbEtwL3V5RFAwV3lS?=
 =?utf-8?B?V2RtRVFDb2J5R0NyRDNvZ0NUcTdxUXBhM1UrZVp3azFUM3QvREh1eTB5RCtC?=
 =?utf-8?B?K0xicHZpZGhsQk1XMThWRzN3M2M2OFhISTIwUCtCTW1yV2R3QllPSUwzenF5?=
 =?utf-8?B?TnlPNExjM0lYR01veTU3dnlnUDdVd01naUlQTzVLM204NXdvNFNRaUJqL2xC?=
 =?utf-8?B?VW1iQVZxL1UyN2dJc0JNeXJJS1V1NGJTdWdhOW9zQ253TEJ5UTBjS1lPRTZG?=
 =?utf-8?B?MWpCNVpmR2xYTmxXZWdOZ0VIV2w0b1FaaDFhMm9RaFdYdHdaZGxidFJNKzc3?=
 =?utf-8?B?OTBKZDdDd3hkN0tpZjNUY0N0L3k5UzF6bzZPNTJDdklLVUpnT243WjVkdkFQ?=
 =?utf-8?B?bi82QVBaUnpOUjFTOWZPYzNNWVlGaGtiNzBRdTRwZ0JLQ3NyVFN2QVEvaEpp?=
 =?utf-8?B?ZElmK0hGcTdqc0Q5cDdhUEEyOVZBOHk2SGZ1cHR2SVBUNXlSUm1hOVo5aUdj?=
 =?utf-8?B?Yi9IUWtOUzdpN0Q5bCswckljNTBqTDA3aVd5UWNhRXJaZmprNStPdjJPS3k2?=
 =?utf-8?B?eVhhZm1Hdmc4cGZ4RmFWTDlReThMN3V2Kzhib2JCL1JOMUk3Ui9YTlVkVUMr?=
 =?utf-8?B?ZlFaaGNUQjdnR3hhOC9aRTFyZ2hib0dWRjUxaHhUUzRaRVBOMXFSY3QzODZK?=
 =?utf-8?B?ZXFnL3lONmNnTVlKTFFvTUZNN1NJcXBWNjk5UVpYbmFCZEsxb1YzeTUzQ0lU?=
 =?utf-8?B?TFpQOEIrUzVNZmptbDNkemNjSUFQMW11elE2SG5XQXZ0bzhLaEd1cTFkVWlq?=
 =?utf-8?B?SDk0OHNWNVkya3FwYW9yQzJEb2Q4bitaVHQ2cERDbG95T2gyNmJxSEloNm5r?=
 =?utf-8?B?UlBOU3pZNXRNTEVLV0tEbHFOZmZjNVpQQ2lDcEhkNlBGZlo4WFIxZStNT2g0?=
 =?utf-8?B?UTd6aE1RbGFsK0pWd1NWekg3SFRKREZJaHJZaExaanBWWHp5SFBjczhFZS9r?=
 =?utf-8?B?Ny8zMWF6RFpQem1QRjVBYnhFUU9saHE2bWQyZU51WU9iSU9POW1EazFvNmRP?=
 =?utf-8?B?OGtwdjV4SERCWGt6OTU0WWtzSEd3TGFyNnM1NFdvNDc0bk1uYTdOZlhxbFVR?=
 =?utf-8?B?c2x5aDNnTEtRVTlYbDdaZlRFOTJ0dXdZVUtJS2RyWkFxY3BlajBFNVF0NFFP?=
 =?utf-8?B?ZXV5VXBvSm5LMUl5Qjh3THpGYTcwQURDajRsSEs4OXhkQVNkb3pIakhHTWEx?=
 =?utf-8?B?bkpWblBUbHdSb3UzbEZqQXBYMWt6MzR4OWVEK2c5RnhZSmRheng0aTAyYkph?=
 =?utf-8?B?U1VDZTBiQWlnd1RiZVVpSDg3UFlKR2Y1OXBoWGg5L2g3aHBqNUVscjdiVk1h?=
 =?utf-8?B?cUxzVzJ0K0FjaVluUVQ5ZHNjQXJSOStiWVVaUGIyMWhPVktXNUdqdTRhNmdi?=
 =?utf-8?Q?6y9D3KmJyEIKo0zk53c+TZI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0202bb5-43b5-43ce-69f4-08ddc44c53b4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 09:37:05.8824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zR2wnBTaASx3uewAr0FxHKYPUUzVAoOZ95tR/VYJjaIuWTLsxOabJyoFwCNCOXvJPZmdCJc/TgEfNQ3KZ19ARskn8Rx4SNuxVzNLdX/zo2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8869
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

While debugging, I identified and addressed a few minor issues and
style inconsistencies that could be improved.

I ran some tests on these changes, and pushed them to trybot
first, no regressions were found.

Sebastian Brzezinka (3):
  drm/i915: Refactor eb_relocate_vma for clarity
  drm/i915: Add braces around the else block in clflush_write32()
  drm/i915: Replaced hardcoded value 4095 with PAGE_SIZE - 1

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 110 ++++++++++--------
 1 file changed, 60 insertions(+), 50 deletions(-)

-- 
2.34.1

