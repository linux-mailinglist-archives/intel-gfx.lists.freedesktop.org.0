Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD069607C37
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 18:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D52A310E258;
	Fri, 21 Oct 2022 16:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E90910E258
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 16:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666369768; x=1697905768;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=4YbM8UDORTWpES1Mb56OpKMb57sDV9HaYErs0xn5Vxw=;
 b=faVDoSjiX/Rzn0wZT5CtE08ECewuTZnZKbfdKHl+cwlAM8dy7MJXyFql
 QAfyh1oHwJRQQlTt8/HzC1zAF/MRFAHrdbjBHI4uqdVGRKSGNZqOnn2FF
 Xanx64D2hLf9t/Lq+9dxQGJ0+HtDom9SwTdvg2S2DOw95pBaJLX67nI7G
 JtuYDckRxTVl9IvwtaRA2Bg6xPezVuUQzdUhcuoreNO48MwHPO0l1H3Cz
 OVISl4RjXWX5b3AVtbJayXOXostGV+WsN0qh3R/vfjtM64NgM3zfpVYVl
 QYEE/2+R5ghgyWViBY8z8DujUBAGEbok7qangi6lN0JTK+fWN0jrk6jCv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="290350595"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="290350595"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 09:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="773111960"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="773111960"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 21 Oct 2022 09:29:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 09:29:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 09:29:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 09:29:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 09:29:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Py4Jpqss28Ar6WDxdZxo8s+ZABLXswMAtuJ9piZb+50onmOPq3Z137VlBDA6MnbPFoICFsf4BMGekqc5FSEqwbJmmQiYQN45zZeUc6tpt0kd1lST5gPJ3qNPSgIKGFcJh7CNE+8841L/XVWjgoHr3zYVFphgYEDIEgq7O4jESJ5rvkFyFq6PuxRtk60LTUStjnwCVuL2bIQkzIb3sosz2a/M07IkyQPCpOE2jJeMDLtKH/YGGUEIeffIoGm8QUjk3ErazeqMNbGT2RgE0M8qj09DuORYA2Y5/Nax+ql2d5jxmKV9nq0OvfW8zRwmdb7IG1cDEWm1+l5lZRNk03RiRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4YbM8UDORTWpES1Mb56OpKMb57sDV9HaYErs0xn5Vxw=;
 b=JljwYH09XKQPtLGY8puv7gyNVbFI+xiukZdJSyCd0GxRWVb11Bn1gl7nQucz251jlO1px3fujbRu7K9wQ41+BpYPFlbCkZERiwJ/OO0LBpSdPev8WlCudxv1u7U4hctaH0aoOFxHKRzoZRVQfBC6ndq/fTzM1GJeYGP1WYB8xUTBmMDLu19EGlGoulvmmNu/C7jMz3/5dGqGKljym3QYCgQC6JjKXiMuIp2P4Wbls39G0fJxDC2E6BU3ZF9FPPtBheY9C0BpZ1Ml6I0CCc2JhpM3YVzASVOSD4ehuACkNUGsIW2OuaVY3ax0PwvRE8ADSoApChUi1lSis+B+TvVuZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS0PR11MB7215.namprd11.prod.outlook.com (2603:10b6:8:13a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.34; Fri, 21 Oct 2022 16:29:25 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5723.034; Fri, 21 Oct 2022
 16:29:24 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 7/7] drm/i915/pxp: Make intel_pxp power
 management implicitly sort PXP-owning-GT
Thread-Index: AQHY2T1Grg4HmgBSzk6eI5R0vYicra4ZIrQA
Date: Fri, 21 Oct 2022 16:29:24 +0000
Message-ID: <8fd25c34f3c592fc77927c87f03ce901d09f622a.camel@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-8-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221006043834.606220-8-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DS0PR11MB7215:EE_
x-ms-office365-filtering-correlation-id: 57b322b7-2979-4ffe-e84f-08dab3816abf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LqiMs4tYWdQx9sZMPOEmiU9j2XXNFEgfuAqM18DgiKewt8lbvVgsxatsaokt6P0eIN9smv4ogdq2cebGHOtuJ29u5uGAdMGo9Ub4aE6biiACdtv5OF6XBoZHcoVsZ7Xs0o03H0F+n48Cwj8hIfK39Nrncmuw/05zBYYLSZC+V+sTSzLydQrCclLUpN5T6vkNahqjq3rjvZ1QE3o6DHwnX+IppCQQGbdCscJwVauz32z+UVeg9hk9gp02PxNtkJuZrGmiJeI1SFX8mPwXfck9Drey6g8YWeK8F60f7uWHBf+tHdIpwAC32xIdi+f3oYCVNErz1uWsm51BWT/c6xdZl1k/Q5TWQwpz/6mqm9QEbxdAZOCnAMEQvSChJbwbqddZZjfTG1NVdf5W+SaGn1sYWIQyuwYHWsMchKRfdhkvAOrbYQPG0IrQLmmlhWJlXjnXKRDK58O4V6SuxQDevyPq3qubZ7K6ubJ94bgxQ/gyWvQ1ImhjnfEqtJhVdizS+/4eq3UyW+JMpUJJmJXUarJoBewEfZbDcVAFmuenmvGuV6jyogZ3OkepgOyO16ulzS5Fw9Qzu6Y8YK1RIfSNvV2tY2U2RjFXQinkhY7oX/CKTRSzvDDIrmYe3CDSZzNSAlbCOjt9RytzdZryR1z7+S13AqCl6rH4Ov2+zz1Mgx+EuoDeqr2ptQwjE4p2l6ZpeI+B56//myxRsO/r6Uh9KANOhhI4myRXgAXqYsSj9FJ8sX022YL9l+VKCGBkvl66QX+y8YGN4ZScFT8rPnlenjxoBA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(346002)(39860400002)(366004)(451199015)(316002)(86362001)(82960400001)(6916009)(38100700002)(8676002)(5660300002)(66446008)(8936002)(41300700001)(91956017)(26005)(66476007)(64756008)(66946007)(76116006)(66556008)(6506007)(558084003)(38070700005)(2906002)(36756003)(2616005)(6512007)(186003)(71200400001)(122000001)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c29VK0dpZGFkNVRDV1lIdzVJck5zYmhOaVlrZ2hSMDJSQmZHUTFWUUU2OHAv?=
 =?utf-8?B?M2RMWjYwU1hUWGRMQzhmMlI2bkRHeGNYY29wUjBEWGU5Nnd6MkZVU1hjd3Zp?=
 =?utf-8?B?ME9xWGRoWE9XamFMbm5LUTY4cFNqOWFUM0doVTdZL042T2F6WFN4eXV0cWZG?=
 =?utf-8?B?K3dOMExMQzhUK3dUQldqSU1JZ0UxTThvOTNGSGhzYzJsZU5CQWhJZnp3S2NV?=
 =?utf-8?B?WklhS28ycXdQdk1pM1NoWkpJbXZIS0ptVlhWaExRQlpjUWUyYzlRR1p4NGJl?=
 =?utf-8?B?bkxUM3FtTDVwQllaNWJwdjFQUFcrZS9wYlROU0owTW51Ykl3L0kzSDZWWXF0?=
 =?utf-8?B?bC9OYjVxQkdrUmJlWGI3MjgrSFVNTmVmM3Y4TFQwM2d5ZlUzOHpUTkVUZXBj?=
 =?utf-8?B?SXNoelV0R2ZsUitXQXQrZFplSWNlQmIzdlRzem54b1AxdHpTd245ZHV0K0d0?=
 =?utf-8?B?RFBhbFI0alkwVUcxT00wYmxUM3pIZVppVzRSbXZsdmJ4a3RYekN3cHBzSi9J?=
 =?utf-8?B?T2dTbGpYd0FHd2VJY2oxejhqdGNHL0NiU0xKRzVRTWFpN1l6T3I3WFBrUHNs?=
 =?utf-8?B?V0hzNGVJV0hBTE93cFdHNUQvK3lDbG4zcml0YXVjbmpUcGlhSXBOSGhMam5y?=
 =?utf-8?B?TmtIWFFRekRCNm9laU1xTTZzd1VoNndNTE85WW4yWmFPYi9OSjd3L0lkZSsz?=
 =?utf-8?B?M0dDdTFxSi93T1BBRjB2eGVpUVpqK0piK3RUcWlZb213YzNUWms4U2FSYmhx?=
 =?utf-8?B?ZXJCLzZlZnRzclAxbC9QcFdvdUxFd2pQNVhJcUQ5NkNTdzNkVlFpM2VRVDNN?=
 =?utf-8?B?dkNkSnNxU0pOVjVxbk5kbGxLSzZ6WVdIRGlMRTVhYVVoOGwzR3ZtbGdJaUs4?=
 =?utf-8?B?ZmNrN2l2Z3Y4RkgvZU5saEdLeDJyZkpkbmFsSWFKeFpVcTJUUmFGajVObGp6?=
 =?utf-8?B?UDRicmNnekF1bGVOZG1XSU1HRlFyaVdmc3NvS01JMW9xdFpMS0dpOWhmOUhB?=
 =?utf-8?B?NDlYY29QUlBMaVNsVXdwSHdnWEVCL3h1SmdneEY0SFF6RmV4RHl4MDlzdVVN?=
 =?utf-8?B?OWUvZXorSVc5cWFsZTBObUlBTXFNT2NiWGlINjhTZ0JTR0pOenFiOWl2QUpY?=
 =?utf-8?B?bmxKb3Naa00vc0IrN1R2d1RPS3VZMzAyc1FBa280UkhTQ29ndm40YUVGclc1?=
 =?utf-8?B?NmFwUjJ1cERtMDZMV1ViS0J3QkFrZndqUGNram5DWThmQWh5R3F1K2t4MTlS?=
 =?utf-8?B?QkYyNFdaYStkc0orTklEREhtRU9aYktFUzJFcGFRSWNlUHFucXd6ZFhWbDhL?=
 =?utf-8?B?ZXBRS3B3cndoSHEzK2c2OS9NcWhUbnp0STl4d3M5RmI0WHpoNncvMDZLYVZU?=
 =?utf-8?B?V0pzYkhKcGdiQnhVU1ozZjFkcnA2d1RmMVBnY2kwbFZQTE50T3h6bUZ0bGVZ?=
 =?utf-8?B?L0ZjN282ZWkwRHJSaU9sRGtkb0dKRmlaazRCb283bWJDemhrRFlwTTRET1Jl?=
 =?utf-8?B?dDV1aDdLSXZTalR2RU1nRDlqQW91bjdnQ3pIcTJVZkw1SmZyVFNiMzlZRGRn?=
 =?utf-8?B?dWUvU01mMnVMbUdWSnhlWTdldUJNUkMxeENsMHB5OENzUGM2YU5MeWZheElR?=
 =?utf-8?B?TFFjazlYM3ppdHVZaUNnUTdDeVVlckFyZUJzL01wamNycVp5cUErZGZ6T3BP?=
 =?utf-8?B?KzVRWU1oYXpHRk5SZHJSQmJvK0xvbzk1ZDJLZXFtVC9HU1hvYUZ6bXpka1hm?=
 =?utf-8?B?Z3dBcXFvSVZTZlNTWFQydytpbFlvaFU0Vk1DdGJlQmNTY3RGM25mVUZGbHpK?=
 =?utf-8?B?NG1rM20yUzRKK1JablRZRUh3TkxPUStmS0wrdjhSOExJd012bDVtcWZyYVN1?=
 =?utf-8?B?R2U1aHNKNUllbUM1UmZXQ2QyWlZvSWc2K0U5cGdFaDZpc3FRNTI0ME9ad2VY?=
 =?utf-8?B?ZjdIRFI0MkUwUWtWMmxod3AzaVg0ZDZ4RTVENUl6T0ZjaUFSSEliUDRCQkRz?=
 =?utf-8?B?MTJqb3dUdktTR2VsdUtZL2J4QVVUeERNRm1zWWJrUDdFeGlTczlHQTFYaVh5?=
 =?utf-8?B?bk5NMWs2OVZhSDg0N2loMGc1TGprU2xpT0FSMjRhaEFtZ00raFJEekgraW13?=
 =?utf-8?B?V1drc2tWRHQ5OTJ2dHY3ZTlXam41c3BRbXlYek9wZkdzemNMQ2ZzT2FTZ0M2?=
 =?utf-8?Q?Qh6nJ6142P1abJYYYZfVNeI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F338164CB488BC4DABB9473335F8A4EA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57b322b7-2979-4ffe-e84f-08dab3816abf
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 16:29:24.9149 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B7ukpDAOnXkFIsxUEqDT2cXSVLQocrSN3AC2h7w12Zv4NIQABeh5ZFFtDxhIKvKcjtfZRNKP4dgVyW8Pzfnr6Fod7BukESKVd/brYc/6O4vt3CBmlzUlAwh4s9L99SFZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/7] drm/i915/pxp: Make intel_pxp power
 management implicitly sort PXP-owning-GT
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

d2l0aCB0aGUgcmVtb3ZhbCBvZiBweHB0ZWVfaWZhY2Vfb3duZXIgYW5kIHRoZSBzZXBhcmF0aW9u
IG9mIGEgZ2xvYmFsLXB4cCBjaGVjayB2cyBhIHBlci1ndCBweHAgKGlzIGVuYWJsZWQpIGNoZWNr
LCB0aGlzDQpwYXRjaCB3aWxsIGdldCBkcm9wcGVkIGFzIHRoZSBsYXR0ZXIgY2hhbmdlIHdvdWxk
IGFwcGVhciBpbiBlYXJsaWVyIGluIHRoZSBzZXJpZXMNCg0KT24gV2VkLCAyMDIyLTEwLTA1IGF0
IDIxOjM4IC0wNzAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gcHhwdGVlX2lmYWNlX293bmVyDQoN
Cg==
