Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5850A631CEA
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 10:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D06010E19C;
	Mon, 21 Nov 2022 09:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92BA410E1A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 09:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669023331; x=1700559331;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8FYB4qk0l58rWeMrEZrJwPFPLXoibjG3xLqgqJzIf0w=;
 b=OSZxZIhvgpTzSzcdStyYh6CfJwY5/c2QkIfPO7LLWub+8/jBOhBQFlgp
 /Cj5B0VLWJHXr0GN1ZcT1NYhB7nuJpuhUDV0y5BC01MWLe/WAdSEvu6ES
 9Rjv8gGh9FAUf1dc/7qmFvmrJl+/cqDYcEyJfAREIxT56aFaFI1hGwxOI
 EcDT3h9RMI3MWrhgRklmET+pHIcnO5p/P91EGkixw0HFmyHqOGTdSHvKM
 boPOpv3kY2AvPnxZHEFOQgGD7v9fY179HFHhmQNGT51PaIS2BSDcorM7t
 85ab8gMN8haCfQujS9ADtRMiAwdelNkFcNqO8+Ue53nm7ju3Eylzd4tuY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="312219070"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="312219070"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 01:35:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="672032956"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="672032956"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 21 Nov 2022 01:35:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 01:35:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 01:35:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 01:35:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 01:35:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PnNKR1WOd2sS5w6NvEJWpXhZGJaudvZewWurFxOjun1Z3zqFxY81swFOBThWEOSADHVKyiDF/L40x1TKvlXhsKTCaztmcsU/flF+PY4EF5E2quMQVSDdPbvL522gp23L8i15J/52vCjA9gl0/CiJL91MSQWOS0mPWWTfzn4qc3o/u3mrAKIstS8NHli5C4CFPZoFZGKnmROMcRfkze3KhtsA9KYROtJuF91eULUujYApMiXvPaXwIyFQM2b2c018bZpkV3CsLszNRYu4Pg6INCT6n/y1Lbep65NecIGbBssZPKRSV/c/l2FGwxqOhNlFTixQLP0jOgwxTHU8NvhPNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8FYB4qk0l58rWeMrEZrJwPFPLXoibjG3xLqgqJzIf0w=;
 b=OgmqO1TloyV+jDfSuGZtlbS1SLBlLSK8CQE646mTjx5/+ZQs9S8lm6RG+/XEZT4hs+dDNNz7ZJdHsMVhj04jVyyfb8Gik1KshEIz7Rs8T9J52WZt1lKFC31Llzavqqtp2fvZBthOXPMgazv1CAiCSsOMBNFBz1n4N5hi64FSZmtxxbe+4kMwpV3qxqc9VYZI2hyqukFBHptzXm4VO7wEIntf504oxn2qn+JYrmKrlX2xovCRph9GGlFzbkjjdICKAQGdz6ZRDQlfeXsg/yQUOEQEcEV2AgNYAb9FwNQoH2qP/gslZ2z3k8JH/Sv8ZCMW0njLnioFit8ot4jlGbqwsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4093.namprd11.prod.outlook.com (2603:10b6:208:13f::21)
 by CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 09:35:23 +0000
Received: from MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::54fc:2e3c:ac29:58d]) by MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::54fc:2e3c:ac29:58d%7]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 09:35:23 +0000
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "Usyskin, Alexander" <alexander.usyskin@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 David Airlie <airlied@redhat.com>, Daniel Vetter <daniel@ffwll.ch>, "Tvrtko
 Ursulin" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/gsc: Only initialize GSC in tile 0
Thread-Index: AQHY/YtEzwOYQV+ApECwt/E+HggPN65JHfMw
Date: Mon, 21 Nov 2022 09:35:23 +0000
Message-ID: <MN2PR11MB4093DB849B8945C9618C4E88E50A9@MN2PR11MB4093.namprd11.prod.outlook.com>
References: <20221121092449.328674-1-alexander.usyskin@intel.com>
In-Reply-To: <20221121092449.328674-1-alexander.usyskin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4093:EE_|CO6PR11MB5602:EE_
x-ms-office365-filtering-correlation-id: 22b3f9e9-0c00-4d23-8e8c-08dacba3b6a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aLIkdoTDyyAHx27RP9pWlN2mwaukmZaZAm2fWnibRPJj7IuugEakbpP6wpWgUVB6+n5tWbpA9PB9EhFebYBMutGdayWKu4tXLY8O0u+amoFVZFLBEKpzwLmgs2feEvveQWxLYtu8ZAj/OJc+tzE6bVtnBCMufh6+niUtXaeuQQZu7GAmvLvvbqQ2CiaENgP1cBGNddkOq4QSF+wOvKhd3NmuuW2AlWgfZ6Utl0n46Mb/xyPUnMhbvdkZ+l/ENMgh4xiwpa9R4aYwlg2+AzRFYse6W487pEexGEI73mjuoOKS22TNAhBG3Xuoyb6rPFb9rNR47dIORBGWe9k3MOELtAIKKvpFKqk5opLcvm6HA1Fl/GvRPDVDKKPmXACAzZYhTqXlNXgbEmJX04WsHSGY7WDTjYNCeiG1WAQSRVLzxV/Wm95j9IMi0P6p6p0jqzGs19uf6qga+EnyMfk0L4vm5O7Ry0oMd9tv/0GymM4twaKJkNBXRMROvBCpW47RDvUJr4xZi0j4vdtIQE3lUUEu3saXiSIXRaFO1bFTzissm+1R91oUPqRLB7xk+pLPxnP0BHV0SAwxlJ4l4hHoa0/meU03rT06lHb3etwBv7+7TTk2FyzxwBcvP1u5nnahwspPpLc69pTflBwxOTnN7zeZRZ4hncNtmidgsZh8QkSH+LmNMbK2X5GBjFZQW0OLtTKuBckqgnY4yqipyBz517OnUA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4093.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(136003)(346002)(396003)(451199015)(2906002)(33656002)(110136005)(186003)(54906003)(82960400001)(26005)(9686003)(7696005)(6506007)(478600001)(38100700002)(71200400001)(316002)(122000001)(38070700005)(66946007)(66446008)(76116006)(66556008)(66476007)(5660300002)(4326008)(64756008)(8676002)(8936002)(52536014)(41300700001)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWlCMVdPSDFaU2NpSG9wMEt2dk0zakFOUEVOeXZyRmVhTTU0T2Z4cjhBWGhY?=
 =?utf-8?B?QjdxeUtQdzV6K3ZQb0ZCUU9NVzdBek1NTTJUOVVIaHNPTDdpMTRjUWVwdHcy?=
 =?utf-8?B?NGtvWkJpcWZlYTIrYjFESndhazRqdXFjbFdvbTJiTXZVdDhINzl1Vk9OQThZ?=
 =?utf-8?B?Y3dqZXE2ZHRJWTFWZlk2MWszZEY4MDdJOHNxc2Vzd1VuQ1AvNGhuS2Q5Yy84?=
 =?utf-8?B?OE5HaC9YdGQ3R0J3SjNTQjdjZFFLcFBNRHZiSDRET1llcjIrQXdHdkJJS1ZY?=
 =?utf-8?B?c1FkbWYwNk1aZnl6Y1RMZDNDOEM2c29hSWxzR09GNlJYVnpCMFIyTHk4TlYx?=
 =?utf-8?B?MEY3YytJZlRDK0xjdk9ONzNkZEpCWEtKODM0c1U0QmpBT3J5SDdObFlNK0NU?=
 =?utf-8?B?ZHc4SklxT012L1ZUZUo1eVp1Vy9vMVhSMXRWL1ZWMDlQTE5WQ0xtS25EYmF2?=
 =?utf-8?B?RHh0dnMzUTlMaVdoVERuTUV5NFNka1dhYm1DM2d3b0RIbEJvQVlFT0h1eTV2?=
 =?utf-8?B?YzFQM3VRTlhhbFFBbVlGSS80U0ExVGJqNktBMXhpaFpaRjdwVXZ0UnhBVkdz?=
 =?utf-8?B?WStjSkpZU0t4ZjJTeFNINjQ3QXphR3g2OURaQ0pQUGRmZFB2ZlBjVG02ZTJj?=
 =?utf-8?B?YVlNZkdRM0ppa1FPL21kOEorZmNuM3RiWGZlWWVQcWlqNFc5VjZsYzVESjZY?=
 =?utf-8?B?VS9WUS9VNm9FTFNHZzF1MnVvZjNwWmQxdjZOS2JPWXZoOHlNK3MxbnEvcHp5?=
 =?utf-8?B?dDFEQmdvVXhIcW1UelJEWWM1b3VWU3BuOFRscnVPWTR0dVBhRURWRHB6R1V5?=
 =?utf-8?B?SEF6Z1BZamM2TklRTHRPMk5FOWtnNmhBWVlJZmtSQXNydE5Vd2Q2dDVtRDl5?=
 =?utf-8?B?LzNxVENlOGwxSndvNEZXSnlxREVLZFhWR3FabWZCY1VqZFdCR0xVcnBXWEcw?=
 =?utf-8?B?RFd6dU9iWWJmTHczMDdGVEpFelBQWmtmdzAxbU51SC9ZeTBkNlYvYldUdmU0?=
 =?utf-8?B?a210d2hvSWlTc240MGg3Nm1INHo5ZEp3cWlYRmEzcUdjSStoc3U4QVpiVFlW?=
 =?utf-8?B?TGozZ1VML09VcGY0SUQrT2dmNnYvUTU2SjVQSTdSVngvMkJvRmZJcnJET0VD?=
 =?utf-8?B?dkczYWN3S3BJZ1RkUGlQa0VsQTFnUVpxMWhZaXdzOHlEWU9JS3dWVjgxTmxK?=
 =?utf-8?B?M1BkM21qaHdxemVSS0Z4eFBuRVQ5aU9LT1dGRjM3YTBQMHZqb0NFaU1KVVZ2?=
 =?utf-8?B?V2Rpd29jMGtJdkNiaGtrMm1idW5ZK0Z2Y2pDMmVuR2xlbUdMQm1Ya21IaGdW?=
 =?utf-8?B?WlMrUjZRU1o4SHkyckJRTXBOeFNWZDBJZVY1RkJEc1hNa3ZtMGE4VStvLzlW?=
 =?utf-8?B?QUlPNE5xTzVQUDdEN0VQMWJ6eWFxYXBKOHFENFl4N0dONk56TEN0cDNaNFRo?=
 =?utf-8?B?OURYWGxHMi9YMkRFdXZYa0ZFeHZkRGZHRFVHT2xjdjV6ODFSL3NHRUhLSDJ1?=
 =?utf-8?B?VkhiS2NXMGhVWThYWEMxSno1QzRtQ2pSeEZLb2k5RTlUb05EaE9ic0hZVGZ2?=
 =?utf-8?B?dkNDN1lCSGRVbWl5b21UNmhpOFRlc0ZicFZPZmJhTHlMak4xcCtZbkt0RXli?=
 =?utf-8?B?aFZRR0xkWFA0ZU9aSlpHbS9FMWs0ZHhmTjE0OXBWdnVrcG1zMVZyUE0yNWlq?=
 =?utf-8?B?dmYxMVlkWTByNEN6d0hlZDJZWmdWZnRRcms1SlBNY2x5WU4xRSthRHpScmN6?=
 =?utf-8?B?TGU5TUpXdFM2dmNEYlNQemFKbVRSUXpFVWpDT0UyNXZkakF1QXpjYkYwb2xF?=
 =?utf-8?B?T0NnaVdKbkJZb0JhNEM2STVzRFBwN1U3Qy8xRHUwNU9hUmxDUHJ4RFAwdnEw?=
 =?utf-8?B?NHRmMWhNdzlHSm00WVpKblFnSTNqQ3VwWnMyMUxOcGJiNWdPc0xnWG0zR0JV?=
 =?utf-8?B?Nm1zeXQrVWxZbElXc3pYNE1la3NiRXdrei9FeTgyZmNBdGlSeUpzekFkUTRx?=
 =?utf-8?B?cnlQM2VISXpIUGdVek1zSkpxMjg1bHJ6c3ZsQWhqM3c4dzhCYjlmVmlsNzg2?=
 =?utf-8?B?NzJCK1crVnBiTXpFV0J6dG1uejF2aWowd2Mxc28yNEVlNjBUdStpUnJZV3BP?=
 =?utf-8?Q?UCqXVPsClm15eZ4iOoFQ0Gnxz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22b3f9e9-0c00-4d23-8e8c-08dacba3b6a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 09:35:23.0248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SERGknln6MXQ1QcmDuY7zdCMlNQ+yeTpai/ZvVG2ZasO7kEWyITSHTFEN3hPX65KLZ355EoVAPU4Y5FsZCju2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5602
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gsc: Only initialize GSC in
 tile 0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiANCj4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQo+IA0KPiBGb3IgbXVsdGktdGlsZSBzZXR1cHMgdGhlIEdTQyBvcGVyYXRpb25hbCBvbmx5IG9u
IHRoZSB0aWxlIDAuDQo+IFNraXAgR1NDIGF1eGlsaWFyeSBkZXZpY2UgY3JlYXRpb24gZm9yIGFs
bCBvdGhlciB0aWxlcyBpbiBHU0MgZGV2aWNlIGluaXQgY29kZS4NCj4gSW5pdGlhbGl6ZSBiYXNp
YyBHU0MgZmllbGRzIGFuZCB1c2UgdGhlIHNhbWUgcGF0aCBhcyBIRUNJMSAoSEVDSV9QWFApIGRl
dmljZQ0KPiBkaXNhYmxlLg0KPiANCj4gQ2M6IFRvbWFzIFdpbmtsZXIgPHRvbWFzLndpbmtsZXJA
aW50ZWwuY29tPg0KPiBDYzogVml0YWx5IEx1YmFydCA8dml0YWx5Lmx1YmFydEBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgVXN5c2tpbiA8YWxleGFuZGVyLnVz
eXNraW5AaW50ZWwuY29tPg0KDQpBY2tlZC1ieTogVG9tYXMgV2lua2xlciA8dG9tYXMud2lua2xl
ckBpbnRlbC5jb20+DQo+IC0tLQ0KPiBWMjogTW92ZSBkZWNpc2lvbiB0byBza2lwIGluaXRpYWxp
emF0aW9uIGludG8gR1NDIGRldmljZSBpbml0IGNvZGUuDQo+ICAgICBUaGlzIGluaXRpYWxpemVz
IGJhc2ljIEdTQyBmaWVsZHMgYW5kIHVzZXMgdGhlIHNhbWUgcGF0aA0KPiAgICAgYXMgSEVDSTEg
KEhFQ0lfUFhQKSBkZXZpY2UgZGlzYWJsZS4NCj4gICAgIEl0IGlzIHNpbXBsZXIgYW5kIHByb3Rl
Y3RzIGludGVycnVwdCBoYW5kbGVyIHRvby4NCj4gDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9nc2MuYyB8IDggKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
c2MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dzYy5jDQo+IGluZGV4IDk3
NmZkZjI3ZTc5MC4uYmNjMzYwNTE1OGRiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9nc2MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9nc2MuYw0KPiBAQCAtMTc0LDYgKzE3NCwxNCBAQCBzdGF0aWMgdm9pZCBnc2NfaW5pdF9vbmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsIHN0cnVjdCBpbnRlbF9nc2MgKmdzYywN
Cj4gIAlpbnRmLT5pcnEgPSAtMTsNCj4gIAlpbnRmLT5pZCA9IGludGZfaWQ7DQo+IA0KPiArCS8q
DQo+ICsJICogT24gdGhlIG11bHRpLXRpbGUgc2V0dXBzIHRoZSBHU0MgaXMgZnVuY3Rpb25hbCBv
biB0aGUgZmlyc3QgdGlsZSBvbmx5DQo+ICsJICovDQo+ICsJaWYgKGdzY190b19ndChnc2MpLT5p
bmZvLmlkICE9IDApIHsNCj4gKwkJZHJtX2RiZygmaTkxNS0+ZHJtLCAiTm90IGluaXRpYWxpemlu
ZyBnc2MgZm9yIHJlbW90ZQ0KPiB0aWxlc1xuIik7DQo+ICsJCXJldHVybjsNCj4gKwl9DQo+ICsN
Cj4gIAlpZiAoaW50Zl9pZCA9PSAwICYmICFIQVNfSEVDSV9QWFAoaTkxNSkpDQo+ICAJCXJldHVy
bjsNCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
