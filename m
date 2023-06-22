Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 688B1739D8D
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 11:38:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC4D810E508;
	Thu, 22 Jun 2023 09:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7580310E508
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687426702; x=1718962702;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Ojvur8eBxVp0P8MKDU4PaUYK9KxX/wwmLE0HJ4vKA9g=;
 b=kz1+5a8ViqaiiSpsCzsMlnvQgii0Wyg/WfOtaVO/EtHFIuGvv+PtVbyP
 8F1MEamMV2nZswdaYed/ecL9NDreCL5RJFs+q62Bpl3SMrpV6wQYSbUHf
 e/U6gsJyqE5hHT+NuX9FB2QoJYHlj8F0h//TS4itZ3fduAur0z5TJXnMU
 NJzAPwkBCR6hVFo74lWxqUbj4WTauSlXxDqB/+yBQIstRYfa3Vp9eoliJ
 Jq6dR74PKJVelqGKgRSnJ7pMOg3bsZ2nYLZ1ohME9vBSeRh5ypEXCaZqI
 xV3KL2lxuJIAonGwdYOu6BDkKSFA0VCppKAnEcq6J132zFazkVE2DStRx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="363863015"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="363863015"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 02:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="714825545"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="714825545"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2023 02:38:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 02:38:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 02:38:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 02:38:20 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 02:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5sEyNIBoz1FlE9qqUhSL+EWeN884JH9csC+rqclIQZH0ij13iCNU2wkDuUADlnqDf+1lyY0TbYKi2tjhJDqUwgiu+TO2mSyFz/rk812UZ+mvzJrgkDzw62rnsPcFX/VoK0MNJThePfdU8vokKtNvthB0N02Fxjul60qnVnk09XxYtZ9QLn5lbo9+pMUy9TV9ZY0TH/+K10MVebIKAKNM/FMApJhvXxVP4iQAq/z5MKbfnWRhxNE0g0MKf/7xqgiV0nQsf3qkWBf7K50zFRynNOiCnhgd2OeK3lkQ38d2RdvH5/5K8p8E6y7RNcr1ZbzxZNj8yyGZ8ZGk1fwZIyQFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ojvur8eBxVp0P8MKDU4PaUYK9KxX/wwmLE0HJ4vKA9g=;
 b=Znsh0rBJE1fm6mcMrDduwPZbu2GFBR+6dIcReKYsOxprpBV7avrFnE5CF2d/yWB5G8Y0NmLANr3jDrAt3dWjge4eWbQpFzxRpmM1Ka+E1dafXFTU9pbndbs1WIeRlG/5Z6WfVrcvlXChw/qZDWc/1lQ42+FdwVhPUhm0DwpUUeijUPKsz+Jv+57s2xND0GvyT0pa3/p/jw5DQzcjoEvYZZ2mbbvpHIrJsE03x49V0wJWnjhbspZxcH/YBi+VgXF1WuEgOqlfvnGERrAs6/Tjwmy1RObGHur7ZL5DEyIEqhULbbP1XpXtxZ/PhUEDrHsMQt/vdVhXDsx3Gq8cUZ4ZQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO6PR11MB5620.namprd11.prod.outlook.com (2603:10b6:303:13e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 09:38:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 09:38:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915: Prevent needless toggling of
 DC states during modesets
Thread-Index: AQHZoIOLDCEP0ye3UUmMhd+Ax992R6+WmYMA
Date: Thu, 22 Jun 2023 09:38:17 +0000
Message-ID: <d710121ff42741cd1bf05d60361b731775acbfec.camel@intel.com>
References: <20230616185104.2502003-1-imre.deak@intel.com>
 <20230616185104.2502003-4-imre.deak@intel.com>
In-Reply-To: <20230616185104.2502003-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO6PR11MB5620:EE_
x-ms-office365-filtering-correlation-id: 8e3f9ab0-ee83-40df-9ed3-08db73046881
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sSRH7sIq0Y0pr38aP8GZXlRlh5r4kOQXD+vbm43CgiYkre+6ZOSSpvnwB5i/18IZUT1tKtCbJ9CUPlZ/7PdIEIzf8RP/muquz96HZbxFA84dbZUM1aCIKwtpMEl/2ZLfgwcMjtFW3XHHcJIvzldE4a1r5ClJCZl3n+QyezgW2Q14DtCPT38hyisWGXvM2yLoejN0a48g0QPOFErfivswZ2XnU6eB4XzwR+O0D1b6OkVDYjjLoj1dxY5V1KwptZG5LW/FkjDPwQ1fSf2c5sPA7FhrEoYvzr8EW07h2ESNnQwMvIM4HZUTsOu+SWlW/cBTIGa+7zKXSr43swT/SiNpwt4tciBXvQe4n0/PCQodteKb1w+hhcA0M3Q0ETSWGZOmycBCfw0vrhdrCA3IFmAwVVw3/9JgtUmRzUP34R4SzQxCQrsA6WPblZcEbVgiX+x5GjbH2zqKojSuX2rGsJ4AwEV+YZStFWwMRs+R4zKlqNdUSkfedf1OSUqfyQso8BzTB6E5SPjT2r89890C3t9dtqR9HbVHP9LPDGZ7HZ1axBzyBJ6y2RdsYW9svaxR+N1dxKERsYHG/6QxAPGDY/Z0D0ryJP0sQ2CrMia8mKI4wsx6rUSzvU7q3dIIcHp5lDQY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(39860400002)(396003)(366004)(451199021)(41300700001)(5660300002)(8936002)(8676002)(6636002)(316002)(64756008)(66476007)(66446008)(66946007)(66556008)(76116006)(91956017)(2906002)(2616005)(6506007)(186003)(83380400001)(6512007)(26005)(71200400001)(36756003)(38070700005)(86362001)(82960400001)(38100700002)(122000001)(6486002)(110136005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cko1QUZTS3dwWEtuUGh6NVErUFh5OEg2MjVWcVpDZzlEQXZJOTFGbUNtLzVJ?=
 =?utf-8?B?OFBqTThvdkhnb0VjbWF1VkpaMnJ5VTNUNkNHQWYvV1VwdTcxN2N6YTZZckZ1?=
 =?utf-8?B?S2lYdXpzVG5zdzRSN3orUTVJVUZod1RpM1lxSDVNUUwyRXpEYmVIYTgyVnVk?=
 =?utf-8?B?ZHQ1dlFVeDl3djhXR09iYXFlN2dtbXFsdnRpd1NxaVgxdW1HblFmbVNxMTM2?=
 =?utf-8?B?Z2prUmsrbWlDa2JtL2R2d3dvVWVidXZFU1E2Sjh0dWUzYlZDeHpTSUxhUkRa?=
 =?utf-8?B?K3FrbFd6VEpWQVRJa0NISFhzTzd6Wm1qZWQvelJQU2llMW9YZHU2TVZKbGZR?=
 =?utf-8?B?UGVPS2RFbnhXU0xReVR3Rlg5aUozdkxrY3RpRXovaGs4V3FBcDZyNk1qN0sr?=
 =?utf-8?B?VElWVGxiR1dQTVFVRis1NUJnWkJXS09MUW1jRWlxZzhNMXBlajd2OCt5K3gx?=
 =?utf-8?B?TVdqbCtBK0hXU1RkODMxM1JMdDlsWTFiYnI1TVBMYk9xK1EvVk1mSE9VUkNO?=
 =?utf-8?B?Z2s3TDN5QVBrMVByY2E3eG1IbGt1ejBOc1ZwdFc5Vzc5V1NaTmd5cmNmcUR0?=
 =?utf-8?B?UlhOS0tGSkhSZ1ZOQ1poVnhCVDNRZDN3amdiSkdlZ0FBVXQ5S2c4K3RBdjIy?=
 =?utf-8?B?ZmtGOURMVDhqd0dJRTlHVVR4M1lhQUlqVEovVFNxdjd6OFpoT0ZZUEhmQzk0?=
 =?utf-8?B?T1VhbkFiSmpLTVpxdkpmcDhoOHE3d1VXYnpSSHVUSzdFeENlL1VEbEJpaU54?=
 =?utf-8?B?WGpIc054TVpDT0ZqQWY0bnI1WWVYOTVmQ1dNT3IrKy9DQ3JsQTVyOUx2NURq?=
 =?utf-8?B?QndESmpJOW1taDIxUnlqMUl4bWgwRWN0THRGZ1U3TmtINkIwNW5ERG1EZDZI?=
 =?utf-8?B?SWtZemZ2ZjV5ZWJRWUY2MEhyc2gvSkp5R2FwZ2lDQVE4K2pGUk5WbE5WVzhj?=
 =?utf-8?B?dXVPWkY3YmtXSmxtRTl4ZXU2WllCdU5kak0rVGZVVExnWjEvNEVoS0REYUlr?=
 =?utf-8?B?Vk1mUFJsN1c5Vk1oa09RSEVrWlBpVm9ZL3l1N1NsTkNLNmJIQllSOXFDMzZU?=
 =?utf-8?B?cEFvMjYxYjVOOUpyMGxJSlBkODFONjZYYjA4VjFLbWI3RmtQV1VCUWpXMUJE?=
 =?utf-8?B?TXoyNGs4N2JuZ0FKdldaSmtIS1FMLzkrMEUxUFcxNU1GUlBsSzNiQnk1cnhS?=
 =?utf-8?B?OVBESktIZ1k0aUlKTFJVMXArVFlORWVSVGVxdWFCSnNCV1Z4T1lNVzFDVzN4?=
 =?utf-8?B?UGNqR0JZQVcxWkQ1ZEdBUXhQc1h4blVoQXdyc0NUdXdad0FqMmduWDI1ZnZs?=
 =?utf-8?B?dmtZUzJPR2g4b2t2YlA0bU5mL29zZE5IeXhGMDUxK3lBQXkxaTFJSllTbzE2?=
 =?utf-8?B?VDRJZUZzT3VDMldrR2YwdDR3ckVDSWRJd080d01vZ3JwdTdENG9DWCs0aElp?=
 =?utf-8?B?L0tWeEorckxKdUMxc0JKRXhrZ2JaRjd1TVhnUzNtb0dyM1BPSTRJZWxjeWZK?=
 =?utf-8?B?OElJd1d3am1WMUQyWExnMlVxRVhuSERScmZrV2dBUTZHN2QwWVI2SFIxeGRV?=
 =?utf-8?B?YS9LM2p5UFdoMlpGUTdvSTVUTWpyZ2hjK1luU0t6SDFLcS83cGZpcCs5cmlr?=
 =?utf-8?B?YXgwUk5QelExaHg1VHJzcDkrQ3ZteEVLTVVycmRRZnhKSXNzWERtT3lhblFs?=
 =?utf-8?B?QkRHcWg0VXpTS1BlYXNyZm8yM3RyRWZPQkZRT01BcGFtcTRvbzBjRUdqakww?=
 =?utf-8?B?TFNwUE9LQm9Na0UvYVcyRzd3c3hUYzBZSWtFVFlDbU9xbkNRQ1BVWFVwVjE4?=
 =?utf-8?B?QTBYajU0UWxwa1ZYNEFUV0hzVGcrU09uUXdtWjM1SXo3QlM1bHRvQVRBWk42?=
 =?utf-8?B?RnFtL05SaFZJbG1ld1loVkhQSFhVU3pjYnFONHpFQ3pybkczTXlVOGUyejla?=
 =?utf-8?B?RFdELzZXYTc4QXlaY2tDV04wRXYrRWtXWnBPcmJEbFZmdkhZSDQreGcwaDUy?=
 =?utf-8?B?QVhxaFFCMHVncTZmMWNxMHdrVHlLOWt1eE5NMGFsM2dpK1ZDbzlCZDFtRUNF?=
 =?utf-8?B?aTFyWjRpM0FCVTZXVlRqamJjRUpFOWF4VS9BaGhDTE5yUEI0VjJDVkZDQlYz?=
 =?utf-8?B?SFdPUFBGakVIbmV6U1h3MG1CNWhaYmtKS0FUbzZPYzFpSlZXL3R2WmR5UkxR?=
 =?utf-8?B?ZEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5A6FF177D7165644AEF95FCA8C1A7169@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e3f9ab0-ee83-40df-9ed3-08db73046881
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 09:38:17.3031 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tv3htrE0l/D9ZLulbnV9TG7tOucyDaZI39TsBfavPZrknxd/9LdnDuUdRZMY7v0eICIO6MZuZEA+GDyPKq1rIEMDZSTSpRi9E4hsDiQzJbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5620
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Prevent needless toggling of
 DC states during modesets
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

T24gRnJpLCAyMDIzLTA2LTE2IGF0IDIxOjUxICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IERD
IHN0YXRlcyBhcmUgZGlzYWJsZWQgLyByZS1lbmFibGVkIGFyb3VuZCBlYWNoIG1vZGVzZXQsIHdo
aWNoIG1heQ0KPiBsZWFkDQo+IHRvIGEgbmVlZGxlc3Mgb2ZmLT5vbi0+b2ZmIHRvZ2dsaW5nIG9m
IHRoZSBEQ19vZmYgcG93ZXIgd2VsbC4gVGhpcw0KPiBoYXMNCj4gc29tZSBvdmVyaGVhZCBhcyB0
b2dnbGluZyBEQyBzdGF0ZXMgaW52b2x2ZXMgcnVubmluZyBhIERNQyBmaXJtd2FyZQ0KPiBoYW5k
bGVyIGFuZCBhbHNvIHJ1bm5pbmcgYSBwZXJpb2RpYyBmaXJtd2FyZSBoYW5kbGVyIHdoaWxlIERD
IHN0YXRlcw0KPiBhcmUNCj4gZW5hYmxlZC4gVGhlIGxpbWl0IG9mIHdoZW4gREMgc3RhdGVzIGhh
dmUgYSBiZW5lZml0IGlzIGF0IDMwIEZQUw0KPiAodXNpbmcNCj4gREMzY28pIGFuZCBiZWxvdyAz
MCBGUFMgKHVzaW5nIERDNS82KSwgd2hlcmUgdGhlIGZpcm13YXJlIGNhbg0KPiBhY3R1YWxseQ0K
PiBkaXNhYmxlIGNsb2NrcyAvIHBvd2VyIG9mZiBwb3dlciB3ZWxscy4gQWNjb3JkaW5nbHkgZGVs
YXkgcG93ZXJpbmcNCj4gb2ZmDQo+IHRoZSBEQ19vZmYgcG93ZXJ3ZWxsICh3aGljaCByZS1lbmFi
bGVzIERDIHN0YXRlcykgYnkgMTcgbXMgYXQgdGhlIGVuZA0KPiBvZg0KPiBhIG1vZGVzZXQgdG8g
YXZvaWQgdGhlIGFib3ZlIG92ZXJoZWFkIGF0IG9yIGFib3ZlIDYwIEZQUy4NCg0KSSdtIHdvbmRl
cmluZyBpbiB3aGljaCBjYXNlIHRoaXMgdG9nZ2xpbmcgd291bGQgaGFwcGVuIGFuZCBob3cgdGhl
DQpwYXRjaCBoZWxwcyBpdC4gV2UgaGF2ZSBQU1IgaWRsZSBmcmFtZXMgY29uZmlndXJlZCA+IDYu
IEkuZS4gT25seSBhZnRlcg0KNiBmcmFtZXMgd2l0aG91dCBjaGFuZ2VzIG91ciBIVyBpcyBzdXBw
b3NlZCB0byBlbnRlciBEQzUvNi4gVGhpcyBpcw0KcHVyZWx5IHdpdGggUFNSIGdsYXNzZXMgb24u
IERvIHdlIGhhdmUgc29tZSBvdGhlciAodGhhbiBQU1IpIHVzZS1jYXNlDQp0aGlzIGlzIHRhcmdl
dGluZyB3aGVyZSBEQzUvREM2IHdvdWxkIGJlIHBvc3NpYmxlIHdoaWxlIGRpc3BsYXkgaXMgb24/
DQoNCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+
IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
NiArKysrKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBpbmRleCBkZDUyYzY4OTI2N2Y0Li5kZTc3ZDEzMGQ2ZjlmIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtNzE0OCw3
ICs3MTQ4LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF91bmNv
cmVfYXJtX3VuY2xhaW1lZF9tbWlvX2RldGVjdGlvbigmZGV2X3ByaXYtDQo+ID51bmNvcmUpOw0K
PiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3Bvd2Vy
X3B1dChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RDX09GRiwNCj4gd2FrZXJlZik7DQo+ICvCoMKg
wqDCoMKgwqDCoC8qDQo+ICvCoMKgwqDCoMKgwqDCoCAqIERlbGF5IHJlLWVuYWJsaW5nIERDIHN0
YXRlcyBieSAxNyBtcyB0byBhdm9pZCB0aGUgb2ZmLT5vbi0NCj4gPm9mZg0KPiArwqDCoMKgwqDC
oMKgwqAgKiB0b2dnbGluZyBvdmVyaGVhZCBhdCBhbmQgYWJvdmUgNjAgRlBTLg0KPiArwqDCoMKg
wqDCoMKgwqAgKi8NCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5
bmNfZGVsYXkoZGV2X3ByaXYsDQo+IFBPV0VSX0RPTUFJTl9EQ19PRkYsIHdha2VyZWYsIDE3KTsN
Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3J1bnRpbWVfcG1fcHV0KCZkZXZfcHJpdi0+cnVudGlt
ZV9wbSwgc3RhdGUtPndha2VyZWYpOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgLyoNCg0K
