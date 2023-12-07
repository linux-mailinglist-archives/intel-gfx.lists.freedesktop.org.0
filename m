Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7206F8084B7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 10:31:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45B9F10E83A;
	Thu,  7 Dec 2023 09:31:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C2110E839;
 Thu,  7 Dec 2023 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701941468; x=1733477468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YJTTW1qPQDBimyHoiIqaTi4TF7mkA9vnMiR11nhJpkM=;
 b=BTzlY3apCfUSilR+9k4x6yYl9lcFU3fIOPPokyVdHudll6SC9tCsGkum
 V6fQnP3exT6d2WzSCjQ/snA7MVWxJHlns1raAQbZdQGct3ehnbHNybP0Q
 4s61UFFwCarFMgQIDcpMqc6FSDrWG3Cqq2y7yY7jYIeIyNgEmjcdXI49/
 rA+NAu1l5ChY7HiEwd07nVvj+tu3/YHfE/FGi8pBEtlwxvOojZGMTKnO9
 lOA3SHe0yDlc0JuM9nWz4wHeoJEB4b/E+Gz68RrZsss4T8jS1BNOlTAFi
 xmvYmUYBo1+0HJbRNgJJCbbAxEZ5UZWrz9t7UFgtPMO48IQrrjuQPrdXt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="396994754"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="396994754"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 01:30:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="19646148"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 01:30:58 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 01:30:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 01:30:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 01:30:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbRzmCcoWrujlig+AN4T6pQPfBM0utMIcn8e5zUmr2AUSdbjX4QZ4ydRsRORT4Zuijrp4W81zHA+D4F56yn4g8jrhiOLdmeQFsauMwsnnclya8372U/vn5LsU+rr7kOsWZN2kHsLkuZ7RZS1WQPo0QY7UZ5SPJpPCnaQ9BoEnQdNfT/7gg4nMzhNmwNiyne76uylzlo2k8aD7emm4KcKqxuY0/iI1Rf+lvFOa29hgsqv1kkx/g82wUKiL+4iuqqUkiUFal7I9ttawlQPQL6QlIZiAW52pDWsyFzjl0pwAxawgxOA3W/EQdbcmK+jxmY4cmOjLfPEC68SAtdk8yXK8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJTTW1qPQDBimyHoiIqaTi4TF7mkA9vnMiR11nhJpkM=;
 b=E7ifGCkR4ExJNrJ3gc+FaGi61sICz9jU2E2ziFImE9Z3YfxDPKrlw2FAo8czb0qoTXyPypO2GXb3TI6B1v3dOqp7O6PVUTpTq3wRoDxAaQzTrFQdE1Re7ZorPTuQVQOSWKo5MeQP7b1j4DPvxaJeMoMGLS/zE/TkdVlMvbpF3Rh8H1GzLKqfJCpOiC0AJOZBT7UB857sjXawDQuPawrRUT6+p88XTMRSJSmjFEz+zubVm4/TOjOTRn2Es5JyMaLag90etD3o2eT2w5IkA1U1R0aC4z9emPreseek8ohLrr76iVGyMq+xHgixQhxz2jFPB2disOCeESjW/+HQrhla4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB4902.namprd11.prod.outlook.com (2603:10b6:510:37::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Thu, 7 Dec
 2023 09:30:54 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7046.034; Thu, 7 Dec 2023
 09:30:54 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH v7] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaJD1nrlEkbEHWek2sMOYpaI+a+LCdhTCAgAASd4A=
Date: Thu, 7 Dec 2023 09:30:54 +0000
Message-ID: <1f378d699c11cbc577d7843fc4277681b3aa8c49.camel@intel.com>
References: <20231201100032.1367589-1-luciano.coelho@intel.com>
 <804a8a8ea0f69fc6dc7bad571ee30fc774cdbdd4.camel@intel.com>
In-Reply-To: <804a8a8ea0f69fc6dc7bad571ee30fc774cdbdd4.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB4902:EE_
x-ms-office365-filtering-correlation-id: d5c6030a-51c7-4f54-ad4f-08dbf70735d6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q7P++VIZiO37qkYsr1vHVnHyM+R/qSymLKOmkKYuhokiDPLbWMHXcI4jB1r/FfvHde7gyurlxi2WVMExGzYroht8m/Itaev7Ix/858osyfUE9dRz2owZvbqGvh6o2yTScSUaQpnZp/IM7oAS3oHBZ3wifu1CpTFIoTKm6U5jf62wyb4d56r6Q2DiZDf5Wd75lCPir2pIOsivq3jvFers5mtcN0KrY/chpnIo3aaFjB4hVcRQRPv7VaTmTpYaM0Ppys7UQjr8jgMKvTk83EUQ8TxuQIeqVU3VsrJK3g8a19XVlVV82FAkyRNdTPFxq+JieDfe2Z9V2QXT3Wd/1wRMuiDKoc564veJdhNnzaF7TpzyeR32juGzoaPo32XnudlczZNcQkNjqInI6VBJw1epvpSIOPh0Z98Hv5DPvgPfU0uVvUwFX+F/7Di/SN4pFc6oU4Y18zLUholT+Xo0T7aar6KPO091/GhkGtLGLgjTwdfeBjfvdUoOG86JiunEV4awaJU1VwaGLdNNeg/Yv8tjq1PCVJP+t2Dh7fEZcbIRgZaRTYDpfDoSjGZFiKnNz/Zig47CUWOBj8XbpLc2mSmWAbxlnviihFrx0o6GunE73+er0V9PNNUe3VI2rBzGLbTIu44s1VrsDOV4/7IbyVgEnyIVatSrWmITW77vWar3BgI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(136003)(366004)(396003)(230922051799003)(230173577357003)(230273577357003)(64100799003)(186009)(451199024)(1800799012)(41300700001)(82960400001)(36756003)(2906002)(86362001)(5660300002)(122000001)(38100700002)(38070700009)(6486002)(478600001)(6506007)(71200400001)(6636002)(83380400001)(2616005)(6512007)(26005)(107886003)(316002)(66476007)(66556008)(66946007)(64756008)(66446008)(8936002)(76116006)(8676002)(91956017)(4326008)(54906003)(110136005)(450100002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SUkyRGowalBLTDdIdmx2VXV1OTJtUHR0bVpPbG9tNy9GV2FuM01leXU2WHpB?=
 =?utf-8?B?K3FTVGRuWElzQTl4RHc1QU02dHZwYVBGTFg4U3Y0WDlkTUpPeG9ha3MyY0VF?=
 =?utf-8?B?bUpSWVRIYzRqS1I5Z21mMTZSdjRqeUtnaGhaUkZPTDc4WFV0NnhsOFVzUzFZ?=
 =?utf-8?B?SFgxNjRtWmdjRDJqQ21oT3ZNK3ZPK1BEZjJSdmgybTFkU2JrQ0xSQzZIcG5t?=
 =?utf-8?B?WmNlN216K05HdGtyWDhWQXBDU2l2Mk5VWmVFdEJtWVNGajVhSzZ6bm8xVkRV?=
 =?utf-8?B?SDN6Mm93WTFHaEFGOHdJSDVkM1hwRVM1NFVoaVpKMFdjSnltN0UwaDdDSzY3?=
 =?utf-8?B?RnJCR3ZBeFZKZUVSSW1ocGlJQnFsVjJueVVCcHlrZFlpYmRqN2VIbklVdm5k?=
 =?utf-8?B?T3pqMWExVnNUYXoyV2VqNFAxWGNaOVA2NFhpZ1hiMmtMNTE1VWVnSnRrdnJZ?=
 =?utf-8?B?NUhVMTc4U3pTMldlRHczb2pSRmkxOGdZaUFXV0c4MkRRbzd1K2xDOEZHQnpF?=
 =?utf-8?B?K1F4cXduWFBLd2tNSDNyVEtITUR5anFESDU4Q3VyNW1vakVvWEVLK2l3OUE5?=
 =?utf-8?B?b0pQZDNVT3N4enQ3TjNrN2dkaHAyUkkrS3JmYVB1c3lpekdXSnlUMjM2RFJO?=
 =?utf-8?B?Q2hlbXV5dHd5dFU5TmhhMTdUTjFTTmJReTQ3YldCUUlvMVNmK3NBMlAza3Fm?=
 =?utf-8?B?T3hVaG9BbGNiN2EzV01wb2UzZnVqWFNjbDZoWjlBTUk1OVg2aGVRa20zWTZF?=
 =?utf-8?B?Q3YvVWhrR3JMSTVLTGVRV1ZtZU41ak9VZW5CSjRqWnZSb2Z1TFh3K01nY0ox?=
 =?utf-8?B?N3VzY3A3bVRPaU1QZE1xTjlQd2FDdXhlck9pTjc4emtiNGpBcXY4NitEZ0Yw?=
 =?utf-8?B?WHA3c3Mxemt0SC9vRXg1aDFwY2FybmE1bXh4SHJDVzJPZjRndW1qZG1aTjl5?=
 =?utf-8?B?VUNuMXJXcnZleXhvNnRkaDMwKzVMYWlWMGhiNXFIdEVpVGlOUE80VGkwWWJ5?=
 =?utf-8?B?d0d1RXVJM2VmekdvckF0SmhINEZaK1B1N2RVL1lIelkrbUpzUCtRb1R1NXRj?=
 =?utf-8?B?eWMrcW5PQnJOV3lub0NWRHJIejY5UXhzS1dBZnhCNnE5b0VVVEpqTyt5VGZr?=
 =?utf-8?B?bG9pUVlnbDRBY3hBR3k0dHNlR0p5NTB5RXdNNHc0aTBlZ1BuYXUxdE04aElY?=
 =?utf-8?B?WWN1eDlBN2xRSlpVZVpzeGd2cVRVVkVHME5HWEU2QXpmckFiQldHWTEvdHJ0?=
 =?utf-8?B?R3M0UDNvaGx5bno3YndBTm1na1hoQmt2aTZDQjFhZ0JnbEJSNERreEpxUTVi?=
 =?utf-8?B?aVdsazkwdEpUem5wcjZkWEpNMzhTbTlCUVlWWkZ1ZnRUdG5pODB2ZGFJRXZk?=
 =?utf-8?B?alRqWkFROWFiMGNzUmJYRGVaMCtGeVY2Tm1CdjMxbEdRWko0ZU9VdDdpZ2E0?=
 =?utf-8?B?eTU1UG84UWlrcVNqWml5Qlg4KzdkOEdnOG4zSmo5T2dLelp6YVhOL3hsdmtx?=
 =?utf-8?B?c2Z6WTdYZUVMUGpzMUdDT2phWUJNNS9oVHRrUFNleVBmWDREZ2pzQ285UHp1?=
 =?utf-8?B?YnUxa29NZ2cxUlAyUHZySkFZdnFuUzNNZ2FnaXJ6V0E0dUp6elFMWnJUUlhZ?=
 =?utf-8?B?VzdDSzNBWUdtaklycytWYVpWTzdtemFTSlBSRmtmcHpFU3E1enZhSTZmTnQ5?=
 =?utf-8?B?TjNZYURRWjZvOG5rY1c2NWk2TmJjV2U4d3IxdGRwc1R1bTN0QjMvNmlPeS9K?=
 =?utf-8?B?aUVMVElPbEpQLzRUZGRleEU0UU53L09KNWh6VE1VbE0xUlNIZkVWdVg0U3Bv?=
 =?utf-8?B?KzNYQWNYSVpKb2FDYXFGN2JYd3Yxc2cwYmk5NUptSlgxRGZoSzMrSWo0RzNs?=
 =?utf-8?B?MnlrNnpBMjEreDA4dllaQm5WLzBDb1FSbUNueHRER2pQbzZTU3NXNlpmelhV?=
 =?utf-8?B?NldaR3U4eWtFNVI5QTdBNC94SzBDNzVnWlVoSVNWclVzeWdLeUx5UE0yam5S?=
 =?utf-8?B?VmkyaEFUMzEvMDYreUhMQmQ2QTRrbFo1UC90YkoxNXZlL2NybkwxTXVYTkZh?=
 =?utf-8?B?VXJTQWgyZHpMNkV6MTU0bUhiY0xOM3ZBN2RIa0xtdy9IYmJOR2NQMG9TTGRn?=
 =?utf-8?B?NHdlRTJrTDBBRUN4SkZ6a0FtWk9pczFoZDlxZDBCYW5EcGk3RkJlWEl1NmRt?=
 =?utf-8?B?Zmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E7E1A2E4C7F92C4296A49C2DF3233EB2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5c6030a-51c7-4f54-ad4f-08dbf70735d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 09:30:54.2518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5mRkv3IkzcAMugPOOdiKbRyrRh/7WxDxKKyyPlliBioYvP593Ai8knpF8FKJOJNBZxD0V9TckEq+4+xGgviIB1ryAMK61Mc91KBkENfUzqs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4902
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v7] drm/i915: handle uncore
 spinlock when not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTEyLTA3IGF0IDA4OjI0ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyMy0xMi0wMSBhdCAxMjowMCArMDIwMCwgTHVjYSBDb2VsaG8gd3JvdGU6
DQo+ID4gVGhlIHVuY29yZSBjb2RlIG1heSBub3QgYWx3YXlzIGJlIGF2YWlsYWJsZSAoZS5nLiB3
aGVuIHdlIGJ1aWxkIHRoZQ0KPiA+IGRpc3BsYXkgY29kZSB3aXRoIFhlKSwgc28gd2UgY2FuJ3Qg
YWx3YXlzIHJlbHkgb24gaGF2aW5nIHRoZSB1bmNvcmUncw0KPiA+IHNwaW5sb2NrLg0KPiA+IA0K
PiA+IFRvIGhhbmRsZSB0aGlzLCBzcGxpdCB0aGUgc3Bpbl9sb2NrL3VubG9ja19pcnFzYXZlL3Jl
c3RvcmUoKSBpbnRvDQo+ID4gc3Bpbl9sb2NrL3VubG9jaygpIGZvbGxvd2VkIGJ5IGEgY2FsbCB0
byBsb2NhbF9pcnFfc2F2ZS9yZXN0b3JlKCkgYW5kDQo+ID4gY3JlYXRlIHdyYXBwZXIgZnVuY3Rp
b25zIGZvciBsb2NraW5nIGFuZCB1bmxvY2tpbmcgdGhlIHVuY29yZSdzDQo+ID4gc3BpbmxvY2su
wqAgSW4gdGhlc2UgZnVuY3Rpb25zLCB3ZSBoYXZlIGEgY29uZGl0aW9uIGNoZWNrIGFuZCBvbmx5
DQo+ID4gYWN0dWFsbHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9jayB3aGVuIEk5MTUg
aXMgZGVmaW5lZCwgYW5kDQo+ID4gdGh1cyB1bmNvcmUgaXMgYXZhaWxhYmxlLg0KPiA+IA0KPiA+
IFRoaXMga2VlcHMgdGhlIGlmZGVmcyBjb250YWluZWQgaW4gdGhlc2UgbmV3IGZ1bmN0aW9ucyBh
bmQgYWxsIHN1Y2gNCj4gPiBsb2dpYyBpbnNpZGUgdGhlIGRpc3BsYXkgY29kZS4NCj4gPiANCj4g
PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRvLnVyc3VsaW5AaW50ZWwuY29tPg0KPiA+IENjOiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqYWxh
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxs
dWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gDQo+ID4gDQo+ID4gSW4gdjI6
DQo+ID4gDQo+ID4gwqDCoCAqIFJlbmFtZWQgdW5jb3JlX3NwaW5fKigpIHRvIGludGVsX3NwaW5f
KigpDQo+ID4gwqDCoCAqIENvcnJlY3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywg
cmVzdG9yZQ0KPiA+IA0KPiA+IEluIHYzOg0KPiA+IA0KPiA+IMKgwqAgKiBVbmRpZCB0aGUgY2hh
bmdlIHRvIHBhc3MgZHJtX2k5MTVfcHJpdmF0ZSBpbnN0ZWFkIG9mIHRoZSBsb2NrDQo+ID4gwqDC
oMKgwqAgaXRzZWxmLCBzaW5jZSB3ZSB3b3VsZCBoYXZlIHRvIGluY2x1ZGUgaTkxNV9kcnYuaCBh
bmQgdGhhdCBwdWxscw0KPiA+IMKgwqDCoMKgIGluIGEgdHJ1Y2tsb2FkIG9mIG90aGVyIGluY2x1
ZGVzLg0KPiA+IA0KPiA+IEluIHY0Og0KPiA+IA0KPiA+IMKgwqAgKiBBZnRlciBhIGJyaWVmIGF0
dGVtcHQgdG8gcmVwbGFjZSB0aGlzIHdpdGggYSBkaWZmZXJlbnQgcGF0Y2gsDQo+ID4gwqDCoMKg
wqAgd2UncmUgYmFjayB0byB0aGlzIG9uZTsNCj4gPiDCoMKgICogUGFzcyBkcm1faTE5NV9wcml2
YXRlIGFnYWluLCBhbmQgbW92ZSB0aGUgZnVuY3Rpb25zIHRvDQo+ID4gwqDCoMKgwqAgaW50ZWxf
dmJsYW5rLmMsIHNvIHdlIGRvbid0IG5lZWQgdG8gaW5jbHVkZSBpOTE1X2Rydi5oIGluIGENCj4g
PiDCoMKgwqDCoCBoZWFkZXIgZmlsZSBhbmQgaXQncyBhbHJlYWR5IGluY2x1ZGVkIGluIGludGVs
X3ZibGFuay5jOw0KPiA+IA0KPiA+IEluIHY1Og0KPiA+IA0KPiA+IMKgwqAgKiBSZW1vdmUgc3Ry
YXkgaW5jbHVkZSBpbiBpbnRlbF9kaXNwbGF5Lmg7DQo+ID4gwqDCoCAqIFJlbW92ZSB1bm5lY2Vz
c2FyeSBpbmxpbmUgbW9kaWZpZXJzIGluIHRoZSBuZXcgZnVuY3Rpb25zLg0KPiA+IA0KPiA+IElu
IHY2Og0KPiA+IA0KPiA+IMKgwqAgKiBKdXN0IHJlbW92ZWQgdGhlIHVtbGF1dHMgZnJvbSBWaWxs
ZSdzIG5hbWUsIGJlY2F1c2UgcGF0Y2h3b3JrDQo+ID4gwqDCoMKgwqAgZGlkbid0IGNhdGNoIG15
IHBhdGNoIGFuZCBJIHN1c3BlY3QgaXQgd2FzIHNvbWUgVVRGLTggY29uZnVzaW9uLg0KPiA+IA0K
PiA+IEluIHY3Og0KPiA+IA0KPiA+IMKgwqAgKiBBZGQgX19hY3F1aXJlcygpL19fcmVsZWFzZXMo
KSBhbm5vdGF0aW9uIHRvIHJlc29sdmUgc3BhcnNlDQo+ID4gwqDCoMKgwqAgd2FybmluZ3MuDQo+
ID4gDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIHwg
NTEgKysrKysrKysrKysrKysrKystLQ0KPiA+IC0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNDEg
aW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPiBpbmRleCAyY2VjMmFiZjk3
NDYuLmZlMjU2YmY3YjQ4NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YmxhbmsuYw0KPiA+IEBAIC0yNjUsNiArMjY1LDMyIEBAIGludCBpbnRlbF9j
cnRjX3NjYW5saW5lX3RvX2h3KHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4gKmNydGMsIGludCBzY2Fu
bGluZSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIChzY2FubGluZSArIHZ0b3RhbCAtIGNy
dGMtPnNjYW5saW5lX29mZnNldCkgJSB2dG90YWw7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiArLyoN
Cj4gPiArICogVGhlIHVuY29yZSB2ZXJzaW9uIG9mIHRoZSBzcGluIGxvY2sgZnVuY3Rpb25zIGlz
IHVzZWQgdG8gZGVjaWRlDQo+ID4gKyAqIHdoZXRoZXIgd2UgbmVlZCB0byBsb2NrIHRoZSB1bmNv
cmUgbG9jayBvciBub3QuwqAgVGhpcyBpcyBvbmx5DQo+ID4gKyAqIG5lZWRlZCBpbiBpOTE1LCBu
b3QgaW4gWGUuDQo+ID4gKyAqDQo+ID4gKyAqIFRoaXMgbG9jayBpbiBpOTE1IGlzIG5lZWRlZCBi
ZWNhdXNlIHNvbWUgb2xkIHBsYXRmb3JtcyAoYXQgbGVhc3QNCj4gPiArICogSVZCIGFuZCBwb3Nz
aWJseSBIU1cgYXMgd2VsbCksIHdoaWNoIGFyZSBub3Qgc3VwcG9ydGVkIGluIFhlLA0KPiA+IG5l
ZWQNCj4gPiArICogYWxsIHJlZ2lzdGVyIGFjY2Vzc2VzIHRvIHRoZSBzYW1lIGNhY2hlbGluZSB0
byBiZSBzZXJpYWxpemVkLA0KPiA+ICsgKiBvdGhlcndpc2UgdGhleSBtYXkgaGFuZy4NCj4gPiAr
ICovDQo+ID4gK3N0YXRpYyB2b2lkIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlDQo+ID4gKmk5MTUpDQo+ID4gK8KgwqDCoMKgwqDCoMKgX19hY3F1aXJl
cyhpOTE1LT51bmNvcmUubG9jaykNCj4gPiArew0KPiA+ICsjaWZkZWYgSTkxNQ0KPiA+ICvCoMKg
wqDCoMKgwqDCoHNwaW5fbG9jaygmaTkxNS0+dW5jb3JlLmxvY2spOw0KPiA+ICsjZW5kaWYNCj4g
PiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZXhpdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gPiArwqDCoMKgwqDCoMKgwqBfX3JlbGVh
c2VzKGk5MTUtPnVuY29yZS5sb2NrKQ0KPiA+ICt7DQo+ID4gKyNpZmRlZiBJOTE1DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgc3Bpbl91bmxvY2soJmk5MTUtPnVuY29yZS5sb2NrKTsNCj4gPiArI2VuZGlm
DQo+ID4gK30NCj4gPiArDQo+IA0KPiBXaHkgZG9uJ3QgeW91IG1vdmUgdGhlc2UgaW50byBncHUv
ZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMvaD8gVGhlbiB5b3UNCj4gY291bGQgaGF2ZSBlbXB0eSBk
ZWZpbmVzL2Z1bmN0aW9ucyBmb3IgdGhlc2UgaW4gZ3B1L2RybS94ZS9jb21wYXQtaTkxNS0NCj4g
aGVhZGVycy9pbnRlbF91bmNvcmUuaC4gVGhhdCB3YXkgeW91IGRvbid0IG5lZWQgdGhlc2UgaWZk
ZWZzLiBJZiB5b3UNCj4gbW92ZSB0aGVtIGFzIEkgcHJvcG9zZWQgeW91IHNob3VsZCByZW5hbWUg
dGhlbSBhcyB3ZWxsLg0KDQpXZSBhbHJlYWR5IHdlbnQgZm9ydGggYW5kIGJhY2sgd2l0aCB0aGlz
IGZvciBzb21lIHRpbWUuICBJbiB0aGUgZW5kIHdlDQphZ3JlZWQgdGhhdCB0aGlzIGlzIG5vdCBy
ZWxhdGVkIHRvIHVuY29yZSBkaXJlY3RseSwgc28gd2UgZGVjaWRlZCB0bw0Ka2VlcCBpdCBoZXJl
Lg0KDQpXZSBhbHNvIGFncmVlZCB0aGF0IEknbGwgbWFrZSBhIGZvbGxvdy11cCBwYXRjaCB3aGVy
ZSBpdCB3b24ndCBiZSBvbmx5DQp0aGUgbG9jayB0aGF0IHdpbGwgYmUgaGFuZGxlZCBieSB0aGlz
LCBidXQgYWxzbyBlbmFibGluZy9kaXNhYmxpbmcNCmludGVycnVwdHMsIHdoaWNoIGRvZXNuJ3Qg
aGF2ZSBhbnl0aGluZyB0byBkbyB3aXRoIHVuY29yZSwgdGh1cyB0aGUNCm5hbWUgb2YgdGhlIGZ1
bmN0aW9uLg0KDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
