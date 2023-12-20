Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D257819E48
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1988610E116;
	Wed, 20 Dec 2023 11:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7AFA10E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703072493; x=1734608493;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9NjJeLku26EKUCUC2G+Z/11ikLe/0n0bJbbiajqk+uE=;
 b=MVty/x9A7ti6J5eIohZ9T5S6VCH3hPwXiyeicz2Rfc/GvOQFethczpuk
 MJRHn4w/qMRqGaM8+hsp5FwQH3HI/QEzx4BGti1qsJ7M5usmmw/EbOCRS
 OSlJ/71UnnqnYM9pX+SmF89NtdSBtwLycLBljwlidkDra8aaH0QuflloJ
 XOR4qUnAisblSeCG7gXm/Oy6MMfNcCd4sa9r3pDFnTWS1jRKOvnDP5smU
 iuyxHByPLlXiXbOXZlaYX7C81SvIwMPbzl+qR9ZH/4q6pRk38cezw/WuE
 yM7rRbl6dGewQS0gHykFSstm7wsGSTSMA4uJTlzeP8SXvgOoRNxBCZ1g3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="392973195"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="392973195"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:41:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="846703090"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="846703090"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:41:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:41:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:41:32 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:41:32 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:41:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WgY1t2eoK5dS6Wp/pM97vqtN4Ro33+2AVOjyigopOvUX2LQ6b39EulOY924wtvqK21bpPGQG+nPCCrLmiOd8psNZvkFrbgR39sJj7NLE49I7lt5xe8DQAxCZmkXcr9AYCfLVNohnROd8hkukR+aiPAhm8Qz3/J8pvS6z8AiykFlV7oRm4mm2wWa3myc+vasnAyWkzSSH8L2GvXrayHZe2f+El7n3PYtZCKD1+mPOZ0r6YHC9hSoRPBFUgflnhGMAUdliActqjNaJOeOZvTxf22vOU/wrQieQCGZIz+wbUtYEyHtHb6Iz9TzOLpi2e7XNjYnIiI41Igw7rgqKksBpLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NjJeLku26EKUCUC2G+Z/11ikLe/0n0bJbbiajqk+uE=;
 b=PwQ8zn+Jr5e+AIJbvfwWtZkBOBREZUCM3gu1rg9dgBAGpoqlueRVK9hLFAGbuXvunDP6E/zk/YlybxQsjdZctqDZsksJUSF1YsL9UEg603P61ARuaZit1FwvIS9aLG+aqHupkrq91Jhoz4pT989nkgHg6QUqeeXjtvmXZ7YekUAKEq2HQy6bxZNV0KSH4OjLoy8KrY7rXwwC2ZH7XGNlau2SFS2USwhgkpzmimrDHcIi+KwzTI3UNY01uK1YM7R543Hp441WCT5c8uM1NjHCqxaEnsnd9A2LvOh7av02wpzUuRBoVy8RVHOb6pZgFY3uo1sa8+IxL7Z45trlSwETFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by CO1PR11MB4772.namprd11.prod.outlook.com (2603:10b6:303:97::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Wed, 20 Dec
 2023 11:41:30 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:41:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy cursor
 updates
Thread-Topic: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Index: AQHaLa7EuYvc8C70fEuorcQtx9WAKLCyFRmg
Date: Wed, 20 Dec 2023 11:41:29 +0000
Message-ID: <CY5PR11MB63440EB2396C4C24EE0C1A1DF496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|CO1PR11MB4772:EE_
x-ms-office365-filtering-correlation-id: 0d35a01f-00fa-480b-2800-08dc01509ba5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n0fFG+6jTR4nID5fRET785txNr1Wo5HEN7h3a/qB49IaUbRdCz3el1M3oTcOsiDlPJ/OGW6yrsCC6w9Z2HStRCJCNSB3l8wyXDxirK5w7G9jr1lAyfS2bTQ1EC+sIq5PTUCBhjXlqDmvBnPF6uA1U1lw16hlJ7s0p6CmfTbw8pTG05BPXDLmuMJ+btw/7oA1o9jo0qnezXf8Ssespws8+hoZlreWrF+i2CjPknlR48JJ+Eeac4IsaKXtCxvPm7bggU0OxkS6FRzN5WgkXdWgmiUEE/FORgZAtdj18sHA7pkbiqNq5ii530aM1/Jp1Cq7NFQQpfAiftLOSgJiODsTWi7g7t1TXx3Ekgvh/I84LwX/lu3qOz0tOOq/VL59+i0/TRPdy4tPvxN91YI4qvPqSrxCsKsJabMXWUhILY8kiLCrLvXvw4FABU+e6YMkExbT1twIQ0t+aeg4hZWkTvSWVCuTBinX7Lfzntcg7JblfJyzOO2LNEQF8CETZI0hABLtP3rHEgS6z8LfzGQAm0r8BJDL1amsfaKTUUcAGeXTtYbn+MlJPHiBBvipbegMfG2/Eu4DO8W3aatnJjHB/KlncnwrpzvoOwSUhoXmzOadFleXcXftGl5ZL32U3muHre5O
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(396003)(366004)(376002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(55016003)(38070700009)(122000001)(5660300002)(2906002)(33656002)(26005)(82960400001)(86362001)(38100700002)(71200400001)(83380400001)(15650500001)(66574015)(7696005)(53546011)(9686003)(6506007)(76116006)(41300700001)(64756008)(316002)(66446008)(478600001)(66556008)(66946007)(8676002)(8936002)(66476007)(110136005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzJlcGpzaTJEZ3VFOHZTZEViUVdEV0dNV3pNMUVNWHhObEhHRTJqUFB6a0lh?=
 =?utf-8?B?OXJPUGtrRDJ5OU1zanBybW9hcG9Pa29Lak1pT3FHMHlaSzViN3V4WXJBWjRH?=
 =?utf-8?B?SmtkMnIrV3BSclpsazJuQlJSUUlrUC9HSmZhMjVQM2JhbC9QMStSa1N4VWN1?=
 =?utf-8?B?UmFEZWxoMVpVcTR1c2EwTHBMTXV2R2tTQWZ6QmlDUWRQQkZEYnNEWXR6Mngz?=
 =?utf-8?B?YXhEK3c5T29PRi9uZHdBdnorZStrdUdRNW9FWlRHOXNEOFFvTWxBQzdlTFJy?=
 =?utf-8?B?OEtzS01sb05ic3ZBVEk0Q0lQM3RFQ1Z2K3JOdWtqcVc5QkFaN1dwalpqR0xp?=
 =?utf-8?B?cFNjU2wwbHBKMTR0bmxiZzFKTFRaUHlLaFR5ZjdvQU5Za2k0VHNwK2VIejBM?=
 =?utf-8?B?aGc0ME51anJqV1NRK1pNUWw1Zi9Dc09MYm5paFJ2U3lCM1FHQURUckJzYzhr?=
 =?utf-8?B?aUZuUjVHMWZVMU9ZRDdkdVZSUGFubTNJYWl2VWhzODB2WWREY1FidHdqSTJY?=
 =?utf-8?B?ZkVseEdQemhLUnEvU00vdFo5UTdvMmJ6cVFNeEpzMmVrTldaNllZRkY4M0Vu?=
 =?utf-8?B?dS9yU1NTcW5qblVxU3BjTWFjNDRNbjZYVGRnTnplb1Y1ME5jTHVIOEI1OHgz?=
 =?utf-8?B?Z21TTytvSnlnZ25YODA1UlJydTRNdHdGU2JOWlBJc3NidTNubDRGZ1VhcEly?=
 =?utf-8?B?anhUUFNRRGRyOXdZRkl6SEtPa2VNWlNYVTBLd1g2MDVlbzl1c3pBNWZ1UjFt?=
 =?utf-8?B?b3h6bWxUUTAzM3V5Q0hvdXZuNkhKdFdwVitKeGk2K2puSmtGdzd5NHNXR01n?=
 =?utf-8?B?YUs2MTczbVFKczhKNUhhRTNCc25UVHFlam5LZVRxT3NibVhLdkV6UlZFTUE2?=
 =?utf-8?B?QjZ2dy9NVkdHbGhyLzVBbkxsNTQ3N25RdTM4Uml2a0ttSVBVREhPdEcrcjlD?=
 =?utf-8?B?WFprbjJFYkVMQjFJSW9YMTZSL0pvNTdWZGc0VWNMcC9EOHZwQU1BRVpmYmM5?=
 =?utf-8?B?bDZmR0dURVVPK0lIQXA4aFU4Z1R6ZDlPSVdLcmRVdElkZkVGekdxdmc3bnN3?=
 =?utf-8?B?eUFtZU5ROW5WaTZOZVV1WHNLQitvdVQvY3ZoMmhFQmROWFBBNnAzMDlPVmZa?=
 =?utf-8?B?WnFoU1JCVEo4ZEtuUkNJTTJNOFM0c3Q5bmZzaWhrVVFGV1VhWDNkcnVndEVG?=
 =?utf-8?B?NVRla1hWbXh0a0tzOVBjVWw5ZitxcS93OSttZ29vWWRVVU9GUXlnMElQRDNV?=
 =?utf-8?B?ZDRBdXBxMTB1Z0d5eHdWMUJsT2lZdlhjOGhheFRFVlB1Z0dxK0o1WHRoSFBk?=
 =?utf-8?B?bWVMd0d2MmpLSU5vbFN6cWd5YXI2b2phNnMxU2xrVmJQZlZtY3FmUjhKemE0?=
 =?utf-8?B?Q3FOQ2ZxNlprSjBIZ3J6Mmd2U0tEdE5ML1k4bUFaK3lkZDd6OWlaTThqQStk?=
 =?utf-8?B?MlNSZDhwMVVsQ050aUF4NisvYnh2YUQydzNvajBaYVhyQXM2czZwaTF5NmRv?=
 =?utf-8?B?aFAwRXZudUcxM1lhQm1McXBZMkM0bEp5Vkh5OVdhcHFRL2txeGZpdHdXR0tx?=
 =?utf-8?B?blhOdG9TRFg3a25yeVZneFVnZzJLVUhCdGtBZU0zVWd1NXFCNkl3dkgxdnBF?=
 =?utf-8?B?K3phbitqU24xZVlyVEQyRVk1MTI1akNaU2g3Z0VhbzB5V0FlR2FUNEV6UE5J?=
 =?utf-8?B?aE9MYlRodmRzVDJRY0h3RG11aEVDUWdiV212eDFlNjU5cTJEMzFURW1zKzI1?=
 =?utf-8?B?WjlldzVuclZzQjNZMjkxaUdMaklwUVQ4QlZWYVhMbGJrM3h0aTNCSWNqWWFH?=
 =?utf-8?B?SFBNd1JMMWxCV3dackUySTg3V2VvZTFuTFRhdzlVSjZldklQekZGdTY0WVE2?=
 =?utf-8?B?K3pnSXZOcW1rVEM2RHN1NkNrVUgyenpYSjJTRk9YRFYxdjRTZHpScGZWTVBD?=
 =?utf-8?B?dFhCblRESFI4SjRNQTg1Wjk4VUNTS0hUUEQ1VGdJR2YwRFJiWU1nK0RoSnNK?=
 =?utf-8?B?N09EU0daUXFWVTE4OEZhR0Y3Q2NEMGlET3JPcHNoMzRPM1VBVHhGOGhKM0U1?=
 =?utf-8?B?Q0dpc2R0bU5uSk5qKzkrKyt2VTlrNDJsYVRuYkgwOGY0dWo1dlUyVDJZbXJF?=
 =?utf-8?Q?zNbLMnV3x/1gWkUqqFFrQP3l4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d35a01f-00fa-480b-2800-08dc01509ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:41:29.9677 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8xYesVLPa2JxgOUmf3fQmAvP6Ipa7TRTIrrlUyf14YH3g5o/GuAgpKHfkYE9HgcZ9Z/YVzaCjMtfeVjx+WuTdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4772
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
OC85XSBkcm0vaTkxNTogUGVyZm9ybSB2YmxhbmsgZXZhc2lvbiBhcm91bmQgbGVnYWN5IGN1cnNv
cg0KPiB1cGRhdGVzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gT3VyIGxlZ2FjeSBjdXJzb3IgdXBkYXRlcyBhcmUgYWN0
dWFsbHkgbWFpbGJveCB1cGRhdGVzLg0KPiBJZS4gdGhlIGhhcmR3YXJlIGxhdGNoZXMgdGhpbmdz
IG9uY2UgcGVyIGZyYW1lIG9uIHN0YXJ0IG9mIHZibGFuaywgYnV0IHdlIGlzc3VlIGFuDQo+IG51
bWJlciBvZiB1cGRhdGVzIHBlciBmcmFtZSwgd2l0aG91Z2ggYW55IGF0dGVtcHQgdG8gc3luY2hy
b25pemUgYWdhaW5zdCB0aGUNCj4gdmJsYW5rIGluIHNvZnR3YXJlLiBTbyBpbiB0aGVvcnkgb25s
eSB0aGUgbGFzdCB1cGRhdGUgaXNzdWVkIGR1cmluZyB0aGUgZnJhbWUgd2lsbA0KPiBsYXRjaCwg
YW5kIHRoZSBwcmV2aW91cyBvbmVzIGFyZSBkaXNjYXJkZWQuDQo+IA0KPiBIb3dldmVyIHRoaXMg
Y2FuIGxlYWQgdG8gcHJvYmxlbXMgd2l0aCBtYWludGFpbmluZyB0aGUgZ2d0dC9pb21tdSBtYXBw
aW5ncyBhcw0KPiB3ZSBoYXZlIG5vIGlkZWEgd2hpY2ggdXBkYXRlcyB3aWxsIGFjdHVhbGx5IGxh
dGNoLg0KPiANCj4gVGhlIHByb2JsZW0gaXMgZXhhY2VyYmF0ZWQgYnkgdGhlIGhhcmR3YXJlJ3Mg
YW5ub3lpbmcgZGlzYXJtaW5nIGJlaGF2aW91cjsgYW55DQo+IG5vbi1hcm1pbmcgcmVnaXN0ZXIg
d3JpdGUgd2lsbCBkaXNhcm0gYW4gYWxyZWFkeSBhcm1lZCB1cGRhdGUsIG9ubHkgdG8gYmUNCj4g
cmVhcm1lZCBsYXRlciBieSB0aGUgYXJtaW5nIHJlZ2lzdGVyIChDVVJCQVNFIGluIGNhc2Ugb2Yg
Y3Vyc29ycykuIElmIGEgZGlzYXJtaW5nDQo+IHdyaXRlIGhhcHBlbnMganVzdCBiZWZvcmUgdGhl
IHN0YXJ0IG9mIHZibGFuaywgYW5kIHRoZSBhcm1pbmcgd3JpdGUgaGFwcGVucyBhZnRlcg0KPiBz
dGFydCBvZiB2Ymxhbmsgd2UgaGF2ZSBlZmZlY3RpdmVseSBwcmV2ZW50ZWQgdGhlIGhhcmR3YXJl
IGZyb20gbGF0Y2hpbmcNCj4gYW55dGhpbmcuIEFuZCBpZiB3ZSBtYW5hZ2UgdG8gc3RyYWRkbGUg
bXVsdGlwbGUgc2VxdWVudGlhbCB2Ymxhbmsgc3RhcnRzIGluIHRoaXMNCj4gbWFubmVyIHdlIGVm
ZmVjdGl2ZWx5IHByZXZlbnQgdGhlIGhhcmR3YXJlIGZyb20gbGF0Y2hpbmcgYW55IG5ldyByZWdp
c3RlcnMgZm9yDQo+IGFuIGFyYml0cmFyeSBhbW91bnQgb2YgdGltZS4gVGhpcyBwcm92aWRlcyBt
b3JlIHRpbWUgZm9yIHRoZSAocG90ZW50aWFsbHkgc3RpbGwgaW4NCj4gdXNlIGJ5IHRoZSBoYXJk
d2FyZSkgZ3R0L2lvbW11IG1hcHBpbmdzIHRvIGJlIHRvcm4gZG93bi4NCj4gDQo+IEEgcGFydGlh
bCBzb2x1dGlvbiwgb2YgY291cnNlLCBpcyB0byB1c2UgdmJsYW5rIGV2YXNpb24gdG8gYXZvaWQg
dGhlIHJlZ2lzdGVyIHdyaXRlcw0KPiBmcm9tIHNwcmVhZGluZyBvbiBib3RoIHNpZGVzIG9mIHRo
ZSBzdGFydCBvZiB2YmxhbmsuDQo+IA0KPiBJJ3ZlIHByZXZpb3VzbHkgaGlnaGxpZ2h0ZWQgdGhp
cyBwcm9ibGVtIGFzIGEgZ2VuZXJhbCBpc3N1ZSBhZmZlY3RpbmcgbWFpbGJveA0KPiB1cGRhdGVz
LiBJIGV2ZW4gYWRkZWQgc29tZSBub3RlcyB0byB0aGUNCj4ge2k5eHgsc2tsfV9jcnRjX3BsYW5l
c191cGRhdGVfYXJtKCkgdG8gcmVtaW5kIHVzIHRoYXQgdGhlIG5vYXJtIGFuZCBhcm0gcGhhc2Vz
DQo+IGJvdGggbmVlZCB0byBwdWxsZWQgaW50byB0aGUgdmJsYW5rIGV2YXNpb24gY3JpdGljYWwg
c2VjdGlvbiBpZiB3ZSBhY3R1YWxseSBkZWNpZGVkDQo+IHRvIGltcGxlbWVudCBtYWlsYm94IHVw
ZGF0ZXMgaW4gZ2VuZXJhbC4gQnV0IGFzIEkgbmV2ZXIgaW1wZWxlbWVudGVkIHRoZQ0KPiBub2Fy
bSthcm0gc3BsaXQgZm9yIGN1cnNvcnMgd2UgZG9uJ3QgaGF2ZSB0byB3b3JyeSBhYm91dCB0aGF0
IGZvciB0aGUgbW9tZW50Lg0KPiANCj4gV2UndmUgYmVlbiBsdWNreSBlbm91Z2ggc28gZmFyIHRo
YXQgdGhpcyBoYXNuJ3QgcmVhbGx5IGNhdXNlZCBwcm9ibGVtcy4gT25lIHRoaW5nDQo+IHRoYXQg
ZG9lcyBoZWxwIGlzIHRoYXQgWG9yZyBnZW5lcmFsbHkgc3RpY2tzIHRvIHRoZSBzYW1lIGN1cnNv
ciBCTy4gQnV0IGlndCBzZWVtcw0KPiBwcmV0dHkgZ29vZCBhdCBoaXR0aW5nIHRoaXMgb24gTVRM
IG5vdywgc28gYXBwYXJlbnRseSB3ZSBoYXZlIHRvIHN0YXJ0IHRoaW5raW5nDQo+IGFib3V0IHRo
aXMuDQoNCldhcyBub3QgYXdhcmUgdGhhdCBhIGRpc2FybWluZyB1cGRhdGUgd2lsbCBkaXNhcm0g
YW4gYXJtZWQgdXBkYXRlIGFuZCBtYWtlIHRoZSB2Ymxhbmsgc3luYw0KaXJyZWxldmFudC4gVGhh
bmtzIGZvciBhIGdvb2Qgd3JpdGV1cCBoaWdobGlnaHRpbmcgdGhlIGlzc3VlLCByZWFsbHkgaGVs
cHMuDQoNClllYWgsIHRoaXMgc2hvdWxkIGhlbHAgbWFpbnRhaW4gY29uc2lzdGVuY3kgd2l0aCBj
dXJzb3IgdXBkYXRlcyBhbmQgZW5zdXJlIHRoZSBzeW5jIGF0DQp2YmxhbmsuIENoYW5nZSBsb29r
cyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQogDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jdXJzb3IuYyB8IDE2ICsrKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAxMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+IGluZGV4IDkyNmUyZGUwMGViNS4u
Nzc1MzE4MzgwMDFmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3Vyc29yLmMNCj4gQEAgLTIyLDYgKzIyLDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9mcm9u
dGJ1ZmZlci5oIg0KPiAgI2luY2x1ZGUgImludGVsX3Bzci5oIg0KPiAgI2luY2x1ZGUgImludGVs
X3Bzcl9yZWdzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfdmJsYW5rLmgiDQo+ICAjaW5jbHVkZSAi
c2tsX3dhdGVybWFyay5oIg0KPiANCj4gICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fb2JqZWN0Lmgi
DQo+IEBAIC02NDcsMTIgKzY0OCwxNCBAQCBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1
Y3QgZHJtX3BsYW5lICpfcGxhbmUsDQo+IHsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5l
ID0gdG9faW50ZWxfcGxhbmUoX3BsYW5lKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoX2NydGMpOw0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqb2xkX3BsYW5lX3N0YXRlID0NCj4gIAkJdG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmUtPmJh
c2Uuc3RhdGUpOw0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRl
Ow0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gIAkJdG9faW50
ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqbmV3X2NydGNfc3RhdGU7DQo+ICsJc3RydWN0IGludGVsX3ZibGFua19ldmFkZV9jdHgg
ZXZhZGU7DQo+ICAJaW50IHJldDsNCj4gDQo+ICAJLyoNCj4gQEAgLTc0NSwxNCArNzQ4LDE1IEBA
IGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwNCj4g
IAkgKi8NCj4gIAljcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzID0gbmV3X2NydGNfc3RhdGUtPmFj
dGl2ZV9wbGFuZXM7DQo+IA0KPiAtCS8qDQo+IC0JICogVGVjaG5pY2FsbHkgd2Ugc2hvdWxkIGRv
IGEgdmJsYW5rIGV2YXNpb24gaGVyZSB0byBtYWtlDQo+IC0JICogc3VyZSBhbGwgdGhlIGN1cnNv
ciByZWdpc3RlcnMgdXBkYXRlIG9uIHRoZSBzYW1lIGZyYW1lLg0KPiAtCSAqIEZvciBub3cganVz
dCBtYWtlIHN1cmUgdGhlIHJlZ2lzdGVyIHdyaXRlcyBoYXBwZW4gYXMNCj4gLQkgKiBxdWlja2x5
IGFzIHBvc3NpYmxlIHRvIG1pbmltaXplIHRoZSByYWNlIHdpbmRvdy4NCj4gLQkgKi8NCj4gKwlp
bnRlbF92YmxhbmtfZXZhZGVfaW5pdChjcnRjX3N0YXRlLCBjcnRjX3N0YXRlLCAmZXZhZGUpOw0K
PiArDQo+ICAJbG9jYWxfaXJxX2Rpc2FibGUoKTsNCj4gDQo+ICsJaWYgKCFkcm1fV0FSTl9PTigm
aTkxNS0+ZHJtLCBkcm1fY3J0Y192YmxhbmtfZ2V0KCZjcnRjLT5iYXNlKSkpIHsNCj4gKwkJaW50
ZWxfdmJsYW5rX2V2YWRlKCZldmFkZSk7DQo+ICsJCWRybV9jcnRjX3ZibGFua19wdXQoJmNydGMt
PmJhc2UpOw0KPiArCX0NCj4gKw0KPiAgCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJs
ZSkgew0KPiAgCQlpbnRlbF9wbGFuZV91cGRhdGVfbm9hcm0ocGxhbmUsIGNydGNfc3RhdGUsIG5l
d19wbGFuZV9zdGF0ZSk7DQo+ICAJCWludGVsX3BsYW5lX3VwZGF0ZV9hcm0ocGxhbmUsIGNydGNf
c3RhdGUsIG5ld19wbGFuZV9zdGF0ZSk7DQo+IC0tDQo+IDIuNDEuMA0KDQo=
