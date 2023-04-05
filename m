Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C439F6D74DE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2369310E2DD;
	Wed,  5 Apr 2023 06:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D4810E2DD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680677954; x=1712213954;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S2aPr6FdvSgejSGwJnbwZpek645ljckvKLF6Ybye+wQ=;
 b=M3OehSfvErDhBQj3bHj7SYPaRFmHwHY4Sd53PoJoItTlRgR2qYEpdG7R
 ofHUzLneeBPUNsLXnm+iN/lBY9xwjYgUOI4+cC6IG5v6nb0WWpGv0xwAA
 lJZAl34bXmRYl+xUOQVrNfWBRnLZanhTvEpUKSNuPZvyAYflYvGN6uJ9x
 c7VK+pc4tHxB7K3LdfQ8dtZ7X47zeeocNzRxQMlP9qjeeZi4HV/8KqSww
 toxWI9rAAdO+L93nX/4IFEe2YwOtVZzj+lYBEWpH3GI1R3BhEjmUwLAUC
 Ae5DHNskU0TonpkhnN7MGlAZSk2O4JhkDzu1rvx7rnB+ECTGIlAAUnOOg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="370208124"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="370208124"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="1016373270"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="1016373270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 04 Apr 2023 23:58:55 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 4 Apr 2023 23:58:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 4 Apr 2023 23:58:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 4 Apr 2023 23:58:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TDM9LrQ29sic0iMDsMrQtc9bU0y3Vmns+qMNEeaQBONwHmnZEiu05Tl4jTSYuBU8y+vAHmeafIedYaC3GHjnoJ5BdVo1KspV62WvHxZhVSVacslTu7YP9ohbEtGF5TyuR1QnuCBBUizSDvPdlC6yImwE2ZLSBt1+OlsTJY3nqOaf5RXZ0rrVE1aE9KAZgqmQQLH1YFJYwxqvkiAsXkQtpEaWgQX9xZFHMo8rwWHqn0M/P+9zvD+s3A31ttFLWoOkEzUF/h1LqUJdJJ/TcGCAyH4N5eEjefNZq7Vqhot0tNK5SRBBf3/jss87dYjwYn5aLgcQ4lylw0otFxQ+HuiEMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S2aPr6FdvSgejSGwJnbwZpek645ljckvKLF6Ybye+wQ=;
 b=Te4zOscXtu+Pz3HMRrD5YsDOx6CweYmaGdZaMGbopWP/SQutqwR+gloO8qwQtlROyhazOhLX5sRygvH29pDN9EKI3bb82kOE5vGmIx9c5AOy5CuxN8Qr2bommJ7jegLF46Q+j95yfcVxkfKCQfMG7q4vI6UchtJdIH6FD0hlMxT4fZpF+rWYH6+o5TrYLhZAe7zLULWdDuXTEHb16J7uU4mnwpmWrASRAm4oz6uufDEntcA/zgPm7kYpDT6uWGOA3M/JphM3LmQHGEPtw759UEvhAHoY4p1IICepTnaRifDQIEBTkwyz/qj2SxNbWIUj3hL0aZ8ZvLM6RcP3rRlX4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by CY5PR11MB6233.namprd11.prod.outlook.com (2603:10b6:930:26::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Wed, 5 Apr
 2023 06:58:46 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 06:58:46 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915/vrr: Eliminate redundant
 function arguments
Thread-Index: AQHZW2tXJsIE8mMtwECHVMTeQpj7aK8cYN3A
Date: Wed, 5 Apr 2023 06:58:45 +0000
Message-ID: <MWHPR11MB1935FE2ECCC9947F8BBF6D3EB2909@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
 <20230320203352.19515-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320203352.19515-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|CY5PR11MB6233:EE_
x-ms-office365-filtering-correlation-id: ec9a9429-ecf4-4ed6-0274-08db35a33346
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ubexO7JDePrzW/a+ZWGAi9Zhwg/7eTIGldJsytU7TkBiN7g10UhPHthgKiPoJmWnHZ0J07bJcv3lo1PhUJEIbBFowHdfjTS3ro44RJcj7qTjJT/2gBZNqP/Eqi+JTujHXdn1Cu9uDrNOXyymdJqbMx62Oa9RGblaEygjcI1OWFfPLUqdIwCEy7s/vcqxEeGMrMQoiUFkR/nyFod8M7saTuE94pBL/tB+5BxE77Va8fOkYWk8MqNZu8KAz5XDbp53e1xIir6fgG5eVLKs92sEM1V+37MlMyJeO5UYOtBMSdZgjm0S3sTx0uBLoZoiG9BTQ9mPM2ZPINuAYs4/mA/1Vqky/ndHNjX72JmLPM0yY6NhcJeOPqU9u1FkyDa7kQjb27uZjroiVFwTN+FP4vt3LA/ZK2Rw4opWz7tdjudy2ZU6QOEYfIr5mS5mrVscIebi6IOq7Y6RSEAmCE0ivN3AgLGk+TGWXoWDBpWX2VA5Y79GPHTLmGFOMbUIQA+YPpZyytKGWAiwZwyQw2GRrA27CV4V0/zDdzWN9eWtLEy/ttufMDwCqJwn2U1k2V5lcvwW7bxLgg+opih9c+qeNfll9z06s5twe3Dltih26fL7jh77d7U6yJ8niC2Qr683fKCM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199021)(6506007)(9686003)(53546011)(186003)(86362001)(66556008)(7696005)(33656002)(478600001)(71200400001)(316002)(5660300002)(8936002)(66476007)(38070700005)(41300700001)(82960400001)(66946007)(8676002)(52536014)(38100700002)(2906002)(76116006)(66446008)(64756008)(6916009)(122000001)(4326008)(55016003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1J3UFVzd0pJeTl3VS9PR2Rkc2FkcHNvQ0ozTkJJOVJ5L3pDTkNHSnJHdDdX?=
 =?utf-8?B?c3l4UDZUSnNiaXNLd1p1VlZ4MkVxRTdEdWtIUHJTS2hwOFJYYUNueElWc045?=
 =?utf-8?B?SHZxSEx1Q2J5SlMxZEdsRHJib0RLeGs2L0lqMVNlL25BK3k3VUJDQnFFQ0o5?=
 =?utf-8?B?ajFyOVMyUlNJdHgydmxEK0tUcHVRWERDcGE0bENuOG82cUwrNEtzMXRWSHho?=
 =?utf-8?B?VjdTVEgrV3hUTGZHdGxpUTNhWTA3TFVKcTBxY0lkelRxS05pcitLRTN3TXRE?=
 =?utf-8?B?QUQ3YmhFRWRHYUx0d0gvVC9jeCtTKys0NVIzU2wvNEJTMFQ1Z3ZqSDNWWCsz?=
 =?utf-8?B?b0R1RUMrQ3J5N1pZRjRqbHhFTWlvNGpSTzVLK0hyY3ExTDFkdzhCcG91ZlZW?=
 =?utf-8?B?NFNxdkZGMGJRQVFzZ2I5MlFaeHFxcWdRL2xTc2xOMTJIYk5CNGFPazFKMjVQ?=
 =?utf-8?B?S2k4eWxmZ1dobjNFb0pmelZqNzFsZDhwdnM2NXNmOXFVdU5tMTVWNEF6TjBh?=
 =?utf-8?B?QjY1bEFWdVFZMDV3Zzk4ejIyWmwrdXo4aFpMcGkycFlmenNVTXFqOU9JaXJO?=
 =?utf-8?B?blVZZ3k4c2VEVU5qSFZES1hsRXhvaEVBdUxyYmh5RHRaUDZaUFR6SWtBWURZ?=
 =?utf-8?B?amZLUTF2ZU9FY0RXSmZ2V2MxSEtZTUlxQ1lUc01aMUJiNnlBVWNEaTdHWURk?=
 =?utf-8?B?WG9oQlVHbHpraXYxcXh3Z3lKYVlTd2ZCOGgyWDM1V3dnUjBNZU5XK2FNOTVl?=
 =?utf-8?B?S2tvb1FJY1hnOFlPSm9CWGR4N0s2TU9icGtyTGViWU5naElFNWZpZXkzdHc2?=
 =?utf-8?B?ZGtjQjNBTG5HRnR4U01vb1ZGdWl2VzBQWlYyVURxMTk2RjQzeVdlZlFIbEsw?=
 =?utf-8?B?cUgyNFAyT3AwaWJ1aXFxaU1SNG5NWnZIOE1QblpGaXJsV1g2UkFHVVloVWF4?=
 =?utf-8?B?ZTFpZUlBTE9ZS2dLZUlZK0ZJZEVpK2pMSFJ5MVNjT0RsV2ZFd2x3Tmd1UTRq?=
 =?utf-8?B?NDZ3Ym10amZWQ1dEUkdTQVVpS2N0UmRveHRGc3o2Z3NJeS9xVkpvb3d1QWJS?=
 =?utf-8?B?a2NoK3F3SXR3TEg3Mzk0bWlQbUtZUlNiYm9XdWdGVXdKS2toQ3N6VURaTzVE?=
 =?utf-8?B?aXc4bm5hRi9udThlVUZTOXVoV04yNk5RMEE1bHRPakJqQm5sK1NmaStNc1l6?=
 =?utf-8?B?SDlQL01ZVVRoLzhOanNNVlQ5U1Z0R1pGN3AvSHlPZmNlcG9LQ1g5UGRiMjVJ?=
 =?utf-8?B?SnU1amtWbTFMRXQwWENBRXFHSkk3aXhISW9GazdLWGdHeDRsOGZhZUxFaHlO?=
 =?utf-8?B?d3lVOGVrbVhDdmt2YkdESXlCd3lJU3Z0SWlQUU9BQVY0bW9ySFFVR0pXbGhy?=
 =?utf-8?B?bS94M1JQZ2pwK1RSMTJXK3JDN3FjRU5kTittODFUU1NnM0YyU2Z5YUV0dXha?=
 =?utf-8?B?dUcxN2ZUNUJUUWRLUlZ4VmUwclJlYzB3bU1oNXhHenpZTDJHQXp4em5PeXV2?=
 =?utf-8?B?Tzh0OTc3QmtDK2JQLzVyY1ZJb0w1R2x0blRDNm4waTJZS0FrZEdHaisxNzRw?=
 =?utf-8?B?UDlYbTZ1ZXViNklXbjdld1g1bW0vNDFET3BqWCtBWWREVlFUOU9HSVovWVNO?=
 =?utf-8?B?T3VnSTN0T1l5NzNvZjVzdUJsSXBnTWx5SW1PZ3R3TFBDTmZhMDZVaHM2RUcz?=
 =?utf-8?B?eENUeFZKSHkvRmxGMnhKQ29uK0NyOE1JcmQzK2RLNkxFWHQ5QjdGRTU2OEF5?=
 =?utf-8?B?ZitsTFdxQm1wRWZDRjZ1VWwvWTIyRklLN0VBYkp5aytpck1SSDlLeWdvNXRi?=
 =?utf-8?B?UVpuVlZtUjBySjFtQUdreVdJbG96OW5ENlo4Tk9zVVlZK1Y5LzMzNDg3WTlq?=
 =?utf-8?B?VTVSY05TRVI4WUIzQWhQZ0RrOXozbk9zQTJYNlI0RkRsSmhnY1dYa1kvY05P?=
 =?utf-8?B?dHEvRGpLTGhiY3NUNlFHU1hKeDlKRDB5ZUJJU2p5R1M4VXRsUldOaGthYzk4?=
 =?utf-8?B?c3FWNHNxd1NYd1dzSTBrZURwQzI2dFoydDVtNStzS3VHS0FtT2FGVzgxRVV4?=
 =?utf-8?B?bm15N0szQUs5MXRNWjNTQlpCMVNHRHNXZmtNSi82SXVUQmplTXVCSE9nL1VB?=
 =?utf-8?B?L3hubkYwOXpyb3MveDl3a0swbG1HL1N6Z0MwZ2xGWHd4Z2Zrd3RYeStnUnNW?=
 =?utf-8?B?ckh0dTJBc1IwemNGR2pwejIydVA5YVFPWnQ0ZjNGaFkyWm43MkRkdXBWNVZ2?=
 =?utf-8?Q?KKMZT6E9oHNlui8FcnvNRlGd313X7mpQLFeEb9Eots=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec9a9429-ecf4-4ed6-0274-08db35a33346
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 06:58:45.8853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gPauxfx/N9yD+eXhVFUZmjmvI9XiloMfteyh2AqB5krpffD60ZPBtyN+FdEieuoaQti/WNsNUe2Cs2tSJw5bL5RYpTpxZWFavBofM/5Fiht7LjCoJS6YuzJ6I/SGwzva
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6233
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/vrr: Eliminate redundant
 function arguments
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
PiBTeXJqYWxhDQo+IFNlbnQ6IDIxIE1hcmNoIDIwMjMgMDI6MDQNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDIvNl0g
ZHJtL2k5MTUvdnJyOiBFbGltaW5hdGUgcmVkdW5kYW50IGZ1bmN0aW9uDQo+IGFyZ3VtZW50cw0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IFNvbWUgb2YgdGhlIFZSUiBmdW5jdGlvbnMgdGFrZSByZWR1bmRhbnQgYXJndW1l
bnRzLiBHZXQgcmlkIG9mIHRoZW0gdG8NCj4gbWFrZSBsaWZlIHNpbXBsZXIuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAg
IHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgIDIgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMgICAg
IHwgMTAgKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
cnIuaCAgICAgfCAgOSArKy0tLS0tLS0NCj4gIDQgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCAxNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiBpbmRleCA4ZDViNzM1OTQ2NTcuLmQwOTQ0ODVmMDgwZCAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0yOTUxLDcg
KzI5NTEsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfZGRpKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiANCj4gIAlpbnRlbF9lbmFibGVfdHJhbnNjb2RlcihjcnRj
X3N0YXRlKTsNCj4gDQo+IC0JaW50ZWxfdnJyX2VuYWJsZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsN
Cj4gKwlpbnRlbF92cnJfZW5hYmxlKGNydGNfc3RhdGUpOw0KPiANCj4gIAlpbnRlbF9jcnRjX3Zi
bGFua19vbihjcnRjX3N0YXRlKTsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDMzNTZiMDcyNGUxZS4uNWVlOTM4MjQ4NjFi
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtMzk3Niw3ICszOTc2LDcgQEAgc3RhdGljIGJvb2wgaHN3X2dldF9waXBlX2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfY3J0Yw0KPiAqY3J0YywNCj4gIAkJaW50ZWxfZ2V0X3RyYW5zY29kZXJf
dGltaW5ncyhjcnRjLCBwaXBlX2NvbmZpZyk7DQo+IA0KPiAgCWlmIChIQVNfVlJSKGRldl9wcml2
KSAmJiAhdHJhbnNjb2Rlcl9pc19kc2kocGlwZV9jb25maWctDQo+ID5jcHVfdHJhbnNjb2Rlcikp
DQo+IC0JCWludGVsX3Zycl9nZXRfY29uZmlnKGNydGMsIHBpcGVfY29uZmlnKTsNCj4gKwkJaW50
ZWxfdnJyX2dldF9jb25maWcocGlwZV9jb25maWcpOw0KPiANCj4gIAlpbnRlbF9nZXRfcGlwZV9z
cmNfc2l6ZShjcnRjLCBwaXBlX2NvbmZpZyk7DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdnJyLmMNCj4gaW5kZXggNDIyOGYyNmI0YzExLi42ZDc0OWRlNzEwNTgg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiBAQCAt
MTY4LDEwICsxNjgsOSBAQCBzdGF0aWMgdTMyIHRyYW5zX3Zycl9jdGwoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJCQlWUlJfQ1RMX1BJUEVMSU5FX0ZV
TExfT1ZFUlJJREU7DQo+ICB9DQo+IA0KPiAtdm9pZCBpbnRlbF92cnJfZW5hYmxlKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAtCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3ZvaWQgaW50ZWxfdnJyX2VuYWJsZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiArdG9faTkxNShjcnRjX3N0YXRl
LT51YXBpLmNydGMtPmRldik7DQo+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0g
Y3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7DQo+IA0KPiAgCWlmICghY3J0Y19zdGF0ZS0+dnJy
LmVuYWJsZSkNCj4gQEAgLTIzMCwxMCArMjI5LDkgQEAgdm9pZCBpbnRlbF92cnJfZGlzYWJsZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqb2xkX2NydGNfc3RhdGUpDQo+ICAJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFRSQU5TX1ZSUl9DVEwoY3B1X3RyYW5zY29kZXIpLCAwKTsg
IH0NCj4gDQo+IC12b2lkIGludGVsX3Zycl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLA0KPiAtCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3Zv
aWQgaW50ZWxfdnJyX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+ICB7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShjcnRjLT5iYXNlLmRldik7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0NCj4gK3RvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiAgCWVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiAg
CXUzMiB0cmFuc192cnJfY3RsOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5oDQo+IGluZGV4IDlmZGExMTM1YjBkZC4uZWU2MzZhNTM2N2M4IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmgNCj4gQEAgLTExLDIyICsx
MSwxNyBAQA0KPiAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGU7DQo+ICBzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlOw0KPiAgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsNCj4gLXN0cnVjdCBpbnRl
bF9jcnRjOw0KPiAgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+IC1zdHJ1Y3QgaW50ZWxfZHA7
DQo+IC1zdHJ1Y3QgaW50ZWxfZW5jb2RlcjsNCj4gDQo+ICBib29sIGludGVsX3Zycl9pc19jYXBh
YmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7ICB2b2lkDQo+IGludGVsX3Zy
cl9jaGVja19tb2Rlc2V0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsgIHZvaWQN
Cj4gaW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLA0KPiAgCQkJICAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3Rh
dGUpOyAtdm9pZA0KPiBpbnRlbF92cnJfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLA0KPiAtCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7DQo+ICt2b2lkIGludGVsX3Zycl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOw0KPiAgdm9pZCBpbnRlbF92cnJfc2VuZF9wdXNoKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsgIGJvb2wNCj4gaW50ZWxfdnJyX2lzX3B1
c2hfc2VudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2b2lk
DQo+IGludGVsX3Zycl9kaXNhYmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSk7IC12b2lkDQo+IGludGVsX3Zycl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLA0KPiAtCQkJICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
DQo+ICt2b2lkIGludGVsX3Zycl9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsNCj4gIGludCBpbnRlbF92cnJfdm1heF92Ymxhbmtfc3RhcnQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOyAgaW50DQo+IGludGVsX3Zycl92bWlu
X3ZibGFua19zdGFydChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
DQo+IA0KPiAtLQ0KPiAyLjM5LjINCg0KY2hhbmdlcyBMR1RNLiANClRoYW5rcw0KDQpSZXZpZXdl
ZC1ieTogTWl0dWwgR29sYW5pIDxtaXR1bGt1bWFyLmFqaXRrdW1hci5nb2xhbmlAaW50ZWwuY29t
Pg0KDQo=
