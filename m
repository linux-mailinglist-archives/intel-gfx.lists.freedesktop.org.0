Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34561614B28
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 13:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2F210E06D;
	Tue,  1 Nov 2022 12:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAF8410E06D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 12:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667307219; x=1698843219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=yUT3QqWYv/sseqeJYc7NHq/ZZdIa01SRqK4REJJST9U=;
 b=CR7oXUOJvIVZVRxX/DU2CY1HhibRM8FYTW4ShUH3WYKeBiABhQjEQmd6
 TqdpLGmDvYGSFtOnqTY/6wAwngEhJaeqW0OHXEvr8RNhoub+2so5HZ9XX
 LDHpLz5xt9ardDfoEuaSXm6t1xespPTSwwpYtIDrFm66UQRbV/8DPrixs
 kbz3CEe4PnZsNS8cctCfVfvOMW1xrcUha8UptrjUIJ82BW1Opz+gbc2eg
 Gu6e++PT99ohyzYbcFx28/x3SJfBJ3Dtt74JFdQAoM0eyT16SApXv304e
 DDqEabagvozn9TnX7l6J3Emfx48YU7FDgypeCOLmq6uWmPO37KmWeH6iw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="310222829"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="310222829"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 05:53:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="665139078"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="665139078"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 01 Nov 2022 05:53:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 05:53:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 05:53:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 05:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WNegbA7aw4c0muhsyd53M8x2n5iU9ZnNVSUaHsS64/ye2Z0BRbYJuGv5xk9uRSmgibQiZ5+fJfcTBjWXmtLTsPzbGV0IEeAG3D5PbQQ9K05Vc1cg8klkSzdkI5aj/FXSCFLYpjSSQTvqn3voqiV/O+bcf5KO0DocKYJjT/PgoX9ZzVOJyBX3Tnnm0JH7R2L0nBOeA5AB1LgUlNe0eNoUl6R2+3V/0sAajwd61DW3MkkPM4kMcZxEqumUULA4kGA5AdSPVYoOiUyEC52YdoudOsQal8UM5D3SaK3TBlTNbqt/UiuJz2PLUKDxaWKD9DHUa8WJqQqBhmMyXZQxYQ5DcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yUT3QqWYv/sseqeJYc7NHq/ZZdIa01SRqK4REJJST9U=;
 b=dJCVFYhdvPdUrrX8D20FU1IUjvP7ILiHMK7cV4s+TSXyUG+WXUqoTO10/TNTlI92EPf2caNDuWuEnYkJQEMDb5pP73l+XSiSxUSgM56ntBPZd2pFnWXcat++pRgHEkTzHVa/oqOr0GvFie5/lv9F34/UhDZ70dSeBC8KnvAPj6AHZWBI6Z2Z1jgEest+CX1qStDjGKXfWaceWjZo+Vv+Sh+M878yccTrE+WyFmXv+rM5xYOEeiOkv7/Axe0M2ww6aeHmXhCNK0FhBfmFunlxtoxE7TPZVakWnLHRK/WLak4XEdniIGxnpJjrZOsf+RTy/oitolGizj1zdx3WxRHq/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SN7PR11MB7113.namprd11.prod.outlook.com (2603:10b6:806:298::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Tue, 1 Nov
 2022 12:53:36 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba%4]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 12:53:36 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/mtl: Fix PSR2_MAN_TRK_CTL bit getter functions
 for MTL
Thread-Index: AQHY7ei0eQBZxUbzKUqNS90wjZth664qBhUA
Date: Tue, 1 Nov 2022 12:53:36 +0000
Message-ID: <10f31bd0b609b38b00b1c69aff9808acd37b2007.camel@intel.com>
References: <20221101115342.1136720-1-jouni.hogander@intel.com>
In-Reply-To: <20221101115342.1136720-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SN7PR11MB7113:EE_
x-ms-office365-filtering-correlation-id: 204ac661-f6f6-48d3-1bae-08dabc08175a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X7qxdFHYxnvUvsrt0OqeBmfImr5/jjeNBXDJ6eMrLYN07WHApIzJ90D38ohuub8+HpD1KMVmBe9DznCGwTE3r1A+SEKGoz33dMDMOngVyHbCeT4sjO9Up8KrC+AMF9K61LNp4CpJ3tBdkk3a942y9QbWfAuZhFXjv21ZqopiR6s69ulyC1OgYXR/JlomPioVPpX5NbtENjbCCdJeQm8Sl0CXxBxmxpHpIv1qaZL3RrxY1pRTO6XsI29YRrYXVKJ2HMn4aaN9LRGJhFQ2iYnxSTntPeOS1wslehZDPPG4MZHIqBZUz7lkxGFJveb1lXZ1JdyMcR4vI/hhAoOdIcuxvyQ3QNYXAB12LA41cVhKCwbt8AbrREZ5XLAlVeq6gs0fwmro8w1BbLo0LVcZyEjRxauO3lL+XdcgexVyaO/3lMz6ARGtBoPgWHzIrjRCvkubTIgFaNKz258jvYjVLIZkghoGkYsq2cg3vRfQU8KrH7mcONJFidqBcfZfk83pQBLvnFiRCapmZyw5GkhC00uZe4UQm9l90HQBqdZnmfnOpNbCXapvHLJ1BPn8ZS9NZA1zVXo+JToTQoY9X0sA92F2WhsshCdOlpVQuqtbCqNyqK5nQyuctBTK4K9/YTWWVBSG3zAbEOFcrQXDUeqVRqwV8ub+wGgCmf6MVgK/BSLpFmnkSbMDA+Deu47MJidePtOm3aBQSU/g/iNrXihDINyKAv0BNk3/IR33CW52mSAqhzUH2jDbRgMsY7WMm8SKUOcaUaFxRe44l/NCawCV4CpnIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199015)(76116006)(4326008)(6512007)(2616005)(110136005)(66446008)(6506007)(41300700001)(91956017)(66946007)(54906003)(186003)(107886003)(64756008)(122000001)(82960400001)(66556008)(38070700005)(66476007)(2906002)(6636002)(8936002)(26005)(8676002)(38100700002)(66574015)(71200400001)(478600001)(36756003)(316002)(6486002)(5660300002)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TG93WGZyWnVHTVo1NFBaNFRQSjdEUnVRTW5zRkF1aUdkUGFsR1VTZU0zV0I3?=
 =?utf-8?B?MTNBYUxUSmpUS1VjLzJhNXBFek1Fc09LWFRWM2htSmxyQ241bjF4MTdQS05R?=
 =?utf-8?B?RTRPQ0JMYmRnZE9obmFNVzZRcCt0azRKcW1ucS9iUk5OMFZkWkFlTkhFb1dT?=
 =?utf-8?B?ZWxRZzg0c05EYmJGY01kTnZIYnM4aWpSc000UjNsQ0NmdUlsT01uUUZidTdv?=
 =?utf-8?B?YnZhNTloRGc1anYvOFpsaE5nRkRMcnFVcUkvZVNOd21qTHg3Y2phT3VTbEpm?=
 =?utf-8?B?MTBkNE1BakhmdVVWT0hZT29PWkljZVBZVU9EZ2FhbEJxQ1ZXSHJzUWhJRlh1?=
 =?utf-8?B?K29rQWM0cWlrR3F6QXBYOHdlaWNNU2FYejVYaVFCM0FRVmJFY2YwMks5cXVK?=
 =?utf-8?B?YWtyZERRS00rMGRCeXFiSVJLZnluWXB2L2lWbkQxakdaRUtDTnRQTGJ2UDJk?=
 =?utf-8?B?UlZsNVVOeGRXR3JMdTFrSTBFYk5ncG1LQ1dRRzV3M3cyYXZuQUNScVdGVTBS?=
 =?utf-8?B?UEFZbUxBYll5SUZqOVhCVVdPNTdUemY4a1R3Z2p1MkRvclN2eGp6TkI2LzlP?=
 =?utf-8?B?bVgyUm0vNlIrWG5ESWsvOTAyNjdNZWN3VDVqY2NmY1pKak5aN1RFallic3ZH?=
 =?utf-8?B?M25QV0ZPRkZId2Z6Mk54eU1wWUlDdUsxRkNvbnZWK2IzUDlFcmd5MUdLc1BM?=
 =?utf-8?B?c1ZzY09jNlFjcUdVem1WSjBYZko3M2tpWHhlODNQNy9IdHUxLy9SUjJMeWUv?=
 =?utf-8?B?RFpLclNWbEh5SThNYnNjR3pvR0tFM2lNcmdHdjBvRmR6cHlWSFkrdXdISmkv?=
 =?utf-8?B?WXh4M0ZsN3g2MlZYLzJBL3A1ZDFlRW9jSzhMTkxITUN4eDJyTTR4akpNY2l3?=
 =?utf-8?B?Slp5SnI5Wk1aOFVXRWpuQTdCRnpCR0FBbE1OL1pETlRnakkyT3dHeDk0WTBB?=
 =?utf-8?B?MHcwMnRGcDljaGlEaDlqS0ZqS28zR2cyNXUyd1p6S216YTRXaXVSS3hkQ1JH?=
 =?utf-8?B?OXhXOUVxMmhpUnJBc2dmaVViekV0MjRWT2F5ZjB4LytaM29UOTN3bWpFbEZY?=
 =?utf-8?B?d2xVazNvb3N5cDlvblBRR2ZWQ1RTem0rWU5nYlBIZE9LSW9pVlBOOXNwdW9W?=
 =?utf-8?B?ZFlPRndmNzUxZWJGdkJSdk0yTisrU3pVMzFsd2twcFBEQk02TVhqSGdiNDM1?=
 =?utf-8?B?aXMyemxyTTBVQkZtV1RFdnpvcDNXMEloYzNTNDMyU0NScVhhenF5NEFGVzVG?=
 =?utf-8?B?MEwzVGNYWUthWkNVdC9OK1FmeUZlRTNHb3Bxb015eEdraEtPRW1xbXUzVC85?=
 =?utf-8?B?b0FySnEwaVl4Q0ZPTzJWcVQ4UGlJYlRyMk5TUGdkRHFwUlg1cjJTZDN5SlVm?=
 =?utf-8?B?Smd1Tk9xV1NDSWkxWWpDZnNuVHdFNEVmNUxxenVNNkMzejVwVm9aUE8zOUFL?=
 =?utf-8?B?MTFSTkthVXZteVVoYit0aDlvcFZmeXBFcGR2UGRxZTBkZ3RoUWlhV1dJWEJa?=
 =?utf-8?B?VnplcEZUWUJlOHZpTVBNS2ZsbWsvUFZGN0xyTHYyK04rTlNsdWdmcDZtbDVD?=
 =?utf-8?B?cVEyWHVobnpEOGc5M3JMYVFvTTFOQVVSWWdnSEg4U3RiL2dxR0ZkQlNBWnpl?=
 =?utf-8?B?OW9mTUdIYktnSlcza1lxeFFJQmF6dm0wak94aWZSWG02WkRHMXR1NUhIM1BH?=
 =?utf-8?B?RTdhWWZyUUJTbGo3N21JaTJrM0hEcm1nd2dpai95eE9IVU1qekJqdWVtSFZh?=
 =?utf-8?B?WFN0RDRKcVFGc3F2R2RsVFJ3dVl5dm9LZ3VrY2x3c1VNYThDMHFoUmhTVjd0?=
 =?utf-8?B?QVZvUDlMTktqT3Rjejlac2RzWVhQTFlzM0FiMEVhVjlMYkxBNjdhUWVROUg4?=
 =?utf-8?B?eFNPVWg2QjA0dGM4YmRkM0NKQmZnSXRBMVNKOFhPVHo0cDhhaHdDQUo4L0tj?=
 =?utf-8?B?TzI1MFliOXFjdmZnWVNaVm4xbGo1ekYwQWNBWnNjZmcxbDNQS2FiM0diWWx3?=
 =?utf-8?B?TVd6OE5vdUxEb21mdVcyK0V3TDhBYzRiOTNYR0oyd09NVStUMGNPTG1FaE9I?=
 =?utf-8?B?Q09reWFwVitXL21Oc0JadTQxejdHV2UxeEJaak1HcERGaEJVWEVweVhORlZE?=
 =?utf-8?B?ZWJtT0pjL2JiMkNEdThiRm1ZV2h0ODdqd2VVeVRIVEVJazlyV1dBbDk4Mi9M?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5CCC61AD0DD5F849AE37E7BD854F397A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 204ac661-f6f6-48d3-1bae-08dabc08175a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 12:53:36.3575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3lYXZPBQKp5v8QNz7O3H39yQLV3RGE1bCz5DWWUgusX7XCnnFWWL1H2aDJ1HYK5cJXpaGHLMvi1NecvxEN8tXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7113
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix PSR2_MAN_TRK_CTL bit
 getter functions for MTL
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

T24gVHVlLCAyMDIyLTExLTAxIGF0IDEzOjUzICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IE1UTCBzaGFyZXMgUFNSMl9NQU5fVFJLX0NUTCBiaXRzIHdpdGggQURMLiBDdXJyZW50bHkg
c29tZSBiaXQNCj4gZ2V0dGVyIGZ1bmN0aW9ucyBhcmUgaW5jb3JyZWN0IGZvciBNVEwuIFRoaXMg
cGF0Y2ggZml4ZXMgdGhvc2UuDQo+IA0KPiBCc3BlYzogNDkyNzQNCg0KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogUmFkaGFrcmlzaG5hIFNyaXBh
ZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gDQo+IEZpeGVzOiA0N2Q0YWUy
MTkyY2IgKCJkcm0vaTkxNS9tdGw6IEV4dGVuZCBQU1Igc3VwcG9ydCIpDQo+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsrKystLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTA0YTEwNDll
ZmYzLi40YmZiODMxMzczOGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBAQCAtMTQ3MCw3ICsxNDcwLDggQEAgdm9pZCBpbnRlbF9wc3JfcmVzdW1l
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICANCj4gIHN0YXRpYyB1MzIgbWFuX3Rya19j
dGxfZW5hYmxlX2JpdF9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAg
ew0KPiAtCXJldHVybiBJU19BTERFUkxBS0VfUChkZXZfcHJpdikgPyAwIDogUFNSMl9NQU5fVFJL
X0NUTF9FTkFCTEU7DQo+ICsJcmV0dXJuIElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fCBESVNQ
TEFZX1ZFUihkZXZfcHJpdikgPj0gMTQgPyAwIDoNCj4gKwkJUFNSMl9NQU5fVFJLX0NUTF9FTkFC
TEU7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB1MzIgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJh
bWVfYml0X2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+IEBAIC0xNDgy
LDE0ICsxNDgzLDE0IEBAIHN0YXRpYyB1MzIgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVf
Yml0X2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByDQo+ICANCj4gIHN0YXRpYyB1
MzIgbWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikNCj4gIHsNCj4gLQlyZXR1cm4gSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYp
ID8NCj4gKwlyZXR1cm4gSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpIHx8IERJU1BMQVlfVkVSKGRl
dl9wcml2KSA+PSAxNCA/DQo+ICAJICAgICAgIEFETFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9QQVJU
SUFMX0ZSQU1FX1VQREFURSA6DQo+ICAJICAgICAgIFBTUjJfTUFOX1RSS19DVExfU0ZfUEFSVElB
TF9GUkFNRV9VUERBVEU7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB1MzIgbWFuX3Rya19jdGxfY29u
dGludW9zX2Z1bGxfZnJhbWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAg
ew0KPiAtCXJldHVybiBJU19BTERFUkxBS0VfUChkZXZfcHJpdikgPw0KPiArCXJldHVybiBJU19B
TERFUkxBS0VfUChkZXZfcHJpdikgfHwgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDE0ID8NCj4g
IAkgICAgICAgQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FIDoN
Cj4gIAkgICAgICAgUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9GUkFNRTsNCj4g
IH0NCg0K
