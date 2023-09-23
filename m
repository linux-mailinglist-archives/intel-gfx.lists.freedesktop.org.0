Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C4E7ABDA5
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Sep 2023 06:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95E610E037;
	Sat, 23 Sep 2023 04:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB3B10E1AE
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Sep 2023 04:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695441630; x=1726977630;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k0GLaIRd3GXWxvrwtJv4s05NWe5FQqp2UsUOJqjOtdE=;
 b=Xz0Ql6xjts3XyfWftd39MWWh2Uq5+ZxiZkftSMpq26ZyqHLns+5Fovt1
 oVrgYq2qsQUaTIizjBhXTd0U/2AuhNfdcBmr7sEY8BDZFIdXPemM0v2kT
 A52UQocV1s8B7SCUylWWw1WF82bDqfVN4w+ipd/rfpsViVojGEmmTvh1v
 TPVS4HzzpWjcfoyiZwa63o6ShmFDs2KD1BkD1Y6+J4PgT4Ac2d4hzbw3P
 H82ITYRJ2qBfyH28W5vAsQrRkHlvkZP079iqmrJcSI4ilCP9saox+O3+j
 X8OWW0TPf7lXRUn+yI25ciIvaxr2BQv+5lZNWTLKV1H92/xlAmNLbOuAm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="360373149"
X-IronPort-AV: E=Sophos;i="6.03,169,1694761200"; d="scan'208";a="360373149"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 21:00:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="741324139"
X-IronPort-AV: E=Sophos;i="6.03,169,1694761200"; d="scan'208";a="741324139"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 21:00:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 21:00:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 21:00:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 21:00:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mq/BAFIehUM+KhJoY+9nw+/dnLmrw/YZG/oHbktYadDxsPL6umSZ7CTRELZOzszpcQ4cijj+cAj8s3X/9upPnbT/ONVmW7h9i9VWQEkS9IdtBlkP6JRxGNVZr0BrUFTmSU/Z+C8cxpijL2uckccU0NE1/6ln9MOdT9DBl7DEI0ANwO/RZXydOX9Hj6aFB4GeAQsWlTWk0lkoHK74sMSAFQHh3XminvLwvyekc8BGQA8OvEAElkEPYoIKoruuGbFApqNt0Nnc8K15bGyuzWRqhUelIqnwPQLajWtzVQS1klsLHKdHjiKEypKpUs1MAoxgeZH1vKpMxibVRHU16BiVkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k0GLaIRd3GXWxvrwtJv4s05NWe5FQqp2UsUOJqjOtdE=;
 b=KdzxMNhFgjKNfp0WhpW5rmVhf08/+SFTrfSehozQe4yERkk+gT2t7+dKJR760vl+CCnFslpCuJERkBZilnu9IkLaRU5xWKObkj0jHUhXt9zB9hPOTPWGe6Jgg6drb6xc8/d62xnvlwDK0F9iG6RSPovsx5s6I3a+2hxDuCafAZvfcxyZJ6TInZrroGaDpETMALdpKz93yKmD6owHbIQlgNKQAJCy37kXou97gpUhabZtKnk7L7WdLXTxkC6aZgq69ZuiHpaCx2Gt0xt2QBdys8VZ48/oQ85XCfULM1CuG7jRoYeYKZtRmYaAlaMToUKvoqeK42gj6ybRjknsNyf80w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB5960.namprd11.prod.outlook.com (2603:10b6:510:1e3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.21; Sat, 23 Sep
 2023 04:00:22 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::bddf:185b:23c:241%7]) with mapi id 15.20.6792.026; Sat, 23 Sep 2023
 04:00:22 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH v3 2/3] drm/i915/guc: Close deregister-context race
 against CT-loss
Thread-Index: AQHZ7X7qyFBxnOL8i0u00xlVDcYTDLAnyKIw
Date: Sat, 23 Sep 2023 04:00:21 +0000
Message-ID: <CY5PR11MB62111B46E008A712F5ED060C95FEA@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-3-alan.previn.teres.alexis@intel.com>
 <ZQMoG9nW+3lVj60j@intel.com>
 <804676f03a1760361ea7954681eb208e3af1a38f.camel@intel.com>
In-Reply-To: <804676f03a1760361ea7954681eb208e3af1a38f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH7PR11MB5960:EE_
x-ms-office365-filtering-correlation-id: d8226c0d-8b2c-4e84-ad6d-08dbbbe99b97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x3EgdZRCnSPev/ins7WJJWO2qRw49xd2jSiM47TMFdabtljuhtwe7c2fYrBpanNHx5J50beKxAyyBRQuxonIQ+0weEnnTuck8W1qDoWAxYqYOzK9O9hdPHLnoQpRhmM/XAiSv/RMT11ID8bETfrvve4/bGrRCT43PpnENOGXIzFqz7cnazLzncBKatTfoyIq4PlKRjEwEateYuNI9M3pS22OEarA7+rvME/g72E69Ad6nGAPklKBrFRGKu0AyRMhBp8hV5CQkaW4UquugFrzzKeVi8M8opv/hGTYP0/kW7Kj5wfeiQxVgR1hM1+OxvCXiVIJHBE/tSg5zsd5wv6HW1UVCrVxRh6U4VFtc20OQYQmMSWTu8/ksETPlQ2NQ6HmefrEZ5soBwA75ScsP8qyitztz69eo5yNl2zUOiFhrGV9DNNl9WaQHSigts1mImGcFMGPLJvdM/yhKXLeHqSCO+Q0amckkRN49RvM9behoD1i/clc/NpS1ag4CHWhuWQXs3AVWacDCLojV4vHbT9w0M+xgaSVRb0Ka51Thq7aUdktkl8DgBlcVG5YkVKdLAdjGQ3d/TNYY7To77cCAcFVpmZ/Y4PYmMnnO29AI+34maa0Zf95Uotdp9p0Twfkq91u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(346002)(39860400002)(376002)(396003)(230922051799003)(186009)(451199024)(1800799009)(110136005)(55016003)(9686003)(316002)(6636002)(26005)(38100700002)(122000001)(66946007)(66446008)(38070700005)(71200400001)(66476007)(64756008)(66556008)(76116006)(478600001)(53546011)(41300700001)(6506007)(7696005)(82960400001)(2906002)(83380400001)(33656002)(86362001)(5660300002)(52536014)(8676002)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MnBvQ2wzQnFvTVdURTVSSFVGUmlVbHI0elBwaU1HaThtUWZWU2xsS0lSbnNo?=
 =?utf-8?B?MUtzUE41MjZXcXlFWHI5MEJDcnFrSEFMMEtaaEZjbDl4ZG5YWFFUd004Qklv?=
 =?utf-8?B?T2h6ckxqODhFMjhraExNRklPT0I2MnZPOGxvNDNaWG9IVHF4dHJVUVJ3NVR6?=
 =?utf-8?B?QjZoM2Y0L1pMMm56cHFUSnlwQVRSMThVcVhYdlVUZVFDN0tENUpMSmdodS9E?=
 =?utf-8?B?aGNnVFk4VDhGWXNTOFpGNFhoV1BYWXJJMjljWkNzVFhGSGhYdWd5RkZQSTQ3?=
 =?utf-8?B?b3NOQ2U0TFFyVjNKOTc2QitUZHVSd3hLWERPbmhXbk9LMlAwbGo2cThtNndm?=
 =?utf-8?B?bzRVdlViVkxTTlVFaGpjcStGR1FLS3ZFVWRmWWkxczdJS0JRNS9uSExXVzJT?=
 =?utf-8?B?TzNuTGZmblRzemZXb2hoUGZEL3NGeHVxV2FEN201eHM2b01KOHM1L0VEVkFS?=
 =?utf-8?B?VnJyanY2Z3hUamFxd2thckpka2dWOFVFK29GZG9Sejluc2tTd0s4ZFF0OHZm?=
 =?utf-8?B?OC9pdUxIVGJ6TkFoc3RSSzcxK2lPOWhycUNSRUJ4NXIrTW9QNnNydlptSlJL?=
 =?utf-8?B?STlvUVZGZDkySDVaQ08rUHdhS05wOTduZnI4bGV4VG95OVZRR2N5Wm5BYjZl?=
 =?utf-8?B?S0d6eWRQb0p5TWMrbm14aVg1dUdXbFRRTlozK3VlVkMrY1p5QWtKR0RpdTRt?=
 =?utf-8?B?T01McjY4ZWtiNmVDVFU4OVlHZnVGTkZhK2VkNE1mOHNFZ3VoZk4xRXJJalZH?=
 =?utf-8?B?OGZxMytYb01sRFE0djBaU1c2Lzc3dk1mSHpnb0NEOGdyTWZ0NE9xeUpvcFc0?=
 =?utf-8?B?SXhRNDR3akgwaXo5a1NyVDVzbjJ2MXZqUDkwSUtTdTlTN293c1VuRkw5aUVK?=
 =?utf-8?B?NHFReW9vN1UzQ1o4czRjSTUzNFNITjdpSTk0RE9PK1VqZXVIbDdSNE4xN3Jh?=
 =?utf-8?B?Mm5hUkdzOG4vclZDM0F1RXJHZjhQVzVHek5PUnY4TFFkYUNGODFxUGVkaDR5?=
 =?utf-8?B?UVd0cXlUZjBXcFpiNzJuOWIyazI4L3JteXBLNVNmNUJrTVN5RU5sSENtZGRW?=
 =?utf-8?B?L3RRQURKUDQ1Y1V6VCtjSW5obllGWmVBL1VUV2lqZkhrdVV6dXFqbDFic0li?=
 =?utf-8?B?eXljNk51cTBQekNNLzY1WjF5MmFRbzk0SHA0VnRJbno5REg2WHBNVlhyZ3l2?=
 =?utf-8?B?cENrWElQdk9NTlpZYUlnMWVyU2tXZThpWEZpbVFEYmtGb2pyc1g3dHNFeDlX?=
 =?utf-8?B?QkVSZUtJTmQ5U3hrWnk5NDRHakhRUy9BRlowU1dBWElBT3g0N2orWm5iUm5Z?=
 =?utf-8?B?MXdpYnpaaUxscWxGdVE2aFV1a05QeHBGdkRuYlJ3STZ3aWZVVlMwU3MzQzdw?=
 =?utf-8?B?QUw0bzBWclYwdzIyMmU2R05NV0RyTUFpcFJ0eTFTclhBYU1vbzVoWWxtQUNj?=
 =?utf-8?B?bzRZdlJMTjRUMjZTbnRiSG5Fc282RWJObGJsNWdEREdLMFdaQXBHaVNmRG9i?=
 =?utf-8?B?NmJKL08yOFVwY05oanpJeVNTVGovMWhqVVJObDYwK1ZGcFZSQi8yYXlmZTdX?=
 =?utf-8?B?aFVMOUs1bGJ3WU1KZm1KSTVjWVowdGtsenVCd1Zwd2Y1d0tHOGFQRFhxQWtX?=
 =?utf-8?B?UCtCREFYTndLUFJxUHU3Y3dsa2RQUW1JRGFJTXJxdHQ3TTJkamdjYitUUExJ?=
 =?utf-8?B?VEUzbnVjcHN2aGR2Z1BMZzVBM3ZHL2hlYUxKeUtFY2x2bjdTaEhDeUZnbC9M?=
 =?utf-8?B?Tm5PTVpHY2d3OENLWStHUkdsdG9LSTFYRGtBYlZLQmVpbmNiYmZQRCtkUWZh?=
 =?utf-8?B?dEdGcmdybXNzSkN0SVBHSlQvejBmYlNJN3BTNVdpZ0lzL1I0dy9MemRybVlp?=
 =?utf-8?B?V1BpcGpNZDRWUlRlWGFid0hQc2ZLMXg1YmkrVjBtVHp0N2ZVdnJQYm1LdTk0?=
 =?utf-8?B?bHc0L052MjlqMDZWaDRYSWdvYVFZSTJvS21raVZWNnF0US9VSjBWeUhyZmZV?=
 =?utf-8?B?cGUwQXVxK1lXM3luSDVRYzlzY2x5UyttM0F5RTdhb2JOY2VmTG1pSFB1WDVa?=
 =?utf-8?B?NElJSHI2aUVLbHYrbHdrSGdLRWlVOEN2bDlFSG9jdnVEa0NENUYyR2R4UDk3?=
 =?utf-8?Q?uicPY9gF/uJu+QvgW87hmOacC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8226c0d-8b2c-4e84-ad6d-08dbbbe99b97
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2023 04:00:21.4743 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YS5053cgaPIqM42wzk0LCKX5MbmJtK8rt8MEu94Q18eQGRI9TLP7xLeprK+ojm9W8n/d4s+lGYsI0oT9mjxOwtXh29qQQPV38nK3fdDFc0g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5960
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/guc: Close
 deregister-context race against CT-loss
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVGVyZXMgQWxleGlzLCBB
bGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gU2VudDog
RnJpZGF5LCBTZXB0ZW1iZXIgMjIsIDIwMjMgMTE6MzIgUE0NCj4gVG86IFZpdmksIFJvZHJpZ28g
PHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOyBHdXB0YSwgQW5zaHVtYW4NCj4gPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IFtQQVRDSCB2MyAyLzNdIGRybS9pOTE1L2d1YzogQ2xvc2UgZGVyZWdpc3Rl
ci1jb250ZXh0IHJhY2UNCj4gYWdhaW5zdCBDVC1sb3NzDQo+IA0KPiAoY2MgQW5zaHVtYW4gd2hv
IGlzIHdvcmtpbmcgZGlyZWN0bHkgd2l0aCB0aGUgdGFza2ZvcmNlIGRlYnVnZ2luZyB0aGlzKQ0K
PiANCj4gVGhhbmtzIGFnYWluIGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gcmV2aWV3IHRoaXMgcGF0
Y2guDQo+IEFwb2xvZ2llcyBmb3IgdGhlIHRhcmRpbmVzcywgcmVzdCBhc3N1cmVkIGRlYnVnIGlz
IHN0aWxsIG9uZ29pbmcuDQo+IA0KPiBBcyBtZW50aW9uZWQgaW4gcHJpb3IgY29tbWVudHMsIHRo
ZSBzaWduYXR1cmVzIGFuZCBmcmVxdWVuY3kgYXJlIG5vdw0KPiBkaWZmZXJlbnQgY29tcGFyZWQg
dG8gd2l0aG91dCB0aGUgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4NCj4gV2UgYXJlIHN0aWxsIGh1
bnRpbmcgZm9yIGRhdGEgYXMgd2UgYXJlIHN1c3BlY3RpbmcgYSBkaWZmZXJlbnQgd2FrZXJlZiBz
dGlsbCBiZWluZw0KPiBoZWxkIHdpdGggdGhlIHNhbWUgdHJpZ2dlciBldmVudCBkZXNwaXRlLg0K
PiANCj4gVGhhdCBzYWlkLCB3ZSB3aWxsIGNvbnRpbnVlIHRvIHJlYmFzZSAvIHVwZGF0ZSB0aGlz
IHNlcmllcyBidXQgaG9sZCBvZmYgb24gYWN0dWFsDQo+IG1lcmdlIHVudGlsIHdlIGNhbiBiZSBz
dXJlIHdlIGhhdmUgYWxsIHRoZSBpc3N1ZXMgcmVzb2x2ZWQuDQo+IA0KPiBPbiBUaHUsIDIwMjMt
MDktMTQgYXQgMTE6MzQgLTA0MDAsIFZpdmksIFJvZHJpZ28gd3JvdGU6DQo+ID4gT24gU2F0LCBT
ZXAgMDksIDIwMjMgYXQgMDg6NTg6NDVQTSAtMDcwMCwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4g
PiBJZiB3ZSBhcmUgYXQgdGhlIGVuZCBvZiBzdXNwZW5kIG9yIHZlcnkgZWFybHkgaW4gcmVzdW1l
IGl0cyBwb3NzaWJsZQ0KPiA+ID4gYW4gYXN5bmMgZmVuY2Ugc2lnbmFsIGNvdWxkIGxlYWQgdXMg
dG8gdGhlDQo+IGFsYW46c25pcA0KPiANCj4gDQo+ID4gPiBAQCAtMzE4OCwxOSArMzIwMiwzMyBA
QCBzdGF0aWMgaW5saW5lIHZvaWQgZ3VjX2xyY19kZXNjX3VucGluKHN0cnVjdA0KPiBpbnRlbF9j
b250ZXh0ICpjZSkNCj4gPiA+ICAJLyogU2VhbCByYWNlIHdpdGggUmVzZXQgKi8NCj4gPiA+ICAJ
c3Bpbl9sb2NrX2lycXNhdmUoJmNlLT5ndWNfc3RhdGUubG9jaywgZmxhZ3MpOw0KPiA+ID4gIAlk
aXNhYmxlZCA9IHN1Ym1pc3Npb25fZGlzYWJsZWQoZ3VjKTsNCj4gPiA+DQo+IGFsYW46c25pcA0K
PiA+ID4gKwkvKiBDaGFuZ2UgY29udGV4dCBzdGF0ZSB0byBkZXN0cm95ZWQgYW5kIGdldCBndC1w
bSAqLw0KPiA+ID4gKwlfX2ludGVsX2d0X3BtX2dldChndCk7DQo+ID4gPiArCXNldF9jb250ZXh0
X2Rlc3Ryb3llZChjZSk7DQo+ID4gPiArCWNscl9jb250ZXh0X3JlZ2lzdGVyZWQoY2UpOw0KPiA+
ID4gKw0KPiA+ID4gKwlyZXQgPSBkZXJlZ2lzdGVyX2NvbnRleHQoY2UsIGNlLT5ndWNfaWQuaWQp
Ow0KPiA+ID4gKwlpZiAocmV0KSB7DQo+ID4gPiArCQkvKiBVbmRvIHRoZSBzdGF0ZSBjaGFuZ2Ug
YW5kIHB1dCBndC1wbSBpZiB0aGF0IGZhaWxlZCAqLw0KPiA+ID4gKwkJc2V0X2NvbnRleHRfcmVn
aXN0ZXJlZChjZSk7DQo+ID4gPiArCQljbHJfY29udGV4dF9kZXN0cm95ZWQoY2UpOw0KPiA+ID4g
KwkJaW50ZWxfZ3RfcG1fcHV0KGd0KTsNCj4gPg0KPiA+IFRoaXMgaXMgYSBtaWdodF9zbGVlcCBp
bnNpZGUgYSBzcGluX2xvY2shIEFyZSB5b3UgMTAwJSBjb25maWRlbnQgbm8NCj4gPiBXQVJOIHdh
cyBzZWVpbmcgZHVyaW5nIHRoZSB0ZXN0cyBpbmRpY2F0ZWQgaW4gdGhlIGNvbW1pdCBtc2c/DQo+
IGFsYW46IEdvb2QgY2F0Y2ggLSBpIGRvbnQgdGhpbmsgd2Ugc2F3IGEgV0FSTiAtIEknbGwgZ28g
YmFjayBhbmQgY2hlY2sgd2l0aCB0aGUNCj4gdGFzayBmb3JjZSAtIGkgc2hhbGwgcmV3b3JrIHRo
aXMgZnVuY3Rpb24gdG8gZ2V0IHRoYXQgb3V0c2lkZSB0aGUgbG9jay4NCj4gDQo+ID4NCj4gPiA+
ICsJfQ0KPiA+ID4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZjZS0+Z3VjX3N0YXRlLmxvY2ss
IGZsYWdzKTsNCj4gPiA+ICsNCj4gPiA+ICsJcmV0dXJuIDA7DQo+ID4NCj4gPiBJZiB5b3UgYXJl
IGFsd2F5cyByZXR1cm5pbmcgMCwgdGhlcmUncyBubyBwb2ludGluZyBpbiBzL3ZvaWQvaW50Li4u
DQo+IEFsYW46IGFncmVlZCAtIHdpbGwgY2hhbmdlIHRvIHZvaWQuDQo+ID4gPg0KPiA+ID4NCj4g
DQo+IGFsYW46c25pcA0KPiA+ID4gQEAgLTMyNzksNiArMzMyMiwxNyBAQCBzdGF0aWMgdm9pZCBk
ZXN0cm95ZWRfd29ya2VyX2Z1bmMoc3RydWN0DQo+IHdvcmtfc3RydWN0ICp3KQ0KPiA+ID4gIAlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7DQo+ID4gPiAgCWludCB0bXA7DQo+
ID4gPg0KPiA+ID4gKwkvKg0KPiA+ID4gKwkgKiBJbiByYXJlIGNhc2VzIHdlIGNhbiBnZXQgaGVy
ZSB2aWEgYXN5bmMgY29udGV4dC1mcmVlIGZlbmNlLXNpZ25hbHMNCj4gdGhhdA0KPiA+ID4gKwkg
KiBjb21lIHZlcnkgbGF0ZSBpbiBzdXNwZW5kIGZsb3cgb3IgdmVyeSBlYXJseSBpbiByZXN1bWUg
Zmxvd3MuIEluDQo+IHRoZXNlDQo+ID4gPiArCSAqIGNhc2VzLCBHdUMgd29uJ3QgYmUgcmVhZHkg
YnV0IGp1c3Qgc2tpcHBpbmcgaXQgaGVyZSBpcyBmaW5lIGFzIHRoZXNlDQo+ID4gPiArCSAqIHBl
bmRpbmctZGVzdHJveS1jb250ZXh0cyBnZXQgZGVzdHJveWVkIHRvdGFsbHkgYXQgR3VDIHJlc2V0
IHRpbWUgYXQNCj4gdGhlDQo+ID4gPiArCSAqIGVuZCBvZiBzdXNwZW5kLi4gT1IuLiB0aGlzIHdv
cmtlciBjYW4gYmUgcGlja2VkIHVwIGxhdGVyIG9uIHRoZSBuZXh0DQo+ID4gPiArCSAqIGNvbnRl
eHQgZGVzdHJ1Y3Rpb24gdHJpZ2dlciBhZnRlciByZXN1bWUtY29tcGxldGVzDQo+ID4NCj4gPiB3
aG8gaXMgdHJpZ2dlcmluZyB0aGUgd29yayBxdWV1ZSBhZ2Fpbj8NCj4gDQo+IGFsYW46IHNob3J0
IGFuc3dlcjogd2UgZG9udCBrbm93IC0gYW5kIHN0aWxsIGh1bnRpbmcgdGhpcyAoZ2V0dGluZyBj
bG9zZXIgbm93Li4NCj4gdXNpbmcgdGFzayB0Z2lkIHN0ci1uYW1lIGxvb2t1cHMpLg0KPiBpbiB0
aGUgZmV3IHRpbWVzIEkndmUgc2VlbiBpdCwgdGhlIGNhbGxzdGFjayBJJ3ZlIHNlZW4gbG9va2Vk
IGxpa2UgdGhpczoNCj4gDQo+IFszMzc2My41ODIwMzZdIENhbGwgVHJhY2U6DQo+IFszMzc2My41
ODIwMzhdICA8VEFTSz4NCj4gWzMzNzYzLjU4MjA0MF0gIGR1bXBfc3RhY2tfbHZsKzB4NjkvMHg5
NyBbMzM3NjMuNTgyMDU0XQ0KPiBndWNfY29udGV4dF9kZXN0cm95KzB4MWI1LzB4MWVjIFszMzc2
My41ODIwNjddDQo+IGZyZWVfZW5naW5lcysweDUyLzB4NzAgWzMzNzYzLjU4MjA3Ml0gIHJjdV9k
b19iYXRjaCsweDE2MS8weDQzOA0KPiBbMzM3NjMuNTgyMDg0XSAgcmN1X25vY2JfY2Jfa3RocmVh
ZCsweGRhLzB4MmQwIFszMzc2My41ODIwOTNdDQo+IGt0aHJlYWQrMHgxM2EvMHgxNTIgWzMzNzYz
LjU4MjEwMl0gID8NCj4gcmN1X25vY2JfZ3Bfa3RocmVhZCsweDZhNy8weDZhNyBbMzM3NjMuNTgy
MTA3XSAgPyBjc3NfZ2V0KzB4MzgvMHgzOA0KPiBbMzM3NjMuNTgyMTE4XSAgcmV0X2Zyb21fZm9y
aysweDFmLzB4MzAgWzMzNzYzLjU4MjEyOF0gIDwvVEFTSz4NCkFsYW4gYWJvdmUgdHJhY2UgaXMg
bm90IGR1ZSB0byBtaXNzaW5nIEdUIHdha2VyZWYsIGl0IGlzIGR1ZSB0byBhIGludGVsX2NvbnRl
eHRfcHV0KCksDQpXaGljaCAgY2FsbGVkIGFzeW5jaHJvbm91c2x5IGJ5IHJjdV9jYWxsKF9fZnJl
ZV9lbmdpbmVzKSwgd2UgbmVlZCBpbnNlcnQgcmN1X2JhcnJpZXIoKSB0byBmbHVzaCBhbGwNCnJj
dSBjYWxsYmFjayBpbiBsYXRlIHN1c3BlbmQuDQoNClRoYW5rcywNCkFuc2h1bWFuLg0KPiANCj4g
SSBkaWQgYWRkIGFkZGl0aW9uYWwgZGVidWctbXNnIGZvciB0cmFja2luZyBhbmQgSSByZWNhbGwg
c2VlaW5nIHRoaXMgc2VxdWVuY2UgdmlhDQo+IGluZGVwZW5kYW50IGNhbGxzdGFja3MgaW4gdGhl
IGJpZyBwaWN0dXJlOg0KPiAJaTkxNV9zd19mZW5jZV9jb21wbGV0ZSA+IF9faTkxNV9zd19mZW5j
ZV9jb21wbGV0ZSAtPg0KPiBfX2k5MTVfc3dfZmVuY2Vfbm90aWZ5KGZlbmNlLCBGRU5DRV9GUkVF
KSAtPiA8Li5kZWxheWVkPy4uPg0KPiAJWyBkcm0gZmVuY2Ugc3luYyBmdW5jIF0gPC4uLj4gZW5n
aW5lc19ub3RpZnkgPiBjYWxsX3JjdSgmZW5naW5lcz5yY3UsDQo+IGZyZWVfZW5naW5lc19yY3Up
IDwuLmRlbGF5ZWQ/Li4+DQo+IAlmcmVlX2VuZ2luZXMgLT4gaW50ZWxfY29udGV4dF9wdXQgLT4g
Li4uIFtrcmVmLWRlY10gLS0+DQo+IGd1Y19jb250ZXh0X2Rlc3Ryb3kNCj4gDQo+IFVuZm9ydHVu
YXRlbHksIHdlIHN0aWxsIGRvbid0IGtub3cgd2h5IHRoaXMgaW5pdGlhbCAiaTkxNV9zd19mZW5j
ZV9jb21wbGV0ZSINCj4gaXMgY29taW5nIGR1cmluZyBzdXNwZW5kLWxhdGUuDQo+IE5PVEUxOiBp
biB0aGUgY292ZXIgbGV0dGVyIG9yIHByaW9yIGNvbW1lbnQsIEkgaG9wZSBpIG1lbnRpb25lZCB0
aGUNCj4gcmVwcm9kdWN0aW9uIHN0ZXBzIHdoZXJlIGl0IG9ubHkgb2NjdXJzIHdoZW4gaGF2aW5n
IGEgd29ya2xvYWQgdGhhdCBkb2VzDQo+IG5ldHdvcmsgZG93bmxvYWQgdGhhdCBiZWdpbnMgZG93
bmxvYWRpbmcganVzdCBiZWZvcmUgc3VzcGVuZCBpcyBzdGFydGVkDQo+IGJ1dCBjb21wbGV0ZXMg
YmVmb3JlIHN1c3BlbmQgbGF0ZS4gV2UgYXJlIGdldHRpbmcgY2xvc2UgdG8gZmluZGluZyB0aGlz
IC0gdGFraW5nDQo+IHRpbWUgYmVjYXVzZSBvZiB0aGUgcmVwcm9kdWN0aW9uIHN0ZXBzLg0KPiAN
Cj4gQW5zaHVtYW4gY2FuIGNoaW1lIGluIGlmIGhlIGlzIHNlZWluZyBuZXcgc2lnbmF0dXJlcyB3
aXRoIGRpZmZlcmVudCBjYWxsc3RhY2sgLw0KPiBldmVudHMgYWZ0ZXIgdGhpcyBwYXRjaCBpcyBh
cHBsaWVkLg0KPiANCj4gDQo+ID4gSSBtZWFuLCBJJ20gd29uZGVyaW5nIGlmIGl0IGlzIG5lY2Vz
c2FyeSB0byByZS1zY2hlZHVsZSBpdCBmcm9tIGluc2lkZS4uLg0KPiA+IGJ1dCBhbHNvIHdvbmRl
ciBpZiB0aGlzIGlzIHNhZmUgYW55d2F5Li4uDQo+IA0KPiBhbGFuOiBzbyBteSB0aG91Z2h0IHBy
b2Nlc3MsIGFsc28gYWZ0ZXIgY29uc3VsdGluZyB3aXRoIEpvaG4gYW5kIERhbmllbGUsIHdhczoN
Cj4gc2luY2Ugd2UgaGF2ZSBhIGxpbmsgbGlzdCB0byBjb2xsZWN0IHRoZSBsaXN0IG9mIGNvbnRl
eHRzIHRoYXQgbmVlZCB0byBiZQ0KPiBkZXJlaWdzdGVyZWQsIGFuZCBzaW5jZSB3ZSBoYXZlIHVw
IHRvIDY0ayAoMzJrIGV4Y2x1ZGluZyBtdWx0aS1scmMpIGd1Yy1pZHMsDQo+IHRoZXJlIHJlYWxs
eSBpcyByaXNrIGlzIGp1c3Qga2VlcGluZyBpdCBpbnNpZGUgdGhlIGxpbmsgbGlzdCB1bnRpbCB3
ZSByZWFjaCBvbmUgb2YgdGhlDQo+IGZvbGxvd2luZzoNCj4gDQo+IDEuIGZ1bGwgc3VzcGVuZCBo
YXBwZW5zIGFuZCB3ZSBhY3R1YWxseSByZXNldCB0aGUgZ3VjIC0gaW4gd2hpY2ggY2FzZSB3ZSB3
aWxsDQo+IHJlbW92ZQ0KPiAgICBhbGwgY29udGV4dHMgaW4gdGhpcyBsaW5rIGxpc3QgYW5kIGNv
bXBsZXRlbHkgZGVzdHJveSB0aGVtIGFuZCByZWxlYXNlIGFsbA0KPiByZWZlcmVuY2VzDQo+ICAg
IGltbWVkaWF0ZWx5IHdpdGhvdXQgY2FsbGluZyBhbnkgaDJnLiAodGhhdCBjbGVhbnVwIHdpbGwg
b2NjdXJzIG5lYXJseSB0aGUgZW5kDQo+IG9mDQo+ICAgIGdlbSdzIHN1c3BlbmQgbGF0ZSwgYWZ0
ZXIgd2hpY2ggdGhpcyB3b3JrZXIgd2lsbCBmbHVzaCBhbmQgaWYgaXQgaGFkIHBlbmRpbmcNCj4g
Y29udGV4dHMNCj4gICAgd291bGQgaGF2ZSBiYWlsZWQgd2l0aCAhaW50ZWxfZ3VjX2lzX3JlYWR5
Lg0KPiANCj4gMi4gc3VzcGVuZCBpcyBhYm9ydGVkIHNvIHdlIGNvbWUgYmFjayBpbnRvIHRoZSBy
ZXN1bWUgc3RlcHMgYW5kIHdlDQo+IGV2ZW50dWFsbHksIGF0IHNvbWUgcG9pbnQNCj4gICAgZ2V0
IGFub3RoZXIgcmVxdWVzdCBjb21wbGV0aW9uIHRoYXQgc2lnbmFscyBhIGNvbnRleHQgZnJlZWlu
ZyB0aGF0IHdlIGVuZCB1cA0KPiByZXRyaWdnZXJpbmcNCj4gICAgdGhpcyB3b3JrZXIgaW4gd2hp
Y2ggd2UnbGwgZmluZCB0d28gY29udGV4dHMgcmVhZHkgdG8gYmUgZGVyZWdpc3RlcmVkLg0KPiAN
Cj4gDQo+ID4NCj4gPiA+ICsJICovDQo+ID4gPiArCWlmICghaW50ZWxfZ3VjX2lzX3JlYWR5KGd1
YykpDQo+ID4gPiArCQlyZXR1cm47DQo+ID4gPiArDQo+ID4gPiAgCXdpdGhfaW50ZWxfZ3RfcG0o
Z3QsIHRtcCkNCj4gPiA+ICAJCWRlcmVnaXN0ZXJfZGVzdHJveWVkX2NvbnRleHRzKGd1Yyk7DQo+
ID4gPiAgfQ0KPiA+ID4gLS0NCj4gPiA+IDIuMzkuMA0KPiA+ID4NCg0K
