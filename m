Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 619334CCC79
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 05:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25E210E159;
	Fri,  4 Mar 2022 04:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50E7D10E159
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 04:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646366852; x=1677902852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rj8Dxp0SkPQMONaqMR1XAIR1X5YDjfNfVyrhxTshDY8=;
 b=FYS+SaDYvorkWzx+D3oU4CJE09QUAED61SCuud8sORA76SFMF9qlz3wC
 QRlEPOoBiDHIeDfQL3thSuOXhitKXcaC3/K7RrA2KfIefOo68exLSwsha
 tTnBt2iA6PeGnhlvLgK1lvwMEwwNQNm+4cYfEsoitmDBPS/lDlvkovfKR
 Gn+bEQI/J3vjRrP3SzgNh4zNcyaYDPwKnWyAUZDbLKiY/3zKalkX28yAe
 92hIcI5X/kWL8UBVC7k+YFaNPlwblVxn/TXSptZYGXcLwJfpkGZfsNGlw
 bmuvbqOQgxQraobWYqk+iHoRhl2DvVl+qP2YGZ7qEDi0E1xvyaA0fDX4f g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="252715574"
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="252715574"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 20:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,154,1643702400"; d="scan'208";a="686759449"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2022 20:07:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 3 Mar 2022 20:07:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 3 Mar 2022 20:07:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 3 Mar 2022 20:07:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9b5Wj4tZ2ngrT69QEdWv+IO3hk4EKYPUxeOYtPgvdOoZP8QjFqOGehJGZniZvtM+4/aHsuc6LgjoXhePB6YqKo002/2AghCJrn92VNFRRGyUeCqmrlKGkY/XJhxq1jMASv//cpjPJvTRbYSEP/YSWAs845GAHQkINO/1Lj/WoG4IN3F6oMVEACPTDVUPUdUC3s9Rv8uyPvM+eKaV5+qVplz81y+Qtq+YHCxCXFbQt0Dr/MkaOXsyB9ZFQv51vPt6N+0qypKVRGqTyn0w+aIG4ncuijBsz7DMBUUp+5RU6pNB49f/haFSyx1ZEh8+1knGfBcILdI000cqszMUWrTMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rj8Dxp0SkPQMONaqMR1XAIR1X5YDjfNfVyrhxTshDY8=;
 b=kAdXj8WymIPBHHTOGiKEo3ueEoHPhtBzcGAaL4aQEi1LYP4lkAoQt//9gJac+QG6VhJYa3xp1oTTUCx2KkRopn+537Be8mMuoIZsTGkEUxqmvW6Flr6dha/RcfOKua5ZuV7Pm1cpUmQxG5MfcnG0hVouZm17ktspcAQF2V1kqEz5IeHVPvdQ0BZdzRE24lw5dfbxZWjW6bMPrP3mi3IplaMlAgX2+veAnebu0Z47wWYokBAbKBh/srhVYXBWu/oLemEQd3C0m0KZeo+dkcTATXIjuOo+sB2YfZaGom3yVQiAdm4l/zlL5/ilY55xL/Ly1VbD+rzNXljuZ299rEFEmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5)
 by BN7PR11MB2850.namprd11.prod.outlook.com (2603:10b6:406:b3::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Fri, 4 Mar
 2022 04:07:26 +0000
Received: from BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::5cb2:8b85:7945:64c]) by BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::5cb2:8b85:7945:64c%5]) with mapi id 15.20.5038.014; Fri, 4 Mar 2022
 04:07:26 +0000
From: "Katragadda, MastanX" <mastanx.katragadda@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
Thread-Index: AQHYLsSP/ejgBQQqOkGNOJS9LQ2Ql6ytXLYAgAAc0YCAASD1wA==
Date: Fri, 4 Mar 2022 04:07:26 +0000
Message-ID: <BN9PR11MB52907E4764CC4132D6B945CE97059@BN9PR11MB5290.namprd11.prod.outlook.com>
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
 <1715f90c-6790-cbd7-9e8f-ac371d61b5dd@linux.intel.com>
 <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
In-Reply-To: <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dc90fa3-a231-4424-9e1d-08d9fd947e6b
x-ms-traffictypediagnostic: BN7PR11MB2850:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN7PR11MB28501D57BA772033A974B7D397059@BN7PR11MB2850.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vkQHnFKWHvB4GrlLFy/BDStROP8X+nUX7bMHbU3pLl3G3XKFYqiIS013alOkvMzlcc6YQqcygRxIJ/L8/ghqmPzFlRiX2CKpmBnhL+P0Y6iZzu2kHQ4f6CNX9x6yE1+nqTmH6D+Ynz77ALBCfKyNltA8x8zSyaWKHwrCOCh25GKjHS27jmBPr2EiSGL0xR1TjlCkoyndDEFaeJlgGiguJTpnKY3+uZoQUxfdOeWlknQqQdsim4V7cc2BDQW2oH7GhCLwXWT9eK9JBI2KJ+gLrzVWLxzDWDtIl38OoZqOJo9Y318SWClr9oRnjI7PSopOETuZRfBwz2NhMNemy/0SVSshBK8BXL3l6n3Vr5GbqVa+bsbj7bBxaEMxBwgV13HT53B7qgypM7r881FWCPTKJNGwgl4YbC9DlJNuL5+HEduUmfU7QmSHu+/KK8rotdLiiOrRONRzJBqOwGkbxdILXSOaEH3k9OQVx4gba6E1HnTMjEya8COwYGr/K5KHx0tEmNVTwsEWIq1g9hucjtRauzCWx5GAMmcDSrSKSwRV/M1eOFS0/RAYG1sriJ2oCZMVu92+1qa/yzm4P8w1NjGTtsKVY9vaM7qIM8ud8by2KJK31oD9nYm68ILEGQV3RuRswtMbBIGG6C64Ag6L7t4iuPi2Ufcn6zEKnXsI+cb0G9uD516G38iUVLUWnUXEgbGO8akKuAq5TcAsXMLau4RG2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66556008)(7696005)(6506007)(66946007)(82960400001)(4326008)(76116006)(66446008)(66476007)(64756008)(38100700002)(8676002)(122000001)(53546011)(316002)(33656002)(2906002)(9686003)(38070700005)(508600001)(71200400001)(8936002)(83380400001)(52536014)(55016003)(26005)(5660300002)(110136005)(186003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Smp2TXlXbTA3U2o3NzBZaUJxQXc3NWpjbDF1L2VTYy94RmROR2hTVGtIK1Jj?=
 =?utf-8?B?Q21EOS9HNFpnNWFKakdmWjA0Y1c2VVNrWXpuTXJkOU54UFpPVWVDM0J4SW1X?=
 =?utf-8?B?dEN1dDdyVWNWczVNWlFyL0p0UTM1NllqNmx6UkpmRWE1WHRSdG1EbzcvQUd0?=
 =?utf-8?B?WVROT29OZ2RQeEJkZnlFQ1pBbFZ1eUY4NFEwNTR1Q3YyOWYvejdLVlN5eWtr?=
 =?utf-8?B?V1JQd01nZWh0MHpjZm9KMGJPMmNyaWVFbSs2K2o2cXgvbXdIUVRpd2o4WWNa?=
 =?utf-8?B?V2hrbUt0d0w3b0EyOS9UYnBocmcrM3RFczFQUk9yU3ptcmdKVmdFQUZ0eU9N?=
 =?utf-8?B?a2dUbVQxR2taeENzYkkrc3JGVjkyTUwxVXVodDBFR3gwUE5xcjlCeCsvNHpY?=
 =?utf-8?B?SmJsUnBRU1pHRXRpZlp3SEU3YlQvVlRnL095SFh5R1hUTFA5UnNBVWJHQUVM?=
 =?utf-8?B?MHBKTS9NWHI5bkd5NjBpbnNaK0RqVENYK3B5MjFoT3RNTlBnSXozN04rT3NO?=
 =?utf-8?B?VmVOMTJWTWMwTnZiRFRUWnVCUWJOSFpNNldBcm0yeW1aeHBWKzJSODFUa2tT?=
 =?utf-8?B?L2hHMU1tcDloUzkyZzVtYllRRFMrcHdBR0ZyVEN5Mmp5SkxMWGNWeFF2M200?=
 =?utf-8?B?V2syd0NLZHRyYUtNYWhObzdOVVhocERzdmRSWkkzbkdHRTFEK2hSWWkvUVJ1?=
 =?utf-8?B?RHdhNGxJQzlvd1kyU3ZXUGhNWER5VFRTVUZabHEwM3doWnlJU3Y1WkpzWFJp?=
 =?utf-8?B?cE5UaFNNOTdiYXQxZmFHeFVLRFlPby9xdkwwS0RnSnVQMkhGS3d5cm1XeWRD?=
 =?utf-8?B?Q3IyWVF5VkF2U1N4UTY0VmFxRCtRRUp5QW9JQnl1Slk0THYzMktzUVZYTzJO?=
 =?utf-8?B?bWFhc25PcmZBOW12MVpxRmhhSlRkeEJybVNtMDJsOVRKWXkwL2Joam53ZCs5?=
 =?utf-8?B?ZTEzbmVjTkVQL2N4cnhXT0ExUmlCcWlkVXhZamRKSlFkYWpuMWhWYXZwRG04?=
 =?utf-8?B?dVMydDBnczJUc1N0K1ZNa3RKNjFVQ0pxNjJLcnVoNkp3UEM0WEpqTCtvYXhW?=
 =?utf-8?B?RzR2N1BxNE5zdTcvZTdLV3NrOFJSbHVmYnVuZDJUaU52Qk02MlM3cGdUYVo4?=
 =?utf-8?B?UnIvbHhDcmNIZTllSzZBVmNkcDliR3lET1pVclB4S2RUSEhwbmREekF6Z0lN?=
 =?utf-8?B?dHMyVVF5VXcvbTd2dmtiODNHNmxJZkxJbURRM3NieXNhT25HU1F0dUxpMjdY?=
 =?utf-8?B?cWRVZWdlaXJyQnNPYlM1di9YRXlzMjgycUoxbDdoSUh4ZUVFQndycGpUd3E3?=
 =?utf-8?B?VHNTakkvYXU4R3I1cEVDT09TVnpLZnhtK004UHBXK3VKYzJ5SHZ2T0Z1bG0r?=
 =?utf-8?B?aWE2bWt5c0UrVXVuaTdnc25hQnBrQUdQVTBKS0dUaUpNamk3MGVkcGRDYkUy?=
 =?utf-8?B?QWRYVWNISE5KVlkrSkFSS2lZWVJ3S3BsWENLMHpmbG02WTZiNThFdVZmSTJ0?=
 =?utf-8?B?WXI1V2ROM2FRTUhVeVpiUjNaV2thMmZzam14MUlYeE1mR2V5cjJUTGJiSldF?=
 =?utf-8?B?U2JQa2hReU42L0Uxa3Bid0MzUGdpY0tnWXJqNDltUmMxeGNoM1NUY2E2c1ha?=
 =?utf-8?B?MHJpNXYxZVJYVlVIQ3ZZdElaOWpyL0YvZVl1QWZZVWtvcGMvT0Ryaktsa1Qv?=
 =?utf-8?B?K2s3dGVqZlorQWtaTHFNQ3h5Yk00bndCMjZHY3FrYXpIc2pmdExnZHJGOWRm?=
 =?utf-8?B?VXJZTjR1K1JGMWRGUU5zdnhLcng3anNnVmhBV29DZ3lvV0RKTlQ0OGJ4RUhu?=
 =?utf-8?B?c0JpeVB0TmM1WGsvOExFRFB4K1l4RlhYV1pJSkp4bzNhNytVTzZPSEEzcFlh?=
 =?utf-8?B?Z0s5UnptRWdVb1Ireko3TlNXMmxZOHk1bndmamFqZ3hncFljUEI0eEVGenRz?=
 =?utf-8?B?Q3dZZ0t3T0d1SDQ5YXlJOHB0K1R3OVBSenQwdkpkOGNZNGpqQ0lyakR5RDlp?=
 =?utf-8?B?NHNib1cybVhvUGhIa2hJeU8yL2xtR0oxcTlYVTFhaE03dFBOdk1RdjJOWHND?=
 =?utf-8?B?NFlnRkVMOW85RWZwSjZEMmJjMlFlMkZyUGd0NXgwczFFQnhoNmp5dk11RlNq?=
 =?utf-8?B?RHUraUk5aUsyMTBYZnNMdCttSno5ZndwdWFuWDRzOHVqTHMxaHl0T0k0S2JN?=
 =?utf-8?Q?v9rvmIIi80BlO5qAV+UY5BMMMdb+o0N7XLmI9iAu3xEd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc90fa3-a231-4424-9e1d-08d9fd947e6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2022 04:07:26.6355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4VxB1yX9daNaYjNvMJtNRYx7vrS5DJ4rblOh03x1y8C6bSBtw067xyVmThVc2OSfjmxVT9zSmIO8Ja9i0Z8l6OgSM65zsFc4qjuXSuA+Acs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2850
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
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
Cc: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvDQogDQpDYW4gd2UgbmVlZCBleHRlbmQgdGhpcyBwYXRjaCBieSBhZGRpbmcgc2Vs
ZnRlc3Q/DQoNClRoYW5rcywNCk1hc3Rhbg0KICAgICANCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBBdWxkLCBNYXR0aGV3IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPiANClNlbnQ6
IDAzIE1hcmNoIDIwMjIgMTY6MTQNClRvOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5A
bGludXguaW50ZWwuY29tPjsgS2F0cmFnYWRkYSwgTWFzdGFuWCA8bWFzdGFueC5rYXRyYWdhZGRh
QGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBTdXJlbmRy
YWt1bWFyIFVwYWRoeWF5LCBUZWphc2t1bWFyWCA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51
cGFkaHlheUBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW3YyXSBkcm0vaTkx
NS9nZW06IG1pc3NpbmcgYm91bmRhcnkgY2hlY2sgaW4gdm1fYWNjZXNzIGxlYWRzIHRvIE9PQiBy
ZWFkL3dyaXRlDQoNCk9uIDAzLzAzLzIwMjIgMDk6MDAsIFR2cnRrbyBVcnN1bGluIHdyb3RlOg0K
PiANCj4gKyBNYXR0DQo+IA0KPiBPbiAwMy8wMy8yMDIyIDA2OjA0LCBNYXN0YW4gS2F0cmFnYWRk
YSB3cm90ZToNCj4+IEludGVsIElEOiBQU0lSVC1QVEswMDAyNDI5DQo+Pg0KPj4gQSBtaXNzaW5n
IGJvdW5kcyBjaGVjayBpbiB2bV9hY2Nlc3MoKWNhbiBsZWFkIHRvIGFuIG91dC1vZi1ib3VuZHMg
DQo+PiByZWFkIG9yIHdyaXRlIGluIHRoZSBhZGphY2VudCBtZW1vcnkgYXJlYS5UaGUgbGVuIGF0
dHJpYnV0ZSBpcyBub3QgDQo+PiB2YWxpZGF0ZWQgYmVmb3JlIHRoZSBtZW1jcHkgYXTCoCBbMV1v
ciBbMl0gb2NjdXJzLg0KPiANCj4gcy9bMV1vciBbMl0vbGF0ZXIgaW4gdGhlIGZ1bmN0aW9uLyA/
DQo+IA0KPj4NCj4+IFvCoCAxODMuNjM3ODMxXSBCVUc6IHVuYWJsZSB0byBoYW5kbGUgcGFnZSBm
YXVsdCBmb3IgYWRkcmVzczogDQo+PiBmZmZmYzkwMDAwYzg2MDAwDQo+PiBbwqAgMTgzLjYzNzkz
NF0gI1BGOiBzdXBlcnZpc29yIHJlYWQgYWNjZXNzIGluIGtlcm5lbCBtb2RlIFvCoCANCj4+IDE4
My42Mzc5OTddICNQRjogZXJyb3JfY29kZSgweDAwMDApIC0gbm90LXByZXNlbnQgcGFnZSBbwqAg
MTgzLjYzODA1OV0gDQo+PiBQR0QgMTAwMDAwMDY3IFA0RCAxMDAwMDAwNjcgUFVEIDEwMDI1ODA2
NyBQTUQgMTA2MzQxMDY3IFBURSAwIFvCoCANCj4+IDE4My42MzgxNDRdIE9vcHM6IDAwMDAgWyMy
XSBQUkVFTVBUIFNNUCBOT1BUSQ0KPj4gW8KgIDE4My42MzgyMDFdIENQVTogMyBQSUQ6IDE3OTAg
Q29tbTogcG9jIFRhaW50ZWQ6IEfCoMKgwqDCoMKgIEQgICAgICAgICAgIA0KPj4gNS4xNy4wLXJj
Ni1jaS1kcm0tMTEyOTYrICMxDQo+PiBbwqAgMTgzLjYzODI5OF0gSGFyZHdhcmUgbmFtZTogSW50
ZWwgQ29ycG9yYXRpb24gQ29mZmVlTGFrZSBDbGllbnQgDQo+PiBQbGF0Zm9ybS9Db2ZmZWVMYWtl
IEggRERSNCBSVlAsIEJJT1MgQ05MU0ZXUjEuUjAwLlgyMDguQjAwLjE5MDUzMDEzMTkNCj4+IDA1
LzMwLzIwMTkNCj4+IFvCoCAxODMuNjM4NDMwXSBSSVA6IDAwMTA6bWVtY3B5X2VybXMrMHg2LzB4
MTAgW8KgIDE4My42NDAyMTNdIFJTUDogDQo+PiAwMDE4OmZmZmZjOTAwMDE3NjNkNDggRUZMQUdT
OiAwMDAxMDI0NiBbwqAgMTgzLjY0MTExN10gUkFYOiANCj4+IGZmZmY4ODgxMDljMTQwMDAgUkJY
OiBmZmZmODg4MTExYmVjZTQwIFJDWDoNCj4+IDAwMDAwMDAwMDAwMDBmZmMNCj4+IFvCoCAxODMu
NjQyMDI5XSBSRFg6IDAwMDAwMDAwMDAwMDEwMDAgUlNJOiBmZmZmYzkwMDAwYzg2MDAwIFJESTog
DQo+PiBmZmZmODg4MTA5YzE0MDA0DQo+PiBbwqAgMTgzLjY0Mjk0Nl0gUkJQOiAwMDAwMDAwMDAw
MDAwZmZjIFIwODogODAwMDAwMDAwMDAwMDE2YiBSMDk6IA0KPj4gMDAwMDAwMDAwMDAwMDAwMA0K
Pj4gW8KgIDE4My42NDM4NDhdIFIxMDogZmZmZmM5MDAwMGM4NTAwMCBSMTE6IDAwMDAwMDAwMDAw
MDAwNDggUjEyOiANCj4+IDAwMDAwMDAwMDAwMDEwMDANCj4+IFvCoCAxODMuNjQ0NzQyXSBSMTM6
IGZmZmY4ODgxMTFiZWQxOTAgUjE0OiBmZmZmODg4MTA5YzE0MDAwIFIxNTogDQo+PiAwMDAwMDAw
MDAwMDAxMDAwDQo+PiBbwqAgMTgzLjY0NTY1M10gRlM6wqAgMDAwMDdmZTVlZjgwNzU0MCgwMDAw
KSBHUzpmZmZmODg4NDViMzgwMDAwKDAwMDApDQo+PiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+
PiBbwqAgMTgzLjY0NjU3MF0gQ1M6wqAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAw
MDAwODAwNTAwMzMgW8KgIA0KPj4gMTgzLjY0NzQ4MV0gQ1IyOiBmZmZmYzkwMDAwYzg2MDAwIENS
MzogMDAwMDAwMDEwZmYwMjAwNiBDUjQ6DQo+PiAwMDAwMDAwMDAwMzcwNmUwDQo+PiBbwqAgMTgz
LjY0ODM4NF0gRFIwOiAwMDAwMDAwMDAwMDAwMDAwIERSMTogMDAwMDAwMDAwMDAwMDAwMCBEUjI6
IA0KPj4gMDAwMDAwMDAwMDAwMDAwMA0KPj4gW8KgIDE4My42NDkyNzFdIERSMzogMDAwMDAwMDAw
MDAwMDAwMCBEUjY6IDAwMDAwMDAwZmZmZTBmZjAgRFI3OiANCj4+IDAwMDAwMDAwMDAwMDA0MDAN
Cj4+IFvCoCAxODMuNjUwMTQyXSBDYWxsIFRyYWNlOg0KPj4gW8KgIDE4My42NTA5ODhdwqAgPFRB
U0s+DQo+PiBbwqAgMTgzLjY1MTc5M13CoCB2bV9hY2Nlc3MrMHgxZjAvMHgyYTAgW2k5MTVdIFvC
oCAxODMuNjUyNzI2XcKgIA0KPj4gX19hY2Nlc3NfcmVtb3RlX3ZtKzB4MjI0LzB4MzgwIFvCoCAx
ODMuNjUzNTYxXcKgIA0KPj4gbWVtX3J3LmlzcmEuMCsweGY5LzB4MTkwIFvCoCAxODMuNjU0NDAy
XcKgIHZmc19yZWFkKzB4OWQvMHgxYjAgW8KgIA0KPj4gMTgzLjY1NTIzOF3CoCBrc3lzX3JlYWQr
MHg2My8weGUwIFvCoCAxODMuNjU2MDY1XcKgIA0KPj4gZG9fc3lzY2FsbF82NCsweDM4LzB4YzAg
W8KgIDE4My42NTY4ODJdwqAgDQo+PiBlbnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg0
NC8weGFlDQo+PiBbwqAgMTgzLjY1NzY2M10gUklQOiAwMDMzOjB4N2ZlNWVmNzI1MTQyIFvCoCAx
ODMuNjU5MzUxXSBSU1A6IA0KPj4gMDAyYjowMDAwN2ZmZTFlODFjN2U4IEVGTEFHUzogMDAwMDAy
NDYgT1JJR19SQVg6DQo+PiAwMDAwMDAwMDAwMDAwMDAwDQo+PiBbwqAgMTgzLjY2MDIyN10gUkFY
OiBmZmZmZmZmZmZmZmZmZmRhIFJCWDogMDAwMDU1NzA1NWRmYjc4MCBSQ1g6IA0KPj4gMDAwMDdm
ZTVlZjcyNTE0Mg0KPj4gW8KgIDE4My42NjExMDRdIFJEWDogMDAwMDAwMDAwMDAwMTAwMCBSU0k6
IDAwMDA3ZmZlMWU4MWQ4ODAgUkRJOiANCj4+IDAwMDAwMDAwMDAwMDAwMDUNCj4+IFvCoCAxODMu
NjYxOTcyXSBSQlA6IDAwMDA3ZmZlMWU4MWU4OTAgUjA4OiAwMDAwMDAwMDAwMDAwMDMwIFIwOTog
DQo+PiAwMDAwMDAwMDAwMDAwMDQ2DQo+PiBbwqAgMTgzLjY2MjgzMl0gUjEwOiAwMDAwNTU3MDU1
ZGZjMmUwIFIxMTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IA0KPj4gMDAwMDU1NzA1NWRmYjFjMA0K
Pj4gW8KgIDE4My42NjM2OTFdIFIxMzogMDAwMDdmZmUxZTgxZTk4MCBSMTQ6IDAwMDAwMDAwMDAw
MDAwMDAgUjE1OiANCj4+IDAwMDAwMDAwMDAwMDAwMDANCj4+IFvCoCAxODMuNjY0NTY2XcKgIDwv
VEFTSz4NCj4+DQo+PiBDaGFuZ2VzIHNpbmNlIHYxOg0KPj4gwqDCoMKgwqDCoCAtIFVwZGF0ZWQg
aWYgY29uZGl0aW9uIHdpdGggcmFuZ2Vfb3ZlcmZsb3dzX3QgW0NocmlzIFdpbHNvbl0NCj4+DQo+
PiBTaWduZWQtb2ZmLWJ5OiBNYXN0YW4gS2F0cmFnYWRkYSA8bWFzdGFueC5rYXRyYWdhZGRhQGlu
dGVsLmNvbT4NCj4+IFN1Z2dlc3RlZC1ieTogQWRhbSBaYWJyb2NraSA8YWRhbXphQG1pY3Jvc29m
dC5jb20+DQo+PiBSZXBvcnRlZC1ieTogSmFja3NvbiBDb2R5IDxjb2R5LmphY2tzb25AaW50ZWwu
Y29tPg0KPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPj4g
Q2M6IEJsb29tZmllbGQgSm9uIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+DQo+PiBDYzogRHV0
dCBTdWRlZXAgPHN1ZGVlcC5kdXR0QGludGVsLmNvbT4NCj4gDQo+IEZpeGVzOiA5ZjkwOWUyMTVm
ZWEgKCJkcm0vaTkxNTogSW1wbGVtZW50IHZtX29wcy0+YWNjZXNzIGZvciBnZGIgDQo+IGFjY2Vz
cyBpbnRvIG1tYXBzIikNCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjgrDQo+
IA0KPiBSaWdodD8NCj4gDQo+IFRoZXJlIHdhcyBhIHNlbGZ0ZXN0IGFkZGVkIHdpdGggdGhlIHJl
ZmVyZW5jZWQgcGF0Y2ggYW5kIGl0IHNvdW5kcyANCj4gbGlrZSBpdCB3b3VsZCBiZSBhIGdvb2Qg
aWRlYSB0byBleHRlbmQgaXQgdG8gY292ZXIgdGhpcyBzY2VuYXJpby7CoCBBcyANCj4gYSBzZXBh
cmF0ZSBwYXRjaCB0aG91Z2ggc28gdGhpcyBvbmUgaXMgZWFzeSB0byBiYWNrcG9ydC4NCg0KQWdy
ZWVkLCBhIHNpbXBsZSByZWdyZXNzaW9uIHRlc3QoZWl0aGVyIHNlbGZ0ZXN0IG9yIGlndCkgZm9y
IHRoaXMgd291bGQgYmUgbmljZSwgaWYgcG9zc2libGUuDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0K
PiBUdnJ0a28NCj4gDQo+PiAtLS0NCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMgfCAyICstDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uYw0KPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jDQo+PiBpbmRleCBlZmU2OWQ2Yjg2ZjQuLmMzZWEyNDNkNDE0ZCAxMDA2NDQNCj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMNCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMNCj4+IEBAIC00NTUsNyAr
NDU1LDcgQEAgdm1fYWNjZXNzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqYXJlYSwgdW5zaWduZWQg
DQo+PiBsb25nIGFkZHIsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FQUNDRVM7DQo+
PiDCoMKgwqDCoMKgIGFkZHIgLT0gYXJlYS0+dm1fc3RhcnQ7DQo+PiAtwqDCoMKgIGlmIChhZGRy
ID49IG9iai0+YmFzZS5zaXplKQ0KPj4gK8KgwqDCoCBpZiAocmFuZ2Vfb3ZlcmZsb3dzX3QodTY0
LCBhZGRyLCBsZW4sIG9iai0+YmFzZS5zaXplKSkNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm4gLUVJTlZBTDsNCg0KT3RoZXIgdXNlcnMgbGlrZSB0dG1fYm9fdm1fYWNjZXNzIGFyZSBhbHNv
IGNoZWNraW5nIGlmIGxlbiA8PSAwLCBzaG91bGQgd2UgYWxzbyBhZGQgYW4gZXhwbGljaXQgY2hl
Y2sgZm9yIHRoYXQgaGVyZT8gT3RoZXJ3aXNlIExHVE0uDQoNCj4+IMKgwqDCoMKgwqAgaTkxNV9n
ZW1fd3dfY3R4X2luaXQoJnd3LCB0cnVlKTsNCg==
