Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B858877BB76
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 16:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE2A10E204;
	Mon, 14 Aug 2023 14:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E54C510E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 14:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692023080; x=1723559080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C10IKas0bsO3G2JI54sjTfCLXm43KI2OMgvo/t3Zhas=;
 b=hd+5fob+v/+Sn9ADsVgrXk7WYfimGXlqOEOviRjJcIftPWcGyzybxunA
 HDlh6Tk7vjWcxETcpo4MR/c7oIxTlU4mLstieaBDpWmNWGawXO65g3Feb
 unv0XJGlnB65xWlnXVYk69M6GtROsCShdU2YErXAITGJF7gG4kaZzUiap
 dj9N6EDiV3VRRrNLR3lJm4e7MRfaaLZ3UzggjHSOgd5QGWSVE5O8FEypb
 FCfJYXcu4CDkNpinWruhrdIu2xYFcB6JceyK8M+biQr0m0rqZDgXFruU2
 hya0Ug2ix3mViMfCjVQcZ/I0ogthpfXyB6avSxJupY8rlmahEmn8QoX4Q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="375759897"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="375759897"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 07:19:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="736529339"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="736529339"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP; 14 Aug 2023 07:19:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 07:19:18 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 07:19:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 07:19:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 07:19:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jItTW3nAl1Lv6QQIT08Lo+KHaodJOzqMTpJ1zSk9B/lNev6EuVQT0S3aBIpx/uKqpTqeahXTTvq/Ri1UqSqn7xz4xCGWuQf90mJlJBrRgLCg6C0grrUdl5PSh4JyYyWaYuvOECTEJVIKpXIpWhqPqxnIdag13bl6VAcFOx4L4a71O0tlM9ZPUtv9ok28gDjWtwvAd2OvTrOIu3pcAY2cnnERT5rr4D3+dXchwCqzPrO1YdWt2lb1t4RwfywDhXyxM3KbnVGgUU0Th0Tb3oAxsEhXmB3yiebKH9T0nRGAKlE7G4B7pYA2OXyVWkOECIswqRDXdVTWrLzK7F/6+x0bNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C10IKas0bsO3G2JI54sjTfCLXm43KI2OMgvo/t3Zhas=;
 b=JyOosk83APrD+4fEmLg0s0ElwccrHRISQqyGS0ktBflu2RNTcyHz+WXITQ2KW/UczPZ7zd3xgEk9XQFxdhnmafhjfw8Q8JaV+T7Lc4A3+ILDe+ri7Auz06ufKI3raNDikDOVTv89DazW80SyustLdvtFgR/Zasabsu5IhvTSgCWuMGtLDf3UkzbiEG4YA8tGZRxyNSQc/VqGx5cm2xbv72ihtdf77MDOMSCGxGmTQ0X7GuodEXW6tCdxD7sZQ1qU2HVwvJ6OCqjl8OTqOvlcfHdhQFjhQyweWwZzyZsDzVp0PPhiDCVswfCc+AjDT9IOWtbyFmoC1FkImiryKszafg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by SA2PR11MB5035.namprd11.prod.outlook.com (2603:10b6:806:116::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Mon, 14 Aug
 2023 14:19:05 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::6462:b253:fa3c:2cee%6]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 14:19:05 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Dual refresh rate
 fastset fixes with VRR fastset
Thread-Index: AQHZzJeZVXkHeNwajEeEy2DljHVIO6/p073g
Date: Mon, 14 Aug 2023 14:19:05 +0000
Message-ID: <IA1PR11MB6348D093A0C533001EFEC9BDB217A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230811210433.2514027-1-navaremanasi@chromium.org>
In-Reply-To: <20230811210433.2514027-1-navaremanasi@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|SA2PR11MB5035:EE_
x-ms-office365-filtering-correlation-id: 44e83a54-91af-4005-01c1-08db9cd16a6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ly2sJgYuGlAmL+MTX3jkaf9lokcdboMq1CIktl3iujHnlFJJuG7PdTO65VaPJruKX1MN/L2NlQ6KF2Xei/4P0yth9HLQGsBpt1X2k08wn/uGUhI1RHHyvlZldGVhbSw+JwYveamPL+rCcxGV5fT1IYDlpvxKgxpLIFnoe5wjYyVcsPtayYm2H/vXHgy7NG/gpdsp6XXHRvpsCVT2guUea4aM2Lhdhi4xgT610MP0Jv0t37xdVGB3DAGzIf373KXgBpulohZ4K+eUdKH9NQGNSVNupTcFOn4NXt5z1xYcoDft69JZ1P2RxceqfVcZE47Zzwqo/vbWjBpGNkdGAUclhk2ujolDsypIELRlipIFlL5qPEcBlsTGf/jyyHe23gloyuMgSeA/owjLpXt2aE+N3EPAQR2TPqSsLX4D1zc1IJdDLhSd9m7NYB2vq7G1QJSx7jwh6K2ZAQ6PfMNIQy0h09rcaEPYopTU0F4vfbFTrc0J02WSXt5pgZUGYv5aEll031z/XVgFLXQ5CQtveplEnuW5LQZidafgusJwERFxkcDi3dJJ2AoDkXOBXG2N2YMh2Dg9g9UPFfSUiKD8G6DCAw2VnpICMKlU3K9lbec3An493wWeoTWu/UvCpea6CeTl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(1800799006)(451199021)(186006)(55016003)(5660300002)(52536014)(26005)(83380400001)(2906002)(66574015)(71200400001)(478600001)(55236004)(41300700001)(7696005)(6506007)(53546011)(8676002)(8936002)(4326008)(9686003)(76116006)(110136005)(316002)(66476007)(66556008)(66946007)(66446008)(54906003)(64756008)(33656002)(86362001)(38070700005)(38100700002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2JPUS9nbENQZUVEaTc0RGtYSXNGWTBqRko2dC9ha2szQms2N0g3dW5NbnJa?=
 =?utf-8?B?a1doWEZVbmFtdW5uSC9PcTdjb2dreE9IUWlMVytZbVFxUTZZQ2JTbGlNZDQw?=
 =?utf-8?B?M3ZFQTV6cGRQYTBLOG9PNnVRbUtHL0FZTXkzS1lTekR3RWJBM2VBdzR6Wlda?=
 =?utf-8?B?OE8vWDlJN0Z6aEh1bVpZcGhCa1NENTNLTUFXTUtaT0xHdHRSWG4xb1BOYU1x?=
 =?utf-8?B?aG1PaCtybitzWTY2ajdyTzB0aFM0YlZsZ0Q4ODlvLzBBd3ZXS0pGdHdEaWda?=
 =?utf-8?B?MFVFVlJabjFTYUFoMFcyeE9WSCtJQlpzZ1hWaU5weHBDQkEzWDMrdVF1dHRi?=
 =?utf-8?B?S01lbEVMSmttbVdVQ2RvUGl5YXN2Mlc5ZlI2TE9LOTBLcXpnTE5VdS9qRHl4?=
 =?utf-8?B?UUloU2hEaFJERE8wanVCZ2dMRGYyRWtqSU1qYndQZGFmSlZsRlJMU1ZDb0cr?=
 =?utf-8?B?bWZXQ1A2eElaQ1FBL1ZEd1BMSHVKemVuc0hsa3hXQU1qSHg1NE55ZWlML0JL?=
 =?utf-8?B?WXNwL3l6TWRVSlpNWmVnU1RxYzZHUFdXL3pKRHhrNXBzMGRnWnJuWDJoNnV6?=
 =?utf-8?B?RzZmeW5jZE85eTNsZFRGVkh5dzZnS3VEMUZpQSsxNHYrL0l3czR0UXJWSWZM?=
 =?utf-8?B?UXZNblYwaGRCZFl6MTVGRXVvNFBPbjFiWEdqbFpYWm45TWQxSW00SkIzVFFt?=
 =?utf-8?B?YzB2dTRaNUVzSVVrM0pxMW1EWVhNWjhwNzFvNlNVdmE0aU9sQ2R6blhMb2Mr?=
 =?utf-8?B?NzE2YWdVdEZnQm40aU1KN2hJVFF3eHRrM3pXclI3cHBkZ011RVJzV2Fid3RR?=
 =?utf-8?B?bjFKZnd3NWlRblY4L3ZlWTJaajBOVTFGT3dCcGpPdEtCaVgySjcrYTcrR2k2?=
 =?utf-8?B?clUzQlJkUCs2N041TWVhd0Z6a3lMaUxLWjk1blRmQmR3bmdNdnh2VGF6WlNo?=
 =?utf-8?B?WXBjSXA5dlYrdXpLdDE0MWZrcUU3WUE4U3gva2pPb3YyOTloNzVXalZFV0pq?=
 =?utf-8?B?bnBLMTlRNks5WldFTHM3VnZDaHk5aG53Sml4OFJEVUpNMGNQVmtwdzhJQ3VC?=
 =?utf-8?B?NHdqVkpJeXdxdGhidHE0RDRtRzladE14M2l0MXVWWTRPZjZzUm9LYmQ0V0Z5?=
 =?utf-8?B?RUN5K3JHNnJNem9KREoxL1RlMkZ0UytjdWxoemFkTTlVTk0yM29OaEZmM09O?=
 =?utf-8?B?VEZLZ3lHVlNDdGo1TDNxTS9CUzZmYXdiRzgwbUIzbUxEQzRiMi9UN1IxRDlo?=
 =?utf-8?B?RjJoVlJTOE8ya2lMVmZncEorZGNQTmp6eWxvNHNFRm5ZV1Z5WmgvdzlyUnk5?=
 =?utf-8?B?SFpvSFR6aW1rQWo5SkI4eWhJUUVZNXFndE1ySEJIUFRMT0FaSEtZOTQwV1RU?=
 =?utf-8?B?RlBiSnlEbUI5TVZ6SWNRbzhESkl0QW5aSzJCbEdwUEQ3OEtSZ0xJNXphYU4r?=
 =?utf-8?B?akFiNU00OUFIK1k2dDVSU3p4TkpUSEt0T3FLL2JKYlVmdmhVcHA4S00xTFpS?=
 =?utf-8?B?TFJnbXd4UHJvdXk1Nm1EemVzTlNHYStpcXAyZW5sUWdaOUFQMytlNFkxeHlM?=
 =?utf-8?B?KzMxUGZsc1UrdFhZSmFoc0lYYTFGaW8reWxHM3BSTlB4b3lPMVJCUDdFV1ZK?=
 =?utf-8?B?Z2Q3QXk5c1ZFOXp0b3FCUFNhbmlZYkZJc0l1ejhEUjhKY1JxS3VMd0hERzNM?=
 =?utf-8?B?dFJra3JUT0NGTFVIU0g0MlJ4RzN6QVAzUjFQTE1mSXVMZExWdCtRV1Nza3gv?=
 =?utf-8?B?UWlGOWhLWGprY08wT29nUS9CY1liVzNLcnJ4bFk3K2t2clh5WmhZMkdlNWVh?=
 =?utf-8?B?RGlrSVJwbFBpZ3lWQkxGQ1lNbzlkdU5xRzNEQUR4TGxTeUN1TENvOGFBTWN4?=
 =?utf-8?B?UDRUNnM5U0V3UlNVMWF0UStwSTRpMi9taWEzYUM1amFQNjlmbjVHclZoT3lI?=
 =?utf-8?B?SHd4RTJjMjZFWmFENkF4YXFOaCtFQ25NT0FBY08wejVyT0I3ZEk5eC9jb1ZT?=
 =?utf-8?B?ZWp6L3IvaThxUGJPUXdUQlZpeCtITXpBaURaV3dsNTBmaHl3UDlvbVJGVkJY?=
 =?utf-8?B?TU1tOUMzREhubnRFSDVBK0xxNTdqZVNOaWdUOFkwTk16Z2tmeXBoSy9JWnN0?=
 =?utf-8?B?RVlKWUlwSG9yREJqeTVIN2tyYUtWYUo4YUYrMHJ5bXp0dytuU1hQQ0hFeW9G?=
 =?utf-8?Q?rdwa25VFdmsV7naI7upUrQw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44e83a54-91af-4005-01c1-08db9cd16a6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2023 14:19:05.0441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mlZmq7Ez0uL0a0kI/Sefeg+bH6eoC8Nd0Ehc0gm3BE7HzITz9+NOg2WaRuI+GHYyoKdH/8UiKgFsx5/9J/A98oc7UeO5W2NBqD2HuDx6kZWlmZTLsLWzj4XMQSzwUpXB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5035
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Dual refresh rate
 fastset fixes with VRR fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWFuYXNpLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVs
LWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYg
T2YgTWFuYXNpDQo+IE5hdmFyZQ0KPiBTZW50OiAxMiBBdWd1c3QgMjAyMyAwMjozNQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogRHJldyBEYXZlbnBvcnQgPGRk
YXZlbnBvcnRAY2hyb21pdW0ub3JnPjsgU2VhbiBQYXVsDQo+IDxzZWFucGF1bEBjaHJvbWl1bS5v
cmc+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2Ml0gZHJtL2k5MTUvZGlzcGxheTog
RHVhbCByZWZyZXNoIHJhdGUgZmFzdHNldCBmaXhlcw0KPiB3aXRoIFZSUiBmYXN0c2V0DQo+IA0K
PiBEdWFsIHJlZnJlc2ggcmF0ZSAoRFJSKSBmYXN0c2V0IHNlYW1sZXNzbHkgbGV0cyByZWZyZXNo
IHJhdGUgdGhyb3R0bGUgd2l0aG91dA0KPiBuZWVkaW5nIGEgZnVsbCBtb2Rlc2V0Lg0KPiBIb3dl
dmVyIHdpdGggdGhlIHJlY2VudCBWUlIgZmFzdHNldCBwYXRjaGVzIHRoYXQgZ290IG1lcmdlZCB0
aGlzIGxvZ2ljIHdhcw0KPiBicm9rZW4uIFRoaXMgaXMgYnJva2VuIGJlY2F1c2Ugbm93IHdpdGgg
VlJSIGZhc3RzZXQgVlJSIHBhcmFtZXRlcnMgYXJlDQo+IGNhbGN1bGF0ZWQgYnkgZGVmYXVsdCBh
dCB0aGUgbm9taW5hbCByZWZyZXNoIHJhdGUgc2F5IDEyMEh6Lg0KPiBOb3cgd2hlbiBEUlIgdGhy
b3R0bGUgaGFwcGVucyB0byBzd2l0Y2ggcmVmcmVzaCByYXRlIHRvIDYwSHosIGNydGMgY2xvY2sN
Cj4gY2hhbmdlcyBhbmQgdGhpcyB0aHJvd3MgYSBtaXNtYXRjaCBpbiBWUlIgcGFyYW1ldGVycyBh
bmQgZmFzdHNldCBsb2dpYyBmb3INCj4gRFJSIGdldHMgdGhyb3duIG9mZiBhbmQgZnVsbCBtb2Rl
c2V0IGlzIGluZGljYXRlZC4NCj4gDQo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhpcyBieSBpZ25vcmlu
ZyB0aGUgcGlwZSBtaXNtYXRjaCBmb3IgVlJSIHBhcmFtZXRlcnMgaW4gdGhlDQo+IGNhc2Ugb2Yg
RFJSIGFuZCB3aGVuIFZSUiBpcyBub3QgZW5hYmxlZC4gV2l0aCB0aGlzIGZpeCwgRFJSIHdpbGwg
c3RpbGwgdGhyb3R0bGUNCj4gc2VhbWxlc3NseSBhcyBsb25nIGFzIFZSUiBpcyBub3QgZW5hYmxl
ZC4NCj4gDQo+IFRoaXMgd2lsbCBzdGlsbCBuZWVkIGEgZnVsbCBtb2Rlc2V0IGZvciBib3RoIERS
UiBhbmQgVlJSIG9wZXJhdGluZyB0b2dldGhlcg0KPiBkdXJpbmcgdGhlIHJlZnJlc2ggcmF0ZSB0
aHJvdHRsZSBhbmQgdGhlbiBlbmFibGluZyBWUlIgc2luY2Ugbm93IFZSUg0KPiBwYXJhbWV0ZXJz
IG5lZWQgdG8gYmUgcmVjb21wdXRlZCB3aXRoIG5ldyBjcnRjIGNsb2NrIGFuZCB3cml0dGVuIHRv
IEhXLg0KPiANCj4gVGhpcyBEUlIgKyBWUlIgZmFzdHNldCBpbiBjb25qdW5jdGlvbiBuZWVkcyBt
b3JlIHdvcmsgaW4gdGhlIGRyaXZlciBhbmQgd2lsbA0KPiBiZSBmaXhlZCBpbiBsYXRlciBwYXRj
aGVzLg0KPiANCj4gdjI6DQo+IENoZWNrIGZvciBwaXBlIGNvbmZpZyBtaXNtYXRjaCBpbiBjcnRj
IGNsb2NrIHdoZW5ldmVyIFZSUiBpcyBlbmFibGVkDQo+IA0KPiBDYzogRHJldyBEYXZlbnBvcnQg
PGRkYXZlbnBvcnRAY2hyb21pdW0ub3JnPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21p
dW0ub3JnPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxuYXZhcmVtYW5hc2lAY2hy
b21pdW0ub3JnPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgMTQgKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA3NjNhYjU2OWQ4ZjMuLmVmYzQwN2Ux
MWQ4ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gQEAgLTUzNTIsNyArNTM1Miw3IEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUo
Y29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLA0KPiAgCWlm
IChJU19HNFgoZGV2X3ByaXYpIHx8IERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA1KQ0KPiAgCQlQ
SVBFX0NPTkZfQ0hFQ0tfSShwaXBlX2JwcCk7DQo+IA0KPiAtCWlmICghZmFzdHNldCB8fCAhcGlw
ZV9jb25maWctPnNlYW1sZXNzX21fbikgew0KPiArCWlmICghZmFzdHNldCB8fCAhcGlwZV9jb25m
aWctPnNlYW1sZXNzX21fbiB8fCBwaXBlX2NvbmZpZy0+dnJyLmVuYWJsZSkNCj4gK3sNCj4gIAkJ
UElQRV9DT05GX0NIRUNLX0koaHcucGlwZV9tb2RlLmNydGNfY2xvY2spOw0KPiAgCQlQSVBFX0NP
TkZfQ0hFQ0tfSShody5hZGp1c3RlZF9tb2RlLmNydGNfY2xvY2spOw0KPiAgCX0NCj4gQEAgLTUz
ODcsMTEgKzUzODcsMTMgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QN
Cj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsDQo+IA0KPiAgCWlmICghZmFzdHNl
dCkNCj4gIAkJUElQRV9DT05GX0NIRUNLX0JPT0wodnJyLmVuYWJsZSk7DQo+IC0JUElQRV9DT05G
X0NIRUNLX0kodnJyLnZtaW4pOw0KPiAtCVBJUEVfQ09ORl9DSEVDS19JKHZyci52bWF4KTsNCj4g
LQlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIuZmxpcGxpbmUpOw0KPiAtCVBJUEVfQ09ORl9DSEVDS19J
KHZyci5waXBlbGluZV9mdWxsKTsNCj4gLQlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIuZ3VhcmRiYW5k
KTsNCj4gKwlpZiAoKCFmYXN0c2V0ICYmICFwaXBlX2NvbmZpZy0+c2VhbWxlc3NfbV9uKSB8fCBw
aXBlX2NvbmZpZy0NCj4gPnZyci5lbmFibGUpIHsNCj4gKwkJUElQRV9DT05GX0NIRUNLX0kodnJy
LnZtaW4pOw0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIudm1heCk7DQo+ICsJCVBJUEVfQ09O
Rl9DSEVDS19JKHZyci5mbGlwbGluZSk7DQo+ICsJCVBJUEVfQ09ORl9DSEVDS19JKHZyci5waXBl
bGluZV9mdWxsKTsNCj4gKwkJUElQRV9DT05GX0NIRUNLX0kodnJyLmd1YXJkYmFuZCk7DQo+ICsJ
fQ0KDQpJdCBhcHBlYXJzIHRoYXQgd2hlbiBzd2l0Y2hpbmcgdG8gdGhlIGZpeGVkIHJlZnJlc2gg
cmF0ZSBtb2RlLCBzdWNoIGFzIHRoZSA2MEhaIG1vZGUsIHRoZSB2cnIuKiBwYXJhbWV0ZXJzIGFy
ZSBhbHNvIGJlaW5nIGNoYW5nZWQuDQpIb3dldmVyIGFmdGVyIGltcGxlbWVudGluZyB0aGUgY2hh
bmdlIGFib3ZlLCBhIHBpcGUgc3RhdGUgbWlzbWF0Y2ggb2NjdXJzIGR1cmluZyB0aGUgJ2ludGVs
X21vZGVzZXRfdmVyaWZ5X2NydGMnIHByb2Nlc3MuIEkgdGhpbmsNCnRoaXMgb2NjdXJzIGJlY2F1
c2Ugd2UgYXJlIGF2b2lkaW5nICdQSVBFX0NPTkZfQ0hFQ0snIHRvIHByZXZlbnQgYSBjb21wbGV0
ZSBtb2Rlc2V0ID8gDQoNCkNvbnNpZGVyaW5nIHRoaXMgd291bGQgaXQgYmUgZmVhc2libGUgdG8g
c2tpcCBjaGVja2luZyB0aGUgYWZvcmVtZW50aW9uZWQgcGlwZSBjb25maWd1cmF0aW9uIGR1cmlu
ZyBmaXhlZCByZWZyZXNoIHJhdGUgbW9kZSBhbmQgb25seQ0KY29tcGFyZSB0aGVtIHdoZW4gd2Ug
ZW5hYmxlIFZSUiA/DQo+IA0KPiAgI3VuZGVmIFBJUEVfQ09ORl9DSEVDS19YDQo+ICAjdW5kZWYg
UElQRV9DT05GX0NIRUNLX0kNCj4gLS0NCj4gMi40MS4wLjY0MC5nYTk1ZGVmNTVkMC1nb29nDQoN
Cg==
