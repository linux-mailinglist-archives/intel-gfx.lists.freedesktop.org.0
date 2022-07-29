Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A28AC585473
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jul 2022 19:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 099F18E4AF;
	Fri, 29 Jul 2022 17:25:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02B8C8D4D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jul 2022 17:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659115512; x=1690651512;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=tC/i04h8DAieCPeKuzvekNV9/sGIK0NUoki6ib6nOtA=;
 b=j6hhmreaLLYD463IVPMsAnlOC1GqmdqjUXPoYbt7oQNNnADricMC7kTl
 PG2DYS+eOCR/lIftyw3S0eS4fQogi1+23KmUbfZjBm4K4ti6oEHLe4tGr
 pCTGNx00r8pKQjLTJM79k+DxFSQP1Z6RxZ4crjpZyhY6OJcAyuc8Y8fzA
 L66Ot6pL3KhZizVY+CpGH89f88VP23Xv8jshivDo8JAHArBJrbTltQGep
 aExnOi3tKS4A6PfKmPdAb5Pb91WfU0RcEV7L7bSBNWNZHHvryLOo12FTZ
 zj9zIsDuJjVARxAMddCwn8/leicwTderoJihrkuCpCZJ+od7lcGJ14l88 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="286367847"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="286367847"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 10:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="847183192"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2022 10:25:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 10:25:11 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 10:25:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 10:25:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 10:25:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TKnhEG4XRgSYuUs32JrkNjqOZ58cEukqQzPUMu1V0erT3cNrVGTkASCrUV92wEl5b2NpNryWvNX7RVYnLsAFmzbuwOgN4SvG9Xe+E9mSvUq4sWxLOAYtiTwmktfLP1cLao54jnv/czo1fTrAfNs/3x5wS6bCiGwvkXjRBFkuBCzY8IT2a4Zck813vc4S6LDYLHFNcwtf6SJANvuIeD28gTjjtildqa3Tt+iAZxEI0jjzOYTX+RZr6stx+7fc7pOzuaIq8wNBl/t4g+4s7qXz4Hp2VfMg4hVKs63nfXFf5t9LoZpRNHhI6Q+FDMMIup/kIe100mY9VuUnf1KTN08PJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tC/i04h8DAieCPeKuzvekNV9/sGIK0NUoki6ib6nOtA=;
 b=bqn30VvOLmQ00LzTAtnUFEjOUEeiG13GnYaxpEH4bmThnQxAa5lEqw0OGoxFlqjF4CRpzPlTt0Qo+AV848YNlIXr9DGBOWnfHpysmSmYg2rXAyd+wWEcAtNA+vYw+6sRVgq9gs/1mVzE98tAXoVJAOpXgKqd3zebvdDFS/6WXLi1g6o5LCRQkcHKy3NEl3BATP37wKzCC/DzKn70ERNmtzQXEAy6gOarKvkHi0hbfc/kW1B5i6pTIZ+kAZrRDFuyYi5AQw0U3x3ltAjIo3mZF9XGpovvctDNrfHsMCEBxy0iU8+nO6JbwTxMpqBzB30AjwJsKBAF92PzsCkp/461Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by DM6PR11MB3401.namprd11.prod.outlook.com (2603:10b6:5:56::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 17:25:07 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::f9bc:3db2:a299:972c]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::f9bc:3db2:a299:972c%4]) with mapi id 15.20.5482.012; Fri, 29 Jul 2022
 17:25:07 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Thread-Topic: i915 Updates: DG2 DMC v2.07
Thread-Index: AQHYo3Am+pNFqvK5dkWgHxP0jMjDdw==
Date: Fri, 29 Jul 2022 17:25:07 +0000
Message-ID: <badb459d915e98b52402f9b517c032b2a6efd5c0.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.3 (3.44.3-1.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1deeb136-2b65-474b-7035-08da7187488a
x-ms-traffictypediagnostic: DM6PR11MB3401:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2YAIdPgRoOOoxfCaFJ4V6TtoY2375uAo8e1vlOd5EQLwNcHIlZvMxUMvgkp58z+bbv+CpqtuMlr7m63UyA7PAYEU12uwBevjSTLWacKhvgPt3TyTN4DGFJHwbs2EZcu7hyO7byUsKwIFbR2uWZPT2VUocW5eLwxrVRF08lGuYbiNm9YIxLYSrnvCUxdflbNgkD2tH/CHGhGwSwUvkwVGdfJQYkDym4FNpvygRmIAKMZ06Wh/Z0tVChAGKjQGehfDY/6VFsBDvM+PllW51fKkbncP+OGCNYvKQdgPKt4hIYoQNvoM2h6WDt8+bPtn2vuKnTEmrIVgYAhGW7QqfEnb+M0tzpA6uYVsNJYd6xyOeW3kz2UC62FHlyNJD/VVe0gbDmBidFkUFB+3i2j4bFO0I/YxYAyuiarr83Pk/Tj5Q8OPkfXj8QFAp0nyN3SUytXiBGeU+u3olvlDeeGrvmZcJmo0jG/UeD4UauSZt+i3sGnKeqtd1qY7iEjkZeTqGgnYHUkGLId6Pj321lKLBfNNfxhkyTY8jWHnDYR37lU5OdBs4hNuXACZpYoxqwB6+8/bx/QtoUHTojxWZVR64b+bPU3dXJWhwwR8hW2OCWe3SybwTyYybKAHK8TheStXZ4JqjgrqhZlumM8NqieI3L/UVposcIgsoEvlr3LOPgwkoimVBICxVD8r1MEehGiJS63HJvACKypztNW+dxdZJ59svWw0kFM4sqs+tz9PUs+b6OtG1D2BU8c6gNF50foXpKu8rLPQljkwaGaJha2Cy8l8+AzDeC3x+vOv/vnHKDTPnNM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(39860400002)(376002)(396003)(83380400001)(86362001)(41300700001)(4744005)(15650500001)(316002)(36756003)(5660300002)(8936002)(66946007)(38070700005)(66446008)(66556008)(2906002)(4326008)(38100700002)(76116006)(122000001)(91956017)(82960400001)(6512007)(64756008)(6916009)(6486002)(478600001)(6506007)(71200400001)(26005)(2616005)(54906003)(66476007)(186003)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OVVPdW9tbFJVMWZrY3hGalF3WlRLUEJkdXY1K05ldU9pU0I0bnZYRWtqTUQw?=
 =?utf-8?B?VlcrODhrUVEzY3ZjM2Vyc05jaVVuV1o2R0U5MmFxQ1k2emlSWGJjRnBodVVD?=
 =?utf-8?B?RXhTb0ZSMG84Rlc0TFJJNVdJdCt3RUdUbE9vTUJGZU9MREtudE1udzI1L2sy?=
 =?utf-8?B?V3FVUnNETjBwNlV1ZVY0ZG9XUG1vcldYcjZhb0F5US9zSDJDNXFEd2VRNGEy?=
 =?utf-8?B?NlJyNTNDNWxrQTZlU29FSko2MXBnMHhEMjZ4TjVBbG5zbE5JaFV4VVM2YWdi?=
 =?utf-8?B?MFB0eWdTNCtsTlFuT1lwMHZOV0dnTU9nSnBtUkxlVXRLR3JzYUN5L2hnNjUv?=
 =?utf-8?B?M1hzemFtSCtxbC9uWk5FTFMrQjFVUVd6bnFqcWVlaUhOM1B1UzBySzJTRXY1?=
 =?utf-8?B?bTgzK0FQYzh0TzFaYVZrcXNBWWo2ZjFGT01IWHVHVHJnRTRUMzd1aDJycEdj?=
 =?utf-8?B?aWhNWjhsUW84SVdka05XTnlqL0VLUHN1VEZ5bmtUMC9GRm1XSk5QSGwzWFdz?=
 =?utf-8?B?cXI3YVUzazVHcVQzUElhV0pJZ1kvQzkzY0pPdUhyZUhPaU5MUy9FY3ovQ2tD?=
 =?utf-8?B?L3hPSCt1RGVMQXJUclVQZ3U3K1gyaDdXQWY1VHlHSWR4Q1BlUTFTNFVCak9s?=
 =?utf-8?B?anJ3MU5oejFOaDZERmdrSy9ONDBxM29SRXpnVURveHVlMUxsRzBsR0ZZMytn?=
 =?utf-8?B?bUwxVzJZVWFoRHJmMW11VkQ5Qi9waW1LK0QyN0UzT1NObEtFb21wNSt3RXp6?=
 =?utf-8?B?aExMNW9vMGZvY0ZFTXB3S1h1OEZuRU04UHEvZGRUaHVXQ2NOWXBqNGhYTjFl?=
 =?utf-8?B?UWk2TjFRVTlLaHJjelViTGtjcUJiMDNFTGs1Nmg3MytHb09SaytVTkhsMUR4?=
 =?utf-8?B?Z21pWWFkK1VjUHd1eWorWlBEOGU3N0lFYmUvZnEyNU1xSjBodWZPaExPTy9U?=
 =?utf-8?B?eE5STlQyWENmUXJlT2JSSFBKQWhmdERhcXhsNzNtZzNFbUNYcE15TDlyQ1Fy?=
 =?utf-8?B?TU9ERGl6TTZuVXh6ZkZ3WmtHcTFUQTV6eTM3T3IxZnJvSlhLZmRrKzJkWTRz?=
 =?utf-8?B?V3F3L1JyOGVpcElYOE5NL0xHbjFlMWRybmpBZTNpd1pqQ0poelpXVithcDcx?=
 =?utf-8?B?bmtzM0sremVYeFdZdUVIbDNSZmdtbGhhM2dmOVFWdHRBc2xlRzFsUGxkUkNl?=
 =?utf-8?B?RVNwdU9EU0w2ZEJhSjJQdWtFbElUQ2pxNjNQbU1sV1VUbnlyTUtWNG9ObUxq?=
 =?utf-8?B?dDQ1N2lkUFJSRitIVVJsM1VqYW5uejdZRlg4dGhBWUt3UjZpTEE3OFJIaHBx?=
 =?utf-8?B?dXc3eW5PbG5USDd5K0tlWFZLUWYwODdVMUwzZlVZTzJDdWRQREJ1aGhrbWla?=
 =?utf-8?B?V1JjeUpMVFNPeWViaHhKbmlhS3MvYTVSVW9yaWUyTVZlNGl3bENyVGxTbmUr?=
 =?utf-8?B?dnA5MzNlT1ZHaTZwb3cyRnIxQnE2N0dETWlMK09lc2xWdWRqUnNXOEJXcEJk?=
 =?utf-8?B?TTJQUTFkckRaNjg3dWJOVDk0T2xqZkNaWG92TlB3ZVRsaTNNaFZaUzlHemFH?=
 =?utf-8?B?bCtrR1ljdGxoaFgxcUhGUEhrVXd6RHFRY1JTc3BNTlY4c0xCTTJCakxIeXB1?=
 =?utf-8?B?cTl5SnJxQ25EMTlBcTA1eDFVVjhUQmcvVEhVZDIrL3VxTTdmdHZ1UDdjR3A1?=
 =?utf-8?B?NXhXTFVLdGl4dDc1VGU1YitQSWtqRGJsRHF3WThCY1NobDRXWDRFdElIVVlY?=
 =?utf-8?B?YVNvV3VHZGhJaVB4Ykxnb3NNT0ZJWVQxaWpCNFlwK1EyUW9QZnRvSy9nbnNM?=
 =?utf-8?B?QTdVTzJjTE43UVd3R0RxN21QY2JDcjJNdEcwL1REdjAzeG91YlVkcHk0dnI3?=
 =?utf-8?B?SmFKUDFaYjI1NmpjeTJmQVM3bDhFUHhoL3F0d2pmVzVuK0lGRHgwUFVOTFdx?=
 =?utf-8?B?c0tiZzBWanFGZ2QvWllVeENzQUwrUzBlNUdkOFdvbFNIYTdJVWhaZVdLd20v?=
 =?utf-8?B?cFNhZUhKYXFIaHBZMHRacFg0Y1c1ajdtaHByZmliajd6VWRLTUxQU0lnL05Z?=
 =?utf-8?B?TEVOTFA4U3VsU0ZIeXRVeWoza0dEUnNMRGM0SkErREprcE5DcW1hL3UwQkFO?=
 =?utf-8?B?UWFxTmRRQ1RWS2VSMTU1Y0hYWXp2akpqKzRGaFdqVmpPVmJlanVPaXl6Q3JC?=
 =?utf-8?Q?iF6SWoqxiYtuEJaQ8/Q7CxomqM6y4NkeAPXkitFZJkZu?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8E59C37645DB8544A10BD7F81BAD6551@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1deeb136-2b65-474b-7035-08da7187488a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 17:25:07.7746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SVMy7eAi314GluLc0ej4smccgkDlV6Cs+ipUfYZR61f+l4vvK8P8/E/Jef5inP74aePQitalExuUlmAaK767Z/ZkGWGxZMhaFS7V1/m32bVcGCygcj0tyEN/9CnCmjPAJkDuD8gGTiko8C2lIgxOaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3401
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] i915 Updates: DG2 DMC v2.07
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "jwboyer@kernel.org" <jwboyer@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

S2luZGx5IGFkZCB0aGUgYmVsb3cgY2hhbmdlcyB0byBsaW51eC1maXJtd2FyZToNCg0KVGhlIGZv
bGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAxNTA4NjRhNGQ3M2U4YzQ0OGViMWUyYzY4ZTY1
ZjA3NjM1ZmUxYTY2Og0KDQogIGFtZGdwdSBwYXJ0aWFsbHkgcmV2ZXJ0ICJhbWRncHU6IHVwZGF0
ZSBiZWlnZSBnb2J5IHRvIHJlbGVhc2UgMjIuMjAiICgyMDIyLTA3LQ0KMjUgMTQ6MTY6MDQgLTA0
MDApDQoNCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Og0KDQogIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9kcm0tZmlybXdhcmUgZGcyX2RtY18yXzA3DQoN
CmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAzYWIzOTRhZjQ3YWI2YjAxMzlhM2ZhNmE3
YjM5NTY0YTRkMThjYjI1Og0KDQogIGk5MTU6IEFkZCBETUMgdjIuMDcgZm9yIERHMiAoMjAyMi0w
Ny0yNyAxMDo1Mjo1OSAtMDcwMCkNCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KQW51c2hhIFNyaXZhdHNhICgxKToNCiAg
ICAgIGk5MTU6IEFkZCBETUMgdjIuMDcgZm9yIERHMg0KDQogV0hFTkNFICAgICAgICAgICAgICAg
ICAgIHwgICAzICsrKw0KIGk5MTUvZGcyX2RtY192ZXIyXzA3LmJpbiB8IEJpbiAwIC0+IDIyNDg4
IGJ5dGVzDQogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCiBjcmVhdGUgbW9kZSAx
MDA2NDQgaTkxNS9kZzJfZG1jX3ZlcjJfMDcuYmluDQoNCi0tDQoyLjM3LjENCg0KVGhhbmtzIQ0K
LSBNYWRodW1pdGhhDQo=
