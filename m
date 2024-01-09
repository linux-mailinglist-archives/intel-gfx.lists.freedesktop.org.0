Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1527B828644
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 13:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5534A10E3F4;
	Tue,  9 Jan 2024 12:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8AA10E19A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 12:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704804632; x=1736340632;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5Akej3s8TMhR7Cm5XlWw+BLqfufWIi6NbIdvByKjVq4=;
 b=Khjejz1vEbmLZLFNAZ7G/ZEOJMW0FOdXx1i1Ny8M8v1rnzXkUFgDZFaY
 EQp6Y9rLp0QvStNuzdfphpZ9EjFB8rRN7v+f4m8F4DQ5aRerxYMlqBoSx
 3IRAdFziDOF980YnDfUcwLJIYQGK08r+zcddQUvK3qJ6BNknkZ/KDj73A
 hMZjDA0b2sp0644oG7QLqBX9YDj+W8O2/Xu+imKOMmSdiYF0KIFuSVasB
 97gMtYg4XJ84iT/nBh/lrd92utZX9HhYL+kP3jWhyv6LdQHZFwDdDTL7T
 Qxrc/TKn5EwvwofV+ks2wqnIYIJO39uCeXfzugwu+7hezq0S8LKHN11bp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="16777717"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="16777717"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 04:50:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="852177234"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="852177234"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 04:50:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 04:50:30 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 04:50:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 04:50:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 04:50:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LjlBDGgkK279tEOix9c9jm/472bdmwceRJwn+6OMmDgZ9zTnqA6eHsJKBh+fegm3g0UmkoT9j3p9FPIWHgWYr4aodtR/RFWUTMcpoiaW1r3xual067tDHtnlfHuT7vwByPqwe1McrvutydDV+bqtk4RDZgw4QOQHuDJb+skJKbsTRtYnEopYGbZdLr4kkz4vXrgaEpqrbCis4T53dPMCY9iPavBYRP3nDan/Y1usAjlikGwSymiJq8rW3CymK14B44OhPfeD8FRkLtQd0dsRp4pDeYrW96zjrYfHLk8wjvdRN64L7JRO+P4cn2q+h/2rIjjlZI/v1xYX5tBisAbJeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Akej3s8TMhR7Cm5XlWw+BLqfufWIi6NbIdvByKjVq4=;
 b=d74tf542HViLvGje5zP5/tlk/XteXjxbbebqdRUXrCLpR/c1uLjixwgmmpZcZBHQGusO64CXQWWd04AelZhADtkqaPpB9xxVdU1lj1aA+hpNmMThho0YdabhRtpDrEXxP6k2AieIn3BNtrlgMA8AAhJYDB4VkIjgg42tIsYiB3wptwSVQQf/CzL2yzQ1aJ+A5ookSc1LGa2gt82u1mPIEmW3guUin8Qd1dvNIgDsDfPRxV7mPl/muPL8On0vIbQjAEcfmh8ECmJRNF3ljXxhirEs+hSHwhtwm4VtG/rgnbIkD2mKp49LRNmYEPZzIOjgYfKsf8JpzcRLBebtiISn9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB5897.namprd11.prod.outlook.com (2603:10b6:806:228::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Tue, 9 Jan
 2024 12:50:23 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 12:50:23 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 5/7] drm/i915/psr: Configure PIPE_SRCSZ_ERLY_TPT for psr2
 early transport
Thread-Topic: [PATCH 5/7] drm/i915/psr: Configure PIPE_SRCSZ_ERLY_TPT for psr2
 early transport
Thread-Index: AQHaMeBmOxK33AxPM0GuSSllwFURobDRkO+A
Date: Tue, 9 Jan 2024 12:50:23 +0000
Message-ID: <MW4PR11MB70549EDF0457E72CCAAD3196EF6A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-6-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB5897:EE_
x-ms-office365-filtering-correlation-id: 51efd185-3207-4692-df3e-08dc11118b7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pfb5keYrnJ5YmS5iY+jxYd58RyDaZsiElhQKSKscvB/NQdlIXtpoqB8V8S5TrQm0SFXe/b5ChJoX/Vj+XCbMuhSwdirXtXX2uq41IyrMOWFypiMYwjjD6z/v2OPxrBBBa8XD6HWL0lc307F/ykyycBd1X7c9z6tgB+h01j8e7vCdShjbzdZRVAVSI9xP6IFc366kpj2nA5TcsRH8PkDtL5mFfyvimoA2ttcTmXI5WqXbS3YujMC00AlvHU7nW7fzDd7b1x1uc0Zytr3e6Rb7raaOW1OtviiiW+dTbg9+MFSOlwBhunLiYCLHcVkM7BmdnS/1Yd0jWYy+hxOA5G3Kths3na+Q7zGr9aODyl4bpjy/8OnEDFaMWchTG1Q04zQgeFItUHOfG6cFbTWlE/DjsZWUBiiPM51MDskwfQyqni2RHyX26uNEO2CAgu3gyGmyZRxrLhLWpEIGAmgxoZkDVMJcWHHgVBRQWUfO1PsRZuAnf3iGTfdaQwcLhvwGat8hqXRZ0KnxuRBsZGBETAzcnv/n0lIZgzTOxXW6o3JnufEpoEwA3pVYC7nlEvVEXCv8E1zxJlI6slat/GNEv4yD/zxucF3qzoEUWuUnSH2i+leZtGXkh0StkeNyeHfIRlP8JPdqK5A9t7hZxjMG6F3gEQ90ltxtBTKqFE62w3W82yM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(346002)(366004)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(66574015)(9686003)(53546011)(6506007)(26005)(122000001)(38100700002)(8936002)(8676002)(5660300002)(52536014)(2906002)(7696005)(478600001)(71200400001)(110136005)(64756008)(66446008)(66476007)(66556008)(316002)(41300700001)(76116006)(66946007)(38070700009)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU1ZdHBpeVE0eHVRM2ovZGtpK0pZOXVLZFdUNGZxUUxXdnBtUE5WK3BweEVD?=
 =?utf-8?B?YnJWSDl1SEdmSEZwekNuTFNldlFRU1dTRHN4Ny9oaENIdG5nUkZiT3Y0WTRh?=
 =?utf-8?B?blN3bDg2ejE5dTJLRi9JeTI1eWVxanY0VjlhcFVpekc0WkpZSFF2ZDVGaGdW?=
 =?utf-8?B?NWJIaEJla25KdnZuVVFzZThhL3NjWFByS1RMdnp6K2F5ejVZcCtmbHBJSmdK?=
 =?utf-8?B?dE9lVnFianlBRFozQjFqemRZQkxwNVZ4Sk9GeFRFdDh1NXBPam4wSXp2eWlJ?=
 =?utf-8?B?VlkwenRWZHo2c3Y3T2s4RDl2dnNxRmNheURUYi9pKzZyQ1JNNXVnNWhyUExn?=
 =?utf-8?B?TkxnNFdzU1U5ZDJGU1lkQzlCU2JXbmZkN2R5QVBWeUViY296SitoZHFLZDVj?=
 =?utf-8?B?UEtMbWdKRU1OWUtRWjVpUW5CN2M4ZWw0SEhybStpb1ZlSGtRbkZ4MEY0Y09l?=
 =?utf-8?B?QU94VC9McWk5MWFtRmVnNTk2NVFYRVlrbmZNcWtzUVZJZ0hJbXB6d1dzK1lG?=
 =?utf-8?B?MnRXS2xwQnc1bmY0YTEwaXhvcWs4R2lDTlZLcGZGZ0Y4ZGxNMGpNeU5VSEtx?=
 =?utf-8?B?aEtRaXphbkNTaUE5UlRkeCt3eDJkNHN0QTRHSVBVS0djeTRlN2NYTGlzQnhB?=
 =?utf-8?B?T1plTTh5T1BaS2U3ZDVPS0N1NHJXRy80YjFybHlSVjEydmxsQndjSGh2VGM4?=
 =?utf-8?B?Z0Y0MUhhMVJWd040UllwNWVXWlhkeWRLUmtWZUpXNElVVVVUWmliamJSRDh0?=
 =?utf-8?B?YmFsOFJuekJqWXEzTkZINk9uc1k0RG5nQTk3cUZEM3l3d0Zjd1hiZStLSld3?=
 =?utf-8?B?QTRXeHFBOGhDeTRzQm1sWjFNekkxa2FFOFpNUUF2d0ZNMFdVZWdpV2dJSzMr?=
 =?utf-8?B?UDlBZWpGZjVJN24zQitoTEw2dkNDbnczaU1yQS9OSkRYT25HcTJVNHVzMm9O?=
 =?utf-8?B?SUdKZG1vQzFPc2swN080QWlNeUJJRnBxdWU1cDgxdThteVNFQWVvSm1abmZB?=
 =?utf-8?B?bXp4Ni8vTkVKTFJDcXdOUUM5c05IZ0hRK0plNUlNckoyMUcxbTFWR2JINXZK?=
 =?utf-8?B?WGpSaGtWbmtSdFZNZk1pWEtPNCtFbGxGOS9IN21PcmNVTEIyRVpWK25MK0ZQ?=
 =?utf-8?B?TC84UnJJcUVZWDNxOXlGU2VPYVBrZk5aVSt2NGxSbHhGTlFwbDZVbGVPSjNl?=
 =?utf-8?B?U2htTWowcEdBbSt4bjUvM2FiUmc3bURQYnJueUZ4OW1BU2UwbDRvclVmaWRp?=
 =?utf-8?B?Z3lpT09pMHdBajRnejN6TnAxQ0RSSkZLN3duTHVJVkZmOGd5Q0cvVURhRHFs?=
 =?utf-8?B?S1JTY3BHU1NIL3VlN09vVzlJYy9sNks2RGw2dXg0dzE5UXhIZWlKa20wWDNo?=
 =?utf-8?B?ZTdYd0tiTDdSRmkyKzR4Y2RPY0ZOdWY3ZU9POUxJekRQU3d1SllNY1JCMmcv?=
 =?utf-8?B?RkRlNm5OV3hFZ0xDWkJkc2RBQkVHQk1mUkNWWXVkOXV6bDByb3J6OGlEQ0o1?=
 =?utf-8?B?d3ZFVXdEejZWYTMya2lMOEF1SUdWS0U1R3FkWDNzbHU2TVJwc3ZGQ3pJMmE3?=
 =?utf-8?B?QmMvZEhBZjB0eGMvVmdoTEZjSC9vaDFHcm5mQlhyUHBjaUNiTXN3ZXVGQXBB?=
 =?utf-8?B?bTVJclphSmFDN3dRR1Q2dXJuZnhLSGcwdDZUOVZQYXV1dnRIeGl5YmJVS3Yy?=
 =?utf-8?B?VWJEZWhDTU90cDVjcjFGQ0ZYRTM0WlIxdFFCYnljMXVHdlNpZEkyK25zeWxJ?=
 =?utf-8?B?MCsyWStxRlg3NGJ2ZHRRLzhRSzhnWDJOTm85elFhZ0t0SndZaXpsdDhhTDN5?=
 =?utf-8?B?MEpxZkdUb1dJQTBGZE85SEtqVGdlNTBLZVRzOTcyR3dEVDZlMlVXelFNczVM?=
 =?utf-8?B?NnRlU3JmWEtYRW54ek9iNzU4RjY5bmZ5QWFsdS9XS2JOUldOMHU0Mnl2MGlt?=
 =?utf-8?B?UENEMDNrZytNNVROS0JjcjdGWkpjUWI5M3JvYjBlcWhLWXRqWkNNVTMvd2RS?=
 =?utf-8?B?WTVxZDdyMGRpTjMwYUZDT2YxcThGcVNPMkhWUk5wcCticGRtNU1URDNHcmJM?=
 =?utf-8?B?N0dzOGZ0Y0Z6NTNsMWdZNXZGTWhDS2RTMUdIMDM3VS90YnNVMDN3UnZCZWxR?=
 =?utf-8?Q?4Cxw2vGAA2yhuQ6J9CsICZas5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51efd185-3207-4692-df3e-08dc11118b7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2024 12:50:23.1996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UIsfphHlQk94Ov/gqXMvkTvBtiq4qGFHBy0IOaHH5LPFpH5yE1b2PT6fTSZIiODkNJdVLs6Xs0ehAPU1uGyYsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5897
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDc6NTAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDUvN10gZHJt
L2k5MTUvcHNyOiBDb25maWd1cmUgUElQRV9TUkNTWl9FUkxZX1RQVCBmb3IgcHNyMiBlYXJseSB0
cmFuc3BvcnQNCj4gDQo+IFRoZXJlIGlzIGEgbmV3IHJlZ2lzdGVyIHVzZWQgdG8gY29uZmlndXJl
IHNlbGVjdGl2ZSB1cGRhdGUgYXJlYSBzaXplIGZvciBlYXJseSB0cmFuc3BvcnQuDQo+IA0KPiBD
b25maWd1cmUgUElQRV9TUkNTWl9FUkxZX1RQVCB1c2luZyBjYWxjdWxhdGVkIHNlbGVjdGl2ZSB1
cGRhdGUgYXJlYSBjYXJyaWVkIGluIGNydGNfc3RhdGUtPnN1X2FyZWEuDQo+IA0KPiBCc3BlYzog
Njg5MjcNCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jICB8IDEwICsrKysrKysrKysgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyX3JlZ3MuaCB8ICA1ICsrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IGluZGV4IGYxZTU4MTYzMjc3ZC4uOGQyNTAyMDk5OTlhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTA0LDYg
KzEwNCw3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfcG1kZW1hbmQuaCINCj4gICNpbmNsdWRlICJp
bnRlbF9wcHMuaCINCj4gICNpbmNsdWRlICJpbnRlbF9wc3IuaCINCj4gKyNpbmNsdWRlICJpbnRl
bF9wc3JfcmVncy5oIg0KPiAgI2luY2x1ZGUgImludGVsX3Nkdm8uaCINCj4gICNpbmNsdWRlICJp
bnRlbF9zbnBzX3BoeS5oIg0KPiAgI2luY2x1ZGUgImludGVsX3RjLmgiDQo+IEBAIC0yNzA2LDYg
KzI3MDcsMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X3BpcGVfc3JjX3NpemUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJICovDQo+ICAJaW50ZWxfZGVf
d3JpdGUoZGV2X3ByaXYsIFBJUEVTUkMocGlwZSksDQo+ICAJCSAgICAgICBQSVBFU1JDX1dJRFRI
KHdpZHRoIC0gMSkgfCBQSVBFU1JDX0hFSUdIVChoZWlnaHQgLSAxKSk7DQo+ICsNCj4gKwlpZiAo
IWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gKwkJcmV0dXJuOw0KPiAr
DQo+ICsJd2lkdGggPSBkcm1fcmVjdF93aWR0aCgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhKTsN
Cj4gKwloZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoJmNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYSk7
DQo+ICsNCj4gKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUElQRV9TUkNTWl9FUkxZX1RQVChw
aXBlKSwNCj4gKwkJICAgICAgIFBJUEVTUkNfV0lEVEgod2lkdGggLSAxKSB8IFBJUEVTUkNfSEVJ
R0hUKGhlaWdodCAtIDEpKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBpbnRlbF9waXBlX2lz
X2ludGVybGFjZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIGRp
ZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdz
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgNCj4gaW5k
ZXggZWZlNDMwNmIzN2UwLi5jZWVmY2M3MGU4ZjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgNCj4gQEAgLTI0NSw2ICsyNDUsMTEgQEAN
Cj4gICNkZWZpbmUgIEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9TSU5HTEVfRlVMTF9GUkFNRQkJ
UkVHX0JJVCgxNCkNCj4gICNkZWZpbmUgIEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5V
T1NfRlVMTF9GUkFNRQkJUkVHX0JJVCgxMykNCj4gDQo+ICsvKiBQU1IyIEVhcmx5IHRyYW5zcG9y
dCAqLw0KPiArI2RlZmluZSBfUElQRV9TUkNTWl9FUkxZX1RQVF9BCTB4NzAwNzQNCj4gKw0KPiAr
I2RlZmluZSBQSVBFX1NSQ1NaX0VSTFlfVFBUKHRyYW5zKQlfTU1JT19UUkFOUzIodHJhbnMsIF9Q
SVBFX1NSQ1NaX0VSTFlfVFBUX0EpDQo+ICsNCj4gICNkZWZpbmUgX1NFTF9GRVRDSF9QTEFORV9C
QVNFXzFfQQkJMHg3MDg5MA0KPiAgI2RlZmluZSBfU0VMX0ZFVENIX1BMQU5FX0JBU0VfMl9BCQkw
eDcwOEIwDQo+ICAjZGVmaW5lIF9TRUxfRkVUQ0hfUExBTkVfQkFTRV8zX0EJCTB4NzA4RDANCj4g
LS0NCj4gMi4zNC4xDQoNCg==
