Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D000B6A6EE3
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 15:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88BA10E18B;
	Wed,  1 Mar 2023 14:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C5E10E18B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 14:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677682560; x=1709218560;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TtIXUbB8Tp5lSUvVGz0OEvduRlcN/TkPh3sD9AXLLjA=;
 b=kedZaVAT5L/ZORTYeb+Ny4zvUlaiadV+mdCkbh/KIya8qgmBI7ilxjUj
 jXmaLzqLyu//N6jQXnMcOD+oLnHnGwSjfHrpNlzTjQIuFqX9IAYuqTRz1
 rDEUE32q1yH8OAeJmyQts5U9vLqc3m4jY/dO6ZM85pTPfINfBQRPbvbcK
 15/YUqvibV8WKNDFUUBP9pcVeWD53H20TbDtwtVtvFpvaXB+8DUHtZZg3
 ZOJVWC24uNItgOHiWb1LCDzoxcEsTe4EAF6hl6P/6NKWJjDOivOsVju6a
 /i/S7d6PWzHiT4jbfst2zE4P2h2AdHEKq+xhD7UmyQG8S5YrcXd+fkKQe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="396994803"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="396994803"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 06:56:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="848674171"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="848674171"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 01 Mar 2023 06:56:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 1 Mar 2023 06:55:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 1 Mar 2023 06:55:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Mar 2023 06:55:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EJUtuBJv0c9XtUewpXkVOTLajVijIlt6Jzbaa0UjqBPlrVvPeWnRXGzwQTy2xrNjrsHtUu6sEk13PHJydYpREyfhkZJSv8hjC9+xthR/2L5Mlu4Y8gqJI+7XkVcUHGaRoCNdQnmsGbrQm6A6XRMPg2cn/2BwagJ19NAh6+LbHVcgYlmsYojq8V+/S34hQA6MrcnMjk0RhnFxHu9AXCxbBtWZQ8f6vnE0SoQcdW8BxARnJSLhXBPTdxg6pXCcBhsetZGqtFFMZtWixVZ3QJTPEkfl75pT5v6vj9TZRZgSG7k/JDoXJTjj48FPRbPB/0ityfFDyH9vDA/dzQva2J9m8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TtIXUbB8Tp5lSUvVGz0OEvduRlcN/TkPh3sD9AXLLjA=;
 b=I5o0OXSLWzCw7uJ3SQHZEAHqbV/f4RVaDpuqTlIFE6dlK66QoQhbLgab3/1cAIvSYOZO08YV1vA+sjwcIvZoqo7DWIOgz9wrk47SHocuq7HDrImNfwB05khZ4gZvmRTTB2vg1GwhQ2eK2Q8nxwq1+y/rNf00wQ9pHIsokIJZHbyIBkh8EurUD847apowWcoi1QYsZaVHRu84kawy0JptVXKWu7AJvHYknjJfrEMk0aW43HN82JnuNiDVlIkhnMQnCzCVmHl1ZhfHeJzGxqaYtVb+WM0fPBZOBlk3A9ObVniLoY8uHqqVU5LpjRqDZOpqJuF76zAqsIwT8a7KQViFKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV2PR11MB5976.namprd11.prod.outlook.com (2603:10b6:408:17c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Wed, 1 Mar
 2023 14:55:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%6]) with mapi id 15.20.6134.030; Wed, 1 Mar 2023
 14:55:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from
 VBT
Thread-Index: AQHZRUsRHx0iwS9bSUaUr2PdZ3x45q7mET6A
Date: Wed, 1 Mar 2023 14:55:52 +0000
Message-ID: <be14b11efdafb5ae249d81e318d5d81d1d403a8e.camel@intel.com>
References: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230220164718.23117-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV2PR11MB5976:EE_
x-ms-office365-filtering-correlation-id: 23a465ea-3050-4c13-a729-08db1a650d87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sTb4KGz0AANNlrB3UNAJOQd08Wl0oACqOQCUzTA7xZTBfPdVOvJ/c7RKSMer35hvB9x1XpMPGVF02oQdHNgIsSzPSfTvPk0uzg31TsrNC6s4aK73J3pjpb/onZhWmLQGcTCLtIf704pG5Zeg7zFwKNTyC5mGx2h36DiEIpPeeJXiatxHr9ExqossXYljrJ4aQk9o0ya+Ywksrc6OjK2p6GUNn+XFFDvkuMwh2ncnATQupKdUqddcH6eVQI1Esr0ZmHXiKT5DZhbdOaoUfQvGCofY492ptm1Z6DFOorpXbSBsspnctRINyTjW3eG9btx+GX+CeALXteCLnJ/TWfOjpd/k85Pa7T1iG/KM4L0anR0soRrLZXGKVlTtb0HVTlMF7aoF7u1dqWrZEao8Gi122veEXD2QmWJcJuW3yYvaWERS89AS5SgZPK4IlSHQVUI6Tqp2IshCUvLR9hIzOrwMbafuVbkILdfCXaaoPIBQnS/yuwnI7GrEF4l6xlGMez+JH1YDlYGNVQ37LWN5npmBhuL0h3jeru9sMhQPwVzPucK96rnQjKKz4mcpTiDQo0T637YpvHs87VFOSl2SEhr0KUW/qYZLQylgvdaCx/XlOw/fER82FGXAVoPChcEkOu3XwyVlj+2aCXKEN04tu+yN5uaguCRjzJBPVq1QtgCstkaRq5G0taJkvvMEW32F7NPOmPtT2lpL/l6tDX+PlbGMQA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(39860400002)(396003)(346002)(366004)(451199018)(38070700005)(82960400001)(38100700002)(122000001)(86362001)(478600001)(66946007)(5660300002)(8936002)(66476007)(66446008)(2906002)(76116006)(66556008)(64756008)(41300700001)(8676002)(45080400002)(110136005)(2616005)(6512007)(83380400001)(186003)(6506007)(26005)(316002)(71200400001)(6486002)(36756003)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vlo3VEN0NGg4ZWxJV0hxMHRNUWx4QVR6UVJjVnRvZjR2TDNnOUFheURyVWNt?=
 =?utf-8?B?b0gzdS82NW1mam44ckhYWTVUZ1ZncHF0eW5SVlNlTkg1TVFHY1B4VUZLN0hu?=
 =?utf-8?B?UXZKand2am93S3VtTDhQN1VSWktEUVBqWWplSWhuVGZ6N2Vqb2RLU1FKWXMr?=
 =?utf-8?B?UzgzMCtob0h2YUNnMHd6VlZNTHRvUXU2N0lPKzhoZ1h6UTloMmFkcmlheDdx?=
 =?utf-8?B?bHQzdVA4WmNXS2hwZ3FaTVlqemw4S25GMG1yY2t0WEM1N0VMYk1YWWxuaDdN?=
 =?utf-8?B?YU1iT1YvMTNZWkh0SzR5WGZNRHJpQVdycVJXSFBKb0lGNFdSV2FpY01FWXlJ?=
 =?utf-8?B?UjVBbFRYcDJuV0Z4eTFabHk3eGhqSERSQStHbmdwOWJKNTFpMXJwOFd6bXY1?=
 =?utf-8?B?SjFEWnR4c2djYXZIejU5cmxjcGh1R2FZUVR1aGxsS2xGOWNKS1kyRUFUOWZx?=
 =?utf-8?B?RklCdytlaXY0Q1lzQ1BSQ3dpZTVpdVMreVJLRE9qNDlmTTZxRTVkcTgweE1P?=
 =?utf-8?B?Q2lrek1JM0dybVJMeFRsME1NQXM5MnF5T0k3TVRwYklES3piNDJrcVhyWHZT?=
 =?utf-8?B?RDBETjJNaXVUN0EyZnBEQ0hlV1dZWXRrVG9Wall5Nmp1SmRhQUltS0pqVSs2?=
 =?utf-8?B?VFFoRkJUanlVNm0rRTJXQldQUHo5UVYxV3o2a3RGVEV1RWJ3L0FjL2tFY2NQ?=
 =?utf-8?B?c3gzbDh0TDFFTThDbkdsM0pIOFE3dWN4OEVrdFc2TVd2ME1GK1lvWE1Lcm9D?=
 =?utf-8?B?VlhYaDVvRStpZFdGd3FJQVlCQmlncU43cDFzdzFXUTE2blY2amY1Y21ieVBm?=
 =?utf-8?B?VWNrc3VFN3ZBb2xBc2psMTZ0LzVpQlVPK3dGeTNNbkphUUt2blBIdnZ1d29F?=
 =?utf-8?B?NFdQVHJJNU90MFdpLzZTdHJIdDdrd2xVMnVGK24zdTZ5SURzQlZwT2hlUXBi?=
 =?utf-8?B?UzRnQ002QkQrUWxBb0dFN0dQdFRKM01Td3pXVUZhdE5xeEhPbmRDb25GRCtQ?=
 =?utf-8?B?UC84THZ5THhTQkIwTmJEdXRiYjFzTXBRNDNqbUtneU9JM1p2VFZmcDRiMXNF?=
 =?utf-8?B?aDB4MUMyUm9TMTRXTlVDNE5nRjdIbHAyMVA5NTFhQ0piQVpUcW93K25CNjdM?=
 =?utf-8?B?bVdnczVkYi9UT3IxVCtTT2RkWkd2NkZGdDI2VWlZM2dMM2xybjFnNHNWMmVj?=
 =?utf-8?B?Rm5WL1JqZDViSDI2S1pvc2RnQlkvYTl6VVZybWd4ZXBiSDZqKzY3SXM2SFZX?=
 =?utf-8?B?Nk1yK25FS1RBbUlWc0RFN1lxWGxYQlpXa2dIRmVWYzNZTk43VDR3YTkrL3ox?=
 =?utf-8?B?Q1RzMVc1bnVlazIrcW1iNmFXM2pZNmh4cDRnMkpXZnhZM1BhUzR5bkN4NDhZ?=
 =?utf-8?B?eWNMOXFxU2NyUzFNRjZUbTN5NkVlLzZkNG1tamFUVnJKeW9vaEozWUt3cE5C?=
 =?utf-8?B?aVdtSFlDL1J5aFRSVFZNcm9yVnhXakZpcmVJMlVaT3d2OWZwV0d3Y0JUTzd1?=
 =?utf-8?B?aDNqWFUreGxSSkZZeGFpYVIxNUpiaHM5UDN2cUQrdHFVY3R3NXpnUGE1bGdo?=
 =?utf-8?B?QmR4cmVHRXUvZlJqdEJPUFZkMCtQYVlrU0tJbEI0ZFhVR2daMDkrWlFReUZM?=
 =?utf-8?B?L1NnK3JxSXB5K3FSQ2VMWnErZ2pFYloxUVZ5SEV4MmlxNkMxN1NBeUZDMXJE?=
 =?utf-8?B?eHduSzBLNmJOVFMzQjE5amc4WUNIbDBrUjFLTGhkVi9ocFY4SVJ0YW5jTEE5?=
 =?utf-8?B?bGIzaTFndFdmbmFRakc1Vkg2RjlPTituZXBLYjVNc2ZZWng5SUd4eG41VUdI?=
 =?utf-8?B?VGR4MEhybFg0QVRLZTdabGptUWdia25mZTA1U0E1UDBKVkEyaGJ5UVd4R251?=
 =?utf-8?B?bGZzSU1DRURUdXpwcWQ1MDhKd1NsUTR0cHRYSDdmRzBQRkVVanpUTnpYaERQ?=
 =?utf-8?B?T0duSFpaVzVQWWh5bzNxVUhTQjZwWGtlUi83T1hsQkxQSDdncW1odnYzdjBY?=
 =?utf-8?B?QXlNQmhCbWdidFNjNzJHbmlLdWRTN3NkbTVLRmQyTW1WcUFMRklRTDljOGl6?=
 =?utf-8?B?L0orNGhDQUF6dDQ3dG9XamtRbXhKZjN0R2g5TlN4NW1hZk1jd0JiTWd3OUkr?=
 =?utf-8?B?V2NadzcvNkxWSjFkT0FyemszclhlMk1wMFI5YldSL1NzVDhpTCtJcEM2YVRK?=
 =?utf-8?B?eVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <979446EE23EE4C4F920BB26B3EA021C8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a465ea-3050-4c13-a729-08db1a650d87
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 14:55:52.3601 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H2MysU9/C0FbkTUr4UH24wSIXnO+nwS37jQYeQwkB89BSzWUurW4/kaILMlj8E0jA2fzgyq2vevgTpEyIzNgFZ03dY0s0g7TYDQhfLk3y08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5976
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Get HDR DPCD refresh timeout from
 VBT
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

T24gTW9uLCAyMDIzLTAyLTIwIGF0IDE4OjQ3ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gR3JhYiB0aGUgSERSIERQQ0QgcmVmcmVzaCB0aW1lb3V0ICh0aW1lIHdlIG5lZWQgdG8g
d2FpdCBhZnRlcg0KPiB3cml0aW5nIHRoZSBzb3VyYyBPVUkgYmVmb3JlIHRoZSBIRFIgRFBDRCBy
ZWdpc3RlcnMgYXJlIHJlYWR5KQ0KPiBmcm9tIHRoZSBWQlQuDQo+IA0KPiBXaW5kb3dzIGRvZXNu
J3QgZXZlbiBzZWVtIHRvIGhhdmUgYW55IGRlZmF1bHQgdmFsdWUgZm9yIHRoaXMsDQo+IHdoaWNo
IGlzIHBlcmhhcHMgYSBiaXQgd2VpcmQgc2luY2UgdGhlIFZCVCB2YWx1ZSBpcyBkb2N1bWVudGVk
DQo+IGFzIFRHTCsgYW5kIEkgdGhvdWdodCB0aGUgSERSIGJhY2tsaWdodCBzdHVmZiBtaWdodCBh
bHJlYWR5IGJlDQo+IHVzZWQgb24gZWFybGllciBwbGF0Zm9ybXMuIFRvIHBsYXkgaXQgc2FmZSBJ
IGxlZnQgdGhlIG9sZA0KPiBoYXJkY29kZWQgMzBtcyBkZWZhdWx0IGluIHBsYWNlLiBEaWdnaW5n
IHRocm91Z2ggc29tZSBpbnRlcm5hbA0KPiBzdHVmZiB0aGF0IHNlZW1zIHRvIGhhdmUgYmVlbiBh
IG51bWJlciBnaXZlbiBieSB0aGUgdmVuZG9yIGZvcg0KPiBvbmUgcGFydGljdWxhcmx5IHNsb3cg
VENPTi4gQWx0aG91Z2ggSSBkaWQgc2VlIDUwbXMgbWVudGlvbmVkDQo+IHNvbWV3aGVyZSBhcyB3
ZWxsLg0KPiANCj4gTGV0J3MgYWxzbyBpbmNsdWRlIHRoZSB2YWx1ZSBpbiB0aGUgZGVidWcgcHJp
bnQgdG8gZWFzZQ0KPiBkZWJ1Z2dpbmcsIGFuZCB0b3NzIGluIHRoZSBjdXN0b21hcnkgY29ubmVj
dG9yIGlkK25hbWUgYXMgd2VsbC4NCj4gDQo+IFRoZSBUR0wgVGhpbmtwYWQgVDE0IEkgaGF2ZSBz
ZXRzIHRoaXMgdG8gMCBidHcuIFNvIHRoZSBkZWxheQ0KPiBpcyBub3cgZ29uZSBvbiB0aGlzIG1h
Y2hpbmU6DQo+IMKgW0NPTk5FQ1RPUjozMDg6ZURQLTFdIERldGVjdGVkIEludGVsIEhEUiBiYWNr
bGlnaHQgaW50ZXJmYWNlIHZlcnNpb24NCj4gMQ0KPiDCoFtDT05ORUNUT1I6MzA4OmVEUC0xXSBV
c2luZyBJbnRlbCBwcm9wcmlldGFyeSBlRFAgYmFja2xpZ2h0IGNvbnRyb2xzDQo+IMKgW0NPTk5F
Q1RPUjozMDg6ZURQLTFdIFNEUiBiYWNrbGlnaHQgaXMgY29udHJvbGxlZCB0aHJvdWdoIFBXTQ0K
PiDCoFtDT05ORUNUT1I6MzA4OmVEUC0xXSBVc2luZyBuYXRpdmUgUENIIFBXTSBmb3IgYmFja2xp
Z2h0IGNvbnRyb2wNCj4gKGNvbnRyb2xsZXI9MCkNCj4gwqBbQ09OTkVDVE9SOjMwODplRFAtMV0g
VXNpbmcgQVVYIEhEUiBpbnRlcmZhY2UgZm9yIGJhY2tsaWdodCBjb250cm9sDQo+IChyYW5nZSAw
Li40OTYpDQo+IMKgW0NPTk5FQ1RPUjozMDg6ZURQLTFdIFBlcmZvcm1pbmcgT1VJIHdhaXQgKDAg
bXMpDQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCg0KPiANCj4gQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jwqDC
oMKgwqDCoMKgwqDCoMKgIHwgNiArKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA5ICsrKysrKystLQ0K
PiDCoDMgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4
IGYzNWVmMzY3NWQzOS4uZjE2ODg3YWVkNTZkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMTA4NCw2ICsxMDg0LDEyIEBAIHBhcnNlX2xm
cF9iYWNrbGlnaHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsDQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFuZWwtPnZidC5iYWNrbGlnaHQubWluX2JyaWdodG5l
c3MgPSBlbnRyeS0NCj4gPm1pbl9icmlnaHRuZXNzOw0KPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiDC
oA0KPiArwqDCoMKgwqDCoMKgwqBpZiAoaTkxNS0+ZGlzcGxheS52YnQudmVyc2lvbiA+PSAyMzkp
DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwYW5lbC0+dmJ0LmJhY2tsaWdodC5o
ZHJfZHBjZF9yZWZyZXNoX3RpbWVvdXQgPQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoERJVl9ST1VORF9VUChiYWNrbGlnaHRfZGF0YS0NCj4gPmhkcl9k
cGNkX3JlZnJlc2hfdGltZW91dFtwYW5lbF90eXBlXSwgMTAwKTsNCj4gK8KgwqDCoMKgwqDCoMKg
ZWxzZQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGFuZWwtPnZidC5iYWNrbGln
aHQuaGRyX2RwY2RfcmVmcmVzaF90aW1lb3V0ID0gMzA7DQo+ICsNCj4gwqDCoMKgwqDCoMKgwqDC
oGRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICJWQlQgYmFja2xpZ2h0IFBXTSBtb2R1bGF0aW9uIGZyZXF1ZW5jeSAldSBIeiwg
Ig0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiYWN0aXZlICVzLCBt
aW4gYnJpZ2h0bmVzcyAldSwgbGV2ZWwgJXUsDQo+IGNvbnRyb2xsZXIgJXVcbiIsDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IGluZGV4IDc0OGIwY2Q0MTFmYS4uNzZmNDdiYTNiZTQ1IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBAQCAt
MzI2LDYgKzMyNiw3IEBAIHN0cnVjdCBpbnRlbF92YnRfcGFuZWxfZGF0YSB7DQo+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3Qgew0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUxNiBw
d21fZnJlcV9oejsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MTYgYnJpZ2h0
bmVzc19wcmVjaXNpb25fYml0czsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUx
NiBoZHJfZHBjZF9yZWZyZXNoX3RpbWVvdXQ7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgYm9vbCBwcmVzZW50Ow0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJv
b2wgYWN0aXZlX2xvd19wd207DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTgg
bWluX2JyaWdodG5lc3M7wqDCoMKgwqDCoMKgLyogbWluX2JyaWdodG5lc3MvMjU1IG9mIG1heA0K
PiAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4
IGI3N2JkNDU2NTg2NC4uMzczNGU3NTY3MjMwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0yMjkzLDEwICsyMjkzLDE1IEBAIGludGVsX2VkcF9p
bml0X3NvdXJjZV9vdWkoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwgYm9vbCBjYXJlZnVs
KQ0KPiDCoA0KPiDCoHZvaWQgaW50ZWxfZHBfd2FpdF9zb3VyY2Vfb3VpKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+IMKgew0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IgPSBpbnRlbF9kcC0NCj4gPmF0dGFjaGVkX2Nvbm5lY3RvcjsNCj4gwqDC
oMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShp
bnRlbF9kcCk7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0s
ICJQZXJmb3JtaW5nIE9VSSB3YWl0XG4iKTsNCj4gLcKgwqDCoMKgwqDCoMKgd2FpdF9yZW1haW5p
bmdfbXNfZnJvbV9qaWZmaWVzKGludGVsX2RwLT5sYXN0X291aV93cml0ZSwgMzApOw0KPiArwqDC
oMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiW0NPTk5FQ1RPUjolZDolc10gUGVy
Zm9ybWluZyBPVUkNCj4gd2FpdCAoJXUgbXMpXG4iLA0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItPmJhc2Uu
bmFtZSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3It
DQo+ID5wYW5lbC52YnQuYmFja2xpZ2h0Lmhkcl9kcGNkX3JlZnJlc2hfdGltZW91dCk7DQo+ICsN
Cj4gK8KgwqDCoMKgwqDCoMKgd2FpdF9yZW1haW5pbmdfbXNfZnJvbV9qaWZmaWVzKGludGVsX2Rw
LT5sYXN0X291aV93cml0ZSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0NCj4gPnBh
bmVsLnZidC5iYWNrbGlnaHQuaGRyX2RwY2RfcmVmcmVzaF90aW1lb3V0KTsNCj4gwqB9DQo+IMKg
DQo+IMKgLyogSWYgdGhlIGRldmljZSBzdXBwb3J0cyBpdCwgdHJ5IHRvIHNldCB0aGUgcG93ZXIg
c3RhdGUNCj4gYXBwcm9wcmlhdGVseSAqLw0KDQo=
