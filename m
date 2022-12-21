Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4996653986
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 00:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572DB10E00F;
	Wed, 21 Dec 2022 23:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CAEC10E00F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 23:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671663756; x=1703199756;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=AZWtJ9yVkhJ+MMWUR8FB4kfrXpallWIcgZYd6fb6s2I=;
 b=DYsdKebX84qTelfgLhj4cUBHqY/2VuHdJ9ZakikfjYSyMpGbiwPP+TlM
 TYPJo9Gm9Gj5ZFkmTImsA0e8DdlHsTDUhbJTfPSZWV08G+jyeLGJSbeKk
 O3RtUmpJuWRt6PVOeokRahDnpuPWuBZ40R3bnZQPqJNthj9Zq7Yervwxf
 gDQ+7PVOWnamHizU5ZL816py5syQGjvJDUBqCmxqLb5nCRs33cCc7/pDp
 eV0Iu5uEprw1BNHrt7XBWLnB56K/i18Y+t6f4wXzBXjkeUDs5ulP+H+5l
 /X8sf5nvuMqovtxHCcpmXqMG+IA9fyqFKKhQFL1Q26jCB/IS6Qjttlb6x g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="317629950"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="317629950"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 15:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="720102014"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="720102014"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 21 Dec 2022 15:02:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 15:02:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 15:02:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 15:02:32 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 15:02:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLZbk0sVOsR8n7MfnJdT8A15VaDS7dZ4G9RMzOlH/c+NSe5t48+en8MgArGHt4N/o25FPXYF4RXxfMUeSl3+FNFzOK44+Verwi2oZ+1IikE0Bk7cYpF2Lqu5AviC2Lx/8CiEG9B98o+PvGA4BDYngtAICnpDgqeAjAPgQcgVYYEdB+OxVXkykJoRqTi9GQZ9xIhjuY0ufS3t/pu7mtLjTjU02AmJ13ktlLpqspGxFLQin4dmde963/Yl+ASC0EM23LKAquo7NJUFnHbfdpWZzQALztyDJKPfEVr8A17o2/63aQAECmhG5vliVsxw5buF3GP8UweK1TVt7YPLyOMvdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AZWtJ9yVkhJ+MMWUR8FB4kfrXpallWIcgZYd6fb6s2I=;
 b=AboEBfDkPS/D2xy9VNlmX6DirC/hjCd55AmQztCzKAoCDVyySLONg16iO6lNkbYr/QcEV82JoN/mO0I48Mrruri9/8nkBFw8Hcq4w1NeOgagZWptcFYRgTAK5Fzo+zJRsQ1o67SOtBmEnRdnvDYgzaoQ8cb07EotCNwL+uJvqiD7pAd6LOqaxM2Guf4ZLtO/c6DRhwiktY+ztirCBiUWbdSTsXxjIHgMBnFPPbm22O47wQ4tGofJCyuR3fDKzDkbNgPTSTmlx0PqD+6zLOOfTOE0q8s7YBaXq+EEgUWgw1MGSYFRAPff0jxPU0uJ6bNaAQcUivfmIZRFT5M7R6kBGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BL1PR11MB5413.namprd11.prod.outlook.com (2603:10b6:208:30b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 23:02:30 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 23:02:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 0/7] drm/i915/pxp: Add missing cleanup
 steps for PXP global-teardown
Thread-Index: AQHZFY7eLjzY8+oZmkeQ/3GU/z9dCq549kaA
Date: Wed, 21 Dec 2022 23:02:29 +0000
Message-ID: <27497f4ec1a1c4c66ca38ec2076e6e9c7c47e7d3.camel@intel.com>
References: <20221129004832.3735764-1-alan.previn.teres.alexis@intel.com>
 <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221221225439.2714575-1-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BL1PR11MB5413:EE_
x-ms-office365-filtering-correlation-id: cd37b5dd-081a-4fef-3340-08dae3a76f97
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ePSvPLUca+rsXjLORiramrdhpXHYfnkCse+Cu84B7n3pkVhsCHnm+Mz/UD0V7RLvcNaMuFpzdDYWYK0e4+OFCQSamJ3YG5KsWQb+gVDIosc3dggqQ/NcoMB9eQhSs+1V8CSGpG2HBtSM08gGYWWhfslxyweNIO1E10qL6OHZ7xoWW5sR8NpBIwttTBdChx08Gx+ZMUn2F6YvqblG4+mu7p+tiN+EX8QYjVJelpb+kir13vwRSu/3MsTd1gikpnn8LBftT753ZR0MgdQ4IAY+TcF4ymJtlFR9gL5nYiW0Q8CWEwEK3f60fDw4TfJdKjJY2+gZI2rEAnfUEbOHXxJiiKbxjye6lEXp8evIVJNylBlwisLGwR8RuyYF9goIqUfgRdFVPybYtHE4OGhsZ8aFJmqf9tKCa0+eSqSZ0eK1FsCAqN+cj2GB5SsBs29DuaZGrh3r767Z3BAjV0k69Wpgr0DPkcvOqSWzg0GMDkm8mwG4bOS6p5h+3nDZwwO5JfatcmK+2BUToiRrhPsyaiOa0a54OIeaYs8gpGIjTs4mrXcAmzEF+4CRyLRT51+Vpw5V08rAyCkxvJeyQw13ffeHHlb3g/n3K5wyq8ltFGN6eMU8F6OeZ69efb7obduYH8YcOIbnh3rUDMKH3dWcfFwqjeyU2Cv/j8XrPVGdP40tEzAddKJrkr5YsKFpWw2AeoiIa07UGSKxQn9CVO7k/yQ+lg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199015)(478600001)(66476007)(66556008)(316002)(6512007)(186003)(2616005)(76116006)(26005)(71200400001)(91956017)(6916009)(86362001)(64756008)(66946007)(66446008)(122000001)(8676002)(41300700001)(38100700002)(36756003)(8936002)(6486002)(558084003)(6506007)(38070700005)(2906002)(5660300002)(4001150100001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWFGN1ZvclAwRVJlbzdVWU5ZYU9saklHQW93Y0psdWpHRGVPb29WRzVnSGpS?=
 =?utf-8?B?NEdFbkx6dWV1VFR0eUpCMWN0NUFxY2V2N25hVmwxTjg1bDRZWDlqQ1BUeDl5?=
 =?utf-8?B?ZVRLUk9MZVJMaDBHN2s4bmZtZGluaTVnMTdrZUpqWTlYWEZ3bEo2Qm51Ty84?=
 =?utf-8?B?b05OaThhYzR5TWZBSkRZYzI4Z3lkdEZKWVdZT0gzSW9kQ1JGK2w0aFd3TnZP?=
 =?utf-8?B?ZjBkZVBod2RtUVhJTWJtRHBFcHY1NWpURVFiRUhJeFA4amxTRGR3NFMzbnpp?=
 =?utf-8?B?Qnl0WkZvd0NsMUcycGJBd0RoMlQ2cUVlQ3VsWVFtNTRnV3NERC9SWGVzRWgx?=
 =?utf-8?B?T2JzTWZVbjkyWExnODRWWHpoaDRMM0lsODZIMmVhMEZBaFhwV3YrSmpGY05Y?=
 =?utf-8?B?Nzk1TnVHUGszcVU2czlFb0RMcjRmNkk4OG9jendyRHVsWFNWZnBHakxqNHI0?=
 =?utf-8?B?YW53b1B5WjBaTTNPWDI0d2hqclFqVitIV3NXaExXM3M3K2FLckQ5bGVBdWd2?=
 =?utf-8?B?KzZ3b3lWbmN1UUtwN1BoZzNyM0R0TFNVWmJTY0lBU3lWSis3V1NhV3dMY2NI?=
 =?utf-8?B?dkswVFc5TktiNTFsUXJzSlF6ZVhldjZvMkd4SlZSSzR0RjZPSjd5T2ZlV1dq?=
 =?utf-8?B?QWJkakduTHpYV1lVUVZYcjNyUE5KMG0yTjQvQ2ZUUFVQcG9yVzNDMFY0SGtq?=
 =?utf-8?B?cnZHSkFSc3kwcFdPem1JVUtVMmd0UVA3OFBCTWtSNE1lNjYwTVJMQ0Y3alV1?=
 =?utf-8?B?SUwvSjhwNGJMRHZrZ2t6a09zOHVDRXdia2hWdHdhTjNhYzBMY3dXcm5HMGFV?=
 =?utf-8?B?Q1ZJcWZZU2lUejRwTG5sbUxTd0FIMGRhR3lQa01RUjBpT1pYOFFNRFhqNjdy?=
 =?utf-8?B?MHNIWmNqYStDQWRJa2JnMGhUemQ5SXBhUStBdnR2YmlzWHl0SHRVQlNxNlN1?=
 =?utf-8?B?SWtneXpjdktsL05ZZ3h2aGZYVjI0a0paTkczOWJzR3FjYTF5T3E2Q2xrUHZB?=
 =?utf-8?B?amZER1ppNGJEcnV0SXFVbDIyOG43TkdDblpYODFUaXVibzRvTXpJZXFDdytm?=
 =?utf-8?B?UWJ2VjBxSjFDbmxrdUVkWjJXaFU1bUNxWUpmRFI2ZnR4M0FsTDRzOXNLdU16?=
 =?utf-8?B?eHd4N2gxMDNkZ29wU28wMEVVVTlHVjduMnpHQkxxTXEwLzRBaEFOQzNGVEUx?=
 =?utf-8?B?aE5ydUlqQU5uUThMa0lvVk1YREJ2RTFwRTZlTURnaVZEYzUxb21ub3BjNmhk?=
 =?utf-8?B?TzNFaHlvYTBEeVFoR2hlc0dSZ2FHSmU4NVg5TlFkaVBaODJPNWs3UVYrbXlL?=
 =?utf-8?B?R21jRlZCSkJqeSs3d2svbDF4Vk84Q01pNUpOY2RrSCtGYWR2anJNZVl0eDlT?=
 =?utf-8?B?bEprcCtTOVl0empZSDFnemVyQ2RmbS9QL043V0FNR2RJL1hEc29TTHd1VWlo?=
 =?utf-8?B?L3pjbkVEMEJvYjdMSHltNVl0VzBnQ1BuTkticUJFR0RIVGJMbWh0ckJDT1hi?=
 =?utf-8?B?Znl4MjB3M3FCOTB6TEl4cVVDUk03Vm10WDJWOExUUFZWa2ZtQ1dVOWp0NGdB?=
 =?utf-8?B?aTFlZUNzK0RDWEVUeGdXOXoxZmJNcUxQL3RnN3lRVHd4N3R4MkpLakcxSUhz?=
 =?utf-8?B?NlV2eVlZMUNKMnZSSVE4QnBMakF4VXV5VkYrY1RRcTRKRkV3YU1nakFONU5t?=
 =?utf-8?B?SGxjRGphTHpzVWV4TjlWNmRCeXVoMEowaEZVOWQyUmZDdXg0cldET25PaDZr?=
 =?utf-8?B?Y2xhRm5Db1U1TWw1Vy9ldTU4NFRkSVJjMmNkRk80ajluaEVBaXR4UHVHazZE?=
 =?utf-8?B?SGQ3RE1rR0MzZWJSd0F3cXlrMHA0ZDBuNlFmMFAyakFXd2NpYk5rb2E0RjR0?=
 =?utf-8?B?ZWNQbldpREJ1Z0FvWjdwSVZ3TEZNV3dBV1ZyUkhmVWpCYkZYelNidmNCNzg5?=
 =?utf-8?B?dGdkTDdqeDZzMVFTcjBNUGRNbzVaTzJuUHJ5QkFqcC9hY2NQQy8zbnNyR2J0?=
 =?utf-8?B?NGsvQ25rcFhYbXI4LzBkQyt2VGM1OUZGR2kzZStrcDdWRVdSWUxLUUs3ckda?=
 =?utf-8?B?KzN0T09aa0k1YTB5Zjk0OVdjcWZIelp0RFk1UlFhTHZJb1RCcXQxWnRqY1l0?=
 =?utf-8?B?TjhDbjE1cXhRSUw5d1dTQnF5bTJtczVlTDNZdHJIbTR4SHNzM2lYSFhGVjhJ?=
 =?utf-8?Q?170s0PJ7OdoRs7mYKKJCNgI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3C0F6D61DCBF341A83AF52F8EDBFFBF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd37b5dd-081a-4fef-3340-08dae3a76f97
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2022 23:02:29.7101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6+vJvcv9/1DMMWr9uttGkJuQJWxsaSr77Rc1N3V1mIIgvDdajP0wPf+aZipJNLnDEjmZChARybGHc0gPlOvMtcz7AadzQh7s7PynABtWTAiS0b7QfCvqdCxaPgbqXGw+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5413
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/7] drm/i915/pxp: Add missing cleanup
 steps for PXP global-teardown
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

QXBvbG9naWVzIGZvciB0aGUgbm9pc2UsIHBsZWFzZSBpZ25vcmUgdGhpcyB0aHJlYWQgLSB3aWxs
IHJlc2VuZC4NCkhhZCB1bm5lY2Vzc2FyeSBpbi1yZXBseS10byB0YWcgY2F1c2luZyBzcGxpdCBp
biBzZXJpZXMgVVJMcy4NCg0KT24gV2VkLCAyMDIyLTEyLTIxIGF0IDE0OjU0IC0wODAwLCBBbGFu
IFByZXZpbiB3cm90ZToNCj4gQWRkIG1pc3NpbmcgY2xlYW51cCBzdGVwcyBmb3IgUFhQIGdsb2Jh
bC10ZWFyZG93bg0KDQo=
