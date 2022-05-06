Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9300C51DF1C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 20:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F6710E1BB;
	Fri,  6 May 2022 18:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6E310E1BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 18:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651861700; x=1683397700;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yyNmoh+m895K2KaRvK6wwd5tHdvOV+mf9y8ndrTJMaw=;
 b=K1VjsZwNxN5N9hi3ECgTONzqrkxI2LEDIlZhhzDPlsF3HZNsRDTcRA1i
 O1e6TIi6mPIlevdDa1uZY4+xz6phsrQ9Wyw9CLa2lAgVyUusXN18v5N5+
 hlLyNSdAQABQPPhqM2GH0Khz9tf4fTd2R8kT6Vdir+fiQ1ViIh2ZML77C
 Gq1Xu4gdTARHJ20KKl0G38TAj78ot6kvgWXLHW7E3mbpB7dpBOgMfr7TU
 ANF6/uK15ebeAZsK6tF+aLfj1XLdxJAGmHLPq8lKzsdEOdmXGmrf4ndv5
 PJ4+qTeEuyMRiEnvvZ9HqKhzB4oIot7UZCMLXYgbG8Z+iMFa8unX0V6TY A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="267383710"
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="267383710"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 11:28:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,205,1647327600"; d="scan'208";a="549972731"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 06 May 2022 11:28:20 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 11:28:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 11:28:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 6 May 2022 11:28:19 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 6 May 2022 11:28:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BThvlvUrNnl85Hl5GjBymv67SgloPDgO4gbhZgj3LcDSG1nBn8riD7mUGEKk9uoE4OOFMec+7j+A6HFRC3pgIjGQzEf7uMJ0kHRVyFEIuVrSsocRPI3YDovIazR1d4zSL29V5OvAGcAbfVavy500WsP7VhsSPPSGt8w6x6vB+O7EjXcoN8N2zafLHw6XS/zKOCtUORD/g03MrHqavyvPosqsDY4PL3wmsp+55X5qrxSvXn4rTFACo0gOBt+smR5SY5sAgap4uidRcwu/YTxpdlC8Y8vnNKZIluXJ5i+uBifVURfdvfEPSQWY6RXB7Dlc64TeutIhUE3s7FpOrtKlDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yyNmoh+m895K2KaRvK6wwd5tHdvOV+mf9y8ndrTJMaw=;
 b=MyE/3fJ9olB3yG2DyXmOXsUxEnnN5B6C0MuVHsPPLfVirKe9yVYXcXVuQ5v98rvt8M96Oo1NEdLBecnK5TAvFPvL6TuBle/Y4ub3iBHZrMm9gbK6RUJSOiqp5+fMDwZ+gij3Pdg0VIOXRUvbzPMownYpMHSS321QR3PZO5hlOfFQoSQB5UrKb7k4ykPWv3XnzAPwGyFnXQm75TuPQe089xEt1bRoRYZt1tA89twrKLyqBPRzmyMNwU/PNXFZUZ8YqJSdJhaZxVlekxWVrQeSHfmjt91XevgCVLgeWD70azBitfRegJKINBVuXaWCPMSA8LCWbZt56eTY5+7Mm8ME7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB3849.namprd11.prod.outlook.com (2603:10b6:5:141::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.24; Fri, 6 May 2022 18:28:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::f57a:5607:7129:4e48]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::f57a:5607:7129:4e48%7]) with mapi id 15.20.5206.025; Fri, 6 May 2022
 18:28:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYYQ1TkzAkp7skk0CmzCVlQcVqM60R+ewAgAAyEoA=
Date: Fri, 6 May 2022 18:28:17 +0000
Message-ID: <60ff6aea75030f144e7676eb85d775a3612ad1c9.camel@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
 <20220506054834.2822650-2-jouni.hogander@intel.com>
 <274b1d451fa18abd11e918acb44fecb108b9ba55.camel@intel.com>
In-Reply-To: <274b1d451fa18abd11e918acb44fecb108b9ba55.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4777ffdd-45c3-4b91-a666-08da2f8e3091
x-ms-traffictypediagnostic: DM6PR11MB3849:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB3849F6DBFC36E091753DBC2B8AC59@DM6PR11MB3849.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +Nv5PDPd3G5nnSHYFVFRK2AX3Mq2/D8ew8Zf8OsCUIUlPOlLMKrh/VzrgYfBs5MNAnBizUEBxwBveMtm1XkXtSfOrQJ9vAqQDb30dLj010Z57Lm8gb/umFjSt9zqXHdjlZW0gTLSrQsujWFmmImDB5ykFRQbKPTHb2/bVi5yju1yKV/Vxxu5tR0pQQWDmpb84/ijhuODciqv8b6Kq9XVmgrBk/k7v1Gy/E6hYRDHkmq6RSJsOyZYQbJFzmxL8F5CC8AIr/cWe8UEqyeh021B7xXC/XdyLLEFSF5kKaBB8IoHQJYNR2X/qGnF+oN0nLnQSoLuEaFA4PzKOnjfqTS+9Skvo/5T5s9pvNjNoKufQb4by7GxsHaGOvJZrhnetyHJfPy5aiyEqIPmGUF2RxJe2OY4nUvRt2lqmmqJYr+59fCc0WdfpPkXttSs8wwhPgC6Dm1UPQZAyptEu2awvYLILsIq54Z2rAvXS9FjwoDr87sUUCMDg9A1UD8xmjlkjvWhQxG1KKY3cnU6mXIFUt/EYXhiz48NuhS9j0833IG0lmnj3+UhqlesLgvZtLhprygtVIjqCw+9jvXSJO1si3bQBXtDUK8TbiTSeUZt8znNtxgdoDmVbGY+ZpPdLGvaBQMVYKg7//wWEcUEi8XQXhSWyEPhdcHYG8TFUAjv1j6GmCOD0GjnV4nmftT96zJNnrsEATFAv8S/IB3PRH0EysSBPw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(316002)(66446008)(66476007)(66556008)(66946007)(8676002)(76116006)(4326008)(91956017)(5660300002)(83380400001)(8936002)(6636002)(54906003)(6486002)(110136005)(508600001)(71200400001)(36756003)(2906002)(15650500001)(26005)(86362001)(6512007)(6506007)(122000001)(38070700005)(38100700002)(66574015)(2616005)(82960400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bEh6Tkk4akNUMXlOYk95UVJ5cmFOeEcvSFJxd2c1b0tKK0hGcEpidEhUNS9y?=
 =?utf-8?B?YVdFSkFyMFlmbldpSUt2bWNUNXlXNkFPM0tUUkdBdVJBcXF6MzNRMC8waVpu?=
 =?utf-8?B?VFc4ckZmWG1SUjVLUmRhaTlnd2swYnN6ZWJlMUgzdjZ4OUJ1c3E2QWtSRFRs?=
 =?utf-8?B?U2lCbUhrV2xyREJGY21KT0ZzNVlDK2RSc3M3Y3pVZXZMVU04UkQrS0IyK0M0?=
 =?utf-8?B?cE0xL2hqYTdMYUhWaWpXNWtUVTJRLzJaR2xZb1ZaTXcxbks0R2NTMW9ZMTZE?=
 =?utf-8?B?bFUyNEdnaGtEUWFZWUh2US9yWGlWaVo5QTU0VTBac1R2WGd3R2FmUGJHdHFL?=
 =?utf-8?B?TU5NdXJjb1NSUUgwbGNJRUZJSWZVVHpzZEVoRFkvTFdlektJdHRaMnJVSlY3?=
 =?utf-8?B?NTd0OXhVeTRGODRXeFhZdkFVeU1LdGVCUEJMMG1KRnhNUFNwcHNQSUl1NlYw?=
 =?utf-8?B?VFV5OVh3YUNtQVE1NTgxRG9UaWYxcWNqWFkzNjYyUkNnc0xZNUFraS9yVGxB?=
 =?utf-8?B?ZjR1Q2xuUjJYRldJNzdTZy9iWEh1YVFITWlLS0xrT3E3UGI5SStxRlBoa2lC?=
 =?utf-8?B?VVVGZ2lDUU5pa0Z3R0hsZHVENHl3M1VCTVY3ZzhRRUdDZzdNcTEvZm5ESVc5?=
 =?utf-8?B?L1Y3bVJlWVRwaGxLdDBMby9kZW45UWNleGxHNFZNemJXc2t0eUdiUFpkeVNL?=
 =?utf-8?B?UFMxOTViUjBHd0d1SFVFcnpTZzF1d3hnZU91VURRR2JTOXlSZk56c1VjOGJp?=
 =?utf-8?B?L0hQWDBveE9oYUo3RzNZMTFVdXNsa00yclg1ZGg5YzNKUUN2NEpwZ1ZJS3pz?=
 =?utf-8?B?VUJ0UHdlalFhczJRelN5cWp1OVI2MU1ITGZrZTRsUlN6Y0RXV0s3OVBGa3lV?=
 =?utf-8?B?UDFBcTIraUhpN2c4Uys4NGlXZGgya1p3bXV5SU1FbmJaU0I1VGkyWDFyK25q?=
 =?utf-8?B?OGFtYzQ3VW5RZGhONnltSDR1TmtERkczY2pNTngyRnVRVUtjNU5NRm5Vb1U1?=
 =?utf-8?B?M3d2cUhJMXhBZFVVNUh1TmNkTC9PbWRhdUtnVHBPZmJwblVWQ0tqbmVqOWV5?=
 =?utf-8?B?ZTdlTmdJNXVXazhMd2RFQkpNTC9pY0NQblFEWTgyODNTTGdMV1dQa1MzSDVN?=
 =?utf-8?B?MGtUZkhOdWxvbmMyMjhGdDAxTnN6Nll4NzI5SEEwMlZRSm1ta09Sa1E0ME9z?=
 =?utf-8?B?S0R1ZUN1Y2lnU0NYQXlUTzl4Z0lEYzdoYkx5K0NPQ2N2MEZ1WTdFdDFOZkoz?=
 =?utf-8?B?UVJiSktmWmFMY3NIRUlXVFdpRk1zd21xYi9oMWdFNDRQS0NPTnpTREEyS2xR?=
 =?utf-8?B?WGhFY1p2N1pHZ2RxaElPMHNhMkdzZVpMTlBKQWxab2ZwWDY4d2FpMThmdTd3?=
 =?utf-8?B?cVZjWHBheFhFV24rZzBBSDBNUEtLL0lub2F1VlFrUWk4dVFILy9NUGoxSmVH?=
 =?utf-8?B?dFpoOE1LNEZ1THB3VXd3WCs5YlA3QnFXWk5JZG5rUUtDTFFDejVXZkp4Y0JH?=
 =?utf-8?B?SGpVSkFsY3VqSm9tWldrZnJBbHRvTk9vUUlUbU5zV0IxSmhQbVRHTEZjRE4v?=
 =?utf-8?B?ZTRkVkVkY1JNcldIV0x3YVVlNVNoYm9lZUIvYnVhOVFUMEp0KzBXNzIwbDN0?=
 =?utf-8?B?SnZkUXY0ai8zT1ZXRnljT0dSODl5V0sxOVkxV3dWckUweXZ2MXJyYnNLU0d3?=
 =?utf-8?B?ejdWcnRlci9HRjR6Wm5la2EySDh6NUc1WnRuUzRZQ2hhVVVwbzN3c3JORGRP?=
 =?utf-8?B?eXpEOUhVdHBEdjA4eHYzTE9lRWtGanNGTmJmUDEyVWQzVDhaaE9IZ3BxTGh5?=
 =?utf-8?B?L3BKblljb2JuTU1VMHVTbTVzZnFNYkdMVTZVRXgzZ0l3ZXhVeVJSR2VoYXFi?=
 =?utf-8?B?WGIrblh5NFIvN3JNQzM5SlZZb1VMKzVVL0M4TlY0dWlmZGpXUE14ZG92MzNu?=
 =?utf-8?B?NVhHYUsvdlp2T3FrSlZnSzBtZUdvSDNQSmttSktpT2dsM3ViTUpJTWtxN05P?=
 =?utf-8?B?bDFFSHdpeFhCcWdGanFuTDRxemYySWJmUlpGcEI2VDJwSjRvaFdWZ0paUlJF?=
 =?utf-8?B?bEhnNWlyQ3dSb3Fhb1JJRUVQL09ZQ2NobGE4MHpqZkRORU5CMzVrZTlVUVBJ?=
 =?utf-8?B?eDBib0RqdXZSV3BIOHRLRkpQSS8yVFVrSDU1SmFyOTlDSmJBVThjdDJJdXh1?=
 =?utf-8?B?eWZJcFozV2NiMkZPTTErR1lJYjlBYk1VYzJDb0NoanJ0NVhWOGtTRVJvYWNI?=
 =?utf-8?B?d0JtSDNPU2Y4MllQOVduWTNlbFZHS2c1dXloYTEwNER0SVJHSEZ0Z3d5QzJE?=
 =?utf-8?B?eWRMcGRRMnk3RUNMRmxCQzNReW1EdEJ3eG5wTE5VN0pjclZMeHRaWjNPZFF6?=
 =?utf-8?Q?h+um1EWvYk764wLwdbgNjTnyzvWWhLURxrrhh?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F5B2245A5D623547895076C22B7FDFA6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4777ffdd-45c3-4b91-a666-08da2f8e3091
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2022 18:28:17.2903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wsJylnoDmRvWp7saBYc6ZMhH+x/5unqIf80g2Jqr8c4hIRCInJ/siX3J+nP9ght2MgqTKgb8nwLDHhBHO19kqhBSCl4ZYIm1ph0V8Jzili4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3849
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Use full update In case
 of area calculation fails
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA1LTA2IGF0IDE1OjI5ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTA1LTA2IGF0IDA4OjQ4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gQ3VycmVudGx5IHdlIGhhdmUgc29tZSBjb3JuZXIgY2FzZXMgd2hlcmUgYXJlYSBjYWxj
dWxhdGlvbg0KPiA+IGZhaWxzLiAgRm9yDQo+ID4gdGhlc2Ugc2VsIGZldGNoIGFyZSBjYWxjdWxh
dGlvbiBlbmRzIHVwIGhhdmluZyB1cGRhdGUgYXJlYSBhcyB5MSA9DQo+ID4gMCwNCj4gPiB5MiA9
IDQuIEluc3RlYWQgb2YgdGhlc2UgdmFsdWVzIHNhZmVyIG9wdGlvbiBpcyBmdWxsIHVwZGF0ZS4N
Cj4gDQo+IEFyZW4ndCB5b3UgYWJsZSB0byByZXByb2R1Y2UgdGhpcyBzY2VuYXJpb3Mgd2l0aCBJ
R1Q/IFNvIHdoeSBub3QNCj4gcHJvYmFibHkgZml4IHRoZSBjYWxjdWxhdGlvbnM/DQoNClRoZXJl
IHdlcmUgc29tZSBkaXNjdXNzaW9uIHdpdGggVmlsbGUgU3lyasOkbMOkIHRoYXQgdGhlIHByb3Bl
ciBmaXggZm9yDQp0aGlzIHdvdWxkIGJlIHRvIG1vdmUgcHNyIHVwZGF0ZSBhcmVhIGNhbGN1bGF0
aW9uIGludG8gd2hlcmUgb3RoZXINCmNhbGN1bGF0aW9ucyBmb3IgcGxhbmVzIGFyZSBkb25lLiBD
dXJyZW50bHkgd2UgZG9uJ3QgaGF2ZSBlLmcuIHByb3Blcg0Kb2Zmc2V0IGluZm9ybWF0aW9uIGF2
YWlsYWJsZSBoZXJlLiBJIGhhdmUgdGhpcyBpbiBteSB0YXNrbGlzdCwgYnV0IGJlZW4NCmJ1c3kg
d2l0aCBvdGhlciB0cmFja3MuDQoNCkknbSBhbHNvIGNvbmNlcm5lZCBnZW5lcmFsbHkgb24gdGhl
IGZpcnN0IGxvb3AgcG9zc2libHkgZW5kaW5nIHVwIHdpdGgNCnkxPS0xLHkyPS0xIHZhbHVlcyBk
dWUgdG8gb3RoZXIgcmVhc29ucyBhcyB3ZWxsLiBTbyB1c2luZyB0aGF0DQpmdWxsX3VwZGF0ZSBw
cmV2ZW50cyB0aGlzIHBvc2liaWxpdHkgY29tcGxldGVseS4NCg0KSWYgSSBmb3JnZXQgaG93IEkg
b3JpZ2luYWxseSBmb3VuZCB0aGlzIHByb2JsZW0gd2l0aCBiaWdmYiBJIHRoaW5rIHRoaXMNCmJh
Y2t1cCB1c2luZyBmdWxsIHVwZGF0ZSBpZiBzb21ldGhpbmcgZ29lcyB3cm9uZyBpcyBnZW5lcmFs
bHkgYSBnb29kDQppZGVhLiBDdXJyZW50bHkgaXQncyBqdXN0IHVzaW5nIHkxPTAseTI9NC4NCg0K
PiANCj4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQo+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gVGVzdGVk
LWJ5OiBNYXJrIFBlYXJzb24gPG1hcmtwZWFyc29uQGxlbm92by5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCAwNmRiNDA3ZTI3
NDkuLjhjMDk5ZDI0ZGU4NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0xNzcwLDYgKzE3NzAsOSBAQCBpbnQgaW50ZWxfcHNyMl9z
ZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ID4gIGNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ID4gIH0N
Cj4gPiANCj4gPiAraWYgKHBpcGVfY2xpcC55MSA9PSAtMSkNCj4gPiArZnVsbF91cGRhdGUgPSB0
cnVlOw0KPiA+ICsNCj4gPiAgaWYgKGZ1bGxfdXBkYXRlKQ0KPiA+ICBnb3RvIHNraXBfc2VsX2Zl
dGNoX3NldF9sb29wOw0KPiA+IA0KDQo=
