Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC92C6CA20C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4085B10E0F3;
	Mon, 27 Mar 2023 11:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D2810E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679915133; x=1711451133;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=r546Dg5/7UP48HWkr3RwY4ZQlxQqMeZIluCiGXliu0E=;
 b=XogljBfVlFey/OdOh6ZOuPTlfxVeioZ5/iVc8X+xVvtVtXDoQw9dUHhF
 FV6ssxbJwqFNbehkm404fHG05Wdia4ZECaocyEnsk7JSkJiiayH1/+smp
 55y+jxhUJ2YEv5a406CHov4+Q/a8U8Di3ELBvAFgRTg5mTHb+RrEvpyDk
 aCtI9ESxhvR9zTMKgv5jpiKX5MZYRtpTpjthb2f1bUyvrnIt9/pc0l8i0
 eOJDGma5hkdwF1NWkbLe1KeyS9RfFaVDUXEiMT+758AAc2EZ0UY4uXNV8
 q+fJLiCTgth3BCsDPSALqIso71HbEwbcwDm2aXQVMipXq7WynvIpJsvsX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="319893707"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="319893707"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747960876"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="747960876"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 04:05:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:05:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:05:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:05:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DsZ0K/NaE9vdhOax5lxbFGKe827QAzNB+939IA3+sK9gQ+C63eMCs78V4m30Zg4pkRygkBjvwonpR307GUhOe9CKrIzHcicx8jS/nMeBn2tXEkLTl8e6RP/tnuchOrdarfW3hR0/Bur91zB0IKPOF/hfoYYcEwt99pXOujVonJ1nvZYI9iIIEepvMrYCWlYRR2Ma5LKCL4YmtQi+CXKSKviSSCtAK9OdkNC49TcTCSPE3XQC4peFxOQPVr9+PD6GsekXIb/CkTqv+V96AThz7Whlkw39MIyAQFoj5xEXt7BxlEIHUb7U/xjvQF/49gA4RZM19+IZsgDN5XVOVIliEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r546Dg5/7UP48HWkr3RwY4ZQlxQqMeZIluCiGXliu0E=;
 b=mGpxZ1SfetYcsldeLQ9qmOXPx3PMB3Be4BLkoatIssnXDBe96Uo/5ELadltgv0aql8ox/EIjJXWqGZcfNQuHrvwwe2fGW/KimZQjlHilSGyXkvDyGT05hH66/7A8bM3BGJXbzUkiOcYa+7qeevNCdRP21EFp/68DK9OuKNkpjD7AHg/b1Od/OUjFwxzdOK9fFRo8cnPpwu1Svz0A8fW7o75jhSgRGVvX2bHyuFtSNuJhNdroYyj50jSKu/noFyMhshUZByLyCl2+Ztah+GWqmlS6zOlON6qUl/Zy2CUbXLbSSoV2YIX3bPlZZQU1WJWDVlNynrpxB50HGVNN/y5r4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 11:05:30 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:05:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 14/29] drm/i915/tc: Fix up the legacy VBT
 flag only in disconnected mode
Thread-Index: AQHZXZLfXbK6K54lN0a99pzOzvJBhK8OfNmg
Date: Mon, 27 Mar 2023 11:05:30 +0000
Message-ID: <MW4PR11MB70547A1E701D24ADF4479087EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-15-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MN2PR11MB4710:EE_
x-ms-office365-filtering-correlation-id: 33f32089-d95d-4ee5-596d-08db2eb32da8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2OmKI739pYm/EMpqW6E9N6Ll4IEoOi1+z9vQyTgHeU+L+x0EzMM+nlwCaYmRuofeusxWgYpD8/33K7AvbunbtrFccBfRevEGChCtoHvEaCml4JZxKtOnY7dlxGWR56STCXLdp8aBab1VpvW76rkjmmPlWkHvJvUmtDSr8TDUQC8MkQRb1/5hN17dgU/A9yAdeEwo2olX/1CTdcCCBlp1kJclTZEwcACsLsI7HdBOaNB2STQulwIrVFFSo275R+AF8eQgNMubh5Cc0AXxJ0iWqMoqQUYWmboMm3IB9ga8VsqSwvAUbT86o/dwlrUbq4wu5fdHarDYsDIQtpegf4RgMBo1LM6WQ2VAhjNx+I/qR9Do0ImCmho5ffNSRayUcfx4tm5hJfgNIie6IZJy2F/kbtrQ7hCRjariPc8CwGi1aKRH0rgEAalfJROcg1n17n9N4maGNuOh8Es7GIkOAdmL+WvpBNluEPZBXQ4nB1i++rr4KQ4MNx0baLKqEXkasDKj695i/wUO2LNegKwjxFF5gQKMiUXhQ0IlXI0I3QEEaCLb16cMEsKMKzhDhie8pB3dBgyYJ2rA8iLPkieI4i2senWhrUO39i8Qbj5x4m2psQo9WKCT2CQlyrHe3saBO/cN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199021)(7696005)(122000001)(38070700005)(8936002)(52536014)(5660300002)(71200400001)(186003)(6506007)(9686003)(53546011)(26005)(55016003)(2906002)(86362001)(33656002)(83380400001)(82960400001)(41300700001)(38100700002)(478600001)(110136005)(76116006)(66946007)(8676002)(66446008)(66476007)(66556008)(64756008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVdqb1FNS0IwUXJQejV1eFlZMXFFNFRFUzhpT3ZyTDR6Um9tRjRFa1R4SWQ4?=
 =?utf-8?B?NlpVekttWmZpaWFmRFpOTUlVRmRiNzRCNE0yYTRGMHJ5b3IzQ0N4MHVhQ25J?=
 =?utf-8?B?TjkwTVlLMklkaGkxRFQ2YnhzTytpb0l2UlJ1UnlNOEo4UWRxVk4wYjhtOWFU?=
 =?utf-8?B?R2JMQVN3VVc0YzRPb0ZJUUpVV0h1SFE3YmcyZEdUait5UTlzTWhmMnl5MlBl?=
 =?utf-8?B?L2VEbmxsazE0VG51MTFHMmtLQllPamtVdlFCV3IrNTVRcG5OejArS09qWmpa?=
 =?utf-8?B?dFYzTXpUTEhWS2RTa3d5RlJTYVFWMDVJWTV3QkNjb1RzOTgxWXE1by9ETkVp?=
 =?utf-8?B?QWhsOUNXeUthK3l3d3cxTWxKZFpodEgvaUNVNDg0QTA3bit1U0xTUVdtcnlt?=
 =?utf-8?B?N09zbWIxK1VWdEthMTFMNmErU0xzZEo0Qmg0TTlmdzJCbjc5Qnp3ekI0RVFr?=
 =?utf-8?B?TjVUajRDWEZVTmxuWFZTU3lralhqTFp0TVZadmF3UnpEQzMwc1ZnZlB5aWdP?=
 =?utf-8?B?MWNCajBoa2ZTNTR5Y0xwcXlCdnNSN0RaY3BGaE52ZFJWODRMcUdRbDFmQ3Vm?=
 =?utf-8?B?WXZHUXhOVjl2Ymh4U3dsNFhtUXRMd3cvUUpWM0RxaXlDYVcwTDlvSE1iWkUr?=
 =?utf-8?B?dEN2R2ZvaDFpbjQ2TFR4WXd1eUY2K0sxUHlMZUtFZU4zQkdnYkVGbDRSS2dh?=
 =?utf-8?B?bGFNL1l2UkdUeXpISzBFYTZZejZaKytmOWh2Umlhd3ZsQVZTcnJ2bk9kSEpk?=
 =?utf-8?B?dGRPMjVPcGhWRXlFZ3p6amdtZ0N0Skd2R2N2TTQxQVVOTnhGbC9zdkN3cTN1?=
 =?utf-8?B?UldDV1NaQ21hWUJpQ3R4YktJbzh2WDR5dG1RSXkzc2RWaWZ3RVdGZFlpSU82?=
 =?utf-8?B?ZTQxczlqbEZ3TFpubFd3QWt5aHcxYWRKWWVZbEMxWGdtTExhN05VQ3pWaStS?=
 =?utf-8?B?MXdFSlBsb1NHSTJaaGpDR2xiKy9BbllUcFlvQ01tcDFTL1p4cVIwRFEvZlMy?=
 =?utf-8?B?eXJYdWhZTWVQVGcvTkhoT2JDamNUL1Z2VmRidVljZE9KUzBSNWtBUldyZE9T?=
 =?utf-8?B?cUpocGoya3JZSnJpWDNNaXkyTjFrdXMxams0M210V1ZVQm16ODgxd01TeHlX?=
 =?utf-8?B?WXM3K0pheWwwQjVkWjFiWVRWZE44Y0htWmZrdXNhWS9CYkYwM1hqRW9jejMy?=
 =?utf-8?B?UzFVYVZyNk9FK3d5RFoyWVF1OG92Z2czcDJUK3E5eHRHZVc3VkVBQ1NLZ2E4?=
 =?utf-8?B?dXlLeU9GVWluZG9zQWg1ZjlrLytUZmk2dVExT0NzOHVhZmJvQXRLRGhxWWcw?=
 =?utf-8?B?TC9yRGtWWDQxd3owcElub3lUb0dZRUQ3eVpBMWhIeDhLRFJ1TGJydDdVQ0w5?=
 =?utf-8?B?am1Oams2Qkh1U2E2Q2VxSTlKSmtWM2phMFRZb0JRSklXZjlvS1VqUlN6NG1Z?=
 =?utf-8?B?Z0QyOEpLeTR2ZTJqb0xza3NsM3ZkQ3dpd2Y0QnJWWnRhOUllVHJXbXNxTks1?=
 =?utf-8?B?dDA4MzlOeXdYU3A4NFo5aS8zUlJhVGE3TzNaeExvTHpRVEVKZXc0dDh1RUpz?=
 =?utf-8?B?bFpzdDcvbTVCcjJIMHRxQm5GSXFtcHZVK1hsbkphN0tkMWJvNkt4QXpLVG9w?=
 =?utf-8?B?V0k5T2gveS9hQ3hxRnZXSkdGN1RWTm1oOTUrVTF2N0NkSk42emdTQ1gxVnpN?=
 =?utf-8?B?TE5PL1Myd2RwNnl4RjFtdlBwWTdrYjVhaSsreVo5Z2VyKzROM3VXeWZEbGox?=
 =?utf-8?B?KytqZ2lZYkpOM3lRb1hiQWNTZmlXYTdsOUc3U0VKak05bGU3b0pkM04ydmkv?=
 =?utf-8?B?SDdDaVNsTzNiTWdpVUp4TStpMXpoTlBWYitJN2VIUU5ma0hPczZTa0hUd1Yz?=
 =?utf-8?B?bGpMbFNDdWRybkJFRDQrUVBmcExMcTUvUDk5RERvYm5pd05XeStqNGNQU3dH?=
 =?utf-8?B?WCtzTVFxMHROSm5mZE5VRnEzSTFSS0RkQVkyclNiVHlyalBjUVJlOGdwdTM2?=
 =?utf-8?B?N09CL29OdEN4a2tQOGN0TTJWN3lseUF6N2VaOEpsRFU1ZDFNZExTd1JKZ295?=
 =?utf-8?B?UTROUGNjdUdUbU5rdngzM2R6eGtIMU0yUGI3Q3J1dURScFYwdkwzdGFIdTVz?=
 =?utf-8?Q?dkpwRdPNEabD1GkeyXtvS/MfI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33f32089-d95d-4ee5-596d-08db2eb32da8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:05:30.2932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P1zdq+Srhz8kivg+VDfY/sH0Fb7cKRSLFCYtmzkpr3AW0HBqol0eTHfJDwZUWa2e/OORmtJDlCSTu9IxaDNJzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 14/29] drm/i915/tc: Fix up the legacy VBT
 flag only in disconnected mode
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTQvMjldIGRybS9pOTE1L3RjOiBGaXggdXAgdGhlIGxlZ2FjeSBWQlQgZmxhZyBvbmx5IGluDQo+
IGRpc2Nvbm5lY3RlZCBtb2RlDQo+IA0KPiBBIGZvbGxvdy11cCBwYXRjaCBzaW1wbGlmaWVzIHRo
ZSB0Y19jb2xkX2Jsb2NrKCkvdW5ibG9jaygpIGZ1bmN0aW9ucywgZHJvcHBpbmcNCj4gdGhlIHBv
d2VyIGRvbWFpbiBwYXJhbWV0ZXIuIEZvciB0aGlzIGl0IG11c3QgYmUgZW5zdXJlZCB0aGF0IHRo
ZSBwb3dlciBkb21haW4NCj4gLSB3aGljaCBkZXBlbmRzIG9uIHRoZSBhY3R1YWwgVEMgbW9kZSBh
bmQgc28gdGhlIFZCVCBsZWdhY3kgcG9ydCBmbGFnIC0gY2FuJ3QNCj4gY2hhbmdlIHdoaWxlIHRo
ZSBQSFkgaXMgaW4gYSBjb25uZWN0ZWQgc3RhdGUgYW5kIGFjY29yZGluZ2x5IFRDLWNvbGQgaXMg
YmxvY2tlZC4NCj4gTWFrZSB0aGlzIHNvLCBieSBmaXhpbmcgdXAgdGhlIFZCVCBsZWdhY3kgZmxh
ZyBvbmx5IGluIHRoZSBkaXNjb25uZWN0ZWQgVEMgbW9kZSwNCj4gaW5zdGVhZCBvZiB3aGVuZXZl
ciB0aGUgSFBEIHN0YXRlIGlzIHJldHJpZXZlZC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMgfCAxMyArKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggZTYzZTljNTdlNTYyNy4uZTYxZGFhNDAz
NTZiNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBA
QCAtMjk4LDYgKzI5OCwxMSBAQCBzdGF0aWMgdm9pZCB0Y19wb3J0X2ZpeHVwX2xlZ2FjeV9mbGFn
KHN0cnVjdA0KPiBpbnRlbF90Y19wb3J0ICp0YywNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOw0KPiAgCXUzMiB2YWxpZF9ocGRfbWFzazsNCj4gDQo+
ICsJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgdGMtPm1vZGUgIT0gVENfUE9SVF9ESVNDT05ORUNU
RUQpOw0KPiArDQo+ICsJaWYgKGh3ZWlnaHQzMihsaXZlX3N0YXR1c19tYXNrKSAhPSAxKQ0KPiAr
CQlyZXR1cm47DQo+ICsNCj4gIAlpZiAodGMtPmxlZ2FjeV9wb3J0KQ0KPiAgCQl2YWxpZF9ocGRf
bWFzayA9IEJJVChUQ19QT1JUX0xFR0FDWSk7DQo+ICAJZWxzZQ0KPiBAQCAtNjI1LDggKzYzMCw3
IEBAIHN0YXRpYyB1MzIgdGNfcGh5X2hwZF9saXZlX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfdGNfcG9y
dA0KPiAqdGMpDQo+ICAJbWFzayA9IHRjLT5waHlfb3BzLT5ocGRfbGl2ZV9zdGF0dXModGMpOw0K
PiANCj4gIAkvKiBUaGUgc2luayBjYW4gYmUgY29ubmVjdGVkIG9ubHkgaW4gYSBzaW5nbGUgbW9k
ZS4gKi8NCj4gLQlpZiAoIWRybV9XQVJOX09OX09OQ0UoJmk5MTUtPmRybSwgaHdlaWdodDMyKG1h
c2spID4gMSkpDQo+IC0JCXRjX3BvcnRfZml4dXBfbGVnYWN5X2ZsYWcodGMsIG1hc2spOw0KPiAr
CWRybV9XQVJOX09OX09OQ0UoJmk5MTUtPmRybSwgaHdlaWdodDMyKG1hc2spID4gMSk7DQo+IA0K
PiAgCXJldHVybiBtYXNrOw0KPiAgfQ0KPiBAQCAtODI2LDkgKzgzMCwxMiBAQCB0Y19waHlfZ2V0
X3RhcmdldF9tb2RlKHN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YykNCj4gc3RhdGljIHZvaWQgdGNf
cGh5X2Nvbm5lY3Qoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjLCBpbnQgcmVxdWlyZWRfbGFuZXMp
ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsN
Cj4gKwl1MzIgbGl2ZV9zdGF0dXNfbWFzayA9IHRjX3BoeV9ocGRfbGl2ZV9zdGF0dXModGMpOw0K
PiAgCWJvb2wgY29ubmVjdGVkOw0KPiANCj4gLQl0Yy0+bW9kZSA9IHRjX3BoeV9nZXRfdGFyZ2V0
X21vZGUodGMpOw0KPiArCXRjX3BvcnRfZml4dXBfbGVnYWN5X2ZsYWcodGMsIGxpdmVfc3RhdHVz
X21hc2spOw0KPiArDQo+ICsJdGMtPm1vZGUgPSBocGRfbWFza190b190YXJnZXRfbW9kZSh0Yywg
bGl2ZV9zdGF0dXNfbWFzayk7DQo+IA0KPiAgCWNvbm5lY3RlZCA9IHRjLT5waHlfb3BzLT5jb25u
ZWN0KHRjLCByZXF1aXJlZF9sYW5lcyk7DQo+ICAJaWYgKCFjb25uZWN0ZWQgJiYgdGMtPm1vZGUg
IT0gZGVmYXVsdF90Y19tb2RlKHRjKSkgew0KPiAtLQ0KPiAyLjM3LjENCg0K
