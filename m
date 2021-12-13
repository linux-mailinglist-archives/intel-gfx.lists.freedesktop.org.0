Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F81471F35
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 02:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E440C10E248;
	Mon, 13 Dec 2021 01:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4FBB10E248
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 01:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639360423; x=1670896423;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=utCshcez5Wifh2Yhj/YGyIX4tpij+YJDqcaFuJ9xXqs=;
 b=aTKJpseOQEUoA6cxQMAlHvDCLGsSJ/XSm7XPwMJlQumCJBrkNe7jtcE9
 cxhtBRtkNH9IYROr4LYFvDKy2go1CzT8UlotRkD42lSzYJDpZlKUpAsP7
 HHUFPs4/AdVtMPRmzmWiAjGhOaadiuvH/rZGOv42xTa2Nyxhh+h9jweGm
 6wwHsz+7v3ymcGTOdwZB/mpV8lCtw7DpLNQiwTtMrq/MCl0Pj4A/UuJ1s
 XPeHZvFrSr6UMhnvgXPyvKbSEPfoXDHTYDD+76zNDO5l+TAzeHNDM+AoT
 qFGdTa0HyNfvfDzCLsMn82v4xvWQeyRT9J4eWuUIDmiXrdrCZ+eN7DT8c w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="236177151"
X-IronPort-AV: E=Sophos;i="5.88,201,1635231600"; d="scan'208";a="236177151"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2021 17:53:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,201,1635231600"; d="scan'208";a="754069755"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2021 17:53:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 17:53:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 12 Dec 2021 17:53:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 12 Dec 2021 17:53:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BQByHQELwJZ6o74JuFt0dxuDA6LbO/kQzq2lvB9RJx1zgBW0HLMHmZL6CZm/VREwvuq/R25HyHcSxkZaUbqgwgEN2oj4KpDstCOLjJKFEq189/4vlIub2H9mlwfgU5EaC4zYP/05F3KcWc9cAJIp5Rb2h5iL2Xcc4u2uxIQrAviz7k3ABPC4iDiY7+9NEbql0C1F/sJni1xVkIJz3ZVgHZl/044pArUUioSIpBkQGOmzAQRHAxGvkZemmprVYNUte8v/R2b4JIJ8fPCs/yrZJI8kPq+EtCt3VEG+Dzj91DwoU0iVF7BZC5bPma7c3nNVofnOy4bo5y83/DjNog/MQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=utCshcez5Wifh2Yhj/YGyIX4tpij+YJDqcaFuJ9xXqs=;
 b=U1xKQVZnHK6C6wRCaw3H/O/dYmKF1zQ1PC7rebn5vPLwSWWHLyaulLmhmu88F6Rzw/AwwwhtPQVpSiyoh+R+aDvMhALMdsflitNDPUhSPU1+XUdY9lZuP3lKhvS9belpZUejapgOBiBEhnGX+/n0IOR+cYCLzTq1FO5ufINlInPx2vg5GhynE1nX4cXUVMquGaEEtWO8A390USNU5nEkNDAHvfYg3yUzZpkq/Q7p1y5jRtQ+ssRTQzZP3CHYrG5uyf6bayB2eGXUzB4+Q6bvE1PK/BIMnoPYQFPwohanUsxwPJW0xlZCO25XAgh+qyUKoCLwG3fNGbkQzI0cMdhmFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utCshcez5Wifh2Yhj/YGyIX4tpij+YJDqcaFuJ9xXqs=;
 b=mHxDS6kLgQd11RdlC3I82Z+mnXkcytNFXRI8USsy4dCu/YU3IiU5UnqXLDnUFs6UnV0OyJn5mVHHGXmJs9zL6LzgAPKb3P2I/Pykw1gE3lEh4TLl9pJ/F6WmZWoA7LmMTLYSUVZr5+4N3oU3e2DlBO1RSmcm5AOJdYydKTNtLVA=
Received: from DM6PR11MB3051.namprd11.prod.outlook.com (2603:10b6:5:61::31) by
 DM5PR11MB1404.namprd11.prod.outlook.com (2603:10b6:3:c::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Mon, 13 Dec 2021 01:53:36 +0000
Received: from DM6PR11MB3051.namprd11.prod.outlook.com
 ([fe80::884b:4c29:bf5a:a2cd]) by DM6PR11MB3051.namprd11.prod.outlook.com
 ([fe80::884b:4c29:bf5a:a2cd%6]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 01:53:36 +0000
From: "Yang, Dong" <dong.yang@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request to
 intel_context twice
Thread-Index: AQHX7WUpAq71Fneg1EmGBl60QqG8nawra1YAgAQ7E6A=
Date: Mon, 13 Dec 2021 01:53:35 +0000
Message-ID: <DM6PR11MB3051330D8484CC5EA0290DB0F2749@DM6PR11MB3051.namprd11.prod.outlook.com>
References: <20211210013147.2256699-1-dong.yang@intel.com>
 <d8e9dfad-7665-cc29-9f53-ff350c8a402d@linux.intel.com>
In-Reply-To: <d8e9dfad-7665-cc29-9f53-ff350c8a402d@linux.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e0a6ed2-0956-4d71-85d5-08d9bddb6041
x-ms-traffictypediagnostic: DM5PR11MB1404:EE_
x-microsoft-antispam-prvs: <DM5PR11MB1404EFC9A53C2C41A35DBEBFF2749@DM5PR11MB1404.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WNKr+6kpI9Pzf9h1NQGUI5Q4fWMMHGZvAYhVBkG19J6agEiqwBr8O38v2L2icXL9hG0+l2rvjh7gsmRG/7dT/Eo0bFV1oqtChVv0CfyAvtL8EdrjnZ/Wtuautb4YOXy/fMO1Ot1gV4h3YPlQLeqvLS0vjcYTVZ0Vhs6+yuRahnUGncpq7dIg14w9JXteh9cuKClT+9DpwfP+cjrdSUZFMN3/B2J81HwTvtkyS1KXvtswzhwy74Dab3KxHQxwl326h9VllEFQ2lZ9dY3GdKKAtvgyeI4jV12kJQ32reUFxahCSzhURE6vhcR3E8M6rWwBrDqVAN50JBz/72Ebm7/19WsM3N+B2KCZ5sVG4pWoTaZ6bn2SdgAOS6fFxNMbMuZaa2+IFTN8FbhJOW4nW2IFid+qvgdrHbyTPMVEsv0E0p7wmMh+kz3BhGkoDMZpxLBA64IjgRriZTjkmd8/FwYg9952+KXnx82b0buQRdnZASTrpf860Q8kGGPfPs5/aV+YuhcXKaQuk54x8RZlcH6qBouFlEN4sBBl8UKf0/ebFBVAEnznmDUIW4xw/9DVS9O5Au2ZTys2vqtCvRedulT0eHjeO3eLjSYmMTlrwFUHdPLaCWNaB+k68oQgyJd2vW6JBzEcEI/B2ShASsPiPJD8cuQi44Mz9F/EkBfM17U6w9S4fp9lrKaVU0EnGz56Z/y1Rrb5urTJyr4exwCeiZIV0w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3051.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(508600001)(9686003)(66946007)(66556008)(2906002)(122000001)(52536014)(26005)(38070700005)(66476007)(33656002)(76116006)(66446008)(64756008)(86362001)(7696005)(8936002)(8676002)(71200400001)(6506007)(53546011)(316002)(82960400001)(83380400001)(55016003)(110136005)(38100700002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXdjVkNUYmpQZ2lTbUtCeFVFQ3JwZm8yWlVWemNxZHF4Um54Q2VsTk0wRkdP?=
 =?utf-8?B?T2NFTjdTL2FpSGp1enNsZi9pOTN0ZlJmZFdGMnVIbFFMYzJpalY5U1BxeURi?=
 =?utf-8?B?NWVXY3l4T2ZoUGlZV1Q2akJjcmtuQTM1dVlnUndhMWtoRHhObzU0UXI1Y3Ew?=
 =?utf-8?B?UWttK2NBRUtmYmFaaTJVZkxycnZvSlExcURRYndKQzVUWmUrVnI1ZGNNanBs?=
 =?utf-8?B?R3VqZFNZc3dZaTdQUW4vU3V2T0wrVGpibU8yK0xXaDRnM1E0T2RpQS9TRVZG?=
 =?utf-8?B?RlBEVDB4aklucE03VGh0N2pJOVdnRDZycjhvU3JZYVZPTThIMElpT3R4dldW?=
 =?utf-8?B?NzhmQzFDWWpqcDV1Y2dNNGxMWHZTbUdubVE0RU5FS3Y2RHhUZE1qRHFNV0lY?=
 =?utf-8?B?WjhHRXVkcGNnRWNJRTJzU2J1bTh6NmZXVlh6Wm83NCs4ZGxlS1RaakwxTENo?=
 =?utf-8?B?VURpQlVORzB0dUcxbTVKdGVvS01MNHdYTUpxNUJnMXVqMVRVNmV6dFlzdEVT?=
 =?utf-8?B?RnFaRE0wSGNkS2hLTG9JeDlvSXRMYVFVcUxydEpUUXMwWEVQOWhlbXFDM1Yv?=
 =?utf-8?B?SEVyMk02V3VvMEZ1ZVB6bTZKRVZSV0RVbjRGejJISnRMeFdZalNUQThna2Nj?=
 =?utf-8?B?SzU0NjlDTXVOUG1wbzNicTNqa09WK0dYMDQzbW41dTZKUjlTSzZRazl6cWN3?=
 =?utf-8?B?MzRTSGJjUGFZYnNQMnJqQVhmZ0dXR2h5anVCbE4rbWtyT21TRGxjZURvbHY4?=
 =?utf-8?B?RzlSS0Y5aU8xOVdxQm5lNkRVTndaQjdkczFwWGxvS0s4U3E5czZ2OG1CZG9B?=
 =?utf-8?B?L1JiM241Y093eHlMQ0pmOG4xeGQ2VkpGNVphWnlBMlNNYjlpTGVhR0F3Vmln?=
 =?utf-8?B?L0RTSlV3dVp5dDdMcmM3QkVaMU0zL3hWYzkyQURYSUM0UGd2Yk5IVlYxalBl?=
 =?utf-8?B?OW1lRW1idTBsMTJpN1VQTGhud0lUNk5pOVU3NHNvamQ2MWJPTDVZeEd4Q1Y3?=
 =?utf-8?B?TE8vTlRBTnc5SnhrMjM2dUk5alZzM0E1S1NnZitCampTeHh4bVdHT3I1WHlp?=
 =?utf-8?B?M0RpZW96YThKUFFjVXg4ZnRnZHFvRUovNExyTmxOcldMZS9JVU94d0R2MEwr?=
 =?utf-8?B?Z0xCVllIcDRTSG84eThLdDdqZCsvaDdjcXB5ampwY2J2NlhidHpnVENHRURW?=
 =?utf-8?B?T3J2L3MxRVBSY1NHNmhNS2c4WTc0ZVZGTERCV2JjWHBvV0V5cW4raExDZWlp?=
 =?utf-8?B?RVpBU2taTC9NS1MrWERhWGR3clYwaENwUzhIRm9lQVFEb29PRVlEZHV6VjA4?=
 =?utf-8?B?MUJ3UUppTG9Mem1nZEUyeHNOTFNNSmR4WCtYeVFoVFNQbjF0M3BsU0p2RUpn?=
 =?utf-8?B?a244SHBvODJyeGJWTVZ3YzBaVnR3dmV0N2xLUjdIK1ZOeHFGYkZVV2s3MmZ3?=
 =?utf-8?B?eXljZnc1RHV4UGJDbDJGUUFTMG5IakFYSjZON1J3Y3dKekNCczUvVUROSTZG?=
 =?utf-8?B?K0FlN0Zzd3hoS09zOHFoOG9nK1lpdzMzYm1GV3ZHcmJ3UGhiNFIzc2VkRlQz?=
 =?utf-8?B?TU5sR3k0OU9CTnd6emtrZklSUEhYMndXeVFZSGovaStKVFBSV1hyL2pHYUlJ?=
 =?utf-8?B?N1dTOFZaVldrQXBpdHlkUENYWCtjSmtpamZ5T2todnZoWU96Uk1kcVVXRnNI?=
 =?utf-8?B?YzI2NEQ5QUY1WC9vQ0RVeGU0Y0VyTERMSjFHb1l0V3Rpc2JzRTU3anJid2o3?=
 =?utf-8?B?aVZUSDFyM0VNYVRCQWJmdGdWY0xQYW55d3R5WFVPd3dkem50cFF4c2lDWHpM?=
 =?utf-8?B?MlBvNGEwNGFLQ3NJemxSRzZYZFRmY202eGt6ME1LVjh5bWZRNG1WUzhLR3Fh?=
 =?utf-8?B?RFBFSEN3T3lDU0FSZGlVb01qTUFlb2lUL3B4UjFIUTdpVlhWYXlPdElhVFdN?=
 =?utf-8?B?OUtqdytRK3BDc0hZVGg2UUZ0UlZJeEtYcHVsVGpFYUV3ZXltNGxFbUdTeEt1?=
 =?utf-8?B?YUpKRzhaT1E2NUFtaFYrQnlJNW1xWjM0UWJyeFlGUDdKNnVzYnFSMVZRaTY2?=
 =?utf-8?B?ZlpoNXFLVUh5N0owUnlrUXgyalJtbEk3czRHV1JJS2ZrQlVNTG5hbkZ5eXNM?=
 =?utf-8?B?Y1BEZkRRUmlua2wzZzB4bDArRVNrU3FhbDBMa0UzZytBRFJhczUrbWFHUEpu?=
 =?utf-8?Q?jg03dRrW/ZRq0I1lKIJLl5E=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3051.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e0a6ed2-0956-4d71-85d5-08d9bddb6041
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 01:53:35.9248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H8w/HwXl8GXxCvqox50ASI0P3RuA0bPbhlKeSgjvjq5tJLvZQsFJoyC4naDp6LTlyaWApUPJRQmBCfBl9UGhuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1404
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Do not add same i915_request
 to intel_context twice
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

SSBhbSB3b3JraW5nIG9uIGEgY3VzdG9taXplZCBrZXJuZWwgYmFzZWQgb24gNS40LjM5LCAgaXNz
dWUgY2FuIG9ubHkgcmVwcm9kdWNlZCB3aGVuIHN5c3RlbSBmYWNpbmcgbG93IG1lbW9yeSBwcmVz
c3VyZSwgYW5kIHN5c3RlbSB0cnkgdG8gcmVjbGFpbSBtZW1vcnksIHRoZW4gd3JvbmcgZG91Ymxl
IGluc2VydCBpOTE1X3JlcWV1c3QgY29taW5nICBmcm9tIHRoZSBpOTE1X2dlbV9zaHJpbmsoKSBw
YXRoLg0KDQppOTE1X3JlcXVlc3RfZW5hYmxlX2JyZWFkY3J1bWIrMHgxMzYvMHgxNGENCmRtYV9m
ZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKzB4NDcvMHhiMA0KZW5hYmxlX3NpZ25hbGluZysweDY2
LzB4ODANCmk5MTVfYWN0aXZlX3dhaXQrMHhjMS8weDE1MA0KX19pOTE1X3ZtYV91bmJpbmQrMHgx
Ny8weDFhMA0KaTkxNV92bWFfdW5iaW5kKzB4NDcvMHhjMA0KaTkxNV9nZW1fb2JqZWN0X3VuYmlu
ZCsweDE4OS8weDI5MA0KaTkxNV9nZW1fc2hyaW5rKzB4MTM5LzB4NDYwDQo/IF9fcG1fcnVudGlt
ZV9yZXN1bWUrMHg1My8weDcwDQppOTE1X2dlbV9zaHJpbmtlcl9zY2FuKzB4OWMvMHhiMA0KZG9f
c2hyaW5rX3NsYWIrMHgxNGYvMHgyYjANCnNocmlua19zbGFiKzB4YTcvMHgyYTANCnNocmlua19u
b2RlKzB4ZDEvMHg0MTANCmJhbGFuY2VfcGdkYXQrMHgyYjcvMHg1MDANCmtzd2FwZCsweDFlMi8w
eDNiMA0KDQpJIGJlbGlldmUgaXQncyBub3QgcmVsYXRlZCB0byB0aGUgY2UtPnNpZ25hbF9sb2Nr
LCAgdGhlIGxvY2sgc2hvdWxkIHdvcmtzIG5vcm1hbGx5Lg0KDQpUaGUgaTkxNV9yZXF1ZXN0X2Vu
YWJsZV9icmVhZGNydW1iKCkgY2FuIGJlIGludm9rZWQgYnkgc2V2ZXJhbCBjb250ZXh0LCBsaWtl
IGNhbGxlZCBmcm9tIGlvY3RsKCksIGZyb20gaW50ZXJydXB0IGNvbnRleHQsIGFuZCBmcm9tIG1l
bW9yeSBzd2FwIHRocmVhZCwgSSBzdWdnZXN0IGFkZCBhIGRvdWJsZSBjaGVjayBiZWZvcmUgaW5z
ZXJ0IGk5MTVfcmVxdWVzdCB0byB0aGUgbGlzdCwgaXQncyBoYXJkIHRvIGFzc3VyZSB2YWxpZCBj
YWxsIGZyb20gYWxsIHRoZSBwYXRocywgYnV0IGFkZCBjaGVjayZwcm90ZWN0IGNhbiBhdm9pZCB0
aGUgY3JpdGljYWwgZWZmZWN0LCAgYmVjYXVzZSBhZGQgc2FtZSBpOTE1X3JlcXVlc3QgdHdpY2Ug
d2lsbCB0cmlnZ2VyIGEgZGVhZCBsb29wIGluIHNpZ25hbF9pcnFfd29yaygpICwgYW5kIHRoZSBs
b29wIHdpbGwgbmV2ZXIgYnJlYWsgY29udGludWUgdGhlIGk5MTVfcmVxdWVzdC4gaHdzcF9zZXFu
byBiZSBjaGFuZ2VkLCBhbmQgaW52YWxpZCBhZGRyZXNzIGFjY2VzcyBlcnJvciByZXBvcnRlZCBm
b2xsb3dlZCBieSBzeXN0ZW0gcGFuaWMuDQoNClRoYW5rcywNCkRvbmcNCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51
eC5pbnRlbC5jb20+IA0KU2VudDogRnJpZGF5LCBEZWNlbWJlciAxMCwgMjAyMSA0OjUxIFBNDQpU
bzogWWFuZywgRG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNClN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2d0
OiBEbyBub3QgYWRkIHNhbWUgaTkxNV9yZXF1ZXN0IHRvIGludGVsX2NvbnRleHQgdHdpY2UNCg0K
DQpPbiAxMC8xMi8yMDIxIDAxOjMxLCBkb25nLnlhbmdAaW50ZWwuY29tIHdyb3RlOg0KPiBGcm9t
OiAiWWFuZywgRG9uZyIgPGRvbmcueWFuZ0BpbnRlbC5jb20+DQo+IA0KPiBXaXRoIHVua25vdyBy
YWNlIGNvbmRpdGlvbiwgdGhlIGk5MTVfcmVxdWVzdCB3aWxsIGJlIGFkZGVkDQoNCldoYXQgZG8g
eW91IG1lYW4gd2l0aCB1bmtub3duIGhlcmU/DQoNCj4gdG8gaW50ZWxfY29udGV4dCBsaXN0IHR3
aWNlLCBhbmQgcmVzdWx0IGluIHN5c3RlbSBwYW5pYy4NCj4gDQo+IElmIG5vZGUgYWxyZWF5IGV4
aXN0IHRoZW4gZG8gbm90IGFkZCBpdCBhZ2Fpbi4NCg0KTm90ZSB0aGUgY2FsbCBjaGFpbnMgYXJl
IHVuZGVyIGNlLT5zaWduYWxfbG9jayBhbmQgcHJvdGVjdGluZyBmcm9tIGRvdWJsZSBhZGQgQUZB
SUNUOg0KDQpzdGF0aWMgdm9pZCBpbnNlcnRfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkgeyAuLi4NCglpZiAodGVzdF9iaXQoSTkxNV9GRU5DRV9GTEFHX1NJR05BTCwgJnJxLT5m
ZW5jZS5mbGFncykpDQoJCXJldHVybjsNCi4uLg0KCXNldF9iaXQoSTkxNV9GRU5DRV9GTEFHX1NJ
R05BTCwgJnJxLT5mZW5jZS5mbGFncyk7DQoNCg0KYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxlX2Jy
ZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpIHsgLi4uDQoJc3Bpbl9sb2NrKCZjZS0+
c2lnbmFsX2xvY2spOw0KCWlmICh0ZXN0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfQUNUSVZFLCAmcnEt
PmZlbmNlLmZsYWdzKSkNCgkJaW5zZXJ0X2JyZWFkY3J1bWIocnEpOw0KCXNwaW5fdW5sb2NrKCZj
ZS0+c2lnbmFsX2xvY2spOw0KDQoNCnZvaWQgaTkxNV9yZXF1ZXN0X2NhbmNlbF9icmVhZGNydW1i
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKSB7IC4uLg0KCXNwaW5fbG9jaygmY2UtPnNpZ25hbF9s
b2NrKTsNCglpZiAoIXRlc3RfYW5kX2NsZWFyX2JpdChJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLCAm
cnEtPmZlbmNlLmZsYWdzKSkgew0KCQlzcGluX3VubG9jaygmY2UtPnNpZ25hbF9sb2NrKTsNCgkJ
cmV0dXJuOw0KCX0NCg0Kdm9pZCBpbnRlbF9jb250ZXh0X3JlbW92ZV9icmVhZGNydW1icyhzdHJ1
Y3QgaW50ZWxfY29udGV4dCAqY2UsDQoJCQkJICAgICAgc3RydWN0IGludGVsX2JyZWFkY3J1bWJz
ICpiKQ0Kew0KLi4uDQoJc3Bpbl9sb2NrX2lycXNhdmUoJmNlLT5zaWduYWxfbG9jaywgZmxhZ3Mp
Ow0KDQoJaWYgKGxpc3RfZW1wdHkoJmNlLT5zaWduYWxzKSkNCgkJZ290byB1bmxvY2s7DQoNCgls
aXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUocnEsIHJuLCAmY2UtPnNpZ25hbHMsIHNpZ25hbF9saW5r
KSB7DQoJCUdFTV9CVUdfT04oIV9faTkxNV9yZXF1ZXN0X2lzX2NvbXBsZXRlKHJxKSk7DQoJCWlm
ICghdGVzdF9hbmRfY2xlYXJfYml0KEk5MTVfRkVOQ0VfRkxBR19TSUdOQUwsDQoJCQkJCSZycS0+
ZmVuY2UuZmxhZ3MpKQ0KCQkJY29udGludWU7DQoNClRoZSBsYXN0IG9uZSBpbiBzaWduYWxfaXJx
X3dvcmsgaXMgZ3VhcmRlZCBieSB0aGUgX19pOTE1X3JlcXVlc3RfaXNfY29tcGxldGUgY2hlY2su
DQoNClNvIEkgdGhpbmsgbW9yZSBjb250ZXh0IGlzIG5lZWRlZCBvbiBob3cgeW91IGZvdW5kIHRo
aXMgbWF5IGJlIGFuIGlzc3VlLg0KDQpSZWdhcmRzLA0KDQpUdnJ0a28NCg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogWWFuZywgRG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT4NCj4gLS0tDQo+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDMgKysrDQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMgDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYw0KPiBpbmRleCAyMDljZjI2NWJmNzQuLjljN2Jj
MDYwZDJhZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJl
YWRjcnVtYnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNy
dW1icy5jDQo+IEBAIC0zODcsNiArMzg3LDkgQEAgc3RhdGljIHZvaWQgaW5zZXJ0X2JyZWFkY3J1
bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpDQo+ICAgCQl9DQo+ICAgCX0NCj4gICANCj4gKwlp
ZiAoJnJxLT5zaWduYWxfbGluayA9PSBwb3MpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgIAlpOTE1
X3JlcXVlc3RfZ2V0KHJxKTsNCj4gICAJbGlzdF9hZGRfcmN1KCZycS0+c2lnbmFsX2xpbmssIHBv
cyk7DQo+ICAgCUdFTV9CVUdfT04oIWNoZWNrX3NpZ25hbF9vcmRlcihjZSwgcnEpKTsNCj4gDQo=
