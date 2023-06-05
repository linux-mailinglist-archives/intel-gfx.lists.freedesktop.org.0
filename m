Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195B5722263
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90C610E1C0;
	Mon,  5 Jun 2023 09:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E389610E1C0
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685958087; x=1717494087;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7ccRqAGhvZN/qZakPyxuV691g+CB/NPdCvhc2zK3Tp0=;
 b=StetUuOjRxgIAEONE0WMl0RBWxMEwM2cTiACDeUVtP29EJj6bOxsmazF
 fnbDzovR3bEWUMNMa36+XznDjjOMeRRPOcHAwReWDQMmTqCC96AwZfRS6
 EluweW8Qo6jcHzaLQj/rRmsl3RQPPQU1wIPf5ZV2OS7Rd2QPaFl9vbRM2
 NEDBoZ0dta5ZaAJSxk/un58pmd7R+cAkPy34m2Y6o0PYvX6WyYFB1CCni
 d61jYis2+5Br08eq0+hTfgERHtFqHZYTDBGyLeI+cgJ06VpLsbj6d5Kmh
 4qKc8nj/ptjksDZ03ET4+G9wsY8J3Iptze0xB0PJK9c9xaKTV8DG6lreO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="336682082"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="336682082"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="686056979"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="686056979"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 05 Jun 2023 02:41:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 02:41:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 5 Jun 2023 02:41:24 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 5 Jun 2023 02:41:24 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 5 Jun 2023 02:41:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxIH+dH8Se6GQqmtE9EnzLbeQ8pN2f1j0a7EmuQWinHOam5RSaVy0Eh1eQhOzhMjK+ECRSLydAlrXAwZBUdO0htjCPlSqbD+hqSYL4Mr+pR3PFnO/98J5uBxXcGL4kCWjfEL09Ay3GOMZ26I++KxXs5w9qX0rpKYrdS1fFoRGGqxH176j+cMpHhCUOur5VcDdU5on6IuoDJp5O/LhTWjEm8cW7IMdAVemK4hA9QuQKsLtgA+G8JXQ2khQOCU3bVboCvj7lGCwPPfGRYPANUYHgp+afrp2P4Dv5JIAdE5IXpaQLvSqinishG7iXNewvv1uXjz4l+atFQonZzbhIytXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7ccRqAGhvZN/qZakPyxuV691g+CB/NPdCvhc2zK3Tp0=;
 b=LTtEDsJfwCA+CYsHHlZFGEgPADlnNzkM6c59h8U3txnTtggFqOYSEZrOI6R41R61RmJCWWF/5SM6yEgTq0dOCk22sZyVEc+VtUUGkLLHvFugZiIo6sf6hIesFINtElKQXau26DeLEYgeDZyaa7CQTwftIlZJ8wUUGfuu8hrGbrtZOy351uLBSclUxAuYGFOkiH6rN8pVBRcadQy+9iJ5F4DWlFxXs+q0iuUKGgDdv0M7bxyliUvIhIiod0sZ+6qsy+bizKeIDZk+TLZqLOgSEJuH8f398TTbI1lhWAKYJzMFih5Ujmo+bRclaTyKeKzHAwJAW6KfgInn41BK978a1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Mon, 5 Jun 2023 09:41:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 09:41:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "Kahola, Mika" <mika.kahola@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/mtl: Reset only one lane in case
 of MFD
Thread-Index: AQHZlHKK9cky4NvVlkKFe3UUOLY+3a914fOAgAYY7IA=
Date: Mon, 5 Jun 2023 09:41:22 +0000
Message-ID: <7af7fe7bcf2658cd9770de67e828c83bbb19a654.camel@intel.com>
References: <20230601101314.332392-1-mika.kahola@intel.com>
 <051c3a968f25cbfa63eb55b378aa680b7225b643.camel@coelho.fi>
In-Reply-To: <051c3a968f25cbfa63eb55b378aa680b7225b643.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB5891:EE_
x-ms-office365-filtering-correlation-id: 93853f71-412d-45e8-b817-08db65a905bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /mgV2sF38phQAuXAW8TqagGe0e67QG5SOkDNZc/uOOVBlImnYCru5Omp9FzvhWiBGkusx3yYGVMVGWiEtC6ExBSRM8GcylNrlH5d5In3b4Sov7BpdurvVtmX9BsrwIT77yDTFy4sr3xF7gFIr90DbLlVDa54VvYcAcG72B3xmsA207Twb+1U7l8+oSQYQRzAuXGyCv55AeLqhBHTvebmuk5sA72I6+VLgUPzfdDgWNYGNkAkui9Jgp5UZ0sx16tpNdJ5PukXpO5PZ60vncpUrH9wLCke9LVvxzyDt94B6CHx2MA0U8b6Fzkre3EODVWNT8TCSb/cx/ylqihDQ8qTKVY1chbC9GYw8j8Sr32YvVnVlWhncXCJGEHtO2T8dQjSPUtOdwprqaFvvHcykiV8x8//sjI3CnWbds7fiNLYsuqNUZ/qnVhiBmNRNsysGFSWem0bDsKh001O1oA2uv0nsytSGWyF6j32QBsAe3NSCGqCdUXsugwlv4Wtnqh1uRrZIWvmbX1LZ8/zeswWXOc3qU3+tbktyQ9b9mDaPsX8FqWQxeDnh1HsRgyxHf34Eyicc5v8Sp7053V4gD5yU0cmUuydn08JV2RBeUmF42zJQKo40/YbZaHP0LgIDYaaQEGQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(136003)(396003)(376002)(451199021)(83380400001)(82960400001)(110136005)(478600001)(8676002)(8936002)(41300700001)(38070700005)(316002)(76116006)(66946007)(66476007)(66556008)(91956017)(66446008)(122000001)(64756008)(5660300002)(38100700002)(86362001)(6486002)(36756003)(71200400001)(2906002)(4744005)(6506007)(26005)(6512007)(186003)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UmhXZ0ZOaVZFNWVCN0lIa3RyNjlaQnBtSXFkMEFxWjQrV1B6MEpnUjZMdTlw?=
 =?utf-8?B?MUR4aXhxVnNuVGp6eDZQakVucVVwMG10b1RoOGVqQm8yVWViM0NiTnJjeG5R?=
 =?utf-8?B?RlZOb3o0THhoU1Y4cExxcnNIamdaQWVjWFNvam1hMGdnYlpOY3dEZ0JTaW9T?=
 =?utf-8?B?Y1FJNmtnNmpPaVZwNm5RSXRpL28ycTVoRkhEblZuNnRoclhVVjhWTDc5RjNL?=
 =?utf-8?B?dE1BdWwvdHNMK1JLVGF4dlpRSlY2WlIzN0VWWUVKWUwrSnJ0OVY1OHJrL1E2?=
 =?utf-8?B?STBXbTVMVW5RTjBkOHVTWDdYWmdLVXB2Zm95WlluOVozelc4MUZDMjdSeTBa?=
 =?utf-8?B?ZnAzWmxNSnlySFQrNHFQYTUvUzF5empRMnhwa3BYSVROY012T0hGc21sNTFC?=
 =?utf-8?B?eHBQZ3NQZ0Vwc2p6ZUtuNzZBdDRnSDNla3ZvZnJkMnl5WUZhV2E4Zkl2Q0V2?=
 =?utf-8?B?Rk0xMnEvTEIyWmFza2FNSFJMMlB1OUtDVFNac2RVZDNJaHZ2cUQxeURKNjh6?=
 =?utf-8?B?NHh3YUFRSGp6ZXRzT1orUDJmWEZtUGVHTGFyR2xUZ0hLQ3ZpR3BRVys2cGk2?=
 =?utf-8?B?R0kvT0tXcXpWbzVOSGhDallGR1YyTEI5L0F4MjNpRjd2STY0dFEwS2lzVktH?=
 =?utf-8?B?MHg0R3JVZ3Q2b1F5M095aGI4SGIvL0pDOThOSldMTGVCUjJKNCtwWSt1aWhH?=
 =?utf-8?B?a0JSVU5uaWk1Ly94MlYxMGRUM3ArSnUyd2Q4OFkzNER5S1BrWm54bU93R0hr?=
 =?utf-8?B?Q3N3K2s2Mi96cTJ3TzBvMFdocmVQRXNUbFZ1UDc0RnhMS0syRlhuMXBxczdi?=
 =?utf-8?B?VTJjQWorbGlEaUx6cTB2UEZQdElYc2NPTisyRm53bC8yUmxvQ1dlYVg0Y29m?=
 =?utf-8?B?YXM3N2VPbGVNY2EwaCtCaTd4c2VKNlBGcHh2dmxVRUFBaU5aWTFTZUxZai9m?=
 =?utf-8?B?WjYzL1EwOEUzczJYWEE4WmNXN2hmVVl2YjJqUnhFQUNrRTZSdDJBQ3ZGUFd2?=
 =?utf-8?B?MUNEdWVmNmhWUHR2dy9mK3hWRGhmRVcvWTZTZzl3UDZRQU50U1daVGx0bWNQ?=
 =?utf-8?B?M0dxUzV2SG9XK2VTbDJ2S3JBUEJMSFFUcUs0b2hJeVVCVGJKaUx1YTNlQ012?=
 =?utf-8?B?a1g4eG5QMXYzY0xvNE9IeXJadWVpbE9PZFphRUdEWXBJMFJLMHh5aVkwOEt1?=
 =?utf-8?B?Zkduelo5bW5raENVSTh3cm1paXVaa0hWMHlMak12d3hXMEhjU3ZqTDZ2OFRn?=
 =?utf-8?B?RzZTS1MvM1FrL3FZTkxweXd0RWgydDU2MlpReHRrd3ZFdElBUU1Hc0ZKUU8v?=
 =?utf-8?B?TnFjL0ZUbUZEQmJFRzRHSjArTnBDU2wrZ1owbGtzZ0tKeGVZc0lyM29EVzVG?=
 =?utf-8?B?WXd1VDhINXJqWGpBYzZyTHY1aFB3M0prRnd3a3BuY3JSZHV5UWtyaVg1V09Z?=
 =?utf-8?B?dVdQeWRFUGkxb0VaNStsOG5FZURSNGRoNGVJcTZKYlRNY1BnUkc4TWtVdUtU?=
 =?utf-8?B?d1BHdFN5eDN1cFVzc2U4K1E1b08xa0hwL25sVDMrVFgrcm9jSDlMMDFzRlJk?=
 =?utf-8?B?M0Yxa2dGS3l5dWxMWDVleUI5ZXJqV09WTDlrMEUvY3VOMkovdzlVUUl6Y3dp?=
 =?utf-8?B?ZHJqKzlFeFY2d2NoUThsaTlFbHpNTmt0Qno1dEFMcmZlWnRKMzhOUEFhTzk2?=
 =?utf-8?B?V3psaTZjd1V2SUdkOXNTRCtyeFpGbmlucTNxWnV6Nm1RZk1WWHhKcm1XUkd4?=
 =?utf-8?B?QXJnM0t2ZUJTelZUcCtZRVVTb21kck0zOFZQU0hZRGJIMmlVNjFTOVZmVDdi?=
 =?utf-8?B?cFlRcit1UzliQk1SSndpaWVwK2NUemhQaEZySUpkemp1cXRCL2hvTmNyODBD?=
 =?utf-8?B?N3d1WVhXUThnbS94c3dVYkxseTZpd2ZQZ25pNXgrbDlVSWROL3NyVkRvMS9Q?=
 =?utf-8?B?RHoxS2hRMk96Q3R2VFoyL0lzc3ZnL2ZtQll3a3pPRVZmYVRnc3lDblB2VXBX?=
 =?utf-8?B?VEs1cWdrNnhWMG44UnpDdi9oWGdCZi92a2VUMnVhNU9ibEpjTnpINzFMVVFh?=
 =?utf-8?B?TzlKYURoUm9raGNmT0xFM3hhbGRLNzhCaDRwYjZ2Y0JvelA0QTdBV3UrcUZl?=
 =?utf-8?B?Z1o1RXd1NEp1UHQzVklzRDRod2J5RHJqdkh4YW5JZnhwcG9uRHNPNG9OczZh?=
 =?utf-8?B?NEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FEFAF2B31DF307419208EB6215DD6E0C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93853f71-412d-45e8-b817-08db65a905bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2023 09:41:22.2745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6iuPnqf5XaLGA1bV3d67fCESWChIeCOn9KrsUJ4sjBuxbrdMur0LWHrondrTQ01ES2dL3Hq+F2x0ksOAJy/MYVvouLnwyEOzLhv9qIeUdLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: Reset only one lane in
 case of MFD
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

T24gVGh1LCAyMDIzLTA2LTAxIGF0IDE1OjM0ICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
T24gVGh1LCAyMDIzLTA2LTAxIGF0IDEzOjEzICswMzAwLCBNaWthIEthaG9sYSB3cm90ZToNCj4g
PiBJbiBjYXNlIHdoZW4gb25seSB0d28gb3IgbGVzcyB0cmFuc21pdCBsYW5lcyBhcmUgb3duZWQg
c3VjaCBhcyBNRkQNCj4gPiAoRFAtYWx0IHdpdGggeDIgbGFuZXMpIHdlIG5lZWQgdG8gcmVzZXQg
b25seSBvbmUgZGF0YSBsYW5lIChsYW5lMCkuDQo+ID4gV2l0aCBvbmx5IHgyIGxhbmVzIHdlIGRv
bid0IG5lZWQgdG8gcG9sbCBmb3IgdGhlIHBoeSBjdXJyZW50DQo+ID4gc3RhdHVzIG9uIGJvdGgg
ZGF0YSBsYW5lcyBzaW5jZSBvbmx5IHRoZSBvd25lZCBkYXRhIGxhbmUgd2lsbA0KPiA+IHJlc3Bv
bmQuDQo+ID4gDQo+ID4gdjI6IEZpbmQgYmV0dGVyIG5hbWluZyBmb3IgbGFuZXMgYW5kIHJldmlz
ZSB0aGUgY29tbWl0IG1lc3NhZ2UNCj4gPiAoTHVjYSkNCj4gPiANCj4gPiBSZXZpZXdlZC1ieTog
QXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+ICh2MSkNCj4gPiBTaWduZWQt
b2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAzOSArKysr
KysrKysrKystLS0tDQo+ID4gLS0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlv
bnMoKyksIDE2IGRlbGV0aW9ucygtKQ0KPiANCj4gUmV2aWV3ZWQtYnk6IEx1Y2EgQ29lbGhvIDxs
dWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBMdWNhIGZvciB0aGUgcmV2aWV3
LiBUaGlzIGlzIG5vdyBwdXNoZWQuDQoNCj4gDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg0K
