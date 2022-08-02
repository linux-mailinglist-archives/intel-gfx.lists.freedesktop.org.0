Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020EF58810D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 19:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B0C393079;
	Tue,  2 Aug 2022 17:29:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26E18FC27
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 17:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659461380; x=1690997380;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+R2vD7fRLpZ76a/z8XRktzcNS4RQbk4DuirTdiipEOk=;
 b=IOHqQ42J2jR5f3FKepuLXGhZh1DExSZ7whbvkGiAT5lYOVCMrv/PArZ5
 /9SADPMfWcz1WcrtSSFOwAzfL+f+h6xiiZmDVF0lulBwTE1nPJ4/bizeb
 TeZSx6jgg0SCioekrU7Fn1dmLlz/9m5IK9DSvgXFU3/7hahBdbDxKK4Fg
 ZwqqwHoCAEM9NHwKnB9OIkjEqOG24PWi8InvZH6yVlFHhQvLU9LATj3KO
 mwFypvFVnXmurzicJBpquyafO8uZWbBS6SLg6QuG1AKp1XVYwFwLFVhTe
 utXfwOOvIqi7zI5JUFFNyTco30VIB020vZSluvlXePg3B6U69o7UKSS+2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290688835"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="290688835"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 10:29:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="705461736"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 02 Aug 2022 10:29:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 10:29:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 10:29:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 10:29:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I1HjLWpynBqkJFDWlRcFBGD5F0sftNA6iaSunC94z9NArW5KV4jV+w0seAUhX6lGbqut+Drj7tuH8H9Z7bWooW/SaaZjbSOsBh2RQhshX/yqUp3mTQIwvmMZ9VHnrsF6aOkC6ShbkOuxVx/wpgW1khxr9xsv60VOypTR4rPovvqBCsvLTH2HA6KiKxBh8j98vlbGQerjAWWjNWWUuDFZVDVg5fb6mgbevZh1vOozgq3M9E5tfKPyKKs9NJmKL8P6zQ7eg7itNSbSqE7XvvjO6ShDyiRM9i62X5VLyv5pCB2FbNOBcxytJ/dV15UytDTDM4pP8hm0mFDJnVQvTb7Lqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+R2vD7fRLpZ76a/z8XRktzcNS4RQbk4DuirTdiipEOk=;
 b=FG1eRkqEbfIGcEneyGQswKJK06SyrK1ihHLiD0+jopuiQR9P2ST25VNZWDs2OeVvDF+j0Q9Q/9A31NihLv04QJaEmsfxOekNWr8WdytortR30X/CgS/I0sb9PicS7uBJY/FutwvJxV+1J83a5Mw7rt62XpmTw7tEwI4yWoIDB1IrLcwBPxEUi/hPnF1R3nYatYy6+cFQVYeG/cdxd9bGiyZULaAFsRCOe5cva0bgEWtx7M7B+nDPeO9Sjp3LEmmFuFiKUj6XGkifUD8/Ni4av63ewk37WPiJLmTQXuNMMjXSe1cm3QbX8zyBl+uY2v2IBYtGgWtQO3IJaxbxvIiXNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM6PR11MB3212.namprd11.prod.outlook.com (2603:10b6:5:5b::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.16; Tue, 2 Aug 2022 17:29:36 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%4]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 17:29:36 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "airlied@linux.ie" <airlied@linux.ie>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "Usyskin, Alexander" <alexander.usyskin@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [v5, 13/14] drm/i915/gsc: allocate extended operational memory in
 LMEM
Thread-Index: AQHYppVvS1n+hWjgKUOV7UDOP9l/2A==
Date: Tue, 2 Aug 2022 17:29:36 +0000
Message-ID: <243c92cee65c256c4c8003052f73944e9486a3ff.camel@intel.com>
References: <20220706114345.1128018-14-alexander.usyskin@intel.com>
In-Reply-To: <20220706114345.1128018-14-alexander.usyskin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 189229b6-6771-4e84-9780-08da74ac922d
x-ms-traffictypediagnostic: DM6PR11MB3212:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KYdGtFp9igw+HJ6CKoa2bGmLI9HmJfiXzjvNBc9dsT3htLhym02z83yedYRVuJVW7DahoCRweI67woA9C0drVtk23V5tlWY+6S7YeWd+dBNyxGq1V3H5cGksUhJacus7PqtqzNrhXqxCsGEa83RaEIkm5N82RqW6K09/jNGFLX2mef4OVAO/C/5ZMVlZapq7C0HUw8Q0k6OQljPPqqdYoS31+/vw2/+s4pbN9IzU5BbnWpbXacO5VTQHd3SoXszSqmQlanzf9pIb7JopqIkMvXaMJiN21i7YAhwASeUCHgEDpA7uNTr30wJsvCmCdS3jzjL7WB0KYh8N+Pwasi17REJj4EUPam0coa+5CgHU2GwycWHMGP3nW8HKq0hjyYcsyzs/uugKnKsk/iaNpOGvsUKlcqsTrNPa4oh9wb5BpyQsRd/YKLX6wHMLXPKIOfzZGKhfJYCiXlTA9Nl+Ss9Cg0ZDE91CRdEHjclZnGkIjIFUX9l622IwDjbKUSGUmkWz++N33oakC1w8SfJjvhqqyMXGCiKTCm9ldk02IceDDxEDQaAoj89KSeqHgI+v07hu0luJrqK0X5IXy9xSCNClElYpLVrufUWH7+wnPMnYQioiXw5cmN4JGQxlrWE0sW89vb0phpAFoysfog3JQr9VbTB/7CpI21hp0t6XmlW50cROZ3iZOzbCZPcq7NoUq9GLK39NCqyk9kAR18JL3v3t79o7GgQqvEl1c+jZcOA4RxlS0y8GUEymrFtJ+kZRJ3OZUv7pkk6+gUfnqyfX55naYI/4E9tjLXqIaLhBXiL1M4rJ3UwO1RlNh+nYWBDyBplYqBGoYlObifqj8+yO4WMRtw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(39860400002)(396003)(346002)(136003)(82960400001)(38070700005)(4326008)(8676002)(921005)(91956017)(66476007)(5660300002)(66946007)(86362001)(66446008)(122000001)(66556008)(64756008)(76116006)(71200400001)(2906002)(38100700002)(478600001)(186003)(8936002)(6506007)(36756003)(83380400001)(6512007)(6486002)(316002)(26005)(110136005)(54906003)(41300700001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEF6R2ozd3ZXOWdHVzgzeU90bi82b0NVanBGdDJMRDRTbjFyV1FXUktpZjJU?=
 =?utf-8?B?aERSSlJKRmFRMmNJb3Mwa3lQTWxCVStPQ2xWcW91dFBPTy9nYWxIUno3R1B3?=
 =?utf-8?B?MEVMcy9SU2JmejVqRHNOT1hxMDFaY2tJVHFGdG1qeFkzYUxvQXA4QjhpRi9D?=
 =?utf-8?B?bXB5MzZtRWFJY1MvNGs1VjVsYTlERzgxeDFtRlpIQWxhV3VKZ3RVZXlzNFBQ?=
 =?utf-8?B?UzZGa1VYVnliTW9RMERCK1NBd2xvNVMzbTVoclRhUEp5Rjc2b3B5TWo2OFV1?=
 =?utf-8?B?azJscXNXUHl4ZTJMUjE4WnN2cmhJV3R0MWRvS2xBZDRRR0ZYbHFEaURKM08z?=
 =?utf-8?B?bWI4eUY3SjRmYTlPUE9PemVPWDRjd0pONFdZOElGS3p4R3lUUHpvZ3FKelR0?=
 =?utf-8?B?OXJyN25KV0RjcWFLWEI2ODRsSjF0amZYOFQrcDQwRHhHMEJmVmRmS2xZZm10?=
 =?utf-8?B?Z1hRRnZFVUtzeVk4dWpkSnREOVYvQ0RCTEt1ek92bEhlVjZDdDRVUll3WElK?=
 =?utf-8?B?cS9meWVCVGxwMk9aRWlmaXZ0REg0L0MyZHdOWkFBMHVJZFBCNkxIREdJVmlK?=
 =?utf-8?B?YXEyd0hzTWk2UlV0a2pBZmYzbklNQ0d5Umo0cVFmdzBZN3hKWFJ1R0llY1BY?=
 =?utf-8?B?WDc5MlFVMW5FZjNxQVNYb1BXZS9EL1JlUUplQ2xFeWxWQVJTemM5ekIwemZF?=
 =?utf-8?B?dkdiSWZWenRsM3h1aVA0b2g0VDhHbnVxSjBiRTVGWjVmSGNTUW8zdHpNUDln?=
 =?utf-8?B?R3AvQ2l4L2tzbHF1NkhtaUl0SkU4YkZrUU4rY1FVMlkzVk9OVHBwa000Qmcw?=
 =?utf-8?B?SGIzcDlpQXAxZUVNcjlhd3BTd0FvcFloampZcGdCVlVRQjkzb1hJR0hOQ1p6?=
 =?utf-8?B?dG05WUJFZVZ1OU9idVdpb1A0Z2s2d090QlRqQzdXWkZJK2FGdVEveVJYUnRn?=
 =?utf-8?B?bXZraDN1SUNXSm10MjRsYUFReVJ1QXBHb2tKK2w3c25IVVZmejVkRHpZaHFh?=
 =?utf-8?B?bGJ4NXgycFZOVlZHUjE3Q0ZhYllWaER2UUVBd2FhRkU0bVhZYU45WFI4WFRj?=
 =?utf-8?B?bklPOGNGWUgzWG50Rmg0K3MwMWhOOEpucW5tVU5lZ1dnbEo1VE9FODNsWFNT?=
 =?utf-8?B?ZXRCU2pjWU01cGlnS1prSDNFYjAremE5QjF4YjFFUzIyUjJPVVdoVStlY3kr?=
 =?utf-8?B?NmpUOUpJaWtKMXZqbWZZU1M2TWJWdGZwOE4rOXhtVUVXTmpZYWdDenBHQkRP?=
 =?utf-8?B?WnZyYmRkVVRyQi9TdlFGYlorQkE1MUJyc2p2TnAwTDhocmVjeWZPMWF6MjFh?=
 =?utf-8?B?WklBK0d6RXlBV3dNdUl4ZjE0V2sraXNpek9GdmRLVUd0b0VrMm1iNDlib2VV?=
 =?utf-8?B?eHgwL2twSG1xQ0pUbXZhV1dFRkVrVkJ4Z2taL1hJTmVtMDkrc1hTZFFuYWZ5?=
 =?utf-8?B?UDBhVDhqZ3M4N1R1SW44a3J4VTJod3MyYXJ0bVBvR09WaGFiK2l1elRPS2hR?=
 =?utf-8?B?dEpBWjM4U0tDcUVSWTJOOEg0UlFhc1I1VnVHMWVqa1NKMVJqTnFUWDA2M0Mw?=
 =?utf-8?B?TWhmMXhpSkhnams3YnYybkExaFZET2xiR3VsajZ6eEhoNDJybXE4VlJUTHZN?=
 =?utf-8?B?T1A3K2VOZGdOY0xkNitQb2dsZ0dpNVYzdldVVHFKb2FNZENiTUZ1SkZUS3lz?=
 =?utf-8?B?UDhGc1ZXK1k3ejVRZE1OaytXWEw2cmFnOUhnSFNCU0NmaG5yY2VMWWxsOUR1?=
 =?utf-8?B?K0Q5SGNUVG8rL2hveXE2YlVyaTVpOXRVSUwxaWZYMSs2L1NNTjFHanEwbHQx?=
 =?utf-8?B?dzNQTkZKeWlhYU51ajJ1Yk9Tb3Z3TGIxVEs4RHF0TTZOMTJRdC96eEs2d2lk?=
 =?utf-8?B?d2RNQ1RBdzk1YjVnbngrOHpjRlZjMU54ZDA4OHZtM1l1MlZsSUNFUk8zY21Q?=
 =?utf-8?B?Ly96ZTVsVElaNEUwMkNpaW5MdWFUMG4yQ2pjRVpHK2ZUaTlzQThiWG0zV09y?=
 =?utf-8?B?L2NobUs5OTA2ck9nMjB1eUVENVJWRTNKaVl5N3VEc25SSzRHRnZ3ajBvc1hM?=
 =?utf-8?B?a3l2WUNzMlRNR3lNSkJQbTB0N1V4YU9vajhpbkVzWXdsd0J4V3o4VlpDcmdJ?=
 =?utf-8?B?c0pIdUE3WDg0QWlSNFNvQU8rckpSc0gyR1dsVyt0RTNwZWlrdTV6K1hKSDZX?=
 =?utf-8?Q?MW0pSzbvnV/4jhrG5y4DRmU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F7FBB1138974B4E8D716DD2A0409459@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 189229b6-6771-4e84-9780-08da74ac922d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2022 17:29:36.1848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FLAfH9IhKxQDxmtyhjxrCccS1YhD5eJO4rwhuYSF6jjg+2+/cZr7Gov4RNj6atUqwaoGKsHJyYcuzY8An1B1PKPi4zVVCEvxgWhGb92NstSEeo68hX3TAS/1tm6eA5Zs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3212
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v5,
 13/14] drm/i915/gsc: allocate extended operational memory in LMEM
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgZ29vZCwganVzdCBhIG1pbm9yIG5pdC4NCg0KUmV2aWV3ZWQtYnk6IEFsYW4gUHJldmlu
IDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KDQoNCk9uIFdlZCwgMjAyMi0w
Ny0wNiBhdCAxNDo0MyArMDMwMCwgQWxleGFuZGVyIFVzeXNraW4gd3JvdGU6DQo+IEZyb206IFRv
bWFzIFdpbmtsZXIgPHRvbWFzLndpbmtsZXJAaW50ZWwuY29tPg0KPiANCj4gR1NDIHJlcXVpcmVz
IG1vcmUgb3BlcmF0aW9uYWwgbWVtb3J5IHRoYW4gYXZhaWxhYmxlIG9uIGNoaXAuDQo+IFJlc2Vy
dmUgNE0gb2YgTE1FTSBmb3IgR1NDIG9wZXJhdGlvbi4gVGhlIG1lbW9yeSBpcyBwcm92aWRlZCB0
byB0aGUNCj4gR1NDIGFzIHN0cnVjdCByZXNvdXJjZSB0byB0aGUgYXV4aWxpYXJ5IGRhdGEgb2Yg
dGhlIGNoaWxkIGRldmljZS4NCj4gDQo+IENjOiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVy
ZXMuYWxleGlzQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVG9tYXMgV2lua2xlciA8dG9t
YXMud2lua2xlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEFsZXhhbmRlciBVc3lza2luIDxhbGV4YW5kZXIudXN5c2tpbkBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3NjLmMgfCA5MiArKysrKysrKysrKysr
KysrKysrKysrKysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3NjLmgg
fCAgMyArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDg4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25z
KC0pDQo+IA0KPiArCWlmIChkZWYtPmxtZW1fc2l6ZSkgew0KPiArCQlkZXZfZGJnKCZwZGV2LT5k
ZXYsICJzZXR0aW5nIHVwIEdTQyBsbWVtXG4iKTsNCj4gDQpOSVQ6IEFueSByZWFzb24gd2UgYXJl
IG5vdCBiZWluZyBjb25zaXN0ZW50IGFuZCB1c2luZyBkcm1fZXJyIC8gZHJtX2RlYnVnIChzYW1l
IGJlbG93KT8gZWl0aGVyIHdheSwgZW5zdXJpbmcgd2UgZ2V0IFBDSQ0KZGV2aWNlIGlkIGluZm8g
aW4gdGhlIGRtZXNnIG91dHB1dCB3ZSBhcmUgZ29vZC4NCg0KPiArDQo+ICsJCWlmIChnc2NfZXh0
X29tX2FsbG9jKGdzYywgaW50ZiwgZGVmLT5sbWVtX3NpemUpKSB7DQo+ICsJCQlkZXZfZXJyKCZw
ZGV2LT5kZXYsICJzZXR0aW5nIHVwIGdzYyBleHRlbmRlZCBvcGVyYXRpb25hbCBtZW1vcnkgZmFp
bGVkXG4iKTsNCj4gKwkJCWtmcmVlKGFkZXYpOw0KPiArCQkJZ290byBmYWlsOw0KPiArCQl9DQo+
ICsNCj4gKwkJYWRldi0+ZXh0X29wX21lbS5zdGFydCA9IGk5MTVfZ2VtX29iamVjdF9nZXRfZG1h
X2FkZHJlc3MoaW50Zi0+Z2VtX29iaiwgMCk7DQo+ICsJCWFkZXYtPmV4dF9vcF9tZW0uZW5kID0g
YWRldi0+ZXh0X29wX21lbS5zdGFydCArIGRlZi0+bG1lbV9zaXplOw0KPiArCX0NCj4gKw0K
