Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D00C26775C6
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 08:46:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC7A10E1DC;
	Mon, 23 Jan 2023 07:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DCC10E312
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 07:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674459961; x=1705995961;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Utbh7ZdfDDBkznh2sclXek+KTOiny7N0keCZg/KjPM8=;
 b=fBgT1XHUPxNIhTJrmnEV2N7yxMQ8E22lRSGGHxBx7t6fC4+0CKBWpz/R
 x+edQ0rrxqtNG1HNftJoa8TPAYn+jce4Vl3iogsnBfpyjNyVArkAKH8/I
 OiLS9gdKwCxeWXnXWLwv62Xgb8mHzj2hnEGCvacyKgZBy6IxtPneszWXy
 Y3qFYdTPeXmFQhuuj8Ie2rI7vWGvQBVabzru8fnimRPcs5IrrimlFNSty
 AFsSFAoJS0SIUhhIj+NIs3MF8m3mVPp79/tdrfPnGSIVFFnDlC0BE66dl
 ndZsj6ugWzsYoIT9BJAm9ANvSqT52FL9WPiR0nGpcEaiUsVVvqCXxKhmu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="326023108"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="326023108"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 23:46:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="750232038"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="750232038"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jan 2023 23:46:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 22 Jan 2023 23:45:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 22 Jan 2023 23:45:59 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 22 Jan 2023 23:45:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glbB+5PlH6P+2E6j7vNoWBPsL7UfejL9K2V9yQNB7tCDcU9Ac7CNf5kZJ3HqSvMW9dxk57SKywzppUqsGCFe4QHmMLSz/mZE+J3Ph/jAxfpw53HS5w3FV0VObIP0bhFakgpR+hGUIlyJp7FT3Cq2QWZnCfRlW5m8oTUKiYj91NvMZLwjSRyI8bxjo05z6dviR4fPuqyxsqaBOzxAafungHfXh3/0JbhLsEzl0a8Ed9lXxY9FGlxrk5lMTW74wEyWU5Rk4d/jz7wT1xlo7SY+CIqvFjUquBDaG/B+rmEcO40mtFbCThSigKiW6mA3dwzInRrLmpFqsRym5tXMW5KSpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Utbh7ZdfDDBkznh2sclXek+KTOiny7N0keCZg/KjPM8=;
 b=B/mN6jd0fMEHuDXA3uEEVLV7R3Oe3UCF1BIyBrorQ924LDJhywFnZb7onWpqFLW6NQUX5DufFY0B3QpyCMuqKJpd9WvQrm77iL4eD0yYQVykQCuEl8lX4v2Up2+7C/kyte9sMkN++/fqXyjDPNRbOxLh55AzinGa53q02MVQZ124rHABojQJyQLaXtKEwY9ntaKZVmDXFFGPKBHVDUDyvunlQ4FRxF2h6y7ZhQRQeNlkcOXu8GiFPXV7AHMoMYFbZzexbSIzk+NBpheQ9Oy2ZU9FmL7RnCeQ+YYSG/fviJLo16C6jLWB7c/hJLiGdqwQek8fR9yIgy8IIMmjuCDH7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5206.namprd11.prod.outlook.com (2603:10b6:510:3f::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Mon, 23 Jan 2023 07:45:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 07:45:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3] drm/i915/fbdev: Implement fb_dirty for intel custom
 fb helper
Thread-Index: AQHZFVJPapEwu8INIUyMLAB65vb0NK6nvyeAgAQTqAA=
Date: Mon, 23 Jan 2023 07:45:57 +0000
Message-ID: <efdbb8473abe287a2a05a5613c89d6c67f267b5c.camel@intel.com>
References: <20221221153816.1915426-1-jouni.hogander@intel.com>
 <Y8rPuc7APL616V6e@intel.com>
In-Reply-To: <Y8rPuc7APL616V6e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5206:EE_
x-ms-office365-filtering-correlation-id: cf2744c1-7e80-4398-989c-08dafd15dd1c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oKsgulr/vsvhGl+gP5c4ps54DTCYLtC8rlaaXNbVHxUCrqPbUYWkxi277g8lBL0BZRVhNHyaY2UyRRwZHgP1DlpBwyFokeNi7vHsvWYQqMik7B9eEQwUUDLKcwIqyryEMYjPgUIt7fp9B6d5J+dZpjekPsZuSXH4tpCFZYJc09byDPhCs8ujz3yXtvbhSlcPUpWLiq5n7q8dlJadxyQ74uVohDEY7gkW5uwb9UFvr3a0KVM+4fg7ZDi4QcBQq4paCD8OWkmIm1hFOOAUtfptFMxeqxrIoB7KBGxT1bWH+9v7HfsEk3P9fIhx9ctpzT29MIdlYjCZSzqKs0NXM0IUFfidUE5BMKl3KiNTAJoxP4lwI5lmUPgD5GIqVouCXqj63hE/RkWBt/ccwxThn/61bEv7XBATRsagKWIPwoQSOiDkYXzV3dna8AmRpnMWULySe6wXKRRBi4LOVPiqKFVtC5qc0MCNHYDETaydvLR9BPjmB4fn5zIJ3kBccG0yqJSCpX6B8N3is8fx4FOdd7hfOz3w84u7T+y73f446+/9LKK9SlVosgRV4e7ZqdjrGR6Pyieew47CVP+aXnZtFnq+rC3Em0JauNNE5J7zR+Ddp7gq8l9CA9w+dqzLgtDv4xI12jQcKNR6h4Yqnqr+0Wk64EV7WBWuU47pjKdHsL3NFtIaOmc5YrAW/H5ImULrwfp4bJm7dJO95AP4llpiQLbe1fYwvTFfentXQ3uFDrjK82I=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(39860400002)(136003)(396003)(451199015)(36756003)(38070700005)(86362001)(41300700001)(5660300002)(82960400001)(38100700002)(2906002)(8936002)(4326008)(122000001)(83380400001)(478600001)(91956017)(6486002)(71200400001)(66476007)(186003)(6916009)(8676002)(26005)(6506007)(6512007)(66446008)(2616005)(316002)(54906003)(66946007)(66556008)(76116006)(64756008)(66574015)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S05iU1R3Y2J5eDhCSlhKcVpNM2p0SUlZTG9TRGhYYThPclY1RFFUUnk2NGRy?=
 =?utf-8?B?N2NsSXFBa1U3cGVEYStveTYrRTFrQ2V2NHVzUkxrTkJvZlBzNXFLRktCdUpY?=
 =?utf-8?B?YlpmZWF5YkdBcE5GcGp5OVh2ZnFBOHVpUmVYOUNNZnVzWkUvMnVYYm5NV0V0?=
 =?utf-8?B?UjdubWgvR0VWNWh2ckdwcVFSSCt2YWNlRUJMVHRSYWcyOVVqWFRhZEoyUVJm?=
 =?utf-8?B?MjNQa2dVSXI5b2lod2dMRnp3OWZzQ21NdXlzdDVsc2l5dUY2Rnh0dkVEbGhv?=
 =?utf-8?B?WHA5aWk0RlJhaWNmMys2dU54aEZMTUVvY0NHTUtQVVNlSzJzaGNvNDQ4aFM2?=
 =?utf-8?B?NXozblJ5cDg3ZEl2TDR0aDMzS3ovOXVuSXI5SGc1blJFc0RqaDNkMkFWZzRl?=
 =?utf-8?B?RGZubmttNWZqajdvbDkweFlEakYvKzVmTVV5anprSENQNUxjSW16M1VFSnFL?=
 =?utf-8?B?azJDcUFRMkV4QXFWYy9VRUd6YmNiMUlIT245cEhUS2RHMU5laUczWVh0Rmxj?=
 =?utf-8?B?T05UNHdSS1kxZnhySnpKaXlPa3ZJcVNST1lSVk4xYVZOdE5wTVpaK3pBUkZR?=
 =?utf-8?B?TnVDNXMrNkt1UUJZYlVDc2hMcjdZOFFKWU91MDNabmhUUXFLK3FXWVdXV3FF?=
 =?utf-8?B?d3MrVlVHWi8vLzljbXozWUh0SXJBWmF3bkt1WlNTTFlXQk5PS20xRjAwV3FV?=
 =?utf-8?B?YzI1M2Q2K2p1OUthNWZwNUxKSGl3OTZoWTd2T0ViRllpN3F2N1VzMXM3dGdT?=
 =?utf-8?B?NWpVMXhQekpodTUyS3hxQ25rR1J3ejgwNnB3YjA2OEl1bU1OcHJGVlBHSklN?=
 =?utf-8?B?WTFhOWdSSDMrQXQxUGswdURsTDA0VHVTckM2bEt2YkFRbHNGTWIwWlF4TEoz?=
 =?utf-8?B?SkRnRTJ5NWxVc0FsRjVnL3dVdG1jSjZ3SVpEem14dXo0VXRkemJsV0hYVEc1?=
 =?utf-8?B?aFgxUitPS1lscTNoZGJyN3ZSdDJrV2RoMEN3ZmI0d052NE15S09oOVhtYlNE?=
 =?utf-8?B?TVF1RmQrb2ZPQVJvYmN4c3lqS3FGUFZNQzF4alNuT2RPcjNPV1kwSG5uSjdV?=
 =?utf-8?B?K2czaUZobXVJcmxTZ2VZdGVGaHVUbGtTY0dHWVZscXVUTkp5Nzlla3pvakFt?=
 =?utf-8?B?aHZFQmJFaWVMNHZ2eXAwUHUwRUk3NkZLcUFuTnFPRzljRytLNjhidlJzWW1G?=
 =?utf-8?B?OUZCbmRiN29tNjhFV3NTWCs0aUhLQURvTzkvZ1o0OUIyYTM2eUNSdW1JYU9M?=
 =?utf-8?B?SndPOU03Y2tpZUV0NENnZGFZNjlycThxNDRNa2xZb0ZXcDBYZUgrTDUyV010?=
 =?utf-8?B?Z1pCRTJVc3ZIQkpoVGVsK2xpTXdmYVh3WW1FSTVXa01oWW9rUzN0QXpoT3RH?=
 =?utf-8?B?blZvRjNjRlhZMm5DQTcrNG4wMXhnZUQvSWhxRnd5aHNWNnlYRGxVTlNKQWh3?=
 =?utf-8?B?RlFZdXlpK1UwbHhoMEp5YWZkL3NEMDZvWlp1OVVNaFNXKzJYak8yd3hQaHQy?=
 =?utf-8?B?ejV6NGpKNjJ1c3NNTnVPcFRFWHpNc0k2WEZyRm5sZkpxa3hrRjNrejQrUmVh?=
 =?utf-8?B?T1FONk1Mc21aNlBLWWVwbVFsckhDVkJoRXFabnNCelNHYnlEYTZqaGxzNnk5?=
 =?utf-8?B?T1psUWhmVUdXQkJwZlJjY0tBRDdyckRNd2lhdU9xdzIyYmtNMFN4RXk4V0xL?=
 =?utf-8?B?ZlQrZTRYOEZ4TDhFR0ZMTjRZOWlXN3ZCT25kWFJmR3o2YmRxUi9IRHdGQ1Fm?=
 =?utf-8?B?aDFzRWFDVjNFL3NxUHRaUWdNZUFtMmYreVZhSTE3Ym5CWXJhWktYMXpRL0tt?=
 =?utf-8?B?Nk54Q3AzVzZQaVB0QzlVaDBTek9lRjlJVDBtcWVwajl5WkJWdXlPVWppSXRI?=
 =?utf-8?B?ZEdxeS9SYml4MUgrMElhUSszSHo5b2xnSWVoYiswdjBaWXJoSDFvemJsYitP?=
 =?utf-8?B?d2VJVXRudFE1N2RZa2NkTnF4S3h5NEVPTC9nOWM2aWNsWFpOTGpUYnduNHdE?=
 =?utf-8?B?Y0xGUk5oMXNFdHJiZFZhYmw5bWNhM0lHMzRoejNsSWFrUlVHaUJ5RWJjNUtk?=
 =?utf-8?B?MUZUWWo1dU5CUkZqUXNMWkoxQXIvQ2tVeUVmeWxYS05JREgxclluN2U4ZkNr?=
 =?utf-8?B?UEZvdEUxNzJMUk4wZG5MdWJLQ0Z2WGluOVlaNUhVZ3d4OHh5MktQY0JYaHpw?=
 =?utf-8?B?d3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <96D3359337844040A35A3A6615B06EBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf2744c1-7e80-4398-989c-08dafd15dd1c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 07:45:57.1813 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uJ27f/+VcQ/ZHaiGkEpBSzk/+Pr4CXfgHzpwy0GSZJqxuQtp/jHtalLz91VU53cbp66tpVU8YZXpZaJ3rwRhm7Gm/1BW+z4o30c6JmJ5Upk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5206
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTAxLTIwIGF0IDE5OjMwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDIxLCAyMDIyIGF0IDA1OjM4OjE2UE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBBZnRlciBzcGxpdHRpbmcgZ2VuZXJpYyBkcm1fZmJfaGVscGVyIGlu
dG8gaXQncyBvd24gZmlsZSBpdCdzIGxlZnQNCj4gPiB0bw0KPiA+IGhlbHBlciBpbXBsZW1lbnRh
dGlvbiB0byBoYXZlIGZiX2RpcnR5IGZ1bmN0aW9uLiBDdXJyZW50bHkgaW50ZWwNCj4gPiBmYmRl
diBkb2Vzbid0IGhhdmUgaXQuIFRoaXMgaXMgY2F1c2luZyBwcm9ibGVtcyB0byBmZWF0dXJlcyAo
UFNSLA0KPiA+IEZCQywNCj4gPiBEUlJTKSByZWx5aW5nIG9uIGRpcnR5IGNhbGxiYWNrLg0KPiA+
IA0KPiA+IEltcGxlbWVudCBzaW1wbGUgZmJfZGlydHkgY2FsbGJhY2sgdG8gZGVsaXZlciBub3Rp
ZmljYXRpb25zIGFib3V0DQo+ID4gdXBkYXRlcw0KPiA+IGluIGZiIGNvbnNvbGUuDQo+ID4gDQo+
ID4gdjM6IENoZWNrIGRhbWFnZSBjbGlwDQo+ID4gdjI6IEltcHJvdmVkIGNvbW1pdCBtZXNzYWdl
IGFuZCBhZGRlZCBGaXhlcyB0YWcNCj4gPiANCj4gPiBGaXhlczogOGFiNTlkYTI2YmMwICgiZHJt
L2ZiLWhlbHBlcjogTW92ZSBnZW5lcmljIGZiZGV2IGVtdWxhdGlvbg0KPiA+IGludG8gc2VwYXJh
dGUgc291cmNlIGZpbGUiKQ0KPiANCj4gVGhhdCBkb2Vzbid0IGxvb2sgbGlrZSBhIGZ1bmNpdG9u
YWwgY2hhbmdlIHRvIG1lLg0KPiBXYXMgaXQgcmVhbGx5IHRoYXQgY29tbWl0IHRoYXQgYnJva2Ug
dGhpbmdzPw0KDQpZb3UgYXJlIHJpZ2h0LiBJdCBzZWVtcyBJIG9yaWdpbmFsbHkgYmlzZWN0ZWQg
d3JvbmcgcGF0Y2ggZnJvbSB0aGUgc2V0Lg0KRml4ZWQgbm93IGluIHZlcnNpb24gNC4gUGxlYXNl
IGNoZWNrLg0KDQo+IA0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3Vz
ZS5kZT4NCj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYu
YyB8IDEyICsrKysrKysrKysrKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmRldi5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
ZGV2LmMNCj4gPiBpbmRleCAwM2VkNDYwN2E0NmQuLjRlODdkOTk2NGZjYyAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMNCj4gPiBAQCAtMzI4
LDggKzMyOCwyMCBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVs
cGVyDQo+ID4gKmhlbHBlciwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiDC
oH0NCj4gPiDCoA0KPiA+ICtzdGF0aWMgaW50IGludGVsZmJfZGlydHkoc3RydWN0IGRybV9mYl9o
ZWxwZXIgKmhlbHBlciwgc3RydWN0DQo+ID4gZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4gPiArew0K
PiA+ICvCoMKgwqDCoMKgwqDCoGlmICghKGNsaXAtPngxIDwgY2xpcC0+eDIgJiYgY2xpcC0+eTEg
PCBjbGlwLT55MikpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAw
Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5
KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaGVscGVyLT5mYi0+
ZnVuY3MtPmRpcnR5KGhlbHBlci0+ZmIsIE5VTEwsDQo+ID4gMCwgMCwgY2xpcCwgMSk7DQo+ID4g
KyBEaXNjb25uZWN0IGRhbWFnZSB3b3JrZXIgZnJvbSB1cGRhdGUgbG9naWMNCj4gPiArwqDCoMKg
wqDCoMKgwqByZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX2ZiX2hlbHBlcl9mdW5jcyBpbnRlbF9mYl9oZWxwZXJfZnVuY3MgPSB7DQo+ID4gwqDC
oMKgwqDCoMKgwqDCoC5mYl9wcm9iZSA9IGludGVsZmJfY3JlYXRlLA0KPiA+ICvCoMKgwqDCoMKg
wqDCoC5mYl9kaXJ0eSA9IGludGVsZmJfZGlydHksDQo+ID4gwqB9Ow0KPiA+IMKgDQo+ID4gwqBz
dGF0aWMgdm9pZCBpbnRlbF9mYmRldl9kZXN0cm95KHN0cnVjdCBpbnRlbF9mYmRldiAqaWZiZGV2
KQ0KPiA+IC0tIA0KPiA+IDIuMzQuMQ0KPiANCg0K
