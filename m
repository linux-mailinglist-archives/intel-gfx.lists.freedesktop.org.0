Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E78BDFD81
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ADF110E892;
	Wed, 15 Oct 2025 17:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkB8uNiI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C3110E892
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 17:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760549252; x=1792085252;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fa94e60JJPDv720gyurZewKrQt4Kl/nNFpGJ//W8vxw=;
 b=RkB8uNiIsP3iliJ1qVfzaV75c8dPrBO6udP526mgvAyPh7lrMJLKXtCL
 uerjzIvFoIVtTAlQ+1YL6eWyt8B9ilFRhE3EVNkY2o36TAzyesmNvYYqK
 VQFhCcOfHltvfPFXZfTOhiRcOuvdRVly9LFoMjViVcID+ep1nYkhMPkkH
 0wqvN7Z1xXCC4ttqA67nnPHrG0HCqccqgGnVjrEB4t6u5qoz/4kA5SmDb
 g0xp3obEE3E7YwPdF7mLOJfB6nBv8u0DWBBF/jim5LX8tvTVzoJiZtNfF
 KWdp50E/1o2R0VSCQm7jmbAl968b+tF5FreaiIwcQ4CRE5PM5kfydNJPy A==;
X-CSE-ConnectionGUID: 6v85xzpYQ22anqhWz6DU0Q==
X-CSE-MsgGUID: dabgmmghQZeTOrawOMyPFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62439032"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62439032"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:27:31 -0700
X-CSE-ConnectionGUID: rybYTwjIRdaTkKML/JnU7w==
X-CSE-MsgGUID: WipwmTmdS5WEPgpq5sVPpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186640790"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:27:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:27:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:27:30 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:27:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZG1fdn15ZAH6RVXfV/lwB9CDLAfssRjxL0LAcHMzzTXygQ2eluFB4/jTBpwuS/uXrvRSKv6IIRPBGjbvag7ZFUGS4eOOwIUwfqzvzhqN8Sx9aZmRceKc1o+onYSZrawnFOoAAQOeP0DgWHYPf4Wzd+kioYl5WaZ/aUILSCykNRT2Gz6UONtqohpGk7pGKxNGxn7nWNVyChf2VEEiOIJOyfJVf9IWdCOqYH2eLUrsfXVw0fQVVHiUXWj70Hb0aE27QO0P4806RXRR+Wb/jOOwQkJuwLFix/q01KqhLVsWmZKSZUvJHaOwqqXl5yEwCwt5euHvvT1qxYalp5jQHM1UOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fa94e60JJPDv720gyurZewKrQt4Kl/nNFpGJ//W8vxw=;
 b=yjDGSG8sW3cQfNTnHjyxDYTLniUyh/ElPwRgwyfejTcAGOMId1Axj/v4p4hu8clCI/MkeCwb+gpwj3gH989XNUTMDtLG2GeyEto6Je/yMBekeytLfvyl7katMm5KM8KDyEuLRpimYL6C/0nHuFM8whW+LW9Rm7eF4f+l5k76xv5Em+jhTNL+GUuSfNLeL0r8ImzPAWeeSyaVWS+gCtShQs0dElc4R7bujX+gI+QzUYvu9gf/CKjEEoI+l1zcO38sPNLasxzyY6Qz14IYTfayUm5yCVwdRAvWmzTr7FR/GKqDaZB2nzh2w7X/Sm0eYpZJZidY0W6OLipodS+Jzwhzyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5254.namprd11.prod.outlook.com (2603:10b6:208:313::16)
 by DS4PPF25B1C4D24.namprd11.prod.outlook.com (2603:10b6:f:fc02::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Wed, 15 Oct
 2025 17:27:27 +0000
Received: from BL1PR11MB5254.namprd11.prod.outlook.com
 ([fe80::bf0c:ea27:d51f:1625]) by BL1PR11MB5254.namprd11.prod.outlook.com
 ([fe80::bf0c:ea27:d51f:1625%5]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:27:26 +0000
From: "Poosa, Karthik" <karthik.poosa@intel.com>
To: "Thasleem, Mohammed" <mohammed.thasleem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Subject: RE: drm/xe/xe_debugfs: Expose G7 state residency counter through
 debugfs
Thread-Topic: drm/xe/xe_debugfs: Expose G7 state residency counter through
 debugfs
Thread-Index: AQHcPfj5URQVBdmwREq6bXDRhf6JVw==
Date: Wed, 15 Oct 2025 17:27:26 +0000
Message-ID: <BL1PR11MB52546274B01A3ACB1BA13B17E5E8A@BL1PR11MB5254.namprd11.prod.outlook.com>
References: <20251015195200.34440-1-mohammed.thasleem@intel.com>
In-Reply-To: <20251015195200.34440-1-mohammed.thasleem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5254:EE_|DS4PPF25B1C4D24:EE_
x-ms-office365-filtering-correlation-id: 1804153b-1a42-4b92-6025-08de0c101c68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?SWxMRURtMXcxS0dLOVR0elN4NzdUQTlLZGFob2FQWjFoaXNaeXFEMlA0U3V6?=
 =?utf-8?B?bXZkNC8vY3FLRUxUMmU0RVdOaGRrMDFFQVNxYWIyZjRxRkp0d2t3dm0zWWNB?=
 =?utf-8?B?OElWS001cFpzTjBLSkc4MzBiNXAyOWVyRmhWeEhOMlVheloydlRsYWJrSGRp?=
 =?utf-8?B?WFZOSk5nNHlLYm5OZmRhRU9mblNETGZ3RUVrZmI1V09rQlJDL1FnMDBCb2RU?=
 =?utf-8?B?VU5VbXhzWU45T2JsQTNKaG50bndhQ3N6dkVvLzBJaW1SaDIzRnY5aEZVMHUw?=
 =?utf-8?B?NG0wVitEd2h0RkJjYmFMcDMvMHF3MkkrdzEyWDJmdXJHZFRULzlNY1Jlbk5O?=
 =?utf-8?B?Z0FZL3BoVHRNY1crT1Z0anE1bCt4ZEhyVzh1V1RYZzdrdDJMSUE4ODdFVzlE?=
 =?utf-8?B?WXI1V3BRT2xJUmRoT0I3eDFhek4wUll0eEFEQk82VHhOUXZadExsNXRQeTJw?=
 =?utf-8?B?VXFKNXNRcjFMQ25vUjJza0doZDJNNFAzblVuN2lsKzE0ZmtFc1RtRysrT21N?=
 =?utf-8?B?VmlyL0FFdS9RZjBrZEd2ZGtpWkN0bitIZXROYzY2NExaNzhEU2llU0RiNk5O?=
 =?utf-8?B?UmVlU2UxRkRGTVJHZHhrc0hNNTBjeVhaOS9EKzlnTVdiait6elhXcEQ1cGRs?=
 =?utf-8?B?OHU1dGJIR0hLeVMvQys1VXNBMGJXdVBLalJ0T0FhdXNySk5XbGMxWnNZek4z?=
 =?utf-8?B?aVNtSTRaU2ZkazlkQUM2UTZwTGIzL1dua3Z3Q1MvOE1QOWdGRURTaEo1b254?=
 =?utf-8?B?QXU1WVBib0ZMY0IwK2RYbC8zUVBTakZxT0NvcXhtZkNQZVZkd0tsekcxUWdz?=
 =?utf-8?B?VXJuNkRFTTYvcEt0MllXWklPbko0U1FIYWIxcTc4WjQwTDM5b1RqRXFLclZZ?=
 =?utf-8?B?dDNsMGpvanBCbXlieFRpMzFwMVJsT3dibFQzV2RHTVF1bXgvZ21JdXBKWU9P?=
 =?utf-8?B?SjZOSld6cWYzNDJvTnhjcnZoY05JcVBGQktQZDBYOFQ0djVrYTA4Ni9tYUtk?=
 =?utf-8?B?SmE4aFd5RlFsOWFoOUs3THBHWUxReGxSSVZ5QVljR0NKZEtoTGd0MVN3NjFh?=
 =?utf-8?B?a3Fwd3MyT2kycHFLeVRyQVZpZVY4TDhsaXJ5UW0rb2FYNnRpRE1UUHJDT0J3?=
 =?utf-8?B?SDVZclZWWXQrM1E0MHFTV3RwQVJ4VndDVzRMb1JuUHVtU0hON20vV1hiMzRh?=
 =?utf-8?B?UHpsYU5rQXlOR1RXblZMbEh6UWE1aWFtN3Q4ck1DeDF2OTU2azlxNFRDV3Yx?=
 =?utf-8?B?T3dDNUowSVJSVGxUblhYWkIxYTE3bDdoTHd1ZTV1SklVVktVTVRxNUdJVjJs?=
 =?utf-8?B?WFFzdkYzNDk1NkRUWDlreXgwTDFJaSszUUlsN1o2MnhqRmJUN2hEL1VlMWtK?=
 =?utf-8?B?Z2J4TnZyQ1RhZ3pmWEg1SGM5Y25vOFJWNTk1N3FSek5WbkM2VGtjRmh4cUd1?=
 =?utf-8?B?OGwraFFRYVRiQkM3OUFLOUlVbEFESDNRNzd2Wi9sVU5WNVBkKzVRdEoyQkJX?=
 =?utf-8?B?a2xsRndvbVRwalJlOUoxN1pkV3pPb3liK2NqbFRWZElZTEV3LzF1Q2VPMWhz?=
 =?utf-8?B?RXJPeEF5VzAxRkdEM2tWbnp6L3hZWjczSHdoTHA1OGJYV3AzOWpsclBSVzBF?=
 =?utf-8?B?K1JnTVhIS2liWTY5eGo3VkkvZEkxK050UE5UdmV1Ny9VdDNmZFoxSVNvY1Zh?=
 =?utf-8?B?dnFEM0hXUnUvYmVxdVVhd0VIdFdnWm0yczFiNXV0S3g5N2Jjei9tY09KQkxv?=
 =?utf-8?B?V0RFMUtDbC9pYitUbU83K3dzQnJ3Mkt2ZTJaeWs2dTk3NGRzeDAxcisycHpY?=
 =?utf-8?B?Zy96WDFySDNSenpadTRSZ3FHcGNaZ0dsZ3lkd0twaG9WS1kwbk03bmh6TGZ2?=
 =?utf-8?B?NnFzM3ArOWIyQ1VIbm4yS2VBSDMzS0llWExmUGgzd1ZuM0RUQWR4QldwNDg4?=
 =?utf-8?B?Tm1QU0FiVDQ2Q0xURG1haUFKRkhjb1hyeG5URDdSOHZHMkJWWjh5VnV1aUk4?=
 =?utf-8?B?aVJvK3UvUm9sSDl1MnpZVEw0WmNDNmVUYy8zbTJKU0hkUEhIeEt5UzhXekR3?=
 =?utf-8?Q?nHS7Eh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmNiUnIxb3Q3U1d0eEhHbFhjSUdIYzA2dkVVcCtIRUc3Y0pwZFhIQ0lML293?=
 =?utf-8?B?UDVYOFM3MXBiVWhaa1JJY0VZMC93aUI0UFpFM1VaTmg0aWlEQnZ1aWs3MGxo?=
 =?utf-8?B?dEpEeEl2VWtYQ3psVXhyMEJFSjRjN3VWb0ltcjFnUlprZjh0Slpoc1FjTkpq?=
 =?utf-8?B?TGhuVklpYVlKUHVaUEJ3Nlp2TkhzNFAyTXlMQTlXQzkvSUdDdzJoRWFuQWpR?=
 =?utf-8?B?UVNoM01UU3B2dHZrMUxlVFRtZ0VSUEptT2p6OXdWcEJOdTBnbXFlWGp3MzdN?=
 =?utf-8?B?WVRuc29kaTNmSHF1eWRyblphYU1QYUtTeEgraEs3Rk56SE41RFZzL0czZlBr?=
 =?utf-8?B?UmM1MDcrVDRSVFNEb0E5djh4OEJFbkg0RDJFV3hrVjYzSU9WbGYya2I5alBP?=
 =?utf-8?B?d3AvUjY0SEN0U0lvazVZQUM1VkNmZDR1WjVsdENhZVI2aXowRC8ySlBvRk1M?=
 =?utf-8?B?ZTEzSHU4RWRpTnZ6SE42VExpbEVNTHZjd0ltdkE3M0pZNjl4d1I5M2E3Q2o0?=
 =?utf-8?B?L29ZbzA0Q0dNWlF4TW02RGd3OGFuOUZwQW5Tek9QTXAzUFBlK3o3RlRzd1gv?=
 =?utf-8?B?SkFjTWgwRGk2aER0VXV3WTlXZXdxTWtWQXlqRDdMMWIzazNZVmIrR2F4OHlt?=
 =?utf-8?B?Y1NjNjNsRnE4RVpKMERuTnlJZXVBQldtejRJd05rSXI4ZUJadmd3cmJTWmJO?=
 =?utf-8?B?UWFURnI1NFNnSXZ6eUlGQjE1SHR6U3ppckFlRDRmMFljWkFVMmRXSEhvZGpX?=
 =?utf-8?B?NXlvZmk4dVk1aGUzdTlURURUVUhCOGtVV242RUhCL2FDbEdqMzM5L1BjUXJO?=
 =?utf-8?B?bm0rRWkzcm5lSTlld3NsbmtMT0JjNGhpWXdzYm1ScWtmWnJCTElkUGhlcFVu?=
 =?utf-8?B?TFZQSVVSVUhmSGF0eDdGYWtEZU90Y2x0Ly9mYys5RjlCWlBCMG1KdFF6WUZa?=
 =?utf-8?B?MzdyQUxIaGhlaWZ3ZFJNVFRYaTk3elRwUWMyaG1Gcy9YVE9uY2FnRUdnRStK?=
 =?utf-8?B?RnNPUy8vNGdyWUhPOTNmR3psODVjMDhPSE1IYmR4UnIwWFpLcXpiWWVINFJQ?=
 =?utf-8?B?SHg0TStobndKYkl6KzBtRWpHOTdSYWVVRFNOMk5LdmRETUM1eFQwU29VOEQx?=
 =?utf-8?B?OGtEMUJtNTRPSHJQcVo1SmVyUHVRelRPTWZJRWtUcXBpd01SRFNLUzZiK2RU?=
 =?utf-8?B?NEJZL2RrcWRWRDcvS2VTajdGOW5wNDZwZE00ZXhGa1lyNFo2TUNQZ1JLMFBG?=
 =?utf-8?B?SEVzRnZiNHFLVEYwUFNKOHUxYVRiSXlFNGMxd095VDRmQmM0eEhWR3ptMmxO?=
 =?utf-8?B?dkFQZ2NWdHpMZU4veDE1OHBUOHcvdmtObXFOSEVBT3R5azdGdHU0SDIrODQv?=
 =?utf-8?B?U0hsclJWWUwxdDVoNCtNYnA5cWM2dHFIeEQ2RG04Y1EvYXc2RldkRlM1OGlE?=
 =?utf-8?B?ZnNCQWdQd1BQZ0tBMGpZZ0d6eERFREpGY1lUdXNCcmdhWWprMnpDSmxIZW1G?=
 =?utf-8?B?alFuc0t4MG1BblprSEFsRUFDMS9LcTdwNUg5V2ZYTG85TnpFcHJkSkdDcHJt?=
 =?utf-8?B?ZVJWalpwWUNRcDNnREdHNUp1RWZMU21kT2c4UEkyNzhXZFFhaEF2aTVFMkt6?=
 =?utf-8?B?Q0g0TExwNDYwWFZvNWRVZHhpYXJ6TXFlbEY5b0NaRWlYNHdMcGsvSTdxNG9z?=
 =?utf-8?B?eVh5dFRIY2RybWhybjlUcEJCVW1FNTR1bGp1bW5kZkdGTVhiT0RwcEx5Rnlw?=
 =?utf-8?B?aEZuVkt6Z1dpUmhjTllVOS84OVgrZ1VLbk9mcmFZZXlKcDI4aHpNcTRvVDlQ?=
 =?utf-8?B?MGpnY3lReWYrSlNRVzZmUnovNFVhRGFIcUI1RWNKNmpFbTExU0dNZXRMbktr?=
 =?utf-8?B?NHJRc0FoYmNmZ3B0YkhraHRaTDA3TkJLTTFWa2wyako1S1FNYkl4UkIvbUtP?=
 =?utf-8?B?YkVrRnVUVW9MTFlYZ2xzS1pMQUE1TmN4R2RSVEl5YXZYRWgydGZkaEhpUGZH?=
 =?utf-8?B?bDNMWUtlamxTWW1vd01UdFdqa3Z3bnRMZ0Z4eUJvQUNBeU9ZSjVGSXRvQS9O?=
 =?utf-8?B?Tzh2NTdWK1BJZm1vOVFzUmgyeVp0TGQrQWd1bGRsblZGWEZ4eDFCbUVaeDFk?=
 =?utf-8?Q?rgs32sGXRr7PnS02PXT59bu1Y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1804153b-1a42-4b92-6025-08de0c101c68
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2025 17:27:26.8472 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njo+kl7tXCur2spMb+Ruma2deM5uSEh2ozdVgnhZdE159MoxOTWHE7a3jjq22OAUz5CEWM96QHEQzvSeSB6jxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF25B1C4D24
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNb2hhbW1lZCBUaGFzbGVlbSA8
bW9oYW1tZWQudGhhc2xlZW1AaW50ZWwuY29tPg0KPiBTZW50OiAxNiBPY3RvYmVyIDIwMjUgMDE6
MjINCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGFuc2h1bWFu
Lmd1cHRhQGludGVsLmNvbTsga2FydGhpay5wb29zYUBpbnRlbC5jb207IE1vaGFtbWVkDQo+IFRo
YXNsZWVtIDxtb2hhbW1lZC50aGFzbGVlbUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IGRybS94ZS94
ZV9kZWJ1Z2ZzOiBFeHBvc2UgRzcgc3RhdGUgcmVzaWRlbmN5IGNvdW50ZXIgdGhyb3VnaA0KPiBk
ZWJ1Z2ZzDQo+IA0KPiBBZGQgRzcgcGFja2FnZSByZXNpZGVuY3kgY291bnRlciBpbiBkZWJ1Z2Zz
IGFsb25nc2lkZSBleGlzdGluZw0KPiBHMi9HNi9HOC9HMTAgc3RhdGVzIGZvciBjb21wbGV0ZSBw
b3dlciBzdGF0ZSB2aXNpYmlsaXR5Lg0KDQpDYW4geW91IGNoYW5nZSwgDQoNCjEuIEFkZCBHNyBw
YWNrYWdlIHJlc2lkZW5jeSBjb3VudGVyIC0+IEFkZCBHNyBwYWNrYWdlIHN0YXRlIHJlc2lkZW5j
eSBjb3VudGVyDQoyLiBHMi9HNi9HOC9HMTAgLT4gRzIsRzYsRzgsRzEwDQoNCj4gDQo+IHYyOiBV
cGRhdGUgY29tbWl0IHN1YmplY3QgYW5kIGRlc2NyaXB0aW9uLiAoS2FydGhpaykNCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IE1vaGFtbWVkIFRoYXNsZWVtIDxtb2hhbW1lZC50aGFzbGVlbUBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL3hlL3JlZ3MveGVfcG10LmggfCAxICsNCj4g
IGRyaXZlcnMvZ3B1L2RybS94ZS94ZV9kZWJ1Z2ZzLmMgIHwgMSArDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94
ZS9yZWdzL3hlX3BtdC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL3hlL3JlZ3MveGVfcG10LmgNCj4g
aW5kZXggMjY0ZTliYWY5NDljLi4wZjc5YzA3MTQ0NTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS94ZS9yZWdzL3hlX3BtdC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9yZWdz
L3hlX3BtdC5oDQo+IEBAIC0yNCw2ICsyNCw3IEBADQo+ICAjZGVmaW5lIEJNR19NT0RTX1JFU0lE
RU5DWV9PRkZTRVQJCSgweDREMCkNCj4gICNkZWZpbmUgQk1HX0cyX1JFU0lERU5DWV9PRkZTRVQJ
CSgweDUzMCkNCj4gICNkZWZpbmUgQk1HX0c2X1JFU0lERU5DWV9PRkZTRVQJCSgweDUzOCkNCj4g
KyNkZWZpbmUgQk1HX0c3X1JFU0lERU5DWV9PRkZTRVQJCSgweDRCMCkNCj4gICNkZWZpbmUgQk1H
X0c4X1JFU0lERU5DWV9PRkZTRVQJCSgweDU0MCkNCj4gICNkZWZpbmUgQk1HX0cxMF9SRVNJREVO
Q1lfT0ZGU0VUCQkoMHg1NDgpDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hl
L3hlX2RlYnVnZnMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9kZWJ1Z2ZzLmMgaW5kZXgg
ZDY3ZTMyZWJiZTI5Li40MTdlNmRmOTVlMWMNCj4gMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS94ZS94ZV9kZWJ1Z2ZzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RlYnVn
ZnMuYw0KPiBAQCAtMTQyLDYgKzE0Miw3IEBAIHN0YXRpYyBpbnQgZGdmeF9wa2dfcmVzaWRlbmNp
ZXNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUNCj4gKm0sIHZvaWQgKmRhdGEpDQo+ICAJfSByZXNpZGVu
Y2llc1tdID0gew0KPiAgCQl7Qk1HX0cyX1JFU0lERU5DWV9PRkZTRVQsICJQYWNrYWdlIEcyIn0s
DQo+ICAJCXtCTUdfRzZfUkVTSURFTkNZX09GRlNFVCwgIlBhY2thZ2UgRzYifSwNCj4gKwkJe0JN
R19HN19SRVNJREVOQ1lfT0ZGU0VULCAiUGFja2FnZSBHNyJ9LA0KPiAgCQl7Qk1HX0c4X1JFU0lE
RU5DWV9PRkZTRVQsICJQYWNrYWdlIEc4In0sDQo+ICAJCXtCTUdfRzEwX1JFU0lERU5DWV9PRkZT
RVQsICJQYWNrYWdlIEcxMCJ9LA0KPiAgCQl7Qk1HX01PRFNfUkVTSURFTkNZX09GRlNFVCwgIlBh
Y2thZ2UgTW9kUyJ9DQo=
