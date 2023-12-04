Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 709DF803AE7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 17:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F9E10E302;
	Mon,  4 Dec 2023 16:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731E910E302
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 16:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701708755; x=1733244755;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KtBnQPZxtCxSWFt6db8TTJS+sTuqOFZvUZNSvjt+9V8=;
 b=N1fTORsrmZPfhEjb42XZtdteTC9OIwPcFdMgWBeqvSnysvhAdfSPo7Z8
 A5OANa8324NSWo3Ej3VleEY925sym9+nBqVOAzOjonXWju4BxYXEVo3CE
 9Di1YhlnXgVzaBwYdBMfPel+JcKSbmhpw+x84XdcD9UUTerKXxscCd3iU
 olebejXREBUtpjpjV5z27f+JhURgMN3n+48NyDx9NNC4kEc4QrNhZZExo
 Cuyaa3pq4b5/WuiM46rqzNXUn1jxA6nc5vXAbeRIyUahde0wMiSMkvMO9
 XIcW0keu+iTLv/J60um9Tb7vTdWFZFRaUiTOEYisIu/MICx+BuKfAjNFf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="12477791"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="12477791"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 08:52:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="861442374"
X-IronPort-AV: E=Sophos;i="6.04,250,1695711600"; d="scan'208";a="861442374"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 08:52:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 08:52:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 08:52:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 08:52:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 08:52:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwwqO9xngYLA08q9GihBItFY7g8LAbuvtIdLXhZffvTmtn1rhYjMqq9DjZF458SjMmrQ2tQwrxe97ienxaSEpZSf5lBKbV027Bjf/6qgmRZDvE2vSspPQQZLlLDoteJTJKlzAq5OsX+VBMpODCGfxqdCz8YXcU2stEeaQ/aUrwH6lboFFzDdoJJnMZHINrw69YB7f/BLYiPICgR9LJqiK6Yla1jCT2i1Zu7mVTlIDziJNQoHYiAqqj9Hoxad1lYLuo2H2Rvn0aI9SGJvPnk8qNG9jo2fDIZPSUy+eZf2YKwCXhlkHAITvn3QAUKP4QmgkFqsJx0IW53vJC0Eo4vH+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KtBnQPZxtCxSWFt6db8TTJS+sTuqOFZvUZNSvjt+9V8=;
 b=J9wMc9TOPXf17ttn7wJfrWv7knk3EpXaN30mHp2wORcY0vnghNuFrF4eW1ASUDgCbOIERNCTXClsoeyNfP1MAan+/qyApFPOOcbz242152O2Sa0c4bw0rm0eUu4SbteZrDFojkxAiNUU/RrnufqQlGcKcLDr56zQz/G+qFXnwvMCy31/Un0tht6B5bBD8Jou/jsQ5ef8GiiFDMV+mcB+XhBPnnK5rgEMl1TwgGlAH++/wgi9u4DY30S+r1KDDLEitalRziTpyyOd86bcrMIT5+fpgsgcGagXzcns1GVAUYLS9IjjnVeuMXEa1z3dYObbAdVHxXL74Z0IKUeYAurdFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH8PR11MB7991.namprd11.prod.outlook.com (2603:10b6:510:25a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 16:52:30 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 16:52:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
Thread-Index: AQHaJFw3CASKptwwHkqm5Gz7lSFm2LCUgEGAgARnpACAAGx6cIAABjcAgAAAdYA=
Date: Mon, 4 Dec 2023 16:52:30 +0000
Message-ID: <CY5PR11MB6344014FD6FC06C85356DE48F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
 <CY5PR11MB634479123D55A69917190B40F486A@CY5PR11MB6344.namprd11.prod.outlook.com>
 <87a5qp3oe1.fsf@intel.com>
In-Reply-To: <87a5qp3oe1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|PH8PR11MB7991:EE_
x-ms-office365-filtering-correlation-id: 22f51e6f-a0ac-44f1-df0a-08dbf4e96790
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: paMnamg3gsXmAweOdSqw+Kgy6jcZVWz2dEzF7czN5LkE7tAXLrFLgA3L14vsGNKFW0tjkV9fqAlIYmVyZvlxsRcos+ABHtvtqeTGHzII2SwMd8WQErLcUDZ5hFcKvkMXB/PyZ2se7BCC6CZ6PV8OFzrOpKBSBiKxlC1MmSIwoCAXVnrchD4h+Z7Wa7fcb5zf1ic+j7Tj9KB/NlwH2X8dzirCIV54rtl81RBU6dX3LudV0dEB5TLvmeu+KenBCuvgkigEIZlI5yWUzigUKLTFnEurqwrqbf/40a3QinvsMztYwOu+YxaWqRFgAYhzxaei2sFrn3Frlu8xDPSSz/w7X7Dc11jzi1eAY4c1FU71wT/7wellBpF9J3hPTToYzDbI/KPlemBpfgQq0EozMf3Tnl7gz/GsVEQP+iORY0mFv98j+QjVziPuH3DNa+8HvgrSCm8r89ouUAfHKqZXNmH5XnrdW1FYTqofkrO8kitZU5G7HD0X3tTgndHpBz4MctZ/U7zHrHCcjpAt71CvIn6dae3S8Bw2moEC3gtMhyxCfn7PGNz1ZvVsd3169r5UVRVUvejPTMJszHEav3bXqrNpdTm1a3bQO7omGETU81ReI5c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(136003)(366004)(39860400002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(26005)(966005)(478600001)(83380400001)(71200400001)(7696005)(6506007)(9686003)(66574015)(53546011)(82960400001)(316002)(110136005)(66476007)(66446008)(64756008)(76116006)(66946007)(66556008)(122000001)(38100700002)(55016003)(5660300002)(52536014)(86362001)(4326008)(2906002)(8936002)(8676002)(41300700001)(33656002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ti9nV1NWTjBmbGZMNEFEVzNzRTZCUlovb1Z5bFVzRHdVSEVJczRMbGNsVDJo?=
 =?utf-8?B?eDdaMkU3QWRmUzlUbzdNZ0hwNFNuYTlDdExxeTRjMUxVMGZ4T0dWVENIaVVt?=
 =?utf-8?B?NTdpU01ubUhOOHl5R2liRFVQZStMSjkxQng1ZEtQOHI1M1dKbHZVejNWN2JK?=
 =?utf-8?B?R2FGdVFnWFBZOVBDaS9LWVp0RmpRUTlKSU5iVG96L2t5SDB6dDQ3QkxKUVlo?=
 =?utf-8?B?OVY2endlKzlRR2NrdjNMV1RFcU9kQ29sVGxTeUQzQ09FVEg3YkRaVFlEb3ZC?=
 =?utf-8?B?a0doTGRlWmt2a1lLcitpSVZJZzh0UU5CdmtyMm9IY0NSeTMrb2Y2ZEludHZW?=
 =?utf-8?B?Q0MxWGZFVGlheWRJQWxCcmtkMmdYQ2hvTThzZ3MxNDVRUi9adG44dFdJeHU5?=
 =?utf-8?B?Q0VraUtwMGhhN2JEeHlZWVdCWS81eFBTbVRYN1lsaXo2Z0hGd1FkWmFsNC92?=
 =?utf-8?B?K0p2UHZXU1hYQXg4QmlJSElmYjRXdmdoL0FrbmZRNjlaVGhEK0JwSEtCNHg3?=
 =?utf-8?B?c0I4Y3c5UnBIeWNLbDNISWc5dVNaaW9PV1lYaUt6SjVLRkY4NTFoUEIzQTl0?=
 =?utf-8?B?R3BxVjlKQkg5YTJjVmt6RDM3SzI4b1ZjVWd5TkdJbWkvckNCK254eGgyWVpx?=
 =?utf-8?B?Q2FWdnc5U2VtUVBMZUMyQ2pESmhiVXEvZ3E0dC9TM1BSUzZTaFZ2MGtDSzU1?=
 =?utf-8?B?U1pFVStOYmF0c0liR1JJVy83KzNZZWxsOFJhbXN3c1ZyQ3o4OXhsdnJaUWNU?=
 =?utf-8?B?SlJHNWc0cjlmV1d6dTdQQWIrczNDbGNuNEpzV1VSU0tMd0lJL2VrZkh5d3Bw?=
 =?utf-8?B?Vk1PMHhPclVHaSt5dHN6aDV1YTEvYVRFZ0RPbE03WC94dFlqby9nd0VhSm5u?=
 =?utf-8?B?ZWxGYXlrdVBDaEtSV2V4V0xjWFBVZWNsOEphWDJoRTZBVnBBVDdYWXRuV28v?=
 =?utf-8?B?ZWFBOEVhRFpXVDlHd0ZDVm9najVHMElvOWlJekMyQUpza3FiMU5VTWNRVWpY?=
 =?utf-8?B?VlF3Sm9JNGFnRmJ5bWhmR2pmU2JabmtYN0F5Z3o1aFRFL2FYaGhaY2VqaXd3?=
 =?utf-8?B?Tk1GKzAwWmhHRGJlOTBtOHlCckhIcVA1ai90bFhUcjEyZXBrUWp2ZXcweUJr?=
 =?utf-8?B?MGNPTTF0U2h3WUQ2OEh2V1d4dHlITFlNKytlT1FJanJhendJRUdMYndHWFZK?=
 =?utf-8?B?MnBLMWVPOUo0WFErWWZWaGNvTU51UVVaajJlWVFYeWtUUGdpRXRMeU1aVDN4?=
 =?utf-8?B?MnRyKzN0MnhQVzduWnVEWk41aGNGaHQxVW5jbWxpcEREakl4a2xNNFYwU2xh?=
 =?utf-8?B?VEhTV3N1R3ZiaHgrczJlYW9FWUZZNU45UGZTOExYRVhIdit1anhXMlVvdmFV?=
 =?utf-8?B?TVpxUm91dUdzUUZpU3dGM0dlc2FKckdJMjBZNUxOK2xDVEhuUEI0TmV1RVBY?=
 =?utf-8?B?dG5sZ2t1MUhxQWY0ZzY0S2lMSHZmcmlrTUswRmMzdTUzenFNcFFnRlA5ZlZl?=
 =?utf-8?B?ZWdUWDBwUm5iNDRBVDV0YnFzQWJFdnpRdHQwSUY4TVlvMGQ2K1ppaS91WGNR?=
 =?utf-8?B?bUVobkxuZkR0RnlHMDU5TDgvL3V4ckRQRWNpd0FQZFVTVUxYRm1UbE9uSVBV?=
 =?utf-8?B?MVBRazZOeFRFdkxDQk1MaDArZGZYOEhTQ1BSaUpvSExtdVgxOVMzb3B0Yk4y?=
 =?utf-8?B?YW5FUGl6aFlTOFIydmhVQTFSVXliOVdjemtNUDB1bmJidG9uR3d5bEllV28r?=
 =?utf-8?B?MWtsTTRrNUtLcllPTWRXdCtaT2hscjV5VUY5VmlFbVRobjV2djg1Umswa0h4?=
 =?utf-8?B?K080Q2t1c0dlbU5SNHhQOWRUQ21ta2NxL0ZMNG5XbjVCTmhZbG1rRFU1VG5y?=
 =?utf-8?B?QlYyam8yMmZETCtvRmlDN012bittNkFwSFFVcENNNWRWckNINE40cnlJRTcv?=
 =?utf-8?B?SkpVd0JxT2x2UWw2aVU3bWtpZ3VKSGlaaEpEai9LSXZXTGI1a2FsSStrNWlK?=
 =?utf-8?B?M0FXYXFFTm5IZTFtb1pxRFRzSkltZU5LcXc1QUxORjVMVThxaEFOWk1LTTlm?=
 =?utf-8?B?SFA4dDBudVI5Zi9ONFU2MVIrUXZ3QXY5a2NkQTNWVW9Kam0yRnVnY2tXSHFl?=
 =?utf-8?Q?U0cwltNlGcceYCl10tZgJTQW9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22f51e6f-a0ac-44f1-df0a-08dbf4e96790
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 16:52:30.4705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nXMCaDqwYqPI1+qXjA4q1bQXXjHlDVFS9QxKUtKuh1OnDDq5pVdA0rCxX8/D2+ZNS09urhIiDKut57jsTMXubg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7991
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgNCwgMjAyMyAx
MDoxOCBQTQ0KPiBUbzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBWaWxs
ZSBTeXJqw6Rsw6QNCj4gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0g
W1BBVENIXSBkcm0vaTkxNS9lZHA6IGRvbid0IHdyaXRlIHRvIERQX0xJTktfQldfU0VUDQo+IHdo
ZW4gdXNpbmcgcmF0ZSBzZWxlY3QNCj4gDQo+IE9uIE1vbiwgMDQgRGVjIDIwMjMsICJTaGFua2Fy
LCBVbWEiIDx1bWEuc2hhbmthckBpbnRlbC5jb20+IHdyb3RlOg0KPiA+PiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiA+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4+IE9mIEphbmkgTmlrdWxhDQo+ID4+
IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgNCwgMjAyMyAzOjI4IFBNDQo+ID4+IFRvOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+PiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g
W1BBVENIXSBkcm0vaTkxNS9lZHA6IGRvbid0IHdyaXRlIHRvDQo+ID4+IERQX0xJTktfQldfU0VU
IHdoZW4gdXNpbmcgcmF0ZSBzZWxlY3QNCj4gPj4NCj4gPj4gT24gRnJpLCAwMSBEZWMgMjAyMywg
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6DQo+
ID4+ID4gT24gRnJpLCBEZWMgMDEsIDIwMjMgYXQgMDM6NDE6NDFQTSArMDIwMCwgSmFuaSBOaWt1
bGEgd3JvdGU6DQo+ID4+ID4+IFRoZSBlRFAgMS41IHNwZWMgYWRkcyBhIGNsYXJpZmljYXRpb24g
Zm9yIGVEUCAxLjR4Og0KPiA+PiA+Pg0KPiA+PiA+PiA+IEZvciBlRFAgdjEuNHgsIGlmIHRoZSBT
b3VyY2UgZGV2aWNlIGNob29zZXMgdGhlIE1haW4tTGluayByYXRlDQo+ID4+ID4+ID4gYnkgd2F5
IG9mIERQQ0QgMDAxMDBoLCB0aGUgU2luayBkZXZpY2Ugc2hhbGwgaWdub3JlIERQQ0QgMDAxMTVo
WzI6MF0uDQo+ID4+ID4+DQo+ID4+ID4+IFdlIHdyaXRlIDAgdG8gRFBfTElOS19CV19TRVQgKERQ
Q0QgMTAwaCkgZXZlbiB3aGVuIHVzaW5nDQo+ID4+ID4+IERQX0xJTktfUkFURV9TRVQgKERQQ0Qg
MTE0aCkuIFN0b3AgZG9pbmcgdGhhdCwgYXMgaXQgY2FuIGNhdXNlIHRoZQ0KPiA+PiA+PiBwYW5l
bCB0byBpZ25vcmUgdGhlIHJhdGUgc2V0IG1ldGhvZC4NCj4gPj4gPg0KPiA+PiA+IFdoYXQgYSB0
ZXJyaWJsZSB3YXkgdG8gc3BlY2lmeSB0aGlzIDooIFRoaXMgbWVhbnMgdGhlIGRldmljZSBtdXN0
DQo+ID4+ID4gaGF2IHNvbWUgaW50ZXJuYWwgc3RhdGUgdG8ga2VlcCB0cmFjayBvZiB3aGV0aGUg
QldfU0VUIHdhcyBldmVyIHdyaXR0ZW4uDQo+ID4+DQo+ID4+IEluZGVlZC4NCj4gPj4NCj4gPj4g
QWRkaXRpb25hbGx5LCBlRFAgMS41IHNwZWNpZmllcyBMSU5LX0NPTkZJR1VSQVRJT05fU1RBVFVT
IChEUENEDQo+ID4+IDAwMjBDaCkgd2hpY2ggZXhwb3NlcyB0aGUgaW50ZXJuYWwgc3RhdGUgYXMg
bGluayByYXRlIHNldCBzdGF0dXMsIGFuZA0KPiA+PiB3aGV0aGVyIHRoYXQgc3RhdHVzIGlzIHZh
bGlkIG9yIG5vdC4NCj4gPj4NCj4gPj4gT3ZlcmFsbCB0aGUgc3BlYyBsb29rcyBsaWtlIHRoYXQn
cyBqdXN0IGZvciBzdGF0dXMsIGJ1dCB0aGUgcmVnaXN0ZXINCj4gPj4gaXMgYW5ub3RhdGVkIFdy
aXRlL1JlYWQgc28gd2hvIGtub3dzLg0KPiA+Pg0KPiA+PiA+DQo+ID4+ID4+DQo+ID4+ID4+IENs
b3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy85
MDgxDQo+ID4+ID4+IFRlc3RlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+DQo+ID4+ID4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+DQo+ID4+ID4+IC0tLQ0KPiA+PiA+PiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMjMNCj4gPj4gPj4gKysrKysrKysrKystLS0tLS0tLQ0K
PiA+PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQ0KPiA+PiA+Pg0KPiA+PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+PiA+PiBpbmRleCBkYmMx
YjY2YzhlZTQuLjYzMzZhMzkwMzBhNCAxMDA2NDQNCj4gPj4gPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gPj4gPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4g
Pj4gPj4gQEAgLTY1MCwxOSArNjUwLDIyIEBAIGludGVsX2RwX3VwZGF0ZV9saW5rX2J3X3NldChz
dHJ1Y3QgaW50ZWxfZHANCj4gPj4gKmludGVsX2RwLA0KPiA+PiA+PiAgICAgICAgICAgICAgICAg
ICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+PiA+
PiAgICAgICAgICAgICAgICAgICAgICAgIHU4IGxpbmtfYncsIHU4IHJhdGVfc2VsZWN0KSAgew0K
PiA+PiA+PiAtICB1OCBsaW5rX2NvbmZpZ1syXTsNCj4gPj4gPj4gKyAgdTggbGFuZV9jb3VudCA9
IGNydGNfc3RhdGUtPmxhbmVfY291bnQ7DQo+ID4+ID4+DQo+ID4+ID4+IC0gIC8qIFdyaXRlIHRo
ZSBsaW5rIGNvbmZpZ3VyYXRpb24gZGF0YSAqLw0KPiA+PiA+PiAtICBsaW5rX2NvbmZpZ1swXSA9
IGxpbmtfYnc7DQo+ID4+ID4+IC0gIGxpbmtfY29uZmlnWzFdID0gY3J0Y19zdGF0ZS0+bGFuZV9j
b3VudDsNCj4gPj4gPj4gICAgaWYgKGNydGNfc3RhdGUtPmVuaGFuY2VkX2ZyYW1pbmcpDQo+ID4+
ID4+IC0gICAgICAgICAgbGlua19jb25maWdbMV0gfD0gRFBfTEFORV9DT1VOVF9FTkhBTkNFRF9G
UkFNRV9FTjsNCj4gPj4gPj4gLSAgZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIERQ
X0xJTktfQldfU0VULCBsaW5rX2NvbmZpZywgMik7DQo+ID4+ID4+ICsgICAgICAgICAgbGFuZV9j
b3VudCB8PSBEUF9MQU5FX0NPVU5UX0VOSEFOQ0VEX0ZSQU1FX0VOOw0KPiA+PiA+PiArDQo+ID4+
ID4+ICsgIGlmIChsaW5rX2J3KSB7DQo+ID4+ID4+ICsgICAgICAgICAgLyogZURQIDEuMyBhbmQg
ZWFybGllciBsaW5rIGJ3IHNldCBtZXRob2QuICovDQo+ID4+ID4+ICsgICAgICAgICAgdTggbGlu
a19jb25maWdbXSA9IHsgbGlua19idywgbGFuZV9jb3VudCB9Ow0KPiA+PiA+Pg0KPiA+PiA+PiAt
ICAvKiBlRFAgMS40IHJhdGUgc2VsZWN0IG1ldGhvZC4gKi8NCj4gPj4gPj4gLSAgaWYgKCFsaW5r
X2J3KQ0KPiA+PiA+PiAtICAgICAgICAgIGRybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9kcC0+YXV4
LCBEUF9MSU5LX1JBVEVfU0VULA0KPiA+PiA+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICZyYXRlX3NlbGVjdCwgMSk7DQo+ID4+ID4+ICsgICAgICAgICAgZHJtX2RwX2RwY2Rfd3JpdGUo
JmludGVsX2RwLT5hdXgsIERQX0xJTktfQldfU0VULA0KPiA+PiBsaW5rX2NvbmZpZywNCj4gPj4g
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBBUlJBWV9TSVpFKGxpbmtfY29uZmlnKSk7
DQo+ID4+ID4+ICsgIH0gZWxzZSB7DQo+ID4+ID4+ICsgICAgICAgICAgLyogZURQIDEuNCByYXRl
IHNlbGVjdCBtZXRob2QuICovDQo+ID4+ID4+ICsgICAgICAgICAgZHJtX2RwX2RwY2Rfd3JpdGVi
KCZpbnRlbF9kcC0+YXV4LCBEUF9MQU5FX0NPVU5UX1NFVCwNCj4gPj4gbGFuZV9jb3VudCk7DQo+
ID4+ID4+ICsgICAgICAgICAgZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9M
SU5LX1JBVEVfU0VULA0KPiA+PiByYXRlX3NlbGVjdCk7DQo+ID4+ID4NCj4gPj4gPiBEb2Vzbid0
IGxvb2sgdGhlcmUncyBhbnl0aGluZyBpbiB0aGUgc3BlYyB0aGF0IHNwZWNpZmllcyB3aGVuIHRo
ZQ0KPiA+PiA+IGRldmljZSBpcyBzdXBwb3NlZCB0byByZXNldCBpdHMgaW50ZXJuYWwgc3RhdGUg
dG8gc3RvcCBpZ25vcmluZw0KPiA+PiBEUF9MSU5LX1JBVEVfU0VULg0KPiA+PiA+IERvIHdlIGtu
b3cgd2hlbiB0aGlzIHBhbmVsIGRvZXMgaXQ/IFdoZW4gVkREIGlzIHJlbW92ZWQ/DQo+ID4+DQo+
ID4+IE5vIGlkZWEuIEFuaW1lc2g/DQo+ID4+DQo+ID4+IEkgdGhpbmsgaXQncyBqdXN0IGNyYXp5
IHdyaXRpbmcgMCB0byBleHBsaWNpdGx5IGRpc2FibGUgRFBfTElOS19CV19TRVQgcmVuZGVycw0K
PiA+PiBEUF9MSU5LX1JBVEVfU0VUIHVudXNhYmxlLiBQcmV0dHkgc3VyZSB3ZSd2ZSBzZWVuIHBh
bmVscyB3aGVyZSB0aGlzIHdvcmtzDQo+IGFzDQo+ID4+IHlvdSdkIGV4cGVjdC4NCj4gPj4NCj4g
Pj4gQW5kIHRoZSBhYm92ZSBkZXBlbmRzIG9uIHByZS1vcyB1c2luZyB0aGUgc2FtZSBsb2dpYyBh
cyB1cyBmb3IgY2hvb3NpbmcNCj4gPj4gRFBfTElOS19SQVRFX1NFVC4gR09QIHNlZW1zIHRvIGRv
IHRoYXQuIEJ1dCBpZiBpdCBvciBzb21lIG90aGVyIHByZS1vcyB1c2VkDQo+ID4+IERQX0xJTktf
QldfU0VULCB3ZSdkIGZhaWwuIFdpdGggc29tZSBvdGhlciBwYW5lbHMsIHdyaXRpbmcgdGhlIDAg
bWlnaHQNCj4gcmVjb3Zlcg0KPiA+PiBmcm9tIHRoYXQuDQo+ID4NCj4gPiBUaGUgc3BlYyBkb2Vz
IGxlYXZlIGl0IGEgYml0IG9wZW4gb24gdGhpcyBvbmU6DQo+ID4NCj4gPiAxMTVoOiBMSU5LX1JB
VEVfU0VUIGFuZCBUWF9HVENfQ0FQQUJJTElUWQ0KPiA+IOKAoiBEUENEIDAwMDAxaCA9IDAwaC9E
UENEIDAyMjAxaCA9IDAwaCDigJMgU291cmNlIGRldmljZSBzaGFsbCB1c2UgdGhpcyBmaWVsZCB0
bw0KPiBjaG9vc2UNCj4gPiB0aGUgbGluayByYXRlLCBhbmQgdGhlIFNpbmsgZGV2aWNlIHNoYWxs
IGlnbm9yZSBEUENEIDAwMTAwaA0KPiA+IOKAoiBEUENEIDAwMDAxaC9EUENEIDAyMjAxaCA9IFZh
bGlkIGxpbmsgcmF0ZSDigJMgU291cmNlIGRldmljZSBtYXkgb3B0aW9uYWxseQ0KPiBjaG9vc2UN
Cj4gPiBhIGxpbmsgcmF0ZSBhc3NvY2lhdGVkIHdpdGggSEJSMywgSEJSMixIQlIsIOKAk29y4oCT
IFJCUiBieSB3cml0aW5nIHRvIERQQ0QNCj4gMDAxMDBoDQo+ID4NCj4gPiBTbyB0aGUgMm5kIHBv
aW50IGhlcmUgZG9lcyBtZW50aW9ucyB0aGF0IHNpbmtzIGNhbiBvcHRpb25hbGx5IHVzZSB2YWx1
ZSBvZg0KPiAwMDEwMGgNCj4gPiBpZiAyMjAxaCBpcyBub3QgMDAuIFNvIHByb2dyYW1taW5nIGEg
dmFsdWUgdG8gdGhpcyBEUENEIGlzIG5vdCByaWdodCB1bmxlc3Mgd2UNCj4gcHJvZ3JhbQ0KPiA+
IHRoZSByaWdodCB2YWx1ZSAobm90IDApLg0KPiA+DQo+ID4gSSBmZWVsIHNhZmUgd2F5IHdvdWxk
IGJlIGJlIHRvIGdvIHdpdGggTElOS19CV19TRVQgZm9yIERQMS4zIGFuZCBmb3IgRFAxLjQrDQo+
IGFsd2F5cyB1c2UNCj4gPiBMSU5LX1JBVEVfU0VUIGFuZCBoYXZlIGl0IG11dHVhbGx5IGV4Y2x1
c2l2ZS4NCj4gPg0KPiA+IFNvbWUgVENPTnMgd291bGQgaGF2ZSBpZ25vcmVkIGFuZCB3ZSBnb3Qg
bHVja3kgYnV0IHdlIGNhbid0IGxlYXZlIGl0DQo+IGFtYmlndW91cywgd2Ugd2lsbCBiZSBjb21w
bGlhbnQNCj4gPiB0byBzcGVjIGlmIHdlIGRvbid0IHdyaXRlIDB4MTAwLiBTbyBsZXQncyBnbyB3
aXRoIHRoaXMgY2hhbmdlLg0KPiANCj4gTW9yZW92ZXIsIHRoZXJlIGFyZSBvbmx5IGZvdXIgZG9j
dW1lbnRlZCB2YWxpZCB2YWx1ZXMgZm9yIHRoaXMgcmVnaXN0ZXIsDQo+IDB4MDYsIDB4YSwgMHgx
NCwgYW5kIDB4MWUsIGFsbCBvdGhlciB2YWx1ZXMgYXJlIHJlc2VydmVkLiBJbiB0aGF0IHNlbnNl
DQo+IGl0J3MgYWxzbyB3cm9uZyB0byB3cml0ZSAweDAwLg0KDQpZZWFoLCB3cml0aW5nIDAgaXMg
ZG9uZSB3aXRoIGFuIGludGVudGlvbiB0byBkaXNhYmxlIGl0IGJ1dCB0aGF04oCZcyBub3QgdGhl
IHdheQ0KdG8gaGF2ZSB0aGlzIG9wdGlvbiBkaXNhYmxlZC4gSW5mYWN0IHRoZXJlIGlzIG5vIHJl
YXNvbiB0byB3cml0ZSB0byBpdCBmb3IgRFAxLjQrDQppZiBzaW5rIGlzIGNvbXBsaWFudC4NCg0K
UmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gDQo+IA0K
PiA+DQo+ID4gUmVnYXJkcywNCj4gPiBVbWEgU2hhbmthcg0KPiA+DQo+ID4+IE5vIHItYiwgc28g
ZG8geW91IGhhdmUgYW55IGJldHRlciBpZGVhcz8NCj4gPj4NCj4gPj4NCj4gPj4gQlIsDQo+ID4+
IEphbmkuDQo+ID4+DQo+ID4+DQo+ID4+ID4NCj4gPj4gPj4gKyAgfQ0KPiA+PiA+PiAgfQ0KPiA+
PiA+Pg0KPiA+PiA+PiAgLyoNCj4gPj4gPj4gLS0NCj4gPj4gPj4gMi4zOS4yDQo+ID4+DQo+ID4+
IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJbnRlbA0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIElu
dGVsDQo=
