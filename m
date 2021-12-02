Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F234E465B9A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 02:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485196E8C2;
	Thu,  2 Dec 2021 01:25:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C496E947
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 01:25:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="217290228"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="217290228"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 17:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="596837444"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Dec 2021 17:25:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 17:25:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 17:25:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 1 Dec 2021 17:25:42 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 1 Dec 2021 17:25:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KD/GpX3bInu3Dy3Hjf2hIB6LXRLHKzrrXQGj+vz8rTfM8KXX8V71/plwEik+QJ4sJWLDHJF/gy8jSOMZjr96O1pWkiYNFrrrsV2k3sktNAdnBLkxK4Lh7UED4nqsEEHQUNi08Zn29T/DIsk8pZtGRAkVsqm5O9X4/iDUp5PrPT4HHbfvboXuSY5Ydu3wDwj3ySNTIx1F1Rqrk4MrGVotqq7JeSoZ58L1etVV4ASxQZ/8MWoROsLANvYR+VXwibwnzuI2JgZ5Ag9cbIrPLMsuiM44mQmRwoWmXz8qWqfXR+lA2axVYKuKhmWHlSZoFxC4tPGaxCDcf1lRFAluBEA7MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3YIqweqyQwSmYhFgZsylKx02a/HJiFboQO7zPeTB4dY=;
 b=dc/bTwpf/ZT3cMQy0cOLkfxDlqro7hYLSeEJ3nN9ItoVbGszdT68bOa7Zigfamo6xj/6NfnSB0kk7fDVoPNDjRZ6YicZ0dt5AWw4sBqRRfJgmEV4m73HwA8O4plIG25CUpWyQ3WqbyzKziQGqQSc3yE+Oqn0btggevuNLI+tJ8RKsfaIRtR7hLhlIU6ohsEdpfTduqvBpbDXWyvToAmuk2NjzZJvvpI2PALQ0W2UfmDuFcYlQ7TP1Gq8eXdnwTCZdVEPz5bUoKBAVGrpzC/AGX86Dy5rIxz6rA3SpplNmVm5QHrZ5OZAo1r3y9Qxemv2HoeFBgtkatinmCYLrFebWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3YIqweqyQwSmYhFgZsylKx02a/HJiFboQO7zPeTB4dY=;
 b=fNAxPXvO6B9za09BDd041pPfjPq8+kAqVShrM+QTJizpoDaQEcgcF4p3BxXka96OD8Neesy2qaae2uiqT/YzJWPIUsvZIP7s2RN4dDRIrcR4iXg9BVP+f1QTN+NW43viRl+zZEY1C6CzyNzpB1Qm4vQmyf6u8+Fl5fG0FmEQSKU=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by CO1PR11MB4802.namprd11.prod.outlook.com (2603:10b6:303:96::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Thu, 2 Dec
 2021 01:25:40 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca%6]) with mapi id 15.20.4755.015; Thu, 2 Dec 2021
 01:25:40 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Navare,
 Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
Thread-Index: AQHXzwrMFk1MOY3yAUuGGYrkzRLlnqv6WTCAgCQ/wgA=
Date: Thu, 2 Dec 2021 01:25:40 +0000
Message-ID: <6f58c70a32ec4077ef0ffae96e29be4672ca4010.camel@intel.com>
References: <20210628235054.694581-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <87ilxcdvfy.fsf@intel.com> <20211108235206.GA15292@labuser-Z97X-UD5H>
In-Reply-To: <20211108235206.GA15292@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.1 (3.42.1-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72c3a50c-6fe2-48de-9c11-08d9b532a716
x-ms-traffictypediagnostic: CO1PR11MB4802:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO1PR11MB480201AAE09420AEC1E2AC19C7699@CO1PR11MB4802.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mYBDDgxzJ0NxYvgevSudnhPcHSU45W7Q3AHqo9c7uGwtIQcTXCyaMJC8Sgf9dlrkLmfTQo+QAqv0D8NYKwl63cKWGUHEaEbq0SCtCMHOXkDuLLndsLtlVNxsU/05dICZ5HY9NgXDX1G6Lx/oRQppSpOJq0HbsXROXTHl1xE6AFgSFpDSKMt9x/Z/gfmEO24NtlPULjideYnme/AeFFJpVHm+FKegbWrRYgCm8IPR6WwI+APOUusuKQT6NoRFnajPwshTJ5TsiFUkiJxrXi4RaAdQ7BvvmiPWFLYJdpEiNtx/fOT3FfwQOXiTCgKgo6gJfDNGTilDFQRSLe0iAwGhW+dPDOuxBeABLJKjOc5RvM0iMj60EXoIOgItPLbznx3oeetqY5n2qhk7j09iXurZZYx8xNrOyaSSeUvgHxEm0TPUAy+CaGsd3taDpx5z+rEVtIzC6h3mpCXzqzIqQvC3PoNbCaVbFFNC4Qs5OfhNQaTAx28ZhRNYRF2D+leM3ygntW4QHQ0Lx8lJ81P/9Br9AFEHTJAKt6Grvq5XUqPniymTAU92Urt0bgIwnZ47mR6DJf+behnZ47qLA2Qlr/eJO0fyPUH6wHgtoe1fE7Ev17a2SmtTQPD1Cn46+K1ZoJAmfSsfWwBunzA5A3fIzKYW+vAUJwWMMQaiOA8TgZPbYfHAMTiIs+TLMDKqTIjZGIm0Ag2V0iaRY66IYuVQij8kWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6636002)(508600001)(6506007)(82960400001)(6486002)(86362001)(2616005)(38070700005)(2906002)(83380400001)(122000001)(4326008)(186003)(8936002)(66446008)(36756003)(6512007)(66946007)(64756008)(66556008)(66476007)(8676002)(76116006)(316002)(38100700002)(71200400001)(110136005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dE5XWE9iZTA2MHF3Z3NuMUFTcXJXV25yaVg0bDJQc3pBOVdRTG00Q3NNaVpq?=
 =?utf-8?B?TUlvRGN1R3VKUmVJUERWRVc2T0EyTlp0RCtxem9aN3VSVGU5UkV1OVIvYjJ0?=
 =?utf-8?B?V2l6OEx4Rm5FMlpMOXZXNWRJZ0NRWldUYXViK0J3dU1wNW1wZVNwcEN1L0hs?=
 =?utf-8?B?b2lTa2I4Vm1xZU0wMDhZQzVpdTh2VXVRV2RwSWJQNUlucHhwM3FlNHppd0dS?=
 =?utf-8?B?eTB0SXBIcWhwL3B2a0NpaDBQaWJJQVhUQW1pMHYvOEY2OHBaaEhPTVBYTDEv?=
 =?utf-8?B?dzR1NUdZQkh4cFpJd2NWYnFPTHRoZVVXaVFLQVZxbkh3NVJCYkV1QUhFN08x?=
 =?utf-8?B?ejdhQmtDa1BWdHd1NGlFZHZlNnRVVEd2T2NlaXZJZitWT3RVZytVdlpDY0Js?=
 =?utf-8?B?bUJtZXUzWFpKL2dVVURlMk9oQ1hNNGNEUnBQUXFBU1N5VUF5NzQvMDNzYTcy?=
 =?utf-8?B?aStVY29hMWo0MDh5OXN0Q3JrZHBBMVVGM1ZVVlBDL0M5bzYwYkNBcmVJSkQz?=
 =?utf-8?B?bkpGR2xqajJ6WVI0cmwwU3JqTVZjNmxaVmNMUGF2UE9TV3V3UDMzTmlXR2hI?=
 =?utf-8?B?UG1uWGZCbkxxYjdISVBQS08yNGk1T1ZJRmRYdXJWeDRNZ3RLUVlON0JmVDZE?=
 =?utf-8?B?ZTBBYUQ4Zk8zZXhqamRXdU54bGd2WHNZckFvMnNPcWxhNGdYNDZwZWc0cWlm?=
 =?utf-8?B?MVJ3Z2FGTE5HWU5MQm1tUmVESXV2OCtuS2N0RC9kNlZrZW8waUdvZWpqMWRZ?=
 =?utf-8?B?aWFONENQaFNBbXg4eEd6VWd3RGxia3B0cHR3djROL3hZSzBQMVN2d1RYbkhB?=
 =?utf-8?B?bm8yUEpsclJoQ0lVajFZMlVDL1JuSVZqb25DWmFTQmJyWWh2U3dPZUdVdlpL?=
 =?utf-8?B?dlRrWmNkMWRvSGsvWm1NblZwVEdjYXFSdzQxaC80RFFjVWlnbG5malJHeWI0?=
 =?utf-8?B?SHBJRnNSalhWWXZpQm8rS0VYY00rTDJSeWRBbEdycmZnSzk3VmJFZDExb0xY?=
 =?utf-8?B?aWJNK25rQkZPNDhyRU5haEs2L0Y4cnRrOFV3NnNROFlBU2ZtRTQ4MlNzMGZH?=
 =?utf-8?B?R3oxbU9vSk5ORVZXNVlCN3hGWnd3bEhhUjRzRFVmc1prWkdjclpRM2YwdUZp?=
 =?utf-8?B?NXhtU0pra2g5SVhTZm9uUGx3MzY3cXhTQThDWVZxWU8wckZLNGpBZkNXWDBh?=
 =?utf-8?B?TDdPL2N5dFhNMm5GaVNheFdwTWVzWU9HdUR3M1dBQ01JemFLd3lhZ3ZmTGs2?=
 =?utf-8?B?M3ZPakdLemRVOTVlcmtXR1hyNWZnWkJLMGU2eURPcnFBTTFERytNcG83aUJi?=
 =?utf-8?B?R3BWNi9wV3h5elorOWlCUHdHRWlkNG8vLzVUY1lobFBRYTJZRG1lSy96dWJn?=
 =?utf-8?B?RWxKck5LVmlnRE9rMmJTbSttUGR2SFhjS3J3Y3RqazNLUkZJeUNwNVlXamxW?=
 =?utf-8?B?bGJwbDJoR3Jacm0vMGZBdnlQZ0NwZkh1citXT1V5Sm5iWHBEVFhJdlI4bFN3?=
 =?utf-8?B?NTJBeTRXLzA0Y1FoOFVFR3lUaWtwS1VWcWhBSEorUFlhVGxCUTZJZit6Tlpj?=
 =?utf-8?B?N21DT1hTNDFDYXNuM1FsejJwUkoyMmFvazczZ2tpQkhVeGZYblU3RU1INlRx?=
 =?utf-8?B?Sjc1RnB2dktDSi91cTYyZ3E2Mm9ZYXoyd0ViZ1NxN3dCZHphTWZ5RDdMUzM4?=
 =?utf-8?B?TSt0cXo0YTA2VmxvQnFWU0RuYkp6S0N3bzBRazZVVGg1NXdvQllTeE1iTWdl?=
 =?utf-8?B?dEFOMWRROVEydUdDSUtMcUtOU2dISGlYUmFTOXBsZ0hkMndoSi8zanV6Sjlp?=
 =?utf-8?B?amZWc3JPSzZwTi9qRDU4dTEraUp1Z2NLWnRNYXV4bzhydDNlN2R2Z3ZiK01R?=
 =?utf-8?B?T0QyVVJncks2YjVSZlBHZW5BbFdnSEJZUHlvdFhrcmpGdjliUWZGeGlRZ0w0?=
 =?utf-8?B?RW5qSWpXNXM3YUdBZjlYN282d0ZjSGpFQUd0YWYzb09mRStEam1SVXRXOTQ0?=
 =?utf-8?B?Rm03aURZYklSOFNiRFB4cVhIdU00b3c4eUErZ2llRkdkTHh0ajJqanN1S3RB?=
 =?utf-8?B?ZHBCaWwyYVFROHlWdGhRS1ZUSnJBU2F6dERwK3h0NE80dWsxc2pORTA1OTlr?=
 =?utf-8?B?TjdxZ3huR04yNkNmb3lPODlIWGZqTU01Q1lhbTg2YTJmMFdGS2FnVEJPV2ZT?=
 =?utf-8?B?am5uRzBYV0RwbkprTHBUYlBsaWdwY3VRS09GMTVNV3JwaUZtc2ZkdktkMCtH?=
 =?utf-8?B?bEpValBnUE5oZUhSVksrRCtlVGhzNzE4SzhObVFJRlFZSU9kdFFFWmRvZ1Zv?=
 =?utf-8?B?VjBrUTVBRVJnUzJtY0EzTlhOQkhpMSsrOU54aFVNd2dkcXlQTWFaOWZ6bm1J?=
 =?utf-8?Q?NX5VwYZ7q4GaOoA3miptIiicWTFPv2ycaq2FCpqdZ2O/Z?=
x-ms-exchange-antispam-messagedata-1: gsifw5FCTUClf+hHKXLyP5vhEpZqLSM/ES80YLItHTIZ5ZW+ksGIZQfz
Content-Type: text/plain; charset="utf-8"
Content-ID: <C31AA3571964514093CCD5B5BC576566@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72c3a50c-6fe2-48de-9c11-08d9b532a716
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 01:25:40.5227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sXMFK+kFMLLr77FJThtWWCTH2E28qW265xO4IGJbMUbHzS8HIR5f876IoP91H1uvdsYi71ICVmyD6P3DeQ7ddAAcREvEJF/6kd8Q/06D0FHr5rDCpgdJRaandyyRAPIyRuSYAJ9WPuu2+ESO+L+4wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl: Implement
 Wa_14013120569
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

QEphbmkgQE1hbmFzaQoKQnVtcC4KCk9uIE1vbiwgMjAyMS0xMS0wOCBhdCAxNTo1MiAtMDgwMCwg
TmF2YXJlLCBNYW5hc2kgd3JvdGU6Cj4gT24gTW9uLCBOb3YgMDEsIDIwMjEgYXQgMTI6MjU6MjFQ
TSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiBPbiBNb24sIDI4IEp1biAyMDIxLCBNYWRo
dW1pdGhhIFRvbGFrYW5haGFsbGkgUHJhZGVlcAo+ID4gPG1hZGh1bWl0aGEudG9sYWthbmFoYWxs
aS5wcmFkZWVwQGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+IFBDSCBkaXNwbGF5IEhQRCBJUlEgaXMg
bm90IGRldGVjdGVkIHdpdGggZGVmYXVsdCBmaWx0ZXIgdmFsdWUuCj4gPiA+IFNvLCBQUF9DT05U
Uk9MIGlzIG1hbnVhbGx5IHJlcHJvZ3JhbW1lZC4KPiA+IAo+ID4gUmV0dXJuaW5nIHRvIHRoaXMg
d29ya2Fyb3VuZC4KPiA+IAo+ID4gWW91J3JlIG5vdCBzdXBwb3NlZCB0byBlbmFibGUgdGhlIHdv
cmthcm91bmQgd2hlbiB0aGVyZSdzIGVEUAo+ID4gY29ubmVjdGVkLiBUaGlzIGlzIGFsc28gY3J1
Y2lhbCBpbiBhdm9pZGluZyBpc3N1ZXMgd2l0aCBlRFAgUFBTLgo+ID4gCj4gPiBUaGUgd29ya2Fy
b3VuZCBpcyBzcGVjaWZpYyB0byBUaWdlciBMYWtlIFBDSCwgc28geW91IG5lZWQgdG8gY2hlY2sK
PiA+IGFnYWluc3QgdGhlIFBDSCwgbm90IHRoZSBHUFUuCj4gPiAKPiA+IEFsc28gc2VlIGNvbW1l
bnRzIGlubGluZS4KPiA+IAo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogTWFkaHVtaXRoYSBU
b2xha2FuYWhhbGxpIFByYWRlZXAKPiA+ID4gPG1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFk
ZWVwQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcG93ZXIuY8KgwqAgfMKgIDggKysrKysrKysKPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuY8KgwqDCoMKgIHwgMTYKPiA+ID4g
KysrKysrKysrKysrKysrKwo+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygr
KQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKPiA+ID4gaW5kZXggMjg1MzgwMDc5YWFiLi5lNDQzMjNj
Yzc2ZjUgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gPiA+IEBAIC02Mzg1LDggKzYzODUsMTYgQEAgc3Rh
dGljIHZvaWQKPiA+ID4gaW50ZWxfcG93ZXJfZG9tYWluc192ZXJpZnlfc3RhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+IMKgCj4gPiA+IMKgdm9pZCBpbnRlbF9kaXNwbGF5
X3Bvd2VyX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+ID4gPiAqaTkxNSkK
PiA+ID4gwqB7Cj4gPiA+ICvCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gaTkxNTsKPiA+ID4gK8KgwqDCoCB1MzIgdmFsOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KERJU1BMQVlfVkVSKGk5MTUpID49IDExIHx8IElTX0dFTUlOSUxBS0UoaTkxNSkgfHwKPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJU19CUk9YVE9OKGk5MTUpKSB7Cj4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQUF9D
T05UUk9MKDApKTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzE0
MDEzMTIwNTY5OnRnbCAqLwo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYg
KElTX1RJR0VSTEFLRShpOTE1KSkgewo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHZhbCAmPSB+UEFORUxfUE9XRVJfT047Cj4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFBQX0NPTlRST0woMCksCj4gPiA+IHZhbCk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoH0K
PiA+IAo+ID4gQXMgSm9zw6kgc2FpZCwgaG93IGRvIHlvdSBlbmFibGUgdGhlIHdvcmthcm91bmQg
YWZ0ZXIgcmVzdW1lIGlmCj4gPiBleHRlcm5hbAo+ID4gZGlzcGxheXMgYXJlIHN0aWxsIGNvbm5l
Y3RlZD8KPiA+IAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ4dF9lbmFi
bGVfZGM5KGk5MTUpOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFR3
ZWFrZWQgV2FfMTQwMTA2ODUzMzI6aWNwLGpzcCxtY2MgKi8KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpZiAoSU5URUxfUENIX1RZUEUoaTkxNSkgPj0gUENIX0lDUCAmJgo+
ID4gPiBJTlRFTF9QQ0hfVFlQRShpOTE1KSA8PSBQQ0hfTUNDKQo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYwo+ID4gPiBpbmRleCA0N2M4
NWFjOTdjODcuLjhlM2Y4NDEwMGRhZiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+ID4gQEAgLTI2LDYgKzI2LDcgQEAKPiA+
ID4gwqAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV90eXBlcy5oIgo+ID4gPiDCoCNpbmNsdWRlICJpbnRlbF9ob3RwbHVnLmgiCj4gPiA+ICsjaW5j
bHVkZSAiaW50ZWxfZGUuaCIKPiA+ID4gwqAKPiA+ID4gwqAvKioKPiA+ID4gwqAgKiBET0M6IEhv
dHBsdWcKPiA+ID4gQEAgLTI2Niw3ICsyNjcsOSBAQCBpbnRlbF9lbmNvZGVyX2hvdHBsdWcoc3Ry
dWN0IGludGVsX2VuY29kZXIKPiA+ID4gKmVuY29kZXIsCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IpCj4gPiA+IMKgewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9kZXZpY2UgKmRl
diA9IGNvbm5lY3Rvci0+YmFzZS5kZXY7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoGVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgb2xkX3N0YXR1czsKPiA+ID4gK8KgwqDCoMKg
wqDCoMKgdTMyIHZhbDsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHU2NCBvbGRfZXBvY2hfY291bnRl
cjsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgcmV0ID0gZmFsc2U7Cj4gPiA+IMKgCj4gPiA+
IEBAIC0yODgsNiArMjkxLDE5IEBAIGludGVsX2VuY29kZXJfaG90cGx1ZyhzdHJ1Y3QgaW50ZWxf
ZW5jb2Rlcgo+ID4gPiAqZW5jb2RlciwKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gPiBkcm1fZ2V0X2Nvbm5lY3Rvcl9z
dGF0dXNfbmFtZShjb25uZWN0b3ItPmJhc2Uuc3RhdHVzKSwKPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvbGRfZXBvY2hfY291
bnRlciwKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjb25uZWN0b3ItPmJhc2UuZXBvY2hfY291bnRlcik7Cj4gPiA+ICsKPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzE0MDEzMTIwNTY5OnRnbCAq
Lwo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKElTX1RJR0VSTEFLRShk
ZXZfcHJpdikpIHsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAo+ID4gPiBQUF9DT05UUk9MKDAp
KTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
ZiAoY29ubmVjdG9yLT5iYXNlLnN0YXR1cyA9PQo+ID4gPiBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5l
Y3RlZCkgewo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gUEFORUxfUE9XRVJfT047Cj4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LAo+ID4gPiBQUF9DT05UUk9MKDApLCB2YWwpOwo+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChjb25u
ZWN0b3ItPmJhc2Uuc3RhdHVzID09Cj4gPiA+IGNvbm5lY3Rvcl9zdGF0dXNfZGlzY29ubmVjdGVk
KSB7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHZhbCAmPSB+UEFORUxfUE9XRVJfT047Cj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVs
X2RlX3dyaXRlKGRldl9wcml2LAo+ID4gPiBQUF9DT05UUk9MKDApLCB2YWwpOwo+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiA+IAo+ID4gRmlyc3Qgb2ZmLCB1c3VhbGx5IGlm
IHlvdSBoYXZlIGEgY2xlYW4sIGdlbmVyaWMsIGhpZ2ggbGV2ZWwKPiA+IGZ1bmN0aW9uLAo+ID4g
aXQncyBhIGhpbnQgeW91IHNob3VsZG4ndCBzdGljayBsb3cgbGV2ZWwgcmVnaXN0ZXIgYWNjZXNz
IHRoZXJlLgo+ID4gCj4gPiBJZiB5b3UgcGx1ZyBpbiB0d28gZXh0ZXJuYWwgZGlzcGxheXMgYW5k
IHRoZW4gdW5wbHVnIG9uZSBvZiB0aGVtLAo+ID4geW91Cj4gPiBlbmQgdXAgZGlzYWJsaW5nIHRo
ZSB3b3JrYXJvdW5kLCB3aGlsZSBpdCdzIHN1cHBvc2VkIHRvIHJlbWFpbgo+ID4gZW5hYmxlZAo+
ID4gaWYgdGhlcmUncyBhbiBleHRlcm5hbCBkaXNwbGF5IGNvbm5lY3RlZC4gVGhpcyBpcyBsaWtl
bHkgdGhlIG1vc3QKPiA+IGFubm95aW5nIHBhcnQgYWJvdXQgdGhlIHdvcmthcm91bmQuCj4gPiAK
PiA+IFRoaXMgZG9lcyBub3Qgc2VlbSBsaWtlIGEgdHJpdmlhbCB3b3JrYXJvdW5kIHRvIGltcGxl
bWVudC4KPiA+IAo+IAo+IFllcyBJIGFncmVlLCBub3QgYSB0cml2aWFsIFcvQSB0byBpbXBsZW1l
bnQuIEkgdGhpbmsgZmV3IG1haW4gdGhpbmdzCj4gdG8gZmlndXJlIG91dDoKPiAtIFJpZ2h0IHBs
YWNlIHRvIGVuYWJsZS9kaXNhYmxlIHRoZSBXL0EgYXQgY29ubmVjdC9kaXNjb25uZWN0IGFuZCBm
b3IKPiB0aGUgY29ubmVjdG9ycyBhbHJlYWR5IGNvbm5lY3RlZCBvbiBib290IC0gUHJvYmFibHkg
aW4KPiBoZG1pX2luaXRfY29ubmVjdG9yKCkgYW5kIGRwX2luaXRfY29ubmVjdG9yKCkgZm9yIHRo
ZSBjb25uZWN0ZWQgY29ubnMKPiBvbiBib290IGFuZCB0aGVuIGludGVsX2VuY29kZXJfaHB0cGx1
ZygpIGF0IHRoZSB0aW1lIG9mIGV4dCBkaXNwbGF5Cj4gaG90cGx1Zy91bnBsdWcKPiAKPiBASmFu
aSBoYXZpbmcgdGhpcyBXL0EgaW4gYWJvdmUgMiBwbGFjZXMgeW91IHRoaW5rIGlzIGdvb2Q/Cj4g
LSBUaGUgb3RoZXIgdGhpbmcgbGlrZSBKYW5pIHBvaW50ZWQgb3V0IGlzIHRoYXQgd2Ugc2hvdWxk
Cj4gZW5hYmxlL2Rpc2FibGUgb25seSBpZiAhZWRwIC0gc28gYWRkIHRoaXMgY2hlY2sgZm9yIGlu
aXRfY29ubmVjdG9yCj4gZnVuY3Rpb25zIGJlZm9yZSBzZXR0aW5nLyBjbGVhcmluZyB0aGUgVy9B
Cj4gCj4gLSBUaGlyZCB0aGluZyBpcyB0aGUgd3JhcHBlciBmdW5jdGlvbiB0byBiZSBkZWZpbmVk
IGluIGludGVsX3Bwcy5jCj4gc29tZXRoaW5nIGxpa2UgYmVsb3c6Cj4gCj4gaW50ZWxfcHBzX3dh
X2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+IHsKPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+IAo+IMKgwqDCoMKg
wqDCoMKgwqB3aXRoX2ludGVsX3Bwc19sb2NrKGludGVsX2RwLCB3YWtlcmVmKSB7Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpOTE1X3JlZ190IHBwX2N0cmxfcmVnID0gX3BwX2N0
cmxfcmVnKGludGVsX2RwKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUzMiBw
cDsKPiAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBwID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgX3BwX2N0cmxfcmVnKGludGVsX2RwKSk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBwcCB8PSBQQU5FTF9QT1dFUl9PTjsKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlKGRldl9wcml2LCBwcF9jdHJsX3JlZywgcHApOwo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfcG9zdGluZ19yZWFkKGRl
dl9wcml2LCBwcF9jdHJsX3JlZyk7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiB9Cj4gQW5kIHNpbWls
YXIgZm9yIGRpc2FibGluZyB0aGUgd2EKPiAKPiBUaGVuIHRoaXMgZnVuY3Rpb24gY2FuIGJlIGNh
bGxlZCBpbiB0aGUgYXBwcm9wcmlhdGUgcGxhY2VzIGlkZW50aWZpZWQKPiBhYm92ZS4KPiAKPiBA
SmFuaSB0aGlzIHBwcyBoZWxwZXIgZnVuY3Rpb24gZm9yIGVuYWJsZS9kaXNhYmxlIFcvQSBtYWtl
cyBzZW5zZT8KPiAKPiAKPiBSZWdhcmRzCj4gTWFuYXNpCj4gfSAKPiA+IAo+ID4gQlIsCj4gPiBK
YW5pLgo+ID4gCj4gPiAKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gSU5URUxfSE9UUExVR19DSEFOR0VEOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIElOVEVMX0hPVFBMVUdfVU5DSEFOR0VEOwo+ID4gCj4gPiAt
LSAKPiA+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKCi0g
TWFkaHVtaXRoYQo=
