Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FBF78698C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:07:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD06510E4B4;
	Thu, 24 Aug 2023 08:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F80110E4B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864454; x=1724400454;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xwHdfeX9v90Vgtb3PoAuBq7hfaWTpg6IQVHiAN7S0f0=;
 b=jFYXd9AN4hwvuCDLUzbUAB1a1osGlqq4SqPVdcQS11Ls5MbFbbks9Xux
 iBrwu1qFKsp1lMBnaCdzXewCjpVshoVghEukR1BRA+lHERRhdpRI1Tvfh
 ttiAEilhz4VttHbrGjztlZzSJVhBtEMmIjTV8qDXIfdfFdFDJXiob+ARB
 L+JF10BdbSEc38BHd0XAy8/Uf81PahJXFedysPgsC5d/yW1T/eF9Iyjx1
 o1GdeNCmbkwEAmUq7H7CyjL6huEpPQTkiEj7s/GhOXwawuwWYY+RkLoBk
 pfjR3YmXA3vNpxgjuLgp+RkxtYS21nNKEGK7QGrH5X0QO373t0GSYsdxX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="440724110"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="440724110"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="713867441"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="713867441"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2023 01:07:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 01:07:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 01:07:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 01:07:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 01:07:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eG2UVExsx6Pt0FcIDoL9H0VjcDLRrNrN2PxC6QYOMef2X4IoSCHRQfgK8RRb2jm3pOt9F3fsM4tzE4F8karcOD3FRC30RH2SxicpTBXBBmqD0sI4Is7nGSKFYMbtOPcGDEAeVy36Y9msbfpKIDmhFjXVkaLD5UOMQFRrHxMjbycgZwcUPBowJPHwWAQOeuQjJzf3HxHz1yjmOpE1DqpokQKCxJ1dF08ASsWMoCqv5dhf3j2/5d8v6/KpaIbL3s98JBdbDuRupaHGNnQYxERuugszsdlpFPcQa1Y4Hk7m2K77s811Utjsu31zYOaejztUQ7ss8JBGdThHWZficC6dng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xwHdfeX9v90Vgtb3PoAuBq7hfaWTpg6IQVHiAN7S0f0=;
 b=b24AF62J6S/I6T4Cah6++v7BypAPCCEYOiwR8vVfSp7RZNrNMe49ifyUZbDKCZf1ode2DFh7J4PKJ8RAT2u2EHqEjP9SYzmQGioegGxfvTECm9ZzS6BwSSm5C6IlYiMnjfzmPQC0qdVpQKGZcSMuTywn6aAuZLNaPRfqUJMiHS0tH5NNlw9W6YE7nEITcNifkTa8gQRhUIY5b/Q6uF6/7T3mvsosTji1qQEuPYgBpkpGX+HgEj0mNPWu9Nua2FGvmOS4+5QqlyNB9Z9MqJkyjUlFn2ejT0NqNkrDUUODdR2WhBZpb+19TYdfhhKnOIA528wtVISI/ZSFwMDbF3sgaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH0PR11MB5524.namprd11.prod.outlook.com (2603:10b6:610:d7::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 08:07:30 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 08:07:30 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/vrr: Compute VRR min/max
 based on highest clock mode for DRRS panel
Thread-Index: AQHZ1hzhKdd2loJo6EyQk746WRVsO6/5FyLg
Date: Thu, 24 Aug 2023 08:07:30 +0000
Message-ID: <IA1PR11MB634818179389F940B572DBBFB21DA@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230823235159.2140276-1-navaremanasi@chromium.org>
In-Reply-To: <20230823235159.2140276-1-navaremanasi@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH0PR11MB5524:EE_
x-ms-office365-filtering-correlation-id: 2f75f43d-b806-4702-fcf1-08dba4792a0d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iwlQ16GUDlSGRyrOTZy0sagL8QlOsI/GN9BsmJ0bAcZmDd3Af9zoIEVimzxlkyo4jFmsiJD8dP1yQ6nrPdPCCVGqbI1ga/UdCXpc/SzaO1aT27UFXdaZvSdFHfvQrwSJHFpIu8wzB6epBhpjojpIfkEIn8P/cgk2McD83gZ59fs9P7nBwstBNx8OX0XlrweKzHZidbJWw/QnLmj0+5Jhzcucut13Ibh+LwU0TN0Fja20uiLvIjY/EIpXJRE8YZOhn6c7VYsWoWSlvVta6z16ZyopaCODZk72Tp2CIYqJSiV2C028oNsqGmo4FIniMqIiB1TBBsq7jPZ4DFG9agIc89sgcisG316IDOn52or7lDeGv25qyim1uH6XMtzvZIqwk0k/cbmMZz/XA8f9GcgDx3OpqFQ6Sklw/EFguFe0e9BazVG7e9jSJmw2/QAubCT/lvOVI1V/J4otke8jPIWnYL8DveZmyJ9oH66PYkutL/776XGXHYpKjPYdF325t/5NgbO2U7xkVfPdrkQPfzYQjPcaTKZv8ytFj4Ioke6volHsixxUUU3jVxTB4P+AYuCrOkDzfoquAh7ykcQ3CoAQoUHeYf+34ykfPgqW1BGOlXiOEsof9P+rJIsOClvX/hLh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199024)(186009)(1800799009)(64756008)(66446008)(66946007)(66556008)(66476007)(76116006)(316002)(82960400001)(122000001)(478600001)(110136005)(55016003)(26005)(38100700002)(38070700005)(71200400001)(41300700001)(53546011)(55236004)(86362001)(2906002)(6506007)(9686003)(7696005)(4326008)(8676002)(8936002)(52536014)(107886003)(5660300002)(83380400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UlY0ZXJ4V1NBUHZRTVh5NUJNcGpGYWV2MEYveGNwcGk0S1BhTHgzK2hKSnEy?=
 =?utf-8?B?eTVQQnFTVFZwUFh1cnJYZndKeFpMTVV2a0dVTlc0UVF6TVNPS1VZQ1RPV1ZL?=
 =?utf-8?B?eUZQNXdibG9TQXFHMG00LzVoVXpzNWhESWVIT3pTb0NsYWxMQkR5UGJJQ01w?=
 =?utf-8?B?bFRLa3krNWhaVHdaZVNPUTlMRjdQVVkvUGNCeEFZWUhaQ0g4K2Y5ZFFZZmlX?=
 =?utf-8?B?MDVUNzEzclIxK3FXa3dSMzFmWmxpSzk0YVhoZnpqUGRGdVpsN00wQ3oyZWVJ?=
 =?utf-8?B?ODNubjYxTVhGTlB4eXp2ME40MDZWVTBTVkZhMHRybXp3OVNVNHFJRVZ1bVVY?=
 =?utf-8?B?R3dQRGw0QllOODNNSFI0RW1yanFJd2RXUG5jdUNSd2xmbjR1ZHpxQ0xYcW1v?=
 =?utf-8?B?Z25NdkRzb3ZRc3JvaDNBb2xPN1lMK2NEd2lHRzNDZFJ5QlUySGxxVHlhR0Ey?=
 =?utf-8?B?RUpLY05ka2dmZFRpZVk1cEdhallmTUNFRkw3bmJDMlVGcytCcGFsd0RhYWpE?=
 =?utf-8?B?ZmVZejZCTE1RMDFRMFUyNXdabUVlVmVYYVZ6ckcxRVZPbWVZZDlkaERHWitw?=
 =?utf-8?B?UHZlUzZXVFpWM0tqL0lVV1FKdXNpd1RRRTk3ZUVZTGNJMjEreXFYU0FzSkJX?=
 =?utf-8?B?TFBNNjc2M0c5V3oxRTVDdTlidW5tUlFXV3NVSG5VSS9yRnIvSitiSUxpdjl0?=
 =?utf-8?B?RWkrc0J1UGJTVURnVkV5MWNwejVMditzR3R2Z0d0WmJ5TkRDeHExOXRCdnFv?=
 =?utf-8?B?a1lKckc0SzhEdStQSXh4YThvbzRCanFSeGNlQkJyWERweElFOStCaDNmVDRY?=
 =?utf-8?B?ZlA4aEZZSDNvdlZlOXFxZ08wWHFmNVowTmtabjdKMm9zMW1UMWtKLy9TY2pu?=
 =?utf-8?B?V2lHTlQvOUdoN0NPVkIvaHJzaGFKY1pQQ2hXeENKZ2tYQlhsRGpEQkZNREsx?=
 =?utf-8?B?NmpHVTRRRlFweGZJS3lFdU1mUTd2WkVyQzhDbktPaHd4MytrYkdwQ2Q2eC8r?=
 =?utf-8?B?M3hWZ25YdEczSzBBYXBkOXdOWHMyMFZSNTZBL2oxRTgvTFcwSzlObzdMcFJn?=
 =?utf-8?B?M04rand6YUdMSUIxMUNVVzRLMm1kZmc2MUJDNzV4MEd6dUQ0bm9Ka0NSMHdJ?=
 =?utf-8?B?dVJpa2NOdzZLaHBWejE2M2M1cjJya3JaWlVRZ05JVzdCbFVWMStFSy9Nd1FE?=
 =?utf-8?B?YzRXSnNCeEhVL3BWcjVOSk83ZGJUbWgybytWdHJ2TGpFSmRBcElVSDZGd1lv?=
 =?utf-8?B?ODR6RExiWUxTRDVlSDIvTkNNZDRPcXhudWNZcjB1WVZNV0YyUWc0TUl6cC9P?=
 =?utf-8?B?NjhkcUg2VEE0U1BtZ3VEakkwV2JCWnZWNm5sWnQ4VVRLcHZnMmNNb1g1SElJ?=
 =?utf-8?B?Y3ZILzZwdkk5RWV0d1kyeTEvL0c5clhTMThubnAzQ0ExNlVHUUxQSEhKYita?=
 =?utf-8?B?T3JHaWRlTUZWVGtMLzdCZUgweFcvUjN0T2FQODd6aTVvdVFMWmpUQlEzRllH?=
 =?utf-8?B?UUFVSGovcFk1NE9jSEdUcmNXUzJpQy9qZEZHVW9Vb0NUREFsa2hPc3lNd1Rk?=
 =?utf-8?B?TWtVNkdRSkZCbGR1Q2VVdDY0TllUSDRXdmhhVnpKTDdVMzV0R3VaZnBUSkpY?=
 =?utf-8?B?ZUIyd0Y2OW8yck1KNXA4RmJxakhJQ0tkYkEvYkM2WTlqdDZqbWtPeGVjYnVw?=
 =?utf-8?B?WERwZ3JwODE2aFU2UTd0dEExbzkwRXhPZmxmY2x0NEpEQWx0QkdxTTFMeGs0?=
 =?utf-8?B?bUtYK1owWnhIRW5zUmZPTFZURHVsaXpMOE9jWWgybi9NdllnNlU5Q2R5eXlJ?=
 =?utf-8?B?VnRLczhZSkVnVTY2aHo0ajhYZklmZmhsSzdHYk1Rc1AwT2srRnBTK0lYT1Q2?=
 =?utf-8?B?MlNUK1pxNUlvTWJYSkcyU3dBZXJMZEg2QlZENytMNTJsWWZKVUtUUDdad2dI?=
 =?utf-8?B?cEQ4Z2lUMkNxVUFHNWozOE8zT2lISUlqRjJMMGxLLzVtQy9UWHVMb3E4S3dQ?=
 =?utf-8?B?Y2Jxb1MzTkh3Y29jem9yL3dZNXdIeVJhK1QrN2dCU3FtSUF5R3plSUdTS2JC?=
 =?utf-8?B?bDgwZ3c5bDZWTWJmLzUyN1U5bWdjUGZNSk5PakNtT3NzRTlhZVN4MkZYZ1p2?=
 =?utf-8?B?K1dHdHcvYnR6ZWNHNlV1a3pUaDYrNVJuVGxMR0U3N2xzZGcveEdFQXV3b0Ja?=
 =?utf-8?Q?FWcjKl4ZDbIxFeWBhyYKZSU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f75f43d-b806-4702-fcf1-08dba4792a0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 08:07:30.6596 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8Gde+vE1NzOSWXcH8yTElTYO35C0AFqHQVLc64NaA48BnSYuMO5IOOaBrNtFO9CZ/YWc/qbL+uaPDBI/8nBKc5m8+JA0AM0W34le15vae90Ero7LCzLRDLtsHHqKsnl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5524
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vrr: Compute VRR min/max
 based on highest clock mode for DRRS panel
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWFuYXNpLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVs
LWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYg
T2YNCj4gTWFuYXNpIE5hdmFyZQ0KPiBTZW50OiAyNCBBdWd1c3QgMjAyMyAwNToyMg0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5
MTUvZGlzcGxheS92cnI6IENvbXB1dGUgVlJSIG1pbi9tYXgNCj4gYmFzZWQgb24gaGlnaGVzdCBj
bG9jayBtb2RlIGZvciBEUlJTIHBhbmVsDQo+IA0KPiBJbiBjYXNlIG9mIGEgRFJSUyBwYW5lbCwg
dGhlcmUgaXMgYSBwcmVmZXJyZWQgcGFuZWwgbW9kZSBhbmQgdGhlcmUgaXMgYQ0KPiBkb3duY2xv
Y2sgbW9kZSB3aXRoIGxvd2VyIHBpeGVsIGNsb2NrLiBCdXQgdGhlIFZ0b3RhbCBmb3IgYm90aCBy
ZW1haW5zIHRoZQ0KPiBzYW1lLiBUaGlzIG1lYW5zIGV2ZW4gaW4gZG93bmNsb2NraW5nIG1vZGUg
dGhlIFZSUiBWdG90YWwgbWluL21heA0KPiBzaG91bGQgcmVtYWluIHRoZSBzYW1lLg0KPiBTbyBp
biB0aGlzIGNhc2UgYWx3YXlzIHVzZSB0aGUgaGlnaGVzdCBjbG9jayBtb2RlIHRvIGNvbXB1dGUg
VlJSDQo+IHBhcmFtZXRlcnMuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG5hdmFyZW1hbmFzaUBjaHJv
bWl1bS5vcmc+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jICB8IDQgKystLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgg
IHwgMiArKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jIHwgNyAr
KysrLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5k
ZXggNzA2N2VlM2E0YmQzLi5jNTcyYTAxOGNlNTcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTE1MDksOCArMTUwOSw4IEBAIHN0YXRpYyBib29s
IGhhc19zZWFtbGVzc19tX24oc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0K
PiAgCQlpbnRlbF9wYW5lbF9kcnJzX3R5cGUoY29ubmVjdG9yKSA9PSBEUlJTX1RZUEVfU0VBTUxF
U1M7DQo+IH0NCj4gDQo+IC1zdGF0aWMgaW50IGludGVsX2RwX21vZGVfY2xvY2soY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IC0JCQkgICAgICAgY29uc3Qgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpDQo+ICtpbnQgaW50ZWxfZHBfbW9k
ZV9jbG9jayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJ
CWNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQ0KPiAgew0KPiAg
CXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5lY3Rvcihj
b25uX3N0YXRlLQ0KPiA+Y29ubmVjdG9yKTsNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlf
bW9kZSAqYWRqdXN0ZWRfbW9kZSA9ICZjcnRjX3N0YXRlLQ0KPiA+aHcuYWRqdXN0ZWRfbW9kZTsg
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBpbmRleCA3ODhhNTc3
ZWJlMTYuLjNjOTg2NjM1NjM1OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuaA0KPiBAQCAtMTE5LDYgKzExOSw4IEBAIHU4IGludGVsX2RwX2RzY19nZXRfc2xp
Y2VfY291bnQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAkJCQlib29sIGJpZ2pv
aW5lcik7DQo+ICBib29sIGludGVsX2RwX25lZWRfYmlnam9pbmVyKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsDQo+ICAJCQkgICAgIGludCBoZGlzcGxheSwgaW50IGNsb2NrKTsNCj4gK2ludCBp
bnRlbF9kcF9tb2RlX2Nsb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLA0KPiArCQkJY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUp
Ow0KPiANCj4gIHN0YXRpYyBpbmxpbmUgdW5zaWduZWQgaW50IGludGVsX2RwX3VudXNlZF9sYW5l
X21hc2soaW50IGxhbmVfY291bnQpICB7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuYw0KPiBpbmRleCA4OGU0NzU5YjUzOGIuLjE4YTRlMGU0ZTY5NiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+IEBAIC04LDYgKzgs
NyBAQA0KPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCIN
Cj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxf
ZHAuaCINCj4gICNpbmNsdWRlICJpbnRlbF92cnIuaCINCj4gDQo+ICBib29sIGludGVsX3Zycl9p
c19jYXBhYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikgQEAgLTEwNiw3DQo+
ICsxMDcsNyBAQCBpbnRlbF92cnJfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+ICAJCXRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25u
ZWN0b3IpOw0KPiAgCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJmNy
dGNfc3RhdGUtDQo+ID5ody5hZGp1c3RlZF9tb2RlOw0KPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlz
cGxheV9pbmZvICppbmZvID0gJmNvbm5lY3Rvci0NCj4gPmJhc2UuZGlzcGxheV9pbmZvOw0KPiAt
CWludCB2bWluLCB2bWF4Ow0KPiArCWludCB2bWluLCB2bWF4LCBjbG9jayA9IGludGVsX2RwX21v
ZGVfY2xvY2soY3J0Y19zdGF0ZSwNCj4gY29ubl9zdGF0ZSk7DQo+IA0KPiAgCWlmICghaW50ZWxf
dnJyX2lzX2NhcGFibGUoY29ubmVjdG9yKSkNCj4gIAkJcmV0dXJuOw0KPiBAQCAtMTE0LDkgKzEx
NSw5IEBAIGludGVsX3Zycl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiAqY3J0Y19zdGF0ZSwNCj4gIAlpZiAoYWRqdXN0ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9G
TEFHX0lOVEVSTEFDRSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQl2bWluID0gRElWX1JPVU5EX1VQ
KGFkanVzdGVkX21vZGUtPmNydGNfY2xvY2sgKiAxMDAwLA0KPiArCXZtaW4gPSBESVZfUk9VTkRf
VVAoY2xvY2sgKiAxMDAwLA0KPiAgCQkJICAgIGFkanVzdGVkX21vZGUtPmNydGNfaHRvdGFsICog
aW5mby0NCj4gPm1vbml0b3JfcmFuZ2UubWF4X3ZmcmVxKTsNCj4gLQl2bWF4ID0gYWRqdXN0ZWRf
bW9kZS0+Y3J0Y19jbG9jayAqIDEwMDAgLw0KPiArCXZtYXggPSBjbG9jayAqIDEwMDAgLw0KPiAg
CQkoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19odG90YWwgKiBpbmZvLQ0KPiA+bW9uaXRvcl9yYW5nZS5t
aW5fdmZyZXEpOw0KPiANCj4gIAl2bWluID0gbWF4X3QoaW50LCB2bWluLCBhZGp1c3RlZF9tb2Rl
LT5jcnRjX3Z0b3RhbCk7DQo+IC0tDQo+IDIuNDIuMC5yYzEuMjA0Lmc1NTFlYjM0NjA3LWdvb2cN
Cg0KQ2hhbmdlcyBMR1RNLg0KDQpUaGFua3MsDQpNaXR1bA0KDQpSZXZpZXdlZC1ieTogTWl0dWwg
R29sYW5pIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29tPg0K
