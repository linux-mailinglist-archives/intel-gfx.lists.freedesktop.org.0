Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4145444AB8B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 11:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69FB6E7D7;
	Tue,  9 Nov 2021 10:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94C46E7D7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 10:31:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="212450203"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="212450203"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 02:31:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="669357321"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 09 Nov 2021 02:31:39 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 02:31:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 02:31:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 02:31:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giG79j4t21ylX5aQYixKauGPlvMreTMx27tOhc7T8wz4PnfWc/iQbILKvNhiXUK0Dn7aTN6QJZPdyN4cYdQK+qMDg6wG3Lt52+i2Id2gCWvK1CY0ktDn4kr0ut1dl9URI9dC3z401zHvts1AI2Mp2e6uX1/Ed2qWLo56pCVHegeOvllaSEvTk9NviWiJckZX2p9cah8YhfQMq/IqlGwD0eblTG3K20m74USw2cobQ30ROMQIZnCbmX8hx+0LnicnCUgzVtfxJ3QaGuscBM7vrOSc+0U1qaIDTUL9aktK3KT2VR6rp1po1Ucpw/QJFXuaB6b+vR33jH7uSHXzZc5+RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fektpzhcjfG0l5eTQ6LhQzKb/OjiNWClfAfwFxEY6Wc=;
 b=OEmeRZpJuvX+sA7Z8aOenpWFo+6jCKfPptlXoklihpXtlB/0fKtTSE5JI5q8OivE9EZ1+8elUaXsDA0v2XjgCartlsZ4v5+bXDLwZ9Vl+ebRti/hhLFwoXKa5rALptCAFybAyyUlbHzZK1a/D3ou5hg2LipGzGm0rU6jLzZjshMB8H9muEGKVmqZvMBHqea5uCDJGcmZ9AdhJoiU4s59rZNFwkOovSDets/G4hZOSAVZKeMkrTdFQbM1hWGnHTtgXtezVAhTWUO4PZA2JfVOuRk0Uq+FhCMKibgXQN/axt3YSdGxOguieTzqX082GBb7b73m1k7qZgNl0yJElGIwFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fektpzhcjfG0l5eTQ6LhQzKb/OjiNWClfAfwFxEY6Wc=;
 b=qWQSS+SUjNsxeRr/nEb+tbSP5qx8uZjuOBCOOJysWc27fxUBWNctkS17DHr3fl85l/syp8Z3JAqGgJlqPbobdM6b7KOhwro4/csI/T9jrGi6Sh5mVmDTTDzoaPu4eRvhbmri4G9woKgzTL14sTrehns9wOM6zOrB4JRlnc9g1GU=
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB2924.namprd11.prod.outlook.com (2603:10b6:5:66::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.14; Tue, 9 Nov 2021 10:31:38 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596%4]) with mapi id 15.20.4669.016; Tue, 9 Nov 2021
 10:31:37 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Fix PSR2 handling of multiplanar format
Thread-Index: AQHX1OgYKd7+iXyWsUGR4BrCiM0c2Kv7ACCA
Date: Tue, 9 Nov 2021 10:31:37 +0000
Message-ID: <41137e8964637d45ba52b47ccba7d83db584dc0f.camel@intel.com>
References: <20211108213807.39865-1-jose.souza@intel.com>
In-Reply-To: <20211108213807.39865-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfea7aa1-df53-4caa-e634-08d9a36c1c6e
x-ms-traffictypediagnostic: DM6PR11MB2924:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB29248DCF9FE8E45250A606D18A929@DM6PR11MB2924.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jjcBiA0gMRhMwTQEu2+vZob7hPjAN877t8qjmMAwoFOsajbb+NjB6WRdOGMwyXmuZp4NP15U0tLn5FEM3W/0ZOl5fZxH/QT/lw2RZeRXHzy/Mzz8WdvnMb4szikc+QiwscWxPDJI9Ao/NbVGYgk+pnYhikfbFvi+yuakqs/HFwiRJJRGZvP2E+Dk5GYxR1+bJejJVvgjRnQvgx4A9Iky6W/3z00LDG/3+IVmlOml4oZee34htBV/Duin6soF4pYNjnPGr1O0o/YcQTCt+CjoYoRpmDlKbg9Km7rPd5m6FF05qvw7RsTwew1AgZDFIt5d60/SCeo7NOgcyN+WXHhO9/9iJFo/SxQnNzuywvCIoAbstoPssaZuphZLv4Um6+8kkjvq7HzvglQCNN+tHKnBl+IpDRmhmNqfKxGec/iUparzA4FBlpR59QdAt6WZhz+brBKWIQN1kWc8M565S2dSPSV/ycdn+A22miEL8xOVHpXJ2xHkRs5xnBgoh13LREDY/UyMWNSBp1+WR7l4nhusnF3w97YbOY8hRKe/uFzqyZvJKaqDd2rZz24IJRAtn5REOLdX2SQjjnXGfwWSyGeqDA8WL02s/GSr5BZgmlbZBrE3zobRZ7hKKxxziAn9x58WPs2cGoUuPxWqQ7mREJnY/Bldrqu5yIMUZKYqHMIHzwxMFLqQuPzLdLvPxwoeU6CTGSDeT2h0losJ6auZ7sjWTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(316002)(186003)(76116006)(66476007)(66946007)(86362001)(91956017)(6636002)(66446008)(64756008)(38070700005)(6486002)(66574015)(26005)(66556008)(38100700002)(36756003)(8936002)(110136005)(122000001)(6512007)(508600001)(71200400001)(4326008)(83380400001)(8676002)(2906002)(82960400001)(2616005)(6506007)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2dTa1o5eFBWRkQza2c0aXBxMVhTc0I4dUozRGJiU0s0RkdPSXRjMkYrYnFu?=
 =?utf-8?B?bHRCYVlDVzVoSTZ4VDdDWVF3N3VNSllqUmovb0M3U011TDRHM1psWmVkZnht?=
 =?utf-8?B?VVFDL21HMnMrWitEaWNjbDRDY3IzdklyeFA2czF1dVlOWlRXdkI3QmVacENy?=
 =?utf-8?B?K3I1TC8xMDZVYWhjZFJWSEc0UXY1Mm5zOFB4Z24xU2xEd1Q5NzJBWHV5SjJG?=
 =?utf-8?B?U2kzY29pRGVNSkozTXZXMnZYbEVyc0VONm5CYUIvZ2taOEpydWFwM3hWQnBS?=
 =?utf-8?B?RGU1V0RqQzd6QVhVaHhxWHZPN0FKNzg5SUc0Y1dLTFZ4Mk9EK2tXUTl3dGI3?=
 =?utf-8?B?RnRxMTFaaUpBbnNOUzFDN2ZBZmdWY1h5cFlUUEdUaExrZnRFOTh6eFZKTjJP?=
 =?utf-8?B?MDFjcnNYZkZwTThOWnliVy92UFpzYVZuWXM1bk15WE5zQ0FsOWhrWHh1SHNy?=
 =?utf-8?B?QUlVK1V5enBVK010Uk5aVG9DdnhCMllyeWx6K1lGeWFWKy9CRkJyNE41K1Vx?=
 =?utf-8?B?dWQwNytYbnNQOVhyYmdhQXpzdURqUjNnRyt5WS9wRWlXV01xWXArOVNVZDk1?=
 =?utf-8?B?a2lsWGFyWDJiUDFRZlBxd1hoY29vOEw0T0RPTTNzR282Y0E1TUJMWDBDczJm?=
 =?utf-8?B?VkJnSjhNMWNuYWVJbExwZVZvNzVEOE90MnBrUHd6dnFPMldlSTFFRUV3UjJw?=
 =?utf-8?B?SGpyR0pZY3dqL3pKM0RNQS9TbnQvcVhhb0Uxa0tUK3RBY1lUMXYrM05Ib2p2?=
 =?utf-8?B?bGswVit5ZDB0R203MHJMVk1Lb3RTRGs2VHlocnhZWHlBQllxS1NINU9hREFi?=
 =?utf-8?B?VUxUVXBMN3p1T3YyRTM4Qml4ekhLWTJaRDhCdFREQW9yOTNMUzEyZzdmTjZq?=
 =?utf-8?B?SEFDNkM5WkhUVXpsZGJWMkdyVFArbjZaeDVxeiszdmdYT1ZIaFVPV29kenNz?=
 =?utf-8?B?Z3AxbUUrY2dKbWFCenpPTGNqL3A1bmlhN29UK09sZm1ESmVCMWhqUVR6MWRF?=
 =?utf-8?B?ak9qcHpkbjVDOW5Ca3BkWmFuY1JUTnJMQi9ac3BkbjlITkpBUEpSemYxMS9F?=
 =?utf-8?B?VVA0WWM4OXdkMzA3OWdCMERleUtxYzJzb3RzdDJYdGhPdXYwcmtGTWZrMUkw?=
 =?utf-8?B?YkhjRmJ2YjBaMmpYZW92ck1FQ0JCdU9ubFBjN283cWdJL0FGVkNpN1d0dUVy?=
 =?utf-8?B?L3MvUGFRUEdERWRhcWx4K0xBdjlDRmRIajVqOUdIakxaNWFsL1RJYnlXMGJW?=
 =?utf-8?B?VEdZRFB0bDBnNGszL2k4MUo5RzRkMm42UjZ1dWdDMzVFR1JuaXpDWHZuNXc2?=
 =?utf-8?B?N2gwc3E0MzRIV1llamFyalViM1RJVVc1UnNGYjBKT2NUVmM2bjFYUm1zcFp6?=
 =?utf-8?B?eHljT2V3NFZJa2RPeXljWkswQ1pNRHFkV2x2UmhmZWpsdDk4N0lrTmtBMkQr?=
 =?utf-8?B?VGNNRDhTMEt5Tk9kMDRiNEV3RWdZLzN0c0ZuK2VObis5clhqMDhydEtNU1Aw?=
 =?utf-8?B?MEllbWxkL0NSaWlGcU93UkFsLzlrdlJGOHc2VmI4SU5BQ2QxYm1qUGR3Mnlk?=
 =?utf-8?B?YUFMYTZxWmhuWjBOSU54STVoN1RDSlNPT25CSnRZRXM2dlFTVWQ3K2NxU0R5?=
 =?utf-8?B?d2JWbjVOaXppc3h6S2J4YnFNcFdGanpCeXdkdGRjVEZ3VUhJQ1F3Zkd4L0R2?=
 =?utf-8?B?TU5iZWtkVlhnZHVHNlo5cVd1aTY1UFpMZVkyN09yRDNmZ2R0SUR3R3kzRlBq?=
 =?utf-8?B?NVFlSUdwUkEzMUN2cGZxOWM1R3FHS1d6VVdOUlhkYVlxSFVSM3U2azF6QVBH?=
 =?utf-8?B?akg0bnRuVTdEZHJuaGJvUkFrbGp6OVc4ZTJONEg3MEJrTEZlN1lHQmY4bFBR?=
 =?utf-8?B?QmZVcXNiYmpkNHJ6L0gyMGhCdkMwZzN0TFllWGVnWEFCN2hEUWVBOEM5bWhY?=
 =?utf-8?B?bUI3SjJXNSszalR2NXZES2FIR3NVLzVXKzNZb3lXVjJ0Kzc0YlVBV0NYcklI?=
 =?utf-8?B?eE1UQ2lJckEyZ0RSbHpCcDh6SkhNV1JTWmtwaFQ3aXhmMTVNdURoWm5wWWxY?=
 =?utf-8?B?TDRLalUwK2pOcVluMk1ZcUV6WDFvblBYd3RRdmp6T2ZNdzVCci9FeUpDK0xu?=
 =?utf-8?B?RHcxKzB3WWN3cnRUTXNObE5TbnhINUd1Qm5PTGN2MUNKM20xME9Lam9tOHU3?=
 =?utf-8?B?MW4xZVBQcjlTTDlUeGs2b3p0dkxDeW1YZWhUcWxuRllNdGZWTG5uS0tKK3I2?=
 =?utf-8?Q?5mYwa9lRBYILcYxA1GnRxuEP0QK0IzHWrFU/GtwDto=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C54037805C377547B0CED2ABD0120DBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfea7aa1-df53-4caa-e634-08d9a36c1c6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 10:31:37.7441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0C7u9YKJ/vE/irMxjotGAV4g8UzWiZwSIoBrFC7FDDWKlH1Iz0FdjUafpUgC4+utri7fUK7dbSKTaglrLbfDZ+URJnqG6ahsl2iEXEcZ/l4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2924
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR2 handling of
 multiplanar format
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

T24gTW9uLCAyMDIxLTExLTA4IGF0IDEzOjM4IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBXaGVuIGEgcGxhbmUgd2l0aCBhIG11bHRpcGxhbmFyIGZvcm1hdCBpcyBhZGRl
ZCB0byB0aGUgc3RhdGUgYnkNCj4gZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfcGxhbmVzKCksIG9u
bHkgdGhlIFVWIHBsYW5lIGlzDQo+IGFkZGVkLCBzbyBhIGludGVsX2F0b21pY19nZXRfbmV3X3Bs
YW5lX3N0YXRlKCkgY2FsbCB0byBnZXQgdGhlIFkNCj4gcGxhbmUgc3RhdGUgY2FuIHJldHVybiBh
IG51bGwgcG9pbnRlci4NCg0KSSBkb24ndCB1bmRlcnN0YW5kIGhvdyB0aGlzIGNvdWxkIGhhcHBl
biBvbmx5IHNvbWV0aW1lcz8gV2VyZSB5b3UgYWJsZQ0KdG8gcmVwcm9kdWNlIHRoaXMgc29tZWhv
dz8NCg0KR2VuZXJhbGx5OiBjaGVja2luZyBsaW5rZWRfbmV3X3BsYW5lX3N0YXRlIGJlaW5nIHZh
bGlkIHBvaW50ZXIgbWFrZXMNCnNlbnNlLiBJJ20ganVzdCB3b25kZXJpbmcgaG93IGFuZCB3aGVu
IHRoaXMgY291bGQgaGFwcGVuIGFuZCBob3cgdGhhdA0Kc2hvdWxkIGJlIGhhbmRsZWQuIA0KDQo+
IFRvIGZpeCB0aGlzLCBpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKCkgc2hvdWxkIGJlIGNh
bGxlZCBhbmQNCj4gdGhlIHJldHVybiBuZWVkcyB0byBiZSBjaGVja2VkIGZvciBlcnJvcnMsIGFz
IGl0IGNvdWxkIHJldHVybiBhDQo+IEVBR0FJTg0KPiBhcyBvdGhlciBhdG9taWMgc3RhdGUgY291
bGQgYmUgaG9sZGluZyB0aGUgbG9jayBmb3IgdGhlIFkgcGxhbmUuDQo+IA0KPiBPdGhlciBpc3N1
ZSB3aXRoIHRoZSBwYXRjaCBiZWluZyBmaXhlZCBpcyB0aGF0IHRoZSBZIHBsYW5lIGlzIG5vdA0K
PiBiZWluZyBjb21taXR0ZWQgdG8gaGFyZHdhcmUgYmVjYXVzZSB0aGUgY29ycmVzcG9uZGVkIHBs
YW5lIGJpdCBpcyBub3QNCj4gc2V0IGluIHVwZGF0ZV9wbGFuZXMgd2hlbiBVViBhbmQgWSBwbGFu
ZXMgYXJlIGFkZGVkIHRvIHRoZSBzdGF0ZSBieQ0KPiBkcm1fYXRvbWljX2FkZF9hZmZlY3RlZF9w
bGFuZXMoKS4NCg0KVG8gbXkgdW5kZXJzdGFuZGluZyB0aGlzIG9uZSBpcyBhbHJlYWR5IHNldCBp
bg0KaW50ZWxfZGlzcGxheS5jOmljbF9jaGVja19udjEyX3BsYW5lcy4NCg0KPiANCj4gQ2M6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBDYzogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gRml4ZXM6IDM4MDk5OTFmZjVmNCAoImRybS9p
OTE1L2Rpc3BsYXk6IEFkZCBpbml0aWFsIHNlbGVjdGl2ZSBmZXRjaA0KPiBzdXBwb3J0IGZvciBi
aXBsYW5hciBmb3JtYXRzIikNCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEyICsrKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5ZDU4OWQ0NzFlMzM1Li5hMWE2NjNm
MzYyZTdkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gQEAgLTE3MzIsMTMgKzE3MzIsMTcgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0
ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJICogc2FtZSBhcmVh
IGZvciBZIHBsYW5lIGFzIHdlbGwuDQo+ICAJCSAqLw0KPiAgCQlpZiAobGlua2VkKSB7DQo+IC0J
CQlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKmxpbmtlZF9uZXdfcGxhbmVfc3RhdGUgPQ0K
PiAtCQkJICBpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwNCj4gbGlua2Vk
KTsNCj4gLQkJCXN0cnVjdCBkcm1fcmVjdCAqbGlua2VkX3NlbF9mZXRjaF9hcmVhID0NCj4gLQkJ
CSAgJmxpbmtlZF9uZXdfcGxhbmVfc3RhdGUtPnBzcjJfc2VsX2ZldGNoX2FyZWE7DQo+ICsJCQlz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKmxpbmtlZF9uZXdfcGxhbmVfc3RhdGU7DQo+ICsJ
CQlzdHJ1Y3QgZHJtX3JlY3QgKmxpbmtlZF9zZWxfZmV0Y2hfYXJlYTsNCj4gIA0KPiArCQkJbGlu
a2VkX25ld19wbGFuZV9zdGF0ZSA9DQo+IGludGVsX2F0b21pY19nZXRfcGxhbmVfc3RhdGUoc3Rh
dGUsIGxpbmtlZCk7DQo+ICsJCQlpZiAoSVNfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpKQ0K
PiArCQkJCXJldHVybiBQVFJfRVJSKGxpbmtlZF9uZXdfcGxhbmVfc3RhdGUpOw0KPiArDQo+ICsJ
CQlsaW5rZWRfc2VsX2ZldGNoX2FyZWEgPQ0KPiAmbGlua2VkX25ld19wbGFuZV9zdGF0ZS0+cHNy
Ml9zZWxfZmV0Y2hfYXJlYTsNCj4gIAkJCWxpbmtlZF9zZWxfZmV0Y2hfYXJlYS0+eTEgPSBzZWxf
ZmV0Y2hfYXJlYS0+eTE7DQo+ICAJCQlsaW5rZWRfc2VsX2ZldGNoX2FyZWEtPnkyID0gc2VsX2Zl
dGNoX2FyZWEtPnkyOw0KPiArCQkJY3J0Y19zdGF0ZS0+dXBkYXRlX3BsYW5lcyB8PSBCSVQobGlu
a2VkLT5pZCk7DQo+ICAJCX0NCj4gIAl9DQo+ICANCg0K
