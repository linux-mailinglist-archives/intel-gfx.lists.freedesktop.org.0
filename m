Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D84B94F80D3
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:40:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2238A10E37A;
	Thu,  7 Apr 2022 13:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8760C10EA03
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649338814; x=1680874814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HVLQJP7vOmY7GvFl7uth3PY1O6eHDRfsU2h12Y3EntE=;
 b=LObnk9oo2JUZ7yulT5I9tWbvHXOYODJnqg7VxOxvZOBJvMy/7UFtQJCj
 DDcteYkshoUGdNW1QLiRlIcCImif7ZFqzDsUMiZvE8Pa7MGQf9t5dR7uQ
 Qx16lIDG9lxit+1MnDSxqKvUqH4llo/e64PkLr9vb9xnc/zV49+/AX7lG
 H4aN1seaMPkzkxiYwlWLC1NBVBKU0dpMpxII1rrsQqbcAFL039dAuWBS4
 6q400aO1f+Cnji+vvQJjmoD0vg7SrFRjTf2ztdm7z9DtjNtb/qI+wFJrq
 znpJtJD2OBqn42BvYTjv6hHNe0KX1KcolPgJk68EHj+TuzIW39sHQfCWn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="260158953"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="260158953"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="642484405"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2022 06:40:13 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 06:40:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Apr 2022 06:40:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Apr 2022 06:40:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gG9cRBIGZ7e8OXAhHTk2+8LtCvUGy+o4/qk9873aUivzU9oklsXg6l4ajA6G3qEXpRgnTE74Ncf0l8pvtk1AtQLqZy0JTAuxlz7gPdjx4LfQmIwomrtlhyw/3lG5y7z+KZkNNX0GjRNsdNs0igbaOwGV6aph+YNvsYXAYA5HbsO01gnu/b54AxnlgNFf5A8JB4XXqjlkFcZHYjbrCMHuGgM6NabpTWPcwjNYvV3asvTbY7vuv/bnWSAT3Wf9qFmjmUCmv/q7+vW//8f1sFfJ6ZBqU8AfX/7oH6GSE8fIo0DYrDK/Vf9+G5fcVuzQdURDgeR0pjhuKZEtlz5TslYhHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HVLQJP7vOmY7GvFl7uth3PY1O6eHDRfsU2h12Y3EntE=;
 b=VSR/VSHF3UccOqf0L4WN6wHd7N5gIl+zKaonE5075/fHsEbuXPFm+dDKwDH7vpDR/utXCytRK7R0/7Sr1LVRBper93CDXzejRxZMm2Kfd+z6fd3LmHEi4eJ64D4PyP0TmqAIdh3lVJmwmX2stqbCf0MBuSuCgMRNlGV2WY1IV+5eEInl7iihXngy2S9wALPDK7c+l1jdd3EPIXY3hWZ1OU9N56EwbwCqtzTQzKMEADdUKrwXWLIawbpv+Xw4J2pHYPEIaEFLx65nU6qNXF/0LbIUU8kFfF1ozrH2v/PaMspL+siAMaWWDlWCJxFL3dSWrZLDx5lAcv9rs49DpXGW4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BYAPR11MB2805.namprd11.prod.outlook.com (2603:10b6:a02:c1::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5123.31; Thu, 7 Apr 2022 13:40:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95d6:9bc8:b5c0:d23f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95d6:9bc8:b5c0:d23f%7]) with mapi id 15.20.5144.021; Thu, 7 Apr 2022
 13:40:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/display: Fix warnings about PSR lock not held
Thread-Index: AQHYSfnnfKhzHUQbVEa7W3xDodcbx6zkdguA
Date: Thu, 7 Apr 2022 13:40:10 +0000
Message-ID: <2bfbdad682c31f01e2aa1c7dd2eb2a2d0f642fb1.camel@intel.com>
References: <20220406210540.493610-1-jose.souza@intel.com>
In-Reply-To: <20220406210540.493610-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b8306b7-ee03-451a-0af5-08da189c22a6
x-ms-traffictypediagnostic: BYAPR11MB2805:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB28052F365043BAA5877E780D8AE69@BYAPR11MB2805.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cC7cbDniXuC1AIEq7u6j/t3PI3pCrPIa4RwLmWtdVGD/Js4+PD4YlR+Nt7U0j3UQqOobeooQDtsKFuqTNVgPCW3/Q/DCuI4dt3aMBR7PPcNEOQkG17GhH2wqcG/KkICMYpC9olTrjKZd/Xp1KT8jPqvKJU6+xPxuxt6TUcuqWZy85y01cR+TvloDwEXgF7iGMznVTzwrIYbuOxYk765ZIQykTRn8Bf9toJefeJSKOT3IG8w6aNs420Eha7J4elMCuyQUXcE4Arz60VfSmc0Ay9fozzl8mNo9xaIL6i17u4bPK1NSzF5qWLreDuCJZzbaynT5oigDvj/w7ompUetMNL1W/NWxPmJeLxC9wX/STTBUuAmAhkjq4xZp2prESw/5A2BhC/QpOjhg1w+0yPO7IZ4gZMWGFSwywaa4r+npP66NbasUUkbdykJcU0QicpDXz5lOvR6wSutM7vGr9TmCy1+YnmBgqle67SfqxAvPnJDY3tsOGuap/hKejUFNIdKO1tRaqZsR0fpU2SmPIaoP1ZyKkZy+Kv+B3GD5xpeX9YxgXVbKXon5BNYSgSjLOVtuDuG3oyK69Ud5uVbtvymmdEd//CPYWwOfjgh22/wko3PE/kvwpdvyqOD71evRNJoZ8/I+EdWSlMXBvB7kzrNVBZ73N2TPSSCgtlWjcwLFR5Isa2N6N5/Jnhi/Xe0AMQgZiIq0eQoK/R8qM3DVrwVJTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(122000001)(66574015)(2616005)(71200400001)(86362001)(38100700002)(38070700005)(2906002)(82960400001)(186003)(8936002)(107886003)(6486002)(5660300002)(110136005)(26005)(6636002)(6512007)(6506007)(76116006)(66556008)(83380400001)(91956017)(66946007)(66476007)(8676002)(66446008)(64756008)(316002)(4326008)(36756003)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEI2azRQVG5sYVIrbnBVekwzUE5LNWo0SVJZem5HczRWS1dOOXRsU2hLVkNx?=
 =?utf-8?B?MTVZL1FvYTB3ZHh2VkJobEJlSncrVVFLYzU2QTJmZnlVaUxLUG5RaHVKWWxV?=
 =?utf-8?B?UHZha2VmWUlpUm5yb3JiZndRMGRPbnZNTUp1Z3RwVEU2Rm5JUTZNMFFQWjJS?=
 =?utf-8?B?Z0xHcVNNY2oyK1BScC82eW9mcUk3cW5HZFlFdzk3Yk5WVjFnaTlzS3Fqd0Rw?=
 =?utf-8?B?dklPMU54MHNYOCswbWRldDNpb09EUlQrQlpHd1FVY2o2ZzU2Zmp3MGw5cHBj?=
 =?utf-8?B?RlVtYmx5bHd5c09PckJiUWlKdFUyaXBveWprNzNvQURCckxvdFdhb2VTR1ZJ?=
 =?utf-8?B?UVgvNjN0eWo4N3l1ODcveTJSMjk3YStVdkl3VmpBdmYwYXFkSGcxcExFNytz?=
 =?utf-8?B?MEhMbU9SbkZGandjNjlmSnJnNk51Ui9FVDVJVkg4dCs4Yzg3Uy9HT3dmZjJz?=
 =?utf-8?B?VXNUWDAxQzFKQXpId05EbjlPeTl1Tk0yRmtld0hwV2ovdCt5TFJ2TndKTTU0?=
 =?utf-8?B?V2FXZ0RBdkJ3Qi9ScWlBaXJZbEE2ZzBuSFRDVGNzQjlkN3p3MXVQTHM0cWl1?=
 =?utf-8?B?TmxvTFZSd25QczM0UW5aT3FXTklJczhxUm54K2dYMzlEY2ttYUJqQW1YQUJV?=
 =?utf-8?B?ZzRDVzhuUW55dWF4SnVPOWZHUW9MeFU4M2dldlBIQjZYQllYMGJraWRjMUtS?=
 =?utf-8?B?aVJuTzltUG5DVVBWb0RHK1VadytqNWNMRzVSVTdYL1NoNW9TQ21nWkoyeDRs?=
 =?utf-8?B?a2ZjYlpQaktQUDFJSWdRdkowbk5qb1hHc3BCQkZvdkd5dHpsQ0FEUDkyWXBK?=
 =?utf-8?B?MFAvTFR3bUh0WG5EV1B1Wlo4c1ZLWjRYeWZyaElmMDZ2cDNneXNyTXFrNHBr?=
 =?utf-8?B?WEI1bGlFd04vNGk3aUVtY1BUd25aRmVRanFIUVM3alJPZFgxSDFrOXhEbW84?=
 =?utf-8?B?L3dsNmZyTGpoV2Q0enpnMEF3RFh0VXdlVThvQ21ya2tzbDhHcmcrci90Y3d3?=
 =?utf-8?B?S2lrZHRQYnh3cE4rTmxZcmh5SXNpMklJaE1xNE9SOHdRa2dDa0lEalBYWmx2?=
 =?utf-8?B?V0lNVGk1bk9DOWUwOTdqYlhKTVpYYWRGbEFXMlE4Y0RDcFVuandnQWhBMVY0?=
 =?utf-8?B?WkdvWWNBcThOMkltc0ZhQzE2algvRENtYVNNT2Z1WldzbmJNVVZtWENmSmhJ?=
 =?utf-8?B?d2RhWGs3NnFZOHhvdW5NQ1c0UDBaN0hPaTZtL0k0SmJoTHVSN3JSUlZMTlpB?=
 =?utf-8?B?NG5jRnhEUWFlZk5pZFdCR1NwVkgyMk41ZWVSWStzdjduV2kra3QvZW1zSG1X?=
 =?utf-8?B?bUpqa1JneWVIcE1PbWZ3bW1TZEpENGRFZEN5NFdXcmtpMytKblNueWFrdW9i?=
 =?utf-8?B?eXZHY0JwLzZwdjdHdGVnTkdHcFZOdmZyY1JQbCs4WFFIUkhtNmZRcUpGMkwy?=
 =?utf-8?B?eU5mb2RkRVJ6Q0pRbEJQUkRPVStCbjBFbUxxVmZ5MnN1MzhQWVdOeENubXR4?=
 =?utf-8?B?ckVPQUN4SWdzUmJWOXFzYkpRQ1l0R0FSL2FtZ3BTWkRGSytJVnc5bmZkdDlv?=
 =?utf-8?B?ZUYzaUFYaG1ld1h6aWFtSlJLdkxJZ1lpUlE2YW51Z05YN05EMXV6ZHo0TEtz?=
 =?utf-8?B?dXRlSmVsdnVFb2ttT21jN0lDcUhHeS9PMHpOYVA3ekNaVkFXOUowdXVOUFRr?=
 =?utf-8?B?MThmVlRwQ2RmbC9vdlp4MUszcVU4VVBHeFdNdGF1WWp1M3hROThrbkVQQWxI?=
 =?utf-8?B?Y0lSLzhSR28rbnZJd1RlRFF6OU5xMG5OTi9qbEE4cnQycG9ncDZVK2RzZjBT?=
 =?utf-8?B?dlNnVU9vbzkrODgzUjB2ZVJlNlU2cFRyVTBMR3dBVjQrWXdYVXJSUjA1Uktx?=
 =?utf-8?B?RUFZRDJvdjhTdFp2dnhTcm14MjN0UVozQUF3MXpLa0dxakpjREVyM0krYnBz?=
 =?utf-8?B?RXJwdlNjdThvNHFlcklVdm5Ja09zMWg1alpYNzQ2dnhuaXkyNnptdm9ySlVl?=
 =?utf-8?B?S3o0Z3pPbm5RY1dqVExHK1J4YlV3ZDdDMmJZSFBsSUxoRGtRSDA1eWdCZFd0?=
 =?utf-8?B?MEpYU2R5Qk12eGMwUG5oaE9wTVdLbE9PYVJGRXU1c3pKUk5ZbW9mQUZ4Z0Zp?=
 =?utf-8?B?UCsralNzemEyT01hVGlycVFYd3V5QUtya1QwMkRwYVFFSmNuWkVGS2dvNVdZ?=
 =?utf-8?B?ZHhLU05VdEg5WEZZb2lDS1k0RWN0Rnhka25jMnhENDlDRTJqMGRieS9uNG90?=
 =?utf-8?B?MlJFcC9pdUZNTXVyZ3RZY1ExSVFiMDlkRkMrdjREN25yd1hSSFRGTGZlWDFB?=
 =?utf-8?B?bWFXSXdOcWJQSXdZZnhqbzBUOXd5Vi9CdStaN0JINC9BakhFVm1RSjN2Nkxv?=
 =?utf-8?Q?ozI/EUrEbsFfWWI11+91hNctTwbi0qFIKhbyv?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <45F44ED43036AE409BDC71FFECE64CD3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b8306b7-ee03-451a-0af5-08da189c22a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2022 13:40:10.0837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcDrZINEKGvalRuKXv0oU05bSXcUNALoHS3ysbsxz3tQ4spVvy400MCxDkAIIAMxa88W+k6UKFVazTIOn48fKLNct++g7e7wCBD3fqTz6b4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warnings about PSR
 lock not held
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

T24gV2VkLCAyMDIyLTA0LTA2IGF0IDE0OjA1IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBDb21taXQgM2I2ZjQwOTU0N2ZiICgiZHJtL2k5MTUvZGlzcGxheS9wc3I6IExv
Y2sgYW5kIHVubG9jayBQU1INCj4gYXJvdW5kDQo+IHBpcGUgdXBkYXRlcyIpIGRpZCBub3QgdG9v
ayBpbnRvIGFjY291bnQgYXN5bmMgZmxpcHMgd2l0aCBQU1IxIGFuZA0KPiBQU1IyIEhXIHRyYWNr
aW5nLCBjYXVzaW5nIFBTUiBsb2NrIG5vdCBiZSBoZWxkIGFuZCBjYXVzaW5nIHdhcm5pbmdzDQo+
IHdoZW4gaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKCkgaXMgZXhlY3V0ZWQu
DQo+IA0KPiBTbyBoZXJlIHRha2luZyB0aGUgUFNSIGxvY2sgYmVmb3JlIHRoZSBlYXJsaWVyIHJl
dHVybiBpbg0KPiBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydC9lbmQoKS4NCg0KUmV2aWV3ZWQtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiANCg0KDQo+IENj
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gUmVwb3J0ZWQt
Ynk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gRml4ZXM6IDNiNmY0MDk1NDdm
YiAoImRybS9pOTE1L2Rpc3BsYXkvcHNyOiBMb2NrIGFuZCB1bmxvY2sgUFNSDQo+IGFyb3VuZCBw
aXBlIHVwZGF0ZXMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NydGMuYyB8IDggKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NydGMuYw0KPiBpbmRleCBhNTQzOTE4MmQ1YWU0Li40NDQyYWEzNTVmODY4
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBA
QCAtNDg3LDYgKzQ4Nyw4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoc3RydWN0DQo+
IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQ0KPiAgCQlpbnRlbF9jcnRjX2hhc190
eXBlKG5ld19jcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFNJKTsNCj4gIAlERUZJTkVfV0FJVCh3
YWl0KTsNCj4gIA0KPiArCWludGVsX3Bzcl9sb2NrKG5ld19jcnRjX3N0YXRlKTsNCj4gKw0KPiAg
CWlmIChuZXdfY3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcCkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+
IEBAIC01MDcsOCArNTA5LDYgQEAgdm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9zdGFydChzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpDQo+ICAJCQkJCQkgICAgICBWQkxB
TktfRVZBU0lPTl9USQ0KPiBNRV9VUyk7DQo+ICAJbWF4ID0gdmJsYW5rX3N0YXJ0IC0gMTsNCj4g
IA0KPiAtCWludGVsX3Bzcl9sb2NrKG5ld19jcnRjX3N0YXRlKTsNCj4gLQ0KPiAgCWlmIChtaW4g
PD0gMCB8fCBtYXggPD0gMCkNCj4gIAkJZ290byBpcnFfZGlzYWJsZTsNCj4gIA0KPiBAQCAtNjM0
LDYgKzYzNCw4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkNCj4gIAlrdGltZV90IGVuZF92YmxfdGltZSA9IGt0
aW1lX2dldCgpOw0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAgDQo+ICsJaW50ZWxfcHNyX3VubG9jayhuZXdfY3J0Y19z
dGF0ZSk7DQo+ICsNCj4gIAlpZiAobmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXApDQo+ICAJ
CXJldHVybjsNCj4gIA0KPiBAQCAtNjg1LDggKzY4Nyw2IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRh
dGVfZW5kKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkNCj4gIA0K
PiAgCWxvY2FsX2lycV9lbmFibGUoKTsNCj4gIA0KPiAtCWludGVsX3Bzcl91bmxvY2sobmV3X2Ny
dGNfc3RhdGUpOw0KPiAtDQo+ICAJaWYgKGludGVsX3ZncHVfYWN0aXZlKGRldl9wcml2KSkNCj4g
IAkJcmV0dXJuOw0KPiAgDQoNCg==
