Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCE17982D6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 08:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7629C10E054;
	Fri,  8 Sep 2023 06:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B84610E054;
 Fri,  8 Sep 2023 06:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694156124; x=1725692124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PvF6b/18oWT4YANUGDRY5K1BjaAmryckV2G1yg55xcI=;
 b=etWt6iH6wLip15HpKmfD/fYjZjgPcmr5ow+HrHbmP410NMa3hwrAEjod
 Suw+Fkg52FSP9Kn11vIpglcBCQfM4EsxsFGC48iA8szf0ZqpZU/UTq2ae
 J31nixAhycRBF5++csGF14HzelGzM0RRVVjsnc/YA74WXkPXkLEYYQBZY
 r3CKNO9lrEDYEPvOKCQB484DotdtjLxmKkwowKU6cjfwU6sIDrLnkpQQi
 +q4ub0Vn5lIporNxHvY3MEXnG2OqJ/fMYmQTSv8sC8gThngVH4FXE5nkG
 pZdveMsZDaxStR1Ro5/R2teSmf8AZUz2LK1u24aaNbTbLifoMzXdooa78 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="408567794"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="408567794"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 23:55:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="989133832"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="989133832"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 23:55:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 23:55:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 23:55:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 23:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=en1J7kQ1w88EJ3H0TCKslnbof+N/8V8Yp/Cu4caO0Droxo1LolLl8UzlEZFvLlIdbkgkL6vytu34KSROxxD1hACOt5QnS8hYQa1X5W8C7/6UhLNpAiC4ckkexwrTLAU8LnHXGs4qE+2qaHqyEo9Vpj/dQI+fgsXtspZs3BriEOJhdP1e3Sfl9OI/W/BkTWjyCHY0J0ltErFTtmPK2CPnH5NAq9Yxa4TSsXLPIbOFgdheGZVWWq2q5GlsRQ7rdCZBTcL4gYZUKG2aVojVIUGkF1UoTFDW2CnxPKUSjF4N4Pc7SEdy3WIvsSxvTOPJf1kvgSlG4kZFkTCUCG3ZmaQ0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PvF6b/18oWT4YANUGDRY5K1BjaAmryckV2G1yg55xcI=;
 b=eCVYfCCWw6x19LyYoMIYZ/IY9VtjqbrTIBy2WJLUmeVwo/4ZdwtpSxB+pyKQfKkVBD/wbuR3dxoRs3Kp9b41FPDtattyXm6jU9ym6WkcsQcFUeGGRC7blKjgvo3Ck2IQK+qeNiAAMEPZBpliz/wFKZ+5njLxe7d5URbYZM6IUGY821GzzO1toXfJ5EGiLB9WSO/egKPa4TsXzuAD27smHfX0IETQ37tjigx2S6PYL4SHaG30jltZFdP9DKpRi0izhcDlgQFrg3b/qHmrRgzesWJBi40SnEe7WJ579WBbyFC+3+EyJTzciayI5JQJb//tx4sMif25H5TPrQjyaKL96w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CH0PR11MB5562.namprd11.prod.outlook.com (2603:10b6:610:d5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 06:55:20 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 06:55:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 17/27] drm/i915/xe2lpd: Read pin assignment from IOM
Thread-Index: AQHZ4aFXdwWS9SLpp06Jhb0viplfgLAQfyrA
Date: Fri, 8 Sep 2023 06:55:19 +0000
Message-ID: <MW4PR11MB7054F40BF8C08921DDA50403EFEDA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-18-lucas.demarchi@intel.com>
In-Reply-To: <20230907153757.2249452-18-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CH0PR11MB5562:EE_
x-ms-office365-filtering-correlation-id: 95b61284-3689-49c0-0328-08dbb03890ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: alR4kg3qzST3xuYYEnNz0748odYUokgPP22Q+Bdj+BxGoTU74B6r7lyZUFPxI5CtLXOKMiWoGuHBB1iLPsUpOSB2v+Qo+dUXBDc865oFSRvCAQpkkiokYhMyjtqM4MjBBHKUhbYupg179CRnyrQHJnT+6GozQJTU4aMtGkv0IvSRO9O5ke6soJibV4cB8f/w0zxdGAEmPNURw8d8G16R/RqV/YVC1twSlSzwn3bWmd1TO4UrksOFiTiL0DqHuZyluV5ltguIdbKx0yNx2qkW9xMce5oKxNqaiv1Uf84TJ8XljRFBST7KVkMkwdOGeDNwALA/GiuGbQwK7dks6IcWbRF2Q9N1BeE/M9a7ZVVFWAFvPRmrg/dsmHjhtDZLyEcsA4ddvQmu8XoPyiYVDyu5nFaipvAoAqywkBEoUMCjZGRyPVrInh+NTjtm2WFpMfqk9u2whwILS6frbUlIpNywVxSj10NkkC8kptuc4e3XPZm8zdNbsnD3eeXyt6rWte4T07WVQYKSgMVAWNOPqsh0exeBC0WX9Yn8dAnngbNfMI3U/r75NsKrWQjfMlo+Ez7p4wxFEZmQlnjmAidU+CI8DfCqwTT1vZcivlR/OykTofKHHqvmOmk0485W1IlEGhiy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(136003)(39860400002)(366004)(451199024)(1800799009)(186009)(2906002)(64756008)(54906003)(5660300002)(478600001)(8936002)(9686003)(4326008)(8676002)(71200400001)(107886003)(110136005)(26005)(66476007)(53546011)(66446008)(66556008)(6506007)(7696005)(41300700001)(450100002)(66946007)(52536014)(83380400001)(316002)(76116006)(38070700005)(82960400001)(122000001)(38100700002)(86362001)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NW0zd0JWWWtQRFFqdGRzYzdqNWJRU1BaTFYvcFF1djFsSWlueEh1MTZRTFlP?=
 =?utf-8?B?cXZMa3ZsNUZtWTZGdmFkVlVIN0FyYUtuRSsyTEdhVmFOVWtMS0MvUWpyQys4?=
 =?utf-8?B?bUUxWm0yQ1R5RkxNYlUxZythU3VBV2duOWUxZ3JJUGVpcWxPdW4vYWxEN2d3?=
 =?utf-8?B?WlprMjBMcWxwODFqNlhqTm5ISTZSYkNOdHBWazROdmxscTk2NE9Dd3BTeWs0?=
 =?utf-8?B?RFAxVDVVOUJ6R0hDN2lhSEZmY0tmQlIwa201ZDU3ejdXQkxMWnY5cmppWUQ3?=
 =?utf-8?B?bXVjSVZhYzFaRjVZNHh3VGM3ZFNnU1BnQlBSM2ZIeG9EcGs4ZjlDdTRLTlNF?=
 =?utf-8?B?dVhEV1RGSEVTUzVobjZ5MHcwL2FTV1lPbW9hV0w2SnltTExTaTJmVDI1UmVO?=
 =?utf-8?B?ZERtU1VKd2p5R09nRkRubHhiVjI5alVtVE8yNzRXYkIrdko3L0laZVFiNjBM?=
 =?utf-8?B?aHRSY0VnNlMrZmhWMm9ITmsxaGUxYmovaVpTeEJhdlVBVlpBUFNSQ3BYcDBQ?=
 =?utf-8?B?WG1DOEhKKzZHTEc5Z1dXV3U4Q0hCdDEzWGlaYWoyZUhYalVGcy9naTd2Unho?=
 =?utf-8?B?aUxVNGdnTlIvMGRablhSeStvRjkxcysvaUhULzBuWVUvckF2R2daZlllbkdY?=
 =?utf-8?B?cjRCYmVLRURxNHZ5RklvQ2gvOTdPN1hYcmNHeUg3c0lPRGNLemxOSzVMNjZp?=
 =?utf-8?B?MFNXb0ZVM2VxT2QyVzk1eGgzaW02NGFQR2psUVNsRG9ieWQ0RHdLbnRCS1VJ?=
 =?utf-8?B?NGQ2VGlScW1rU3Z1ZFNUd3JNZnE2UjVnU3QvQmJDUmw3Z1hlYzZnL01tL3ov?=
 =?utf-8?B?NDBsd21HUGlkMlAwSEw4MG9DRVA2aG9od0VCWWZicGRhMml4by90NVptV2RO?=
 =?utf-8?B?bktHSlBPdUtpMHJGaWxPZ0owZEIvZGhtNjNyZU5VcktxaUtxRmVURVNla0Ru?=
 =?utf-8?B?SFFtVjNEWm1VcFBEYmxBWWJnVU9rOTVGTldSNzhYMHlJbDd0UXhyZkl4UEFu?=
 =?utf-8?B?ZjFRL2t1czJvUnljM3h6TURFSzBUQ0RtSTZQZ0dvK2lEMVRiWjhiYW5ocW53?=
 =?utf-8?B?ekRob0k0NHB4bnIwai95WXU2Wm11aHk2LzZ5MG9VQ0FOTDhzSTFvdXpFY2xK?=
 =?utf-8?B?MFNHOC9BZktrQXFIOFo1dVZLZjM0bm96SWgvaGxFenZtTVdpQWxET0JFYVhR?=
 =?utf-8?B?Sk1yOWV0VjZRL3phMWJTMW54MTZTZ3J1QWswRzJsSGVvYW9Xc3gvZnRXRE1o?=
 =?utf-8?B?UEpYaFRKMm9Jbk5vMVNNT0tVd2N6UFNBYTFzeldyOXhWRTd3S3pLSG9HekFt?=
 =?utf-8?B?R2dGL2R6WlZMTEI4Rm9lbnRGYklMcFp2ZXY1UTl2VmZuNkx5Mk4wbThSQ2ds?=
 =?utf-8?B?bDl4L1NsT0R5QldFMk04Zm5HdEFLckFMZlFoWHBWSUxFdHlzSksyR2daTUw0?=
 =?utf-8?B?czFlNktFTm9YKysycmJYOS9nM0hzZU5xSWtDd25ZNjdOZC9SMU5EeGhiWVJs?=
 =?utf-8?B?VjczTG5KVjlxa2JGMjZxS25OeFFibHdFM3FpcEcydWh3ZkV4b1pFMkEvZjFS?=
 =?utf-8?B?VG0wdFllTDN1S0tQSXkxU0J0RlhqOEpERjlVQzRMRFpzdjNPV0dTWjhzbXhx?=
 =?utf-8?B?K0ZuMGNYYXcycUkzRXJnN1l1c01VMWhPY2w4d2RseERjckU4WDVURGlHa3ph?=
 =?utf-8?B?VHJ2SUprUXUwUnNnSWhUYlpSSUlHS1piNVkzZ0FJemt3bjBDUzlLQ0w3OVNh?=
 =?utf-8?B?TEZQcUVwSXltRUxKSW1QcTRBS2E5akhKSDlqbWx3aDk1RW5WUHJlczZZMWlV?=
 =?utf-8?B?NmsvbVJDRCtwMkIyVTNYem5zZWVMSHVTWEkyVjliREMxT1c1TG1ZZ2VaM2ZZ?=
 =?utf-8?B?VG9ueWxqSFVWUXRTaXYza3IvMkxrUHYvNFVFV3kwcEZuZDh3aHg4RTNsYWhP?=
 =?utf-8?B?NUlXRXRMWkgwOFU4dU5wcHZBUWFKaVpLeXpzMHFwTU03NjlVajZ0c1ZGOEtk?=
 =?utf-8?B?Nm95VWZVKzkyMThqcDNQTk1za1RxZnJMK0R2d0d5TVZab0UzM1FOQlcrMllR?=
 =?utf-8?B?c2dyYmEyUzJ3c0lJbUFsSXdTMnhlcjFYMTlBUmltY0t4L2dEYis4dk5GNHdm?=
 =?utf-8?Q?IzRU2ozi5yV5DQ7JgA1RvHtX5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95b61284-3689-49c0-0328-08dbb03890ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 06:55:19.9938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FG8n9swDJCORMl6kpP063irfYmBrpGqwFEm7P1/D+jOlYAjvpUs+MoOBtvamATqmsxRb0cEzJQfRg7czLM+oYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5562
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 17/27] drm/i915/xe2lpd: Read pin
 assignment from IOM
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Coelho,
 Luciano" <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZSBNYXJjaGksIEx1Y2FzIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgNywg
MjAyMyA2OjM4IFBNDQo+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IENvZWxobywgTHVjaWFubyA8bHVjaWFu
by5jb2VsaG9AaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
OyBSb3BlciwgTWF0dGhldyBEDQo+IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPjsgRGUgTWFy
Y2hpLCBMdWNhcyA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0gg
djIgMTcvMjddIGRybS9pOTE1L3hlMmxwZDogUmVhZCBwaW4gYXNzaWdubWVudCBmcm9tIElPTQ0K
PiANCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gDQo+
IFN0YXJ0aW5nIGZyb20gZGlzcGxheSB2ZXJzaW9uIDIwLCB3ZSBuZWVkIHRvIHJlYWQgdGhlIHBp
biBhc3NpZ25tZW50IGZyb20gdGhlIElPTSBUQ1NTX0RESV9TVEFUVVMgcmVnaXN0ZXIgaW5zdGVh
ZCBvZiByZWFkaW5nIGl0DQo+IGZyb20gdGhlIEZJQS4NCj4gDQo+IFdlIHVzZSB0aGUgcGluIGFz
c2lnbm1lbnQgdG8gZGVjaWRlIHRoZSBtYXhpbXVtIGxhbmUgY291bnQuICBTbywgdG8gc3VwcG9y
dCB0aGlzIGNoYW5nZSwgYWRkIGEgbmV3DQo+IGxubF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3Vu
dCgpIGZ1bmN0aW9uIHRoYXQgcmVhZHMgZnJvbSB0aGUgVENTU19ERElfU1RBVFVTIHJlZ2lzdGVy
IGFuZCBkZWNpZGVzIHRoZSBtYXhpbXVtIGxhbmUgY291bnQNCj4gYmFzZWQgb24gdGhhdC4NCj4g
DQo+IEJTcGVjOiA2OTU5NA0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNv
bT4NCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDI4
ICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICB8ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCA2
Nzg2OTM5Nzg4OTIuLmU5Y2VkMjUxYzE3MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMjkwLDYgKzI5MCwzMSBAQCB1MzIgaW50ZWxfdGNfcG9y
dF9nZXRfcGluX2Fzc2lnbm1lbnRfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCkNCj4gIAkgICAgICAgRFBfUElOX0FTU0lHTk1FTlRfU0hJRlQodGMtPnBoeV9maWFfaWR4
KTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgaW50IGxubF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3Vu
dChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICsqZGlnX3BvcnQpIHsNCj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYp
Ow0KPiArCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190YyhpOTE1LCBkaWdf
cG9ydC0+YmFzZS5wb3J0KTsNCj4gKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gKwl1MzIg
dmFsLCBwaW5fYXNzaWdubWVudDsNCj4gKw0KPiArCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihp
OTE1LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLCB3YWtlcmVmKQ0KPiArCQl2YWwgPSBpbnRl
bF9kZV9yZWFkKGk5MTUsIFRDU1NfRERJX1NUQVRVUyh0Y19wb3J0KSk7DQo+ICsNCj4gKwlwaW5f
YXNzaWdubWVudCA9DQo+ICsJCVJFR19GSUVMRF9HRVQoVENTU19ERElfU1RBVFVTX1BJTl9BU1NJ
R05NRU5UX01BU0ssIHZhbCk7DQo+ICsNCj4gKwlzd2l0Y2ggKHBpbl9hc3NpZ25tZW50KSB7DQo+
ICsJZGVmYXVsdDoNCj4gKwkJTUlTU0lOR19DQVNFKHBpbl9hc3NpZ25tZW50KTsNCj4gKwkJZmFs
bHRocm91Z2g7DQo+ICsJY2FzZSBEUF9QSU5fQVNTSUdOTUVOVF9EOg0KPiArCQlyZXR1cm4gMjsN
Cj4gKwljYXNlIERQX1BJTl9BU1NJR05NRU5UX0M6DQo+ICsJY2FzZSBEUF9QSU5fQVNTSUdOTUVO
VF9FOg0KPiArCQlyZXR1cm4gNDsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbnQgbXRs
X3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShk
aWdfcG9ydC0+YmFzZS5iYXNlLmRldik7IEBAIC0zNDgsNiArMzczLDkgQEAgaW50DQo+IGludGVs
X3RjX3BvcnRfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpDQo+IA0KPiAgCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiANCj4gKwlpZiAoRElT
UExBWV9WRVIoaTkxNSkgPj0gMjApDQo+ICsJCXJldHVybiBsbmxfdGNfcG9ydF9nZXRfbWF4X2xh
bmVfY291bnQoZGlnX3BvcnQpOw0KPiArDQo+ICAJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0
KQ0KPiAgCQlyZXR1cm4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KGRpZ19wb3J0KTsN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleCAyZjExNWQzMzk5MTMuLmVmY2YxNDYx
OTg4ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC02MzUxLDYgKzYzNTEs
NyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4gICNkZWZpbmUgVENTU19ERElfU1RBVFVTKHRj
KQkJCV9NTUlPKF9QSUNLX0VWRU4odGMsIFwNCj4gIAkJCQkJCQkJIF9UQ1NTX0RESV9TVEFUVVNf
MSwgXA0KPiAgCQkJCQkJCQkgX1RDU1NfRERJX1NUQVRVU18yKSkNCj4gKyNkZWZpbmUgIFRDU1Nf
RERJX1NUQVRVU19QSU5fQVNTSUdOTUVOVF9NQVNLCVJFR19HRU5NQVNLKDI4LCAyNSkNCj4gICNk
ZWZpbmUgIFRDU1NfRERJX1NUQVRVU19SRUFEWQkJCVJFR19CSVQoMikNCj4gICNkZWZpbmUgIFRD
U1NfRERJX1NUQVRVU19IUERfTElWRV9TVEFUVVNfVEJUCVJFR19CSVQoMSkNCj4gICNkZWZpbmUg
IFRDU1NfRERJX1NUQVRVU19IUERfTElWRV9TVEFUVVNfQUxUCVJFR19CSVQoMCkNCj4gLS0NCj4g
Mi40MC4xDQoNCg==
