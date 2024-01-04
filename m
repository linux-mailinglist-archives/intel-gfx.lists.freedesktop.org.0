Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57766823C89
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 08:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4792D10E2F9;
	Thu,  4 Jan 2024 07:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B0610E2F9
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 07:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704352564; x=1735888564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tlhfR8t1sAArg1vJRgbo69t7W5RefVLJFE52FMIU3Vk=;
 b=CgUCqi28BaTw8MA9m1XRT28EMRSUsyu32xYi6mjBxK8shL4NuUXbiZbY
 M2raTjOv7toCzGsMbsBCflMgIqSMd/Km6ZaQFRil/8vIvbMallr2oOjbM
 2wYspmEwCKgAsHHNPLuHcQZDHxEY7Dc8Qv9I34f4KTPAui6Ub7aH0MPm2
 ouIoTIoAtBdtq4bumOvi4JEi7fL8c9Pn2c2zAk1PA/C0EIsan3sF4SXNT
 gEftEQUT5xzyMnCRXY8HxBD3yFu/SNJsUIPm/Zf8PyRLiCmfM6MVMAVa3
 qYsuyzCAUcDYjMHzfno2aP791KOQOsxbYkIeckApja5D6k0rYWVacpR1d A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="399924564"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="399924564"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 23:16:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="730042775"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="730042775"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 23:16:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 23:16:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 23:16:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 23:16:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 23:15:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HMITEWIvupiP6Milzk1rRKjFAXFO6ZBUkqVJiH6TZR+DWv5PjsAat/VUlsG8RChqDqvDpRucUw9o1mJiw0NT569jdlVfETmP302wYvW6Vo7CfBB+rk/ysw7g3pbuv0WCTqf/iCWOqAWA+slz+LpI8oHt+Vp5wsXn/FToXvW7/BdKuMUUZiA/p6V83GAGFJ2T3T9oGStTQWxxHwCXdR7BhSFDeL9iuN2dAnMdfAEsilDNATpmSw+hs80EWgOu3DvVSNN5UTZ2IC97JqL3IBBneGZFhV49BU/AqKBOZ0jMIfgKYThc9v66oIupUvz7+cgazlzP1yggDTH8ZOaaNneH7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tlhfR8t1sAArg1vJRgbo69t7W5RefVLJFE52FMIU3Vk=;
 b=i/ULOnWdV9f9B3RA5edqthcFa8mDJJ8viH0315NbLJRj+OFlV/jAXM8ozofi6uWtziXDxph3d6TT1/0eJ/uKlUfIG88JfuW1PLXrFhGJ+bx3oImH22RcgQtmBcXcayf+Y3RELpsgRxJdJnpu+Qj+vKV6pvPAMnNAF/AYt+2LdHq1kwF+ilOXfpNkiwCOzca5JpXLWp64EobuISTfuyOImyeGS9x3euxy0JuSwiUbApRoVKc13IT8oc+KxIOwrCAW6QNNaPh2TlNOgkxUzNuPl9nMyTpmBJAmnrK8fbonFep1HY4kPHlct85KU8z5suHrKUWoGBItHa0WbVFDloZwhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4572.namprd11.prod.outlook.com (2603:10b6:303:5e::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.13; Thu, 4 Jan 2024 07:15:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 07:15:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v2] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Topic: [PATCH v2] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Index: AQHaPlktiH8fohG9TU6np93naDYMJ7DJPv4A
Date: Thu, 4 Jan 2024 07:15:51 +0000
Message-ID: <da0b5a08e362a9bedb9af65aae0ff3dd64966403.camel@intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
 <20240103152609.2434100-1-imre.deak@intel.com>
In-Reply-To: <20240103152609.2434100-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4572:EE_
x-ms-office365-filtering-correlation-id: 6de447c9-4acd-48ab-c5b3-08dc0cf4fbed
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4FoUgEcscTz6u3LO+Q24D1JxqufwNr15t54BUgRxIonfSGeCrlYq/m2PyCrHkRJN+pO7fHLd6PKju6I7I4kNNzMLUvPbhlDqqgw1rvsYPStkCkwN6Nd+NnOieE9IcGy0M0GAVHZD2KifmmvvuYqKv0gS1cgj4Y9z+1DUTfdTTlKYXB0nJJgaTClfu0n3XNc618Hk4JeGaml2vXVqoLxks+PBG8GEfogFQ4Ulpahdi+f2xzW7al00dbU7mr0T+x0/4iDe4c8eTysFK9winZ3ls3EZN9hl7tnxM2OTOPfuDxs84jhwyd5MNpiRk9X7e0k3Y7j9t7kIjXOFT7x3++ZcVuk1t10K4bdpSTUAZugLj5fXClAQif77Kd59qLrQwPEkLwc8YSDs3fazFXKXItQ9P5wMZ942GtmjuxItPgqBzdFPXikhgQ0ENfRLfYqfwUwlZrxGuBb2xVu/QE8xbhkjz6c+KaDpF1SPDI9V40Taci6E9uqND7OqjtURizfT27/+fpaJKXu4oa5T3LuioG6S3CQVt2ogJL/ZsiuCOGmwiLGi3SbicBSmt8bBj9Mk1DkKiWjCQ68FwKoHX+pvPZgh4DAAcvVYFJ1LnzAhd5JrCS0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(396003)(39860400002)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(5660300002)(2906002)(4326008)(316002)(8676002)(8936002)(91956017)(66556008)(66476007)(64756008)(6636002)(110136005)(66446008)(76116006)(66946007)(107886003)(2616005)(6512007)(26005)(83380400001)(41300700001)(38100700002)(122000001)(82960400001)(36756003)(86362001)(6506007)(478600001)(966005)(71200400001)(6486002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmNGNkJVNHFjM2ovZFJYb3BoU0VyRE9EMi9XcVpXWEdPRkUvWmtIays0dGdh?=
 =?utf-8?B?YTMySWFjdUxpVytBc3MvU25vZXZSakF0aVFxSlc0cjBndy9mTU1qSnZVZTYx?=
 =?utf-8?B?aUd0QjhBcU1URmNsT1Z4QmpFa0I3NGRweFlTeUEvVkNMTEhmOTcxeWwwR3Rr?=
 =?utf-8?B?eXFwNEtGdnVvUWJLdHJXalBvNlJtUWxqNjRGK0thL0o2QUdhZS9jZUhJSElU?=
 =?utf-8?B?ZlFaWGQwaGQ3ajFuY1dMUU9JTkU2QVdxaCtCeWNXa29qS01LcWQ0WG0zQm81?=
 =?utf-8?B?Ujd4UzV3U290WndVOEV3NU1kNFBZeVU1VWQyeUxBU0xJbmZzTWozRytvUTkv?=
 =?utf-8?B?c0laRjVVMGYxdktOQkcvU1BJaDZGWGMyc1puR3ZYcndXdGY2cythQVFXL1Rm?=
 =?utf-8?B?ZndqNzBvNG9rMUtJdEdUb1ZxYVBjR2FDMnJSMDU3Z2hmcUM3di9ITGpqZFRR?=
 =?utf-8?B?TEZMSkJDNzFiVWczMHMyL0dzM2Jud2N5VElSSU5hTkI0STFkeVZwRXYrL0Jz?=
 =?utf-8?B?Y2oxb2hIdXU0U3hZaUFaQlE5RnpkeTJ1WUNoMXViNkN2RU9BbDZIMkdhcXU5?=
 =?utf-8?B?Zms0V1UyTDE4SEZpQzU1MCt6aFViRWdlc2xGY1QyVzdOL2JSd1VuQ1dmK3h4?=
 =?utf-8?B?S0orWXZIKzJTWUFtRkdNZ2c2a3hxQ1BZUDR0eWZRa0E2czhWUkpoMFJNZHo5?=
 =?utf-8?B?eFh0NWVUd0t5T3R2VlpoNXJTdU04cExkM1dMTFQyOGtnN3NjaTl0MXErK1pj?=
 =?utf-8?B?UnVmZHlvOWNvMXZxcTQ0cmViZHNaVytPZkJQelE1QTJCM2lUb0ZYTEYyVjBs?=
 =?utf-8?B?Uk0ydnZyQSs0R2xoZGJ1aS9BdjdaR1FwVmhOWHpDd1NQUTBJWHhZZlJabFow?=
 =?utf-8?B?cTRDaE03RXU0Y0MyMmZROXhiRmdpZkxDRTd0emF5M1Erc2N0anFwcUFUMnZL?=
 =?utf-8?B?Rm1hRGRHdXJtdExSaWZIZUVhL05FQSsxMXk4WE9lcVlNb1llTkExcjA5SGVk?=
 =?utf-8?B?eHNXY2paNFRSRzd6RmY0THZhVEhxWmhuZE9sZHRiUnQxb2JUd2txd3lUVk9E?=
 =?utf-8?B?SjJNbm14YjJJMjRzRU9GMGgwZEJwYjg5T2FiMStoNjNiRWN2TUFuOUd6WHIw?=
 =?utf-8?B?VlBUdEIvelozbTY1VURwUEZZK2VCakNBcldUSXZ2K1hYRnhaMnRXc1hKS092?=
 =?utf-8?B?VnRPc0F5RlVsakIrYUl5bTJVdHhDQzZHd2hFbGxTUFFkdHl1bC9jdXk5bHFK?=
 =?utf-8?B?Rm45VEpMOHdiQjFTK1gvcndFYldxbXA4ZlRScW44RkFJYnVQRFRoc0dUQkRM?=
 =?utf-8?B?eEV5ODUyV1puTnFyNU5iRnlxaWtIbnpsRjFSUmhweGprRThieS9pTk5ic0lm?=
 =?utf-8?B?TDZ5KzkrS0Jaalk0a1VwUWx6R0xCVmlpWEtUc2RMU2FOalppdGF2Z0lFZkpP?=
 =?utf-8?B?L1BIWkhUZ1FRSHJKRUZvZ0xiMGFvcHAxbE5mdHBuVVZKQzljTS9MQVhFUGUv?=
 =?utf-8?B?RkFPd1QwUnZRWlpiVEV4KzZhbDF1bmlLTWxENjgyMDd4eTRRLzB4UXJIVW83?=
 =?utf-8?B?TjRteC9EM1lEWHBmbFRkNUpKcVV2MHYxSTlDWXFrN2ppQzBaSVRWYVIrSGx2?=
 =?utf-8?B?dGRZRlYza3o1LzBlclN4MkhwdDNJeUF6N2piQzlOZ0NXaUVOcCt5T0dkdUND?=
 =?utf-8?B?OTRDR2YrM1RwRFNKMFc1dVdJenkyMWNHRmRYc285Vkl0anQ5TjA1czZiUEhR?=
 =?utf-8?B?WGhnN3kwbTlsRWJBZnpZR0dYd090RTJpK0w4YmpKaW5ydmU2WkUzRlJ6MFZj?=
 =?utf-8?B?MzdtOXppeXVhb2hXL25VMm9JRzBTcU1ob0dLdWxDVHBSSFNJbjFFR0lFTGwy?=
 =?utf-8?B?UXZXV0pLVkdZM1FGRk15UEpQYndWRFgrRzhrRE1LcWZ4MkpheTNUK2JvRFYv?=
 =?utf-8?B?b1JIbytGQlh2QzBjVkprZlpJR2lJck8vQUxPYmp5NmxDbUFvblhiS01xcEtF?=
 =?utf-8?B?UElPMHRYakwxUWFKNkFQUU55ODdlUlI5dnVWaEVuNnVoRG1DS2ZjM0ZsS0pD?=
 =?utf-8?B?ajdacXZrVG1RRDNSMHlES3MyYlExUlFiREduUnZTQzdEZVhMNzNYdWZOY0dI?=
 =?utf-8?B?Q3M0WmVmbDBtOFdYTllPeGxNWkJnQysyWXcyOXpnNlNzRXEzeTFqWUV0RWVG?=
 =?utf-8?B?OXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <18B61C79FA0E524CBBFB18B6C9E1889C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6de447c9-4acd-48ab-c5b3-08dc0cf4fbed
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 07:15:51.7738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SMLSAOcnHrhfma9q8iqyC4yhXcqUK+43xL760M2P2jyTEtKj9ErYSWq19t3PJ7J/EuA3JR9M/asy/59eLWp26dZOsk8vyJ5YSpa4P6h0FXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4572
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

T24gV2VkLCAyMDI0LTAxLTAzIGF0IDE3OjI2ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1T
VCBjb25uZWN0b3JzIGRvbid0IGhhdmUgYSBzdGF0aWMgYXR0YWNoZWQgZW5jb2RlciwgYXMgdGhl
aXIgZW5jb2Rlcg0KPiBjYW4gY2hhbmdlIGRlcGVuZGluZyBvbiB0aGUgcGlwZSB0aGV5IHVzZTsg
c28gdGhlIGVuY29kZXIgZm9yIGFuIE1TVA0KPiBjb25uZWN0b3IgY2FuJ3QgYmUgcmV0cmlldmVk
IHVzaW5nIGludGVsX2RwX2F0dGFjaGVkX2VuY29kZXIoKSAod2hpY2gNCj4gbWF5IHJldHVybiBO
VUxMIGZvciBNU1QpLiBNb3N0IG9mIHRoZSBQU1IgZGVidWdmcyBlbnRyaWVzIGRlcGVuZCBvbiBh
DQo+IHN0YXRpYyBjb25uZWN0b3IgLT4gZW5jb2RlciBtYXBwaW5nIHdoaWNoIGlzIG9ubHkgdHJ1
ZSBmb3IgZURQIGFuZA0KPiBTU1QNCj4gRFAgY29ubmVjdG9ycyBhbmQgbm90IGZvciBNU1QuIFRo
ZXNlIGRlYnVnZnMgZW50cmllcyB3ZXJlIGVuYWJsZWQgZm9yDQo+IE1TVCBjb25uZWN0b3JzIGFz
IHdlbGwgcmVjZW50bHkgdG8gcHJvdmlkZSBQUiBpbmZvcm1hdGlvbiBmb3IgdGhlbSwNCj4gYnV0
DQo+IGhhbmRsaW5nIE1TVCBjb25uZWN0b3JzIG5lZWRzIG1vcmUgY2hhbmdlcy4NCj4gDQo+IEZp
eCB0aGlzIGJ5IG5vdCBhZGRpbmcgZm9yIG5vdyB0aGUgUFNSIGVudHJpZXMgb24gTVNUIGNvbm5l
Y3RvcnMuIFRvDQo+IG1ha2UgdGhpbmdzIG1vcmUgdW5pZm9ybSBhZGQgdGhlIGVudHJpZXMgZm9y
IFNTVCBjb25uZWN0b3JzIG9uIGFsbA0KPiBwbGF0Zm9ybXMsIG5vdCBqdXN0IG9uIHBsYXRmb3Jt
cyBzdXBwb3J0aW5nIERQMi4wLg0KPiANCj4gdjI6DQo+IC0gS2VlcCBhZGRpbmcgdGhlIGVudHJp
ZXMgZm9yIFNTVCBjb25uZWN0b3JzLiAoSm91bmkpDQo+IC0gQWRkIGEgVE9ETzogY29tbWVudCBm
b3IgTVNUIHN1cHBvcnQuDQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gRml4ZXM6IGVmNzVjMjVlOGZlZCAoImRybS9pOTE1
L3BhbmVscmVwbGF5OiBEZWJ1Z2ZzIHN1cHBvcnQgZm9yIHBhbmVsDQo+IHJlcGxheSIpDQo+IENs
b3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85
ODUwDQo+IENjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gQ2M6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMCArKysrKy0tLS0tDQo+IMKgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA0OTRkMDg4MTdk
NzFlLi41NDEyMGI0NTk1OGIwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gQEAgLTMzMTAsMTEgKzMzMTAsMTEgQEAgdm9pZCBpbnRlbF9wc3JfY29u
bmVjdG9yX2RlYnVnZnNfYWRkKHN0cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikN
Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkx
NShjb25uZWN0b3ItPmJhc2UuZGV2KTsNCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZW50cnkg
KnJvb3QgPSBjb25uZWN0b3ItPmJhc2UuZGVidWdmc19lbnRyeTsNCj4gwqANCj4gLcKgwqDCoMKg
wqDCoMKgaWYgKGNvbm5lY3Rvci0+YmFzZS5jb25uZWN0b3JfdHlwZSAhPSBEUk1fTU9ERV9DT05O
RUNUT1JfZURQKQ0KPiB7DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIShI
QVNfRFAyMChpOTE1KSAmJg0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgPT0NCj4gRFJNX01PREVfQ09OTkVD
VE9SX0Rpc3BsYXlQb3J0KSkNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm47DQo+IC3CoMKgwqDCoMKgwqDCoH0NCj4gK8KgwqDCoMKgwqDCoMKg
LyogVE9ETzogQWRkIHN1cHBvcnQgZm9yIE1TVCBjb25uZWN0b3JzIGFzIHdlbGwuICovDQo+ICvC
oMKgwqDCoMKgwqDCoGlmICgoY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlICE9IERSTV9N
T0RFX0NPTk5FQ1RPUl9lRFANCj4gJiYNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29ubmVj
dG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlICE9DQo+IERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5
UG9ydCkgfHwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+bXN0X3BvcnQpDQo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+IMKgDQo+IMKgwqDCoMKg
wqDCoMKgwqBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3Bzcl9zaW5rX3N0YXR1cyIsIDA0NDQs
IHJvb3QsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb25uZWN0b3IsICZpOTE1X3Bzcl9zaW5rX3N0YXR1c19mb3BzKTsNCg0K
