Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E927EAEB3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 12:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3AE10E1EF;
	Tue, 14 Nov 2023 11:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECF910E082
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699960653; x=1731496653;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DKMUY+mRn3fu3r5zc5cv/KZUge7DO2/tGKtBCadVXzY=;
 b=kGLiei2NwXGKhSg52nycKIaqQwqajEtsrDBECBOxIbTBNWcITd1ivzcR
 leZ7wzMvj2KoNElXIn9qx0GwPeqjPtuKNLw24Hgae/0HrVP8ANq7SiAJn
 DWSLTpRM6/eoJqZAS+xBrx0u6K1G2p+vMOxBZaszOC8PdsgvZu0z1LPD9
 6+rlCPhzxIzI36JYtZ6N1rS7ROgUK76yng/O/vPJNeFEXMFPHyfjqxaFw
 aBIaPGa3I3pnr+ufIp0lWYrm3P5MoQMrruA18MvKPWzN24w1tpJlelmdd
 cx+FIrEglf2QlsBOREwXunKxWYp5BEJz+/UslQT2TcDWoK6P6v1ii4lcI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="394550027"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="394550027"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 03:17:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="714542629"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="714542629"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 03:17:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 03:17:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 03:17:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 03:17:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKz+qGAuNkG+c+Gq/3vEeDW4f7pAwhZxBjlSFV4fCnPn+SNjWdm/9QCcqFuQJ/kcWD8Oi02abNGce4vhSVcEXycccjVCxhQqMXIhWWZD2NfSl6Ujupie5fbzh98okPbdfZOqPFUCGuZv9O8RMPQO0bWatJJU6X0ECrhoSTht2pel0eXGvhlJ6wMNh05YNio1I77Ujms4r/clOeyA2JeqRXu6Qbn/DGcsJRxYj++iam6/7tr8FFHWxaUQp4xG70T2TrBST6OlJtq65sxmXlOcrlJ0HlkBRZfnujPV17EoBSjLAIY/CTJH+RFwqy6W9TGDCa80e1x1jyXcPOuGt4lj/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKMUY+mRn3fu3r5zc5cv/KZUge7DO2/tGKtBCadVXzY=;
 b=S6jxkk0y5h83prr0JUvHglNcPFycVoNLopIps/4s9xG4odM/1CZiDCK3lZYm2ulHjzoignhqVhn6gtsRopRWvriP8wck/fhNhHpTKh2xXQD4oNtRApORu1a+NOUMOpSJZgq5U32VshCFAYrmOK8BZS5S7h7gPBgWjo39n0zRo2u/OIEUCnt5o+9EHBUUhW5edv1BMMLAVFgIPvsHnnSQhN/F21CxYfq1+d2DCHkQwKkjEtxWipkwwR7r18IdLRpAc24GQef6Vb7nffONWFRkrcVpN3qleshRDbA+hyNy1LfY+58X4lWljCYkaYJwQkhjzLvOYXTjtsfjazPO9hXUcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by BY1PR11MB8077.namprd11.prod.outlook.com (2603:10b6:a03:527::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Tue, 14 Nov
 2023 11:17:24 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9bda:b859:ef57:8635]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9bda:b859:ef57:8635%3]) with mapi id 15.20.7002.015; Tue, 14 Nov 2023
 11:17:23 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v6] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHaE4dGdBHvm594lE+GvvQkMhw9o7B5sTaA
Date: Tue, 14 Nov 2023 11:17:23 +0000
Message-ID: <76aa10504ec29bef5b9c6abef8896b049317ac63.camel@intel.com>
References: <20231110032518.3564279-1-animesh.manna@intel.com>
In-Reply-To: <20231110032518.3564279-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|BY1PR11MB8077:EE_
x-ms-office365-filtering-correlation-id: 21cb4dcb-3a5f-4a64-b699-08dbe50346bc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SenItvxkuzUx1SLxtLmsHd3vyOeZ340paXZziQV1FHLf3qpdvHXYgptbOUnQWGp1KbkVH9rl+v1ogOaug4vMcXZQkBhUmtrbzpq+1Irfwxv944DfVjjM3Q3CONL8TsDpEYAK62iVvURJofkRRx4qp3C1zlbCb+CicLnWuVfC73UVcw5wozJGpcJ+uPzqqoXV/bbjtkY305FJN64nvAQXNQ5qBIglkazhrcJXnTPxS92PtWQOD/nb9trT7FFiXRF6kSr2vED7SQLGrBcX5RJ/stA24Yp0CuxIeczGvrPcdWOGRGh0gYTV406c42v2f+jdRqDZD0Vf9vxWu/GaTfTo09GnomcgVXfsYzAcDSz31n4M5fNryHk2v308qCknDp1IOYvJuFVWmGMLOYNmfpBzAdXEmItjVCgBjK8mqREDoKcrdXKieLAjXiDTmua849x/lPaJobu1zQmn9BK/RRYKrRn8r6RRGKZQJBBdhLszGtWXE4u5S0FrCtPLaRXJ+q3fhn3T4VowzMegv7if6QoYKc7USI7y02WSbDUxdz1yEoHE0KsZGM5EzGTCylLRPAp8sAl3s6iFF3Yp2K0SeJU9ILZsAx5SgrPQ49qp7EBpA6g2TRF2lyTjD6Ezx8vmxsZ3u9YcA4u06b+QBzl5CnZQCfbpXkz4dV2NI1qLg45tELc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(366004)(346002)(39860400002)(230922051799003)(230273577357003)(230173577357003)(64100799003)(1800799009)(186009)(451199024)(86362001)(316002)(64756008)(6506007)(71200400001)(41300700001)(6512007)(26005)(110136005)(6486002)(478600001)(91956017)(107886003)(2616005)(66446008)(66476007)(66556008)(76116006)(66946007)(8936002)(4326008)(8676002)(36756003)(4744005)(38070700009)(4001150100001)(2906002)(122000001)(38100700002)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGtCZ2MzWGRjb3lpL2JiTGpUUHk0ZDBxZFpSeUc5WE5xaU5RU0I5UnlWZVRH?=
 =?utf-8?B?cVFmUlJuMzJTZnNUalA2Nk9XNFNwVkJHTWE3QkZpcWJzSmt0NXdPOUtUUGho?=
 =?utf-8?B?ZkV6ajFhRS9RMWEvenIzT29zZFh4dGthRS84Um5NZEM0TUQvMDBCWHJwYXhi?=
 =?utf-8?B?eDNNNFkxVlZZdXRNdHYxcllFZ1F0Nnl6MzdjeDQwdmRIYTQvTkM3cWRiYWVa?=
 =?utf-8?B?em5kSXZrbDdrTFdoV2RUTVZWS0FUb3pTSGExVXhUeDJxT1UvSUJJWW9Ic3Ja?=
 =?utf-8?B?bkhWZW1EUUlTa1ltc0czelhIRTVoZittK2RzQkN6eXFwcGpHNExOZElZOHFU?=
 =?utf-8?B?VGRCa2xrUnE1VUlXMElnVnl1d3pFcTRJQ0x5SzJtNGxueFFSOHNUV3hVeXYv?=
 =?utf-8?B?QkZCaTlVZ1QyMlFrRzVnN3dVcWFxclRrSE1IQ2Z0QzN5eWc2Q3JUUmswdito?=
 =?utf-8?B?cStFVzhjZTR5ZUhTWHdzRDZ3aEVPM3VGaXlpK1VyaWVPaHBHc2VwK01rQkg0?=
 =?utf-8?B?Ym5YV3U1MGNPUjVDWUFaSEo1TUExeUZTbFFpNWhyWEJ6VWUxbUdDZEo5bGNO?=
 =?utf-8?B?WGVrQ05rOTlQNnFzaGhZdU1uOEhGVXN3Wmh1MEI2elZEWG1nbE9LN1pLV2FS?=
 =?utf-8?B?VDRVOHBJTGdXNmRsWDdBRkl1MGtTOWZTQzRHZ3JMdXhUTWxRWGYzc1VSVWhq?=
 =?utf-8?B?UEMyWXlVSXpQQUQ4TFZjbjV1L1VNTUtjQUFNVUpsQTJPeTJQYlNRSURGWEt6?=
 =?utf-8?B?ZFRFTnlscjBVUUdlbTcwMVB1YkEvbENBT3ZXdDFHaWtYdUVXMWRNNHRQUTJl?=
 =?utf-8?B?SnlreThjenhqYVpoUVFBOXNLME56Smt2RlNwNnI2TVRIZmI1RWlGWlZtaDJM?=
 =?utf-8?B?a1Y2ZURPVDN3MVgwdnZJMitVMDlWbFBUMFdVRWZTR0lpK2ZvMUQyTVBuMHNp?=
 =?utf-8?B?VkxWOWNUN2hRTWcvOGl5WXpqcjNCR05vQWIwT0p4V2VId0doSEdnaDk0OEFN?=
 =?utf-8?B?SHhpSDlOTmZJU3B4YytTQVpRV3NRWmxVZEVxYTExS1BNdTd2MU9IVjVMRWM2?=
 =?utf-8?B?OHVjcVNWdjNhbVZOWXRMT0doODk2ZGVFanVtVWhNc2FZS2RLbS8zVm42eXly?=
 =?utf-8?B?R0FrRkxkN3VsdGtJMDkrYUE2RjdKcGs1STJBZU5tWkdIRVN2UHRGQ0YzZzZQ?=
 =?utf-8?B?Z01jSFhuZWZER0FFL3RXc1FqK0xwTTNtR1l0MWdGcHk3U3JrSUtnaUw0V05K?=
 =?utf-8?B?M1RPcnZYajIwcm9CV2tPWnJlL1JzNG1KVlJ0b1lVc3ByTjNIVStmQWpvcm56?=
 =?utf-8?B?b1BsTTgrSEZPREVwelZGMS9CWUlUcjZpbm1lZ25pUGVicFhUT1hqa0V5QUR1?=
 =?utf-8?B?ZEltc2VnOGhrUjdxVzFYMkQ5SWgzUEh6U0E0dWJ6THUwV3pmUDBoZEwyK2Jo?=
 =?utf-8?B?dlMrYTA0RktLZ0FEOXNsVlY2OUJZRHdHODROSzZFZVh0RmZwRGFDMHk2a2hU?=
 =?utf-8?B?aXExTnFpUXNTdjhNc0s5SDZTZThZUnIvSmlTMTdOMjFPRzkwdjg0Z1pQeTNC?=
 =?utf-8?B?VHp2NlF6UjQydHFRQSsybnM1YWp2bW5NRFlMY0JpeWd5ckVCUGxHMXk1ZjV2?=
 =?utf-8?B?aUlSN2xnSUdCVzl0ODJFL2JkdUM2UUlsaW5UVVR5L1FSQTF3TGhzblovOUll?=
 =?utf-8?B?LzRhZnlnUEV3akpVaUVNUHh6N3d3dUlnUDQzVFQydEpsTDg0SkVtRldXV0V3?=
 =?utf-8?B?b2laVTV2WWNqVE1nRzlubnUxODdPTzQ5eURtcUd0ckQ0S2YvM3NMeVRONHlj?=
 =?utf-8?B?VWprS1NTM0FjUXVVN3NuaXYxenV1c3ZKRU9tOHpiUFUyRzVmVXVJdkcyMi85?=
 =?utf-8?B?UVAwMUdqRWFaM0dpa0NjNUp4SGdVNTMxbXhGTlYzNnhhSlE0WEFFS1RQTnAw?=
 =?utf-8?B?MEhsQThEbkRENituSFd1TTBmRTEzUnBjWVVRcHhKZVJCOXVxVWJUUUp5cCt1?=
 =?utf-8?B?RERneHFQQ3dLV2VMT2phNGdRYStBTWNuRERsNDJoeEZsdG8wV1kxZnZaZXp3?=
 =?utf-8?B?bXkxZ2xEclpHR1JiRHZPZ2g3ZWRwWTFCdGJYb1NtQUtqeXFoUlhsMjlOcFQ2?=
 =?utf-8?B?dWN3MkFta3lsczB2ZVZINEx4b3cxMmQ5dHJWMEg1UXhTQjJ1T1gxS3FRQTRp?=
 =?utf-8?B?WGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FD754ADE58F6C04F89957DEAD8F5A683@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21cb4dcb-3a5f-4a64-b699-08dbe50346bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 11:17:23.7099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: naRIayvaXcM+geUvIWF7FJOKYqMYtBZjm+nRfB8lOSZe7SpKndHqnh8QzEP2rQ8rgIimPcBppujAEAjsKCpuPuJywrw0lfiJg/aQFum6X0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915/dsb: DSB code refactoring
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

T24gRnJpLCAyMDIzLTExLTEwIGF0IDA4OjU1ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBSZWZhY3RvciBEU0IgaW1wbGVtZW50YXRpb24gdG8gYmUgY29tcGF0aWJsZSB3aXRoIFhlIGRy
aXZlci4NCj4gDQo+IHYxOiBSRkMgdmVyc2lvbi4NCj4gdjI6IE1ha2UgaW50ZWxfZHNiIHN0cnVj
dHVyZSBvcGFxdWUgZnJvbSBleHRlcm5hbCB1c2FnZS4gW0phbmldDQo+IHYzOiBSZWJhc2VkIG9u
IGxhdGVzdC4NCj4gdjQ6DQo+IC0gQWRkIGJvdW5kYXJ5IGNoZWNrIGluIGRzYl9idWZmZXJfbWVt
c2V0KCkuIFtMdWNhXQ0KPiAtIFVzZSBzaXplX3QgaW5zdGVhZCBvZiB1MzIuIFtMdWNhXQ0KPiB2
NTogV0FSTl9PTigpIGFkZGVkIGZvciBvdXQgb2YgYm91ZGFyeSBjYXNlIHdpdGggc29tZSBvcHRp
bWl6YXRpb24uIFtMdWNhXQ0KDQouLi5hbmQgd2hhdCBpcyBkaWZmZXJlbnQgaW4gdjY/DQoNCi0t
DQpDaGVlcnMsDQpMdWNhLg0K
