Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C23516B321A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 00:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB8C10E2B5;
	Thu,  9 Mar 2023 23:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA06810E2B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 23:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678405015; x=1709941015;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QPrdW5aZboSt98ox9V2kGjfES0t6hbBzgFpSEnvRXio=;
 b=LePpsD6I+szxx6f54H82rS60cApAwjsTUxFOZdi7RDja287WUKQ70amw
 02s5GwzriwNFBzwN+fwsl69VmmrIQw2DNcgUiJarOjWj4XicdcQLWqFBl
 C+g5SwRtQK6woCnWVZoLNPyILjFsl5PZcIlfHs88BOo2Q1iAGE0VohOjs
 tMyYL6Kkt/RlEn3E70FU4jFunea/y75LXZ65DcYwu/X5Cb58vScN1oihu
 DC2LlV4aN8ouJhZmQziSd48P3phxG3p0qWChczniLKEcuae/6npEVlNJx
 r4xQoub6y9OovqziVrpn1oHZYgbjbyMmpHUX6J2So+fg0RrqzaqFgpoFI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="324950650"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="324950650"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 15:36:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="677592055"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="677592055"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 09 Mar 2023 15:36:55 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 15:36:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 15:36:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 15:36:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyIVWMx/0upOcBLQsn5QmK0NGO4mJ4P6ad6tEe5/B6WW+HvlA6ILxfwF/J+G9f4nAj0ZkwkNF4SUB77Pxyow2/4XMxuhuZOcN5YmCehAvedYltRYej4rL/ssJ/479GtmQA16/QGiqPijwaGN/y6z23Ynj2ynCCQbMoQalD5R7Fy4SbSGn23esRzR/j2bCEVsGAximZnlm+rAhjwgittRKhx2Uhe2LEPcfl9PRkseGpZEm3OgnLNZTrx96ulQhaC7l7hXMaTGMoZ+JgoRpwkcPytcqoNK6zfKBqVFYAGRPwuX0T/3KNGzBsGgSY+W8XMHph7jAb/5NRM3n/+7Pi97EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPrdW5aZboSt98ox9V2kGjfES0t6hbBzgFpSEnvRXio=;
 b=YeJHgH3Kzil9S4RTJgRd8WM9kLcngvkr3X/xdxB0IIG3Mc5wEaJr3PdSdMm1Ih+XVwgopWIyaS816CF0uotdgvUj5fTxJBEkmbp54/fj/atLCCdZItNRZx7hWBWuEDpUJ3I3KZEkkmvW8j30VAyKjLa2edCab0sqCOB4ahqfDYvRqcSJ6siYy1Ix8yDq1C1CUBgzF6pL6Q+++E39HbsEj7khyaawg9wDq4UKrmVxt6BHGDG12XnMU9zBZmM56hrFGCpGLtWeYGGkhSX/RI+D1lJvhXSReg57t8HsRmk7w4ZaM+T0f8IKgwNnM+RxyodFfZdrN3W3fijAxKlOtA003g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CH0PR11MB5425.namprd11.prod.outlook.com (2603:10b6:610:d0::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Thu, 9 Mar 2023 23:36:53 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::4cdb:78a7:917e:88e5%9]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 23:36:53 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 4/5] drm/i915/guc: Rename GuC log relay
 debugfs descriptively
Thread-Index: AQHZCVO6teY/30nMG0WjmRI3T+IVSK5ipWGAgJEIA4A=
Date: Thu, 9 Mar 2023 23:36:53 +0000
Message-ID: <3869f3cd33ca7c5571a0e08a9e78873ce9090bb6.camel@intel.com>
References: <20221206092100.274195-1-alan.previn.teres.alexis@intel.com>
 <20221206092100.274195-5-alan.previn.teres.alexis@intel.com>
 <87r0xbcg4o.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87r0xbcg4o.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CH0PR11MB5425:EE_
x-ms-office365-filtering-correlation-id: 74a0b1fb-6a77-449f-247b-08db20f729a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qZ21qQmnkruQ9AczO4KOmKZaSdCuWBo5rfSQFv/anW692O/4SipLUBQP/hgvgN6/oN/GHOMmsqAgGkLpjRglS3iFnYYJ3kl+97NXOrSJPFPB6iI22UF975hPNIuUFjY8lMFf6ugiGgMwcfHdxCmXk0fv8PqtuEuFQkMSAliDJeSYy1vNSqdP7BG9yuA0f19ulCI8Atza4GcwHt2+QknCudq0nFWmszS6nYtHep10c5N35odXp73sA4L4KQf2jpM/OYZtuhuxtEIezaN7HcFrzm5Va2JbNBFg+WaDHUUMb87P6CRkzCqj1X/PH616+bOzT+DvJTcT6kAq+gW4G5h4i1nH+CnKTODt8I8+eJJohHpoK4v2CsjZGJJrhYgD4sbPstBcbJjq4M2FU0Lkys2O/UGn5i2d7n4djeWG1kCunzG5ZamMJO8rSz6eyzTQy+XQDnAsqUX6jl0nnZdhoHp3/SZGaVrH3YLbe83kz0vUYmr2P7Im8vFrAyGJrPXTXgxns2ftnDtv9gzyVLVafnM1sZLhgDiyTBXYGsN62g31/GZ/C0WulqbeO9nSIvQOp7B969LSRiEHzKmhhpXKlHvt540c7i0InEnGnw/zsyOOgu/jKJmqXorgZlWG0YeHVzUILoiILz1v5lD0V/3+c9dmoA0xrS43TGZiLbZkv7lUT63Cm/AeeG/xLu/yIMMX2+5ybPPqBo2qlBI4TIEuo+DqXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199018)(8936002)(6862004)(36756003)(5660300002)(8676002)(26005)(6512007)(6506007)(38100700002)(82960400001)(122000001)(83380400001)(186003)(2616005)(41300700001)(6636002)(86362001)(64756008)(66946007)(37006003)(66476007)(91956017)(66556008)(316002)(76116006)(66446008)(4326008)(71200400001)(6486002)(478600001)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UE10Y050YjhPeU9ldFduNS92UGJLb0RPRlVLcEZkVVA0aUZVNGZ2bmREc3lu?=
 =?utf-8?B?TnlpenJreTRYbndJbW5YZnNIdThQVFBMaC9jZ2M4NFRpcXZ2dFVxMDVoZi94?=
 =?utf-8?B?SmtQNGl6MzVrMzRoME56cWRoRzdDZkdaYk85UlNiN3hxckdHcWFrVGxIZmR1?=
 =?utf-8?B?dzEzTG53aWhXMXNtU0h0bTBwcytZQ3FiUERHaXlmQ3dNWWtEZzJYQTVYSlJS?=
 =?utf-8?B?d0dWOEdWSFVidXJ0K2dhS3lzRTJqeU9oTSs1L1UyV1o4MXVrZElKTmV5THc4?=
 =?utf-8?B?Z0VTeGRqRlpRVWh3TWlQeTdseVM1UVVJN2luMU5WKzVab2VCUkdWUE1mcFd4?=
 =?utf-8?B?L052VGNaLzRCeFNuSnZVOURLeG1OYitJTUlqMHJTZUZ0SnNFY0M1M2w5aGJL?=
 =?utf-8?B?MDUwSE9EeE1CUWx3Tkx1ZHd4Y0pjVlBYM3RWaW9uaG5RMFJTdkQ0VnhkR2xX?=
 =?utf-8?B?SkZPcHVuM1UyUi9uRGhhUXl1SXdiUGNwWkYwN1FFS0x0emxMSUNPYWVML1dp?=
 =?utf-8?B?REo5QmdxRU9Scld1R2dYVUx5S3JIb09tak1lb2VTbHJtbW1CNlZKWmRxOHZQ?=
 =?utf-8?B?VkNuMWV1Tjg3TjJRVUMxUjZsREhuekhoWFBQUjliUDl3ZjZvcUlySmw0NTFz?=
 =?utf-8?B?dm5aL0Z2ZWdoZXB6YWphREFpQkdRQ1ViRW9ZOUFLeHFwU2k5b3I2eDE1aEs5?=
 =?utf-8?B?bUtiMGNiVERCcFdzZi83UElrTThWSjFiSHo1WkNDUGsxeTBMbzQ5akh0UTBy?=
 =?utf-8?B?Z28yWHB3TVBITFV0eG8yVWlOKzBNODBNZDJ3ZDl4My92c0VoZ1JHeElLeVYw?=
 =?utf-8?B?NGJWR1JoR1IvS28zTktJS1g4cXNraGIzVnp5TkJ1NGd0REp0dld0WUVEVVls?=
 =?utf-8?B?OGxYdjgxWEp0YWE1a0lUSnRRSENyaDVQV2gvZjF5Qm9xUXNhK1d4Z21IanIv?=
 =?utf-8?B?NUNBY01nUjJoUlhOS0k0SE43L3puRDZwVnZWOFQ1ZERIcVF0bVptc2NYOGlH?=
 =?utf-8?B?NVlnY2RiUmtQbjJTVWNXQUM2KzJkYllIam5naVY0d1g1M3NCOXdqTHdSenVD?=
 =?utf-8?B?djJxTEZSV3ltbis0SjZMNnJJejJ5YnAxRjkraVE0MEtHZHVBU2M1WS81bFkw?=
 =?utf-8?B?UCtadjUxWXVrSXVCSHlqQlZlVC90blA1R0RYc2lTV2lyTzM0eE1nNXFDVndo?=
 =?utf-8?B?aGRsU0E3RlB2STJjS2RFcEZNQ1dDRkJHNzRVV1Bnek1ocjYzM1EvOVhmS013?=
 =?utf-8?B?em80UHQzbEs1c285N2tjNlgrY2hWQnZzaUJFVDNsR0l3RjN3T3FudDBYZ2NC?=
 =?utf-8?B?OFQ5VFkxT3BHUDIvR3hrMnduK3ZPOWdtTC9Pa24zU29YY3JCRTZoYlRnWmdz?=
 =?utf-8?B?alh6K3RCT01HdU9HNVduZXJuVWpoSWpuQW1RZm1BK3BGeTJRTVdEaTltQnB5?=
 =?utf-8?B?Tk5GSk81cmw1clBtbjlWb0hGQktEVXNXMkZlaGRxM0tVL21aejBLQ3VVdXR2?=
 =?utf-8?B?WnROK0ZvMTF5ZU13TExHRHpDNXlKMndRaldnUnNReklBU3crMWN4a0ltUGhZ?=
 =?utf-8?B?MmRGZHBVV05HMzdsUUIvZ0tkb3RxcUFwRmN2c0N5MG1iOFBUKzZMQXBqcUtS?=
 =?utf-8?B?YWs3cVJzMWJUODVmd0lYOEkyT2VzRVhSUGg1a0dSRitpTVcyeFVxYVVDOFRu?=
 =?utf-8?B?QkNPbHE4S2l5SStwaGZDZFVuTngxczdhWWtBMHJvOXdwSVhrVXk3YmZXaTJV?=
 =?utf-8?B?UnBJR1lUeVRMb0ZrOTd5VzRYT2tESDdKSEZmaGVOcDA3bkdQaE5GTHMvay96?=
 =?utf-8?B?bUVrWm50d3d1azNoMWZVa1J3K2pJNmJsV3RHRXBLUHlNWExWSzRlTUFJRHNK?=
 =?utf-8?B?YU4zRTZ1ZlpVdFIvSFd4VkdNblVCbzR0VlZsa0lHUkIyeU9uSkpvRENEeDdI?=
 =?utf-8?B?OXVNMGZlK21RVzd2bVNNZis4ZlVjR2FnUjlSM3pLWkZObHc0Q3ByZHJWYjEw?=
 =?utf-8?B?ZWU4M0VhSzY4WHhpekxSc3VybGdFU0lOL3F5NHprenBscWZFRkNIQWxkeUtG?=
 =?utf-8?B?Y0dkOGZaaTZNZTFEY0NjOEduRTJjWHYrSEFJZ2FCREtNcGtSK1BKZzJnTVhx?=
 =?utf-8?B?TFJ6MFJLS1ZsYjcycjdYcjV4ZG9DWG81S0h4T2xYc0lJeVpSMTFjUHRRR25V?=
 =?utf-8?Q?BBKlFWjBfXL8mm2bVehFg/CBqwk1od+U4bwui7DHPyvv?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7C4EDE9F9637004B926CE6E3C53CBEF0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74a0b1fb-6a77-449f-247b-08db20f729a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2023 23:36:53.0338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /l3+GHpu4KvBv1CuNPcw2PfCDCzroU/BZ3v96eqpQkBem+l0d3CBRIl+6s6z9JzsNqjuQ+4lun13zVOLZ0i/NUQ6lqMGxVyAvplCOJ8eIoPfg08Srp3l/CulnNHUzptc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5425
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/guc: Rename GuC log relay
 debugfs descriptively
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

QWdhaW4sIG9ubHkgbm93IGhhdmluZyB0aW1lIHRvIHJlbG9vayBhdCB0aGlzLg0KV2lsbCByZS1y
ZXYgYW5kIHJlY29ubmVjdCB3aXRoIEFzaHV0b3NoIG9mZmxpbmUgc2luY2UgSSd2ZSBiZWVuIGFi
c2VudCBvbiB0aGlzIGZvciB0b28gbG9uZy4NClRoYW5rcyBhZ2FpbiBBc2h1dG9zaCBmb3IgcmV2
aWV3aW5nIGFsbCB0aGVzZSBiYWNrIGluIE1heS4NCg0KT24gV2VkLCAyMDIyLTEyLTA3IGF0IDA4
OjUwIC0wODAwLCBEaXhpdCwgQXNodXRvc2ggd3JvdGU6DQo+IE9uIFR1ZSwgMDYgRGVjIDIwMjIg
MDE6MjA6NTkgLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IA0KPiA+IEd1QyBsb2cgcmVs
YXkgZGVidWdmcyBuYW1lIGZvciB0aGUgY29udHJvbCBoYW5kbGUgdnMgdGhlIGFjdHVhbCByZWxh
eQ0KPiA+IGNoYW5uZWwgYXJlIHZhZ3VlLiBGaXggdGhlbSBzbyBpdCdzIG9idmlvdXMgZnJvbSB0
aGUgbmFtZS4NCj4gDQo+IE5vIHJlYWwgb2JqZWN0aW9uIHRvIGFueXRoaW5nIGhlcmUsIGp1c3Qg
YSBjb3VwbGUgb2YgcXVlc3Rpb25zLg0KPiANCj4gPiANCj4gPiANCmFsYW46c25pcA0KDQo+ID4g
CW5fc3ViYnVmcyA9IGludGVsX2d1Y19sb2dfcmVsYXlfc3ViYnVmX2NvdW50KGxvZyk7DQo+ID4g
DQo+ID4gLQlndWNfbG9nX3JlbGF5X2NoYW4gPSByZWxheV9vcGVuKCJndWNfbG9nIiwNCj4gPiAr
CWd1Y19sb2dfcmVsYXlfY2hhbiA9IHJlbGF5X29wZW4oImd1Y19sb2dfcmVsYXlfY2hhbiIsDQo+
IA0KPiBJcyB0aGlzIGEgdXNlciB2aXNpYmxlIG5hbWUgb3IganVzdCBzb21ldGhpbmcgaW50ZXJu
YWw/IEkuZS4gSXMgdGhpcyBhIHVzZXINCj4gdmlzaWJsZSBmaWxlIG5hbWU/DQo+IA0KSXQgd2ls
bCBiZSB1c2VyIHZpc2libGUuIEkgdGhpbmsgd2UgbmVlZCBzdWRvIHRob3VnaCAtIG5lZWQgdG8g
ZG91YmxlIGNoZWNrIHRoYXQuDQpBbmQgaW4gY2FzZSBpIG1pc3NlZCBpdCBlYXJsaWVyLCB0aGUg
bmFtZSBjaGFuZ2Ugd2FzIHNvbGVseSB0byBkaWZmZXJlbnRpYXRlIHRoZQ0KInJlbGF5IGNoYW5u
ZWwiIGhhbmRsZSAodGhhdCBuZWVkcyB0byBiZSBvcGVubmVkIGFuZCByZWFkIGFzIHBlciBrZXJu
ZWwgcmVsYXktDQpjaGFubmVsIGZyYW1ld29yaykgZnJvbSBhbGwgdGhlIG90aGVyIGd1Yy1sb2cg
cmVsYXRlZCBkZWJ1Zy1mcy4NCg0KYWxhbjpzbmlwDQoNCg0KPiA+IEBAIC0xMzcsNyArMTM3LDcg
QEAgREVGSU5FX1NJTVBMRV9BVFRSSUJVVEUoZ3VjX2xvZ19yZWxheV9zdWJidWZfY291bnRfZm9w
cywNCj4gPiAJCQlndWNfbG9nX3JlbGF5X3N1YmJ1Zl9jb3VudF9nZXQsIE5VTEwsDQo+ID4gCQkJ
IiVsbGRcbiIpOw0KPiA+IA0KPiA+IC1zdGF0aWMgaW50IGd1Y19sb2dfcmVsYXlfb3BlbihzdHJ1
Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkNCj4gPiArc3RhdGljIGludCBndWNf
bG9nX3JlbGF5X2N0bF9vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxl
KQ0KPiANCj4gQWdhaW4gbm90IG9iamVjdGluZywgYnV0IHdoYXQgaXMgdGhlIHB1cnBvc2UvdGhp
bmtpbmcgYmVoaW5kIGFkZGluZyBfY3RsXw0KPiB0byB0aGVzZSBmdW5jdGlvbiBuYW1lcz8gVGhl
IHByZXZpb3VzIG5hbWVzIHNlZW1lZCBmaW5lPw0KPiANCk5vdGhpbmcgd3Jvbmcgd2l0aCB0aGUg
cHJldmlvdXMgb25lIC0gYnV0IHNpbmNlIHRoZSBleGlzdGluZyByZWxheSBsb2dnaW5nIHRvb2wN
Cm5ldmVyIHdvcmtlZCBhbnl3YXlzLCBpIGZpZ3VyZSB3aHkgbm90IGNoYW5nZSB0aGUgbmFtZSB0
byBpbmNsdWRlICJjdGwiIHNpbmNlIHdlDQphcmUgYWxyZWFkeSB1c2luZyBpdCBmb3IgdGhlIHRv
b2wgdG8gdHJpZ2dlciBmbHVzaCBieSB3cml0aW5nICcxJyB0byBpdCwuLi4gaWYgaW4NCmZ1dHVy
ZSB3ZSBldmVyIG5lZWQgbW9yZSBjb250cm9scyBsaWtlICd3cml0ZSAyIGZvciBzb21ldGhpbmcg
ZWxzZScgb3IgJ3dyaXRlIDMNCmZvciBzb21ldGhpbmcgZWxzZScgKGkgY2FuIHRoaW5rIG9mIGEg
ZmV3IGV4YW1wbGVzIGJ1dCBub3RoaW5nIHVyZ2VudCB0aGF0IG5lZWRzIHRvIA0KYmUgcGFydCBv
ZiB0aGlzIGltbWVkaWF0ZSBzZXJpZXMpLg0KDQpJJ20gb2theSB3aXRoIGNoYW5naW5nIGJhY2sg
dG8gb3JpZ2luYWwgbmFtZSAtIGJ1dCBmb3Igbm93IHdpbGwgYXNzdW1lIHRoaXMgbmV3IG5hbWUN
CmlzIG9rYXkgLSB3aWxsIGNvbm5lY3Qgb2ZmbGluZS4NCg0K
