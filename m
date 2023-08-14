Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C2277B558
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 11:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE37D10E17A;
	Mon, 14 Aug 2023 09:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D1110E17A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 09:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692005111; x=1723541111;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FQPrev4YI1FJhiBWw7os1xnjvIH6G3xfNhjRW7fQk/w=;
 b=JJ45uzlIlgYQrkEmC0POLqCP8C7f+8GRK7VNkaMgk1kwApbL+nikBOam
 5vt7UzrNmOJ5iG4ThP/nRYwg//zpT9aXBPpkC4UMFJ6PW/8Rc0UMjYXWG
 q8qqLmw7Z41fLabvaybk/4QLgdDO2K2vWDnNLa+WBxfokqY/+MxZKGN3L
 cfRgpIBJIUhm5ikDAAyfifTRUbNo2M3ZMKGqw9UrIT72T0TOw3KPvaP3C
 js7cgidBHZa2MF9zzZlRt9SoiZGEcwxkUm4BiP/1D9pcujcqXHtSKG/X1
 fByOD5xy2o80TihYhT72SYzLDpG8Eyhu86kZdLVuvifQEFUxeO1wM6DjX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="458362159"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="458362159"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 02:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="726956412"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="726956412"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 14 Aug 2023 02:25:09 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 02:25:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 02:25:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 02:25:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3dsmzNVq7fXL9OS6ejAjT0az0Ro1eOE1qz/JYMa1ePhr6hlUnmixWDGDDT5O2R/2StEfdZDXvdSu5lLP7tuNSVRXNwMv72bCwH9Z9EWVXhlMpNjznKQrn6aQx5mvmq+rnvr6FS8f/xfL0AenjXxi83XpUZQSpli6gkmwePHkee2b3Wioly+x0Tp4RxkmNuj2sYicSZMM8R7xZDXp7BLd9xDhg8vCRMN1IWMt6SVIYJJ7vSAlbIObeHvxMDiNJ5diI+Caj92YjsEBWuApOJvH2sPxoAGrtl5wrM43OV7L57jY5IYotaPSaenKL4eDXaKPj6PU1n5Ro7Uuct5vlAx+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FQPrev4YI1FJhiBWw7os1xnjvIH6G3xfNhjRW7fQk/w=;
 b=PQnONZ2blAGogaYOIAEkOYOAWLoDtU6Gn3jDvDF+9eCMDbNrSvR6PFMXZSjrdFDR5YuwYDGzqSjTB2/e1ZkRBZI/ERLUe7QFhGuE1w+eVf8l0Lz4Ps6i5zvDqtqPR0uZP9QsILzTcbY7Ta43mTkMi4nVGslYzbV/0mcfuC4sEKSmlrAkg3tMKhtUD0QTPKhXV28ZQJT3amdWMXaNiuTCPSw+V0hHjHNBlwVppBiuzRSaeoSPx+zCBgFjwx4bnfd4FRfInjp9IxL4PYATFC0QMlb7W5CmkgB3IaoefzPbyeAJQO2z4YECszSSABXWeQ6RmGOwQ102FIeosp5EpNy+aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW4PR11MB6788.namprd11.prod.outlook.com (2603:10b6:303:208::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Mon, 14 Aug
 2023 09:25:05 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6678.025; Mon, 14 Aug 2023
 09:25:04 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/4] drm/i915/cx0: Enable/disable TX only for owned PHY
 lanes
Thread-Index: AQHZvz7YLLTy3neR40S5BSwHpr8t5a/po7eg
Date: Mon, 14 Aug 2023 09:25:04 +0000
Message-ID: <MW4PR11MB70545699B3E5BAD67DC1C27AEF17A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-4-gustavo.sousa@intel.com>
In-Reply-To: <20230725212716.3060259-4-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW4PR11MB6788:EE_
x-ms-office365-filtering-correlation-id: 62b02bd1-b36d-444b-52b4-08db9ca857c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CoGuF7G7utRxxoFXiDToI03iCvoZTxdLrjwANL6dW0vDADvUtuB8GufwfMnTvCielZI+26LOX2BjYS+fG4i4i5rOGCFKcfxScHe9Ly7vRIe1yFZ5k9cmce+HWf/UTHYyuPV2nyYypDpmWk5hqXlPTciSYscjjEqxvf4qgo9h40pV/0CDc5dgv8fVIHsbbP7i9vqKwmN0gN75v+P2OgUNeRaeRRnWkOR/n9RwCnmPRzjN1YhcnF5QcGmpeLGog03+1SpG+WaQZUqd7nlOC/v93UF+ZLU3njVa6ooyhbkH7k5nvJbXfgG+YKyaDg3zgp7KU1v4VSdV9mIYHiR7VBWT08BsIIUZG3520PS+SInpAHZaEoNJeNhMbzXNc95Hnv25on58233jZENCqJHKh2BYOouBEbtaGMTahDkqsLBdgsNlXVO0OeTZytGcXdkGj89oHDl74MvMTBGwzAx/5fELEoPo7YfodZf7itNN/6wQW1puTVUUjOLReHO1EZMZRZSO9qvRfecFVRjen/hniwl1QGvs8wWdKx058fEEYxZnw2Gx5a4AbZYwXcwFKHsenhRh5OJcCNrJuc8LOs9mCaRReft4dbeb9jwx1pQi3ZBR6hJm91qgs7efcyul9q0KDTPw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(39860400002)(396003)(376002)(346002)(451199021)(186006)(1800799006)(55016003)(71200400001)(2906002)(7696005)(6506007)(53546011)(86362001)(26005)(107886003)(9686003)(316002)(122000001)(64756008)(76116006)(66556008)(66476007)(66446008)(54906003)(66946007)(41300700001)(478600001)(38070700005)(38100700002)(110136005)(82960400001)(5660300002)(52536014)(4326008)(8676002)(8936002)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?akdqbnBadW9jQlJxVVUrYXRlYzNyR2k4dXpibFdGV0s0Z3RUSVE5aHFNeDkr?=
 =?utf-8?B?cjNpVEtJUEtMVE1sUGVxU1pXQ3JMZzZoVWlwMUxyRWdCd1NZeitEZ3hmVm44?=
 =?utf-8?B?ai92cmxLczJNS1BFaFRUcE9RMjZ6YndqbUpDL2RTai81MVRsdjFHaHBTVk1y?=
 =?utf-8?B?R1BCSTFoNzZyR2ZHSHhCbFQyMWtTQ3dVaGU2RUFlalE0NnAvNk1jUWFnTitp?=
 =?utf-8?B?cm4xa3UvbHZudkp0VmFPWjQ3WFgzMTVmRTFMKzVQQUpwOFYwSlZtTEhmK2N4?=
 =?utf-8?B?N3dmWmM1dDBhd29QWE82cDVKeHpqSUdmbTMyOG9NdTZXSUJjVDhVRERPK3pE?=
 =?utf-8?B?bndlQVNuOWRDREdUZXBsajZQVy8yUVh1WGVTRExBYndBVkwrRnZCNGJNeWZQ?=
 =?utf-8?B?aS9yQlpncFBqZnQrZDVmQy8wejN0NFdxb2xINzM5aENUcnNyWEpYakh5OWlE?=
 =?utf-8?B?blVRdTZhajlvOU9BOWVDZzlObUdjd3RZL0lZS21SeVNwdlBrN25hb3A4dDk2?=
 =?utf-8?B?ZzRocDkxbllVbTcxYjNvaWE2aVBYYnZYcmhGR0ptUHgxYThaa2VHRlRTTEpu?=
 =?utf-8?B?bTlDVGRWRmhWV0lmMmRBeGttcVExeE5NbDkyQlBXcXpZL1pRWUd5MzArT2Ri?=
 =?utf-8?B?Zyt1Vi9Zd2V6a1k4QUVPWTVqWmVyOHNaUHZDaFhJVjM4YWdvNUd0N0Z5anIr?=
 =?utf-8?B?NzJwYitqb08vTzgrQUNRZThpeTI2QUUwWklBWjJVM25oaXZkNkNLV3o0V1Uz?=
 =?utf-8?B?YjRURmtKT2FISy9OL3VnYW1OdEl5WnNOVFVxWE1KR1RPNW8wWlUxdXVBSWli?=
 =?utf-8?B?K2RUeEtrUzQ4WG4rbGlGeWU2MUgvYjlybmY2VVZ4NVg5UkllQkhGSlBDVjMv?=
 =?utf-8?B?TCtYR3B4bE9OY2lqY3JWUm5rajFEV2NsLzVDeGF4QjJOVHl1Y3hSblpJOXRo?=
 =?utf-8?B?cW5uenV6ZWJDbnF4c2Q4cUJSWWhuMHZRUUZXaVVBMnpia3pqRitRZEpCTlpQ?=
 =?utf-8?B?Tis2T3dwWjVlWCtHQzQ5dksrSE5UY2I5QVEvbDVhaEdUWVJiMWdicnY5ZHNt?=
 =?utf-8?B?bDdRZWpsRE5DUHQvbVRMOWRBS2h2eCtpLzBPdTJkNExhckhPVnJOL1Q4aFdk?=
 =?utf-8?B?MzZTVURoblNzVHQ0WFp3WmdjcUJmVmVnSExocFlUQ2s4NlZKOUxybmo0bE4w?=
 =?utf-8?B?M2RFZHVoMXZTUHVISmVZNVJxQzJ1eEd3by9ZMXI3QVdIcjJORVdNQ1RpV2NU?=
 =?utf-8?B?eUlSVnR5ZUJSdVFtMnFmaFRyQUtTcFRwZ01EOTBTSlJQTzhqL3Y2dTduOGF2?=
 =?utf-8?B?Qk9mSTFOcXRqS1RkdEhINy9Kb1cxUk1GRHQ0K1lQbHlCMUsyQmF2NFd0UFlC?=
 =?utf-8?B?OFRja0NDRUFNblFYZWZiZ25sUmdXQjZOeTl2T3FtM1Y0S1QvSndCR0xNWjNP?=
 =?utf-8?B?aUxZa2g1QjdMTmdhMnBJRytJdzQ2WTFRUEl5cmtKRGJySVVrTWwzcFZNNllp?=
 =?utf-8?B?aUhncFkyM0xHakRQV09WaU5ubEJ4RitWUWtBZitUc0JUK0FDK09ZcWtlUmNY?=
 =?utf-8?B?a2lHUTExUjFQcjhydkhhek1YNDF6NXl0aUhvZGladzIvdmRaSlQyWjNQVlRY?=
 =?utf-8?B?N1Z3MUdiWlFwc29obk9haklKK0V1NFFsSC92bHdrTzVOcHUzcnFuWUFzNnRY?=
 =?utf-8?B?V2lYQlZEdzZxaE5RZXdaTkRKV1BTWC9sTHhLN0kvOENtM2xmMWVRaWFwUGF0?=
 =?utf-8?B?dUNxRnhwR0c0cnlpT2k3NDZENHVONDRLNzArRTZFZjc0OWNDSGFQLzlySlV0?=
 =?utf-8?B?bGFxbTJ6VTFmeHhDa3Z0U3MzazIvYitlOW5uZHlxZ1FhMGF3RjZyL2dBa0Ju?=
 =?utf-8?B?dVdHdnRVbjBrUnFCckEvYmI2VVRxQjhXbHo4cWtFdHVLYVRuMVFsNmlyWnhW?=
 =?utf-8?B?TERBOVFQUEh6THQ5cW5yQm1NY1h4QzhlQlVHdVlOdU9pYkRncmhPMG5yZWlU?=
 =?utf-8?B?WEtDdVJsd05tbm5kTUNLNWVMMXBlbkJPS2lyZU1iOWF2S2tyWnFiVjBscHVV?=
 =?utf-8?B?RHpGeUtzUnhuYlRhUlJiT1pIcEQyaUk3d0prQTJVcHEvZE9MRytCTThEY1Iz?=
 =?utf-8?Q?wEGBiJ3iHbLxMfnyQTLGF1ZvD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b02bd1-b36d-444b-52b4-08db9ca857c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2023 09:25:04.3495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 28Bp2QgygD29GMj5q7ih/323HLer/gHKDSKFlc1wRigL9S/LcAU9P/Xb5F0fnXqsM0z/1uahrpjw7U4FR7/Y3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/cx0: Enable/disable TX only
 for owned PHY lanes
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVseSAyNiwgMjAyMyAx
MjoyNyBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBTcmlwYWRhLCBSYWRoYWtyaXNobmEg
PHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IFRheWxvciwgQ2xpbnRvbiBBDQo+IDxj
bGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDMvNF0gZHJtL2k5
MTUvY3gwOiBFbmFibGUvZGlzYWJsZSBUWCBvbmx5IGZvciBvd25lZCBQSFkgbGFuZXMNCj4gDQo+
IERpc3BsYXkgbXVzdCBub3QgZW5hYmxlIG9yIGRpc2FibGUgdHJhbnNtaXR0ZXJzIGZvciBub3Qt
b3duZWQgUEhZIGxhbmVzLg0KPiANCj4gQlNwZWM6IDY0NTM5DQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rh
dm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgOSArKysrKystLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBpbmRleCBmMTBlYmRm
ZDY5NmEuLjIzNjEyNDc4NjYzMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTI2MDcsMTAgKzI2MDcsMTEgQEAgc3RhdGljIHZv
aWQgaW50ZWxfY3gwX3Byb2dyYW1fcGh5X2xhbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsDQo+ICAJaW50IGk7DQo+ICAJdTggZGlzYWJsZXM7DQo+ICAJYm9vbCBkcF9hbHRfbW9kZSA9
IGludGVsX3RjX3BvcnRfaW5fZHBfYWx0X21vZGUoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpKTsN
Cj4gKwl1OCBvd25lZF9sYW5lX21hc2sgPSBpbnRlbF9jeDBfZ2V0X293bmVkX2xhbmVfbWFzayhp
OTE1LCBlbmNvZGVyKTsNCj4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7DQo+IA0K
PiAgCWlmIChpbnRlbF9pc19jMTBwaHkoaTkxNSwgaW50ZWxfcG9ydF90b19waHkoaTkxNSwgcG9y
dCkpKQ0KPiAtCQlpbnRlbF9jeDBfcm13KGk5MTUsIHBvcnQsIElOVEVMX0NYMF9CT1RIX0xBTkVT
LA0KPiArCQlpbnRlbF9jeDBfcm13KGk5MTUsIHBvcnQsIG93bmVkX2xhbmVfbWFzaywNCj4gIAkJ
CSAgICAgIFBIWV9DMTBfVkRSX0NPTlRST0woMSksIDAsDQo+ICAJCQkgICAgICBDMTBfVkRSX0NU
UkxfTVNHQlVTX0FDQ0VTUywNCj4gIAkJCSAgICAgIE1CX1dSSVRFX0NPTU1JVFRFRCk7DQo+IEBA
IC0yNjI1LDExICsyNjI2LDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX2N4MF9wcm9ncmFtX3BoeV9s
YW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCQlkaXNhYmxlcyB8PSBSRUdf
RklFTERfUFJFUDgoUkVHX0dFTk1BU0s4KDEsIDApLCAweDEpOw0KPiAgCX0NCj4gDQo+IC0JLyog
VE9ETzogRFAtYWx0IE1GRCBjYXNlIHdoZXJlIG9ubHkgb25lIFBIWSBsYW5lIHNob3VsZCBiZSBw
cm9ncmFtbWVkLiAqLw0KPiAgCWZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsNCj4gIAkJaW50IHR4
ID0gaSAlIDIgKyAxOw0KPiAgCQl1OCBsYW5lX21hc2sgPSBpIC8gMiA9PSAwID8gSU5URUxfQ1gw
X0xBTkUwIDogSU5URUxfQ1gwX0xBTkUxOw0KPiANCj4gKwkJaWYgKCEob3duZWRfbGFuZV9tYXNr
ICYgbGFuZV9tYXNrKSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICAJCWludGVsX2N4MF9ybXco
aTkxNSwgcG9ydCwgbGFuZV9tYXNrLCBQSFlfQ1gwX1RYX0NPTlRST0wodHgsIDIpLA0KPiAgCQkJ
ICAgICAgQ09OVFJPTDJfRElTQUJMRV9TSU5HTEVfVFgsDQo+ICAJCQkgICAgICBkaXNhYmxlcyAm
IEJJVChpKSA/IENPTlRST0wyX0RJU0FCTEVfU0lOR0xFX1RYIDogMCwgQEAgLTI2MzcsNyArMjY0
MCw3IEBAIHN0YXRpYyB2b2lkDQo+IGludGVsX2N4MF9wcm9ncmFtX3BoeV9sYW5lKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCX0NCj4gDQo+ICAJaWYgKGludGVsX2lzX2MxMHBo
eShpOTE1LCBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBwb3J0KSkpDQo+IC0JCWludGVsX2N4MF9y
bXcoaTkxNSwgcG9ydCwgSU5URUxfQ1gwX0JPVEhfTEFORVMsDQo+ICsJCWludGVsX2N4MF9ybXco
aTkxNSwgcG9ydCwgb3duZWRfbGFuZV9tYXNrLA0KPiAgCQkJICAgICAgUEhZX0MxMF9WRFJfQ09O
VFJPTCgxKSwgMCwNCj4gIAkJCSAgICAgIEMxMF9WRFJfQ1RSTF9VUERBVEVfQ0ZHLA0KPiAgCQkJ
ICAgICAgTUJfV1JJVEVfQ09NTUlUVEVEKTsNCj4gLS0NCj4gMi40MS4wDQoNCg==
