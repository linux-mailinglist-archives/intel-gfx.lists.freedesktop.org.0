Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E0682B0B5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 15:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C1A10E317;
	Thu, 11 Jan 2024 14:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057E610E92A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 14:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704983876; x=1736519876;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3pa/2hP+D6Xbx2gJvcuecjnJ8HeKzu92qZZgUiLzI0Q=;
 b=Q7mLODsO7Dqa3iv5dj4s9DmcgGhso2z6rFdYRau1YLL7jpJjiefhUvVx
 XnRlCOQi4H7NyUpqce2sULK9nmi+r7yMzbX/wgW6DNV9XSvM8DVXUnShp
 YiwC4hvYXb4MkO3HuoGL6JZS8xqEmHNibNEPS9umPYofW9U74ViEbCsF+
 c48XLl3kLGra72/2WhKTcnR3ZAuzqxGieA/7WyqsqhaUN7IL9OPQdven0
 e4S4fPO05+0Yfi3wsaqbAwX5juXJVWib7Nh8bIm651FMvW3Pq/tEnMPY/
 v008NsqnDDDOjfupgYAt4pLbj5/N42+0YUeX+hDxFv9z6/0C1IWoZKzDn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5591523"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
   d="scan'208";a="5591523"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 06:37:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="732251695"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="732251695"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 06:37:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 06:37:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 06:37:53 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 06:37:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xe5yRZMh6DOxpF3fzYwobx+RINw7t7uJHPdrCpgjiJIpi7I7KjyBJ6SoVnm01RI3l/U1+qlNitKGIxTjU6lf8Nyb3d/3Pg5LKqF47e5Z6g/CAjckrtaNNwdfAvTqCF6z/NRTzg/1cijZH+kOc3K1vMJOlCSrQMbbX6jz2Hi57UNlYGyA+vKXgTNo8LfyMO+uihIHB6H2VBR8Cr2/BRqlWnfgn9jvFJ0oJP0V/JNcfIuFhGrIYUSOEHCi+OTGsR308qYCJ5jF+LfzON7PMeCwLjPz7AJ16lNs/dxmKHVp08yjyHXCdXklL/WtWFwde+wMqipKa9XcTjCrzyz1cNnspA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3pa/2hP+D6Xbx2gJvcuecjnJ8HeKzu92qZZgUiLzI0Q=;
 b=Fve7bN9nhDX+VoLC0RkDhbRd17mWhTPPnWfaiLYDVB4z4z+kdO34eOxL9RxEgHNqsY/l693b+zAdFWWFp2zw8XEV/5soJ8pqyExTqx0ZLqSMk9twzYGoEO3HFxtQ2G0xHi9RX/Aakd1S8w2T1MX8Ri4OsJITo2/LdIoXw/aDLaY+6b5+LNh+2WZZ0o04q/1vUvdYbspso5kf4THQ+C0govU8+s3C4eWmg/04QHK0GZKx+BWBIQiY/+JI8eW40qu1vp85PEgXZJvtIB+SyNg7oyA79u5qTptsBPOEL3d/f531x7wAAyChMWwvTPHvyQoZu44Tvn6bbfTxrnyRex2WYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH3PR11MB8562.namprd11.prod.outlook.com (2603:10b6:610:1b8::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Thu, 11 Jan
 2024 14:37:51 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::81e3:1bc5:e10c:404f]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::81e3:1bc5:e10c:404f%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 14:37:51 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb
 alloc
Thread-Topic: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb
 alloc
Thread-Index: AQHaQ7Rh9hd0WuMiOE+nnnYnMDDKnrDUoRkAgAAAgLaAAAPSAIAACqmA
Date: Thu, 11 Jan 2024 14:37:51 +0000
Message-ID: <e548a7d67ee71e0f3f75cf04efe078c1d679b881.camel@intel.com>
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
 <20240110110009.28799-2-vinod.govindapillai@intel.com>
 <ZZ_wqnWx5I5h7hKZ@intel.com>
 <CY8PR11MB7777554397E901BBB52CA6B3F6682@CY8PR11MB7777.namprd11.prod.outlook.com>
 <ZZ_0Sq3DMjuEeGuq@intel.com>
In-Reply-To: <ZZ_0Sq3DMjuEeGuq@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH3PR11MB8562:EE_
x-ms-office365-filtering-correlation-id: 049a9c55-dab5-4e5d-79b4-08dc12b2e3c8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0OeFa6Uo+qK/892jPpU8e1Ti//mNo5+mmWL2DasvrFNKV5iGLtXEC+XQOUPseViEQ8F8BNInrvili5ac+WPk31zoi5+xntQzlItBzhjOv5muCcczITlVNmEYFuiCjASt/mP1+pQX8ivlVQYhrd5wD1Pb188VGwMXY4C9WHA+TWQUVeRHQExHrYeJJPaS5tDgSM5if9Ib1+7ckJdgdCS2rgGUpN14WE+E1yjpVso3I2JXk3+u2DUI+CUKiR5llUT79cQYURnAEqNjb0KxT6SK1fSJe6fdAUkQDbas7ndvJdZAJX7oVe8De6JBU3G1rSkpJDjdk2mYHotFmLMuCa0diOkxZg9ah1yFtwTto9e6khMRmykSR42RGUn3VYpbhJcDb2x6ldoqeIhLKeKw4hWw8088iDf4uPAsLQBm+Yz1FSiUcjqHUw5nRj6I4NGAHyjIMmzFfxiEICiowHnKrT8Y1KEVXKE785sWd01ofrVbxUX90AMytoERVKyYHM448dCFoAdMCbq6rO5O18B3ff4dZUPmKO5lo9eT8PFp0lZSpFDq2gp8XuwYVFKqdGi3PWfPiIibaxxTtTmjpC1VhHIqZ11v4yxr+Uzt9skj8Fpie6s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(366004)(396003)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(54906003)(8676002)(66574015)(8936002)(316002)(66946007)(36756003)(2616005)(6486002)(83380400001)(4326008)(71200400001)(53546011)(66556008)(91956017)(76116006)(66446008)(26005)(478600001)(6506007)(64756008)(66476007)(6512007)(966005)(6916009)(2906002)(38100700002)(122000001)(5660300002)(38070700009)(41300700001)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dHJreWgrNzRybklpVGkyNTJJUWRxMGtDSFdYa3hFV3hBMzFOYkNRRHZscUFx?=
 =?utf-8?B?cUxPQStXV2ZaWHlxZjJHZmdwMDNVazZTWWN3RWZ4eW1zcTczaEE3dXJzaVpY?=
 =?utf-8?B?RytyaVFEdUFOeGFBVWRDZGdlNUgySmxNdXZZU0c2YU9WMUpZMytzcFZMUHNa?=
 =?utf-8?B?L1oycE9DQkZObkg0S3hvSDFuL3c3djZVcWp1QklGdktwVHdLQTc3bHhaTkM0?=
 =?utf-8?B?Wm54ODZ6UDk5OWNRR1NRUDB2VGRsWUI5WXlIcnlKTmFIRzZ0UlNCYlJrZFJs?=
 =?utf-8?B?aHVDek1yMFFXZG9ZQWlybEs5amRkR1pkWkIyYldUSGIxcitMZnZ5ZS9nemdJ?=
 =?utf-8?B?LzR3Z1VUMklxeEYzN3FXaVNtaUd1ZWp6cy9Ec0Z2bDdrS3NVLzM4Q0w2TUZE?=
 =?utf-8?B?aUVwZXBBTTYxZjBpTXdLN3FvVUdEa0dCb0VSeW5aQ0VrZU1KN2h2YzlDeEI2?=
 =?utf-8?B?STZ1bzZzcVdZV1dESEtGWFR1dGJWRVVkNVNLQXVja2dOeE5xMG5LWWlGQm1i?=
 =?utf-8?B?NjBIc2ZDVUVLSTZHZ0tMeXRhVEpBWEJQWnd6dXBpMnF0TDBwZTVMaitlenQ1?=
 =?utf-8?B?N210WktGUllPUXI3dThyNjR2TXZKZHhYK3pHVXA4YXJpMXpXR2txU3lZNVVW?=
 =?utf-8?B?MzR4Q3BVVTVMVmN2NEFQQXpNelFIOFRraXF2UU5hbUVQdVVsVnNzb1VQc2l5?=
 =?utf-8?B?MUxLaGErMFhObjhubFluK3pabkhwZmp4NEFFV2hiRlUySVFvaythZkxxQldZ?=
 =?utf-8?B?RW0xRFFMd1VwcW5VbDJ1c0Ezb0g5OEhUY0hWUjY3VVBod2hwRnF5SWZnZ2pq?=
 =?utf-8?B?TmpUYkd2R24yOGZ2eU55bU42ZUZaVDJlL2JHMFRyOHJzNWFIUHlnVzVQQWho?=
 =?utf-8?B?OHFDSy9wZzdFbEtoTFQ4L01wcUFFSzVLL3VGOVlnU1BkdmlxRENKS2hWWTZI?=
 =?utf-8?B?d3k0R29DdjBQZXdsZTVwNllhM0pnR010VmpyTEVPc0NCbUgzWE8zcjFpcUhC?=
 =?utf-8?B?SmdnejMyZ2RnVzB6ZE5MYy9vamJZdjNPVkhJOXB2RFQ0R2dIYjRxMjF3Snh5?=
 =?utf-8?B?dG5tSjRQblFWRmxHbkdVNFFSNGprMXVGMWRwQUJodmlHWVJkTDY2ZWxPTFM5?=
 =?utf-8?B?UFVTenJhN0RyM1RCR2xkcGJjT3pIbjJURlB4ZFhHTldJbkpScFQ0aDBTTDBn?=
 =?utf-8?B?djYvQ2FINUl3TUlnaTlNbDVMZDhrWG1KdWFabEREMDNCL0IyK0JxSysvQW1i?=
 =?utf-8?B?Z09URUgydEE1MEZZMWtQcThucDRhRllYaDcvTVZPTVg1bGRYSTA3UlJLM3hL?=
 =?utf-8?B?YU9aajhhVTFRZThBQXkvTHpyVnZsVnhSc2xpT2dIQzNxTXFyMG8vSmcyM1F4?=
 =?utf-8?B?K0tpNzA4a0JJVFZ0aHFUby9KL3EzZ1NVNzhUM0dtQ0lmWldHUC82ZnYreFFN?=
 =?utf-8?B?K09Sc0o5c0lsaDlFZFFoQUk0QTczK09DWGNOU0RmdGhCUDZ2Rk43aVdaSCt5?=
 =?utf-8?B?WFJYY1dHL0R6WnV1R3ljTE16L2o3SEM1cVFWbDhXMTMrSHR1alNTTnZ3bytD?=
 =?utf-8?B?SGNPMFd6V0tlbndhTVhlLzVzdmhxdzRsLzNlWWFUWE1PSHJIM29samNZSU54?=
 =?utf-8?B?YVRNeXpmOEN5aEFySUdlNkxHckk2aDVlb2crQUtCeVNTUGRrbldlcklvazlx?=
 =?utf-8?B?dHFKdmtNelp3ZzdXa2dSS2xva0I0c2hBQjFWTXY4b3lFbkxaaUVubDhNRjZ1?=
 =?utf-8?B?VjZjaVRNYjBSOGxTQ3h0NEJvTkxwYXVERDBWY2ZxUlNUcEcyVC9OOWVpOXdN?=
 =?utf-8?B?UnhiR1FqRzcxNUtnNDBVVnVsWklER2NNNmpIYWhaem9HZHVNSC9JNy81L001?=
 =?utf-8?B?UjdyOCtsZXRYOFlRUmhjYzVITmt2bzcycGxVVXRqOHdjT2dKKzVoU3dlb3RT?=
 =?utf-8?B?UnJ4SjR4a0RDcVdkQVAyRnBrWXc1enJpa3pmT2hFdmtXbEdKMGUvSGpRaFJR?=
 =?utf-8?B?N2ViSzl4QWg4T3oxVklqMkVTTXk1OHBybDhxVS9BTWcxTWJoZXhmdk9sV3V6?=
 =?utf-8?B?ZzV4L24xeGJVeEwrWDFZODI0UElaQm01a2VRSExWSUxwNG1CKzJjMFN5WGJm?=
 =?utf-8?B?dUdLM09pQmdxVDBpUDZuMnhSdjVoMDJ2aG5XWk1STVFrS0pOME9IMnFBQzVB?=
 =?utf-8?Q?HBw3CY/AujJzTsCYeLL+A5E=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <031365C8B89FAC4ABB80684E93E1E399@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 049a9c55-dab5-4e5d-79b4-08dc12b2e3c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 14:37:51.4432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2uj/NU1IZLOg7SwSS11iLQD4sCeNc1GePq7uwTvKxOm+DThvJId2h4xe0JFdqqbkpestkrM1kxp30M39s2I91BFnKVCsHXrJyay57/elag0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8562
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDI0LTAxLTExIGF0IDE1OjU5ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gVGh1LCBKYW4gMTEsIDIwMjQgYXQgMDE6NDc6MDJQTSArMDAwMCwgR292aW5kYXBpbGxh
aSwgVmlub2Qgd3JvdGU6Cj4gPiBIaSBWaWxsZQo+ID4gCj4gPiBUaGUgZml4IGlzIGluIHRoZSBu
ZXh0IHBhdGNoLgo+ID4gCj4gPiBUaGlzIHBhY2ggY2hhbmdlcyB0aGUgNDA5NiB0byBwYWdlIHNp
emUgbWFjcm8gYXMgdGhlIEJVRyBvbiBpcyBiYXNlZCBvbiB0aGF0IG1hY3JvIGV4cGxpY2l0bHku
Cj4gCj4gSSB0aGluayB0aGUgd2hvbGUgUEFHRV9TSVpFIGhhbmRsaW5nIHNob3VsZCBiZSBpbiB0
aGUgeGUgY29kZQo+IHNpbmNlIGl0J3MgYW4gaW1wbGVtZW50YXRpb24gZGV0YWlsIG9mIHRoZSB4
ZSBjb2RlLgoKU29ycnkuLiBJIGFtIG5vdCBzdXJlIGlmIEkgZ2V0IHlvdXIgcG9pbnQgY29ycmVj
dGx5ISBJIGp1c3QgY2hhbmdlZCB0aGUgbWFnaWMgbnVtYmVyIHdpdGggUEFHRV9TSVpFCmJlY2F1
c2UgaW4gdGhlIHN1YnNlcXVlbnQgImRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgpIiwgdGhl
IEJVR19PTiBpcyBiYXNlZCBvbiAiUEFHRV9TSVpFIgpleHBsaWNpdGx5IGFuZCBub3QgNDA5NsKg
CkJVR19PTigoc2l6ZSAmIChQQUdFX1NJWkUgLSAxKSkgIT0gMCk7CgpUaGUgbmV4dCBwYXRjaCBp
biB0aGUgc2VyaWVzwqBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNTcz
OTA5Lz9zZXJpZXM9MTI4NDI1JnJldj0xIC4KaGFuZGxlcyBhbGlnbm1lbnQgaW4geGUgY29kZQoK
c3RhdGljIGlubGluZSBpbnQgaTkxNV9nZW1fc3RvbGVuX2luc2VydF9ub2RlX2luX3JhbmdlKHN0
cnVjdCB4ZV9kZXZpY2UgKnhlLAogCWludCBlcnI7CiAJdTMyIGZsYWdzID0gWEVfQk9fQ1JFQVRF
X1BJTk5FRF9CSVQgfCBYRV9CT19DUkVBVEVfU1RPTEVOX0JJVDsKIAorCWlmIChhbGlnbikKKwkJ
c2l6ZSA9IEFMSUdOKHNpemUsIGFsaWduKTsKKwoKCkFzIHBlciBzb21lIGNvbW1lbnRzIGluIHRo
ZSB4ZV9ibyBoYW5kbGluZywgaXQgZXhwZWN0cyB0aGUgdXNlcnNwYWNlIHRvIGJlIGF3YXJlIG9m
IHRoZSBhbGlnbm1lbnQKcmVzdHJpY3Rpb25zIGFuZCBoYW5kbGUgdGhlIGFsaWdubWVudHMgcmV0
dXJuIGVycm9yIGluIHN1Y2ggY2FzZWQuIEZvciBrZXJuZWwsIGl0IGRvZXNudCBleHBsaWNpdGx5
CmhhbmRsZSBhbnl0aGluZyBhbmQgZmFpbHMgYXQgdGhlIEJVR19PTigpIGV2ZW50dWFsbHkgb2Yg
dGhlIHNpemUgaXMgbm8gcGFnZSBhbGlnbmVkLgoKPiAKPiA+IAo+ID4gQnIKPiA+IFZpbm9kCj4g
PiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gU2VudDogVGh1cnNk
YXksIEphbnVhcnkgMTEsIDIwMjQgMzo0NDoyMiBwbQo+ID4gVG86IEdvdmluZGFwaWxsYWksIFZp
bm9kIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4KPiA+IENjOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnwqA8aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZz47IFN5
cmphbGEsIFZpbGxlCj4gPiA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBS
ZTogW1BBVENIIHYxIDEvMl0gZHJtL2k5MTUvZGlzcGxheTogdXNlIFBBR0VfU0laRSBtYWNybyBm
b3IgRkJDIGNmYiBhbGxvYwo+ID4gCj4gPiBPbiBXZWQsIEphbiAxMCwgMjAyNCBhdCAwMTowMDow
OFBNICswMjAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3RlOgo+ID4gPiBGQkMgY29tcHJlc3Nl
ZCBmcmFtZSBidWZmZXIgc2l6ZSBuZWVkIHRvIGJlIFBBR0VfU0laRSBhbGlnbmVkCj4gPiA+IGFu
ZCB0aGUgY29ycmVzcG9uZGluZyB0aGUgZHJtX2dlbSBmdW5jdGlvbnMgY2hlY2sgdGhlIG9iamVj
dAo+ID4gPiBzaXplIGFsaWdubWVudCB1c2luZyBQQUdFX1NJWkUgbWFjcm8uIFVzZSB0aGUgUEFH
RV9TSVpFIG1hY3JvCj4gPiA+IGluIHRoZSBjZmIgYWxsb2MgYXMgd2VsbCBpbnN0ZWFkIG9mIHRo
ZSBtYWdpYyBudW1iZXIuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRh
cGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDYgKysrKy0tCj4gPiA+
IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4g
Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ID4g
PiBpbmRleCBmMTdhMWFmYjQ5MjkuLjliOWM4NzE1ZDY2NCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gPiA+IEBAIC03NjQsMTMgKzc2NCwx
NSBAQCBzdGF0aWMgaW50IGZpbmRfY29tcHJlc3Npb25fbGltaXQoc3RydWN0IGludGVsX2ZiYyAq
ZmJjLAo+ID4gPiAKPiA+ID4gwqDCoMKgwqDCoMKgIC8qIFRyeSB0byBvdmVyLWFsbG9jYXRlIHRv
IHJlZHVjZSByZWFsbG9jYXRpb25zIGFuZCBmcmFnbWVudGF0aW9uLiAqLwo+ID4gPiDCoMKgwqDC
oMKgwqAgcmV0ID0gaTkxNV9nZW1fc3RvbGVuX2luc2VydF9ub2RlX2luX3JhbmdlKGk5MTUsICZm
YmMtPmNvbXByZXNzZWRfZmIsCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHNpemUgPDw9IDEsIDQwOTYsIDAsIGVuZCk7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemUgPDw9IDEsIFBBR0VfU0laRSwgMCwKPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5kKTsKPiA+ID4gwqDCoMKgwqDC
oMKgIGlmIChyZXQgPT0gMCkKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1
cm4gbGltaXQ7Cj4gPiA+IAo+ID4gPiDCoMKgwqDCoMKgwqAgZm9yICg7IGxpbWl0IDw9IGludGVs
X2ZiY19tYXhfbGltaXQoaTkxNSk7IGxpbWl0IDw8PSAxKSB7Cj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0ID0gaTkxNV9nZW1fc3RvbGVuX2luc2VydF9ub2RlX2luX3Jhbmdl
KGk5MTUsICZmYmMtPmNvbXByZXNzZWRfZmIsCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplID4+PSAxLCA0MDk2LCAwLCBlbmQp
Owo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc2l6ZSA+Pj0gMSwgUEFHRV9TSVpFLCAwLAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZW5kKTsKPiA+IAo+ID4gUEFHRV9T
SVpFIGlzIDRrIHNvIEkgY2FuJ3Qgc2VlIHRoaXMgZG9pbmcgYW55dGhpbmcgYXQgYWxsLgo+ID4g
Cj4gPiBUaGUgY29ycmVjdCBmaXggaXMgcHJvYmFibHkgZWl0aGVyOgo+ID4gLSBmaXggdGhlIHhl
IGdlbSBjb2RlIHRvIGFsd2F5cyBwYWdlIGFsaWduIHRoZSBzaXplCj4gPiAtIHBhZ2UgYWxpZ24g
aXQgaW4geGUncyBpOTE1X2dlbV9zdG9sZW5faW5zZXJ0X25vZGVfaW5fcmFuZ2UoKQo+ID4gCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCA9PSAwKQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gbGltaXQ7Cj4g
PiA+IMKgwqDCoMKgwqDCoCB9Cj4gPiA+IC0tCj4gPiA+IDIuMzQuMQo+ID4gCj4gPiAtLQo+ID4g
VmlsbGUgU3lyasOkbMOkCj4gPiBJbnRlbAo+ID4gCj4gCgo=
