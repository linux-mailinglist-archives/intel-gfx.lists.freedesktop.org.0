Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 408017B160B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 10:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B70F10E5EC;
	Thu, 28 Sep 2023 08:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E3E710E5EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 08:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695889866; x=1727425866;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jLILSHioIjPIUgcJdTxZooBa5F+2o1gUEJl9E2lOX3A=;
 b=nb47iJdHROqOjFA04JrHql6MusgTlbGXonDMtYEJFrMG6dD9V0Hv2E6E
 gN9qA51NS2KAfg3cCC61J+koPwN0gMxpMXFRx6OrBKhWTDCEVJHMiIpkq
 y3qbEIXkcNvgTWy5xdyREoBOV8G5lSzjACrj9RaTgMuF4dGg6J+xKeHoC
 ey+eFv9sebnfnavQ7taOnUJgu2vBtIc4eTQ4G6KfPzgAXOJqYxdgy9iQn
 zwyCXilhevzZtIRz+mgbMoNYcW9wUeOcZsG53SonfTtHY7CdtcruO4EWe
 FvxqCLy0H92KVscSjOSxU7xRdr8ZfaFy+O6l0GFmmocL5cqy1jCjQpFZt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="367072492"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="367072492"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:31:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="815158767"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="815158767"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Sep 2023 01:31:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 01:31:04 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 28 Sep 2023 01:31:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 28 Sep 2023 01:31:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 28 Sep 2023 01:31:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gq33yJYXlNaVgMHoDisyMALbMWHF5DFowiOYcl8HEdPUK5caPK1LBnsBf/OnP76BWQ02kYgxWIWxzw8JcwExr8tiyalk9T4TQbskh+e/oj+xUsNop599dEopfUdjFM4p7a+NJ0Ee42SYBX8+FqZ6OmFInVE+DX2blPImKJ2Z2oIxe48SYU/XB7v6mr1rYmjlJwqENLGeKPwnAy+XZDw/QadQ2DPkQjq5cbkrZWyRuMcQJ1KvAE1e6nD90QXDET0+16XfVUiYzSvC+WysoSP6auhJc5acWiz/iHFw7dtjVIINUT7PEN2aDHaYxABKECVUH5m25zActiRvlRB5PtLmrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jLILSHioIjPIUgcJdTxZooBa5F+2o1gUEJl9E2lOX3A=;
 b=LN6vSuKtAgp+j80ttIkTq9/pXuCaVg/6/DI1m25WJSO/FD9dhHUjPKrj2+hfNwKtM6THNOyPFd2Wx62Kt9JAewMm5ikDPvx66OV/wJMm83HUG0m11K2Hv8VSabykozHZquLd4V5LdrLL0xcO80WRfVPVzoIws6VooOWyB3YcOyH8NLo8BdWmDCk4KDIpOasTiJpeqtJ55ZOPTcP1vdlZ2qe1NoAo/INHHOPLYdqp+GbUaF6r1Eugce2AzEKhNkBgLW2cBDW3qtHroo+AWyp6hOHETfv1kjweTMhxwMieAki/MMGXqjClyzLYxoWluRqdw7ZM6mgqfynjlEL1mPuLaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH0PR11MB5522.namprd11.prod.outlook.com (2603:10b6:610:d5::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Thu, 28 Sep 2023 08:31:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6792.026; Thu, 28 Sep 2023
 08:31:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
Thread-Index: AQHZ8dhaFksIudTHvk+dVFPsRaPmnLAv2y2AgAANWgA=
Date: Thu, 28 Sep 2023 08:31:02 +0000
Message-ID: <4034cb8624e959ef65b0272427a9c2df625d4004.camel@intel.com>
References: <20230928065210.103376-1-jouni.hogander@intel.com>
 <87cyy2kajy.fsf@intel.com>
In-Reply-To: <87cyy2kajy.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH0PR11MB5522:EE_
x-ms-office365-filtering-correlation-id: 4a334dec-0a9c-4958-95bc-08dbbffd401f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DmOdVmfwahEVERKg3NqgfurMZyMM7C89DT9bGbr8BIkQ1U+zRYjZdotiHj9SOAysB7eOJNZbfj2yiHNDuEzSQRwtxAKdoifa583/2tTpPvpGDGs813xJU7/y88Mt+0A7rO+NL35bS07XiABqr02ZGmMiaAhoxVkxkPdMKwY2JyMijZp7MxA1Uk4eVo+fvnSgHfy6C8xEN6yiUjuo+L+v/hFSnBC7F004cHSEjWW1TbFm4VBv2EXaNlceTjON4Cp4OucI1otHzHmuHivDR4tEsJFOLOBQqnk+6ETDTJX6OE4tMpskeUUwqL5eRT90Lni42Qx0sux1Z/sei9gZcYh04e0Fr2T/QZ09reJ1FGL9gZfPv2oMyjswSC+l3F1NuFP3QTiS5vrq6kWDkWw2LBQLR2d9vyvIGln3z5MwjST4pF7xThFDoHbURffviSgOrnJUU4Fs4IzQf0zlz14tjU+CestxURDdmap5yygvivz2hqsjGkf0aiFN9oPqhXYmcBU2Z6z4/qQJW1kYt2NOTX234MiwwOxR7XeqKGBLKd8zoMpqZaxUGx5ADNB6LCJKP0SCkR2B5jdNv9PQKK0R5VzkR9gUQg6nAL7oNd8Xcnz99WH8r4y9mhl7Z6GlUyYgVZq2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(91956017)(66446008)(38100700002)(8676002)(2906002)(83380400001)(66574015)(38070700005)(6506007)(122000001)(6512007)(66556008)(66946007)(66476007)(110136005)(6486002)(478600001)(5660300002)(4326008)(26005)(8936002)(2616005)(316002)(64756008)(76116006)(71200400001)(41300700001)(36756003)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NzJSV0ZhNlFFQUVYbHNNQUpXZFNBMGhBK1hJbklJaFBsVjJPRVlEMDNNdURy?=
 =?utf-8?B?S3ByeDhMY0tVWG51TjZqdnJsd0tydExjbXM5YlZ6b25aVEpTT3hRdVAva2xo?=
 =?utf-8?B?SWk1UFJTMGNRbjNmNmRBQ0tXTlhjY05PV24zUUl5NlV5V3U3KzVMTHpuQmlv?=
 =?utf-8?B?bnVGSmhDeWx1RlRyNlNmWTdpMzVLS2ZiYTE1RFpNNFdnU2RCQXcxdU41Ujlw?=
 =?utf-8?B?T3ZPbGlwbjRxVVVEclYrcXVjQzBQeVVjYzlpUTlvQUp1OTZ5S25OYmxKSWN3?=
 =?utf-8?B?aVEzWTBUdEgvYSs0WEdpUmZybUtGeE00K1dYTGRnTDA2LzNycEdzR0NXK0pM?=
 =?utf-8?B?aGhpMGlMSXpFL3lXRWhNeHVWbHM0RGltN0FJMWMzTjhHNXdpTGE2Z2d3TVho?=
 =?utf-8?B?WVkycU15QzJEVDdYRWpNK3U2eUZNNVFSbWloc2lSUFBQdXZvM2d2elU1UndM?=
 =?utf-8?B?NnRMck8xSGlheTVWdUF0K3l5UVhBbytieThBM0tZRmRidUZFcTNVTDNCUmkw?=
 =?utf-8?B?UVNLOVlpUHZBU2N3eFJaLzNIWFdvSWtmTU43SDFwM1ZZRlN1NFdCSUFaTXY5?=
 =?utf-8?B?NExheVpFUUMvUERWM2Z1T2JCemJ2SWRBaUg1VXNQbTZvQStWUVJzV0VFNG9k?=
 =?utf-8?B?QkIybnhBbitibUErUy9LMGU4VjZoR0d1Y3FRY1VDLzNqYzNmTUJYL2EvWnFs?=
 =?utf-8?B?eThBcVhPODJPUnF0L0VCbmlIU2NpbDV3ZmNBUGxHZ0pIZW1pQ0ZNc2daZHor?=
 =?utf-8?B?K1hUL3hGK3NBOGN5YlhOcTdOOVBiTUZFWFIyUndVT0lyelorNmwrdmN1SURG?=
 =?utf-8?B?c2NTalpmZExYWEhxR3F2YVNIU1pOSW1ibTBoT2dNT1J5NzNGU2s5MytRWHJU?=
 =?utf-8?B?RFFjVTBlcmwrSWJDbmI5eG9IK21vb2FVUHVCWjJhQkRXbWgzdmxkdndKQVl6?=
 =?utf-8?B?U2pNa1JpQXJGSndsRlRMRWg3ZXozWGFEZ1pRekRaRHdlNFA1YWtwWFRHUHNs?=
 =?utf-8?B?VUxteUVVTjl6Y3BNcm5pMFJ0cVM3d2RGNC9xcE9YZ3NNRnpWbDN2WXdLYXRS?=
 =?utf-8?B?bGM2QzZlbWNxUlh3Sk1iV0VxdVh2SUdhMi9UWXp1UUd3d1lNQ2NvNlloU2t3?=
 =?utf-8?B?TmJpZnE5Rmgrc2tPNXczNVBqdEFGckM2VHV2dDN1bEFpSTZpcVlWK1pjcm5v?=
 =?utf-8?B?OGErUTVKcTRKTWNtTFAyaTMwVFlEWHlwTWk4QmtZaGRGSkplQVJuemROWkV0?=
 =?utf-8?B?S0cvN1REYStZdldCL1d6Qnl3R0x4ZjF4aWh5eXQ4YXdROUVQbjJON1BaWjI4?=
 =?utf-8?B?TjVzMUV6Ukg1am1wRkNrcjdFRUlRbXJ1ZlBIZmFZZnp3US9qR0k5WHF0RjRx?=
 =?utf-8?B?ZURWMnFpaGh5eFBLSkpaVUNZMSs5VERBaUh1QjJWM3Z0MDhuYThEcSs1Z3Z4?=
 =?utf-8?B?SkhkblpsMnlFZVIrVFZvTWJ3OUVZRFBia2R4ZEc1WWhaTndsYkhBSzkwNmNU?=
 =?utf-8?B?R0JXcGFndjNUclNVQm1zWTluNitrNkFaNE5CYXVWYjN3SEtpZFlPTG1NelNE?=
 =?utf-8?B?b0JucFk1U3NNVkZ1NFJUdGtFWlQ5UFY1UjRmV3E3cXprSjdnbkozRXpOdWJq?=
 =?utf-8?B?bmJwSTVMRTNweFVnMy9INmJmL20zSVQ1emlHSWNuZFU5S0dWWDh6RHhwMUU2?=
 =?utf-8?B?YXZWVExhREpJNy9aYXN5U1JpM0NXeWlodHdqOXkrdnA5YTdTQnBkUEU0ekds?=
 =?utf-8?B?NS9XSmNBWlJVN0dEYlhLKzlZaElxNTdJRmNnLysrMVVKMUJhV1JTVkZzUGhM?=
 =?utf-8?B?dzZkWW9SWlBBSDVCUkVsVDZDL3pEMEIvanBCWnFoMDg4WjZNN0c4aDh0VFMy?=
 =?utf-8?B?QmxCclZaa0hyUWt5RDNkbGFCdmpFdUlOc0N2VTNnbTJxSmFPNnF4aXpqVFFp?=
 =?utf-8?B?THZWVkhQTEhSdUdOYmZUV3EyRzgrdHNUdWZpQWZ5djBKUndiajRRbUMwY0tF?=
 =?utf-8?B?bVI3cjVmbjlZcC9XNHZabHNiUkwvME9yQU1KdkVnRUpYbGVWMThXUVFLcjU3?=
 =?utf-8?B?UjNhOXN5MGI5UFdVazdLaWlXTVRRUE01dkw1TEd0SFlHMmduNlc0cjlScXEw?=
 =?utf-8?B?SEh5RGdDSnJSWmZVbldwYW9oY0RxaTFBQjNkSDg4Mkw2UTV6aVQ4YnB4S0pU?=
 =?utf-8?B?NlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F9384CDAE618104B9ABF2FD144114138@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a334dec-0a9c-4958-95bc-08dbbffd401f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 08:31:02.6407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xb+E4SZbjrqY2UoZ/Xqv8/E6KXfP9kFQLVgPsp31naUc2T750eOcPBePzyclBhbm7Big6G9jweL02d4HbVNEFIhCl5NViujhXcX0E6xM27E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5522
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Warn on if set frontbuffer
 return value is not NULL on release
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA5LTI4IGF0IDEwOjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAyOCBTZXAgMjAyMywgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IGk5MTVfZ2VtX29iamVjdF9zZXRfZnJvbnRidWZmZXIgcmV0dXJu
cyBzZXQgZnJvbnRidWZmZXIgcG9pbnRlci7CoA0KPiA+IFdoZW4gd2UNCj4gPiBhcmUgcmVsZWFz
aW5nIGZyb250YnVmZmVyIHdlIGFyZSBjbGVhcmluZyB0aGUgcG9pbnRlciBmcm9tIHRoZQ0KPiA+
IG9iamVjdC4gV2Fybg0KPiA+IG9uIGlmIHJldHVybiB2YWx1ZSBpcyBub3QgbnVsbC4NCj4gPiAN
Cj4gPiB2MjogSW5zdGVhZCBvZiBpZ25vcmluZyBkbyBkcm1fV0FSTl9PTg0KPiA+IA0KPiA+IENj
OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gU2lnbmVk
LW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zyb250YnVmZmVy
LmMgfCAzICsrLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Zyb250YnVmZmVyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IGluZGV4IGQ1NTQwYzczOTQwNC4uOTUzMTkzMDFj
ZjJiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZnJvbnRidWZmZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZnJvbnRidWZmZXIuYw0KPiA+IEBAIC0yNTksNyArMjU5LDggQEAgc3RhdGljIHZvaWQgZnJv
bnRidWZmZXJfcmVsZWFzZShzdHJ1Y3Qga3JlZg0KPiA+ICpyZWYpDQo+ID4gwqANCj4gPiDCoMKg
wqDCoMKgwqDCoMKgaTkxNV9nZ3R0X2NsZWFyX3NjYW5vdXQob2JqKTsNCj4gPiDCoA0KPiA+IC3C
oMKgwqDCoMKgwqDCoGk5MTVfZ2VtX29iamVjdF9zZXRfZnJvbnRidWZmZXIob2JqLCBOVUxMKTsN
Cj4gPiArwqDCoMKgwqDCoMKgwqBkcm1fV0FSTl9PTigmaW50ZWxfYm9fdG9faTkxNShvYmopLT5k
cm0sDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X2dlbV9v
YmplY3Rfc2V0X2Zyb250YnVmZmVyKG9iaiwgTlVMTCkgIT0NCj4gPiBOVUxMKTsNCj4gDQo+IEkn
bSBpbiB0aGUgY2FtcCB0aGF0IHNheXMgZHJtX1dBUk5fT04oKSBhbmQgZnJpZW5kcyBzaG91bGQg
bm90DQo+IGNvbnRhaW4NCj4gYW55IGZ1bmN0aW9uYWwgYWN0aW9ucywgYW5kIGl0IHNob3VsZCBq
dXN0IGJlIGZvciBjaGVja3MuIEkuZS4gaWYgeW91DQo+IHJlbW92ZWQgYWxsIHRoZSB3YXJucywg
dGhpbmdzIHdvdWxkIHN0aWxsIHdvcmssIGFuZCBsaW5lcyB0aGF0IGRvDQo+IHN0dWZmDQo+IHN0
YW5kIG91dCBhbmQgYXJlbid0IGhpZGRlbiBpbiBXQVJOIHBhcmFtZXRlcnMuDQo+IA0KPiBMaWtl
IHNvOg0KPiANCj4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGk5MTVfZ2VtX29iamVjdF9zZXRfZnJv
bnRidWZmZXIob2JqLCBOVUxMKTsNCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9XQVJOX09OKCZpbnRl
bF9ib190b19pOTE1KG9iaiktPmRybSwgcmV0KTsNCg0KVGhhbmsgeW91IEphbmkgZm9yIGJyaW5n
aW5nIHVwIHRoaXMgYXNwZWN0LiBKdXN0IHNlbnQgYSBuZXcgdmVyc2lvbiBvZg0KdGhpcyBwYXRj
aC4gUGxlYXNlIGNoZWNrLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IEJSLA0K
PiBKYW5pLg0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3Bpbl91bmxvY2soJmludGVsX2JvX3Rv
X2k5MTUob2JqKS0NCj4gPiA+ZGlzcGxheS5mYl90cmFja2luZy5sb2NrKTsNCj4gPiDCoA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBpOTE1X2FjdGl2ZV9maW5pKCZmcm9udC0+d3JpdGUpOw0KPiANCg0K
