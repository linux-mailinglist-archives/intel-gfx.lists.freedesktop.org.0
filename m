Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMR5JCG0FGpDPgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:42:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 000545CEAF1
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 22:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5E010E413;
	Mon, 25 May 2026 20:42:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcBVH4pl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0250B10E40F;
 Mon, 25 May 2026 20:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779741725; x=1811277725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=H4GvkP/XcACqYVQBhHdsVQxPQiMwglQQGVXArb4tVEc=;
 b=XcBVH4plCa3SLBnUxpxhjUkLftB/EUcxuQDAlWIR1eKOTMt44YYrOgUQ
 Rq/7caOT6vFvJwKg3FKbrbjGjZGEUr7VJr9AoHagvVdY8tcpcZYiixmZV
 AzHf1/3pxfQaoVH2GDCYpOiNvctAZn/U4s30lHkocv0YZYZtVtYjuF0EC
 Lm+I3r9wbRsEtdZc6cla7hzq1N1h+9LfDeScz4NwaP6jDthwntWZymj6h
 s4UfiLLY9VEZzOPdVckHAyIPBMmZg8V8Ag9eH7QTeXD6LmF+xgDIlfdTU
 649Z6e0Ek2cWGhDVLHDmBpZXPXkJtRZilojJQjyIcvWc8MWBdeQB5pjPe A==;
X-CSE-ConnectionGUID: lgeNARkWT7ymrsebhw0wSA==
X-CSE-MsgGUID: V9lUx886Si+/4Uj5vb3c2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="79704784"
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="79704784"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:42:04 -0700
X-CSE-ConnectionGUID: uJQGpfT2T6Cq6CI3Cv1/jA==
X-CSE-MsgGUID: AjGs7/dqQMS4mSV81MxjUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,168,1774335600"; d="scan'208";a="246661410"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 13:42:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:42:03 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 13:42:03 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 13:42:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yn5JQEqhSRFmqAkeLSln2vQ9GWLg1BRsL2o7g+HCjjRda8jHL7Dl2tc7dLXPFHvf3gxdszBjABO24J5t96Dqth4kLd6fBj32WU6lCIKiWOSwSwsp701VNONLibqDAAf/ge6tt3W/XSzujRzk4epxLcGyUWceUXCrqYga55MuwtKAm/WBPSUR28k9PFVxyXUODYsaa4chNCp84oYMWkaLGqm1serOIGp3zThNj1O8w09k7oixqkGPiP0+LzvKUaqDMYNmpCTeVW35DyEFgiSiMM4ueY1OOYjt8/Qm2+igo4lbS8gD+3w2j/uInx9Ts6dqTO8G0ENkLMK4wgx5MUnYVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H4GvkP/XcACqYVQBhHdsVQxPQiMwglQQGVXArb4tVEc=;
 b=YrkigdMQ0YLYeMQKIncFFusKHjX41JpKb1aRF1ZZC51mZmXCLb2tBn7WGKNsktRNZy8ADbPdoJT/xqH5J5e/3EPPyyKFuO9UwBR2RxMvsMz1gBq0xZl7je6m/fa7su9OJwsSmqJAIWkm45SDPTPXll7RQL6dhqgUSVVbuHwDyaZeMatlQpMDrl5w15jN72TrlwRmoCZCh7DWt65ay1Z36/jjFnyDfgDfiZpBQPrM1GvCqM7bUnntHxCNakya+CpcmSdXAriSg36RLXviWfxX05Efzl79aTdaTGj2bjUulYpO5OmjufD/htKDGNMpszAkSG18PIM9edTZeA0W20wS4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Mon, 25 May
 2026 20:42:01 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0048.019; Mon, 25 May 2026
 20:42:00 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 08/10] drm/i915/bw: Round the PM demand bandwidth down
Thread-Topic: [PATCH 08/10] drm/i915/bw: Round the PM demand bandwidth down
Thread-Index: AQHc6iZKkNwg/EEvYkqPLmjrGlsK6bYfOZCA
Date: Mon, 25 May 2026 20:42:00 +0000
Message-ID: <202eb67f5923a1978b430c9e0876c4700f953d72.camel@intel.com>
References: <20260522200346.17377-1-ville.syrjala@linux.intel.com>
 <20260522200346.17377-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20260522200346.17377-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8319:EE_
x-ms-office365-filtering-correlation-id: d2418849-fd03-4f68-5d20-08deba9e1214
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|18002099003|56012099003|22082099003|38070700021|11063799006|4143699003;
x-microsoft-antispam-message-info: 11sLA3UVqjRGoBU83xMn8Y+9I+URUIflmkbBuU07SUU2U0u36Xj5bMlHdelFqcy+aT/OwB+2pasasvaPlNAnQdSqlLHSDfer7Kj1mibl8lDGOmQYsrJQQq5Mob3ZLfDh7mSUiSmJLqYUm1Zgqw4W2BQOz0YNxXPZla6xHordNevyikqQmfR/24lOwILMNSY/7Qd5dzaNaH31nS/qgaAO0oBwiNqBseD+fHVb7gvmSjQo80izeI14u5cFlvww/HFHADEv3QbXEK8bQ5vMVa2/FUDeStlHbNL0Rnb/JqixKtKPbs8xqtZIBy2pW+4nXsNHAqW7gvGGpwbJsosm3BYfXTiqzLSGwqVi4A6tgV3uuTu0QspfRbElU5DdWChiLfrVxcnSEZk/PmX0OV/QxPUw9NXop4imbkiacF6EWicfMdEXWzclYOYrmYBHZYPnAfSHUcliVnLEpsrI8Khud8eGzYgiLH6gWBIvsjaK2r6IntjMP8tm5beBe+lJW+taQIZipOjesQYgVJXMRwgBZfs7CZe4vYoHkAw6yf+JDAH5eyMD+ZolzGTJCnsbE0q/LDaI1wCzj6xcO8k3P66r/QyCxKk8pNasD4b7NQv8Hw7pVeKVUQpXrXhwaBfKBR6SjUCFwrixPRdgNUo2G7StIuQwRpIomuvSPTavWMnb2GOwii4SdkEDWbdF9YHhn7XsCDlLLIZja34m5/M8OoWUPFONV8xDzbaqSyHiKpQx04gLFnIllcFZH1fX1pjz+dTuoUSb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(18002099003)(56012099003)(22082099003)(38070700021)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmhGYUY0MUcwVytFR01sM2l4azg1dkVMZVRKZDYvWklYWTU5eE8wS3ZUUEFW?=
 =?utf-8?B?YVZZZXNNUlM4aGZkQ3p2RzlEcFBuK3BaY29uSzNweE44Z1AzSXhkVWNNMnFV?=
 =?utf-8?B?TzFJNTdLRFFqSWcyK1FhZ3VmaUxJd0x4ajNxZk0vb3JTQ1d5dFMyMUQ1dVRO?=
 =?utf-8?B?RWJXK2RMcmhlSllIcEgvaSt0YUdvdjFTY0dnYS9RdkZwOWFjckwxQktoOGJt?=
 =?utf-8?B?SDRzYmY1RGFNdU84dTJuM2lRb1BxVS85WlpyUlpNS3BhRHBnRkdkdDdtSGZm?=
 =?utf-8?B?anh5a2xZcDNnTDdpZ25tbmlyekVGb3FaVTFLVEhLMGp1WVR0Zk8wYlZuZGcr?=
 =?utf-8?B?cjU4T3BvdG9kdmtlcS93Z2FvWEY1dDl0VkFLWEFwQWU0eDBIZ21OUnUwZ0lq?=
 =?utf-8?B?ejVia3gxNU85b3BQdEZIaWN5clAxcG5jcDlUTUFPcDRYTVAvSUJCeFhvM3JP?=
 =?utf-8?B?aXZzbHJmdzVQbHU5a0FtM1lJcFAvU1lQcjJpbXFYQkVPMGpkRkhxcktSTHhv?=
 =?utf-8?B?ak9NYUNqUnJsNmZabUVZdjR1VFI3WW9kandwRWRhb2RGMFRHMG80OTdRalFr?=
 =?utf-8?B?bGI5d0lMSVoyVlpBcllyRTREOG91YTRjV0VXNHJFbTdseVRoMENHWkp4L3VC?=
 =?utf-8?B?NkZsYmlwVG1RL1pRNlBoUUY5VStKSm4vVGRiWGZJd3owbklHcVg1aU5RTFpq?=
 =?utf-8?B?cjdya05YYmJCMHpvcEZJUGRrUTYwZFZiZWFKUXkwZWVXL3RqL2xIVUpDNjNH?=
 =?utf-8?B?eEEvdGl3SDUxR2doK3lVbDNsSVZGY05vVGJRTnM5SlpYVEljT1JKWitmWTlE?=
 =?utf-8?B?REtrYmV0TDdxcDVVRmdrRHZQZ1BzcElEU25yY2ZZMEdrMzhscnBYWXFrbUdK?=
 =?utf-8?B?U2JRdDYvS1RoT0xKTmd6UUMvQXFlYUVhMG9iN1d2bTFyaUZjODZQL3crRi9Z?=
 =?utf-8?B?RDloUk9yMlNZQU43VGE3SnU5RThwM3ZUSjBLK3NnR2g4bUdkUXFFVHJpZHMz?=
 =?utf-8?B?Z3JEV25PbWpRQm45cHFHOXBIbzRLMDRjQ2g5dnB4anBGQmVrSWFGOFRIaUVT?=
 =?utf-8?B?SG5xNS9hdEd2bndhcFprTExwTlB4ZzZ6THR2MkkwaFdsOUc2cGM5L1dtbzM5?=
 =?utf-8?B?N0xkVG14MzBMR0VCQUVhcy9ySDZLRnBaWXpCTnRmUmNMeWJKOHZlcHZLbW03?=
 =?utf-8?B?bW9sdC9DUXFpU0N2OC80OEV5VksxNC9lUmttWnZUY1dHMEhsTDAxT1B3TTE0?=
 =?utf-8?B?UGgxT1BmMk5DeUdwM05DT1N5dG5TTEswN24wUVhFQ3Y3NVlQSE9KV0J0S2ZL?=
 =?utf-8?B?Rmxnc1cyOHFqdkxWa0hSeXVYd2JIRTVZbXUxTzJEQXc3ajF4WUxobG5TRk1w?=
 =?utf-8?B?R0ZjQk9PdlJQRXJtWGVFVXBHUWpBZ3h1R0RqRlBTbGJkcXFvWXgwVGluSWRo?=
 =?utf-8?B?NkpNVThHcStJL01lMmd6Si9VZmlPMDdMdHdZTXNLT0l6WHIxc2Yzc2ZnRnNN?=
 =?utf-8?B?U0swWG5tRDlCQnh1ZEJGNGhobldGVTlWUW16QlR4dCtGWDVjRitqZmc5L09i?=
 =?utf-8?B?Y25tNzVqdS83WHJYUDk0Wm94eG51bDZYaUlFN1p3RE55ZXA2c0ZJNFNHdjF5?=
 =?utf-8?B?NjlTUFZvU3R5RFBVeWZQOEZDZGlFTUZLRGJRcEI1bjN1ODdqVE5OcmU0NkR1?=
 =?utf-8?B?czhSY0NteWdXREJOaXlEVm1rNHJkeEg4Q0VJUjltQ0RQVHVLYW5ValRWYmJs?=
 =?utf-8?B?dmJXQ01MQU02aWY4am51czVLaU9TTzEwcGxEeXp2blZidEFTN25iMm1RWWtX?=
 =?utf-8?B?d0xLdCtCcW5IRktHaXlJamNyUXpJWkxDN3VtQ2wyL1FiVDAvV2JXWmVxdmJE?=
 =?utf-8?B?elVxNzZqR1NTMHJCUVV5RWhRd0xaeUdzV0hSc2puT2JaSmc4S3dpSzdpTWhw?=
 =?utf-8?B?SE43U2RtYllyeVRUS3pjZk00YUwwVmdmT2NaRzBIRGdBWXg2a1FweVJXWkFZ?=
 =?utf-8?B?SmNVV2VZdUp5bU14ZWVaMGE5WHo2Mkt5Ymp4SXR6akRZMWdIYkVrdldFNkpp?=
 =?utf-8?B?a2pkWVJZSkwxWkhIZy9XV2hJYkVabmlwMXFmTnVzVm9MZEQyTDhLaDVpeWhE?=
 =?utf-8?B?ZWQweEdhVXhLT0ZFRHdmQXhsSDkzWThnbG5Db0tYeTRBZUp4MmlOOEFTRDlB?=
 =?utf-8?B?dzZ4TGRnKzUwQ0hFN2RBcXA1aWk2WUkxYkNOMmdwcFNWKzVPc3N0SVJpalJm?=
 =?utf-8?B?Y2E0M1FxMUZNQjl6RHV1bDRXWjNXWEh5ang3ZXhidHVMTFEyTXIvcnlNY3RE?=
 =?utf-8?B?SWxVbld1dkk2L2VuVFk0c2s3dHlZRS93b1pWS3JYNkN6VE5jVDFPZWlFaTM0?=
 =?utf-8?Q?iT0DeyNeFhjrsT3finyzIYLJs7Tc2MwuwmCUlBwUEPRLU?=
x-ms-exchange-antispam-messagedata-1: nJjR0uBTzWWGuiaeuSUEjr1zXZlFISVHGgI=
Content-Type: text/plain; charset="utf-8"
Content-ID: <76F59D0159C21E45867050476006625E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EpEfBpEPzvE7X1s+KmT6AK+cmEXeIMmAdug9+41WBCsF8Y15/4xC8dBLnftG4Ll4ndLSVgJD9F1LhPYPN6E+b39oOTY8qYzH/XdrwQ58sS13JA6UJI07vDvbG0BGu7fizHCm556SSVYnaoD11yJoJmhFSYMFEwu54iY/k0yTBA+M0o3BPDkcv7+y5i8pdu0gT29ObJ/gpq16g1pRfI0qczwGdfO8juwZd9Ob8G/+CY6pdXtFFJPRfROwCWfnhF0zkvWctbJ+A6wpgiHrWO7XphKDcTnY4vRGmO6lOlj+d9QEQE/v86eLHclnxU0BQbam73UPDeW8WacK5QTfBL6lwQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2418849-fd03-4f68-5d20-08deba9e1214
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 20:42:00.3720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mSp6i7gXpTpcKy/LZmmdA7AXGqLxUBx6Rwa1fdNNQNkfvIcKHjuVxGJ10hZY/vxpj9il9/vOB7psvdc+3QLpO04dq63EUEcxC/8z8TG4BLo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 000545CEAF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTIyIGF0IDIzOjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQnNwZWMgYXNrcyB1cyB0byByb3VuZCBkb3duIGluc3RlYWQgb2YgY2xvc2VzdCBkb2lu
ZyB0aGUgLzEwMCBmb3INCj4gdGhlIFBNIGRlbWFuZCBiYW5kd2lkdGguIE1ha2UgaXQgc28uDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgfCAyICstDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292
aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jDQo+IGluZGV4IDViYjNhYTcwZDU3MC4uMzkxOTFmODU3OWRmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC0xMTUwLDcgKzEx
NTAsNyBAQCBzdGF0aWMgaW50IG10bF9maW5kX3Fndl9wb2ludHMoc3RydWN0DQo+IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+IMKgCX0NCj4gwqANCj4gwqAJLyogTVRMIFBNIERFTUFORCBleHBl
Y3RzIFFHViBCVyBwYXJhbWV0ZXIgaW4gbXVsdGlwbGVzIG9mDQo+IDEwMCBtYnBzICovDQo+IC0J
bmV3X2J3X3N0YXRlLT5xZ3ZfcG9pbnRfcGVha2J3ID0NCj4gRElWX1JPVU5EX0NMT1NFU1QocWd2
X3BlYWtfYncsIDEwMCk7DQo+ICsJbmV3X2J3X3N0YXRlLT5xZ3ZfcG9pbnRfcGVha2J3ID0gcWd2
X3BlYWtfYncgLyAxMDA7DQo+IMKgDQo+IMKgCXJldHVybiAwOw0KPiDCoH0NCg0K
