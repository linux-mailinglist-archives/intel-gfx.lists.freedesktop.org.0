Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF7543BEBE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 03:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7144D6E4EA;
	Wed, 27 Oct 2021 01:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3D2D6E4EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 01:05:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="293512515"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="293512515"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 18:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="447332886"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 26 Oct 2021 18:05:33 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 18:05:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 26 Oct 2021 18:05:32 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 26 Oct 2021 18:05:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 26 Oct 2021 18:05:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hY/NV3rRUUKhFT12W/tR13mZBh44vYltN6/+h7CYRMqDE3cjuPj1ILtjPWgXbtrHdNpL2z8GcY5NlzJ2Y5hOoPEfpiuLlXU+uLq9Xl/xUCebwoB86l46iwetO2xfJxzYC24qJjmZfUOkoQbbyyjvxoNpqYmUu8ZE8wqR421xiBab36GEf+5lEDiMTTBCe2ju5aWY7ShpBQDK7wUPelrPkKqZMZi0WUtcH6TPjKpKmtWLGe0IF3BdIWw+JoEBhuer3O0FzA8vi/q8X7Amf7IrIJ0kUeQ4OsJ80wZpppLiYJdC8E3kVYMVo58lNrfcr75GvrAANUX8r6gb9xSCAGz42Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wF2cO8iXqptFxOrxRZOhcnkDxC65j2hoq9GPaG8RYKA=;
 b=FsAaC39tXK3fpHL4YmEGHtprtCJNM0mrhoCfcyV05l5dp84H9F7E2h2b0dVmtx5788yAvjzpQd0Np4aqdmHu8kzYC+vhUSiM/t50mV5P0pa9Vl5FTu1vmv36TnbjLUWLS0RiYAdLVq8JMHjA1iRCayDucxXWGjychMQNefnz+SRYeSnepVAhOeCXXx4O9fZz3nEA9ZN92PRQ/+D/8gP26lB8qyszpP5nwhyJNiPBRcJuJLSCy1xmoIBcZi1UdhFJnNcsnrg/vpYutl3fZwjZreCpZ+jQkNJZ6lD/JLOyS8TlDIt1JZyXYzM61ZWHBGCcK+TFlXyu0Rts0ZjA5E8s5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wF2cO8iXqptFxOrxRZOhcnkDxC65j2hoq9GPaG8RYKA=;
 b=cllLZC+sczdAArVDDgNWYp1+j0KhDvGrw2zzV7bYchnmCvvggS9YGdod4PA4ridQSMCqdOvItP5mP84sfPRxrImq+wRO9Uv7SNNZNmZsjj1zlSxcfE56xv7K5TpnjDVWi5hHB7trvsoEa2sVG0oJQKNInyqQivkbf/nBYoCwPBo=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR1101MB2351.namprd11.prod.outlook.com (2603:10b6:300:74::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Wed, 27 Oct
 2021 01:05:30 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::fd14:4e67:a33d:c0ad]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::fd14:4e67:a33d:c0ad%8]) with mapi id 15.20.4649.014; Wed, 27 Oct 2021
 01:05:30 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
Thread-Index: AQHXys682005p2RGzUeyJUjiOxt3Bg==
Date: Wed, 27 Oct 2021 01:05:30 +0000
Message-ID: <54fada5eea99c1b5d7af300bcd6697711c3c5705.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-1.fc32) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ae95a7f-a803-49b7-6ed5-08d998e5df24
x-ms-traffictypediagnostic: MWHPR1101MB2351:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR1101MB235181D013482B62F842E04CC7859@MWHPR1101MB2351.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vAyoKG+95ld/XpNcGGJYXqGyyQIPwE70DdqPhDlR/qyiQniQ0SpZ5nSJg0uEjUBRFd8m1PwYNbzNgZzm2YNWH+5pptr8JnKWPbz7pOhNz161co0BDJ96LT9moyP/j9iowoi5NTE+xuwwuh2aRs2f8PfL3jtCDHo+MeGURbslUK5T7mcy8TEzwijwbMimzV3zyprDal9qUzddN8DFmJOo/+FWVZJ3lDF1jzftWFpYPqs2l0RT/FSLgjYlZODiHUVYTvtCjbZRbQQVNAggEPgFYY1QISM295o6B4Rlsvs8tlk1KtmGaoloJEw7+I4+ugrPrjGVwaVUIu8LOfSq7pVylMcc2vO+NwXofbJyDLxhgglG42Shfoa19T0BBkHD6v1rcZpKDEvNPO5xVOfQPh9GaQoB6MyDoJ7UrFjQoJ/XAyOv548rXIo9shbmk+IQc6uOA/6jbUQWZzynRF8YmXt3/qrBzG4PvboQ2ekfMnPjqqdpmD5+l4v7ZBs3cTyIjComICj2N+nXS5G4iHJQ3+xAzJAY9KvFyiBR9RhnY8WEVsHczcRUTq34KO3dMqkZpT33CH6lVRJVvOHHyyZzeW8IXGSXsNfREWIwOeL/g09gP3oMKm96Akk1KOVfdv2bmbTJoUugd34LF0n7d1eBzK1CMakKT118YQo81lzfqhYja4OmN52MfHGSkJROVBT2QI9NPxmTPXLIomEjV8qsaHMhag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(36756003)(6506007)(2616005)(2906002)(122000001)(86362001)(38100700002)(186003)(316002)(6486002)(6512007)(6916009)(966005)(8676002)(64756008)(66446008)(82960400001)(66476007)(66556008)(66946007)(5660300002)(76116006)(508600001)(38070700005)(83380400001)(8936002)(71200400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGlYQWJHTnUvaFdlZmw0eC9sQ0pJSVQ2NG8xcjVnU2NUZ2FHdUFtWjFlK2xi?=
 =?utf-8?B?d3lnQ3BpSjUxZVQ5QlUzK25WdVBnUUUwb0tyQ1NBL1c3dEx0ZFN0U1dVRXV5?=
 =?utf-8?B?NTZFNzVoQnBkVkpyRnlVVHQ3TFhXdUhYMmQyWFc0dzRNaTRsUEd2NG9nby85?=
 =?utf-8?B?bHc0SnFRakFZQ1phSy9UWVM2VkxLdWgwSzRvUnB6VnliN3FHQWFDWFVtODRs?=
 =?utf-8?B?V0FMS0JBYjU4S3dSOEJvSUozWlgrcmhWYWd5U2ZMOUVkMlBuOHp0MWFFTlk1?=
 =?utf-8?B?M0ZJWll2RDYySlNyTms1M1p1WkNsK3NrRWVHa05qeGVYR1RLT2VmYW1NY1ZK?=
 =?utf-8?B?S0MzZnRMMzNmRTg5cjFjWTZSQmVSc251bkt2eWZ0T0ZwOWJqcXZURHZXWDhD?=
 =?utf-8?B?bXRoeVh5aWRSYkVHL0Z3V3hVdnlhcnpobXVwWDREcEluVWJYVml5WkpFTFg2?=
 =?utf-8?B?bVRMSkVZeGQ1QzN0Qy8yNHZtbDJRSE12bzR1ZkRHelJOTjZLdmhya2NSblg1?=
 =?utf-8?B?d2loQnF2OWhublo4SjYvY2NXODdYUFVxeWZHVTRKNit5SXV2bUdxd0NlYWdP?=
 =?utf-8?B?OXcrVXlEZXFtUHRXTW81UXZsTGlKSTZkK2lHOVRSSFRhWTFlYzVleWRIcXBr?=
 =?utf-8?B?emU0UnNVZ25nRWlqWnpYbTJzWndqa2xiNzdMc1VyZDhINXBFb1U5dUg2eTZC?=
 =?utf-8?B?WHlHcDBveGo1VlU4NmFEV3dXTU1CWndNVlhTckhkMGt4OFNvVEF3Qm5XZ0tm?=
 =?utf-8?B?NDdKWjZBKzlEUW1YRXRsQm5wM2p4OXBYNE5MMlZEU0VpOUJYZmlnc2NrYnZp?=
 =?utf-8?B?VEUvdHM3S1pmd1ViUS9jS1cxVnFabUs2QUxyaVZQU1pjTTBXSjgzaDBGSWFz?=
 =?utf-8?B?emgxT01LZy9vdjI2WmZQNmU0Ry9HTENybVZ6dTlRNENiWjcvU0MxYVNlN2FX?=
 =?utf-8?B?NklveTFLRXAyR3VmcFRXVllOQzRYZlpkbmltSXc0VWJzVGRHNXFhdDQwSFJa?=
 =?utf-8?B?QTJ5bGNKVXdjMi94Vld0SmxWN2EzZVN6VktwNWlaanA4RFVGSGJ4eCsvZTly?=
 =?utf-8?B?cnorMkJxODh6Y213K1FyYnlMOGxIYlQrZmxsd2lTUmRFMFFkNUp2blEvbTA2?=
 =?utf-8?B?TUw3ZFRoQnB6R2MwQXIvdmJSV3JlQ0VmVW8vMlhUTGNqRDNKczlEb3llaUNm?=
 =?utf-8?B?Y2MrNWVIUjhtaERmKzNLY0NXaHg2NjJjQ1Y2L2RZbTYzTXFUSzJBNm5KRm9W?=
 =?utf-8?B?RXFCTTB2cDNUdi9SSy9FUEoyTHFob0Yyd1dOMzNZTDltaWE2OGRUc0J4Y0tR?=
 =?utf-8?B?anB5THpYWHZ0a2szSUtaeU1xUkFvZkJNM2ZKaXpUNkJJNUlVcFZqZFZra1gv?=
 =?utf-8?B?UTlYRUdBZktBOWZnSUJYWlR3RGpyZm14OC9rRDBKNjNJUFprYUU0TUlQOHNh?=
 =?utf-8?B?aUhKK2FWS0tDRVMwVk1pTzMyZmFkUHBqUTA3MjRDTVU0bk1Ba200MmR0NUoy?=
 =?utf-8?B?OFMzaTQvVWlvNkViM2phOHVjVVFoRitXNFVwNnhydStqWXQxZ05UL0kxbExJ?=
 =?utf-8?B?RE9BZk9CcWdZdkw1VzE3SnhUelVkbUhhVFFKVWxKSDI4bk1sTk1MVmwwUE9L?=
 =?utf-8?B?VEh6VFl5WFRZQW1yU3JtVFhGYjMrUzdDeHNMT2tTdEtDUHhMVmMzK3hBMUVs?=
 =?utf-8?B?UGJ1QnVIUk05cjFwSmZ3TXdkZndKSE1KNGhTYlA2Wmc1RXMvanRoSElyQTJY?=
 =?utf-8?B?WkxHakhITk9xcjYrVVZpc3pmSDdOWEwzYVRGVUp4bTQxQUY2cm43L2tFWFky?=
 =?utf-8?B?aS9ORVBWVnR0dzREOGF0eloxazk4NXgzWXJnOWY0TGhybEZuT0JtaHNjTHR3?=
 =?utf-8?B?cXBMaXVkTG1IMUVIZG5GR2w1bTRkWnMxd3VWU3E1YW4yU04wTWp4d3ZIOXk5?=
 =?utf-8?B?a201MmJSbVJLODhwSFgvL29ObEpmSENSODJvRUlqODA0Y1kxZnpmdUlMSW1Y?=
 =?utf-8?B?THQ4a3JpYWFwUytZQjdKWFYvNHZyYWk3RFo2TmJuT3l5WHhQZ2hMTE1nSXFR?=
 =?utf-8?B?T3hITHREOUlFcEZvOE5DbkwvMzFNUzMyYStBMUpyeGI2ZFFjeWkzTEFjcmVB?=
 =?utf-8?B?YS91QlpJdFZYV0s4NzdIek5aSmVCZlRKMzVMRHdKaCtoUDBDaTQreEhOOS9O?=
 =?utf-8?B?VHZLUTNlbVJZdVdwNDFReWErdnRoNWdtWXZVVENuTEE0VWI5VEFiS0VzVEY2?=
 =?utf-8?B?RFRZV3kxV1V0SUlTb0VyaDJkTE5FKzRRK0VpWnNBakZpSTB2VHNKYmg5eFhr?=
 =?utf-8?B?NFZ1WVV1Zkhwd1JkYWZsV0JMRXZQWGFBVGRhYlp6YmJoM2RuVzJJRFBEbHZR?=
 =?utf-8?Q?YDGfyTeaIhgMLidp6PEMqhI0rUZNJDgaMqsD5vlgwODuY?=
x-ms-exchange-antispam-messagedata-1: 6E9SNCV1s0n0IxsqXLe92y63+FWfeCC1QLA=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C08F50E7FD14844883A1166195461985@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae95a7f-a803-49b7-6ed5-08d998e5df24
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 01:05:30.6543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T2NX6qYRZNclZpIGcTmJdtWrcEIuMrGFR9O2a4lWN2qqdCuFQ2XNO3KTB2td9aQuHkF0UzVhdDdrbjyTGAvpuCL9GhK+NnhmFoXDzri2+QzNlOH/Z3fUPT0oLSn9Wej3CzgQhowiOxUNyaVWBTO5FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2351
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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

T24gTW9uLCAyMDIxLTA3LTA1IGF0IDEzOjI4ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyOSBKdW4gMjAyMSwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YSBhdCBpbnRlbC5j
b20+IHdyb3RlOg0KPiA+IE9uIE1vbiwgMjAyMS0wNi0yOCBhdCAxNjo1MCAtMDcwMCwgTWFkaHVt
aXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXANCj4gPiB3cm90ZToNCj4gPiA+IFBDSCBkaXNwbGF5
IEhQRCBJUlEgaXMgbm90IGRldGVjdGVkIHdpdGggZGVmYXVsdCBmaWx0ZXIgdmFsdWUuDQo+ID4g
PiBTbywgUFBfQ09OVFJPTCBpcyBtYW51YWxseSByZXByb2dyYW1tZWQuDQo+ID4gPiANCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQcmFkZWVwIDwNCj4gPiA+
IG1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFkZWVwIGF0IGludGVsLmNvbT4NCj4gPiA+IC0t
LQ0KPiA+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMg
ICB8ICA4ICsrKysrKysrDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9ob3RwbHVnLmMgICAgIHwgMTYNCj4gPiA+ICsrKysrKysrKysrKysrKysNCj4gPiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+
ID4gPiBpbmRleCAyODUzODAwNzlhYWIuLmU0NDMyM2NjNzZmNSAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
Yw0KPiA+ID4gQEAgLTYzODUsOCArNjM4NSwxNiBAQCBzdGF0aWMgdm9pZA0KPiA+ID4gaW50ZWxf
cG93ZXJfZG9tYWluc192ZXJpZnlfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
DQo+ID4gPiAgDQo+ID4gPiAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3N1c3BlbmRfbGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gKmk5MTUpDQo+ID4gPiAgew0KPiA+ID4gKyAg
ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBpOTE1Ow0KPiA+ID4gKyAgICB1
MzIgdmFsOw0KPiA+ID4gIAlpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTEgfHwgSVNfR0VNSU5J
TEFLRShpOTE1KSB8fA0KPiA+ID4gIAkgICAgSVNfQlJPWFRPTihpOTE1KSkgew0KPiA+ID4gKwkJ
dmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgUFBfQ09OVFJPTCgwKSk7DQo+ID4gPiArCQkv
KiBXYV8xNDAxMzEyMDU2OTp0Z2wgKi8NCj4gPiA+ICsJCWlmIChJU19USUdFUkxBS0UoaTkxNSkp
IHsNCj4gPiA+ICsJCQl2YWwgJj0gflBBTkVMX1BPV0VSX09OOw0KPiA+ID4gKwkJCWludGVsX2Rl
X3dyaXRlKGRldl9wcml2LCBQUF9DT05UUk9MKDApLCB2YWwpOw0KPiA+ID4gKwl9DQo+ID4gDQo+
ID4gQ29kZSBzdHlsZSBpcyBhbGwgd3JvbmcsIHBsZWFzZSBmaXggaXQgYW5kIHJ1biAiZGltIGNo
ZWNrcGF0Y2giIHRvDQo+ID4gdmFsaWRhdGUgaXQgYmVmb3JlIHNlbmRpbmcgcGF0Y2hlcy4NCj4g
PiBBbHNvIFBQX0NPTlRST0woMCkgZG9uJ3QgcG9pbnQgdG8gdGhlIHNhbWUgcmVnaXN0ZXIgdGhh
dCB0aGUNCj4gPiB3b3JrYXJvdW5kIGlzIHRhbGtpbmcgYWJvdXQsIGJldHdlZW4gZ2VuZXJhdGlv
bnMgcmVnaXN0ZXIgYWRkcmVzcw0KPiA+IGNoYW5nZSB0aGF0IG1pZ2h0IGJlDQo+ID4gdGhlIGNh
c2UgZm9yIHRoaXMgb25lLg0KPiANCj4gSW4gZ2VuZXJhbCwgSSd2ZSBwdXQgYSBidW5jaCBvZiBl
ZmZvcnQgaW50byBtb3ZpbmcgbW9zdCBQUFMgc3R1ZmYgYW5kDQo+IFBQX0NPTlRST0wgcmVnIGFj
Y2VzcyBpbnRvIGludGVsX3Bwcy5jLCBub3QgbGVhc3QgYmVjYXVzZSB5b3UgbXVzdA0KPiBob2xk
DQo+IGFwcHJvcHJpYXRlIGxvY2tzIGFuZCBwb3dlciBkb21haW4gcmVmZXJlbmNlcyB0byBwb2tl
IGF0IHRoaXMuIFlvdQ0KPiBjYW4ndA0KPiBqdXN0IG1lc3Mgd2l0aCBpdCBuaWxseSB3aWxseS4g
SSBkb24ndCB3YW50IHRoZXNlIGFic3RyYWN0aW9ucw0KPiBieXBhc3NlZC4NCj4gDQo+IEJSLA0K
PiBKYW5pLg0KDQpJIHNlZSB0aGF0IGludGVsX3Bwc19nZXRfcmVnaXN0ZXJzKCksICBwb3B1bGF0
ZXMgdGhlIHJlZ3MtDQo+cHBfY3RybCAgY29ycmVjdGx5LiBUaGF0IGlzIHdoYXQgSSB3b3VsZCB3
YW50IHRvIGFjY2VzcyBhbmQgc2V0IHRoZQ0KYml0cyBmb3IgdGhpcyBXL0EuIEhvd2V2ZXIgYXMg
aXMgSSBjYW5ub3QgY2FsbCBwcHNfZ2V0X3JlZ2lzdGVycygpIGluDQppbnRlbF9kcCBvciBpbnRl
bF9kaXNwbGF5LmMgZm9yIHRoZSBleHRlcm5hbCBjb25uZWN0b3IgIGF0DQpjb25uZWN0L2Rpc2Nv
bm5lY3QgdGltZS4gRG8geW91IHJlY29tbWVuZCBtYWtpbmcgdGhpcyBmdW5jdGlvbiBub24NCnN0
YXRpYyBhbmQgY2FsbGluZyBpdCBmb3IgdGhpcyBXL0Egb3IgaXMgdGhlcmUgYSB3YXkgSSBjYW4g
YWNjZXNzIHRoZQ0KcG9wdWxhdGVkIGk5MTVfcmVnX3QgcHBfY3RybCAgdG8gc2V0IHRoZSBXL0E/
DQoNCk9yIGFyZSB5b3Ugd2FudGluZyB0byAgZGVmaW5lIGFub3RoZXIgaGVscGVyIGZvciBlbmFi
bGUvZGlzYWJsZSBvZiB0aGlzDQpXL0EgaW4gaW50ZWxfcHBzLmMgdGhhdCB3b3VsZCB0aGVuIGNh
bGwgcHBzX2luaXRfcmVnaXN0ZXJzIG9yIHNpbWlsYXINCmZ1bmN0aW9uID8NCg0KLSBNYWRodW1p
dGhhDQoNCj4gDQo+ID4gVGhpcyBzYXRpc2Z5IHRoZSAiYmVmb3JlIGdvaW5nIGludG8gc2xlZXAg
dG8gYWxsb3cgQ1MgZW50cnkiIGJ1dCBpdA0KPiA+IGRvIG5vdCByZXN0b3JlIHRoZSB3b3JrYXJv
dW5kIGFmdGVyIHdha2luZyB1cCBmcm9tIHN1c3BlbmQuDQo+ID4gQWxzbyB5b3UgY291bGQgaW1w
cm92ZSB0aGUgY29kZSwgeW91IGFyZSByZWFkaW5nIHRoZSByZWdpc3RlciBldmVuDQo+ID4gZm9y
IHBsYXRmb3JtcyB0aGF0IGRvbid0IG5lZWQgdGhlIHdhLCBhbHNvIGNoZWNrIGludGVsX2RlX3Jt
dygpIGl0DQo+ID4gaXMgYmV0dGVyIHN1aXRlZA0KPiA+IHRvIHRoaXMgY2FzZS4NCj4gPiANCj4g
PiA+ICAJCWJ4dF9lbmFibGVfZGM5KGk5MTUpOw0KPiA+ID4gIAkJLyogVHdlYWtlZCBXYV8xNDAx
MDY4NTMzMjppY3AsanNwLG1jYyAqLw0KPiA+ID4gIAkJaWYgKElOVEVMX1BDSF9UWVBFKGk5MTUp
ID49IFBDSF9JQ1AgJiYNCj4gPiA+IElOVEVMX1BDSF9UWVBFKGk5MTUpIDw9IFBDSF9NQ0MpDQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3Rw
bHVnLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVn
LmMNCj4gPiA+IGluZGV4IDQ3Yzg1YWM5N2M4Ny4uOGUzZjg0MTAwZGFmIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+ID4g
PiBAQCAtMjYsNiArMjYsNyBAQA0KPiA+ID4gICNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiA+ID4g
ICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gPiAgI2luY2x1ZGUgImludGVs
X2hvdHBsdWcuaCINCj4gPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiA+ICANCj4gPiA+
ICAvKioNCj4gPiA+ICAgKiBET0M6IEhvdHBsdWcNCj4gPiA+IEBAIC0yNjYsNyArMjY3LDkgQEAg
aW50ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gPiAqZW5jb2Rl
ciwNCj4gPiA+ICAJCSAgICAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4g
PiA+ICB7DQo+ID4gPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjb25uZWN0b3ItPmJhc2Uu
ZGV2Ow0KPiA+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRldik7DQo+ID4gPiAgCWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgb2xkX3N0YXR1czsNCj4g
PiA+ICsJdTMyIHZhbDsNCj4gPiA+ICAJdTY0IG9sZF9lcG9jaF9jb3VudGVyOw0KPiA+ID4gIAli
b29sIHJldCA9IGZhbHNlOw0KPiA+ID4gIA0KPiA+ID4gQEAgLTI4OCw2ICsyOTEsMTkgQEAgaW50
ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4gPiAqZW5jb2RlciwN
Cj4gPiA+ICAJCQkgICAgICBkcm1fZ2V0X2Nvbm5lY3Rvcl9zdGF0dXNfbmFtZShjb25uZWN0b3It
DQo+ID4gPiA+YmFzZS5zdGF0dXMpLA0KPiA+ID4gIAkJCSAgICAgIG9sZF9lcG9jaF9jb3VudGVy
LA0KPiA+ID4gIAkJCSAgICAgIGNvbm5lY3Rvci0+YmFzZS5lcG9jaF9jb3VudGVyKTsNCj4gPiA+
ICsNCj4gPiA+ICsJCS8qIFdhXzE0MDEzMTIwNTY5OnRnbCAqLw0KPiA+ID4gKwkJaWYgKElTX1RJ
R0VSTEFLRShkZXZfcHJpdikpIHsNCj4gPiA+ICsJCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9w
cml2LCBQUF9DT05UUk9MKDApKTsNCj4gPiA+ICsJCQlpZiAoY29ubmVjdG9yLT5iYXNlLnN0YXR1
cyA9PQ0KPiA+ID4gY29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQpIHsNCj4gPiA+ICsJCQkJdmFs
IHw9IFBBTkVMX1BPV0VSX09OOw0KPiA+ID4gKwkJCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwg
UFBfQ09OVFJPTCgwKSwNCj4gPiA+IHZhbCk7DQo+ID4gPiArCQkJfQ0KPiA+ID4gKwkJCWVsc2Ug
aWYgKGNvbm5lY3Rvci0+YmFzZS5zdGF0dXMgPT0NCj4gPiA+IGNvbm5lY3Rvcl9zdGF0dXNfZGlz
Y29ubmVjdGVkKSB7DQo+ID4gPiArCQkJCXZhbCAmPSB+UEFORUxfUE9XRVJfT047DQo+ID4gPiAr
CQkJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQUF9DT05UUk9MKDApLA0KPiA+ID4gdmFsKTsN
Cj4gPiA+ICsJCQl9DQo+ID4gPiArCQl9DQo+ID4gDQo+ID4gTm90IHN1cmUgaWYgdGhpcyBpcyB0
aGUgYmVzdCBwbGFjZSBidXQgYW55d2F5cyBpdCBpcyBtaXNzaW5nIGhhbmRsZQ0KPiA+IHRoZSBj
YXNlIHdlcmUgdGlnZXJsYWtlIGJvb3RzIHdpdGggdGhlIGV4dGVybmFsIGRpc3BsYXkgY29ubmVj
dGVkLg0KPiA+IE5vIGhvdHBsdWcgd2lsbCBoYXBwZW4gYW5kIHdvcmthcm91bmQgd2lsbCBuZXZl
ciBiZSBlbmFibGVkLg0KPiA+IA0KPiA+ID4gIAkJcmV0dXJuIElOVEVMX0hPVFBMVUdfQ0hBTkdF
RDsNCj4gPiA+ICAJfQ0KPiA+ID4gIAlyZXR1cm4gSU5URUxfSE9UUExVR19VTkNIQU5HRUQ7DQo+
ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtZ2Z4IGF0IGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4DQo=
