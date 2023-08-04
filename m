Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C32D976FB68
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 09:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DA010E6A5;
	Fri,  4 Aug 2023 07:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2324B10E6A5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 07:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691135506; x=1722671506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SPWgrtkba4wHtxpLrpksOMl/Br50MO7c+zkZe+aiNrM=;
 b=MDjSGmXir97GpqLHc1YBFfccAFaJw9q7C8bQhyTKeeiqXCvhubhwW+H3
 chiQSPilAg//6g7yVzzlmfovo5RGi0f2Jg9j7PumW+rlKXXVO1ZKGVjRx
 S3USZNdDACXHsl54gj86G8SlM766exl1K85Lqxd8jqKJ/UMdOLirWBPYL
 HAK4Xon18zGC0qjm7ejOCn8Kh4z0x+w8hRUv9lgnuPhLoudYiFz9ewgDB
 Ka5sieyFHvhM0EMNsCEHSHcTMkFJus5Qa1L90ekhdZw6VjhBkfKoxYV9k
 l6r3dQhQH1ofLD+b8in4LG10rFRUtw+UnoV6+avl5E2qc+rIM6VA00aFy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="372842410"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="372842410"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 00:51:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="679820702"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="679820702"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 04 Aug 2023 00:51:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 00:51:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 00:51:35 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 00:51:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LbJ4/x4QOJOkBvN9eAvF1Tn2xk2CllpwfgL219mQzyLdaMPDrFhBBqgrtfZzwulYwRZFktQYkiPlrTrt66gZpfB+BsaMRN1P1UybR86ckGrrfAHzXZ+l6qMr7qFPfaMZTEYr/u5xyIXZYwhzbFVfc9RQyoBCh/6bxCZsAkxQj6+h0jYuZgsmS9UbWu0yayCgKnrGs1mNSXUhR2KiA/5CAby3xlrQb0TCcEceve7++11Y87bhFHqKOSAID471gfUaztq0KicRIGuqTuG6dDustrzSQ0fanNZXWwKBC3P+HYYSAQs/xR2gkxEht+6QHXiTqfMfYv70Y5Y+WmolyUmWTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SPWgrtkba4wHtxpLrpksOMl/Br50MO7c+zkZe+aiNrM=;
 b=kIgnRpsQX/dODf7o6kCHqtYRN1KcY2uIXaCD4RKVbXMVFf3gcxvgZqcs/uIRI87L+/efeY7zKJG9kmoKp5NSoiDBQaaSGNKeKp74FsmFrTpZAYsHsd2YVpV1nUcixCumlqlufWBeUdR4bSOQnMgGr6tZvdwkH31u4wzJzM2LqfACOnm4w9JAkNGhsX0wzHv6Oq/ci1xVuzmkmHpbq+rlCgG7RzfOWEFbnyAmZbjxDZ4BiAzwdxr3cO3AI1trpF4ywld8aDLbFv95wTsnUrCc5/Q3uXBAhHb9CAN31b3ODLwKZQCoXzHFDJqMCtUX5BVmWUD7kvaBgw2gHQtbDtQPBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ1PR11MB6156.namprd11.prod.outlook.com (2603:10b6:a03:45d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Fri, 4 Aug
 2023 07:51:32 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::686:c42a:b4c3:f07e]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::686:c42a:b4c3:f07e%7]) with mapi id 15.20.6652.021; Fri, 4 Aug 2023
 07:51:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/sdvo: fix panel_type initialization
Thread-Index: AQHZxgXqlTQaktRsF0qcLc7CFLhmJq/ZxJ7g
Date: Fri, 4 Aug 2023 07:51:31 +0000
Message-ID: <CY5PR11MB634423568E25C9A4DF005C1DF409A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20230803122706.838721-1-jani.nikula@intel.com>
In-Reply-To: <20230803122706.838721-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ1PR11MB6156:EE_
x-ms-office365-filtering-correlation-id: 6a49dc75-c1e3-4f0b-1aa8-08db94bf9e62
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NAerxFQ2H8kq3RaWT5S0uux+0PPmBDWDsH+KTOBwDESCdf8s1CZ/yvkPMeKmbwNSVx1dQoBtcqfieSPM3iC4vHs1uNeaNvlCwGcuqdc5oPaOg+WvJ7cY8NwK4pi4Vp1PKPid69iiGIdV30+L0zKrez6l2tWMjTJ0pwl3F/os5WxLMlG9FV/GHrVLB9PFYcVv+Qcces7i+NMZ0RM25lIYr+/ovX9Q/RqSqgKRSsrwFwY0i9hQKnxDjkrjpyt2rym+n6SJ1zbTE3N+fKoqvUv+ffgMLMzvloSfZ5kV5RbfCJbGF4a+oMJfMJJsp5nwFxMIoVnnM3tdGZVGpFFf92sxIDzkfXo1XfaABbgavaRSNAaORFHbn4Rtt9/spiw33z/OKBslEOQAliVO809ExayrKuMJG5yOZqs/jM81de2Suw2dsJLAgtCgJXufd+sS1sOJz8UtoLo42xgTjS7RFI2lE2QCUrRpVJphS6HBETGVEkC8fCF/s4M2pvK7CuMAdCGZu5PV5Bt/TO5bWciM6t1wKEtMgQjxQeGGJ+tHvLLR/feeyXYFNGhy1dReDIs441G+TWhrhcWHFKj3OIbBaJV4roOR5NbmLzei2+P4iTNHsDU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(376002)(136003)(39860400002)(1800799003)(186006)(451199021)(38070700005)(2906002)(4326008)(41300700001)(83380400001)(66574015)(478600001)(86362001)(316002)(38100700002)(110136005)(76116006)(9686003)(122000001)(54906003)(966005)(82960400001)(52536014)(55016003)(66476007)(5660300002)(66446008)(53546011)(66556008)(71200400001)(64756008)(33656002)(26005)(6506007)(8936002)(66946007)(7696005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWthUkRqZ2FKYkQxTGJ5WkdDVWJKNmxoU2FyVDIyK1ZVQ1Y1dFQ1ZWZaTzlG?=
 =?utf-8?B?Vy85ejFQSys1R09leWFBd2RGVGlNaHdKaUJxZEsrNmtXQTY2ZTJhRFB6cjE2?=
 =?utf-8?B?OEpLWDREc1VTRFFpQ3NvMnM1NVUxcmgzUzNqWEZGaDY1cFZ2Nk5DQXBwd0NR?=
 =?utf-8?B?VzhTaUNmQjc5YTF6eE5mRjF0aWx4dTc2Njl3MVllRlJsRGNaQndPSGRuczdV?=
 =?utf-8?B?MzVDTlNpeVhKamVpNTdhWUplY0JwN3BISnJoWEhJdUhKZ0Z5MmFjMW8yY2Ju?=
 =?utf-8?B?M1BHYVNYSCszZ3ArNmNzbWZOMWJhcDNXMXFIekFUWDNnQTBDV0RKSDRMT1NC?=
 =?utf-8?B?aHRMcm5rcVZEVTFMbW5EN3o5cVA3UXc0SW5SeG9KSE9TWC9PdmwxUEJqalVU?=
 =?utf-8?B?ZTZBQXpNcWNoYkVWNnJIc1pJYWVDcHpibk4rcElnTkJjSXZLNzFmZDRlZS9y?=
 =?utf-8?B?bHZKb0FzWENXWVZQeHMrNm9NclFkKy9QTFRmZkJFbGdLMlE1a1UyM0tmYWdV?=
 =?utf-8?B?K21HaFhsaWZLdDZ6RXNRK1N1REZNVUxMN2R1OEwrUGN6RDFKOEdaR09aa2Zr?=
 =?utf-8?B?QStCY29mQVpOaUoyRzFQZ29hZkpyeDVNbEJkZFAzcFpPVXR1V0llSW1VLzJ1?=
 =?utf-8?B?S1RncE1sSG9Kd1BDN2preUZQaXBGY1lhVUZ6dWdobW9EL05VNjNtNTVSMkhN?=
 =?utf-8?B?RkIrQyt5eFdxQmY0V3Y1TEQxbUR6b3I3djdRQnNSWERhQ0JyWC9WSW5NS2o5?=
 =?utf-8?B?VXJvd3NpNEFIQ3Q0UzhhYzhMNk51dUZxSEFhRm9uZ3YrT3lKMTh0MlZPWkh1?=
 =?utf-8?B?YzhIdVJ4MDNFM1R4Nmt2ZTk3b0YwVjZqV25zMmF0ejZjaGpqTkNIdS9tYVpR?=
 =?utf-8?B?Vk5MbUlSZTJyVkRYVEU1TkRjOC9pcnQyNWdnM0JoWUVQS0dUQ2tPbGxMaFZx?=
 =?utf-8?B?QkI3bXJnRWRoZXNBTHlUUTBzQTN3Nm9Mb0pjWHJqVzhWT0lzdXZoeDQvc0hi?=
 =?utf-8?B?OXlRTXFmM1hXQ3o2YmQrZTlpdko0d3Q3UkZ1d00rQ21xWkhkMVhsd3RDRmN3?=
 =?utf-8?B?WVhvODNHcFQvcGRJTFJTMnIxN0pvYkRtc2RFdnlpRmIxOVJpbjFWYjdPR0s0?=
 =?utf-8?B?bnpKM0VGbVcvUWhVRTVQT3AxV3FCSDZHZWtJTUoyaGJpMEtUYnpOaEkySERl?=
 =?utf-8?B?OVV0VmxaSnA3YmQ5NllyQ3ptSUVFL1E3YkhnZUlIc3FOU2VYQmhsbVZNSXI2?=
 =?utf-8?B?TDg1Y1ZuYVM1VDE4RU1PZHVXQkJUUTdBSjAyRnIzZDVKa2RsWUh5eTlML0RY?=
 =?utf-8?B?SXZLMS9KUkwrcWJaeHlYNG1CUm1KWmFqd0ozZitZWnpZalUvMGVtQnhialR6?=
 =?utf-8?B?cjA3by94aG9DdllnVGozSUF2RzRrdTVTYmFRQmRyck42VnlpZFJrUWhBY1JW?=
 =?utf-8?B?SXNBM1BwVkhFNCtNSjU2R0ZnQXNrc2hVWmNGRFVzcXNuQlFmakNpei9mcHBu?=
 =?utf-8?B?ZDhROGFYYWJCMWcvTWFRUDRtY0FHZUY2aDlHN1pScGJUWHRLeTNla1VFakEz?=
 =?utf-8?B?dTdZYUVLdlpkaXFFRURSU2J0eHlnOUkyNzVnNzRrQ3BwUmIzUElnRkxkZlVW?=
 =?utf-8?B?L1RraCsyeGs2NkRnV01mQUxlcjZQZGMzVGNiaW5weTNkMDUybVBzRDFSMk1n?=
 =?utf-8?B?eFE1aFFhYjgxUUJPcTQ0Q01oZiswMGdhaERzTUp5dzFZQkFRZTJVbGdMUGJW?=
 =?utf-8?B?enBVbXQrcnFFa1RBVkNBN0JmOTh3R0JxUGRpNlR1amZ4QnEzd0ZZelFrWmhX?=
 =?utf-8?B?U21NTmtPdDBSSU4yZzI1YnRVWXlXU2RxYnNxN016OWZLcGdtZkVxcXNJcnVK?=
 =?utf-8?B?M0dyRFE1dW9GNFNtbFdtdituVm9IWFRiWnc1bG5DZDBrWU5taFdaT1hPRmIz?=
 =?utf-8?B?aVBwQXlpNS9GeWxSdy9pait4SE9qN1ViWXRPSDUrUFhKazJNS0xnR3RKU3ll?=
 =?utf-8?B?YUI2UjhmdXFETDV3c04wZ1laVFgrNHRBOW04dThkSXdFek5wSjkxenp2bDd1?=
 =?utf-8?B?b25hbWEyK1MxTlZXNVNoajJmRWdLLy9UQkxHL1FaWm1kY0VuSjljbGdhU01T?=
 =?utf-8?Q?eEfNbXkgk2iI0DNVLLFiL1xbg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a49dc75-c1e3-4f0b-1aa8-08db94bf9e62
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2023 07:51:31.9481 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: unb+88Hc+XNSK81JgqNbAhl3NGLSBSmvnJplLJWRf7T7IFi8c6X3qKTWU14az5I15Hr4KoYzlpzZf0nIp1L+dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6156
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: fix panel_type initialization
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 =?utf-8?B?VG9taSBMZXBww6RuZW4=?= <tomi@tomin.site>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW5pIE5p
a3VsYQ0KPiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDMsIDIwMjMgNTo1NyBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+OyBUb21pIExlcHDDpG5lbiA8dG9taUB0b21pbi5zaXRlPjsNCj4gc3Rh
YmxlQHZnZXIua2VybmVsLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9p
OTE1L3Nkdm86IGZpeCBwYW5lbF90eXBlIGluaXRpYWxpemF0aW9uDQo+IA0KPiBDb21taXQgM2Y5
ZmZjZTU3NjVkICgiZHJtL2k5MTU6IERvIHBhbmVsIFZCVCBpbml0IGVhcmx5IGlmIHRoZSBWQlQg
ZGVjbGFyZXMgYW4NCj4gZXhwbGljaXQgcGFuZWwgdHlwZSIpIHN0YXJ0ZWQgdXNpbmcgLTEgYXMg
dGhlIHZhbHVlIGZvciB1bnNldCBwYW5lbF90eXBlLiBJdCBnZXRzDQo+IGluaXRpYWxpemVkIGlu
IGludGVsX3BhbmVsX2luaXRfYWxsb2MoKSwgYnV0IHRoZSBTRFZPIGNvZGUgbmV2ZXIgY2FsbHMg
aXQuDQo+IA0KPiBDYWxsIGludGVsX3BhbmVsX2luaXRfYWxsb2MoKSB0byBpbml0aWFsaXplIHRo
ZSBwYW5lbCwgaW5jbHVkaW5nIHRoZSBwYW5lbF90eXBlLg0KDQpDaGFuZ2UgbG9va3MgZ29vZCB0
byBtZS4gVGhhbmtzIEphbmkgZm9yIGlkZW50aWZ5aW5nIHRoZSByb290IGNhdXNlIGFuZCBmaXhp
bmcgdGhlIGlzc3VlLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQoNCj4gUmVwb3J0ZWQtYnk6IFRvbWkgTGVwcMOkbmVuIDx0b21pQHRvbWluLnNpdGU+
DQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy84ODk2DQo+IEZpeGVzOiAzZjlmZmNlNTc2NWQgKCJkcm0vaTkxNTogRG8gcGFuZWwgVkJU
IGluaXQgZWFybHkgaWYgdGhlIFZCVCBkZWNsYXJlcyBhbiBleHBsaWNpdA0KPiBwYW5lbCB0eXBl
IikNCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni4xKw0KPiBTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiBpbmRleCA4Mjk4YTg2ZDEzMzQuLmI0ZmFm
OTc5MzZiOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9zZHZvLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZv
LmMNCj4gQEAgLTI3NTIsNyArMjc1Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfc2R2b19jb25u
ZWN0b3INCj4gKmludGVsX3Nkdm9fY29ubmVjdG9yX2FsbG9jKHZvaWQpDQo+ICAJX19kcm1fYXRv
bWljX2hlbHBlcl9jb25uZWN0b3JfcmVzZXQoJnNkdm9fY29ubmVjdG9yLT5iYXNlLmJhc2UsDQo+
ICAJCQkJCSAgICAmY29ubl9zdGF0ZS0+YmFzZS5iYXNlKTsNCj4gDQo+IC0JSU5JVF9MSVNUX0hF
QUQoJnNkdm9fY29ubmVjdG9yLT5iYXNlLnBhbmVsLmZpeGVkX21vZGVzKTsNCj4gKwlpbnRlbF9w
YW5lbF9pbml0X2FsbG9jKCZzZHZvX2Nvbm5lY3Rvci0+YmFzZSk7DQo+IA0KPiAgCXJldHVybiBz
ZHZvX2Nvbm5lY3RvcjsNCj4gIH0NCj4gLS0NCj4gMi4zOS4yDQoNCg==
