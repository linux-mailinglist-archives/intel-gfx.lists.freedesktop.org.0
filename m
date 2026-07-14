Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BvaUMjiBVWpKpQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 02:22:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D177A74FD5C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 02:22:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Akvyjnz1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C0410EB0F;
	Tue, 14 Jul 2026 00:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C0C10E9F7;
 Tue, 14 Jul 2026 00:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783988532; x=1815524532;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HidJGUdUgF64oXlou6H/x1x0CWA0GPPy6FIh2AtC6kw=;
 b=Akvyjnz1tRJ2e4AD+lwJKk97QHCDul5BLb7dIYDEK91iFinCjX9+ZoZp
 +8LoSkjyjb8BU83fHNu6jRpD6YHsNFNla7dblQ2Pj0U4j6VaPdlo1fZEU
 gDqtbbWzbCYxYgyZ78shj7bS6cf2ZF7CJzfH8/m4OpZuBacNrxgSaDmyK
 KC6q7ebegYK8S/bl57/f2gHznbao53VOuObMQh7o0LMhbHBDa3c3unWqb
 JUob9sLjX33WK3waa3D2cemEmceFjwfZ/sLQju6ONak1YMy1kekU0+B5t
 KqBF3kPKkM43JoeVywX0wrWPYgvNtq/EEK8zgFqNgPeXMiGyBtboKOHbP g==;
X-CSE-ConnectionGUID: dugWcYskROGQNmEK0R9fcQ==
X-CSE-MsgGUID: 17nZTzTMRZqPUEZGwNNaQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88285455"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88285455"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 17:22:11 -0700
X-CSE-ConnectionGUID: A64aigCgSs2ZsIoosiVEIw==
X-CSE-MsgGUID: oYbV+EbyTSWrCEhcKFhd8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="260578770"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 17:22:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 17:22:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 17:22:10 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 17:22:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=biWNKtRw5OP1Av4YAU4hJM1HvN3d4PSfshQ2QTapyNqrj8eZTeb4ZUL6YD8EDHqocdelrisp56xIB3B0Fcp9Jx3xi07yGTkrDS8Mz9SldoKjXvbRp4sRV09JuWdDhZgCsLppPbOhIYn+gLr2uFgfJ0SSw/XTTCagWcESCU8l+u94XtNI+cNPsQYH8LQdNGXyzCJolp61/wNyfM6OFn9gFRcmONFCppMXigjnB0FXGqBltdRD8xBarGenoeThMfqGKBWt5QGMjmzEesYvkcKLg/MLGQvuE/XPVwps/8dsoJFRffYnhp2qkntVZZQZp71YbfFe3zvbGcIaueEVcFoG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HidJGUdUgF64oXlou6H/x1x0CWA0GPPy6FIh2AtC6kw=;
 b=JN75ohxQPtG9tm5XdCEMYDIEtf/mhqMHwKAPuq/avOf5LcrTs/2T4yNGjj7l9IGOEAjqfu8BGEXNL+eTM/m6V0wN8P/Z0ay9ZdWX6blBf6BPSx3fkqR5dKA+YBsAt5HxQVfHcob0UzJxb8hFSSDmXxbQkfDpcyHMU3E7DrXz/JX1d4k3hYW3vWhOks6zg2cc5hYa1nZD6k6DWWtTCAbupFuulGBsvi93ullr0KgYxLK2silCZHUy/ckiFqGo3DWaQJNH+djPZRcYqUoFqkeOduiImp4aO69V6sqcZHGbKey0GtUGdA/yrGY8OALjlEi6P5DFHRWFt2DWKsE2Akx6Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DM4PR11MB6527.namprd11.prod.outlook.com (2603:10b6:8:8e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Tue, 14 Jul
 2026 00:22:08 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 00:22:08 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 =?utf-8?B?SnVoYS1QZWtrYSBIZWlra2lsw6Q=?= <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
Thread-Topic: [PATCH] [RFC]: drm/i915/display: Fix NV12 ceiling division for
 bigjoiner case
Thread-Index: AQHc/0/c4aKoeW67b0GDEiyXb4pIYrZb51CAgAAoP3CAEBj5AIAAJlqg
Date: Tue, 14 Jul 2026 00:22:08 +0000
Message-ID: <PH7PR11MB82523DA20AA386B0ABA0790D89F92@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260618181837.687302-1-vidya.srinivas@intel.com>
 <26ed323d-c0f5-42d4-b736-de7efcf893d7@gmail.com>
 <PH7PR11MB825216B25018B09F3D5D554789F42@PH7PR11MB8252.namprd11.prod.outlook.com>
 <DM4PR11MB6360F42B3679B2C630E08EB7F4FA2@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360F42B3679B2C630E08EB7F4FA2@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|DM4PR11MB6527:EE_
x-ms-office365-filtering-correlation-id: 50197ac8-a22c-422f-6f24-08dee13df0b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|38070700021|22082099003|18002099003|6133799003|4143699003|11063799006|56012099006;
x-microsoft-antispam-message-info: RUAKEQ9qqwRM/JGpwiP7Ak7+UWnemHNOkPbev0iNoj/4nx3PY32wCYgJsjHTWE2QesxIvKUX+XAIy3jfuFTP22p6KgeqNdJmOPxdDdI2CTeuZJN9Z4ZKQspzDUn0nNvjlg7ulfFxLnMGUL9oig6LIoakyphD2CN6SXIvn9F2FoUWjNe6Qo2Ke9ircPl7Tj2JWDmeq57HuZB6e39YgotgN0IU6p20gcWbKhgM5PBzVVutPC5fqwOVkcorx1hrQvkypSCsl+6pOZjayT2akzi9tNA7v5Fw+tgKONcRksxySBzgIFiQQX6IExN7C9L7osg7IgPcNQUIi3iocWiwrqY+DY6wYNpazb6dNGErgPPsvlI/y+cjMJEuFm1Wf0gtrX/XKHWQR/UcuOcO9ZrARLZiofV9lUgr9a60vhH4UZsHmYtK1VkABpsLxlfEKGDV1AckxigO61gK1oOhx6MLOUc/nvCrgjmkyzAoa9Xl8f+qN4b3kR1NrqTwZFuRry9Ry31feNySaFmJS9ANeDqHKDCTosTfKrJmiMFEMQSFKr+IrDAh6APFzxW96dsnLm0Cyci657OoFWFOLvd3TFFZRf0k7PqJR0WUGlZlokSiiGOt2XCN4rcox7y/vGdRLdnm49dw25WexI422stOUBQVLhOjMtn7BHdyXf5mNGXluLwVPHIK63hPAW1lIojqZ34tlmrJK8cQ3FVE/lG9wyqOhVzFEqEJYXVphxNc89HmcGihYxA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(38070700021)(22082099003)(18002099003)(6133799003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmIraGx6VmpjSGVyNGJBN0ZzTFR3enR5Y3RXbGxWRUF1QVNEZmV2VnRCZFZP?=
 =?utf-8?B?YzZZbUp1aWVEbTg5TlY1eVBrd0F5MGZ6OXp0d203Z0drM3ljdUVEa3FzY0Zh?=
 =?utf-8?B?aXZpZlNoWkprY0Rhc0lpODVzNlBaZzJrT3EydzZGTGhhdzAyc0lUYitFRHJn?=
 =?utf-8?B?VzU5NVAwM3dnZ2hNS3BtckQ1SENkOWxDa290WDdBS2pjYUtLNXN0REU1WWRt?=
 =?utf-8?B?RHovUFlVc2N1YlNBVGNZVkZxWUN2T2d2WkNlZGtQMGtpVytRV3k3bFdDa1d2?=
 =?utf-8?B?ZEkvVEhyWW5hY0ZFKzBBTW9sWUwrL04zelY1QTM4STBac3UyZzhnU1dMdXZR?=
 =?utf-8?B?ZnNmMmRTMlZoTWdhcndCbHdYelhxay9ReDRSY1pTQmZHMEl0UElSRWVhbkNw?=
 =?utf-8?B?YVFVQkVSdWl2SnBxMmEzU1JNSzhpblgyNDg1UkFOQWNFSVBzbGMyRnVrTXVH?=
 =?utf-8?B?MEVoUG04dEtBY21SQWdzWWZ3UUpkQUZDc3laT1R1dTJIclRzRmVGVjR3eU9I?=
 =?utf-8?B?d00rQVRJT0JOcWsrWnBBTEgyNXhybDlYdWNkTGIyeUlqK2RyYm1ZSFE0U1FD?=
 =?utf-8?B?L3RaamQ0NlFUZ1JoQW54aThlRkVDT3dQdGdmUXByWGRveHRYYmNtRG9pRytw?=
 =?utf-8?B?ejBJdjBtYXBrQWdPZTNiL0FUb3J2YllNN1hTakJwZXhadlZOQlF3ZTZGamZq?=
 =?utf-8?B?VTNFNUtUMmxzblhSU3FGUnFoV3MzM2tVLytFL092QXVieW41N3JRQXRqZWp6?=
 =?utf-8?B?RzA3T2RYdTRqRVJ0NStOUkVyWEIzWU1VTGxMdGxTc013a1hNdks3KzVKNDdK?=
 =?utf-8?B?TmxmZ3RDV09UQnBxajlqWThyTjZaM1lyYjBkRVVJWENmb0NWcE5idWZNU21P?=
 =?utf-8?B?UDlDeGV1UUNMRWFJTjJFOCtWY2JjUFFMaHMyTVUyYWtiSGpCTXNRdTFYWlNF?=
 =?utf-8?B?dmNFSjRnSzcvSkZnWlpDUzF0aFIvUS83dm5LMW1CZm52TjBaeEVzVFQwWDl2?=
 =?utf-8?B?UjNNTnhLNEMyZngwNmErR3hGV3o0U1VFelhQZXhSMEZQL2ZudmJpc1NLZnQw?=
 =?utf-8?B?T2tqYkkrc09LNmVnQklIQ1JKSkFzQS9uakN3RWJFazF0T1ovT2FRR2RVcHlH?=
 =?utf-8?B?NGVhYytJc2NMbkllcE9sZXR6Z0VwYm1DWnBhdGhiTkR1dmU3aXdUQm9TMXRw?=
 =?utf-8?B?VW1hMDR2MUZtc0pjdEdxTUY4YUtnYmlQTU5XVzMwcGhmb2Z0eTQzNWVwa3Ji?=
 =?utf-8?B?UVBWZFdRaWZGMHJtWTNkRmF4ZlZ1Q2ZDM3E4OEYwRENmLzhkNnhRaGRIYW1R?=
 =?utf-8?B?MER5U2h2VHJLa1pPWFZwTjJUa0tnK1BxaEkrSm9WRTUzbDBvYWdkUVNqL09E?=
 =?utf-8?B?anZnTjFwbkhZNVlrcWkwbkFQMjJGZ2h6UFZzKzdBdUF2aTcyQjF3YnBkbFdm?=
 =?utf-8?B?S1JXMERqTU5DN1RWakJJd1dhNHZhaERFYkRVWnVtME5NbzA2V3BYaDhsNEo2?=
 =?utf-8?B?Ui8vZE1YM2NrM1R4VVU4NzM1RXV4N3I1YXVrMnh2ZksvWC9Lb2V4YUJmUVJG?=
 =?utf-8?B?WnZwQkhtYnoraENOM0pzT3lTOExwVlpKZ1FwRXBxazk5VDVNVE5RYWVQVWFF?=
 =?utf-8?B?dHIwUFZwcHBWWlFGWmg1MFc4TlhzckFOOVFJS2pXcHdoZ1hTWHJ4UDdvYzlN?=
 =?utf-8?B?TzI5aU12ZkkwSVJTczVYOUdVZDVIMVIvNzNlZytHanhKQ2xLamZYcGQ2QVBT?=
 =?utf-8?B?WkZCdUlaMTlRK1pVSEN5UjVldE16cmsyN2x4Tkw3UWRvVmJ6UzJZOXdBNTc4?=
 =?utf-8?B?SkYxUytoNkVwRytudjFCUHJweXh4cVV2aFFkT29BV0V5ckIxb09oZTZQb2RR?=
 =?utf-8?B?WGhYMVJUNzhHaDFkeS9OQzJPcWFTR0RkSVdCT0tBMkk0TlJLb3ZaSmhFUHF4?=
 =?utf-8?B?VUEzcFQ4dHQ1cVo1M0o5QWRGYVA4WGZiTlFGUWdsQXZ4UG1PSHNVNWZzOXRK?=
 =?utf-8?B?QmxQMjVSU3Fvc1NSdGJLOUtQLy9HcUcxSVNFbStSWG9MTzJPN3RTTTlwNXRN?=
 =?utf-8?B?Ty9nSU9TaU5sUVNQQnB0NmpxM1RXdzhRZ0RSN25MeDIzME1HZ1NGWjNUZzBI?=
 =?utf-8?B?ODdQemY2cHZrQmlBZ3ZkU3JrNFBLZXlCMWh0b1lJSC83YjZuRlVGZE8xUXRE?=
 =?utf-8?B?ZnB1SHVsTEs1ck90U0tXV2xKS2FWMEtOQWV6UVRpQ0U5VFFMZ2Y5dUZlQWZB?=
 =?utf-8?B?ZGs5SkVhWmhtYWIxUkhNUXJIQzFyUk1TVUVXWVVFYVFRVU4ydWlGZEdTWnBv?=
 =?utf-8?B?ZXA5WHg4b1dUemlMandtejIzck1WOVhzNjF4bGppNm8vY1I3SFd0Zz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: KGjDibD5ixA+SPNYt8UgR6zQIvnea/n2ZR25PDfcON0otn0PE25k+lzLp97WW/+KWaY3gj8nps2L7VGmTo9xmvA6CeRJbkbTvM5RNZLH5YkMiYPn11oE21e6zqBrIfi7kuxIS65bPK0z6BAdpiIA+FQur4R4VMKcERus4wO3IU3ezU/oWtho+28Dco4TpSUZ4yCijJuhzRh2HHyQhUNHvH5HBXC4/3zMyPOLqugOO2QSRrFSFLkDT9D8o+zpg9xzW3A6aDNUfeEyIonZc8Unq9gWYWlGMlSp7TTiymPcGEB3jJKitu71HIf9Z1oZbMt3MlJ9c7PEEB96iGeMOwU1JA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50197ac8-a22c-422f-6f24-08dee13df0b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2026 00:22:08.0620 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ubTEX8sGtEhOKPLwNZvgcEkWS81gvOS5eRq4SB1tj6LKBcLDmKqwnyL/LM7RgzRYjNr9LlekE3DqXHqT+ntRqv3wx92SwXJ41WfkEiIkkXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6527
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:dkim,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	FREEMAIL_TO(0.00)[intel.com,gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D177A74FD5C

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2hhbmthciwgVW1hIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFNlbnQ6IDE0IEp1bHkgMjAyNiAwMzozNQ0KPiBUbzog
U3Jpbml2YXMsIFZpZHlhIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+OyBKdWhhLVBla2thIEhl
aWtraWzDpA0KPiA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT47IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBTdWJqZWN0OiBSRTogW1BBVENIXSBbUkZDXTogZHJtL2k5MTUvZGlzcGxheTogRml4IE5WMTIg
Y2VpbGluZyBkaXZpc2lvbiBmb3INCj4gYmlnam9pbmVyIGNhc2UNCj4gDQo+IA0KPiANCj4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLXhlIDxpbnRlbC14ZS1i
b3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+ID4gU3Jpbml2YXMs
IFZpZHlhDQo+ID4gU2VudDogRnJpZGF5LCBKdWx5IDMsIDIwMjYgOTo0NiBQTQ0KPiA+IFRvOiBK
dWhhLVBla2thIEhlaWtraWzDpCA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT47IGludGVs
LQ0KPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogaW50ZWwteGVAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUkU6IFtQQVRDSF0gW1JGQ106IGRybS9pOTE1
L2Rpc3BsYXk6IEZpeCBOVjEyIGNlaWxpbmcNCj4gPiBkaXZpc2lvbiBmb3IgYmlnam9pbmVyIGNh
c2UNCj4gPg0KPiA+DQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
PiBGcm9tOiBKdWhhLVBla2thIEhlaWtraWzDpCA8anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNv
bT4NCj4gPiA+IFNlbnQ6IDAzIEp1bHkgMjAyNiAxOToyMQ0KPiA+ID4gVG86IFNyaW5pdmFzLCBW
aWR5YSA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPjsNCj4gPiA+IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIFtSRkNdOiBkcm0vaTkxNS9kaXNwbGF5OiBGaXgg
TlYxMiBjZWlsaW5nDQo+ID4gPiBkaXZpc2lvbiBmb3IgYmlnam9pbmVyIGNhc2UNCj4gPiA+DQo+
ID4gPiBIaSBWaWR5YSwNCj4gPiA+DQo+ID4gPiBhcG9sb2dpZXMgZm9yIHRoZSBkZWxheWVkIHJl
cGx5LiBJIHRyaWVkIHRvIGRvIHRoZSBtYXRoIGFuZCBzZWVtcyBJDQo+ID4gPiBnb3QgY29ycmVj
dCBudW1iZXJzIGFzIGV4cGVjdGVkIHdoYXQgeW91IHNheSBiZWxvdy4gSSBjYW4ndCB0ZXN0DQo+
ID4gPiB0aGlzIGFueXdoZXJlIGJ1dCBpdCBzZWVtcyBjb3JyZWN0IG9uIGNvZGUgYW5kIGlkZWEg
bGV2ZWwuDQo+ID4gPg0KPiA+ID4gUmV2aWV3ZWQtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1
aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+DQo+ID4NCj4gPiBIZWxsbyBKdWhhDQo+ID4gVGhh
bmsgeW91IHZlcnkgbXVjaC4NCj4gDQo+IFB1c2hlZCB0aGUgY2hhbmdlIHRvIGRybS1pbnRlbC1u
ZXh0LiBUaGFua3MgZm9yIHRoZSBwYXRjaCBhbmQgcmV2aWV3Lg0KDQpUaGFuayB5b3UgdmVyeSBt
dWNoIFVtYS4NCg0KUmVnYXJkcw0KVmlkeWENCg0KPiANCj4gUmVnYXJkcywNCj4gVW1hIFNoYW5r
YXINCj4gDQo+ID4gUmVnYXJkcw0KPiA+IFZpZHlhDQo+ID4NCj4gPiA+DQo+ID4gPiBPbiAxOC8w
Ni8yMDI2IDIxLjE4LCBWaWR5YSBTcmluaXZhcyB3cm90ZToNCj4gPiA+ID4gQ29tbWl0IDE2ZGY0
Y2M2M2M1OCAoImRybS9pOTE1L2Rpc3BsYXk6IFVzZSBjZWlsaW5nIGRpdmlzaW9uIGZvcg0KPiA+
ID4gPiBOVjEyIFVWIHN1cmZhY2Ugb2Zmc2V0IGNhbGN1bGF0aW9uIikgY29tcHV0ZXMgdGhlIFVW
IChjaHJvbWEpDQo+ID4gPiA+IHN1cmZhY2Ugc3RhcnQvc2l6ZSBhcyBjZWlsaW5nKGhhbGYgb2Yg
WSBwbGFuZSBzdGFydC9zaXplKSBkaXJlY3RseQ0KPiA+ID4gPiBmcm9tIHRoZQ0KPiA+ID4gPiBV
MTYuMTYgZml4ZWQtcG9pbnQgc291cmNlIHJlY3RhbmdsZToNCj4gPiA+ID4NCj4gPiA+ID4gICAg
ICAgICAgeCA9IGZwXzE2XzE2X3RvX2ludF9jZWlsKGZwXzE2XzE2X2RpdjIoc3JjLngxKSk7DQo+
ID4gPiA+DQo+ID4gPiA+IEZvciBhIHNpbmdsZSBwaXBlIHRoZSBzb3VyY2UgY29vcmRpbmF0ZXMg
YXJlIGludGVnZXJzLCBzbyB0aGlzIGlzDQo+ID4gPiA+IGNvcnJlY3QuDQo+ID4gPiA+IChVViBz
dGFydCA9IGNlaWxpbmcoaGFsZiBvZiBZIHBsYW5lIHN0YXJ0KSkuDQo+ID4gPiA+DQo+ID4gPiA+
IFdpdGggYmlnam9pbmVyICsgYSBwbGFuZSBzY2FsZXIgdGhlIHBpY3R1cmUgY2hhbmdlcy4gVGhl
IHBpcGUNCj4gPiA+ID4gYm91bmRhcnkgaXMgYSBmaXhlZCBpbnRlZ2VyIGRlc3RpbmF0aW9uIHBp
eGVsLCBidXQgdGhlIHBsYW5lJ3MNCj4gPiA+ID4gcG9zaXRpb24gYW5kIHRoZSBzY2FsZXIgcmF0
aW8gYXJlIGFyYml0cmFyeSwgc28NCj4gPiA+ID4gZHJtX3JlY3RfY2xpcF9zY2FsZWQoKSBtYXBz
IHRoZSBzZWFtIGJhY2sgdG8gYSAqZnJhY3Rpb25hbCoNCj4gPiA+ID4gcGVyLXBpcGUgc291cmNl
LiBGb3IgYSAxMjgwLT4yNDA3IHVwc2NhbGVkIE5WMTIgcGxhbmUgY3Jvc3NpbmcgdGhlDQo+IHNl
YW06DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgIG1hc3RlciBzcmM6IHdpZHRoID0gMTIwNCAq
IDEyODAvMjQwNyA9IDY0MC4yNjU4OTksIHgxID0gMA0KPiA+ID4gPiAgICAgICAgICBqb2luZXIg
c3JjOiB3aWR0aCA9IDEyMDMgKiAxMjgwLzI0MDcgPSA2MzkuNzM0MTE1LCB4MSA9DQo+ID4gPiA+
IDY0MC4yNjU4ODQNCj4gPiA+ID4NCj4gPiA+ID4gVGhlIGx1bWEgcGF0aCBmbG9vcnMgdGhpcyB0
byBhbiBpbnRlZ2VyIChzcmMueDEgPj4gMTYgPSA2NDApLCBidXQNCj4gPiA+ID4gdGhlIFVWIHBh
dGggdGFrZXMgY2VpbGluZyg2NDAuMjY1ODg0IC8gMikgPSBjZWlsKDMyMC4xMykgPSAzMjEuDQo+
ID4gPiA+IFRoZSBZIHBsYW5lIHRoZW4gc3RhcnRzIGF0IGNvbHVtbiA2NDAgd2hpbGUgdGhlIFVW
IHBsYW5lIHN0YXJ0cyBhdA0KPiA+ID4gPiAzMjEqMiA9IDY0MiwgcHVzaGluZyB0aGUgY2hyb21h
IHJlYWQgb25lIGNvbHVtbiBwYXN0IHRoZSA2NDAtd2lkZQ0KPiA+ID4gPiBjaHJvbWEgc3VyZmFj
ZSBvbiB0aGUgam9pbmVyIHNlY29uZGFyeToNCj4gPiA+ID4NCj4gPiA+ID4gICAgICAgICAgW0NS
VEM6MzgyOnBpcGUgQ10gUExBTkUgQVRTIGZhdWx0DQo+ID4gPiA+ICAgICAgICAgIFtDUlRDOjM4
MjpwaXBlIENdW1BMQU5FOjI2NzpwbGFuZSAxQ10gZmF1bHQNCj4gPiA+ID4gKENUTD0weDgxMDA5
NDAwLA0KPiA+ID4gPiAuLi4pDQo+ID4gPiA+DQo+ID4gPiA+IFRoZSBzcGVjICJZIHBsYW5lIHN0
YXJ0IiBpcyB0aGUgaW50ZWdlciBwaXhlbCB0aGUgbHVtYSBzdXJmYWNlDQo+ID4gPiA+IGFjdHVh
bGx5IHByb2dyYW1zICg2NDApLCBub3QgdGhlIHByZS1mbG9vciBmaXhlZC1wb2ludCB2YWx1ZSAo
NjQwLjI3KS4NCj4gPiA+ID4gQ29udmVydCB0aGUgWSBwbGFuZSBzdGFydC9zaXplIHRvIGludGVn
ZXIgZmlyc3QgLSBtYXRjaGluZw0KPiA+ID4gPiBza2xfY2hlY2tfbWFpbl9zdXJmYWNlKCkNCj4g
PiA+ID4gLSBhbmQgdGhlbiBhcHBseSB0aGUgY2VpbGluZy4gVGhpcyBpcyBhIG5vLW9wIGZvciB0
aGUgaW50ZWdlcg0KPiA+ID4gPiAobm9uLWpvaW5lcikgY2FzZSBhbmQgeWllbGRzIHRoZSBjb3Jy
ZWN0LCBpbi1ib3VuZHMgY2hyb21hIG9mZnNldA0KPiA+ID4gPiBmb3IgdGhlIGZyYWN0aW9uYWwg
am9pbmVyIHNlYW06DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBiZWZv
cmUgZml4ICAgICAgYWZ0ZXIgZml4DQo+ID4gPiA+ICAgICAgICAgIG1hc3RlciAxQjogICB4PTAg
IHc9MzIxICAgICAgeD0wICAgdz0zMjAgICAtPiBbMCwgMzIwKQ0KPiA+ID4gPiAgICAgICAgICBz
bGF2ZSAgMUM6ICAgeD0zMjEgdz0zMjAgICAgIHg9MzIwIHc9MzIwICAgLT4gWzMyMCwgNjQwKQ0K
PiA+ID4gPg0KPiA+ID4gPiBUaGUgdHdvIGhhbHZlcyBub3cgdGlsZSB0aGUgNjQwLXdpZGUgY2hy
b21hIHBsYW5lIGV4YWN0bHkgYW5kIHRoZQ0KPiA+ID4gPiBBVFMgZmF1bHQgaXMgZ29uZS4NCj4g
PiA+ID4NCj4gPiA+ID4gQXNzaXN0ZWQtYnk6IEdpdEh1Yi1Db3BpbG90OkNsYXVkZS1PcHVzLTQu
OA0KPiA+ID4gPiBGaXhlczogMTZkZjRjYzYzYzU4ICgiZHJtL2k5MTUvZGlzcGxheTogVXNlIGNl
aWxpbmcgZGl2aXNpb24gZm9yDQo+ID4gPiA+IE5WMTIgVVYgc3VyZmFjZSBvZmZzZXQgY2FsY3Vs
YXRpb24iKQ0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTcmluaXZhcyA8dmlkeWEuc3Jp
bml2YXNAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gICAuLi4vZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAzMyArKysrKysrKy0tLS0tLS0tLS0tDQo+
ID4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQ0KPiA+ID4gPg0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gPiBpbmRleCBhZDRiZmZmNjkw
M2QuLjE2NGI3ZDYxYzlhMyAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+ID4gQEAgLTIx
MjYsMTkgKzIxMjYsNiBAQCBzdGF0aWMgaW50IHNrbF9jaGVja19tYWluX3N1cmZhY2Uoc3RydWN0
DQo+ID4gPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ID4gPiA+ICAgCXJldHVy
biAwOw0KPiA+ID4gPiAgIH0NCj4gPiA+ID4NCj4gPiA+ID4gLQ0KPiA+ID4gPiAtLyogRGl2aWRl
IGEgVTE2LjE2IGZpeGVkLXBvaW50IHZhbHVlIGJ5IDIsIHN0YXlpbmcgaW4gZml4ZWQtcG9pbnQN
Cj4gPiA+ID4gZG9tYWluICovIC1zdGF0aWMgaW5saW5lIHUzMiBmcF8xNl8xNl9kaXYyKHUzMiBm
cCkgLXsNCj4gPiA+ID4gLQlyZXR1cm4gZnAgPj4gMTsNCj4gPiA+ID4gLX0NCj4gPiA+ID4gLQ0K
PiA+ID4gPiAtLyogQ29udmVydCBhIFUxNi4xNiBmaXhlZC1wb2ludCB2YWx1ZSB0byBpbnRlZ2Vy
LCByb3VuZGluZyB1cCAqLw0KPiA+ID4gPiAtc3RhdGljIGlubGluZSBpbnQgZnBfMTZfMTZfdG9f
aW50X2NlaWwodTMyIGZwKSAtew0KPiA+ID4gPiAtCXJldHVybiBESVZfUk9VTkRfVVAoZnAsIDEg
PDwgMTYpOw0KPiA+ID4gPiAtfQ0KPiA+ID4gPiAtDQo+ID4gPiA+ICAgc3RhdGljIGludCBza2xf
Y2hlY2tfbnYxMl9hdXhfc3VyZmFjZShzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiA+ICpw
bGFuZV9zdGF0ZSkNCj4gPiA+ID4gICB7DQo+ID4gPiA+ICAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShwbGFuZV9zdGF0ZSk7DQo+ID4gPiA+IEBADQo+
ID4gPiA+IC0yMTU0LDE0ICsyMTQxLDIwIEBAIHN0YXRpYyBpbnQgc2tsX2NoZWNrX252MTJfYXV4
X3N1cmZhY2Uoc3RydWN0DQo+ID4gPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+
ID4gPiA+ICAgCWludCBtYXhfaGVpZ2h0ID0gaW50ZWxfcGxhbmVfbWF4X2hlaWdodChwbGFuZSwg
ZmIsIHV2X3BsYW5lLA0KPiA+ID4gPiByb3RhdGlvbik7DQo+ID4gPiA+DQo+ID4gPiA+ICAgCS8q
DQo+ID4gPiA+IC0JICogTE5MKyBVViBzdXJmYWNlIHN0YXJ0L3NpemUgPQ0KPiA+ID4gPiAtCSAq
IGNlaWxpbmcoaGFsZiBvZiBZIHBsYW5lIHN0YXJ0L3NpemUpLiBVc2UgY2VpbGluZyBkaXZpc2lv
bg0KPiA+ID4gPiAtCSAqIHVuY29uZGl0aW9uYWxseTsgaXQgaXMgYSBuby1vcCBmb3IgZXZlbiB2
YWx1ZXMuDQo+ID4gPiA+ICsJICogVVYgKGNocm9tYSkgc3RhcnQvc2l6ZSA9IGNlaWxpbmcoaGFs
ZiBvZiB0aGUgKmludGVnZXIqIFkgcGxhbmUNCj4gPiA+ID4gKwkgKiBzdGFydC9zaXplKSwgaS5l
LiB0aGUgdmFsdWUgdGhlIGx1bWEgc3VyZmFjZSBwcm9ncmFtcyAoc3JjID4+IDE2KSwNCj4gPiA+
ID4gKwkgKiBub3QgdGhlIHJhdyBVMTYuMTYuIEEgYmlnam9pbmVyIHNlYW0gbWFwcGVkIHRocm91
Z2ggdGhlDQo+ID4gPiA+ICtzY2FsZXINCj4gPiA+IGNhbg0KPiA+ID4gPiArCSAqIGdpdmUgYSBm
cmFjdGlvbmFsIGx1bWEgc3JjOyBjZWlsaW5nIHRoYXQgZGlyZWN0bHkgd291bGQgcm91bmQgdGhl
DQo+ID4gPiA+ICsJICogY2hyb21hIG9uZSBjb2x1bW4gdG9vIGZhciBhbmQgcmVhZCBwYXN0IHRo
ZSBjaHJvbWEgc3VyZmFjZS4NCj4gPiA+ID4gICAJICovDQo+ID4gPiA+IC0JaW50IHggPSBmcF8x
Nl8xNl90b19pbnRfY2VpbChmcF8xNl8xNl9kaXYyKHBsYW5lX3N0YXRlLQ0KPiA+ID4gPnVhcGku
c3JjLngxKSk7DQo+ID4gPiA+IC0JaW50IHkgPSBmcF8xNl8xNl90b19pbnRfY2VpbChmcF8xNl8x
Nl9kaXYyKHBsYW5lX3N0YXRlLQ0KPiA+ID4gPnVhcGkuc3JjLnkxKSk7DQo+ID4gPiA+IC0JaW50
IHcgPQ0KPiA+ID4gZnBfMTZfMTZfdG9faW50X2NlaWwoZnBfMTZfMTZfZGl2Mihkcm1fcmVjdF93
aWR0aCgmcGxhbmVfc3RhdGUtDQo+ID4gPiA+dWFwaS5zcmMpKSk7DQo+ID4gPiA+IC0JaW50IGgg
PQ0KPiA+ID4gZnBfMTZfMTZfdG9faW50X2NlaWwoZnBfMTZfMTZfZGl2Mihkcm1fcmVjdF9oZWln
aHQoJnBsYW5lX3N0YXRlLQ0KPiA+ID4gPnVhcGkuc3JjKSkpOw0KPiA+ID4gPiArCWludCBsdW1h
X3ggPSBwbGFuZV9zdGF0ZS0+dWFwaS5zcmMueDEgPj4gMTY7DQo+ID4gPiA+ICsJaW50IGx1bWFf
eSA9IHBsYW5lX3N0YXRlLT51YXBpLnNyYy55MSA+PiAxNjsNCj4gPiA+ID4gKwlpbnQgbHVtYV93
ID0gZHJtX3JlY3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT51YXBpLnNyYykgPj4gMTY7DQo+ID4gPiA+
ICsJaW50IGx1bWFfaCA9IGRybV9yZWN0X2hlaWdodCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+
PiAxNjsNCj4gPiA+ID4gKwlpbnQgeCA9IERJVl9ST1VORF9VUChsdW1hX3gsIDIpOw0KPiA+ID4g
PiArCWludCB5ID0gRElWX1JPVU5EX1VQKGx1bWFfeSwgMik7DQo+ID4gPiA+ICsJaW50IHcgPSBE
SVZfUk9VTkRfVVAobHVtYV94ICsgbHVtYV93LCAyKSAtIHg7DQo+ID4gPiA+ICsJaW50IGggPSBE
SVZfUk9VTkRfVVAobHVtYV95ICsgbHVtYV9oLCAyKSAtIHk7DQo+ID4gPiA+ICAgCXUzMiBvZmZz
ZXQ7DQo+ID4gPiA+DQo+ID4gPiA+ICAgCS8qIEZJWE1FIG5vdCBxdWl0ZSBzdXJlIGhvdy9pZiB0
aGVzZSBhcHBseSB0byB0aGUgY2hyb21hIHBsYW5lDQo+ID4gPiA+ICovDQoNCg==
