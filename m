Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2EF4E5B70
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 23:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F53010E1D2;
	Wed, 23 Mar 2022 22:47:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F3D10E189
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 22:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648075654; x=1679611654;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TVI89OwJskAknABfEHUwa/g7nuBOZCMVhxyZdSvXzjg=;
 b=nAn9+oSX5oYI8WrnxFtwJWnadKdB/MsBD6e156TWCpRL7SZaIBAwIbZl
 PvCVotVO1osPF5C0nvPI0eEaLzBLdS3Z2aDFeV8WG3GWsZ37BeaCnf/o9
 OKROwEkBLly2JP0ymyNl5SHmVqdmGPeezQu4xtMvk2KB67e+Lh3xhvBIJ
 lZTv9B4nOIeaLT1CQi5J0vaukmnttX1AasnDyUzWrUkoSBLNYnD9ckQLq
 eJGQoB+cV1MdBwGdK+unRNC5JH8q8MiHGX7g5/gIWU+RCy+3DtMSdmFvZ
 838m9FmwCVVCdIMU0dtQB03anLjLatmlsCAZkLQuSxpMRv3otWmQjGZlQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="255807318"
X-IronPort-AV: E=Sophos;i="5.90,205,1643702400"; d="scan'208";a="255807318"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 15:47:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,205,1643702400"; d="scan'208";a="501177230"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga003.jf.intel.com with ESMTP; 23 Mar 2022 15:47:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 15:47:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Mar 2022 15:47:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 15:47:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fOuvDOjBqQVxoy+n/AoHSLmWQ8+nQkow/lpofBtYQoerSjSkZXtqVBp8X3H8ugRLjPIJuHU2QjC5azKi2iyGBYLf1+cXxV/yWeqS2B/3BHLDXqkoo3jOOROkXvRn0MkpqQFdc886+zeBekxe1fLUiiNVrbc98F01vKGkCcbVO2nFJghM0phyBAdz3Kf6iM6Y+Eyl9Z+3R/HolovYG4u5hOWugwVGuf5FabWIUTx3mtXKXDuezu4g5Fr11CoIOQ2+vPE3UMKDrAfskIRxckdX70Vfgdr8aqbGwhUD+jtNtXch44seSlwpwbBr9xVqv2AMvlDNgcQjX936oMt8DgazmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TVI89OwJskAknABfEHUwa/g7nuBOZCMVhxyZdSvXzjg=;
 b=RFyjfRcDyUoiBpPhJOgjYpT3NqChpWIcq8Tptauvb2qD4fxyRlHpR7UHVRx41LYPG4i/Nl5sq8EBCg5xbbUUEhfWXkUILwpAXSUGItD1ksh7iIC0B5lELp+W8AjlWVMgl/R/MwARrx/SJuT9xUjDDGVzfSu739KrAdiNdwyqaGscQ5RTG0IycQ7ygZTAQK3lzbZcpWVNtI+aPTR5P06IHtGHmEJymDaJWaA+1pQqmKoGBXksZeTxk5mQYLgUx/jPxXojvivFWrq0GeB+qi0uZXluAxqSF6wq+eF5uAfJQELOKx1LoQnaBX+AJZqfbFfIrICUE1Jln1NNwqDmPpKbfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3013.namprd11.prod.outlook.com (2603:10b6:a03:8b::19)
 by BY5PR11MB3926.namprd11.prod.outlook.com (2603:10b6:a03:184::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Wed, 23 Mar
 2022 22:47:13 +0000
Received: from BYAPR11MB3013.namprd11.prod.outlook.com
 ([fe80::892a:8e02:3c23:dcec]) by BYAPR11MB3013.namprd11.prod.outlook.com
 ([fe80::892a:8e02:3c23:dcec%3]) with mapi id 15.20.5102.016; Wed, 23 Mar 2022
 22:47:13 +0000
From: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/adlp: Fix register corruption after DDI clock
 enabling
Thread-Index: AQHYPvMaGkd5Fgo1606q9ZcB07Az6KzNi2kA
Date: Wed, 23 Mar 2022 22:47:13 +0000
Message-ID: <BYAPR11MB301370F955603FFFA7777460B2189@BYAPR11MB3013.namprd11.prod.outlook.com>
References: <20220323201749.288566-1-imre.deak@intel.com>
In-Reply-To: <20220323201749.288566-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f04e9114-2bf8-4762-67cd-08da0d1f12a7
x-ms-traffictypediagnostic: BY5PR11MB3926:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB3926A5DC0F3D24C1E42873BDB2189@BY5PR11MB3926.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: D4v93knxQam0+9MSu4F0ELDJmqnIt4ZLjB1J/BR9d0HiafO2fIk+4bXiq+gGVDvHpcX+XLWvgwYPIZcrtgRRDHQ1zsIiZBS4n2i+LPo/qKgJSoAIOGmD2OYjPtzTPBJ2RUWBnRykJ0W58EOkalBMkrcH8SJrJT4slMI6rsQ1n52yGDh4eLBEa0CcKNey4dEDs30wjWp8Nau4F9qpe4vXdCnyZC+URZJCWuLsvc+FXFietQRckbgMUPi1hKurxQAJPUYIBhV/qJqP8BLgHGoUJZVopac0ylazLSTsnRSt8nKFTaBbXWeHV28nWRicdic28+6Z+Awx/SjHlrS+j7Ujy3069nNaruQ7PRHY4hlU2yy2pyRnWsC/szdFsUqecvlUyWwQ95FISbbgsBgMJx82HXXvDWxQkr4+pohuwkyX6yLOiV7MIv5RpDKpF1/vnBe3zpXy2rGaecReMNejjRCgLiiRLXN/jDSMVVX/gWx/0QqnpJSlc0cSmT03Bjdws32fk26FFXcK0dQjlg/TcS1R63Pew5roFudpH8hXBNALdRtX+jTTt/lC/CK1zCSspYTZDHdGG+HNtZ32RkdZClPkwa+G82lyNLvOgC4s5mV6MMYLMAbe7R77eFpjZVBatrSIDXsBN03eCShcPNAryGSjyqVhPiJSSFy4OwfwcmtilQ2Xxu8QR3BkPWyzao2e1jL9WYWSCz09Bnbn4GPEF5JMrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66574015)(38100700002)(52536014)(2906002)(38070700005)(5660300002)(316002)(110136005)(82960400001)(26005)(186003)(83380400001)(107886003)(122000001)(4326008)(8936002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(9686003)(71200400001)(508600001)(33656002)(86362001)(55016003)(8676002)(6506007)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDhWQUFRWW9Nd3YvcmtMeHJVUzJ1bEY0M0J5Zy9LeWVEU0ZVcE5XTUVlQUt3?=
 =?utf-8?B?TVhIaCtRaWk1ekh5TEVsKzdiZ2tBU2RDZUM4eTA1eHc2Rk5ZTUFld2gvR3Qv?=
 =?utf-8?B?Y2hFejFlcmJtUlFwK25PRCtyZEFJQk5YRWhhWHlqNlE3dnhqR3N2V3dOQmpT?=
 =?utf-8?B?d09OaXY1OTFtc2Fsa2RYamdsZTI0eVVFWlI3RGJwcjBSUXBzY3JaMW9zYk1z?=
 =?utf-8?B?TnJnSXVRNTdQZHd4dkpJSzBqQVlPb0JuR05mcW8zT3pXeWt3cWZkTHp0ZW1P?=
 =?utf-8?B?UkVldkZDZ1psdkl4ZW5OZ3R0OVJTQVllMjZ5TDFKVVJmaWNrRVNkYVlPUTYw?=
 =?utf-8?B?YlViSWJWUCsrb1Y5OXhyTTFweHV6UVFKSm03RUVDTjVYVzdRMlo3RUt1MXEw?=
 =?utf-8?B?MjhmeXZjYTRuWWk5RU9kVndDVWgyRWI2bUp0UDRxMDBPcnJKY2VqZUJjWUR1?=
 =?utf-8?B?anBTUHE2T3BqMFZ0dEo3MlZZMS9TcDFpUGsvRTJ4UEdRcXFLWk9aaUM3aVBX?=
 =?utf-8?B?N3VsTk5tcnpKd2xNWjJUMmVvaitVUFBwNmh6WHFwV1ExVGdSemRKU3hmM3Rp?=
 =?utf-8?B?WVBvRGVjczd4Z1NaQkFKVXVHVTFSTVJXbU4zbUNxSDBTTmFNaHJPWDlWOHdz?=
 =?utf-8?B?bG1hZm94TzNCNUlKSUUyZTU4UUtFa25zOWZpUXFmWFJNLzhocVdFc0FLSnpl?=
 =?utf-8?B?WVNOTWdmVFM2em11TzJYOHY1NDNEL1lMaFpmaHFIUXduanRIMGNRT29zWnps?=
 =?utf-8?B?MVFFVDBBdTFmdlJJUjBOdG1VYmw5bWp3YzBoVUl3RFFkOTdFWnBkUmJ4VUlq?=
 =?utf-8?B?MEFXekpBNmdGZmZCWnBRZE5QS3ZXK2thdFp1TmpjdkpjTFJwbUdBTEFZUWI4?=
 =?utf-8?B?d25zMWZNeGZ3dHNncjNJQVMvQWFFVmtzVmJHdFpuUlJjbU1iNmtDclRRKzJK?=
 =?utf-8?B?bGxuK0w2blY1YTRZQmEwOXNRLy9HUUpaMHJ2U1RaR3Fja3l4YjV2UFJtYm1a?=
 =?utf-8?B?Z3BoYk8ycmpFck5aSjNScTRWNDlJdlNFZ3lEczRoM1gxTlNuMkJrVWhwcDhv?=
 =?utf-8?B?cDhwMkI2V3hTNzZTeWttOWFhOU5HQmE4VFVxbnBWRW5TMDdyQkdpT0VCRytp?=
 =?utf-8?B?elJPZnE1UjcyVlZhNG93cDRyWjhzRkFPUUZDWEhqcGpUam1ndGtDbkdRYlIz?=
 =?utf-8?B?MHlpMTFSL21EL2U0dXVQeDUra3pzcGNMNnBrZWhVZ00wdHdEVGdPYU5MR1gv?=
 =?utf-8?B?TzMyVzJiNDV1SVJJWWVkQjBsb3ZocXlVanUxNFdQWTR5TDRIandnRkdmeDhk?=
 =?utf-8?B?VWlSVStxWXkvbEs0a2xEYlh2dUxnOXdKMlgyWTZEV0FTTStVakhjdlFPZ1k1?=
 =?utf-8?B?K0JUM0haTjhmWUNtM1hYajVnTHpFTkdVdzBwMlRGeWZJOUJiSU5BeGhFaVRF?=
 =?utf-8?B?M0NpemhoVWJBekM3ODlOR0o5eEFGNmU4bUVFTktLeEFnM1N1SVFOS1ZmNnB4?=
 =?utf-8?B?WlVFT09KN2hSS25ybkFNckJIVjgxeEtaSjl3czVGaFVSUk9GVlFnSVo5eEZZ?=
 =?utf-8?B?d1hidm1mZEcwaFRDVHBYN3o5OUFnaWlFRDE4SEF4T1N3cHRCbEZwbFpwR09H?=
 =?utf-8?B?VDlmRldCcks3b1NNMVowK1dEY214czZzdkdYcUNpODlrekcySG5JZUtuWDRY?=
 =?utf-8?B?UXRSa3g3OGt3QVNQV054Q1FRNEhCeTluL0Q3VmxjSGlSYmRqbS9EVDg3aGc3?=
 =?utf-8?B?V2lQdHE3ekVuTGl4OWFIK0dyeVY1NktyVWRMR2k4cDJ6TlptSXRCQ0lCcHFy?=
 =?utf-8?B?NktBMTZZUlpZWEEvOW1iYVRXMW5oT21DODVBdkNTSWNTV0h3cUU3aXZyQzZx?=
 =?utf-8?B?MndqLzNmZW5YNkxIWU9vVjRScFFFUjBZRnFzUUFPZXhrL1ZIS2NielIvaDA0?=
 =?utf-8?Q?7Y3E3+cTUGYAGGemQIPWHsm5eZ2pkdAb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f04e9114-2bf8-4762-67cd-08da0d1f12a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 22:47:13.3361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9MtFB35GVuGRaMh3IpU+FWxwcA6Sqp773WTdhyRydtsCFUBjGwk+gIrDCv057oLydIpRKXQoyCJXs8QGyWqshl9QHEWpw2ndkj+6hy1zDCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Fix register corruption
 after DDI clock enabling
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDIzLCAyMDIyIDE6MTggUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBK
b3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgUnVueWFuLCBBcnRodXIgSg0KPiA8YXJ0
aHVyLmoucnVueWFuQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9hZGxw
OiBGaXggcmVnaXN0ZXIgY29ycnVwdGlvbiBhZnRlciBEREkgY2xvY2sNCj4gZW5hYmxpbmcNCj4g
DQo+IEFjY2Vzc2luZyB0aGUgRERJX0JVRl9DVEwgcmVnaXN0ZXIgd2l0aG91dCB0aGUgcG9ydCdz
IERESSBjbG9jayBiZWluZw0KPiBlbmFibGVkICh0byBzZXQvY2xlYXIgdGhlIFR5cGVDIFBIWSBv
d25lcnNoaXAgZm9yIHRoZSBwb3J0KSBjYW4gbGVhZCB0byBhDQo+IGNvcnJ1cHRlZCB2YWx1ZSBy
ZWFkIGR1cmluZyBhbnkgaTkxNSByZWdpc3RlciBhY2Nlc3MgcmlnaHQgYWZ0ZXIgdGhlIERESSBj
bG9jaw0KPiBpcyBlbmFibGVkLg0KPiANCj4gVGhlIHJvb3QgY2F1c2UgaXMgdGhlIHdheSBjbG9j
ayBzeW5jaHJvbml6YXRpb24gd29ya3MgZm9yIHRoaXMgcmVnaXN0ZXIsDQo+IGNvbnRyb2xsZWQg
YnkgdGhlIENISUNLRU5fRENQUl8xIERESV9DTE9DS19SRUdfQUNDRVNTIGZsYWcuIENvcnJlY3Rs
eQ0KPiB0aGlzIGZsYWcgc2hvdWxkIGJlIGNsZWFyZWQgb24gQURMUCAoc2VlIHRoZSBCc3BlYyBs
aW5rIGJlbG93KSwgaG93ZXZlciBhZnRlcg0KPiBib290dXAgdGhlIGZsYWcgaXMgc2V0Lg0KPiAN
Cj4gT25lIGVhc2lseSByZXByb2R1Y2libGUgaXNzdWUgaXMgYW4gdW5jbGFpbWVkIHJlZ2lzdGVy
IGFjY2VzcyBvZiB0aGUNCj4gUFdSX1dFTExfQ1RMX0RESTIgcmVnaXN0ZXIsIHByb2dyYW1tZWQg
cmlnaHQgYWZ0ZXIgRERJIGNsb2NrIGVuYWJsaW5nIHRvDQo+IGVuYWJsZSB0aGUgcG9ydCdzIERE
SV9JTyBwb3dlciB3ZWxsIChzZWUgdGhlIEhTREVTLCBWTEsgbGlua3MgYmVsb3cpLg0KPiBXaXRo
IHRoZSBjb3JyZWN0IHNldHRpbmcgYWJvdmUgdGhpcyBwcm9ibGVtIGNhbid0IGJlIHJlcHJvZHVj
ZWQuDQo+IA0KPiBCc3BlYzogNDkxODkNCj4gSFNERVM6IDE4MDE5MDI4MTU0DQo+IFZMSzogMjgz
MjgsIDI4NjU1DQo+IA0KPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+IENjOiBBcnRodXIgSiBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCkFja2Vk
LWJ5OiBBcnRodXIgSiBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDEgKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDMgKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IGEwZDY1MmYxOWZm
OTMuLmQ4M2JkN2E3NWM3ODgNCj4gMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBA
QCAtNTkzOSw2ICs1OTM5LDcgQEANCj4gICNkZWZpbmUgICBJQ0xfREVMQVlfUE1SU1AJCQlSRUdf
QklUKDIyKQ0KPiAgI2RlZmluZSAgIERJU0FCTEVfRkxSX1NSQwkJCVJFR19CSVQoMTUpDQo+ICAj
ZGVmaW5lICAgTUFTS19XQUtFTUVNCQkJCVJFR19CSVQoMTMpDQo+ICsjZGVmaW5lICAgRERJX0NM
T0NLX1JFR19BQ0NFU1MJCQlSRUdfQklUKDcpDQo+IA0KPiAgI2RlZmluZSBHRU4xMV9DSElDS0VO
X0RDUFJfMgkJCV9NTUlPKDB4NDY0MzQpDQo+ICAjZGVmaW5lICAgRENQUl9NQVNLX01BWExBVEVO
Q1lfTUVNVVBfQ0xSCVJFR19CSVQoMjcpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBpbmRl
eCAyYzNjZDRkNzc1ZGFmLi40MjkxOTYzMDEzYzUxDQo+IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMNCj4gQEAgLTc0NzAsNiArNzQ3MCw5IEBAIHN0YXRpYyB2b2lkIGFkbHBfaW5pdF9j
bG9ja19nYXRpbmcoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiANCj4g
IAkvKiBXYV8yMjAxMTA5MTY5NDphZGxwICovDQo+ICAJaW50ZWxfZGVfcm13KGRldl9wcml2LCBH
RU45X0NMS0dBVEVfRElTXzUsIDAsDQo+IERQQ0VfR0FUSU5HX0RJUyk7DQo+ICsNCj4gKwkvKiBC
c3BlYy80OTE4OSBJbml0aWFsaXplIFNlcXVlbmNlICovDQo+ICsJaW50ZWxfZGVfcm13KGRldl9w
cml2LCBHRU44X0NISUNLRU5fRENQUl8xLA0KPiBERElfQ0xPQ0tfUkVHX0FDQ0VTUywgMCk7DQo+
ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgZGcxX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gLS0NCj4gMi4zMC4yDQoNCg==
