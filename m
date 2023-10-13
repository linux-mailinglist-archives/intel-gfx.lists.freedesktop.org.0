Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7CC7C87FE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 16:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC1510E145;
	Fri, 13 Oct 2023 14:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68CD10E05C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 14:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697208172; x=1728744172;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yejy6l7ATBhSD086LXUatLd2s3pkpo9xYaIDJ/vXnvI=;
 b=V/xInXM6MxFzZDJI8G23MLDWfwjOzYwkTfflXNf8De4qZpiGFnLiEgwf
 Xqoz1kzs/Ku8QrljXyniM26DNOElnzrCTJgk+jbmh1YfxUT8+wMevooHU
 IGPP4pg9uba2e7zzpo9o20Xc39PmEJr6g/0BCGsZLLiHd2AkkJIKJ/af6
 HjXUM0DHZRkhorms+ZaWp5zs6TPTE0ukZFxvyVK9ZXmN6MWR1Hum4EPoh
 MX2bxEJbw3jWBalQMYWWHppUaRjlZO/6ap+uP0OyY/RRx+6cTMkBYcH3L
 Ndzvn/tfEaAPCJ1XdVolIeVhK//NvDrUARe2htPLwYpaAACPkrLzMqhhO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="416244183"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="416244183"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 07:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="878563091"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="878563091"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 07:42:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 07:42:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 07:42:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 07:42:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 07:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QLZM3Vyg6WvEqPFob6rjJWxjMhgek2rAQ6SY5vMaP/ocX2mDEll86qlxttEV8MXZHxjSXOG93pYnRLqyENB1yt/QZMERQ4FSKEPUd1NarZ3aFdnNNpwSQupgdk4ab3VFLfzTtu5blpCp2JfSUNhIfK5w2dcEaJc+5kl4n1CnhRdHKZhWvDNFao7AEbktIKifNkRihfUx7sZLVaC1qNPjDbW/YKAgaeqFRVYau92spmGp9JAPFD73gICjFx/XVt59qgY3qVyUx2Sl1VO72AeqVN6R2rKW+5+HlKt6ZsOrpd9VCRGBDy8eILQ96Iq0qksREizy+FXce4f4z2RbfL494Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yejy6l7ATBhSD086LXUatLd2s3pkpo9xYaIDJ/vXnvI=;
 b=TUUtSzUIzZ9EcWalubP33TDbGaJABNPKrZgpk8dDHHo103LUK5EzDQ+tjz6bn8ajGr6N3AvmhHZUlLKIonRy1UTQ7tDENz34wQpASpwuo0yEcU5rFDaat8HuYcOz022+PA3x+nrG/S99/TM9DFjHvW5Bw1gDfb2++jTTM4OSVExs03N8Drj/Xc/njCjC8SCgbluFqzOgYAn+59JZpDFxAkQgcd3/ETMHVId2njCrpsPyHT0dRKhUkgoR1prJdHANBkMpzz83uFOGbUzvHlgCqdPQKVVqmYyiaXkodvmAbfY/HWdIT/fUiLnkKnPE+QCIPxwS09GntP2c61FwfCZCGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB7020.namprd11.prod.outlook.com (2603:10b6:806:2af::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.32; Fri, 13 Oct
 2023 14:42:49 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::1f11:8a4b:655b:589d]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::1f11:8a4b:655b:589d%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 14:42:49 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v13 4/7] drm/i915: No TLB invalidation on suspended GT
Thread-Index: AQHZ/V5UTP6eggzGz0+CAjDWNME5N7BG6LuAgADXQQA=
Date: Fri, 13 Oct 2023 14:42:49 +0000
Message-ID: <CH0PR11MB54443725C13D61E8D8EC164BE5D2A@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-5-jonathan.cavitt@intel.com>
 <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
In-Reply-To: <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB7020:EE_
x-ms-office365-filtering-correlation-id: 87c8efa1-c4db-4b95-a041-08dbcbfaac30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eGkGYoC0tpUezxewNW80zMOBW2KbNL5Vr48475MMFs1/IIGofTwka5xr6wwuKz1byrX3QNfR3Cnw8iDfGB+UR2uYoWem9ALmk0vfB4ryqUESwLWT4wT2WXVxw4uEzVMU4r5YTt3DYi2T5q5T1/4ksZGzy1vdpQc9Qkfl+JxnDVOWqxoWBrMb+XwFe/y33nWZBCudROZ6JSwwae4h5zIwLBwrzzHGNtQ0NkkQBkqaF0NXF88e4K5HUX/6cwYyRdPT7+GBRTqRK+/p9p1cFbik6QaHjY0jSKJ+8K3N+MO15g+UD64onncGgX2XRGFd0Lt0YSF4btTMooGCVlKaCm5QOR+5jjQ20r915Z2x/hoG0Ingi/sY4fxt1Q9ex8vuid4JrQns7mssMAM5I1Y1+CcEYvSPNcF+Psc+7WAlXqXP+3Fcdb1JuW6ZGBWg94++36F1xB0nkSYuzQU250T2HIOIn2Z0Z+sNBu/gEZSq5uF4oI45pjVWh/z3VP9L/qTimzTHcnT3RRU+oeUXBVLrMCN1+lXFhn2kmwwoP6pMEA24ohauaTqb/4+eJyUPB31iiywi71sIY94/2tVntwiikZE+r82lh7HhYucyuJWEbj8YJTvRiCDKTRVKDsS2eOHBWGP7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(346002)(366004)(136003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(6506007)(55016003)(66899024)(478600001)(7696005)(53546011)(110136005)(71200400001)(9686003)(83380400001)(2906002)(86362001)(38100700002)(76116006)(15650500001)(66556008)(38070700005)(52536014)(316002)(82960400001)(66446008)(122000001)(64756008)(8676002)(26005)(5660300002)(4326008)(41300700001)(8936002)(66476007)(66946007)(54906003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SyticFJvQ056OFVCSi9vbVduZmN3a3JNWC9vNzdhOHlsQ2FJRFI2cy9qUVds?=
 =?utf-8?B?bmNSdENWWVoyNFlWdkpYajlyZzRORVZCSUluNHY5N01haTFKK1M1VVp5Z3dk?=
 =?utf-8?B?dzU2dE11MFVReWJudE9la0p5b0xRaDl5WUMxc25WZ25jVjJkWmF3ZmFjeG1O?=
 =?utf-8?B?N3hwS2dKZjZycUt1V29mM2laTzdVa2VVc0hqS1BldTJjN3JqVm9rQThQOHl3?=
 =?utf-8?B?ZUpyWlNvNkpHRG4venNOaTFLSVpOUVY2UC9SSG5GWkN1Q3pQbHZQdWkzWER0?=
 =?utf-8?B?a2diSm5lMm1EQ1ZteEZMb3prNFFpUDFsYnFNbHNrTDBwMFRaRENwdVpEZUFD?=
 =?utf-8?B?Rmp0ZTM1MUJYUmk4TU9kd0VXbXF3V1pCcENkemRiVTRobzZ6WHRRd0tZYkw0?=
 =?utf-8?B?UnpSVGFVNVNpOWRqT2J6ZXAzRmc1a2JHN3V2blViOTd4dDJPNUErQUxtUFdW?=
 =?utf-8?B?c0F2SWh0aTYyaFF6N2pzcHdVd1Qxb1lLRVBJcHdnN0VKNUhZWk4wczdUdHdY?=
 =?utf-8?B?U2lVSlE3UXh5cCtzSUdaZU42WTBvSzBUR0J2NXhkMnAvdVNtQ09DSlRqTmIr?=
 =?utf-8?B?aFhEeGE2T0k0TXBNQUU5SWRrV0F1d1BEVnMrN2dVRFR0cW16RHFhRGpmR2ZC?=
 =?utf-8?B?VkJPbHRUY2xXeFJLamw5OUErWWJaSC9VTU5iOEF4eWJUZThPbnU1bTZFOTVx?=
 =?utf-8?B?cHBhVGthTm9sQmdzYWJBQUh4RUNZMzRoeG10WjhjYXRlMnJZaHo5MlBwb1hW?=
 =?utf-8?B?eDdpNGZuODlUOG9jUnpFVy9lM0R4Z0ZwTHVXYTlIQkk4akZQN01temg0UGFi?=
 =?utf-8?B?VkpnWG1rT3N4M1JSK1pHTTVwUzVSV1VBaDJ6U1duYVZKaDVSM2NJWjJ4dVdi?=
 =?utf-8?B?c0xyWHFlYU40T2JBcGt1OXlzOWxBem4rMjZNR29hQnl6QkV6bUxSby9lQmsv?=
 =?utf-8?B?dk1USVJhb1F2NmNyU3krNTZua3V1VmxRQ1FTSG0vSU9lMytWWUZNWUZmSjZU?=
 =?utf-8?B?MkNGQXVXc0RHRXkxVWliSHZRbDdVZTFjSGM2VVFxTE1BRDJoM1FsS2szay9J?=
 =?utf-8?B?a0RMaWFuQUNGNHAyU05Sc3lYb2w4N3NtSlk3cjJVYzVmSDZ5akNncDFaR1p1?=
 =?utf-8?B?a09uOEJFTG1nRUJlb1czS1NRcVdVZmJVaDBPYm9RdTVyQUhUejIzVElTd1M4?=
 =?utf-8?B?TnRHSHdxMG0wSWlGcUdMa1BpZFFvVk9Ecmt1M0hjT1lQcVB3MUJzempwN1Rv?=
 =?utf-8?B?Y1JPYUpQNWVEVk40ZThZaE9YVXVFNXNNcFp4czBKako2eXVpKzQydlJTKzky?=
 =?utf-8?B?VitteDNLRGE0NnVXODVvNE9WSzBNYnFnamtweTB2NVFMUXg2UFovaWNDTjdj?=
 =?utf-8?B?ZWJjVWV2cURidzhtRVYvSnRHdldYdE55aGtTekpnODNySG1SSGFzQ1I5cTVT?=
 =?utf-8?B?Qk9OeWlIQ05hM3BreHRBdXhXMjdQYXZhNitUcm5ST25UbTRCVlF0bEpvM3BZ?=
 =?utf-8?B?ak44Y3ZZTjE1ckxVbkdoTExKL2ZQREZaYmU0MDc5VDJIa1JBb2N4eVlNZDZy?=
 =?utf-8?B?dW5aTVV4N1ZWN3EvOWw1SDNnNmJqSXkxUDhWVWlFSndJREZrY2FUVlNCeSs5?=
 =?utf-8?B?Y1hKWXZ6Z21BZFhKcDY4VThNRGlYaG5HTytGOS9LRXdML3A1akZCV1p3bUdh?=
 =?utf-8?B?SjFVdXdkQVUzR1k3YXhRcXVBenRWZEZqQWZzbXJNMkI2YmNxclNTSzVLYmNT?=
 =?utf-8?B?Q29TbnJBd0ZPVDZmUkJ1YjZmOGlYRTJKbGE2OTVvaHk4Q2NaWnhIN21qWldD?=
 =?utf-8?B?OXJQWlhmNmJOT2JqaURZT3JzbThxZUxra3VHeGhCWUlDRUF3dU9kS3FHa3N4?=
 =?utf-8?B?d3NBVHhiRFlNS1pRd2RyZU5pT1krdjA3cU9UTzJkcXZScVcxTDVqbGZoUGlM?=
 =?utf-8?B?ckpWOW9NNm5sU2pKK0g5ZFVaUFo3cVp0UGVZYTR5ZW9Md3F1UkhERXNnbk53?=
 =?utf-8?B?cXhlbTk0RTdtaUpTUzBFQlM3TG1mQ2psbHoxaFZDQ3J4VFVBbzQ0cGQ0WDMw?=
 =?utf-8?B?MmVSZzM3OHFDLzFWOTZ4dzhCaHB4Y0dTUmVvSUIzUTY1VmtUaWtLVXphTmRO?=
 =?utf-8?Q?EOTNAllgzYjXO2pOvKcP6h6vy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c8efa1-c4db-4b95-a041-08dbcbfaac30
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2023 14:42:49.3902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gnw1kPfJsUHQ8YZarCPObYZGtfYznTxDbxD1WWF6wt7jopo9cXldI6rz53Vn41eX8fSqAwrikPfCLIeS/qzuo6mtO38/2cu3UeqJ80cyzKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7020
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEhhcnJpc29uLCBKb2huIEMgPGpvaG4u
Yy5oYXJyaXNvbkBpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIE9jdG9iZXIgMTIsIDIwMjMg
NjowOCBQTQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogR3VwdGEsIHNhdXJhYmhnIDxz
YXVyYWJoZy5ndXB0YUBpbnRlbC5jb20+OyBjaHJpcy5wLndpbHNvbkBsaW51eC5pbnRlbC5jb207
IElkZGFtc2V0dHksIEFyYXZpbmQgPGFyYXZpbmQuaWRkYW1zZXR0eUBpbnRlbC5jb20+OyBZYW5n
LCBGZWkgPGZlaS55YW5nQGludGVsLmNvbT47IFNoeXRpLCBBbmRpIDxhbmRpLnNoeXRpQGludGVs
LmNvbT47IERhcywgTmlybW95IDxuaXJtb3kuZGFzQGludGVsLmNvbT47IEtyenlzenRvZmlrLCBK
YW51c3ogPGphbnVzei5rcnp5c3p0b2Zpa0BpbnRlbC5jb20+OyBSb3BlciwgTWF0dGhldyBEIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPjsgdHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29t
OyBqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20NClN1YmplY3Q6IFJlOiBbUEFUQ0ggdjEzIDQv
N10gZHJtL2k5MTU6IE5vIFRMQiBpbnZhbGlkYXRpb24gb24gc3VzcGVuZGVkIEdUDQo+IA0KPiBP
biAxMC8xMi8yMDIzIDE1OjM4LCBKb25hdGhhbiBDYXZpdHQgd3JvdGU6DQo+ID4gSW4gY2FzZSBv
ZiBHVCBpcyBzdXNwZW5kZWQsIGRvbid0IGFsbG93IHN1Ym1pc3Npb24gb2YgbmV3IFRMQiBpbnZh
bGlkYXRpb24NCj4gPiByZXF1ZXN0IGFuZCBjYW5jZWwgYWxsIHBlbmRpbmcgcmVxdWVzdHMuIFRo
ZSBUTEIgZW50cmllcyB3aWxsIGJlDQo+ID4gaW52YWxpZGF0ZWQgZWl0aGVyIGR1cmluZyBHdUMg
cmVsb2FkIG9yIG9uIHN5c3RlbSByZXN1bWUuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBGZWkg
WWFuZyA8ZmVpLnlhbmdAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIENh
dml0dCA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT4NCj4gPiBDQzogSm9obiBIYXJyaXNvbiA8
am9obi5jLmhhcnJpc29uQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8
YW5kaS5zaHl0aUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQWNrZWQtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+ID4gQWNrZWQtYnk6IE5pcm1veSBEYXMgPG5p
cm1veS5kYXNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjLmggICAgICAgIHwgIDEgKw0KPiA+ICAgLi4uL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgMjIgKysrKysrKysrKysrLS0tLS0tLQ0KPiA+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwgIDcgKysr
KysrDQo+ID4gICAzIGZpbGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiA+IGlu
ZGV4IDA5NDk2MjhkNjlmOGIuLjJiNmRmZTYyYzhmMmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuaA0KPiA+IEBAIC01MzcsNCArNTM3LDUgQEAgaW50IGlu
dGVsX2d1Y19pbnZhbGlkYXRlX3RsYl9lbmdpbmVzKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yyk7DQo+
ID4gICBpbnQgaW50ZWxfZ3VjX2ludmFsaWRhdGVfdGxiX2d1YyhzdHJ1Y3QgaW50ZWxfZ3VjICpn
dWMpOw0KPiA+ICAgaW50IGludGVsX2d1Y190bGJfaW52YWxpZGF0aW9uX2RvbmUoc3RydWN0IGlu
dGVsX2d1YyAqZ3VjLA0KPiA+ICAgCQkJCSAgICBjb25zdCB1MzIgKnBheWxvYWQsIHUzMiBsZW4p
Ow0KPiA+ICt2b2lkIHdha2VfdXBfYWxsX3RsYl9pbnZhbGlkYXRlKHN0cnVjdCBpbnRlbF9ndWMg
Kmd1Yyk7DQo+ID4gICAjZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiBpbmRleCAxMzc3Mzk4YWZjZGZhLi4zYTBk
MjAwNjQ4NzhhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+ID4gQEAgLTE3OTYsMTMgKzE3OTYsMjQgQEAgc3Rh
dGljIHZvaWQgX19ndWNfcmVzZXRfY29udGV4dChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGlu
dGVsX2VuZ2luZV9tYXNrX3Qgc3QNCj4gPiAgIAlpbnRlbF9jb250ZXh0X3B1dChwYXJlbnQpOw0K
PiA+ICAgfQ0KPiA+ICAgDQo+ID4gLXZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25fcmVzZXQoc3Ry
dWN0IGludGVsX2d1YyAqZ3VjLCBpbnRlbF9lbmdpbmVfbWFza190IHN0YWxsZWQpDQo+ID4gK3Zv
aWQgd2FrZV91cF9hbGxfdGxiX2ludmFsaWRhdGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiA+
ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9ndWNfdGxiX3dhaXQgKndhaXQ7DQo+ID4gKwl1bnNp
Z25lZCBsb25nIGk7DQo+ID4gKw0KPiA+ICsJaWYgKEhBU19HVUNfVExCX0lOVkFMSURBVElPTihn
dWNfdG9fZ3QoZ3VjKS0+aTkxNSkpIHsNCj4gV2h5IHRoZSBjaGFuZ2UgZnJvbSAnaWYoIWlzX2F2
YWlsYWJsZSkgcmV0dXJuJyB0byAnaWYoSEFTXykge2RvU3R1ZmZ9Jz8NCg0KDQpJIGZlZWwgbGlr
ZSB0aGlzIHF1ZXN0aW9uIGhhcyB0d28gcGFydHMsIHNvIEknbGwgYW5zd2VyIHRoZW0gc2VwYXJh
dGVseToNCg0KMS4gV2h5IEhBU19HVUNfVExCX0lOVkFMSURBVElPTiBhbmQgbm90IGludGVsX2d1
Y190bGJfaW52YWxpZGF0aW9uX2lzX2F2YWlsYWJsZT8NCg0KV2FrZV91cF9hbGxfdGxiX2ludmFs
aWRhdGUgaXMgY2FsbGVkIGR1cmluZyB0aGUgc3VzcGVuZC9yZXN1bWUgcGF0aCwgc3BlY2lmaWNh
bGx5IGluIHRoZQ0KbWlkZGxlIG9mIHN1c3BlbmQuICBJdCdzIHJlcXVpcmVkIGZvciBpdCB0byBi
ZSBjYWxsZWQgaGVyZSB0byBjbGVhbiB1cCBhbnkgaW52YWxpZGF0aW9ucyBsZWZ0DQppbiB0aGUg
cXVldWUgZHVyaW5nIHRoZSBzdXNwZW5kL3Jlc3VtZSBwaGFzZSBiZWNhdXNlIHRoZXkgYXJlIG5v
IGxvbmdlciB2YWxpZCByZXF1ZXN0cy4NCkhvd2V2ZXIsIHRoZSBzdXNwZW5kL3Jlc3VtZSBwaGFz
ZSBhbHNvIHJlc2V0cyBHdUMsIHNvIGludGVsX2d1Y19pc19yZWFkeSByZXR1cm5zIGZhbHNlLg0K
SW4gc2hvcnQsIHVzaW5nIGludGVsX2d1Y19pbnZhbGlkYXRpb25faXNfYXZhaWxhYmxlIHdhcyBj
YXVzaW5nIHVzIHRvIHNraXAgdGhpcyBjb2RlIHNlY3Rpb24NCmluY29ycmVjdGx5LCByZXN1bHRp
bmcgaW4gc3B1cmlvdXMgR3VDIFRMQiBpbnZhbGlkYXRpb24gdGltZW91dCBlcnJvcnMgZHVyaW5n
IGd0IHJlc2V0Lg0KDQoNCjIuIFdoeSB1c2UgYSBwb3NpdGl2ZSBjaGVjayB0byBwZXJmb3JtIGFu
ZCBub3QgYSBuZWdhdGl2ZSBjaGVjayB0byBza2lwPw0KDQpJbiBwYXRjaCAzLCB3YWtlX3VwX2Fs
bF90bGJfaW52YWxpZGF0ZSB3YXMgb3JpZ2luYWxseSBjYWxsZWQgdW5pdmVyc2FsbHkgb24gYWxs
IHBsYXRmb3Jtcw0KZHVyaW5nIGludGVsX2d1Y19zdWJtaXNzaW9uX3Jlc2V0LCB3aGljaCBpcyBp
bmNvcnJlY3QgYW5kIG5vdCBob3cgd2FzIHJlaW1wbGVtZW50ZWQgaGVyZS4NCkkgZGlzY292ZXJl
ZCB0aGlzIHdhcyB0aGUgY2FzZSBhbmQgcmV0cm9hY3RpdmVseSBjb3JyZWN0ZWQgaXQsIGFzIHNl
ZW4gYmVsb3cuDQpCZWNhdXNlIG9mIGhvdyBpbnRlbF9ndWNfc3VibWlzc2lvbl9yZXNldCBpcyBz
dHJ1Y3R1cmVkLCBhIG5lZ2F0aXZlIGNoZWNrIHRvIHNraXAgd291bGRuJ3QNCm1ha2UgbXVjaCBz
ZW5zZSB0aGVyZSwgc28gSSB1c2VkIGEgcG9zaXRpdmUgY2hlY2sgdG8gcGVyZm9ybSBpbnN0ZWFk
LiAgVGhpcyBpcyBhIGhvbGRvdmVyIGZyb20NCnRoYXQgaW1wbGVtZW50YXRpb24sIGFuZCB3YXMg
a2VwdCB0byBtYWludGFpbiBjb25zaXN0ZW5jeSBiZXR3ZWVuIHBhdGNoZXMgMyBhbmQgNC4gIEl0
J3MNCnByb2JhYmx5IG5vdCBhcyBiaWcgb2YgYSBkZWFsIGFzIEknbSBpbWFnaW5pbmcsIGJ1dCBJ
IHRoaW5rIGl0IHdvdWxkIGJlIGF3a3dhcmQgaWYgdGhlIGluaXRpYWwNCmltcGxlbWVudGF0aW9u
IGluIGludGVsX2d1Y19zdWJtaXNzaW9uX3Jlc2V0IGFuZCB0aGUgcmVpbXBsZW1lbnRhdGlvbiBp
bg0Kd2FrZV91cF9hbGxfdGxiX2ludmFsaWRhdGUgd2VyZW4ndCBzdXBlcmZpY2lhbGx5IHRoZSBz
YW1lLCBldmVuIGlmIHRoZXkgd2VyZSBmdW5jdGlvbmFsbHkNCmVxdWl2YWxlbnQgb3RoZXJ3aXNl
Lg0KDQoNCi1Kb25hdGhhbiBDYXZpdHQNCg0KDQo+IA0KPiBKb2huLg0KPiANCj4gPiArCQl4YV9s
b2NrX2lycSgmZ3VjLT50bGJfbG9va3VwKTsNCj4gPiArCQl4YV9mb3JfZWFjaCgmZ3VjLT50bGJf
bG9va3VwLCBpLCB3YWl0KQ0KPiA+ICsJCQl3YWtlX3VwKCZ3YWl0LT53cSk7DQo+ID4gKwkJeGFf
dW5sb2NrX2lycSgmZ3VjLT50bGJfbG9va3VwKTsNCj4gPiArCX0NCj4gPiArfQ0KPiA+ICsNCj4g
PiArdm9pZCBpbnRlbF9ndWNfc3VibWlzc2lvbl9yZXNldChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMs
IGludGVsX2VuZ2luZV9tYXNrX3Qgc3RhbGxlZCkNCj4gPiArew0KPiA+ICAgCXN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZTsNCj4gPiAgIAl1bnNpZ25lZCBsb25nIGluZGV4Ow0KPiA+ICAgCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7DQo+ID4gLQl1bnNpZ25lZCBsb25nIGk7DQo+ID4gICANCj4gPiAgIAlp
ZiAodW5saWtlbHkoIWd1Y19zdWJtaXNzaW9uX2luaXRpYWxpemVkKGd1YykpKSB7DQo+ID4gICAJ
CS8qIFJlc2V0IGNhbGxlZCBkdXJpbmcgZHJpdmVyIGxvYWQ/IEd1QyBub3QgeWV0IGluaXRpYWxp
c2VkISAqLw0KPiA+IEBAIC0xODMzLDEyICsxODQ0LDcgQEAgdm9pZCBpbnRlbF9ndWNfc3VibWlz
c2lvbl9yZXNldChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIGludGVsX2VuZ2luZV9tYXNrX3Qgc3Rh
bGwNCj4gPiAgIAkgKiBUaGUgZnVsbCBHVCByZXNldCB3aWxsIGhhdmUgY2xlYXJlZCB0aGUgVExC
IGNhY2hlcyBhbmQgZmx1c2hlZCB0aGUNCj4gPiAgIAkgKiBHMkggbWVzc2FnZSBxdWV1ZTsgd2Ug
Y2FuIHJlbGVhc2UgYWxsIHRoZSBibG9ja2VkIHdhaXRlcnMuDQo+ID4gICAJICovDQo+ID4gLQlp
ZiAoSEFTX0dVQ19UTEJfSU5WQUxJREFUSU9OKGd1Y190b19ndChndWMpLT5pOTE1KSkgew0KPiA+
IC0JCXhhX2xvY2tfaXJxKCZndWMtPnRsYl9sb29rdXApOw0KPiA+IC0JCXhhX2Zvcl9lYWNoKCZn
dWMtPnRsYl9sb29rdXAsIGksIHdhaXQpDQo+ID4gLQkJCXdha2VfdXAoJndhaXQtPndxKTsNCj4g
PiAtCQl4YV91bmxvY2tfaXJxKCZndWMtPnRsYl9sb29rdXApOw0KPiA+IC0JfQ0KPiA+ICsJd2Fr
ZV91cF9hbGxfdGxiX2ludmFsaWRhdGUoZ3VjKTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+ICAgc3Rh
dGljIHZvaWQgZ3VjX2NhbmNlbF9jb250ZXh0X3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZSkNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
dWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gPiBpbmRleCA5
OGIxMDMzNzViN2FiLi4yN2Y2NTYxZGQ3MzE5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5jDQo+ID4gQEAgLTY4OCw2ICs2ODgsOCBAQCB2b2lkIGludGVsX3Vj
X3N1c3BlbmQoc3RydWN0IGludGVsX3VjICp1YykNCj4gPiAgIAkvKiBmbHVzaCB0aGUgR1NDIHdv
cmtlciAqLw0KPiA+ICAgCWludGVsX2dzY191Y19mbHVzaF93b3JrKCZ1Yy0+Z3NjKTsNCj4gPiAg
IA0KPiA+ICsJd2FrZV91cF9hbGxfdGxiX2ludmFsaWRhdGUoZ3VjKTsNCj4gPiArDQo+ID4gICAJ
aWYgKCFpbnRlbF9ndWNfaXNfcmVhZHkoZ3VjKSkgew0KPiA+ICAgCQlndWMtPmludGVycnVwdHMu
ZW5hYmxlZCA9IGZhbHNlOw0KPiA+ICAgCQlyZXR1cm47DQo+ID4gQEAgLTczNiw2ICs3MzgsMTEg
QEAgc3RhdGljIGludCBfX3VjX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfdWMgKnVjLCBib29sIGVuYWJs
ZV9jb21tdW5pY2F0aW9uKQ0KPiA+ICAgDQo+ID4gICAJaW50ZWxfZ3NjX3VjX3Jlc3VtZSgmdWMt
PmdzYyk7DQo+ID4gICANCj4gPiArCWlmIChpbnRlbF9ndWNfdGxiX2ludmFsaWRhdGlvbl9pc19h
dmFpbGFibGUoZ3VjKSkgew0KPiA+ICsJCWludGVsX2d1Y19pbnZhbGlkYXRlX3RsYl9lbmdpbmVz
KGd1Yyk7DQo+ID4gKwkJaW50ZWxfZ3VjX2ludmFsaWRhdGVfdGxiX2d1YyhndWMpOw0KPiA+ICsJ
fQ0KPiA+ICsNCj4gPiAgIAlyZXR1cm4gMDsNCj4gPiAgIH0NCj4gPiAgIA0KPiANCj4gDQo=
