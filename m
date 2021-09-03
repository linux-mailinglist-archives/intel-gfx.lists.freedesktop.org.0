Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6233FFFF9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 14:48:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C676E88F;
	Fri,  3 Sep 2021 12:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC536E88F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 12:48:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="304976024"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="304976024"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 05:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="447587236"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 03 Sep 2021 05:48:21 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 05:48:20 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 05:48:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 05:48:20 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 05:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K5GrOZW0rKP6NCtCkBGIn4NhiD2GR9MIC0jpYKxfD9t7QLLEIK6/dlTbWZkzMg0WyIM6JeAt5F1XhxbsZTMZpfL8kWBO9hWxdsGdHqDTR15DM1rYZo+woe2PmCp00zhUJ/cCce+co/sU7StFi9HoUtWBXZfY1jGij9njSFf98++mTzg/CouravVkKYCdUaQz0SI1JdwHPmG7IqYV/LXDiKitPlX6eHmLZ3qAi1SfX7zKdeDjePxHdfmPv63Een194NGc5XgSU//usNx4WTGAEZhhmj9QseCG4hAup8vOo0phitlqoPDtfuckDMwc9zeTrZrPMxOPUKM7UrKbnPrW8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=8CbEoRKB/4yeaJNHHb+kQICoSZkV+9K57agXLiXe9to=;
 b=OI6nnR4KR6jE95SDzjAQHUs00zlNsV7XufrXqFQNcoPed7MKrR6NJxphd1yvNTC6zhR6WVpIxr0iniI+x0fDfgAWm9SNaemYv2SRuAiev+w5envHaCf80QeDUqUqKUtUOLobcR/HbMC1NtssaOcBvBdC05neaLrO4OHmpPlHmwB46YOzhR3gcQq9jWeGmFNeqMDUVjo9ZqPDZqnx+Bcq1Lp9CSjg1CFWjMUxqowMePyDvuSkqUeaLv7h6YuPBVmV3xGDPurD3vRRVxqIl5sE4kJ0KDO27zwKuYDSie0DSlafpra0ag9IJPEgqWYQZMkn9uNxZCqJCvxHwDDWNKHqKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8CbEoRKB/4yeaJNHHb+kQICoSZkV+9K57agXLiXe9to=;
 b=DRnedhTj0ZBKjkg1o4nxKMR5q/t5KVY2s6X98EYnRbjPrTfpVJGuyUte3WZN/NbT+/WE2SQAZUt/lNQzf2yqobMutkoF21e2ely6dNppv6XUilpW5ztuS9icO2HHDv2N+wUX8WEoxA14DotEwRebpYCD8EuYFcQB0dI+H8TrMsU=
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.21; Fri, 3 Sep 2021 12:48:19 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::1b3:4f2d:67a3:1a20%2]) with mapi id 15.20.4478.022; Fri, 3 Sep 2021
 12:48:19 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: wi nk <wink@technolu.st>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] i915 with Dell XPS 9310
Thread-Index: AQHXoMCf7SAIPdFUrkiVXW/4MoJTUquSQjJg
Date: Fri, 3 Sep 2021 12:48:19 +0000
Message-ID: <DM8PR11MB5655134A3FE9FA0554899669E0CF9@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <CAHUdJJUuzSNQv4R4grM7ezwV3rn844CNM=-keYsKz9_0wYXCvQ@mail.gmail.com>
In-Reply-To: <CAHUdJJUuzSNQv4R4grM7ezwV3rn844CNM=-keYsKz9_0wYXCvQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: technolu.st; dkim=none (message not signed)
 header.d=none;technolu.st; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5656f2bb-ddf8-44de-2964-08d96ed91b32
x-ms-traffictypediagnostic: DM8PR11MB5624:
x-microsoft-antispam-prvs: <DM8PR11MB5624330A642DB67561CC7336E0CF9@DM8PR11MB5624.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RPQkMyVaWZZCENs/iS3K45yabaNfA2EMZsWq1Y6yQuz6GGF7wGU48lAATfMnah/mUo2c5MGPRdaPeIfR2OA/VJGSKMHCmsmfwpGh8ggr3DdhaT1YTO9kR/vK9k4LPZPFSAKnNpYd5QFEDhj2UpIE5O2DgDzkON9eNjuZGDBKrY9U1p2CP+DvC460RYaxTYzRUlyNZDI4GEQg0ihJILHLUh2DMe4vl99BhBCNvp6uLuqhT8ZU4arrAz8m/9+/jMVh8TwoSH/zCpIl/cBcPLI5BIojaQYD02naj0U3M94rigMV2ICk6e4Coo+Bylc7qKScVOY8upHI2PJCPZs1R9pA6o78iTLcRvk5q9oWF603jRS3E302gyPgNGoPGoptArVs8SQhyRhoXpAdDvulL6/mdnSZwQq6SZx50IO3unBREevmLXRMz4KZFLD4bI1TULYCPHfYuPZhylgV/VCjQlnG38R3FfVLfVgDsOdVxaJ4kAUWRCBOX2oA7R/o2Dzwd8qxRzvmhyDVU7KxvpoqjsSBcn5mp8c2cTkQCjliiIlBAHb3PrlGWebXG8GAbtZrxyUjs7dQEM/mNGKb+lh3qpHsg0q/dJzfRgqMHRPTzSYOFi2AJIcuBSkW+ltCd+W4PTRALcfL/PYhsLvFGPpsJBh7mWRJdMWV0L1Np+T5gNKdYjWqxI3Lvi09yJR8wrDPblOb8tcqt1aXdIRf7USh8LvtP3hJUUTUDw4Z+SQHa4+Caycx8UFbpXMc4HL+d3yE1ECEQyvvSFPXgIq0Ov7tDd5xG7TMp6wTnJ1yNqLbhUKuGKE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(346002)(136003)(39860400002)(376002)(66946007)(186003)(55016002)(478600001)(110136005)(122000001)(38100700002)(86362001)(9686003)(7696005)(6506007)(71200400001)(52536014)(8676002)(38070700005)(2906002)(64756008)(5660300002)(83380400001)(26005)(33656002)(66476007)(316002)(66446008)(76116006)(66556008)(966005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWZmdlZPSklCYSsyZWkwRnI4TjNDazZhL3F6dS9pZUJiQjFXMFNSVEdQR293?=
 =?utf-8?B?MUxucmlNSVRYdE5EaXU1ZHZMK2xzMlRiWHNseDZzc1VWUFpvYXZ6azdLd3dC?=
 =?utf-8?B?ZndTd1V0U1oxMzRMcmYySHlsMXhmZjNqVXlZNUh2STV0QnpSaCt6YTNlYy85?=
 =?utf-8?B?TG9LanJIcUlkc2RQK2JIZ28rMVNLak5mRVNXK3d4ZDBtY2pzZHVpcFpmK3RG?=
 =?utf-8?B?RTRpOEZrWmNtS0dLMkpZUnZzQTBqQWF3ZXNHUWpFZE5qUUNZOU5jWjhVV0dO?=
 =?utf-8?B?cDIvbTBLd3dLODkwR2hLMDJGNmRzOGNoa2Vld1hLekQ0c2ovK2NwL0Q1MmF3?=
 =?utf-8?B?MktjRzhQMWk4VzFvZjBSbjZ3QmlvYUt6d0xkVFBBRWs4dC9VRVF4bGF3ZFhW?=
 =?utf-8?B?WnFOZkllby9JTHo3WWQvdkNiNzRqREFVamthSEw1Q1N1UW84U1VuNDhHV3VB?=
 =?utf-8?B?eSs3VGJPcytxU2hhQXpvQVhHemg3enI2TGx4SFZKNXpHckN5S0NsdmJJNzRZ?=
 =?utf-8?B?VU5SMDNoQk5SM1BDVDBQQVIyVlRuaEM3ck9HK2FITzRwbVpweVZaSmNaYkVa?=
 =?utf-8?B?UjVDSHpTUkloQy9IemlkN0dPK0VSYnBOQ3h1NVZvcndpRjhNZ0tuMzYxYy80?=
 =?utf-8?B?bVI3YXJpMWJtNW9YV0NzeUdvMmVFRnpmR09jRmw3Z084VFFPYzFmS25iQkFt?=
 =?utf-8?B?ZlhOT2lMSzc0cVI1NG1KYTgzdXBseFVMOXl2TFdtUE9mbnIyTkFlUVBOcTM2?=
 =?utf-8?B?Yjl3czEyazczcEZ6MzVUYnc4MnByd0pIaGtCQ25COTZZS0VBL2hzSC9XRmdR?=
 =?utf-8?B?MmJWUExOSUFYMHowOVl0K1hKTFFyVHdDV25ZcUF2RUFuTUo1SkhvZmgxTzV5?=
 =?utf-8?B?cTRXd0JSSjVjM2k0Ylh0RnBEelEweVdrU1MzMHhEQjBhQWpNM2xmaERmckZn?=
 =?utf-8?B?ZVl2di82L1lFNmc4cW14WGJGZExBbjY0KzBlOU95bDZOckgzdTdKRGphUmpk?=
 =?utf-8?B?Yk1kSjZrOERBL3o0ZzVJbnZyMlNBdnRQMG1rQTNwL3VFS3V3cnViM0xtMXE3?=
 =?utf-8?B?cktCeWFodUJDZ2tHUTgrYzM1Y0NTVk05cmtxQ3Npam5tSnd2WXJnZlMwVG5T?=
 =?utf-8?B?VERwb2VYanBudHI5OGlqME1OTzZ0MGhDWUJOdDY3Tm9Tdzk2QmY5Z0MxVWdn?=
 =?utf-8?B?TStpc0V3U3hMYnJlSnE1NEFXVW9vbmFSZmowUGVqV0h5WVNXb0I1a0o0YVFn?=
 =?utf-8?B?UjFmdzYyWS82ZTdlSytsYWtuNkdZeHcvRjg5c082V2ozMVpORHpwUnIxMnpi?=
 =?utf-8?B?OTJlRjh5eXJuTGZQbkcxSnlFY0k0T21ZUTU2VTY5RDdhaWNyazZrN0pyR2c3?=
 =?utf-8?B?R2FRVHlCbUJrWUJUcXNpL3J0a3NGNG8xc2tnT3FrbXdFODkyZmVUc3BqOTRN?=
 =?utf-8?B?SlBnVnFrOWhKZmdsSkJLZFFSZUJrbzNLTW4yNzN3Tk9xRVVpYkxvQkZRNHUz?=
 =?utf-8?B?Y1F2R0o5cDlVVDBJSkFBVmc2Ym44NVJ1VndwSm12RVZDU3hMcDhGelpTdGpl?=
 =?utf-8?B?ZXNqaHVzQTNoY0RzRFJjNXh2Tys0K0pqWjQxMUV3Y1Z6c2JXczIrYXRJSXRl?=
 =?utf-8?B?SEtjak8reVk4aEk4YkFRdkw2Lzhnem0zMGNzaFBpVVRoS21lWmJSSzVvMUpi?=
 =?utf-8?B?UmMxMENqaVFtMGRQY1Jwc29XODNCUXVWZGZ1MG1FbGR3NnE0MWZoeXdKR29W?=
 =?utf-8?Q?VDL9VOpjI8m+p1CU+g=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5656f2bb-ddf8-44de-2964-08d96ed91b32
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 12:48:19.2119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DQ2PWs8NUHbnXE/VMsgrmAEXKF6eCIuUh8it6FuRhqz4pIgLsQnMhHh3dZOBpnntsgZFPRewSFc/MwnlDF2hgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] i915 with Dell XPS 9310
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

SGksIA0KUGxlYXNlIHJlcG9ydCBhY3R1YWwgYnVnIHVzaW5nIGluc3RydWN0aW9uczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL3dpa2lzL0hvdy10by1maWxlLWk5
MTUtYnVncyA/DQoNCkJyLA0KSmFuaSBTYWFyaW5lbg0KSW50ZWwgRmlubGFuZCBPeSAtIEJJQyAw
MzU3NjA2LTQgLSBXZXN0ZW5kaW5rYXR1IDcsIDAyMTYwIEVzcG9vDQoNCg0KDQo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2Ygd2kgbmsNCj4gU2VudDogcGVyamFu
dGFpIDMuIHN5eXNrdXV0YSAyMDIxIDE1LjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIGk5MTUgd2l0aCBEZWxsIFhQUyA5MzEw
DQo+IA0KPiBIZWxsbyBhbGwsDQo+IA0KPiAgICBJJ3ZlIGJlZW4gZm9sbG93aW5nIHJlY2VudCBr
ZXJuZWxzIG9uIHRoaXMgZGVsbCBsYXB0b3AgZm9yIGFsbW9zdCBhIHllYXIgbm93IHRvIHdvcmsN
Cj4gdGhyb3VnaCBzb21lIGlzc3VlcyB3aXRoIHRoZSBhdGgxMWsgbW9kdWxlLiAgSSd2ZSBiZWVu
IGV4cGVyaWVuY2luZyByYW5kb20NCj4gb2NjYXNpb25hbCB2aWRlbyBhcnRpZmFjdHMgZm9yIG1v
c3Qgb2YgdGhhdCB0aW1lLiAgVGhlc2UgYXJ0aWZhY3RzIHdvdWxkIGNhdXNlIHRoZQ0KPiBpOTE1
IG1vZHVsZSB0byByZXBvcnQgc29tZSBraW5kIG9mIHVuZGVycnVuIChzb3JyeSBJIGRvbid0IGhh
dmUgdGhvc2UgbG9ncyBhbnkNCj4gbG9uZ2VyKS4gIEF0IHNvbWUgcG9pbnQgYXJvdW5kIDUuMTAg
dGhlIGFydGlmYWN0cyB0dXJuZWQgaW50byBmdWxsIHBhbmljcyB0aGF0IG5lZWRlZCBhDQo+IHJl
Ym9vdCBpbnN0ZWFkIG9mIHNvbWUgd2FpdGluZyBhbmQgamlnZ2xpbmcuICBLYWxsZSByZXBvcnRl
ZCBoZXJlOg0KPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvYXRoMTFrLzIw
MjEtQXVndXN0LzAwMTQ1MS5odG1sDQo+IHRoYXQgdGhlcmUgd2FzIGEgY29tbWl0IGhlIGNvdWxk
IHJldmVydCB0byBmaXggaXQuICBJIHdhcyB1bmFibGUgdG8gcmVwcm9kdWNlIHRoYXQgZml4DQo+
IGJ5IHJldmVydGluZyBpdC4NCj4gDQo+IEknbSBub3cgcnVubmluZyA1LjE0LjAgYW5kIGl0IHNl
ZW1zIHRvIGhhdmUgY2hhbmdlZCBiZWhhdmlvciBhZ2Fpbi4NCj4gSW5zdGVhZCBvZiB0aGUgbWFj
aGluZSBoYXJkIGxvY2tpbmcgKGllOiBubyBjYXBzIGxvY2sgZXZlbiksIGl0IHNlZW1zIHRvIHJl
Y292ZXIgYWZ0ZXINCj4gYSBiaXQgYW5kIHRoZW4gSSBjYW4gc2VlIHRoaXMgaW4gZG1lc2c6DQo+
IA0KPiBbMjI2Mzg3LjE1MjIzNF0gRE1BUjogRFJIRDogaGFuZGxpbmcgZmF1bHQgc3RhdHVzIHJl
ZyAzIFsyMjYzODcuMTUyMjQ0XSBETUFSOg0KPiBbRE1BIFdyaXRlIE5PX1BBU0lEXSBSZXF1ZXN0
IGRldmljZSBbMHgwMDoweDAyLjBdIGZhdWx0IGFkZHIgMHhmMGFmYzAwMCBbZmF1bHQNCj4gcmVh
c29uIDB4MDddIE5leHQgcGFnZSB0YWJsZSBwdHIgaXMgaW52YWxpZCBbMjI2NDAyLjA1ODg1N10g
aTkxNSAwMDAwOjAwOjAyLjA6DQo+IFtkcm1dIEdQVSBIQU5HOiBlY29kZSAxMjowOjAwMDAwMDAw
IFsyMjY0MDIuMDU4ODc2XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0NCj4gUmVzZXR0aW5nIHJj
czAgZm9yIHN0b3BwZWQgaGVhcnRiZWF0IG9uIHJjczAgWzI3NjM1My41OTA5MjJdIGNsb2Nrc291
cmNlOg0KPiB0aW1la2VlcGluZyB3YXRjaGRvZyBvbiBDUFU0OiBocGV0IHJldHJpZWQgMiB0aW1l
cyBiZWZvcmUgc3VjY2Vzcw0KPiANCj4gPHNuaXAsIGxhdGVyPg0KPiANCj4gWzM0NTMxMi45NjMw
NjVdIERNQVI6IERSSEQ6IGhhbmRsaW5nIGZhdWx0IHN0YXR1cyByZWcgMyBbMzQ1MzEyLjk2MzA3
N10gRE1BUjoNCj4gW0RNQSBXcml0ZSBOT19QQVNJRF0gUmVxdWVzdCBkZXZpY2UgWzB4MDA6MHgw
Mi4wXSBmYXVsdCBhZGRyIDB4ZjIxZWMwMDAgW2ZhdWx0DQo+IHJlYXNvbiAweDA3XSBOZXh0IHBh
Z2UgdGFibGUgcHRyIGlzIGludmFsaWQgWzM0NTMyMy44MTQ1ODNdIEFzeW5jaHJvbm91cyB3YWl0
IG9uDQo+IGZlbmNlDQo+IDAwMDA6MDA6MDIuMDpnbm9tZS1zaGVsbFsyNzA3XToxYTE1YTYgdGlt
ZWQgb3V0DQo+IChoaW50OmludGVsX2F0b21pY19jb21taXRfcmVhZHkgW2k5MTVdKSBbMzQ1MzI3
LjY3MjU4MV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dDQo+IEdQVSBIQU5HOiBlY29kZSAxMjox
Ojg1ZGZmZmZiLCBpbiBzaWduYWwtZGVza3RvcCBbMjYwNTFdIFszNDUzMjcuNjcyNjA2XSBpOTE1
DQo+IDAwMDA6MDA6MDIuMDogW2RybV0gUmVzZXR0aW5nIHJjczAgZm9yIHN0b3BwZWQgaGVhcnRi
ZWF0IG9uIHJjczAgWzM0NTMyNy42NzI2NTZdDQo+IGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSBz
aWduYWwtZGVza3RvcFsyNjA1MV0gY29udGV4dCByZXNldCBkdWUgdG8gR1BVIGhhbmcNCj4gDQo+
IEknbSBub3Qgc3VyZSB3aGF0IHRoZSBETUFSIG1lc3NhZ2VzIGFyZSBhYm91dCwgSSBpbmNsdWRl
ZCB0aGVtIGluIGNhc2UgdGhleSdyZQ0KPiByZWxldmFudC4gIEhvdyBjYW4gSSBkZWJ1ZyB0aGlz
IGZ1cnRoZXI/ICBJJ2xsIGdsYWRseSBlbmFibGUgd2hhdGV2ZXIgaXMgbmVlZGVkIDopDQo+IA0K
PiBUaGFua3MhDQo=
