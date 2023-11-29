Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 191F87FD090
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 09:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A67C410E0CC;
	Wed, 29 Nov 2023 08:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE38F10E0AA;
 Wed, 29 Nov 2023 08:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701246037; x=1732782037;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=s7H9pEJZBntw0LUOqMEy/AR0dcXhbXhwAFd+wXGgdfc=;
 b=gHDqyxVS0Q8dgy2hFmvbcHfQXAMS06POt/eB4nxGeQOv0ZcsySaZAX6o
 NX+QWXrl2YTbQ5OZnn/s8QNSD/j0ls9IRpGy8WrIdmijEU+A37K4F2rAU
 X4McykOsUJX+7obWmVvSFc39RyPMZkoXRyhKWiIS2Cu94g6XVZGgSAZX7
 UzE0FbMee9SfWKRqPCu7V6JxDFu8xT0oLPW5TVv9Ke/ZavK18gD9e78fq
 mMb2k5TpDGPhbyplu4VhEIqR1iFK3Bvwd2IgQQKB/s++6DzbnsPty1eFl
 xXeDHCRW1nMB0iaQiOTy/MbK4x3tRuwXms9g2OTns8WbszMRlmLnm39Um A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="391986605"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="391986605"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 00:20:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="10262279"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 00:20:36 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 00:20:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 00:20:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 00:20:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpsSd7fySqORev0pTyA4KeHk/R8hA+GZpIdRIHNo7sb4SGovylGyKRyao5QDv1XP5zYNV9yqxdIU0N11wLx+1og3Ow7TRd2vR+Sf55CqMuVCmQoExCIGEnpSoNhdmmdrAX9ZCkT4f5T6OyXubir+MM2W8URGj80VwHRAgAjgCfT5ORCbTgsyooEnq6yN4egTVzFOx3mAgpskh7pGwXjphh5pwRvSHjnVXM5wVzpLXBLWzrAiYNQinXmZTpFs8dVTHb9X1Q6UvtZ3VUIwTLzqgwASZx+fvTD/ZsXyHX+iwdNOlvLgb32aPa9sDwEwJTc179bm0Q0AvWW8mwmTag8NnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s7H9pEJZBntw0LUOqMEy/AR0dcXhbXhwAFd+wXGgdfc=;
 b=BRydW7nrLinW/NW/zYfCN3xSWg/Gta4HZ9LoAtwiLzbK4bIUcp1tdOwsdooiIYADEOS1qSuWLxEYf1A5nKUmGGSdlJltFy/FRZzQwCb1bkMBpIjjs8MXkWP0MW73Rel+JS6e26eVbcGY+VxnyPHs/t5F492ydcE6Zq1g8id7Bg6VbafxuU6+fbGArTlEdXtXO9LP1Pup6WgBJOVf/KzoE3WC+XFo3gHzsHh0TdjyXIku2upHpDqc0ofzqBg547JCFENiJg8NKIjk7+utriTijbnIlTMSybEtTaVUaNIHC+6SVCsBJumUdb95k2wmy9KOGeqcCb6V0MVGxFnAyD1nUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH7PR11MB7718.namprd11.prod.outlook.com (2603:10b6:510:2b6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Wed, 29 Nov
 2023 08:20:30 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 08:20:30 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
Thread-Index: AQHaIpzpBGh4x0mH6EaErLNCCrE4lw==
Date: Wed, 29 Nov 2023 08:20:29 +0000
Message-ID: <0f2aae072ab2772293f45ffdb2f21ab781806dd8.camel@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com> <ZVcx1MSvP0UgZ14o@intel.com>
 <b5b7c522527332eb54be2dfa6da5b0ad7cc25a07.camel@intel.com>
 <9d09f2e0-fcaf-4519-8661-5c4d7ca41693@linux.intel.com>
In-Reply-To: <9d09f2e0-fcaf-4519-8661-5c4d7ca41693@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH7PR11MB7718:EE_
x-ms-office365-filtering-correlation-id: 70bcdeaa-0c1d-467d-e691-08dbf0b40c2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zmv8w+fobc7+xMUM80vEBwyUq0ZD0tM/z6K3a/SmqYaLUcYKe+GcwywWa36JU6Q2QX/WJV+qlcb+9rseMkr2OkM0VuQDwxlTY3Ub5WLFmnG9aFSeiAC74bT61TzdV8pYYQcZ71f649hhHU6YqhiBVO55SKSj361lZIM5Ojg0birOeZx8nhk0BvgYJzVrtvFgzwaA4lLCuD5A4hbR3VXP5OIIJqKtSlFLgJV8MKn8no/zqeyDimHMtHII69Kcwnvu7Ky8w8S5+HZ28TS0O1JHCUHNGvuCHwVr5eJ/woDFVDoqQr708hYXtJDH8LFsmHxVnwyZVvYxhhTcTm/DJk8X88uRJAisViEfctqrPfp9qXvHfDPAIDnieqfaSUKf13IfCsaQoofi1iXlCtzH5rKnPNZV/IMTqUO9OivgaCpYtVO3jR8DEjj2Oq5JAxkRQxRAjcKTssuaG7LIkuxomZvLobxrjAq6s56YJ1S7INiR5Tcl1Tj1XjNn3ElgSWwz9H7MXp788WTKctjBp7OoRWeBWW6K8fG0swivPJUG/u50vp4RwjLJIhxBePOsgGzxRqxu04l4fYEnk0b7xqtUqEMiC86JdjRNmdZN6ZyhHUcnLRvZuIQxinIQw+itKyOgt2LZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(230922051799003)(186009)(1800799012)(451199024)(82960400001)(122000001)(508600001)(54906003)(4326008)(36756003)(8676002)(8936002)(91956017)(2616005)(86362001)(110136005)(316002)(64756008)(76116006)(66946007)(66556008)(6506007)(26005)(66446008)(66476007)(66574015)(83380400001)(53546011)(71200400001)(6512007)(38100700002)(38070700009)(6486002)(4001150100001)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cEN3Rk5hRjlzM2I3VlRXZkdtTVYwc2p4Wkt2Q3NyRk94azlMYUtmT2ZNR2Vn?=
 =?utf-8?B?ZmdSOGVtVTAyVTZoSUh5RUdFNjdla25yTUVjQlVST3dTYW9UUFBZczc3d1Q0?=
 =?utf-8?B?N0tMdmg4Z05ETVlVTDlBRUt4R3ZYMlhmQ3djYzBLamtoOEMrY2FOTllxVkox?=
 =?utf-8?B?bk9CTXFGRjEwdDZyZjY3RVZRRmw2VlgxN3NYc3FwVW11anVhZlpMczV0SlJY?=
 =?utf-8?B?dWxDOG1ubHZKaXJ1Y0luR0M1azRZeTJkSGc4U1pXWlVCQ0dkQ3RwUzUwc0Y4?=
 =?utf-8?B?d0ZoLytiNGtqVk5iQ3h2NGRBeVJzNlNlOVR6MjdsRFltQ2VzWDd4dkpKNytw?=
 =?utf-8?B?SzJuTmF4S29jSUdNRkRzTTY3SzNhMEk3T3MrRXpEUFNQT0ozOXZKNjQyMTRV?=
 =?utf-8?B?dTBiZU9lVUlHVmx5dUg3VWNnQXJDV1BMZllzUDVhay92aktZTDhKUnFvK2c1?=
 =?utf-8?B?azFXMGw3K1VEVWk1N0ZQQXk1U1RhRUNRY0pkMWFOOUtBNFhRVVh4UlpnWko4?=
 =?utf-8?B?bFVTRm5uRkZuQWlRaVhDUlk1NDdOU2pDMGNES21QRjhDenZ3dGdWZ1Vhek1B?=
 =?utf-8?B?TXdvaVMvNVQ5T0htd2NkMW41N0ZQeWNJRG5waGRzN1Q5UStVeFUrcENDVEsv?=
 =?utf-8?B?ZzY4cTlRQ1BsaWgwNzJpRExZNk1RZGszSFZKdEJKN2plMnBZM0prYXRmYzZ4?=
 =?utf-8?B?L09qUEUvY2hjL0pVWGNTcThCNVVQUVNtbUhLNU1XZ2o3NXh1UW1mNkJINUxD?=
 =?utf-8?B?MkNZYWEvbU5hcDIvcVBOVHRGQk1raU9ka3h4cnNBbVN5UzdaVk1EdDRaN1VI?=
 =?utf-8?B?Y2VZNWttZ3RpRGVQS0JLeHVyM2w3UkFxeVBhK0dseTB6b2RHMTcyWllPYW01?=
 =?utf-8?B?S2lFY2RwNUQ0ZDdtVThtNmUrUnRSRXlrN0dxSUlMNy9hQVhPU0ZEUWVJWnVO?=
 =?utf-8?B?cXdLM28zS1JZenUvL05aUkJRZVh3UmRvaDlHMkxCdlJnVU9maE9RRmtQaU9B?=
 =?utf-8?B?NTkwOWg4bHhDMzhPaG5tYXp1SzNzWXNtVzhqUXkyeXArQXNYRUdaU2FPdTB2?=
 =?utf-8?B?UEZRUEVaNHIxYUNlOHlrUFc3dk5sUE9lcDRLeG4yZHdlK0k5dURmNFN1WURu?=
 =?utf-8?B?N2F5ZmhQNHFWcTlROW5BWHRaQytjVGRkb29OQS9USHZLYjVSK0xha3F2YUNn?=
 =?utf-8?B?ZXBFMVZhUkEyL2lMaXRTMWZMTEovSFVXL1BlM3BHR3FhRFk1QjIzTmZwUE92?=
 =?utf-8?B?anlsb09vRFJYV1A2L0VoNGx0dG5CRk55bWJVVUdVV2R3VERaSFNCSlF6MzZW?=
 =?utf-8?B?aGJhVk9qSTNCYVhtQnBzaS9iR1pQZWJLWTAzT0hDTkc0QVRwZ3k5d2pMQy9P?=
 =?utf-8?B?Z291RWJkZ2VIb3hVRWhNRk43OCtyQWl4WXUvWTZiMHpRMnZEUm5uOGxMU2tD?=
 =?utf-8?B?TldxZ1ZYVFJhU2IrRjVWMDhSMTlJSys3MW55WDgyRGFUeGg1QWpEVHgyQUVB?=
 =?utf-8?B?WXBnNkx1NmVVU2J0bTI5WC9aMmRlN3FJTkpTZmpsR0ZVVStDYnBHTzRqb1pE?=
 =?utf-8?B?VkxJeWdQSDN6bENZUzdaQTJKeGovbHlDRWVoVXIwTzBCdDRTU0RmbXdRNjBD?=
 =?utf-8?B?QUhsZWh1SlUzWkEzYkEzbGxUYUlsU1cyM2pwY2QxM3VaSGh0WVFsTmw3T0ox?=
 =?utf-8?B?dUhKVUo5N0JZRFhON1dLMThacmYyUEFaOE9ZdEU2ejFnUSt0MW5ERjdSVVRP?=
 =?utf-8?B?WHExa1BhZzJsdGorcTV3RXdKeTd6THNKSFBsY1JMeHZqanVnUU5LNm9YZnlY?=
 =?utf-8?B?RjNtOEtmMDlZVVduQ3NVSnExajVaNjRNM1ArYzd1WDBZTENGclBwSkZIalY3?=
 =?utf-8?B?eVRQaW9ONm9BQ2JaWDJhOStKdHduZmtRc0pJVExTQ3NWWEFPbzRwVFJsWmdW?=
 =?utf-8?B?ZkpBMFlpL1pKYlU5cDZ5YXlxV2ZiVHdMVmlzekVwZzc2ODZZZjFPYll4dWY5?=
 =?utf-8?B?aGZ4RUhSbTh6NStmQVd4V3ViNEE3dXZ0WGNBTEZldlVOcVFrMUFXdUdGbStV?=
 =?utf-8?B?MklYYndFc0VSeVl2ZHl6d2dGTXNISW43VkZwdkhiSmpydnFVSG9QSHNkRzZB?=
 =?utf-8?B?bzFmTHJjNjR1TC9aWThSUDRuWm9UZVpDaStkY3c5VktMODg0OFh3NjZvNXJU?=
 =?utf-8?B?K0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A9559A29ABF2074C8C993ACF3D5EF915@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70bcdeaa-0c1d-467d-e691-08dbf0b40c2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 08:20:29.2061 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P54VtgrTVhpolHn2RZYS+ydRpQASHGELc0BqmXaeIOXj5RYlrIgDytDHAjabHaHS5OyAHE6/7YVQwdA98fi+BByv2X7vzQDAPGGSEaiCw8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7718
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTE3IGF0IDEyOjQ2ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMTcvMTEvMjAyMyAxMjoyMSwgQ29lbGhvLCBMdWNpYW5vIHdyb3RlOg0KPiA+IEFkZGlu
ZyBUdnJ0a28sIGZvciBzb21lIHJlYXNvbiBoZSBkaWRuJ3QgZ2V0IENDZWQgYmVmb3JlLg0KPiA+
IA0KPiA+IA0KPiA+IE9uIEZyaSwgMjAyMy0xMS0xNyBhdCAxMToyNiArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gRnJpLCBOb3YgMTcsIDIwMjMgYXQgMTA6NDE6NDNBTSAr
MDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4gPiBPbiBGcmksIE5vdiAxNywgMjAy
MyBhdCAwODowNToyMUFNICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6DQo+ID4gPiA+ID4g
VGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzLCBWaWxsZSENCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBP
biBGcmksIDIwMjMtMTEtMTcgYXQgMDk6MTkgKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToN
Cj4gPiA+ID4gPiA+IE9uIFRodSwgTm92IDE2LCAyMDIzIGF0IDAxOjI3OjAwUE0gKzAyMDAsIEx1
Y2EgQ29lbGhvIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiBTaW5jZSB3ZSdyZSBhYnN0cmFjdGluZyB0
aGUgZGlzcGxheSBjb2RlIGZyb20gdGhlIHVuZGVybHlpbmcgZHJpdmVyDQo+ID4gPiA+ID4gPiA+
IChpLmUuIGk5MTUgdnMgeGUpLCB3ZSBjYW4ndCB1c2UgdGhlIHVuY29yZSdzIHNwaW5sb2NrIHRv
IHByb3RlY3QNCj4gPiA+ID4gPiA+ID4gY3JpdGljYWwgc2VjdGlvbnMgb2Ygb3VyIGNvZGUuDQo+
ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBBZnRlciBmdXJ0aGVyIGluc3BlY3Rpb24sIGl0
IHNlZW1zIHRoYXQgdGhlIHNwaW5sb2NrIGlzIG5vdCBuZWVkZWQgYXQNCj4gPiA+ID4gPiA+ID4g
YWxsIGFuZCB0aGlzIGNhbiBiZSBoYW5kbGVkIGJ5IGRpc2FibGluZyBwcmVlbXB0aW9uIGFuZCBp
bnRlcnJ1cHRzDQo+ID4gPiA+ID4gPiA+IGluc3RlYWQuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4g
PiA+IHVuY29yZS5sb2NrIGhhcyBtdWx0aXBsZSBwdXJwb3NlczoNCj4gPiA+ID4gPiA+IDEuIHNl
cmlhbGl6ZSBhbGwgcmVnaXN0ZXIgYWNjZXNzZXMgdG8gdGhlIHNhbWUgY2FjaGVsaW5lIGFzIG9u
DQo+ID4gPiA+ID4gPiAgICAgY2VydGFpbiBwbGF0Zm9ybXMgdGhhdCBjYW4gaGFuZyB0aGUgbWFj
aGluZQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IE9rYXksIGRvIHlvdSByZW1lbWJlciB3aGljaCBw
bGF0Zm9ybXM/DQo+ID4gPiA+IA0KPiA+ID4gPiBIU1cgaXMgdGhlIG9uZSBJIHJlbWVtYmVyIGZv
ciBzdXJlIGJlaW5nIGFmZmVjdGVkLg0KPiA+ID4gPiBBbHRob2d1aCBJIGRvbid0IHJlY2FsbCBp
ZiBJIGV2ZXIgbWFuYWdlZCB0byBoYW5nIGl0DQo+ID4gPiA+IHVzaW5nIGRpc3BsYXkgcmVnaXN0
ZXJzIHNwZWNpZmljYWxseS4gaW50ZWxfZ3B1X3RvcA0KPiA+ID4gPiBjZXJ0YWlubHkgd2FzIHZl
cnkgZ29vZCBhdCByZXByb2R1Y2luZyB0aGUgcHJvYmxlbS4NCj4gPiA+ID4gDQo+ID4gPiA+ID4g
SSBjb3VsZG4ndCBmaW5kIGFueSByZWZlcmVuY2UgdG8NCj4gPiA+ID4gPiB0aGlzIHJlYXNvbi4N
Cj4gPiA+ID4gDQo+ID4gPiA+IElmIGFsbCBlbHNlIGZhaWxzIGdpdCBsb2cgaXMgeW91ciBmcmll
bmQuDQo+ID4gPiANCj4gPiA+IEl0IHNlZW1zIHRvIGJlIGRvY3VtZW50ZWQgaW4gaW50ZWxfdW5j
b3JlLmguIFRob3VnaCB0aGF0IG9uZQ0KPiA+ID4gbWVudGlvbnMgSVZCIGluc3RlYWQgb2YgSFNX
IGZvciBzb21lIHJlYXNvbi4gSSBkb24ndCByZWNhbGwNCj4gPiA+IHNlZWluZyBpdCBvbiBJVkIg
bXlzZWxmLCBidXQgSSBzdXBwb3NlIGl0IG1pZ2h0IGhhdmUgYmVlbiBhbg0KPiA+ID4gaXNzdWUg
dGhlcmUgYXMgd2VsbC4gSG93IGxvbmcgdGhlIHByb2JsZW0gcmVtYWluZWQgYWZ0ZXIgSFNXDQo+
ID4gPiBJIGhhdmUgbm8gaWRlYS4NCj4gPiANCj4gPiBPaCwgc29tZWhvdyBJIG1pc3NlZCB0aGF0
LiAgVGhhbmtzLg0KPiA+IA0KPiA+IFNvLCBpdCBzZWVtcyB0aGF0IHRoZSBsb2NraW5nIGlzIGlu
ZGVlZCBuZWVkZWQuICBJIHRoaW5rIHRoZXJlIGFyZSB0d28NCj4gPiBvcHRpb25zLCB0aGVuOg0K
PiA+IA0KPiA+IDEuIEdvIGJhY2sgdG8gbXkgcHJldmlvdXMgdmVyc2lvbiBvZiB0aGUgcGF0Y2gs
IHdoZXJlIEkgaGFkIHRoZSB3cmFwcGVyDQo+ID4gdGhhdCBkaWRuJ3QgbG9jayBhbnl0aGluZyBv
biBYZSBhbmQgaW1wbGVtZW50IHRoZSBkaXNwbGF5IHBhcnQgd2hlbiB3ZQ0KPiA+IGdldCBhIHNp
bWlsYXIgaW1wbGVtZW50YXRpb24gb2YgdGhlIHVuY29yZS5sb2NrIG9uIFhlIChpZiBldmVyIG5l
ZWRlZCkuDQo+ID4gDQo+ID4gMi4gSW1wbGVtZW50IGEgZGlzcGxheS1sb2NhbCBsb2NrIGZvciB0
aGlzLCBhcyBzdWdnZXN0ZWQgYXQgc29tZSBwb2ludCwNCj4gPiBpbmNsdWRpbmcgdGhlIG90aGVy
IGludGVsX2RlKigpIGFjY2Vzc2VzLiAgQnV0IGNhbiB3ZSBiZSBzdXJlIHRoYXQgaXQncw0KPiA+
IGVub3VnaCB0byBwcm90ZWN0IG9ubHkgdGhlIHJlZ2lzdGVycyBhY2Nlc3NlZCBieSB0aGUgZGlz
cGxheT8gSS5lLg0KPiA+IHdvbid0IGFjY2Vzc2luZyBkaXNwbGF5IHJlZ2lzdGVycyBub24tc2Vy
aWFsbHkgaW4gcmVsYXRpb24gdG8gbm9uLQ0KPiA+IGRpc3BsYXkgcmVnaXN0ZXJzPw0KPiA+IA0K
PiA+IA0KPiA+IFByZWZlcmVuY2VzPw0KPiANCj4gQUZBSVIgbXkgaW5pdGlhbCBjb21wbGFpbnQg
d2FzIHRoZSBuYW1pbmcgd2hpY2ggd2FzIGFsb25nIHRoZSBsaW5lcyBvZiANCj4gaW50ZWxfc3Bp
bl9sb2NrKHVuY29yZSkuIEhvdyB0byBjb21lIHVwIHdpdGggYSBjbGVhbiBhbmQgbG9naWNhbCBu
YW1lIGlzIA0KPiB0aGUgcXVlc3Rpb24uLi4NCg0KWW91J3JlIHJpZ2h0LCB0aGF0IHdhcyB5b3Vy
IGZpcnN0IGNvbW1lbnQsIGFuZCBub3cgd2UncmUgYmFjayB0byBpdC4gOikNCg0KDQo+IE9uIFhl
IHlvdSBkb24ndCBuZWVkIGEgbG9jayBzaW5jZSBIU1cvSVZCL2NhY2hlbGluZSBhbmdsZSBkb2Vz
IG5vdCBleGlzdCANCj4gYnV0IHlvdSBuZWVkIGEgbmFtZSB3aGljaCBkb2VzIG5vdCBjbGFzaCB3
aXRoIGVpdGhlci4NCj4gDQo+IEFzc3VtaW5nIHlvdSBzdGlsbCBuZWVkIHRoZSBwcmVlbXB0IG9m
ZiAob3IgaXJxIG9mZikgb24gWGUgZm9yIGJldHRlciANCj4gdGltaW5ncywgbWF5YmUgYWxvbmcg
dGhlIGxpbmVzIG9mIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVyL2V4aXQoaTkxNSk/DQoNCkkg
bGlrZSB0aGlzIG5hbWUsIGJlY2F1c2UgaXQncyBpbmRlZWQgdGhpcyB2Ymxhbmsgc2VjdGlvbiB3
ZSdyZSB0cnlpbmcNCnRvIHByb3RlY3QgaGVyZSwgYW5kIHRoaXMgaXMgbm90IHVzZWQgYW55d2hl
cmUgZWxzZS4NCg0KIA0KPiBBbHRob3VnaCBJIGFtIG5vdCB1cCB0byBzcGVlZCB3aXRoIHdoYXQg
b2JqZWN0IGluc3RlYWQgb2YgaTkxNSB3b3VsZCB5b3UgDQo+IGJlIHBhc3NpbmcgaW4gZnJvbSBY
ZSBpZS4gaG93IGV4YWN0bHkgcG9seW1vcnBoaXNtIGlzIGltcGxlbWVudGVkIGluIA0KPiBzaGFy
ZWQgY29kZS4NCg0KQUZBSUNUIHdlIGFyZSBzdGlsbCB1c2luZyB0aGUgaTkxNSBzdHJ1Y3R1cmUg
Zm9yIG1vc3QgdGhpbmdzIGluc2lkZSB0aGUNCmRpc3BsYXkgY29kZSwgc28gSSBndWVzcyB3ZSBz
aG91bGQgdXNlIHRoYXQgZm9yIG5vdy4NCg0KSSdsbCBzZW5kIGEgbmV3IHZlcnNpb24gb2YgbXkg
b3JpZ2luYWwgcGF0Y2ggaW4gYSBiaXQuDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
