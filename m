Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F55C7DFF0D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 07:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4FE810E38B;
	Fri,  3 Nov 2023 06:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DA510E38B;
 Fri,  3 Nov 2023 06:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698991859; x=1730527859;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iJAXAYog/VXfRnwasaKoNC0XtKo0Ru/ajdHXbjEk6mk=;
 b=O17X1cam8B9YQVR91rThcvFijQSwShGzhrQjsw6OacmC92AUoHuJPO3T
 CsoczYhux+GDpNT58J0z4DMS7jx7l/A/QkdS1XUWo3Irc2ybVZq9Us2bj
 TwbzOX4xv6Nwb6q06tu+rIWa18xITX2FIkd1xg8okkU1keZWJIQOJ/9bU
 x0/8vvSrixY3ouIbD02qqsGZmLUAeExe91flvIt5cMrS4WdCYI3vtscA6
 eOjmA4QiMrrYZKnHXUyuDClaWOThVzjQAyOGdqBDO4l0xjtl3BfyxcqwJ
 rjGtfYUD1WFPIlQA6pVGKUiqHQMgiwKfB/J1MLUMj6JpsMg6rPVqz5qpu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="455376082"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="455376082"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 23:10:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="765154355"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="765154355"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 23:10:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 23:10:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 23:10:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 23:10:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdg1GXdFe2SjvZhqRiJfkENX4AYvi9AptwSCr5gZVcFb7m5kB0vP7manNntHK/BY1Md3iKGVVGd+OKhhbcxEuI/XMc+cMQj3CYeL0ogJYvi0c5QQy+4nH2p7Hy8mcel5yXKjPfbNsMrXUDccJWTrPeUswwNqnfGmiBpEryzSYgR2I2+b8Gvnrm2mEZvBhHJ06fBdyH4V8pLx5/i2EFK8OxXJRMmBkK39lBDaiG0IIwkSd12PuzIZ30TcvetV59X/hG8mkqPDUm5MFGEMLGLIxtjfd28XUGkre53zv3WHtVnMm16FFmVHKE3jF8HKEK1p3uupe6A+icFiFUxwZlV4BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJAXAYog/VXfRnwasaKoNC0XtKo0Ru/ajdHXbjEk6mk=;
 b=e/Od37pb0Rcb58oVySiwHGZOqbIfpI/YrEwx8c8SSn0kdjoxO7fzquOE5u6QlCTdmUB9B8z8733FzGcEuP/3xQJGuGXlOfQn2p19UJPJ8Z+mMUxJS1JOP11rzfk/NvnbofPqMcEf0OcyeO1UXYRJRxuZ1p1yCpOWSppZIAC0SfrsMx5rWAF4bvl5avHys9DgOI6QL122FJi+FjKkx3aMDGv9LU78bqdi70XTXGgo4XvoB/6/4uJv6z1e3bJVowjhm4w6XA0037v0PGMOS+a2M4KqIaXH7NCeyeGV8v/WFRLr7dbQjE3nqbx9KsTg7V+dsk/EqFNUaIGmUkiJ6ffqgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DM4PR11MB6479.namprd11.prod.outlook.com (2603:10b6:8:8c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 06:10:55 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 06:10:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v7 6/6] drm/i915/panelreplay: Debugfs support for panel
 replay
Thread-Index: AQHZ/DUkr2AueVZwwEu3yNRmoW4e57BmxrkAgAFoRRA=
Date: Fri, 3 Nov 2023 06:10:55 +0000
Message-ID: <BL1PR11MB5979EB53A6592AA0ECA57D82F9A5A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231011110936.1851563-1-animesh.manna@intel.com>
 <20231011110936.1851563-7-animesh.manna@intel.com>
 <b760b3dc5d666ef58a12d703586bd2f4796485be.camel@intel.com>
In-Reply-To: <b760b3dc5d666ef58a12d703586bd2f4796485be.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DM4PR11MB6479:EE_
x-ms-office365-filtering-correlation-id: 0c39afe0-2a37-4d53-169c-08dbdc33a416
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qFzHWsnVQcz9Q8h/6VzTxulD2eAMMA3FF9VoXy7F5fufmJLe6DUTuv5Q2FEaGTiXGY9XLROROMbGLlKxNEmlfFS86Bk9yYboVyuWam6Kag9JGsP72w203kHOLH3VUsEGlXdLQivmfaTDlM8SJpk+g/nIPCmqMhKPyJaP4YFlma6jOnlLJOeZmmE58Uu/VI+t1CHzozrz6o7xpCsyvOLL035qrV3jnMxuk0jsmdgfUYiNVKs+P7J2Q3wRgoNZmw2WLlmdqxfc3i8tAEZxazPswhYUS8K1KJyzSIaCsKE366r1NcoumiJoun/+pGahYmh/0TdD+sPhR+veChv2a/Nq35H/dTqz9NW64JldCFT7u9l0KDTvFlQKkWXWMCJTX5il0mXY9AAWe/dQ1GciHJsAWNmhJa49o0D0KXKmW2rRUMOxT+Gy6X3q0+HwzHSqnsP3oHlQwqg3zxaNwbJk4bIE9is7D199qTPYSgBAw5CyFlgyDCsm+Jadk4LzOoo1vrLQesjP6+DgS3ooVLsOgGHYHvxsaASCzpxeZ6C2m33eNtry8164Az1A/o2dg0RZlWdJ1Fj/QC4rMHtNvIZpqXvvdWcUi2dBBFNRsRPaHlYnocXp28qg0nRUi2l0Kr7Yq8hA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(366004)(346002)(39860400002)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(2906002)(30864003)(26005)(9686003)(7696005)(107886003)(55236004)(86362001)(53546011)(33656002)(6506007)(38070700009)(38100700002)(71200400001)(83380400001)(66574015)(122000001)(82960400001)(41300700001)(478600001)(4001150100001)(66556008)(66476007)(66446008)(76116006)(52536014)(64756008)(54906003)(110136005)(66946007)(316002)(4326008)(55016003)(5660300002)(8676002)(450100002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkYxUUVJOTVWNHhZWW1hSlUzcm93dDcrRFkySFA3TjlJVWpEMGMxMXFmemZk?=
 =?utf-8?B?NFlNNWh3bnErUDFrTSsrQTlMTUJCSHJxNGJtVEtLRWVad2FZMHZKMncyWFBt?=
 =?utf-8?B?TlBpcFBQL1NUei91dGxucjdZV0FNcjZPemdHcVVvZ0htTXJCRFplQlhxK1pZ?=
 =?utf-8?B?TlZERGllU1ZCUld6djExOU15ZE9OZlJ5NlcxbmZhRWFpeTZnMDhpbnU5Tmg2?=
 =?utf-8?B?WHg4eTh1UllCRE5aVmJyU1RPU1Z1cCtGeERIaEM3NWZRQ1lMZzRkMmFtVXhp?=
 =?utf-8?B?VGZYM1djMDdsamdyRUxYZTBINVVGb0FidVo2Z3ZGU2Y4QkZoNXhOa1Y0VGk0?=
 =?utf-8?B?bHc1TVpYMmM0NDcvMVBsMG1wWnNFWlcxQTd0cng1bFJoRFZydHBJUVFlNkJT?=
 =?utf-8?B?RUVTOGdsaWhNZVRFTHM0YXRWNGduMmtUaGRCcTVJckl2ZzROcDJ1UWdoUUpC?=
 =?utf-8?B?T2szN1lVcjNVMm5PcjVQUUJkNVlsQTZxeVJWUkFKbUhyeDNxdGZ5L3VhWUpW?=
 =?utf-8?B?UlIwbHQ3K2tReFg0RmM0cHNzZmdhUXg5bG1qdjZ6RW52SXp4b1pzOFhPeEI5?=
 =?utf-8?B?YVFmc3NwQmNsaGlldmNLYWhwbEc2THRNZGIrbW9xSDZyajdqcy8vaU1MaFVu?=
 =?utf-8?B?QWowK3dEd2dWM3pVMkF2MTFLVmxvZUp0bjZpemRZQXJnN1l1T0p6aHJoQTRj?=
 =?utf-8?B?NlFmZisxa0NxaXE4azUrSUhaZmpZRHdNdlVWSUptMjJ6aExmU0RIM0NJTXE4?=
 =?utf-8?B?aHdsRVFsdk9aejM5OFNZMEJnOHp6Sk1vQVhKeHUzTFg5MzkrWVA1bHJpd2dv?=
 =?utf-8?B?eW1KajgrSHA4TkNoVmQvZXFoSlFNaTdHbFNrQUcwbzJWbFNDNktPTEZOWnZJ?=
 =?utf-8?B?bVM1UXFyRGRtL0IwMktsYW1UeUlnVnBxVExzT3gzRC9yZFhNVy8vaWxScExH?=
 =?utf-8?B?Y3JWZzRKTVJvdDBzcHp6VWwwMzdmUVJNOE1pSTVYZHp6K0g4bUN4c1RaaDRO?=
 =?utf-8?B?YmZxb3plWUhqcHVqQkExV0FDbjZiK2FLeEpGM3Y3NEFGVGZpcStPQ0svWWUz?=
 =?utf-8?B?S0l0QXRTQzFyQWNoVTdqVG5XYjhHQ2ZaS2NrR1RNcENVZTVyRVowRmN2WU9F?=
 =?utf-8?B?NGhjRzlISDZQc0RZVlZnbEU2WVBIWTg2TzhHbGM4Q0prMVZNeGFIaGhKOVJS?=
 =?utf-8?B?bzVYc1VNOEZXR2h2aE40elZMZXFVWktkbEw4Z3JqS0MrM0w0NmROcXpQWEt2?=
 =?utf-8?B?UDBvMFFSdEtXaU91YjFhVVNETm51VUhqeVlpdkt4ayt5NzdLMzJwSk9CV1Ni?=
 =?utf-8?B?SGNoQXNsYUNKMC9URzV6TkZhRzU4SSsxaUhHMTE3UDVrUVRrWU0wVUZmSnRy?=
 =?utf-8?B?d25FeFhkNFJJMGs2d1NZYkl0VFl2WWFuLzJuQUdVczdGTzhBcXJTZWJvbkc1?=
 =?utf-8?B?UXFzdGEyNSt5V2FMVWNrNjg3bmVONm55UGlPY2NIdUt1Q0VLdFYyWGRWZk1F?=
 =?utf-8?B?eHAyV0NpWWtlMG9lT3V5ZmVTNjhaOXdNY0R1OVFDRzgxZmxublFwYmREM1Zr?=
 =?utf-8?B?aGJ0NUt6clpHMlNMT3hDTDZuVklBdjFxbFRESGdBai9yN2VKUm9ReFV6Z1pM?=
 =?utf-8?B?SC9OZXFuMkFQYlFMRUFpdzBOL2lycWR5K29MckhrbHNwcWlQc1doS3FQQTFS?=
 =?utf-8?B?MjZZQTUrNmg0d1BKQlBwZGk5RlVHc3pyOVFUSDFPdTRPVTQ5RnJOWTdyVTdP?=
 =?utf-8?B?RlZndVd3QXB3MS9oMHpuczdnM3VxZk8vUjlpUGJORGRpMFJmYTJxSy9Kamhu?=
 =?utf-8?B?NFhCZk5zM1JKWVR3K2xCeDlCTGdCUjFQWktkS0w0SHJCRklVWjJPTXUyR0o2?=
 =?utf-8?B?RjR0Mk5mR1F4bDBHTGZGcWxTZVd6am5lek95ZkoxdDV3QTJVYnRsNFB2TWJH?=
 =?utf-8?B?NERuSEtmZldsVTVvNjNIMTQvWWQwUkFwL2tQSmJkTnZqVjZIQjhpUnNVclpi?=
 =?utf-8?B?TWFRRnhDeWM2L0F6WHYrWkZqeXA4Mlp3Q25RRnhESXhQdGZFcHZJb0lSRkIr?=
 =?utf-8?B?QXNFSlh6R1dNR2pIT0xrZlJQVTVHa2F5aFowWm9DUFNqYUlVUUNFTVRkTW1F?=
 =?utf-8?Q?dbpPSdWFeyyWSu6T5UxJmff9u?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c39afe0-2a37-4d53-169c-08dbdc33a416
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 06:10:55.7226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U016eoswWuxKoN3hUQz+1v15XHVQHn6Lxu4XTOi/RkjFmtZSUC1MD3uwTvJy+ClQigXc2/UErlWQC4P/d0OkiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6479
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 6/6] drm/i915/panelreplay: Debugfs
 support for panel replay
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAy
LCAyMDIzIDE6MDggUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNdXJ0aHksIEFydW4gUg0KPiA8YXJ1bi5yLm11cnRo
eUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2NyA2LzZdIGRybS9pOTE1L3BhbmVscmVwbGF5OiBEZWJ1Z2ZzIHN1
cHBvcnQgZm9yDQo+IHBhbmVsIHJlcGxheQ0KPiANCj4gT24gV2VkLCAyMDIzLTEwLTExIGF0IDE2
OjM5ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+IEFkZCBkZWJ1Z2ZzIHN1cHBvcnQg
d2hpY2ggd2lsbCBwcmludCBzb3VyY2UgYW5kIHNpbmsgc3RhdHVzIHBlcg0KPiA+IGNvbm5lY3Rv
ciBiYXNpcy4NCj4gDQo+IFNvcnJ5IGZvciBsYXRlIHJldmlldy4gTm90aWNlZCBvbmx5IGJ5IG5v
dyB0aGF0IHlvdSBoYXZlIGFkZGVkIHRoaXMgcGF0Y2gNCj4gaW50byB5b3Ugc2V0Lg0KDQpBZGRl
ZCBmcm9tIHY1Lg0KDQo+IA0KPiBDYW4geW91IHBsZWFzZSBkZXNjcmliZSBpbiBjb21taXQgbWVz
c2FnZSBob3cgeW91IHNlZSB0aGUgb3V0cHV0IG9mDQo+IGRlYnVnZnMgaW50ZXJmYWNlIHdpbGwg
bG9vayBsaWtlIGFmdGVyIHlvdXIgY2hhbmdlcz8NCg0KU3VyZS4NCg0KPiANCj4gPg0KPiA+IHYx
OiBJbml0aWFsIHZlcnNpb24uIFtyYi1lZCBieSBBcnVuXQ0KPiA+IHYyOiBBZGRlZCBjaGVjayBm
b3IgRFAgMi4wIGFuZCBjb25uZWN0b3IgdHlwZSBpbg0KPiA+IGNvbm5lY3Rvcl9kZWJ1Z2ZzX2Fk
ZCgpLg0KPiA+DQo+ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IENjOiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4g
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAtLS0NCj4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMzYgKysrKysr
KysrKysrKysrKystLS0tDQo+ID4gLS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMDIgaW5zZXJ0
aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDgwZGU4MzFjMmY2MC4uMzk5ZmMwYThl
NjM2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gQEAgLTI4MjMsNiArMjgyMywyNSBAQCBzdGF0aWMgaW50DQo+ID4gcHNyX2dldF9zdGF0
dXNfYW5kX2Vycm9yX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPiDCoH0NCj4gPg0KPiA+ICtzdGF0aWMgaW50IHBhbmVs
X3JlcGxheV9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoc3RydWN0IGludGVsX2RwDQo+ID4g
KmludGVsX2RwLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHU4ICpzdGF0dXMsIHU4DQo+ID4gKmVycm9yX3N0YXR1cykNCj4gPiArew0KPiA+ICvCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1fZHBfYXV4ICphdXggPSAmaW50ZWxfZHAtPmF1eDsNCj4gPiAr
wqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqByZXQgPSBk
cm1fZHBfZHBjZF9yZWFkYihhdXgsDQo+ID4gRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xP
Q0tfU1RBVFVTLCBzdGF0dXMpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChyZXQgIT0gMSkNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiArDQo+ID4g
K8KgwqDCoMKgwqDCoMKgcmV0ID0gZHJtX2RwX2RwY2RfcmVhZGIoYXV4LCBEUF9QQU5FTF9SRVBM
QVlfRVJST1JfU1RBVFVTLA0KPiA+IGVycm9yX3N0YXR1cyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKHJldCAhPSAxKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
cmV0Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqAqc3RhdHVzID0gKnN0YXR1cyAmIERQX1BT
Ul9TSU5LX1NUQVRFX01BU0s7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0K
PiA+ICt9DQo+ID4gKw0KPiANCj4gSSB0aGluayB5b3Ugc2hvdWxkIG1vZGlmeSAgcHNyX2dldF9z
dGF0dXNfYW5kX2Vycm9yX3N0YXR1cyBpbnN0ZWFkIG9mDQo+IGR1cGxpY2F0aW5nIG1vc3Qgb2Yg
aXQuDQoNCkRQQ0QgYWRkcmVzc2VzIGFyZSBkaWZmZXJlbnQgZm9yIHBhbmVsIHJlcGxheSwgSSBk
aWQgbm90IGdldCB0aGUgbmVlZCBvZiBpdC4gDQogDQo+IA0KPiA+IMKgc3RhdGljIHZvaWQgcHNy
X2FscG1fY2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoHsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkx
NShpbnRlbF9kcCk7IEBADQo+ID4gLTMwMzUsNyArMzA1NCw3IEBAIHBzcl9zb3VyY2Vfc3RhdHVz
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdA0KPiA+IHNlcV9maWxlICptKQ0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9
IGxpdmVfc3RhdHVzW3N0YXR1c192YWxdOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4NCj4g
PiAtwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTb3VyY2UgUFNSIHN0YXR1czogJXMgWzB4
JTA4eF1cbiIsIHN0YXR1cywNCj4gPiB2YWwpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHNlcV9wcmlu
dGYobSwgIlNvdXJjZSBQU1IvUGFuZWxSZXBsYXkgc3RhdHVzOiAlcyBbMHglMDh4XVxuIiwNCj4g
PiBzdGF0dXMsIHZhbCk7DQo+ID4gwqB9DQo+ID4NCj4gPiDCoHN0YXRpYyBpbnQgaW50ZWxfcHNy
X3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9k
cCkNCj4gPiBAQCAtMzA0OCwxOCArMzA2NywyMyBAQCBzdGF0aWMgaW50IGludGVsX3Bzcl9zdGF0
dXMoc3RydWN0IHNlcV9maWxlDQo+ID4gKm0sIHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgZW5hYmxlZDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMy
IHZhbDsNCj4gPg0KPiA+IC3CoMKgwqDCoMKgwqDCoHNlcV9wcmludGYobSwgIlNpbmsgc3VwcG9y
dDogJXMiLCBzdHJfeWVzX25vKHBzci0NCj4gPiA+c2lua19zdXBwb3J0KSk7DQo+ID4gLcKgwqDC
oMKgwqDCoMKgaWYgKHBzci0+c2lua19zdXBwb3J0KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoHNlcV9w
cmludGYobSwgIlNpbmsgc3VwcG9ydDogUFNSID0gJXMsIFBhbmVsIFJlcGxheSA9ICVzIiwNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJfeWVzX25vKHBzci0+c2lu
a19zdXBwb3J0KSwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJf
eWVzX25vKHBzci0+c2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCkpOw0KPiA+ICsNCj4gPiArwqDC
oMKgwqDCoMKgwqBpZiAocHNyLT5zaW5rX3N1cHBvcnQgfHwgcHNyLT5zaW5rX3BhbmVsX3JlcGxh
eV9zdXBwb3J0KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50
ZihtLCAiIFsweCUwMnhdIiwgaW50ZWxfZHAtPnBzcl9kcGNkWzBdKTsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgc2VxX3B1dHMobSwgIlxuIik7DQo+ID4NCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoIXBz
ci0+c2lua19zdXBwb3J0KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghKHBzci0+c2lua19zdXBw
b3J0IHx8IHBzci0+c2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCkpDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gPg0KPiA+IMKgwqDCoMKgwqDCoMKgwqB3
YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmRldl9wcml2LT5ydW50aW1lX3BtKTsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmcHNyLT5sb2NrKTsNCj4gPg0KPiA+IC3CoMKg
wqDCoMKgwqDCoGlmIChwc3ItPmVuYWJsZWQpDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHBzci0+
cGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHN0YXR1cyA9ICJQYW5lbCBSZXBsYXkgRW5hYmxlZCI7DQo+ID4gK8KgwqDCoMKgwqDCoMKgZWxz
ZSBpZiAocHNyLT5lbmFibGVkKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c3RhdHVzID0gcHNyLT5wc3IyX2VuYWJsZWQgPyAiUFNSMiBlbmFibGVkIiA6ICJQU1IxDQo+ID4g
ZW5hYmxlZCI7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ID4gQEAgLTMwNzIsMTQgKzMw
OTYsMTcgQEAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZQ0KPiA+
ICptLCBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZ290byB1bmxvY2s7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPg0KPiA+
IC3CoMKgwqDCoMKgwqDCoGlmIChwc3ItPnBzcjJfZW5hYmxlZCkgew0KPiA+ICvCoMKgwqDCoMKg
wqDCoGlmIChwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+ID4gVFJBTlNf
RFAyX0NUTChjcHVfdHJhbnNjb2RlcikpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBlbmFibGVkID0gdmFsICYgVFJBTlNfRFAyX1BBTkVMX1JFUExBWV9FTkFCTEU7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgfSBlbHNlIGlmIChwc3ItPnBzcjJfZW5hYmxlZCkgew0KPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwN
Cj4gPiBFRFBfUFNSMl9DVEwoY3B1X3RyYW5zY29kZXIpKTsNCj4gPg0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZW5hYmxlZCA9IHZhbCAmIEVEUF9QU1IyX0VOQUJMRTsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHBzcl9jdGxfcmVnKGRldl9wcml2
LA0KPiA+IGNwdV90cmFuc2NvZGVyKSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBlbmFibGVkID0gdmFsICYgRURQX1BTUl9FTkFCTEU7DQo+ID4gwqDCoMKgwqDCoMKgwqDC
oH0NCj4gPiAtwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTb3VyY2UgUFNSIGN0bDogJXMg
WzB4JTA4eF1cbiIsDQo+ID4gK8KgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiU291cmNlIFBT
Ui9QYW5lbFJlcGxheSBjdGw6ICVzIFsweCUwOHhdXG4iLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJfZW5hYmxlZF9kaXNhYmxlZChlbmFibGVkKSwgdmFsKTsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgcHNyX3NvdXJjZV9zdGF0dXMoaW50ZWxfZHAsIG0pOw0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJCdXN5IGZyb250YnVmZmVyIGJpdHM6IDB4
JTA4eFxuIiwgQEAgLTMyMjEsNg0KPiA+ICszMjQ4LDcgQEAgc3RhdGljIGludCBpOTE1X3Bzcl9z
aW5rX3N0YXR1c19zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwNCj4gPiB2b2lkICpkYXRhKQ0KPiA+
IMKgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IgPSBtLT5wcml2YXRlOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAoY29ubmVjdG9yKTsNCj4gPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCBzaW5rX3N0YXR1c1tdID0gew0KPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgImluYWN0aXZlIiwNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJ0cmFuc2l0aW9uIHRvIGFjdGl2ZSwgY2FwdHVyZSBhbmQg
ZGlzcGxheSIsIEBADQo+ID4gLTMyMzEsNDUgKzMyNTksODIgQEAgc3RhdGljIGludCBpOTE1X3Bz
cl9zaW5rX3N0YXR1c19zaG93KHN0cnVjdA0KPiA+IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0K
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgInJlc2VydmVkIiwNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJzaW5rIGludGVybmFsIGVycm9yIiwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgfTsNCj4gPiArwqDCoMKgwqDCoMKgwqBzdGF0aWMgY29uc3QgY2hhciAq
IGNvbnN0IHBhbmVsX3JlcGxheV9zdGF0dXNbXSA9IHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNlIGZyYW1lIGlzIGxvY2tlZCB0byB0aGUgU291cmNlIGRl
dmljZSIsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJTaW5rIGRldmljZSBp
cyBjb2FzdGluZywgdXNpbmcgdGhlIFZUb3RhbCB0YXJnZXQiLA0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaXMgZ292ZXJuaW5nIHRoZSBmcmFtZSByYXRl
IChmcmFtZSByYXRlDQo+ID4gdW5sb2NrIGlzIGdyYW50ZWQpIiwNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNlIGluIHRoZSBwcm9jZXNzIG9mIHJlLWxvY2tp
bmcgd2l0aCB0aGUNCj4gPiBTb3VyY2UgZGV2aWNlIiwNCj4gPiArwqDCoMKgwqDCoMKgwqB9Ow0K
PiA+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdHI7DQo+ID4gwqDCoMKgwqDCoMKgwqDC
oGludCByZXQ7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IHN0YXR1cywgZXJyb3Jfc3RhdHVzOw0K
PiA+DQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCFDQU5fUFNSKGludGVsX2RwKSkgew0KPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiUFNSIFVuc3VwcG9ydGVk
XG4iKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIShDQU5fUFNSKGludGVsX2RwKSB8fCBDQU5f
UEFORUxfUkVQTEFZKGludGVsX2RwKSkpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc2VxX3B1dHMobSwgIlBTUi9QYW5lbC1SZXBsYXkgVW5zdXBwb3J0ZWRcbiIpOw0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FTk9ERVY7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoH0NCj4gPg0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoY29ubmVjdG9yLT5i
YXNlLnN0YXR1cyAhPSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCkNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5PREVWOw0KPiA+DQo+ID4gLcKgwqDCoMKg
wqDCoMKgcmV0ID0gcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhpbnRlbF9kcCwgJnN0
YXR1cywNCj4gPiAmZXJyb3Jfc3RhdHVzKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAocmV0KQ0K
PiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ICvCoMKg
wqDCoMKgwqDCoGlmIChwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUzMiB0ZW1wOw0KPiA+DQo+ID4gLcKgwqDCoMKgwqDCoMKg
c3RhdHVzICY9IERQX1BTUl9TSU5LX1NUQVRFX01BU0s7DQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYg
KHN0YXR1cyA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1tzdGF0dXNdOw0KPiA+IC3CoMKgwqDCoMKg
wqDCoGVsc2UNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gInVua25v
d24iOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPQ0KPiA+IHBhbmVs
X3JlcGxheV9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoaW50ZWxfZHAsICZzdGF0dXMsDQo+
ID4gJmVycm9yX3N0YXR1cyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
IChyZXQpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gcmV0Ow0KPiA+DQo+ID4gLcKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiU2lu
ayBQU1Igc3RhdHVzOiAweCV4IFslc11cbiIsIHN0YXR1cywgc3RyKTsNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgdGVtcCA9IHN0YXR1cyAmIERQX1NJTktfRlJBTUVfTE9DS0VE
X01BU0s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRlbXAgPj49IERQX1NJ
TktfRlJBTUVfTE9DS0VEX1NISUZUOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAodGVtcCA8IEFSUkFZX1NJWkUocGFuZWxfcmVwbGF5X3N0YXR1cykpDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBwYW5lbF9yZXBs
YXlfc3RhdHVzW3RlbXBdOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbHNl
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIg
PSAidW5rbm93biI7DQo+ID4NCj4gPiAtwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTaW5r
IFBTUiBlcnJvciBzdGF0dXM6IDB4JXgiLCBlcnJvcl9zdGF0dXMpOw0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTaW5rIFBhbmVsIFJlcGxheSBzdGF0
dXM6IDB4JXgNCj4gPiBbJXNdXG4iLCBzdGF0dXMsIHN0cik7DQo+ID4NCj4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAoZXJyb3Jfc3RhdHVzICYgKERQX1BTUl9SRkJfU1RPUkFHRV9FUlJPUiB8DQo+ID4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBf
UFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJPUiB8DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfUFNSX0xJTktfQ1JDX0VSUk9S
KSkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1dHMobSwgIjpcbiIp
Ow0KPiA+IC3CoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc2VxX3B1dHMobSwgIlxuIik7DQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGVycm9yX3N0
YXR1cyAmIERQX1BTUl9SRkJfU1RPUkFHRV9FUlJPUikNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgc2VxX3B1dHMobSwgIlx0UFNSIFJGQiBzdG9yYWdlIGVycm9yXG4iKTsNCj4g
PiAtwqDCoMKgwqDCoMKgwqBpZiAoZXJyb3Jfc3RhdHVzICYgRFBfUFNSX1ZTQ19TRFBfVU5DT1JS
RUNUQUJMRV9FUlJPUikNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1
dHMobSwgIlx0UFNSIFZTQyBTRFAgdW5jb3JyZWN0YWJsZSBlcnJvclxuIik7DQo+ID4gLcKgwqDC
oMKgwqDCoMKgaWYgKGVycm9yX3N0YXR1cyAmIERQX1BTUl9MSU5LX0NSQ19FUlJPUikNCj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1dHMobSwgIlx0UFNSIExpbmsgQ1JD
IGVycm9yXG4iKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50
ZihtLCAiU2luayBQYW5lbCBSZXBsYXkgZXJyb3Igc3RhdHVzOiAweCV4IiwNCj4gPiBlcnJvcl9z
dGF0dXMpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGVy
cm9yX3N0YXR1cyAmIChEUF9QQU5FTF9SRVBMQVlfUkZCX1NUT1JBR0VfRVJST1INCj4gPiB8DQo+
ID4gKw0KPiA+IERQX1BBTkVMX1JFUExBWV9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IgfA0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBEUF9QQU5FTF9SRVBMQVlfTElOS19DUkNfRVJST1IpKQ0KPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1dHMobSwg
IjpcbiIpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAi
XG4iKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGVycm9yX3N0YXR1
cyAmIERQX1BBTkVMX1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUikNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNlcV9wdXRzKG0sICJcdFBBTkVMLVJF
UExBWSBSRkIgc3RvcmFnZQ0KPiA+IGVycm9yXG4iKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKGVycm9yX3N0YXR1cyAmDQo+ID4gRFBfUEFORUxfUkVQTEFZX1ZTQ19T
RFBfVU5DT1JSRUNUQUJMRV9FUlJPUikNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHNlcV9wdXRzKG0sICJcdFBBTkVMLVJFUExBWSBWU0MgU0RQDQo+
ID4gdW5jb3JyZWN0YWJsZSBlcnJvclxuIik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlmIChlcnJvcl9zdGF0dXMgJiBEUF9QQU5FTF9SRVBMQVlfTElOS19DUkNfRVJST1Ip
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFf
cHV0cyhtLCAiXHRQQU5FTC1SRVBMQVkgTGluayBDUkMNCj4gPiBlcnJvclxuIik7DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0ID0gcHNyX2dldF9zdGF0dXNfYW5kX2Vycm9yX3N0YXR1cyhpbnRlbF9kcCwNCj4gPiAmc3Rh
dHVzLCAmZXJyb3Jfc3RhdHVzKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aWYgKHJldCkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiByZXQ7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBzdGF0dXMgJj0gRFBfUFNSX1NJTktfU1RBVEVfTUFTSzsNCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWYgKHN0YXR1cyA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQ0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gc2lu
a19zdGF0dXNbc3RhdHVzXTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxz
ZQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Ry
ID0gInVua25vd24iOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c2VxX3ByaW50ZihtLCAiU2luayBQU1Igc3RhdHVzOiAweCV4IFslc11cbiIsIHN0YXR1cywNCj4g
PiBzdHIpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3By
aW50ZihtLCAiU2luayBQU1IgZXJyb3Igc3RhdHVzOiAweCV4IiwNCj4gPiBlcnJvcl9zdGF0dXMp
Ow0KPiA+DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChlcnJvcl9zdGF0
dXMgJiAoRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SIHwNCj4gPiArDQo+ID4gRFBfUFNSX1ZTQ19T
RFBfVU5DT1JSRUNUQUJMRV9FUlJPUiB8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQX1BTUl9MSU5LX0NS
Q19FUlJPUikpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzZXFfcHV0cyhtLCAiOlxuIik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGVsc2UNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHNlcV9wdXRzKG0sICJcbiIpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpZiAoZXJyb3Jfc3RhdHVzICYgRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SKQ0KPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VxX3B1dHMobSwgIlx0
UFNSIFJGQiBzdG9yYWdlIGVycm9yXG4iKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKGVycm9yX3N0YXR1cyAmDQo+ID4gRFBfUFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJM
RV9FUlJPUikNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHNlcV9wdXRzKG0sICJcdFBTUiBWU0MgU0RQIHVuY29ycmVjdGFibGUNCj4gPiBlcnJvclxu
Iik7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChlcnJvcl9zdGF0dXMg
JiBEUF9QU1JfTElOS19DUkNfRVJST1IpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiXHRQU1IgTGluayBDUkMgZXJyb3JcbiIp
Ow0KPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gDQo+IEluc3RlYWQgb2YgZHVwbGljYXRpbmcgc28g
bXVjaCBoZXJlIEkgdGhpbmsgaXQgd291a2QgYmUgb2sgdG8ganVzdCBkcm9wIFBTUg0KPiBhbmQg
ZG8gKHNhbWUgYXBwbGllcyBmb3IgYWxsIHRoZSBzdGF0dXNlcyk6DQo+IA0KPiANCj4gaWYgKGVy
cm9yX3N0YXR1cyAmIChEUF9QU1JfTElOS19DUkNfRVJST1IgfA0KPiBEUF9QQU5FTF9SRVBMQVlf
TElOS19DUkNfRVJST1IpKQ0KPiAgICAgc2VxX3B1dHMobSwgIlx0TGluayBDUkMgZXJyb3JcbiIp
Ow0KPiANCj4gV2hhdCBkbyB5b3UgdGhpbms/DQoNClRoaW5raW5nIG9mIGJhY2t3YXJkIGNvbXBh
dGliaWxpdHksIEkgaGF2ZSBhZGRlZCBzZXBhcmF0ZWx5IGZvciBwYW5lbCByZXBsYXkuDQpJIGZl
ZWwgZ29vZCB0byBoYXZlIHNlcGFyYXRlIGNsZWFudXAgcGF0Y2ggZm9yIHBzciBhbmQgcGFuZWwt
cmVwbGF5IHRvZ2V0aGVyLCBub3QgcGFydCBvZiB0aGlzIHBhdGNoLg0KDQo+IA0KPiANCj4gPiDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiDCoH0NCj4gPiDCoERFRklORV9TSE9XX0FU
VFJJQlVURShpOTE1X3Bzcl9zaW5rX3N0YXR1cyk7DQo+ID4gQEAgLTMyODgsMTMgKzMzNTMsMTYg
QEAgdm9pZCBpbnRlbF9wc3JfY29ubmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdA0KPiA+IGludGVs
X2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBkZW50cnkgKnJvb3QgPSBjb25uZWN0b3ItPmJhc2UuZGVidWdm
c19lbnRyeTsNCj4gPg0KPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChjb25uZWN0b3ItPmJhc2UuY29u
bmVjdG9yX3R5cGUgIT0NCj4gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChjb25u
ZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgIT0NCj4gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkN
Cj4gPiB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghKEhBU19EUDIw
KGk5MTUpICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Y29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlID09DQo+ID4gRFJNX01PREVfQ09OTkVDVE9S
X0Rpc3BsYXlQb3J0KSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybjsNCj4gPiArwqDCoMKgwqDCoMKgwqB9DQo+IA0KPiBXaHkgZG8geW91
IG5lZWQgdG8gY2hlY2sgRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0ID8gSSB0aGluaw0K
PiBjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgIT0gRFJNX01PREVfQ09OTkVDVE9SX2VE
UCAmJg0KPiAhSEFTX0RQMjAoaTkxNSkgaXMgZW5vdWdoLg0KDQpBcyBwZXIgeW91ciBzdWdnZXN0
aW9uLCB0aGUgY29kZSB3aWxsIGxvb2sgbGlrZSBiZWxvdzoNCg0KICAgICAgICBpZiAoY29ubmVj
dG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlICE9IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFAgJiYgIUhB
U19EUDIwKGk5MTUpKQ0KICAgICAgICAgICAgICAgIHJldHVybjsNCg0KRm9yIGV4YW1wbGUgaW4g
Y2FzZSBvZiBoZG1pIGNvbm5lY3RvciB0eXBlIGluIE1UTCBzdGlsbCB3ZSBnbyBhaGVhZCBhbmQg
Y3JlYXRlIGRlYnVnZnMgZW50cnkuLi4gcnQ/IFBsZWFzZSBsZXQgbWUgaWYgSSBhbSBtaXNzaW5n
IGFueXRoaW5nLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KIA0KPiANCj4gQlIsDQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXINCj4gPg0KPiA+IMKgwqDCoMKgwqDCoMKgwqBkZWJ1Z2ZzX2NyZWF0ZV9maWxl
KCJpOTE1X3Bzcl9zaW5rX3N0YXR1cyIsIDA0NDQsIHJvb3QsDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3RvciwgJmk5MTVf
cHNyX3Npbmtfc3RhdHVzX2ZvcHMpOw0KPiA+DQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKEhBU19Q
U1IoaTkxNSkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKEhBU19QU1IoaTkxNSkgfHwgSEFTX0RQ
MjAoaTkxNSkpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlKCJpOTE1X3Bzcl9zdGF0dXMiLCAwNDQ0LCByb290LA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29ubmVjdG9yLCAmaTkxNV9wc3Jfc3RhdHVzX2ZvcHMpOw0KPiA+IMKgfQ0KDQo=
