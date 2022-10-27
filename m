Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD2660F203
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 10:16:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC0D10E565;
	Thu, 27 Oct 2022 08:16:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA44E10E565
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 08:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666858577; x=1698394577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G0lWcvVmjGgNYEbrWo41kjUswOvyD0QxdKL4QpAnFAI=;
 b=ZxmBSGiwm24DlT04BGped8f4/+E6YSVometOQ0zgrVrPmGfazoNkIIug
 +HItGQ3czUx8KvRNLon8y5n7TgkooGvg5DKf/nfvARNlRmU/Qd2leP59M
 s5rjE6gj03i61kBapOUxwKG4loFHNuIgMOKqVYvYdlr57Ni2BE/kR3eCz
 IP/VKpF60Kgb3HENI/vZpxCm0hiT9GOQ7m1JoW+wE+NQMf8i+X6zALQiC
 86mM7vxlgI7bhmxBqwCe8Vtnpi0SY0A8HxG4wMlXa7Aei/fbmNszwBR29
 wJULopR0fDPrD9GEliRh5SeAatBzit2r0KI6nwuM3pZaq/Yr7aH5IsEnb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="309857844"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="309857844"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 01:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632320896"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="632320896"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 27 Oct 2022 01:15:59 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 01:15:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 01:15:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 01:15:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lj/L2deLFAA3jXoItJKan9TO2QpQaQQnX6HTkVBSyjadNqv5rZIFvYRMgWAqiQvBnAqjRDkBO3fsXtaGutyN6XAgi85/LdzTX1FGl1wGzzjm6bfJJ5YkawUFbQ7mFcU2Ei/veUBjsQdgXDCR6FVKNzKIXIs3RZZBSxWHlxte1GmAI1X9QPxmRlnZP2OO8dJdh/Sp+7hBAJWvL9mwl8vONOZqtLBDYGnioQKhRn+p4OZJmDX75LTNlS5qLoOPl6x0LSmghhI9i0Yfumk4b3cWJqZResKpDdbtURlFn4m8CTWF3vr7Edpkc+oQykRKQVVKyeTIHs+z02bh0y4MWzEINw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G0lWcvVmjGgNYEbrWo41kjUswOvyD0QxdKL4QpAnFAI=;
 b=CqMX02g8axJgPCeVJxmMY8pCHpqRabefJoOi6DSA5RKNpFtPcYvZ7QBSxw8rlNptlRaNK8yKK2WTZ8XxJnQLuPNznaZD6gRa4aempuoSRk/x4wNk77bV6cnyFXDarsVK3xc7hU44xzCdfAU+lIwrN585VrsbmCYmw6hJrQX0aqLDkIYY5/w9//HyxuW7s5xmhkfoVTuIM417GB4gqKn9ezz/1TOJlikzqiRT9tY5SI9xTptzrIg4evnhJL5iYnekM8yioftL8plEg88IVPb7NqnBCHHzTmXH1Iig53+3Ovm3pdRjfXHahXr3/2GQRW3KIlkXuMvhDqi4EwGR+qPbFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by MW4PR11MB7077.namprd11.prod.outlook.com
 (2603:10b6:303:21a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Thu, 27 Oct
 2022 08:15:56 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::252d:1a18:47e6:d80]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::252d:1a18:47e6:d80%6]) with mapi id 15.20.5746.028; Thu, 27 Oct 2022
 08:15:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 20/20] drm/i915/mtl: Pin assignment for TypeC
Thread-Index: AQHY38vQRdmdDKS6AUO0lpMgEBJM164gzlIAgAEcACA=
Date: Thu, 27 Oct 2022 08:15:56 +0000
Message-ID: <MWHPR1101MB2157B1D4101D4D6293CA79B0EF339@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
 <20221014124740.774835-21-mika.kahola@intel.com>
 <Y1lDnnKZ3zstL9c2@ideak-desk.fi.intel.com>
In-Reply-To: <Y1lDnnKZ3zstL9c2@ideak-desk.fi.intel.com>
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
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|MW4PR11MB7077:EE_
x-ms-office365-filtering-correlation-id: 7acfc71b-4e27-4c4c-7bc2-08dab7f37945
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hZ6Z9XHK/1juw6s6cZ3mNnbnIDW4zt+2D1l7i9feSeIPhK6g/MoVAvQsguECI3oDFNrv7a31+XoHdv1pkw0VG8DGE/etDiIR4axvEeNQ1ZEkhd6J/Tstz9L1PJPQdjxJvHofndt7EPeb3J9n0JoRVkqXq6yStXTWlqgm+722Bn62PvXBzVA6aHq9BT7bXXw6RgYmUIfeSw0KfL6N+QLkY4gJxPt9Tyu/wLbqquC2cuCN4FL0ssXEbee5NJvXaK7U3UIwFpdSV7pK3xqqySyiJ5+h0/R7r4aEp2oWoMQ9P7fcRWLD9W/zIoljF47XjP0YENotQ6gERkFv9QNNvhh38hGzj6RTy92+sddE4SayJ3H5B3Y1C16rAAoC7smVSpzw/0CT2uTZxtDUb8bOeFPscuaG0XZ8u/QImVxH/TxQ3Vl6lO0mJyWKBX20MmghY5yLoDNGcdMx60SR+V72G+cQPvgNvUzR1J++gxa/EcbMF7xEqAYik3/uuub4GBxhDdVihgtp9n0QKlEQZ7FLG+z5n5QCen4cAB2jRXt9TQenYl/prndxEdjFhxqRsgPOpkrNrpYS8JXEWbelNIAVOMjX0tSGntzCr5V6fUrqoWEcHmNoHLXU05GJIYgYyWOmdIsbpAkA+u1Xe+3x7vNv/93nJIeJkC4WoIwPqGTkujtgCI2579ugzlMDYPaHNwIjDvARZwvfEaOHM1g87erMqdSvGQUVYkgxOpxEp3m12RB/SJXn95zIapmc0x5Y6JPNPbmCqUnD26WPJxA2cNibTXiElA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(396003)(346002)(136003)(451199015)(83380400001)(41300700001)(316002)(71200400001)(478600001)(66476007)(66446008)(4326008)(2906002)(6862004)(8676002)(8936002)(33656002)(66946007)(52536014)(26005)(66556008)(55016003)(64756008)(5660300002)(38100700002)(6636002)(76116006)(38070700005)(122000001)(53546011)(82960400001)(86362001)(6506007)(7696005)(54906003)(186003)(9686003)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YVhBQUViRnl2Y0RqK1hrZTE2WVNIOFYybU5HQ014Y08ySGYzbElKb0ZhdEtE?=
 =?utf-8?B?RnRza0VJYU9BVGEveFlrb1VscmVnR2pPWStVanN5TWh3ZVNUeVNwUUhZNzFR?=
 =?utf-8?B?aWEyVzFIZW94V0VqR0Q2aVgvdkljUk55V0cySjAxSEtJc1V4UWtzRHQrWHJl?=
 =?utf-8?B?Qm54QnF6Q0RuZS8vQk1uejZXcjVoSzJHTmR4dERvU2VsWUJjajM1MHlUQUpt?=
 =?utf-8?B?MHQ3YVg1VloxS1FKTlhiSjBaVElEbkcrMnJNZTlQUXRlWU5nazgwd1E0TkVu?=
 =?utf-8?B?WVRLYjZZTFpjTi9KVjVvWWpMdWp6amFXU2UwdWYxbWlWZU9CZWJEcWMwM2F0?=
 =?utf-8?B?R0lCSVM3OWFUN3I5cnlza2h3OEx5OXlRa2gzeGZLY3ZIWUhlbjB4V1ZWUE1m?=
 =?utf-8?B?Q1pFMWR1V3BVdlFvVVlUc3pMZWF2YjBubXhtR2ZERVlsd25yZDlnSCtOTkt1?=
 =?utf-8?B?eTZ6Z3kyd0IxRjFkMG5mU1YvdEVCYnZsYzdPU3lvL1NTWm1zVis0NFZFdWMx?=
 =?utf-8?B?cnptZEJjam1KUWthalVUS3pJbU5kd0Y1a3hxdG45N3FwVzVhU294Mm1OdEdZ?=
 =?utf-8?B?VHhzdisrWDRLVTRxMTZxNjY0NXkwMm4yT21KV2tvVFRpek9ZYkZoaXArTjho?=
 =?utf-8?B?YnNoeG1Ec2pEQ1Jqc3JZV2dUL3REdW1NWGtsaS9CRlVTYU9VRkUxa3VQK1VY?=
 =?utf-8?B?Y0dCYmVLMVpOOVVKRSs0WTFZeVRxWnZpQWIrUFplOE9XaHMwdzhRODFqZUxR?=
 =?utf-8?B?Tkk4SS94OEZURk16V0swSzJ5Z01EbU94ZFRxYmxxVVRxckZqL2swOUZPWEVX?=
 =?utf-8?B?S2s5K0k3NFZ6RlRHbGRWeTNJUDVRcG5NR3YwcVpYTnRTR08vT2NRdDV5T3Q2?=
 =?utf-8?B?L1cwSGVOa0pBTmxPTjM4WkJJNGxOUnZ2TVVUZ0ROUVNwTmVSdURPZExXQXRB?=
 =?utf-8?B?QlczQUZKbzh3YmdhaXhrK1I0V2l3a1FHWXMyWHhFRmFldkdSQldTUkRDK3Nq?=
 =?utf-8?B?Q0pIcDBJU2lvVGlocCtZNkMxdXVOK1ZwZlZXdUtjQ1lxWVVRRFZ5bytmSDlm?=
 =?utf-8?B?VjBDT0lyb0x6alh6NWVOdDA2b2lKdytOTHRsd1NxcmpjQ3pSbG9UblF2NWRB?=
 =?utf-8?B?OFlGeVZxVGRLbnJCamhvVC81TklBKy93SmNjNGZHUDdXVEtwTStWMUxTZzRZ?=
 =?utf-8?B?cHNMYmRWOTlCN21IQ0RBcGorZUg1UW5kZUw5U2RLMGJqZmNlYzZMWVhITTli?=
 =?utf-8?B?N2g3WVNwR2dkemkzZGhsb29uQzYzWlJEbEFTSnpiT0lMZXM5Z2d1RHJ4T0gz?=
 =?utf-8?B?SXZZV1puc1dhajBPa3RURFBFcVV0ZzFodDVnYS9oZnhia1pPOVhyM2swSlFu?=
 =?utf-8?B?SUpHY1JrV3ZWWDV1aVcwZ1F4OG9VcFpucUw4c1dpU215cEJ5OXJiWi9uQ0Rp?=
 =?utf-8?B?SGNQcCtpWGZmODZKNW5qMG9YU0dPa0VRY0FacnJDbk9BbFVqT3c5UkYyRS9X?=
 =?utf-8?B?RFRJOVloV1J1aGU5Y3FCV0p4clN2WnRWWno0dGZlOGFXdkFCZUUwZGcvS204?=
 =?utf-8?B?Smo0U3gxcFV4Yjg1SkFQLzIxc2QwUFRNanB3UDE3VXQwVWZVMzQrSEZUdy8z?=
 =?utf-8?B?dlZyWXV5ZHpzdGN4elk5N2tBK0JNUGZxTURhUTVCYkVVVTJ2SCs3Nmxacnhy?=
 =?utf-8?B?b0NaSXAwdzhYeGZNbjkvdGFBN2pBNmc5dmh4ZkoySzlSZThmODlNL0ZQTUVU?=
 =?utf-8?B?MUhWTUFkZXZ0REFTQ2VSQjl6K2t5SmtSRVRDRzF1YjZEQk41enRkVEcrclcy?=
 =?utf-8?B?OVlBSEJnZjBjVzFsdms2T3dpNWh1NTVld2RCdTV4VFRjbGlnVlhPZldkR3Vo?=
 =?utf-8?B?YStNNnBpM2tXcWVwbFZ1K1ExRkhsYUhOVm9rODE3R01GcE12SUZjNHoxRk5O?=
 =?utf-8?B?RXY2ZHBXSE1tRE8rd2tXRE9FWFQ5SEdjYlh4UXhNQWtnU3hoemRHWFY0Q1VD?=
 =?utf-8?B?L3RicjVnSW9nNTJRYW9LOTRVSENacnVzb2VYVDVkMUZFTXc0ZDlrLzBiakpr?=
 =?utf-8?B?N3JSRzdiV2ROdk5qczA1NGVhelRlQm1Eb1lyVVh5TTFKZHl6L3ZEZFFVN3lk?=
 =?utf-8?Q?sVUfkBU00IONw7j0+C6wBKctL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7acfc71b-4e27-4c4c-7bc2-08dab7f37945
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 08:15:56.5723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U8D7pZgV4xpauiAAKa7nBh5Kn/WSwbpp+y+oBdBnBGZR8n3RJYT2az5nhJiXqEf1pDrK3Ax/eu/HS1kWkjGFkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 20/20] drm/i915/mtl: Pin assignment for TypeC
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMjYsIDIwMjIgNToyNyBQ
TQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBTcml2YXRzYSwgQW51c2hhDQo+IDxhbnVzaGEu
c3JpdmF0c2FAaW50ZWwuY29tPjsgUm9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT47IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCAyMC8yMF0gZHJtL2k5MTUvbXRsOiBQaW4gYXNzaWdubWVudCBmb3IgVHlw
ZUMNCj4gDQo+IE9uIEZyaSwgT2N0IDE0LCAyMDIyIGF0IDAzOjQ3OjQwUE0gKzAzMDAsIE1pa2Eg
S2Fob2xhIHdyb3RlOg0KPiA+IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4NCj4gPg0KPiA+IFVubGlrZSBwcmV2aW91cyBwbGF0Zm9ybXMgdGhhdCB1c2Vk
IFBPUlRfVFhfREZMRVhEUFNQIGZvciBtYXhfbGFuZQ0KPiA+IGNhbGN1bGF0aW9uLCBNVEwgdXNl
cyBvbmx5IFBPUlRfVFhfREZMRVhQQTEgZnJvbSB3aGljaCB0aGUgbWF4X2xhbmVzDQo+ID4gaGFz
IHRvIGJlIGNhbGN1bGF0ZWQuDQo+ID4NCj4gPiBCc3BlYzogNTAyMzUsIDY1MzgwDQo+ID4gQ2M6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gQ2M6IEltcmUgRGVhayA8
aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5z
cml2YXRzYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zZSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMzANCj4gPiArKysrKysrKysrKysrKysrKysrKysr
KysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiBpbmRleCBkYmExMGJj
YzZiNjYuLjFiYzgxYWRmMWFkNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMNCj4gPiBAQCAtMTMsNiArMTMsMTAgQEANCj4gPiAgI2luY2x1ZGUgImlu
dGVsX3RjLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF90Y19waHlfcmVncy5oIg0KPiA+DQo+ID4g
KyNkZWZpbmUgRFBfUElOX0FTU0lHTk1FTlRfQwkweDMNCj4gPiArI2RlZmluZSBEUF9QSU5fQVNT
SUdOTUVOVF9ECTB4NA0KPiA+ICsjZGVmaW5lIERQX1BJTl9BU1NJR05NRU5UX0UJMHg1DQo+IA0K
PiBUaGUgYWJvdmUgYXJlIGZsYWdzIGZvciB0aGUgUE9SVF9UWF9ERkxFWFBBMSByZWdpc3Rlciwg
c28gc2hvdWxkIGJlIGRlZmluZWQNCj4gbmV4dCB0byBpdC4NCk9rLiBJIHdpbGwgbW92ZSB0aGVz
ZSBkZWZpbmVzIHRvIHRoZSBjb3JyZWN0IHBsYWNlLg0KDQo+IA0KPiBUR0wgaGFuZGxlcyBhIGZl
dyBtb3JlIGVuY29kaW5ncywgbm90IHN1cmUgaWYgdGhhdCdzIGNvcnJlY3Qgb3IgdGhlIHJlZ2lz
dGVyDQo+IGRlc2NyaXB0aW9uLCBvcGVuZWQgYSBic3BlYyB0aWNrZXQgdG8gY2xhcmlmeSB0aGF0
Lg0KPiANCj4gPiArDQo+ID4gIHN0YXRpYyBjb25zdCBjaGFyICp0Y19wb3J0X21vZGVfbmFtZShl
bnVtIHRjX3BvcnRfbW9kZSBtb2RlKSAgew0KPiA+ICAJc3RhdGljIGNvbnN0IGNoYXIgKiBjb25z
dCBuYW1lc1tdID0geyBAQCAtMTQ5LDYgKzE1MywyOSBAQCB1MzINCj4gPiBpbnRlbF90Y19wb3J0
X2dldF9waW5fYXNzaWdubWVudF9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KQ0KPiA+ICAJICAgICAgIERQX1BJTl9BU1NJR05NRU5UX1NISUZUKGRpZ19wb3J0LT50Y19w
aHlfZmlhX2lkeCk7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgaW50IG10bF90Y19wb3J0X2dl
dF9waW5fYXNzaWdubWVudF9tYXNrKHN0cnVjdA0KPiA+ICtpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KQ0KPiANCj4gVGhlIGZ1bmN0aW9uIHJldHVybnMgdGhlIG1heGltdW0gbnVtYmVyIG9m
IGxhbmVzLCBzbyBzaG91bGQgYmUgbmFtZWQNCj4gYWNjb3JkaW5nbHkuDQoNClllcywgSSB3aWxs
IGZpZ3VyZSBvdXQgYSBkaWZmZXJlbnQgbmFtZSBmb3IgdGhhdCBmdW5jdGlvbi4NCg0KPiANCj4g
PiArew0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19w
b3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4gPiArCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiA+
ICsJdTMyIHBpbl9tYXNrOw0KPiA+ICsNCj4gPiArCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQoZGln
X3BvcnQpOw0KPiA+ICsNCj4gPiArCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1LCBQT1dF
Ul9ET01BSU5fRElTUExBWV9DT1JFLA0KPiB3YWtlcmVmKQ0KPiA+ICsJCXBpbl9tYXNrID0gaW50
ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzayhkaWdfcG9ydCk7DQo+IA0KPiBUaGUg
Y2FsbGVkIGZ1bmN0aW9uIGhhbmRsZXMgYWxsIHRoZSBhYm92ZSwgc28gaXQgY2FuIGJlIGp1c3Q6
DQo+IA0KPiAJc3dpdGNoIChpbnRlbF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKCkp
Og0KDQpZZXMuIFRoaXMgc2ltcGxpZmllcyB0aGUgY29kZSBhIGJpdC4NCg0KVGhhbmtzIGZvciBh
IHJldmlldyBhbmQgY29tbWVudHMhDQoNCkNoZWVycywNCk1pa2ENCj4gDQo+ID4gKw0KPiA+ICsJ
c3dpdGNoKHBpbl9tYXNrKSB7DQo+ID4gKwlkZWZhdWx0Og0KPiA+ICsJCU1JU1NJTkdfQ0FTRShw
aW5fbWFzayk7DQo+ID4gKwkJZmFsbHRocm91Z2g7DQo+ID4gKwljYXNlIERQX1BJTl9BU1NJR05N
RU5UX0Q6DQo+ID4gKwkJcmV0dXJuIDI7DQo+ID4gKwljYXNlIERQX1BJTl9BU1NJR05NRU5UX0M6
DQo+ID4gKwljYXNlIERQX1BJTl9BU1NJR05NRU5UX0U6DQo+ID4gKwkJcmV0dXJuIDQ7DQo+ID4g
Kwl9DQo+ID4gK30NCj4gPiArDQo+ID4gIGludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9j
b3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ID4gKmRpZ19wb3J0KSAgew0KPiA+ICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJh
c2UuZGV2KTsgQEANCj4gPiAtMTU4LDYgKzE4NSw5IEBAIGludCBpbnRlbF90Y19wb3J0X2ZpYV9t
YXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4g
PiAgCWlmIChkaWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX0RQX0FMVCkNCj4gPiAgCQlyZXR1
cm4gNDsNCj4gPg0KPiA+ICsJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0KQ0KPiA+ICsJCXJl
dHVybiBtdGxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzayhkaWdfcG9ydCk7DQo+ID4g
Kw0KPiA+ICAJYXNzZXJ0X3RjX2NvbGRfYmxvY2tlZChkaWdfcG9ydCk7DQo+ID4NCj4gPiAgCWxh
bmVfbWFzayA9IDA7DQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gPg0K
