Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0075981139C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 14:52:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB8610E289;
	Wed, 13 Dec 2023 13:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5513910E2A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 13:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702475534; x=1734011534;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z/mNk2U9Eht4VGOnbaUzmcKHDrSGBFSaH/45N8YYr6E=;
 b=Uz3f8/W91MObe6lStnZuUOR90AFVT7Pe7LTX9kBRiOM1gARUzJbw4n+S
 MoYL6VyBlw+LwSPP9KrXB6bn8nZcQQmXK2NtLNjPkOeRKrWYyGcaKLpgC
 xe1/nSyOgzQIMXVOpxPwdukeuGI0WIsZ24l2HgErDnM2XAekZvEL0YL4b
 PXMTGwerTy5X0eEN1S2Oi56UbPQZtMf30tst1lXUbp05HiJyh5cc2YF3G
 ScNrvsixkKCwW6gelNX09bR5lv52igpz9E2bvS4rqG3NAGlxNFE8rfym1
 XhsBzyzyHQMMCCs68T3139o9Wdh8grQhvKl5MVXzaRtEGVDyGTlIUPogP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1821584"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; 
   d="scan'208";a="1821584"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 05:52:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1105322738"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="1105322738"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 05:52:13 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:52:13 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 05:52:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 05:52:13 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 05:52:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iem4pe5mb/GUBQo9EL9oRYStMtCsKaSsnLulTqdSmIOhz9S7WV005ks2u9ydFi8DAPqNfP5RYKshv/c2xa9VPYjl0052bLhzGBWwJCgXnc3uYyO1kvFjhYg8iGg8xpi7VK4lOgaRgOr4zY/hzIcu8F95jv3WYstelbKHuWA5IZ4YanMcBeCoXNHRw+YWbWADPXFqsIqjCRMetmPuSJInKVQPpRehDtjFZKI9wg92L5HINrzUQV7mim/EEBKGxHqIidcUQKbQc9CevV/sUvi4vOGp40aTwF+UOxAUvJoo1G5bK2Lbe+hxzYMJkYJ9LDKoMXjfkAAG08ehSq8gSV3AOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z/mNk2U9Eht4VGOnbaUzmcKHDrSGBFSaH/45N8YYr6E=;
 b=ZiFtsNwAdzKfXcHc2Uuh/r9PAXYm4RwDt/Wa5hL6n2PaBeIVX/xXbnF/boyxAQHGRgsjHAd79E2WYDtHUXI6LN8P1soIPw1USQOOg442CPnxnVYT7qshPLSbuJ5g6zioTLGUw+nbnwMC9dRQqyif4YXeQ5aT6lkHDzNHCpwggWnuB/6+nlPYnNKPw+M9MNfEBXBYjW5lUfUa7x5mJ/3wYW/yQBnnzqJc5ETTbIT9Klv89N32qNQg4Xub2u7HoZWsvTOrpVFv9cFKO08/ngpoo2iqPZwGpM6sZwqdh5DBtrt+QnjWvKfm7lUmssvjk0T9zf7ZCDACpbvzXFSIJfV2JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 CH0PR11MB5523.namprd11.prod.outlook.com (2603:10b6:610:d6::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.26; Wed, 13 Dec 2023 13:52:10 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::7213:e03b:116:4d21%4]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 13:52:10 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/mtl: Rename the link_bit_rate to clock in
 C20 pll_state
Thread-Topic: [PATCH 3/3] drm/i915/mtl: Rename the link_bit_rate to clock in
 C20 pll_state
Thread-Index: AQHaKVp5VmZoYILEm0acAqjeO68FJrCfSa8AgAB9aICAB3z+YA==
Date: Wed, 13 Dec 2023 13:52:10 +0000
Message-ID: <DM8PR11MB5655CA3BEA955CD5224B8529E08DA@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20231207221025.2032207-1-radhakrishna.sripada@intel.com>
 <20231207221025.2032207-4-radhakrishna.sripada@intel.com>
 <MW4PR11MB7054567FED86F41FB9E67692EF8AA@MW4PR11MB7054.namprd11.prod.outlook.com>
 <DM4PR11MB5971B1F3E819D01AFBAB15ED878AA@DM4PR11MB5971.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB5971B1F3E819D01AFBAB15ED878AA@DM4PR11MB5971.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|CH0PR11MB5523:EE_
x-ms-office365-filtering-correlation-id: 4c374aa4-0e95-4c29-e234-08dbfbe2b3de
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ciXmKLVh/Ps5LuqQlBK73wzwilOMq7n+ppGixmNGGBy0gyj6Njnx6gPXtnjTM+c3KDUs/ls8Q51/JrFimf4AW1FR9dEyizfNZZysq0n3eVkY/y0rEAJNTZPhSG/xacvSUxlyFNhY0gLWqBfyL0bNo3J0mAYpVxzXfLQWDq/TfxGD4djp9nb3DTGYV7adcFl1M1/J27qiW63sEgtDNBcJC/98ADDIJbkq7IorUEJh8TFgDLHH/OMHmi3RbiatYSuw6O607zQ3VHBqF5DsoLBXeBAH27k4TTrlFDhUR9a7w/2GjbHnA1gdQq7fuH79M702dDziZeTiCE6rRwypEaaqDHUBQu17B6S3OXBx6bmKK+acpCRRi6ubEb03ULawG8P5vB/zFc++hQUhXwXKSiWU4hHVh3vvxye8L2EzULsVV6c05xIoYEDeuq4Ora2HJboZgnACdz0W42tCuBWiylmECM+zNVGVCe/5A7Ct57xeTuFpp6BHSfrcYvcuDfg4gc+lCWJC6p+IQEOLSMYZlzN4poQPn9sxZMq94Bnasn3QYQ7Tw17vziA+k1oTiVz+DLIXfFYUADyYj4+D4o+Vpn2t9Rv74RaiMH1k8k+hI1uNn3fMJEkkXG0jhf2nlZi1C9ZW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(39860400002)(396003)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(38070700009)(55016003)(66556008)(110136005)(76116006)(66946007)(66476007)(38100700002)(82960400001)(122000001)(33656002)(66446008)(86362001)(26005)(83380400001)(6506007)(9686003)(7696005)(53546011)(2906002)(6636002)(316002)(64756008)(478600001)(71200400001)(5660300002)(8936002)(8676002)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnllcVg0Y3pHTE5BTmFWRm9hVDNXcnkxMlVHZDNpTkxNVW54Zis4a25QYmJP?=
 =?utf-8?B?ck9CTkdQNnY3NGxLa1MyK3lYYm44dmVaZjR1K2l3YUNLd0pUZG0rbzR5dE9Q?=
 =?utf-8?B?dWVyRmNuTGNEeitnK21mWStnRjB1TGRaaFBwYTJkN0lhMFU5L0ozMkZYNXF5?=
 =?utf-8?B?YlovMUQ0d0s5RnZoRnRzK1U1UWNRZWZGbDZSdlc2V0p1TmI1ZXY1OHF1MEU4?=
 =?utf-8?B?T3dsUWo4amhzNTRORjJnV0orUit3MHdGcVFNUU42endUY2RKdHU4SCtiVlpQ?=
 =?utf-8?B?QmpvZnVMaXJ3Q0NkMFlLYTg0YUs2Z1h3dHpkWDJDL3hRaFZQbzJVakFwaGJ2?=
 =?utf-8?B?OWNhMFhyVzZVQ2RwWDdLOEZET2tBRmNYOUt6djRQcXZsVkVYQmtUb09QbXRa?=
 =?utf-8?B?UXFINXpqanBzRlBlS2twYkhuY29LRWRCeGYzaldGT1RualplZGg4TzdVUHBy?=
 =?utf-8?B?elpwYjVJbXIvN3ROcDdsNlc0R09wSThUdVJBSjlFUkFtODFab1BiU1JjVkht?=
 =?utf-8?B?Yjd1SE1WdTlxVWpMdmRNalA1VnVYOU10VmR1YkUxSGhBV1lrWlJLZ3J4VTlI?=
 =?utf-8?B?UWxBdDhoY1c4WmxCcEhQUG53L2tUNDJkcUNJUEFmaStZaWNJWXBBa2ZaUnJh?=
 =?utf-8?B?OWJaUFZSbjM2L2VxMlBmOFNhL3dSZ01FMUtPOUsrczNmYWJVYlpGbTRaQmM2?=
 =?utf-8?B?QUtMVXkxR2RoQlNUaUxlK0dmekN3VW80bDJVTGVxVkswa1B5dlJlZjhtb3hR?=
 =?utf-8?B?OFkzWGNFYVRLQXdWZU04ei9OaTA3NEV1SldOOHI3SHYrNjNyL2NuQjg5R3Bi?=
 =?utf-8?B?TkJoWWYvZ2w5TE1YK2xDRXRKQWU5Z0xJNVZSdWdZQnc1WGU4d3lnd2lVbzZE?=
 =?utf-8?B?b253MXFBdVFpU3pVVGgwcG5FWnZmUVdOVXdJVjlqMmNjQXZjM1hYOElIRURp?=
 =?utf-8?B?UmVaZkEwcWV1RXl1cG5ZVWU0bkhLcnlWVDZjUEZSMnVKVzZmV2tiR1BQTEFT?=
 =?utf-8?B?Q21RTEZMdjErSTd0WjhObHd2bXE0ZnVYOSt0RXdjTFYzQUdhR05TdFhEVmlJ?=
 =?utf-8?B?V1dpNGoxdEEwam50Q2NIQm1jU2NjaEdZTWNuYys0WWNJWWJoRDlIS0ZLc3M1?=
 =?utf-8?B?MVRXNlp1aXdGS1RCYm41SXJWRG5hZlFzZm5zeWY1eVFjUVRaUU1hdlJlWGg2?=
 =?utf-8?B?K2dzNGQvdlJoQ2JNYVprYXR6bm5JalFVOERGWXQ3QWhneitoV0xxR01ucDZm?=
 =?utf-8?B?UFF6OVVxNHFjdHhMeTZSeS83dytZNE9WUElZSlRXUHhRaE5CbTVTUTQzZW9x?=
 =?utf-8?B?Z01NVmZiT0FManpYMGF4aTJQZmhpWFh1cWtWcVVDd0UzZ2JJSURkOXlnRXF0?=
 =?utf-8?B?L3drbUJQTGR5enNNNVpuVkJSUlZaUFdRR0RKMk04VHNjc3FiNFhiaHpUVnVq?=
 =?utf-8?B?MlYyYytNa092WXUyUlU1WFpxQ3h1Y1dYR0NsYWRTWXJWdVJRQjlXbmw5QWp4?=
 =?utf-8?B?bWZPdERUOXNKYmxCNVFvZWRGcDVaUlFUdlRkVmpMZlRlMk5DSm9jL1NRdUZB?=
 =?utf-8?B?RWhRcHZUV3dVc0ZZZUV1dEhNL04yT1NReHhQYTgxSi9aUUhDTDNUU3hmYzhl?=
 =?utf-8?B?UldvZ1F0VGhjUGdzRUdweXdOUG5ZOWVFSlA3SEJsaTVKVDIwS3lKNUhtSUVY?=
 =?utf-8?B?V0VLOWNUbTlDN01MTzBSbEROd2YwQVlrMW4xbkcxQS9nVUJLcWU2SGg3U1Iy?=
 =?utf-8?B?UVZhT3JwV1UvQXBOQ0dDVTFDNjU3azhEWnlUVDlWMEdsZFYrZTNidUJoVjNa?=
 =?utf-8?B?Z3BGc21YR1ZUK2t2TGE0aFdaWnk3aWpPR3Vlazk0SFpSbDBxM0FnOHJUOGNt?=
 =?utf-8?B?VnNLS2wrcWRXMG9FR2s3a0s1ajAxNWdyeXlUYzd5bjQzK1ArZktCUjFQTU9n?=
 =?utf-8?B?NXU5YmJHQnl5cTBXMElmNTF6WmcyaHZudGwzV1dFd21jNXNBQ1lwMDJpanJn?=
 =?utf-8?B?bEtaNjZLTHl2dGFvVE95OE9RNEZlSUdlRDNoZkNrYmxVdW0yNWplTHJCS2tv?=
 =?utf-8?B?UTIwV1hNT29jK2J0dm44czRZbkhtakU4cWRiUHpGL010QytqQ2p6OHpvc3dT?=
 =?utf-8?Q?bknD9cAhL/ELVK3VZD0q8xxrK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c374aa4-0e95-4c29-e234-08dbfbe2b3de
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 13:52:10.1805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i7GwfAZr++a2yRsI0WUenHeyNF8I1vLsnpvIA/j4+CTtqdaMl4Od/3iTzVzTDVZoYk/3D3xRusUhEM9YJb91ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5523
X-OriginatorOrg: intel.com
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

SGkuIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFNyaXBh
ZGEsDQo+IFJhZGhha3Jpc2huYQ0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDgsIDIwMjMgOToz
MCBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggMy8zXSBkcm0v
aTkxNS9tdGw6IFJlbmFtZSB0aGUgbGlua19iaXRfcmF0ZSB0byBjbG9jayBpbiBDMjANCj4gcGxs
X3N0YXRlDQo+IA0KPiBUaGFuayB5b3UgZm9yIHRoZSByZXZpZXcuIFdpdGggY2xlYW4gQ0kgcHVz
aGVkIHRoZSBwYXRjaGVzIHVwc3RyZWFtLg0KSXQgc2VlbXMgdGhlc2UgcGF0Y2hlcyBhcmUgY2F1
c2luZyBzb21lIGlzc3VlcyBvbiBjZXJ0YWluIE1UTCBzeXN0ZW0gYW5kIG5lZWQgdG8gYmUgcmUt
dGhvdWdodD8gDQpNaWthLCBJbXJlPyANCg0KU2hvdWxkIHdlIHJldmVydCBvciBmaXg/IA0KDQo+
IA0KPiBSZWdhcmRzLA0KPiBSYWRoYWtyaXNobmEgU3JpcGFkYQ0KPiANCj4gPiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiA+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgOCwgMjAyMyA0OjAxIEFNDQo+ID4g
VG86IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBUYXlsb3Is
IENsaW50b24gQSA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogUkU6
IFtQQVRDSCAzLzNdIGRybS9pOTE1L210bDogUmVuYW1lIHRoZSBsaW5rX2JpdF9yYXRlIHRvDQo+
ID4gY2xvY2sgaW4gQzIwIHBsbF9zdGF0ZQ0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiA+ID4gRnJvbTogU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEu
c3JpcGFkYUBpbnRlbC5jb20+DQo+ID4gPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDgsIDIwMjMg
MTI6MTAgQU0NCj4gPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
PiBDYzogU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5j
b20+OyBUYXlsb3IsDQo+ID4gPiBDbGludG9uIEENCj4gPiA8Y2xpbnRvbi5hLnRheWxvckBpbnRl
bC5jb20+OyBLYWhvbGEsIE1pa2ENCj4gPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
PiBTdWJqZWN0OiBbUEFUQ0ggMy8zXSBkcm0vaTkxNS9tdGw6IFJlbmFtZSB0aGUgbGlua19iaXRf
cmF0ZSB0byBjbG9jaw0KPiA+ID4gaW4gQzIwDQo+ID4gcGxsX3N0YXRlDQo+ID4gPg0KPiA+ID4g
V2l0aCB0aGUgY2xlYW51cCBvZiB0aGUgbWlzbGVhZGluZyBjbG9jayB2YWx1ZSB0byBhdm9pZCBl
eHRyYQ0KPiA+ID4gY2FsY3VsYXRpb25zIHRvDQo+ID4gY29udmVydCBiZXR3ZWVuIGxpbmtfYml0
X3JhdGUgYW5kIGNsb2NrLCB1c2Ugb25lDQo+ID4gPiBzdGFuZGFyZCAiY2xvY2siIGZpZWxkIGZv
ciB0aGUgYzIwIHBsbCB3aGljaCB3b3JrcyB3aXRoDQo+ID4gPiBjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrDQo+ID4gZmllbGQuDQo+ID4gPg0KPiA+ID4gQ2M6IENsaW50IFRheWxvciA8Y2xpbnRvbi5h
LnRheWxvckBpbnRlbC5jb20+DQo+ID4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPg0KPiA+IFJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFk
YSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgIHwgNDIgKysrKysrKysr
LS0tLS0tLS0tLQ0KPiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaCAgICB8ICAyICstDQo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCsp
LCAyMiBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiBpbmRleCBkNTE4YjU1ZDUxNTAuLjRl
NmVhNzFmZjYyOSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gQEAgLTc0NSw3ICs3NDUsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2MxMHBsbF9zdGF0ZSAqIGNvbnN0DQo+ID4gbXRsX2MxMF9lZHBfdGFi
bGVzW10gPSB7DQo+ID4gPg0KPiA+ID4gIC8qIEMyMCBiYXNpYyBEUCAxLjQgdGFibGVzICovDQo+
ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9kcF9y
YnIgPSB7DQo+ID4gPiAtCS5saW5rX2JpdF9yYXRlID0gMTYyMDAwLA0KPiA+ID4gKwkuY2xvY2sg
PSAxNjIwMDAsDQo+ID4gPiAgCS50eCA9IHsJMHhiZTg4LCAvKiB0eCBjZmcwICovDQo+ID4gPiAg
CQkweDU4MDAsIC8qIHR4IGNmZzEgKi8NCj4gPiA+ICAJCTB4MDAwMCwgLyogdHggY2ZnMiAqLw0K
PiA+ID4gQEAgLTc3MCw3ICs3NzAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBs
bF9zdGF0ZQ0KPiA+ID4gbXRsX2MyMF9kcF9yYnIgPQ0KPiA+IHsgIH07DQo+ID4gPg0KPiA+ID4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfZHBfaGJyMSA9
IHsNCj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSAyNzAwMDAsDQo+ID4gPiArCS5jbG9jayA9IDI3
MDAwMCwNCj4gPiA+ICAJLnR4ID0gewkweGJlODgsIC8qIHR4IGNmZzAgKi8NCj4gPiA+ICAJCTB4
NDgwMCwgLyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+ID4g
PiBAQCAtNzk1LDcgKzc5NSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0
YXRlDQo+ID4gPiBtdGxfYzIwX2RwX2hicjENCj4gPiA9IHsgIH07DQo+ID4gPg0KPiA+ID4gIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfZHBfaGJyMiA9IHsN
Cj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSA1NDAwMDAsDQo+ID4gPiArCS5jbG9jayA9IDU0MDAw
MCwNCj4gPiA+ICAJLnR4ID0gewkweGJlODgsIC8qIHR4IGNmZzAgKi8NCj4gPiA+ICAJCTB4NDgw
MCwgLyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+ID4gPiBA
QCAtODIwLDcgKzgyMCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRl
DQo+ID4gPiBtdGxfYzIwX2RwX2hicjINCj4gPiA9IHsgIH07DQo+ID4gPg0KPiA+ID4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9jMjBfZHBfaGJyMyA9IHsNCj4g
PiA+IC0JLmxpbmtfYml0X3JhdGUgPSA4MTAwMDAsDQo+ID4gPiArCS5jbG9jayA9IDgxMDAwMCwN
Cj4gPiA+ICAJLnR4ID0gewkweGJlODgsIC8qIHR4IGNmZzAgKi8NCj4gPiA+ICAJCTB4NDgwMCwg
LyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+ID4gPiBAQCAt
ODQ2LDcgKzg0Niw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlDQo+
ID4gPiBtdGxfYzIwX2RwX2hicjMNCj4gPiA9IHsNCj4gPiA+DQo+ID4gPiAgLyogQzIwIGJhc2lj
IERQIDIuMCB0YWJsZXMgKi8NCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBs
bF9zdGF0ZSBtdGxfYzIwX2RwX3VoYnIxMCA9IHsNCj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSAx
MDAwMDAwLCAvKiAxMCBHYnBzICovDQo+ID4gPiArCS5jbG9jayA9IDEwMDAwMDAsIC8qIDEwIEdi
cHMgKi8NCj4gPiA+ICAJLnR4ID0gewkweGJlMjEsIC8qIHR4IGNmZzAgKi8NCj4gPiA+ICAJCTB4
NDgwMCwgLyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+ID4g
PiBAQCAtODcwLDcgKzg3MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0
YXRlDQo+ID4gbXRsX2MyMF9kcF91aGJyMTAgPSB7ICB9Ow0KPiA+ID4NCj4gPiA+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2RwX3VoYnIxM181ID0gew0K
PiA+ID4gLQkubGlua19iaXRfcmF0ZSA9IDEzNTAwMDAsIC8qIDEzLjUgR2JwcyAqLw0KPiA+ID4g
KwkuY2xvY2sgPSAxMzUwMDAwLCAvKiAxMy41IEdicHMgKi8NCj4gPiA+ICAJLnR4ID0gewkweGJl
YTAsIC8qIHR4IGNmZzAgKi8NCj4gPiA+ICAJCTB4NDgwMCwgLyogdHggY2ZnMSAqLw0KPiA+ID4g
IAkJMHgwMDAwLCAvKiB0eCBjZmcyICovDQo+ID4gPiBAQCAtODk1LDcgKzg5NSw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlDQo+ID4gbXRsX2MyMF9kcF91aGJyMTNf
NSA9IHsgIH07DQo+ID4gPg0KPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxs
X3N0YXRlIG10bF9jMjBfZHBfdWhicjIwID0gew0KPiA+ID4gLQkubGlua19iaXRfcmF0ZSA9IDIw
MDAwMDAsIC8qIDIwIEdicHMgKi8NCj4gPiA+ICsJLmNsb2NrID0gMjAwMDAwMCwgLyogMjAgR2Jw
cyAqLw0KPiA+ID4gIAkudHggPSB7CTB4YmUyMCwgLyogdHggY2ZnMCAqLw0KPiA+ID4gIAkJMHg0
ODAwLCAvKiB0eCBjZmcxICovDQo+ID4gPiAgCQkweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gPiA+
IEBAIC0xNTE0LDcgKzE1MTQsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MxMHBsbF9z
dGF0ZSAqIGNvbnN0DQo+ID4gbXRsX2MxMF9oZG1pX3RhYmxlc1tdID0geyAgfTsNCj4gPiA+DQo+
ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9oZG1p
XzI1XzE3NSA9IHsNCj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSAyNTE3NSwNCj4gPiA+ICsJLmNs
b2NrID0gMjUxNzUsDQo+ID4gPiAgCS50eCA9IHsgIDB4YmU4OCwgLyogdHggY2ZnMCAqLw0KPiA+
ID4gIAkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gPiA+ICAJCSAgMHgwMDAwLCAvKiB0eCBj
ZmcyICovDQo+ID4gPiBAQCAtMTUzOSw3ICsxNTM5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9jMjBwbGxfc3RhdGUNCj4gPiBtdGxfYzIwX2hkbWlfMjVfMTc1ID0geyAgfTsNCj4gPiA+
DQo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9o
ZG1pXzI3XzAgPSB7DQo+ID4gPiAtCS5saW5rX2JpdF9yYXRlID0gMjcwMDAsDQo+ID4gPiArCS5j
bG9jayA9IDI3MDAwLA0KPiA+ID4gIAkudHggPSB7ICAweGJlODgsIC8qIHR4IGNmZzAgKi8NCj4g
PiA+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcxICovDQo+ID4gPiAgCQkgIDB4MDAwMCwgLyogdHgg
Y2ZnMiAqLw0KPiA+ID4gQEAgLTE1NjQsNyArMTU2NCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfYzIwcGxsX3N0YXRlDQo+ID4gbXRsX2MyMF9oZG1pXzI3XzAgPSB7ICB9Ow0KPiA+ID4N
Cj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIwX2hk
bWlfNzRfMjUgPSB7DQo+ID4gPiAtCS5saW5rX2JpdF9yYXRlID0gNzQyNTAsDQo+ID4gPiArCS5j
bG9jayA9IDc0MjUwLA0KPiA+ID4gIAkudHggPSB7ICAweGJlODgsIC8qIHR4IGNmZzAgKi8NCj4g
PiA+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcxICovDQo+ID4gPiAgCQkgIDB4MDAwMCwgLyogdHgg
Y2ZnMiAqLw0KPiA+ID4gQEAgLTE1ODksNyArMTU4OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aW50ZWxfYzIwcGxsX3N0YXRlDQo+ID4gbXRsX2MyMF9oZG1pXzc0XzI1ID0geyAgfTsNCj4gPiA+
DQo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2MyMF9o
ZG1pXzE0OF81ID0gew0KPiA+ID4gLQkubGlua19iaXRfcmF0ZSA9IDE0ODUwMCwNCj4gPiA+ICsJ
LmNsb2NrID0gMTQ4NTAwLA0KPiA+ID4gIAkudHggPSB7ICAweGJlODgsIC8qIHR4IGNmZzAgKi8N
Cj4gPiA+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcxICovDQo+ID4gPiAgCQkgIDB4MDAwMCwgLyog
dHggY2ZnMiAqLw0KPiA+ID4gQEAgLTE2MTQsNyArMTYxNCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfYzIwcGxsX3N0YXRlDQo+ID4gbXRsX2MyMF9oZG1pXzE0OF81ID0geyAgfTsNCj4g
PiA+DQo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2My
MF9oZG1pXzU5NCA9IHsNCj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSA1OTQwMDAsDQo+ID4gPiAr
CS5jbG9jayA9IDU5NDAwMCwNCj4gPiA+ICAJLnR4ID0geyAgMHhiZTg4LCAvKiB0eCBjZmcwICov
DQo+ID4gPiAgCQkgIDB4OTgwMCwgLyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJICAweDAwMDAsIC8q
IHR4IGNmZzIgKi8NCj4gPiA+IEBAIC0xNjM5LDcgKzE2MzksNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2MyMHBsbF9zdGF0ZQ0KPiA+IG10bF9jMjBfaGRtaV81OTQgPSB7ICB9Ow0KPiA+
ID4NCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxfYzIw
X2hkbWlfMzAwID0gew0KPiA+ID4gLQkubGlua19iaXRfcmF0ZSA9IDMwMDAwMDAsDQo+ID4gPiAr
CS5jbG9jayA9IDMwMDAwMDAsDQo+ID4gPiAgCS50eCA9IHsgIDB4YmU5OCwgLyogdHggY2ZnMCAq
Lw0KPiA+ID4gIAkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gPiA+ICAJCSAgMHgwMDAwLCAv
KiB0eCBjZmcyICovDQo+ID4gPiBAQCAtMTY2NCw3ICsxNjY0LDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUNCj4gPiBtdGxfYzIwX2hkbWlfMzAwID0geyAgfTsNCj4g
PiA+DQo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgbXRsX2My
MF9oZG1pXzYwMCA9IHsNCj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSA2MDAwMDAwLA0KPiA+ID4g
KwkuY2xvY2sgPSA2MDAwMDAwLA0KPiA+ID4gIAkudHggPSB7ICAweGJlOTgsIC8qIHR4IGNmZzAg
Ki8NCj4gPiA+ICAJCSAgMHg5ODAwLCAvKiB0eCBjZmcxICovDQo+ID4gPiAgCQkgIDB4MDAwMCwg
LyogdHggY2ZnMiAqLw0KPiA+ID4gQEAgLTE2ODksNyArMTY4OSw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlDQo+ID4gbXRsX2MyMF9oZG1pXzYwMCA9IHsgIH07DQo+
ID4gPg0KPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRlIG10bF9j
MjBfaGRtaV84MDAgPSB7DQo+ID4gPiAtCS5saW5rX2JpdF9yYXRlID0gODAwMDAwMCwNCj4gPiA+
ICsJLmNsb2NrID0gODAwMDAwMCwNCj4gPiA+ICAJLnR4ID0geyAgMHhiZTk4LCAvKiB0eCBjZmcw
ICovDQo+ID4gPiAgCQkgIDB4OTgwMCwgLyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJICAweDAwMDAs
IC8qIHR4IGNmZzIgKi8NCj4gPiA+IEBAIC0xNzE0LDcgKzE3MTQsNyBAQCBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZQ0KPiA+IG10bF9jMjBfaGRtaV84MDAgPSB7ICB9Ow0K
PiA+ID4NCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0ZSBtdGxf
YzIwX2hkbWlfMTAwMCA9IHsNCj4gPiA+IC0JLmxpbmtfYml0X3JhdGUgPSAxMDAwMDAwMCwNCj4g
PiA+ICsJLmNsb2NrID0gMTAwMDAwMDAsDQo+ID4gPiAgCS50eCA9IHsgIDB4YmU5OCwgLyogdHgg
Y2ZnMCAqLw0KPiA+ID4gIAkJICAweDk4MDAsIC8qIHR4IGNmZzEgKi8NCj4gPiA+ICAJCSAgMHgw
MDAwLCAvKiB0eCBjZmcyICovDQo+ID4gPiBAQCAtMTczOSw3ICsxNzM5LDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUNCj4gPiBtdGxfYzIwX2hkbWlfMTAwMCA9IHsg
IH07DQo+ID4gPg0KPiA+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfYzIwcGxsX3N0YXRl
IG10bF9jMjBfaGRtaV8xMjAwID0gew0KPiA+ID4gLQkubGlua19iaXRfcmF0ZSA9IDEyMDAwMDAw
LA0KPiA+ID4gKwkuY2xvY2sgPSAxMjAwMDAwMCwNCj4gPiA+ICAJLnR4ID0geyAgMHhiZTk4LCAv
KiB0eCBjZmcwICovDQo+ID4gPiAgCQkgIDB4OTgwMCwgLyogdHggY2ZnMSAqLw0KPiA+ID4gIAkJ
ICAweDAwMDAsIC8qIHR4IGNmZzIgKi8NCj4gPiA+IEBAIC0xOTg4LDcgKzE5ODgsNyBAQCBzdGF0
aWMgaW50IGludGVsX2MyMF9jb21wdXRlX2hkbWlfdG1kc19wbGwodTY0DQo+ID4gcGl4ZWxfY2xv
Y2ssIHN0cnVjdCBpbnRlbF9jMjBwbGxfDQo+ID4gPiAgCWVsc2UNCj4gPiA+ICAJCW1wbGxiX2Fu
YV9mcmVxX3ZjbyA9IE1QTExCX0FOQV9GUkVRX1ZDT18wOw0KPiA+ID4NCj4gPiA+IC0JcGxsX3N0
YXRlLT5saW5rX2JpdF9yYXRlCT0gcGl4ZWxfY2xvY2s7DQo+ID4gPiArCXBsbF9zdGF0ZS0+Y2xv
Y2sJPSBwaXhlbF9jbG9jazsNCj4gPiA+ICAJcGxsX3N0YXRlLT50eFswXQk9IDB4YmU4ODsNCj4g
PiA+ICAJcGxsX3N0YXRlLT50eFsxXQk9IDB4OTgwMDsNCj4gPiA+ICAJcGxsX3N0YXRlLT50eFsy
XQk9IDB4MDAwMDsNCj4gPiA+IEBAIC0yMDI0LDcgKzIwMjQsNyBAQCBzdGF0aWMgaW50DQo+ID4g
PiBpbnRlbF9jMjBfcGh5X2NoZWNrX2hkbWlfbGlua19yYXRlKGludA0KPiA+IGNsb2NrKQ0KPiA+
ID4gIAlpbnQgaTsNCj4gPiA+DQo+ID4gPiAgCWZvciAoaSA9IDA7IHRhYmxlc1tpXTsgaSsrKSB7
DQo+ID4gPiAtCQlpZiAoY2xvY2sgPT0gdGFibGVzW2ldLT5saW5rX2JpdF9yYXRlKQ0KPiA+ID4g
KwkJaWYgKGNsb2NrID09IHRhYmxlc1tpXS0+Y2xvY2spDQo+ID4gPiAgCQkJcmV0dXJuIE1PREVf
T0s7DQo+ID4gPiAgCX0NCj4gPiA+DQo+ID4gPiBAQCAtMjA3Niw3ICsyMDc2LDcgQEAgc3RhdGlj
IGludCBpbnRlbF9jMjBwbGxfY2FsY19zdGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLA0KPiA+ID4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gPg0KPiA+ID4gIAlm
b3IgKGkgPSAwOyB0YWJsZXNbaV07IGkrKykgew0KPiA+ID4gLQkJaWYgKGNydGNfc3RhdGUtPnBv
cnRfY2xvY2sgPT0gdGFibGVzW2ldLT5saW5rX2JpdF9yYXRlKSB7DQo+ID4gPiArCQlpZiAoY3J0
Y19zdGF0ZS0+cG9ydF9jbG9jayA9PSB0YWJsZXNbaV0tPmNsb2NrKSB7DQo+ID4gPiAgCQkJY3J0
Y19zdGF0ZS0+Y3gwcGxsX3N0YXRlLmMyMCA9ICp0YWJsZXNbaV07DQo+ID4gPiAgCQkJcmV0dXJu
IDA7DQo+ID4gPiAgCQl9DQo+ID4gPiBAQCAtMjE3NCw3ICsyMTc0LDcgQEAgdm9pZCBpbnRlbF9j
MjBwbGxfZHVtcF9od19zdGF0ZShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiA+ID4gIAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiY21uWzBdID0gMHglLjR4LCBjbW5bMV0g
PSAweCUuNHgsIGNtblsyXQ0KPiA+ID0gMHglLjR4LCBjbW5bM10gPSAweCUuNHhcbiIsDQo+ID4g
PiAgCQkgICAgaHdfc3RhdGUtPmNtblswXSwgaHdfc3RhdGUtPmNtblsxXSwgaHdfc3RhdGUtPmNt
blsyXSwNCj4gPiBod19zdGF0ZS0+Y21uWzNdKTsNCj4gPiA+DQo+ID4gPiAtCWlmIChpbnRlbF9j
MjBfdXNlX21wbGxhKGh3X3N0YXRlLT5saW5rX2JpdF9yYXRlKSkgew0KPiA+ID4gKwlpZiAoaW50
ZWxfYzIwX3VzZV9tcGxsYShod19zdGF0ZS0+Y2xvY2spKSB7DQo+ID4gPiAgCQlmb3IgKGkgPSAw
OyBpIDwgQVJSQVlfU0laRShod19zdGF0ZS0+bXBsbGEpOyBpKyspDQo+ID4gPiAgCQkJZHJtX2Ri
Z19rbXMoJmk5MTUtPmRybSwgIm1wbGxhWyVkXSA9IDB4JS40eFxuIiwgaSwNCj4gPiBod19zdGF0
ZS0+bXBsbGFbaV0pOw0KPiA+ID4gIAl9IGVsc2Ugew0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gaW5k
ZXggNmIzNDhkMzI5OTU3Li4yNjE2YmI2MjY3YTEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiA+
IEBAIC0xMDIyLDcgKzEwMjIsNyBAQCBzdHJ1Y3QgaW50ZWxfYzEwcGxsX3N0YXRlIHsgIH07DQo+
ID4gPg0KPiA+ID4gIHN0cnVjdCBpbnRlbF9jMjBwbGxfc3RhdGUgew0KPiA+ID4gLQl1MzIgbGlu
a19iaXRfcmF0ZTsgLyogaW4ga0h6ICovDQo+ID4gPiArCXUzMiBjbG9jazsgLyogaW4ga0h6ICov
DQo+ID4gPiAgCXUxNiB0eFszXTsNCj4gPiA+ICAJdTE2IGNtbls0XTsNCj4gPiA+ICAJdW5pb24g
ew0KPiA+ID4gLS0NCj4gPiA+IDIuMzQuMQ0KDQo=
