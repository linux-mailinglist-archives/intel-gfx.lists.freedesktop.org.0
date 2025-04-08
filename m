Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A9FA7F2BB
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 04:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD8E10E5A9;
	Tue,  8 Apr 2025 02:36:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="auaOYkcZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDFA910E5A4;
 Tue,  8 Apr 2025 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744079786; x=1775615786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G7uSUnXVq5rBd30LwdEKXGZsqEMJMRLq7wVfgS/2ooM=;
 b=auaOYkcZ+JJX5VSRD4uV4BgxcviOND7mxOJUjYF81ZyiwyjPjRlVVEBu
 SneC+oetgUi7c+mqMCdy6VHUDY2MuQyuN0rJi4K8FFzMlVXzurCLdcSM6
 c3iEKQO+GnKa2mcF//kSMNIVmVJRaiDGiC+mbIjPYWH5DNSXR9yDaScA6
 v7WASfpXixsvgDHF0HMWAA/DhvmIvTxLBku9Xp5SP159VPZ72zfZyaqdW
 Ls5+X7dQ3RXBkNmfnqcRqLa+r5i2kPGEvcT3sEuh1mXWbihHzeMUywD68
 MH+shWq0gE2PPm7stgU9YgcgW/kikMzjnVK2ZUDBI4wD5qAvOsTkwJU5V w==;
X-CSE-ConnectionGUID: ZL+IRIGgRdmjItetqOw9+A==
X-CSE-MsgGUID: Dl1Kjr0ZS6SHlY1dGXw9dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56863525"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="56863525"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 19:36:25 -0700
X-CSE-ConnectionGUID: VCA1cQt0Tw6S4YJL07yNzw==
X-CSE-MsgGUID: uVA12FUNRy6Q7rVbIaJn1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="133334308"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2025 19:36:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 7 Apr 2025 19:36:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 19:36:24 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 19:36:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A7bkT1UiZcSUy4e/ggByLdneNwsNmOswm/U0+ZDe24aSL0NIpok5R4HII+6QQnyuA/rm4b4NDnJhynkdII/1HTc6VsEEVXMDQzemkiBPUJ7UaZQWjkRmdcZTAKezBL2MR1oJuBsqklwB0fOrWOmHXamf2UdkPSwxGtAE2Ko3zagKo78Ql+wDJm9NSh6UNy/G6eIfJyF85shrTGq9nd6TIebgwT5gLxZGu1dVILkWgsGLddEHdZ58NBpcUVY4GQqX9BhKRtj7loFYtMkVAmXpmA/VIsA0izrBN34apE5Tjg1gSLsJ43uuE3PLaAKj1mwjnMSWK62+/7RL3OfGK46l8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G7uSUnXVq5rBd30LwdEKXGZsqEMJMRLq7wVfgS/2ooM=;
 b=L/P9bMx6yKxiPNYF1VW8r5JyErn8kBKNOdlkCCmnUevjCoLn1nwH7o5bT3Xs3lYBugJzqQXt8ZWGIIfDj9Rt5o7/9tIy64e2dJHWdBZTqjETEi8CkgJCZhawNuifQ++Q4YCVMWAZptHtDCZODA5EGmETWzznbPGpA7FUkEFr1UI4lrGm3I/+J/jgCUIaCFfqYpvqfm2rovcB6R+KmQ/y8dbXyGu5dLtchDXe79juEzWvzZpLUDSRmhJD7f2ijswUMSXathUTW3RKT2v5z4hUKr+JPCjtVRbjcbaAdnPEBELbtZP7mIxD0JIN1W+gP6tNJ+bEgErWwViSSCa2eCWwLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS7PR11MB5966.namprd11.prod.outlook.com (2603:10b6:8:71::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8583.42; Tue, 8 Apr 2025 02:35:54 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%2]) with mapi id 15.20.8606.029; Tue, 8 Apr 2025
 02:35:53 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCH v9] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbbJRhRlqxj1o4Q0e9RZY+cTnNGbM6+FKAgCZpULCANy/OgIAA8v9A
Date: Tue, 8 Apr 2025 02:35:53 +0000
Message-ID: <IA0PR11MB7307948FAC72B284301ACC1ABAB52@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250122-hblank-v9-1-90afda006685@intel.com>
 <Z6U7Z5EWRYzKAUlQ@ideak-desk.fi.intel.com>
 <IA0PR11MB7307437F3882B0B5BAE7B3F1BAC92@IA0PR11MB7307.namprd11.prod.outlook.com>
 <92b3bf89f7b2b921c424b91235a9e02f616cabaa.camel@intel.com>
In-Reply-To: <92b3bf89f7b2b921c424b91235a9e02f616cabaa.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS7PR11MB5966:EE_
x-ms-office365-filtering-correlation-id: 63eb41a6-52d3-4047-0b7a-08dd76461580
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?d1Z1VVVCR3h6dG51d3Z1Zmw4bHlQOUZZbldCbHFZT1JFQ0J3bFFQTGdKL0p3?=
 =?utf-8?B?NzVPVFROK3NsbXU4ZjRBZFpwMmtiYVpMR1NEVTVxVUtvR2lBVC9LNXR5dERG?=
 =?utf-8?B?Z2IrM0JmOTdDU1pneTQxMXdHQXpLVFJ0cjhmell3WjQzRTZEeTk5WnlYVXBW?=
 =?utf-8?B?MngrKzFuMTVXQUsrWlhCYXZzcERwdFJoeDNKdGEvb2s2ZXZVR2xYY3ZxaWtU?=
 =?utf-8?B?dlFybWNodFA3UEw1SnMrcDllaFBKYmczNG4wcHV0NEpkdVFsbUpnL3YxWlRy?=
 =?utf-8?B?VU9jRndzRnpPY1JyTlpkK0NwbUZ1N0NVQnlpUmtaR3I3cE1PZXBKMnlDYlBC?=
 =?utf-8?B?T1dQMERuWGE3S3VNZGl2Z3liWnF2bEwzWDhEQVcrcE51djN1S2ZnUzBlQVhT?=
 =?utf-8?B?NDFHdlQxSHVzQ2VPM1N1TG94TDV3bVlRcVhYYmYrd2RLTllXdVY1VEYzRGRV?=
 =?utf-8?B?YVNvUmlPS3kzbGRURHR3WngxS3cva1ZkUndPSUZwL3pVLzNaOFpsUE0vNTVU?=
 =?utf-8?B?YUtUUWFJd3MwZldTYmp1b3dGQ0pxTzJZaGNBTzBjdXZNUkpLQnNnclJJamVJ?=
 =?utf-8?B?UzB3cm9uM1dhVE4yaWplYmlyZ1BLYnRiZ3BZMUZHSzNBdE9FU2lDK2JhL1Ba?=
 =?utf-8?B?VzlHd21PQll4R1lkNlJVeENmZGJ0YmNpcHAyNEhwTzZDZzJ6M0FlMUEyYVgx?=
 =?utf-8?B?cXBNM3BSektEYXJhLzAwaCszYTg4VWRwTm8yQ29HZDFsRE1lcGE0V2swNjhI?=
 =?utf-8?B?d0VmS2cxNzBkQ1FUYXpOSXNSV1hHNEEzTnpRaFNLcDBxSElWRkEwNTJveWFV?=
 =?utf-8?B?QUhwSDhmb1NRbnBSZDVacjUvaUJEZjlLSmFqbmd1cWFOdXZxUDRzbnpUbWxN?=
 =?utf-8?B?bzJRTTh1S0JDRHJvTmRaS1dSVnlYS1NMWXBrODJLMlBnV2x3dDFwNDJacGE4?=
 =?utf-8?B?V29OVmtzeHJZSStENVVudDNEazVINzc5a0U1MDFkMkEwQ2VxNWdsY2VwUzEx?=
 =?utf-8?B?WHpDMkRXOTlqdjhpanZGZUszY2VxUG9pZHhRWmo0TEZKYjF4UVpyOThyTlNs?=
 =?utf-8?B?cDREVVFwVjZ6R25sWXhJL3pFUkMrNUl6QTVVVCt2M0s1clBYanNadm9TdUZl?=
 =?utf-8?B?NXlra3Q4R1loUXUzZ3d2ZWxhQmR2c0psUWFJdG9kaURHTzhLU0FYWlFybTFn?=
 =?utf-8?B?UHA3bitxc0JaQW5tbENNaWlyWlRxcG9EOURhclllUy9FeEhBc1dMZDI2VnB3?=
 =?utf-8?B?cUM1cUhSVDdnYkRIVHdNbXlUcEJtZ3VaZlAxSldaZmowb0hjWVhSVWlCZENT?=
 =?utf-8?B?RXFRWWRpQmtybk10K25VdFk0ZUlmMDNVTGczMGtvQ1JEVzRLSmpFZjZ4VzhK?=
 =?utf-8?B?RkNWbGpBTUNlM0kxc0k4dWFrbkZzcDRlVWxVUXR0TTlBaFkydEdPdGJzQnRT?=
 =?utf-8?B?bW15MjZSM2RSb0R3RXFpcEs5dWJXckJCZUJGcU5GekVyZlZBY0NZbmF6bk5B?=
 =?utf-8?B?RW9rY0g3clhYTWhOQ2RYV0xON0ltOFlQeDdyb3I4SEFvSHlIcHlaK29DR2cv?=
 =?utf-8?B?VVdJc0dub1FnbFcwdmppR0NTMXZEbnd4RERWdU1DS0hvZmFrUXJPa3JGUWFx?=
 =?utf-8?B?WjA0bHNkUytMdG1tVi9zS0xVQVBnL0VsSVJzeGVpZkdNdHJlNGtjRndMK1Vs?=
 =?utf-8?B?dDM4cTF2VFIxWndrNzZXR3d6VVVBV0ZjaWhpdlJyWWlOSkVSVW9BVUUzZjVp?=
 =?utf-8?B?SEZvWkhRS0pmb3MzYVYyUSswS3RNMm13RUNPZFp4QStXaW9ITE1XcWN3bmd3?=
 =?utf-8?B?WWlpQnpxeHRpdzNpNGFvalE1bVVGRW5UMDBBc3BWR1lUVmpuUVA5Q3Axbi9O?=
 =?utf-8?B?K0FvVUx1eUhUVnVrbENhQ2VkaE9FUFE5dEVFTGN5V20xVnBqbkRCTUdKQllW?=
 =?utf-8?B?UDZ3cUw5Q0ZrNVBZcWxWQlNHUnplaFpUY3NkTUl0REtTZ3lrRWpPdmpCNjFq?=
 =?utf-8?B?WWM2L2VnODZ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?anBwUUs2UXJlNnk0VmF0RmpLOHljbXAyR1h2MUFaQ1loT09vK3JVdVFzRjNW?=
 =?utf-8?B?bGUvZFR3bkVDOXFDelBLMm5kaC9qOWwyV2t3M1ZmeFd6M1oyZ3VBcERSV292?=
 =?utf-8?B?UkV0ZlNXeG03dy9maVYzMDdZbnV5cUtBZ1BSM2YvdFNNeVpmcTFST3FuUDVp?=
 =?utf-8?B?R0p2N0xObFZXUWh2TUVOUTZwNllGNmV6anNGMWhOa0poNU9qY1RaNU5IeE5h?=
 =?utf-8?B?WEVGWGNqY3lZNFI5WmFGMEFab2t4MDQvcGdHYXQ5WWJhUlZBRVNJc2l2UHlL?=
 =?utf-8?B?M0RaZkozMGpXcHhIeWp5a2JkVnh0d3F3MFRrL2ZhU096YnR6VFA0cjZIalhG?=
 =?utf-8?B?VjczQWFzelhZR2pndXFuWk9BTFQ4ZWhYTHM0dUovMi9lNDJXWFVXQlFkYXlk?=
 =?utf-8?B?cjVzaGU5dVM0REtQb1JMZUhGellubkFKeTJrVVZNL3hXTXpGb1FuVlFNYStC?=
 =?utf-8?B?QXdENWl2MEJNenhyV1ZsdDI0YTI5MlJNZi9hZnZxSWszZEMyMXIyaXBwVEk5?=
 =?utf-8?B?VUNOSFcrcFZ4YnQ3aGpaOGhuUm5FYkpHUnUvcmZPbGZwcHJhRTJEdzQ1blFj?=
 =?utf-8?B?bFZvTHAySy9HelovdkZLQXNOcEpRaGtiZ3lha3ZYWi9rZXR6dWpxQ1U3L0hU?=
 =?utf-8?B?YzEzUEpucmhWaGU2eDFpZXFkbm9LblVCS2NwajJ1cEJVSVZ4dzB1TTYxNEw2?=
 =?utf-8?B?ZTJOcVNrQmlqc2h5MGpHTTFYbHpHQ3FGWC92emMxN1E3MnpNdlhBdVpMby9Z?=
 =?utf-8?B?ZEk5RmFla1lJS0tPcXpjemVYMVprNDRXaEVTWWN4QnZKK25QSDBjUVpPUTY1?=
 =?utf-8?B?SHRpUFAxTkhjZXFNWnhMbURKY2RWc3B4eGFPQk5YdUlYRkQyWHhMSEp6NE1K?=
 =?utf-8?B?WFVSazVRVGwwTFRnUDJyUU45bzhFbk5ZMG01bnpkQ3NzWW9nR1RVN1RBY2tt?=
 =?utf-8?B?RmVMYVFCZ1diN0FVTTRyR0w2M0NhdlVxcGZzMmNleDFWdkJVRm1vNEwraUZM?=
 =?utf-8?B?SHdYY0FiR2lGK1VhU09pMWdzWkkxb25JVmhZeFRjSmw5c1Erd3MxSDN6aVZJ?=
 =?utf-8?B?Y2F1UWUzTTU1RXBTM3I5UXl5TEI0bTdhNFJFd2dFelFuN1I4UU5NN3BzRlFS?=
 =?utf-8?B?SU1yVUc4cHIvb3RkWks3U2d0RWRpSmdyVHVvYjVBdTVJZGxsTEFYaVkzaHd6?=
 =?utf-8?B?cGRTTEhGcEpIMGRmWkM3VzNxWG5DK3dtQlB0WWYvTGxmbFRrbWp3emhLOFJq?=
 =?utf-8?B?RTh0di9XUmRPNGNxVmFQZklxU2Zqc053RSs2eitqOVRyZTVIeFBRRncyeVRS?=
 =?utf-8?B?ejhzelo5aHpyK292bGd4cWxiTytwWW1FeGgzT1NQUnhNRFdvMFQzMTFMSjFl?=
 =?utf-8?B?d0xpNGpvNENldEpkOG9qaUhFcUo2L2FLOWRGL3hWekpKbXRVcnl6RFlPV01C?=
 =?utf-8?B?Z1lRWEVrb2lQTFhmOUV2Mm94RWdnZzl5Ykh2SThMclRFeXJJVmVWNlMzbHBv?=
 =?utf-8?B?a0RNTVRJaHVGMTE2QWtMZENZSFZ4ZEl6c3hXaE5BU1dXYTh1N1A1Y0g3ZFY5?=
 =?utf-8?B?a2dCKzdpYzNvT3pyVlR2VkJCb3JVbGIwejhsZGlZbndOTDNZRUtBNERSY1RV?=
 =?utf-8?B?NHBLK1Ztbmova3pIOERTeVhYNEpLcGVaRUN5dTBNakIrcDFaT1gxdnhrTkZZ?=
 =?utf-8?B?TXp2ajYxUkFRRzdBeXZvYkVzS0VoREpjZmJTYzhDMm5qZnBvMHZxMVhlRlJy?=
 =?utf-8?B?TGN0MFZSUlJLNFZHalZOb0d4RlN5STB4c0k0S1RjaGFxMzlrWkpxK1BHT1U3?=
 =?utf-8?B?QkhtdmtDa3IvNHpUQ3llRk41MlcyR3gxNGRnL1J1M1Y0R0pCTllOWEVmeHRH?=
 =?utf-8?B?VWcySUtJbHY5cUZtT2p3N0N5MWNDMlRlRWhzT01KMFpkMFgreU41TXFheDlI?=
 =?utf-8?B?NUNJTDhQZG5wZHNkOFA0alNIdzFTOGNSMUZmMVZtWktXUlk0OFJTZlY3UVg2?=
 =?utf-8?B?Z0NBcmlGVjJBUGJsdjhuSjZEaVA4TzhsS2l2TDNLRHROQ1R4UGNIMDU5ZkZL?=
 =?utf-8?B?VTBkVFBjaFFpdVo2UDRXeExXWW1raFdSMU5Rdm8yMFY5eDRFV3h3Y3R3TTFq?=
 =?utf-8?B?dDJjNzZnanM4TVJYYllyeXE3K1krTmp6K3JGU05TeXo3bS91KzhJTkFtbXBW?=
 =?utf-8?Q?ICWQSNIWNhWARQiWcIdnFb6/pyfgwKINtj860p2LhxUu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63eb41a6-52d3-4047-0b7a-08dd76461580
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 02:35:53.6610 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DGMDkA/wq6j78MUx/MCzH6iosKW6yPSccGPJKcokRbwO+UUBd3ckoksCyv70D3cn8HlJvSeKDW1NjUeGM2ohSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5966
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHb3ZpbmRhcGlsbGFpLCBWaW5v
ZCA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgQXByaWwg
NywgMjAyNSA1OjM1IFBNDQo+IFRvOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRl
bC5jb20+OyBEZWFrLCBJbXJlDQo+IDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBp
bnRlbC5jb20+Ow0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2OV0gZHJt
L2k5MTUvZHA6IEd1YXJhbnRlZSBhIG1pbmltdW0gSEJsYW5rIHRpbWUNCj4gDQo+IEhpIEFydW4s
DQo+IA0KPiBXaGlsZSBsb29raW5nIGludG8gYW5vdGhlciBpc3N1ZSwgbm90aWNlZCBmcm9tIHRo
ZSBic3BlYyA3NDM3OSB0aGF0IHRoaXMgaXMgZm9yDQo+IHhlMysuDQo+IFNvIHRoZSB2ZXJzaW9u
IGNoZWNrcyBzaG91bGQgYmUgYmFzZWQgb24gIjMwIiBub3QgIjIwIiENCj4gDQpUaGFua3MsIHdp
bGwgZ2V0IGl0IGNvcnJlY3RlZC4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRo
eQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
