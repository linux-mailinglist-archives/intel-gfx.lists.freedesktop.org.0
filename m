Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6889C7FF3D1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 16:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095E110E725;
	Thu, 30 Nov 2023 15:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2794210E377;
 Thu, 30 Nov 2023 15:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701359066; x=1732895066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+mcSF/aop+PLuUTNULfOGvg4iazZhz2lNdVqTA0AA2w=;
 b=m0VwWtRhhu3SGg9sZXZlQsfTTYm86dmrtjKEbuv66P5heRLMNcH3svgt
 c+TTYSXHxYRQ6M9MJPGTj7hnLoBJ8KZT05/QrYyw6RsDGG/8pFO5yzUED
 lVrNrwoMHchi939ogMY4rhSyzVf05C9RNMcvO45SNh0AF1miAib/6nm1E
 yVpk4OWLd0saDM/KhIGKKdRqsCglkMyO1ulgAdWqzgzL2PIikUabT9tPX
 VKmwHJo8wBDw0GjPvQytaq06Cp5GaRfvm7gyFbIgtcVJt/Lk5N+BCjzZK
 aHsfNAED62zWG1PQEDk8bHJN3Q9qVfrloiDBgUtx49YQq3shnNSeKhEwK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="199869"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; 
   d="scan'208";a="199869"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 07:44:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="942749472"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="942749472"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 07:44:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 07:44:23 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 07:44:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 07:44:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nPTkhqSAA07yPP4JIa2+JEjIL6zZriaWjYFU6fojlIrDS7ZhxJ0OkOwQXp+a+ESpPqQXrY38PYpYwnoszVRa2Rn1Vs6VgwcV1r7pFtbc/Cr36V1rip3D1cm8XPEdU5xvMHzexZpB0nZ8MP7bWR2srgLPmmagNZ1mr513J7uGzfH1JJPedfntBlNTsSA85ZNnANbr4EnJtB51xZ58ihq6ZJyzlCChDBQ1J3Ei7vioJV3tjT26rgyt8qP7uZhuQf1fiaU4C88YngDmigMvEOptKSDXVRZtJu1KUzxmGAtvn8ZUTPnLIWGghgAIs946zhaAeYI8oarpfhIQ9dwPhpk+wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+mcSF/aop+PLuUTNULfOGvg4iazZhz2lNdVqTA0AA2w=;
 b=N/VVvH0MHBANT8QICHNhbRM/nEKHeCC7WWqdwXxfz/baDB0/lzZfNNsAD0FLk0Eofw/1edxYsnZ/x3iUF+wmm4m1geJcQOx7GWSZmNxNdMoYkHi2eT0TohAZmKK93kTEvjpux+VkWhF/Z1IZqyrb5rBQUuq5EVltQK0DicMdc7hRr8LNESw+azuptvtpLQxT3ihq//HzlziSXhH/sqPQafLzT8bPUkDbzJxgwUI3gzq1EE7UvWKPbLY6y782mtHQBMKkcR5N+p7SnH4TnqPaDmyUy5oAXAd6nJfBrgPKSLwxChAtk4oA2pzSQUWOcl1mMe4JnPUFEjlp6oSmCInbIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MW3PR11MB4652.namprd11.prod.outlook.com (2603:10b6:303:5a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 15:44:20 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 15:44:20 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH v6] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaI4fXkUmKET9ogkCwzo2MkOxT3LCSydWAgAAQN4CAAAhJAIAACnMAgAAUUYA=
Date: Thu, 30 Nov 2023 15:44:20 +0000
Message-ID: <f00edf368488dc3a3ab46716a95f4b392ad5b377.camel@intel.com>
References: <20231130113505.1321348-1-luciano.coelho@intel.com>
 <812728f3-15d2-4327-aebb-79a032d3a2ce@linux.intel.com>
 <c579c861463fba1e24285c034d60f14aeff6d3df.camel@intel.com>
 <d6a5ece0-05c8-4108-9e25-4ad886325ba8@linux.intel.com>
 <e41da80b791fd97d86afe2d4da72a0f244563446.camel@intel.com>
 <ZWicyNETXC6iB1e7@intel.com>
In-Reply-To: <ZWicyNETXC6iB1e7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MW3PR11MB4652:EE_
x-ms-office365-filtering-correlation-id: 0119266c-7f63-4d6e-a344-08dbf1bb37fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UluqVsXeMLRaYFHPEcaog8QcIcJWjwa8IOdlvrwz/dVkwB7Q6TJZYnBzDG7aOs/anZXhqrvAH2BTxbeGP+vWG44SPVLxuba4j4hiWSS25p5EcHnoOcGc4NlWYCrQqR13siUKpSCv8vIJVYQ179MCuJh7Zl3hWCW/xxuNGSeWBNcUlNjDJY8qtBD3MzX+GzMgH3NXcsBz/3/HDVBTJybjARtySVdx56pgt04LjmQ/Q8cCtqfeFUY1/cehnzF443iWqgarIx8d/sfOkw8zU30asJFhYSCFp1Ek3cL2mqHhkqGB/qfA0lDcBlD/wTV9EJ8btOAjVn+f88z64IfXM/f1Q/bV/wD1gn0Wrw/0b7mv/hpCTTJRClepaCwrddjgxWdWSiiy3q8UyoiYyJaLCgL6rQAqG/gSvSYVdLbErtqcac/GQYWXymSnvCjKbEQxTDyrFFn7pWeLcBE/A3dilN9vjGBLLcqwywq5XEZPapryv7RMw4ORgZelnGHvWNObskrhu0ExT9T0ecavktVCfgyyQ/pz7XaJGX6hjMOMct9PCSJmDa4/DdaId4hx01uj6qJTtj6rxTBxC/erhTcAqxYFT7K31LD5/wBPoby0gLZk9Avt/hOfEcuZW4r6z9gRX1ki
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(5660300002)(4001150100001)(8936002)(41300700001)(6862004)(4326008)(8676002)(2906002)(66946007)(37006003)(66556008)(316002)(6636002)(66446008)(66476007)(54906003)(64756008)(91956017)(76116006)(6506007)(2616005)(478600001)(71200400001)(26005)(6486002)(36756003)(83380400001)(53546011)(6512007)(122000001)(38070700009)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UytKb0FiUzJJRVVOWWZvTFMwM250aEVwWjdVVkhrK0FyYVl3Z3pYaCt4SFRX?=
 =?utf-8?B?ZXMyclNnckpFNU11Mm1XWkxaVllSaWc4SXpycDRkZlBJbVN5b3NKT250VVN1?=
 =?utf-8?B?UzdzRkZ2ZWhDRWRHZEtuUmJsQlMrckFHcnUyVmoyRnlNdStOczhFcmFRc2kz?=
 =?utf-8?B?UExLY1hHVU9KREV0d0pBMTV4ZGQvcnZISW96RmppUWxUczF6N3lXSXc5RzZQ?=
 =?utf-8?B?K2gxK0JId0JOWEc1Q3VFVHY5RU5vUmpNSFdXbUErVVlBSXpMNUJNb2dUWGp6?=
 =?utf-8?B?UkdneW13b2V2bCtFbVREVmt0RW5KSHJNTTgzYU9IZ1EyN2piMndKVWgvZ1Av?=
 =?utf-8?B?a3lqMWJBZ3g0NENMeTE5ZExXNlcwRkk5emhGbnYwOEhTVWxCWmdYMnVGRjZj?=
 =?utf-8?B?cTU4Q3VKS2praG95QVJRMjNqaHpFYUc2VmFDanFrYzhHRjVBTlBkZXpKVzNi?=
 =?utf-8?B?TXJUZEdDc0tUV0RlTll6MSt4eHF0Y1RvaU83K3I5OUd6WVJiWjZBWDA2MXdR?=
 =?utf-8?B?dGdGUHRZRVBtVjBHeTJOcGdpVkViK0duYW93dVh1MG8veU1VNnhQdGo0c1JI?=
 =?utf-8?B?TEJjUitteDg2U1NXSkpTbmRrTWRyR08yOENBVk9SbWpaM1ZUbjFDand2T1FH?=
 =?utf-8?B?Y0Q5blArbDBSb2kvRE1pQnJQaitRRzhlT08yMkRkWmpUZGFIQnRwanNyQzJa?=
 =?utf-8?B?SzFoY2hWbkVJQmZJNW9ZY2tjYjhibGxmd3ovZTlocDZmZkY4ZjJXZTFFL3pG?=
 =?utf-8?B?YXNBWXpFRmpzOGdITkJ3TktCRE5SQzZ5S3ZHZkN0eDhkY0pGM0h6MGFxaEVw?=
 =?utf-8?B?dGlWUmlkREpMNXpobnNaS3pPYW05VjltSDVhWnlwQTFDMDB2bXNNck1WL055?=
 =?utf-8?B?T056dVlnUHowN2NVcDBHdU8ySTduYW9CcUJiVDF4VThGdi8vUzl2bXRGSjdE?=
 =?utf-8?B?ZHFhbUFxMDZEekdVNVdJQmQ5cDRBVGF2L29RQmV3dHdPc3hDemxmRHIwR3BN?=
 =?utf-8?B?Nit2RUVOZk5JQzZUR0o2aUhNY0N2V1ZLeHFuYmxGdUQ4TXlpTUVxVHVoeUtI?=
 =?utf-8?B?UVdqMnVLeGZaUWhHbGoyM0t4Ujhpb1V2WHpzdlpaRVhlaXU3dFQremtUYXJJ?=
 =?utf-8?B?ZHRyeHFCaEJFNTRLdmQrN1EzUWxCZzBQRlp6M3o1dzc3aTJ3NGpCR09Zdita?=
 =?utf-8?B?RkUrNS9jK2trRnIzU3FId0xSU3VlTkxJem5reDk2MHpyRXZOZGx4ZGxRTERM?=
 =?utf-8?B?YlM2NW1aNGtGbjN6Y2ZXZTlrK1Z1QzErRU5jNHBFOUVYVDB0OEV3TFFWMmJX?=
 =?utf-8?B?enFpQXo5RElpRXR1RzFFcWpMSGFDb0tLNE9qcGl2MUFHdzg1VW9XSlp5bFRy?=
 =?utf-8?B?K3d0NVdHaHJrRG1PUS92TTZEeGZ3ZmNRbk1CYnNwbytwRHpERzVJMG9XTkRZ?=
 =?utf-8?B?ZEhMQzFEZVZXb1BvMUxTR0dkN0NpRnIzditFRXhMc1g1Um5ERVdzaGJBclhE?=
 =?utf-8?B?THRoRDZ4TU9jdmoxaGs3Q01uQkRtYWlnR1l3aEZjM1RoMS8wU2N2azRseFJR?=
 =?utf-8?B?WWE3TUd2Tlk4KzlDU3BJeHJTeFpHNXpPbmtpWGtndmllWk5nT0NROFBRbVNt?=
 =?utf-8?B?S056bDZaaHBzOUtQa01vOVNOdzNaRmJQTW1xdUMxY01IUXp6a3hKY2FjNmZt?=
 =?utf-8?B?dDlRZlhSMHhoVDh4Q3Q2THQwQVJadk9iM1N1L2hBZ2VKZlAyb0VZd253Q1hi?=
 =?utf-8?B?aEUyTGVtWG11Z25keGQ2amVmdE12ditqamEzYmNrM0l6eWhWaHBxcHJWTEo4?=
 =?utf-8?B?RExrQS9pV1dIZmtYOENvRy8xM0tyd0Z1QTljZmx0dkFlK0hyTDluNnRGT05N?=
 =?utf-8?B?WTR2UDV4T0J5QnNRVVFWZWJOVmVML3BQemwvdG9MQ2wxcFppVEdnNlhhNFdK?=
 =?utf-8?B?WVJrSVZHOHJUdFdTSmt1MmtiWEhtQTBDY3ZnT0EvM0c5NUtEUy9COFdKcVNE?=
 =?utf-8?B?YnpEWUtOTHBxWXY0WG0ySEh5dXVTNnVjazArRStqOHJzMi9UUmlPcmtUWUdp?=
 =?utf-8?B?SkZjaFNvMkY4cUhwTUR3dlBBTnRqQWdBWHJMUGJGQ2tUaFYvaDlINFo3MXdM?=
 =?utf-8?B?WGhvdGtaM1JPNTA1M3l2QnNUc0ZVbS94N3FNZENGUmhDRmNFOU41cnkzRWFG?=
 =?utf-8?B?UUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <329B9755E6E0154786E2F203B59FE303@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0119266c-7f63-4d6e-a344-08dbf1bb37fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 15:44:20.3192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GPA4LvUyei0uix/9moEye7+4D9udO4xp29Z6tLHZO5b5vji0RczA4HeLPORObichd2f6il9n3VoXTv3jAx8spTA0/DtO1mgjxDkhzDmfKYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v6] drm/i915: handle uncore
 spinlock when not available
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTExLTMwIGF0IDA5OjMxIC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFRodSwgTm92IDMwLCAyMDIzIGF0IDAxOjU0OjEzUE0gKzAwMDAsIENvZWxobywgTHVjaWFu
byB3cm90ZToNCj4gPiBPbiBUaHUsIDIwMjMtMTEtMzAgYXQgMTM6MjQgKzAwMDAsIFR2cnRrbyBV
cnN1bGluIHdyb3RlOg0KPiA+ID4gT24gMzAvMTEvMjAyMyAxMjoyNiwgQ29lbGhvLCBMdWNpYW5v
IHdyb3RlOg0KPiA+ID4gPiBPbiBUaHUsIDIwMjMtMTEtMzAgYXQgMTI6MjEgKzAwMDAsIFR2cnRr
byBVcnN1bGluIHdyb3RlOg0KPiA+ID4gPiA+IE9uIDMwLzExLzIwMjMgMTE6MzUsIEx1Y2EgQ29l
bGhvIHdyb3RlOg0KPiA+ID4gPiA+ID4gVGhlIHVuY29yZSBjb2RlIG1heSBub3QgYWx3YXlzIGJl
IGF2YWlsYWJsZSAoZS5nLiB3aGVuIHdlIGJ1aWxkIHRoZQ0KPiA+ID4gPiA+ID4gZGlzcGxheSBj
b2RlIHdpdGggWGUpLCBzbyB3ZSBjYW4ndCBhbHdheXMgcmVseSBvbiBoYXZpbmcgdGhlIHVuY29y
ZSdzDQo+ID4gPiA+ID4gPiBzcGlubG9jay4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVG8g
aGFuZGxlIHRoaXMsIHNwbGl0IHRoZSBzcGluX2xvY2svdW5sb2NrX2lycXNhdmUvcmVzdG9yZSgp
IGludG8NCj4gPiA+ID4gPiA+IHNwaW5fbG9jay91bmxvY2soKSBmb2xsb3dlZCBieSBhIGNhbGwg
dG8gbG9jYWxfaXJxX3NhdmUvcmVzdG9yZSgpIGFuZA0KPiA+ID4gPiA+ID4gY3JlYXRlIHdyYXBw
ZXIgZnVuY3Rpb25zIGZvciBsb2NraW5nIGFuZCB1bmxvY2tpbmcgdGhlIHVuY29yZSdzDQo+ID4g
PiA+ID4gPiBzcGlubG9jay4gIEluIHRoZXNlIGZ1bmN0aW9ucywgd2UgaGF2ZSBhIGNvbmRpdGlv
biBjaGVjayBhbmQgb25seQ0KPiA+ID4gPiA+ID4gYWN0dWFsbHkgdHJ5IHRvIGxvY2svdW5sb2Nr
IHRoZSBzcGlubG9jayB3aGVuIEk5MTUgaXMgZGVmaW5lZCwgYW5kDQo+ID4gPiA+ID4gPiB0aHVz
IHVuY29yZSBpcyBhdmFpbGFibGUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFRoaXMga2Vl
cHMgdGhlIGlmZGVmcyBjb250YWluZWQgaW4gdGhlc2UgbmV3IGZ1bmN0aW9ucyBhbmQgYWxsIHN1
Y2gNCj4gPiA+ID4gPiA+IGxvZ2ljIGluc2lkZSB0aGUgZGlzcGxheSBjb2RlLg0KPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRvLnVyc3VsaW5AaW50ZWwu
Y29tPg0KPiA+ID4gPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+ID4gPiA+ID4gPiBDYzogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4gPiA+ID4gPiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZp
dmlAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8gPGx1
Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEluIHYyOg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiAgICAgICogUmVuYW1lZCB1bmNvcmVfc3Bpbl8qKCkgdG8gaW50ZWxfc3Bpbl8qKCkNCj4gPiA+
ID4gPiA+ICAgICAgKiBDb3JyZWN0ZWQgdGhlIG9yZGVyOiBzYXZlLCBsb2NrLCB1bmxvY2ssIHJl
c3RvcmUNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gSW4gdjM6DQo+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+ICAgICAgKiBVbmRpZCB0aGUgY2hhbmdlIHRvIHBhc3MgZHJtX2k5MTVfcHJpdmF0
ZSBpbnN0ZWFkIG9mIHRoZSBsb2NrDQo+ID4gPiA+ID4gPiAgICAgICAgaXRzZWxmLCBzaW5jZSB3
ZSB3b3VsZCBoYXZlIHRvIGluY2x1ZGUgaTkxNV9kcnYuaCBhbmQgdGhhdCBwdWxscw0KPiA+ID4g
PiA+ID4gICAgICAgIGluIGEgdHJ1Y2tsb2FkIG9mIG90aGVyIGluY2x1ZGVzLg0KPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiBJbiB2NDoNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gICAgICAq
IEFmdGVyIGEgYnJpZWYgYXR0ZW1wdCB0byByZXBsYWNlIHRoaXMgd2l0aCBhIGRpZmZlcmVudCBw
YXRjaCwNCj4gPiA+ID4gPiA+ICAgICAgICB3ZSdyZSBiYWNrIHRvIHRoaXMgb25lOw0KPiA+ID4g
PiA+ID4gICAgICAqIFBhc3MgZHJtX2kxOTVfcHJpdmF0ZSBhZ2FpbiwgYW5kIG1vdmUgdGhlIGZ1
bmN0aW9ucyB0bw0KPiA+ID4gPiA+ID4gICAgICAgIGludGVsX3ZibGFuay5jLCBzbyB3ZSBkb24n
dCBuZWVkIHRvIGluY2x1ZGUgaTkxNV9kcnYuaCBpbiBhDQo+ID4gPiA+ID4gPiAgICAgICAgaGVh
ZGVyIGZpbGUgYW5kIGl0J3MgYWxyZWFkeSBpbmNsdWRlZCBpbiBpbnRlbF92YmxhbmsuYzsNCj4g
PiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gSW4gdjU6DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+
ICAgICAgKiBSZW1vdmUgc3RyYXkgaW5jbHVkZSBpbiBpbnRlbF9kaXNwbGF5Lmg7DQo+ID4gPiA+
ID4gPiAgICAgICogUmVtb3ZlIHVubmVjZXNzYXJ5IGlubGluZSBtb2RpZmllcnMgaW4gdGhlIG5l
dyBmdW5jdGlvbnMuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEluIHY2Og0KPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiAgICAgICogSnVzdCByZW1vdmVkIHRoZSB1bWxhdXRzIGZyb20gVmls
bGUncyBuYW1lLCBiZWNhdXNlIHBhdGNod29yaw0KPiA+ID4gPiA+ID4gICAgICAgIGRpZG4ndCBj
YXRjaCBteSBwYXRjaCBhbmQgSSBzdXNwZWN0IGl0IHdhcyBzb21lIFVURi04IGNvbmZ1c2lvbi4N
Cj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YmxhbmsuYyB8IDQ5ICsrKysrKysrKysrKysrKystLS0tLQ0KPiA+ID4gPiA+ID4g
ICAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92YmxhbmsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJsYW5rLmMNCj4gPiA+ID4gPiA+IGluZGV4IDJjZWMyYWJmOTc0Ni4uMjIxZmNkNmJmNzdi
IDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF92YmxhbmsuYw0KPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YmxhbmsuYw0KPiA+ID4gPiA+ID4gQEAgLTI2NSw2ICsyNjUsMzAgQEAgaW50
IGludGVsX2NydGNfc2NhbmxpbmVfdG9faHcoc3RydWN0IGludGVsX2NydGMgKmNydGMsIGludCBz
Y2FubGluZSkNCj4gPiA+ID4gPiA+ICAgIAlyZXR1cm4gKHNjYW5saW5lICsgdnRvdGFsIC0gY3J0
Yy0+c2NhbmxpbmVfb2Zmc2V0KSAlIHZ0b3RhbDsNCj4gPiA+ID4gPiA+ICAgIH0NCj4gPiA+ID4g
PiA+ICAgIA0KPiA+ID4gPiA+ID4gKy8qDQo+ID4gPiA+ID4gPiArICogVGhlIHVuY29yZSB2ZXJz
aW9uIG9mIHRoZSBzcGluIGxvY2sgZnVuY3Rpb25zIGlzIHVzZWQgdG8gZGVjaWRlDQo+ID4gPiA+
ID4gPiArICogd2hldGhlciB3ZSBuZWVkIHRvIGxvY2sgdGhlIHVuY29yZSBsb2NrIG9yIG5vdC4g
IFRoaXMgaXMgb25seQ0KPiA+ID4gPiA+ID4gKyAqIG5lZWRlZCBpbiBpOTE1LCBub3QgaW4gWGUu
DQo+ID4gPiA+ID4gPiArICoNCj4gPiA+ID4gPiA+ICsgKiBUaGlzIGxvY2sgaW4gaTkxNSBpcyBu
ZWVkZWQgYmVjYXVzZSBzb21lIG9sZCBwbGF0Zm9ybXMgKGF0IGxlYXN0DQo+ID4gPiA+ID4gPiAr
ICogSVZCIGFuZCBwb3NzaWJseSBIU1cgYXMgd2VsbCksIHdoaWNoIGFyZSBub3Qgc3VwcG9ydGVk
IGluIFhlLCBuZWVkDQo+ID4gPiA+ID4gPiArICogYWxsIHJlZ2lzdGVyIGFjY2Vzc2VzIHRvIHRo
ZSBzYW1lIGNhY2hlbGluZSB0byBiZSBzZXJpYWxpemVkLA0KPiA+ID4gPiA+ID4gKyAqIG90aGVy
d2lzZSB0aGV5IG1heSBoYW5nLg0KPiA+ID4gPiA+ID4gKyAqLw0KPiA+ID4gPiA+ID4gK3N0YXRp
YyB2b2lkIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQ0KPiA+ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+ICsjaWZkZWYgSTkxNQ0KPiA+ID4g
PiA+ID4gKwlzcGluX2xvY2soJmk5MTUtPnVuY29yZS5sb2NrKTsNCj4gPiA+ID4gPiA+ICsjZW5k
aWYNCj4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArc3RhdGljIHZv
aWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiA+ID4gPiA+ICt7DQo+ID4gPiA+ID4gPiArI2lmZGVmIEk5MTUNCj4gPiA+ID4gPiA+
ICsJc3Bpbl91bmxvY2soJmk5MTUtPnVuY29yZS5sb2NrKTsNCj4gPiA+ID4gPiA+ICsjZW5kaWYN
Cj4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiAgICBzdGF0aWMgYm9v
bCBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3Moc3RydWN0IGRybV9jcnRjICpfY3J0YywNCj4gPiA+
ID4gPiA+ICAgIAkJCQkgICAgIGJvb2wgaW5fdmJsYW5rX2lycSwNCj4gPiA+ID4gPiA+ICAgIAkJ
CQkgICAgIGludCAqdnBvcywgaW50ICpocG9zLA0KPiA+ID4gPiA+ID4gQEAgLTMwMiwxMSArMzI2
LDEyIEBAIHN0YXRpYyBib29sIGk5MTVfZ2V0X2NydGNfc2Nhbm91dHBvcyhzdHJ1Y3QgZHJtX2Ny
dGMgKl9jcnRjLA0KPiA+ID4gPiA+ID4gICAgCX0NCj4gPiA+ID4gPiA+ICAgIA0KPiA+ID4gPiA+
ID4gICAgCS8qDQo+ID4gPiA+ID4gPiAtCSAqIExvY2sgdW5jb3JlLmxvY2ssIGFzIHdlIHdpbGwg
ZG8gbXVsdGlwbGUgdGltaW5nIGNyaXRpY2FsIHJhdw0KPiA+ID4gPiA+ID4gLQkgKiByZWdpc3Rl
ciByZWFkcywgcG90ZW50aWFsbHkgd2l0aCBwcmVlbXB0aW9uIGRpc2FibGVkLCBzbyB0aGUNCj4g
PiA+ID4gPiA+IC0JICogZm9sbG93aW5nIGNvZGUgbXVzdCBub3QgYmxvY2sgb24gdW5jb3JlLmxv
Y2suDQo+ID4gPiA+ID4gPiArCSAqIEVudGVyIHZibGFuayBjcml0aWNhbCBzZWN0aW9uLCBhcyB3
ZSB3aWxsIGRvIG11bHRpcGxlDQo+ID4gPiA+ID4gPiArCSAqIHRpbWluZyBjcml0aWNhbCByYXcg
cmVnaXN0ZXIgcmVhZHMsIHBvdGVudGlhbGx5IHdpdGgNCj4gPiA+ID4gPiA+ICsJICogcHJlZW1w
dGlvbiBkaXNhYmxlZCwgc28gdGhlIGZvbGxvd2luZyBjb2RlIG11c3Qgbm90IGJsb2NrLg0KPiA+
ID4gPiA+ID4gICAgCSAqLw0KPiA+ID4gPiA+ID4gLQlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3By
aXYtPnVuY29yZS5sb2NrLCBpcnFmbGFncyk7DQo+ID4gPiA+ID4gPiArCWxvY2FsX2lycV9zYXZl
KGlycWZsYWdzKTsNCj4gPiA+ID4gPiA+ICsJaW50ZWxfdmJsYW5rX3NlY3Rpb25fZW50ZXIoZGV2
X3ByaXYpOw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNob3VsZG4ndCBsb2NhbF9pcnFfc2F2ZSBn
byBpbnRvIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKCk/IEl0IHNlZW1zDQo+ID4gPiA+ID4g
YWxsIGNhbGxlcnMgZnJvbSBib3RoIGk5MTUgYW5kIHhlIGVuZCB1cCBkb2luZyB0aGF0IGFueXdh
eSBhbmQgbmFtaW5nDQo+ID4gPiA+ID4gInZibGFua19zdGFydCIgd2FzIHByZXN1bWVkIHRoZXJl
IHdvdWxkIGJlIG1vcmUgdG8gdGhlIHNlY3Rpb24gdGhhbg0KPiA+ID4gPiA+IGNhY2hlbGluZSBt
bWlvIGJ1Zy4gSSBtZWFuIHRoYXQgdGhlcmUgaXMgc29tZSBiZW5lZml0IGZyb20ga2VlcGluZyB0
aGUNCj4gPiA+ID4gPiByZWFkb3V0IHRpbWluZ3MgdGlnaHQuDQo+ID4gPiA+ID4gDQo+ID4gPiA+
IA0KPiA+ID4gPiBUaGUgcmVhc29uIGlzIHRoYXQgdGhlcmUgaXMgb25lIGNhbGxlciB0aGF0IGhh
cyBhbHJlYWR5IGRpc2FibGVkDQo+ID4gPiA+IGludGVycnVwdHMgd2hlbiB0aGlzIGZ1bmN0aW9u
IGlzIGNhbGxlZCAoc2VlIGJlbG93KSwgc28gd2Ugc2hvdWxkbid0IGRvDQo+ID4gPiA+IGl0IGFn
YWluLg0KPiA+ID4gDQo+ID4gPiBZZWFoIEkgc2F3IHRoYXQgYnV0IHdpdGggaXJxc2F2ZS9yZXN0
b3JlIGl0IGlzIHNhZmUgdG8gbmVzdC4gU28gZm9yIG1lIA0KPiA+ID4gaXQgaXMgbW9yZSBhIGZ1
bmRhbWVudGFsIHF1ZXN0aW9uIHdoaWNoIEkgcmFpc2UgYWJvdmUuDQo+ID4gDQo+ID4gU3VyZSwg
aXQgc2hvdWxkIGJlIHNhZmUgdG8gbmVzdCwgYnV0IGl0IHNlZW1lZCBhIGJpdCB1Z2x5IHRvIG1l
Lg0KPiA+IA0KPiA+IEkgY2FuIGNoYW5nZSBpdCwgaWYgeW91IHByZWZlciwgYXMgeW91ciBwb2lu
dCBzZWVtcyB2YWxpZCwgYnV0IEkgd2lsbA0KPiA+IHdhaXQgdG8gc2VlIHdoYXQgUm9kcmlnbyBz
YXlzLCBzaW5jZSBoZSBoYWQgYWxyZWFkeSBnaXZlbiBoaXMgci1iLCBsZXN0DQo+ID4gd2Ugc3Rh
cnQgcGluZy1wb25naW5nIG9uIHRoaXMgdG9vIG11Y2guDQo+IA0KPiBJIGJlbGlldmUgd2Ugc2hv
dWxkIGdvIHdpdGggdGhpcyBwYXRjaCBhcyBpcywgYmVjYXVzZSB0aGlzIGJyaW5ncyBhYnNvbHV0
ZWx5DQo+IG5vIGNvZGUgY2hhbmdlLiBFdmVuIHRob3VnaCB3ZSBiZWxpZXZlIHRoZSBpcnFzYXZl
IGlzIGEgc2FmZSB0aGluZyBvbiB0aGF0DQo+IHNpZGUgaXQgd291bGQgYmUgYSBjaGFuZ2UgaW4g
YmVoYXZpb3IuDQo+IA0KPiBTbywgcHJvYmFibHkgYSBmb2xsb3ctdXAgcGF0Y2ggdG8gYWxzbyBj
b252ZXJ0IHRoZSBvdGhlciBjYXNlIGFuZCBtb3ZpbmcNCj4gZXZlcnl0aGluZyBpbnNpZGUgdGhl
IG5ldyB2Ymxhbmtfc3RhcnQvZW5kIGZ1bmN0aW9ucz8NCg0KT2theSwgY29vbC4gIFNvLCBpZiBz
b21lb25lIGNhbiBtZXJnZSB0aGlzIHBhdGNoIG9uY2UgaXQgcGFzc2VzIENJLA0KSSdsbCBzZW5k
IGEgZm9sbG93IHVwIHBhdGNoIGRvaW5nIGFzIFR2cnRrbyBzdWdnZXN0ZWQuDQoNCi0tDQpDaGVl
cnMsDQpMdWNhLg0K
