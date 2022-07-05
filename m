Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C3E566982
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B8810FD1C;
	Tue,  5 Jul 2022 11:30:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0389C10E00E;
 Tue,  5 Jul 2022 09:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657013925; x=1688549925;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=77E+Kmp22wUdSshqTElhZDvbdEcAuQyjkjUSs5cV1rY=;
 b=Ah1FfLBkVVm36q88w73NuXOjexVW7YnZUzSwDTe6HAaEyeXoEFHYWF1P
 U0lAQdB9FI6Apur7wWNAGME6pn1q8YtGsKwx/sSc/XzyIhjActyOxPEpD
 L5pkpPi0t2A5YvzmVD84T83OqnHiOENIUcuk8onn7s+O+VSiZvpXqSqDe
 XIGPH0ZzlWlnWfAw9vy/nsfrjP4L7TFy6TdeKWZkh/QOVG94MBAF/BEkz
 twcLVKY9Eag1Q6II9N+0bd21dyujpsYMB2/9LF1arq1HWtlh0+eaNFR9K
 RXWhswY/WvH3EzTWGuvOXQCddL1L9O87juFHLs1y8M8KdMB/q2okwKob5 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="283335579"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="283335579"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:38:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="650043020"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 05 Jul 2022 02:38:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:38:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:38:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 02:38:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 02:38:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BqNlsyDrepfyDIyCC6/+pzyCtWses6quBPrUx5G0EjYTqUghclMws1YXeJjYQLQa2NvUNbe6b+NQ+DbygaA9Udu/BJLCxubt8yTFwul0+yqApbbr8ZDFeHuiuluicBocJMMme3KFEtEMvbjvyno/SmWJbX6yBdtzmrtWB3hsMELLb9yurluQKSGmeFCZnQOHTZRtfAklyqTVDNRmX8wBxN5x4CjFQTFMSzG+3qoRn2GwnMsrQnAA9ala+oDebqldi4UACmPhYp556QCesGja6zbcJBrE7RDguzL2F+s3rrB2xHqG3PoHFUnZD7kWk7N8DSqjFXaFAMpkad575W45Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77E+Kmp22wUdSshqTElhZDvbdEcAuQyjkjUSs5cV1rY=;
 b=KIkBZe0AWv93LRd4NSD7W8JDLqqfSfvABEAMTOEVGHOGYX8sFiYk0GrMRU409e2Y7xX1JuJup8u+yPibWcxwdEeizGUDl1sRA/hAgU1L8Uh/ccSUcvUPbSCrzn9ynI7HoCKkyg0TpLIgI21jqxM2zkB7uTQ/83xVMPmLgRqZJgLCL4GJZ45SjHq0rwfpul3r5UslTuztphqzTYoKKZbs7ImRrzFpBpKRGk0egyPSrU3bdvYSaD9f3fhkVtkcgp8f2xD02ph5On+0/bcLsyC7GJIZNDzoRY8TBne+f+hgCrw/6CUza3nyPn8ZTsTSeo+Gp6T4DA3cYMMzVFEzyv7WEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SA2PR11MB4955.namprd11.prod.outlook.com (2603:10b6:806:fa::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.17; Tue, 5 Jul 2022 09:38:41 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 09:38:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "B S, Karthik" <karthik.b.s@intel.com>, "igt-dev@lists.freedesktop.org"
 <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] tests/i915/kms_big_fb: trigger async flip with a
 dummy flip
Thread-Index: AQHYit7dLYg1+v7vYUKKIaYPU0Gdea1vjSGAgAABaTA=
Date: Tue, 5 Jul 2022 09:38:41 +0000
Message-ID: <DM6PR11MB3177AC16AD97327BCBEA3C39BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220628110409.768308-1-arun.r.murthy@intel.com>
 <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
In-Reply-To: <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
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
x-ms-office365-filtering-correlation-id: 2987c094-4461-4dac-938c-08da5e6a258d
x-ms-traffictypediagnostic: SA2PR11MB4955:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CqMyvvBITFhqcetPs0mGsDxzIlmIAb9s3pgJqFKM+norcD4SWw/llhV6Uy84d6A3lQ2L3oGchXu67R7EROByrbsuGqZI1KOgWSVwxGfIrSgRsg6hqwcalQ4vOyGR7blmgEUA751rWHqkIOz7UeCRCo+6dpPKRuwIdoM7mqcOWAhS47XibBscPQFa+qZo8yplS4XSUQ5qLj+tP9GHz8yy48DLuX21CTXH0wcM9aBPMbqpe9ynGKW5oWIEIM3E3Nmc6LhvGA6EIsAtPyv7qW2N4xZ2DmX7F+u0st/AnVrmd91PH+yknf4RNE5oKLiUuG2Yg1tpCNZ9ucFekzCU8ZVH+Rt9+gK9uDHTkLAYZW4Oa82Eulmr2qVHQyBqlOz6uaUjj3sdUa/pKaZpEWISOHXT5M71Wr+3kTU6XkGvWy6obEHcbeGQod1+iyGmXJLCC9iaV4aZirVSkYltMs7E4NhhsTYD3eg+LAAHma4dNCtm8r3kt5DGcQS0/p0EsKEEbeZRKHkMEZvtUKzFv2epehmDiwctrm5fiOCfQst9qBok32nFvWzidk/MMyg3l0sZWZW8DYcuS7SJo64BuEXE9Id1w7sX0JMboEEGOi/VbV+GJObkeA/p04JjP9s1SVGmzmmeq0vgm+TiYzltdMICFqf+zkH30BFPzQTNS+xYU4FZaaI7hhlrX+2PXyGKNPFXfNfwnd08BZarNRYuV3q4TP5wub6iMBphU1RiO6muatBHag5ykk1l8LFUjx+YNrgADsHkbGOLsI5CSvIOm+9kcgNztB6a3NHM63dQR+hefsUPXsFnh6QeGEuAHrW+BkPqz77f
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(346002)(396003)(110136005)(316002)(53546011)(8936002)(55236004)(26005)(7696005)(6506007)(9686003)(186003)(33656002)(478600001)(71200400001)(54906003)(86362001)(2906002)(66476007)(38070700005)(5660300002)(8676002)(4326008)(66556008)(76116006)(66946007)(38100700002)(64756008)(66446008)(41300700001)(122000001)(83380400001)(82960400001)(55016003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3B5RG1YY3EwRm04K3AyNGhlSVlUMmFvRFhLb01jZUxNSEttS1hPTHkyYS9X?=
 =?utf-8?B?b0dCeDNhVDRHUS9mcWxwa2hVd1RLbUhxbTc4aUdzZUs3TGs3dHJ6Q3kwT2RO?=
 =?utf-8?B?cjAzMGhqMTNndE5UdVMweURPUUtFNnFCK2RhL2FtZUpaTjIrQlNJbXJXVFJN?=
 =?utf-8?B?WndHUmFVY1duK1kwNTlDUURjTVc3ZkpXeUsrSHYyUzhDNGs3RkFENXFJdHdO?=
 =?utf-8?B?N0N3SlBHRFhJZjdHTk5XTE9SMDhLQ0hIUmozVzZrUUg1NmdPdGZxQ3dFUnE5?=
 =?utf-8?B?TDAxb0hWNW1BZVdZTlEveHhrWUpjNlF1am9OaU43QkhhM25hNFVhQTVBMkt1?=
 =?utf-8?B?a3lUL1Y3SGo2U2pvL2tLVkN3SEZNS3ppQjlOaVRTYk9wM2RLMkNmY3RvMWE0?=
 =?utf-8?B?WFpiUTIvNlE3QUpJb2tIS3dKVDBuZXhUWXA3Nkl4aUp2VDl4d1dOdzVvc1pV?=
 =?utf-8?B?UjRHaVBaZHAwOCtPT1ZZVWNZdnBpbEEzRGI2NnBVTDBvWmE0cjFZbHBhS2tY?=
 =?utf-8?B?SFZNOFBwb0NYWEJiaHdFd2hVNk16cmVDakRnd3hhWElDaWFnVk9pcS9kUTNn?=
 =?utf-8?B?UkFoQjRxTGRqWjlLOG9WcVp0blJlOSs4ajBvckpLUjJEaXdNVmltakFsa1Nx?=
 =?utf-8?B?WG55M3FvQ1pHRFFHWUg2SWthUzlJSE4wbXRJWnprZHBHTVNQb203aU9QRG8v?=
 =?utf-8?B?cEczY3c4WCtuRzdDUGtNRTlpbGNNZ0NJZkMrVCs3QXR2THZ1aVhtZzVFdW1n?=
 =?utf-8?B?YWxNbWdUTG5WNlBOTmJpRllhTHZLVjJrS3pza1lWSFRYWitxclREQWV1M0Js?=
 =?utf-8?B?NDhtMEVpcUdpbFNuQi9SK05aN1Z2dVErZloxamovdTYyVndJUG13UDlObzRy?=
 =?utf-8?B?VWkyY2I1M292dGxaUm9ZTnl5NnJhSXBXd2JmU0ptcFJ1YVpBM0IxaC9oUTdC?=
 =?utf-8?B?SzBRTC9oSjlRYXBFcTdPVVVJaDFuNlR1cGh0SGdvZXpMZjRTSXFGdW5OU1A5?=
 =?utf-8?B?VWoxR1JiYVk4SE5IQVBaVlBTVVRqUUF2TUZGK2lQQVNsdVkwdWdqbkl0cWI4?=
 =?utf-8?B?SlZGSzBYbjRoME9WTUpTS09YUk85d1lGTmxpYXo1aVhpSUVzZ0xIY3hncUR0?=
 =?utf-8?B?ZTRONkxhdVVtY0doUms3aGNwcFhhZ1BnWHZCdldNZHQ0MEo3REloam4rZ2pS?=
 =?utf-8?B?N1dHTXBabGQ0VTA4RUlTQjR6cmEyYVh4enFQbnBkdDFFY01UR2g5RXBwU1dO?=
 =?utf-8?B?NmxxaWpGZ3F3TGtDVTZmMHFzQ3IvNjVzdHI1VU1ZempkTVovdnFOUzdNQlFQ?=
 =?utf-8?B?NVRCSUI1VTNvL214N09FdUVuTDlTbmlrM1RnYWIyeHNrdlhzQTJJVnNzbmlo?=
 =?utf-8?B?UzR3QnhvOXZiZzZ4L1VlSStSR3QvclRpdTAzaHovajk0SzZQaGxqelNNM2ZO?=
 =?utf-8?B?RU5mTDh5TS9vallqNmtBU2pQZExDaU8zYk5wVDlaTEZrUVhUY0J3djFreTBH?=
 =?utf-8?B?MHdZdGRUVzFYWjdCRVFIWjM0aUowNmVTQXREb1JnSjl4WFBoUlB1K1ZmQjFB?=
 =?utf-8?B?d1NuZ05UVXp5SGE5M1d5TklCTlIxbEcxQVQwbFNBc1dka2p3V05Oa1pSWklY?=
 =?utf-8?B?c1Y3dnovMnlZczRjeWJzMlhta2kyV0diTEpFWDRQL3NPUSs2VSt5K2lDY2RZ?=
 =?utf-8?B?Vmd0T0cxR1AwaW1rWFh0WDBFS2dSbG1qUnJxcloyRitZRlJ2b2JiSVVwTk5D?=
 =?utf-8?B?Z3pwL3hLNjJkQXN3UHN2VE5jSENnakFxcnZiUDlGRlhCTlRCaUh2THkzZ1o2?=
 =?utf-8?B?YzBiK3F4Z2d4eVJvcGhZUDRzSzlSYWd3Sm9ybFFicVRtdmZFUTkrejJPRE41?=
 =?utf-8?B?WHdpVWxiSGtIeFRxTTQ5ellNQXRYeHZvanpUZ3hST3FVczc2aUxCZXJORDNV?=
 =?utf-8?B?K3BHOWl1c0VOQlpQMDQ5OXBpVnNYNW40VUd6VWZRWkpyNlFydjdVdkcxbFBB?=
 =?utf-8?B?WTVUWkN2cWtIaFhRRjdGWXIwVkhteTRtOGtqNW95SUJ5Y2laY3JRYzV4QVhO?=
 =?utf-8?B?MVhMc0cxRTFUMDIzck9obDF1ZTR6cVFQYS8rL1BJeTZkQnpKLzQ2STF1UGdy?=
 =?utf-8?Q?dBsXub4b3cPUcifJWV6XbFGfJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2987c094-4461-4dac-938c-08da5e6a258d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 09:38:41.5769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E+cAVKv/J5ovIPFtwiPXy+lppUj8BWJzYk9LWIkFrVB0iYWzVyALH6YRGUzcx1wS8zmjDdWgs1CaKKQgoCf9bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4955
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async
 flip with a dummy flip
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBPbiA2LzI4LzIwMjIgNDozNCBQTSwgQXJ1biBSIE11cnRoeSB3cm90ZToNCj4gPiBJbiBvZGVy
IHRvIHRyaWdnZXIgdGhlIGFzeW5jIGZsaXAsIGEgZHVtbXkgZmxpcCBpcyByZXF1aXJlZCBhZnRl
ciBzeW5jDQo+ID4gZmxpcCBzbyBhcyB0byB1cGRhdGUgdGhlIHdhdGVybWFya3MgZm9yIGFzeW5j
IGluIEtNRCB3aGljaCBoYXBwZW5zIGFzDQo+ID4gcGFydCBvZiB0aGlzIGR1bW15IGZsaXAuIFRo
ZXJlYWZ0ZXIgYXN5bmMgbWVtb3J5IHVwZGF0ZSB3aWxsIGFjdCBhcyBhDQo+ID4gdHJpZ2dlciBy
ZWdpc3Rlci4NCj4gPiBDYXB0dXJpbmcgdGhlIENSQyBpcyBkb25lIGFmdGVyIHRoZSBhc3luYyBm
bGlwIGFzIGFzeW5jIGZsaXAgYXQgc29tZQ0KPiA+IHRpbWVzIGNhbiBjb25zdW1lIGZhaXJseSBh
IHZibGFuayBwZXJpb2QgdGltZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFydW4gUiBNdXJ0
aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgdGVzdHMvaTkxNS9r
bXNfYmlnX2ZiLmMgfCAyOSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4g
ZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUva21zX2JpZ19mYi5jIGIvdGVzdHMvaTkxNS9rbXNfYmln
X2ZiLmMgaW5kZXgNCj4gPiBkNTBmZGU0NS4uNmNhZjNjMzEgMTAwNjQ0DQo+ID4gLS0tIGEvdGVz
dHMvaTkxNS9rbXNfYmlnX2ZiLmMNCj4gPiArKysgYi90ZXN0cy9pOTE1L2ttc19iaWdfZmIuYw0K
PiA+IEBAIC00NjUsNyArNDY1LDcgQEAgc3RhdGljIGJvb2wgdGVzdF9waXBlKGRhdGFfdCAqZGF0
YSkNCj4gPiAgIHN0YXRpYyBib29sDQo+ID4gICBtYXhfaHdfc3RyaWRlX2FzeW5jX2ZsaXBfdGVz
dChkYXRhX3QgKmRhdGEpDQo+ID4gICB7DQo+ID4gLQl1aW50MzJfdCByZXQsIHN0YXJ0ZnJhbWU7
DQo+ID4gKwl1aW50MzJfdCByZXQsIGZyYW1lOw0KPiA+ICAgCWNvbnN0IHVpbnQzMl90IHcgPSBk
YXRhLT5vdXRwdXQtPmNvbmZpZy5kZWZhdWx0X21vZGUuaGRpc3BsYXksDQo+ID4gICAJCSAgICAg
ICBoID0gZGF0YS0+b3V0cHV0LT5jb25maWcuZGVmYXVsdF9tb2RlLnZkaXNwbGF5Ow0KPiA+ICAg
CWlndF9wbGFuZV90ICpwcmltYXJ5Ow0KPiA+IEBAIC01MTksNyArNTE5LDE5IEBAIG1heF9od19z
dHJpZGVfYXN5bmNfZmxpcF90ZXN0KGRhdGFfdCAqZGF0YSkNCj4gPg0KPiBEUk1fTU9ERV9BVE9N
SUNfQUxMT1dfTU9ERVNFVCwgTlVMTCk7DQo+ID4NCj4gPiAgIAkJaWd0X3dhaXRfZm9yX3ZibGFu
ayhkYXRhLT5kcm1fZmQsIGRhdGEtDQo+ID5kaXNwbGF5LnBpcGVzW3ByaW1hcnktPnBpcGUtPnBp
cGVdLmNydGNfb2Zmc2V0KTsNCj4gPiAtCQlzdGFydGZyYW1lID0ga21zdGVzdF9nZXRfdmJsYW5r
KGRhdGEtPmRybV9mZCwgZGF0YS0+cGlwZSwNCj4gMCkgKyAxOw0KPiA+ICsJCS8qDQo+ID4gKwkJ
ICogSW4gb2xkZXIgcGxhdGZvcm1zICg8PSBHZW4xMCksIGFzeW5jIGFkZHJlc3MgdXBkYXRlIGJp
dCBpcw0KPiBkb3VibGUgYnVmZmVyZWQuDQo+ID4gKwkJICogU28gZmxpcCB0aW1lc3RhbXAgY2Fu
IGJlIHZlcmlmaWVkIG9ubHkgZnJvbSB0aGUgc2Vjb25kIGZsaXAuDQo+ID4gKwkJICogVGhlIGZp
cnN0IGFzeW5jIGZsaXAganVzdCBlbmFibGVzIHRoZSBhc3luYyBhZGRyZXNzIHVwZGF0ZS4NCj4g
PiArCQkgKiBJbiBwbGF0Zm9ybXMgZ3JlYXRlciB0aGFuIERJU1BMQVkxMyB0aGUgZmlyc3QgYXN5
bmMgZmxpcCB3aWxsDQo+IGJlIGRpc2NhcmRlZA0KPiA+ICsJCSAqIGluIG9yZGVyIHRvIGNoYW5n
ZSB0aGUgd2F0ZXJtYXJrIGxldmVscyBhcyBwZXIgdGhlDQo+IG9wdGltaXphdGlvbi4gSGVuY2Ug
dGhlDQo+ID4gKwkJICogc3Vic2VxdWVudCBhc3luYyBmbGlwcyB3aWxsIGFjdHVhbGx5IGRvIHRo
ZSBhc3luY2hyb25vdXMNCj4gZmxpcHMuDQo+ID4gKwkJICovDQo+ID4gKwkJcmV0ID0gZHJtTW9k
ZVBhZ2VGbGlwKGRhdGEtPmRybV9mZCwgZGF0YS0+b3V0cHV0LQ0KPiA+Y29uZmlnLmNydGMtPmNy
dGNfaWQsDQo+ID4gKwkJCQkJCSAgICAgIGRhdGEtPmJpZ19mYl9mbGlwW2ldLmZiX2lkLA0KPiA+
ICsNCj4gRFJNX01PREVfUEFHRV9GTElQX0FTWU5DLCBOVUxMKTsNCj4gPiArCQlpZ3Rfd2FpdF9m
b3JfdmJsYW5rKGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPmRpc3BsYXkucGlwZXNbcHJpbWFyeS0+
cGlwZS0+cGlwZV0uY3J0Y19vZmZzZXQpOw0KPiA+ICsJCWZyYW1lID0ga21zdGVzdF9nZXRfdmJs
YW5rKGRhdGEtPmRybV9mZCwgZGF0YS0+cGlwZSwgMCkgKw0KPiAxOw0KPiANCj4gSGksDQo+IA0K
PiBTaG91bGQgdGhpcyBiZSBhZGRlZCBpbnNpZGUgYSBnZW4gY2hlY2sgc2ltaWxhciB0byBrbXNf
YXN5bmNfZmxpcHM/DQoNClllcyBzb3JyeSBtaXNzZWQgaXQhDQoNCj4gDQo+ID4NCj4gPiAgIAkJ
Zm9yIChpbnQgaiA9IDA7IGogPCAyOyBqKyspIHsNCj4gPiAgIAkJCWRvIHsNCj4gPiBAQCAtNTI4
LDIzICs1NDAsMjAgQEAgbWF4X2h3X3N0cmlkZV9hc3luY19mbGlwX3Rlc3QoZGF0YV90ICpkYXRh
KQ0KPiA+DQo+IERSTV9NT0RFX1BBR0VfRkxJUF9BU1lOQywgTlVMTCk7DQo+ID4gICAJCQl9IHdo
aWxlIChyZXQgPT0gLUVCVVNZKTsNCj4gPiAgIAkJCWlndF9hc3NlcnQocmV0ID09IDApOw0KPiA+
ICsJCQlpZ3RfcGlwZV9jcmNfZ2V0X2Zvcl9mcmFtZShkYXRhLT5kcm1fZmQsIGRhdGEtDQo+ID5w
aXBlX2NyYywNCj4gPiArCQkJCQkgICBmcmFtZSwgJmNvbXBhcmVfY3JjKTsNCj4gPg0KPiA+ICsJ
CQlmcmFtZSA9IGttc3Rlc3RfZ2V0X3ZibGFuayhkYXRhLT5kcm1fZmQsIGRhdGEtDQo+ID5waXBl
LCAwKSArIDE7DQo+ID4gICAJCQlkbyB7DQo+ID4gICAJCQkJcmV0ID0gZHJtTW9kZVBhZ2VGbGlw
KGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPm91dHB1dC0+Y29uZmlnLmNydGMtPmNydGNfaWQsDQo+
ID4gICAJCQkJCQkgICAgICBkYXRhLT5iaWdfZmIuZmJfaWQsDQo+ID4NCj4gRFJNX01PREVfUEFH
RV9GTElQX0FTWU5DLCBOVUxMKTsNCj4gPiAgIAkJCX0gd2hpbGUgKHJldCA9PSAtRUJVU1kpOw0K
PiA+ICAgCQkJaWd0X2Fzc2VydChyZXQgPT0gMCk7DQo+ID4gKwkJCWlndF9waXBlX2NyY19nZXRf
Zm9yX2ZyYW1lKGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPnBpcGVfY3JjLA0KPiA+ICsJCQkJCSAg
IGZyYW1lLCAmYXN5bmNfY3JjKTsNCj4gDQo+IFdlIHNob3VsZCBiZSBtb3ZpbmcgdGhpcyBJTUhP
LiBCeSB3YWl0aW5nIGZvciB2YmxhbmsgYWZ0ZXIgZWFjaCBhc3luYyBmbGlwDQo+IHRvIGNhcHR1
cmUgQ1JDLCB3aGF0IGlzIHRoZSBpbnRlbmRlZCByZXN1bHQ/IFNlZW1zIHRvIGJlIGNvbXBsZXRl
bHkNCj4gY2hhbmdpbmcgdGhlIGV4aXN0aW5nIHRlc3QgbG9naWMuDQoNCldlIGFyZSBnZXR0aW5n
IHRoZSB2YmxhbmsgY291bnQgYW5kIGJhc2VkIG9uIHRoYXQgZ2V0dGluZyB0aGUgY3JjLiBOb3cg
d2Uga25vdyBmb3IgYXN5bmMgZmxpcCBhdA0KY2VydGFpbiB0aW1lcyBpdCBjYW4gY29uc3VtZSBh
IHRpbWUgZXF1aXZhbGVudCB0byBhIHZibGFuayBwZXJpb2QuIFNvIGluIHRob3NlIHNjZW5hcmlv
cyBnZXR0aW5nIGNyYw0KYmFzZWQgb24gdGhlIHZibGFuayBnb2VzIGZvciBhIHRvc3MuIEhlbmNl
IGNhcHR1cmluZyB0aGUgdmJsYW5rIHN0YXJ0IHRpbWUgc3RhbXAgYXQgdGhlIGJlZ2lubmluZw0K
b2YgZWFjaCBmbGlwLg0KDQo+IA0KPiBBbHNvLCBzZWVtcyBsaWtlIHdlIGFyZSBvdmVyd3JpdGlu
ZyB0aGUgQ1JDIGNhcHR1cmVkIGZvciBqID0gMCwgYXMgY29tcGFyaXNvbg0KPiBpcyBkb25lIG91
dHNpZGUgdGhpcyBsb29wLiBJcyB0aGlzIGRvbmUgb24gcHVycG9zZT8NCg0KTm93IHdpdGggdGhl
IGNoYW5naW5nIHRoZSB2Ymxhbmsgc3RhcnQgZnJhbWUgY2FwdHVyZSBiZWluZyBhZGRlZCBiZWZv
cmUgdGhlIGFzeW5jIGZsaXAsIENSQyBjYW4NCmJlIGNhcHR1cmVkIG91dHNpZGUgdGhlIGxvb3Ag
YXMgd2VsbCwgYnV0IG1ha2VzIG5vIHNlbnNlLiBUbyBtYWludGFpbiB0aGlzIG9yZGVyIG1vdmlu
ZyB0aGUgQ1JDDQpDYXB0dXJlIGFsc28gYWZ0ZXIgZWFjaCBmcmFtZS4NCg0KVGhhbmtzIGFuZCBS
ZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
