Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D09D219D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 09:30:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37F510E5ED;
	Tue, 19 Nov 2024 08:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eQ0/Ix4W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8F810E5ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732005053; x=1763541053;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J9tq9ZJmkOPNmzw1UvnlbqTWpVGhEfPfnkQDp+0YgTo=;
 b=eQ0/Ix4WprHf5tUija57JHF2GBWdDuMVzui8Bj1RsKbIwBnDomZlhMAD
 u5LJP+QDZhrFElPjJaqca4clkO4A56+dkJ0HnKKkO/8RP0/4MP2EtYkxD
 I/SEpeJ9ouBikfeG3/sqbunWquUyEm4lTW7pV2Rvw+YT0uoa1UABBd4KU
 G0SJzflWYcZtbxl91Fn4vxOiEmYKmxAhbCvwZKcGl7kPp7YufnbsAP9YW
 T5cJjvSvojfRMw9xsEP8PsFPws9iZP3halBdszrseNVONCJc9GR0gjkRP
 o0ydE2JqLU78RAlBRJAUDqVVzWd5+Elf12iOaE4hAHoo7SOKkSAk0LJ3S A==;
X-CSE-ConnectionGUID: lOBMuBfmRQKOelzdcnufmw==
X-CSE-MsgGUID: Z/n4AnuWT/a4AM2Xd0yP7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="35899385"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="35899385"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 00:30:53 -0800
X-CSE-ConnectionGUID: L4vJx6h+RPCVadE4515iHg==
X-CSE-MsgGUID: UOlvTGcmSn6mqZMKpTqA8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="89609910"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 00:30:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 00:30:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 00:30:52 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 00:30:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tOLowbx6dTd5pz0dvdIYIq2qhh7NbU53JNE5T296MBNbY8KjBrWVlHdJ3Q0mOm4FF8UETwj30MwmUXsll5+QjajseTGPHQ70LRqV3R8mlfE8JFyjLzZ0huCf9hpCE4SFgPFul/nn4shqm68i2kaSJMy7dPnAW/lsnzhjm8+IdUndL/6FC3lsMJHxcq9s231PKEHwYY5hj6/oI5ann0iPRRMGdkj7SSKAhnhomMbJ5tTcx2TPD828K+kTgC+NuqONAWqu/Dx05Ri/KFgupAXi32QRyjAY95pqPvS38PyoTtMFE+DRknCamV3NukYCZnuhqQdOr/zG5LhCnka3JVcdsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J9tq9ZJmkOPNmzw1UvnlbqTWpVGhEfPfnkQDp+0YgTo=;
 b=byZFx18hTe1GtDaIc8Bo7ins5hGniGijXozbh9UGWQpsBp99IIvkN+EBfkp32PSSKfT97347aNU7hhLT1GcJbc4sPTPTPcAzkQkSriet2e3UsH1NIFtL+DgmgbJ8b4eWsn6qM6QW7Ng4nvU3CNyZwQpe3/VbwTCVAOvnMvWj1Ne+3+Cz/B5c3kmc0MGjEownQySOlO4CeLFd8t550yC+CnB+vpgHLRYSwxtNO5bcuUwqQ4Y7aGeDYALXTsoDdq6Tr+/47uUcyz63rv+y/o6QusKFrWBpNdIaKr9SzcdHCvBQmSbix63O7rN0Nme93Fwq1kbDbsNbzQPrnU+mVAvCwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB6549.namprd11.prod.outlook.com (2603:10b6:8:8e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.22; Tue, 19 Nov 2024 08:30:50 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%7]) with mapi id 15.20.8158.023; Tue, 19 Nov 2024
 08:30:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Garg, Nemesa"
 <nemesa.garg@intel.com>
Subject: RE: [PATCH v2] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Topic: [PATCH v2] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Index: AQHbL3G86EnOfvqbP0mgLJRkqIu2r7K2k5gAgAfHv7A=
Date: Tue, 19 Nov 2024 08:30:49 +0000
Message-ID: <PH7PR11MB59819610A0D2FD5F122BB17EF9202@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20241105103916.1857731-1-animesh.manna@intel.com>
 <bade2dc028aa9decb75a99d5bd3dd9a99ce6b3aa.camel@intel.com>
In-Reply-To: <bade2dc028aa9decb75a99d5bd3dd9a99ce6b3aa.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB6549:EE_
x-ms-office365-filtering-correlation-id: 8c676538-f441-4902-c718-08dd0874793c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bkNlbWt6T2hxblUvMWxubGtvTW9Vek9QTTJSNWhObHBOTkFMNVhYaDByK1ph?=
 =?utf-8?B?RXZUczBwL0EraUV3RHFJNzFZS0syZ1JIVDI3YitxWW5qaG5sOHMyUURSczVB?=
 =?utf-8?B?MTJrVGtwaldMdnZZME1EcTc2NEFTaUMrS2NZVm1SSmxaSjJWUExFV0tWellK?=
 =?utf-8?B?cWFMdTc2K2ozKzdTa05JQUJ6UUd2Q2k5dGNFWmpKenlCbUUzTVRHL1l2RHZ1?=
 =?utf-8?B?SWZ2eGlVekFXKzFTbk9JNzVFeUVXUmdMeXV1OTNPYlF4OUVoOGhTeWZVNVN4?=
 =?utf-8?B?TW80a3ZwZWdSSzN4Q2l4L0FBOEl3WkFhUjBRRnVBUnFpTnlGOFVTbEZNSnJj?=
 =?utf-8?B?TW9PK1ZNNmROdlR3cExkcmluT0hnbFIwek1xZExyMTNqbkZsWkxLdGI3ZmNE?=
 =?utf-8?B?VUNyUVRIRnY4NkMwREtNUm1Pc2owQlVtWGxMVThZZTdWT0UxVzlRblp0QU1w?=
 =?utf-8?B?Lzk2OTR3eHQyUTlMS2RpT3htUTRlWXc0SVNvMjE1V1dPdEFxa1I3OEZkYXB4?=
 =?utf-8?B?c0RjV0ZHQTQ0c3hiNVovUkJRVTdLWHcyaHRIRjR3R2tRcUJJcUNlcmdlbGQ4?=
 =?utf-8?B?VE94eDhhWkwzaERBUFpER0lFMUdCT25ONytRbnVFbWlJdU43R2x4WllFYkRp?=
 =?utf-8?B?S1NOYWdseWppR0IvdVQrTExkQk1PSGVaSFNkOFc1d00yVEl2Z1lsUkcwSlNp?=
 =?utf-8?B?NVVKWndpMlFKd1RZOW1pTVdiV29xVlVERm5vR1YrRW81Ui9WQjlIRWRFS1JB?=
 =?utf-8?B?UFlYdUlNdTJVN3kyRk5HN1o4SDEvbXRmOWVoaGxxT05vNGZOOVZuZHNoQUVu?=
 =?utf-8?B?NFVGRk04UllobnlFYzhCZDVRTlYwK0NBOTJjNEtaUjNwdWpKVnBvU3lzMVZO?=
 =?utf-8?B?dmJBTDJPamFWUGJ4Z2JQai9ZN2dPNmhhMlJOR1pvSm4rOWlzYS9jREZhUlBn?=
 =?utf-8?B?Q1AvcnhSclk2ZHpRWmpiMWRDSHZydUIvV2dwRkpBdnYvM0g5b2RVR0FjSytR?=
 =?utf-8?B?c29nVEZwZ0dNbWRCTWlhR00zRGN3RUIxT2NvUDR1MzZaaVZxZ1l1OEhxVkhW?=
 =?utf-8?B?c3czSUlHRWZWbStCUkRXbE9wa2xKeUJqWWhoUHBrMDRzSFVZTFA0Tk13d2s4?=
 =?utf-8?B?ckNmQWh6NGMwb0FBOWg2R1ZkY0JiUnc2Tjg2bVlqVitHZ2V6enFYRlBWdTYx?=
 =?utf-8?B?VGIySENrUlJybEtpVDc0Ym5hVkMxRnM0NDRlUEI1UEErTkV1N2o2N1hRT3BC?=
 =?utf-8?B?akVQN25mU3A1VS9xYk9WNGd6WmZ1Y1J2bFRRMGYrYm5hakFhM1V4aHdwWFdq?=
 =?utf-8?B?YnFQYnlhMHVaMEZHdGpOaFJOZ1I1MkN1b243MGFKVWllMUp2S1dVanMrK09s?=
 =?utf-8?B?ZzhSaEtaWnFkeHEwS0tBcmd4UThxd2RKLyswTDNLRldUaTg3QmpPYlhXdHJv?=
 =?utf-8?B?S2MxMU40SmIrbkJsZk45VE5kZjgxUi9kWDFYcVJ1dFRBR0lSaW5oM2lGbmVz?=
 =?utf-8?B?SHFaYnFUTWd5RWttcUoxZDR4WnlwSlYyVkxSWXQ2ZXJtSjN1V1pHUWpEc2k5?=
 =?utf-8?B?MGRkd28zSG4ra1ByaTdrb3hLRFMrMXZyV3BycDZVSkNncmd6cWRmMFhlQXdX?=
 =?utf-8?B?bXlNbnlrbkhPTjA0MXVKT1l3dnI0TXFTZUtBQXZDNSszTUhYVG1RayszRG81?=
 =?utf-8?B?Wm9MbVNoVUprYmZaa21DY2R2Z21nK0c0TmVFanFKOTgyQ0N0OUxlaldBQSt6?=
 =?utf-8?B?aVNneFRDa3k5YkM4ZGhGaUppUURlVVZ6VUw0bVp1RUs0MDBuTUNvT3VCTkV1?=
 =?utf-8?Q?i+fDvSZKDqRUA+Kcb3XVaCK24fnbklPBsbPKk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUxXL3VhWmNpZ3NKbytTbStIbW00L0ZVTHh0OStVL2wyUlhoZjY0cGROMlZm?=
 =?utf-8?B?bW9ReWFXUjB4eXNPWForOGtaa1I1YlRWVEVYenR5Ky9xdFNzODZINllyVHd5?=
 =?utf-8?B?bjJWV1FWNmpIMHpoV29xQ3pwL010Uy9lMEM0c0ViN2xhN0ZHeUMyMURHUnNu?=
 =?utf-8?B?VDVQb2ZQOGYxaWsvanJWMXlkWU1EakZtUEpMSmlWKzZsSDV2a1dMcXMvU2Rs?=
 =?utf-8?B?emx1YSt3OC9JeFpZeitiMFJNdUJneXZMMFRrYmQvc2VKcmZOVHBkTkIzTEJx?=
 =?utf-8?B?VzFDVlNuVGQ1Y0FXZUo4RjI1MmtxY1orRlliQnRTZUJpTGx2Q0VBYVZhN3c2?=
 =?utf-8?B?RFJTVzlBUVR1dWpzWVFicU0rTWhyRk85UVBhMm1iQWxYck85NW9QZ1ZIcXZt?=
 =?utf-8?B?NUkxY1BSTXd2UFNjdkFZKzVheW5ZZTliRURmT3lmUDBDRWpJN3EvbHpSZEVT?=
 =?utf-8?B?Z0lWMHNoMHZmUktSUnpJSldPbXJRVUlVRjZMTm5nY3RFUkVBa3NUWFFVNjR4?=
 =?utf-8?B?ZkV2T0NET3NndnNtTS82ZVBnKzlzdzhxOXJQSGxJQXhzdHpyc2E0c2N0QVFm?=
 =?utf-8?B?dXEzK0MzRnlrbmZKYkJkZElRek1JTjB0NHBmNDBVL25aTjNUeWVTMFN1eXBO?=
 =?utf-8?B?SEdKQ3lQYlhNVDZId0xxNTNOOHBQaUw2VE5QcCtFNWdSY3lOZnA4K25Fd0VU?=
 =?utf-8?B?RnVueUQ0b0t0T1NwbmZOQjBaeFd2d093bkowbHlmTUx1aGd1WHpVcnZXdHQ0?=
 =?utf-8?B?UExOeGphSkRqbTFqUy8wMFRwL2VvTDVRQ0MvRnQvaXlXQlVTOTN4UUlTR1FN?=
 =?utf-8?B?bzd6U2x2YkVJc2NlSFh6elpRMVpJSzZqRW1nbGhuM2U0dGNhYlRsOWFvVDN0?=
 =?utf-8?B?Q0pyUmRuczNBV1lkVi80Q2NpbTFBcC9rcGtLd3ZvbFVwYU9vd2ptTm1DdHlw?=
 =?utf-8?B?RGFxS0s1YXlzT1AzV2xLajRHMFp4TkN1dVRkaStxOTE3d0M2bG1aWlJNRDZr?=
 =?utf-8?B?cWh4K3pZUFNleFZ3UktMQ0lWNW9UZ3JKQ0FEWXQyMG1reFlVTG4zT3ZEa2cw?=
 =?utf-8?B?dWM4VlNKalJTNGN3aWNXa09peCtUOGFXQzBYZk9vMUNzbGp1YVFjZ1JwVDhQ?=
 =?utf-8?B?Tmx0dWZxM1JERVdGRDU5Qis4UTRXcjVnNlJTdkgzak02ak1mbmVpY09oYy8w?=
 =?utf-8?B?WWs1eW0zQkJYbnRMNnowQWd4bmthSnhRZ0NyUTdCYUM3a214WUx4Y2tFL0Jz?=
 =?utf-8?B?a2JNdTMyUENzdis4eVFhRFp4TFBlT294aER6dlFUVmRZNFBvMVRpVE16Uk5O?=
 =?utf-8?B?dDhrb0poMFNGOXkxTVJHZzBJZERPNjN4dkxhSjdOemtNbnVtYkFuL2lFczly?=
 =?utf-8?B?S294Qmd6UDNOQVdsOEJGczRUYjJ4dDJMZ28ybmxEK2dHZ2dtM2V4OFcxbmdJ?=
 =?utf-8?B?cFBhZjRIdnp2enl2VVZVU29oRm1xbFpkYS85ZzgzcFZjeU9LSE1zamJjdkhD?=
 =?utf-8?B?MFJPcm04ZmpUR09YVnVTTzhldzRqbEQvVkR5UnB2elcrVFBMYXdxaEQ1WUo5?=
 =?utf-8?B?d2dvbUNiVThKK0ZmQnJkKzFMa2pybGtqdEZKWFFid2tsWnh5ZGRlMWpjYXBO?=
 =?utf-8?B?amdqMDhFckRuWXFKYmdpTi9vRFR2REJiNVFxaEtyZ1pQVW1aU0d2YUE5K01v?=
 =?utf-8?B?aWNWSmpnU2dpMTcvZDJwY1RsRHNLQlh3ZzVYaytwYUQ5bUd5QytobVVETzcw?=
 =?utf-8?B?UzBGK2tFOS9ELzREb2k4cGhEcDd3a2F5U1NUeVZIVWZBdVhjYUVoUk5mYmNa?=
 =?utf-8?B?RlVYeUxFVHNyZy9CL0lPZDF5MXgyalRIb2tkZ2xzMkd5OGZNZlFtNGFUZ0to?=
 =?utf-8?B?bzhhSjJ3ZGdMZ2NOelM0U1JwRlhyL0didTRGQWVXN29ZaHlvU1NqbktRRVlv?=
 =?utf-8?B?aHNtWnAvMXl0UFRFNUtoNnVpTmFTM29tTXpNaEYvKy82QlYzQlg0MWNGaGMz?=
 =?utf-8?B?ZFExOG9KV1EzM2tXOHJscERzdGFNaW5CZ2V1R28vSHBMcEdMRXBBRmRzNys1?=
 =?utf-8?B?c016a3I3NzZ0MGlPbjNZYlZtRVZ1Umt3SWtxSVNpQ29vUzEvTlFqcGRELytK?=
 =?utf-8?Q?OQVfBKiHqobjPjwflIHNUjJ1B?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c676538-f441-4902-c718-08dd0874793c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2024 08:30:49.6710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zutGwABOd44jRMOmJnS1T/fCUtPm4hmL5BI7IaIC2WfM0LrYsCBebh0vDeWashTJQXx44ZZgiJOIvxYC53Pmow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6549
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAx
NCwgMjAyNCAzOjExIFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxh
LCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBHYXJnLCBOZW1lc2ENCj4gPG5lbWVzYS5n
YXJnQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTUvcHNyOiBE
aXNhYmxlIHBzcjEgaWYgc2V0dXBfdGltZSA+IHZibGFuaw0KPiANCj4gT24gVHVlLCAyMDI0LTEx
LTA1IGF0IDE2OjA5ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IElzc3VlIGlzIHNl
ZW4gd2hlbiBQU1IgZW5hYmxlZCB3aXRoIHNldHVwIGZyYW1lcyBhbmQgd2hlbiB0cnkgdG8NCj4g
PiBkaXNhYmxlIFBTUiBhdCBTUkRPTkFDSyBTdGF0ZSAoMHgxKS4gUFNSIEZTTSBpcyBzdHVjayBh
dCBTUkRPTkFDSygweDEpDQo+ID4gZm9yIG1vcmUgdGhhbiA1IHNlY29uZHMuIElzc3VlIG5vdCBz
ZWVuIHdpdGggU2V0dXAgZnJhbWVzIGRpc2FibGVkLg0KPiA+IEN1cnJlbnRseSBkaXNhYmxlIHBz
cjEgaWYgc2V0dXB0aW1lID4gdmJsYW5rIHRvIHdvcmthcm91bmQgdGhlIGFib3ZlDQo+ID4gaXNz
dWUuDQo+ID4NCj4gPiBIU0Q6IDE2MDI0NTk0Njc0DQo+ID4gV0E6IDE4MDM3ODE4ODc2DQo+ID4N
Cj4gPiB2MTogSW5pdGlhbCB2ZXJzaW9uDQo+ID4gdjI6IEFkZCBkZWJ1ZyBsb2cgYW5kIHNvbWUg
Y29zbWV0aWMgY2hhbmdlcy4gW0pvdW5pLCBKYW5pLCBOZW1lc2FdDQo+ID4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gDQo+IFJl
dmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
VGhhbmsgeW91IEpvdW5pIGZvciByZXZpZXcsIHRoZSBjaGFuZ2UgaXMgcHVzaGVkIHRvIGRpbi4N
Cg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNiArKysrKysrKysrKysrKysrDQo+ID4gwqAx
IGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA0MTc2MTYzZWMxOWEuLmQ4
ZWIwZDQyN2Q4YyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+IEBAIC0xNjQwLDYgKzE2NDAsMTUgQEAgX3BhbmVsX3JlcGxheV9jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoHJldHVybiB0cnVlOw0KPiA+IMKgfQ0KPiA+DQo+ID4gK3N0YXRpYyBib29sIGludGVsX3Bz
cl9uZWVkc193YV8xODAzNzgxODg3NihzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
PiAqY3J0Y19zdGF0ZSkNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gKw0KPiA+
ICvCoMKgwqDCoMKgwqDCoHJldHVybiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgJiYgaW50
ZWxfZHAtDQo+ID4gPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMgPiAwICYmDQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCFjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSk7IH0NCj4g
PiArDQo+ID4gwqB2b2lkIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkNCj4gPiBAQCAtMTY4
Niw2ICsxNjk1LDEzIEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybjsNCj4gPg0KPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5oYXNfc2VsX3Vw
ZGF0ZSA9DQo+ID4gaW50ZWxfc2VsX3VwZGF0ZV9jb25maWdfdmFsaWQoaW50ZWxfZHAsIGNydGNf
c3RhdGUpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBXYV8xODAzNzgxODg3NiAqLw0K
PiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9wc3JfbmVlZHNfd2FfMTgwMzc4MTg4NzYoaW50
ZWxfZHAsIGNydGNfc3RhdGUpKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGNydGNfc3RhdGUtPmhhc19wc3IgPSBmYWxzZTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IgZGlzYWJsZWQgdG8gd29y
a2Fyb3VuZCBQU1IgRlNNIGhhbmcNCj4gPiBpc3N1ZVxuIik7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
fQ0KPiA+IMKgfQ0KPiA+DQo+ID4gwqB2b2lkIGludGVsX3Bzcl9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KDQo=
