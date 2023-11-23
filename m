Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B165D7F58D6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:07:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA5110E07A;
	Thu, 23 Nov 2023 07:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423D110E07A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700723276; x=1732259276;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bCudhn9zeUbnylN21wI9NE+peWJdpLow54fU4zEYc2o=;
 b=Sjr319Op2f1uUhbH+M7gPbj04+ULo6DH1AEx0z4SWqRifJbxsW/zJgyO
 0bUZFuTFQd9a2YOrmwZ4ur+Buyr+Hp6qo0Z0mUYBdUuAGJ9fWz0giYAvg
 7SjWBCAuTMHdMI9P+93JaACmSr7P8OJ/NYq6TeEgqGiDncu/aBNJU+L7r
 Uv+b2w4OdkqRy4TTHB4e6how4hugMizD/mP/cgNpJrt8IYsQM5jKsQaM/
 BSY+ycfRVfpbef4/ejMIvt50j2hV8CzQ7lL1tkZYkfknzv5t2W3u2aEz+
 19YzczVTO8SswdHhyRcBhIRFEyKyGjPJPHkZrDrRvebRB3iTBpYj8QOjz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="456547186"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="456547186"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:07:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="911081024"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="911081024"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 23:07:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:07:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 23:07:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 23:07:53 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 23:07:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iO2+T0eEG1aYjO5uInepgdj8Jc5Dx/GkdHIHOZnMmHsClzg4Q4Q4Iy61s6G043IQlDGOX1w19kqPOE7kO8cq5MrOGPAUiRL81jqyeWojTRDbhSMg7UCruVJOqm54Y6iYikntZKamOJdWDNEFNB5fZL7M6HqISCMW+XyD/TzoJE8+r13OGEr1VvN1Y8Mt03Gf8wVMRu20tqH7A8CXhg/RITWaJtJKjFmSyF2PHBuka3/2tmcx8FiRHmNHm8jAVApBXIQEZbQabiGlcp2bMRY8AlClCCXdQ/2ezwjl7F/7QZoarzufwLWtNDjCs2iIoKEM5Ze92yHOdAnxbt6OykL2fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCudhn9zeUbnylN21wI9NE+peWJdpLow54fU4zEYc2o=;
 b=iSUiKyLqeJsGvbBeJGVrK8ACZL55HY3InFUrBoiMkKVAp8eR7PZ7Zl/jB7TLpPs18BsMyX5U3SJVyL2enA4iL+r95npERlpDjsi4jImqRNUW8cx9Jr/XLbJnI4EwlXLGPoHQ0BKCO+fjESLLNfGll6wCZgNl/beDVAUXudGp0At3qoF2mrmeGPqeFVu5/r/YJ/l0meOLpKYc/zYa/EabC73dPwfkfxuAI1bKCFadSi+A0Xg1iHAJ3fRriFng7TgveLvs9ngBBnXJBUA9ESKr8djqvDYO0Z4EcxfPyAQr3zXt3AuR8AW1x4hDuVQH2bZRKjnPMWjvMscvPsvQZcQ4PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.18; Thu, 23 Nov 2023 07:07:47 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 07:07:47 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Use int type for
 entry_setup_frames
Thread-Index: AQHaGGzmW14BXD8+wUeSU/qfSQBUDrCGZaqAgAEg5iA=
Date: Thu, 23 Nov 2023 07:07:46 +0000
Message-ID: <MW4PR11MB7054CE2EE5030AA5736E091DEFB9A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231116090512.480373-1-mika.kahola@intel.com>
 <ca392bfade577d862f71a73e939434d191a6f6c1.camel@intel.com>
In-Reply-To: <ca392bfade577d862f71a73e939434d191a6f6c1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB6068:EE_
x-ms-office365-filtering-correlation-id: b52809a9-3973-4b63-076d-08dbebf2e5a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JvCBOk7zVhevDp1a5s2vVySrM6KZWar9CVbqQo4a7Fb1zdWoGuIR3uK5BUM/kbblIC3geGm0it87qmuawDrSCvK/YWm4EiOj92mAovPfus0qn5euRJ+XQLQkLhAH7a3k8xi2fO4Kkcd6w5d2JLKgWcWkQaUikU705WVTN68RSsDG3etan5kANi0/xezLaKRpx8ZmOSJBUHdpDOq1Snrmi73ylv9tTdgh8WQLzD2U+q5jNF0MWSWJyPBPuyGADsIyU6aZavIajwjLHL3CgCy6TD4h7BJuKFKRNCa0lcGoFacOU7tplddJhe8FGa+pFG65eN7slS85toKazcLDSQLpACX233G1/1EP960OX7ezqP0gXCEAcBctO2AWv+ACn7LyPtCcezuENLiSwJ0jgR8JhMsT8XIcRKVaW9uOrF8kzsTO1lOMCwfNrQAmv8C0R4zjQdmr+y9PdtvcDZGKhHr/j7kKtHXHZjanRnS/F5xCWOxeEZBxKYGZjlesg07QBTzYDAdUwCeTpva/OopIov0cWnu3/gEPmMMBGBeC2ujUIqirEQ8t67byfYa0FQwZPI0uElo9h6rNmjq3VtIbTcoBPOkWWKva3FC46pQcZzonusBVfQbWXQgpASXREg9KEXwP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(136003)(376002)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(86362001)(33656002)(5660300002)(4001150100001)(2906002)(8936002)(76116006)(8676002)(110136005)(66946007)(316002)(66476007)(64756008)(66556008)(66446008)(52536014)(38070700009)(41300700001)(9686003)(82960400001)(26005)(83380400001)(55016003)(7696005)(53546011)(6506007)(71200400001)(38100700002)(122000001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VW93eXRjd0JPUXZtS2FnNDlkck5pZ04vYjlzRkJ0eHRBamtFTTVLeG5WMzk2?=
 =?utf-8?B?TVJPQ0FmZkhuK0hUQXJ5T081RGtzMmpRS0RkeWZDOWs4R1VrTCtMU2diT0FJ?=
 =?utf-8?B?SGpKK1dPWTNmVEtCWnhVKzhLN290bG1FMU5FNGhwUVoxblFYN1ZvQkVxRXg5?=
 =?utf-8?B?UVlvMStWZ0QrODg1UnZrZ0JWYUxiMXFoWkRQcW9iYmwwYzZqVVhHYVA5N2xk?=
 =?utf-8?B?UjBJY0hZQzh5UzQrMXhRT3hnQTg5bnJGRGMyN1ozbFFIa1hKVUN1STUwTVZW?=
 =?utf-8?B?b0c4WnFUamZZOXBOQ0x3dGE3anhNRjV4UWlQc3lGWENzZDM5cWJiYmNTY0FB?=
 =?utf-8?B?SEdENml2bXJ5cndHN2NGVThwMTdQTHFqM3FUUzRwMGlFV1lnMTJnRDRDZGk2?=
 =?utf-8?B?QVhraHA2RWcyTUZPanpRalBtZWtzSjM3U1p2TTJKT0pXeFNpY3YrbEVManow?=
 =?utf-8?B?TTYxb210ZENaRkpyTjFzdzRxbDA1YzFMK0ZlM0krc1NLbFljdWxJWDByeW1F?=
 =?utf-8?B?WWMrbWYwYnNUdTY5a2ErK2JNblJLQkhZZDFXN2FYWFJNb2FuNDA5TnFaZlNy?=
 =?utf-8?B?ci9zTDJsYTU2cjlqSkU2dzdqWWMrTXV3QWRiZGg2c1EvWVlzTlQ3cm0rUERk?=
 =?utf-8?B?QnI3c2wzWDIvbWRUWFViTitPR0szZlo3UGliWG5qYXdXdmMwZWNzR01NNHpk?=
 =?utf-8?B?TlVxWXBIazdFQTI5amdlbExxcUNKSkg2blUzOGFoc01LWmRlZys1VTdCS1VG?=
 =?utf-8?B?ZnRBZGtONnVkblh0SkVTd3RWekgyaWRycTNFMlBBeFBqWTdNYzF3WXBkZGt5?=
 =?utf-8?B?MFQzOWJQTzFidnhtZVVUeXB1d1VrVjEveHVUTXMxN0ZEbGdrU1gvbzhDMThQ?=
 =?utf-8?B?ejl4T3VrWU1VTDFDNkpiVXNGNFhWWTMySDgzM3pGSStxSjczek9IVkZPcEVn?=
 =?utf-8?B?ZXY5V2FqZG1xZHRONjlycCtIMmNLdkdEZkJreHVtQ0orYUxiQXh2Unp5YytY?=
 =?utf-8?B?SkxaRi84SFFycTNMYXFDOWxDK0tTcFRsbnNRZVl4Nlk5N0FrRTYxWmZZQkhh?=
 =?utf-8?B?TlJESUpzTVowT1FzTFJtMmF5WmczVEh5eEdBa1ZsQ0tvLzRKb0R1Vzd3Rml0?=
 =?utf-8?B?enA1VzB0eWsxRlFXNGZKbDFzTjR2VEtKSFByd1dpazVrV0Z6ejJ3ZTVVcXRh?=
 =?utf-8?B?Zmg5YTdTR1ZSb285azVRNkhyUlNTK2xKbk1zVlI3RThrbFRXOVNKU2xHWnZW?=
 =?utf-8?B?WnVMdkVyWHptYkdxdUVhR2llbVJ2bE1WME4yNjNKWnBZdDFsUzNIV21tYWVK?=
 =?utf-8?B?Z3RsZW5MbmE5K1UvRFExaDJQOG1WUGR4RU50RWNlSEZpRnZsTEdFZ2JKSnpH?=
 =?utf-8?B?RElTc2hUUDRuN083R251QTRMMnNVTEZJZGtuOTFsOXpCQldvTms0RjVnTnlR?=
 =?utf-8?B?MGQ4aWgwM1NxOHpuaHJvRXNxaWxTbU91NlRkV1h1N2QxOXk4L0MvN1VabEZI?=
 =?utf-8?B?TE9MSlhaSU5aN0Vacjl3bjdQUDNET1lSZlNhcWJlU0dEYW5VNW9NdnZDSmNr?=
 =?utf-8?B?eDROZmRQYUpZV0pTTnRhdklwcDRneEJOcUxiYU8rZC8zb0dkT05vU2FwNEZE?=
 =?utf-8?B?aEFMQXhXSFR4S1gveEUxNzFYUkcxQjJVNDkrYVc2UnJjelM5anJXa2lJUnRq?=
 =?utf-8?B?VFpPOTZZUm1WTVhRdUlKK2xGdWVqUEJESlRRNEJwckU4eUt4azZQakFHNm5p?=
 =?utf-8?B?Y2tFOEtuQW5RUGRXMUVBbjBpMkVpek1ZVEI4T3J5N3B0NkJHM2UrNWtBbURZ?=
 =?utf-8?B?R3NDdW5SQktxekwzdXZUSEhlWHVBWi94a0lvTjQ4ZUpxaXRqUU5OVGwxRE5K?=
 =?utf-8?B?TXhaZGFUelE4YWVFeVI3ZWZpbU9XUjRvaFZoUHZCMUNrMFQyMTJPTzdyczZW?=
 =?utf-8?B?dTBiV3J1clU4ZGtFQ2VEb1EvUWd0cXJIZUkrMDB2bHpZd0pKUGxHWG9EUmV5?=
 =?utf-8?B?MkVEcUVCLzM4QURHZC81TjQ5SXROWXlURkZ4YUMxc2tEUWJlRFphdHFJV2Fx?=
 =?utf-8?B?emhxVXR2ZUphR2hseVNiSXcwZHN2cmdpUHQrNXpEcUVhdFZZTVBTUEhxUDY0?=
 =?utf-8?Q?CDLgh/5cCiJoXuAbxFzsvYWl9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b52809a9-3973-4b63-076d-08dbebf2e5a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 07:07:47.0140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K24bpTk6XJbSZ0hNvfI75Nh9qLpzbphvfSmxlIkPIjk8NSPVpwVULlu2g3vOpwAr6US1s+jQzpMoHk9bqKrwrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use int type for
 entry_setup_frames
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBHb3ZpbmRhcGlsbGFpLCBWaW5v
ZCA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92
ZW1iZXIgMjIsIDIwMjMgMzo1MyBQTQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJl
OiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFVzZSBpbnQgdHlwZSBmb3Ig
ZW50cnlfc2V0dXBfZnJhbWVzDQo+IA0KPiBPbiBUaHUsIDIwMjMtMTEtMTYgYXQgMTE6MDUgKzAy
MDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+IGVudHJ5X3NldHVwX2ZyYW1lcyB2YXJpYWJsZSBp
cyBkZWZpbmVkIGFzIHU4LiBIb3dldmVyLCB0aGUgZnVuY3Rpb24NCj4gPiBjYWxsIGludGVsX3Bz
cl9lbnRyeV9zZXR1cF9mcmFtZXMoKSBjYW4gcmV0dXJuIG5lZ2F0aXZlIGVycm9yIGNvZGUuDQo+
ID4gVGhlcmUgaXMgYSB0eXBlIG1pc21hdGNoIGhlcmUsIHNvIGxldCdzIHN3aXRjaCB0byB1c2Ug
aW50IGhlcmUgYXMNCj4gPiB3ZWxsLg0KPiA+DQo+ID4gRml4ZXM6IDJiOTgxZDU3ZTQ4MCAoImRy
bS9pOTE1L2Rpc3BsYXk6IFN1cHBvcnQgUFNSIGVudHJ5IFZTQyBwYWNrZXQNCj4gPiB0byBiZSB0
cmFuc21pdHRlZCBvbmUgZnJhbWUNCj4gPiBlYXJsaWVyIikNCj4gPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMiArLQ0KPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBSZXZpZXdl
ZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+
DQoNClRoZSBwYXRjaCBpcyBub3cgbWVyZ2VkLiBUaGFua3MgZm9yIHRoZSByZXZpZXchDQoNCi1N
aWthLQ0KPiANCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gaW5kZXggOGQxODAxMzJhNzRiLi4yMDRkYTUwZTNmMjggMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTMxOSw3
ICsxMzE5LDcgQEAgc3RhdGljIGJvb2wgX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9k
ZSA9DQo+ID4gJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGU7DQo+ID4gLcKgwqDCoMKgwqDC
oMKgdTggZW50cnlfc2V0dXBfZnJhbWVzOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCBlbnRyeV9z
ZXR1cF9mcmFtZXM7DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyoNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgICogQ3VycmVudCBQU1IgcGFuZWxzIGRvbid0IHdvcmsgcmVsaWFibHkgd2l0aCBWUlIg
ZW5hYmxlZA0KDQo=
