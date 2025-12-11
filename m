Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B21E7CB538E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 09:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C104510E7A7;
	Thu, 11 Dec 2025 08:51:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+reGsxh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85F2610E7B0;
 Thu, 11 Dec 2025 08:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765443106; x=1796979106;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=t1aQ+et3ZmIhj+A7jA3aFpqs2Jy0S25YBoaxlLiLaUg=;
 b=Q+reGsxh+md977+Umz/Q9kIXEMhyUlPyblrvWLxFNQ4vZNEExFXlE3DW
 bPWxZum+yrlg4LE7IgV2oXE3Unz0koOvTLrq42OxOkzIVOcTB2xEajMjR
 Qr2Ui9Y8TJANNpfLFdAfUKLa6T/X1NSCrcbM/V4Vhv4YZIobowvDIGIqc
 YEW19GXWrds0pAi7GimjeTOPzFvizkex+Er6CzjC8OGTSUR98wWK18kK3
 XGFs2Y+FGekqj5tyrCLHpz9ILygRq2CJYRNLWyzb5x5T+EHRnXEKJu6GH
 bTkCfVjZCaA6gjvWKwoqSAI1ajKqrFgiBt5CAdaMeovdXM8Va7N0h+kFU A==;
X-CSE-ConnectionGUID: 6M9py7h1SEWvFlbQzIndmQ==
X-CSE-MsgGUID: RMFUuiNTQuaA81PR61Eiug==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67306672"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67306672"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:51:45 -0800
X-CSE-ConnectionGUID: 06KT9pg2QLeFFAYRxTpfNg==
X-CSE-MsgGUID: tXvCVw1QQ02AzEbGTsEw8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201666410"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:51:45 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:51:44 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 00:51:44 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.62)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:51:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f1zbYgi3SvpLq63Qx2unOtQVWHK5+ivcgAaBkxRg5RVwSwYdO6yhS5TCUF7fd9Rjrhnp/9w/7C4ue7Ux1p9Zojil4LUk0YoqVSjDme27ptIi5FIzhXKbHBHgjyfhMWQcl+WbxGj7qdg5uq/jk0lmS6gfM0lXHfzS9m/EetB462NX7nqwEKktzi7B+nMbwpp3Kwcfnk4rUqD1r3sakuxzhGb3PPx349aQlhihCok+VEofwPc8xQpXWTv9cJPn4KpCu/xVshI4PwU3hh9m/5AcllhnfIq9Jee2Lixto3qiZ805HM2t9PP8To0Xw5TWC8wBxYZwEwvKmFJouMYJbH/Ngw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t1aQ+et3ZmIhj+A7jA3aFpqs2Jy0S25YBoaxlLiLaUg=;
 b=NQIT4OVKZTx5QtQxkO9iCbYX/Weo2KtPONXeDikwnRaNS4WAk4aPxnE/KOXn00+kg7wgDUTMLipIJxRRPuzgoyYRimpWZExUOSSCnkXT7gjjr2rQDuOBgj/CYl4PqcksLT+tbJrptMRQE6smwrY/5cX1YSaOlRo67HprcGI1ownbDLRvXUOtQUATUi1MqrK4K4wjviFZY57Eixm2giDjaG3lliDEYXXg/RRvTSMCrrAqSOZDU8501PVAvIn594HcGay7umVqdCpcpQ5WNGifjuf0YOxVX5sQIrQ/qvSUJx/AtqS5y1n5mVYSnxKeqFAkSKJYXTJQIRkHevnoul6IMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BN9PR11MB5321.namprd11.prod.outlook.com (2603:10b6:408:136::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 08:51:36 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 08:51:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 20/50] drm/i915/dp: Align min/max DSC input BPPs to sink
 caps
Thread-Topic: [PATCH 20/50] drm/i915/dp: Align min/max DSC input BPPs to sink
 caps
Thread-Index: AQHcX8kHxcq1lplWDUKCBx3vol0vlrUcNyIA
Date: Thu, 11 Dec 2025 08:51:36 +0000
Message-ID: <590044cb31b809300a3c53cbff155fe1d541465e.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-21-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-21-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BN9PR11MB5321:EE_
x-ms-office365-filtering-correlation-id: 66f20002-9b20-4af9-a1a0-08de38927dea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?UEdCZFNQUFBLSjJ1bFlWU0t0aGZ5UUx2UUtRUEhtY1U0bWlDSmliVnY0ZDZ2?=
 =?utf-8?B?bU5ZWmlhQXoyTUhNNFlXSys4L2Z5TGtHOWpWRGhMMnZ5TGtSdG9sR1QrZVlC?=
 =?utf-8?B?czdCVUpBQjNuR1dlR0ZrUUxXQUZTK3RQaGpHYWRnWWU5RURwQS9FWVNFYVh0?=
 =?utf-8?B?eDRzMEJIYXJRN1F4T1BXS0FGNnhOMUpqY1Q0OGNmdCtmTDU2OGRPTk9uWjMy?=
 =?utf-8?B?eExCeWFTTnJxNjFhVUJmakJFWGx1U2txMGJRK2p5V09lOUZKVFd1aThVcHBm?=
 =?utf-8?B?NHZuYlRNNFFoNVRqNmdqVXFSMDNhN2kwc2lGMmk4UXYyUXk4RU5MWjNRVnlv?=
 =?utf-8?B?NERuVXlRVVlRMkUzaU9kZnVyRGJXdlUxTjFFWXNNNkh4Zmt1RXhhMTh0b1Ay?=
 =?utf-8?B?WW5KRlNLSzFFdXNGdTFoZGpwaUdLQ20zTUJmeDlMYmw2MEtCTnc4TzRhQjlP?=
 =?utf-8?B?eHNxL0Y4TlBmTUkzOXI4UkhpNFlUSnhWTUNHYW5JSUxnL1pBaXNvVTBwOFI4?=
 =?utf-8?B?KzZLWGVhbWR4MFhBNnBEMUFYZjgyRXVEVndGaVVaZkZUaTlHaUdLazdicW8r?=
 =?utf-8?B?WjZPQXora053czBLYmhqanNCcURJT29vaUs4SFdrQlZjVEhsY2MzY1NqMEVo?=
 =?utf-8?B?RU42bGJnYjArNlpsa0lySk9mS0dHSkJhODN2V2NzSjMrNHR1cDEwaDFhQlF0?=
 =?utf-8?B?bW81VisvRWJQU0dBOTRxSm1pa2hWZEp2Y0tiMDJDR3ZIbkt0V2dWWjhDR1Vs?=
 =?utf-8?B?MDREQzY5UmZKVVFobU1ja2VhQ2tHOUN0Y2syWkY3NUx6Kzh1aFhSSXJNOS8w?=
 =?utf-8?B?WHc4b0FqNDJabmxBT2VFNUlwZWpEcENsNzVyaUtxdm5acVNHUUk1b3pUY3U2?=
 =?utf-8?B?Nis4T0dsaUZwaWZiMlhucjUrbWEyQjllR3k1ZkkvMWpmbUhKNGNyZ0N2a0R3?=
 =?utf-8?B?MmJKYXBiK0ljcmtENTBIMk9EeDFMaU1IU25hWXVEbkN1WnNubSs4eGFGUUts?=
 =?utf-8?B?eWJ1RFBheCsrRDNrMUVNMW1KVTB4UHh0L0FRSGNjTXQxRWRpQi9ZcVh3ekQw?=
 =?utf-8?B?aytYT284OWE5RHpRT25raEFNRlViQzdUM2JGODRwMXNqSTdZUFpKcW5GYlI4?=
 =?utf-8?B?MFJGeEh2U0RiN0xJZzFjT3BOblRXdWZsNU4xZEx2cllQVDJEaDFOL1ZENkVM?=
 =?utf-8?B?RFRGUTBkQkFnZTRGMUxyZDJwb0ltYXVST05ORVpGeHhjcEM0QnVNbGZFNlh5?=
 =?utf-8?B?NWNCUHpiVnEzTndubkc0S25mUkpvUmFBMUdpZ0xvSjNWZnpzYVdJZFlJTUht?=
 =?utf-8?B?SUsySGVROTlOdXRaTmtxNlNIL1E0V2lKQVN6YnhVTWNtWGNTWDZZRGZCNFNo?=
 =?utf-8?B?OHh3OFVYT3JEVWFUdS9neU0raVZMM0JGd1NUT3pMa0FjQkNjUWlJU2l3OFl1?=
 =?utf-8?B?eGJvaFJCdi9lSENrSEZ0NFo1c0pmYUVxN3FFblNqM0QySHg2ZlJmR1BSWENm?=
 =?utf-8?B?ZU1VVkN1NG9RVWp5WCtQZStueUFqdHo2L3NMazJHdEVaQUNQR3dERCtyTG5Y?=
 =?utf-8?B?YXh2RHMrd0NWdnFtSWtNRVYxdkRWS0Y2aHZlTXBpZm1pWWxMVFNpbFlvYzhK?=
 =?utf-8?B?VFBjTVpxVUtYWkdveUVTTitKdGRENkVKOUZvWThkQUVacW5vOURaUlNyNTRq?=
 =?utf-8?B?M1c1dFhKQVhwbU42WGQzMS83ZER6ai9jaFB4UktXWnB6OE5lZXFHcnUwYXlh?=
 =?utf-8?B?TVdRVk9JZm1YWTBMeEVIaFFuOStWWkxWSTVHQngxMFl3UEhqbUo0amM5Y01o?=
 =?utf-8?B?SlhqeHhtOWp6MkVraDRmNVFpQXBSQnF0aUlWeWtDeDB5aHc5czk1K2xrT2pP?=
 =?utf-8?B?dVowZ2FITXJoMFNCM1BXU0tXY20rQU80NW5yR3Y4OUw0WXEyVHVvVVRTMnRQ?=
 =?utf-8?B?SjZSbGEyZm4vYXhEMG1mSlZ5QlNKMGhFNUVjNFNQem5XREpyVkVyWFRaa29m?=
 =?utf-8?B?WWtuYTBaL2pyQjZnRlFtS0N1Uk1NUkFBdVl2Y040Q25MaU9IcHZsUGdiQUdP?=
 =?utf-8?Q?J+IImM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFZEblUxYkp5OXcyb2o5Y2ZlUFRmK0ZnVGFReElSRmhBdWVBa1FNK1VUcElI?=
 =?utf-8?B?aUliVU1QZWI5SEcxaWFUL0tFb3NuSmhsekRkNTFHeGk4Z3NLdVZYOE1FQUs3?=
 =?utf-8?B?anplMEo3UlRNSDFSZnhWV1BrVysxV2ROVTU5aWtPL0R0QUNHL0ZXdW5CK1Uv?=
 =?utf-8?B?TWVoajBHcUxDRkhpWmVUOG8yRTZxL2hyR1RoKzZ6S2lsT1RGTm9xR3Z3cWtE?=
 =?utf-8?B?ODNuaHFEckNSb0JKSTRsTWVLL2I5ZzBkVDRJRmdzRDlYS2lFWGlrNzc2MVNH?=
 =?utf-8?B?Y2pHNm1qTFBpdXpvSVFWOW5HVkQvZ1dxb3FiVXhzd05OdzdiR2VncXZFaUdy?=
 =?utf-8?B?VWFSaTlaVXp3QlFybUxLdjVLWDJsZmNyUUJtYjBvVmtvWVloTm9qRHNleWhs?=
 =?utf-8?B?NGFZS21pUGRMZ3ZKTzdNWVRMMUk2QmQ4bHNuMlZJYVpTSEFFaEpCbmI5Ykxx?=
 =?utf-8?B?dnpCNi9sbTR4Y3lsSGVST0JBY2piQmRsSnpicHhLY1RIbVNEQ3ZxY0dUbWN5?=
 =?utf-8?B?THRNRTUzb0lIVUF6TnVIcHlBY3NUT1p4NHQrRzlOWHlPTXhYTml3b0JWNW1s?=
 =?utf-8?B?Q2wyVzJINUVHenNwSjdsQkJUNThTQ1liRGZpQkEydFRWMWcxSGZldVJnd2xo?=
 =?utf-8?B?ZTZZRFRPazg2N3pkaVErVE9UUlhWckxGWEs2eHdnOERqeGh2RTk4ZjVXWWoy?=
 =?utf-8?B?cTR4U0RoTG10dWpWSHFGL3J1dTA3U245bm1mVTZXM1ROSnFUc0V1UUhCWlFP?=
 =?utf-8?B?d01relV6aTFJODlTcTJ4OVphcVZFNy9md1JTek1HWVR3VGllM2NMQk1LTzFp?=
 =?utf-8?B?b3NTYXVJNjZGOFUrSmZhMUFMR0tQQUNkTVFTRDZiNnNhUHFoZkdRbzZ1cUdH?=
 =?utf-8?B?MzlhdnNaNWR1NTBDdGRaU2Q0cTRKZTRnMS9GM3N4RHN0V2VnMHROWitEUDU3?=
 =?utf-8?B?Sk1BVllON0FMam02a1FKZ3pTZG1LZ0k5UnJpNVN4N3lYYmZiUFVROUtIS1BV?=
 =?utf-8?B?eDBlc2tyVGNPZ2VHZmhGMlFoQ1RKWW9jN1VmZVFHRVRiYVQwV2VLOXlQaGVl?=
 =?utf-8?B?blk0TlZmbExTdHo3emFWQm1oT1RXQXVyMFRvWjh2YkdBT240T1ZSVjAwWFdo?=
 =?utf-8?B?cDNYcUlEaDFvQ2VNOElWbUphbDZJVm5FSFd5cXpJUW1aZ0RxV2hxM0t2YUtM?=
 =?utf-8?B?bzg2dWJkVHl6cmZ0aGhkeXBZdE1UUUpzdDE1clNYbDhCTGNKV0JRQ0pUd05o?=
 =?utf-8?B?eE1OTk8xT1V4elkyOG9DYkRid0VMV1YxajIyYnRmOHhERG13dklMRkFtL0xx?=
 =?utf-8?B?cXJXOFk4MEg0OFVEZEdJUzRmeVhBT3JtOEp2cCtWUE9IR1Q3QjBmREZ0QXpE?=
 =?utf-8?B?YkN1ZENsY2hKUnlJeU1QK0NPMk4zNXI5dFhmK2o0bTNyRFN4VDdpVVE1bFR4?=
 =?utf-8?B?bEFVaDFDWnp1aERCMzdqSkxkc29VSUhjdlRxMUNwY2NRbjRyZG5hOEUwSUh5?=
 =?utf-8?B?NkNSQXNTV1N5dnFzWmlZeDdiU3ArQ1RzNXZjM0ZTa3ZsUjUvdWlpRmdHZkp0?=
 =?utf-8?B?U0pDT3dnbEZrOGc0clhxNUdHckwyb0p0UHlBTzEwV0tJTkRpSW00bzZIUkI4?=
 =?utf-8?B?b3BpNVlsclg3bUFmbittWTVwMDlCV2lxZmJWSHcvUEtpWkpiTzlyemZkbEJX?=
 =?utf-8?B?azVaZHRtUE5xYTIvdkt6V2VyaFdDWVp3My9yeXQzWlpjRkhUTndoc2FwVWVT?=
 =?utf-8?B?QUtXRUdsS0oxVHlCYll5OTdOdlJEOWJ5STNaSGV4M3dWRkNESHFTZkxJcitG?=
 =?utf-8?B?U2RvZmFCWEI2aSs3U2p2cUVmZzJJQURGQ05XRVNNMytISktLbmZZdEMwZ0xO?=
 =?utf-8?B?Z3EwSmhoQmIwdWI4bXZ6YUFSdk83RVE5OXhrbHdIcExpeW9TY3A2UXNsbENi?=
 =?utf-8?B?d3lDY25ldEtwbTJwL0YvOURHUVg5c3VIQmE5bDFHU1BUai9uZkxvTWZJbDBR?=
 =?utf-8?B?bW5OSHdKbVZDc0VOWGpsOHZQYXNJZW5Md0xGYXZRbmJCcUlXRUFDdG5hQzFS?=
 =?utf-8?B?d0V6US80VlU4L2dkbDRnRi94RFJlZW1VUStDRDlJQlhjZXRERzdCNWM0S0lr?=
 =?utf-8?B?MDBOaWZnUkd5NFYxMDZwS1BFV2FYa1RzdmNPY1FoTU42OHRjU0dRZGE4eFhI?=
 =?utf-8?Q?W47bjyFR0BpOWaQqPumxrog=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1792EBB93F4F1C43919A0F079D926AA9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66f20002-9b20-4af9-a1a0-08de38927dea
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 08:51:36.1561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3yn1a7pBVZ4iVHISBZYUVXC9DPe7qoX4Opmld6LsThEmR56riBPBjTAniCWpRqzBByASp5L9tGWY4L64dcujkB47H/Q8n2KTzdRCmxHzSy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5321
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFs
aWduIHRoZSBtaW5pbXVtL21heGltdW0gRFNDIGlucHV0IEJQUHMgdG8gdGhlIGNvcnJlc3BvbmRp
bmcgc2luaw0KPiBEU0MNCj4gaW5wdXQgQlBQIGNhcGFiaWxpdHkgbGltaXRzIGFscmVhZHkgd2hl
biBjb21wdXRpbmcgdGhlIEJQUCBsaW1pdHMuDQo+IFRoaXMNCj4gYWxpZ25tZW50IGlzIGFsc28g
cGVyZm9ybWVkIGxhdGVyIGR1cmluZyBzdGF0ZSBjb21wdXRhdGlvbiwgaG93ZXZlcg0KPiB0aGVy
ZSBpcyBubyByZWFzb24gdG8gaW5pdGlhbGl6ZSB0aGUgbGltaXRzIHRvIGFuIHVuYWxpZ25lZC9p
bmNvcnJlY3QNCj4gdmFsdWUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyB8IDI1DQo+ICsrKysrKysrKysrKysrKysrKysrKysrLS0NCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQoNClJldmlld2Vk
LWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4N
Cg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDFl
ZjY0YjkwNDkyZWEuLmU3YTQyYzllNGZlZjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTE5MDQsNiArMTkwNCwyMyBAQCBpbnQgaW50ZWxfZHBf
ZHNjX21heF9zcmNfaW5wdXRfYnBjKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0K
PiDCoAlyZXR1cm4gaW50ZWxfZHBfZHNjX21pbl9zcmNfaW5wdXRfYnBjKCk7DQo+IMKgfQ0KPiDC
oA0KPiArc3RhdGljIGludCBhbGlnbl9taW5fc2lua19kc2NfaW5wdXRfYnBwKGNvbnN0IHN0cnVj
dCBpbnRlbF9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gKwkJCQkJaW50IG1pbl9waXBlX2Jw
cCkNCj4gK3sNCj4gKwl1OCBkc2NfYnBjWzNdOw0KPiArCWludCBudW1fYnBjOw0KPiArCWludCBp
Ow0KPiArDQo+ICsJbnVtX2JwYyA9IGRybV9kcF9kc2Nfc2lua19zdXBwb3J0ZWRfaW5wdXRfYnBj
cyhjb25uZWN0b3ItDQo+ID5kcC5kc2NfZHBjZCwNCj4gKwkJCQkJCcKgwqDCoMKgwqDCoCBkc2Nf
YnBjKTsNCj4gKwlmb3IgKGkgPSBudW1fYnBjIC0gMTsgaSA+PSAwOyBpLS0pIHsNCj4gKwkJaWYg
KGRzY19icGNbaV0gKiAzID49IG1pbl9waXBlX2JwcCkNCj4gKwkJCXJldHVybiBkc2NfYnBjW2ld
ICogMzsNCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBp
bnQgYWxpZ25fbWF4X3NpbmtfZHNjX2lucHV0X2JwcChjb25zdCBzdHJ1Y3QgaW50ZWxfY29ubmVj
dG9yDQo+ICpjb25uZWN0b3IsDQo+IMKgCQkJCQlpbnQgbWF4X3BpcGVfYnBwKQ0KPiDCoHsNCj4g
QEAgLTI2NzksMTUgKzI2OTYsMTkgQEAgaW50ZWxfZHBfZHNjX2NvbXB1dGVfcGlwZV9icHBfbGlt
aXRzKHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gwqAJaW50IGRzY19t
YXhfYnBjID0gaW50ZWxfZHBfZHNjX21heF9zcmNfaW5wdXRfYnBjKGRpc3BsYXkpOw0KPiDCoA0K
PiDCoAlsaW1pdHMtPnBpcGUubWluX2JwcCA9IG1heChsaW1pdHMtPnBpcGUubWluX2JwcCwgZHNj
X21pbl9icGMNCj4gKiAzKTsNCj4gKwlsaW1pdHMtPnBpcGUubWluX2JwcCA9DQo+IGFsaWduX21p
bl9zaW5rX2RzY19pbnB1dF9icHAoY29ubmVjdG9yLCBsaW1pdHMtPnBpcGUubWluX2JwcCk7DQo+
ICsNCj4gwqAJbGltaXRzLT5waXBlLm1heF9icHAgPSBtaW4obGltaXRzLT5waXBlLm1heF9icHAs
IGRzY19tYXhfYnBjDQo+ICogMyk7DQo+ICsJbGltaXRzLT5waXBlLm1heF9icHAgPQ0KPiBhbGln
bl9tYXhfc2lua19kc2NfaW5wdXRfYnBwKGNvbm5lY3RvciwgbGltaXRzLT5waXBlLm1heF9icHAp
Ow0KPiDCoA0KPiDCoAlpZiAobGltaXRzLT5waXBlLm1pbl9icHAgPD0gMCB8fA0KPiDCoAnCoMKg
wqAgbGltaXRzLT5waXBlLm1pbl9icHAgPiBsaW1pdHMtPnBpcGUubWF4X2JwcCkgew0KPiDCoAkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiAtCQkJwqDCoMKgICJbQ09OTkVDVE9SOiVkOiVz
XSBJbnZhbGlkIERTQyBzcmMvc2luaw0KPiBpbnB1dCBCUFAgKHNyYzolZC0lZCBwaXBlOiVkLSVk
KVxuIiwNCj4gKwkJCcKgwqDCoCAiW0NPTk5FQ1RPUjolZDolc10gSW52YWxpZCBEU0Mgc3JjL3Np
bmsNCj4gaW5wdXQgQlBQIChzcmM6JWQtJWQgcGlwZTolZC0lZCBzaW5rLWFsaWduOiVkLSVkKVxu
IiwNCj4gwqAJCQnCoMKgwqAgY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0NCj4g
PmJhc2UubmFtZSwNCj4gwqAJCQnCoMKgwqAgZHNjX21pbl9icGMgKiAzLCBkc2NfbWF4X2JwYyAq
IDMsDQo+IC0JCQnCoMKgwqAgb3JpZ19saW1pdHMucGlwZS5taW5fYnBwLA0KPiBvcmlnX2xpbWl0
cy5waXBlLm1heF9icHApOw0KPiArCQkJwqDCoMKgIG9yaWdfbGltaXRzLnBpcGUubWluX2JwcCwN
Cj4gb3JpZ19saW1pdHMucGlwZS5tYXhfYnBwLA0KPiArCQkJwqDCoMKgIGxpbWl0cy0+cGlwZS5t
aW5fYnBwLCBsaW1pdHMtDQo+ID5waXBlLm1heF9icHApOw0KPiDCoA0KPiDCoAkJcmV0dXJuIGZh
bHNlOw0KPiDCoAl9DQoNCg==
