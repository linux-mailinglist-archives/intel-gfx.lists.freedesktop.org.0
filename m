Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254845F60BD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 07:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD9810E7EA;
	Thu,  6 Oct 2022 05:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C1210E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 05:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665035004; x=1696571004;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=rO4o4sp9+BEbEoRzBWjSM1Gkstc0HmHYAyB93qeYMMw=;
 b=gO1M/8wWFdugb2p9CcUU6hM1aPrPeDB8gIePZmpjHvfJbcmEODEsKSMz
 OlR/V3Q2G0VLAfCDYbtukRKJuyzchFpEmXSaPmx3QAFDJV5ES8lwxEed1
 IgI5/3CfFxU0T1nLnli3bE61oSpD125YgGUXvh/r1xGuEvERfzH3qsUpG
 AGAmKVJ2p6n1PIrpwJX6Ydxj/Zs436TSnWGREdC89vD2T3FVybUhdeIG3
 Q7cfx/DL5Ea4+u7yPNuLaMQKer0bEQtzJIj05gqYt8ZLr663LqMjNK6sC
 5Qg8o8208ajfPbjMlPcTxfhwQM76xp6xzSd31e2HnCdcpBMvbZbvOgnXn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="302067930"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="302067930"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 22:43:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="575696925"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="575696925"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 05 Oct 2022 22:43:22 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 22:43:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 5 Oct 2022 22:43:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 5 Oct 2022 22:43:21 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 5 Oct 2022 22:43:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2MxUFIjO+bfn7TiydWPpJowmlK4i4Gb+1Jp9mh2/rqrTW/hUNNJmV8xuyeO7RB4wS+uwAnIUheACxKQtx7qdNPKahGYlhXc7CS7WRmest9VWgvjUZtriraF6BQPpfJy9NA6BmLULpj0tEXQKDj9/pgylYH/aZ31SBB5SGyzQh749pc1v0zaxRpHCwd4V3JWmVoVy9IrVSPS/uqvRt4q2w+oTo/zCIiGnJ+qHU3naEysM2Ywyy+COZKeBJiRwx8c6Q2boTDMg4MfjkQxlPf1ZGNRC5hHkQjb4tTYu/atV8a7QM08fGETFSeFfaRS4SjxuQAAs9YDzQmijY+gGON7xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rO4o4sp9+BEbEoRzBWjSM1Gkstc0HmHYAyB93qeYMMw=;
 b=ZQG5W1B8MndUfd+aWDg8mZn7+f/fJyerGK0I1SWMRVVOaIdZGDysJGsPkMdhD0hmcbMcg+Ou/BBcLwxYLlV+uiJC0LW3jIsl4R23sXYBmW1WzjIpFp5KIL7tRZX7dsE639uQIi8RTyATKUxA65sSStUHAr/3coRAMsAW09PLDEaE/ARgq2OxQxK7ls8g81XhUmVrpWmHcBoncWgmZBNHQHXQn4nK1qBa9GiIWBkqowov9RB2bnw7mbYYlnMVrZ64yFnFT1e6Wr7UjfgE/hdC9rDzRgUiI/axUEcFd/h3tyuN7GDZUhl9pf8Gvnc3wrtrMXkDbvO539OMHWM6RgMUFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM6PR11MB4692.namprd11.prod.outlook.com (2603:10b6:5:2aa::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Thu, 6 Oct 2022 05:43:19 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.034; Thu, 6 Oct 2022
 05:43:19 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
Thread-Index: AQHYzd/nScNLW+aDEEShaZFRLt6xHK4AmIoAgABZWgA=
Date: Thu, 6 Oct 2022 05:43:19 +0000
Message-ID: <c05ff37ab9b8660905a18c36e1e434c813919b06.camel@intel.com>
References: <20220921173219.785199-1-alan.previn.teres.alexis@intel.com>
 <20220921173219.785199-2-alan.previn.teres.alexis@intel.com>
 <305aab84-584d-a464-dea1-c9c0c38da6f7@intel.com>
In-Reply-To: <305aab84-584d-a464-dea1-c9c0c38da6f7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM6PR11MB4692:EE_
x-ms-office365-filtering-correlation-id: 2d08b650-fcff-4b32-5ab4-08daa75daca0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nmz6/Yur+7XKoDuhBe0yGhjXVPFrU4b5uzG+RcZ3ojDWZzUtDzxsrjlAMb5eTCb44+2Pq9rJUWkDGl21eljeyPOdCSjROC5T0kn9zfx+AUN6AN+I1lxDKZ3zlKu6SGgOyQ+NC3c96HCtsutUpGM95X/DDPYVmLmsyC61Mb4DCW4ZjS1xi+oGWBIZGLSYrsPgA5aoZVGpr54iHo/wDFSQsPUvbGAX1823YDT8PokuOI88l5Cxf87e77PDqvfg1VlHF9ROKioJnzONG6o26guJkWIO79WMhzPY2evo+82DQkxTSx521n8wn4azo6Wv8rnghLMIXjPw8dEHi+gdEfTwnQ9s5b1d4t23Vtk1XkLce+/Iwlszl1mDphRmEvwS/M+ov+wBTlEyxoOL33tObWy5aNZZ5TAaclLmcswY/Fb60+A8DUj4+eF9qnqGZrYJ4x6qWfIMyH0YT0nBhV4o8VZiEwDHIhPgqViP9KvwaYnyVWimLu5TLaT3FhLHzm8YtrOMRBTaaDaY5RADSvx1xa5Ctq+SFrapafVzgt3HDYoVXL5Tora4Hm3WYkvBgpUerH1JX5P+jbNALh8bw5dHMWOko4J9OnQQDI+xeMmeQlouQ6bucArt+Z1dHj9IXSMAYP8dS4Qbs0GP0JDAJK+OKGdpPLyulyUGEzw3WZKKpk0IjV7DPtoMnXyJGCXWMsJxiGk3ZkOmRNmODLlGK7e3f1xIZK5Or0r6gi3mkVBbFXh8g69JY7Ku/Rb91kKjbr386pk0wNdEg67A23J3rmwpDLhV/9GPNDHlBtx+eSdWVlKXl28=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199015)(316002)(478600001)(6486002)(8936002)(71200400001)(5660300002)(38070700005)(186003)(86362001)(83380400001)(82960400001)(6506007)(53546011)(2616005)(36756003)(41300700001)(2906002)(38100700002)(26005)(6512007)(122000001)(66476007)(64756008)(8676002)(66556008)(66446008)(66946007)(76116006)(91956017)(110136005)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHJ6NDVzS2FPRmRZL3ZxR015Snc3Ukk3UW5HVFBvaGNLZC9uTkNuNml2SURi?=
 =?utf-8?B?Q29xdlZNcTJLb3BESEV6SDErWGo3eUJ6VllJRDMyQllPUHVxNmd0TzJwQWZ5?=
 =?utf-8?B?Z0tGbCtSSzZCTVViM1dWbFAwQ0N3R2VqZjZSYVM1elFrWkZzSWZYZytpbjhU?=
 =?utf-8?B?emx4c3hFZHY3TE1HOEswbEpFSjFqeXpYSktVWkd5dUJPUEIxVEo2d2p1Mi80?=
 =?utf-8?B?L3Q4Y0lyUUt5d2xtT042SDFxVmx1aUZia3NzT0dMZmFHM0Y5aVF4YW1vaGRQ?=
 =?utf-8?B?THdaV1Bab0s4UVdmaW5tRDUramZrTGlnS2JkRndIbVhGUjYzUmJyMmw2N1Vo?=
 =?utf-8?B?RVgxMFZ6alJBN2JBek9SQU5wRktPc0NjbjJnK3N2ZGpadFBZSFdUVFI2eXEx?=
 =?utf-8?B?U203OFdPa3I2aDVhVkVGaTVqYmZsR2hRL2Z6bE04NkpEZnp4YVg3WFQwTk45?=
 =?utf-8?B?aUJhZDlQY3EzZlFaWWg2alREK1d4UG1OY1d5bmp4SjU3S2VvQ290TmNBRWdE?=
 =?utf-8?B?Yk5pYVFpTDV4Wkd5TjNYNVQzVGRENkNhbHNrMVdva2dMTDZ1NVorTDljaDUv?=
 =?utf-8?B?U3V5b1VHM3d3VG05WlVYdnV0bjJCbFptam93dzlYcGlYanA4Q0dWVEE4am1x?=
 =?utf-8?B?Rkh6aGVNejJ6bDRUSmwwTGlSL2tKQ2ZkRk13emduellSZlhvMTV1THVDTzVh?=
 =?utf-8?B?dHRlR1NIanJIQTFVdC80a2NsN2JvM0VGOWVvcXlpM3RiNlVkQkx6UXhub3Jq?=
 =?utf-8?B?ZjZwOFUvaWNjYXZpVVJLek5JUW96NnRXVk9iV1QvUDhrVHlrS1ExNTFYb1Ax?=
 =?utf-8?B?UWU3dmR3YkEyUlc3U3ZGeFdHQzZySzdsSDJmWTEvT3FzSHpwU2xPMVY4Ympi?=
 =?utf-8?B?SjNzY2hPYm9pUWpjeU02dmhHSUJOWjFtSG9mU2swRGx2OWMrVFVQWVdrb2Vo?=
 =?utf-8?B?K2Q0blpFSnVhZW1SY0RERGNoRXNteW1iUXhJaGdMUVJJREUvYWwwb2hrK296?=
 =?utf-8?B?N0ZMeDJOUHlXQlFaQll1RjFpbHBVQTVJazF4RVB6di8zTklmUnFCT1Iwb2du?=
 =?utf-8?B?QWI3aXNPQkxkbkhLVFFHazFxZkhkQ2hHQmhmakNvN25Rb1JJd2tKcnZ4STdK?=
 =?utf-8?B?ZjA3cnJTLzcrYkkrbW9pVWg2YTNEdytvS1hpenZ6VlJVdXZ1amRUL3B3TVRn?=
 =?utf-8?B?T0toSlVDbE1UZStlV1VQSW16QlNuLzhyL0pHdk4rdnc2YVhsRDNkWlh0Y2c5?=
 =?utf-8?B?Vit6dDJEcFE5NEZrU3loWFBUb2szNldLcUF3Uk9VMi9McEV3c3JTY25DeEtG?=
 =?utf-8?B?RkpmcmRZdUR1WGhnRm9Za2VWeVVxdUk3eFB4VVNJK2tmOUFYK3lScS92UGxs?=
 =?utf-8?B?clNGOWRoREdDSVcxS0J1ekVmbWdmSDUrM2VnWTVUNnNsS1RpY1pNK00yRis1?=
 =?utf-8?B?NEdtMkNOU1QzeWNBcUZvMWdvRWVWQlhpaUFKbDBrNC90WTc2bUM3YTRodlpT?=
 =?utf-8?B?cE9zdEtOK2hsbzN2L3ZaWDB5UlVZZDh6bGpmMThLd2YxWVlVWUhBMHBrYVVS?=
 =?utf-8?B?MElkbDJNTVh2ektIbGhacVFkUGZDY3RhY3ZxbXRYc0dzb0tKT2Q0OFBJYjJk?=
 =?utf-8?B?eFZjNTZ1QW9mV20rcUdWbENzeUExNWJReVRvWEtHWnBlNzFPZGNlRXlMSHZH?=
 =?utf-8?B?eG1Jb1RVaTNyaWJOM2Z5NndCc256cXJRQnB3aHZYbUtJanJ5MFgwY2RCT3Nh?=
 =?utf-8?B?TGdLQUN4R0YyTmMwTXdoWFBYME9tcHNFclVib0hwamJNVi9SMEtxQWhSbEc3?=
 =?utf-8?B?VEd5N3daNWZBeE1udXE2c2lDbUNMWG5xaGgyUVJtUGxGMXF6NnIvOU5ZSGZ0?=
 =?utf-8?B?MVUrdjF1NzRrZThDZk5DYWZmY2pzNFZBTldhcnIvLzY0eHNUOEMxOTRjRDhP?=
 =?utf-8?B?djNNOURRWUNLMXhFbHlUKzI2bmJxa0h2WmkxWDJSdkxNZWlPUnlVTEdpRHly?=
 =?utf-8?B?N1l1d2V6blJMZS9EbTcyd0RvMkhyU2Zmc01STHo0WWh2UmIwcll6K2FZZkJm?=
 =?utf-8?B?UXgzUlZGSERvZkdNL1J1TTkvdlQwZkRJRXR2SVVSTWxOajk0OUx6T1IyYXow?=
 =?utf-8?B?empKYkI0SHBMS2w1dSsrVitBRW9mQnl3dTUwYnpHSlNObklORnpWTlZoS21v?=
 =?utf-8?Q?C1/UnbHsE98txGS1fKJvmzw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <513E41CB950AEA43897B725714AA6AAD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d08b650-fcff-4b32-5ab4-08daa75daca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2022 05:43:19.6177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rrY3m/0UedSuVQfoL+6PY0vcrUvu8za/vxETh0PMqeDlHXYOG4J1V3JRBhjQunzoODe2UOIXVDxweuXYmxyzKvXSl4JzO3FalY4gE3cMb7zagtLIQk6gQCisxYU9b9Le
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4692
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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

DQoNCk9uIFdlZCwgMjAyMi0xMC0wNSBhdCAxNzoyNSAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3
cm90ZToNCj4gT24gOS8yMS8yMDIyIDEwOjMyLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiBAQCAt
MjA4LDYgKzIxMCwxMSBAQCBzdHJ1Y3QgaW50ZWxfY29udGV4dCB7DQo+ID4gICAJCSAqIGVhY2gg
cHJpb3JpdHkgYnVja2V0DQo+ID4gICAJCSAqLw0KPiA+ICAgCQl1MzIgcHJpb19jb3VudFtHVUNf
Q0xJRU5UX1BSSU9SSVRZX05VTV07DQo+ID4gKwkJLyoqDQo+ID4gKwkJICogQHNjaGVkX2Rpc2Fi
bGVfZGVsYXk6IHdvcmtlciB0byBkaXNhYmxlIHNjaGVkdWxpbmcgb24gdGhpcw0KPiA+ICsJCSAq
IGNvbnRleHQNCj4gPiArCQkgKi8NCj4gPiArCQlzdHJ1Y3QgZGVsYXllZF93b3JrIHNjaGVkX2Rp
c2FibGVfZGVsYXk7DQo+IE5pdDogdGhpcyBjb25mdXNlcyBtZSBldmVyeSB0aW1lIHRoYXQgaXQg
bG9va3MgbGlrZSB0aGUgZGVsYXkgdGltZW91dCANCj4gcmF0aGVyIHRoYW4gdGhlIHdvcmtlciBv
YmplY3QuIEl0IHdvdWxkIGJlIG11Y2ggZWFzaWVyIHRvIHJlYWQgdGhlIGNvZGUgDQo+IGlmIGl0
IHdhcyAnc2NoZWRfZGlzYWJsZV9kZWxheV93b3JrJywgYWx0aG91Z2ggdGhhdCBpcyBxdWl0ZSB0
aGUgDQo+IG1vdXRoZnVsLiBNYXliZSBqdXN0IGNhbGwgYWxsIHRocmVlIHZhcmlhYmxlcyBkaXNh
YmxlX2RlbGF5X1hYWD8NCg0KSSBhZ3JlZSB3aXRoIHlvdSAtIEkndmUgbW9kaWZpZWQgdGhpcyBw
YXRjaCBtYW55IHRpbWVzIGFuZCByZWFsaXplIEkNCnByZWZlciBzb21ldGhpbmcgc2VsZi1leHBs
YW5hdG9yeSBldmVuIGlmIGl0cyBhIG1vdXRoZnVsLg0KV2lsbCBzdGljayB3aXRoIHlvdXIgZmly
c3QgcHJvcG9zYWwgInNjaGVkX2Rpc2FibGVfZGVsYXlfd29yayINCg0KPiANCj4gPiAtCWlmICh1
bmxpa2VseSghY29udGV4dF9lbmFibGVkKGNlKSB8fCBzdWJtaXNzaW9uX2Rpc2FibGVkKGd1Yykg
fHwNCj4gPiAtCQkgICAgIGNvbnRleHRfaGFzX2NvbW1pdHRlZF9yZXF1ZXN0cyhjZSkpKSB7DQo+
IFRoaXMgZnVuY3Rpb24gbm8gbG9uZ2VyIGhhcyBhbnkgY2FsbGVycyBzbyBjYW4gYmUgcmVtb3Zl
ZCBjb21wbGV0ZWx5Lg0KPiANCldpbGwgZG8uDQoNCj4gT3RoZXJ3aXNlLCBpdCBsb29rcyBnb29k
IHRvIG1lLg0KPiANCj4gSm9obi4NCj4gDQo+IA0KDQo=
