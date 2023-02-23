Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF626A08CF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 13:46:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0408910E200;
	Thu, 23 Feb 2023 12:46:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395A010E200
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677156385; x=1708692385;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=onrilFOLhT6uNn1qNa37/o8Yimav2O9F/Jb8G3fAdYY=;
 b=Gcoa9DU3BXHZ6hIiBn3OS4cn38mGwhsjAbpyFOKBMhTvH5BROGpufUho
 2iM1e6l3n+otOSEWvsa1+IlaDH2UoWr/OfsxnVifpWeDzaFKOUfNS9KlN
 Wr+SPxCncQ+sIqzqbOeAx1so5i6MnuuOzddgWrn0vIiC80gfc4PQwRF2l
 U4tWOZOwPLlMBgMzT6nKvCxLRUN5O01mfGerR42ERSuv4wTOO74hTulrc
 /0S6g1VFI+FvvPDjpw9l4BwTwo4+JxZwtO7GskS/6itnw2gb5TRkcLSlg
 RRolh6mqWhu//75WV4rhhpnwfYwVHIhF4cALrO/aSRAZxryRYuLPoAOo2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="316928173"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="316928173"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 04:46:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="781871252"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="781871252"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2023 04:46:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 23 Feb 2023 04:46:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 23 Feb 2023 04:46:23 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 23 Feb 2023 04:46:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmpZ7i3yp8rAOYKXfjvMXPc26aDnzzx5v3ot2nTVs/M9yskRPTpvL11YJsl/Qk0atEepCqEOGKSDbTFISF2BpQkmopyCsyD42D104E4DypNNj8UPuHTQ2gJioi1X2hQeju4kTXxDGCUeqmldceWCT1X3lQW+Kl/7rCSWQrJ+rXqZpdNNbo2YFLZLy9B+OIVriuv/I6d7KtJOKvhY5rPVwWlWcf9I3ihKbT143kNIOoi+rsZcwp18UbtrUcx/rPoeGF83oENcmFPp6guKaaKNTcJqNV2zGwwR/0rrLVjm8NNAamEIqaKKosCjT4uuSrdTauk61Ao2RnS9Zr3aRScEEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onrilFOLhT6uNn1qNa37/o8Yimav2O9F/Jb8G3fAdYY=;
 b=LuJP57vNtpOcURPZj8tzW3NRu1OF0DgHXUFyUw06Cy81uegOM8kYsuWmHzG9QiGx5ksBlWTTc9zlQfdvycx1eTcIS51QKebKu/y9fATGsg8QjFke7iMVA+9XF9UY+/0jxkIBfefNTpjl3xn+WKkuPXC8mCADDAxc7mlQ1sTmV7FPyV6KOxk6Cqmt+FRBcoTFLNdJRIOCqBkN4D3t7+2alC3f8ZL2RYpedyds/nSz/9c6LsxC58U+jIuQVIkrqjrpRGAlZXfaAs2FgTxSOx6ZmGpLtJS8JXmsdFo+4TQm7uAhsN8hqALakFTMRff573sp9U9rMCgTJZ19yhQSd74WEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SA3PR11MB7536.namprd11.prod.outlook.com (2603:10b6:806:320::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.20; Thu, 23 Feb
 2023 12:46:21 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6134.021; Thu, 23 Feb 2023
 12:46:21 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915: Mask page table errors on
 gen2/3 with FBC
Thread-Index: AQHZMO5Gw/MSzxiWuEGkDqr+h0trqq7cp8qA
Date: Thu, 23 Feb 2023 12:46:21 +0000
Message-ID: <bb9a6acc5aa70d2b89f9a31f36a8eaf3d8e2bdb1.camel@intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
 <20230125185234.21599-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20230125185234.21599-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SA3PR11MB7536:EE_
x-ms-office365-filtering-correlation-id: 25602ea8-aa00-4048-d644-08db159bf6fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vhC7umPfKf1KGdINQTFX4De/6paZlzD4X5DPYUUeJoyTDHA8U+pg/eN9fsadpOCDrvArktXUZIc1TYvX5ujW1GhuNRpWlqoXHvf0tHk8rBEXnpjH7m9EI0/XRK7wpo4vsuBz+PhsfRcj2+2oh+gys3tEMT05bReoS/prpyek4qZbFfyXrm+IOE2G/FSmZSnesJ47KfYezAtorQ0TwxP3Kyx4uL57Hoj0RlwfdapLULcIyKVyz8YBJTK1KDhJ/pZIxI84N/LzRy1S5EbLYPgIs7iN/xEXowGoAbVSJJUOCHGEAyUULyfRFb+pCGn8cehfd8wBL41YuF886XTMb7H2rl8eDwRdmqg8iv1/AOLqk1Ziz8MnEcqcfjH0G0gMhPQNPO0c7GzCTeImvf0matxkFRBmf0T7H0ax0DDvWDBTQdEO4gF2HKQwuabEWvXXyNeEy6Oo8mYFZqPdaygxEs57cA69RfIzev2km2BoGabb0eP7By0B8qnBG/R2otPpjJo8eWNMeXi7NRlvNq4BwH4TtDmQJP9dxSN4QDZ1h/cffQH+rRkK3FQ7AtIVcIFqbTDmSKc9W11M4Rq2Al9YMhGVavTeElljSuPASV1eO1cvRDXm6HI/8FiTSWimVYFy1DFjFsb7YlTI/mZgwrUTtSZ4EE8XjLRVScUI1UbUMcD/2Fspp+2pZT+UNPhnT69ntHRRZ6npMXthHIv9l5oDdX46DA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199018)(2906002)(71200400001)(5660300002)(36756003)(83380400001)(8936002)(66556008)(122000001)(6486002)(316002)(64756008)(38100700002)(82960400001)(86362001)(478600001)(110136005)(66476007)(66946007)(8676002)(41300700001)(66446008)(76116006)(6512007)(2616005)(6506007)(186003)(91956017)(26005)(38070700005)(66899018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHBhUFgzVWQ1cmtDTmtycEdiS2ljRmZNVGl0Tko5SkN4THRWRGpZRktuaHkr?=
 =?utf-8?B?WitLc2c4UDVMKzY1OWZJNVQ1RndxK3JpcG42RDJ2S0hVZVA4VUE1SktGaTRm?=
 =?utf-8?B?ZjByYVpQV1JSc0krdTBZcStkTFMwVms1d1NtS0dYby91eVpjOHo3ckcrQ1da?=
 =?utf-8?B?cU12dzNsMkJPakc3SW83Y2VGczFrV256VE5Ka0VQRXZpdnJlRm5JK0pxWTdQ?=
 =?utf-8?B?NXFETWpkWVJQSThEQlQxdFRlVHMwZnpqMU54Vzlqc0xzWmVoWlFuL2JEbUZ1?=
 =?utf-8?B?S3NqRDIvK0dLNzdSY1ZIRVhmU3FWMm5ic0MwNDVrYXNoU2F6NjZ2SSsyL2w4?=
 =?utf-8?B?Qm9pV2FSMyt5N0xnTnRndUtIUXp0S1c3cVlKM0Q5RS9CamhkZy9FT3hQTDFT?=
 =?utf-8?B?ZGtlNkVFY2IwTndCRU1uMjg4SGZkN09RNFFxRTI1clFHNHNFV1NWM2pLZENL?=
 =?utf-8?B?aGJpNFRBa0dKblpxQnErYUkvc3Y4b0ZkcmlBN3NqWjMveVpOYWJqclBCQXM2?=
 =?utf-8?B?a1JSS29DelEzRE5lK3YvejlUODA3L1VNVXBoVndKZFVDZlhwRSt5V3AwYVdK?=
 =?utf-8?B?NDJzeU9sMWdjZWsvLzR4TVdReTVQbmJmYXhuK241WER6RmtPUCtWN0NKZHdj?=
 =?utf-8?B?NUg4eXlrRDlXQmVNK1JFUURsMEREZ1hBdzVEZlRTSWhCSldvc1NydlViUTU2?=
 =?utf-8?B?SUJXUm5tejN6V1dxSS9vMVpuNjJFcm8wS0xyZFJETTVUckZJeXJXalovbTJT?=
 =?utf-8?B?MUFSSHJGR29VMzBJaXFGM1N4M29rTm02UXpocnhnZkp4NU9xM1RPQWk5U2t4?=
 =?utf-8?B?cjBlSDNNT3R0RDlNU3VhZmJyUzMrcTMxOGtTdnJKODB3WUZab01aTHQ2Y0tu?=
 =?utf-8?B?U2tONFJTcVQyQ1JIcjVNbDV0V1d3Y2xlYXNRcmYwdG1rbHRFUDV2cjBFQlhE?=
 =?utf-8?B?VGtGS1YzY3RVOTJVUjNYUTVDUWdmRDdMY2R2RlJYa3ozdTA3VkNXU2tsOEhn?=
 =?utf-8?B?TWV2Rkw2QWkrOXdvMitqTHQyUDdCVExwaGZ6OFpjay9aOUtyb29kbkpvenlt?=
 =?utf-8?B?SzM2d09mOEF2Q0RPZU54eDhXTGI2MGlyVFdXKzlYQUdIOW5KODZXZXVSN0tT?=
 =?utf-8?B?TkJRRHlxa1dEQVhwdFV3VElhcm42c1RUOG8zcy8zd0Q2OXp4SEZYMU5vdmRl?=
 =?utf-8?B?Y2NGTXZRbWR0ekxqOU9QUkZBUXNMeDU2Ri9mVnhvZlEvVFhNRUlsWVpSbVZu?=
 =?utf-8?B?WkhIdklreXg0OVltOUp0UGR3OC84S0gxdXpTdldVRjBTTndFR1hlR0hqNmhE?=
 =?utf-8?B?emp5bGpKWnRTMFVkeTNPaWpxallveUlRbE5mMVJ2K2tYbDl3WUdVSEI3NkN5?=
 =?utf-8?B?dmo4MHN3ZHJiY0x6TkVqYTFBUlkxNk4yZmJtbFFocDFreEtrdTRVNkMrM1FL?=
 =?utf-8?B?MllZQkpTVW5zZ1FNa21yYzdFRERKTmhuZUNEZzFOcmdjeEhRbHFCMTQyT21l?=
 =?utf-8?B?bzIyeGszV0FjRjlpWmRwSk5VdCtQUFlJbzZjV1Z1eW1kblJSdmp4SjcvenpQ?=
 =?utf-8?B?bmRKOUo4c1hVcGxEMklvNTJVU0c4QzNWYUdJREVxL2tKSWpicHVETGs4NDk3?=
 =?utf-8?B?YS9DTmU4WmFXaVFmSnFQdncySGEwR3lsOVdQTUtYczhDSjlTdFZHUmpXa1lB?=
 =?utf-8?B?VUJmejRnR3VKOTZzOUFyOGFVeW5ZSWVTV3RUNTkwM0ZGb3BpaVlWdWltTWNQ?=
 =?utf-8?B?eGZaTkJ1ZkVEeENyQ3lLdXFwNmNneCtvbWMrNk1VTUt4WElWVjdKMFNyOGtB?=
 =?utf-8?B?bnFpK0kzVFVVYXdJaWNwcG1UMXpib3B6ekRYdUF4cWZZTWlQbHoxSEt2TE9t?=
 =?utf-8?B?THdSZERpcm82ZVdwOGNpMFNpNFJtaXpjdGJsQkZvMmtiSS9UdGQxVCtMakNV?=
 =?utf-8?B?VVYxNXo5TkdGZngrc015SFk2OWtXWE55bys5MHhLcGxacW44MWpXZjUvOWpE?=
 =?utf-8?B?S0lTZXVWRnRudnlrbnNXbGhUMi9uSUFDVFNSRm1Xc292M3lNdmI3MzdRTzFJ?=
 =?utf-8?B?YS9BQ0s4TmFZVUJrTnlneTZhemYveUw1OEN4N3JNWE44MHp4ckFoK0lSNG9E?=
 =?utf-8?B?R3UxUTR4aWo4Uk9iT25GZlVNRFdRVnZmKyt1NTBkWEljUHdyVkNKQkM3TVR1?=
 =?utf-8?Q?KMRiVt3ajjYlJPZpllviRPA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <32E0AB4B00F16C4BB111F579F515B01B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25602ea8-aa00-4048-d644-08db159bf6fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2023 12:46:21.0911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WN36vKUx2g7eO1uPD3gmLF6j02FKUwgm10aHmi3+xkG+cfzIf8bK1ZejeS+ihiQG+nvEnR7fgMetT5TYoEkrvGGx/1zw8uXH+c0rjcpsyAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Mask page table errors on
 gen2/3 with FBC
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

SGkKClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbT4KCkJSCnZpbm9kCgpQUzogV2l0aCB0aGlzIHBhdGNoIHNlZW1zIG15IGNvbW1l
bnQgZm9yIHRoZSBwcmV2IHBhdGNoIGluIHRoaXMgc2VyaWVzIG1pZ2h0IG5vdCBiZSByZWxldmFu
dC4KCk9uIFdlZCwgMjAyMy0wMS0yNSBhdCAyMDo1MiArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90
ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IAo+IEZCQyBvbiBnZW4yLzMgc2VlbXMgdG8gdHJpZ2dlciBwYWdlIHRhYmxlIGVycm9ycy4g
Tm8gdmlzdWFsCj4gYXJ0aWZhY3RzIGFyZSB2aXNpYmxlLCBhbmQgZXNzZW50aWFsbHkgdGhlIHNh
bWUgRkJDCj4gY29kZSB3b3JrcyBvbiBnZW40IHNvIHRoZXNlIHNlZW0gZW50aXJlbHkgc3B1cmlv
dXMuIFRoZXJlCj4gYXJlIGFsc28gaGludHMgaW4gZ2VuMyBic3BlYyBpbmRpY2F0aW5nIHRoYXQg
Y2VydGFpbiBiaXRzCj4gaW4gUEdUQkxfRVIgYXJlIGp1c3Qgbm90IHdpcmVkIHVwIGNvcnJlY3Rs
eSBpbiB0aGUKPiBoYXJkd2FyZS4KPiAKPiBJZGVhbGx5IHdlJ2Qgd2FudCB0byBtYXNrIG91dCBv
bmx5IHRoZSBib2d1cyBiaXRzLCBidXQKPiBzYWRseSB0aGVyZSBpcyBubyBtYXNrIGZvciBQR1RC
TF9FUiwgYW5kIGluc3RlYWQgd2UgYXJlCj4gZm9yY2VkIHRvIG1hc2sgb3V0IGFsbCBwYWdlIHRh
YmxlIGVycm9ycyB2aWEgRU1SIDooCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgfCAyMiArKysrKysrKysrKysrKysrKysrKy0tCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMKPiBpbmRleCAwODFiNzlkMDA1MjEuLjQ5NmY3NmJmNDJmMyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwo+IEBAIC0zNDczLDggKzM0NzMsMjMgQEAgc3RhdGljIHZvaWQg
aTh4eF9pcnFfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IMKgCj4g
wqBzdGF0aWMgdTMyIGk5eHhfZXJyb3JfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKPiDCoHsKPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gfihJOTE1X0VSUk9SX1BBR0VfVEFCTEUg
fAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSTkxNV9FUlJPUl9NRU1PUllfUkVG
UkVTSCk7Cj4gK8KgwqDCoMKgwqDCoMKgLyoKPiArwqDCoMKgwqDCoMKgwqAgKiBPbiBnZW4yLzMg
RkJDIGdlbmVyYXRlcyAoc2VlbWluZ2x5IHNwdXJpb3VzKQo+ICvCoMKgwqDCoMKgwqDCoCAqIGRp
c3BsYXkgSU5WQUxJRF9HVFQvSU5WQUxJRF9HVFRfUFRFIHRhYmxlIGVycm9ycy4KPiArwqDCoMKg
wqDCoMKgwqAgKgo+ICvCoMKgwqDCoMKgwqDCoCAqIEFsc28gZ2VuMyBic3BlYyBoYXMgdGhpcyB0
byBzYXk6Cj4gK8KgwqDCoMKgwqDCoMKgICogIkRJU1BBX0lOVkFMSURfR1RUX1BURQo+ICvCoMKg
wqDCoMKgwqDCoCAiwqAgW0Rldk5hcGFdIDogUmVzZXJ2ZWQuIFRoaXMgYml0IGRvZXMgbm90IHJl
ZmxlY3QgdGhlIHBhZ2UKPiArwqDCoMKgwqDCoMKgwqAgIsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHRhYmxlIGVycm9yIGZvciB0aGUgZGlzcGxheSBwbGFuZSBBLiIKPiArwqDCoMKgwqDCoMKg
wqAgKgo+ICvCoMKgwqDCoMKgwqDCoCAqIFVuZm9ydHVuYXRlbHkgd2UgY2FuJ3QgbWFzayBvZmYg
aW5kaXZpZHVhbCBQR1RCTF9FUiBiaXRzLAo+ICvCoMKgwqDCoMKgwqDCoCAqIHNvIHdlIGp1c3Qg
aGF2ZSB0byBtYXNrIG9mZiBhbGwgcGFnZSB0YWJsZSBlcnJvcnMgdmlhIEVNUi4KPiArwqDCoMKg
wqDCoMKgwqAgKi8KPiArwqDCoMKgwqDCoMKgwqBpZiAoSEFTX0ZCQyhpOTE1KSkKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIH5JOTE1X0VSUk9SX01FTU9SWV9SRUZSRVNI
Owo+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIH4oSTkxNV9FUlJPUl9QQUdFX1RBQkxFIHwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJOTE1X0VSUk9SX01FTU9SWV9SRUZSRVNIKTsKPiDC
oH0KPiDCoAo+IMKgc3RhdGljIHZvaWQgaTh4eF9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+IEBAIC0zNzYyLDYgKzM3NzcsOSBAQCBzdGF0aWMgdTMy
IGk5NjVfZXJyb3JfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiDCoMKgwqDC
oMKgwqDCoMKgLyoKPiDCoMKgwqDCoMKgwqDCoMKgICogRW5hYmxlIHNvbWUgZXJyb3IgZGV0ZWN0
aW9uLCBub3RlIHRoZSBpbnN0cnVjdGlvbiBlcnJvciBtYXNrCj4gwqDCoMKgwqDCoMKgwqDCoCAq
IGJpdCBpcyByZXNlcnZlZCwgc28gd2UgbGVhdmUgaXQgbWFza2VkLgo+ICvCoMKgwqDCoMKgwqDC
oCAqCj4gK8KgwqDCoMKgwqDCoMKgICogaTk2NSBGQkMgbm8gbG9uZ2VyIGdlbmVyYXRlcyBzcHVy
aW91cyBHVFQgZXJyb3JzLAo+ICvCoMKgwqDCoMKgwqDCoCAqIHNvIHdlIGNhbiBhbHdheXMgZW5h
YmxlIHRoZSBwYWdlIHRhYmxlIGVycm9ycy4KPiDCoMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKg
wqDCoMKgwqDCoGlmIChJU19HNFgoaTkxNSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gfihHTTQ1X0VSUk9SX1BBR0VfVEFCTEUgfAoK
