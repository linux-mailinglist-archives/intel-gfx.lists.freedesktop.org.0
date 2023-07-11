Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0F774E621
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 06:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBB210E2F9;
	Tue, 11 Jul 2023 04:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D0E510E2F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 04:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689051365; x=1720587365;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mX0xlYz6JbJ13gh8q79iAXFB8cpbhAdAJGsINwSMycA=;
 b=MQFCdPwR90IbJhOlfEiEK8eJhRsfFOKWQDXYQ645ZPvApoWkfAXnDyZP
 fmRn4dvFBJkO/p49GiRFUVFv8U7dPvQ+KwPG2bpZf4hbKCu9VLsUK4lai
 8FDd7x5cjQX42gdr9K2Mk70rXTrK4OIdhvHLJtP8piduVP7yosnddXd/H
 tjRXDnIsMNh65xeL81fzoFQ1JgITJyPI9p0rMOz3raD9eAU702KZPtaTj
 hjqluG1VnAjxgurim6NYwisZ9jCz1ewpGnMKkIzBhnClbgD/o0bve29eK
 6QvPy5cWi2HhuU2oqt/S9/0deTY/5ttAq3G4wTF94a2Aw5qoK7r//I2ht w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="363390326"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="363390326"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 21:56:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="720938690"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="720938690"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 10 Jul 2023 21:56:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 21:56:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 21:56:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 21:56:02 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 21:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n9TXqtTLkj3Ft20N8sChrmB3nvAAf/3aqqTLqIyDpQCAXGa5nqvpENwImRzqAgFBppCIOqk6AFI6rKiDNIPp2oL1I5J+m3Y0KxplO584N2i5kYZ5dS0rdBxko9B4gFV9tw5pGk6C5uuq3fYEuq9Ni51wc305zREqSLmOdLgnFLBHBD4xnN8rZobAEKCde5tF7BvjFjuOG5ipSg4Ya6gKkr4aT3lGrppBVT9Ngqg42p/WNBmnFR1bFIyJOtFZiTsqKm3USwwIlfReytt1h5j0ukA/f/E3n7Mpy9w6vmcpbcbKMYChsP6VvsQpiLSLk4cqDFevgbKCHM3YsNzHIAWeBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mX0xlYz6JbJ13gh8q79iAXFB8cpbhAdAJGsINwSMycA=;
 b=lN9tjlN/B7aHJ6hdzfQshyFSiK18ZHthie5ybQn/CYmBA1ClOlwNWLydSR/Jn6WQ9LLdG45bc/W5h82bPidRcMgIBBlV7Zm5mJUjwCM+dEJ3mp9JKx+o2ljJe37UbQFNomvzlUyFkQX5LvZttrO0laY/b6fKLCpstB8EKokiW/0obkk8wrugJR51bBmpvohuAeLfL60nrerEmpS2eBsWftzKgQXnl5FsbStJz3uzpDuhnK4cKIOwuobTMIizamohUAU/fG+QEc6bqwCh0UIhFcxarRUXx7dB2CrR/WvmfwzNjwZSOASI8y+DTuVejprCfJwUdvoY4GpRJHD5zwU2mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB5277.namprd11.prod.outlook.com (2603:10b6:5:388::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 04:55:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::b1ca:50cb:3a43:b448%6]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 04:55:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 03/19] drm/i915/dsb: Dump the DSB command
 buffer when DSB fails
Thread-Index: AQHZmKtH1K/pR/ZTIE6cO/UBNy27A6+0Nlvg
Date: Tue, 11 Jul 2023 04:55:55 +0000
Message-ID: <PH7PR11MB5981B40C6EA783637D6028E6F931A@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB5277:EE_
x-ms-office365-filtering-correlation-id: b075efb7-f5ea-4d72-c670-08db81cb1bfd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YVh4M8DtCUvDxh3C8bn0GhYpi43S0wQ24ee1FwI2PWoS5vxlfnnKTAHBhkTe+n8sMmncUVRBVG/LpBtfds8p5MxQH7E6vqBqzAvmqSiyJgxKMVYxaWbyxEg0PHRh0SRvutcI+3jI4fIz7sv958TdbDojQpWZoRD/QMEBWvCrkLoExUDToDmc5zF7PkyLzdjV8YCrARxZ0lkeRxxmFwtHrArtfl/TFp9SWt0Jk2WA4XDUmQiFUXOhRp9WRhReUpXKaNxjZlvaLjT5jYZeTgPigYeN+0ecxl0U1DUd9p8NTJn4yp+RUxYXKOsPXeNxewYIPiRbosvEBle2i4ayNiJI6AZ1TTnuZZdfz7aT1XiCDxB6kftg6/nE6FX6cr9wpo29vQO9Lqk9/43fPiWwWL58aIQSDvQaPAzpbbI20fIMSXtN/fOsQnDKoLNHgGsIRpJq49FYanjpGQ2p/r7tIM8HDGpLALmxYnDEWqNd47Ynbr0E0lD/HyOYlqjCBHi6PYM+pBgqd+9ABLhngn3iNgWDs1z9xlDqeb1hOrha698VRr7MKgr/UpqhjjS2nW5Qe6dQ14On86TDJNkHyPG58zvHV9UlxJ20Fbf7R1ytcyw5U2DRXxChZpyjVeE77zC85lBH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(39860400002)(136003)(346002)(396003)(451199021)(186003)(26005)(6506007)(53546011)(9686003)(55236004)(478600001)(83380400001)(64756008)(66446008)(41300700001)(66556008)(316002)(2906002)(52536014)(5660300002)(8676002)(66476007)(66946007)(8936002)(7696005)(76116006)(110136005)(55016003)(71200400001)(33656002)(122000001)(82960400001)(38100700002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mmp2Z2hDdFl3RmxnVGxWNy92d2pNRGc4U3NybnNUMGxabEM1OVpRSFg3dWRw?=
 =?utf-8?B?ZUMrL2xBS21zRUNDRnN6Z2VJakxKZmpxbldmaDlZa2QyT0EwbWszTTQ2anJt?=
 =?utf-8?B?RWVKdFZ5SnRWWlBpRmR1RTFlRXdVakI3SkU2cjgxN2Vza3J6alByenZtTUVI?=
 =?utf-8?B?MEpJNWFmWk50RVl2WVB0WXh1QWRVWk5HY3hqQkI5U0hpRHlrQWFEVWFQZWFQ?=
 =?utf-8?B?SUdJTWZoWUpxWWpZNFYxOWRVOWREZ25qVWl5bmRTTGhXTVJQWkhuMkVHM1ZG?=
 =?utf-8?B?a3F3djRJNlZPWHA4cE41YTdvNE5TRGx0bnhiMjFpbFNLa201b0VpQnI5c0lC?=
 =?utf-8?B?YW0vK3d2c1kwd0h0cElwU3U2N1JpSDdyOWp1Q2wyUllSbW1xWUxyTDFaRW43?=
 =?utf-8?B?bXRMRHAzOWJDakxtRE1ZSFRqaEJEM0pMbGRxV1VQaEhnV1Nvd0Q3Y3RxQjU5?=
 =?utf-8?B?Lzc1NnhONURLZEp0M3hOT3pjd3pqMEhTcGsvRWFHbmVGbjRLQlkxWmY3NUJh?=
 =?utf-8?B?R1U5ZVh4N3RnRklXaCtmcWY4S0FJYnVBTWJNZkdOcU4ybnh5V2N6U0J3ZXBC?=
 =?utf-8?B?cTVsWmJzY0ZVTnNGTFZvcy9kS1plOWsxVVRYVEdIMXQzWURqMVFmQStUSzg5?=
 =?utf-8?B?SG8zTzAwUnZKRU5SQWt3M1RvRVR5M2c0dUR3VVFQN0pFT1VPV0JjeWswdHRw?=
 =?utf-8?B?U29RRS91MWRsaGwrMkRDdUNEUERHVDZtWWt0VFVkUkI1dUpUQkQ1NzFlODd2?=
 =?utf-8?B?YWY5M1R0REs4dE82YmlxUzBGVWdkeHBEWnRYd0RIdXpBTEdMSngwMU04UUpH?=
 =?utf-8?B?SjV1V0h1SXZ3QjE4NHc3TnJLSFliVGV5WG8vYXpINUtpYnlYNFVhUTIxWEhz?=
 =?utf-8?B?QnBQOXBPdk5qSjhLMVQ1RmQ4cjc3TkZ4T3BnVWQ0c3dPNVlyRlNuWTdYaHd5?=
 =?utf-8?B?RHBRN21GQ3VraVE3VW5NZXRFRm9YZG5hcjFEeW1jYW5hOU1JNHZTZHM2VkdZ?=
 =?utf-8?B?eXV2OTRnSklMRjVnN1dzcGMwWDJtd2JrTFRtOFFWYWVhWFRSblNJUVY2cUlt?=
 =?utf-8?B?L1RIYTY2VUVwQVZqcXh3VGd4MG1yYjNXUWJDamp4U2RVajJqTmhzdm51dmlo?=
 =?utf-8?B?ZndNaEpBT3FKczB1N1hUeW1iSjl5L0Zyc1VLVVdBdkQ2RUhDRnEzUDRweGty?=
 =?utf-8?B?cUZUeW5Hc3B2M1luVXc3UTFFN0RRQlFtRzhuOUFxYUlkMllQQ1dLK0ZTV1l6?=
 =?utf-8?B?THNSN1d4SHlTdVkvSFAwS204Y0lrNC9wS2xRdDhDMnNCYmh4SkY0aW4xcktK?=
 =?utf-8?B?d0FNZkpCWUtwZzNBaXRqY1p4aWlwci9NZkNLUDNUQ3dVdkhoZi9HZUpKakhs?=
 =?utf-8?B?QTBBNGc1QU5SOFQ1QWpUQitSRlFERE8vK1g5eDhnKzNqU3FEN3BSaCs5ekpo?=
 =?utf-8?B?TUJnUUJDdDN6V0M2bEdzQU0vWGdOMVVRS29vRTB3NlM4L3pvSi81eVBkTFRV?=
 =?utf-8?B?OHQwbkRrUVA3RnFMQTJMVkt0R0M4VHJORWVDakJwejh1WkhJKzZzVkZvdWFG?=
 =?utf-8?B?bmF0WnJZdE5aNmVZeEp1ZFhTVHExemE0MWw4N2plL09TVUppT0ppV3JkSXRY?=
 =?utf-8?B?UDFOOTcvb0FwMkMyZ2JTL2c1dHVPQWF6azBUTmxmRjlLMmkrdktNR0JRTDNr?=
 =?utf-8?B?STE4UWExU2U3N3lYL3V1bXJEM3Y5VVIzTkFvZzhmd05CUW1VaUdrc1RLdDhM?=
 =?utf-8?B?Z2szYW5iNmZuWUVEWUlzZWo3TStDUWh6MlFOeU45cUU3TjB6T0NQT2ttYUJN?=
 =?utf-8?B?VnVMVUhZQjNjZzB5WS9ZYUdqTkFtcXhpSlNiR2lLbU9BdzhYSlNOSTlxWXd1?=
 =?utf-8?B?aXhDVkhDU05FTFlYbE84T2xXNjNkZkY1TzJ2YTJjdXQ1N3BEK0JETWxTWUx6?=
 =?utf-8?B?Y2VCRlN2dmFNRHRPc28xS2NJQWVsNHphTndrZldlT084b0JZZVdFalZVemtL?=
 =?utf-8?B?Wk80dW9FTmNxZjZJY01CRmVDUjhVT0FFS1pwYWdDZ2V4blJDbmJ6V3J4SndH?=
 =?utf-8?B?MGI4UHVNTVd4RGlwVnRqZXAwSUhxbjV2anJrOTN1c2ZpbVBlc2xFc1RjMUhX?=
 =?utf-8?Q?3fc7+FzQXHGqUrdS4AGembUnJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b075efb7-f5ea-4d72-c670-08db81cb1bfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 04:55:55.0603 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BZGVp8kyoEkQiSoZN+0uKvzWSJr/pqKmzVWyX7of0IU1AvMbx/gaq/eU44SYxizzlL/Aglzcu/C9ZWzpFsHn7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5277
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 03/19] drm/i915/dsb: Dump the DSB command
 buffer when DSB fails
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAwMy8xOV0gZHJtL2k5MTUvZHNiOiBEdW1wIHRoZSBEU0IgY29tbWFuZA0KPiBi
dWZmZXIgd2hlbiBEU0IgZmFpbHMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBEdW1wIHRoZSBmdWxsIERTQiBjb21tYW5k
IGJ1ZmZlcnMgYW5kIGhlYWQvdGFpbCBwb2ludGVycyBpZiB0aGUgdGhlIERTQg0KPiBoYXNuJ3Qg
Y29tcGxldGVkIGl0cyBqb2IgaW4gdGltZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdl
ZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMzMgKysrKysrKysr
KysrKysrKysrKysrLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYw0KPiBpbmRleCA5N2U1OTNkOWYxMDAuLjQyOTExYWJjZDNhYiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC05Myw2ICs5MywyMiBAQCBz
dGF0aWMgYm9vbCBhc3NlcnRfZHNiX2hhc19yb29tKHN0cnVjdCBpbnRlbF9kc2INCj4gKmRzYikN
Cj4gIAkJCSBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgZHNiLT5pZCk7ICB9
DQo+IA0KPiArc3RhdGljIHZvaWQgaW50ZWxfZHNiX2R1bXAoc3RydWN0IGludGVsX2RzYiAqZHNi
KSB7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gKwlj
b25zdCB1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCWRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sICJbQ1JUQzolZDolc10gRFNCICVkIGNvbW1hbmRzIHtcbiIsDQo+
ICsJCSAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgZHNiLT5pZCk7DQo+
ICsJZm9yIChpID0gMDsgaSA8IEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDY0IC8gNCk7IGkgKz0gNCkN
Cj4gKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gKwkJCSAgICAiIDB4JTA4eDogMHglMDh4
IDB4JTA4eCAweCUwOHggMHglMDh4XG4iLA0KPiArCQkJICAgIGkgKiA0LCBidWZbaV0sIGJ1Zltp
KzFdLCBidWZbaSsyXSwgYnVmW2krM10pOw0KPiArCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJ9
XG4iKTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcGlwZSBwaXBlLA0KPiAgCQkJZW51bSBkc2JfaWQgaWQp
DQo+ICB7DQo+IEBAIC0yNTgsMTAgKzI3NCwyMSBAQCB2b2lkIGludGVsX2RzYl93YWl0KHN0cnVj
dCBpbnRlbF9kc2IgKmRzYikNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBp
cGU7DQo+IA0KPiAtCWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUsIGRz
Yi0+aWQpLCAxKSkNCj4gKwlpZiAod2FpdF9mb3IoIWlzX2RzYl9idXN5KGRldl9wcml2LCBwaXBl
LCBkc2ItPmlkKSwgMSkpIHsNCj4gKwkJdTMyIG9mZnNldCA9IGk5MTVfZ2d0dF9vZmZzZXQoZHNi
LT52bWEpOw0KPiArDQo+ICsJCWludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2LCBEU0JfQ1RSTChw
aXBlLCBkc2ItPmlkKSwNCj4gKwkJCQkgIERTQl9FTkFCTEUgfCBEU0JfSEFMVCk7DQo+ICsNCj4g
IAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwNCj4gLQkJCSJbQ1JUQzolZDolc10gRFNCICVkIHRp
bWVkIG91dCB3YWl0aW5nIGZvciBpZGxlXG4iLA0KPiAtCQkJY3J0Yy0+YmFzZS5iYXNlLmlkLCBj
cnRjLT5iYXNlLm5hbWUsIGRzYi0+aWQpOw0KPiArCQkJIltDUlRDOiVkOiVzXSBEU0IgJWQgdGlt
ZWQgb3V0IHdhaXRpbmcgZm9yIGlkbGUNCj4gKGN1cnJlbnQgaGVhZD0weCV4LCBoZWFkPTB4JXgs
IHRhaWw9MHgleClcbiIsDQo+ICsJCQljcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFt
ZSwgZHNiLT5pZCwNCj4gKwkJCWludGVsX2RlX3JlYWRfZncoZGV2X3ByaXYsDQo+IERTQl9DVVJS
RU5UX0hFQUQocGlwZSwgZHNiLT5pZCkpIC0gb2Zmc2V0LA0KPiArCQkJaW50ZWxfZGVfcmVhZF9m
dyhkZXZfcHJpdiwgRFNCX0hFQUQocGlwZSwgZHNiLQ0KPiA+aWQpKSAtIG9mZnNldCwNCj4gKwkJ
CWludGVsX2RlX3JlYWRfZncoZGV2X3ByaXYsIERTQl9UQUlMKHBpcGUsIGRzYi0+aWQpKQ0KPiAt
IG9mZnNldCk7DQo+ICsNCj4gKwkJaW50ZWxfZHNiX2R1bXAoZHNiKTsNCj4gKwl9DQo+IA0KPiAg
CS8qIEF0dGVtcHQgdG8gcmVzZXQgaXQgKi8NCj4gIAlkc2ItPmZyZWVfcG9zID0gMDsNCj4gLS0N
Cj4gMi4zOS4zDQoNCg==
