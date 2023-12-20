Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74E819A07
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 09:05:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC68810E329;
	Wed, 20 Dec 2023 08:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721FC10E329
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 08:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703059531; x=1734595531;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FeJlTNWMJsdZ2DtmE+NX5R1P+P36fHYmclVdYCSSpk4=;
 b=LKTDWgMR7TB7ObqX6asBq5sn7Du0IIGyn02zWvt+kHjLTNbtV0FmhFid
 N3eB+fgGWvLVCUniiybTJ3u/lK4K1NqyH8eo5p0/QrNGKXG4pbKp5OQsF
 C577+LkCBav6fOafT2C4A1+wjPIw5dv9Eeuye58pdBjHyZX4Dl09SDi3M
 BRgLqtIkdM+rStLtMukxngywL0KJE/zKcmdduev5SW4PNTLppb9AeDSnY
 DnsJrkCinm9kKI3kuTnGDlSFgxWJhuRGRSUPbHyRYiyW6sF9OtOe7BkMp
 inaryyO3O+3zf3J147Codmh62/3akWX3ujkNpwkyQDymJaYfcRPcSwLLE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="481966944"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="481966944"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 00:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="894604084"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="894604084"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 00:05:30 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 00:05:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 00:05:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 00:05:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gi4AlFA8x0P0+Igerokzvhbj5XhsBZaH1qlSewLT0tpo5GIDJuPuJs5/gK2kJJBl4DKXoOUnq6ormCeS27TFP/ZhfDkrMOAGncQvZ6IpZIbBDM82e2zV6NaJzf5mtKyQSyoVSjnolTGz/HVuLJjtmKLoPHCSLIGQcoET9AmROcasCszIekvwo2ULDb0zFo4+yok+atY0YPDX6uLck+pAj82m1ifCLVp2X7i2XoLvjETYW+Sixe2WppYIDZ6eGQIBGfddlCowSpbgzGHO182CI/CYI63YjUr5mA2uo76qtBeTtDD1h680SFA6mVnKvaChXvVoVtRyPHftygsmOasFnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FeJlTNWMJsdZ2DtmE+NX5R1P+P36fHYmclVdYCSSpk4=;
 b=QL/1HydEKYSEamTxhWOWNNLu7MG+qNugacDTyc16j80dsJIncEFUVhzgwCMWnUDv34PFYJpsSepdMXLxpu++pZGJy0OaBOiTFgjsw/ZuCqQvQNw9wfrZeJaeWo4u1JJoNjwZh92EqckQVrJwfsQMBTnclIyox7SCLaNko0mgSUCONG9v7GiOEk77zwaxUr7+7MgBcN01zPh28/kbXbH99RUIrT6IBdrBEiJ//OyiEaRVl1vGld5QKYTU5Q6kA+la+xasuypiIYEX4qNSDzCjrjysUeQSlMyb8wnwhvlQmfP4V0WW/xvlxOrdT8NMHxyXuOFKT4GesD93qz8kOT0v3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Wed, 20 Dec
 2023 08:05:23 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 08:05:23 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: C20 clock state verification
Thread-Topic: [PATCH] drm/i915/display: C20 clock state verification
Thread-Index: AQHaLy3CkqUvMtxGfEWO2UNtuuP+CbCqCf+AgAACOwCAAFHU0IAAFSKAgAdkv2A=
Date: Wed, 20 Dec 2023 08:05:23 +0000
Message-ID: <MW4PR11MB70541D8603ED7218B45EAF9FEF96A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231215080057.663792-1-mika.kahola@intel.com>
 <ZXwUC0RMKLeH9PDe@ideak-desk.fi.intel.com>
 <ZXwV6vZpNywCu/Md@ideak-desk.fi.intel.com>
 <MW4PR11MB7054CB8800BAB88AB9CA3B3EEF93A@MW4PR11MB7054.namprd11.prod.outlook.com>
 <87sf43v6wm.fsf@intel.com>
In-Reply-To: <87sf43v6wm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CY5PR11MB6163:EE_
x-ms-office365-filtering-correlation-id: 132add6f-3801-442d-f298-08dc01326b24
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qnLuI9vb5v9ecL2MMSyuf+RiuMIuy87xrEHlDxmBeo8mVhX1qOA+sHIdUL/LON3MuXdrAkGPXUvt4mXvIaTWVp4/BW48yFQwwx1srMwNFCYYb5ErY7UR65V+tfiUKMxzsvqXmaua2NwEGshQlneJcjuWbdYpqEbF/Km8GkmM/DumO8M7YFWsiW0t7qiTAHOj9hFfireLqkZH5Yg2KJly2Iww9n/sy9fbCN6jJa9tFtOIci8kTbYEmaDvEGmSeTAZhQvX0u93ONxvH9qEA3wOTDTBgvJ9ZmC6+wVfEixRklxP0nX+eE1FHLGrzLiM7w67LwJWRFckv2tcO84xe9zJL4FTYKund7Tv5jVW+DpghlpiyalAusvrSBL39V9NIoVjNY0iLk8+j3ArJV1MiVmJO2p/TZahV9XRzpTU6fdtIS3lWW/a8k1m2HMAxm3co3t/9jt3B91PJ7aBSxR23s9lIvoEh9DSTzi/GBVUYoYni9xtRFZc/FeS9NIwg1ZFxA4d3GrE5Y/v6tt1TIqSV4O7rPHqNohj8qGWwt7RUwuBVh5CHIaG2r94dIq4VJqCa6ErwBcTbW6Yed7H53z1rftBuYAuXAkMA0nEN5Ypg04IlRi9wwnyVxkAumB7iDtEIniC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(366004)(346002)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(26005)(66446008)(83380400001)(9686003)(6506007)(7696005)(53546011)(478600001)(5660300002)(15650500001)(41300700001)(8676002)(110136005)(8936002)(316002)(2906002)(52536014)(71200400001)(64756008)(66476007)(122000001)(66946007)(33656002)(86362001)(66556008)(76116006)(82960400001)(38100700002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c081Nit3SXRXZmh1QWVwOXlHaGZHcjhxa21ncWNRS3NBM3M4SitYblNQcEZj?=
 =?utf-8?B?a1VaS3ZMMjU2cHRGbjhScWdkQlBQbDdkcDQ1ZWVtcCtyTGx5UXRLczJjb2NK?=
 =?utf-8?B?eEZ5TkZmQTR0K0g5cEQrSm9qQzYxRU5UOG5ZWXV0eEo2SVNpSnBmSjJCQ1p6?=
 =?utf-8?B?czQvMjZWTnhhSVZVNnRLRzZZS01MTkgwSmNYUzQySldNRHhCMFJobExBdnJm?=
 =?utf-8?B?a2JPeXAwSDhoOUlZUVE3R3BnNzNwMUhYZHl0M2xadkNZeUY4U2RzdjVNVklz?=
 =?utf-8?B?RG5uWUtmQU1VcngzVnMrNzRaZ0RXdmxDVU90d3J3aU0rcTZObGRnbXIxbVRB?=
 =?utf-8?B?cFhqSHFyRE1IUS9sanJtdzIxcXZYNjZBUTZoVzd3a1lZWWpWYm11VTdPb09k?=
 =?utf-8?B?OGY3dVR1dklPRjRzaWdjT2d2TzZxSzZoMDUzb0VabFlDMGR4SDRXZDFQNnE1?=
 =?utf-8?B?cWIrREhXRSt6V1ZHZjArRS81LzFURWNXMlVFQitwV3FUdWFDREljUy82K1Mv?=
 =?utf-8?B?dXBEdkRZd1NRZkM3SlllWGpDWmtYSWNLMERycnlra0EzMWxFbENqem5GY1k3?=
 =?utf-8?B?anRESFN6enNMb0NWTlZVTWEyS0VaWjZhT3RiMWp6QmI1K2l3VENLQU9xaC96?=
 =?utf-8?B?NHpFcjE0RnJCVmsrQzcvQXNsUFhUWUl0NDh3VUdtWk1OVlk5QlNheGhVK2Nj?=
 =?utf-8?B?QWpORkcwcFgwVUpzN0FKTGNMeXo3STZOcDhUQkdwNjJXUnRYeS9sVWFRM2U3?=
 =?utf-8?B?ek54WW1EQUptSUFzbkw2eDRaUndyV25QS25sMXVuQnNlRWhrODFKeFgyNndE?=
 =?utf-8?B?a01YdkpJeWIxVi90UVZndDN3Y3dTS0w3TDBkaVRQWGdRQlErdHJJcVBYRlBa?=
 =?utf-8?B?bVJxMmNLSDBoaC9ROFMybDNpNm5QUmNwYVVYem41bVdVTmp2MkhpT0ZPVlQ4?=
 =?utf-8?B?SFJXdzFGaElLT2JSdURPb0ZPMFJBUVVKU0NaVnNZQngvb2RDaklZV2Zwdlpu?=
 =?utf-8?B?UmRweUdrUlBKNDl1Rm53WHJ0elArK0FaVGRYN2dPejBwVjV1R2tNSS8yd1BP?=
 =?utf-8?B?dW1tTnROUnhtS0Q3SFFrZk9jSDhibWtROVFkWEdjT2dkeDVEcFJUckVaQkZX?=
 =?utf-8?B?ZjVlOCswL1hLV3hBWCtJcW43cTRkQUpnZW9DQ3lpRUpFQ203eG1hUGFqWFFD?=
 =?utf-8?B?L1JMV3NHTUMvWXZnQUY4akttUFJUdGF2TXRVQUljVEFic2cyWkZ2RnBybjJy?=
 =?utf-8?B?WDJsekJSOUgxNjdRZW05cUNjUVdMR0V2WkJOY3NYS3FJSmJZdGtmMnlqUjVE?=
 =?utf-8?B?SzRtTWtIQjZ3aE5TV1MzZVJ6aDUwZjBVNFFzSkhUNkpKWkxaUXBFbkdpOXZi?=
 =?utf-8?B?S1NmeW9CUzZjZ2dNUG9wTU1kWmVCK0VjRnlMNFVqNE9NampJTFpDam15SGtP?=
 =?utf-8?B?MWZrSFhCK0R6U29panFVUkN3ZGVKaCthYlVlVG9CbXZlYVhlTDgzREFlUTlz?=
 =?utf-8?B?MHpETzl1b2p4a3owOVVMVG15NEp0NzV4S1RDbWlRVGEwaXN2bFk4T3NuOEJ6?=
 =?utf-8?B?R1B0K1dJVldnTWZDQUdQZExRWm10TGdTL0NrdUoyUCtyY0tkU0FlbmN3Y3pC?=
 =?utf-8?B?am1UZEJoQkxTVEZjQWdud3RvVHAranp3bjZwbU9iZGtwWk1LQ3FPNzM1bTRr?=
 =?utf-8?B?N3JwVXdpYUs0U2dKWnBBWEZoRVZHcVQ4YjUwZEs0cUJnbER3eTl0SDJNUUlM?=
 =?utf-8?B?NkxSd3NUZGJyQmpRMEVLdTdXNlMwS3NEZzlMbmxPRVQvZ0I2YTRNNS8xWlZH?=
 =?utf-8?B?ZXZ6SUdmWGhJRVlmUENPREoxczJ3SUdqUU43bm5IVHV5azdrc1hHQXBLcktz?=
 =?utf-8?B?U215cnR4clRlWHloR2tzYlZ3OUkwK2ZhNlhTdFhBOUducGt6VmZjcDhrNWRM?=
 =?utf-8?B?c2FTTEJGVFlkclF6U2toY0l1RmNFUHduakI0enhjYlZEc3JDOEhiSGo4YmRG?=
 =?utf-8?B?WUFBYkh3bEVTSWlSaWZTRVRNOGY5b3VWMXdqM3BqWHA0TTY2WjVKaWowY1l6?=
 =?utf-8?B?RVg5Z3YvNkdCamlOVXN5cTRKWjRWcjhJME11TTFMQTNRdkpiSEZOSWt0dDlR?=
 =?utf-8?Q?GIDgpLHGN1TbSy5dt3lnuB8B8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 132add6f-3801-442d-f298-08dc01326b24
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 08:05:23.6882 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R1nrjVrdxR/DjkrXho1lF3jwqYLmA/ZaQFIgotR/GK6jr3Yv65GT9q/vYng2jPqL5BL3ApVJ1Q+oAZmPShcRIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDE1LCAyMDIz
IDU6MTAgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgRGVh
aywgSW1yZSA8aW1yZS5kZWFrQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogUkU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogQzIwIGNsb2Nr
IHN0YXRlIHZlcmlmaWNhdGlvbg0KPiANCj4gT24gRnJpLCAxNSBEZWMgMjAyMywgIkthaG9sYSwg
TWlrYSIgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4gd3JvdGU6DQo+ID4+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+
DQo+ID4+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTUsIDIwMjMgMTE6MDIgQU0NCj4gPj4gVG86
IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsNCj4gPj4gaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+PiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9k
aXNwbGF5OiBDMjAgY2xvY2sgc3RhdGUgdmVyaWZpY2F0aW9uDQo+ID4+DQo+ID4+IE9uIEZyaSwg
RGVjIDE1LCAyMDIzIGF0IDEwOjUzOjM2QU0gKzAyMDAsIEltcmUgRGVhayB3cm90ZToNCj4gPj4g
PiBPbiBGcmksIERlYyAxNSwgMjAyMyBhdCAxMDowMDo1N0FNICswMjAwLCBNaWthIEthaG9sYSB3
cm90ZToNCj4gPj4gPiA+IEFkZCBjbG9jayBzdGF0ZSB2ZXJpZmljYXRpb24gZm9yIEMyMC4gU2lu
Y2Ugd2UgYXJlIHVzaWduIGVpdGhlciBBDQo+ID4+ID4gPiBvciBCIGNvbnRleHRzLCB3aGljaCBh
cmUgc2VsZWN0ZWQgYmFzZWQgb24gY2xvY2sgcmF0ZSwgd2UgZmlyc3QNCj4gPj4gPiA+IG5lZWQg
dG8gY2FsY3VsYXRlIGh3IGNsb2NrIGFuZCB1c2UgdGhhdCBjbG9jayB0byBzZWxlY3Qgd2hpY2gN
Cj4gPj4gPiA+IGNvbnRleHQgd2UgYXJlIHVzaW5nLg0KPiA+PiA+DQo+ID4+ID4gQ291bGQgdGhl
IGRlc2NyaXB0aW9uIGJlIGNsZWFyZXIgdGhhdCB0aGUgcGF0Y2ggX2ZpeGVzXyB0aGUgY29udGV4
dA0KPiA+PiA+IHNlbGVjdGlvbj8gKEFsc28gdGhlIHN1YmplY3QgbGluZSBzaG91bGQgYWx3YXlz
IHNheSBfd2hhdF8gdGhlDQo+ID4+ID4gcGF0Y2gNCj4gPj4gPiBkb2VzLikNCj4gPiBPSywgc2hv
dWxkIEkgYWRkIHRoZSBmaXhlcyB0YWcgYXMgd2VsbD8gSSB3aWxsIHJld29yZCB0aGUgY29tbWl0
IG1lc3NhZ2UgdG8gYmV0dGVyIGRlc2NyaWJlIHdoYXQncyBnb2luZyBvbiBpbiB0aGlzIHBhdGNo
Lg0KPiA+DQo+ID4+ID4NCj4gPj4gPiA+DQo+ID4+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEth
aG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+PiA+ID4gLS0tDQo+ID4+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCA4ICsrKysrKystDQo+
ID4+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0K
PiA+PiA+ID4NCj4gPj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYw0KPiA+PiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuYw0KPiA+PiA+ID4gaW5kZXggNzc1YzFjNGE4OTc4Li42NzU3ZTlm
OTQxZTQgMTAwNjQ0DQo+ID4+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYw0KPiA+PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPj4gPiA+IEBAIC0zMDc5LDggKzMwNzksOSBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9jMjBwbGxfc3RhdGVfdmVyaWZ5KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpzdGF0ZSwNCj4gPj4gPiA+ICAJY29uc3Qgc3RydWN0IGludGVsX2MyMHBsbF9zdGF0
ZSAqbXBsbF9zd19zdGF0ZSA9ICZzdGF0ZS0+Y3gwcGxsX3N0YXRlLmMyMDsNCj4gPj4gPiA+ICAJ
Ym9vbCB1c2VfbXBsbGE7DQo+ID4+ID4gPiAgCWludCBpOw0KPiA+PiA+ID4gKwlpbnQgaHdfY2xv
Y2sgPSBpbnRlbF9jMjBwbGxfY2FsY19wb3J0X2Nsb2NrKGVuY29kZXIsDQo+ID4+ID4gPiArbXBs
bF9od19zdGF0ZSk7DQo+ID4+ID4gPg0KPiA+PiA+ID4gLQl1c2VfbXBsbGEgPSBpbnRlbF9jMjBf
dXNlX21wbGxhKG1wbGxfaHdfc3RhdGUtPmNsb2NrKTsNCj4gPj4gPiA+ICsJdXNlX21wbGxhID0g
aW50ZWxfYzIwX3VzZV9tcGxsYShod19jbG9jayk7DQo+ID4+ID4NCj4gPj4gPiBJdCdzIG1wbGxf
aHdfc3RhdGUtPnR4WzBdIEMyMF9QSFlfVVNFX01QTExCIHdoaWNoIHRlbGxzIHRoZSBIVw0KPiA+
PiA+IHdoaWNoIGNvbnRleHQgdG8gdXNlLCBzbyBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIHVzZSB0
aGUgc2FtZSBjb25kaXRpb24gaGVyZS4NCj4gPg0KPiA+IE1heWJlIEkgd2lsbCBkaXRjaCB0aGUg
dXNlX21wbGxhIGNvbXBsZXRlbHkgYW5kIGdvIGRpcmVjdGx5IHdpdGgNCj4gPg0KPiA+IGlmICht
cGxsX2h3X3N0YXRlLT50eF0wXSAmIEMyMF9QSFlfVVNFX01QTExCKSB7IC4uIH0NCj4gPg0KPiA+
IGluc3RlYWQ/DQo+IA0KPiBZb3Ugc2hvdWxkIGZpcnN0IHZlcmlmeSB0aGF0IHRoZSBodyBhbmQg
c3cgc3RhdGVzIGZvciB1c2VfbXBsbGEgYWdyZWUuDQo+IA0KPiBJZiB0aGV5IGRvbid0LCBpdCBk
b2Vzbid0IG1hdHRlciB3aGljaCBvbmUgeW91IHVzZS4NCg0KUmlnaHQsIEkgd2lsbCBjb21wYXJl
IHRoZXNlIHR3byBjb250ZXh0IHNlbGVjdGlvbiBhbmQgdGhyb3cgYSBub3RlIGlmIHRoZXNlIHR3
byBkb2Vzbid0IG1hdGNoLg0KDQpUaGFua3MhDQoNCi1NaWthLQ0KPiANCj4gQlIsDQo+IEphbmku
DQo+IA0KPiANCj4gPg0KPiA+Pg0KPiA+PiBZb3UgY291bGQgYWxzbyBhZGQgYSBjaGVjayBpbnRl
bF9jMjBfdXNlX21wbGxhKGNsb2NrKSBtYXRjaGVzIHRoZSBhYm92ZSBmbGFnLg0KPiA+Pg0KPiA+
PiA+DQo+ID4+ID4gPiAgCWlmICh1c2VfbXBsbGEpIHsNCj4gPj4gPiA+ICAJCWZvciAoaSA9IDA7
IGkgPCBBUlJBWV9TSVpFKG1wbGxfc3dfc3RhdGUtPm1wbGxhKTsgaSsrKSB7DQo+ID4+ID4gPiAg
CQkJSTkxNV9TVEFURV9XQVJOKGk5MTUsIG1wbGxfaHdfc3RhdGUtPm1wbGxhW2ldICE9DQo+ID4+
ID4gPiBtcGxsX3N3X3N0YXRlLT5tcGxsYVtpXSwgQEAgLTMxMTAsNiArMzExMSwxMSBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9jMjBwbGxfc3RhdGVfdmVyaWZ5KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlDQo+ICpzdGF0ZSwNCj4gPj4gPiA+ICAJCQkJY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRj
LT5iYXNlLm5hbWUsIGksDQo+ID4+ID4gPiAgCQkJCW1wbGxfc3dfc3RhdGUtPmNtbltpXSwgbXBs
bF9od19zdGF0ZS0+Y21uW2ldKTsNCj4gPj4gPiA+ICAJfQ0KPiA+PiA+ID4gKw0KPiA+PiA+ID4g
KwlJOTE1X1NUQVRFX1dBUk4oaTkxNSwgaHdfY2xvY2sgIT0gbXBsbF9zd19zdGF0ZS0+Y2xvY2ss
DQo+ID4+ID4gPiArCQkJIltDUlRDOiVkOiVzXSBtaXNtYXRjaCBpbiBDMjA6IFJlZ2lzdGVyIENM
T0NLIChleHBlY3RlZCAlZCwgZm91bmQgJWQpIiwNCj4gPj4gPiA+ICsJCQljcnRjLT5iYXNlLmJh
c2UuaWQsIGNydGMtPmJhc2UubmFtZSwNCj4gPj4gPiA+ICsJCQltcGxsX3N3X3N0YXRlLT5jbG9j
aywgaHdfY2xvY2spOw0KPiA+PiA+DQo+ID4+ID4gSSB0aGluayB0aGUgaW50ZWxfY3J0Y19zdGF0
ZTo6cG9ydF9jbG9jayBTVy9IVyBzdGF0ZSB2ZXJpZmljYXRpb24NCj4gPj4gPiBpcyBlcXVpdmFs
ZW50IHRvIHRoZSBhYm92ZSwgYnV0IGl0J3MgZ29vZCB0byB2ZXJpZnkgaXQgaGVyZSBhcw0KPiA+
PiA+IHdlbGwuIEkgd291bGQgc3RvcmUgaHdfY2xvY2sgdG8gbXBsbF9od19zdGF0ZS0+Y2xvY2sg
aW4NCj4gPj4gPiBpbnRlbF9jMjBwbGxfcmVhZG91dF9od19zdGF0ZSgpIHRob3VnaC4NCj4gPiBX
ZWxsLCBjbG9jayBpcyBwYXJ0IG9mIHBsbCBzdHJ1Y3R1cmUgYW55d2F5LCBzbyBpdCBtaWdodCBh
cyB3ZWxsIGJlIGNoZWNrZWQgaGVyZSB0b28uDQo+ID4NCj4gPiBJIHdpbGwgc3RvcmUgaHcgY2xv
Y2sgdG9vIGluIGludGVsX2MyMHBsbF9yZWFkb3V0X2h3X3N0YXRlKCkNCj4gPg0KPiA+IFRoYW5r
cyENCj4gPiBNaWthDQo+ID4NCj4gPj4gPg0KPiA+PiA+ID4gIH0NCj4gPj4gPiA+DQo+ID4+ID4g
PiAgdm9pZCBpbnRlbF9jeDBwbGxfc3RhdGVfdmVyaWZ5KHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiA+PiA+ID4gLS0NCj4gPj4gPiA+IDIuMzQuMQ0KPiA+PiA+ID4NCj4gDQo+
IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
