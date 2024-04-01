Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 555F4893A9E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 13:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 829E010F0B9;
	Mon,  1 Apr 2024 11:25:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmhjcxIm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F4E10F0B9
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 11:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711970731; x=1743506731;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=g+Nk4oyZyOLoblaxNP/92EA1y9Q/GTDn+FJis4fVWuI=;
 b=YmhjcxIm2IUJc9oQAhl1Ql1s0bQHqdZim+8inJXxoRdhG8JWv81Ar4uE
 weyxFzX1n1iS/q5JTBvnCnPhoOHfUnDl13BdOlmdXMgJKdhT57bxQV6T1
 VQnbljqQl5HdtmfxlDtAds5jW95COrPaE7srJCEn15qskNKSaS9/NkIoa
 BJA7cQVQdaEEBbIP/OU/FitOmLx8YBkKZr4Y8/I+y9lLkTMuq7NJJ3jAE
 ftkkhyvnUNqCeb05bnSmlenEmXSw3uIomrfbT7Uq5ejdn579FPSez18g7
 sW2P5qigfVZnpg0gWLr8kxPO1ZbPpx/wbKJR+U4tDKqZd15SwwL+EZztA w==;
X-CSE-ConnectionGUID: CgzJ/OezSsurSX1vf0lnXA==
X-CSE-MsgGUID: eq8XrQGsSXKLmXISCyUsew==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="6949115"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="6949115"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 04:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="22353541"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 04:25:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 04:25:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 04:25:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 04:25:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 04:25:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EnxhqS+2zAvQip8eyF6bmCo/nXnz5VLdeZzrW9TESHYBOxQIzBsUAFh+HFzsvwUcnwqt9SMIy8wesjku2MbESRFubSjyV+HfK7ttHB/zyJoou8M6c0EpIuzqAE78Ik3V/Bi46NzhsoVxr0DU8RApjqqS/kKiOQqOq+2/ul+RK0rxygNuBXtQH8jdLTdBxnZGrjaDWngiqSf1iZR7dXJ5ED+seH3dXqAv6oyTEtVXp7pQSeF2rpR8eAXN3wTWRii3ehCItiVfZu8OamDNLqDiBP7VNtPb3g+DZ/ftyM9q0syXgSOtG0pr/s39LlQwTJ+aQJ1oimzfPpPTy8AdxsKrGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+Nk4oyZyOLoblaxNP/92EA1y9Q/GTDn+FJis4fVWuI=;
 b=SIwe8BRdrctD9opXvqSS/CUUSg2Y+iPcwVeNIGgmAuojCARV8f8zHNeWZOxgovCvTNmRBfwCHnSf+tSTa/DxoY+6MeJ7bkB1fVsMsy9qm8lTglX+Fd+u9h2ZWCIfaQP3J+zOs8XIzTcxNieTd+lVJXlosZx1VKoedy0B9GNa8/uRwTf/RXHM8SXhWIcttZSwMnKF1rPDqQ1FElobVlYludS51rnuCq6KI0HruRVME1eewVviIw1EmYUrfuVUizulVoLkfEl84sIW3ggTdOLE3PrHiiaXHjgJi2hY7QYwW9PWDoQfsL09lm5ZNQ0zac/EGtVFb7JqZgsn0F/yJa8e9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by LV3PR11MB8727.namprd11.prod.outlook.com (2603:10b6:408:20d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Mon, 1 Apr
 2024 11:25:27 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::2e00:6a0:1e21:b016%6]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 11:25:27 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 05/22] drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from
 .mode_valid() hooks
Thread-Topic: [PATCH 05/22] drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from
 .mode_valid() hooks
Thread-Index: AQHagXZOABtc09UjfkudBGPTpEH6+bFTSM0A
Date: Mon, 1 Apr 2024 11:25:27 +0000
Message-ID: <SJ0PR11MB678998C1053B6B6B136B2CD18D3F2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|LV3PR11MB8727:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pxr2FBMRUbOLNSAzxAc9KKLTxGDF9TQLDiz2f8Ot9nbg8a42pPW2eO9fomdMR+8j0EXeP/VxVPagqaI0DfK9XLUOVwRtaulFLvBWKBPgAUPfoWdj+2qxcHfiO/H0Dzkp/BsjpwbRifOAQlbFLaOkuOhWd9H8PqcAS+3aojnLu0mCWEj1nfjY/KG3u2Z0pFH5THQUD+3Y4hvTY6jQe6KqpKgcgA6TpJkYUDOaOi7LlGvwDm8vwJQjhhiR5ecEcAJ04gDkVvZ8XSM3teuqbWCjafvsmZ9r8Tx+6WZTpLMnWIhBTCBXy7RB3Noh3zepJmyVsxZnmYLmBu9WgBSaDxT/IR2YItsEvBENpwA1DjF/deeCu1Vg8o3G2GN5xM+cAv7XoifU3J9P4F2Ze9rOeYiT1sM6FvYvgbk36hX1bsCudfQ33AApjm3e/+4H63o1hO7I5N10ggMoW29izD2HPBzwF5soA5eL8qsDoOPNDb9zH5zruVggaS2E+/IybaKEHoeGddz/VYx1FLxR1ojdKPry5+Mz7puD6R5vzK3vg6G1SKAhzV8pk/TmrmPFvPzp8b8uklR2hW5pK9OPKPVhEcKTkYqnrNBe3hf9rZuWW7P4SSRBaYbCt87i2oDVt+knMXBvJ0O8L7M4RcvPl65svfMoKH7YSbHCB91CHfbeAxp0v7U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVFjanh1L2FmVWFZMnpqY21lU09SbEVZNjcyTm1LemNKcmhmdE1uQW9nalhF?=
 =?utf-8?B?c1Zkcms4SXRoUGpBOFQ3SWhrdjJpVDg0MnVNWHR5eG1DTHNyeW1oc3NpMVQ1?=
 =?utf-8?B?STFPbFUzTUUwN0VyRUxFdkdReGRnK09pejRkRlRMRzFIUUNxeWRtZk9lbXN0?=
 =?utf-8?B?YnpUWnp3b0pyT293VWx6QTU3SjhmTUtkWUJsdXF5WC9GUDAxK0g3UlFTQmhV?=
 =?utf-8?B?UWNUZDJyYnFVWnRrSGI4c0ZiYXdRK3RIVEhBYlFLMEgwZ1FsYVBDLzd6eHNL?=
 =?utf-8?B?WkwrUlpmNXF3WFA2YWt3Z1RpOFBMYWtINEw1aDY0aXZ2d08vUXZXWTc1eHc5?=
 =?utf-8?B?cGkzUWYvcllzM0t6dUdWSG5Ld0pGcitYRnZqcGYvVkFnbVJ5RGE2b0RoaENK?=
 =?utf-8?B?a1VlMytyajUzM0RCMUVwNyt0Uy9IbVJxa1FheTFtaDkzc3FVeUdCZXZFYjhz?=
 =?utf-8?B?cjU2ajhiTWd3Slo2ZFNrbjBJUjl2WW95c2tuOUcvY2IrTWVWNzNKUFR0Rnc1?=
 =?utf-8?B?TG10OFRlbUNYbmpmcGxZK0ZRcjBJYndFdm1rTDIwMUZjTkppRmRyUGFNQ2JJ?=
 =?utf-8?B?eUlJZDNEZjNta2lUbmE5T0JTR0VRbnhxSitkOVZNWGwvampRYkZHcU8yV3lk?=
 =?utf-8?B?eUxNclhtSmQrMXphNm5raktlZXJWTE5MQ05aS0hwQXZiT2JSVWRCb1VtY2ZQ?=
 =?utf-8?B?OE1MNmx5dXRBVE1DczNhVmRmbjRvZG9jVFhBWUhSNHN2UU5ndFVwUW1tR29w?=
 =?utf-8?B?R0hmWXlpdHhuZVJITkYrZTNld2lxaWIvU1hUN1RWSVJWYys0Ujl3dE5aaDl1?=
 =?utf-8?B?TFZTVS9ZTFJ6ZVhRYUU4S1pGZWRtNVQ2V2lFbEtnNDlwMXRLblBDKy8rMmt5?=
 =?utf-8?B?YlAzUUZKUXo3Qk15N1U2RWV3RjNYSVp6anBQZGJpQkZPNFk0c1VKMFRid2Ra?=
 =?utf-8?B?WGJPK3drTFRVL2ZsWjhlWjY0MHVBdk9kdUJ1REJ6VUF4cVRqM0VtU3RNZTNZ?=
 =?utf-8?B?eW1sS2J3ZG5IU1NObjBaQVdoY3dtcFVWeGM3WnY4TmZxcWQwaVRRQ0M5amYr?=
 =?utf-8?B?UlZaV0c5dnk2YXl0bTd4VnFhT0R1K1M0VVpWdFkvb1c5TThmYmVEcmRpdHB4?=
 =?utf-8?B?QlU1UDN4RThEZmFvN3hmUkJHSXhBaWJFS0s4SEhicm8vaFlZemVNbk5TQTUr?=
 =?utf-8?B?cFlEcEFZeWlIOU9pemJJZC9FOUZqZjkyU2JGNDdxUUZIYVFWTk80cXNyZzVy?=
 =?utf-8?B?TGtrbjdVcmlxRUN5QlBaR3lqK3NlSjE1Zk1hdUtGUGw4Z3hiTzM0UWFHOHZw?=
 =?utf-8?B?UGFEQUtnaEdwbzJhYlB0Vm8zY0w0Unh0SWtVNTdLN1VoM0dIOGxmYVI0NkZE?=
 =?utf-8?B?bDg2M2JSYVN5WEJITHBBL2NHdUx2dldwTWY2c3lsZHkvVUJKUENKbkVXK3o5?=
 =?utf-8?B?d3BNMnJFdXFtdmNLZUhFWjVXY0FOc1pkNVBSY2RPR0FSMVE1S2pzVlJldnFs?=
 =?utf-8?B?d2xlanJvTk1maFpRbjN0VUp2Uzc0WURZSmtUb3dIRUpGbWNkUUNPUmhPTkNZ?=
 =?utf-8?B?NSt1NUcvU016dUpEbHNOb1d2VGpaR1l3U3FQU09hZ0U1UFdJZ1h3a2FITUor?=
 =?utf-8?B?VWc4THBibjNNaFVjNU40Z25BbHdpTnN5aUttdW1VYTRJNGJVbnYxWkU0TnNZ?=
 =?utf-8?B?VzJDZGtvWExxVGhwK0g4L3NJS29YWFpzbXNaMytRaXo2V0p5djR5Zm5PbUYz?=
 =?utf-8?B?VmRZWmNYVnFGQ1VsSldvS0F5K3hTK2Y2ZTJUQ2RyQU5PWjVhRUdheVNrUkRi?=
 =?utf-8?B?aXFSTUx4bG9WV1BqdG9qbDEyeGk5bDFBc1Q4TGk2ZWd5dnpnVXZUSVh2L291?=
 =?utf-8?B?OFpvS3hyWDlpSGFUMHlvcXpLM2Y4c1hVOHJnRTErcmNjc1Qza3lMWENoeW9t?=
 =?utf-8?B?Ym5sUXpVaU10NUEyQ0hzV2RUdmhYSlVoZ1JvaXhOcWdBVk5jR0cyNW1SNUtZ?=
 =?utf-8?B?S3JNV3Jjdi8ySUo2c2xHcTNGMWJEZnJCa3FJUGx6R3RUMGtwK2lXaW5yNXVO?=
 =?utf-8?B?U2g1M1NNRXZCWlhwR3QxUnRiNVNxTGh6VWhnd3BuenNqZklwODdieGxPZCt0?=
 =?utf-8?B?dHlZUDQ2bnVxY0VsbXpOVjdXSXUwTmkwNzNYeU1YZFdPMExibDYyYjcxaUpi?=
 =?utf-8?B?TkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c286f92f-6763-4958-8e29-08dc523e6e8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 11:25:27.5799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BD208r3oxwaYoRaWfiJJ839tT4p6YxnDT4mQ+yS24hBdHT6YoVMyS0M3NYc7DguYPEMivf7ObqOVCyavxOHhLjqvU6+VfXjcVZdfhwo7MAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8727
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwNS8yMl0gZHJt
L2k5MTU6IFJlbW92ZSBEUk1fTU9ERV9GTEFHX0RCTFNDQU4NCj4gY2hlY2tzIGZyb20gLm1vZGVf
dmFsaWQoKSBob29rcw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFdlIG5ldmVyIHNldCBjb25uZWN0b3ItPmRvdWJsZXNj
YW5fYWxsb3dlZCwgc28gdGhlIHByb2JlIGhlbHBlciBhbHJlYWR5DQo+IGZpbHRlcnMgb3V0IGFs
bCBkb3VibGVzY2FuIG1vZGVzIGZvciB1cy4NCj4gDQo+IFNhZGx5IHdlIHN0aWxsIG5lZWQgdG8g
a2VlcCB0aGUgZXhwbGljaXQgZG91Ymxlc2NhbiBjaGVja3MgaW4gLmNvbXB1dGVfY29uZmlnDQo+
IGFzIG91dGxpbmVkIGluIGNvbW1pdCBlNGRkMjdhYWRkMjANCj4gKCJkcm0vaTkxNTogQWxsb3cg
REJMU0NBTiB1c2VyIG1vZGVzIHdpdGggZURQL0xWRFMvRFNJIikNCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPg0KDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Ny
dC5jICAgIHwgMyAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bXN0LmMgfCA1IC0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
aS5jICAgIHwgMyAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZv
LmMgICAgfCAzIC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdmRz
LmMgICB8IDMgLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8u
YyAgIHwgMyAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYyAg
ICAgfCAzIC0tLQ0KPiAgNyBmaWxlcyBjaGFuZ2VkLCAyMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYw0KPiBpbmRleCA5MzQ3OWRi
MGY4OWYuLjJlOTUwOTNhYTRkNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jcnQuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NydC5jDQo+IEBAIC0zNTYsOSArMzU2LDYgQEAgaW50ZWxfY3J0X21vZGVfdmFsaWQo
c3RydWN0IGRybV9jb25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAlpZiAoc3RhdHVzICE9IE1P
REVfT0spDQo+ICAJCXJldHVybiBzdGF0dXM7DQo+IA0KPiAtCWlmIChtb2RlLT5mbGFncyAmIERS
TV9NT0RFX0ZMQUdfREJMU0NBTikNCj4gLQkJcmV0dXJuIE1PREVfTk9fREJMRVNDQU47DQo+IC0N
Cj4gIAlpZiAobW9kZS0+Y2xvY2sgPCAyNTAwMCkNCj4gIAkJcmV0dXJuIE1PREVfQ0xPQ0tfTE9X
Ow0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
DQo+IGluZGV4IDUzYWVjMDIzY2U5Mi4uOWE3Yzc1MDM5OTg5IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTEzMDIsMTEgKzEzMDIs
NiBAQCBpbnRlbF9kcF9tc3RfbW9kZV92YWxpZF9jdHgoc3RydWN0DQo+IGRybV9jb25uZWN0b3Ig
KmNvbm5lY3RvciwNCj4gIAlpZiAoKnN0YXR1cyAhPSBNT0RFX09LKQ0KPiAgCQlyZXR1cm4gMDsN
Cj4gDQo+IC0JaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxTQ0FOKSB7DQo+IC0J
CSpzdGF0dXMgPSBNT0RFX05PX0RCTEVTQ0FOOw0KPiAtCQlyZXR1cm4gMDsNCj4gLQl9DQo+IC0N
Cj4gIAltYXhfbGlua19jbG9jayA9IGludGVsX2RwX21heF9saW5rX3JhdGUoaW50ZWxfZHApOw0K
PiAgCW1heF9sYW5lcyA9IGludGVsX2RwX21heF9sYW5lX2NvdW50KGludGVsX2RwKTsNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2kuYw0KPiBpbmRleCBkM2Nm
NmE2NTIyMjEuLjJkZmM2MGU0YjYxNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzaS5jDQo+IEBAIC02OSw5ICs2OSw2IEBAIGVudW0gZHJtX21vZGVfc3RhdHVz
IGludGVsX2RzaV9tb2RlX3ZhbGlkKHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3Is
DQo+IA0KPiAgCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiXG4iKTsNCj4gDQo+IC0JaWYg
KG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19EQkxTQ0FOKQ0KPiAtCQlyZXR1cm4gTU9ERV9O
T19EQkxFU0NBTjsNCj4gLQ0KPiAgCXN0YXR1cyA9IGludGVsX3BhbmVsX21vZGVfdmFsaWQoaW50
ZWxfY29ubmVjdG9yLCBtb2RlKTsNCj4gIAlpZiAoc3RhdHVzICE9IE1PREVfT0spDQo+ICAJCXJl
dHVybiBzdGF0dXM7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2R2by5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8u
Yw0KPiBpbmRleCBjMDc2ZGE3NWIwNjYuLjA2MDMyOGMwZGY3ZSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jDQo+IEBAIC0yMzEsOSArMjMxLDYgQEAgaW50
ZWxfZHZvX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3INCj4gKl9jb25uZWN0b3IsDQo+
ICAJaWYgKHN0YXR1cyAhPSBNT0RFX09LKQ0KPiAgCQlyZXR1cm4gc3RhdHVzOw0KPiANCj4gLQlp
ZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTFNDQU4pDQo+IC0JCXJldHVybiBNT0RF
X05PX0RCTEVTQ0FOOw0KPiAtDQo+ICAJLyogWFhYOiBWYWxpZGF0ZSBjbG9jayByYW5nZSAqLw0K
PiANCj4gIAlpZiAoZml4ZWRfbW9kZSkgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9sdmRzLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2x2ZHMuYw0KPiBpbmRleCAyMjFmNWM2Yzg3MWIuLjI0ODYwOTQ1ZjJlNCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdmRzLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdmRzLmMNCj4gQEAgLTM5
OSw5ICszOTksNiBAQCBpbnRlbF9sdmRzX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IN
Cj4gKl9jb25uZWN0b3IsDQo+ICAJaWYgKHN0YXR1cyAhPSBNT0RFX09LKQ0KPiAgCQlyZXR1cm4g
c3RhdHVzOw0KPiANCj4gLQlpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTFNDQU4p
DQo+IC0JCXJldHVybiBNT0RFX05PX0RCTEVTQ0FOOw0KPiAtDQo+ICAJc3RhdHVzID0gaW50ZWxf
cGFuZWxfbW9kZV92YWxpZChjb25uZWN0b3IsIG1vZGUpOw0KPiAgCWlmIChzdGF0dXMgIT0gTU9E
RV9PSykNCj4gIAkJcmV0dXJuIHN0YXR1czsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zZHZvLmMNCj4gaW5kZXggNTBmMDU1N2Q5Y2EyLi5kZjc2MDQ0YTczOWEgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+IEBAIC0x
OTUyLDkgKzE5NTIsNiBAQCBpbnRlbF9zZHZvX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0
b3INCj4gKmNvbm5lY3RvciwNCj4gIAlpZiAoc3RhdHVzICE9IE1PREVfT0spDQo+ICAJCXJldHVy
biBzdGF0dXM7DQo+IA0KPiAtCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJMU0NB
TikNCj4gLQkJcmV0dXJuIE1PREVfTk9fREJMRVNDQU47DQo+IC0NCj4gIAlpZiAoY2xvY2sgPiBt
YXhfZG90Y2xrKQ0KPiAgCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOw0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYuYw0KPiBpbmRleCBiYTVkMmI3MTc0YjcuLjc5
ZDM1YzFiM2M4MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90di5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdHYu
Yw0KPiBAQCAtOTY5LDkgKzk2OSw2IEBAIGludGVsX3R2X21vZGVfdmFsaWQoc3RydWN0IGRybV9j
b25uZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAlpZiAoc3RhdHVzICE9IE1PREVfT0spDQo+ICAJ
CXJldHVybiBzdGF0dXM7DQo+IA0KPiAtCWlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdf
REJMU0NBTikNCj4gLQkJcmV0dXJuIE1PREVfTk9fREJMRVNDQU47DQo+IC0NCj4gIAlpZiAobW9k
ZS0+Y2xvY2sgPiBtYXhfZG90Y2xrKQ0KPiAgCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOw0KPiAN
Cj4gLS0NCj4gMi40My4yDQoNCg==
