Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FD188FFB7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:57:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6F5010E423;
	Thu, 28 Mar 2024 12:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MktArQO+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10D310E423
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711630643; x=1743166643;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iuEldosueHHl7nbYmyYU7+WOyyY7WiSfFONmKm8L1QY=;
 b=MktArQO+ttKsCacw9Bs+R2VklJsod0G12KQFtqlhSFBaNyyapFxFD8lf
 7Uy3puAgFgC0msHbduX3PIuvUyG1lA8vhroJ5MwHBXW5wqcnsJAZnJJWD
 Lbh4/OEHWFrO7K8oSZ25pDDZ8pxW+e3oJPg4DyI1QwZNjkIojejdZpRYl
 MTwsq+23w6II1Pxto/XoAh3hJEeXDi1CbJuR0TdANuWegAQD4KYGqUl/E
 MgPasvTAa/vHB1PymN7NK/LW5QjOo7nzqdQ3RZ7gaxT2UMfmpQbw4marX
 51TdTMC/O2oMXQ4CJVM1hcBZYKjyvRGKJiVgEA440ZBu2EEMNuzBpYQOk g==;
X-CSE-ConnectionGUID: ptuCXKNeQxKA3cmn2cXQ/g==
X-CSE-MsgGUID: VWRpfkaJSlevOm85M3IbpQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6668871"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6668871"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:57:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17087683"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 05:57:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 05:57:22 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 05:57:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 05:57:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 05:57:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4FUrc5IssCq1bu/QCxuJ+HnnuygNWitCkQ3g/r9bj7FTyFhFB+cMzhXGvbzhNTMhgqUxaLSc6U4FY4KbE733oKuLWnb/CF2vascXyVJcidhankG6yzT2CqqS5dtXsvBywLIIN9Em3LZX01yifyuNf+RAfoblaxXKGLGSo/OSA3F5PrgVebCI/UgwjCZ5x9Um19pdDrsegnC4m8laJD+crFLoZhnDDIaOyJHOGklIhUfIQRfDrYdjNQXgaJxGos7UExxCj6FT/Ia11v7DPM0mQMTQJ8yghjSkeNDrCgkLy/mVblYv4eBepYp9OtCf7xK6ghm5lzrSHQeeOyarjzz6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iuEldosueHHl7nbYmyYU7+WOyyY7WiSfFONmKm8L1QY=;
 b=gwJiO2tUYDwogbycT5Bx1FgxTMrwxhNiQG5m6XWj7WEKsRznC+JpBcsamuFPXbriKf//ErYYtxj92nl9Ho9dxxldU1RlAhOcN1+IOCTc3Is/WD6o9euf3fp4mKHTHF9kXg9l1H79+g6u4KM7VvAgXnPifrWC6Z/3YoXo10yiBygWNtfIeBuxoTWzlt++t+D094nbbnkNt2GdEqRN45CWfV03UyyTB0u8C8T26UqhIIVSJqjZnRQF9klH0Ml7JGVn18r3Gg/D1RALbu5ltL/LrxJAwSL0owwuo8gApSJtoxa8ed6+Q1v1An3jhwjq/Hj7wnGqU1K+fLwXyIfV4l3qJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA0PR11MB4733.namprd11.prod.outlook.com (2603:10b6:806:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Thu, 28 Mar
 2024 12:57:19 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::38ba:ed89:d2ef:cd62%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 12:57:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 5/5] drm/i915/display: Implement Wa_16021440873
Thread-Topic: [PATCH 5/5] drm/i915/display: Implement Wa_16021440873
Thread-Index: AQHaefm1MePR5B0OmU2lwt9gLnjAbrFNKuFw
Date: Thu, 28 Mar 2024 12:57:18 +0000
Message-ID: <MW4PR11MB7054FE071E2815F385B9A782EF3B2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
 <20240319123327.1661097-6-jouni.hogander@intel.com>
In-Reply-To: <20240319123327.1661097-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA0PR11MB4733:EE_
x-ms-office365-filtering-correlation-id: 65380016-149a-4549-ec0b-08dc4f2699f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a1tVzT+seT2rXObmnoFpTCl9hjs9t0wpXqC2oc9aMSp8jRHNMM/KWgX1ryNUqWQu7qWNjdLrpXdFbpKA7SqhVJkeCJ3aejgZEZCe9alCgasr5WIhMYbPOor6W8M8sKiRrX9m32uI6OUxFohp2ZZ12k5lKk9LPMmu6s3bENkSpvgF5WhjlMwEqdFOy5xBoaMtiu5h8Ix3jENyeqBV9RGQZtuvqvZpulpyaWRDWcL8O5UHx0BmTUZe27CcCltEdC/U2GBxxwr/VyperOX70VVC94ioVUo0XzrLswbnPiFTAtL3aAT6GuO8+zWIIuZrdXNc9Er9m577kwEDkm2QOMrXNwv8avD6A1hEbMLUABVbkogz19WY140c0RAiBIb1o+17EuwjfOkesBpDldmyrQDMbwlbTVcCzVjv6Gp6Y0Ehg00We1Esvw5a6A2cSgSVaJP1sBQbe/9qJRkB5zKxzQUvwk+VJl8KWjiM99oBJqgahL+RCH+c3cJR5BxAsNmSgeCGXlTn/Cnd4nTzNRXYU9LT9UWfa09pOkMEYhlxUyX8w3mhJ2scMziMUpQ13qEXHz4lui21sPQ9BmKEF9oClhqrxBV/HNrsrH8XW0uWGIPwHUz+S7ZdBKgjZGF1ZDGNsq3lGqY9S7f9IFEkClj90ZmTLj2eFzq5mW/g2nVLMTTcxPspsEC0DkcO7p5DtIwZq+cNpOsTZg/yh9pxQPZLAAol0lk0DZA5iReCxWzey8vXPjI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TjUreDIvRWljWUVYWWtBNE1NTmtUTzl3YVBsU1NaampMd2c1U0tUWEl6WVVB?=
 =?utf-8?B?bGhlWjc0QTZwdmJCRkFQbW9nQjRqTzJPakc0eUdKYW5kUmdzd3J0d3JwK08w?=
 =?utf-8?B?eFZiNFlDQXNjUnJUN3R3UjZ0NGFpSWphWFpGbnVoenBDQnhWblluazd1UzJx?=
 =?utf-8?B?UVh2b2wxTE9KSEJFdWRFRjE3NE1yd3pHc2taekxCc1pvRm1rTHRUbXdsMGNW?=
 =?utf-8?B?THVrL2pxUmJCOUVMa0ZNMVh3T05yQkxodSt6d2dKdC9GL0tsNGxySEw2SE1J?=
 =?utf-8?B?SG1ONW41R2ZmaXZrMHJjbHdrWWxhSmdVVWtXK0FWZ0tPVm1aTW5qZHhUZ3Q4?=
 =?utf-8?B?NmxWV2MxRm9kVHhPMythaHZZM1VZVUNlaUtIOVQxVDdoRGpPc2lVdSsyYUF0?=
 =?utf-8?B?V1NZejFhM2ljS2pVWWtkT1I5OUNsTnZhMzFhWUFIZ243Y3g1dUoyaThMaFpl?=
 =?utf-8?B?Q3hEcWxZY0ZRTWM2eitCQXBNMDBWY3I2SkJqSUUwTVh4S3RodTc3Sjc3Vmsv?=
 =?utf-8?B?djVJMHIrTVRVa1QwRlRENmY4N2E2emJEc2plZVBxbjlIdTg0Vnp0VzJtYmRJ?=
 =?utf-8?B?VkNjNXNPbnJRaUFKbjRNM0pqV0FXY3QvbGhBQlp1RmkzOUZ2NW9QWmw3UlNr?=
 =?utf-8?B?NkUwbHVxNkpTSDdzTmVycSt6NGwvK1RkbW44ZFhidGVOQU0yVUZXMDdTbnk5?=
 =?utf-8?B?RnFHbmZsKzRzaFUxeUFleEltanRRbVl5Z2Z3WE1wZHgyYTdZdE93OThJOGdj?=
 =?utf-8?B?TUJSdVdaNXdZQ0RqUk1jdXFzYWdiVVE1VFFkTXROMmFZQ05mb1pYWGVWdUw2?=
 =?utf-8?B?cW4ya2l2ZFFqNittQkJZQW01RDQ1NVRvaWpNZ3JPN2FyVlAzNEMxWWdoY214?=
 =?utf-8?B?ZHNzTzljTVUrSldib1pGUWdHaE9tQ1VaN2duTzJ2MUwxWTIyRVQ5Z2ZoL3V2?=
 =?utf-8?B?ckU3Rmk3WlZETmxHTEphek9RVmdLaUNkaXBKKzd3Q05CYTk3RG8xekVtdU9O?=
 =?utf-8?B?bEpJcXc5Q2FsQThoNVBQNUxxTUh2bWtYeWhsWHZ5NXdnZEkzZ2NhNW9obnBX?=
 =?utf-8?B?T3d3ei9jSmxTWVgxeHZyUWJFRVBIOVY4cW5ZcVR4NG81aWtRaHNJZytxRUpR?=
 =?utf-8?B?NDRVQ1dSb01CTDNBUURJL2d6VEYxNzhWU3orZ0tSQ1dqdGhnUkZDeFcrakk2?=
 =?utf-8?B?NEpid2lpZndTTGdjVTZMakJqUFZhUkVhNlZIam9NYW5zbEVVUm9ySEE3TS8w?=
 =?utf-8?B?cG1kbGxsSy9lN294eHNLc096S1VhaldMVTRlOHl0Tm9FWExlalJBKzU0UWdE?=
 =?utf-8?B?Y2JEZXljMUpSU0JjUE5LSVVjUWxPQ2ZoQmJ6WUZMdTNScDg5T3JndGdDUUkv?=
 =?utf-8?B?UVhFTXAzWTB2eXFNdVpVekdHZ05XZUJwaHExZEs3dTB4azdmeDFYUVIvUU5x?=
 =?utf-8?B?c1BHTmdEVHg2elUzWWIwa2tkYnFsM0tSejZlS3dmbjhrandRSkJTUnh5UXFE?=
 =?utf-8?B?QXFCVitKTk5Ua0JKWjdrREtJa0ZnU2l6ZkNoM3JYYUovbVpQbjFsVHJaL1lV?=
 =?utf-8?B?WXVmclI4NisxVzc3c0hKcVRMblVDbkMxU2xsN1NSTkxoQUhZRlV3cUgvbVVV?=
 =?utf-8?B?OERmWVZhc2Q4T1NaOWgwanpRVGQ1SENFa0YzRnFrNkN3NkRGekhFUHdjcDAy?=
 =?utf-8?B?Q3JUam9XbmgxdkZqKzgwRjhWZ0U2VU1mYVRHeWs4a1JhUzh6NmdQUzdVUkFx?=
 =?utf-8?B?eU1PMEdtTzZHS2FCOWMvTmxFeGMzTndybE9ib09xQVJTWXRFeFFSWkdMNWoy?=
 =?utf-8?B?SFFpVU5UOXoxZWhDMVFtUWtickY5STJqaHBxYW9LQnRBTitpaytZNXZoTXdI?=
 =?utf-8?B?Y05qZUlteHdoMlgzMUJONjdPQ1pqQXZxS3diOFQycnp5Y2xsQ0pEcnoyMVF6?=
 =?utf-8?B?WFAxNlBzRFA4MmRydWZZZ0U1UVNaSUI2TWJDUU9rNXQyYUdrZUliSG11c0g1?=
 =?utf-8?B?OWhTajM3b1ZRREVmcFJIWmM0Z2pSNUxySEdyVFhvTmNoYjJLR3gwaHdFUXU2?=
 =?utf-8?B?WmtPcTQ0cXlJRkJiaWVtMGo2NGtlUUR5T1RZankvNUpHS3I0YjBjQnFqV2VG?=
 =?utf-8?Q?gaQxYfz9sLtE/HdwImyexVkrT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65380016-149a-4549-ec0b-08dc4f2699f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 12:57:19.0366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JB8b2Ey/JDB3DA+oi5sxLPv+XhouqxUF9U7kTPzWjvykjHYBDptsW9RmvZLRkaAbsJZhJ6bw2EQGY91/No8YmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4733
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTksIDIwMjQg
MjozMyBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDUvNV0gZHJtL2k5MTUvZGlz
cGxheTogSW1wbGVtZW50IFdhXzE2MDIxNDQwODczDQo+IA0KPiBUaGlzIHBhdGNoIGlzIGltcGxl
bWVudGluZyBXYV8xNjAyMTQ0MDg3My4NCj4gDQo+IEJzcGVjOiA3NDE1MQ0KPiANCg0KUmV2aWV3
ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyB8IDI0ICsrKysr
KysrKysrKysrKysrKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyAgICB8IDIwICsrKysrKysrKysrLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDM3IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gaW5kZXggZjhiMzM5OTlkNDNmLi44MzhkMWE3MjNm
ZjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vy
c29yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3Iu
Yw0KPiBAQCAtNTExLDYgKzUxMSwyNCBAQCBzdGF0aWMgdm9pZCBpOXh4X2N1cnNvcl9kaXNhYmxl
X3NlbF9mZXRjaF9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAlpbnRlbF9kZV93
cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX0NUTChwaXBlLCBwbGFuZS0+aWQpLCAw
KTsgIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCB3YV8xNjAyMTQ0MDg3MyhzdHJ1Y3QgaW50ZWxfcGxh
bmUgKnBsYW5lLA0KPiArCQkJICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsDQo+ICsJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0
YXRlKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShw
bGFuZS0+YmFzZS5kZXYpOw0KPiArCXUzMiBjdGwgPSBwbGFuZV9zdGF0ZS0+Y3RsOw0KPiArCWlu
dCBldF95X3Bvc2l0aW9uID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5waXBlX3NyYykg
KyAxOw0KPiArCWVudW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7DQo+ICsNCj4gKwljdGwgJj0g
fk1DVVJTT1JfTU9ERV9NQVNLOw0KPiArCWN0bCB8PSBNQ1VSU09SX01PREVfNjRfMkI7DQo+ICsN
Cj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExBTkVfU0VMX0ZFVENIX0NUTChwaXBl
LCBwbGFuZS0+aWQpLA0KPiArY3RsKTsNCj4gKw0KPiArCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBQSVBFX1NSQ1NaX0VSTFlfVFBUKHBpcGUpLA0KPiArCQkgICAgICAgUElQRVNSQ19IRUlHSFQo
ZXRfeV9wb3NpdGlvbikpOyB9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGk5eHhfY3Vyc29yX3VwZGF0
ZV9zZWxfZmV0Y2hfYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJCQkJCSAgICAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCQkJCSAgICAg
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkgQEAgLTUzMSw3ICs1
NDksMTEgQEAgc3RhdGljIHZvaWQNCj4gaTl4eF9jdXJzb3JfdXBkYXRlX3NlbF9mZXRjaF9hcm0o
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAkJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3By
aXYsIFBMQU5FX1NFTF9GRVRDSF9DVEwocGlwZSwgcGxhbmUtPmlkKSwNCj4gIAkJCQkgIHBsYW5l
X3N0YXRlLT5jdGwpOw0KPiAgCX0gZWxzZSB7DQo+IC0JCWk5eHhfY3Vyc29yX2Rpc2FibGVfc2Vs
X2ZldGNoX2FybShwbGFuZSwgY3J0Y19zdGF0ZSk7DQo+ICsJCS8qIFdhXzE2MDIxNDQwODczICov
DQo+ICsJCWlmIChjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQpDQo+ICsJCQl3
YV8xNjAyMTQ0MDg3MyhwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOw0KPiArCQllbHNl
DQo+ICsJCQlpOXh4X2N1cnNvcl9kaXNhYmxlX3NlbF9mZXRjaF9hcm0ocGxhbmUsIGNydGNfc3Rh
dGUpOw0KPiAgCX0NCj4gIH0NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCBlMWE5Mzk5YWE1MDMuLjdlY2YxYjM1YzFlZiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMDgyLDE0ICsyMDgy
LDE5IEBAIHN0YXRpYyB2b2lkIHBzcjJfbWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAljcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19jdGwg
PSB2YWw7DQo+ICB9DQo+IA0KPiAtc3RhdGljIHUzMiBwc3IyX3BpcGVfc3Jjc3pfZWFybHlfdHB0
X2NhbGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IC0JCQkJCSAgYm9v
bCBmdWxsX3VwZGF0ZSkNCj4gK3N0YXRpYyB1MzINCj4gK3BzcjJfcGlwZV9zcmNzel9lYXJseV90
cHRfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCSAgICAg
ICBib29sIGZ1bGxfdXBkYXRlLCBib29sIGN1cnNvcl9pbl9zdV9hcmVhKQ0KPiAgew0KPiAgCWlu
dCB3aWR0aCwgaGVpZ2h0Ow0KPiANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1
X3JlZ2lvbl9ldCB8fCBmdWxsX3VwZGF0ZSkNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiArCWlmICgh
Y3Vyc29yX2luX3N1X2FyZWEpDQo+ICsJCXJldHVybiBQSVBFU1JDX1dJRFRIKDApIHwNCj4gKwkJ
CVBJUEVTUkNfSEVJR0hUKGRybV9yZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpKTsN
Cj4gKw0KPiAgCXdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoJmNydGNfc3RhdGUtPnBzcjJfc3VfYXJl
YSk7DQo+ICAJaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5wc3IyX3N1X2Fy
ZWEpOw0KPiANCj4gQEAgLTIxNDEsNyArMjE0Niw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3BzcjJf
c2VsX2ZldGNoX3BpcGVfYWxpZ25tZW50KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
DQo+ICAgKi8NCj4gIHN0YXRpYyB2b2lkDQo+ICBpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGln
bm1lbnQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+IC0JCQkJICBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YykNCj4gKwkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAr
CQkJCSAgYm9vbCAqY3Vyc29yX2luX3N1X2FyZWEpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0
YXRlLCBjcnRjKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0
ZTsgQEAgLTIxNjksNiArMjE3NSw3IEBAIGludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdubWVu
dChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJCWNsaXBfYXJl
YV91cGRhdGUoJmNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYSwgJm5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5kc3QsDQo+ICAJCQkJICZjcnRjX3N0YXRlLT5waXBlX3NyYyk7DQo+ICsJCSpjdXJzb3JfaW5f
c3VfYXJlYSA9IHRydWU7DQo+ICAJfQ0KPiAgfQ0KPiANCj4gQEAgLTIyMTQsNyArMjIyMSw3IEBA
IGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPSBpbnRl
bF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSwgKm9sZF9wbGFuZV9zdGF0ZTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOw0KPiAtCWJvb2wgZnVsbF91cGRhdGUgPSBmYWxzZTsN
Cj4gKwlib29sIGZ1bGxfdXBkYXRlID0gZmFsc2UsIGN1cnNvcl9pbl9zdV9hcmVhID0gZmFsc2U7
DQo+ICAJaW50IGksIHJldDsNCj4gDQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9z
ZWxfZmV0Y2gpDQo+IEBAIC0yMzMxLDcgKzIzMzgsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0
Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCSAqIGRybV9h
dG9taWNfYWRkX2FmZmVjdGVkX3BsYW5lcyB0byBlbnN1cmUgdmlzaWJsZSBjdXJzb3IgaXMgYWRk
ZWQgaW50bw0KPiAgCSAqIGFmZmVjdGVkIHBsYW5lcyBldmVuIHdoZW4gY3Vyc29yIGlzIG5vdCB1
cGRhdGVkIGJ5IGl0c2VsZi4NCj4gIAkgKi8NCj4gLQlpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9h
bGlnbm1lbnQoc3RhdGUsIGNydGMpOw0KPiArCWludGVsX3BzcjJfc2VsX2ZldGNoX2V0X2FsaWdu
bWVudChzdGF0ZSwgY3J0YywgJmN1cnNvcl9pbl9zdV9hcmVhKTsNCj4gDQo+ICAJaW50ZWxfcHNy
Ml9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQoY3J0Y19zdGF0ZSk7DQo+IA0KPiBAQCAtMjM5NSw3
ICsyNDAyLDggQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIHNraXBfc2VsX2ZldGNoX3NldF9sb29wOg0KPiAgCXBz
cjJfbWFuX3Rya19jdGxfY2FsYyhjcnRjX3N0YXRlLCBmdWxsX3VwZGF0ZSk7DQo+ICAJY3J0Y19z
dGF0ZS0+cGlwZV9zcmNzel9lYXJseV90cHQgPQ0KPiAtCQlwc3IyX3BpcGVfc3Jjc3pfZWFybHlf
dHB0X2NhbGMoY3J0Y19zdGF0ZSwgZnVsbF91cGRhdGUpOw0KPiArCQlwc3IyX3BpcGVfc3Jjc3pf
ZWFybHlfdHB0X2NhbGMoY3J0Y19zdGF0ZSwgZnVsbF91cGRhdGUsDQo+ICsJCQkJCSAgICAgICBj
dXJzb3JfaW5fc3VfYXJlYSk7DQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAtLQ0KPiAyLjM0
LjENCg0K
