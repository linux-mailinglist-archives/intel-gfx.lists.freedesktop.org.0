Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52FE6C3137
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 13:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12C410E1C9;
	Tue, 21 Mar 2023 12:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5238610E1C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 12:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679400403; x=1710936403;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bNYbYTra8gu05TpptpwEyhgXFXgvQlGyqE/p9/IP4g0=;
 b=UwZGTMl9As18w5xP/zv6ddE8xH6oiYECj9uUvGYhYpy+FpE9HT8u+xKJ
 /hqvcLf84ArPDGYbu/Nd0VFUapZoN9h+cZhFekorZhmQ+6YCbaBwkDtWQ
 XIh8xoQKTUEKp7LtUIDNktuAoYE+FzcI0mKlHXutSewqlyijV/MUtxnys
 AibqCqgXKAAtgCcDSBjC10HBgITWUQkE11qJj7IAHuYcSe7exMm40Lpwl
 ya9WSeQlJrEQu4EfzNQT9r1v+qhirhqV7lc07oQbdHelyG8vyNXHjLvDF
 Mo8bBb5SkCqFgb7djkYuLbDAgvs8zl6HQMYxDe6MLCXSJVatWcVdGVOvn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327297435"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="327297435"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 05:06:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770606072"
X-IronPort-AV: E=Sophos;i="5.98,278,1673942400"; d="scan'208";a="770606072"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Mar 2023 05:06:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 05:06:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 05:06:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 05:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QP7I1Rw12ZjwI4mzHpulVx41YT9aZMYsT2BLuKjDwLBc1MmTj3mGQaDYnIi00oNBR97ewvwn8f0rD+548kfphduXvhYNvm5KZwceP1BLhsshYW6tmv4sMz+ftLlx3q+IvQt24ik3bvHJ9x/Stfp7+fw2GVdYwHS8lBDp/r3K6WoRzXljON+vdyOeZVGQJZHTThWHUzTnDkG+lBTs6NBPHerb52/DOXjArOZtJnctYf8nkkbkvpfsIDJZfkZtp29bGSC0iQoPZzpP2mHKBbgt4OIG2VffiFjI1eXdMwoTNO4GfvR0WcLIOJGKumlXLmxe3brJ72PNw2Yx3sewg235ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bNYbYTra8gu05TpptpwEyhgXFXgvQlGyqE/p9/IP4g0=;
 b=fUn9K4Zk6QTAnEzpyxDgXD/5WBYmuWCv2lUmEOJHD3T/uhfnl5SuQ/bjRTbBbXziOl4j9pYLVLiYN7kVZyq6reZ/Mg7PKqfYmC/IbhQMTfjVo9rI44SbltwP8Y37kNoR7k/3WxX9HilJgOGOqHAhwsydfxV6A2QnsIw5PMyoZ8UCEGW3ONZDjjs2LL4qiKYFmfLLlThJqy/c70EkVHMn69J7bG0b721DBsNY8pMH96E7MmFMyH1d/fURhwDBJq4FSvr1TYOj8yb2+zdtZuu95FW1aDSWGW0bHokeSff6DTl2pj0QT9LlqUmtvmguz1UhrRrhafupO+dvTeIKSVm5ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB5094.namprd11.prod.outlook.com (2603:10b6:510:3f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 12:06:39 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 12:06:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref init
 for DP MST during HW readout
Thread-Index: AQHZWA9VmKNOlkLVNE+T4Jz4oHXpE68FKdlw
Date: Tue, 21 Mar 2023 12:06:38 +0000
Message-ID: <MW4PR11MB7054FE3F9F2904F694633EEEEF819@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-3-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB5094:EE_
x-ms-office365-filtering-correlation-id: 7f7db027-2162-4388-3a4e-08db2a04b9d9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hw0BxBLO9da/zFhg7VA7nJ/Osfik288YLdAbW0B3XBzy0ojQPBJ1gBL1evFXBZmfd74ZTvCSHkH10j8nYC/jHKpujimKruVDi4sojySX0/qk24MAqDKT7jUgDI9CaeFTqleZxjufGJ5W+og5fHuyo5xa/vvT+HWqIzedWYn8mGvtmtuQJ4PM40/3qohOGTTmkX7tVIEoWokySrnIFivj2g1HHpzsDCBwjMpNGed/EZJi1V3nNDGkX8TqS1ZgDt7FnTKxtrKt1vi7sOgF9M4XvaadLn/U5oMbO3MipZSw2h0mkrCLaAi6zWUGuTQvyt0sjEv7e1dVYa3SrilskG4rqHO/UcJUSPfgRchnUz1blKRhUnGpHvrLfHYeZbTc/+BaXTueETG6HvQSDk0i2pyCV+jEq7eeAshJczDzllINQIqdWBoPT04pBmnAOLiR50A4l6r5dPTsMZm38P1rlNC0Q5PLLx8G1gP0ZIBVqmtJvjxZcLBU4JgaO1iZnDZ1BoOMkuzt/Xn4bkIkFkOE72pwcWWb3FbGOzuXoxKdjuD33dQ/dhxk5O7ZtNe2py/4YV1aUu9pqmEEFS4hTODwPnpp85GRn4TrkGPJBCXPRy+ZmiPtrKcCOmk8UdyNfm6VfZqLwkMtXO4/5stlrqbAVk4hOaJU+mXL0CCYAUQ7/bI3ulzvd+Zv9DBwin14Ibzfz+YfevGzDMBZR5leEbrZid/frQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(396003)(346002)(136003)(451199018)(53546011)(110136005)(26005)(6506007)(316002)(64756008)(71200400001)(66556008)(83380400001)(76116006)(186003)(66476007)(9686003)(66946007)(478600001)(66446008)(8676002)(52536014)(8936002)(5660300002)(82960400001)(2906002)(122000001)(41300700001)(38070700005)(7696005)(38100700002)(86362001)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHJMS3dpcnpadWJ4NWdlRFV4QXI3eWZwZVR3RnFhMkx1SXAxR2Q3Z2JucEpQ?=
 =?utf-8?B?YXR0Z0crTXBJQkFXRFFVUSt1MWlMZDl6RzczNENtb0M4dFBaSXRGSGdsOHRS?=
 =?utf-8?B?T1ZGeHdybGNqRWx0NjhwcnhraDlhZk5mNi9FdFpZb3E3YlJCSWxIM1BsdVdR?=
 =?utf-8?B?NGJkYnlvWUlWdCtadnpPWFprSlc1dE9tNFdjbnlVYlpob3hwTDBqMDJvV0Vl?=
 =?utf-8?B?TVpwNW8vMVFSY0ZZM0dmV2svMnN5MUNNcWZFalBDWWJHbWtGMWt1VjUrdlNt?=
 =?utf-8?B?cldrVFdnQmVxNzFFSktqdy9uVGl2U2tQRGVrQ3IwNHFsTkx5djNZbnZRWU15?=
 =?utf-8?B?bXNUaEp0aU5JekE4dWRmaTJWZVBUVmM2dGxxclpnelo4bldmMVNnWjlleHdO?=
 =?utf-8?B?NkxVN0VOTmFsVFo5QnMybkpLYTdpb3h2VU1HQ2thTVJsUzNlVFE4bGZ5MWJx?=
 =?utf-8?B?dDdWYlRaTldFNkhkcFEzVUxCMUlBbDhBcG8wWkczRDd5UTdEYWtXRzl4OUxk?=
 =?utf-8?B?ODdlNEFKcWFpODRIbmZxUHorNGNuQldjZ21sellzOVZLMnQ2WlNhU2xlZDZD?=
 =?utf-8?B?YTZXZmQwMTNnaFZjZUJuNmpMRXFOUnJ6TU52U3h0T0JRWDVYY3BSQXlFU1RT?=
 =?utf-8?B?WGF2amlhN3cveTlVaFlyWFJBUTdWOHdmR1pCZERjMEJKTEFZOENhLzR0U1pZ?=
 =?utf-8?B?aGlnai9UbGMzUnhDL0NNc3FXRTVuaGRqS0s5Nmt4NzJSVC9oaUtvL0lJWVhj?=
 =?utf-8?B?Mks1S0JkeitjUTY1MndNWUs0RmxZenVOdHNiR1g3UmxyajA5Y1oyanJPQU1F?=
 =?utf-8?B?dFVmdDlpWXlyS05wcjM5UUJ1Nng1aVFKVWUvQXNLcExYVmx6NkdmUXdUamd4?=
 =?utf-8?B?bzd5SmdlaUFDZUk3T2hhTVh2aXkzdjFYT1dzOGFZcmtkOUZFN2lVeTc2OUdQ?=
 =?utf-8?B?WnRIeTh3VEpHaVllUm5PRU5aR1hqbmhMb29tbHlYZEl2M1lVTEFqa3dHaENS?=
 =?utf-8?B?ZERuMURKRWlZV2tuZTB1K2ZjV0V6dmxVNy90SmhYN3ZtaUJWeHhIY253S05N?=
 =?utf-8?B?QS9SenZYQUt2ZlZueTJlUldRTXBWbnJOT291K1hNb2ZsRlBuWG1wU1Bjb3ZI?=
 =?utf-8?B?cU1jK0ZhSmVjV2tIeXloZEQwcnZhOXEybnNHMklibGVTamRGczNOSStoS1l2?=
 =?utf-8?B?RGNCT1c2YzJFWlhwNnBaUE0xdDJaY0IwOVFBeEgzRDRPSGFkb2FrUmVIUkRx?=
 =?utf-8?B?Zkx5aTVyb1Y5UGlHZmh6OERHTDExZzlaZ292cHNRTXR3Mnp1b3I0cC9nOFFk?=
 =?utf-8?B?SEtzemQ2ZUVjRnVuMnhXMFpVODNsUEZlempMWW1oUXh6WXZqbDhNR0tYbUdw?=
 =?utf-8?B?ekRtMDRHUytCZEtBeVluKzZGR0o1dVlwcUFmaEs2TUU4eE1nTFVaR0NtVmFH?=
 =?utf-8?B?Mmk1R2hZK01iY2IzYjhrZHVhc01IVldHaU5HN092Y0lMbWU2QUI3ZEpXaUJx?=
 =?utf-8?B?ZEo4aGNsZDMxYThSYjZ1YXlVc2JnQmFGckdFWVZ0bmlnVVF4M0plNUMzVUJq?=
 =?utf-8?B?MkwvbWlmeWwvaXRGcEdTSWRKOWdQMkJNTW0zTG84dE5GS0IzSzM4bzhOS3FY?=
 =?utf-8?B?d2orTWlqY1FiWjJRMGFLOGdCQTBteG9lOWdVL1RMLzMwUEczc0cwa3BWd25S?=
 =?utf-8?B?QjBMYzJENWRlQTdTTzMwS05GOVNmSUM1b3VLQTk3dkhmdzBQUDhScE1VNjFu?=
 =?utf-8?B?bkxTaXlhQ0hvMld2emZMR0dxV3lINTlSNzB5THdNaWhpOGcwVXY1TnJQc1BT?=
 =?utf-8?B?ZEJ1Z210a3NLT2QwSHpuTWFHWWVTTmo0WXcrWVE4d0NQa05EVTk4WWlyQlk5?=
 =?utf-8?B?S29IMGFzTThKQm13bTRtM1JxRGhLUjRnMEYyZlpNbW9zZ0EvQTdScmpkenUz?=
 =?utf-8?B?V2NjMUQxNTlFMk5DVE5IanlaQmtxa1UyaXB3ZVU2ZzBNOTJJMERvNUVJYi8x?=
 =?utf-8?B?QnowV2lhZzg4cFlmZENpTDlXVDM3T2FOa1N2MlFTMXA0ZDdoN0lMbm5ZZmdW?=
 =?utf-8?B?dm9Md3FKdjZEMkgvWHM3NXRaRnlwV2FYU3lhUE1XSzZTWXJ2b21DTXdWdXVD?=
 =?utf-8?Q?Jh9vzHJHdGIzH9cz23AqY5fgp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f7db027-2162-4388-3a4e-08db2a04b9d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 12:06:38.8689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +TG0K0EbSglz7BZqy5YZVQNaWj4PR3l/+VDTs4YMctKYWt0r2l2dxEpLQMb4/9FQI/JPfuZDMYNbBulUeYE5kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref
 init for DP MST during HW readout
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMTYsIDIwMjMgMzoxNyBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MDIvMTRdIGRybS9pOTE1L3RjOiBGaXggVEMgcG9ydCBsaW5rIHJlZiBpbml0IGZvciBEUA0KPiBN
U1QgZHVyaW5nIEhXIHJlYWRvdXQNCj4gDQo+IEFuIGVuYWJsZWQgVEMgTVNUIHBvcnQgaG9sZHMg
b25lIFRDIHBvcnQgbGluayByZWZlcmVuY2UsIHJlZ2FyZGxlc3Mgb2YgdGhlDQo+IG51bWJlciBv
ZiBlbmFibGVkIHN0cmVhbXMgb24gaXQsIGJ1dCB0aGUgVEMgcG9ydCBIVyByZWFkb3V0IHRha2Vz
IG9uZQ0KPiByZWZlcmVuY2UgZm9yIGVhY2ggYWN0aXZlIE1TVCBzdHJlYW0uDQo+IA0KPiBGaXgg
dGhlIEhXIHJlYWRvdXQsIHRha2luZyBvbmx5IG9uZSByZWZlcmVuY2UgZm9yIE1TVCBwb3J0cy4N
Cj4gDQo+IFRoaXMgZGlkbid0IGNhdXNlIGFuIGFjdHVhbCBwcm9ibGVtLCBzaW5jZSB0aGUgZW5j
b2RlciBIVyByZWFkb3V0IGRvZXNuJ3QgeWV0DQo+IHN1cHBvcnQgcmVhZGluZyBvdXQgdGhlIE1T
VCBIVyBzdGF0ZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMgfCAyMCArKysrKysrKysrKy0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDA1MGY5OTgyODQ1OTIuLjBiNmZlOTZhYjQ3NTkgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTY2MCwx
MSArNjYwLDE0IEBAIHN0YXRpYyB2b2lkIGludGVsX3RjX3BvcnRfdXBkYXRlX21vZGUoc3RydWN0
DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAJdGNfY29sZF91bmJsb2NrKGRp
Z19wb3J0LCBkb21haW4sIHdyZWYpOyAgfQ0KPiANCj4gLXN0YXRpYyB2b2lkDQo+IC1pbnRlbF90
Y19wb3J0X2xpbmtfaW5pdF9yZWZjb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCwNCj4gLQkJCQkgaW50IHJlZmNvdW50KQ0KPiArc3RhdGljIHZvaWQgX19pbnRlbF90Y19w
b3J0X2dldF9saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gKypkaWdfcG9ydCkNCj4g
IHsNCj4gLQlkaWdfcG9ydC0+dGNfbGlua19yZWZjb3VudCA9IHJlZmNvdW50Ow0KPiArCWRpZ19w
b3J0LT50Y19saW5rX3JlZmNvdW50Kys7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIF9faW50
ZWxfdGNfcG9ydF9wdXRfbGluayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICsqZGlnX3Bv
cnQpIHsNCj4gKwlkaWdfcG9ydC0+dGNfbGlua19yZWZjb3VudC0tOw0KPiAgfQ0KDQpXaGVuIEkg
cmVhZCB0aGlzIGZpcnN0IHRpbWUsIEkgaGFkIGFuIGltcHJlc3Npb24gdGhhdCAqX3B1dF9saW5r
KCkgYW5kICpfZ2V0X2xpbmsoKSB3b3VsZCBkbyBzb21ldGhpbmcgZm9yIHRoZSBtc3Qgc3RyZWFt
cy4gSG93ZXZlciwgdGhlc2UgZ2V0L3B1dCBqdXN0IGluY3JlYXNlcyBvciBkZWNyZWFzZXMgdGhl
IGxpbmsgcmVmY291bnQuIFNob3VsZCB3ZSByZW5hbWUgdGhlc2UgZnVuY3Rpb25zIHRvIHJlc3Rv
cmUgdGhlICJyZWZjb3VudCIgdG8gdGhlIGZ1bmN0aW9uIG5hbWUgYXMgdGhlIHJlcGxhY2VkIGZ1
bmN0aW9uIGhhZD8NCg0KT3RoZXJ3aXNlLCB0aGUgcGF0Y2ggZG9lcyB3aGF0IGlzIHN1cHBvc2Vk
IHRvIGRvIGhlcmUgYW5kIGxvb2tzIG9rLg0KDQotTWlrYS0NCg0KPiANCj4gIC8qKg0KPiBAQCAt
NjkwLDcgKzY5Myw3IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9pbml0X21vZGUoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQpDQo+IA0KPiAgCWRpZ19wb3J0LT50Y19tb2RlID0g
aW50ZWxfdGNfcG9ydF9nZXRfY3VycmVudF9tb2RlKGRpZ19wb3J0KTsNCj4gIAkvKiBQcmV2ZW50
IGNoYW5naW5nIGRpZ19wb3J0LT50Y19tb2RlIHVudGlsDQo+IGludGVsX3RjX3BvcnRfc2FuaXRp
emVfbW9kZSgpIGlzIGNhbGxlZC4gKi8NCj4gLQlpbnRlbF90Y19wb3J0X2xpbmtfaW5pdF9yZWZj
b3VudChkaWdfcG9ydCwgMSk7DQo+ICsJX19pbnRlbF90Y19wb3J0X2dldF9saW5rKGRpZ19wb3J0
KTsNCj4gIAlkaWdfcG9ydC0+dGNfbG9ja193YWtlcmVmID0gdGNfY29sZF9ibG9jayhkaWdfcG9y
dCwgJmRpZ19wb3J0LQ0KPiA+dGNfbG9ja19wb3dlcl9kb21haW4pOw0KPiANCj4gIAl0Y19jb2xk
X3VuYmxvY2soZGlnX3BvcnQsIGRvbWFpbiwgdGNfY29sZF93cmVmKTsgQEAgLTcyNiw4ICs3Mjks
Ng0KPiBAQCB2b2lkIGludGVsX3RjX3BvcnRfc2FuaXRpemVfbW9kZShzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAkJYWN0aXZlX2xpbmtzID0gdG9faW50ZWxfY3J0Yyhl
bmNvZGVyLT5iYXNlLmNydGMpLT5hY3RpdmU7DQo+IA0KPiAgCWRybV9XQVJOX09OKCZpOTE1LT5k
cm0sIGRpZ19wb3J0LT50Y19saW5rX3JlZmNvdW50ICE9IDEpOw0KPiAtCWludGVsX3RjX3BvcnRf
bGlua19pbml0X3JlZmNvdW50KGRpZ19wb3J0LCBhY3RpdmVfbGlua3MpOw0KPiAtDQo+ICAJaWYg
KGFjdGl2ZV9saW5rcykgew0KPiAgCQlpZiAoIWljbF90Y19waHlfaXNfY29ubmVjdGVkKGRpZ19w
b3J0KSkNCj4gIAkJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IEBAIC03NDYsNiArNzQ3LDcg
QEAgdm9pZCBpbnRlbF90Y19wb3J0X3Nhbml0aXplX21vZGUoc3RydWN0DQo+IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJCQkJICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUsDQo+
ICAJCQkJICAgIHRjX3BvcnRfbW9kZV9uYW1lKGRpZ19wb3J0LT50Y19tb2RlKSk7DQo+ICAJCWlj
bF90Y19waHlfZGlzY29ubmVjdChkaWdfcG9ydCk7DQo+ICsJCV9faW50ZWxfdGNfcG9ydF9wdXRf
bGluayhkaWdfcG9ydCk7DQo+IA0KPiAgCQl0Y19jb2xkX3VuYmxvY2soZGlnX3BvcnQsIGRpZ19w
b3J0LT50Y19sb2NrX3Bvd2VyX2RvbWFpbiwNCj4gIAkJCQlmZXRjaF9hbmRfemVybygmZGlnX3Bv
cnQtPnRjX2xvY2tfd2FrZXJlZikpOw0KPiBAQCAtODY0LDE0ICs4NjYsMTQgQEAgdm9pZCBpbnRl
bF90Y19wb3J0X2dldF9saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gKmRpZ19wb3J0
LA0KPiAgCQkJICAgIGludCByZXF1aXJlZF9sYW5lcykNCj4gIHsNCj4gIAlfX2ludGVsX3RjX3Bv
cnRfbG9jayhkaWdfcG9ydCwgcmVxdWlyZWRfbGFuZXMpOw0KPiAtCWRpZ19wb3J0LT50Y19saW5r
X3JlZmNvdW50Kys7DQo+ICsJX19pbnRlbF90Y19wb3J0X2dldF9saW5rKGRpZ19wb3J0KTsNCj4g
IAlpbnRlbF90Y19wb3J0X3VubG9jayhkaWdfcG9ydCk7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRl
bF90Y19wb3J0X3B1dF9saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KSAg
ew0KPiAgCWludGVsX3RjX3BvcnRfbG9jayhkaWdfcG9ydCk7DQo+IC0JLS1kaWdfcG9ydC0+dGNf
bGlua19yZWZjb3VudDsNCj4gKwlfX2ludGVsX3RjX3BvcnRfcHV0X2xpbmsoZGlnX3BvcnQpOw0K
PiAgCWludGVsX3RjX3BvcnRfdW5sb2NrKGRpZ19wb3J0KTsNCj4gDQo+ICAJLyoNCj4gLS0NCj4g
Mi4zNy4xDQoNCg==
