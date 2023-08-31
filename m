Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ECC78EB36
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 12:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5904F10E615;
	Thu, 31 Aug 2023 10:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB2D10E615
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 10:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693479573; x=1725015573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xEh2YRpJBHx/LesMTyi+PrtY/BiijlRKXBQIy0AhI+4=;
 b=As52+ZntCkBOtlfUysGJXlaYMsFVQSCBFDp3RhF2u/qVanvOASlwPOfR
 ojPMknutqEv4Id0mydmaDDjyvEK+5otXF3DscANUQHSQVWOiD8sAjnHOB
 0PhqfTFeL15LtAeyTPzPAS3tScGMvACrCiJegzXqJ0htgugTQ1OwAEJQy
 5LOXmZSImBcUE9oWu6oekh5eBFS0eNwVRDszOE2X5XPx3sGyDU6ElMW7B
 EsMJWKbFgQJW6f/uxXfCFcbHkli3nhCvDEU/Few9GEX8SEXIfi44Xq30l
 60njcvTD324iXQLH1bLpU1Vwx/lYe1pvNNNyX93osufhbMRfnY12AeOs7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="442264052"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="442264052"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 03:59:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="809550575"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="809550575"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 03:59:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 03:59:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 03:59:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 03:59:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qzyj73haM/5ektNVIVSAgOXHFqR/Bl36P9mtSXybq26G4IgpNrwassdc0q7pP3drQoW5Jvi7vwTxcDB8FyrjGdxpClevE8lmGR2z68hZkRHJqHxdheGcb1hnbXWyk5RKjMcBU1kzLByTsjsN8z5L6nMwN6vl10AoeBBgoDqOUz231z/PBJuPrsvAvsaU0GKs4+kdeElhGzAU0OZBrANnXrt+3k/45QMKHOx1dX1LvBUR1tlPRGpwpcGk0ori5vHcrTAsFRfomheI9dBXGSMEa0dddaCYt9p42IsMA5n0wBQGCpU4uBPN+ahy4K3rMYpwjw6N91aKgYEcxWY6AEP1kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xEh2YRpJBHx/LesMTyi+PrtY/BiijlRKXBQIy0AhI+4=;
 b=F3Vf15k5qAktT9A5pbxeSm2kwzalp7TKI/Op7MTAb4JQ1H8cFEP/VFCZAPbQUP1dApjXdituKgXSBV6Wf6JVzIJqO9Gsn+0U8QXles+ddzkAoD/LUy+5ICz8oMlzcETYcYJ7hsC/joEwIHehO89Rcmx+rLDL8RUG8qNz5CI/8eA0ZnA2ff9ao+Up6FgyBHTGPYTXLEgrfODZzdfPGwQRtWwmRSpAw17yHOH2RqgoiMgrf31ipal1eFGrC88aiMGaNJB3b6+azE6/j+FaRZAExMMVBQyD5WYBam4leP4VUn/Mt7qZ6PnXvy0/6MEyqKWKmbwFWbnn7obabQpyenKyDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB6324.namprd11.prod.outlook.com (2603:10b6:208:388::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.21; Thu, 31 Aug
 2023 10:59:28 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6745.022; Thu, 31 Aug 2023
 10:59:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/cx0: Check and increase msgbus timeout
 threshold
Thread-Index: AQHZ2zu5QpDmYxhohE2buaCCeQIBtrAEPRoQ
Date: Thu, 31 Aug 2023 10:59:28 +0000
Message-ID: <MW4PR11MB70547F6DA592B4D3E77A7B27EFE5A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230830121524.15101-1-gustavo.sousa@intel.com>
In-Reply-To: <20230830121524.15101-1-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB6324:EE_
x-ms-office365-filtering-correlation-id: 7855a936-ef3b-45a6-084e-08dbaa1158f7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fAF72NGqVyENuVnZhBXkohys8AV4jwCZEGkTH82TkQ6rSmFCuuCK+18oGoNmfDY4jMFT3HjoYgBW146WXJtX3hlMYgucgOe4FMPqx5XRjkT0fZ63FMIPlOrCsmyn04RrBrQRXLdbHBasuL1jfTBVoXqy6926GTqLGjtfduF9z0+0395nFi+IIqCadIWhqdAJKgK4/YXA2PUUdmi2ZgJcTKakf1PfR5C48SBZqeAi9iawe6oaHvJLQCfyTiODRu1Q7KNyEZ6u+JHzTOueCh6YiX+bLSm+OYpr2mzJ+a/Kw0yx17SO/GoBtthXnsUeHcgW17Y1QpTjhXXpCqLBqoAdd4w/u18wAXuVtLNFSxjs3mwIJecopNI6d4PeB2fIavBt9JAqdeq8nOLtgx8BaN3TZIFj7mA+YRwfdh5cgoIkRCeFakesYo8aDGPIpCiXc1W/fOz6JzklfPSWfwSPuysa3RSCq/F6NPbg9Ih74QUcYjlGlWkOGux5zdNHLzDHFXIJAn4NEFVxmJjvz2h9QgyUPG7aU8/NxeAxHWI7RtQhfcgDW6pY1U1mCKSsG4YBVSydtm1s262EPiFFrsqwgBNCB5fSKGPH//373o5pZDEqw38F0G0ETXBwuhCeeQlXyJwA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(366004)(39860400002)(451199024)(1800799009)(186009)(71200400001)(7696005)(6506007)(9686003)(53546011)(478600001)(83380400001)(26005)(2906002)(107886003)(64756008)(316002)(66556008)(66446008)(66476007)(54906003)(41300700001)(66946007)(76116006)(52536014)(110136005)(8936002)(5660300002)(4326008)(8676002)(55016003)(86362001)(33656002)(82960400001)(38070700005)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUZyejRyeUIyMW5qNWpTZmtXV1ZPb28vaG04ZzUzSmZ0RWdrT1I5NEtwS3VG?=
 =?utf-8?B?eUNaVC9BQXIyMkR6c1ZVOU9jY0pNV1ZtZTdmQmZndkFVQkJSNFBXMWU0dFhH?=
 =?utf-8?B?ZjluTGIxQUpJWE9GbFpobHQ1d05YaGJKaXBJZVBucDJCUzllb3VLVDNMVlRQ?=
 =?utf-8?B?NFVEY3o3UjFGYlErNmVZRmZSOS94THVXUjFPd3JuV2RRSWJCMStUSWs0T0xG?=
 =?utf-8?B?ekI4NWRCbW05UUJCVzRpLzlBQzBheFB6ajBZbFlTRXAwbU5CR3JHYURIb2U3?=
 =?utf-8?B?Uzh3TjNEd0dnZ1V4dGNkQlJIemNaRFIxdVFTZXhNUUlCdmkxMkFIS1ZYNHAz?=
 =?utf-8?B?UnFHcjZGOXU0RmJSS3RpdmNheTdqSFZvQkd2VDZxUEtmWmZiTWMrRFkvbkNs?=
 =?utf-8?B?ZWxvT0pJMHdVMFRoc2ZUTGVGYkY5L25HSVFPR0FUMjF1QkNFOVNFVUVUd2da?=
 =?utf-8?B?RTZNdWlZbS9DTXVtZHFaRU1BWG4rd1FINTIxZmZGOFd5MlJvanhGOG1TaGto?=
 =?utf-8?B?NnZlVGVHVW5DTjBuS0VDQndkMW5ocXV0QTdQRUJyK0YvNitENWNCWGlHRXly?=
 =?utf-8?B?cXc3RFp1VWFGT2IwTnUzaXp1ZDc3d0Rvc1ZVK1pDdURUS3kxSzRVT0l2UHRI?=
 =?utf-8?B?QURKRDFzQ2N6SVEzMDRtQ3pBUEp3T2dOQWRLcXZKclR0a0pUcW1WcE14cmZI?=
 =?utf-8?B?eUJ0TCtrSnUxVzVJd25yTW9GSGRUK2lxRkJWb3NtT1FObUxFMktYc3pNUnds?=
 =?utf-8?B?OFFwem9lZkJ1RzJFUEVtTVlhYmkxMis1VFZJdkVEZkJuT2RoREg0RzI0Q1Yv?=
 =?utf-8?B?MjZyTnB5MUVOSTN6TyszQkhORGpYU2w1VldLa1JvVFc5T2pvdFlURGNIMXF1?=
 =?utf-8?B?TlNBZEpjU1RNZXRXWnlCbVBUUGprbEZySGhhWkRmd3hENG1McUluRVBqamZV?=
 =?utf-8?B?YmRaN2g2Y0xEZEVGaVdjU2lpSWFud3NZZXVLTWNSOUNobVFrdVMrNVcvNzRv?=
 =?utf-8?B?TEkvS0xHYzQ3bjgvcmZidW9MbkMzSnFUZ0hieGY3US9mVm1PelhLMzhsSm9G?=
 =?utf-8?B?dDJ0dXFPdVBwRW1YczRjRXFEM2l1U1hLK0ltcmpnNVVkQlNIS1k4aWZ0TkVk?=
 =?utf-8?B?UkhTOHpaRXd2OE9WZGZrR3ZYYm9CRFFsRWp1MEdOcWFnb0UyUk95T09OZTE1?=
 =?utf-8?B?RWd1QkZSU0JKT1RKcmpadVo0VlNNMWs2QnlCSERPVmpUTFB0ZExtdDlQWitG?=
 =?utf-8?B?NkZRVHdJQ1lIclFRSW5nOUdJaXZSWkUrcVBBS2pIckZmY2dMY3JUNjJuMDJX?=
 =?utf-8?B?eWhNd1R2QVFlTzdodEpXRkFjSG9LKzVjUzNObG9oQjhuMlpYN3NLOGh2VUtW?=
 =?utf-8?B?b0VxbisrTGY1eDhORFRjRWNVSFAwajRYbHlMOHYza3dmOXZNNkN4K1p6Smd5?=
 =?utf-8?B?TDVPREUyTkd4TmE2ODB1UGtsay9JOE9reHlYeHAwKzd6NEpwSnlkVXRNU1NX?=
 =?utf-8?B?OHIzM0RxL1I1R2JiTFVrTjJWWjV1YSs3eG1HRFV4MkFGTmI3ZkVENkNhejE4?=
 =?utf-8?B?Mk9XQzFmM0JvSTAvbUtVNlhlR2dxQkoyM1FmaFdyMzMzWkZsSDVBU3pRanhS?=
 =?utf-8?B?a0pOTkU3aXdWTk53OGdqUWVIbEQvRlJKb28zdnhTdXJDOGswS0ZkRk9xWDZx?=
 =?utf-8?B?bklmdmFmYkl2WjJoakFreW9CY081RFVtVlBzRXFZTEJVNlovWlNuQUczTU1u?=
 =?utf-8?B?cENncnIxSnJ0MGlUOFFCb3NoMUM2NlJUODhtUW1JQ0JLd0dKaTNyOFdXNWR0?=
 =?utf-8?B?cENkaERXU3NUajRUdVdKd0NOVko4bHc2MkVWQ1oxa2dSV1l6YjBjSnpOSnpu?=
 =?utf-8?B?NUFqNEN4MDVKMUdRSkJiMTkvbDcwNStWSUhyd0o1WWxESGtZV1VjZlFVNTBI?=
 =?utf-8?B?YWE4M1NobUZuenpHTkw0YjVkU0VZdUs5QTZtNzB3eWYzQklQZHdUT3NvWWZw?=
 =?utf-8?B?c1RRRjBIOS9BS04wRnFrWU5MYm9lK0dMTUxUNTFPL2ZTaWxYMWx3SnozSHhH?=
 =?utf-8?B?YXBwb2RkZFl2U0ZEa0ZUY1ZBRCtPQ2VNNkxxT255c0RtcDUvRkYwb21kbU8v?=
 =?utf-8?Q?8K1jSv02EckjZmX/2Zx+Ta5lG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7855a936-ef3b-45a6-084e-08dbaa1158f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 10:59:28.6390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: knvzUv7DGjJo66pIMAtCYWgGdfgI0G41dcKzHSSaoHEsZwOSE3YvhmTsDIYOJXfoF8b1RBT5t60vmDej8QRhDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6324
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/cx0: Check and increase msgbus
 timeout threshold
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDMwLCAyMDIz
IDM6MTUgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNy
aXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkNCj4gPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYyXSBkcm0vaTkxNS9jeDA6IENo
ZWNrIGFuZCBpbmNyZWFzZSBtc2didXMgdGltZW91dCB0aHJlc2hvbGQNCj4gDQo+IFdlIGhhdmUg
ZXhwZXJpZW5jZWQgdGltZW91dCBpc3N1ZXMgd2hlbiBnb2luZyB0aHJvdWdoIHRoZSBzZXF1ZW5j
ZSB0byBhY2Nlc3MgQzIwIFNSQU0gcmVnaXN0ZXJzLiBFeHBlcmltZW50YXRpb24gc2hvd2VkDQo+
IHRoYXQgYnVtcGluZyB0aGUgbWVzc2FnZSBidXMgdGltZXIgdGhyZXNob2xkIGhlbHBlZCBvbiBn
ZXR0aW5nIGRpc3BsYXkgVHlwZS1DIGNvbm5lY3Rpb24gb24gdGhlIEMyMCBQSFkgdG8gd29yay4N
Cj4gDQo+IFdoaWxlIHRoZSB0aW1lb3V0IGlzIHN0aWxsIHVuZGVyIGludmVzdGlnYXRpb24gd2l0
aCB0aGUgSFcgdGVhbSwgaGF2aW5nIGxvZ2ljIHRvIGFsbG93IGZvcndhcmQgcHJvZ3Jlc3MgKHdp
dGggdGhlIHByb3BlciB3YXJuaW5ncykNCj4gc2VlbXMgdXNlZnVsLg0KPiBUaHVzLCBsZXQncyBi
dW1wIHRoZSB0aHJlc2hvbGQgd2hlbiBhIHRpbWVvdXQgaXMgZGV0ZWN0ZWQuDQo+IA0KPiBUaGUg
YnVtcGVkIHZhbHVlIG9mIDB4MjAwIHBjbGsgY3ljbGVzIHdhcyBzb21ld2hhdCBhcmJpdHJhcnkg
LSAyeCB0aGUgZGVmYXVsdCB2YWx1ZS4gVGhhdCB2YWx1ZSB3YXMgc3VjY2Vzc2Z1bGx5IHRlc3Rl
ZCBvbiByZWFsDQo+IGhhcmR3YXJlIHRoYXQgd2FzIGRpc3BsYXlpbmcgdGltZW91dHMgb3RoZXJ3
aXNlLg0KPiANCj4gdjI6DQo+ICAgLSBSZXdvcmQgY29tbWl0IG1lc3NhZ2UgdG8gaW5kaWNhdGUg
dGhhdCBhY2Nlc3MgdG8gQzIwIFNSQU0gcmVnaXN0ZXJzDQo+ICAgICBpcyBub3QgZGlyZWN0LiAo
UmFkaGFrcmlzaG5hKQ0KPiAgIC0gUHJlZmVyIG5vdCB0byB1c2UgUkVHX0ZJRUxEX1BSRVAoKSBp
biBpbnRlbF9jeDBfcGh5LmMuDQo+ICAgICAoUmFkaGFrcmlzaG5hKQ0KPiAgIC0gU2ltcGxpZnkg
aW50ZWxfY3gwX2J1c19jaGVja19hbmRfYnVtcF90aW1lcigpIHRvIHVzZSBhIGZpeGVkIGJ1bXBl
ZA0KPiAgICAgdmFsdWUgaW5zdGVhZCBvZiBwcm9ncmVzc2l2ZWx5IGluY3JlYXNpbmcgdGhlIHRo
cmVzaG9sZC4gKE1pa2EpDQo+IA0KPiBCU3BlYzogNjUxNTYNCj4gQ2M6IFJhZGhha3Jpc2huYSBT
cmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9s
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQpMb29rcyBvayB0byBtZS4NCg0KUmV2aWV3ZWQt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgMzkgKysrKysrKysr
KysrKysrKysrKyAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5o
IHwgMTMNCj4gKysrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBp
bmRleCBkZDQ4OWI1MGFkNjAuLmZmYzZiNTRiZTEyYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTI5LDYgKzI5LDggQEANCj4g
ICNkZWZpbmUgSU5URUxfQ1gwX0xBTkUxCQlCSVQoMSkNCj4gICNkZWZpbmUgSU5URUxfQ1gwX0JP
VEhfTEFORVMJKElOVEVMX0NYMF9MQU5FMSB8IElOVEVMX0NYMF9MQU5FMCkNCj4gDQo+ICsjZGVm
aW5lIElOVEVMX0NYMF9NU0dCVVNfVElNRVJfQlVNUEVEX1ZBTAkweDIwMA0KPiArDQo+ICBib29s
IGludGVsX2lzX2MxMHBoeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwaHkg
cGh5KSAgew0KPiAgCWlmIChESVNQTEFZX1ZFUl9GVUxMKGk5MTUpID09IElQX1ZFUigxNCwgMCkg
JiYgcGh5IDwgUEhZX0MpIEBAIC0xMTksNiArMTIxLDQyIEBAIHN0YXRpYyB2b2lkDQo+IGludGVs
X2N4MF9idXNfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBw
b3J0LCBpDQo+ICAJaW50ZWxfY2xlYXJfcmVzcG9uc2VfcmVhZHlfZmxhZyhpOTE1LCBwb3J0LCBs
YW5lKTsgIH0NCj4gDQo+ICsvKg0KPiArICogQ2hlY2sgaWYgdGhlcmUgd2FzIGEgdGltZW91dCBk
ZXRlY3RlZCBieSB0aGUgaGFyZHdhcmUgaW4gdGhlIG1lc3NhZ2UNCj4gK2J1cw0KPiArICogYW5k
IGJ1bXAgdGhlIHRocmVzaG9sZCBpZiBzby4NCj4gKyAqLw0KPiArc3RhdGljIHZvaWQgaW50ZWxf
Y3gwX2J1c19jaGVja19hbmRfYnVtcF90aW1lcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwNCj4gKwkJCQkJICAgICAgIGVudW0gcG9ydCBwb3J0LCBpbnQgbGFuZSkNCj4gK3sNCj4gKwll
bnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBwb3J0KTsNCj4gKwlpOTE1X3Jl
Z190IHJlZzsNCj4gKwl1MzIgdmFsOw0KPiArCXUzMiB0aW1lcl92YWw7DQo+ICsNCj4gKwlyZWcg
PSBYRUxQRFBfUE9SVF9NU0dCVVNfVElNRVIocG9ydCwgbGFuZSk7DQo+ICsJdmFsID0gaW50ZWxf
ZGVfcmVhZChpOTE1LCByZWcpOw0KPiArDQo+ICsJaWYgKCEodmFsICYgWEVMUERQX1BPUlRfTVNH
QlVTX1RJTUVSX1RJTUVEX09VVCkpIHsNCj4gKwkJZHJtX3dhcm4oJmk5MTUtPmRybSwNCj4gKwkJ
CSAiUEhZICVjIGxhbmUgJWQ6IGhhcmR3YXJlIGRpZCBub3QgZGV0ZWN0IGEgdGltZW91dFxuIiwN
Cj4gKwkJCSBwaHlfbmFtZShwaHkpLCBsYW5lKTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gKw0K
PiArCXRpbWVyX3ZhbCA9IFJFR19GSUVMRF9HRVQoWEVMUERQX1BPUlRfTVNHQlVTX1RJTUVSX1ZB
TF9NQVNLLCB2YWwpOw0KPiArDQo+ICsJaWYgKHRpbWVyX3ZhbCA9PSBJTlRFTF9DWDBfTVNHQlVT
X1RJTUVSX0JVTVBFRF9WQUwpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCXZhbCAmPSB+WEVMUERQ
X1BPUlRfTVNHQlVTX1RJTUVSX1ZBTF9NQVNLOw0KPiArCXZhbCB8PQ0KPiArWEVMUERQX1BPUlRf
TVNHQlVTX1RJTUVSX1ZBTChJTlRFTF9DWDBfTVNHQlVTX1RJTUVSX0JVTVBFRF9WQUwpOw0KPiAr
DQo+ICsJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gKwkJICAgICJQSFkgJWMgbGFuZSAlZDog
aW5jcmVhc2luZyBtc2didXMgdGltZXIgdGhyZXNob2xkIHRvICUjeFxuIiwNCj4gKwkJICAgIHBo
eV9uYW1lKHBoeSksIGxhbmUsIElOVEVMX0NYMF9NU0dCVVNfVElNRVJfQlVNUEVEX1ZBTCk7DQo+
ICsJaW50ZWxfZGVfd3JpdGUoaTkxNSwgcmVnLCB2YWwpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMg
aW50IGludGVsX2N4MF93YWl0X2Zvcl9hY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
IGVudW0gcG9ydCBwb3J0LA0KPiAgCQkJCSAgaW50IGNvbW1hbmQsIGludCBsYW5lLCB1MzIgKnZh
bCkNCj4gIHsNCj4gQEAgLTEzMiw2ICsxNzAsNyBAQCBzdGF0aWMgaW50IGludGVsX2N4MF93YWl0
X2Zvcl9hY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LA0K
PiAgCQkJCQkgWEVMUERQX01TR0JVU19USU1FT1VUX1NMT1csIHZhbCkpIHsNCj4gIAkJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwgIlBIWSAlYyBUaW1lb3V0IHdhaXRpbmcgZm9yIG1lc3NhZ2UgQUNL
LiBTdGF0dXM6IDB4JXhcbiIsDQo+ICAJCQkgICAgcGh5X25hbWUocGh5KSwgKnZhbCk7DQo+ICsJ
CWludGVsX2N4MF9idXNfY2hlY2tfYW5kX2J1bXBfdGltZXIoaTkxNSwgcG9ydCwgbGFuZSk7DQo+
ICAJCWludGVsX2N4MF9idXNfcmVzZXQoaTkxNSwgcG9ydCwgbGFuZSk7DQo+ICAJCXJldHVybiAt
RVRJTUVET1VUOw0KPiAgCX0NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHlfcmVncy5oDQo+IGluZGV4IGNiNWQxYmUyYmExOS4uYjJkYjRjYzM2NmQ2
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHlfcmVncy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeV9yZWdzLmgNCj4gQEAgLTExMCw2ICsxMTAsMTkgQEANCj4gICNkZWZpbmUgICBDWDBfUDRQ
R19TVEFURV9ESVNBQkxFCQkJMHhDDQo+ICAjZGVmaW5lICAgQ1gwX1AyX1NUQVRFX1JFU0VUCQkJ
CTB4Mg0KPiANCj4gKyNkZWZpbmUgX1hFTFBEUF9QT1JUX01TR0JVU19USU1FUl9MTjBfQQkJCTB4
NjQwZDgNCj4gKyNkZWZpbmUgX1hFTFBEUF9QT1JUX01TR0JVU19USU1FUl9MTjBfQgkJCTB4NjQx
ZDgNCj4gKyNkZWZpbmUgX1hFTFBEUF9QT1JUX01TR0JVU19USU1FUl9MTjBfVVNCQzEJCTB4MTZm
MjU4DQo+ICsjZGVmaW5lIF9YRUxQRFBfUE9SVF9NU0dCVVNfVElNRVJfTE4wX1VTQkMyCQkweDE2
ZjQ1OA0KPiArI2RlZmluZSBYRUxQRFBfUE9SVF9NU0dCVVNfVElNRVIocG9ydCwgbGFuZSkJCV9N
TUlPKF9QSUNLX0VWRU5fMlJBTkdFUyhwb3J0LCBQT1JUX1RDMSwgXA0KPiArCQkJCQkJCQkJCSBf
WEVMUERQX1BPUlRfTVNHQlVTX1RJTUVSX0xOMF9BLCBcDQo+ICsJCQkJCQkJCQkJIF9YRUxQRFBf
UE9SVF9NU0dCVVNfVElNRVJfTE4wX0IsIFwNCj4gKw0KPiBfWEVMUERQX1BPUlRfTVNHQlVTX1RJ
TUVSX0xOMF9VU0JDMSwgXA0KPiArDQo+IF9YRUxQRFBfUE9SVF9NU0dCVVNfVElNRVJfTE4wX1VT
QkMyKSArIChsYW5lKSAqIDQpDQo+ICsjZGVmaW5lICAgWEVMUERQX1BPUlRfTVNHQlVTX1RJTUVS
X1RJTUVEX09VVAkJUkVHX0JJVCgzMSkNCj4gKyNkZWZpbmUgICBYRUxQRFBfUE9SVF9NU0dCVVNf
VElNRVJfVkFMX01BU0sJCVJFR19HRU5NQVNLKDIzLCAwKQ0KPiArI2RlZmluZSAgIFhFTFBEUF9Q
T1JUX01TR0JVU19USU1FUl9WQUwodmFsKQkJUkVHX0ZJRUxEX1BSRVAoWEVMUERQX1BPUlRfTVNH
QlVTX1RJTUVSX1ZBTF9NQVNLLA0KPiB2YWwpDQo+ICsNCj4gICNkZWZpbmUgX1hFTFBEUF9QT1JU
X0NMT0NLX0NUTF9BCQkJMHg2NDBFMA0KPiAgI2RlZmluZSBfWEVMUERQX1BPUlRfQ0xPQ0tfQ1RM
X0IJCQkweDY0MUUwDQo+ICAjZGVmaW5lIF9YRUxQRFBfUE9SVF9DTE9DS19DVExfVVNCQzEJCQkw
eDE2RjI2MA0KPiAtLQ0KPiAyLjQxLjANCg0K
