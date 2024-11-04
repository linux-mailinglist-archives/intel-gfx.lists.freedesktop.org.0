Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3729BAE62
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 09:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A58E510E2AB;
	Mon,  4 Nov 2024 08:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DPDhl1z6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47CDC89864;
 Mon,  4 Nov 2024 08:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730709839; x=1762245839;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ISNnE0zVKlwdGwHoLbwjVs88DB4mJxe7/LYwSf/7ENg=;
 b=DPDhl1z6wRW8mmEFTWeADMN4tqHO6ybVqvhfu7uEugNsdnncLFz0urt0
 zAaUfDkGm2OWxqjQKpGLdU7ryp1ULCdfBvJo0QDenPUM++4luiACVMoMI
 XM3BgRBUEheV8Cms3Bd/qeWfp4LpsSvwO+z114xeK43Jbsz9syhiDX+rS
 LDwC6Opqgc19PxrF1X/8JMHb/NLXGUf4n/qbKcGZJ4JMcyG98TkcxUDSb
 GRIL0ZkBxt2aDsc4kMKHdRZbIn1TJX6rxF3CftKABSljjQXNPSzeAJEfJ
 ARpEDUQlBZpCmjiBwloIzJLuvOrxvLdPBt7HV+9vsQVLEtC16p81aGkPN Q==;
X-CSE-ConnectionGUID: D9QNx+O/Sr6DPpXKujiIzQ==
X-CSE-MsgGUID: Sc3gj/g8TW6HvhnNQsC3zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="41786815"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="41786815"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 00:43:59 -0800
X-CSE-ConnectionGUID: lcInmr1VQX26y6RqGRRhJA==
X-CSE-MsgGUID: CBJHquZvR4eBofHT/PmBng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="88348603"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 00:43:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 00:43:52 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 00:43:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 00:43:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W6XyEwzeSLal+Hg9KVsNwJo/R7UfVyQR0SIYDJrJ56MmatPxem0rh4JMESBSH5wLPJL0gUyh7RsZY0u2AJq6vxVX/Eq5hHn/zmvp/VQptC5YGbHQlJQBfzpzlWqV00Ax25iT4CRRyzF2FfblBsYHEmqfmUvND3+qbcFNz7ps8y950dKwGYpWgIeP4Lq+wTE0yxgJsrJdv6qKvQ26LM438ADrptXKHdRAK27gOu3ywo3XuVdlpJ3E/q1hOZsQyYEc4w4ngKdGJlE+88Abp37FkzLMMfSUJEn46V27YGrs2Glq2QcMmzXfDtdfF7lY/WzQCYpEUS/tMF1gqp3y4rfDDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ISNnE0zVKlwdGwHoLbwjVs88DB4mJxe7/LYwSf/7ENg=;
 b=dCcz5jDV/t8YZw6CO08lHZ6FG7EIesEEL8FgjJBW+eTAjyx7Y88kwVs3quISxo3V5Wy4b8CIf2Etcb4ysyJfsZnxVtcf2mVY+XBHfg4yiS3RKXdnsG7vhI47roSC3Tj6jmIh3WFLhKPLl2R+LG0z7KL8L6GvI5CwIO0tFeKlkhs8a3t3bMNZyxYAYlPIm8T329gcQd8yDlES9yxJpQt+mvMB1hDVj1mRA7yy0dkTfSrhQ1XUW/rx28OAU7s1arwEwNq+NWQhMasWP4TtBf5MovBb3VhrIe58kekiZghIBaod0zsaOOrfHADR0SgRt4Sr3JIeXxKAcSnxAhj4jfyodg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB8564.namprd11.prod.outlook.com (2603:10b6:610:1b1::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.24; Mon, 4 Nov 2024 08:43:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8114.023; Mon, 4 Nov 2024
 08:43:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
Thread-Topic: [PATCH v2] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
Thread-Index: AQHbKf2OsdBgI7Fj+0C4JuT6QBHeu7KijOqAgARKYQA=
Date: Mon, 4 Nov 2024 08:43:37 +0000
Message-ID: <1a6b1d207030b8f49dab28c2cbbb54b61bddb50f.camel@intel.com>
References: <20241029122415.1789528-1-jouni.hogander@intel.com>
 <ZyTv1aNCoUVZYBFH@ideak-desk.fi.intel.com>
In-Reply-To: <ZyTv1aNCoUVZYBFH@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB8564:EE_
x-ms-office365-filtering-correlation-id: a570098b-8ffd-4432-70ba-08dcfcacc6b6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?dkZBWk5IZlV1NjIyeHNFRFg2UGhUTk4vaTBaaUlyTDQwelhPK2NZZjhGQy9p?=
 =?utf-8?B?RDN6UFlpV2JqR01KdXdJVjJyY3pCV2EvYW9HaENEOERIN1h6b0twT1g5U1lR?=
 =?utf-8?B?ZTB0WlNKc2Q5SWVlQk5Nd1B4T2srekk0WHNlQUhuTkNHd3dXK3hIbmFQNmNO?=
 =?utf-8?B?ems3TWpJNWJkQ01pWllmSlU5UitGTFR6dEZwTXljU0hWcTdhYnBPY25DQTEy?=
 =?utf-8?B?SFBOWE9CS0IxbXRFcEQxbnBRaXFtclBDSGMrOFErajFJdzVNUkJDYWJCMGUx?=
 =?utf-8?B?Z0lQVWs0MG1sYnpFSTZOMkc3RjZUTDJPVThNZHBHVThxNTExS0ltUVVrVFNv?=
 =?utf-8?B?RCtQdEhPdHp6QSswN28vQUtrbUJGdkNDMEk3dElYWDBkUERsNjdPYTFjbXMy?=
 =?utf-8?B?Z0o3R1hFU3A1Z1FGc25VUmpyS0FMQnR5eGhyK25td3g4NTdhSkVRS2RFMmxa?=
 =?utf-8?B?RmU3cXB1S2JOeHpMOXFMVDJhb2tXS0lKZjJiTTlZQ0Z0ajdsOS8yRmllVUdB?=
 =?utf-8?B?MW41S2lZU3huNnhpT1dlcklackxNcExUa1lCVVFvajFjeUFDaVBXbDc0bGpz?=
 =?utf-8?B?QVhzTTh6RytvQUh3Q1p0WEVXS2JkSlFMZXE2OU1SK1pqUTQ3QzN1ZHBlbGJi?=
 =?utf-8?B?S1plZ3NMNU9vanlRbUpJUEFzZEc1SFJSczAxcERaSEJkYk9aQksxcW5jNkt1?=
 =?utf-8?B?ZGhhcnp3eElHeFYvamlKSXpCY0FBeTFuWkt4cUhERTdHSmpmRXFweitkSFpv?=
 =?utf-8?B?N3U4aWpFYmVnRnZCUnA5QzhaNEFXYi9oZUJQdU1wSE4wVUcwdHVkdlpBeWtm?=
 =?utf-8?B?aW16TDAweFpQSExkQjk4M3p5bktDQjJ3NzBVc1dDQkVlZlZ3eDIvK3ZiQmcz?=
 =?utf-8?B?K2R4bnllOUp3dTRoWWp1b0Jmb1BsTDFmNit2RURGNDZiODE5QW85UFFNRmkx?=
 =?utf-8?B?MVRURHhXQVR3My9JV1ZMaHRmWW5ueGNzTmpjejh4azRPY0o4TzZQR2Y1ZEtM?=
 =?utf-8?B?YWdyVnhaaFY5cDE2TlNBcVBNN1BjM2UwZzEremhRT2FiR3ljMkVLU2MzSWVN?=
 =?utf-8?B?K3NPdXBLRmpSODVXQ3pNUXR6RTFvVHBLOEpXVDlJZVo3YmtoNkpFTmdLNTg5?=
 =?utf-8?B?Ni95U0VYdmFPWjRvMDVCSURlcE9nZjhtZzNnQWVqZmZSNS9qV21QdWZTSHc2?=
 =?utf-8?B?S2pGRk9vMGMydEFUMjMyS3cyWnFONVBTb2tYeDJPbG85YTV0b2VTdmxkbEI2?=
 =?utf-8?B?TGxlc3lHcFFsamg1UHlKb3JKcXZIVDlGK2wyQmxldGxMUGVEeS8yb0Vld1NM?=
 =?utf-8?B?QjQ0Y2VGZnhtM0lhYjlXVGJWNjVOc0lZbWZNY252dFRtdUNBZzdNMWVNRElR?=
 =?utf-8?B?RkFZamRzOElhQzlzMmliYmlqUjEwM0hweGlmNTNtMG9iSkkzcHZEcmIwN1pH?=
 =?utf-8?B?Q1I1T0ZqcFluL1p0UWV4aEVJaEh5WENZQy8rbVZ5QURUOTBhblRmQXZYQ0pk?=
 =?utf-8?B?R2NsTlRvdnZ2RnM5VTUxb2o0SWM1c1ZOU3R6bys5UVE5RkVzbE11ZDRxVjN2?=
 =?utf-8?B?bFRjdlEzSXdGUjQ5K2toSVcvWVE0VDlEQWpzb05BdmcySHpUeTdoU0k4R09k?=
 =?utf-8?B?dWRVbGY4MWQzcUc0VitmditzNlFib0xCWTg4UkFta1JRTVkzYkxVMU1XZ2FH?=
 =?utf-8?B?Q2V5Zi9nNjV5QWZiUjBSVzg1UW9oamI3cTE4NUN3MUpRRFo5alVsWCtiTHoz?=
 =?utf-8?B?TEtTczJQUCtnSnJmd2VSMEZPd3RLYUc0cnpXQjFKOXE1ZWRjN2RiQW0zcUxj?=
 =?utf-8?Q?pUeJHjiq05h0URkgaLoGXHC+7sxFEb+FAlJ3o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTVzOFFaRmNhcU9IM25SZW5YNk1mclFydENYM1U3QmdmS2wwd3hMdm9ac0dU?=
 =?utf-8?B?VlkrYW05ekFsaU1kVmpJNndhVVVwUjNsbDUxWWI3MEF5czc1cHVlYU1ZYm1h?=
 =?utf-8?B?QTdXM3p6bG1NQTJDVWl6YjJwdE9LSFR1RGwzVy9rNGZzYi9tNmkzemJUM1ZW?=
 =?utf-8?B?Y0VxamR5TlNORHptOFVTSnhDSGIyN2ZudHFySmhiVzhnbmlMU1JOVlFTZHF3?=
 =?utf-8?B?RGtFOGx3OEtyZVZIOGhaQzRLTFpiN091bWZhdFdaR2IyWkpDRHBEcVlaYXFy?=
 =?utf-8?B?UktSSjVqZ28rV0luNng3QmxrRy9YVmUzMHdvc0t1QlFobzJ2WFdya2FPbFpm?=
 =?utf-8?B?MmdVRmxGMTBuTkg0UHZXMjMvNTR1YlFCMFFlS3VSOHVvcDBWWVA3blNseVV5?=
 =?utf-8?B?NWRudkVZT2t3MEt1M1lYbnNld3F5Y3ZaMzY2WWpCcCt2RlUrSVZlVlZxajJn?=
 =?utf-8?B?UTA5YXpPcE4zVXo0b1pUMy9tam9JMmR3YU5jU3Q1cnJYMDMwS0dVUEltS2d6?=
 =?utf-8?B?WmRJb1U1VEsyZURFSVlld2N3Tlh2SDJ6L0JuRDJlb080aE1iTUV2RFlMQ2hF?=
 =?utf-8?B?NUFxRCtpaXE5OEJFVGlLYzRwdWxKMDE0MmQ3OTBwYWEvK3BhN0dqSlFmaTQy?=
 =?utf-8?B?Tk8zU2EyM1pOL2J2SzVUU254SWx2NVVyclpVSk1NYWZnRkYrSGcrbWZlNWY0?=
 =?utf-8?B?eWJ5djk0WVhWYzQ0V1M4TGloU0hUUk1vRS8yYXJMNnVMd0ZBRlZ4SzVoME9o?=
 =?utf-8?B?VTl5UFlRcGNGWEtIVXkzeno5c3NxYjhpZkpTN0FmYTNseWVxTTNGeFRPTnhF?=
 =?utf-8?B?RGJLVXhwc1V6QW1jMUFSaUp4eHF6RmtuMTVzcVBObTJBOXphOFFYcWxZU0xI?=
 =?utf-8?B?MmloTWVaU2FmM3pQL1NjM0ZmWnZxZXFVeVZtRWkrNE1Wd2Q3S1pVSTVKejhC?=
 =?utf-8?B?MTRndS9XQUsvQkx5OVdsQzhrL1l6L2QrZVN0aEFkOGVjcTN2ZHFrMCtoTWJM?=
 =?utf-8?B?dE1lNkF6bkNzZUs4aFQ5L3ZLQUI2OE11enF0QzRmNzBoUUNnei9rQ0ZLdHBi?=
 =?utf-8?B?Z2xZLzNjaVZVRUVCOVhEamRWUnJRbWZGdTE1OWhJd1lUdXZYdm5uNmFlS1FC?=
 =?utf-8?B?SFJZODdSblRFU2FkcUZUallFYkR0dEI1Y2FrMkJuMmJFQXNzRkwzNE4xSEc1?=
 =?utf-8?B?QkNGVXpiZTBodzlMMzFoK3hjeW50aWJ5a1BVeGtDRjZnaExJVTRaZnYxUFJI?=
 =?utf-8?B?ZUlXZlFxZ2JzdEVIbHR4YlJzMWY3aURZN3hmaDlwbFVJek10QTV1bi9KRll6?=
 =?utf-8?B?UXgxNkNjVkF2dU43TDl6cVVpNUlkTDhDcHdGbjBJRGswNmZBOTMvWTFZZSs2?=
 =?utf-8?B?T01NUDZXaVlOZ0Y3Y28xamVCeHBkUUhPU09GNGRMaEszZ0xZUzhmbVNtM0tJ?=
 =?utf-8?B?Sk5FcnVjSVR0RlVHZDg5dTRCLy8vNGVRUzU4cDNYWUFHT0gwTmVjbkozeVVO?=
 =?utf-8?B?WkZGdktZa3V5MEVXQ3M2ajZSSDVzVWlFQVFCWHlxeGgwbzNzSXhKcjVxSUw0?=
 =?utf-8?B?Z0VPS2hzaVZJQzAwcnNvRUMyUUR0b0NIbkc5bDhLNnoxQ0pjdWNYOHhOcStk?=
 =?utf-8?B?cVlZcWxNT2tLN1AwZDJDbklqZXB3RkpLZ3ArYWRkOU1xMksrZ2FuZVh4NkFs?=
 =?utf-8?B?NTlCT2Q0NWxBeUtiTitXbjhhRnBoaGI3Q2FZZzlnYzB3UjhOTHNmUThjTG5v?=
 =?utf-8?B?YWxQa1dKd2VYM2N3U2FVdEtoQ25xWEhvQXQ3WUkwbzYwU1Q5ZEFiVGpVQUdI?=
 =?utf-8?B?dkJZRzBXeWhlYzMvOHVscWlxOFoyeDNVQ250VDc5TkMza0VnWHcvaFZsRHpC?=
 =?utf-8?B?OGY4V3ExMnpIcis0cStYb3FDTW95VDUxTndRZThQY3A3K3M2THh3aDAyeTJv?=
 =?utf-8?B?M29iNmdEODlsNDZXTkR5VUowczRPQ1hpbEU1THo1TUJ6Z252czF0L3JaemtP?=
 =?utf-8?B?aDBDQkFYTUtHVFk3dW9Fem9MSVEzSWRwZWltbk1XVm5xdjV0N0V1WFRBRU9S?=
 =?utf-8?B?c0V5Zk1YN0UxRTN6MUpCYXFhaWF1aFVCRzhPNFlhVndHTVFVYmViY0xnWWto?=
 =?utf-8?B?Wm5KeDlYUjVZVml0OWVFNTlNRnQ5MnZCREZzcjhPd21FdVFxSHIwK0JSV1k5?=
 =?utf-8?B?R1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <06E4C41266C7B74AA6EE3FF285DAF709@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a570098b-8ffd-4432-70ba-08dcfcacc6b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 08:43:37.7717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bKN711NC86vzHgpxO2Ez8t6t/kmL6LPYvg7Kn/KCdPIeAOA5delYmqMUawE2TvCTLvchvXohjxsdvTp/TeU78PmYXKU6HRwpDlPBjHF4h9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8564
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

T24gRnJpLCAyMDI0LTExLTAxIGF0IDE3OjEyICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFR1ZSwgT2N0IDI5LCAyMDI0IGF0IDAyOjI0OjE1UE0gKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3
cm90ZToNCj4gPiBXZSBhcmUgY3VycmVudGx5IHNlZWluZyB1bmV4cGVjdGVkIGxpbmsgdHJhaW5p
bmdzIHdpdGggc2V2ZXJhbA0KPiA+IGRpZmZlcmVudA0KPiA+IGVEUCBwYW5lbHMuIFRoZXNlIGFy
ZSBjYXVzZWQgYnkgdGhlc2UgcGFuZWxzIHN0YXRpbmcgYmFkIGxpbmsNCj4gPiBzdGF0dXMgaW4N
Cj4gPiB0aGVpciBkcGNkIHJlZ2lzdGVycy4gVGhpcyBjYW4gYmUgb2JzZXJ2ZWQgYnkgZG9pbmcg
Zm9sbG93aW5nIHRlc3Q6DQo+ID4gDQo+ID4gMS4gQm9vdCB1cCB3aXRob3V0IFhlIG1vZHVsZSBs
b2FkZWQNCj4gPiANCj4gPiAyLiBMb2FkIFhlIG1vZHVsZSB3aXRoIFBTUiBkaXNhYmxlZDoNCj4g
PiDCoMKgwqAgJCBtb2Rwcm9iZSB4ZcKgIGVuYWJsZV9wc3I9MA0KPiA+IA0KPiA+IDMuIFJlYWQg
cGFuZWwgbGluayBzdGF0dXMgcmVnaXN0ZXINCj4gPiDCoMKgwqAgJCBkcGNkX3JlZyByZWFkIC0t
b2Zmc2V0IDB4MjAwZSAtLWNvdW50PTENCj4gPiDCoMKgwqAgMHgyMDBlOsKgIDAwDQo+ID4gDQo+
ID4gNC4gRW5hYmxlIFBTUiwgc2xlZXAgZm9yIDIgc2Vjb25kcyBhbmQgZGlzYWJsZSBQU1IgYWdh
aW46DQo+ID4gDQo+ID4gwqDCoMKgICQgZWNobyAweDEgPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkv
MC9pOTE1X2VkcF9wc3JfZGVidWcNCj4gPiDCoMKgwqAgJCBlY2hvICItMSIgPg0KPiA+IC9zeXMv
a2VybmVsL2RlYnVnL2RyaS8wMDAwOjAwOjAyLjAveGVfcGFyYW1zL2VuYWJsZV9wc3INCj4gPiDC
oMKgwqAgJCBlY2hvIDB4MCA+IC9zeXMva2VybmVsL2RlYnVnL2RyaS8wL2k5MTVfZWRwX3Bzcl9k
ZWJ1Zw0KPiA+IMKgwqDCoCAkIHNsZWVwIDINCj4gPiDCoMKgwqAgJCBjYXQgL3N5cy9rZXJuZWwv
ZGVidWcvZHJpLzAvaTkxNV9lZHBfcHNyX3N0YXR1cyB8IGdyZXAgc3RhdHVzDQo+ID4gwqDCoMKg
ICQgZWNobyAweDEgPiAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9pOTE1X2VkcF9wc3JfZGVidWcN
Cj4gPiDCoMKgwqAgU291cmNlIFBTUi9QYW5lbFJlcGxheSBzdGF0dXM6IERFRVBfU0xFRVAgWzB4
ODAzMTAwMzBdDQo+ID4gDQo+ID4gNS4gTm93IHJlYWQgcGFuZWwgbGluayBzdGF0dXMgcmVnaXN0
ZXJzIGFnYWluOg0KPiA+IMKgwqDCoCAkIGRwY2RfcmVnIHJlYWQgLS1vZmZzZXQgMHgyMDBlIC0t
Y291bnQ9MQ0KPiA+IMKgwqDCoCAweDIwMGU6wqAgODANCj4gPiANCj4gPiBXb3JrYXJvdW5kIHRo
aXMgYnkgbm90IHRydXN0aW5nIGxpbmsgc3RhdHVzIHJlZ2lzdGVycyBhZnRlciBQU1IgaXMNCj4g
PiBlbmFibGVkDQo+ID4gdW50aWwgZmlyc3Qgc2hvcnQgcHVsc2UgaW50ZXJydXB0IGlzIHJlY2Vp
dmVkLg0KPiA+IA0KPiA+IHYyOg0KPiA+IMKgIC0gY2xlYXIgbGlua19vayBmbGFnIG9uIHBpcGUg
ZGlzYWJsZQ0KPiA+IMKgIC0gcmVtb3ZlIHVzZWxlc3MgY29tbWVudA0KPiA+IMKgIC0gbW9kaWZ5
IGludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbiByZXR1cm4gc3RhdGVtZW50DQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+IA0KPiBSZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpU
aGFuayB5b3UgSW1yZSBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guIFRoaXMgaXMgbm93IHB1c2hlZCB0
byBkcm0taW50ZWwtDQpuZXh0Lg0KPiANCj4gSSBoYXZlIHNvbWUgbml0cyBiZWxvdywgYnV0IHRo
ZSBwYXRjaCBsb29rcyBvayByZWdhcmRsZXNzIHNvIHRoZSBSYg0KPiBhcHBsaWVzIHdpdGggb3Ig
d2l0aG91dCB0aG9zZSBhZGRyZXNzZWQuDQo+IA0KPiA+IC0tLQ0KPiA+IMKgLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICsNCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8wqAgMyArLQ0K
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAg
fCA0MA0KPiA+ICsrKysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmjCoMKgwqDCoMKgIHzCoCAxICsNCj4gPiDCoDQgZmlsZXMgY2hh
bmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gPiBpbmRleCAyYmIxZmE2NGRhMmYuLmYwYjdkNzI2Mjk2MSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
ID4gQEAgLTE2MTgsNiArMTYxOCw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+IMKgwqDCoMKg
wqDCoMKgwqB1MzIgZGMzY29fZXhpdF9kZWxheTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGRlbGF5ZWRfd29yayBkYzNjb193b3JrOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBlbnRyeV9z
ZXR1cF9mcmFtZXM7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgbGlua19vazsNCj4g
PiDCoH07DQo+ID4gwqANCj4gPiDCoHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggOWRkNDYxMGM3NDlhLi4y
MjEyYTlkOTcxMjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+ID4gQEAgLTUwMTEsNyArNTAxMSw4IEBAIGludGVsX2RwX25lZWRzX2xpbmtfcmV0
cmFpbihzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKg
wqAvKiBSZXRyYWluIGlmIGxpbmsgbm90IG9rICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgcmV0dXJu
ICFpbnRlbF9kcF9saW5rX29rKGludGVsX2RwLCBsaW5rX3N0YXR1cyk7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgcmV0dXJuICFpbnRlbF9kcF9saW5rX29rKGludGVsX2RwLCBsaW5rX3N0YXR1cykgJiYN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIWludGVsX3Bzcl9saW5rX29rKGlu
dGVsX2RwKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IMKgYm9vbCBpbnRlbF9kcF9oYXNfY29ubmVj
dG9yKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA4ODBlYTg0NTIwN2YuLjc2OTUyMjVi
Mzc0NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IEBAIC0yMDEzLDYgKzIwMTMsMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJs
ZV9sb2NrZWQoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9kcC0+cHNyLmVuYWJsZWQgPSB0cnVlOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9kcC0+cHNyLnBhdXNlZCA9IGZhbHNlOw0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKg
LyoNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBMaW5rX29rIGlzIHN0aWNreSBhbmQgc2V0IGhlcmUg
b24gUFNSIGVuYWJsZS4gV2UgY2FuDQo+ID4gYXNzdW1lIGxpbmsNCj4gPiArwqDCoMKgwqDCoMKg
wqAgKiB0cmFpbmluZyBpcyBjb21wbGV0ZSBhcyB3ZSBuZXZlciBjb250aW51ZSB0byBQU1IgZW5h
YmxlDQo+ID4gd2l0aA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHVudHJhaW5lZCBsaW5rLiBMaW5r
X29rIGlzIGtlcHQgYXMgc2V0IHVudGlsIGZpcnN0IHNob3J0DQo+ID4gcHVsc2UNCj4gPiArwqDC
oMKgwqDCoMKgwqAgKiBpbnRlcnJ1cHQuIFRoaXMgaXMgdGFyZ2V0ZWQgdG8gd29ya2Fyb3VuZCBw
YW5lbHMgc3RhdGluZw0KPiA+IGJhZCBsaW5rDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogYWZ0ZXIg
UFNSIGlzIGVuYWJsZWQuDQo+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gK8KgwqDCoMKgwqDC
oMKgaW50ZWxfZHAtPnBzci5saW5rX29rID0gdHJ1ZTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoGludGVsX3Bzcl9hY3RpdmF0ZShpbnRlbF9kcCk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiBA
QCAtMjE3Miw2ICsyMTgxLDggQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShzdHJ1Y3QgaW50ZWxf
ZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNy
X2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsNCj4gPiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoGlu
dGVsX2RwLT5wc3IubGlua19vayA9IGZhbHNlOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
bXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBj
YW5jZWxfd29ya19zeW5jKCZpbnRlbF9kcC0+cHNyLndvcmspOw0KPiA+IMKgwqDCoMKgwqDCoMKg
wqBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmludGVsX2RwLT5wc3IuZGMzY29fd29yayk7DQo+
ID4gQEAgLTM0NjIsNiArMzQ3Myw4IEBAIHZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVj
dCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBt
dXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKgcHNyLT5s
aW5rX29rID0gZmFsc2U7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIXBzci0+ZW5h
YmxlZCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXhpdDsNCj4g
PiDCoA0KPiA+IEBAIC0zNTIxLDYgKzM1MzQsMzMgQEAgYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChz
dHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVy
biByZXQ7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArLyoqDQo+ID4gKyAqIGludGVsX3Bzcl9saW5r
X29rIC0gcmV0dXJuIHBzci0+bGlua19vaw0KPiANCj4gVGhlIGFib3ZlIGNvdWxkIGV4cGxhaW4g
YSBiaXQgbW9yZS4NCj4gDQo+ID4gKyAqIEBpbnRlbF9kcDogc3RydWN0IGludGVsX2RwDQo+ID4g
KyAqDQo+ID4gKyAqIFdlIGFyZSBzZWVpbmcgdW5leHBlY3RlZCBsaW5rIHJlLXRyYWluaW5ncyB3
aXRoIHNvbWUgcGFuZWxzLg0KPiA+IFRoaXMgaXMgY2F1c2VkDQo+ID4gKyAqIGJ5IHBhbmVsIHN0
YXRpbmcgYmFkIGxpbmsgc3RhdHVzIGFmdGVyIFBTUiBpcyBlbmFibGVkLiBDb2RlDQo+ID4gY2hl
Y2tpbmcgbGluaw0KPiA+ICsgKiBzdGF0dXMgY2FuIGNhbGwgdGhpcyB0byBlbnN1cmUgaXQgY2Fu
IGlnbm9yZSBiYWQgbGluayBzdGF0dXMNCj4gPiBzdGF0ZWQgYnkgdGhlDQo+ID4gKyAqIHBhbmVs
IEkuZS4gaWYgcGFuZWwgaXMgc3RhdGluZyBiYWQgbGluayBhbmQgaW50ZWxfcHNyX2xpbmtfb2sN
Cj4gPiBpcyBzdGF0aW5nIGxpbmsNCj4gPiArICogaXMgb2sgY2FsbGVyIHNob3VsZCByZWx5IG9u
IGxhdHRlci4NCj4gPiArICoNCj4gPiArICogUmV0dXJuIHZhbHVlIG9mIGxpbmtfb2sNCj4gDQo+
IEFuZCB0aGUgYWJvdmUgb25lLWxpbmVyIHRvby4NCj4gDQo+ID4gKyAqLw0KPiA+ICtib29sIGlu
dGVsX3Bzcl9saW5rX29rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gK3sNCj4gPiAr
wqDCoMKgwqDCoMKgwqBib29sIHJldDsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCgh
Q0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSB8fA0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCAhaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gDQo+
IElJVUMgcHNyLmxpbmtfb2sgd291bGQgbmV2ZXIgZ2V0IHNldCBpZiAhQ0FOX1BTUigpICYmDQo+
ICFDQU5fUEFORUxfUkVQTEFZKCksIHNvIGNvdWxkIGp1c3QgcmVseSBvbiBwc3IubGlua19vayBi
ZWluZyBhbHdheXMNCj4gdmFsaWQgaWYgaW50ZWxfZHBfaXNfZWRwKCk/DQoNClllcywgeW91IGFy
ZSByaWdodC4gVGhpcyB3YXkgd2UgZG9uJ3QgaGF2ZSB0byB0YWtlIHRoZSBtdXRleC4gTm90IHN1
cmUNCmlmIGl0J3MgYW55IGJlbmVmaXQgdGhvdWdoLiBJIGtlcHQgYXMgaXQgaXMuDQoNCkJSLA0K
DQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF9sb2NrKCZp
bnRlbF9kcC0+cHNyLmxvY2spOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldCA9IGludGVsX2RwLT5w
c3IubGlua19vazsNCj4gPiArwqDCoMKgwqDCoMKgwqBtdXRleF91bmxvY2soJmludGVsX2RwLT5w
c3IubG9jayk7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gK30N
Cj4gPiArDQo+ID4gwqAvKioNCj4gPiDCoCAqIGludGVsX3Bzcl9sb2NrIC0gZ3JhYiBQU1IgbG9j
aw0KPiA+IMKgICogQGNydGNfc3RhdGU6IHRoZSBjcnRjIHN0YXRlDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBpbmRleCA1ZjI2ZjYxZjgyYWEu
Ljk1NmJlMjYzYzA5ZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaA0KPiA+IEBAIC01OSw2ICs1OSw3IEBAIHZvaWQgaW50ZWxfcHNyMl9wcm9ncmFt
X3RyYW5zX21hbl90cmtfY3RsKGNvbnN0DQo+ID4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3QNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApOw0KPiA+IMKgdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApOw0KPiA+IMKgYm9vbCBpbnRlbF9wc3JfbmVlZHNfYmxvY2tfZGNfdmJsYW5rKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+ICtib29sIGludGVs
X3Bzcl9saW5rX29rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+IMKgDQo+ID4gwqB2
b2lkIGludGVsX3Bzcl9sb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3VubG9jayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+ID4gDQoNCg==
