Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A461978FF26
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 16:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6D7510E80E;
	Fri,  1 Sep 2023 14:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA6410E812;
 Fri,  1 Sep 2023 14:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693578466; x=1725114466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dGfXaBymBTlzVsJHl9Su7SpSEAQ0HeyDDDDSDVcZbFg=;
 b=LMamXe11d6aL5/oX3uPvGEsg1qGXGK6BWpdFksHYYQEUDukbwkKOInbv
 n4ivSrdSRMvvItzJ2xN/yHQ799R+0G8E3RBkVZoIYzoYv3ym8qc6X47xB
 /bmfz6obLPtzb1Zy/e5Xq0e/gFQrPGdMuPcoU7FztlAMFlHzqgw90qQxf
 w9dla9da4/Kbg/BXShnEJX0TBhGrJzjo/8G4rJsIpcLqB07eEDum3Ys9p
 H7Q/lrHgUBfPCn15cgHe5OgChxiB6VjqWAEgwgRLXGxsaO07rA22aDA2O
 hG3Bjk9BKCb7EIA+KBhhU9KDgmNFjusLvhJavyBGPY09x5tKgY6oC/lKi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="366457115"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="366457115"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="810094185"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="810094185"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Sep 2023 07:27:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 1 Sep 2023 07:27:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 1 Sep 2023 07:27:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 1 Sep 2023 07:27:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVJ9ugSWmq67ai93bmLRV4Ro9/v+DhacJbZQj7wZbQkr8+SEFxyKJmbJ7twuEwgv8XslJnAp3UpWz8Lx2Ewsl5M6atM0VHOHaGwu5LZeXoJHowC6sLvpLXF1xibxN3CKNjAhnUscGHJpnvhF3X7LvdK9X49CLRHN2XeVOPZPQKs5GEVPzumTGZx+jkZNhntMWVecJeVe3t7sd0iYeYkH4t2KgepLY7ARW6KyVDLpakrQO51BxOS3kdvlf2qyAjbidZv7C+F8+2wFAGYiai96eOoQUWBpBtrz69I2pmG9emanOwQWF+nLXEAHnN3hgk5PmKLsei9z4mrB1l09t7lbnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dGfXaBymBTlzVsJHl9Su7SpSEAQ0HeyDDDDSDVcZbFg=;
 b=Ws+HmSM0c1OeziYcqeM5A6wxLtpb9X6HUETCn8yux8eTz9p43IsAXWKzFvqg3PrlvmeDdCh6V54hD26Ltzqe+qaDI4IxAwEzw9gy9c8onv9nZ9ouHaLj3Pe+11+I7Tvk4kLxWhJa/mUNQrPvPmCx4gQQ4/obSjFcTDHcevdxbKp4lCSgqx0gnvnpI1Ei3hyg0pboyKvur+3IR+udq4N/Xf8B5Au3vF0rELvUB+PvBRxNovFRZbvYKNhT2K4d3ednd86YxCDQm3wtk6g3oV4zmHfezX6XTJs5TOO2sfHFVqfrLJIKYNNDpyUhs0TzlNmwmDnKwVQQZAhobCWyBZeaLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB5421.namprd11.prod.outlook.com (2603:10b6:5:398::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.23; Fri, 1 Sep
 2023 14:27:43 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6745.022; Fri, 1 Sep 2023
 14:27:43 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/1] drm/i915/lnl: possibility to enable
 FBC on first three planes
Thread-Index: AQHZ3NRKTgnGvKACKU2DhVgz54NTqrAF8ciAgAAVeoA=
Date: Fri, 1 Sep 2023 14:27:43 +0000
Message-ID: <1ec43786376f0a4cdfc70f1c49f4e2786108a7b8.camel@intel.com>
References: <20230901125950.76088-1-vinod.govindapillai@intel.com>
 <20230901125950.76088-2-vinod.govindapillai@intel.com>
 <ZPHi15bP1aE3Nu_W@intel.com>
In-Reply-To: <ZPHi15bP1aE3Nu_W@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB5421:EE_
x-ms-office365-filtering-correlation-id: a4d474c6-f6e2-46ba-3ca2-08dbaaf79aa9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gZHMJaEp8+Dfe8YRneQLZOeO0xmLyvXF64uWQl+ZTnf6v53u64yANazsRa/CjfP+FbYmBsC/KtOFJuBbwRxhbVYhBaLx6uTrLb0OsLmr2LTDZhDNT+gqSkzjPoftn1y9XYIM9cyJgVCyBdoS9WUqvmaMniMMt4GlWJPjH50hblMOehvC+EIIE/UK149+hPZkAlDVVXzuvkt5XI6rFtvzISFa+3i/e8Hx/KY2z5EyvZFuVGuW3ER7d7BEbLTkVU0qUfbf6lZj+nTsO6J1/DZm4neD4zFUPwH14qilh4l8TxFRM/vpP0EtqJRbEN0wfJ+ubX54cspCax4D2RHFHhBVzGINFPq9CrFuZTj05kb5IYozgZutXTzFylmXn5gCiIBeu6aaJQShIogP5m/+F6xVxDWZuFZl2atPrNgpec4RxC4MLWXKTsppr011t0IvzJsowBvDbarm+Sk8V0yIu4lOWkHGvnjSUDDyI+/iccQIeuVYXwzeWmiQiyhM+Ww1EX31ftolyExyECSz/MHYONenKGwS5BF++9DhDnLiIoTKcax6qPJ9efITXvJebHwr1BUc94nirxtt/cpg2N/ohQ8sIhkrCm5c5wBSA9T8XO3PcxgOcagXswTikA9Ir50r9sjR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(376002)(396003)(451199024)(186009)(1800799009)(122000001)(478600001)(71200400001)(2616005)(66574015)(91956017)(38100700002)(38070700005)(66556008)(54906003)(64756008)(66476007)(66446008)(83380400001)(26005)(66946007)(76116006)(6512007)(82960400001)(6506007)(6486002)(6916009)(2906002)(5660300002)(8676002)(41300700001)(316002)(66899024)(36756003)(86362001)(8936002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVBvcEdBQXZ6ZGVUVFA0NzBPOWoySFlJTzVMVHhqOExsRENSRisyc3ZoK1Rm?=
 =?utf-8?B?QzdySEttbXZTZDR5N3ZRQWJLN29rVS9jbmNyekFac2VTeUZGdWVDYjEzb0xq?=
 =?utf-8?B?WlRDb2s3SFl3RkZkMCtrVDVYOUdFVnEwSE1tMEhWWG5QdFBYelpHL2VCa1N0?=
 =?utf-8?B?WE5GZzlHb3p5azEzKzBYUnByeHE1UW1INC9BMlk4VW5rc0pYZEVPaHJpZ3pV?=
 =?utf-8?B?MGtUR2c3aVdMYUZ4dUoweXhrNFdweEtBdG0vQzJHKzVIN3hlK2pEaHEwZTQz?=
 =?utf-8?B?VEVTSUYwY3RySlJ0U25qOXRMaFdJVjBBc21LeTBqUFZpdmprWHR4T0dSWnRH?=
 =?utf-8?B?ODVKNWZuOVpqTXltMkIrMHJZUlZJVVloeTRUZ3pyTTRSaTlDc3ZLV0J6Rzla?=
 =?utf-8?B?WnRuZmtDQkJ1NlJWSGxqZXRuWXpJbkQvQ0ljR0R5bjRvUGdobmFPMCtNYktM?=
 =?utf-8?B?NFdDcjdkWDdZT1VMSHVHZ045SUhhaGRIeXNGbzBvdTVtanNjNE1SbmlFZHlX?=
 =?utf-8?B?SUpxZ2ZkY0MvenJoU1dySVF2aVB5bmROV0trNHJ0R2Yza1lZVVVsQXAxNU5u?=
 =?utf-8?B?ZitNbzZQQy9GUVVEKzZXRDlkUFFicEo2cXIwZlowVHNJblo1MUV6a3dLWEtU?=
 =?utf-8?B?cjg5TG5QRThPM1ZqUDVnQXRWZGV5R0QrQXptVVpYMVNZenhmQXkxNDhTSkl3?=
 =?utf-8?B?QTZuaXVlaDd1WWhka0w2eGs0VFhGTUMwMmF3ZERNcmkzWWVuOUE2aUV1aFd6?=
 =?utf-8?B?cmFLemtPVVdaMU0rbHUrb3NDZzVKa3F4VE9BR2lEQ2h4NEkvcnIrZWVVV05V?=
 =?utf-8?B?bm83NFVkaFd2OVRHUlJpbWZWTmUyYlhpVzhJbjlkS29hWms3REw0NXVrcUQ1?=
 =?utf-8?B?SDdTWXRQbUI1REFvOXA5Z0EyL3Z0QXI1c25saDFRUnFVVTRxd3FaSm9QQmh2?=
 =?utf-8?B?MUVQQkJMM3l4WFV2VG5aK1czRU9CMW1SMGhjend0RFdoSG9GalEvN3lXMVZt?=
 =?utf-8?B?QncwUWE4cTd3NzhUUm5IRlVKZXNhcFJUTFBVYjZOMjBSR1ZDaGVaQ3hLbkJL?=
 =?utf-8?B?TW9ZZkJ3azZxcEdlV0pIN1NMbVliRERVZEhjdDlaYUtNZHBuU1ZiTzd2NWwv?=
 =?utf-8?B?eEJGcWtrWDNyK01Bc0U5TG1rVzFDdXdIMlBqUFZOQnRCSnJ2UDZ3UCtDUjVy?=
 =?utf-8?B?K0p5VlFPSWpoeVIydGhCNkVYVzFVT1JvZWticExkS2o0NHlHSkYzVHJQVVNy?=
 =?utf-8?B?T2lzekRMekxUSTBYOERYUnVnbVFUaVBWeWlOOXVxZUdEUjZyNk1ENjVPdlo4?=
 =?utf-8?B?N0U1SXVCY2RlZjczazhjRkQ3eEI0TUc1VzJ6L2N0Y1BuWlFsbWYrOE5Rczlk?=
 =?utf-8?B?eldWTDNjVitBekZUSS9oT2NKaHFRM1J1eUJLVmdWYm9jbGZRRkY0OHFENGlm?=
 =?utf-8?B?UmxEb3pnT0tOUjd6Vzg4WWNZTkZVdnVkOUpXWDBINFl3TGRTQURNNW05cG5D?=
 =?utf-8?B?TG1MWVU0YkpWV0twaDBuci9WT3ArcG5CWTNxV2Q0bUU0T0o2ZE9ORkx4bkpm?=
 =?utf-8?B?VGZIRFdrZzRQVFRSOWg0SVAxclo4WVlzMmJUUmsvdWh1Um0ycEdHRjV2ZHZC?=
 =?utf-8?B?NWJCWTA0YXBSM21tUzNENnBwRGwyelpYRDMxOHlGbStrSmUydjg4aXZhZEdh?=
 =?utf-8?B?MFhZQlI1Y2VhQ2lySU43SDcyZzlSMEpQVGJaUEtaMHBWZEFmMUhWWDU4TGhC?=
 =?utf-8?B?NThSZnN4UkJoNWxvczZrVHJ1N3huYWVPa3VEY2p5aDluUEVFdWd3d3pWc1o3?=
 =?utf-8?B?QUkwdXNZMDdxZWtXRXR4UkNyR3pLdHNxZlQyYXdEZktkV0ZTRnZ2eE5OVUtn?=
 =?utf-8?B?OFA4Ym5pelpBSldnMW5rOXZtNGFVRlI5Z29DU00vOVFIZXQzaW5LKzNudGJF?=
 =?utf-8?B?QTNKU0xnV3ZYbC9FWGF0R0FMMklqSU5hNlkzdnhGVmNzNVpGV3Q3VURENWp0?=
 =?utf-8?B?eVVLQ0ZxZE1uYjhmeU8yNXB1WkVTNWQ3TFYxc0g0TlZoK2Z6QVBFUGdmenJk?=
 =?utf-8?B?cXE4SHJ1WmhzeWN0d2V1aDdGNVBtZmdabnl2NFF0NVhDbWswOThLdDJ0dmg4?=
 =?utf-8?B?dFYwenpTZHBoUkl2UEtvUHdTb1dueWhvSy9aOE95dGdsVjMvRld0dEs0OVNu?=
 =?utf-8?Q?RlzuyhtnGe/FXd/tYYcyr6s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F43349E19AF31241B7A736E169162AA3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4d474c6-f6e2-46ba-3ca2-08dbaaf79aa9
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2023 14:27:43.1428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0AqyihqLZCa8gFzniz5+fAlYDzo8j5MGFmtwIlLINE+UTwOc6STcJlfixwdnjPrVDQIdnDjXIhPO+PDmGhrbjmn8QY+eGf7QCFpxJBQIs/U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5421
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/lnl: possibility to enable
 FBC on first three planes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syraja@intel.com" <ville.syraja@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIFZpbGxlLiBVcGRhdGVkIHRoZSBwYXRjaCBhcyBwZXIgeW91ciBjb21tZW50cy4KCkFi
b3V0IHRoZSBXQSwgSSBhbSBwbGFubmluZyB0byBzZW5kIHRoYXQgYXMgdHdvIHNlcGFyYXRlIHBh
dGNoZXMgb25lIHdlcmUgd2UgZW5hYmxlZCBGQkMgKyBQU1IyCmJhc2VkIG9uIHNvbWUgY29uZGl0
aW9ucyBhbmQgdGhlIG5leHQgb25lIHRoaXMgV0EKCkJSClZpbm9kCgpPbiBGcmksIDIwMjMtMDkt
MDEgYXQgMTY6MTAgKzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBGcmksIFNlcCAw
MSwgMjAyMyBhdCAwMzo1OTo1MFBNICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3RlOgo+
ID4gSW4gTE5MIG9ud2FyZHMsIEZCQyBjYW4gYmUgYXNzb2NpYXRlZCB0byB0aGUgZmlyc3QgdGhy
ZWUgcGxhbmVzLgo+ID4gRkJDIHdpbGwgYmUgZW5hYmxlZCBvbiBwbGFuZXMgZmlyc3QgY29tZSBm
aXJzdCBzZXJ2ZWQgYmFzaXMKPiA+IHVudGlsIHRoZSB1c2Vyc3BhY2UgY2FuIHNlbGVjdCBvbmUg
b2YgdGhlc2UgRkJDIGNhcGFibGUgcGxhbmUKPiA+IGV4cGxpY2l0bHkuIEZCQyBjYW4gYmUgc3Vw
cG9ydGVkIGluIHBsYW5lcyB3aXRoIHBlciBwaXhlbCBhbHBoYQo+ID4gCj4gPiB2MjoKPiA+IMKg
LSBhdm9pZCBmYmMtPnN0YXRlLnBsYW5lIGNoZWNrIGluIGludGVsX2ZiY19jaGVja19wbGFuZSAo
VmlsbGUpCj4gPiDCoC0gc2ltcGxpZnkgcGxhbmUgYmluZGluZyByZWdpc3RlciB3cml0ZXMgKE1h
dHQpCj4gPiDCoC0gVXBkYXRlIHRoZSBzdWJqZWN0IHRvIHJlZmxlY3QgdGhhdCBmYmMgY2FuIGJl
IGVuYWJsZWQgb25seSBpbgo+ID4gwqDCoCB0aGUgZmlyc3QgdGhyZWUgcGxhbmVzIChNYXR0KQo+
ID4gCj4gPiBCc3BlYzogNjk1NjAKPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxs
YWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDcg
KysrKysrLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxf
cGxhbmUuYyB8IDUgKysrKy0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4gPiDCoDMgZmlsZXMg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gPiBpbmRleCA2NmM4YWVkMDdiYmMu
LmYxNTM3YmI2Mzc3NSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMKPiA+IEBAIC02NjAsNiArNjYwLDEwIEBAIHN0YXRpYyB1MzIgaXZiX2RwZmNfY3Rs
KHN0cnVjdCBpbnRlbF9mYmMgKmZiYykKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfSVZZQlJJ
REdFKGk5MTUpKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcGZjX2N0bCB8
PSBEUEZDX0NUTF9QTEFORV9JVkIoZmJjX3N0YXRlLT5wbGFuZS0+aTl4eF9wbGFuZSk7Cj4gPiDC
oAo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIwKQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRwZmNfY3RsIHw9IFJFR19GSUVMRF9QUkVQKERQ
RkNfQ1RMX1BMQU5FX0JJTkRJTkdfTUFTSywKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGZiY19zdGF0ZS0+cGxhbmUtPmlkKTsKPiAKPiBQbGVhc2UgYWRkIHRoZSBjdXN0b21hcnkgd3Jh
cHBlZCBtYWNybyBmb3IgdGhpcy4KPiAKPiBXZSdsbCBhbHNvIG5lZWQgdG8gZGVhbCB3aXRoIHRo
YXQgYW5ub3lpbmcgcGxhbmUgc3dpdGNoaW5nIHcvYS4KPiBFYXNpZXN0IG1pZ2h0IGJlIHRvIGp1
c3Qgd3JpdGUgRFBDRl9DVEwgd2l0aG91dCB0aGUgZW5hYmxlIGJpdAo+IGluIC5wcm9ncmFtX2Nm
YigpLiBCdXQgdGhhdCBjYW4gYmUgYSBzZXBhcmF0ZSBwYXRjaCBmb3IgY2xhcml0eS4KPiAKPiA+
ICsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZmJjX3N0YXRlLT5mZW5jZV9pZCA+PSAwKQo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcGZjX2N0bCB8PSBEUEZDX0NUTF9GRU5D
RV9FTl9JVkI7Cj4gPiDCoAo+ID4gQEAgLTEyMDYsNyArMTIxMCw4IEBAIHN0YXRpYyBpbnQgaW50
ZWxfZmJjX2NoZWNrX3BsYW5lKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiA+IMKgwqDCoMKgwqDC
oMKgwqB9Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHBsYW5lX3N0YXRlLT5ody5waXhl
bF9ibGVuZF9tb2RlICE9IERSTV9NT0RFX0JMRU5EX1BJWEVMX05PTkUgJiYKPiA+ICvCoMKgwqDC
oMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDIwICYmCj4gCj4gT25lIHBhdGNoIHBlciBs
b2dpY2FsIGNoYW5nZSBwbGVhc2UuCj4gCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGxhbmVf
c3RhdGUtPmh3LnBpeGVsX2JsZW5kX21vZGUgIT0gRFJNX01PREVfQkxFTkRfUElYRUxfTk9ORSAm
Jgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmYi0+Zm9ybWF0LT5oYXNfYWxwaGEpIHsKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFz
b24gPSAicGVyLXBpeGVsIGFscGhhIG5vdCBzdXBwb3J0ZWQiOwo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+ID4gaW5kZXggNGQwMWM3YWU0
NDg1Li4xMjkxMzUxYzk5NDEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKPiA+IEBAIC0xOTYyLDcgKzE5NjIsMTAg
QEAgc3RhdGljIGJvb2wgc2tsX3BsYW5lX2hhc19mYmMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmICgoRElTUExBWV9SVU5USU1FX0lORk8o
ZGV2X3ByaXYpLT5mYmNfbWFzayAmIEJJVChmYmNfaWQpKSA9PSAwKQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDC
oMKgcmV0dXJuIHBsYW5lX2lkID09IFBMQU5FX1BSSU1BUlk7Cj4gPiArwqDCoMKgwqDCoMKgwqBp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDIwKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiBwbGFuZV9pZCA8PSBQTEFORV9TUFJJVEUxOwo+IAo+IEkgdGhpbmsg
d2UgaGF2ZSBzb21lIGtpbmQgb2YgaXNfaGRyX3BsYW5lKCkgaGVscGVyIHNvbWV3aGVyZS4KPiBQ
cm9iYWJseSBzaG91bGQgdXNlIHRoYXQuCj4gCj4gPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBsYW5lX2lkID09IFBMQU5FX1BS
SU1BUlk7Cj4gPiDCoH0KPiA+IMKgCj4gPiDCoHN0YXRpYyBzdHJ1Y3QgaW50ZWxfZmJjICpza2xf
cGxhbmVfZmJjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAo+ID4gaW5kZXggYWVmYWQxNGFiMjdhLi5hYWRjYzYzMGNiNTIgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiBAQCAtMTMyNyw2ICsxMzI3LDcgQEAKPiA+
IMKgI2RlZmluZcKgwqAgRFBGQ19DVExfUExBTkVfSVZCKGk5eHhfcGxhbmUpwqDCoMKgwqDCoMKg
wqBSRUdfRklFTERfUFJFUChEUEZDX0NUTF9QTEFORV9NQVNLX0lWQiwKPiA+IChpOXh4X3BsYW5l
KSkKPiA+IMKgI2RlZmluZcKgwqAgRFBGQ19DVExfRkVOQ0VfRU5fSVZCwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCgyOCkgLyogaXZiKyAqLwo+
ID4gwqAjZGVmaW5lwqDCoCBEUEZDX0NUTF9QRVJTSVNURU5UX01PREXCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoFJFR19CSVQoMjUpIC8qIGc0eC1zbmIgKi8KPiA+ICsjZGVmaW5lwqDCoCBEUEZD
X0NUTF9QTEFORV9CSU5ESU5HX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNLKDEy
LCAxMSkgLyogbG5sICovCj4gCj4gUHJlc3VtYWJseSBsbmwrCj4gCj4gPiDCoCNkZWZpbmXCoMKg
IERQRkNfQ1RMX0ZBTFNFX0NPTE9SwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJF
R19CSVQoMTApIC8qIGl2YisgKi8KPiA+IMKgI2RlZmluZcKgwqAgRFBGQ19DVExfU1JfRU7CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCgxMCkgLyog
ZzR4IG9ubHkgKi8KPiA+IMKgI2RlZmluZcKgwqAgRFBGQ19DVExfU1JfRVhJVF9ESVPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0JJVCg5KSAvKiBnNHggb25seSAqLwo+ID4g
LS0gCj4gPiAyLjM0LjEKPiAKCg==
