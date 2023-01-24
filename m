Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0542679527
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 11:28:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC2E10E65D;
	Tue, 24 Jan 2023 10:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C5010E65D
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674556097; x=1706092097;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mznZzH3lFy34ZlZul7zxZDPuZlqGKexrhzHx4bdr0xE=;
 b=Ow5XSxDMsBdFhHDWqUlP/OOK/gRfP4sTBoFjgEDUyRcaV8m+PuCrvFHB
 YdUpnsFlG5tqecC6eSmHpi4jI41s7SYB3dtufzyJ1jLcjxJVHJnc/0tag
 TZ+1hLGGk9FNY1iZv6mmsajxqBmxsuOubYGc/8japgRSDE7ZpZxH6EUcN
 1ayO5X4NufI9V4I3tU/Fv1cPU+uBUXkwNLJhGrvpqp3/jLdK+clpkOHnU
 +nFYm/szy78OD6s3zDI560ccYe4aJruBStkRmqEmR3w2h+KC0TFnREYla
 EQcvKkjtF2pKBIN3jZ241/OOLEe05coJngkTz9k8Vj0CWMuMIEuPSxWdy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="323958466"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="323958466"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 02:28:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="694284408"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="694284408"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 24 Jan 2023 02:28:16 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 02:28:15 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 02:28:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 02:28:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 02:28:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bQWHaJPkgYrZZ9Gr92CGExFLyP5fiD7aBzk8T9/xFUks6RFOMwAX24ERdDJNKlZSH3suEn3XiAC63aD/38o+dNpt0PoMggGDOUbN1x2nm8KowZBmv3Z7XJgkJ6FHUXjeCTFhP/Eg6sZINtGImmvuDJQEO3icZFcIwrM8mbA2SmDc6Mx2EVbiS69fKNukTjO9aba8p6ivwx73vozV04SLZbA92xosktkRJlHimPq4WOmFdJa+qaeQdeNXEVABiENHh3Zo2QT0/gAIjiEgyuz0VTIuQ1Tof3RcdY7V/OkTVdm6Nph6Foi9c6OgerYAOm9XxwRf2ryNhRiJxu0rvCuyEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mznZzH3lFy34ZlZul7zxZDPuZlqGKexrhzHx4bdr0xE=;
 b=HGpVdGFhS6Q6Wul5Q32PX+Jvnt2Vz2Fxxf/rE6H+/isJzOwFDUNFRv58v9j8ZPGBnO53olOmXeM0TG2d0QBbX7BQyM9KeQgLMRrXk6lQHLKSTTLVCcFLJgUj8vR5xw/ZlzBPqCOAFJzR7UZCscJGT6TSBngMwYiwvDgBAGGv2XOjbL6/7YhRbHjSuGw6/z9uz3OHAJGL5nyKqetWyAiBE49VDlp4HZpqguJLR8X43JywHzO/2deJOAe5Q6TrSAQFq6QfJrVQmpmVBovNvadvuwAZ9Dg8Zqx0z/mdtM/BfbMOwUWM0M8LV9IEVB1sJVHJ574x7kK0MuP8MfCvWfmzJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6690.namprd11.prod.outlook.com (2603:10b6:303:1e8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 10:28:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 10:28:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Implement Wa_14014971492
Thread-Index: AQHZKxpByO5MPGh0k0G8nCAmQxnW5K6shSkAgADhwIA=
Date: Tue, 24 Jan 2023 10:28:12 +0000
Message-ID: <5de5094e9391383c6e48238c1d305990315d5fe8.camel@intel.com>
References: <20230118085200.1017626-1-jouni.hogander@intel.com>
 <20230118085200.1017626-2-jouni.hogander@intel.com>
 <Y871XHPdvWA4BhzW@intel.com>
In-Reply-To: <Y871XHPdvWA4BhzW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6690:EE_
x-ms-office365-filtering-correlation-id: 4af37b4e-c725-4194-93f3-08dafdf5b261
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OmGhEDCqHxN+QOgSA0J0i2VaZwgg3nNL/H5zW/S9hP8v/fOU7jVjdqRF9RjkmIieJhMHKdb1yex6LaieG9lIZN6ISBDHGu9qfJvl1J9OsFuNcLTeTJvXwzzIvf/f4yjyCOjmPGZ0t6HOONl0SzRq1rmGavqzhzqw1kJKmEGQxckh+zznF1+UdaA5WIdgkW9DNeSjEkbuyAdjPoKhgIwmfRlcBjljusUmAo8LNPEhaoxwedzBEI7krmnOHz37oGtQB0ZUEuVd16kyeS97vXbBLyGt6ej77vUD1yjGo5VvRuVmJ9KwvKSY7LpYQQv8r2UQKP65nCWhOUqBzV+JQpADcJCOK+/TKEDNjl53g+rWNKLP3yaSp5LNDH7hgeIPOupmNXsw0iytY05+83/9oWkozkxvSApsxSCBB7sObsDw/k6HP5TM5gIiSV8ksq5rSjxQ8OXKoUWC5ZLO+sPYPh3BXnppq0bCCxNXMi7Jo9nxGX+Emp8rqZBlGr+IuCyr0O189tq2VMXcM75VKRQ36+W9QBXKE7d4K9/STOW3FLz1bl795yxLWmZPwr/QiX6xlxS5mucLWipnM3GlwLPAjbmF7ygUgcWwTS9KbfCZNs9Z41fjWtW0XZv3jmx+31SVcMmz0fQIO4TRnMskq+c8/Sj5yEKQfse7ywiH9MsQwH9MsXF2ZJWbrWO3qvtw1lTejDecY+IpCWOEsC8ZkvQwyTfmuA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(39860400002)(346002)(366004)(451199015)(38070700005)(2616005)(82960400001)(2906002)(38100700002)(8936002)(122000001)(6862004)(5660300002)(41300700001)(66556008)(66446008)(66476007)(64756008)(4326008)(8676002)(86362001)(91956017)(6506007)(36756003)(66946007)(66574015)(316002)(76116006)(37006003)(6636002)(6486002)(478600001)(83380400001)(71200400001)(26005)(186003)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WE44dUxEaEVwbGhhWjljTlZYRWFiS29KbUh0VElzaDY3SWtISkVJbEJsNE1H?=
 =?utf-8?B?NittenNkdUs1VWtnNWtEMXBsU05KL2lnSzhkTFBxVG8zTUtPUXRNN2ErbUtS?=
 =?utf-8?B?VXhlU3UxRXM1cUhOTFpDZjFScHdtSzFSblJtUXRnV2xoZFUyclZrQnpjOUFK?=
 =?utf-8?B?SkhZOSswQnd6K1YxSTFuR21EbGVWRWw4TnJaZ0p1bTBNREc2Q3lNTnF0WS9a?=
 =?utf-8?B?M3R6ckR1aTNIdVhIUkprdS9iL3I1S1RoclNSMUY2LzBFU0FwKzdzTkRFR1Rk?=
 =?utf-8?B?c1RxbUlYZUp6cEJka21BSHpkUkt6dEF6Yld2NTA4U0pUbkZNT3JvZ09mc0Rn?=
 =?utf-8?B?MW1wblE1VDVKeUFsaTlIU3pjZ1JTUGx0UTlEaVVHQktJVlJacjEzdHp1M1Vz?=
 =?utf-8?B?eEwzYU9aa1lOem1yTEt5Nm1RalBxVm5pYncyOWNpZEVnVkJKUy9uc0ZWVlIw?=
 =?utf-8?B?d2svNk9xL2FXVnV5SXNGMDNTUnM3WWZJQVpNdXZBaURHdVNERDdaY2w2RWha?=
 =?utf-8?B?OTVCMG5udTN1QVI2dlhESXF1YS9PWjBMTDRDS2dXMHZuOHNEQmtLU3pXS2x6?=
 =?utf-8?B?VlFnOEYrck9sWlRzQ1A0eVAwVFhsdHpwcUxINHN6dDdNWVZkaEdvVjlQK09q?=
 =?utf-8?B?Z2hKQXVvelJjV1BUM2pxSFY1YjV1S2p1UGNJZXoyN0M2SVA4Wkd4SVRGSWhz?=
 =?utf-8?B?TzZncnhjZENpL3Y3K0ZRMHZodC9nNmVQbXUwSHd3NVdDUTJBNms4aFJkY25I?=
 =?utf-8?B?b0lqOHV6ZzVyTEJtQTlBZUlrZlVYWFRwRjRkNDZGNGhnQllScVdPMk1YSWRB?=
 =?utf-8?B?S1pYWkpRUEFGUFI4NXVEcHNBUkk2ZVBtNC9BUktaNUFxQlUvU2pxMzgrZklw?=
 =?utf-8?B?dXlRRUhsTElUaDV6SDhlaVNlTm44S0xkdm8zNGlPd0VFYk5sandvaFA0dmVn?=
 =?utf-8?B?QitDVTZuNzNBUkFhQzJIVWdBd2VLelh4RTFzSWZHcEZCQis2Y3FuYTZROHo5?=
 =?utf-8?B?SU1raEhTSG5pU2U3cVFIQ0FuaHV4Y0ZUbjZoQ2FlVGtuV3lHRTYyWUp2ZTdO?=
 =?utf-8?B?eDhibzNoaS9LR3NkTVZzVFZ0emthTkRmY3UwS210WXREcWNPN0IvbGJGeDZ5?=
 =?utf-8?B?U2Y2NGdYSjdsNktJeVYrRVdBRHRNYmErcGZaeklPUGZNR0FZWGpObFdkZDhz?=
 =?utf-8?B?V0tOWThMdlphRllhTXFvdUNQTWY0MXgxQlN6QlVvdjFQUWk5OEw1VjNjVmNZ?=
 =?utf-8?B?OERuSTFpeWlSSDNmeHI1QjNPWHlodFZEV2VCZ2gzbEZkaDlDaHNadVlSVFRu?=
 =?utf-8?B?SkxqR2U4WXRIczZJTTg5Z09BdzBBdXBDZlU2WkpaUzJNZTZseW5rdlNJZW05?=
 =?utf-8?B?TTBEbk5aNTZsRE1GcHpjRHFnSmNJTWpZbmduUTU4cGpaMmVPa1hScVZMclJr?=
 =?utf-8?B?RXhnWkFCU1pyendicGRNdnBXMk9wOHZtY294ZEtkaDJLb2JjdXNpUTlCTXJt?=
 =?utf-8?B?MTBLN21oMWpxMXhWdStKWXlCdm5YMjg2SmZIWmhrREs3aXUyZUh5M2FSZERF?=
 =?utf-8?B?OElnT0NJZXFqRkxQQU8xdHZxTVFhNGI2bk1Qcjd0YTNlVGtJQks2N2FBcXFO?=
 =?utf-8?B?UThEVUlBVGZYYVdNS05DWVdDb2tIMWJTQnVRUW45VFFNWEc5M1NwQnQxUE80?=
 =?utf-8?B?STNMUU9OSmFCWDdiZG1adldkbHFCeDF3WjV5L2s4MGY5bHBWbTBpbG5EOGlh?=
 =?utf-8?B?aUpTbWkwdlZJQ2xWODN6ZU9OUk5uLzRZVnJRd0NQK3B1bXExQ0hXR09Pa1pC?=
 =?utf-8?B?VjJTK0dVdUROUkEwcTdkTjY1KzlyKytMMWZwSDF3dlo4VTU2TXkzcUdhVXcy?=
 =?utf-8?B?ZlMrY1FVN2wzMG1zZlQ1c2dKNzJGRmFUWXUySDV0SnJlblViNSs5RUR2TlJO?=
 =?utf-8?B?QjJhUXBXeWM0Qk9tcTdwRHFWRnVYRWFHbkZaT1ZJcC9weWJlMERvd3NJY1A1?=
 =?utf-8?B?SzdYY0tScUVLZjYyTkZRbFZyWFRrcjBjWkdVTzgwNWhhSXV2ak9FL0FObXg1?=
 =?utf-8?B?ditHbzV5QWRtTGlaUjlsZjdPTGYyWllnRFJUU3V5QnJPaWVXUVFFem50ZHF5?=
 =?utf-8?B?NVdITi9tOHdSSWpCZ2VYd09DK1M3UFUzOHBhbThOTENwRysvb3VYMnpvdHFI?=
 =?utf-8?B?bFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <15CC345517401D40BEA0D3BB81905C05@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4af37b4e-c725-4194-93f3-08dafdf5b261
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 10:28:12.7588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ot4HS9poAMBg28OQiAOjP9W+1VbGphqyd5Oz1Ydjqe8WjTX5d/6/orTz+CryqY+4tmx1TRgzN8XfjXQU2ksrOn6mWUfnm2A8jz89mXRoNv0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6690
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Implement Wa_14014971492
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAxLTIzIGF0IDE2OjAwIC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFdlZCwgSmFuIDE4LCAyMDIzIGF0IDEwOjUxOjU5QU0gKzAyMDAsIEpvdW5pIEjDtmdhbmRl
ciB3cm90ZToNCj4gPiBJbXBsZW1lbnQgV2FfMTQwMTQ5NzE0OTIgYW5kIGFwcGx5IGl0IGZvciBh
ZmZlY3RlZCBwbGF0Zm9ybXMuDQo+ID4gDQo+ID4gQnNwZWM6IDUyODkwLCA1NDM2OSwgNTUzNzgs
IDY2NjI0DQo+ID4gDQo+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDUgKysrKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGluZGV4IDdkNGExNWEyODNhMC4uMjQ5MDBhNzkwNTA4IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE4NDIsNiArMTg0MiwxMSBA
QCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChmdWxsX3VwZGF0ZSkNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gc2tpcF9zZWxfZmV0Y2hfc2V0
X2xvb3A7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBXYV8xNDAxNDk3MTQ5MiAqLw0K
PiA+ICvCoMKgwqDCoMKgwqDCoGlmICgoSVNfTVRMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RF
UF9BMCwgU1RFUF9CMCkgfHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJU19ESVNQTEFZ
X1ZFUihkZXZfcHJpdiwgMTIsIDEzKSkNCj4gDQo+IFRoaXMgaXMgbm90IHRydWUuDQo+IA0KPiBU
aGlzIGxpbmVhZ2UgbnVtYmVyIHNob3dzIGFzIG5vdCBuZWVkZWQgZm9yIG1vc3Qgb2YgcGxhdGZv
cm1zIHdpdGgNCj4gdGhlIGRpc3BsYXkgdmVyc2lvbiAxMi4NCj4geW91IHNob3VsZCBvbmx5IGhh
dmUgVEdMIGFuZCBBREwtUCBoZXJlLCBiZXNpZGVzIHRoZSBNVEwgb25lLi4uDQo+IA0KPiBXaGlj
aCwgYnR3LCB3aHkgd2UgaGF2ZSBhIE1UTF9ESVNQTEFZIG1hY3JvIGluc3RlYWQgb2YgdXNpbmcg
dGhlDQo+IGRpc3BsYXkNCj4gdmVyc2lvbiA6JyggDQoNClRoYW5rIHlvdSBmb3IgY2hlY2tpbmcg
bXkgcGF0Y2guIFNlbnQgbmV3IHZlcnNpb24gYWRkcmVzc2luZyB0aGlzLg0KDQo+IA0KPiAmJiBj
cnRjX3N0YXRlLT5zcGxpdHRlci5lbmFibGUpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHBpcGVfY2xpcC55MSA9IDA7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXQg
PSBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9wbGFuZXMoJnN0YXRlLT5iYXNlLCAmY3J0Yy0NCj4g
PiA+YmFzZSk7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+IC0tIA0KPiA+IDIuMzQuMQ0KPiA+
IA0KDQo=
