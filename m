Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA282739E05
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 12:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82D2710E14F;
	Thu, 22 Jun 2023 10:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A068E10E14F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 10:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687428522; x=1718964522;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rl38/Aeo9eQOr0z+R9qmE7Dfg4WWvlNQvI26dBx8G24=;
 b=WwDk1Otxmx4TknVsPlhEns0Lvnqd8PWQsoLMNjMMcrGBQPaCqfC67vC/
 mF9Hgh/VM6J+FKLzlaRN7vDCmamYzeOzQBmmXxk3lOoeXIkDk6IHVYhYy
 966Wysfpi09A90Y3iGdP4kQXLV9Kg7hpL41NeiTZ4RTRfMe12DQZ+8+Vq
 tOYNz9JYAPhrV0re9c9qInmLHTTU9z8GUHpwPl/fKShxTCTHrMsVD6xtV
 F9cd96wc9IrzxlAhp0Ea8zGAsLRzIKxSzWulKMZclbMcy2Vtz+sibpaqk
 TJVKVyF6BiGPKmbjg77x5FOdxnIFPM4X1UoJsWDaGNM2rnjgvaA76dion Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="345178041"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="345178041"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 03:08:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="692190841"
X-IronPort-AV: E=Sophos;i="6.00,263,1681196400"; d="scan'208";a="692190841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 22 Jun 2023 03:08:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 03:08:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 03:08:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 03:08:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 03:08:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U0KYBYiNp1YUHqn4QGO5Fq6ydqkKWJpoeNG9trHorYCKJvEMc/yJ3vuvQ1orLGx1dSzwcPc4lmzKV/zcLO8jsgEIb2TQPr0cJF7N0d34wO/00uXTIjEDqmXfmE26koUFpCgfvdcgFX5VmLeiZdaQNjQXOs7oMOhV9eSh9dFwUpjlsRURTmLBGEdeIqfAVdua4PCNrEC1WTcMd/YlOYvjyrDfxyTneedToanhyl5g9ehAI1feKLSNJcUv6REInmHO00Lr3bKXqwfij8VKqZrTOJzVbYEc/DbPFpb9l1Mi8HfqoaqsFNJCJsu1/JOmSlHaD2NqGOzLthXX6XMKJ9mgdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rl38/Aeo9eQOr0z+R9qmE7Dfg4WWvlNQvI26dBx8G24=;
 b=AYojG9vze97Rj3f9WELAIDQXf2lVTZ6VmAlMpZW0/by7l7x3RyQ7aC8NR/5wv5rCi62HXKtYREFY5NUdSfaKpDUlFMWvIf6CpMXsHb+gdMjQWgoKqgsq3Rn5cM5YSy2UKlPzmUltTJojKjpGLuJe7Ad4/Q/O83ohWsRolsIsG4Pv78TvoLzLQn2WPg98ChL/pwCMBRQNnoKgBAVealsdTIkQohhjPtVaNNdHp9tct5RF2hQyZSAhAcz0UJdv6mhZbj3uQGns/Twbegsle0arHwg6Das2buUf/RAkEAoVoQVt6O6F0ipHCoRQsiDLrF4jD4NDQ3DbEE1NVF3mcyReTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.21; Thu, 22 Jun
 2023 10:08:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 10:08:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some values
 in probe_gmdid_display()
Thread-Index: AQHZlGgImCpUUD3SOUiokhfcIc0Y/K+TmcEAgAMbVgCAAAOxsA==
Date: Thu, 22 Jun 2023 10:08:38 +0000
Message-ID: <SN7PR11MB6750474066287C83A4F87A8DE322A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230601090338.80284-1-luciano.coelho@intel.com>
 <SN7PR11MB675089A23F9DFA474BF19721E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
 <cd448c6eed0d0da17ed21f4c25be3ffb20028792.camel@intel.com>
In-Reply-To: <cd448c6eed0d0da17ed21f4c25be3ffb20028792.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7898:EE_
x-ms-office365-filtering-correlation-id: afbf965f-9b54-4cf9-7b73-08db7308a616
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iIgF8s6icG7y3r+W5OP8S2/qR668CV8LEsCZX/yJJATjbhNy7GunYO8QwUZOxb/Ecv/gD0xTTUs8QLx1jdKKXo24ErOpy1hWAmfilwLLeAl9Ql/nBOtjrE3r6XDjM2UlN3cIJ2I5P+hm4TUIcgCTPnlnSrXmT3seWBnsxG0akNJZNfoJoU3IYWheeLJI4r/wGoo3556tyYOF0ZoQGjKHHG0H5L7bc+HKnk7r5VjUpGWFpTgBEi7g4Bn6+/rY9ItAOjshMByJvXdhjpmAx82ywl9zYmZdnhw5gdGj/I4HbmnpYpHEEstiMA08RYCprYp2ZCh02B18BDdQafTeCJU869VsSranoAqPGaiqt6w2aZTImiEIojOAg4NVc3tuX4IbyEjbxB0TVy8lf3FwuKgVr6APh+zIc5k0WUV7xR6pdo3acjxyMTjdEP0NGHLVPANz3FnJzpGLIrkQ3h8ZK7AxEPxaChoiboqWTH182m7gL93inSKOeXWva9d2y2zoVLpc0UXCJtQUVu3y60INlYRfnCOtzzN+llhlHDdhvzu7LQ6tiAy+HUFO8SOiHqKnRUrNlITz0MT6v0/rshC/AqObTzYIJQ1Hjcu3uAhYt/vynPyOr5pWekrJb07MaUW2G62h
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199021)(7696005)(5660300002)(8676002)(8936002)(52536014)(66556008)(64756008)(76116006)(66476007)(66946007)(66446008)(316002)(2906002)(41300700001)(110136005)(71200400001)(478600001)(6506007)(55016003)(9686003)(186003)(83380400001)(26005)(122000001)(38100700002)(82960400001)(33656002)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTM2MjdWajQzeXQ5Sys0cnZFZ2lLQVJua1k1TUZqUDdoZW8yaExnSUdzOHU0?=
 =?utf-8?B?b25HOTJ6OGFHOXl3MGhhSGQ2L3RENU50MDJjdElTSUl5R3NGUTRLTTRKT1ZK?=
 =?utf-8?B?TEJlcDgwOTZ0Q2Q2b1htaGFORW9qYnlRSTA3VWxMZHE5UDdsc3BWOFpQMVBw?=
 =?utf-8?B?MThlT1pKNjEwQmt3RWNnRVYzODhzMzVyT1dibGhRZC9hR2cyWUVGcnUxQnBW?=
 =?utf-8?B?bXFyWldVZ25uK0g0NkExN3JoVjhtd1pOZTE4MFdoZ3VkVUg0MUNUWXhHdVpw?=
 =?utf-8?B?aFR3djE5VHJJUGpyQUlGc2tFZXZWMkVvbkdlOU1KQlVWa2tFV3czYk82aTYz?=
 =?utf-8?B?eDlDUmpBeTJiYmZqSmVOY1F5dlYzSmZ1ZEFIZFNmRllOalk0dHNINzkzN3hi?=
 =?utf-8?B?alI3Y1hPVnEybzVMRHBDTGpiYmpyQzFFRlpNclUvcmZXdWRWbmgxZlFiT2x4?=
 =?utf-8?B?Y1NiYmtBVkhKaG45OHAyc3prNFB2azlkWFY2M0RIdlZVOEZKQ2JDMndiNENk?=
 =?utf-8?B?ejJjd0FPN2hxbGtTYmo1RzJLWVZTaWpMNmJqMThnY1pPcW1PY0NDVHI3c2Ny?=
 =?utf-8?B?dVlaWVdKSjZqRnJyTGgxNW80Ym5qWHEwa3JVeVNCRFlnb3FpVDdOQjduN1pi?=
 =?utf-8?B?aVdab1lzd1prMXFRV1pSa3djKzdLanp0eXltTittMGh1NVRTTGM2bi81bzRU?=
 =?utf-8?B?QXdFVUJQS25nTHBQT1drdDlEOVA3SEdOVGg2Wm1xdUZHaXlwekVEZnVCd1NI?=
 =?utf-8?B?OWltellPaXFPUVV5WHpBNDlEMGQya0UyOWkwa0JGTkRKajJmMmhpQjlZYk1D?=
 =?utf-8?B?TzA2QVI1b0RiSXBuKzBPY24wQmY2blltd0lCUjYrRmZKOXAreUQ0Vy9UbHhS?=
 =?utf-8?B?YzVxNUVZeWs2bTBhbXphUVliSVYvcUJKMEYwaXBpWFZVcTFudzYwV1h2bDN4?=
 =?utf-8?B?QndQaVIvRThoT2VsNEgzYUFpbUdST2pNem9EZDNram5jMTJRVUNmYVNjQkxD?=
 =?utf-8?B?N3gvK3daNzNhNFk5OExyRzVsTGwxVyswVEFaNm9oSFJVMHF0N0tYN3h6RHVs?=
 =?utf-8?B?eEhnMmlnNkswM1lqeTZkSzlmWjNuaGUwZzE2alNCWE8zUHNDZU0zSlZpK1NC?=
 =?utf-8?B?TFhJRzR2ZVBmUXVYVDMrVUgyWGkzUVJNY3p5MGpNK2M0NTBmTVVxY1pjaXE4?=
 =?utf-8?B?SmM3SVdoRSsrWmJWOXYveWM3TjdvZmhuR3dHbUVGeTZ4eU5hWVBJaXdtNEhK?=
 =?utf-8?B?c0tVL0NVMldEeWJzaFVyM1F3ZC9aZW1YcFVVeTlVMFJZQmZOODBDOGJuNnlP?=
 =?utf-8?B?cENGekowcWlEVnVGS0d1cnpFUWFsVGxzcVZOSXYwMVFIdmdZM0wxVTR3SlFz?=
 =?utf-8?B?Vlo1TDNDK3JJanFhcThHMTRGVWo3WWtsc1JoZEJkRDNFcURMQTQyTGRhZkVY?=
 =?utf-8?B?VFVRM0w0QnVsTTUwYWozZ0lhQ3lvRk5NbTlRZ0hDT0FPRFBEbklVN1pxeUdI?=
 =?utf-8?B?bVpDOVRIK3o5MFdpSnNuMzdUVlAyVUVINnBIZEVpZlBPMGtCY21CNWxJRHFI?=
 =?utf-8?B?RFVUOEFtbzk5UCs5eldJNHVZMFJ6YkY5aW00bG5obW0ra25NdlhMbGtCRzFO?=
 =?utf-8?B?eVh0WmpsT3drRWRUTGxPM0hHRHFBeHhzTjlKd0xteWJKemF0Z2FMVk00NTc3?=
 =?utf-8?B?YmVEZGUrVFlXMEJLcGxzMDVZNEMwSDMvdDgwcGRSWG9nc3Y4cmpqcm1NWHdP?=
 =?utf-8?B?K2dScHZRdzNqdER0UkdRS0lpRUc4UVdvZWU4aWpzWGNoMlZJR1VkUUExMnh3?=
 =?utf-8?B?L0FJMFJZQUo2NjV3YjQ1SFZoYXQ5cnF4cnRYa1d2K3JjdE9tMDVaeHhRTDhE?=
 =?utf-8?B?eXBrQmFOUDNRRHprTUtHTG1HQ1lOaTVqQUhLVWJuMHVJeEhiWUlyRnJzTHVh?=
 =?utf-8?B?MlRaVXFuMlVmVFI4Z0hlTGZkUE1Hck1JeDZRVExmR2M1MVE5YmUrZS9mVXV2?=
 =?utf-8?B?a2xLNUt3bko5VTJaRzdjMTFEWW5Hc2lOUGh2cjNiS2VmalBnaGNhMGliM000?=
 =?utf-8?B?THVRTVdBcW8zYkVPYXU0NnBzUnlLVnNEQ1ozU3QxK2ZKWFMwN3hSNGtpUWpa?=
 =?utf-8?Q?1ICKCK4QUgb+8ER508w1X8zov?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afbf965f-9b54-4cf9-7b73-08db7308a616
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 10:08:38.5930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 19kyMJq/tlQEPE7pasqJpteJ54SKYRnbY+zJW/P+FbKDQkIhOHDqyJa7yvYlzUtt0TYdODyQwjSoMMYUbM/peQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: pre-initialize some
 values in probe_gmdid_display()
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

PiBPbiBUdWUsIDIwMjMtMDYtMjAgYXQgMTA6MzAgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3Rl
Og0KPiA+ID4gV2hlbiBpbnRlbF9kaXNwbGF5X2RldmljZV9wcm9iZSgpIChhbmQsIHN1YnNlcXVl
bnRseSwNCj4gPiA+IHByb2JlX2dtZGlkX2Rpc3BsYXkoKSkgcmV0dXJucywgdGhlIGNhbGxlciBl
eHBlY3RzIHZlciwgcmVsIGFuZCBzdGVwDQo+ID4gPiB0byBiZSBpbml0aWFsaXplZC4gIFNpbmNl
IHRoZXJlJ3Mgbm8gd2F5IHRvIGNoZWNrIHRoYXQgdGhlcmUgd2FzIGENCj4gPiA+IGZhaWx1cmUg
YW5kIG5vX2Rpc3BsYXkgd2FzIHJldHVybmVkIHdpdGhvdXQgc29tZSBmdXJ0aGVyDQo+ID4gPiBy
ZWZhY3RvcmluZywgcHJlLSBpbml0aWxpYXplIGFsbCB0aGVzZSB2YWx1ZXMgdG8gemVybyB0byBr
ZWVwIGl0DQo+ID4gPiBzaW1wbGUgYW5kIHNhZmUuDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1i
eTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gPg0KPiA+IExvb2tz
IG9rYXkgdG8gbWUganVzdCBhIHNtYWxsIHN1Z2dlc3Rpb24vcXVlc3Rpb24gYmVsb3cuDQo+ID4N
Cj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGV2aWNlLmMgfCA5ICsrKysrKysrKw0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgOSBp
bnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gPiA+IGluZGV4IDQ2NGRm
MTc2NGE4Ni4uZmI2MzU0ZTllNzA0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jDQo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMNCj4gPiA+IEBAIC03
MzEsNiArNzMxLDE1IEBAIHByb2JlX2dtZGlkX2Rpc3BsYXkoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUNCj4gPiA+ICppOTE1LCB1MTYgKnZlciwgdTE2ICpyZWwsIHUxNiAqc3RlcA0KPiA+ID4gwqAJ
dTMyIHZhbDsNCj4gPiA+IMKgCWludCBpOw0KPiA+ID4NCj4gPiA+ICsJLyogVGhlIGNhbGxlciBl
eHBlY3RzIHRvIHZlciwgcmVsIGFuZCBzdGVwIHRvIGJlDQo+ID4gPiBpbml0aWFsaXplZA0KPiA+
ID4gKwkgKiBoZXJlLCBhbmQgdGhlcmUncyBubyBnb29kIHdheSB0byBjaGVjayB3aGVuIHRoZXJl
IHdhcyBhDQo+ID4gPiArCSAqIGZhaWx1cmUgYW5kIG5vX2Rpc3BsYXkgd2FzIHJldHVybmVkLiAg
U28gaW5pdGlhbGl6ZSBhbGwNCj4gPiA+IHRoZXNlDQo+ID4gPiArCSAqIHZhbHVlcyBoZXJlIHpl
cm8sIHRvIGJlIHN1cmUuDQo+ID4gPiArCSAqLw0KPiA+ID4gKwkqdmVyID0gMDsNCj4gPiA+ICsJ
KnJlbCA9IDA7DQo+ID4gPiArCSpzdGVwID0gMDsNCj4gPiA+ICsNCj4gPg0KPiA+IEZyb20gd2hh
dCBJIGNhbiBzZWUgdGhpcyBpcyBvbmx5IGNhbGxlZCBmcm9tDQo+ID4gaW50ZWxfZGlzcGxheV9k
ZXZpY2VfcHJvYmUoKSB3aGljaCBpcyBpbiB0dXJuIGNhbGxlZCBmcm9tDQo+ID4gaW50ZWxfZGV2
aWNlX2luZm9fZHJpdmVyX2NyZWF0ZSgpIHdoZXJlIHRoZSBhYm92ZSB2YXJpYWJsZXMgYXJlDQo+
ID4gZGVmaW5lZCBtYXliZSB3ZSBpbml0aWFsaXplIHRoZXNlIHZhbHVlcyB0aGVyZSBpdHNlbGYu
DQo+IA0KPiBUaGFua3MgZm9yIHRoZSByZXZpZXchDQo+IA0KPiBJIHRob3VnaHQgYWJvdXQgaW5p
dGlhbGl6aW5nIHRoZSB2YXJpYWJsZXMgb24gdGhlIGNhbGxlciBzaWRlLCBidXQgcmVja29uZWQg
dGhhdA0KPiBpdCB3b3VsZCBiZSBtb3JlIGludHVpdGl2ZSB0byBpbml0aWFsaXplIHRoZW0gaW4g
dGhlDQo+IHByb2JlX2dtZGlkX2Rpc3BsYXkoKSBmdW5jdGlvbiBpbnN0ZWFkLCBiZWNhdXNlIHRo
ZSBjYWxsZXIgZXhwZWN0cyB0aG9zZQ0KPiB2YWx1ZXMgdG8gYmUgc2V0IGluIHN1Y2Nlc3NmdWwg
Y2FzZXMgYW5kIHRoZXJlJ3Mgbm8gd2F5IGZvciBpdCB0byBrbm93IHdoZXRoZXINCj4gdGhlcmUg
d2FzIGEgZmFpbHVyZSBvciBub3QgKGJlY2F1c2Ugd2UgcmV0dXJuIGEgcG9pbnRlciB0byBsb2Nh
bCBub19kaXNwbGF5DQo+IHN0cnVjdHVyZSB0aGF0IHRoZSBjYWxsZXIgZG9lc24ndCBrbm93IGFi
b3V0KS4NCj4gDQo+IE9idmlvdXNseSB3aXRoIHRoZSBjdXJyZW50IGNvZGUgaW4gdGhlIGNhbGxl
ciwgdGhhdCBkb2Vzbid0IG1ha2UgbXVjaA0KPiBkaWZmZXJlbmNlLCBidXQgSSB0aG91Z2h0IGl0
IHdhcyBjbGVhbmVyIGFzIEkgZGlkLg0KPiANCj4gQnV0IEknbSBva2F5IHRvIGNoYW5nZSBpdCBh
bmQgaW5pdGlhbGl6ZSB0aGVtIGF0IHRoZSBjYWxsZXIsIHNvIGp1c3QgbGV0IG1lIGtub3cNCj4g
aWYgeW91IHdhbnQgdGhhdC4NCg0KSSBkb27igJl0IHRoaW5rIGl0IG5lZWRzIHRvIGJlIGNoYW5n
ZWQgdGhlbiBhbmQgdGhlIGV4cGxhbmF0aW9uIGxvb2tzIHJlYXNvbmFibGUuDQpTbyB0aGlzIExH
VE0NCg0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29t
Pg0KPiANCj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNhLg0K
