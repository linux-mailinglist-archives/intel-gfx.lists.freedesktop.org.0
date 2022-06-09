Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB73544334
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jun 2022 07:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114A710F8DE;
	Thu,  9 Jun 2022 05:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14B2410F0F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jun 2022 05:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654752883; x=1686288883;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7kBKEZJ1ocdAVSle1d9B9QiejziJM02CvItJcMlv+TM=;
 b=OGImFJnPKv/5baszVtb+nVtCGQAacd2Uf40ZwrdFk+pmTAG7/mad79ZM
 Rr9i8Sk9sDC8n6eeaJlUWBl564a76QL9WToW58x+napgIHw+43ujfMQim
 Sq8fbG3aYpR7jYPO8sHAir85cGKo+mLxlfKzv6asvWnsjxx2MliwODJ+i
 wltVYM0JUNAA4nbZfC4aql7G2CKAL/YskEYcKPrbBIG4Rgih5veF6umeH
 ZblPx6O/0pVoYcxTU4J9bRSClv5erC1t9V0D8fKh1Au72WgpvOc3dS0ov
 PVVCDxg3mJsVReM4E0FxiY/jv/fVuzRq5vLUh7Mvj60LauQq+ld2mVz8I w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10372"; a="257584549"
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="257584549"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2022 22:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,287,1647327600"; d="scan'208";a="683763894"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga002.fm.intel.com with ESMTP; 08 Jun 2022 22:34:42 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 22:34:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 8 Jun 2022 22:34:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 8 Jun 2022 22:34:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 8 Jun 2022 22:34:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixrcJ85FYYnP3B9r/qW+2iZzmVsvhE4UxnOeH2oaxzi/hYjptAEn4Glu/nuOHGftKcCJ35YzVF5kV1iJi5udkgLNO1GJgZXZCKx9lNGmKSOXVcxvh+JpnjOXfYZ+dswKkkQgYh8kFy/0/L5EFuxVkX7UUq5ZgeQ8Za0zj3PlVL6upVwJngsp6GhXBWMJ/xmiMGsLUvgc56Bk5QzHOngiQ2mXlOOM1xpZ5MwXQc8Cdwk9Bcz/lSq7ilnT5SBvV2iYcXOaTKbl1hqaCLH5fx9HAo2ODSV8xQVm8WfthN1MY2n8FzrmHdBYMznjlUik4YYTeSg1MqY5n+1eO6YGUJYI2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7kBKEZJ1ocdAVSle1d9B9QiejziJM02CvItJcMlv+TM=;
 b=JtU9bJ5V6Ffbe1sFqrnj3GUh6u+5dUQ72/T1Nk1Vjc46bpprWGOpwBToIJ+Yscb7ojuZA8k+lruGkcCxiMdzbL1M9vf3Mi7/oWuaODZMyjCzO4IYPA6RPosOW9JRUe59CIbhNClWgY9zii+VAT+tXGJvzk4REVMqgJHQo5IvEG9qKjcoeEBWrYdzKJDHcMwS/OMpGHTJ47NQertEo2yJFsy8/PIoCmz1C8n7TTI9bY67mDmIZyzXRfSmtWdmviB7vzfRWyiEMsVqXwOBDEapBgu8cXu1E+Watu16+9TjD/rSUciHuaSUvHFReIEXyOFpPVdQj5eKVtXHaAuBWTm0zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6380.namprd11.prod.outlook.com (2603:10b6:510:1f8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.13; Thu, 9 Jun 2022 05:34:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f%3]) with mapi id 15.20.5314.019; Thu, 9 Jun 2022
 05:34:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Fix handling of enable_psr parameter
Thread-Index: AQHYe3cXdgQDYPTpH0CaHoB87d7eXa1GjkkA
Date: Thu, 9 Jun 2022 05:34:39 +0000
Message-ID: <6c509856e04efc8edf731eb1530434aac99e0243.camel@intel.com>
References: <20220608203344.513082-1-jose.souza@intel.com>
In-Reply-To: <20220608203344.513082-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bc397dd3-0747-4a3f-8b1e-08da49d9bfae
x-ms-traffictypediagnostic: PH7PR11MB6380:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <PH7PR11MB6380623AB2418A6B1F5ED7878AA79@PH7PR11MB6380.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5rW2QIghLujH4de5BnJh6qm0gsZsH89VZR+3w2vQAUY3+zKrSmWMflSmWx//m+VziZNGb6ygU9zJdc2WE8ZB+6A01WbZfJDx4srhUyXZrb6LCPJOvfjRQoXVVOWR5F9pMTS6uFo3emODpEO7Wgbw5wRNxhA3f5vtDHpoXcHq1Ojesv65N+N4WciUU01N1O0ID8uNylpPvNfMB/aMEGdtuCjd4GIrLezYiGyCwzoEsalD/btrrkB6FiAEjhOP1TEX73dU89do3n1Y2SL7rZB+ZbkYdmrfxkssaJRWNiDXuPtlNH78ZQod87iS27i5tiub01i71YBUAYlsY2CHg+JYsD3Ty1j52WYJnjcR+9T9Q+yIeFP0sGv0JI9dm2SBf9TEXQUCWRfAxqyZPnu0lzJDjzmc2ueH1W45NBCc95Ym5956ZQTacgyrsUtRDLotlNTK6vnZ2taKp9wFfHnO+S92zZpz/r0ZKI4CkVvT3ulvt2u/lr5/+h/Lr/RhCX6NfeYrOJY8HXXyRujzhLBJt2FdCR58O0kYyPYHYPZszfy796/orTXN8n675F5t+rkdum5dFgt4oIID0WaNZ1KhdoacpQH9m02YEfFzdeLgElt8JudCnVxF4ei3FXyWW1MLqHo3l3R1N+FyiemvXoty2JIlypvEYxsmoVZF+SRsT5MJtYGy1BWIUIfaKascE6OJntia9W0D89rQJ1RSwAGHmEtJ3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(6636002)(8936002)(54906003)(508600001)(2906002)(5660300002)(110136005)(2616005)(186003)(6486002)(6512007)(26005)(6506007)(66574015)(66946007)(82960400001)(122000001)(86362001)(38070700005)(83380400001)(316002)(76116006)(66476007)(66446008)(8676002)(91956017)(64756008)(36756003)(4326008)(66556008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1lTV1VIWVFiM0VHUlpvZTVMTUZFMHk3OC9TR0EvVWxjWHQrZEIwd0ZRcTNp?=
 =?utf-8?B?eHV6VG9YNys3OHUxbzJWSk92byt3TUljdzJOMnpLaEU1SEswRkpEUS9vdW1l?=
 =?utf-8?B?cWthcC9YekU1blRIa0xqYXMxYUxJbHhRb09JM2lPcHorTWlFckY0N0tsYlk2?=
 =?utf-8?B?cENPNFB4Y2tvUFFxTkloZU5tZkx3enVMTlhCSHpyM2JaNnpTOC9wQmc1bVJt?=
 =?utf-8?B?c0lYOVQ2Sk5FaXlEYWxwSXBxY3Q2eUV0M1FDalNkSVhxbjlEVTl1eXNMeGRS?=
 =?utf-8?B?Qm1IZzRGNmQvRmptU1l3M3FwcVV1RGVYOCtzZWIxSERJMUpMOHlaSm1YSS96?=
 =?utf-8?B?YVNvUFM5VnFOME5YaGhsTWk3RWcwVkN5SVhycUVJRzIxeGNlT3RSY2l5S0Jm?=
 =?utf-8?B?ZVM1Z1hxY2JlYUlpczVDVmNMNEFqbHBkMTF6U0hhd1hydFlYMWJ1WXJUUGMy?=
 =?utf-8?B?OStvQ0JURmdkQnczRkN0MGFCZjJHNENkdGdDMzVrYUtCQ2ZwOThrbzEvWUJX?=
 =?utf-8?B?c1U4STFUbEd0UVdkeFc3RStVUUFLZnhsc1dJZzBjMWo4OVhYVXJjU3R6bWtH?=
 =?utf-8?B?VDZhNjlZcmJjc2tGZldYNU03TWRaelBKZzJVcDVYUnEzdGZVVldHN0prRERP?=
 =?utf-8?B?VndmdHF5NGl4VVlrRjZmV21wZXNnaVRob3VCaFdCenc2OXNaT0JXREQwUXQy?=
 =?utf-8?B?a0Iva3Rhd3Z3VFFVeDRmQ0hWdEIrNmxHYkNnQ0Q4c3FuRHZTNUpkWGIwOGFS?=
 =?utf-8?B?Zm1YdytvaWY3UDFDQlRyZUxxMlNoWVRLUVdVZlNpZmFmRW1DbHdtOWtwUHY5?=
 =?utf-8?B?UGltbkxKT1h2Z084TzZ1UG1OMVNaZzN6VDd3V21pbGRNZVpkWEFyL21OMG00?=
 =?utf-8?B?ZE9XQk5tUzFkVmJLaHJQakdSNTZybkpERDc3SC84ZEV4bXdieHZ4QnA5RkVq?=
 =?utf-8?B?c2NDR01rbDF3cy8wR1lHb25tS1p2dUdnbDlrMFhOa0FFdHo1cUE1SThwcURu?=
 =?utf-8?B?NVZyWHAvem5uOWF4QlYzODVFRFFpVWwvOXNFRjNQVmZYWHBmYWgyRDFGRGh3?=
 =?utf-8?B?T1FpcXJEY3BQdzBNY2JiRHp5U1JQdmhFQkxMTkhjYkN5SGNLSDZQTDhoN0tv?=
 =?utf-8?B?R1RvUVV0WUpEeUV0dXJGMEZVdjQ1dVhoL05ONFBhZ21IRmRMWlNtUlVoeEF4?=
 =?utf-8?B?N1VOVEc3WExMUzVyMUtMa3doeGZNU1Arck9sTEw0alIwQkRZbE9NM0FQY0xG?=
 =?utf-8?B?SHZrNlg0Z2tqdHpqeGQrRU9yUHNWcnVQalMvT2ppa3YzV0w2MWszNWx0bnhD?=
 =?utf-8?B?SHpXaDRkY1JYcllXam9QNGZ2bGRBWUdJc0Jyb050cko2WTZKc2VjQlpqMjdT?=
 =?utf-8?B?OUVqQnY2RW5ES08rbHdBelQyb0JjVktXOEhKWk1nWml6dngxc21IbU43b0VF?=
 =?utf-8?B?STdLaFp3NnBaVXkxYklpOUFZWFJvQkpQRGdna0wrcVN1aUZoR0IwZXptektY?=
 =?utf-8?B?ZzhIdVBKejVlcFNPd2hOSFJJQW1rZlF5VGNRMlhRSEZnUno5Rk16L2pzN2Iy?=
 =?utf-8?B?SjVXSnFEQWVkR2x3ZDFOK2lHbVNRUGhTVHZIUjBRVStjUWdPeFFSSVRoaHNB?=
 =?utf-8?B?NklnbkFSR2ZkZ3BvM00wM3hReFZ4ZmFXd0cwUE1WQVdZRmVjTFYwV3N0NFJk?=
 =?utf-8?B?cHVSTmMrU2I3bkUwU3pEQnRjUS83TjhNM3gzZ29zQWR5TXZ0NU1qWERGZ1FL?=
 =?utf-8?B?K2kyTjl6djhTR2xsNEpzWlI3N1pubFZTMExLdkNzNnRIcGxXSDM5Q0RBNkZS?=
 =?utf-8?B?aXgvNWZVUUV1blkweEtzNmdXSllYYU95aVZqajVWQWZxVjg4SUs1SkhCRDJ6?=
 =?utf-8?B?MjcrMUNoM01EUjNEUmxpekxjSVlOeWRMUTVkOFY3eWEreEp3SjIyTlRPdFBv?=
 =?utf-8?B?V1ZKN2JLL2tEalcvd0VyaUFQbVVLUzNRWE1GT3JOVmxWSW5KU2lScTJzV0Y5?=
 =?utf-8?B?bytLK1h6OURVZ0ZHRVJWZUFNVnlRNFluMGNHRy9IUEhFN3V6cEt6RWZTa3l5?=
 =?utf-8?B?U1ppRkJhcU9uajJjMFMzT2orQStrdVpCZE5lTDVxL2NqQjNTU1JNYU0zL0xZ?=
 =?utf-8?B?aFhtaVZxM3VieTFxbW1CY2JPL2RjZVkxb1pNNm1KSEo1L01WVzZrU0FlNnhh?=
 =?utf-8?B?eWlBTUs3RUwyUjZ6azF3cEUzTFFVdDgrK3VDMEx3REY3SndzRmxsSVBPTTBv?=
 =?utf-8?B?b0V1TGVVNkRDdmYvN2ZkN1p6NjVvbzlESU9YN0ZIOE1ISGJQVU5uRmlCQ1g5?=
 =?utf-8?B?b0hjTnlaY2ZQa3BTOEhpQzEvMDRFVk9XWGtOUndqZDR1RHJITUZzbEFqSkxV?=
 =?utf-8?Q?u75K/4SmUYhaDrClrpj4COYpTiAwHGwt5F+im?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0C959E2676BF94B87857B34E03A7848@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc397dd3-0747-4a3f-8b1e-08da49d9bfae
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2022 05:34:39.8808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xFOnBgrtUELzGjFYEQD7i8qVV0lFgFaMvD1vL5SFRCktN9CW0XKFfOW1zJ03hZDJ26g9qdAeMFBjDC2DqGPSCU7z+sxQGa1UU4tBDtSsUnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix handling of
 enable_psr parameter
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTA2LTA4IGF0IDEzOjMzIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBDb21taXQgM2NmMDUwNzYyNTM0ICgiZHJtL2k5MTUvYmlvczogU3BsaXQgVkJU
IGRhdGEgaW50byBwZXItcGFuZWwNCj4gdnMuDQo+IGdsb2JhbCBwYXJ0cyIpIGNhdXNlIFBTUiB0
byBiZSBkaXNhYmxlZCB3aGVuIGVuYWJsZV9wc3IgaGFzIHRoZQ0KPiBkZWZhdWx0IHZhbHVlIGFu
ZCB0aGVyZSBpcyBhdCBsZWFzdCBvbmUgRFAgcG9ydCB0aGF0IGRvIG5vdCBzdXBwb3J0cw0KPiBQ
U1IuDQo+IA0KPiBUaGF0IHdhcyBoYXBwZW5pbmcgYmVjYXVzZSBpbnRlbF9wc3JfaW5pdCgpIGlz
IGNhbGxlZCBmb3IgZXZlcnkgRFANCj4gcG9ydCBhbmQgdGhlbiBlbmFibGVfcHNyIGlzIGdsb2Jh
bHkgc2V0IHRvIDAgYmFzZWQgb24gdGhlIFBTUiBzdXBwb3J0DQo+IG9mIHRoZSBEUCBwb3J0Lg0K
PiANCj4gSGVyZSBkcm9wcGluZyB0aGUgZW5hYmxlX3BzciBvdmVyd3JpdHRlbiBhbmQgdXNpbmcg
dGhlIFZCVCBQU1IgdmFsdWUNCj4gd2hlbiBlbmFibGVfcHNyIGlzIHNldCBhcyBkZWZhdWx0Lg0K
DQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQoNCj4gDQo+IEZpeGVzOiAzY2YwNTA3NjI1MzQgKCJkcm0vaTkxNS9iaW9zOiBTcGxpdCBWQlQg
ZGF0YSBpbnRvIHBlci1wYW5lbA0KPiB2cy4gZ2xvYmFsIHBhcnRzIikNCj4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgNyArKystLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGluZGV4IGFlZGIzZTBlNjllY2QuLjdkNjFjNTUxODRlNTEgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtODYsMTAgKzg2LDEz
IEBADQo+ICANCj4gIHN0YXRpYyBib29sIHBzcl9nbG9iYWxfZW5hYmxlZChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiAgew0KPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciA9IGludGVsX2RwLQ0KPiA+YXR0YWNoZWRfY29ubmVjdG9yOw0KPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICANCj4gIAlzd2l0Y2gg
KGludGVsX2RwLT5wc3IuZGVidWcgJiBJOTE1X1BTUl9ERUJVR19NT0RFX01BU0spIHsNCj4gIAlj
YXNlIEk5MTVfUFNSX0RFQlVHX0RFRkFVTFQ6DQo+ICsJCWlmIChpOTE1LT5wYXJhbXMuZW5hYmxl
X3BzciA9PSAtMSkNCj4gKwkJCXJldHVybiBjb25uZWN0b3ItPnBhbmVsLnZidC5wc3IuZW5hYmxl
Ow0KPiAgCQlyZXR1cm4gaTkxNS0+cGFyYW1zLmVuYWJsZV9wc3I7DQo+ICAJY2FzZSBJOTE1X1BT
Ul9ERUJVR19ESVNBQkxFOg0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IEBAIC0yMzk0LDEwICsyMzk3
LDYgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAg
DQo+ICAJaW50ZWxfZHAtPnBzci5zb3VyY2Vfc3VwcG9ydCA9IHRydWU7DQo+ICANCj4gLQlpZiAo
ZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVfcHNyID09IC0xKQ0KPiAtCQlpZiAoIWNvbm5lY3Rvci0+
cGFuZWwudmJ0LnBzci5lbmFibGUpDQo+IC0JCQlkZXZfcHJpdi0+cGFyYW1zLmVuYWJsZV9wc3Ig
PSAwOw0KPiAtDQo+ICAJLyogU2V0IGxpbmtfc3RhbmRieSB4IGxpbmtfb2ZmIGRlZmF1bHRzICov
DQo+ICAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDEyKQ0KPiAgCQkvKiBGb3IgbmV3IHBs
YXRmb3JtcyB1cCB0byBUR0wgbGV0J3MgcmVzcGVjdCBWQlQgYmFjaw0KPiBhZ2FpbiAqLw0KDQo=
