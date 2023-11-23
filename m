Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C987F59A1
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:55:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A845810E6D8;
	Thu, 23 Nov 2023 07:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E0E610E6D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700726122; x=1732262122;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1ozb9ymj5TALbl4EUs6/xeGOwp1rw9r/nDJF1BOQHOA=;
 b=S4w/wgfKP5ge3KbQp9Cr3eslnivSPw4e7iw0RpFGmSBtTdenlQgNQai3
 XqkDaw09ekDnCAe5osjLmUJ3+FDBqtcMwCDUySTTSpdACT8Fcq4r2DLD7
 9sx/xItB+6VrLQKhtMiDrIW2ktjHFUePoMjrFQYfEBPOO00FX+Bl2aMdp
 azJpOJmdV+/qkRHnqiIzoLeEXWSXlW3PVvRJs91rGZ9J8XuEDVzTbDJPq
 3Z27/bwEqUZwo4SWQCSF3JtUjL3LTB3gN6pdECs5fVnbR2mCJY/UVxvrP
 /I3QCumx0q7c3xj/IJqxSZFqIHevGGzE+EnEcJ04wNb1UscbUQTtw6OBY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="382617779"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="382617779"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:55:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="15573827"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 23:55:01 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:55:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:55:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 23:55:00 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 23:54:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nvy6HAKAJWbRq1dHvECseXV6lhXuQTtlJdopANWR2EHY5DS6Ys7whBIfBNCcR0jQI3SZnsKuYzn7UosawkRiSDladEMP/ziOdu4j4waZ3CYkoVIMxg0CInMdQ2Zp+OQ73Xa1R1J6h9HWT6t29iwruQ8YWPVCtLAYlsq1zcLaKYnwZczOnZ0WxZe+gYInPbKmJkRtxLh/rpSqcyVCrvvMqciNYL6YssE6qwubuElz0EherbROe/gsEv4j+DxTupL4v/L6fypLCa4LS+FRdF9krTJcLwY94Rjk0eT6E/agHTG+VqAmc0QQ5A63Z3ZbXeZHMzi3XuhMhY3no5Zp9FcOpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ozb9ymj5TALbl4EUs6/xeGOwp1rw9r/nDJF1BOQHOA=;
 b=ZCGfMH9BAx4jRJr6dAmKI8LY33jrMPA+0LOthwNuIhhgMj7Ke7+Z0jqXREdQ6Iz4r/RWUebcU4KvjqCfyd0CGWtWyYVW2iVcb7cMkEnBmQ80gx5WDhyIbR+My8ViEl8sT3HLV6+J8S3NtSA+vPbHT1KA4c1nTh8dcEj/5W5BKg0r/Cp8icsgklEypl7d2QKYuzGU4Fiz7xOXC6UnMqCCzr7vSpNyWZ/7ow95oFo0bqmrvjdNXxukX2LVzZd8duiq13JzeaNEUuWGveqoHoxiG+qLrx+p/QzazfkFEWTIWxfwE2I3+fiYkZsDXPuVZG1YDIqDV4Kcd2EzhO6g2iOAWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Thu, 23 Nov
 2023 07:54:58 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 07:54:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Do not check psr2 if psr/panel replay
 is not supported
Thread-Index: AQHaG7HvogqaG68Zy0Wj3nRkURC/MLCDc1oAgAQZ9oA=
Date: Thu, 23 Nov 2023 07:54:58 +0000
Message-ID: <d6d05673155f20922e4dc83fe0e7225cddf6d116.camel@intel.com>
References: <20231120130214.3332726-1-jouni.hogander@intel.com>
 <BL1PR11MB59797BE3D342A416C26363B3F9B4A@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB59797BE3D342A416C26363B3F9B4A@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB6612:EE_
x-ms-office365-filtering-correlation-id: 527bdc59-7d2f-4f81-d67b-08dbebf97d1e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s8k/SBFYlbJYu3od9o7jEua5NWV7h9k2m5FD5e1UBwdi5qcId6NJKSaXoDYoHuAq8iX61aDW8N+cb+0hffdva544dwfum8zfh7UvBGdgXo80/DDZs+H2+K72sy+Gxofz4lAU1TYubrwpQjVRie1+p/sPj8nkFu5c6swtaaQ6ULYnzquKO1jqzWCskM8Qm+fbJ1/fnnNZRpNCrNs8X23Pi/AzqkVanTC5XMXUhUxYovaFtpTSv2wnf/fiQCSeS+YOgSwFIHNIcZyLKMTjuoJqXftAUAyDvIGNGQ7VwBY1cAyNRHdFOlvlUrMA8hkj6H7Z4XqJui4k40jXq7nXh/n1oK+jc/sb/kjcXVdFVdanXpjjF9KF9rVLF6zQKTc+ZQVyMQ2JPBo7RtceU+7YChAUSHsEyR3nyPGmrA/SIzfb2rVTVA5KacR1AFP/Ntor7C7NjSJ3+dqsxmsnA1E3sLQqSwqAjFtpSXjqQegg4aDAkfAY1L6zmqHvsekam8I5YTkKk5yCI3vSDAT2RYrhqR97mvxknWOIAZpRcQvYfyLGFnX9SMCFo0lXihmTvlYAz9Ut38qHEgiGbUjt5c6zi7acc882YRhpGeDy/nq2dxEy/xc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(346002)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(83380400001)(26005)(66574015)(2616005)(53546011)(38100700002)(8936002)(8676002)(478600001)(41300700001)(4001150100001)(5660300002)(2906002)(316002)(71200400001)(66946007)(66446008)(110136005)(64756008)(66476007)(66556008)(91956017)(966005)(6486002)(76116006)(6506007)(122000001)(36756003)(38070700009)(82960400001)(6512007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vlltc3V0WGU5ZFhDNXg4RElyVFcyY1dUQnVkY2ZiUldBUU9ETjhsWjJkM3dP?=
 =?utf-8?B?dW5tZ0JmbEh2L25jdjJPU1BqVmZUQUZFV1Q4UXFFZVlFZ216bkl1eTkzTmlj?=
 =?utf-8?B?NlViSEl5RFlKUytLMkI2M2NyMi9sVWFZOXU0Y0doTS9EbHhKSnFNT3dLd2Rr?=
 =?utf-8?B?VldkbXdqYzlNZVRKbEdVeDFJeVJodG9jNDBlUFJyNzJVOHZVYlpMbnpLY1VT?=
 =?utf-8?B?N0Z5RlRWNkprVTQzYk5PNVJOVmwvSTBFUGZHdXBWTS9udHlya0RBcE5EQVkz?=
 =?utf-8?B?bXVURGoxWEhqcmsrWkhlNEF3c2JaUVhsU1czMyt5MVZRd085WmNrR3RrRDlv?=
 =?utf-8?B?M1FLVUszZDF0RVQyck9LOTFhTVM4UDdWalM2TWVJc0pyZ1NOWmxmc24zdFRJ?=
 =?utf-8?B?UTFERWZOemgyMndGdDlQSFl6OFNERzdJbFJ6U3VSS3ZueXRRQ1diQ2RpQWlX?=
 =?utf-8?B?SkFUdnlPRElnWWVhcDhWbkNqVVkxRi9BNHB1RXBLZE5sZS95bnhJV2FxcWtp?=
 =?utf-8?B?MGJWRTBqejZPdU0yaGRCWnY0MEl2b3ZjZU1ncTVVcGNOTjYyL2ROVDZJdkNC?=
 =?utf-8?B?azhOVHM3NzBwTFhjNlJCNFFmM0lGL2YvdExjRVBlNktZenFTWjNEK29NaFN3?=
 =?utf-8?B?NXgrSlR2alhoMkpFYUZEZnBMMGIxU05nODV2RTI4Q2YwR21RckZhUVBrQm1W?=
 =?utf-8?B?L1lLNEpVVVdLd0VNeGc0NlNTR0RRejVOZzdIK1IrOVBTV05HdTIxbDl3ODJV?=
 =?utf-8?B?UE8rTkg1R3ducjcxLzZaM3l6Tmxta3AxRFh1a2ZleEZDdWl1aU14OXBvakNi?=
 =?utf-8?B?M3lIbUJRYTdicGwzVU9YQk1lVnpGUU01VlVXc00raDNSMi9kQmd0RStuaTY2?=
 =?utf-8?B?UHBra3d5UEc2WDdPL0tQZ1lCNjJEcWJGU3JMYWc5dFNqK0ZFb1RqQ2ZIQSs2?=
 =?utf-8?B?dS9nTTMzQzhMYmpzd0JhMG85RXBIdis5em4rVExjRjREcC9RSWpPRTNwVzVG?=
 =?utf-8?B?eUdtZGJyVTFoOXR2OFZBb21Eb3FkY3liYUFCdHFEMHdZM2c2N1ZSWlA5emUr?=
 =?utf-8?B?bWJ1aXowLyt4V1hLcWx5SVpTcFgrUStNUG9kZ1hURGtSUXpVMWp2VGlwbktP?=
 =?utf-8?B?ZzJOcDNnNnNIaVNaZHBHc2ZheHl0M1NTQ3RoUWk5QVNMcjlFYnJUUUJRSWZp?=
 =?utf-8?B?RW05MDJySEhaSldxbkFZZWxBdHlqbGo2NCtPbFZmMlVxbUc0WHVSL2ppc0xE?=
 =?utf-8?B?QjVJODAwcnJXczY4QmZ5Skxjc1J5OS8rYUpyWG1nZjk5Y3AzNUhiQ05hNFpM?=
 =?utf-8?B?YndMYnQ0UFo4bVdoZFl1a245ZVFJODMxbTBOdXlmajYzSjZwYWp1bnJGUkRD?=
 =?utf-8?B?S1J3emVKcEVpeVRjWld0dUZQREx0c3VwVkRNdHdvaUVnZWJuN0lDS0JIU1lJ?=
 =?utf-8?B?SkxmTkhUYWtxcDE2bkxDOUhHL1VPQUNMelEycHZPV0ZYSU0xK1RJYW02cDJD?=
 =?utf-8?B?QWNNQ2VlWVFTMC9zMnRQL2RhVlVCZTV1akFINGtVMTZZbjlLaGdQOUowN0NF?=
 =?utf-8?B?YWJIYmxMc1ptd3R2eUZzOU9NN05VOFk3NStVdEpVNHJTayt4Rk9XQjBGb0Nq?=
 =?utf-8?B?R2FjR2tvMXM1TFRkL0kxejVycjVjcHRjMDBnRnRMQXZrSENVTGlpVUtxWmFY?=
 =?utf-8?B?RTRBWUNTQzZHYVVGVWwzQmZ4aHJubUZ0MWVXM2JEdG9oKzB2VzZ0SkU5ZDFF?=
 =?utf-8?B?cFg2NU9WQ2czMGRXZWtETnpubVJrMjAxSWpwd2xGN2VMQ0wvZ0hpVDV5MVpK?=
 =?utf-8?B?ZjN3dnZ3dlZRUnltNm5iNVBzT1puUFpkMFpKS2V0K2tpQm1qUEI2Y2hrdWw5?=
 =?utf-8?B?MHEzVklyVjRvQmt2bXhaM3FtQzU0VUJPMjNrNVB6Qm1qa2NaOGNSMmU3WFJx?=
 =?utf-8?B?WnpZb2tvSjJ2aUN1VVZVWGNwVUNjSloxWm9BZEg0T08rQ1dGWEV0RkN3OTZC?=
 =?utf-8?B?dUFCNXpZbVFySExESUhkUEkveXhDK2wydXRZdSsrdWdsRC80UjRyaklpUnFJ?=
 =?utf-8?B?Z1pDcmxuRWkwWUV5clhYMEF6QllITmo1ektVYWJFSUJQNy9CSVVZK1FVci9O?=
 =?utf-8?B?eEFERElBZkMrZmVrczZpQzZqNzFOY3FyS2RzM21nc2U4ZlpUenVRZUhZQkZv?=
 =?utf-8?B?Y0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A085CF37220E944B8D9762C44212F3AB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 527bdc59-7d2f-4f81-d67b-08dbebf97d1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 07:54:58.1551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kdzINmngIpmMPz+h0gwhQAU4LQPqHwPALPoP724qqVJqMNCHIGVh9DsA3Kvl9PPge4GWiDwTo1w/HBIAWBSAXzOKprAGuQuge/iFF/Hz1iQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Do not check psr2 if
 psr/panel replay is not supported
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

T24gTW9uLCAyMDIzLTExLTIwIGF0IDE3OjE3ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBO
b3ZlbWJlciAyMCwgMjAyMyA2OjMyIFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+OyBNYW5uYSwgQW5pbWVzaA0KPiA+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiBT
dWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IERvIG5vdCBjaGVjayBwc3IyIGlmIHBz
ci9wYW5lbA0KPiA+IHJlcGxheSBpcw0KPiA+IG5vdCBzdXBwb3J0ZWQNCj4gPiANCj4gPiBEbyBu
b3QgY29udGludWUgdG8gcHNyMiBjaGVja3MgaWYgcHNyIG9yIHBhbmVsIHJlcGxheSBpcyBub3QN
Cj4gPiBzdXBwb3J0ZWQuDQo+ID4gDQo+ID4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KPiA+IA0KPiA+IEZpeGVzOiBiOGNmNWI1ZDI2NmUgKCJkcm0vaTkxNS9w
YW5lbHJlcGxheTogSW5pdGlhbGl6YXRvbiBhbmQNCj4gPiBjb21wdXRlDQo+ID4gY29uZmlnIGZv
ciBwYW5lbCByZXBsYXkiKQ0KPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85NjcwDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IA0KPiBMR1RNLiANCj4gUmV2aWV3
ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQpUaGFuayB5
b3UgQW5pbWVzaCBmb3IgeW91ciByZXZpZXcuIFRoaXMgaXMgbm93IHB1c2hlZCBpbnRvIGRybS1p
bnRlbC0NCm5leHQuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiAtLS0NCj4g
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0KPiA+
IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggOGQxODAxMzJhNzRi
Li45YWExYzI2OWNmZWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBAQCAtMTM3Myw2ICsxMzczLDkgQEAgdm9pZCBpbnRlbF9wc3JfY29t
cHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKg
wqDCoMKgwqBlbHNlDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0
YXRlLT5oYXNfcHNyID0gX3Bzcl9jb21wdXRlX2NvbmZpZyhpbnRlbF9kcCwNCj4gPiBjcnRjX3N0
YXRlKTsNCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIShjcnRjX3N0YXRlLT5oYXNfcGFu
ZWxfcmVwbGF5IHx8IGNydGNfc3RhdGUtPmhhc19wc3IpKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0
YXRlLT5oYXNfcHNyMiA9IGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKGludGVsX2RwLA0KPiA+IGNy
dGNfc3RhdGUpOw0KPiA+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT5pbmZvZnJh
bWVzLmVuYWJsZSB8PQ0KPiA+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShEUF9TRFBfVlND
KTsNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
