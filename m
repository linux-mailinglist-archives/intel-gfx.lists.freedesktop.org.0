Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C168623C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 10:00:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7195D10E3D3;
	Wed,  1 Feb 2023 08:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67BFA10E3D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 08:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675241997; x=1706777997;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YtYJ5cJ5fYG53ix8QGW6uaR67FgC47nEISbGxpYkTCo=;
 b=LZQIEVm+mFdL/GWFqQjxPu0UqKcTFdVuef05WD2ROgju9GQf73TB4FYJ
 ZXdHCAfjAoVzQonktPAAi4ldtYqQbABGvHlzIOxrB3ngCQ6+TBUKYb+Zx
 bMiDMHY1OBpYf53CJJTPWztcKgEbJWXqZydigtK1tPLc6+izbuP4bHIqt
 VWOvYjKuNDU7oF8ELuv/Y2j4jaRZgllQOGdUDlDCLEFcWDuzASZpE7vbi
 O8SHiSWUl+KmMRXvl9TXMeAxrswOJ/YZokLx8QEesn+se0NfDXT0zikjC
 xXWIMm5h3zXu9+LLtX6mZlsfxbMRbtb45q4qcBIo1rooWdJXIQO/VJ+uM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="326745847"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="326745847"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 00:59:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="666852696"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="666852696"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 01 Feb 2023 00:59:56 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 00:59:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 00:59:56 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 00:59:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GK3IfJYUZ0Iix30QqYURZTR6LCfQe4CgHea22QWPcasO9gGCtyYR2epwC3h4dPp+ec5WbskGkB2QFlNm2qkvlKIe1j5HmrLSG3DGagyZ9cO/IltZwYT3IbcRSOWksnNFaLYo29MT5Dko83DeyFr3odfA2AadE0Ies2uodh4AD4wojc5cVpBdcWCfCYhS8C8Yfhn0rtscH66A3CidyGfqMA54c3z+22Q4DuFupvfVWjw4UnDx4UGLXcznMRM1HrnvDVLYrtGDQLVms70+Kdz/H1siyyDLqy/TbjuT44GnDlSUX1S5QUTtWYnnM1SkbQcfQcaX9eZU9aSgMMUT/HCOaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YtYJ5cJ5fYG53ix8QGW6uaR67FgC47nEISbGxpYkTCo=;
 b=Zd3cg6WwHrT5+rqZYGcgrzM9XE5DcHT8lPpk1CmZjnZfmwF6ZB+iQPg4gjSr+w14UkDuYWC7W8pwNPvORKl9uAJr+xjbJne1JY47+TiDE7ZUJnKt89fgQS0ttABJ8lggRNlaDb1+rYLomLyR+ekzX04vxe/Im68eSMopcVRjsybyCNtcGBnWBhbrQo16LhxlPry/zaOAUK5+P+8dXS+tHfMaTK5zKHUgtPHNmfJJd4QifBztBHEXc0ifd6bUXEGXTJmaOGIB1FxgBjmQrjK1GUSF7CEMnAnHDr8tn6I5/9bMBPykR48wLDewvJmZi/eEQhZa0TLxUWnjSiYP9hDH3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by CO1PR11MB5108.namprd11.prod.outlook.com (2603:10b6:303:92::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Wed, 1 Feb
 2023 08:59:54 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6043.038; Wed, 1 Feb 2023
 08:59:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v9 5/6] drm/i915/mtl: Add function to send command to GSC
 CS
Thread-Index: AQHZNT5XIKbiRsz90UG6Gfcdl1JaGa65yWsAgAAC8DA=
Date: Wed, 1 Feb 2023 08:59:54 +0000
Message-ID: <MWHPR11MB17412266CB2B40CD702E8920E3D19@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230131063342.2811275-1-suraj.kandpal@intel.com>
 <20230131063342.2811275-6-suraj.kandpal@intel.com>
 <20f86b7f8b0aea2fb32c6e6635d5e8cedcbdfc19.camel@intel.com>
In-Reply-To: <20f86b7f8b0aea2fb32c6e6635d5e8cedcbdfc19.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|CO1PR11MB5108:EE_
x-ms-office365-filtering-correlation-id: 43ebfcd7-46a6-4a90-69a5-08db0432af7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BdxlepaFfOcWG41fYFzM2P/wqJq21uYYvVr6+tulwz5J5efchQkyVXOr9HxVH/56QauTD72s9awiLVGMyNp5JSF4jTW+CipFqO56nJX/QBO6Mlm2H1kfzu7HT3bi9iC44MRK7/b0UctEhy3e13cJpC+m58dAYSKVgyFyLOl43e/cfxOjbje8leZpXDyHcB4jgehdnw658+NwtpCahe11+uPXg+cdgBQVtM9dotdtfBGPw2KKOdNnE2dSTDLz9rICcsQUCVYBguNUG06CC9ACEXpHFFB6lajzaDyIR1f0k11jLq4whFWLsoCOVnXq+fA8KQ1n8YrIWeyyigCZnHRzmxJiPiOz1GzZXY+H+9OmWFU0IAYRTWZuJhDP+swG3zNxd71TM5U/LH+q96QP62wVRNoTCcwvDnNLY6Xhnyj82bwxACrAcPh9wq4qxCfhXKcFEQf5jH+baU2oI8lIVQE4qejg5oJKlRFeB7l/L8gV5/YjNLZv6HUlC0yfwDPbJirnbQgp4dM+CjVOt7QwxoDwrnllF1O/gaLulkmRmADddEu7Z455vO/Hbxuo/HDYpwd7x3hPqwfa751Ss34r8BUb0FGKxZB/UWBwFCjNvNjqdiTceKs2qlKeXK0Rkc63Cboo7aqYnof+oCReSUtBPEToS6VISGaTI6m7hCcEj6P0uPEmYo8FmJkxRIV9pVukI4CN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(346002)(376002)(39860400002)(136003)(451199018)(52536014)(316002)(110136005)(54906003)(5660300002)(7696005)(4326008)(71200400001)(41300700001)(2906002)(8676002)(8936002)(66476007)(66556008)(478600001)(66946007)(26005)(9686003)(64756008)(107886003)(6506007)(53546011)(186003)(83380400001)(66446008)(38100700002)(122000001)(38070700005)(76116006)(33656002)(55016003)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEp3bTNISEZIMDBpaUVKVGNlUmZjbVJhK0dQWTUvNzl3ekwyejBHY3V2WUdT?=
 =?utf-8?B?ZzBpTkkrcWtWM0pNVnR3dEwzeDl1aUpELzdYaVRFeGxUUGhqTjZkNlpYTXU1?=
 =?utf-8?B?eEVUcWxKcndORHRLT1h3bmVhdUc0K1h2am5YbU1zZWplWFJsdUR4MFJPU1Vv?=
 =?utf-8?B?QzQzNEhpazdrR1daQTlhcDFjZVJiVVFRcTJuZlBLaTZhSndxeTNOZGg0Vm1U?=
 =?utf-8?B?bGtkbkt1Y0pjQmUvZWJML3Izek11ckE1MGZRZ1FBUnByZnhtbGphY0hHb3NO?=
 =?utf-8?B?RW5URWVrbkpySXZoZjM3VnhnU25qNDR2RUk4eEJNTHI1bDBhMk1yRXZaZHhG?=
 =?utf-8?B?MUJOWWRXTzl1NHlhb0FLR2MvL21YQnBOTUVENWJuekVNS2QzL21GK1RsdCtU?=
 =?utf-8?B?a2EzUzd5YlpPV0JUb3QrOS9rOFpveXVhQjlOSSthNEd6amNXcFhGOXpxaG55?=
 =?utf-8?B?aTFiN2ZMdzZ6RlZCQnpSbTR6ckc3MjVVWGFoK2NtTzVvaVJNWlhMZ0N5cVoy?=
 =?utf-8?B?K29pc2FkSlBUL2pjWS9sM1JVaXZCR3JuOHdXOXR4UmFrVVdrSEJtcXZiWHo5?=
 =?utf-8?B?RXRRa1F0R29PZms0eHh4aUVnZFp6ME9EK3RTL3Q1VFVES1J4U08yb2FaQW0z?=
 =?utf-8?B?cVRzWXh1emR5Q2xGT1J1UEdvS3pKQWkrek1Td2FzTURjTEc2eWhUYVhRbFgw?=
 =?utf-8?B?YmtCaXlpdEUxZFJmZTkzT2x2eG1Qb3dDOXV6TEp3MUpOZERKS2dnbjNhNEly?=
 =?utf-8?B?dDZzYlNxaXY5OXRVcmlsZHYrS09vb2ZRZm9Rb0tlUU5lSUZ0OUhhaEhVMXpx?=
 =?utf-8?B?VmxPQVJmTG1NRWp4Q2JKTUZGZWJjZGxlRnpUUzdjUFpVTkF3RWZ2QlB0aEdT?=
 =?utf-8?B?REtqWFdndkx6S0R4NXdETUE1MEZsVzZrcnJUQ0tIWWthR0F2eGlLRXM3bjNP?=
 =?utf-8?B?NTA4UExDaUQzUDc0NlZsaHJSNnp4NVllbTRhemsyZE9XejlaYm9IeGNwdlht?=
 =?utf-8?B?cXhBblVuMGxUY0RqdDg3bWpGdlVZbkVMeStWdTVIeUVPWFV1Q0h0ZzJVYi9E?=
 =?utf-8?B?a3A5ZmtpWjN4WmtGY2VTRGMwcFJVdnRsb1M0eGRQaTZod0hpYVlKVDBHazV0?=
 =?utf-8?B?YW1vZmRaNXVFc2R4aWg4MnJNQTdNQXdvNUlhVm9BN042cmdUdUxOZHcrdDFP?=
 =?utf-8?B?VUVjUWgvMVVMUFpzNzZDS2R2L2lHdzZPMHVNUDArKzhWTTB5UXpoM2RVaDFH?=
 =?utf-8?B?YlNZNk82SmIzanYyS293L2tnODR3RU1zbUVaVzlhaDZyU3o1a3dCV0YyUUhE?=
 =?utf-8?B?RCtrL1R1Myt2YUxCczJGOWlDKzByQXFFOU1kQnRYVmFQeGpDcytCcTMzWXFz?=
 =?utf-8?B?Q05kS3ZBbjFzb3JrMTZ0Wk03dlhkQkhwcVE5TXNib0F2MW4wRjNTOXU0S0lp?=
 =?utf-8?B?b0Fjb3ZLQVA5SzBBT0FGNEZVbzZ2OFczMngzR2tWSWFJbzBPWWxDUmxKVmFW?=
 =?utf-8?B?TURiRWFiQkcwVUVoYWdmLytZTzF3VnB2eVMzUCtpQ1VlWTFFTURXQUtrR1F1?=
 =?utf-8?B?elpwNkJ6SXpqdlZWd3ZYWDVremh2NitTc1ZMME5JVGNSdC83Wi8xSDlyNDF0?=
 =?utf-8?B?VzN2amNFTzlrdmZRUHh5cjBRMGJJMTBNRTVOdmZKNXpqaXRlaTIzbnovMnQy?=
 =?utf-8?B?bUtZQldWMG5hMStIVU1ZU25IUlBNK2U0UjYxWk4rbjhoRXAzcU1mRzJ2TytL?=
 =?utf-8?B?QVkyQnVIKzFxVDliMnMvdTJkcGE2TG4vVk5qWVVKaXo1Q2ZEV3JqaXhtaTFB?=
 =?utf-8?B?REJac1o1R3pBSjEwVlFqWlNRaFRmRURQZy9hR1lwekpEM2lkZGorbk5yWk14?=
 =?utf-8?B?ckUxV2FEQXBDRFlBOGR3Rnhua211ejlYdk90NllmNENJMFNIVDVvU2RqSm1w?=
 =?utf-8?B?eFZneTdVTGRyVnZObWdoU3FTWjRNdzNRUkoxZTVQeVdnaXRoem5vT2hiQXow?=
 =?utf-8?B?KzlwbGp1eE1FU3FlOE1TYnJJM3BZNm85MmprZ3ZWQjdFbjhXS3ROREhzVWpH?=
 =?utf-8?B?UzZEVzZiMEhqTWUwZG93MzNQTlFtZnQyNXVRVlU2dGpOaHZnK2trUFVXcldw?=
 =?utf-8?Q?k5vVChl2mwQUOjSBhCspZNsJc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43ebfcd7-46a6-4a90-69a5-08db0432af7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2023 08:59:54.2008 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oJ87wFH14ITtx0xGtj15Px+7AVhMKZfo+pOTucKorV5jy0Pfck61CET0lI99TZW4OVYvZ0ZtbYFYP5nARL1ncg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5108
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 5/6] drm/i915/mtl: Add function to send
 command to GSC CS
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

PiBGcm9tOiBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4
aXNAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDEsIDIwMjMgMjoxOCBQ
TQ0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsgaW50ZWwt
DQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPjsgTmF1dGl5YWwsIEFua2l0IEsNCj4gPGFua2l0LmsubmF1dGl5YWxA
aW50ZWwuY29tPjsgQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUNCj4gPGRhbmllbGUuY2VyYW9sb3Nw
dXJpb0BpbnRlbC5jb20+OyBHdXB0YSwgQW5zaHVtYW4NCj4gPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2OSA1LzZdIGRybS9pOTE1L210bDogQWRkIGZ1
bmN0aW9uIHRvIHNlbmQgY29tbWFuZCB0bw0KPiBHU0MgQ1MNCj4gDQo+IENvbmRpdGlvbmFsIFJi
IHdpdGggYmVsb3cgZml4IGluIGludGVsX2hkY3BfZ3NjX2ZyZWVfbWVzc2FnZToNCj4gDQo+IFJl
dmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNv
bT4NCj4gDQo+IE9uIFR1ZSwgMjAyMy0wMS0zMSBhdCAxMjowMyArMDUzMCwgS2FuZHBhbCwgU3Vy
YWogd3JvdGU6DQo+ID4gQWRkIGZ1bmN0aW9uIHRoYXQgdGFrZXMgY2FyZSBvZiBzZW5kaW5nIGNv
bW1hbmQgdG8gZ3NjIGNzLiBXZSBzdGFydCBvZg0KPiA+IHdpdGggYWxsb2NhdGlvbiBvZiBtZW1v
cnkgZm9yIG91ciBjb21tYW5kIGludGVsX2hkY3BfZ3NjX21lc3NhZ2UgdGhhdA0KPiA+IGNvbnRh
aW5zIGdzYyBjcyBtZW1vcnkgaGVhZGVyIGFzIGRpcmVjdGVkIGluIHNwZWNzIGZvbGxvd2VkIGJ5
IHRoZQ0KPiA+IGFjdHVhbCBwYXlsb2FkIGhkY3AgbWVzc2FnZSB0aGF0IHdlIHdhbnQgdG8gc2Vu
ZC4NCj4gPiBTcGVjIHN0YXRlcyB0aGF0IHdlIG5lZWQgdG8gcG9sbCBwZW5kaW5nIGJpdCBvZiBy
ZXNwb25zZSBoZWFkZXIgYXJvdW5kDQo+ID4gMjAgdGltZXMgZWFjaCB0cnkgYmVpbmcgNTBtcyBh
cGFydCBoZW5jZSBhZGRpbmcgdGhhdCB0byBjdXJyZW50DQo+ID4gZ3NjX21zZ19zZW5kIGZ1bmN0
aW9uIEFsc28gd2UgdXNlIHRoZSBzYW1lIGZ1bmN0aW9uIHRvIHRha2UgY2FyZSBvZg0KPiA+IGJv
dGggc2VuZGluZyBhbmQgcmVjZWl2aW5nIGhlbmNlIG5vIHNlcGFyYXRlIGZ1bmN0aW9uIHRvIGdl
dCB0aGUNCj4gPiByZXNwb25zZS4NCj4gPg0KPiA+DQo+IGFsYW46c25pcC4uDQo+IA0KPiA+ICsv
KlRoaXMgZnVuY3Rpb24gaGVscHMgYWxsb2NhdGUgbWVtb3J5IGZvciB0aGUgY29tbWFuZCB0aGF0
IHdlIHdpbGwNCj4gPiArc2VuZCB0byBnc2MgY3MgKi8gaW50IGludGVsX2hkY3BfZ3NjX2hkY3Ay
X2luaXQoc3RydWN0DQo+ID4gK2RybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsNCj4gPiArDQo+IGFs
YW46IG9rYXkgaSBzZWUgdGhpcyBpcyBub3cgYmVpbmcgY2FsbGVkIGZyb20gaW50ZWxfaGRjcF9n
c2NfaW5pdA0KPiANCj4gPiArdm9pZCBpbnRlbF9oZGNwX2dzY19mcmVlX21lc3NhZ2Uoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50
ZWxfaGRjcF9nc2NfbWVzc2FnZSAqaGRjcF9tZXNzYWdlID0NCj4gPiArDQo+ID4gK2k5MTUtPmRp
c3BsYXkuaGRjcC5oZGNwX21lc3NhZ2U7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKGhkY3BfbWVz
c2FnZS0+dm1hKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpOTE1X3ZtYV91
bnBpbihmZXRjaF9hbmRfemVybygmaGRjcF9tZXNzYWdlLT52bWEpKTsNCj4gYWxhbjogaSBiZWxp
ZXZlIHlvdSBkb24ndCBuZWVkIHRoaXMgZXh0cmEgaTkxNV92bWFfdW5waW4uIEFsc28sIHRha2Ug
bm90ZSB5b3UNCj4gaGF2ZSBhIGJ1ZyBhYm92ZSAuLi4NCj4gZmlyc3QgY29kZSBkb2VzIGEgImZl
dGNoX2FuZF96ZXJvIiBhbmQgcmlnaHQgYWZ0ZXIgemVyby1pbmcgb3V0IGl0cyB1c2VkIHRvIGNh
bGwNCj4gaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2Ugb24gdGhlIGxpbmUgYmVsb3cuIFNvLi4g
ImlmIChoZGNwX21lc3NhZ2UtDQo+ID52bWEpIC0+IGk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNl
Ig0KDQpJIHNlZSB3ZSBjYW4ganVzdCBza2lwIHRoaXMgcGFydCBhbmQgZGlyZWN0bHkgZG8gYW4g
aTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UNCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCj4g
PiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmhkY3Bf
bWVzc2FnZS0+dm1hLA0KPiA+ICtJOTE1X1ZNQV9SRUxFQVNFX01BUCk7DQo+ID4gK8KgwqDCoMKg
wqDCoMKga2ZyZWUoaGRjcF9tZXNzYWdlKTsNCj4gPiArfQ0KPiA+ICsNCj4gPg0KPiANCj4gYWxh
bjpzbmlwLi4NCj4gPiAtLQ0KPiA+IDIuMjUuMQ0KPiA+DQoNCg==
