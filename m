Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28784603A97
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 09:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0339910EA7F;
	Wed, 19 Oct 2022 07:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9568A10EA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 07:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666164288; x=1697700288;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8k8aIzPvRwElMBnvTzmu71EjX3Dluhm3OdmaOwBFL6E=;
 b=ENVnrA598ZmiHmjtI2WZxYaYMyQdQX33RLGFsu9ViG8UxRE5wjd6XLt/
 xbi8zWNwUhxwMyEcxvrf3NUjqUV9Lx40cGSRA6EOBJpBDwrjZnT2sLE24
 dTmoHQ03pknLygWLWvrD1hKDtD86YiDEnALAzV0T7lSMjNNAs9L6qgsaV
 JdMyFxgi3TomO6JN+fIrHr0+gC9MPQQ2W5hCxgXZJ3pJTZPKv0FF7EUqI
 KwdiHjC/KOThEdElF1ZPFAXS6iS6t1ewTchj+aqOOgzGCzaZjn4FqPaU9
 rv4xBoXe2C8tC0FguIcBFoG501RzRkOnsU/H9wAUlgUr33j6DsCAdYd+A A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="293725954"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="293725954"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 00:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="697926656"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="697926656"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 19 Oct 2022 00:24:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 00:24:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 00:24:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 00:24:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 00:24:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j8K8o8LDsbEhoQtJAXbgwqTf1c63/aK+RYRaaUvkZh/rNjSF7S3tzz4nD+M8K7aETJeSDERUVJ2YsWpCPkuKqB89qPzyx3bWgcsbDNeSrJY/rg14uAFCnn9D3Q5EVu2zfF707uV8p9Orb0UFcJe+PGqrGZfBxrLwZeJflJZpUCl6o3ND7shb5t8z3FCOlrKH5wgS39SAKlZO0RiI+YV/4yZ2gOBTYEnGsk6/l1GxijqgWWxwWEsFzenESoCKxkfv1aSJbpqkOCAAE3FyKuSMsOxshPy7K4qvuKxz25ChQ9P320OHpPx87y3n6FSADJtthqd0sglScQnyAf0s9PsQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8k8aIzPvRwElMBnvTzmu71EjX3Dluhm3OdmaOwBFL6E=;
 b=Q5bix8OHGeMeWl0swU1+1s3p1ofe63TnunYg4HCbBtI2c3jRoGn/85zTdayLzv2xKPZwPzsYolHhK/GGxjZKBmqzPNCCI5YKl3yUQd4N6HLki3CYj7m+0GQ6OcBPpzdh1H0Dpho2BeNx12Yf3mgakxoo/Njs9cqUnU7nIo6J+/hJVghVwhxouhxflGBT7laeOi0L/MxK2+INlM5wUHLeBqCQPXtoFuOcSqm4pMlvNfCy/FFdb650TCSzH22WP7DrdDMW83nwuvMvYLwsTj36kO2IQRXJv/CreZ3bJPe1iisOs5ETek4b3SAVdHrxQH4ytIyDTpm54mx8z+wfok4uEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6102.namprd11.prod.outlook.com (2603:10b6:8:85::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.30; Wed, 19 Oct 2022 07:24:41 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::4cea:aa19:edca:db6c]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::4cea:aa19:edca:db6c%2]) with mapi id 15.20.5723.034; Wed, 19 Oct 2022
 07:24:41 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/10] drm/i915: Stop loading linear degammma
 LUT on glk needlessly
Thread-Index: AQHY09N6e4z7wFrZWE63dSZUuo5qMq4Vbvng
Date: Wed, 19 Oct 2022 07:24:41 +0000
Message-ID: <DM4PR11MB63609DF6726C5940BF5695B8F42B9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20220929071521.26612-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6102:EE_
x-ms-office365-filtering-correlation-id: 41394806-21b5-4e5b-c7cb-08dab1a2fd09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XYAWj/yMCF32kKoO5kxjzzgAidqIELTCLBfaYCJWvkf3gqOMwQImZB4vrRXURHwXL2SWFhrKjgyT3Zpc7MysXdF1HLMpetbKG8qhrgzxfyvmkTRDvR2ETcmyq2KAv3aNjX6wThoouOObYVmT7LpfkEIUCyTRClSW539G+v1NL+Xq/6JO5kZ3Ne+mJgVoKdh/VF5eI7Fcefi1TtKY+WKB2JS+blWqDFWG9MBX8PDCbAZcxX4NCXoc0AQkmbtbpi9craNHvRtCyEuEDuOstIValSkbZWrk1PseOcy5IuYjlFA2UZcWUpw3DSNyDhm0VrnXZkesg5SHBXnungfn5+Ksmj48VBDIZJdxSRUzKxzNzjbOG0iyUD8ElrX6K9SFNdVywmk+0HLxFjlhnEdZGQrpjSzWac/oYOk0D4t4cOMgR1JGPL/BzOQ9f1itq0O3TrnNZrEMXAboKIcnVJp2cXs4cjYUydmTDhxBfr5xBUzanHRoM6+3E0VpW58dqy6C9qVYRg+Wu6NQ0fSzan6SE/6hWyI34+C5AL611bwa0SVZEv1Il3c+kYJR3tq8IFZwOLXb8IwECg53NP2e1R+x48hBJyEFTCtqh+zwyMEsl0voYVHfrib6lXAuZg3zmtDU4ULvuLIX1OT4IqVaH6u8cpOMnJOcVr47D+uNEkPJHXluDOlfr7c92JiqBfyzolh2FDkpxaQnOEh2J/XsxMz82DsvXZUOC7FjTiXpdzdCb6HpS+Hk+Em+0To0UEo5Ln621C8NoabSNrIZ+blOzV6+l2sySHyAO2sXhtrIS+KSFr2iDPs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(376002)(136003)(396003)(451199015)(83380400001)(186003)(2906002)(33656002)(26005)(8676002)(66446008)(6506007)(7696005)(64756008)(41300700001)(82960400001)(53546011)(76116006)(86362001)(38070700005)(66476007)(316002)(122000001)(38100700002)(9686003)(66556008)(55016003)(8936002)(110136005)(52536014)(5660300002)(478600001)(71200400001)(66946007)(49343001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3oxMkgvSEZtVFoybG1yOFlpeENVZUcxbjhpa0V1bjN3Y29YSElTSlNoUlR2?=
 =?utf-8?B?Wm5FVUJFTjN4enVTSlFpN0x1c0l0TGtRTUh6UTlMMkJhQlBhUUZxbW9iOHVF?=
 =?utf-8?B?eXJuYUpzaHpJL3BsY1BWQWJoMVJoR2thaFcrZGtRUUtuUVprb3dqdUY4UXZJ?=
 =?utf-8?B?Vk5tTzRGUVhpQ25sUnF2a0hxbXBGcnFNZkJKRmdEQUZWYWJOVFJHOXZNbXQ4?=
 =?utf-8?B?YjNnVEJIcEJHUGRFUS9pUjRxZFcrb0ZQdzNFdUZYTEJNNjBETll2clFpbkVm?=
 =?utf-8?B?enlPcDNXZTg3Rk5xOTBjcDlEb0tUcmJxWGlmNDBVQ3o3WjVDbGN1amxLTHBq?=
 =?utf-8?B?TklxTFZvUVVZQ3pGanB2d24xVGlqK0xjU2hHYjJPTS9hUC9PZlNnMXUzclFW?=
 =?utf-8?B?ZUtmUzRHKzZtZXBBQ2xZLzZyMzYvenlPOGJqTEV5UWZzMi84M1BMakNnUDM5?=
 =?utf-8?B?NGlEM0ZUZlI1ckxzK3lZOUhrWnVzbTduSHB4Y0J4WXFRenJ5S2NqL3prSDkz?=
 =?utf-8?B?STYzdFNJdFJZVVB0dkFpZmtwRU8rekUrNjRsQlEzTmU3eXQrbjVHQ3R0RGVr?=
 =?utf-8?B?Y0lZZG5CTzBBRis3MEtzVTJJWFpIb1lBSHJOQ1BIdm9nczVJVU9Rd3JVc05Y?=
 =?utf-8?B?a2dZaUVOMVpSTHhhaS9PTWpNWDhxUjlNMWJRMFZRdlEwY3R2REdRbXRWTklx?=
 =?utf-8?B?WkhMMlo1aVc2anpDWHpEdk1yVWdObGVSckNQNkRWMUFnWlMrdTF1Q0FpUjhm?=
 =?utf-8?B?eVhydnRVUi90Wlh2R1ZKQm1Wc1J1M3dEVEoydWtDbDVZQUtZNklBaWF4QVdM?=
 =?utf-8?B?MlhIK0htblFEVmV4elVDSkIzSTdMbVlBMUZnTDN1Rnk5OTJCZ1hnNUtVdXlh?=
 =?utf-8?B?THRzOVlVeWpUUTQxelNwRmRTcE9XSlJWTGYra1YrSUFHTlRkdm5EeGNWSnRW?=
 =?utf-8?B?VkpNV1FYMy81LzQ5Tlc3TFdwMURrZitxSGhRZjlneXhYMFZ1eU9BMEJNamNv?=
 =?utf-8?B?aTlPQzVMbEVBL211clF3NkErOXZMSWQ5TFVaRHQ3K2VFK3pNTHJ5MzBvNVYw?=
 =?utf-8?B?WW44MU94NGZQd1IxUUpGUCtkMzFtZGFrelVKZ1ZIcFR3VjVuTXpXNkFoTmJK?=
 =?utf-8?B?SGNCUE13b0M5ck9INXdKTTgxRzFwU3EvdDBwQnk1TGRZZzdBUUN3MVFUQmR1?=
 =?utf-8?B?WTdWRjdjM09nM0hYVmxya2JRRE91ZUdOMk0zbDROOWpEWUM2ZXVZN25DUkRa?=
 =?utf-8?B?cXd5THRJZjB6YjZBTHlHYkNBS0Z3bXlvWUJERWc1TXlGSVdHcWdyTFZlZ1J6?=
 =?utf-8?B?YkNmN2lGdHJRczlqa2haekpXaS9mYjZTQTAwVEtYdW1PNE15WWpwMU9UUUZH?=
 =?utf-8?B?Z1VQMnUzR3hncGF6a1FEU3R1bmVReXArVndqa1laTW5NZ2RqMzJWekV6MVhO?=
 =?utf-8?B?Y1RlZUd6Sy9IZzJTakp5YkZWa0QvOXcrZWsveTUvVnRiMjh0U2hocTE0RzZ4?=
 =?utf-8?B?YmROR3YvQkxtek4zRGRvZnZsNGxsK0RERGJnZWdaajdpNkxCWktqSllxTWJD?=
 =?utf-8?B?Mms2bERHUUREUmdEVXhINGtXd3VUS2Jmem4wVjFlcEJWci9wS3dDTDVVTUVV?=
 =?utf-8?B?bEo0RHR1akxHUCtmY0l0a2Z2MmJ5NzFUaUNwMWE5QTY1NER2TzBUbzRleHJk?=
 =?utf-8?B?UW5meG5zaVYzdGdma0tHVkRlYUpCQWlSQ2tQdzNYVUJNR3FnNjhWVE5CNG5Z?=
 =?utf-8?B?VVBCdWovN1habVdwMHdKWFo3ak05cDR0RUJ2ZnRLM3ErTEQyNUxrbk1UVkRW?=
 =?utf-8?B?YkoyTlkvVlE1NkdTbzBlQnR3U0JhaWxGaStVOFc3T1JtWkNDUStyZjhoTEc0?=
 =?utf-8?B?NVh3bnlsS240RXZQaHd6dlNXejF0eUVsZVI0YVBGN3MvMmtlVk4ySlR2RHpn?=
 =?utf-8?B?SGgxbG1UMWRZZElKODBGVjQyYVRneVBPMW5QMjZKaExCSE9RdkIyN0M0Z2Zw?=
 =?utf-8?B?NzdqQ0Q3cjBFK1dTbTF4U2ExbnkxWFJya2ZBWTI0REFJRFhzTUhPTC8rRmNj?=
 =?utf-8?B?SHF3MWZhUHBBR2FyelV5a0VPRU44WmJ1NFNRQStiams0VGtGZWxPUGFiU0po?=
 =?utf-8?Q?tchDotbXi7KtlT/ltmw8K+2iP?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41394806-21b5-4e5b-c7cb-08dab1a2fd09
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2022 07:24:41.3816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rR+Bv9HF5rKpMMEjHNfClrFrPZblo0+8i3i77ILhs1eZvzHUw5gVG9ts9GjZMH7UZk2Lf27wJuDiFbumOR7QFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6102
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Stop loading linear
 degammma LUT on glk needlessly
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgMjksIDIwMjIgMTI6NDUgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdm
eF0gW1BBVENIIDEwLzEwXSBkcm0vaTkxNTogU3RvcCBsb2FkaW5nIGxpbmVhciBkZWdhbW1tYSBM
VVQgb24NCj4gZ2xrIG5lZWRsZXNzbHkNCg0KVHlwbyBpbiBkZWdhbW1hDQoNCj4gDQo+IEZyb206
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBN
YWtlIGdsa19sb2FkX2x1dHMoKSBhIGJpdCBsaWdodGVyIGZvciB0aGUgY29tbW9uIGNhc2Ugd2hl
cmUgbmVpdGhlciB0aGUgZGVnYW1tYQ0KPiBMVVQgbm9yIHBpcGUgQ1NDIGFyZSBlbmFibGVkIGJ5
IG5vdCBsb2FkaW5nIHRoZSBsaW5lYXIgZGVnYW1tYSBMVVQuIE1ha2luZw0KPiAubG9hZF9sdXRz
KCkgYXMgbGlnaHR3ZWlnaHQgYXMgcG9zc2libGUgaXMgYSBnb29kIGlkZWEgc2luY2UgaXQgbWF5
IG5lZWQgdG8gZXhlY3V0ZQ0KPiBmcm9tIGEgdmJsYW5rIHdvcmtlciB1bmRlciB0aWdodCBkZWFk
bGluZXMuDQo+IA0KPiBNeSBlYXJsaWVyIHJlYXNvbmluZyBmb3IgYWx3YXlzIGxvYWRpbmcgdGhl
IGxpbmVhciBkZWdhbW1hIExVVCB3YXMgdG8gYXZvaWQgYW4NCj4gZXh0cmEgTFVUIGxvYWQgd2hl
biBqdXN0IGVuYWJsaW5nL2Rpc2FibGluZyB0aGUgcGlwZSBDU0MsIGJ1dCB0aGF0IGlzIG5vbnNl
bnNlIHNpbmNlDQo+IHdlIGxvYWQgdGhlIExVVHMgb24gZXZlcnkgZmxhZ2dlZCBjb2xvciBtYW5h
ZW1lbnQgY2hhbmdlL21vZGVzZXQgYW55d2F5DQoNCk5pdCBwaWNrOiBUeXBvIGluIG1hbmFnZW1l
bnQuDQoNCldpdGggYWJvdmUgZml4ZWQsDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4NCg0KPiAoZWl0aGVyIG9mIHdoaWNoIGlzIG5lZWRlZCBmb3IgYSBw
aXBlIENTQyB0b2dnbGUpLg0KPiANCj4gV2UgY2FuIGFsc28gZ2V0IHJpZCBvZiB0aGUgZ2xrX2Nh
bl9wcmVsb2FkX2x1dHMoKSBzcGVjaWFsIGNhc2Ugc2luY2UgdGhlIHByZXNlbmNlIG9mDQo+IHRo
ZSBkZWdhbW1hIExVVCB3aWxsIG5vdyBhbHdheXMgbWF0Y2ggY3NjX2VuYWJsZS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
IHwgMjYgKysrLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IGRlNTMwYmYxYWJhMS4uYTMwNjZkOTQyZjU4
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+
IEBAIC0xMTk4LDI0ICsxMTk4LDYgQEAgc3RhdGljIGJvb2wgY2h2X2Nhbl9wcmVsb2FkX2x1dHMo
Y29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQ0KPiAgCXJl
dHVybiAhb2xkX2NydGNfc3RhdGUtPnBvc3RfY3NjX2x1dDsNCj4gIH0NCj4gDQo+IC1zdGF0aWMg
Ym9vbCBnbGtfY2FuX3ByZWxvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
bmV3X2NydGNfc3RhdGUpIC17DQo+IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKG5ld19jcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiAtCXN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlID0NCj4gLQkJdG9faW50ZWxfYXRvbWljX3N0YXRlKG5ld19jcnRjX3N0
YXRlLT51YXBpLnN0YXRlKTsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xk
X2NydGNfc3RhdGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsNCj4gLQ0KPiAtCS8qDQo+IC0JICogVGhlIGhhcmR3YXJlIGRlZ2FtbWEgaXMgYWN0
aXZlIHdoZW5ldmVyIHRoZSBwaXBlDQo+IC0JICogQ1NDIGlzIGFjdGl2ZS4gVGh1cyBldmVuIGlm
IHRoZSBvbGQgc3RhdGUgaGFzIG5vDQo+IC0JICogc29mdHdhcmUgZGVnYW1tYSB3ZSBuZWVkIHRv
IGF2b2lkIGNsb2JiZXJpbmcgdGhlDQo+IC0JICogbGluZWFyIGhhcmR3YXJlIGRlZ2FtbWEgbWlk
IHNjYW5vdXQuDQo+IC0JICovDQo+IC0JcmV0dXJuICFvbGRfY3J0Y19zdGF0ZS0+Y3NjX2VuYWJs
ZSAmJg0KPiAtCQkhb2xkX2NydGNfc3RhdGUtPnBvc3RfY3NjX2x1dDsNCj4gLX0NCj4gLQ0KPiAg
aW50IGludGVsX2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiBAQCAtMTYyMiwxMSArMTYwNCw5IEBAIHN0YXRp
YyB2b2lkIGdsa19hc3NpZ25fbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19z
dGF0ZSkNCj4gIAkgKiBPbiBHTEsrIGJvdGggcGlwZSBDU0MgYW5kIGRlZ2FtbWEgTFVUIGFyZSBj
b250cm9sbGVkDQo+ICAJICogYnkgY3NjX2VuYWJsZS4gSGVuY2UgZm9yIHRoZSBjYXNlcyB3aGVy
ZSB0aGUgQ1NDIGlzDQo+ICAJICogbmVlZGVkIGJ1dCBkZWdhbW1hIExVVCBpcyBub3Qgd2UgbmVl
ZCB0byBsb2FkIGENCj4gLQkgKiBsaW5lYXIgZGVnYW1tYSBMVVQuIEluIGZhY3Qgd2UnbGwganVz
dCBhbHdheXMgbG9hZA0KPiAtCSAqIHRoZSBkZWdhbWEgTFVUIHNvIHRoYXQgd2UgZG9uJ3QgaGF2
ZSB0byByZWxvYWQNCj4gLQkgKiBpdCBldmVyeSB0aW1lIHRoZSBwaXBlIENTQyBpcyBiZWluZyBl
bmFibGVkLg0KPiArCSAqIGxpbmVhciBkZWdhbW1hIExVVC4NCj4gIAkgKi8NCj4gLQlpZiAoIWNy
dGNfc3RhdGUtPnByZV9jc2NfbHV0KQ0KPiArCWlmIChjcnRjX3N0YXRlLT5jc2NfZW5hYmxlICYm
ICFjcnRjX3N0YXRlLT5wcmVfY3NjX2x1dCkNCj4gIAkJZHJtX3Byb3BlcnR5X3JlcGxhY2VfYmxv
YigmY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQsDQo+ICAJCQkJCSAgaTkxNS0NCj4gPmRpc3BsYXku
Y29sb3IuZ2xrX2xpbmVhcl9kZWdhbW1hX2x1dCk7DQo+ICB9DQo+IEBAIC0xNjY3LDcgKzE2NDcs
NyBAQCBzdGF0aWMgaW50IGdsa19jb2xvcl9jaGVjayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiAqY3J0Y19zdGF0ZSkNCj4gDQo+ICAJZ2xrX2Fzc2lnbl9sdXRzKGNydGNfc3RhdGUpOw0KPiAN
Cj4gLQljcnRjX3N0YXRlLT5wcmVsb2FkX2x1dHMgPSBnbGtfY2FuX3ByZWxvYWRfbHV0cyhjcnRj
X3N0YXRlKTsNCj4gKwljcnRjX3N0YXRlLT5wcmVsb2FkX2x1dHMgPSBpbnRlbF9jYW5fcHJlbG9h
ZF9sdXRzKGNydGNfc3RhdGUpOw0KPiANCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gLS0NCj4gMi4z
NS4xDQoNCg==
