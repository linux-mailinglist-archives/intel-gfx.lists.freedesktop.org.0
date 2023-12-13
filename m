Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195DA810B62
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 08:20:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B6D10E71E;
	Wed, 13 Dec 2023 07:20:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF4910E721
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 07:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702452024; x=1733988024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S47eNEpwrh633yLnM/3x6DyrNRasw0+qJcTCOXhWhHs=;
 b=Of5Vgdeg4BY0SFXoHwY4+3a/PFgcz5GPQXURN2Dz+4qME+Si6kIMda0r
 5obs1T4c7QcdTSi48nNuaKPrqXvUB6HO6dOIMFTo0C36iVmlUTXQtqs8F
 uuVjHYldl/wWiL9CPzr/10d0Xe4/eKizAMqLUNozDXhZSYKMKPy4BZh+J
 F0y4E1GjZNDaicnfCZFK1Q/9Q69iZTRffKoz+1zuE1yYuQP0nGSEK6Bgi
 JcbeVF3ZuC3saqXUlNG6aBcCbaaPbhpcdpZ3frhkd79OZkBX9DuoXE2K0
 j6dPBBh84Si92RIJY3K6cR6y5Q+xsnTaXnHaNAz70VotodS/eCTGlo8+F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="2097488"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="2097488"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:20:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="21846428"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 23:20:23 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 23:20:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 23:20:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 23:20:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCj/JE+cgFoAFL5zEPUIRIqZi5vQBJtJ7XU8qadIdp1GmHvzZQGXhJDNvzMt2rH+KO/TkV0dAeKKv4YhIE6kcAxr3W1QVwCltTjhOds5RtbiJDkuMtXBxThtvk9zqxTtMh6CHsSzl/Vk3ARRrYAF77OhBDFUHiyA03rDf1RH11MZqBQbkmkgv+C3F5vb9QauxmAept2+ZI8M7VTB1SYlztDyBfBDcrsZpxFRSrVC8QFR+CmzM5DHJRzCiFRqq1AnXUNwKmFXn/tI7q2k5t6pNlRHnZOy0xFzXoq377MGIXxBmlLaXTJq6AhBWb2wAsiDhT+SQELGlEB7xM1O+5BZfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S47eNEpwrh633yLnM/3x6DyrNRasw0+qJcTCOXhWhHs=;
 b=HwqxlaYiueVwdhKlr1lPwSe3/8Q87rtUJcU4/mtSer94DWCOSmAP5qwXvpxxKFHlJ3iG4gvuLkqf8bRHJdZ3P0ekAoCETisgKjE2t/3gjjmSdksazqc5GQdu8d6u4deh/Gq+StXdJVYX7Bp8H2nJrwLu7CDCCy5JbT4bRPtpCtb4t7UT2b8sZ1LItV96sMrve3HdPw7yH6ADBl08wJZMWOgJP3vwIAzE8XsefjLD+XMwEb5oBx3b8GW630xH2zVMek+Nsl5UKxXbQmmtlHJe7wOIftGm9j+7K/P7oEC18wWrcXZ++aHypIMa92UjJasKJtRDHCEEFIKqRed/Ngj9wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH3PR11MB8155.namprd11.prod.outlook.com (2603:10b6:610:164::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.33; Wed, 13 Dec
 2023 07:20:19 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7068.033; Wed, 13 Dec 2023
 07:20:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2] drm/i915/display: Wait for PHY readiness not needed
 for disabling sequence
Thread-Topic: [PATCH v2] drm/i915/display: Wait for PHY readiness not needed
 for disabling sequence
Thread-Index: AQHaLPJ0pJzgdFGTeEu9rxJuXquEC7CmzfaAgAABSfA=
Date: Wed, 13 Dec 2023 07:20:19 +0000
Message-ID: <MW4PR11MB705497DB81994A557CB0C25CEF8DA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231212115130.485911-1-mika.kahola@intel.com>
 <ZXlZsQxCnvbnv9Co@ideak-desk.fi.intel.com>
In-Reply-To: <ZXlZsQxCnvbnv9Co@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH3PR11MB8155:EE_
x-ms-office365-filtering-correlation-id: 8671ca97-f6d4-4716-bd9e-08dbfbabf632
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NGAPCr7gTodEW2R/WyINHo0sRVU418Ote6dAWhxF2evTVnt6Ffzx/ZMnSGADnmcFMCWpQRTVwQiAkFA/RSedNhSFs2JVbv5lS4F9law+UCLPcM3GsqqAvt12rUHYqWx1b7NQ26Pqdz3QEb/LN1EhvZeFMN1sKJ59thV/1/huO88EFdlt2IlMSl2v86gOdjhyGhMqqe2F83gjteNQpeynmMMUJo/Yvk6Gx/cR4D2OWEYZB0+F1N6pX0i0joYjTtnOLGf6C/OxXdBgYRwEXlAz7gU+I1tjywLFserrVINfTlLRafuKDFbKJ6dzs5j34UvNgRmCHBAdKEVhP32PB6YC3O0eTJnJtBZo08eGO1u0vYot0EyNABdW7kC4jtvlh0eloJJJlhblOTWHebBDpuXvZmw3eA258ICS+UYc3ULRPtxjXaHGNiypYBNrK58zBbGDJ+UOT4rN3hDuIFZxGHMkSPfeBOT5t3wZ4TV5PgbUvO4QwhkTowuDEwFhXkRLiZkE4qsVbyCdeUUE0RdK18NzqVBYw7Om+3BJ+KOAoPqnRVNISJYmQWxS/dLMKKiJI+n73RNhz2GIpHIxgujIxF+vezSPsjjf0zzKWjJqvkdDmfpDeMdkRbnn6JUHNa4qYCyU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(136003)(39860400002)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(478600001)(26005)(83380400001)(53546011)(7696005)(6506007)(9686003)(122000001)(6862004)(8936002)(4326008)(52536014)(8676002)(5660300002)(41300700001)(2906002)(316002)(71200400001)(38100700002)(66446008)(66476007)(66946007)(6636002)(64756008)(66556008)(76116006)(33656002)(86362001)(82960400001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NnpnNE1SVHV1SWk2ME9HSTdhRDdyZ21NNTB5U3RPUy84d2pieHV4OE16eHYx?=
 =?utf-8?B?TUhQN0ZzcG03NnFaTFVVZExtZWdPWER3UUVMTjFEbGZCRkFsRkFnYllVeEZ4?=
 =?utf-8?B?YWlDbDZXbU9pQzFHRlV0OWdyU0JWSHNvWTB3cDYwM3Uvc1kzcWVOQjNFVHFG?=
 =?utf-8?B?cmdMOUw3MkJFbnNFRjZoUnI3NU4vQzdtZ3hLSjFZL1duL3VYUmo1UVk1dWY3?=
 =?utf-8?B?Smx5czUzUDQ2OXBpVENuYmloaWpsMGxMSG5uMU0vV1htVld6QU1qTldvMStq?=
 =?utf-8?B?ZUc1bVVFRjh4a1NibDNKdGFPZGNyaDJWOEJ1Vnc4eklhNEtkQmt4OG5VMWFn?=
 =?utf-8?B?YXpCL3V3OWx0Z1AzazRuMGFFTXZhUU5wcTF3dklkcWpUME44SVFWOHZWS2tZ?=
 =?utf-8?B?V3lYODRSVlZjejZuZmtlYjNldjNXVnd5MkpVbmdpUnNDTjAyaW1mWnNxU0p3?=
 =?utf-8?B?OGo3NFpKUjExbEVwSlNWY0kzVDZYd29hbWVtYzdMM2hvQ1UveFBNbFpUcUln?=
 =?utf-8?B?SGRqZ1pLQnRlREd2eGZMN1hvam1rOFFMeGdBa2dHSE42bTM4RE9hN2lrak9M?=
 =?utf-8?B?UWxad0s5ZW44cFJzVVg5cU83bzFqRVU1QjlCUzNnYTJZdFNuWEpmQzloeG5a?=
 =?utf-8?B?RU84WklORGplZjEwbjN4N1dvME1PMlFtMDNwOTNHQmhFUWg2YURJOFpvL2Za?=
 =?utf-8?B?VXErS0U1R2daL1FvelR3blZZZkJjMEtxOENQZENGK0lzU1l5SWhpR014ckx5?=
 =?utf-8?B?aThtN3V6Q3h4YjZjanNiSmJFUUVnOU9vL0VkY3BQd2dxWUl5ZWh2SG0ybGNu?=
 =?utf-8?B?UnFzU0xlbjB0ZWo4Skw2bkpETXpPVWI2bll2aE1wcWFSSDF2YUxVdGk4Nk40?=
 =?utf-8?B?VTloVlZicS9WaTlxU0dwWTQ4a01HeCtxeGlWVGJRVjBTS1ZZdWFZZWdrNm4v?=
 =?utf-8?B?YzdyTTVlN0IveWVJNHo3WUd2NmROcWtBNW5NSXV4eWxIdmFXdHZUVFNobmJj?=
 =?utf-8?B?ZUVNdlFmYkkrT29SaEVtaGNaUUkvNytqcVpySS8rWGg4MDRobEoyY3NVdzBI?=
 =?utf-8?B?dmtZRmYrMTdVWDZRTU42OVZaTmVzd0JNTXRoTVNsdVM1ai9yOFkyYy9YMnIz?=
 =?utf-8?B?N2k1VThSZU9kSXc5OGRmL1NDTFFmN2I1VUFDRXNCcVEvbDZrYkhBbzM3bk8w?=
 =?utf-8?B?K2NhZlBEQ2k2MDM5WHZpbWxUZnlXcEpWdzRNek5rRktWMjdxWnJGTTlDSENF?=
 =?utf-8?B?Vk8vdnJmK0lzWXhYdm5kb1BhcDh5d1F2d2g0TXFTWGc4WjlucWVUWE1OdzVv?=
 =?utf-8?B?dk1XVTlTTDJUYXhhcFZ2ckVOVmRyYmtYZ2k5bS9aNkN6Q3k3UUpBbVoxQkRQ?=
 =?utf-8?B?VGpPdDkwZTB5WGJEVTMyT0xjMnlFRGw0Tjd0WDhpVW1QdUNyb3ZoVUdrbFBZ?=
 =?utf-8?B?T01NZjJBQ2lwbVk2dXh3NzFodUYycHl1M3VNV1p3YlB3Wk1YNUZyazg1Rkpr?=
 =?utf-8?B?bjUrVEsvbE9GcXZPbk05a1lSV3JjNnU0TElHVHZ3dGFjQk1naXlSWlk5cjdh?=
 =?utf-8?B?bE56bnVZOWZ4SW9xTkZmeWVxdWNZbU1FUUM4eG84bUdtYzJseDZHMGNGMEpj?=
 =?utf-8?B?ckg5Yy9Qd2x1aUkwaEVSOHd3ZXdWNHRyTjhZTWgwc1ZYT1czWGR0d3dkSjhn?=
 =?utf-8?B?QnpNWTR2TkFTYmlZalNwTk9pS2VDZkhocmcrdjRTQ0NVR1kwV29xOU9UWURh?=
 =?utf-8?B?amlYb2JUb2FvQXNnTlN3TVV2bWFHUXRsTTZhUHAzSnFqOGo1ZW9TYjBOV1VJ?=
 =?utf-8?B?d0J1dVRpV2lvYUFOQlJHYlZDU1NocU1kMDZpSnpSZ1I2MnQvZDdPWlI5dS9H?=
 =?utf-8?B?U2NGMVRDbjNFNGp2RENYTzV6ZUc0RElyYkVRREVsY3FFN0t1WHpmVFJVcjJW?=
 =?utf-8?B?YzJpNGxxT3I5U0l4UkluTXVsWjFjRWlmODBnaHdUblEvOUs1ckFybVhNUG5a?=
 =?utf-8?B?bzhXTDVTeDRzdldwNDJQRDJxL2NCZXk5WmgwK0ZHVlg1dmt6ZUZIM2t0ZFdt?=
 =?utf-8?B?WGd2V3ZjbEcvcUpVNGY0RVJsZ3pWeVFqdUhUaWhIUDk2U3V4Um02UnJFcFdI?=
 =?utf-8?Q?8WDxd/jdOEgjtwTwkTjS/WFSH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8671ca97-f6d4-4716-bd9e-08dbfbabf632
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 07:20:19.1307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OPhGq1M/xUDJDYpzUIOsic86Ta6YsEzpv8lQvHCvT2VNGKXdddZJ2YPlTRSBVdYxeU+g0+mgUvntOtE3OMOj0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8155
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGVhaywgSW1yZSA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBEZWNlbWJlciAxMywgMjAyMyA5
OjE0IEFNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2
Ml0gZHJtL2k5MTUvZGlzcGxheTogV2FpdCBmb3IgUEhZIHJlYWRpbmVzcyBub3QgbmVlZGVkIGZv
ciBkaXNhYmxpbmcgc2VxdWVuY2UNCj4gDQo+IE9uIFR1ZSwgRGVjIDEyLCAyMDIzIGF0IDAxOjUx
OjMwUE0gKzAyMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+IFdoZW4gZ29pbmcgdGhyb3VnaCB0
aGUgZGlzY29ubmVjdGlvbiBmbG93IHdlIGRvbid0IG5lZWQgdG8gd2FpdCBmb3INCj4gPiBQSFkg
cmVhZGluZXNzIGFuZCBoZW5jZSB3ZSBjYW4gc2tpcCB0aGUgd2FpdCBwYXJ0LiBGb3IgZGlzYWJs
aW5nIHRoZQ0KPiA+IGZ1bmN0aW9uIHJldHVybnMgZmFsc2UgYXMgYW4gaW5kaWNhdG9yIHRoYXQg
dGhlIHBvd2VyIGlzIG5vdCBlbmFibGVkLg0KPiA+IEFmdGVyIGFsbCwgd2UgYXJlIG5vdCBldmVu
IHVzaW5nIHRoZSByZXR1cm4gdmFsdWUgd2hlbiBUeXBlLUMgaXMgZGlzY29ubmVjdGluZy4NCj4g
Pg0KPiA+IHYyOiBDbGVhbnVwIGZvciBpbmNyZWFzZWQgcmVhZGliaWxpdHkgKEltcmUpDQo+ID4N
Cj4gPiBCU3BlYzogNjUzODANCj4gPg0KPiA+IEZvciBWTEstNTM3MzQNCj4gPg0KPiA+IFNpZ25l
ZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiBGb3Ig
bmV4dCB0aW1lOiBpdCB3b3VsZCd2ZSBiZWVuIGJldHRlciB0byBzZXBhcmF0ZSB0byByZWZhY3Rv
ciArIGZpeCBwYXRjaGVzLiBUaGUgY2hhbmdlIGxvb2tzIG9rOg0KDQpUaGF0J3MgdHJ1ZSB0aGF0
IHRoaXMgcmVhbGx5IGNvbnRhaW5zIHR3byBwYXJ0cywgdGhlIHJlZmFjdG9yaW5nIGFuZCBhIHNt
YWxsIGZpeC4NCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IQ0KDQotTWlrYS0NCg0KPiBSZXZpZXdl
ZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiANCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMjUNCj4gPiArKysrKysr
KysrKysrKysrLS0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCA5IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+ID4gaW5kZXggZjY0ZDM0OGE5NjllLi5kY2YwNWUwMGU1MDUgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gQEAgLTEw
MzAsMTggKzEwMzAsMjUgQEAgc3RhdGljIGJvb2wNCj4gPiB4ZWxwZHBfdGNfcGh5X2VuYWJsZV90
Y3NzX3Bvd2VyKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YywgYm9vbCBlbmFibA0KPiA+DQo+ID4g
IAlfX3hlbHBkcF90Y19waHlfZW5hYmxlX3Rjc3NfcG93ZXIodGMsIGVuYWJsZSk7DQo+ID4NCj4g
PiAtCWlmICgoIXRjX3BoeV93YWl0X2Zvcl9yZWFkeSh0YykgfHwNCj4gPiAtCSAgICAgIXhlbHBk
cF90Y19waHlfd2FpdF9mb3JfdGNzc19wb3dlcih0YywgZW5hYmxlKSkgJiYNCj4gPiAtCSAgICAh
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgdGMtPm1vZGUgPT0gVENfUE9SVF9MRUdBQ1kpKSB7DQo+
ID4gLQkJaWYgKGVuYWJsZSkgew0KPiA+IC0JCQlfX3hlbHBkcF90Y19waHlfZW5hYmxlX3Rjc3Nf
cG93ZXIodGMsIGZhbHNlKTsNCj4gPiAtCQkJeGVscGRwX3RjX3BoeV93YWl0X2Zvcl90Y3NzX3Bv
d2VyKHRjLCBmYWxzZSk7DQo+ID4gLQkJfQ0KPiA+ICsJaWYgKGVuYWJsZSAmJiAhdGNfcGh5X3dh
aXRfZm9yX3JlYWR5KHRjKSkNCj4gPiArCQlnb3RvIG91dF9kaXNhYmxlOw0KPiA+DQo+ID4gLQkJ
cmV0dXJuIGZhbHNlOw0KPiA+IC0JfQ0KPiA+ICsJaWYgKCF4ZWxwZHBfdGNfcGh5X3dhaXRfZm9y
X3Rjc3NfcG93ZXIodGMsIGVuYWJsZSkpDQo+ID4gKwkJZ290byBvdXRfZGlzYWJsZTsNCj4gPg0K
PiA+ICAJcmV0dXJuIHRydWU7DQo+ID4gKw0KPiA+ICtvdXRfZGlzYWJsZToNCj4gPiArCWlmIChk
cm1fV0FSTl9PTigmaTkxNS0+ZHJtLCB0Yy0+bW9kZSA9PSBUQ19QT1JUX0xFR0FDWSkpDQo+ID4g
KwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiArCWlmICghZW5hYmxlKQ0KPiA+ICsJCXJldHVy
biBmYWxzZTsNCj4gPiArDQo+ID4gKwlfX3hlbHBkcF90Y19waHlfZW5hYmxlX3Rjc3NfcG93ZXIo
dGMsIGZhbHNlKTsNCj4gPiArCXhlbHBkcF90Y19waHlfd2FpdF9mb3JfdGNzc19wb3dlcih0Yywg
ZmFsc2UpOw0KPiA+ICsNCj4gPiArCXJldHVybiBmYWxzZTsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0
YXRpYyB2b2lkIHhlbHBkcF90Y19waHlfdGFrZV9vd25lcnNoaXAoc3RydWN0IGludGVsX3RjX3Bv
cnQgKnRjLA0KPiA+IGJvb2wgdGFrZSkNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiA+DQo=
