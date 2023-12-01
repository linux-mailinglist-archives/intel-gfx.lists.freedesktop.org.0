Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66306800CA5
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 14:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD42B10E8AB;
	Fri,  1 Dec 2023 13:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7F110E8AB
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 13:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701438917; x=1732974917;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2+J42iqyqAlw6wBu7kBSfs6coBuRR+xTx06jVKnndt4=;
 b=PQ6NqyZkV57GrbR5C5p2dB6Rr65T//D3COkiIjKHgMYzjq95LFvNZuSA
 LnSwRp58LoBbMCYVzXB1nhCJDDYfOG13parRxGIeap6VlSHywlScCu5eA
 85amX7nCazroNGjI08GuLt+IsiKABdaS78Y8ROpJCKALNxUE88c7IFh4P
 vuTO+IsGh2rT0uHfgAjzSNXE5CAvqqEMDzHG2/Npryz611ckaugtFirPm
 CaEYBlFV5hS5zSP+bg0vDvdbfqrEK21wQkJ9zRrh2pDyTeMDeCHJ3QgnT
 82DiJBSlBybUrLdX5r65/fLQCH5RGK4ZIzZDXFCYlxWEfhJfSKEYnhyRP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="521783"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; 
   d="scan'208";a="521783"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 05:55:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="893229014"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="893229014"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 05:55:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 05:55:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 05:55:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 05:55:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 05:55:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAvJWitSNrydUSj/97O1BOGK9ojzELPKkjXamQe8wVhJOZF8MT0Ls8di//Zd55aLBvmffgdanLwmL/Qm8sEthX22PGlYDeu/2w17AknBzBFZ77BdlPEZNtidq+eugwLp3vho5o91YCCv/TkehVmhbOONqWPqFYU+dE8k1RlXE6ZrGFnNYD22BpY6KBSlkTyR5o1z3aNqITCmiQYuzDOALOzWlh21LL4sn2Pk993l57Pp/OZ44jdtSLPRq0Ik42Mkup4Y+isM6e7gwYvTv/BUdLLXLCzhW9y3PjQc+IsUWpu8EYE5Sy7WvPVrFLpt/Z/O2th/nVape7rixa5yIqz43A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2+J42iqyqAlw6wBu7kBSfs6coBuRR+xTx06jVKnndt4=;
 b=MuwE1jzJwU34s4aKXfYq927tQc9UjyzBWiQbsvBYzffVQeh5pJ+vaWg7Hmc6VMdlTfPHRvN2TpTGyG7+PawjE86RarrL7TpzszLKkvKsbUpdLN9DXgiIgWESyfsRuMQv0/WNhbWNcSx7TtaBbQXtuKGRuFfpICLD+PskROUIgtzamklktzZf9gJQ6cVZEvBFI9jm58tSNqjYcePOQMAP4XC6NLei2xiIQFyRO02k70xgE60x93amQ8iAV6lU5D4Xrt7PmTP0x26OAefgRlBnmk8H4qhQbTV0ohet9uSngkG4nhTXWaDE8dI4JlkVRao0qzCrEKT+oQmATpSXci98KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7133.namprd11.prod.outlook.com (2603:10b6:930:63::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Fri, 1 Dec
 2023 13:55:02 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5%7]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 13:55:02 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display: use intel_bo_to_drm_bo
 in intel_fbdev
Thread-Index: AQHaF6NGtQ2h9lghh0i8wJfgkI9ojbCUjK2A
Date: Fri, 1 Dec 2023 13:55:01 +0000
Message-ID: <1f087cb48e0916997cf0eed770c153fecc793acb.camel@intel.com>
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
 <20231115090719.3210079-3-jouni.hogander@intel.com>
In-Reply-To: <20231115090719.3210079-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7133:EE_
x-ms-office365-filtering-correlation-id: 2a5c6abf-930d-43a4-a806-08dbf2751d54
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LgWcgTXEakxbk57/A78XncUj3M8yl+gKgmgGzXsHFzF5xnUMHj0BucTOYYg3f4+7U2PmldtiRNFqB+bhQr2chxNUNpjHC3xxHpVhAqcUz7A2LuQZpcXEEbL40CLBCr9bm03r5sTlVpSQVsAgYMrYhzDOoZD1l8IcWqoKwPkek21ETKXm9wvbzhJKs3BtahxGAW4/RNdhRsWHJ/4xjHjt9IoShLhFnNtpML8PqvQYly/qoViEgx6cQpCEhSE+nKN5nYB+IzCecJBFUhylDpEmPYX6K+fRWixsjOpudkUqzdNKwy/bHMAtk8tKjpKh/jpfGNQYy3s8JI8FUPL+X4bY1PIknv6fp4D8eiuksZLuz57WxXYb1G8bb3IBjkVYXvEFfmKETfUv4TfgBuKRvwvZ2cZ6ms62xA2oMxgY8FG4+LREiZVSUmDc8k4rmuxQYEfF0eYOVkRbFRwgDsoJj/vC8PNaXPCg4sor4r1mfti6rWI9linEygpQipHlkpM/49XUU9kpgMQ+P/Hw3AXHmRBj0quCmN0Gc79W2pWhyBFWwcP1B+U4d03b6isS0RION7HZvywbaTJIWHxUchNPwCnom7zyJ0TfXwsabSAbFZ95bt4peURbI0LIdfBZ4UoTRmVC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(346002)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(8676002)(8936002)(71200400001)(6512007)(478600001)(6506007)(91956017)(64756008)(6486002)(66946007)(316002)(66556008)(6636002)(110136005)(76116006)(122000001)(86362001)(41300700001)(38100700002)(38070700009)(36756003)(4001150100001)(26005)(66476007)(2616005)(83380400001)(82960400001)(2906002)(66446008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NEpWVzIrVVZBaVNGVDJ1dkppWUt1WE83dVhNNEpXNGlHNWJNNytncTlIMkZI?=
 =?utf-8?B?RGV6Q2NaR2JDYjF1L29rUkp4Z2hVZzNTS0dHUzRYdHY0bVNUcW9Dc3VMQXcx?=
 =?utf-8?B?U0lYNlhMczU3QXZtcmtCMGtaMjRwSXArcTRQaVkyNEpxM3BaODRYWEJnbjRZ?=
 =?utf-8?B?bkF0SkxZN1l3UVc5TlVobE5rUFJvNjFnVHpHM3VzNTU0TFlacXRTdkN1YXpR?=
 =?utf-8?B?aWxLblBFZCtiaWhiQVU0anc0R3Q4ckd5RkFXS0tBQzBiZStsbVNoT1pseFho?=
 =?utf-8?B?UDlBTjc3VTRGcUpibFNVTkVOSTJEaDJSQ3ZHWUpvR3dlUjYrbjlKTDF4Z1J4?=
 =?utf-8?B?c0pFU3ZVc0NIVklFQlNFYy9VNFRDdEZKM3NhUXNmL0MyZ2V6dWkrMXRCb1d5?=
 =?utf-8?B?QkphNlYwNFNKR2JmOTNHR0JCMTBST0FucktBL3pOV21qZU9BTmQraHBwdzlk?=
 =?utf-8?B?anBCNWpyelh6S2E2WU1PWDdmVHo5b0FHUzVCZHFjMlNMVm9vVVdhTUFGT3ZU?=
 =?utf-8?B?TmlnY1hQNC9nYU85NXZJbzZaZlpOa1ZiTjh3RHoyUWpJbnlsNThWRWFDR3Fv?=
 =?utf-8?B?SEVBWjJIK1JXT1oyd1J5YmZaSmhQeXJrdVB0cW0zTXEwSFdtVzBQU3dmSHcy?=
 =?utf-8?B?dnZFUEZidzN4eXc5bW54UVlhdWM0b0Y5eHdDbGN2QUVXdTlPMUZlZkxRczBj?=
 =?utf-8?B?SUJWbUJuZlVGeVJvTERaYWlnUVFOcEFsRUIwaVB4N1VSbDVWQ0NxcW8xU0RM?=
 =?utf-8?B?Ly9CNFNBcVZ1Ui91bHhOQnFqUWNOUEhCVW9zTHZYcTE2NldTS3p6SFlvVWJM?=
 =?utf-8?B?M2ZqSDVxaVVhVWtINEducm9ULzdsSUxTNXRkZityRnRYTDFHdGFCeEJRZ2Fx?=
 =?utf-8?B?VEZSREZnL3VaMmlWRHRXd1V6RVBaZ0g3ZHdON0xRNEgvMnFtbXBqTTlpaGEx?=
 =?utf-8?B?NEVtMFpFQ3pmelMzUHBRbWpoeGlzTFNrVzBJcXh0enBvNGh2blNjZS9HNnZ3?=
 =?utf-8?B?bVRvc2lwL3ZkREZTWUpKQ2VCMmVOZ09OOTVyeFdlVFU3ZW94c2V0cy82S011?=
 =?utf-8?B?QmRSV085QUcyNjB0dE5nVlJuRHJJVy9hcjEwQThONWVON3FmYnN3STQrKzJI?=
 =?utf-8?B?bmQxQ1c2T1ZqMXBvQ2xLdGlScTZJMzFycGhjUm0vbFQ5Yjc2Y1BZNXYyVUZs?=
 =?utf-8?B?SUV6d3NxRkhISVg5S1F1YXBBM1hNRkJkNGtMTkl2bnlCQi9VeGluU0pXZlVt?=
 =?utf-8?B?RTcwbnNqZDhPcVF5TE9LT2N1OWZMS01FM1hlWjNJbGxuc0Z2RVYwaURxWCtD?=
 =?utf-8?B?aGpqUnVaakJhVTlmdzRBYjdIcnBKLzJKV2dQa2hpQ0ErUzBGSVgzMEZIWllx?=
 =?utf-8?B?YlpwdDBkUE05T0llU3FyREtDVXZ2eldNMVFJa2ZpblpzM3E3MXdPcHhzQWlG?=
 =?utf-8?B?WmVLSmpqYjA2eHZPTzVkWnhiQUJJTHNDQkFnS2Q4QmRyY1dManNlWmgvVXVm?=
 =?utf-8?B?NlcxM21aeFFtNnF4aWxoUkc0aWRVcmRQTXN3bWE3Skc5Wis0LzRXT3lQWjkr?=
 =?utf-8?B?all4RS8xSjJ2T045bmI3TUp5N3VTR0JZOGwzUkdITXA0d0RFNzdCdFVZVXJF?=
 =?utf-8?B?Y2lxYzBMQnVMM3VOQUNrVm94TUdFL2xBSk4xeEd5NENCL3NHdnZFTGlsM0NJ?=
 =?utf-8?B?T0diVHJWbWNOUnZhV1dFVlNoazdBMjFNMFNUS3hWYWFmWDdlV3NmTi9yQ3B3?=
 =?utf-8?B?bjlDb3RrK2ZzQlJHcDNlb09oek1uNE1mTHNGTnE2MU9nUStrd1VKTEdzZG50?=
 =?utf-8?B?dFRFZ1JvT01NRkYzYm9PY1V4bEhqa2IxN0NuVk1QaUczR05jOWJRR0xUajBE?=
 =?utf-8?B?b1JCZ09nUmcrV1BWOGMvNUhyY0dpSldKa3E4ODB1YW9BRmNmOHg3UlVuc09X?=
 =?utf-8?B?dEFBLzErbXBadXdrV0dpcUNBeGtwdkxTT2lDUmJkb1k0MDBOVnRSSzgxQzha?=
 =?utf-8?B?SDMrQ3I3SE5Ramdwc25WdGNLd3ZsQWpGSlR4L0NpWDBNanEwNTJQWHpKRmVj?=
 =?utf-8?B?QXhtcUI2dmdBRkFheEsyRC8rQkt3SHRFcWJSQkpZbmZUYmlzZThCZ3BMbVU3?=
 =?utf-8?B?TEVaYjM3dVJBMGRvcDd4U3ZqVHdoaDNLaFd2VmNHL1RZSGM2ejBNY0JoMzdP?=
 =?utf-8?Q?tZ7eLFQZ0JkYtlMLeHLaLqQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F6DBBFC613C74144A28BC361C03322DA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a5c6abf-930d-43a4-a806-08dbf2751d54
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2023 13:55:01.9717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: htsTRpd6wBUcRebWrjrXs5/0Vn9n4e4s+7EAUFQv6h/dtG2bPkFwtALgWBFpldZG2PdHX8pt+Cv5TskWh70d1x6fZEGH0SZzcYlUfyDgz84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: use
 intel_bo_to_drm_bo in intel_fbdev
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

T24gV2VkLCAyMDIzLTExLTE1IGF0IDExOjA3ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
Cj4gV2UgYXJlIHByZXBhcmluZyBmb3IgWGUgZHJpdmVyLiBJOTE1IGFuZCBYZSBvYmplY3QgaW1w
bGVtZW50YXRpb24gYXJlCj4gZGlmZmVyaW5nLiBEbyBub3QgdXNlwqAgaTkxNV9nZW1fb2JqZWN0
LT5iYXNlIGRpcmVjdGx5LiBJbnN0ZWFkIHVzZQo+IGludGVsX2JvX3RvX2RybV9iby4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmRldi5jIHwgNCArKy0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdv
dmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiZGV2LmMKPiBpbmRleCBiN2U0Yjc4MzBlNDUuLjk5ODk0YTg1NWVmMCAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKPiBAQCAtMzMy
LDEyICszMzIsMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJkZXZfaW5pdF9iaW9zKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgY29udGludWU7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4g
wqAKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG9iai0+YmFzZS5zaXplID4g
bWF4X3NpemUpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2Jv
X3RvX2RybV9ibyhvYmopLT5zaXplID4gbWF4X3NpemUpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgImZvdW5kIHBvc3NpYmxlIGZiIGZyb20gW1BMQU5FOiVkOiVzXVxuIiwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHBsYW5lLT5iYXNlLmJhc2UuaWQsIHBsYW5lLT5iYXNlLm5hbWUpOwo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZiID0gdG9faW50
ZWxfZnJhbWVidWZmZXIocGxhbmVfc3RhdGUtPnVhcGkuZmIpOwo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X3NpemUgPSBvYmotPmJhc2Uuc2l6ZTsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9zaXpl
ID0gaW50ZWxfYm9fdG9fZHJtX2JvKG9iaiktPnNpemU7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqB9Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAoK
