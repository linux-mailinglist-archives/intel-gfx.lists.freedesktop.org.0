Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC4D86D0D1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 18:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900AC10E592;
	Thu, 29 Feb 2024 17:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iSUy2p85";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3365110E4DA;
 Thu, 29 Feb 2024 17:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709228223; x=1740764223;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YUnzFIVqQe9qrCqZb9fejDPUqXVkns2EoWaG4QPqM3k=;
 b=iSUy2p85b23vAB9LKLqMXlcmqlcxDKTIXS94+Ch4kP20k2/C8SDnUcdt
 uzAwJ12UEuSRePCa4DL+gVdfTMA//q6/hh5D8n2BZSgD/T40KW2liUEuQ
 9Ft5lBDNFl6AlA9v1eUKOypERs4V/g/m7rznJSl2OKhgKYnXI7mYkOG5N
 LtfuvAch9JLzw/Jl+3xqVm/pNXhb36qYPw2HgYZb7a9bRY/hMwzTRtCBk
 9gkuKD1PntgDFxuKZuWEJBW9QBdbbNq0rqPdKGloQgz3ZISHI+cgf/Xqg
 abTIJ0ZVeBmXk4R1kNRB2TXrkB0ejGrrBz8ZiW3XB+ie0q4WFIWrqaERk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3602542"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3602542"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 09:37:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="38914829"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Feb 2024 09:37:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 09:37:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 29 Feb 2024 09:37:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 29 Feb 2024 09:37:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 29 Feb 2024 09:37:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkG7rkcR0ZEIYghzL9AhY90xnwDLSLoXa3YNMXsCG6npwQjBMmSvhseKKZFmpFAwl8Ui8tpq4CkVDctLNVU6dZbxME92Ew2d8wVU5aEDoj2YHgiPENOD4IBGmnPik8vx497Dl+Fo8H9BT8TTr9Ebf3nj3tFW77ZiR4Nl09r6sC5Wf1Y0hpM1En+m941ynzmB1DyCYA+LIf+SYJEl6vm8T3BVy5eg364z+Qx7+HX5mcrNi1n5WO6AdeiiqZtTAndWTDSyovsnz9TOG66B7NJ7zdQpi4Pj+DCFaWAftGh7LN5d5que4w7XGyxy7QQOP9W5JfNEIyE69jH5FX5+zFg56w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YUnzFIVqQe9qrCqZb9fejDPUqXVkns2EoWaG4QPqM3k=;
 b=UrswAPWLCG4NKsCfW+BWdVZ8ueUq5SkUyhF064+qhVq655j2QhjxoE6tgr0rzYoNzhPd35upg+G0XdM9VDUSh+GySVYSUYP7xYDcoMBS3TJ8eoGH23WoJIDCJd2wjvNxy2gxPVrJ2uR4/98AKNpUEn5zVnqHyir1havBfVAOn5AU/DV3wyFsjEnQVsBxvLZGGqfwvrjNSOf9tIJSK7nt9P/fWONAc/8Oshjm/JLvHR6slZSfEps/kiLE9ymFSg4rMdCeqopAF30yp4ZcDLEm4QXOpCDkZMMWfrULksSf1gQDBKtVNd1KYEIkqevwnmXOExXh4JAoC+vIJUpbMBQbmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by PH7PR11MB5913.namprd11.prod.outlook.com (2603:10b6:510:137::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.16; Thu, 29 Feb
 2024 17:36:58 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::c563:8fb8:d95:71ac%3]) with mapi id 15.20.7339.024; Thu, 29 Feb 2024
 17:36:57 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaak7SyehPNIvZvkGXeCdOLcfE4LEfyZaAgAG/AACAAA6SgA==
Date: Thu, 29 Feb 2024 17:36:57 +0000
Message-ID: <48e1dcbb43bc1d4140b8140c328586728eafc3be.camel@intel.com>
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
 <1dcc4bc35070f9da7f3f275e2765edb8f9a20e3c.camel@intel.com>
 <70165ba67dc882f9171fdc9d6807f0cd60ebfe19.camel@intel.com>
In-Reply-To: <70165ba67dc882f9171fdc9d6807f0cd60ebfe19.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|PH7PR11MB5913:EE_
x-ms-office365-filtering-correlation-id: 107bbbb2-6583-40f2-e391-08dc394d0762
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V92Aa4WEAdmu3swwKduVHaZogckJDr0XMu9qfyJtOXEGQ1qVjJ+Vt/jrBnyW0eaCjP1FNZ4QlA8vKEj973Zs7bwJvlRZOAwNyOuLIHRBM/P1kVzBPI3J/44fuckSv5CYTrNePDDj7r6NieLFI/dskJdKQrsqoS2U3+5P9d5AKj9mGVvF5rA8tSeZGmO82ouPla+wKx6MxPWeUq6dBW4KHvyY+aicFo8eygKUXFJhxfvywajS42oWF8tJUbHBY+QnpSW8ExN0/nfo2lZJ4nfcwvhaYJRMZ9zjDnw9BbzKTf7TDtL7OHDJJWPP/ADIU7wD/vVP5t8xKqwKnZ93QvKKcloNpNObYX5yneR+zYBIfsHpwMsOoA58DePojcQpVBlkpsOOtWMjks6+KXUEuykKDf3Gm1590MjOuQS5aEUNLXCnnXnTxeQZd2v3w/WgukUwq33NngET+t243D+7C2ZNDpTaTWtI2nk7M4kXpWWkEFSN+zT1XtQ2YPzSfZy/rZJ/Nr+41Q8ZQa5rjTCzQ1f+nEjr1OfA4tyRybNm3XWP1NOPZgEE2evvRDXh2jBj3uJXWmDPbDmqYwqGvjmRPSbif+fNZASjqJuQp0VcF5fiGteAaO+BM2RFK7C0wdcNieje6+HEDpNE6cATiplkeYlUXQPzjPUY3dllI6/64rwT7Rg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVQ1N1JUZmtSQ214d3RNN29TbUc4VlBTTVJvSGN5RHljZ2NnK20vd0kyWTVu?=
 =?utf-8?B?akhzYzB2eWkwZWFWdkRFUWhXT1VGMGNlZmNZVmI2N2hiM3h0UEFWZ0o3NEJ1?=
 =?utf-8?B?Y2t1OXdJbnp4QUtDaFR4VHBjcXkzNVF0ZE10UVlCWFBjNnZsaXhTZ3ppeGFa?=
 =?utf-8?B?RWIra2o4ek00MFRWVjBGUFluMmp4VGdZdzNSckJ5N3JHSFlnTjhHRldyWFNB?=
 =?utf-8?B?ZFozR25BL004a0F1L25PSUhGUXFXaHlydUh4UEFrakRtYk0zY3lvYkZjdkU1?=
 =?utf-8?B?dzZ4OW5IclpoUU56WFBtQmh3SVNTL24ydzhKNGR1dHk0dTIvci9EdVVueitC?=
 =?utf-8?B?QWJKTkhkb0ZlWHk4NGNQSyt6cjQ1aFloS2liZ1NlRkRYZUNTays2cjl0Tk1H?=
 =?utf-8?B?WHIzNjMyU2JkclNlOUorazRWZFZJNjNCNkluTHY2RCtURnZVOGNYQWFFdU9L?=
 =?utf-8?B?d2JSR0kxRENSUGt5emw4Q1ZSNDRQQ2NZQnplT2FubFBSM2RVQ3d1ZmRNNVM4?=
 =?utf-8?B?aHVSVnVDQlpqWVpGWEtSbzBtSnNNUjZ1VGRuVjZDZVFHQXhaZXNUcFVCVVhR?=
 =?utf-8?B?NE92bURmdVhQZUJlaW5QSTFMdlhtL0pWVTFHVVUxL01LVmRwNnNzZ3pqZlJ3?=
 =?utf-8?B?SDdXc2dQM0pxVXhiMnV3bFdoSnpTbzFTaHU1aXFJOHhYMHpaQURpbjhiUDlI?=
 =?utf-8?B?bW9RYk85QlJydVVBcGJIL1VwS1FGekFxSUZyL2hva1dHREdDUGpnTEFnem8v?=
 =?utf-8?B?cXMxdWx2RER6VkYwLzNrM3hhaEZoNTJmaGJIZW5xV1hNYjY1dUNTMk5QQjVY?=
 =?utf-8?B?RUdORkJEUXp6bVFCWnZBRGUrS2JqdkZjQWpYVC84elJaSVhKQS94cU9SczdB?=
 =?utf-8?B?UTg1ZEdkdHVuMkhMOTN2OGd5YlhYNzhpd2wvakprNk5jZUkwMXQ1TmRIRzVh?=
 =?utf-8?B?Q2VlRGR0UHVWZGtucElmYVUydXdHcHYySG5xcUNNU25TeGR3VzVKdWV3Rjlv?=
 =?utf-8?B?RzBObThwSm5ubU40OFdTTXIxcGJOVjdLZkkrTUhMUEdqUFJzWDV5ZWx5UFFz?=
 =?utf-8?B?NUJHZzBZK3ErQktiaG9qb3g2a21PbWIxbEc2cnllMzV6bzJ5M1JCemNrdmxa?=
 =?utf-8?B?SloxUUxvU3BOc09uZFdHY0hFb2dYT3g2ek5vcnZCOFNqTW5OR3cwR1IyQzhV?=
 =?utf-8?B?UXZRb2pYekNYNDl1RWQvRkJCelNXVUFURHJRR042RUU0T05jQWZNZzlSSUgz?=
 =?utf-8?B?TXpqbHZ5MzIyTXp1YS9FTGt2V2UrU3Zha1kxQ1dib1B0VTRNbnp3b2lVWTY0?=
 =?utf-8?B?NnVUWHdNYXMrQ1AvcU9BTi9wdStNMjBSUkVNRCtSanV5enB3SUE0NllMTSs5?=
 =?utf-8?B?TkpTZXN5dFQrMWpGWkZNM1hoOWcwTk5xL2dCV2luSHhnYWNOV2wvTFJqWkkx?=
 =?utf-8?B?MEZGeVBSalZUdlBnbkxadHNMNjVmN1dZVlNDT2x0WVhpdGtJOE9UWUdMVGdk?=
 =?utf-8?B?Yll6cTgxMDFWV2FLbVVWaFZhY1FzT0FWMXBjK05Ldnl1ejlxc3YzU0NCMFIw?=
 =?utf-8?B?TEt1MmtTTWU3L2tCYXVHeFdPbDg3T2tvMFprUGNJc1oxT3AvZ0VObUJzZEdq?=
 =?utf-8?B?SERRei8zbTBNSGExT1VUdVJaYms4RjJXK1NPUGZZczg4dkpIQjF5Y3NXOGYx?=
 =?utf-8?B?TFUyYXJlRjJHbndzbFNFNmJBU3c0aUNKVktuajhJeGFHNWZTdXduSEk2cnlI?=
 =?utf-8?B?Vk9SNVBXbWYwRjE1eG04c1lrRnBqVGxoaGh5Y1lOMzFFTmIxS0FkRDdhZDJ0?=
 =?utf-8?B?VFJpTVJiMkRyRmlZQ3BCQ1h5RnlZNHZsT0JFM0ZVTzFsUlNoeVRGOTFDNEFF?=
 =?utf-8?B?WTQrb1BQVnp5VERta3RHMkhhblo0R0dTano0ejYvUjdaM1lQZzFmV3R2QXZT?=
 =?utf-8?B?VEZWV3Vwbktwa2Z1cmR3SkhBWHNCOXdVcGoyZk95MmpOam9veUJUVGpkTXNw?=
 =?utf-8?B?TEVrWmtseE9LL3c4azZ4WlA2a3Q0N1ZEano5SEIxa05KRWprVGdNdU5GTXhW?=
 =?utf-8?B?YTE4N0NBYnVKekthRUVmRVVwZ0xSQU80VzM1VHVwdjZNbk1qb0VoWVJCSEhM?=
 =?utf-8?B?VDR5STFSL3FBMEhxR213aDJVN3VVUXlhWkhXd0xGbVJZOU5ReUp3OXFzS2pH?=
 =?utf-8?B?bGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E885A68D3292184AA751C80028B303B1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 107bbbb2-6583-40f2-e391-08dc394d0762
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Feb 2024 17:36:57.8426 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z2hJ/lbH8Dgoh/oXnlYsmaChrm3oTyrGS2c0+huNe0vSGQoZ/46ivBzkuHiXw5RaE+PQfGe1p+U4GLZ6DC0vSg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5913
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

T24gVGh1LCAyMDI0LTAyLTI5IGF0IDE2OjQ0ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gV2VkLCAyMDI0LTAyLTI4IGF0IDA2OjA0IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiA+IE9uIFdlZCwgMjAyNC0wMi0yOCBhdCAxNjowMiArMDIwMCwgSnVoYS1QZWtr
YSBIZWlra2lsYSB3cm90ZToNCj4gPiA+IEF1eENDUyBmcmFtZWJ1ZmZlcnMgZG9uJ3Qgd29yayBv
biBYZSBkcml2ZXIgaGVuY2UgZGlzYWJsZSB0aGVtDQo+ID4gPiBmcm9tIHBsYW5lIGNhcGFiaWxp
dGllcyB1bnRpbCB0aGV5IGFyZSBmaXhlZC4gRmxhdENDUyBmcmFtZWJ1ZmZlcnMNCj4gPiA+IHdv
cmsgYW5kIHRoZXkgYXJlIGxlZnQgZW5hYmxlZC4gQ0NTIGlzIGxlZnQgdW50b3VjaGVkIGZvciBp
OTE1DQo+ID4gPiBkcml2ZXIuDQo+ID4gPiANCj4gPiANCj4gPiBSZXZpZXdlZC1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IA0KPiBUaGlzIG5lZWRz
IGEgRml4ZXMgdGFnIHNvIGl0IGdldHMgYmFja3BvcnRlZCB0byBMaW51eCA2LjguDQoNClRlc3Rl
ZCBvbiBYZSBLTUQgYW5kIGZpeGVkIHRoZSBpc3N1ZSBhdCBsZWFzdCBvbiBBREwtUCwgeW91IGNh
biBhbHNvIGFkZDoNCg0KVGVzdGVkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KdGhhbmsgeW91DQoNCj4gDQo+ID4gDQo+ID4gPiBDbG9zZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVsLy0vaXNzdWVzLzkzMw0K
PiA+ID4gU2lnbmVkLW9mZi1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtr
aWxhQGdtYWlsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgMyArKysNCj4gPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gPiBpbmRleCBlOTQxZTJl
NGZkMTQuLjg2MDU3NGQwNGY4OCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+ID4gQEAgLTIyOTUs
NiArMjI5NSw5IEBAIHN0YXRpYyB1OCBza2xfZ2V0X3BsYW5lX2NhcHMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsDQo+ID4gPiAgCWlmIChIQVNfNFRJTEUoaTkxNSkpDQo+ID4gPiAgCQlj
YXBzIHw9IElOVEVMX1BMQU5FX0NBUF9USUxJTkdfNDsNCj4gPiA+ICANCj4gPiA+ICsJaWYgKCFJ
U19FTkFCTEVEKEk5MTUpICYmICFIQVNfRkxBVF9DQ1MoaTkxNSkpDQo+ID4gPiArCQlyZXR1cm4g
Y2FwczsNCj4gPiA+ICsNCj4gPiA+ICAJaWYgKHNrbF9wbGFuZV9oYXNfcmNfY2NzKGk5MTUsIHBp
cGUsIHBsYW5lX2lkKSkgew0KPiA+ID4gIAkJY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfQ0NTX1JD
Ow0KPiA+ID4gIAkJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0KPiA+IA0KPiANCg0K
