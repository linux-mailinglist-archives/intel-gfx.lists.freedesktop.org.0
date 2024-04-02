Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C15C289520D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 13:41:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C9710FC8B;
	Tue,  2 Apr 2024 11:41:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKGQRrfA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0839B10FC8B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 11:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712058083; x=1743594083;
 h=from:to:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=LGFJrddhLs8k4TZSgajbvDLanya3n+7JAxR2/BmhKf8=;
 b=oKGQRrfAvKlQZ9qaB8QJB0luB+CZ7jQwyXU/JFW+qwvYgvSyW7lbtGlu
 rBgXDc0cS++CqyDAuXDX0NSByBtzta84lKimhqgdTL4vecC6AizvWHNJn
 r59j2xbZxEFwiUxPaNSPJzEmQz1ddB2f+ADs/eWgOu+9Zkx5sCdqJMT4Q
 3q/DyqIE6rxFVcNnOxRQU6E43B2syXuOlVCqYHZAfZ8YckkdfRGH+OhJv
 gsztZmBDBCszfseNY6hxXp2PcwZzuZXZ8y0KG9+EVCajcE49JBRbHovUe
 kDTBk3Xb0K7UJU5pAvNdp0fzQYunEMnytHidRPqwUz4uM1SZCj1+17j0r A==;
X-CSE-ConnectionGUID: XOriagcsTWi+ImWZR5m5iw==
X-CSE-MsgGUID: QUvEdwTLQ264pTAdyVoLnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="18580507"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18580507"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 04:41:22 -0700
X-CSE-ConnectionGUID: QAhp4/0cTZm5gt00bNpASA==
X-CSE-MsgGUID: AU6U55YvQUW7FYEKq+M7mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="41189953"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 04:41:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 04:41:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 04:41:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 04:41:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aJvtakgYkAZlm6SXuIug/IkqXem5MDlNxsBLro7PKb7lk+M/osHKKKanPkaoJA4fBc5lqW3cby99xKXrua1z5vRWZtc+SeGxi8FQM4O/LSgNYGt8s2T5NEchNUv5s3OcSzFMaO3G2tlt5NKNe7VYEyqtO31Ltn3k5fdB3uGyG0064acp9R4YUbBZuotXNPqVx7s5IMPPkAcJDA4BvDAwduRG4x0XVLCsg8cQK5Y1ZblIoKehcRz1oHTeczDtrGy20RvGcZk+4OTtlPC0W6UbcrBz+3g0fBAPUEk8xfmrlx0sNvWoebU18GlGNZNss39ZYlgaRiRk1bJODKFSXo8gfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGFJrddhLs8k4TZSgajbvDLanya3n+7JAxR2/BmhKf8=;
 b=j7u8c7sqRNQUDVva1uR0JX4m+ZQQEy6l32hioMm6WudwogQRGXfPWf0U3HXwg25QQV8jGqLepTBaIjiLKSMSdr4fI+6svI1sC4KVlElA2a9/HO6SY9O5F24g+Hm2LZCMXfVTMAOtKEg0K1Zt3DkU37n52xTpS6rms//1Y4M+9ATucv3UXsZZvbOeb/cUahxV3y4SX3UhY/V1lwFydEsJco2zluMs7/PlZHqD+5tG6nyULLjIv1WNKUR2ZGi4krw7WEX7l1SvztdOtFBdSQe3Zd8YdPUwbI6LPsNux3vI1YZve7GLKtoNddS3rDazta+LWNgI7Cvj/RVRiYUdYGtvkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5861.namprd11.prod.outlook.com (2603:10b6:510:133::8)
 by CH3PR11MB7372.namprd11.prod.outlook.com (2603:10b6:610:145::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Tue, 2 Apr
 2024 11:41:19 +0000
Received: from PH7PR11MB5861.namprd11.prod.outlook.com
 ([fe80::e368:8e78:b149:c3c1]) by PH7PR11MB5861.namprd11.prod.outlook.com
 ([fe80::e368:8e78:b149:c3c1%5]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 11:41:19 +0000
From: "Knop, Ryszard" <ryszard.knop@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Intel Gfx Kernel CI downtime 12.04-15.04
Thread-Topic: Intel Gfx Kernel CI downtime 12.04-15.04
Thread-Index: AQHahPKtypOp+KsLmkuqDM1XN+xVQQ==
Date: Tue, 2 Apr 2024 11:41:19 +0000
Message-ID: <9504df6f9971bdcfded801dcf4a59e705a6af812.camel@intel.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5861:EE_|CH3PR11MB7372:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gyKyd3nGLTtspzMI3u/uumRDGEw5NYXn5EjpKnPYU3zu+bvErc6a+gTVeN8znOGD/p3YYSAG/gbZg/nt9lQ84ag/zHuQFhH160RJrQwHM2fmJ4shZaZ7wvKIi4DVAkPc9G7jtqKqmAFGZbvdKVk/YcPaKvBgtjsqFxf2iWzrF4Dqo38c8f15rNkGWOo/J0ZNV8TLTn5c4ib6GtQ9M/1dgxGjhKyfLVY/z0aUXTcFovN4QGFpwOiujl4bqzwXBol49yooJ5SbWlyZal7QQao37mQwJSOZ/l7bDgZPXA5I81kR/ZYahDuutO2QAUL++UdsiUFhIX4f7dPJvur2Als8v8ncTtDVvnEB5JfHMYtJ6axNVytX5wwYoqUtlW57uVOdBQQKBL3EAaC52Z2d8TIATKDiP5Ee7k0rIKcjjy0RS7Rx+TISCykyNIYKVApwGieAMaT5NfogM+wtBJ7xVS1mQ/GmhTY3/TDoROq0vOOdFn+SiXfM9lP4Lf6kDB9BHIleAsVLRop+JEigQMQnMe2Hqw8GK+MFs/XkJ8oipFVMQegzF7vmocghDQYkme0toUSz76LNY5kvvShIGHusyzPqcSxed932goTu4TCjLs9uD2lYb6LtUSGxQ7HsNwTLztm3BP+ffXXM2+Hic5dooakFi8fcrPR5OLSg6kbQ00V3KEg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5861.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NitFQWI1MTdGREVDSUJpR3hhQ1ZtMjVDUVFFQ1pBek42bzNaZUZXdlVwTEtp?=
 =?utf-8?B?d2JwWGgyeitNaXRZaVNJOEdUeGZRb252YlRUbUROdTY5RzJteVVoaDZuc3hj?=
 =?utf-8?B?R2UyZVBqZHVOT2JOaFE5OHFObXlSSDVGTEs1bDNnVHkwa09HWDIzUm5Zak5I?=
 =?utf-8?B?NlpmT3FYNXFHOHJzbngwb2NsR2w0YnJBeHlocDI1SExmb0tCYmFnZCtHbm1V?=
 =?utf-8?B?REFlckxacnltM0pEaFNPaDE4OHNpdDZPVnVFSllZcERCSTJmVHBaR2JXVXdF?=
 =?utf-8?B?b3N0VEh5UmNHZ25ndXU2MDhNWlNISkFoenZtVUFwL2E4STJFTGVwYXdXRFBa?=
 =?utf-8?B?VlRLdXFwcnFya3hheDhyVHJ2ZlB3RlB1Uk56aGxKVUM3aUF4REtyd0ExQXV5?=
 =?utf-8?B?UFg5eFFQU0w0V0pwKy9JcGdRVDMrdEdQWEJuZXFqTDZ4VjZvdE1URE5CMXk4?=
 =?utf-8?B?K3YweFVxdWEvbDFWdGZzdFRDdFo3TklQZWczbUJJQnhCNFNNQUtNWWpiT012?=
 =?utf-8?B?Q1FlRHdaamZmeDNKMEl0QVByRm4vSkMzeDY5WU5qQ1RvVWdhbzNWT2JUbXZX?=
 =?utf-8?B?WUZtSmRZeVpYdE9qWE1EMTV6UjN1MG1pN3N3NTlzaVBGbithLzVVL1J5SGUx?=
 =?utf-8?B?ekx4Z29yamRlYzRLZ2ptT2RZYldyNndWRVQxZDV3MjRZZ0tGRkp4TUV0K01B?=
 =?utf-8?B?RmJWOFVXOUxhUVpWNVN4YjFFcVVtdDdsTzBveGJ3TFEweERYck5ENW1BNGpq?=
 =?utf-8?B?R3g2ajVPTG96akRhSTNvY0J4OGNaMG1NcEVMNHJ3bHFvaDBXYjF1SmVRMUU3?=
 =?utf-8?B?b1lUb1RkanJONnd3Q1kwZFV2VUM5YStyZExTajhPb0ZJSllzWVFxZlZueTVo?=
 =?utf-8?B?YnFXamxEV3hqeVNUay9UMDJlTWFQZmNzeE5ESk1KM2R3TUd6aVRRYTlWR1hw?=
 =?utf-8?B?dnU2VWg5QWJYU0w4NFFBTGk3eWwyN2ZMTGlKZGNrTjl6cDVRcnRpMHk4cFRw?=
 =?utf-8?B?b1lTenpWRmY2Z01WUk1kU1lrUHFMVkduY3dwWTRLOEhLakhHbmNwOHFraEJk?=
 =?utf-8?B?R0d2Uk9RejRxV2NWc1NvTmNHNlNZTitKVXNCSWx2NkF5cDg4ODIyNlE2dXNW?=
 =?utf-8?B?Qmx0WFJqTzI3THJPSytYQmpLYnNOaHlJVk9USkVBY0hieWJIRFB0OG9hcDls?=
 =?utf-8?B?MXVsYis4MGd6SitnYUdaRW9CTVZ1ZHlIam84WjExZ3RQNndvaytqdmJxclpB?=
 =?utf-8?B?Q2QyWENQZURzV0tqOHJrV2JhMGZ1KzVIVi9OZlhMcHduaGJWczZ0eHQ1eGh0?=
 =?utf-8?B?T2RYVEFmeEZFUEhLam1mL3RrT3A1U1hlTEp5VEJIVHk1RzVHM1Y2ZUVwK00v?=
 =?utf-8?B?YmV0dUt1aGdWSm9CTk12L0ZQM3Noa1p6SGJnK1M0SHoydE4yWWoxSmU0bkdw?=
 =?utf-8?B?eTE4L2dONlJHRkhPaW0wRCtPdEY4dThFaURiU1RPZERLSWF6QzhhNmpYWjZj?=
 =?utf-8?B?MGtqcit1SzN5ZHVGNnM2bGhwWklRUGQ5UmZaUzVuM05CRVJnZmF3cWIwTjJt?=
 =?utf-8?B?QXZFYXU4ejREWmxQZ3puVkdCR05XQm10MW00Y09UdG5CSFdxNGtIYzNrYWJy?=
 =?utf-8?B?TzhyOFViOHpRSVNDQnQyWUFBQXpldmVUOERQRmdXRWNUekxlbFNrWDJqbUFR?=
 =?utf-8?B?cWZIMjhXcENsTW5sQnlFU0QrSUZDYjdGc3k1STZiTVBPbitJL2NCZXdyOHZF?=
 =?utf-8?B?NWVGdHROcHR4bVpSMkxzbVJEQ2JvL1JCUVBjRlpPSGU2WUIyZm5Qc3lNcFhE?=
 =?utf-8?B?aFh0S0hnUzEzc1ZXdWJZdjBKRjBlQU1sQTdQMC9jV1kxUXNuT3hERThjSE80?=
 =?utf-8?B?cUM3SENnaG51WjdPVHZUOVAzMDZRWUNObUg2ODJiVHZJQko3MXp1ZU9nMS9W?=
 =?utf-8?B?Zjg3R3MwSTRLc3JXbTdFbWR5ay9jdzJJdnpnZWMzbmMzbUVtR0Jqb3pocnVP?=
 =?utf-8?B?UXpDYWlaTzlOcWh4TlF2S2dJV05FdUVLZyt1STkxM2QyM2UzUWJjLzJmVXhh?=
 =?utf-8?B?aDEySmV1WFNicHBHYzllaHNHVGZublFWLzdWcXlaaE8yRU1sRlZ6aUI3QVhp?=
 =?utf-8?B?QldxazVVa2ZSS0pHZEY4UGVlQ1VkL0NHT2NYMmpGN2dVak43bHpKOHIrVGZm?=
 =?utf-8?B?UHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <084A1B6E5A6A9141874FA4E5314A2F4B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5861.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1548766-7ada-4cca-cdfe-08dc5309d03a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 11:41:19.2980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SkzirKeoVfhtFamRNN5hQCvnPIMC4vkUbJK2wAttTULkKjD9EtwwWOq7axwa4EjCZeVlZRm/Hx7NKc+O5mox6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7372
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

SGVsbG8sDQoNClRoZXJlIGlzIGFuIHVwY29taW5nIHBsYW5uZWQgc2h1dGRvd24gaW4gSW50ZWwg
bGFicyBkdWUgdG8gbWFuZGF0b3J5DQpidWlsZGluZyBtYWludGVuYW5jZS4gV2Ugd2lsbCBkaXNh
YmxlIENJIHBpcGVsaW5lcyA4YW0gQ0VTVCBBcHJpbCAxMnRoDQphbmQgZW5hYmxlIHRoZW0gYmFj
ayBhcyBzb29uIGFzIHBvc3NpYmxlIG9uIE1vbmRheSwgQXByaWwgMTV0aC4NCg0KUGxlYXNlIHBs
YW4geW91ciB3b3JrIGFjY29yZGluZ2x5IDopDQoNClRoYW5rcywgUnlzemFyZA0K
