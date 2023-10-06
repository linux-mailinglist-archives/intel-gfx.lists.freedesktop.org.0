Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE187BB761
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 14:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FFE10E4DF;
	Fri,  6 Oct 2023 12:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9948810E4DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 12:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696594324; x=1728130324;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ozYGzy6/dBgIvxApFlPXvwvUHTueaONFqhOFP8mdpoA=;
 b=YP2GnLeCSmomInRKRxyjCymM/ewahKAgxdccgJ5ujAhxYrcZgJmmuGVw
 yZ2jwaV02LpKObOUksXwY5JuUZO+cxOUAEgZCP2fC2Bgw/3VvSTQIJYdD
 bnAfifi2d06Zg3tO2zwDsANDYjEcKA36WUfH5K1JjaYXz3b7ytF06J7uH
 q0xPY8Gwpt1sITeWQqlXr9gbFwqTiqEbuygWmP8mVIC5pQL4eFYnL40cZ
 omXZ47i+KcI7u5+IS60z7vfS8FC0vSHUri6KkVYGaeTQO/DyjOMyYe/nX
 iF4FupICWtCM6Goqtn4LKrnG0iqNEOU2FJQWTN04sq5/hK8LbID8ifrUh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="374084453"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="374084453"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:12:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="702047406"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="702047406"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 05:12:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 05:12:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 05:12:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 05:12:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLO9q26SqEmpAFqrDg5fI4zrFFBIO7nT9s9TbrgMCypIkEYHvqeECSwae5oGKR3BBGC3ka41nwfckc76HBM1NHUPYoHG4sddjevLSRuNqemFHh28sE1cIUeg+XVDJiCGMcs0WV0/TlouhGmeZImbKhgy3xWEam8knLQe8MuAOE+VCSIri2DFbrQYfeZ+3Q2Bu1zJcq/XqkixY0rh4zd8mhK8TbINxAp2fid7IHQ/tRWSV5PymBj5MLQ3kqQ5Kpscaj9A3xrdg98Nzm+PUky9A9hxkP/ckSRDOJJW+K7oLNWGGNQ+M1dFCAEIyuU2+azd7E/za0XtHusJu2uHgbXTTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ozYGzy6/dBgIvxApFlPXvwvUHTueaONFqhOFP8mdpoA=;
 b=V630BZxCRm/GP3q/6m52z4eSTqDBAxG8TDbHrhZj8cjQb25CdZZ4WtS1ITIuP7L1bm2qbVVhSiKhvwAybmVj7SYNzc+M7MF9vb8hDiPGSoAp22Z0pX0jqj98QxM1oLlmDjNpdidz5t7HOPH4c5PbT6iITST8MoaJ5rFKnICnFvBB9Vxf2s3MKPalFfL7Eq9Kl2GY47kVficR1DMVfjgH5TZhhaiUwLXChUCdiNQm14lnKJYaz90RSTtmy9lB4BOQnNQ4O0GShycp5+BqKHv8we2x3C2xN3lvbj/K+Psx8mZvfLyvzxhrmWGb1mN7kg11qtulQDLKPfbybOrVfFLbiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7652.namprd11.prod.outlook.com (2603:10b6:8:14e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.31; Fri, 6 Oct 2023 12:12:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 12:12:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
Thread-Index: AQHZ+EsCv6Lv0MX28Uuv8oLmagUtMLA8rAaA
Date: Fri, 6 Oct 2023 12:12:01 +0000
Message-ID: <0c7faa7bb04bedbd05255600c7897a86c7cc3103.camel@intel.com>
References: <20231006114210.535229-1-mika.kahola@intel.com>
In-Reply-To: <20231006114210.535229-1-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7652:EE_
x-ms-office365-filtering-correlation-id: 641258f0-2b1d-404d-e2eb-08dbc6657221
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YL8P/vQKvqhSQKns2TdlZrp07miShVM7zKOPuCE1t1cbXQmyMdqQJTIAidA2J7ZYlilC0q1c12LbW4ZXucJchSiB5kvqzCBzBzQnx46FlBLujTRMztzsvamU4QVe90wVIy9r8fkzzH1MwQa6O6dIZVzsXol/m8KKIcYCGjJMdPn4MjZj78dY0rebTBVK8Z5R/P95GJwwyVJabFyprWmwdcGYCEIQvjmj/WysrZK3QAxObnLO3AnOIFft4mejm8mh8aojpnpSlDdE8Zdc2sGhowgKmD+BTykXBIhEz2xfULH6XDZpYApRjcczkdd5CbTyIdGQWyon8CBrEGXR7Ez2WRgOqO2iv1nQ0gNNt3c0S05IdQSx7CKiDfp9wsTVWGmCRDTB4U6V2T0eYRJWtbHg6vPberQWFEryOpfbreeI5jAuJ07f0lWo2+YEY6EZmDyldT5YrNcfqkAkU8GY+k/T/5C0DTHkVTpzqxwTyMDN1NY37UEhnQC8eTuwS8odtDZ1D4KkICb0EXEcGWyS6BCABUe7UnC8dKPEjcD99rqE2rwXZe8lraeAN4ebiEfY7CyDCwapfBhUMXrKOgpr4HA5fD8cu4o4mkKNotwMLzF1aM4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(66476007)(66556008)(66446008)(316002)(110136005)(83380400001)(64756008)(76116006)(26005)(66946007)(91956017)(38100700002)(36756003)(66574015)(71200400001)(122000001)(38070700005)(2616005)(82960400001)(6506007)(86362001)(478600001)(6486002)(6512007)(2906002)(8676002)(8936002)(41300700001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmI2d0tVMW1rc05sSjBzamdMV0JMWkRwbGh4Ulg2QjNlTWxqcFJHcHNKQS8y?=
 =?utf-8?B?T09Dc3lZeC9DK3NjRzRPcWpkUHZmSFNaZ2ZGS01qcnpVa3RLblRVbWsyZmtw?=
 =?utf-8?B?a3FHdFFqa2MzK1c3L2RmMTdkUnMxSnhSbnBTVzczbkp1M1kvZW5tUTlCK09R?=
 =?utf-8?B?VTNrL2preWYzODdSNWZXNUQ1ejhKZk84anFqMzBEWlhpVTBOSjFGZ2syL3Uz?=
 =?utf-8?B?c1pmaTgvaDA5Qy9WUmt2NFJCaUZ3OWpaWE1WempGUmV1aVdMQTdoYUFXcDRR?=
 =?utf-8?B?ajcxREtHN3ZVTnBSSUc1dDE4eUN2Wmg0QVBvRHl2a2VlUUV5WmtMLy9mb3Zr?=
 =?utf-8?B?dlIvYS9UWlFremVsUXJwOG9zZTFCdk4vVHpwTE9uUTZlWXRhOUt3NkV3T1lt?=
 =?utf-8?B?enNKWWlVdGRNTER0NmVrRFljSE9ZaEwxSkJ6VGdqUTI3NGttSThyS3NXbkwy?=
 =?utf-8?B?dFZPRm84MnBLanZjQ1pNbmh3UmNHL2d5Z0N0YmFVVFowZ0dCY0EvbEl0SmE3?=
 =?utf-8?B?UzJwckIxQTRwV1dZSEgxd0srelFBQkgzVGhhanFrZEpTZUUvekJtM2Y1ckFY?=
 =?utf-8?B?bE03ZXRiZnpLTllyUXQ0Q2h5MzNMTGZBQVVJQW1mcUFQaWpNR2w5NkxWblJH?=
 =?utf-8?B?SUhleEFDaFg5RGhKVmc3SDJsWHh4NGZvK1c0UkhmQzVVUTBPSDhCSm1LRDFZ?=
 =?utf-8?B?dCtZT0NzVVV1RXZVVXEwTGF2bFFlZ1hPcnJOWUJRaDhSSHUzbVR1UXdtd2N1?=
 =?utf-8?B?cVZGU0FhQXFYejZlc28xYzlhbFNpVHF3ZGE2dkdCdmtQWWpMaEhXaXVsL1RR?=
 =?utf-8?B?SUVhb2JMeDNCMTBMbkkxUHN2c0pSRGFEdnJDV2R2K0lRNWRPOUNsYWU2aUUy?=
 =?utf-8?B?akMvQk9Mdm1ETmkzNjQ4NUJWb2JvME5ZUEVnMEkvVXhjT0RRM1J1dVlVbm5P?=
 =?utf-8?B?VGk0WnV6bmVDMkpRd1Z6WGlidWo1TVIwdWpTdERuNlVaL3RZZlVrQlUwem1F?=
 =?utf-8?B?WElaUi9EcjZwVGRic0o0eEgvRGxOYUhNR1dSODNUSWVSakJXZ2xPbmU3eGM0?=
 =?utf-8?B?NmpDbWdEOXErL0tOYXhqWmk2dUFGS2wrTkN3ZkFhTFNCWVd0bUF0TUxjYmZQ?=
 =?utf-8?B?ZkhFZ0p4eFdNYkprNkUwejNwVUJZNjczelNITVNrampCNTE4TXdSWHhES0kw?=
 =?utf-8?B?YTBla2VKdmZFKzJIbThCUXI0SVl6Z3JRa21QTDlDUFZYNTZxeE9zVmhXRUcy?=
 =?utf-8?B?VDg4WUJyM3VpamJyQjNyMHd6U2dIVWkzZWc2TFlTRlJIeHo0MjJXWG5sN1Ni?=
 =?utf-8?B?ZktEY3Q1OUkzaHJIcDYzaFlhaWxRd0lZOGZ6QmpiVWUwNWRnSTNmd3lLOG9J?=
 =?utf-8?B?ZmwyZVppT3FqL0xTdEVTYzF2U3lDc2dKNmkzTjBIZ3dQbGZTOVQ3elVib0xD?=
 =?utf-8?B?dG1oVnRUaWZFYlcvclg2V1Y3VmhUQ21nU0x0RS9hekorM3RkNHF6M3YzV3do?=
 =?utf-8?B?WGdPb25hekl4WURlL2VrbmN1Z1RMRU1laGorWjR5VU9ETFJrV2VzVElKWEQ5?=
 =?utf-8?B?a1l6a2VZMTd1WllqTGtqQnMwbzR5VjdKbU41MFZmaU1CRVZTbU9XYk94SjYw?=
 =?utf-8?B?NFk1c2paMk1FZzUxdE9DTHRGZ2QyQ0d5S1dWNmdsYkhIOGpXbGtiZ3hCb0h6?=
 =?utf-8?B?bzFUYmwwSk5CazJLUHlnVFZ5RzNmR1pVemJwSy9IRDR0aWRZYjBXRGFqcWxs?=
 =?utf-8?B?bEg3aWpTbElCUGV6S213cStLZnM0M3Faak93UE9obUFoZTRIeThGa012MFBn?=
 =?utf-8?B?YTdYamg4Qkt1OFZlNTZUdzBQd2dmWmhJeTFHQ1Z0U0h1T2xjTE1zTFlvWTYv?=
 =?utf-8?B?eWkyS3RJREZDaUJ2anJkMFYwOW5CVXBOK3NWNHlwMTc3WmJ3WHRJZVdlUG5n?=
 =?utf-8?B?YjI0YnJGcm9OSHdoMVNsQkU0MGpNR2tZdkxzZEhaeGhLM2tNZ0hPUW5aS0Y1?=
 =?utf-8?B?cjNtR09jQ09KeVUrYnZMVEd4QWt3SmtPdG5nN1krOWc0V1VqRGFGNmVySnp2?=
 =?utf-8?B?anMrdUdPcURTL2hIYmcyZGNuZFNkQmRQMGprTzc3eW1aUmhhR0dXRnBqcE5j?=
 =?utf-8?B?aUdHK2llM09Qbk9LR1JMS0czQVFYenhmMmJrb0VQWXpoK2M2R3ZEOE1wZHBs?=
 =?utf-8?B?dVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D2C1875102713347A32B40514ACE69D8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 641258f0-2b1d-404d-e2eb-08dbc6657221
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2023 12:12:01.1582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2jBcQZc1q0m6AbzlwWWPltXVbQ9cim3EPIxbRnz71oyuxTDTb1GFg19dY3+7fHv2U02GHOt82hccaP/wKpyB3pXcfVnb9mukr2O5nOWFweg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
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

T24gRnJpLCAyMDIzLTEwLTA2IGF0IDE0OjQyICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToKPiBD
dXJyZW50bHkgd2UgYXJlIG5vdCB1c2luZyB3YXRjaGRvZyB0aW1lcnMgZm9yIFBTUi9QU1IyLgo+
IFRoZSBwYXRjaCBkaXNhYmxlcyB0aGVzZSB0aW1lcnMgc28gdGhleSBhcmUgbm90IGluIHVzZS4K
PiAKPiBCU3BlYzogNjk4OTUKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDI0ICsrKysrKysrKysrKysrKysrLS0tLS0KPiAtLQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBpbmRleCA4NTBiMTFmMjAyODUuLjEzYjU4
ZGNlYjJiZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+
IEBAIC02NzIsMTEgKzY3MiwxNSBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMShzdHJ1
Y3QgaW50ZWxfZHAKPiAqaW50ZWxfZHApCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+IMKgwqDCoMKgwqDC
oMKgwqBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5z
Y29kZXI7Cj4gwqDCoMKgwqDCoMKgwqDCoHUzMiBtYXhfc2xlZXBfdGltZSA9IDB4MWY7Cj4gLcKg
wqDCoMKgwqDCoMKgdTMyIHZhbCA9IEVEUF9QU1JfRU5BQkxFOwo+ICvCoMKgwqDCoMKgwqDCoHUz
MiB2YWwgPSAwOwoKVGhpcyBpcyBub3QgcmVsYXRlZCB0byB0aGUgY29tbWl0IG1lc3NhZ2UuIEku
ZS4gUFNSMSBpcyBsZWZ0IGRpc2FibGVkCmNvbXBsZXRlbHkgZm9yIERJU1BMQVlfVkVSID49IDIw
Lgo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgdmFsIHw9Cj4gRURQX1BTUl9JRExFX0ZSQU1FUyhwc3Jf
Y29tcHV0ZV9pZGxlX2ZyYW1lcyhpbnRlbF9kcCkpOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgdmFs
IHw9IEVEUF9QU1JfTUFYX1NMRUVQX1RJTUUobWF4X3NsZWVwX3RpbWUpOwo+ICvCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkgewo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB2YWwgPcKgIEVEUF9QU1JfRU5BQkxFOwo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1BTUl9NQVhfU0xFRVBfVElNRShtYXhfc2xlZXBfdGlt
ZSk7Cj4gK8KgwqDCoMKgwqDCoMKgfQo+ICsKPiArwqDCoMKgwqDCoMKgwqB2YWwgfD0KPiBFRFBf
UFNSX0lETEVfRlJBTUVTKHBzcl9jb21wdXRlX2lkbGVfZnJhbWVzKGludGVsX2RwKSk7Cj4gwqDC
oMKgwqDCoMKgwqDCoGlmIChJU19IQVNXRUxMKGRldl9wcml2KSkKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSX01JTl9MSU5LX0VOVFJZX1RJTUVfOF9MSU5F
UzsKPiDCoAo+IEBAIC0xMzk4LDEwICsxNDAyLDE2IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKHN0cnVjdAo+IGludGVsX2RwICppbnRlbF9kcCwKPiDCoMKgwqDCoMKgwqDC
oMKgICogcnVudGltZV9wbSBiZXNpZGVzIHByZXZlbnRpbmfCoCBvdGhlciBodyB0cmFja2luZyBp
c3N1ZXMKPiBub3cgd2UKPiDCoMKgwqDCoMKgwqDCoMKgICogY2FuIHJlbHkgb24gZnJvbnRidWZm
ZXIgdHJhY2tpbmcuCj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDCoMKgwqDCoG1hc2sg
PSBFRFBfUFNSX0RFQlVHX01BU0tfTUVNVVAgfAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBFRFBfUFNSX0RFQlVHX01BU0tfSFBEIHwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
RURQX1BTUl9ERUJVR19NQVNLX0xQU1AgfAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBF
RFBfUFNSX0RFQlVHX01BU0tfTUFYX1NMRUVQOwo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gMjApCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1h
c2sgPSBFRFBfUFNSX0RFQlVHX01BU0tfTUVNVVAgfAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgRURQX1BTUl9ERUJVR19NQVNLX0hQRCB8Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNSX0RFQlVHX01BU0tfTFBT
UDsKPiArwqDCoMKgwqDCoMKgwqBlbHNlCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oG1hc2sgPSBFRFBfUFNSX0RFQlVHX01BU0tfTUVNVVAgfAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRURQX1BTUl9ERUJVR19NQVNLX0hQRCB8Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBfUFNSX0RFQlVHX01BU0tf
TFBTUCB8Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBFRFBf
UFNSX0RFQlVHX01BU0tfTUFYX1NMRUVQOwoKSSB3b3VsZCBjaG9vc2UgdGhpczoKCiAgICAgICBt
YXNrID0gRURQX1BTUl9ERUJVR19NQVNLX01FTVVQIHwKICAgICAgICAgICAgICBFRFBfUFNSX0RF
QlVHX01BU0tfSFBEIHwKICAgICAgICAgICAgICBFRFBfUFNSX0RFQlVHX01BU0tfTFBTUDsKCiAg
ICAgICBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjApCiAgICAgICAgICAgICAgIG1hc2sg
fD0gRURQX1BTUl9ERUJVR19NQVNLX01BWF9TTEVFUDsKCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+
ICsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqAvKgo+IMKgwqDCoMKgwqDCoMKgwqAgKiBObyBzZXBh
cmF0ZSBwaXBlIHJlZyB3cml0ZSBtYXNrIG9uIGhzdy9iZHcsIHNvIGhhdmUgdG8KPiB1bm1hc2sg
YWxsCgo=
