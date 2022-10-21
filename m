Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D673E607FCB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 22:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E4B210E679;
	Fri, 21 Oct 2022 20:33:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 002AA10E679
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 20:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666384394; x=1697920394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cfHnjxHL8Je+mUmjdcdzZrUmUVVh+8cCO6ASCnyK24k=;
 b=jXCeVu+NufkMriWX6DnKGXylzgJVcSUuVQs3NmICn9fyU+eRrOJhsiIN
 u6T8MJbntyCw0IH/IXOcnie1ejv9eqd9jFHI/RccDs7glSICa5H+M4/2f
 boJFVRStkb0ZGJ54L9opxUVPH71/Jpu7NqbfOYMwPb+g6qjyY8TttqmUu
 fz4JN3woYnenOcDkEp3MIaHSnQr+sS/eCReeSXVuBvbS4cY8daBxZY7Hy
 Qz/QaaOZ3JyiD8GWsjvtcm22jFSdIBHesEA40RguVUGCAH8g/QzuRhjkM
 nCYGoWMcLRX6gbktkfZ1dV/2d6F1aeOaRMnVoBfFwqNjrAHn8YxoMWUoT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="369160786"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="369160786"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 13:33:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="581740729"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="581740729"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 21 Oct 2022 13:33:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 13:33:12 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 13:33:12 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 13:33:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jNlOk5nWW++MX193YtEy/IOMWFy/AKeF/tJtMpr4lrqeTfzYv6hAJhS68GJe0lxj9HJH9bEXJs6CbBpHP/0s7WC3g+17TiPeyMZYWX9PvNAOs/orisi1ZpZN5Hj2jl/y+tPwPgC5ZI2dCCxDtIiy65c3Mabu/BI91+wK0iiosiL5r5ZzUkpLuZboNWO/Cz6ct1AUcgODCwd2jUJ6dhmIHijkzK1IhcOjMPOXsFUrv3uka1K7VAfmVfZQYEIY2JyREAokjeUXmdzfSU+/VKU8dihKhvUiJgGKy7CA3OUrCh4HklbtLt0AgIKuxMRIL5wjq7H5ZvWDkHOcraQH1TQ8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfHnjxHL8Je+mUmjdcdzZrUmUVVh+8cCO6ASCnyK24k=;
 b=ShZ2cnRz2r8/cynNueo9OO4p9gS+94+YePDEMRB8juTybqkMMgGEuMb6YVE3eENMEjNJgSDnkUHgEKNh95d7M6fwcvDS1gPMWij867jCw/HCWLYQBsT6acto1LTty1XISUZmLpQbRpZ1qs/v2QhsvZBbh9zlJRvJXDExrI9WPqiua2AqKX3akuArGHykMG0AK9/zZAm/GQrvJTBcLn8HBoYUSENXVzag9wbyd++X1bMKyaiv6z4+fRVqpBJfddAlGNSwaAoBsZiYW6+PAZFljp4Nzkv1Ppp/PrqmZUEW7hymdI6i7qI5qizz4k9AxSSyKuPOA9H/e/IbIzAQC4RIhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DS0PR11MB7631.namprd11.prod.outlook.com
 (2603:10b6:8:14e::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 20:33:06 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 20:33:06 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/display: Move chunks of code
 out of bxt_set_cdclk()
Thread-Index: AQHY5OLyLkHEJOt4ZUiSFJUctIc7ra4YhYgAgADIwpA=
Date: Fri, 21 Oct 2022 20:33:05 +0000
Message-ID: <CY4PR1101MB216666D147DCF3CD5143F612F82D9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-4-anusha.srivatsa@intel.com>
 <87v8odfug3.fsf@intel.com>
In-Reply-To: <87v8odfug3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DS0PR11MB7631:EE_
x-ms-office365-filtering-correlation-id: 4403ec46-cbf0-464a-4f1b-08dab3a37598
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j1GrqD5on1XCcKlleXtyZ3c37ibHTHYeKbbsPXVjvfkHSQabJRfJOUegB/uc8RKx393VKvjpVSloN+odVEDdyXEAH+bdLcFgOLKaqZhaDutmU2qyW0nDt50ocVMVpMZzJD+BjXU9TSVk5rMhwIRWZeTJnp5NgUr92yXEkPBVyZSsVhcwW+kFbHptG6f/EBNAltUyhM3mC6KfiyYdYIjtHqRM6u7o2BjcSNJJ59Vx5zKhq8QfLCg2429QgQfj047P4NYfQ4kdgDBcWYVgJzk4m2Tp3rQfTSYysHJ6CRc4dIWO/A4yknBTt9TcLUaEVZOZOWDDJXeg72RTqbSDW2XJsy8+s8IyrGpGgHaf0GWNOG6L+hBGJXkHTeHwgtpqKPtF5NiY7zPzMNJXe2K0o4+SB6m3mxS6tuZNYkkAvIpSTFBVGn/hVYMQsBrXECIEu1hneHByC0T9+7SRQlu9i6VX9SpOAAdWxoCl2FEv/PiBliiNI2amUCDylqGf/Y7+fqSMl9lVuNjHDZUtWnAAgx+4sNwc0K9WGWIv7Qy/KN5LiY6GUUtnzMAtwUKqWuDdFvAE5Y9c4wK3QSpYSb3yFtHMCJX05ADk79ZzqFXFj9VL003yFs0LNh7fBAcBT7nLWhzU8IA5Mop4hQKGiK2ubnxXvYq5NmporXjQU9iJskP7o49MOCjIjEVXnCvzUJ6/+DevNntKQn3TdpGLhEjNXkIXeG9Bu69grUbPh3cPFCOzymxOjU+qqHYXAKMe9Io7HO+2RRn70ePHSa84DYA0WT7LqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199015)(33656002)(7696005)(9686003)(2906002)(186003)(316002)(38100700002)(83380400001)(86362001)(122000001)(38070700005)(82960400001)(8676002)(55016003)(66556008)(66476007)(52536014)(110136005)(64756008)(66946007)(41300700001)(4326008)(66446008)(8936002)(5660300002)(71200400001)(76116006)(66574015)(478600001)(26005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czRyaHRyUjQ5bDNuOG10VUpzUDIyZHBNVmUxWVBZRmhHMGtuZnkxRVdRSGFR?=
 =?utf-8?B?cUJvRVRaNjVkb3o4SWZtSHdwdjdLNTdrWDFwZFI2Z3ZpaHVrWHVBVk9Eeklj?=
 =?utf-8?B?cGxWc0Fjemt4OEVkZTJjSnA1QlpWV2F1cVhJdkZkZmxvYVo5OExtcGwvNXU2?=
 =?utf-8?B?bHphV3hIdkNaM2NucGxydFN4MG9NTUlOUFl4MVgzNzFUVU9IdnEvYWR2Q2xL?=
 =?utf-8?B?bXVaMW10dkZ0NDhMR0laMGtpZkdkeW90TXY4SzNQSndKYzhkaVhFeVBsSkoz?=
 =?utf-8?B?UWVUMDJKeTRyK3djQ2NLNWR5dlZtN2RZL0JiSCtTYy9GRHhzUHQzTURBTDhC?=
 =?utf-8?B?MGV3UkNIcEkzWVlseU9xcWxKVXNLNExvQWJGQUN2NG80NittOHFlMEZOSm1Z?=
 =?utf-8?B?ZWRiZFRWNDJMWmxJR0J6UHFBS1hreVphSXgzK2srUFhVOWEzMWgzanJkYmNy?=
 =?utf-8?B?WWVJWlhtNFhRNUg1cUMwd0cvbWF0VXpJcVowMDFoaVFLMGFNVVh0OENzQld4?=
 =?utf-8?B?R1ZOUnVHcU1TbWs1Y0ZTdkFXSnpjamdiaUFrSmh5VCtWZVE1NUJMdTdBMnY5?=
 =?utf-8?B?aHFueU0rQ1l3UDFjelowazZBcW9keEtZUktuYThKM0FZUDVycE0zdUNtaS8r?=
 =?utf-8?B?UjE5dDNYMVluR2xDbVBTTnA1d01BcC9uQzJwL2Y5MnRrcG9WaktWZnNQczFa?=
 =?utf-8?B?RFM0RU9ERUxXUEZwajF1WlErMXY3WGVDeWtKazBVck5aWTBYU3lMMm5xa3E4?=
 =?utf-8?B?N3hXbDZDeXFWQS9oMTdiY3o4YUZLR3htN212MXZEc1dXRWQ2UmZuTDVleGhv?=
 =?utf-8?B?S0szVjJkdmZOZVJxazRHTzRSWWNvRkk2Q2g1cTBBRTV6UVlJZ2poTjVKQmVU?=
 =?utf-8?B?cndPbk1STjVHYXFWLzNyR3ZzMmE2NjlsaURKRHJDMU5PeW5WYjUwcmtnbUVx?=
 =?utf-8?B?Y1pNWjJrcHV4MnV3aTRuMStkMUI2cGJnRWxjdUhHWFdIVGZBb3VzNllIQXdn?=
 =?utf-8?B?aU5xQUVkZEsrY2pvdnBIcldBczk0QUxBZGJDeVo4WUpyVFRIdjFpck5jMDNa?=
 =?utf-8?B?KzlKM1dzdVpLVCtSQTFMbnV3bEVJVzdhV25uUk1BZzhJYmlZL0kzV2o3YldG?=
 =?utf-8?B?NDV2TEh5Z2FhMUFJQWNFWXhOcyt5SDdlZUh0SDMvczI2ckUvTGsyYzBGRVo0?=
 =?utf-8?B?VE8wRy82aGl0dHlWOE84MGRYTnZ2VFlvejU3NGRpeUduYURQcG8xdE5keXJq?=
 =?utf-8?B?VG94STVCOHhYTjhyNzhtT3pwaVI0Ym5kcVJ4aDdXdHB6NHkvelQxNVkzK1hN?=
 =?utf-8?B?WHVFSzVocFkzTGlzRDhyc2NCdkhndnZNbUlqTFFucC9GS2I0d1pibjV2VjBu?=
 =?utf-8?B?UzNxUDhVNWZoV2JaQ1dmbFp2UUZKRGlJam5NOFdLVU8vTmlvV1U1YXcxemJV?=
 =?utf-8?B?T2Q3QmtvcFA0cTlEc1FvcjNRc2RzUThJTkdSMGMzWUovMGdrcXZXUDBxOHpV?=
 =?utf-8?B?RjhMMysxWXUyRUNRdVE2WmlCN1phMVlML3BmY05heTNlQmlXU2VmM3NUUHg2?=
 =?utf-8?B?eXU0bFFzN1UwRktZYWMwaTU2MXVJVm5pUVRMak1ocy84cEk5cVFERW9ybHFC?=
 =?utf-8?B?N3BKOW5OUENtd1Q3bTUxdkQzNkVKelRLYmZhL0h6SCtPQ0xJY0owdHJQN0NL?=
 =?utf-8?B?aHNGcEk5ajAvYmNrTFNGT1JHeFRyLzJPU2JaTXlVcWJzdWdsbXZwVkNsZEFR?=
 =?utf-8?B?QkJNdjhFZ1dSWUhjTlRTa2phNG1wK3JTbFd2RXJlNVBPVTRPeDM4WitVSXls?=
 =?utf-8?B?bkhpQm81OFFyTlFDSFNlM2wwR1hrdFBkTS9EL2lsTithZjVJME42NDJRcTVm?=
 =?utf-8?B?MHhHRWZmZVRzRjlzenVMcGo2QWNIeWZQeEFML2IxQmN4U1ZKVGExL3doa3N5?=
 =?utf-8?B?czFQZjBSaGdhRnVjaEI4SlV5Vk1YNmtLeTRwODRyVVJ6ZUpxRGxIUkdqVkRS?=
 =?utf-8?B?ZkV6TktzSmVlS1BDYnJ5MVlLcmN6WWRZbDREdStpdSsvV0F5KzNIeXdSeXJo?=
 =?utf-8?B?K1Z4Z0MxUGlXTjk1V201Y0tLK09yTHhCdEZxekVGQ2cycDRzOEkvaWJaWDRk?=
 =?utf-8?B?YWFQSUY4R2k2K0JZMm1qRDdaUDdzbkZHeTJQVHFaaDdvbzMxN3Vhc2Fyb0Ey?=
 =?utf-8?B?dnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4403ec46-cbf0-464a-4f1b-08dab3a37598
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 20:33:05.9678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MfjT/CzcwVVenRrMHEj6MfaAo3B5TTgAEnOtf+l8JKbWVpwy5z01mciyyRC2wCuTQ6hqfB3JiFsvcmU5nTrN6xSXGDaTbarADwB0lq2h8fA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Move chunks of code
 out of bxt_set_cdclk()
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
Cc: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBPY3RvYmVyIDIxLCAy
MDIyIDE6MzIgQU0NCj4gVG86IFNyaXZhdHNhLCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRl
bC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogVml2ZWth
bmFuZGFuLCBCYWxhc3VicmFtYW5pDQo+IDxiYWxhc3VicmFtYW5pLnZpdmVrYW5hbmRhbkBpbnRl
bC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMy80XSBkcm0vaTkxNS9k
aXNwbGF5OiBNb3ZlIGNodW5rcyBvZiBjb2RlDQo+IG91dCBvZiBieHRfc2V0X2NkY2xrKCkNCj4g
DQo+IE9uIFRodSwgMjAgT2N0IDIwMjIsIEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4gd3JvdGU6DQo+ID4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuIE1vdmluZyBzZWdt
ZW50cyBvdXQgdG8gc2ltcGxpZnkNCj4gPiBieHRfc2V0X2NkbGNrKCkNCj4gPg0KPiA+IENjOiBC
YWxhc3VicmFtYW5pIFZpdmVrYW5hbmRhbg0KPiA8YmFsYXN1YnJhbWFuaS52aXZla2FuYW5kYW5A
aW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNy
aXZhdHNhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jIHwgNDANCj4gPiArKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+
IGluZGV4IDQ1YmFiYmM2MjkwZi4uODcwMTc5Njc4OGUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IEBAIC0xNjg0LDYgKzE2ODQs
MjcgQEAgc3RhdGljIHUzMiBjZGNsa19zcXVhc2hfd2F2ZWZvcm0oc3RydWN0DQo+IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJcmV0dXJuIDB4ZmZmZjsNCj4gPiAgfQ0KPiA+DQo+
ID4gK3N0YXRpYyB2b2lkIGljbF9jZGNsa19wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIGludCB2Y28pDQo+IA0KPiBUaGUgZnVuY3Rpb24gbmFtZSByZWFkcyBsaWtlIGl0IGxlYXZl
cyBzb21ldGhpbmcgaGFuZ2luZyBpbiB0aGUgYWlyLg0KPiANCj4gaWNsIGNkY2xrIHBsbCAqd2hh
dCo/DQo+IA0KPiBNYXliZSB1cGRhdGU/DQoNCnMvIGljbF9jZGNsa19wbGwvIGljbF9jZGNsa19w
bGxfdXBkYXRlLg0KDQpXaWxsIG1ha2UgdGhpcyBpY2hhbmdlLg0KDQpUaGFua3MsDQpBbnVzaGEN
Cg0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+ID4gK3sNCj4gPiArCWlmIChpOTE1LT5kaXNwbGF5LmNk
Y2xrLmh3LnZjbyAhPSAwICYmDQo+ID4gKwkgICAgaTkxNS0+ZGlzcGxheS5jZGNsay5ody52Y28g
IT0gdmNvKQ0KPiA+ICsJCWljbF9jZGNsa19wbGxfZGlzYWJsZShpOTE1KTsNCj4gPiArDQo+ID4g
KwlpZiAoaTkxNS0+ZGlzcGxheS5jZGNsay5ody52Y28gIT0gdmNvKQ0KPiA+ICsJCWljbF9jZGNs
a19wbGxfZW5hYmxlKGk5MTUsIHZjbyk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyB2b2lk
IGJ4dF9jZGNsa19wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCB2Y28pIHsN
Cj4gPiArCWlmIChpOTE1LT5kaXNwbGF5LmNkY2xrLmh3LnZjbyAhPSAwICYmDQo+ID4gKwkgICAg
aTkxNS0+ZGlzcGxheS5jZGNsay5ody52Y28gIT0gdmNvKQ0KPiA+ICsJCWJ4dF9kZV9wbGxfZGlz
YWJsZShpOTE1KTsNCj4gPiArDQo+ID4gKwlpZiAoaTkxNS0+ZGlzcGxheS5jZGNsay5ody52Y28g
IT0gdmNvKQ0KPiA+ICsJCWJ4dF9kZV9wbGxfZW5hYmxlKGk5MTUsIHZjbyk7DQo+ID4gKw0KPiA+
ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgdm9pZCBieHRfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAgCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtf
Y29uZmlnICpjZGNsa19jb25maWcsDQo+ID4gIAkJCSAgZW51bSBwaXBlIHBpcGUpDQo+ID4gQEAg
LTE3MTksMjEgKzE3NDAsMTAgQEAgc3RhdGljIHZvaWQgYnh0X3NldF9jZGNsayhzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAlpZiAoSEFTX0NEQ0xLX0NSQVdMKGRl
dl9wcml2KSAmJiBkZXZfcHJpdi0+ZGlzcGxheS5jZGNsay5ody52Y28NCj4gPiAwICYmIHZjbyA+
IDApIHsNCj4gPiAgCQlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsuaHcudmNvICE9IHZjbykN
Cj4gPiAgCQkJYWRscF9jZGNsa19wbGxfY3Jhd2woZGV2X3ByaXYsIHZjbyk7DQo+ID4gLQl9IGVs
c2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkgew0KPiA+IC0JCWlmIChkZXZfcHJp
di0+ZGlzcGxheS5jZGNsay5ody52Y28gIT0gMCAmJg0KPiA+IC0JCSAgICBkZXZfcHJpdi0+ZGlz
cGxheS5jZGNsay5ody52Y28gIT0gdmNvKQ0KPiA+IC0JCQlpY2xfY2RjbGtfcGxsX2Rpc2FibGUo
ZGV2X3ByaXYpOw0KPiA+IC0NCj4gPiAtCQlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsuaHcu
dmNvICE9IHZjbykNCj4gPiAtCQkJaWNsX2NkY2xrX3BsbF9lbmFibGUoZGV2X3ByaXYsIHZjbyk7
DQo+ID4gLQl9IGVsc2Ugew0KPiA+IC0JCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5jZGNsay5ody52
Y28gIT0gMCAmJg0KPiA+IC0JCSAgICBkZXZfcHJpdi0+ZGlzcGxheS5jZGNsay5ody52Y28gIT0g
dmNvKQ0KPiA+IC0JCQlieHRfZGVfcGxsX2Rpc2FibGUoZGV2X3ByaXYpOw0KPiA+IC0NCj4gPiAt
CQlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsuaHcudmNvICE9IHZjbykNCj4gPiAtCQkJYnh0
X2RlX3BsbF9lbmFibGUoZGV2X3ByaXYsIHZjbyk7DQo+ID4gLQl9DQo+ID4gKwl9IGVsc2UgaWYg
KERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMSkNCj4gPiArCQlpY2xfY2RjbGtfcGxsKGRldl9w
cml2LCB2Y28pOw0KPiA+ICsJZWxzZQ0KPiA+ICsJCWJ4dF9jZGNsa19wbGwoZGV2X3ByaXYsIHZj
byk7DQo+ID4NCj4gPiAgCXdhdmVmb3JtID0gY2RjbGtfc3F1YXNoX3dhdmVmb3JtKGRldl9wcml2
LCBjZGNsayk7DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3Jh
cGhpY3MgQ2VudGVyDQo=
