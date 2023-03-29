Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFC96CD9C9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 14:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE3010E4CC;
	Wed, 29 Mar 2023 12:58:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EC510E4CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 12:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680094708; x=1711630708;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rO/WWwilKdsaLSCYzpw4EBqFY8KYml1RJZdvoVf+PL4=;
 b=jid8jFeXeK1gxce+hMYU4EJVOJPQmQsznvidRpeU8OaM6ZZuRAGcEJI3
 X/Z8M2l34IMsNWm5qaoF2T6r6Qwznz0saKM4/YrANGRZ+Ys+qOiTA5T6g
 4uGDqYRMpb+8kH8oMlPv/YI9VJ7I5rT/BB9k6EsaDyhNjNH2411xCTrxh
 QsFB+/zrcGa6LdhHzuYuthHGLspcSww+z3+hfNK8rSTVa1yC4mFeNJOP8
 yiWSd59p9smRfISKm5TreOfNu68/W2efipEBLOJF9mI2NOtbcfDuP9bLM
 40qjTOOUkLVmkiEoJZisIfqOool+pk1YYSl3zrMlIM6n4ebdPS0h7JCtI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="329334885"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="329334885"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="753565067"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="753565067"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 29 Mar 2023 05:58:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 05:58:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 05:58:27 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 05:58:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOs2YNehqrVAiXmOCLGVJLuwJM4SCuSOOUWmk8uR1612Z/XW5TMWS2WPedueefI2OZA0m+t4gIIh1q4N+ae1Z91Pcp0tGBWlsPUGqLliEpaTEhAtRC2DPmR8GMIq2ffhqFXB0ZbPfR2rtIGgiy36QlhnDMZRzcLHJvjXb8gtXUcoextNlWh6LfzVskxYUtgaSoEqJfoVEfut4GgInwnX9mZcttA8Kq4JnxkTt6YJQ/FiMf9yu8DplsbAaFzBRtwTymBuKO60gaexPrjNHysJyQTnaEgVSPDGwahTPY9amJ74t4k5lSEZdhhM533Scga93aTvpbq5EGnJ6ZalBAfZdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rO/WWwilKdsaLSCYzpw4EBqFY8KYml1RJZdvoVf+PL4=;
 b=K1jyWy4zYLWGz/8uTfZNTFP/mUXoDoLDcplegwtNNLVWQrK9wbLPL9GkTxSnWJHvcWQZDVyNmMzXdsSQHWwVvTh2OLIO3Q3aQBctFRb0mbZk4IYJMgtKMe6lXVoRWZbQgGlbwNRjYMXlZD1HdGh0933iCtwKuz10anv9Tf8pUHgWeRfYaFpkBAKYvY4oZaHPA1H8ULja42/Z8j9gxDt3B2Rei9qKOJp/ptR/0eccA5bOBAaWrj8FrQgfCuV3YbmAGS/DMDSDU0mvGsAaqWh1N+mnaHdOFuQjJEivkaFaLXIvSdJHD34I4moffP+2l/Rp2LWlZ2zZp/WjYmb+upHUnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB6763.namprd11.prod.outlook.com (2603:10b6:303:20b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.35; Wed, 29 Mar 2023 12:58:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Wed, 29 Mar 2023
 12:58:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 2/6] drm/i915/psr: Modify/Fix
 Wa_16013835468 and prepare for Wa_14015648006
Thread-Index: AQHZYiNKQXRi8mRejkuqSPNNsaTbf68RojqAgAAVyYA=
Date: Wed, 29 Mar 2023 12:58:24 +0000
Message-ID: <99be0f4fc47fdd9e55b65e00a09a23ee5437c85c.camel@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
 <20230329094532.221450-3-jouni.hogander@intel.com>
 <ZCQjqUJjyEAqVX1X@intel.com>
In-Reply-To: <ZCQjqUJjyEAqVX1X@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB6763:EE_
x-ms-office365-filtering-correlation-id: 740fadb2-6292-4c49-60e8-08db30554886
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 88Aw3hOtucV0AegENGzxx8QW9YOeYLlwwGvy9xvYDtYFSZA5+Xn5V0KlaVbNKhq5slgj7IkG2fTf0tg13LKy1/QhFs1L4i3MPqL8vYOY1ds1GnQFxtF1NUYQK3+z/rpJr5rdKWxAmv+qN98EzaN5iI4gFli4csAmRtW2CoBwnXklutBdyLY4y7s8yaI9ZL9XAXxhun63MxEZsclbcRS13EtipHyTl+5sTBqR7iBw8pwmzNZ7h9v4hGrIKdNSHj2/ocV4xz7oIAoUaBXVQmLLItWme3cuZL+e2sZO9kZGs7wulJuwvXBlTSxoXWW6P/coZVnhwQMs7e61MZ0ppxLOpFCmLwaxseb7tfH/EEIV1FRS2ndGxqMjxg9FduhuzJ/kqEMbbOs10D11NdTFh6TsqN7KgNHMUE95TgmO0j01HQ0EG0C5fUQy1k2pvaEWLIXjN8OL263TCFLNNC9t2aUcOsF7y5DUgvBnsvgZfOUWwVTIHD1CBnUP7Ag2gWcnhNliHAFS3MO1+P9qwTpVaj0fr+TU5gMcVoNge/DDtdyBzh+DBKs/T9GT11zl8y9XkvOrYKx+TYnoi6bQrbctnJN3C0JA06n17kvLlrnjalWij9A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199021)(86362001)(186003)(6486002)(8936002)(478600001)(91956017)(4326008)(316002)(76116006)(71200400001)(5660300002)(41300700001)(66476007)(36756003)(66946007)(8676002)(66446008)(66556008)(64756008)(6916009)(6506007)(6512007)(26005)(38070700005)(38100700002)(82960400001)(122000001)(83380400001)(2906002)(66574015)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eGZXTWtVbnFtbDVOSytndTBtVStqR2xTU0tiMXdZOGdUMSs0Zmc3VDFzdmQy?=
 =?utf-8?B?V2FSZng4ME1KcUlHUjFsTFpubTFYUVk2ZytlTk9IQ05OUUYwdXFKYWdDM0RJ?=
 =?utf-8?B?S3VPamFoL0NMZFV3WVlFTDA4UWR0UDVkV1UxVU5CZnlrUnJiY0dDUWVYdXJr?=
 =?utf-8?B?dmw1QjJPSVBld1RndGxpRnVBakhtcGZqbHNXczJGeW1sRE9ZeVRNb3RTL3l6?=
 =?utf-8?B?bmtsWnFYTjI3S1pwcXhIQ0JPOVVxaHpjaWh4WHQrSTlFSStJOHd2cm5ESDkz?=
 =?utf-8?B?ZWQwbGJZNEt3YmFYM2J4U1FuVW5nWHdOeStuLzlOZ3c5bUtKVWtNWE9tVnQ4?=
 =?utf-8?B?TmZiMG9MMFRZeGtwaTQxeWViWTd1RHdNODYySW5CclpIN0hzeGRNMUE4aVZC?=
 =?utf-8?B?dkNlRk5RUzV2dlFob3ZhYWZjRHBxanE4dk51dHdyem1IWVVzRzFmaHdLZ0Ex?=
 =?utf-8?B?NS82U0dvL0xjeUJQVWVSS0x1eVFvOGgwVjFKWEdlU3B6MFVCNVNlSTRiTWRC?=
 =?utf-8?B?ZVhxVXlqMmhtZitVZTBtOUFVemVDZ2Jvc2syRjBZZStHM0tBK2VoUkN5MGhs?=
 =?utf-8?B?VE5CblY5MXZrZ09ZRkZRbnhiS2FGand0cEdzNkpRMGJDR1I2TjluN0pjL25U?=
 =?utf-8?B?R004VW5IWVRocFprYWhwZStwckRqbkNyN3RWNHF2Q3F0czB6QmFXaEtKU3I1?=
 =?utf-8?B?TEhSekFxUlAvMEZHOHoram03NjFRUmJPTjhMZHdsYytuMlZJNG0vRHZxN2ky?=
 =?utf-8?B?dDZOQlVXdDl4NklsdnFnYngzdlFNV0o5TmhiL1V1VEJvOXd5NERZaUFuVFd1?=
 =?utf-8?B?UGFwZHpVTXBOeE9PNlVJTnZVb1RIbEluTmVnT1dpUG00OUFWOEJmY2hoSkQ1?=
 =?utf-8?B?VldJMWR3eWd3cmF6Sko0UEVPQkx1RjEvc281MDAzRktieFBBbnE5alZTdnM3?=
 =?utf-8?B?cTdEYm1sdEdTNW9neHNiSyswTUVCeDVJdStVUHBkd3hmMGFVcTBrY1FnZXRB?=
 =?utf-8?B?b0xhUXpESEdJUnZoMDVzcXFMay8wWDRZWGt4VVdHcXNGSnVIcGlnbWhWbUJH?=
 =?utf-8?B?bjQzK240Y2x4MzZvZDVlYTFZQ2ZFY0NVWk9YcDRpbGUrYjRxYWNsNGVoWWls?=
 =?utf-8?B?aVJEU21HWEtFVDZLWVgyR1ZhUWdYUlBNTGtqL3JpRWQ0SVpuQWtIdjdaaUlm?=
 =?utf-8?B?aVU4cDlYcy9RVkZQNXFlT0ZRY0ZYcmVIaTlPZnRmbUdsSWYrSmNoLy91UWxD?=
 =?utf-8?B?bkpJdkREcGp6V3liWHJ3SzVXcUhEdVV1TjBwTHppVVlVOEY3Sms3dXRIdkwz?=
 =?utf-8?B?V0orQjV1TmlQOUtmamJhOVZUaWFJMzNBcmlsRzJqUmVicTZUR1NMQ2ZMR2hu?=
 =?utf-8?B?YkpFRWlVQUtvUzQ2RXhCOTNYSGt6NjBqSWplSmhEdDVBd2UzTGxYeFl0bjdt?=
 =?utf-8?B?UDFTTmg3cFQwK2RzRDlLVWFza1owQnZtODBvZTBWa1lGVklETkFOK2M3bTdK?=
 =?utf-8?B?WjRhc01XUE5tZ3JNdjM2WVl2MncvTHhUOGVsY05PSGczaHZFc254eDFGT3hO?=
 =?utf-8?B?Qm0vaC9qQVdlZ3hBRHRnRUh4M0x4dTRka0F2YStRYnJlNEtEalEwWU15ZGdx?=
 =?utf-8?B?TWVlY2JKZVh6MVphWUpIZVJ0Y0luWElpbEJJTERTcnJ0WlV3QVZoSTU5L2Ny?=
 =?utf-8?B?YmprM3NnZ3ExbTJrZGdaQkwveUVjY1NnUXJpeXJMaXo2Tm96eVN5YVduL3lL?=
 =?utf-8?B?TGhmT3lDTmZKSFFSYmNjenlyckUwOTJ4N3B2RjhKSkJHeXlVOTJPajJ2a3Vt?=
 =?utf-8?B?YStqZVdxTzVNOHZEbE8zMVBzcVVTVnR4ZHFVSm1TVEFJMlFtZ1g3OWtmUVRV?=
 =?utf-8?B?R1BkaGk4UFlKNjZCYTM1N1NBN2F1ald2ZmdmMVJRTHdmZzFFTVh0eE01SXd3?=
 =?utf-8?B?aVhJZmIxaVRVMGg4YnErMU5GVnl1dlhFZmY2Vis4WUlQS0FGd3poSWg1c2dM?=
 =?utf-8?B?eGt1YmRvQkFzZEpDU0Rzd1FXSVRPVUZiVU5CbTJnRXJWeWlmY1U0SVl2cWtm?=
 =?utf-8?B?TFdXT0haSW5NZGVUTkFKVGZMUEExaVlJZFI4dzkybmhOSG1NTlBOQXdOREN4?=
 =?utf-8?B?YnEvcXV2a2h5ZXJTc2gwWUNlSWdTQldPTnlDcjUxUGpiSEdHc1h1ellhYW9l?=
 =?utf-8?B?MkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6A6DF21FFC808942B39E62EF3288F78E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 740fadb2-6292-4c49-60e8-08db30554886
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2023 12:58:24.9748 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yPLjVoE5bCyG+wFF9E2ZrT38gh92F0BbBbHg1N6dqnGNXeMnjK4T8xduPKeTCNs5x0VXGw7qj5N6UiwkbJtkleJTE2X034/usoeXYr6hEJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/6] drm/i915/psr: Modify/Fix
 Wa_16013835468 and prepare for Wa_14015648006
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

T24gV2VkLCAyMDIzLTAzLTI5IGF0IDE0OjQwICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMjksIDIwMjMgYXQgMTI6NDU6MjhQTSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gV2FfMTYwMTM4MzU0NjggaXMgYSBzZXBhcmF0ZSBmcm9tIFdhXzE0MDE1
NjQ4MDA2IGFuZCBuZWVkcyB0byBiZQo+ID4gYXBwbGllZCBmb3IgVEdMIG9ud2FyZHMuIEZpeCB0
aGlzIGJ5IHJlbW92aW5nIGFsbCB0aGUgcmVmZXJlbmNlcyB0bwo+ID4gV2FfMTQwMTU2NDgwMDYg
YW5kIGFwcGx5IFdhXzE2MDEzODM1NDY4IGFjY29yZGluZyB0byBCc3BlYy4KPiA+IAo+ID4gQWxz
byBtb3ZlIHdvcmthcm91bmQgaW50byBzZXBhcmF0ZSBmdW5jdGlvbiBhcyBhIHByZXBhcmF0aW9u
IGZvcgo+ID4gV2FfMTQwMTU2NDgwMDYgaW1wbGVtZW50YXRpb24uCj4gPiAKPiA+IEJzcGVjOiA1
NTM3OAo+ID4gCj4gPiB2MjoKPiA+IMKgLSBrZWVwIGFwcGx5aW5nIHRoZSB3YSBpbiBpbnRlbF9w
c3JfZW5hYmxlX3NvdXJjZQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMzUgKysrKysrKysrKysrKysrKy0tLS0KPiA+IC0t
LS0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4g
PiBpbmRleCA4ZGJmNDUyZDYzYzIuLjI2YWQ0MzY1OTYwZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IEBAIC0xMTM0LDYgKzExMzQsMjggQEAg
c3RhdGljIHUzMiB3YV8xNjAxMzgzNTQ2OF9iaXRfZ2V0KHN0cnVjdAo+ID4gaW50ZWxfZHAgKmlu
dGVsX2RwKQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0KPiA+IMKgfQo+ID4gwqAKPiA+ICsvKgo+ID4g
KyAqIFdhXzE2MDEzODM1NDY4Cj4gPiArICovCj4gPiArc3RhdGljIHZvaWQgd21fb3B0aW1pemF0
aW9uX3dhKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQo+ID4gKmNydGNfc3RhdGUpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
Cj4gPiArwqDCoMKgwqDCoMKgwqBib29sIHNldF93YV9iaXQgPSBmYWxzZTsKPiA+ICsKPiA+ICvC
oMKgwqDCoMKgwqDCoC8qIFdhXzE2MDEzODM1NDY4ICovCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQo+IAo+IExvb2tzIGxpa2UgdGhpcyBzaG91bGQg
YWN0dWFsbHkgYmUgPT0gMTIKCk9rLEkgd2lsbCBmaXggdGhpcy4gSXQgc2VlbXMgSSBtaXNyZWFk
IHRoZSBCc3BlYyBvbiB0aGlzLgoKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBz
ZXRfd2FfYml0IHw9IGNydGNfc3RhdGUtCj4gPiA+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFu
a19zdGFydCAhPQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXk7Cj4gPiArCj4g
PiArwqDCoMKgwqDCoMKgwqBpZiAoc2V0X3dhX2JpdCkKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsIDAs
Cj4gCj4gQ2FuIHlvdSBkcm9wIHRoYXQgMCB0byB0aGUgbmV4dCBsaW5lIHNvIHRoZSB0d28gYnJh
bmNoZXMKPiBhdCBsZWFzdCBsb29rcyBhIGJpdCBtb3JlIGFsaWtlPwoKSSB3aWxsIGNoYW5nZSBp
dC4KCj4gCj4gQWx0ZXJuYXRpdmVseQo+IGludGVsX2RlX3JtdyhkZXZfcHJpdiwgR0VOOF9DSElD
S0VOX0RDUFJfMSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2FfMTYwMTM4MzU0NjhfYml0
X2dldChpbnRlbF9kcCksCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNldF93YV9iaXQgPyB3
YV8xNjAxMzgzNTQ2OF9iaXRfZ2V0KGludGVsX2RwKSA6IDApOwo+IG9yIHNvbWV0aGluZyBhbG9u
ZyB0aG9zZSBsaW5lcy4KPiAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgd2FfMTYwMTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCkpOwo+
ID4gK8KgwqDCoMKgwqDCoMKgZWxzZQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGludGVsX2RlX3JtdyhkZXZfcHJpdiwgR0VOOF9DSElDS0VOX0RDUFJfMSwKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2FfMTYwMTM4
MzU0NjhfYml0X2dldChpbnRlbF9kcCksIDApOwo+ID4gK30KPiA+ICsKPiA+IMKgc3RhdGljIHZv
aWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUKPiA+ICpjcnRjX3N0
YXRlKQo+ID4gwqB7Cj4gPiBAQCAtMTE3NSwxNSArMTE5Nyw4IEBAIHN0YXRpYyB2b2lkIGludGVs
X3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwLAo+ID4gwqAK
PiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIFdhXzE2MDEzODM1
NDY4Cj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBXYV8xNDAxNTY0ODAwNgo+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqLwo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKElTX01UTF9ESVNQTEFZX1NURVAoZGV2X3By
aXYsIFNURVBfQTAsIFNURVBfQjApIHx8Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNfRElT
UExBWV9WRVIoZGV2X3ByaXYsIDEyLCAxMykpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZibGFua19zdGFy
dAo+ID4gIT0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19z
dGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5KQo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdF
TjhfQ0hJQ0tFTl9EQ1BSXzEsCj4gPiAwLAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+IHdhXzE2MDEz
ODM1NDY4X2JpdF9nZXQoaW50ZWxfZHApKTsKPiA+IC3CoMKgwqDCoMKgwqDCoH0KPiA+ICvCoMKg
wqDCoMKgwqDCoHdtX29wdGltaXphdGlvbl93YShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7Cj4gPiDC
oAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkgewo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3By
aXYpID09IDkpCj4gPiBAQCAtMTM1OSwxMCArMTM3NCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bz
cl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QKPiA+IGludGVsX2RwICppbnRlbF9kcCkKPiA+IMKgCj4g
PiDCoMKgwqDCoMKgwqDCoMKgLyoKPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8xNjAxMzgzNTQ2
OAo+ID4gLcKgwqDCoMKgwqDCoMKgICogV2FfMTQwMTU2NDgwMDYKPiA+IMKgwqDCoMKgwqDCoMKg
wqAgKi8KPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChJU19NVExfRElTUExBWV9TVEVQKGRldl9wcml2
LCBTVEVQX0EwLCBTVEVQX0IwKSB8fAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0RJU1BM
QVlfVkVSKGRldl9wcml2LCAxMiwgMTMpKQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA+PSAxMikKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aW50ZWxfZGVfcm13KGRldl9wcml2LCBHRU44X0NISUNLRU5fRENQUl8xLAo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2FfMTYwMTM4
MzU0NjhfYml0X2dldChpbnRlbF9kcCksIDApOwo+ID4gwqAKPiA+IC0tIAo+ID4gMi4zNC4xCj4g
Cgo=
