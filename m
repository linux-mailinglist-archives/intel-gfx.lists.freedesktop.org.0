Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B66C7913AA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 10:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E16910E30F;
	Mon,  4 Sep 2023 08:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFA410E2FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 08:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693816843; x=1725352843;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=OC9Fk4PoyRhSCCgsAtpYXAL2w9doIg+HFiKyNcwqkJU=;
 b=oKzybWGNulHjrt8z0dvfhRGjm918mXuIjax3gSJcpY3hxxOLT/gDLWoY
 LAdPiaMSJAKDFJxm0IMbecw/dtvDI5wehmRVShWwzq4CdqPdGJzf7PcrL
 uCJO9TqM0DYBBd1jFtKhH4EUEL+sbdWWqNMZDNu+EKjfeYVtyNWZLc9Mb
 o8ImQEd2PCMV08Q7CwHgvof2/wt8lQR9pE9VFkK7PGV3NAh23ji65zJxj
 vN0Ncqz1oKykPSCCVp2czLDHS9LQ8IRdQlqA+O3m501djr10hxylYAvrC
 6m2hdsaBnYsbcd1Au1TlZ491cIwJYvj3IJYfniQxflXgBQXYzQ+xdz8Xw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="462917544"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="462917544"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 01:40:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="855534497"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="855534497"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 01:40:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 01:40:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 01:40:34 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 01:40:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R70MsLSjVwwo2HJx+eLNG4dZhOCLRhfbw78e1UDztsQZE2jOFrnmFKnZmn2X6k2xQlLPINH0u8No67SUN8/bgsZrpeXoVeo1hjeVF9QmZGH4DaNaP4W2NjzD4EtTlGyTCBoCuJf8+XYOyfjXAfH32Ncq3kPNusmrI0rvozNs0ANkVlS9dAU8qaxdbQvhnsjyGKXesiF7rTEQBgEaZbPcQkKFtm3d68rkEw653eAOcOU8m9hbtoXa4s+ENNU5Y9Kz12lCGJY46IHwB8PWSl/WfCNS5OUqespH8DNPl/V5xGPCnUoW1MPOpQFkqh39jDwkTpgJVjHf3/cWVX4RoE8/Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OC9Fk4PoyRhSCCgsAtpYXAL2w9doIg+HFiKyNcwqkJU=;
 b=MtIWBD3KQ7TKrAVdop/AlITFM5TtQZB+zOhWTAWaaXGODWQbqcf7WxbKsDvcb4uXm4izmuYwU788GLKVqDlQzNh41fpGDQsng++//wDzwBg8LAPkeBMT/9+kh1sLHz9n2puB0VgA/HBO9jYZZ0isz+drHvGR2x1rlplvB0yFVqX8FVgOfeIHJ53ly99EDK9dRFuPy+3Ic6564iN9k+MwecUF5bGRqt5/C7u+KMBylk6gcYdNAdhHdSbysGXXw8dTJa1vMPXyYJMImGcoXdGuYaSpnMLTAmI1ZO1k6caYXeylqznoI2ELCJMMy7ouzMupkJWWtj6Sa+3p7R+puxa+uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB5968.namprd11.prod.outlook.com (2603:10b6:8:73::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.32; Mon, 4 Sep 2023 08:40:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 08:40:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
Thread-Index: AQHZ3Lemy3cMSyyjsU2I0mXKd6XF27AKSGkAgAAVFIA=
Date: Mon, 4 Sep 2023 08:40:32 +0000
Message-ID: <2956b2e6ed7434a38b5a86696efd70baee9212a3.camel@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
 <20230901093500.3463046-2-jouni.hogander@intel.com>
 <6d30b3c51b7552035ab772930bb8d3363d2500fa.camel@intel.com>
In-Reply-To: <6d30b3c51b7552035ab772930bb8d3363d2500fa.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB5968:EE_
x-ms-office365-filtering-correlation-id: f8c06113-1365-46f0-b0b0-08dbad2299a7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AEyDl+RM2NaQX3YdPU7L/OUD0lc1s0nlrsIRONHU1Ie6w/+539kFWdaHR4y938Sd9qsnA6v2tzDWMPGgs8ONxs9jL11scUEc2xu6lAERSFJECocc3+KtjdZUOk2lXvCqPVfI0vcPkWK0mPEpIujl9XCYPKMRhCR1OG228ZC24lEV3O9LFXYCNDbaajAbAmTiwkZpRdN2Q6cJXEWFxQrQDn1ptU9/3bTQbPxuSOO6lBYjquxe6JeD7J5VhO/8YVwGvaCsb2D43jW2oNH9oQlQcl7mG8w64iXITN5a3mOyAUFBhQUoT7TS8+AHTHofQQCTzucx+tY7WjYxdYBj5IPLIV19dvdVPPgzMZ/SRWVYNWTgFomkNQ4LAZvnOLL1Fnhbv6/IF5XWffrJrKmxEqmiTIaRfQSZiGXOBzkKD2PxymhUDPy2IDKMgHHzb2Sox5D8MLe4YNcws1IzzF8pnO/oqCcxlO5A8K++jIuRy4uhl0C2giSnmxqkOzf4OB8Z0sZDjR6FZVsd60MGIaDIKjqWx6AmhcVJrKDWQeCsEkDmaxMG8/RnFqUnRLDlEf9RL1yNCvUZZzabx9278IuZJhzylynz6aRDESXn7+RZn2YD9gOJDm/4al45RvZuHz9YBnVv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(136003)(366004)(39860400002)(186009)(1800799009)(451199024)(41300700001)(82960400001)(122000001)(38100700002)(38070700005)(71200400001)(86362001)(478600001)(2616005)(83380400001)(66574015)(26005)(6512007)(6506007)(6486002)(76116006)(64756008)(66476007)(2906002)(66946007)(66446008)(110136005)(91956017)(36756003)(6636002)(316002)(66556008)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WXpxeDk3TjV4cERBODlhOVZqcTkrNkUrZlRTVXdiYjg0TUR0L3hocjdIaEE5?=
 =?utf-8?B?UkszemtQNTRuTjhsR3Y2cnBPSHhLSmlPVjROS0xDMDZRekJFZW55aUR3QUVR?=
 =?utf-8?B?ZVR1MExhck9PVml3cnNabnBGVFBZek1xYkw2QWYvM0VPQnhiNVZ2N3V1QURp?=
 =?utf-8?B?Z2xpVU1qYVUzU0RIZ1c1VDU1WUgyMHVCeW5FYkl0SysybEJyb2ZROGtUY051?=
 =?utf-8?B?d1JxNlp5MTRwKzh6V2JKQXMvdzQ4TFFyWUJnMW4xdktKRnVSa0NHZkhheW1t?=
 =?utf-8?B?aFh0T0JycGlqdVJMc2R1ZlB3Vy9jQ2JxdVFzYU9JQ2dxRVN3czFzZU1iUm8y?=
 =?utf-8?B?QisrS0xDaGV1S0VhMm1wZmdKY0VOMks5TkZiRzBTR3JhTVJMSVBIa3grc3VM?=
 =?utf-8?B?eTJiQkRkd3ZWN0QyVU56TU5ZQ0tZSXRrVU9Xa2NUQWtsZ0haQ1NRUDM3TWxM?=
 =?utf-8?B?WFVQL1dtc0hjNW1admNTeDd0QWNZWDk5bzNSTVE2Z1lrT2o2ZnZMT3JTWmor?=
 =?utf-8?B?dVdtR0VyWDZRa2c0M1UrZEwxUGpNZTh3V21BZnZKWEcwbWNLZVYzdkNTeG8z?=
 =?utf-8?B?SEFWc2MwVG5UaWZkcjQwL2dDcW9VN2pCUWF2cmU2Z05hcnpLdW9zRXI0bTBr?=
 =?utf-8?B?UEl5amRXazNENVh2RW9mTFM2QnJtYmh2aHl6c0UzN01XVmJERVlScWpYWXRZ?=
 =?utf-8?B?WHQxYUhJQklYVDZhRkxzc25hT1NRT1JmSWVXWEhuM29sUkQwWHJtQmtPN3Vs?=
 =?utf-8?B?L3JLSFI4OFJtOS9Od0pkTjVScUlFR2ZhTUJrUTJSZVlnYndjSVl3WWtVRHZH?=
 =?utf-8?B?UjQrY0lsdC85WjQvbzdwRUJ6RWllTFNFZ3NCaHlZSEl4TjdtU0xLODlSUm9k?=
 =?utf-8?B?TlhrOUhyUndzdHR4akFFbHlGeTBGMVVRTVNGc3NubnJrSHl0VU54b0hHbktx?=
 =?utf-8?B?MkdjWjEwaTF4S01PMTAyWnRXUlZsd3lQVG1NSUFmU2txZ3Flbmdsc1ppaHVO?=
 =?utf-8?B?bU5Ja2tQbjdoN2ljUk5RMFZmMXA0SkphTUszN0xoQkNoVGVmenRwQ2NnaGRF?=
 =?utf-8?B?ZTlEMVd2NDNaSmptakxNbHhXSW5FNnB5bnRVRll3VVhnNEQ3SEVNWnhuY0xj?=
 =?utf-8?B?c254SHdJVm9wNHhkMkswZW95VjMzUmhOZ2FNS0hLVXZLZ0RXbXd1R21MNllv?=
 =?utf-8?B?ZmhpVVlnbHBFTy93OWFnQkNzblp3azhuc0wwVlpNWUp3S1MvYUxpdlVmdHM3?=
 =?utf-8?B?RGx1QXBNK1BCUHFrMXZ6ZDF5cFZLWHpFVkNBKy9QM29zdC9ldGlUbDcvK29w?=
 =?utf-8?B?TXAyeXUzTFQxcmFGVnhra0lXUWk4YURJQU4zejBMcEhPWWlQeURkSmdORlpp?=
 =?utf-8?B?Q2N6ZnUxUmpCQXN6Z2JlVEZYZ0FkYUNKZE1qYzFyQjhZbWtiTzk0cHcvNHdq?=
 =?utf-8?B?TUc4YnBzSVJKK0Z2eWNpTzhuTEkyUFE0UE02enNyYTVCZ01RSjZMOHNIL0ZT?=
 =?utf-8?B?bVNaR3MyWWhCdVphLzJSL2EzNmxOTGhTZktnMG1nSDdkcitZd0VsTGNHQUxV?=
 =?utf-8?B?UzB2Smw0S0FSRGZaZU0zQmpqVE53eVJNdG1qVUVFNFlpTHZmbnZpRkZMYW9v?=
 =?utf-8?B?cFNyZjhTaERoN0RhbU5sVzlIa3pTQ0hFdW5rOW9UamU2RWd6ZytkTkU2YzE3?=
 =?utf-8?B?bU1nY0JKcm9KOHdid0kyZGRPWHBxVW5WcnF2aWVnRHlKV0FGVHVzMmV1dWpr?=
 =?utf-8?B?K1UxSlJXV0w0ZU4zbGdwTjlkYjVUUjgwZ3oxWFg4SXFiS1Vsbm5TNDdOTmhr?=
 =?utf-8?B?RUovYmJ5SlV5V043WDl0QzBqZ01tbDN6RlZ0OXdlSk1LazAvdmlPLzJNcm1r?=
 =?utf-8?B?VkIrT0piSnVtTlJPcnRFd0oxOTEvbkhwMUVjUlJWWnVsYUoyN3dZYTlzaUc0?=
 =?utf-8?B?RjBoQzNWMzlkZ0hiUTFuTVFwV21TVURmL2VtdU10dWxsT1puUUxyRTg3cU5V?=
 =?utf-8?B?K3FncmJKK3lQNlloTm9sRnU4cUVjTXJRZzlHYVdZSXpyVTA0NzBHZGU4ZHpm?=
 =?utf-8?B?VVBoOTBGNndtU0UxVHp5VWhobmJOUk4rd1lMWVlRYTVWbi83UnNDNUN0MHp1?=
 =?utf-8?B?NUJ5dXVWdERpMmhIak1KL0VyczM5dVRldFVBRkRLZGVXM2h4ZjRBa1NTNms1?=
 =?utf-8?B?V0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8395C541BFE6F4D9EB6AD3EE6305D4F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8c06113-1365-46f0-b0b0-08dbad2299a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2023 08:40:32.1095 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A0A0I91bxEoiUwAdhdKH0VhH69BuQO7kb7kGrBJJCWOj7/4VeTTmt5XzwqBCjLStLFchvFlXLeqH3aFWSKzmHZBe9Hn90N3cVqOnkOgUASE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
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

T24gTW9uLCAyMDIzLTA5LTA0IGF0IDA3OjI1ICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6
DQo+IEhpIEpvdW5pLA0KPiANCj4gT24gRnJpLCAyMDIzLTA5LTAxIGF0IDEyOjM0ICswMzAwLCBK
b3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+ID4gV2UgYXJlIHBsYW5uaW5nIHRvIG1vdmUgZmx1c2gg
cGVyZm9ybWVkIGZyb20gd29yayBxdWV1ZS4gVGhpcw0KPiA+IG1lYW5zIGl0IGlzIHBvc3NpYmxl
IHRvIGhhdmUgaW52YWxpZGF0ZSAtPiBmbGlwIC0+IGZsdXNoIHNlcXVlbmNlLg0KPiA+IEhhbmRs
ZSB0aGlzIGJ5IGNsZWFyaW5nIHBvc3NpYmxlIGJ1c3kgYml0cyBvbiBmbGlwLg0KPiA+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIHwgNiArKy0tLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBpbmRleCAxYzZkNDY3Y2VjMjYuLjgxN2U1Nzg0NjYw
YiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0K
PiA+IEBAIC0xMzA3LDExICsxMzA3LDkgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfcG9zdF91
cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfZmJjICpmYmMpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJmZiYy0+bG9jayk7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKgwqDC
oMKgZmJjLT5mbGlwX3BlbmRpbmcgPSBmYWxzZTsNCj4gPiArwqDCoMKgwqDCoMKgwqBmYmMtPmJ1
c3lfYml0cyA9IDA7DQo+ID4gwqANCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoIWZiYy0+YnVzeV9i
aXRzKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9mYmNfYWN0aXZh
dGUoZmJjKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGludGVsX2ZiY19kZWFjdGl2YXRlKGZiYywgImZyb250YnVmZmVyIHdyaXRl
Iik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZmJjX2FjdGl2YXRlKGZiYyk7DQo+IA0KPiBD
YW4geW91IGV4cGxhaW4gd2h5IHRoZSBjYWxsIHRvIGludGVsX2ZiY19kZWFjdGl2YXRlKCkgaXMg
bm90IG5lZWRlZA0KPiBoZXJlIGFueW1vcmU/IEkgdGhpbmsgaXQgd291bGQgYmUgYSBnb29kIGlk
ZWEgdG8gZXhwbGFpbiB0aGF0IGluIHRoZQ0KPiBjb21taXQgbWVzc2FnZS7CoCBPciwgYXQgbGVh
c3QsIGFuIGV4cGxhbmF0aW9uIGFib3V0IGl0IGhlcmUsIHNvIGl0J3MNCj4gZG9jdW1lbnRlZC4g
OykNCg0KV2UgYXJlIGNsZWFyaW5nIGZiYy0+YnVzeV9iaXRzIC0+IEkuZS4gaWYoIWZiYy0+YnVz
eV9iaXRzKSBpcyBhbHdheXMNCnRha2VuIDoNCg0KUG9zdCBwbGFuZSB1cGRhdGUgaXMgY2FsbGVk
IGF0IHRoZSBlbmQgb2YgdGhlIGZsaXAuIElmIHlvdSBjb25zaWRlcg0KY2FzZSB3aGVyZSBidXN5
X2JpdHMgIT0gMCBhdCB0aGlzIHBvaW50OiBpdCBtZWFucyBzb21lb25lIGhhdmUNCmluaXRpYXRl
ZCBmcm9udGJ1ZmZlciB3cml0ZSAoaW52YWxpZGF0ZSkgd2hpY2ggaXMgbm90IHlldCBjb21wbGV0
ZWQNCihmbHVzaCBmcm9tIHdvcmtxdWV1ZSkuIFRoYXQgZmx1c2ggcGVuZGluZyBpbiB3b3JrcXVl
dWUgaXMgbm90IHZhbGlkDQphbnltb3JlIGFzIHRoZXJlIHdhcyBhIGZsaXAgYW5kIHRoZSBidWZm
ZXIgd2hpY2ggd2FzIGZyb250YnVmZmVyIGlzIG5vdA0KYSBmcm9udGJ1ZmZlciBhbnltb3JlLiBF
dmVuIGlmIHRoZSBzYW1lIGJ1ZmZlciB3b3VsZCBiZSB1c2VkIHdoZW4gZG9pbmcNCmEgZmxpcCB0
aGUgYXRvbWljIGNvbW1pdCB3b3VsZCB0YWtlIGNhcmUgb2YgZmx1c2hpbmcgdGhlIGJ1ZmZlciB0
b3dhcmRzDQpmYmMuIEFsc28gd2FpdGluZyBmb3IgZG1hIGZlbmNlcyBpcyB0YWtlIGNhcmVuIGJ5
IHRoZSBhdG9taWMgY29tbWl0DQpjb2RlLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
DQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg0K
