Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D89C7D9789
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 14:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0168210E98E;
	Fri, 27 Oct 2023 12:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEDFB10E98E
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 12:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698408960; x=1729944960;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=12gUcYrzjBEIgkLPB+BK5i1nJOuFaKwZVubD8XZe39A=;
 b=kWF5EcWXZL58in14paXpBDvrylBEzLk0W5rZiXQ2Tau3BwJGONx+0+50
 evR/TqEHHMc+AJ+DLgp2dmaaXMOXEA3RgqOLH9LbfyfCSjttqA2HopAyQ
 riwqb+/Pm6BkoQsdzAf0S7tF/f1AAO1PpLr+fFa47kjDUw0hD6Kmsszmm
 sq4J/IXk0z0xYdxoZzNPMqVaOLcffCXmXSzsDFZhUGsxurqPOAdSZwR2/
 5OXqZ4FnOZjdrOCZXdujatQckhNch3iVpkXSGEi+pdMhxUaAJ2/gk/3US
 dMnExSfsXPnM0+IO6x58S4opVVbQNJCC3ATlCOx1ekVKr9+MByiyLEMi5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="367108897"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="367108897"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 05:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="903258273"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="903258273"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2023 05:12:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 27 Oct 2023 05:15:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 27 Oct 2023 05:15:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 27 Oct 2023 05:15:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTb/rsxQEQGRNFIRnkmsDCTWBFBy/XcV5UuPxHhdFzo6nqx65z1EMdGclbz8DncHJYgB/jraZl8/GkeKKWZk4+pQz7qxia49yQgKARlE1nVHY1n2O45G6EWWm3SKBfv3dxCzv0Jeof3sYWQMSJgIqxffDPi3WpOREpPDbM3yNErDpAFA+ZTGY48/3szqsxSqLwkmTg4bNS7eeq9sHsR57e+1zqIfXKOEnqn2ZSGaaIWViUKgnsLXqzWpCBfV3ixIDhVQRaXG1ufKKd4QYiRXyQDUcZI/tgemote/6JFOifZzUqRqGtcXBQLsG6B4scXV8O2q89OAiLu21FRcuPCv2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12gUcYrzjBEIgkLPB+BK5i1nJOuFaKwZVubD8XZe39A=;
 b=XZBZO3Z7JyFu9YMv7St5f88h8dnLaxkbHWSz/RThYcaRhtvESpuBPAXuUPMkTdh9bDT3pGsf0Bj/S/ET7NwM3fjKaaR8cax4VNgXadHBsWqXoLQmdVpi4Fx26iYXSfMz6/BXamHvemDHnwsaHiIV3Z7MGDC+D2PkGpBV8m/YOHihlZjwMEa++IoQgIRitUhIb8w/z2t+ipjXSBUzncWv+a4gYSDgBm9QBCg9ibxq/K37SrsZV6g9psC/YrwM8L94mPkETe8Jkn//Tm9qBnp0r95ZluAQCiNOKeF6qaWuJSN0A6olHw5X5dVC00lv7nsb8dCVB24wzC3Hq8CJgzMmaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS0PR11MB8668.namprd11.prod.outlook.com (2603:10b6:8:1b6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Fri, 27 Oct
 2023 12:15:03 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.6933.022; Fri, 27 Oct 2023
 12:15:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHZ+dGOHcLFEmZeB0uPflZoX2Fuq7BbyvoAgABjhHCAASFOgIAAWjJw
Date: Fri, 27 Oct 2023 12:15:03 +0000
Message-ID: <BL1PR11MB5979A44B4982F904B2F05BF2F9DCA@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
 <9a437097e2fcaabf42b8ba784f31f4e54bbab68c.camel@coelho.fi>
 <DS7PR11MB5990F5E060115401E8A4C941F9DDA@DS7PR11MB5990.namprd11.prod.outlook.com>
 <f5aefd3094251e53143e2857f2caa7764ae42584.camel@coelho.fi>
In-Reply-To: <f5aefd3094251e53143e2857f2caa7764ae42584.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS0PR11MB8668:EE_
x-ms-office365-filtering-correlation-id: dd81e1f4-57c1-48e1-78bf-08dbd6e65956
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ODhpbWGUe3nOfDGt5HhWkVj8DijYiP1f3fyrmEqBiG7b6F5AEdAe7zReURgPSuF/YrmSV0R2j80UFptZxeocoS2dhOJxBcvo0vSrxg+tmgeKGhBI2c2Ex0nmHVoYDsnJsejnt3VCoIlrDK1MY4vYNUxrutbj+0dLb6G/whKXOT5S+KAbi1IDzDO+ENeTcw5oU3WTIP+qfzjQ2XXGiMpb4KXd9jJI3Zz5boS8hjXt4Z0JiwA93UyDSDa7sTREHiT23kqPGvLJrd/vOndGTIfDXWmGn2WKdxQA9bYa2kNNKmCt6r8BThQnh+BYp72lSfoBlj9DHivy+Nh+NKYCCt6DoSxyMgjxwMp8sW1b3agEiK73L/Gpzojl4rBVpnx2fcc6oVjnUTMdUdnVK1nXDGwKrC+cXRdewM4b290e9sfn6azS4b8zahsw1zmMiAxcu5rsuEZ0oGDzxRxWrVjbtF/ko7QwCwLoHYYz2Zas4SVVOGXaE0FhJGb1jBtsaWWRIHhcHeAUNTMbUr4DjVo0uCbYhw9GbycTC5FV9lxoHPjZXy/eV7Iuz53TL+aQ/zRIwCLV5wb5V7refuJlUez0awy2uP3m5Fx0yAQN2oLuUDJ4yVPWxH0IKt/QCuuykK9mh8hyJMmBDSBJPD3CSiw6H4AeJQTpcI5kcevDB2a9ULljgh8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(39860400002)(136003)(376002)(230922051799003)(230173577357003)(230273577357003)(1800799009)(186009)(64100799003)(451199024)(38070700009)(26005)(9686003)(55016003)(38100700002)(33656002)(86362001)(82960400001)(122000001)(4001150100001)(83380400001)(6506007)(478600001)(53546011)(2906002)(7696005)(107886003)(71200400001)(8936002)(8676002)(64756008)(52536014)(4326008)(316002)(66446008)(41300700001)(66946007)(76116006)(110136005)(66476007)(5660300002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0RvTVNKdVpaUEZFeGJlaVBpSnNOSVhSbC9mN2xGcmJpblYxWjBDU3Fyb2Nm?=
 =?utf-8?B?emFrMjlDREwzVkpWVnpYQ21kZDk3QW8yQ2F2Z2Z5RThMUlRnRzZoNEIxOURq?=
 =?utf-8?B?aHhtSGlTZnpSaU5lUkN1bEpPQXUwT3dTaThabHFic29EaUorWXNKYVFoc2F4?=
 =?utf-8?B?VzVzRXNJSWN3OWlZeWEyYThQdTVnNGdBdzRkanY4YzYrM21EYXpUemlVd3dL?=
 =?utf-8?B?TitpSzYrci85cWVsNCt3dzhPMlIxRTFWK0R3bXcwQ3ZhRXEweHFZUVVoeEg0?=
 =?utf-8?B?QzM3dU90eEsybm5zNFZzdmpxT0dNNU1RdW53TEo3aGdtazNFc3QvUEU1bnhm?=
 =?utf-8?B?ZFNwdjJLWXlZblR3QUpiZnhaNHVnYXNldHM0ZWdkSFNvTTUyOVZNQTZGQi9x?=
 =?utf-8?B?SHorU1RzaE1KY25KMWhsWTMxSDdmdm1FY3BTdGY4Q2w3ci9yakk3eEd5RlJN?=
 =?utf-8?B?U3BIOHEvbUNxc1RxbGJkUDZxak9GRFpmcWhlZE1nZklyeElxVDgxY3pjNU42?=
 =?utf-8?B?RDVCOEZYSFIxZm05alN3UzNNb0RxSXlHZVhHTFNMQURxRzZJVGlUWkxjc29G?=
 =?utf-8?B?VEhLa2d6c1pHc3pSejRZcGJpTmpPQzd1R0FWa1c3RUVtS1o5S0RteDQrQWFm?=
 =?utf-8?B?SGpSci9FdHFsa2JVU3RoNVJIN1VwMlZpT2c2b1l2UUozNHNqem1CN2dsaHNl?=
 =?utf-8?B?bGN6dTIvRnM4b0x5eTJQVVF0cWM1amplRzV3YVBBMlROTTd3VHVJMTNCWUdD?=
 =?utf-8?B?Y2pycGZmVDZvRHNvYjBYQ3dsRTFNWjhiQ015VUVJbXJnQUdQK3M1d0Mxd01s?=
 =?utf-8?B?NnI1WldPQ1FZVlBVbzhIREZIZklHaTlmMnQya1d0RTF4MHVJakRUSHlkS2Z3?=
 =?utf-8?B?S3lIZ0YxQ1c1aW9qUUwyRTBYYi82T05nbExWeWo3SzNqaDhKNVNpSDUzbUJR?=
 =?utf-8?B?ZzVlckVmdVhZNFBIczkrbllyUjZDZE00OXBjVWRtZ1ZtR2k0WURBVVVtbTJq?=
 =?utf-8?B?cXErRktYZGxzNDdqZnkxTzZZLzJLWGdYWEJhWGJ0YWk4bjNSd252SE1vVVN5?=
 =?utf-8?B?QWVsekN5TlJjMnJaUm1nNFZxL01ZWWphM3JLNmg3R2tNY2tBMW8rekkxSW5r?=
 =?utf-8?B?NGFaTnlMNXZzYVBMZkwzVjJxZzEyeVlsUnZrRGhYYWgwUTJBRWVLMGdGV0VM?=
 =?utf-8?B?cHdSNnZNR3R4OWpRODJ1Z1Y2OUxVMDhJYml0OWx5ZW4xRGJXcTJJVmNNWk8x?=
 =?utf-8?B?YVAvd2p2U25aUGd6L2p2T3RjZ2VCbjhFSThzSHlpTDVGWmVSYWpzdHJ1OWZn?=
 =?utf-8?B?VXZ5T0luM29xNnBBVWdBMGM4MnVhZVkrNUZWQzN1R0JVQWg3N2ZpMGJTVURP?=
 =?utf-8?B?Y3pTNWprZXNMY1h0OFhVQXB2c1ZkZjkwQ1FsS21nemlnVWFaUVIxYWk3ZVp4?=
 =?utf-8?B?c1ZkbXhHdnc4cTlCekF6SEcyNG9hMmY1dUxZTHhzano5dEdtaGhIQk9WckR4?=
 =?utf-8?B?ZFBHcFJDak5xTTdpWDJTdE4yYjJlOE1CaFRiOHRrZGx2enFZeTVUWFZ5Z2RZ?=
 =?utf-8?B?ZVNIWUlyS1RHRERpQ0I2WldtcmlmZy9mcG1XTnVTZStjako4M2lEZ3pJUHBL?=
 =?utf-8?B?MTlnNEVNbmhqTVRzZnFQYnFDUDNJeUg5MlUrRWdKVEx3b0NFNzdJOUpRM2Jn?=
 =?utf-8?B?LzlIbnNJdk9QUzM1MnlSSHhnSS9LeUxxZjA5aTJicHkwOWtMZTd3SXdudStB?=
 =?utf-8?B?U25nSCtrRUhYOFRpM3VCcmRtWlZZK1plVWIwZ2NsZEFURTZrU2p3TVdHNEZh?=
 =?utf-8?B?dGZmVUZCL04yaUxlYkZVTkUrLzNSbjJTa29YaGJheGt2UlhHbVNYMWpvR3Vq?=
 =?utf-8?B?UWVQTERiNkVEcERiRXdNaGxpY0JPaEo3bmNKRDBHNE5hMGdlUGptMnpHc2U5?=
 =?utf-8?B?b3lYVlIzT1VQUnRoOVpVa0lUN3NWRkp4MU13bU1lcFVGNGMxSXJESzBXdHJi?=
 =?utf-8?B?dDVKY0E2TGlwSzBGSTBhZ25laEJlMFZzZENvWnVSOW0yWVo5enV3bkZFVXJR?=
 =?utf-8?B?U1c1WTQxLzg4czZtVmZNUHRROWs2eXNmc29BVnB0alRjc0tPTE1QbitRU1Nm?=
 =?utf-8?Q?WhE3SCysza578XquDfVB85y7G?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd81e1f4-57c1-48e1-78bf-08dbd6e65956
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2023 12:15:03.2660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3PLekvdFP52nELIaiIpKMHi25GpCGl0+ibjFLIdU2fF2WZ62rtXeRIIt/aGUyGbq2aoa+UGLYEwJCVJ5Qo3liw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8668
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1
Y2FAY29lbGhvLmZpPg0KPiBTZW50OiBGcmlkYXksIE9jdG9iZXIgMjcsIDIwMjMgMTI6MTkgUE0N
Cj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IGludGVsLQ0K
PiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCB2M10gZHJt
L2k5MTUvZHNiOiBEU0IgY29kZSByZWZhY3RvcmluZw0KPiANCj4gT24gVGh1LCAyMDIzLTEwLTI2
IGF0IDE0OjIzICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPg0KPiA+ID4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEx1Y2EgQ29lbGhvIDxsdWNhQGNvZWxo
by5maT4NCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDI2LCAyMDIzIDE6MDggUE0NCj4g
PiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0N
Cj4gPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjNdIGRybS9pOTE1L2RzYjogRFNCIGNvZGUNCj4gPiA+IHJlZmFjdG9yaW5nDQo+ID4g
Pg0KPiA+ID4gT24gU3VuLCAyMDIzLTEwLTA4IGF0IDE1OjQyICswNTMwLCBBbmltZXNoIE1hbm5h
IHdyb3RlOg0KPiA+ID4gPiBSZWZhY3RvciBEU0IgaW1wbGVtZW50YXRpb24gdG8gYmUgY29tcGF0
aWJsZSB3aXRoIFhlIGRyaXZlci4NCj4gPiA+ID4NCj4gPiA+ID4gdjE6IFJGQyB2ZXJzaW9uLg0K
PiA+ID4gPiB2MjogTWFrZSBpbnRlbF9kc2Igc3RydWN0dXJlIG9wYXF1ZSBmcm9tIGV4dGVybmFs
IHVzYWdlLiBbSmFuaV0NCj4gPiA+ID4gdjM6IFJlYmFzZWQgb24gbGF0ZXN0Lg0KPiA+ID4gPg0K
PiA+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+ID4g
U2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+
ID4gPiA+IC0tLQ0KPiA+ID4NCj4gPiA+IExvb2tzIGdyZWF0IG92ZXJhbGwhIEp1c3QgYSBjb3Vw
bGUgb2Ygc21hbGwgY29tbWVudHMgYmVsb3cuDQo+ID4NCj4gPiBUaGFua3MgZm9yIHJldmlldy4N
Cj4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBbLi4uXQ0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+ID4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+ID4gaW5kZXggM2UzMmFhNDli
OGViLi5lYzg5ZDk2OGE4NzMgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+ID4gPiBAQCAtMTMsMTIgKzEzLDEzIEBADQo+ID4g
PiA+ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiA+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5X3R5cGVzLmgiDQo+ID4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZHNiLmgiDQo+ID4gPiA+ICsj
aW5jbHVkZSAiaW50ZWxfZHNiX2J1ZmZlci5oIg0KPiA+ID4gPiAgI2luY2x1ZGUgImludGVsX2Rz
Yl9yZWdzLmgiDQo+ID4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfdmJsYW5rLmgiDQo+ID4gPiA+ICAj
aW5jbHVkZSAiaW50ZWxfdnJyLmgiDQo+ID4gPiA+ICAjaW5jbHVkZSAic2tsX3dhdGVybWFyay5o
Ig0KPiA+ID4gPg0KPiA+ID4gPiAtc3RydWN0IGk5MTVfdm1hOw0KPiA+ID4gPiArI2RlZmluZSBD
QUNIRUxJTkVfQllURVMgNjQNCj4gPiA+DQo+ID4gPiBJIHNlZSB0aGF0IHRoaXMgbWFjcm8gaXMg
ZGVmaW5lZCBpbiBHVCBhbmQgeW91IHdhbnQgdG8gYXZvaWQNCj4gPiA+IGRlcGVuZGluZyBvbiB0
aGUgZGVmaW5pdGlvbiBmcm9tIEdULCBidXQgeW91IGRvbid0IG1ha2UgYW55IG90aGVyDQo+ID4g
PiBjaGFuZ2VzIHJlbGF0ZWQgdG8gdGhlIGNhY2hlbGluZSBzaXplIGhlcmUsIHNvIG1heWJlIHRo
aXMgY2hhbmdlDQo+ID4gPiBzaG91bGQgYmUgYSBzZXBhcmF0ZSBwYXRjaD8gQWxzbywgaXQgbG9v
a3MgYSBiaXQgbWFnaWMgd2l0aG91dCBhbg0KPiA+ID4gZXhwbGFuYXRpb24gb24gd2hlcmUgdGhl
IG51bWJlciBpcyBjb21pbmcgZnJvbS4NCj4gPg0KPiA+IEZvciBYZSBkcml2ZXIgbWFjcm8gZGVm
aW5pdGlvbiBpbiBHVCBtYXkgbm90IGFjY2Vzc2libGUsIHNvIGhhdmUgcmVkZWZpbmVkDQo+IGlu
IEludGVsX2RzYi5jIGl0c2VsZi4gSXQncyByZWxhdGVkIHRvIGRzYiBzbyBrZXB0IGluIHRoZSBz
YW1lIHBhdGNoLg0KPiA+IERTQiBjb21tYW5kIGJ1ZmZlciBpcyBjYWNoZWxpbmUgYWxpZ25lZC4g
RFNCIHN1cHBvcnQgYWRkZWQgZnJvbSBnZW4xMg0KPiBhbmQgc2l6ZSBvZiBjYWNoZWxpbmUgc2l6
ZSB3aWxsIGJlIDY0IGJ5dGVzLiBBcyBwZXIgYnNwZWMgZWFjaCBjYWNoZWxpbmUgY2FuDQo+IGhh
dmUgOCBkc2ItaW5zdHJ1Y3Rpb25zIGFuZCA2NCBiaXRzIHBlciBpbnN0cnVjdGlvbi4NCj4gDQo+
IE9rYXksIGV2ZW4gdGhvdWdoIHRoaXMgaXMgY2xlYXJseSByZWxhdGVkIHRvIERTQiBvbmx5LCBJ
IHN0aWxsIGRvbid0IHRoaW5rIGl0DQo+IHNob3VsZCBiZSBpbiB0aGUgc2FtZSBwYXRjaC4gIElu
IGFueSBjYXNlLCBJJ20gbm90IGdvaW5nIHRvIGJsb2NrIG9uIHRoaXMuDQo+IA0KPiANCj4gPiA+
IFsuLi5dDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYl9idWZmZXIuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiX2J1ZmZlci5jDQo+ID4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4g
PiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzIzOTM3NTkxODMxDQo+ID4gPiA+IC0tLSAvZGV2L251
bGwNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Jf
YnVmZmVyLmMNCj4gPiA+ID4gQEAgLTAsMCArMSw2NCBAQA0KPiA+ID4gPiArLy8gU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVA0KPiA+ID4gPiArLyoNCj4gPiA+ID4gKyAqIENvcHlyaWdodCAy
MDIzLCBJbnRlbCBDb3Jwb3JhdGlvbi4NCj4gPiA+ID4gKyAqLw0KPiA+ID4gPiArDQo+ID4gPiA+
ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmgiDQo+ID4gPiA+ICsjaW5jbHVkZSAi
aTkxNV9kcnYuaCINCj4gPiA+ID4gKyNpbmNsdWRlICJpOTE1X3ZtYS5oIg0KPiA+ID4gPiArI2lu
Y2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9k
c2JfYnVmZmVyLmgiDQo+ID4gPiA+ICsNCj4gPiA+ID4gK3UzMiBpbnRlbF9kc2JfYnVmZmVyX2dn
dHRfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kc2JfYnVmZmVyICpkc2JfYnVmKSB7DQo+ID4gPiA+ICsJ
cmV0dXJuIGk5MTVfZ2d0dF9vZmZzZXQoZHNiX2J1Zi0+dm1hKTsgfQ0KPiA+ID4gPiArDQo+ID4g
PiA+ICt2b2lkIGludGVsX2RzYl9idWZmZXJfd3JpdGUoc3RydWN0IGludGVsX2RzYl9idWZmZXIg
KmRzYl9idWYsIHUzMg0KPiA+ID4gPiAraWR4LCB1MzIgdmFsKSB7DQo+ID4gPiA+ICsJZHNiX2J1
Zi0+Y21kX2J1ZltpZHhdID0gdmFsOw0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICt1
MzIgaW50ZWxfZHNiX2J1ZmZlcl9yZWFkKHN0cnVjdCBpbnRlbF9kc2JfYnVmZmVyICpkc2JfYnVm
LCB1MzINCj4gPiA+ID4gK2lkeCkgew0KPiA+ID4gPiArCXJldHVybiBkc2JfYnVmLT5jbWRfYnVm
W2lkeF07DQo+ID4gPiA+ICt9DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3ZvaWQgaW50ZWxfZHNiX2J1
ZmZlcl9tZW1zZXQoc3RydWN0IGludGVsX2RzYl9idWZmZXIgKmRzYl9idWYsDQo+ID4gPiA+ICt1
MzIgaWR4LCB1MzIgdmFsLCB1MzIgc3opIHsNCj4gPiA+ID4gKwltZW1zZXQoJmRzYl9idWYtPmNt
ZF9idWZbaWR4XSwgdmFsLCBzeik7DQo+ID4gPg0KPiA+ID4gSSB0aGluayB5b3Ugc2hvdWxkIGNo
ZWNrIHRoZSBhcnJheSBib3VuZGFyaWVzIGhlcmUsIHRvIGJlIHN1cmUuDQo+ID4gPiBQcm9iYWJs
eSBhIGdvb2QgaWRlYSB0byBkbyB3aXRoIHRoZSBvdGhlciBmdW5jdGlvbnMgYXMgd2VsbCwgYnV0
IEkNCj4gPiA+IHRoaW5rIHRoaXMgaXMgdGhlIG1vc3QgY3JpdGljYWwgYW5kIGVhc2llc3QgdG8g
bWFrZSBtaXN0YWtlcyB3aXRoLg0KPiA+DQo+ID4gYXNzZXJ0X2RzYl9oYXNfcm9vbSgpIGZ1bmN0
aW9uIGlzIHRha2luZyBjYXJlIGZvciBub3QgY3Jvc3NpbmcgdGhlDQo+IGJvdW5kYXJpZXMuIEhl
cmUgd2lsbCBjaGVjayBmcm9tIHRoZSBhbGxvY2F0ZWQgYnVmZmVyLXNpemUgdmVyc3VzDQo+IHVz
ZWQvdW51c2VkIGJ1ZmZlci4NCj4gPiBTcGVjaWZpY2FsbHkgaW50ZWxfZHNiX2J1ZmZlcl9tZW1z
ZXQoKSBpcyBjYWxsZWQgZnJvbSBpbnRlbF9kc2JfYWxpZ25fdGFpbCgpDQo+IHdoZXJlIHplcm8g
Z2V0IHNldCBmb3IgdW51c2VkIGNhY2hlbGluZSBzcGFjZS4gTm8gY2hhbmNlIHRvIGNyb3NzIHRo
ZQ0KPiBib3VuZGFyaWVzIGluIHRoaXMgY2FzZS4NCj4gPiBQbGVhc2UgbGV0IG1lIGtub3cgZm9y
IGFueSBmdXJ0aGVyIGluZm8uDQo+IA0KPiBJIG1lYW4sIGlmIHNvbWVvbmUgYWNjaWRlbnRhbGx5
IGNhbGxzIGludGVsX2RzYl9idWZmZXJfbWVtc2V0KCkgd2l0aCBhDQo+IHdyb25nIGluZGV4IG9y
IHRvbyBsYXJnZSBzaXplLCB0aGUgbWVtc2V0IGhlcmUgd2lsbCB3cml0ZSBvdXQtb2YtIGJvdW5k
cywgbm8NCj4gbWF0dGVyIHdoYXQgeW91IGRvIGluIGFzc2VydF9kc2JfaGFzX3Jvb20oKS4gIFRo
aXMgc2hvdWxkbid0IGhhcHBlbiwgYnV0IGlmDQo+IGl0IGRvZXMsIGl0IHdpbGwgYmUgaGFyZCB0
byBmaW5kIGFuZCBjYW4gbGVhZCB0byBzZWN1cml0eSBpc3N1ZXMuDQo+IA0KPiBJIGRvbid0IGtu
b3cgaG93IHRpbWUgY3JpdGljYWwgdGhlIGNhbGxzIHRvIGludGVsX2RzYl9idWZmZXJfbWVtc2V0
KCkgd2lsbCBiZSwNCj4gYnV0IEkgdGhpbmsgaXQncyB3b3J0aCBhZGRpbmcgYSBzcGxhdCBpZiBz
b21lb25lIGRvZXMgc29tZXRoaW5nIHdyb25nLg0KPiANCj4gQXMgYW4gYWRkaXRpb25hbCBjb21t
ZW50LCBpbnN0ZWFkIG9mICJ1MzIgc3oiIHlvdSBzaG91bGQgdXNlIHNpemVfdCBmb3IgdGhlDQo+
IHNpemUuICBBbmQgSSB3b3VsZCB1c2UgdGhlIGZ1bGwgd29yZCAic2l6ZSIsIGFzIHlvdSBkbyBp
bg0KPiBpbnRlbF9kc2JfYnVmZmVyX2NyZWF0ZSgpICh3aGVyZSBpdCBzaG91bGQgYWxzbyBiZSBz
aXplX3QpLCBmb3IgY29uc2lzdGVuY3kueA0KDQpIYXZlIGZsb2F0ZWQgdjQgYWZ0ZXIgYWRkcmVz
c2luZyBhYm92ZSBmZWVkYmFjay4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBsaWtlIGl0IG9y
IG5vdC4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNh
Lg0K
