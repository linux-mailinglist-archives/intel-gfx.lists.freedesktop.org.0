Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4134FF091
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 09:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12C8410FD7E;
	Wed, 13 Apr 2022 07:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548F110FD7D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 07:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649834958; x=1681370958;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=+mxBNbCoDVza41+doHgVLtAomFX5j8JJg4z8euinspc=;
 b=guHGjBfomWI3FoDfx3/CTqgPs54SMb/7Kz+v8zu89Nm7yI17MsD1Y3CE
 PdBullIZ5njzKzEq6UdXMeYDWTYRjSELxpaz0ECcsr7qZZl9LNU2Sz4bK
 2bHqY8SCm4BoLZBO8FQt7EQ4eKgJZJsIKp3MvFNxx4kaH42v2jBddwWOG
 BD8MGmtgdrXNUJCSBwEnR37+uYM+yKYQkG1lOX6Ho3yChZcJxi+rXuf6k
 UGHSotDLVB13c3Ikq/WFCexiR5XZxUEzSFY6PFgqjuDZ/CZZThMSkA6SW
 2tL5TI2pCQEvMt+Vqh/b0x4FpHIFUTBCpugKhZWQ2W1YPbQtQohI2bmhQ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="349033686"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="349033686"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 00:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="700145389"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2022 00:29:17 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 00:29:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 00:29:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 00:29:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aPVkK8IIpgTE34wtIEAHr8+7ELMeD27nxqcv4S4RqM/ZGU0JUIeAi1CTYj7gBn1movjimQmrJiYVyiccQBlSu6Y7jwEBgTDfRgfGiIJ9mShLS6KxdEzhy0p5z+ZNvVEonGDFfl4OCwppiFINtNpKu5NtfJMLUAVOenxjo4iIu9cdbsDi8XFRvINGQSpvYwEXjriQU9rzOiR4Ihd7c7VtyJhmFgvUKbpKOj7FwynV8Q+/xjYl3dcElvtfUvsujK6/ug2DhCnHouKud781EGrKc3bv8JP8BE+qtpGcqBKBf/0B8iUsdiQmwOvkcs+QzZB/BDJPYo7BSRIRIhCbMWzbaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+mxBNbCoDVza41+doHgVLtAomFX5j8JJg4z8euinspc=;
 b=O/7KnhgXdzR/TLrx+tK/BkUZ3X2IZNZrUp5gWxE70A60abX9AhYmmHXVIF1HFw3gFlqehh+RmlrYwEh9h94EwcqIt9Rqk4ZBUk/n2cFoJIbf6vybEOPhFtRHiAH+e1RmaAkvWi3+zQEX9ogovSGNAfqpY/ADDAchGCRYKCWnojI5J+1d6F1k/Cp0mthLr4ticl8k2bwp0aySgCR350nEpt627YBG95eC4cDN5nnpeUE5CfLOrXcVhw7vLcEi2++MGTWXyqCk30wUKWwgOFSkddTL8DIi/1z61pav4giNruxN61kKXoj1std6l0IeyVBeAxbPgck7wGc6BSCNrDItdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BYAPR11MB3015.namprd11.prod.outlook.com (2603:10b6:a03:86::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Wed, 13 Apr 2022 07:29:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%7]) with mapi id 15.20.5144.029; Wed, 13 Apr 2022
 07:29:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display/psr: Unset enable_psr2_sel_fetch if
 other checks in intel_psr2_config_valid() fails
Thread-Index: AQHYTq90Ytb5lwYa2UCwTdng//pdtqztcvsA
Date: Wed, 13 Apr 2022 07:29:15 +0000
Message-ID: <f4575ddb442310862ac1cba5b9a24999dc11ef1d.camel@intel.com>
References: <20220412205527.174685-1-jose.souza@intel.com>
In-Reply-To: <20220412205527.174685-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5de268a0-1001-46c4-ca46-08da1d1f5079
x-ms-traffictypediagnostic: BYAPR11MB3015:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB30156D4E764DC9097CFC4B278AEC9@BYAPR11MB3015.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: adsxy2AdrUsUCPVV48MmVz2KUd0KtM/eYnpEKMnIYeR5MauBfU3aGUn0SnZwJLL/LJBXM5Nm9RgqIy/ld6DL0qGH9ZoQtq2sBHUo9Dd28Clqvr7z341Ini42u0UMI7/gtLupPg4dmyLJeXIn3LLcOPXCvQUN3mo24FVNId+J3MebMkUP2YiLsIA0PEGUs3StuwyG8EoSmybjsFdImFq6V5cXaIG2jk629+T1534qRBni9PFqTZEvFsrAC+LYxDMWZmsheVN+H0h0pe1ymewgI3DobcvPYxXW48DK4I+d8hS6fY6KQoV6DMOeibZ8fhX0izLXV8swNEArfUqZ1qVKP28+TWBOUzPTIAQBxoOqeTr4pzzxZ0/fk3sQ1Y/RQa51UiuEtKY/Vk2il403CMgwt6ISXCR4U6rPULeBXAr/cbTmnVe//FCfWtcVJxPzSwvWm/lNwZys6jyQyLdhzJLqHh/aRpMyNcgFzKgmwTUc+xC9/NWQTqcJ5mvU3/9MyZLOQXsAEvQDvOqUhBMqZTpybIxKulcfytisszTNLsCPxJNCdkhi/CcoBRm0DmqPmMy1wWVagykvyQ69xmUgJVw3Mz/VJKuTQLM5m1w5bPts5PYvkT8T9ER/sG9VMbBwZx/0bQ/EMNNAojgYKNwXUg3rYrWt57cUAMxEK0c1UV7r8X4Fqh13BW0Ce0fgWIIjG45FJVPQgXyhprFgYeiU+CMPDA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(316002)(86362001)(83380400001)(8936002)(71200400001)(2906002)(66574015)(6512007)(2616005)(186003)(26005)(110136005)(6636002)(38100700002)(5660300002)(122000001)(66446008)(66946007)(8676002)(64756008)(66476007)(66556008)(6506007)(38070700005)(76116006)(91956017)(82960400001)(36756003)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2dsejVXekdTeXlkVnFWMXUydzlDcHRvMGZTTm1nOGpVZkN5aTBlREdVa3R5?=
 =?utf-8?B?UjFYN0hHdmhOYXJhR1JodCtSb1NwQzdHMkk2WXkySFlKQ1ZrWkY3aXBxcVZo?=
 =?utf-8?B?MGVBbnlFVk51dHpIdkZlVm9Hc2QwWkpqZEEvV3dweXRvcmc5dHgydmJCSGRs?=
 =?utf-8?B?L215SDdrYndhdzVwZHdGK0NMNm1YamFTd2Y2SCtaemdPVnpSdEtBcTNoREpF?=
 =?utf-8?B?SWJwaG9vSWtMMENpUmlHeXNJbmMyOCtPQWRRdnNGVGdManNUemZRVUR1dWR2?=
 =?utf-8?B?aHBValMxZE1KMkNMbVIzRHhxYUxLZEJIeVZma1drSENqcXhNVUIyV0RCU3pL?=
 =?utf-8?B?c2cwUlRBMEljckJFT0lEUkZrVUFnVnZtM0VuNmJhQ0htd2Q3eUZsaFQwbDIz?=
 =?utf-8?B?RmVybHRXeU5vcHdac1AyUUMwbW41WitBcW9OZWZIbXo5bDFzZ3ZTK1h1VUZP?=
 =?utf-8?B?UmVaaTRMUlNNSnlZL0Fjam5vZHk1dXBhcW4vcXF1OFR4RGhLM3pFZWpHNWJH?=
 =?utf-8?B?aHROa0c4UkI2bHVFK051UGs3NWhEckxOWHFoRXI5WncyZ0EvbDJFSllWb0gw?=
 =?utf-8?B?Zlp1MTByRzluSHh0dDI3Zms5enFZaSsyUnI5Q1FIU0VYQXkraXRpOTJFSkpj?=
 =?utf-8?B?WlUxUll3b1liUTFvWG9keHZTKzdKSmYzVzM3c1Y4dGZGQXNOOUpWRWw3dTVy?=
 =?utf-8?B?V2xFR0VQQXhoYUNrcmJqMjY3Y2xiNnp5cEp5dTF5NkYzRmFKUnlYRXdMWlhk?=
 =?utf-8?B?MVpIVU5iakZyS1o2KzdFUERsMy9xczRob0RnT2xqSElpQzUrRG9yMmNzZHFW?=
 =?utf-8?B?bUNHUG5UVm1qd3VHMXJadHEyUW1aOFh5KzBoTXRCWmNJUXcwcWtvTWFwTktu?=
 =?utf-8?B?NVF1QmlKejJMWFZzaUhEQ0hoRklmdjUxbkp6R2FQZEhsODBTaWJGQ01UWWdC?=
 =?utf-8?B?eGdORHhtNzVzTEl4Wm9lU3JBVFJvR2dyNVpnaUk2VTIvMENPcGlBTyt4TzFX?=
 =?utf-8?B?WmdnOWc0cG5SUkZETE9jQVZ4UWlWTFkxQjNDcDhBdGlFaGUwM0Zza3pMbjlh?=
 =?utf-8?B?aC90ZnBLOXZqampUMGJneDVaazdqT2NzR1ZEaU91b2MyalRGS1lpclZiQ2pn?=
 =?utf-8?B?UFFaR2Z5Vkx6YlhUUGVOOGlHbUd0Tkg2ZGFHVHVUU3BZaFFtTDc0d1ovY3cw?=
 =?utf-8?B?bFhRUHFOb0tPOTZhYk5MZTFMeTJ2UXdYN1ZVZ0FvNW8zS2RwcEY1OWNPVWhs?=
 =?utf-8?B?cFYxZFBjUGRacUx3ZjJGTlhJN3ZycjE5RlNlRnVHMHk0VUdqYXAva1FBV1V1?=
 =?utf-8?B?NTZJNHd1TjlrUWJsQW5PcktGb2VSOWdlaFZzNkp3bnNTWlkyMkdmYkJmelM1?=
 =?utf-8?B?eXorckl5MW8xd01BL3k4UjAydnh4cVovZzN4RnMrYVR4OWVxNzNyOHYyeHgw?=
 =?utf-8?B?RUd3QjF5MnBCMEVSQWRhUmNOK1Z4QU1MY08yUnduZ3d4akp0bFdVT0czaUEz?=
 =?utf-8?B?MTVBMlhKcnNsUk9tOFFXSjN2aDRIdTJYb1EwaEovVmdvZWRqb3hKbjRacHVB?=
 =?utf-8?B?M21JaEY1VkdjdGRwR1k5LzViZzdKTi9UM3pUWnd2TzI1K2VCME1hTWo4ZEp0?=
 =?utf-8?B?MThzMmtrNTlkTEdOemFRNGJ2cWNscXF5ajIzTHd3a3lRWSt1SEwxam5QUXRi?=
 =?utf-8?B?dWRDMmRHVnE1Tm4vREcrdEFjZklJTzQwUzlkdnZ4VDFMd2ZNNVVIaFNEaTM5?=
 =?utf-8?B?MW41d1RMWU9PMEFCcDhaTHJ5T3JzRlcrZXhMeWRIbGFhWWRybkZaYnU5V0JV?=
 =?utf-8?B?TEVFL2preHZZUnFuV240SEg1Si80RW11amFsbUE1UVBoaGdYRnJKRkd6NEk1?=
 =?utf-8?B?OW9wbVJhaC82YkZWWDN6akE3TkNrUnNVZFVRajFEUmI4MjA4SUFjTTFjTmMz?=
 =?utf-8?B?WmFXdTcxbGx0RUdyb3FrYmlNc1JNbkhrN21kM1V5QVFFVVhiNDJDaUJ5bDJK?=
 =?utf-8?B?Skd4SUdySk9LYzlPdXIyaEVFM0FJU3ZJdCtSMGZKbGxPYVdLR09IOFY1a1Y2?=
 =?utf-8?B?N2RqZ09mZkt2RURtMXl2MnpCN0xnK1JvT1l5Ty9HbzNTYWtVdE0ydDlVc1ZI?=
 =?utf-8?B?M3ZWaTJMaURMbFBINjZmN0hvOHNJM2pEVW83Tk00N0Y5bUZid2FBR3pkVy9B?=
 =?utf-8?B?R09QTVJRS3I2OWVmRVUwQWwzMlVac2JNbTErVkNwcmVBUEd1d0Q5ODlIcWNE?=
 =?utf-8?B?QXJNUWlzTGNVWjBsazJreWpVdncrUm96TFVvUXlWc21FaE9admxhNXBMa243?=
 =?utf-8?B?WStLU0lZZm8vTHl3VlRLQ1BSalFOLy9jUC9uWkpuSnZEelphbUFxQWNkdmNX?=
 =?utf-8?Q?4DJs0I7ZPocbdcf9By7lAMtfJTRgNvrNx42sJ?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <930FC37423CA96409DAE3CE2997BF528@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5de268a0-1001-46c4-ca46-08da1d1f5079
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2022 07:29:15.7228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6AVqDvqAh7G+v6LZxZG7JziFBJ5j30MBBvVYhu1PlTagImgE0ivv8Yi54tTbW7WlN8JPZdhXqBWtlC3mwK3GS4urtAxAT9smqPWeNcD8NCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/psr: Unset
 enable_psr2_sel_fetch if other checks in intel_psr2_config_valid() fails
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

T24gVHVlLCAyMDIyLTA0LTEyIGF0IDEzOjU1IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBJZiBhbnkgb2YgdGhlIFBTUjIgY2hlY2tzIGFmdGVyIGludGVsX3BzcjJfc2Vs
X2ZldGNoX2NvbmZpZ192YWxpZCgpDQo+IGZhaWxzLCBlbmFibGVfcHNyMl9zZWxfZmV0Y2ggd2ls
bCBiZSBrZXB0IGVuYWJsZWQgY2F1c2luZyBwcm9ibGVtcw0KPiBpbiB0aGUgZnVuY3Rpb25zIHRo
YXQgb25seSBjaGVja3MgZm9yIGl0IGFuZCBub3QgZm9yIGhhc19wc3IyLg0KPiANCj4gU28gaGVy
ZSBtb3ZpbmcgdGhlIGNoZWNrIHRoYXQgZG8gbm90IGRlcGVuZCBvbiBlbmFibGVfcHNyMl9zZWxf
ZmV0Y2gNCj4gYW5kIGZvciB0aGUgcmVtYW5pbmcgb25lcyBqdW1waW5nIHRvIGEgc2VjdGlvbiB0
aGF0IHVuc2V0DQo+IGVuYWJsZV9wc3IyX3NlbF9mZXRjaCBpbiBjYXNlIG9mIGZhaWx1cmUgdG8g
c3VwcG9ydCBQU1IyLg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IEZpeGVzOiA2ZTQzZTI3NmI4YzkgKCJkcm0vaTkxNTog
SW5pdGlhbCBpbXBsZW1lbnRhdGlvbiBvZiBQU1IyDQo+IHNlbGVjdGl2ZSBmZXRjaCIpDQo+IENj
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDM4ICsrKysr
KysrKysrKystLS0tLS0tLS0NCj4gLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25z
KCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCA1YTU1MDEwYTliMmY3Li44ZWM3YzE2MTI4NGJlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTg5MSw2
ICs4OTEsMjAgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0DQo+
IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gIA0KPiAr
CS8qIFdhXzE2MDExMzAzOTE4OmFkbC1wICovDQo+ICsJaWYgKGNydGNfc3RhdGUtPnZyci5lbmFi
bGUgJiYNCj4gKwkgICAgSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNU
RVBfQjApKSB7DQo+ICsJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiArCQkJICAgICJQ
U1IyIG5vdCBlbmFibGVkLCBub3QgY29tcGF0aWJsZSB3aXRoIEhXDQo+IHN0ZXBwaW5nICsgVlJS
XG4iKTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiArCWlmICghX2NvbXB1dGVf
cHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlvbihpbnRlbF9kcCwNCj4gY3J0Y19zdGF0
ZSkpIHsNCj4gKwkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkgICAgIlBTUjIg
bm90IGVuYWJsZWQsIFBTUjIgU0RQIGluZGljYXRpb24gZG8NCj4gbm90IGZpdCBpbiBoYmxhbmtc
biIpOw0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsJfQ0KPiArDQo+ICAJaWYgKEhBU19QU1IyX1NF
TF9GRVRDSChkZXZfcHJpdikpIHsNCj4gIAkJaWYgKCFpbnRlbF9wc3IyX3NlbF9mZXRjaF9jb25m
aWdfdmFsaWQoaW50ZWxfZHAsDQo+IGNydGNfc3RhdGUpICYmDQo+ICAJCSAgICAhSEFTX1BTUl9I
V19UUkFDS0lORyhkZXZfcHJpdikpIHsNCj4gQEAgLTkwNCwxMiArOTE4LDEyIEBAIHN0YXRpYyBi
b29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggJiYNCj4gIAkgICAg
SVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9DMCkpIHsNCj4gIAkJ
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJQU1IyIEhXIHRyYWNraW5nIGlzIG5vdA0KPiBz
dXBwb3J0ZWQgdGhpcyBEaXNwbGF5IHN0ZXBwaW5nXG4iKTsNCj4gLQkJcmV0dXJuIGZhbHNlOw0K
PiArCQlnb3RvIHVuc3VwcG9ydGVkOw0KPiAgCX0NCj4gIA0KPiAgCWlmICghcHNyMl9ncmFudWxh
cml0eV9jaGVjayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sICJQU1IyIG5vdCBlbmFibGVkLCBTVQ0KPiBncmFudWxhcml0eSBub3QgY29t
cGF0aWJsZVxuIik7DQo+IC0JCXJldHVybiBmYWxzZTsNCj4gKwkJZ290byB1bnN1cHBvcnRlZDsN
Cj4gIAl9DQo+ICANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCAm
Jg0KPiBAQCAtOTE4LDI1ICs5MzIsMTUgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdf
dmFsaWQoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAgICAiUFNSMiBub3Qg
ZW5hYmxlZCwgcmVzb2x1dGlvbiAlZHglZCA+IG1heA0KPiBzdXBwb3J0ZWQgJWR4JWRcbiIsDQo+
ICAJCQkgICAgY3J0Y19oZGlzcGxheSwgY3J0Y192ZGlzcGxheSwNCj4gIAkJCSAgICBwc3JfbWF4
X2gsIHBzcl9tYXhfdik7DQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQl9DQo+IC0NCj4gLQlpZiAo
IV9jb21wdXRlX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lX2luZGljYXRpb24oaW50ZWxfZHAsDQo+
IGNydGNfc3RhdGUpKSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJ
ICAgICJQU1IyIG5vdCBlbmFibGVkLCBQU1IyIFNEUCBpbmRpY2F0aW9uIGRvDQo+IG5vdCBmaXQg
aW4gaGJsYW5rXG4iKTsNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAtCS8qIFdh
XzE2MDExMzAzOTE4OmFkbC1wICovDQo+IC0JaWYgKGNydGNfc3RhdGUtPnZyci5lbmFibGUgJiYN
Cj4gLQkgICAgSVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjAp
KSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJICAgICJQU1IyIG5v
dCBlbmFibGVkLCBub3QgY29tcGF0aWJsZSB3aXRoIEhXDQo+IHN0ZXBwaW5nICsgVlJSXG4iKTsN
Cj4gLQkJcmV0dXJuIGZhbHNlOw0KPiArCQlnb3RvIHVuc3VwcG9ydGVkOw0KPiAgCX0NCj4gIA0K
PiAgCXRnbF9kYzNjb19leGl0bGluZV9jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCwgY3J0Y19zdGF0
ZSk7DQo+ICAJcmV0dXJuIHRydWU7DQo+ICsNCj4gK3Vuc3VwcG9ydGVkOg0KPiArCWNydGNfc3Rh
dGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCA9IGZhbHNlOw0KPiArCXJldHVybiBmYWxzZTsNCj4g
IH0NCj4gIA0KPiAgdm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwNCg0K
