Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2268AA34F44
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 21:18:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6A3210E451;
	Thu, 13 Feb 2025 20:18:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="leFNIqmG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9FD810E121;
 Thu, 13 Feb 2025 20:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739477901; x=1771013901;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=c2zTS/jwBMa5pLfdQsnTLZUjtyluhE+CfjGW6trP4So=;
 b=leFNIqmG8seubmoCAoI45GpGzEDs87D/Vrp2Lu/Q5+yJmuFJBJnJJoY2
 dWsuhbe11evXzxldCiJ/Ma7omhqiRfXNQZ6XvOniMV3DHKd6YU3PESb7m
 ie+NATQKr/HXlrgTx8gafpH7FjfA3qmMu5FwGRlzJ3sE1wAklwBQBUKL+
 3taDZ0hq6C6KOrcLi/yz+1/VuVLOaq7S8haF5CcxDCw1hiRZU+GQQNkPp
 zozhTOKALlEriqoWbwhDfLIFrqaHYb1NNA/5pDiggf7Y21kiRwCaY09SG
 +w5JGNRvbJgoSNeUF0ucEWGtPxd+xSJpYfHeo1RThMwxhW6JGQ9jF+7Gq A==;
X-CSE-ConnectionGUID: NbsCBAvKTji61RRPXtBVDg==
X-CSE-MsgGUID: SSiq4/pgTE+G683UURBBKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="40327459"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="40327459"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 12:18:21 -0800
X-CSE-ConnectionGUID: wnDTxjLLSRyP9OrsKvN9rg==
X-CSE-MsgGUID: V5KxkbgcQr23mbBrc15+yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118455800"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2025 12:18:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 13 Feb 2025 12:18:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 13 Feb 2025 12:18:20 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 12:18:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v1aHgHFvmWrjpm/QD+LClT1OV0bQcbiLyXys5vxEAlLssHd3HAkiZbR9nI01OQdH2ax2u/p6bryIF2RfttofWwPs/MfJ/tc0bj6XOlK9nBnvLqn0+Zc8ZuxzB8Kk8xO0kce4ti/S7emLo7irs8lJVb2RXFrLLQAMv5+hdLu+gYE8DkQQn1v/ngxo2bSzcxVZHqb07WQNSYmC3QaNno66O2LjT7NAMikn1+Dw5KROjBb2qRVs5UOymSxZ4vMl3n8pv12C2SO8WDPi7jTUSkP8P0NCE94wQ/gfUtXsI/RDEwG7IMx+5Y0pIMoslGnmz/uRpdx/DFzk23A6xyQpk97Aqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c2zTS/jwBMa5pLfdQsnTLZUjtyluhE+CfjGW6trP4So=;
 b=lwyfUEbXFTjiUNjJqlOHfz05nyKAblA8ri/tm2r+IIu8y5mhKyJQL+wxjV3BOoqqJ2Y8BpwMrYzNA1dkCWCAPFtvhhrjksls04CAzx2YWeFnAU51ohBDjTe4+xPkpdmwNB7vwpkiYUzwz3FdSwklsVGnqP/+g9nMRc50yTowMUtQbAeKS+gNmzUr4O/6ff/ArbuzuqKlDZq21s5Kx5uadP7sCn6zHN3Wkf2dpifiwagM+261PNibQRCVHVPXJwH12qo3D9AklSzNDpKJ38nijo0eKEgDESzAQ1bbVrSHDnGzMtdXROJTHT2no7xPKJONQeyRrvwgG8/M5D5GbPnaXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB5806.namprd11.prod.outlook.com (2603:10b6:510:14b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Thu, 13 Feb
 2025 20:18:14 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8445.013; Thu, 13 Feb 2025
 20:18:14 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/8] drm/i915: Hook in display GTT faults for ILK/SNB
Thread-Topic: [PATCH 5/8] drm/i915: Hook in display GTT faults for ILK/SNB
Thread-Index: AQHbaD7m5sqzdBNxFk6ZnSi42xVfULNF1fYAgAACWwA=
Date: Thu, 13 Feb 2025 20:18:14 +0000
Message-ID: <e9658f737f7498f740e70d72b5db58c080031a8c.camel@intel.com>
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-6-ville.syrjala@linux.intel.com>
 <b48cee082948198e0aaf017da7f3d9afe0d6e433.camel@intel.com>
In-Reply-To: <b48cee082948198e0aaf017da7f3d9afe0d6e433.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB5806:EE_
x-ms-office365-filtering-correlation-id: c537137c-5029-490d-bb87-08dd4c6b8bc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ODZvVGJpbEFnZytBaXFrT1E0czNsamNrby9GNHJlV2FxYVJMUWlnZzRHOUJw?=
 =?utf-8?B?WGFWMEs4T0NOeXp3d1dmVmpncFJoNGZIK2JueCsyZ2ZZRDRLR0d3R1pEWXdM?=
 =?utf-8?B?bXIwZFdqS1N0amFhV0t6UWdzVlBrMmgyMnlpR0FBQWZRQ2RHcTZoNzdLS2hI?=
 =?utf-8?B?MWIxWi9WVUc3MGZkTFVzdE9ubDFIY1JSeHl0Z2JaL1dTK01DL1gvWGlyTTVl?=
 =?utf-8?B?bTZ5VlVkTFZCdXNubmxUbVp6UW04VFVsS1hGaC9HbVpwSG1XL2xNTlZhT0Ft?=
 =?utf-8?B?ckZjNEY4ZEdoQWVzdnNVNW1RN3A3R1VvYVkwZm1scXNYZlNMTFNmWWRXYXRO?=
 =?utf-8?B?LzJvYmtVemRJR0FaUmcxY2JOa3ZiRUFvZDIvUUJUL2pJSC90eSt6R29EeE8w?=
 =?utf-8?B?eWM3aVk4ajduVCtIRVRaa1A5MXZMUmEwcEp6QkdLby9ldzJuV29SWE1oY3Bv?=
 =?utf-8?B?MUliYnJBbW90cWRjdXAvY1pIT0pwd08yd2x6Y2hpMTIvREpXdWJvaUhSUFNZ?=
 =?utf-8?B?cnBCa2VZRzV3NW96TnZLcEl4S3B6dFVFOFdmM0VnZTdXaWZXYTFWZDhzQ1ZB?=
 =?utf-8?B?bk1ZODBuSHBvb0NBS1VWTW9XTnBxY0NheTBlWjNaNkYzWm9STi9ZOFoyT0lV?=
 =?utf-8?B?ZDJtYjY5ZTR5a2VSRkIrZjVPM2pRWEYrM2pOQ1VNSUF0UFIveU9xRmE5OXdo?=
 =?utf-8?B?SEZxc1BFeHhxQisyVFNNTVp3bTY1NzB6d0hjK0ptRE8vRWZGaGV1TXRHb0Ux?=
 =?utf-8?B?RHVjZ2YzNVIyT1E2YVVPNFFsZVplY3B5TnBxWWVkbk9yYlBxY1NLRWJKWlU3?=
 =?utf-8?B?MGpXbGswL0RoQmtPbmphTmJGSG9XelErQ20vcHM3NEkydlhpWXVtQWNjNENB?=
 =?utf-8?B?THIydURHclJQOEk0ZzAzZUpUWGFBZ2s5ZEhwUkprV3pPODhDbWhzc0ZZOGM3?=
 =?utf-8?B?dFVSV2dWZ0UwZU1DVU00NnNzNUdObFQzeUoxVFBwdHRjeiswekFBMXNpcE9u?=
 =?utf-8?B?dFJSWEJTM0xZVDFIZDhNcTZGVHJOVG9TanBTUFQrNGRGdEpBNmRVS0d6QWVZ?=
 =?utf-8?B?MGdERmVwYjduWTAxcHNzenRYMjdXZUIrM1ErNVhrTFJ5NXd6S0dFbU1QWkRO?=
 =?utf-8?B?cGhUWTh5K3NPSHZ2WVJBR0FaQllTK2JoSndpUHVZYlpZUHlhTnFpYThrTmdY?=
 =?utf-8?B?dVp5b2drQnB5N3M1bDhKMkhKT0c0Zmh5Wm96a2wvK2w4STZienNFclVYYkl0?=
 =?utf-8?B?R2VndFYzWWZ1WUpBOVFSOGZKdmF2ZEt6d1JNbFFnVTZuQktZMGQ5WG95LzZo?=
 =?utf-8?B?RGtvd0NaUXg0UW1MOUM5VEQrNnFEVzNPVVYzSGpsNW9tTXQyakJVQjFGanNW?=
 =?utf-8?B?Z2pSSEpiU3JwRzZ0amRZcHBtR2hiQVZJSDJNTi9maEQ1ZmF3VmlRR2UxSjl6?=
 =?utf-8?B?VHJCMmp0YU9ZT1JXajQ2RzU2ZlNjNHlEMzlIKy9RK3NqcGZnVzZDSG53SEpT?=
 =?utf-8?B?N2kwZGxaWldyVytXaEF6Mjk1TzVxZ3ZVV1RFRnJJM01PSU5BSDZvdFplYWVJ?=
 =?utf-8?B?NWlXSGh4THZCSUR2cU95SmxPU3VFVWQ1eDVBQTByUDlkc09ZL0NKNEhwWmJx?=
 =?utf-8?B?ZCtUN1J2U1ZvQ2dna1hpSVNnYlY3SlNod1huZjBrNndWcnBHNmt0NzlRRWtz?=
 =?utf-8?B?WlU4SjlOTVR6MDZZaGZHT2RSUExkMEp1QUpoZko2ak9HN29CZXdFc25DdVZT?=
 =?utf-8?B?ckpHNEJjZ0N6WnBaNnN5MEx6djNWK1VqVFRRRzFjM1ZyMWM3VUhLWDRUb2pm?=
 =?utf-8?B?SU1hMnNIOHlNajVxd2xJc2NKYnQzcHpqa3RrQk1VanY3b1d0WDFhTDhQUG83?=
 =?utf-8?B?RmNXTTNZWDhuUWkxTlhBWENLV3J6Vm5Tc0pnb2o2Y01XSGd3VVNsM3RZZFVM?=
 =?utf-8?Q?lCthhnGYzwKI+o9PA/FYjlkZYdhEbeKG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWFTTjZ4b1V6anFyaFlLaWwvdVNXREJRTXlFQjlhNXhXb2hQT3VQeXlFd0ow?=
 =?utf-8?B?RVRjZkw4UFRhVU5XZnRFdTE3UHh5UXNsTW1BOHNYc2tNVC9YNm5FcWlmcGRh?=
 =?utf-8?B?bUphSGdOZjQ3b2NSNmpMbFZaN2pOTnpWYyt0Z291TWVyNXRsdHVudjdzNkNI?=
 =?utf-8?B?NUVVd3FWRlM4RnJ4U3k2MUxGL2NvRlNrLzZqWmpYaXBBd1BQVGh4aUVNMjly?=
 =?utf-8?B?d1lCeHhrWEFQR2F4UjZwZ1lXbkJqOXNWa0ZTTFpCODd2THRsQUhZTGpQeVJH?=
 =?utf-8?B?Kys2U1JvV2NZcm5QN1ZQM0ZJNVRiQVk1OWF2NUc4NlhIT3ZZNkFuLzA3c3Q2?=
 =?utf-8?B?RXlSQ1d5TXFHMnRtdlExZUF6VldyaXVsa0tCdlNldy9mdjFRdkJEVlhFamhu?=
 =?utf-8?B?d0syRnhzRlBXNFhGMGJtaS9SYTBXSXAvWHdtSVVKYWZsTFN3c1BMa21iejVJ?=
 =?utf-8?B?SjYzOXpWWjJVMEpUMkpRRE9UT3RKRkNHSEZBelNTQWtqVXNDYW1mZFBiNmRi?=
 =?utf-8?B?TWh1NmdGaWR2YktPM0hGRVI4WXpBYy9JelFyWTMzNUFsUU0xTGJ2Qk90blNY?=
 =?utf-8?B?NXVlbnc2ejhjZE1LcjBTcFdDdnplb1FTWWMvTjRxcFk0d2F2R0ovMGpnVUNY?=
 =?utf-8?B?NUVBMTRRV1ZPeW9udlJLOXVoaHFLUE5Sdm1JeFJFdTlGUG94MFJpdkFHaUFy?=
 =?utf-8?B?Uk5tKzV2ZWl1MzNyb1pJU2RpWE0xMTc4VGM5ZWhwSWt1Z2xPRnZBc3FHY1VB?=
 =?utf-8?B?djFBUHNVeHFybkZISGxscUJUV0g2eFU5T0MzTEdWNWxJWlM5M2FEY0svZlVI?=
 =?utf-8?B?ZjNETE9BM1JwT0NicVlmemp4Tk5lMW1YT1NwVmYybll4bVNqU2c0aVNWVFFZ?=
 =?utf-8?B?YkRkeVRZazFScEVKUVNQQWc1RkJyOVBoWEN6T1VrcGpkRHBIZ3VQMnRIOEYx?=
 =?utf-8?B?ZnJ4VHB5RlBCWm1wYldWckZtTTJsSDBuZ2ZMSVV2MkNGMWlVbS9kRVh4NEZG?=
 =?utf-8?B?K3dTdU4yaU0yV21mNVZQS2RSQUt0c05ia2cxamdOWFc3OGVCQWRMdlNiME4z?=
 =?utf-8?B?dm1SUzdsclJ0QmFOSlVyUFlqcnZtS2Jub3NjWURqTHZDRW93eC9VVW9BbFE1?=
 =?utf-8?B?Y2dOUTRZUGpPeGhCQkFiRXR1UUo0RnpaYWhsaUtrMGVXNDVhUUZsNkMwOUNY?=
 =?utf-8?B?WFFKY3JmVk03QW9CNmkrOStnTlBKWDRlVGpwNzJQbVRSOHNxM1cxMzBhTjUw?=
 =?utf-8?B?UjA2Vzl5RHJPM0FpeHBRdVIzRG1aSmtpNmloTlAyMWR0OGtQUldtb2M3U2Mx?=
 =?utf-8?B?UGJ4V0wwL3ZjeDJJTERIbnZaTExFT3dEQ1dFSnROUmgwTEFSb1VlRElKbDJz?=
 =?utf-8?B?ZVBON1I0N0tYeGZUOU82ZDc1OGNTVnJZMUlWc2lEMkxsNlJVbDJRSUQrNVd0?=
 =?utf-8?B?bG94aGF1K0RMenRKYjJoMEhVanVuVlY0aHBEdnZnSjlJK3dpV3lSOUJRUG4r?=
 =?utf-8?B?YjhlL01PSUkzUkVLR2VHQ1Axck4zQi9ZQ0JXeGpJb1QvTkNhZTZjUVc5b3Rx?=
 =?utf-8?B?RkVTVVBON01taVJibFhMWCtjaUxWRjlySlQwTGttbk1sODNVSDFvNVdoclRr?=
 =?utf-8?B?ZzlGUVZUMHBiWXhxQjh5dGFCYVhnVHR6M0lMOEt3bEluTVhKVHFPeVh6QjVX?=
 =?utf-8?B?MlcwZE5pQkJDNmRPd3QyWmVmSXFpQzlUamorWnFYRDlpOW5GWjV1cUZqTngr?=
 =?utf-8?B?aUUzZTczdDR2aDFwL1M1YWJhVnpUb01rNTdWQUlENkN2dXFwU2lCSk5zcCth?=
 =?utf-8?B?Mk5iZFpmRjJMajFRQk5JdXpVc1JNU3ZUL0VRTGRWVUlhL3RJU3JCZk1tSWR1?=
 =?utf-8?B?MWxnOWlZZGZ5Y0Jvbk9hV2NYZHN0Y1NlVm8yY0tNUEt5aktLWFhqNGh1T0hO?=
 =?utf-8?B?K0V3MTcrck1OWk1FZ2Qxakw0aU04dFF6am5FTG9SaGZYTmxRZUs5SzBRditu?=
 =?utf-8?B?VmR5YndpWmtaZFd4NmlwT0N3eEJtWDQycDlHa05tdDRrVE5WOUlEcmRYYUZu?=
 =?utf-8?B?QmxOOUhUN3JqSlJQbmZLbHJaYlliU0piRHZkeGlxOG9UN1Ryem1qVHRkQXJn?=
 =?utf-8?B?MjZGd1hIV0M2Sm1acDBtRmhrR1pCMnhBOXI0OXY0K2MvUDEzeHpobW50a1Zr?=
 =?utf-8?Q?7/O+Z6vGbltCfCn2Jv2Jv24=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B928C5286B7631418238F938261D9FA9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c537137c-5029-490d-bb87-08dd4c6b8bc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2025 20:18:14.6030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kFkO1hrD+g9pWPATpdb39IxG48FL9+dF3h2/SV7Bex94fE3Yjg9/9PTMBXXwSUjHudAgRZzf4ombhjtXrEZUnejF2nrS9yxUHynjnS0Ah5M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5806
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

T24gVGh1LCAyMDI1LTAyLTEzIGF0IDIyOjA5ICswMjAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gVGh1LCAyMDI1LTAxLTE2IGF0IDE5OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxh
IHdyb3RlOg0KPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+ID4gDQo+ID4gSG9vayB1cCBkaXNwbGF5IEdUVCBmYXVsdCBpbnRlcnJ1cHRz
IGZvciBJTEsvU05CLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuY8KgIHwgNTYgKysrKysrKysrKysrKysr
KysrLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfCAxMCArKysrDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDY1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IEJzcGVjOiA4NTU5DQo+IA0KPiBSZXZpZXdl
ZCBieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+
DQoNCkZpeGluZyB0aGUgUkItZWQuLg0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxh
aSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9pcnEuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+
ID4gaW5kZXggNzBlNTMyNmI4NmQwLi5jODAxODNiMGFjYWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4gQEAg
LTc5Miw2ICs3OTIsNTYgQEAgc3RhdGljIHZvaWQgY3B0X2lycV9oYW5kbGVyKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBjaF9paXIpDQo+ID4gwqAJCWNwdF9zZXJyX2lu
dF9oYW5kbGVyKGRldl9wcml2KTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+ICtzdGF0aWMgdTMyIGls
a19ndHRfZmF1bHRfcGlwZV9mYXVsdF9tYXNrKGVudW0gcGlwZSBwaXBlKQ0KPiA+ICt7DQo+ID4g
Kwlzd2l0Y2ggKHBpcGUpIHsNCj4gPiArCWNhc2UgUElQRV9BOg0KPiA+ICsJCXJldHVybiBHVFRf
RkFVTFRfU1BSSVRFX0FfRkFVTFQgfA0KPiA+ICsJCQlHVFRfRkFVTFRfUFJJTUFSWV9BX0ZBVUxU
IHwNCj4gPiArCQkJR1RUX0ZBVUxUX0NVUlNPUl9BX0ZBVUxUOw0KPiA+ICsJY2FzZSBQSVBFX0I6
DQo+ID4gKwkJcmV0dXJuIEdUVF9GQVVMVF9TUFJJVEVfQl9GQVVMVCB8DQo+ID4gKwkJCUdUVF9G
QVVMVF9QUklNQVJZX0JfRkFVTFQgfA0KPiA+ICsJCQlHVFRfRkFVTFRfQ1VSU09SX0JfRkFVTFQ7
DQo+ID4gKwlkZWZhdWx0Og0KPiA+ICsJCXJldHVybiAwOw0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4g
Kw0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBpcGVfZmF1bHRfaGFuZGxlciBpbGtfcGlwZV9m
YXVsdF9oYW5kbGVyc1tdID0gew0KPiA+ICsJeyAuZmF1bHQgPSBHVFRfRkFVTFRfU1BSSVRFX0Ff
RkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+ID4gUExB
TkVfU1BSSVRFMCwgfSwNCj4gPiArCXsgLmZhdWx0ID0gR1RUX0ZBVUxUX1NQUklURV9CX0ZBVUxU
LCAuaGFuZGxlID0gaGFuZGxlX3BsYW5lX2ZhdWx0LCAucGxhbmVfaWQgPQ0KPiA+IFBMQU5FX1NQ
UklURTAsIH0sDQo+ID4gKwl7IC5mYXVsdCA9IEdUVF9GQVVMVF9QUklNQVJZX0FfRkFVTFQsIC5o
YW5kbGUgPSBoYW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+ID4gUExBTkVfUFJJTUFS
WSwgfSwNCj4gPiArCXsgLmZhdWx0ID0gR1RUX0ZBVUxUX1BSSU1BUllfQl9GQVVMVCwgLmhhbmRs
ZSA9IGhhbmRsZV9wbGFuZV9mYXVsdCwgLnBsYW5lX2lkID0NCj4gPiBQTEFORV9QUklNQVJZLCB9
LA0KPiA+ICsJeyAuZmF1bHQgPSBHVFRfRkFVTFRfQ1VSU09SX0FfRkFVTFQsIC5oYW5kbGUgPSBo
YW5kbGVfcGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+ID4gUExBTkVfQ1VSU09SLCB9LA0KPiA+
ICsJeyAuZmF1bHQgPSBHVFRfRkFVTFRfQ1VSU09SX0JfRkFVTFQsIC5oYW5kbGUgPSBoYW5kbGVf
cGxhbmVfZmF1bHQsIC5wbGFuZV9pZCA9DQo+ID4gUExBTkVfQ1VSU09SLCB9LA0KPiA+ICsJe30N
Cj4gPiArfTsNCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lkIGlsa19ndHRfZmF1bHRfaXJxX2hhbmRs
ZXIoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4gK3sNCj4gPiArCWVudW0gcGlw
ZSBwaXBlOw0KPiA+ICsJdTMyIGd0dF9mYXVsdDsNCj4gPiArDQo+ID4gKwlndHRfZmF1bHQgPSBp
bnRlbF9kZV9yZWFkKGRpc3BsYXksIElMS19HVFRfRkFVTFQpOw0KPiA+ICsJaW50ZWxfZGVfd3Jp
dGUoZGlzcGxheSwgSUxLX0dUVF9GQVVMVCwgZ3R0X2ZhdWx0KTsNCj4gPiArDQo+ID4gKwlpZiAo
Z3R0X2ZhdWx0ICYgR1RUX0ZBVUxUX0lOVkFMSURfR1RUX1BURSkNCj4gPiArCQlkcm1fZXJyX3Jh
dGVsaW1pdGVkKGRpc3BsYXktPmRybSwgIkludmFsaWQgR1RUIFBURVxuIik7DQo+ID4gKw0KPiA+
ICsJaWYgKGd0dF9mYXVsdCAmIEdUVF9GQVVMVF9JTlZBTElEX1BURV9EQVRBKQ0KPiA+ICsJCWRy
bV9lcnJfcmF0ZWxpbWl0ZWQoZGlzcGxheS0+ZHJtLCAiSW52YWxpZCBQVEUgZGF0YVxuIik7DQo+
ID4gKw0KPiA+ICsJZm9yX2VhY2hfcGlwZShkaXNwbGF5LCBwaXBlKSB7DQo+ID4gKwkJdTMyIGZh
dWx0X2Vycm9yczsNCj4gPiArDQo+ID4gKwkJZmF1bHRfZXJyb3JzID0gZ3R0X2ZhdWx0ICYgaWxr
X2d0dF9mYXVsdF9waXBlX2ZhdWx0X21hc2socGlwZSk7DQo+ID4gKwkJaWYgKGZhdWx0X2Vycm9y
cykNCj4gPiArCQkJaW50ZWxfcGlwZV9mYXVsdF9pcnFfaGFuZGxlcihkaXNwbGF5LCBpbGtfcGlw
ZV9mYXVsdF9oYW5kbGVycywNCj4gPiArCQkJCQkJwqDCoMKgwqAgcGlwZSwgZmF1bHRfZXJyb3Jz
KTsNCj4gPiArCX0NCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHZvaWQgaWxrX2Rpc3BsYXlfaXJxX2hh
bmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgZGVfaWlyKQ0KPiA+
IMKgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gJmRldl9wcml2LT5k
aXNwbGF5Ow0KPiA+IEBAIC04MTAsNiArODYwLDkgQEAgdm9pZCBpbGtfZGlzcGxheV9pcnFfaGFu
ZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBkZV9paXIpDQo+ID4g
wqAJaWYgKGRlX2lpciAmIERFX1BPSVNPTikNCj4gPiDCoAkJZHJtX2VycigmZGV2X3ByaXYtPmRy
bSwgIlBvaXNvbiBpbnRlcnJ1cHRcbiIpOw0KPiA+IMKgDQo+ID4gKwlpZiAoZGVfaWlyICYgREVf
R1RUX0ZBVUxUKQ0KPiA+ICsJCWlsa19ndHRfZmF1bHRfaXJxX2hhbmRsZXIoZGlzcGxheSk7DQo+
ID4gKw0KPiA+IMKgCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpIHsNCj4gPiDCoAkJaWYg
KGRlX2lpciAmIERFX1BJUEVfVkJMQU5LKHBpcGUpKQ0KPiA+IMKgCQkJaW50ZWxfaGFuZGxlX3Zi
bGFuayhkZXZfcHJpdiwgcGlwZSk7DQo+ID4gQEAgLTE5MzMsNyArMTk4Niw4IEBAIHZvaWQgaWxr
X2RlX2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiDC
oAkJCcKgwqDCoMKgwqAgREVfUExBTkVfRkxJUF9ET05FX0lWQihQTEFORV9BKSB8DQo+ID4gwqAJ
CQnCoMKgwqDCoMKgIERFX0RQX0FfSE9UUExVR19JVkIpOw0KPiA+IMKgCX0gZWxzZSB7DQo+ID4g
LQkJZGlzcGxheV9tYXNrID0gKERFX01BU1RFUl9JUlFfQ09OVFJPTCB8IERFX0dTRSB8IERFX1BD
SF9FVkVOVCB8DQo+ID4gKwkJZGlzcGxheV9tYXNrID0gKERFX01BU1RFUl9JUlFfQ09OVFJPTCB8
IERFX0dTRSB8DQo+ID4gKwkJCQlERV9QQ0hfRVZFTlQgfCBERV9HVFRfRkFVTFQgfA0KPiA+IMKg
CQkJCURFX0FVWF9DSEFOTkVMX0EgfCBERV9QSVBFQl9DUkNfRE9ORSB8DQo+ID4gwqAJCQkJREVf
UElQRUFfQ1JDX0RPTkUgfCBERV9QT0lTT04pOw0KPiA+IMKgCQlleHRyYV9tYXNrID0gKERFX1BJ
UEVBX1ZCTEFOSyB8IERFX1BJUEVCX1ZCTEFOSyB8DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ID4gaW5kZXggOTAyMWYzZWFkN2U2Li43MWQwOWMyMTY5NWEgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtMzcyLDYgKzM3MiwxNiBAQA0KPiA+IMKgI2RlZmlu
ZSBHRU43X01FRElBX01BWF9SRVFfQ09VTlQJX01NSU8oMHg0MDcwKQ0KPiA+IMKgI2RlZmluZSBH
RU43X0dGWF9NQVhfUkVRX0NPVU5UCQlfTU1JTygweDQwNzQpDQo+ID4gwqANCj4gPiArI2RlZmlu
ZSBJTEtfR1RUX0ZBVUxUCV9NTUlPKDB4NDQwNDApIC8qIGlsay9zbmIgKi8NCj4gPiArI2RlZmlu
ZcKgwqAgR1RUX0ZBVUxUX0lOVkFMSURfR1RUX1BURQkoMSA8PCA3KQ0KPiA+ICsjZGVmaW5lwqDC
oCBHVFRfRkFVTFRfSU5WQUxJRF9QVEVfREFUQQkoMSA8PCA2KQ0KPiA+ICsjZGVmaW5lwqDCoCBH
VFRfRkFVTFRfQ1VSU09SX0JfRkFVTFQJKDEgPDwgNSkNCj4gPiArI2RlZmluZcKgwqAgR1RUX0ZB
VUxUX0NVUlNPUl9BX0ZBVUxUCSgxIDw8IDQpDQo+ID4gKyNkZWZpbmXCoMKgIEdUVF9GQVVMVF9T
UFJJVEVfQl9GQVVMVAkoMSA8PCAzKQ0KPiA+ICsjZGVmaW5lwqDCoCBHVFRfRkFVTFRfU1BSSVRF
X0FfRkFVTFQJKDEgPDwgMikNCj4gPiArI2RlZmluZcKgwqAgR1RUX0ZBVUxUX1BSSU1BUllfQl9G
QVVMVAkoMSA8PCAxKQ0KPiA+ICsjZGVmaW5lwqDCoCBHVFRfRkFVTFRfUFJJTUFSWV9BX0ZBVUxU
CSgxIDw8IDApDQo+ID4gKw0KPiA+IMKgI2RlZmluZSBHRU43X0VSUl9JTlQJX01NSU8oMHg0NDA0
MCkNCj4gPiDCoCNkZWZpbmXCoMKgIEVSUl9JTlRfUE9JU09OCQkoMSA8PCAzMSkNCj4gPiDCoCNk
ZWZpbmXCoMKgIEVSUl9JTlRfSU5WQUxJRF9HVFRfUFRFCSgxIDw8IDI5KQ0KPiANCg0K
