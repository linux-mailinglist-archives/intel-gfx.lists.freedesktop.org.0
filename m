Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B13D57BC41
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 19:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD9890A1F;
	Wed, 20 Jul 2022 17:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC4F909EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 17:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658336687; x=1689872687;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V9T0RH18F2kqwvtsZie6r0ZTWoJlYs8XfSXW67Nq4uQ=;
 b=Y6aTBg5ePYuIregFLfljrfvnTbwvovCy7fVLvxa6528bnUo0wvThRuOJ
 8D0vIEU9IihDnZHHpM0thqXnH0DaJ4aDrQWPQxuD3eTkkO3HtTgwxGdbF
 6hjkCIP6gmh0650jAlBalsVlL5MW3Vf0KujslGGIiNlTeuYxjM0rLVw7i
 PllhcUjao8k8h6bYSb2pbYC62QtvF9u+vcJEbwhn6eAqg0p0AZlcVyowD
 dMNzImmLgUlHmsB1baaqItfBt4clvCHbBt4WzaYEL3lijLc8mCLRus0jQ
 GBOLrKvomMkiASu6dpRK6qHffBbxMXhabmUy3H70OuXiVwsEW44znXDy8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="286843075"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="286843075"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 10:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="595309711"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 20 Jul 2022 10:03:54 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 10:03:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 10:03:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 10:03:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlLmYYfgI3fYf4gG+nEbpET2qe3BCJT6j2B3d9qpK4lCp9q2M41vRxJozJ+Go0G25UDz0uGIDwvptjNjpdAwPaxFHDzTgmP1167By4rK3415pJT0DezhaAfGvwT7nsGgmS7/MbDmETJ6WzBrXYrOJYtw4js9QInbdZ7YYpOfLojOVIseuiiZRAMMs4cMnaLvK7n5e/W/CV/J1wEa3c5T4eCq3QnvkOFn0Gf2r1YQz4/hV7KWSFRhj1gI+UwFswVpsZY9w/bV794fNmQTqcFONwbmAuRQa2KzbMqzqemTU3RfqGYFRyse7HRw4nM4iVuZQaYjy1rbqgkTmYl+W5pZUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9T0RH18F2kqwvtsZie6r0ZTWoJlYs8XfSXW67Nq4uQ=;
 b=HtHr1VhrC7FXAzgVkr/j+ucAvCKmcAQHUcif2bWJjRdxNhxxvRFQ/cGxqz+UQzfC8A2ZpRsdEwYBIXmRP2jcFqUORZW2TXr5EXYbIT/j/cRG/FO6fpd3K4NUD4Ankcj6WkoRt8qtglP/FHOLxmTpTJLjFDLdoEXe4t9RkaN6z1HRU9X3qncQpyJjhKzddiipgRiOb4dII/URovKkvnEltRRIZYabjhFgI3xUwh2QFkrEY5lBPRK5xsUwR8fKZcjB0P5ZBGmLnz590HtYmfTrQcbm+KOttjhDPItPzdfsY5oERVar8f8Bkht5iVjpsf3HVpniSGYWfypagRWwvhD4Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2173.namprd11.prod.outlook.com (2603:10b6:301:5a::7)
 by DM4PR11MB6334.namprd11.prod.outlook.com (2603:10b6:8:b5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Wed, 20 Jul
 2022 17:03:42 +0000
Received: from MWHPR1101MB2173.namprd11.prod.outlook.com
 ([fe80::b412:c858:da07:3d17]) by MWHPR1101MB2173.namprd11.prod.outlook.com
 ([fe80::b412:c858:da07:3d17%10]) with mapi id 15.20.5438.023; Wed, 20 Jul
 2022 17:03:42 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler()
Thread-Index: AQHYmtUkjouOriIsZEqTQBgNZp37Ja2EeeeAgAKJWYCAAHtNoA==
Date: Wed, 20 Jul 2022 17:03:42 +0000
Message-ID: <MWHPR1101MB217308D0E3656912D7EEEF00F88E9@MWHPR1101MB2173.namprd11.prod.outlook.com>
References: <20220718183424.149988-1-anusha.srivatsa@intel.com>
 <YtWsW+q+soTMtHgi@mdroper-desk1.amr.corp.intel.com>
 <8d4c0c06-f6bb-0bd0-46ab-0535deabeabe@linux.intel.com>
In-Reply-To: <8d4c0c06-f6bb-0bd0-46ab-0535deabeabe@linux.intel.com>
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
x-ms-office365-filtering-correlation-id: d91533a7-6bc0-46ea-ab2f-08da6a71cca7
x-ms-traffictypediagnostic: DM4PR11MB6334:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L61Kyw0yJRCYWiSSKXQOdGObj9DoBOlsF+2yl46Z5oWh7bJoHquEG9Mg8HrEWZtpF7nsONhS1c/1wfNpS4NXO9zIc9o9rrEzwVel+v3+C7mi2kOKDmB5Yn2BOFo5cLU5eTMbFFSZQOFX9Yvo3F2ANimwQlfEI1d5bYWZdhRJVTlb4uzUZu4LEqvmHcl7Rutoc8G8HAZZj3DtHelhjHnywXfFSsoi57HhyO+dHKkAKkdeMmqrGrgE8i8fxH2cWJyTQXuQo3sHwAAKvF0jWuTr1+HW27s/korvPFKkK/Hr419sYURWgflySEVWHGrGST7soklzuxnzVGErB5t/4UxWxtJUmO23hqCwzSOYbtVda2RWDKKc9dkSu/A7dO/25ATqDfj4jGCPva7VK1iB8MUpmu8HWd4no0hSYbQWm9jUKGY3EimceB3exSwVhzLI+PoV6jMPuVMju5h3tHYTrZwwmRGFAuJE8e8uDB7JBYhWPn+ZBsj10dHsrDPGELeEWGRn9X1XFqBwRhq4oeJs+UcgTbbyHqYVZ47E2D2yC/w3fS6qcy+fArJC6/YPpfA4hmITN6Cv77DJwST3bgptYFCUEJW8LtIOc3rEIF6cXIMrJuDm+VfyZaAVH9zxfHnqF2H/W5T1YA1wmC+EKVoeN+CQ2wGygiqSDDSuELfM0KG8+J8ijnCD6jApAqFgloF3BiiGMhW3Nx3IbYhsX09kcA5Q+UjxDjZCEctVNagzb4x+m0qtmbeo3dPP/45zqkYWDv+tV+tEnKJELfpzpcseCs9m4RowKO2FmS5TIm0Ld5TR7c47Iyv1Rn7UCfnHfAKlfsEm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2173.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(136003)(366004)(39860400002)(346002)(8936002)(8676002)(52536014)(66476007)(82960400001)(86362001)(66446008)(66946007)(5660300002)(64756008)(4326008)(83380400001)(38100700002)(186003)(66556008)(478600001)(53546011)(55016003)(110136005)(7696005)(41300700001)(76116006)(122000001)(2906002)(316002)(9686003)(38070700005)(71200400001)(6506007)(6636002)(26005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2xsaFl4MGtvWS9xallJN0tuenlPb3phVlI2M0ExeG03dW1SL1gzbzVMR2gx?=
 =?utf-8?B?VXZ2dWpSS1lvSklYUUtwMTZZb21ycWJ4R0RaYStPVkJjZjNhM0IzV2x6dVlP?=
 =?utf-8?B?WThyV1lYMGJIQTZLVTBodDJxODdOVzh6UWV0Zzd1em9hSnpKZ3JWY0hPVFdG?=
 =?utf-8?B?bldNMURwVzIrYUVob2cxeUhiN0tjUVRXUVRoUjBVWGorQ01tU2xFVFFYeERl?=
 =?utf-8?B?YUpDM2FsQ1N5Vng5SEhvREFrRDlhVDVZNG12OW13SWVQeEZoMGdMV2Z1MW5H?=
 =?utf-8?B?LzNTejFENDlZdG1vbHVNaXZjWEZDOEMwWFZKZ1VWazFjTUo0Z0podzlFQzA4?=
 =?utf-8?B?SHBWQjdKZHlNMDlsaERzU1l5U1BXRC9sR2htRzlNNm9RQ3ZiMW42ajhON3E3?=
 =?utf-8?B?MThJUGg4RzFUWndIUHd5WWxDUEdqQi9hb1o4NGFsMUlLZFFzTUYybnhvblRY?=
 =?utf-8?B?SEdlZkxhN0FCc21WdDNhL1NpT0V5N3lvaVM3Mm91eXdOTGF4am1kcHFwZjd5?=
 =?utf-8?B?Rkg5VHU0aGtxNmZkdzVic0lZWVlXNFcyZi9lSnZKb25IY2QrN2IyUmVQTDRz?=
 =?utf-8?B?bDY1aGYxNTAwQ2NDUys1U21VL29CbmU3V3BGbllOR2lrNCszb3JrL2tyRnox?=
 =?utf-8?B?cEpvTDZFR2ZXU3NBUTBNL0xoZVduLzh4OEN1U0draEdPZ3dkTVFHNmpRTG4z?=
 =?utf-8?B?NktPTlZLQWJkSnJuRnlQQWNtOWlWblhuZVo5MGd0Uy84VEFjajRjdzRVY0Ey?=
 =?utf-8?B?b1VYNFFQTUlCYmg5MXRSNzl6Ym9KL0EvZDVrSlhDKzFpbHBDOGErZXE3eUFx?=
 =?utf-8?B?RDJhYmF0THd4NHNhamJ6YlJIZzlZWm5hZVhFbWhpdGo0NzBCN1RmNmREYnpq?=
 =?utf-8?B?TGJsYmxla2VrNUhvR1FSWi9aVS9DUUtRQ1plaE1pTTdaOVNiZDVlNmxLeklL?=
 =?utf-8?B?RTh2aFE5NTF5SUw5QjBEa1h2SXFJdlBOeWdmZ0ZqcWMxelJaNnVlL3B2ZnpX?=
 =?utf-8?B?WVI3eEVIYkRYMVNDM2VRN2JDbS8rYnN5cm1Rb01IRGMzVTNXU0wyQk84czRn?=
 =?utf-8?B?Uzl0S2dFM2w3TjB5YlFXUkN0eCtTMDk3SUNmdEZxbU94b3RHcUNxTytnOFVJ?=
 =?utf-8?B?YUtzaXFIdzhnOWNJNjVSL2VuZTlndVd6OXR5d0l3MUhJSEs1RmcyazFjcTBk?=
 =?utf-8?B?QUFXbWUwcm9KZmc2YVdFSHhNM2lnc1hpcTkxTEtqTGM5Nkhqa2VEdHAxcVFh?=
 =?utf-8?B?cUVqM25CTk9wd3VtUWpqbEF3QjZIOU5WUEtCNDRpUTVSOStWQU54RzV5SGpW?=
 =?utf-8?B?a1h1RXB3cUMxbXVZSEdGc1piU2hEdkk4MEJ1MGlkK1JHdFpFTXYwNU1wNkN4?=
 =?utf-8?B?U3hSaEc5NjNQdU1qWXJXQjk5VG1SVzZtblIrRmhxK2lETHBLdFh5WTNJS2wv?=
 =?utf-8?B?MUZUVCtMVzd3RkxEYzBvT1NYb0FScGExR1Q1VjAwaEZrQnhNaWJMeWVHbDIv?=
 =?utf-8?B?Sy9TZlh1R3BiNDBwY2IwcDU0SWhUMEFlOFQ2d2d2cnZGeUJ1cGlPYUxlTXJT?=
 =?utf-8?B?bHBNNDlmVk5nMFlnWHBXQ28rcC9WN29pMkt1QTBkcm5GZ2xEZm9LNDVsOHhm?=
 =?utf-8?B?NDliWTV3U2lHcjhOeWhXZzZuV21pWXRKWFZoSklTY29Mdy9uN0piM3g2NFVI?=
 =?utf-8?B?OE10RjJJR1ZCWnJxVFVKSXVJNzFnOEcvSkxubmRYUGZYVWdkMnQ5K3hWZ29Y?=
 =?utf-8?B?amZCdzh4cXhlZHphOFJSQUZyeU1kTDNDWTQ0V08yeG85M1BlOXlGanYzRmxz?=
 =?utf-8?B?bkZLV0NjV0R0VUorSlJtTG15akxXSCs2YTZaVUNiWVFYYlhFQXlRT3diZjk1?=
 =?utf-8?B?RTNrcTBRSVNVQlFmalVtVnFQMXB1amdzc2h3aE93QlpuaWdlMndFU2dqSWk2?=
 =?utf-8?B?R3pEb1FpYzhaKy9hemo0RDZoZU9tUUU4ditHeG1NbXNOUVBkL1ArelFhanVl?=
 =?utf-8?B?UGl5NjF1OVVNOXo3Sk01Z0NQRXpOeGVWVXZ2d0xLbkdseGV0eGpxd0Z3QXlR?=
 =?utf-8?B?bVVmdUppRFlmL29TMUJiTDNTUkIzSVRnK0JaYVRGL2F2N085dnBhU3I2aEt2?=
 =?utf-8?B?WkFNazJ1MDhWRnZvTjl6L0hnbDdoSTdtQTJXcmlyVFFDUjFkUTE0aTgwcVBu?=
 =?utf-8?B?N0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2173.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d91533a7-6bc0-46ea-ab2f-08da6a71cca7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 17:03:42.3735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 86Yv9jwshaLFtFT7IJKCbezwQIwyX4HAIwamsYezqrFFhIu4cgDd8RES3wza90ll8q5bqp5mwpqMX5auhX5MdwhUDLsuRZnLy9ZVmvJGNT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6334
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBKdWx5
IDIwLCAyMDIyIDI6MzggQU0NCj4gVG86IFJvcGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+OyBTcml2YXRzYSwgQW51c2hhDQo+IDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNTogUGFzcyBkcm1faTkxNV9wcml2YXRlIHN0
cnVjdA0KPiBpbnN0ZWFkIG9mIGd0IGZvciBnZW4xMV9ndV9taXNjX2lycV9oYW5kbGVyKCkNCj4g
DQo+IA0KPiBPbiAxOC8wNy8yMDIyIDE5OjU0LCBNYXR0IFJvcGVyIHdyb3RlOg0KPiA+IE9uIE1v
biwgSnVsIDE4LCAyMDIyIGF0IDExOjM0OjI0QU0gLTA3MDAsIEFudXNoYSBTcml2YXRzYSB3cm90
ZToNCj4gPj4gZ2VuMTFfZ3VfbWlzY19pcnFfaGFuZGxlcigpIGRvZXMgbm90IGRvIGFueXRoaW5n
IHRpbGUgc3BlY2lmaWMuDQo+ID4+DQo+ID4+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+DQo+ID4NCj4gPiBSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPg0KPiA+PiAtLS0NCj4gPj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgOCArKysrLS0tLQ0KPiA+PiAgIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ID4+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYyBpbmRleCA3M2NlYmM2YWE2NTAuLmMzMDRhZjc3N2Q1OA0KPiA+
PiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiA+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ID4+IEBAIC0yNjY5LDEw
ICsyNjY5LDEwIEBAIGdlbjExX2d1X21pc2NfaXJxX2FjayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LA0K
PiBjb25zdCB1MzIgbWFzdGVyX2N0bCkNCj4gPj4gICB9DQo+ID4+DQo+ID4+ICAgc3RhdGljIHZv
aWQNCj4gPj4gLWdlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoc3RydWN0IGludGVsX2d0ICpndCwg
Y29uc3QgdTMyIGlpcikNCj4gPj4gK2dlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUsIGNvbnN0IHUzMg0KPiA+PiAraWlyKQ0KPiA+PiAgIHsNCj4g
Pj4gICAJaWYgKGlpciAmIEdFTjExX0dVX01JU0NfR1NFKQ0KPiA+PiAtCQlpbnRlbF9vcHJlZ2lv
bl9hc2xlX2ludHIoZ3QtPmk5MTUpOw0KPiA+PiArCQlpbnRlbF9vcHJlZ2lvbl9hc2xlX2ludHIo
aTkxNSk7DQo+ID4+ICAgfQ0KPiA+Pg0KPiA+PiAgIHN0YXRpYyBpbmxpbmUgdTMyIGdlbjExX21h
c3Rlcl9pbnRyX2Rpc2FibGUodm9pZCBfX2lvbWVtICogY29uc3QNCj4gPj4gcmVncykgQEAgLTI3
NDAsNyArMjc0MCw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBnZW4xMV9pcnFfaGFuZGxlcihpbnQN
Cj4gPj4gaXJxLCB2b2lkICphcmcpDQo+ID4+DQo+IA0KPiBNYXliZSB0aGlzIGlzIGNvcnJlY3Qg
YnV0IGl0IGxlYXZlcyB0aGlzLCByb3VuZCBhYm91dCBoZXJlOg0KPiANCj4gCWd1X21pc2NfaWly
ID0gZ2VuMTFfZ3VfbWlzY19pcnFfYWNrKGd0LCBtYXN0ZXJfY3RsKTsNCj4gDQo+IFNvIF9pZl8g
dGhlc2UgcmVnaXN0ZXJzIGFyZSB0cnVseSBub3QgcGVyIEdULCBvciBkb24ndCBsaXZlIGluIHRo
ZSBHVCBibG9jaywNCj4gY2hhbmdlIHRoaXMgb25lIGFzIHdlbGw/DQpUdnJ0a28sDQpnZW4xMV9n
dV9taXNjX2lycV9hY2soKSBkb2VzIG5vdCBmYWxsIGluIHRoZSBzYW1lIGNhdGVnb3J5LiBXZSBk
byBvcGVyYXRpb25zIHdoZXJlIHdlIGdyYWIgcmVnaXN0ZXIgcGVyIGd0IGFuZCBkbyBzb21lIHdy
aXRlcyB0aGF0IGFyZSBub3QgZ3QgYWdub3N0aWMuDQoNCkFudXNoYQ0KPiBSZWdhcmRzLA0KPiAN
Cj4gVHZydGtvDQo+IA0KPiA+PiAgIAlnZW4xMV9tYXN0ZXJfaW50cl9lbmFibGUocmVncyk7DQo+
ID4+DQo+ID4+IC0JZ2VuMTFfZ3VfbWlzY19pcnFfaGFuZGxlcihndCwgZ3VfbWlzY19paXIpOw0K
PiA+PiArCWdlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoaTkxNSwgZ3VfbWlzY19paXIpOw0KPiA+
Pg0KPiA+PiAgIAlwbXVfaXJxX3N0YXRzKGk5MTUsIElSUV9IQU5ETEVEKTsNCj4gPj4NCj4gPj4g
QEAgLTI4MDUsNyArMjgwNSw3IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBkZzFfaXJxX2hhbmRsZXIo
aW50IGlycSwNCj4gPj4gdm9pZCAqYXJnKQ0KPiA+Pg0KPiA+PiAgIAlkZzFfbWFzdGVyX2ludHJf
ZW5hYmxlKHJlZ3MpOw0KPiA+Pg0KPiA+PiAtCWdlbjExX2d1X21pc2NfaXJxX2hhbmRsZXIoZ3Qs
IGd1X21pc2NfaWlyKTsNCj4gPj4gKwlnZW4xMV9ndV9taXNjX2lycV9oYW5kbGVyKGk5MTUsIGd1
X21pc2NfaWlyKTsNCj4gPj4NCj4gPj4gICAJcG11X2lycV9zdGF0cyhpOTE1LCBJUlFfSEFORExF
RCk7DQo+ID4+DQo+ID4+IC0tDQo+ID4+IDIuMjUuMQ0KPiA+Pg0KPiA+DQo=
