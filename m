Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75051616B39
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7779210E518;
	Wed,  2 Nov 2022 17:52:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B9810E51A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411541; x=1698947541;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=wA2yN40pfKiUvRyoPgcNc32RHOdATrULv48k+FheESc=;
 b=M3yxVblWIkj4QBrwYYBPH2ZQPTr6UO2J0tKPfNRTg63gnTz3SOLFCOQG
 wCq7AnQZZn3V64X2KMbB6xlkTTZEIwH/6cnoCUCoKXafHDgSGsaWtKrf5
 8h1d3RwylTVgpljd6+jsfM1Gexs2LAtNdCQPQB15ovPSPQkPwYNiAgzmq
 kK/9c/+BaZUpcNLOm3fMhwG9KYymKZhcjXv2I+sUVYIhUh+IRAh1xBfEP
 1bTLvDa7Qtv9VRhTUFDdierDuAj0dh6ecwGvQkUbegsB/sC7dQkMkF12i
 PwwS6fOXxAhdaNd9C1NsV6TD0t48ZhHayMTEqKDhwb0N7jsijgAQRNUAh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395789869"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="395789869"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:52:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="634360545"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="634360545"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 02 Nov 2022 10:52:20 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 10:52:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 10:52:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 10:52:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W5dWGe+0sq8QHjdhHoCcoPgGEpjdUmQzOc8aOW6D2+vnGskxXWXROuMx2/wY9oKZ2dEJaORQx3r30iFht+t6CE9FZvCF6qqSTqFyLu1beer9R0SrR1XvUGF0hooZ7nCwRPCbSJzNsj3t6D1XzTXGEgvDroVs0t0NmuPOJBJBOmK2R8uzjTG0CtD7e2QP54DdCcl6yy4gmt4sMvHb0LTTNt6kfid5kIYDv3aMEaFUqfD7RIbF8WyDe4Yv5uEdXiCpvhWvgUIVEaLhudH8y1VkFOw4QgpLHjDA7tQkAxuKA7d6B2zXNFI1cTunb3ej7fIuWdJCnLcp1j8PF2wIPByYnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wA2yN40pfKiUvRyoPgcNc32RHOdATrULv48k+FheESc=;
 b=FXm8zDpJfQuKhiuapsHXNUUf28p1+XMWfCsQrLwaN/FLhL6unkG9pSJGqrzA0DJxTXwdjFPmzKt7vrTrOLWRoDX0rSoQaEZd/8cNCEs0F5C9/0Oq8XV8Ld2oguFgj5jnFavBTqkw+CLonyPkIsHvYZ19LHEQY5ydurezCIx9CE58hQhak6Y9P/3DMq1p+ITgwPUfabWyylJ67Q2nsnHXakZ/hgE4RZoPygviMrX5ezkkeRz+cjbDva1CGt2/LeMomo3BQN72RC5RwvX6UoQ0qCc4/+wuL5z5GuN4MYsQsEWURRFGpG5FHcTzoUipXkiqN00I9b4TqvjZ+q7TCrGg4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SA2PR11MB4891.namprd11.prod.outlook.com (2603:10b6:806:11e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Wed, 2 Nov
 2022 17:52:17 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba%4]) with mapi id 15.20.5791.020; Wed, 2 Nov 2022
 17:52:17 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/psr: Remove inappropriate DSC slice
 alignment warning
Thread-Index: AQHY7uMPeWf/Eq/cYEikAF5zBRJt+a4r6d4A
Date: Wed, 2 Nov 2022 17:52:17 +0000
Message-ID: <30811217b6fd382c84f545048c8a404d71fcbab6.camel@intel.com>
References: <20221102174544.2288205-1-jouni.hogander@intel.com>
 <20221102174544.2288205-3-jouni.hogander@intel.com>
In-Reply-To: <20221102174544.2288205-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SA2PR11MB4891:EE_
x-ms-office365-filtering-correlation-id: e6549b7b-ffd3-4813-5ac6-08dabcfafba1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7yaNAVU1fbKUcaaO9lIdBL+pkOUfb8tbSdKYB6db6iC4shC3VzO6fLkFhndIeEJYnQi463vSwAY38R6jh90aPNsXyG+X1RYmAWAbHDEgetl8JEapszviBU+kYYR7x1vabCIxoKBWUIVG0DIL9KkTeaEIUmehszRFElV9+YsSXKY/Cn3zoZCKTbkjrWRo2n+RERHsNsMxf8YjfVIyd83LcHtgglv7f7zzh8s6/VN/12N2JfnbMbD2lHm59T8YZxB+4JV35Ll11pZrnGncwFywMc+117rcPWCiVepetHMRxsF5YN5YarLLJxs0EuAu39tDy/2Wml6a7nZ8+8AksKrT0U56iHg3YTNTwvXh3poVtuGo5Q23JEyB2pQXT/Nno8+diXJchDXohZnLzWcxNMr9tpcGx3w/sew53Fp5D+lo0yKoOQOZD0uiSZZqwch/6WR0PV5w+8Irp7vCWov+a9zC8IRz13RPoSfLwo4pjsahwPB6aMjYluCxC/mThBxbJmxo9rjC/fxlPVH1yGoHl4jgqq/f2KwiszEh8HYpwfO9XDOZx8ZaEytT1kD5AB5dbI1P8Bi5ECjD/u3REfcc9PTAEzQ/BF9uTRuQdL9tswa4Vcdvo85/BNBfGz13UYXgGLaAkgDk3HJ/COyO05S1ONg0YUI0KD4uzU7Jap/kprx8TK24w5wgopZTmAtyPYNB8tJ9xgqGULBeS7pzmlcsPMtuyQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(366004)(136003)(376002)(451199015)(36756003)(38100700002)(86362001)(41300700001)(2906002)(82960400001)(122000001)(186003)(38070700005)(2616005)(83380400001)(66574015)(66476007)(66556008)(91956017)(66946007)(66446008)(4326008)(76116006)(8676002)(316002)(64756008)(26005)(6512007)(6506007)(6636002)(54906003)(110136005)(71200400001)(8936002)(6486002)(5660300002)(107886003)(966005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dUZSZUd6SW1uQmUrTTZqNFdQcFVJQWd2YUFCREFkdG52dUwwcmVoMDZxUWpT?=
 =?utf-8?B?ZnpNQUhCNDhWc3R5QW01VkdrRHJ6VFlVckZGN2RXUjk0NEdqUGg4RTVaRUJ2?=
 =?utf-8?B?amdHVFNOOWZqMEtKQlhDc3VJNXRGRVFYWWtXS0FRMWw5Nmc1YW9wbE1ROElO?=
 =?utf-8?B?WHNKREtjMUVIS2xHOUFYcVdBeVhHVEVkdmlWUVFsdjJFWnVMU3VqRis3YWNa?=
 =?utf-8?B?akhlV2hZaXZPbm85aEJQbUs3Z29MelFUcmpFRlNhSDNOdDZ6RDViL0Y1UUtl?=
 =?utf-8?B?TGRmQ28vQ1NRdnF2YVZ4djRjRVpwYW05UGRxUUVJTE54NUtiMm10VlZLV0lV?=
 =?utf-8?B?Rit4amRLcGQwN1ZXczlzVHE5Yjc0anZVVUt3MGVMQ1NpVk5FWDU2KytYZWly?=
 =?utf-8?B?Z2QzcXdDVVFGRDhOalNhZEVCR3h5dHZUb1JGUUlFUG1PUVJZbGNwOGY4MkF4?=
 =?utf-8?B?S0FYWlN2cEl2RG0yU0JLQzM5aHpUdlpQa242b3hZMTBtd2drQU9BRnhLTms4?=
 =?utf-8?B?ckhzb2tvVnVENm1mUjF0TENROTJNZ0I1U1R6c0NsUTgxLzdCRG8zLzJhWGta?=
 =?utf-8?B?MXNVUk1Jb1lTR2tlTVJLUWdkYkpGMFgxbm9USVE0ZjRBQ0hxWjhVTmFLSXJP?=
 =?utf-8?B?a1JQNWxCbHFUVVJxbTdaYjFOV2E1ZzFaWjFZdDlBTVFPM29rZzgrYW1sTUMy?=
 =?utf-8?B?cHdMYzJGbVB0eVp0R0lNVU5hV2g1YmltOG5iRGp0U2tobXNiWTdkOEw3bTEr?=
 =?utf-8?B?L1ZnUUJvY1prOFlnSjZlT2hlb1QxaHVhaXpwM1NTdXFnclg4RkhmNWhZL2d0?=
 =?utf-8?B?S1pLRUR1RHVOVWZSYzBPWjdDamhOek53V1JDdk16NXE3K0Fhc3M3Rk4wRHFU?=
 =?utf-8?B?NFl5R3FHZ29jRm4yaS91cUJsN3kyb1BmYUZKemp1Zm1jTGdnck9SL0dLVTAr?=
 =?utf-8?B?Q1dqa3QxTTBjM1RWUnVwYm5OMVRNOXZJMGtwbVNJTklPKy90eFhmSkd3dGxZ?=
 =?utf-8?B?bDFRNDFOWnArM3JTTGMzR201K0JiNXJjUjk0bkVvVUZFcmpYY1NYd0NiSFR6?=
 =?utf-8?B?bW81WVZyVklCZTB6Ykp4MTVCMjFXdytYazg0ZFhmYk9ndE11a2xPais2ZE9y?=
 =?utf-8?B?RUpROGpVUjhNRFJ2ZUl3NnRMVEV6Y2dIRC9NQy8zRmpicVlXd3VmK3ZockVx?=
 =?utf-8?B?TVZOVXNFSnRHeHBnTXJ1NWVPTFh1WUdENkYwSk9BN3lmUlh5L2xqZm1OTHAw?=
 =?utf-8?B?QVJhRDFZejNGZGVMdUxLS3k2WVV2UXNhSndQMk56V0NRaHFjQ1pZSXM2V1pz?=
 =?utf-8?B?dUNBNXBDNVFMZ1FpS0U4bWNTNnQwVG8vS013Q0tSYlFoNXhaNDVINVBTZkt3?=
 =?utf-8?B?SzFDWkE1N2ptMC9zeGNFK01MTXZZV0FTTWdUWUdwNUxVcGdmWk1KVHd3R0c5?=
 =?utf-8?B?SEN0dFRsdnJJbVFPZlozOThpVno5djNtMWg3WVZkSmtaNkdRQnhxNzFpWWxF?=
 =?utf-8?B?ckVpcXpwOEgveW5vTmVxNFBBWktDUDAzQzRhbGloYjdpOSt0ZHVQVzJOQzJF?=
 =?utf-8?B?aFlZTkdzWDZXSzBMUXMvWHd1b01nZS8zVTBEY3RXTEE1eER2Mld4N3c3dkRL?=
 =?utf-8?B?SlRQUGJCSVVyN0FobTQ2WXJUQ0x0dWxaYm0reUtHVkQvSDYyMUF4bHNobFg2?=
 =?utf-8?B?Q3VKc0p0cWZQVU9NU1dYM3dYMkpra0VkKzlvOXZ5NEVJY001M3ZlaWU2cG5u?=
 =?utf-8?B?VU03RHY1RmNjbmU2OUtZMGtoUHRpSVVaWEZNS1hvK2lQK29Ua2dMcm5tMFdL?=
 =?utf-8?B?bEYyOGd4MkYvZy9TdWNOTGNEd1phU3Rxd3J2Yy9FV0ZHaVk5Sm50T2t1Rm1l?=
 =?utf-8?B?SGhxOS94RG9BUFUzQWpnR0NFYk1kRlU2ZEozVnArOGNyTVZ5cW44VmVaam5T?=
 =?utf-8?B?YXZjQTcvbDVWR25tQlgwL2xEMEs3bU9sOWhBTnhOcFJDQ0tyaFRtdTM3N0xt?=
 =?utf-8?B?eGpJMXlIVWc3Q0hPL0NUdjZlVVc1TzdIUTRabkR0b2VqTFNSd2V5RFo2WjZT?=
 =?utf-8?B?NG1yamloWVhXV1ZWZ3ZTU1I5UjYyaXBSVHBjdWRBQ1UzdHAwQ0Y4MHhOekh2?=
 =?utf-8?B?M3U0K09FazlWems4aU1iOUEzeWxVUTErWFpEalJGSXIrYU1IMHJ0ZThBQ0J0?=
 =?utf-8?B?ckE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AD1A9C3C6A3CB242BBA04CA73EB1A176@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6549b7b-ffd3-4813-5ac6-08dabcfafba1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 17:52:17.5379 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OxvStLaRA8utTSyPWOp+JLdsNvWhf8K1sGWps0ceTW/ViTWbUj2WuAZty/k29kjc3/6ZHJ13UowZEoC9dnO7wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4891
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Remove inappropriate DSC
 slice alignment warning
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

T24gV2VkLCAyMDIyLTExLTAyIGF0IDE5OjQ1ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFNlbGVjdGl2ZSB1cGRhdGUgYXJlYSBpcyBub3cgYWxpZ25lZCB3aXRoIERTQyBzbGljZSBo
ZWlnaHQgd2hlbg0KPiBEU0MgaXMgZW5hYmxlZC4gUmVtb3ZlIGluYXBwcm9wcmlhdGUgd2Fybmlu
ZyBhYm91dCBtaXNzaW5nIERTQw0KPiBhbGlnbm1lbnQuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gDQo+IEZpeGVzOiA0N2Q0YWUyMTkyY2IgKCJk
cm0vaTkxNS9tdGw6IEV4dGVuZCBQU1Igc3VwcG9ydCIpDQo+IENsb3NlczogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy83MjEyDQo+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiBSZXZp
ZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyAtLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDU3NTc1YjVjNmQ0OC4uYTc1YjM3ODUxNTA0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE2ODQs
OSArMTY4NCw2IEBAIHN0YXRpYyB2b2lkIGludGVsX3BzcjJfc2VsX2ZldGNoX3BpcGVfYWxpZ25t
ZW50KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjDQo+ICAJcGlwZV9jbGlwLT55MSAt
PSBwaXBlX2NsaXAtPnkxICUgeV9hbGlnbm1lbnQ7DQo+ICAJaWYgKHBpcGVfY2xpcC0+eTIgJSB5
X2FsaWdubWVudCkNCj4gIAkJcGlwZV9jbGlwLT55MiA9ICgocGlwZV9jbGlwLT55MiAvIHlfYWxp
Z25tZW50KSArIDEpICogeV9hbGlnbm1lbnQ7DQo+IC0NCj4gLQlpZiAoSVNfQUxERVJMQUtFX1Ao
ZGV2X3ByaXYpICYmIGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpDQo+IC0JCWRy
bV93YXJuKCZkZXZfcHJpdi0+ZHJtLCAiTWlzc2luZyBQU1IyIHNlbCBmZXRjaCBhbGlnbm1lbnQg
d2l0aCBEU0NcbiIpOw0KPiAgfQ0KPiAgDQo+ICAvKg0KDQo=
