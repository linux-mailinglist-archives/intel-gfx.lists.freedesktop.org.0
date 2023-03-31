Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 608386D1EB0
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 13:07:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA20610F1D8;
	Fri, 31 Mar 2023 11:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F39C10F1D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 11:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680260827; x=1711796827;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=tm3zjh0BpEBsyp4ekC6Hzfv8jlVvkUnmgeZY3sAKx4I=;
 b=F4ArB0KLskMhq7OOXnp87odANJfME1qFjmKjX5znTjBqSPqoY/+cstFG
 7+Uooxd+P9NEZJm0lO7+0XeqON+9jl7EnK81FwnomErVKl+f9qQaNdqzG
 4xBuTMjLiu4G5gvceMAwrIF/SUwqjykv0aeRMJpNo9pYOZjCALTYa8r+y
 Fb7aVvIFrqwrK2uh5Wl2Srv2AyJwit8wUN1aJSC0xbfeN4szhpuf5VCJd
 2/9SwuLiXReAH4spqncr0o9u4mpnBZDHQcQTG0BkcKvwxX6X4HgsU0jd5
 Tq/q9tRo+OWc9AN9OneSossVvz8lLwMfw+hIfA1jUrzRDjJH8kMxpUXXO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="338922679"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="338922679"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 04:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="1014783497"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="1014783497"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 31 Mar 2023 04:06:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 31 Mar 2023 04:06:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 31 Mar 2023 04:06:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 31 Mar 2023 04:06:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j3chf3UbxrTgnX6nPBcWJSQvr83nS5XvF9/aJhLizNSW0nWCnIYJ9PYPP29resTPxKySyjkPWWf7Ee4DQ25qwEDhSQB6qoF4jWkStUEGMDadpPJHXB9lZ6uVprtCAqyCUH0evvBYEoss0PPruV0+cEQv9EZRbBnGRIqcdYV78zNkEsFUR6FDlzHg2tPQEBMnVxxJ//geDvqAqehK6MLT4uZB+6DZApW/9360LCrcrN9Eezy1RwKFnnCAj4FgPHY51zPIop+oxmboxRl39l2U2Q8PQoMRIBHNVZ5q+uu0lWklVCOLmnjrTZzhj7ZCiUcIU8RhPg8O8jT0QVp53d6tQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tm3zjh0BpEBsyp4ekC6Hzfv8jlVvkUnmgeZY3sAKx4I=;
 b=Kf/93mhGo9HzxVAb2fUq+RPAV2hSuDTWZbx4d7w4XDQCba1e/342Pmj8g8kW35BGpeNwEUFmYMF4dRynAB2g5sLF4ChOPLADl/M26t72OsWoxTLL51SFKrBURzS2kmW8zBPIthVp9Zuhu3vhBznNjcPg2zRpjg3YkM9nsA4remIjvHFZiYy1r2dJYk6fOXVb9Bfr9UNQnchKQJsNAz1TW1CbvcFNUyrztbPKYMCZeeoA3UjHijhcIM5YFF2kJmmmX83WhcobW7U/xLc9jjSfSlhH/nU5c96M0JpVEw+mW8vOuUcrWXVxsXJYynnKGno+QVtUsQd0EB5j7p784nyPdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Fri, 31 Mar
 2023 11:06:14 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::b6b5:1737:542a:7fb8]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::b6b5:1737:542a:7fb8%9]) with mapi id 15.20.6178.041; Fri, 31 Mar 2023
 11:06:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Explain the magic numbers for
 AUX SYNC/precharge length
Thread-Index: AQHZYmNazm2E09y59kec65HlG5qe7K8S6/EAgAHQ1QA=
Date: Fri, 31 Mar 2023 11:06:13 +0000
Message-ID: <69765351c1110c8566c6e86a08741951d42416f2.camel@intel.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
 <20230329172434.18744-2-ville.syrjala@linux.intel.com>
 <7c2249f6bd665f994a79f373cc18d0df61f61838.camel@intel.com>
In-Reply-To: <7c2249f6bd665f994a79f373cc18d0df61f61838.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|SA1PR11MB5948:EE_
x-ms-office365-filtering-correlation-id: 2ff1bd4d-5574-476e-8c69-08db31d7f150
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ipm/JzeHLGK7eRbK49Sb1lFigmKa167M9xLyuHyf/zmE48uq989yIjmE7Y6Ik9Wr0UYRpqcYYs+fkHVJriXWc79BAFqIkhBTzeFuGaOzn3BaVnEFNjjbhMaTsyRFmIr/UwIw5oJ7XKx4D1yX5dZA8obYqTbmnQSK0s+Y/+aO7JTIIy8aRQhJ7DpUo7+0TRu13Gymk7hGymq2ehJtbJ6WtOKj6QdR2l7qroQ1eg8YNX94rdh9XQ0bFGxp6+SjRZjZ5nNVaMEGbH+i0ZGlC05mYMUbulveVYxh3nwERVDchcMovpy3SBPIyMOW3R8r6VmqIjXMwG0BXX6ibOKZvECHMq/vMGBCTVL2DkDLltH80YKpeJSe7biiWJdTQ0oed/2pfA8QhVsUtLGW1l0J1U+W9toTqVhPk04rdOvusjyN61d9zxtSaHyyhlPeBmhgVlQ2sz1myEwFTq1dc0gUnt6g3T2dd0HcX6yEm8d0XRH6lEd82nXPtXjYRa0becb/gPQgwnhUFQSbjB81lShqRkzNAczvjD/7Wa7pTY7zcHoyr2VKzW8OSqqUeGH8MMfHfkwNwrUc0R5+GRBUJtZWWHi0b2Pq26kR5BZh+bkBOWc1Le7SKaH5Gap383duocYZF6XF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(396003)(39860400002)(136003)(376002)(451199021)(83380400001)(86362001)(6506007)(41300700001)(26005)(6512007)(76116006)(91956017)(8936002)(38070700005)(66946007)(71200400001)(110136005)(186003)(36756003)(66476007)(64756008)(316002)(122000001)(2906002)(5660300002)(2616005)(82960400001)(38100700002)(8676002)(66446008)(478600001)(66556008)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTJYSUlHWTlacEhBMUxHcWpma3pUVnRVak9rU3kvakFTZjAzWVJqdGFhUVR2?=
 =?utf-8?B?RGJZbXhYN09vbEM1cUNYalVlb2JvVForbnVBTkVXcHdMcncvbkF3MkhTbTNW?=
 =?utf-8?B?MUp2dkZybjZWQ1ZGYXROWG5uZEJ0TFE4a1liRkxpcXhuVHROSnptTmF4dzNl?=
 =?utf-8?B?Q3BLQWk2YjZtWXRZQlc3NmdQSEVTWk4zWVB6M2V4MFdzblAwTmRpL2phQlZU?=
 =?utf-8?B?UHRWNU1mRVdFNXp0UXBnUzg5UExidEpLcGFSblYrNnh2VG9XQWVDRW5BMmYx?=
 =?utf-8?B?MHIrcTExQ25DWW5GQVpkWmFuaU1QYVhLc3liU0cvVk11S1lQaDBlK2N6QWlk?=
 =?utf-8?B?Z053ZmFiaHdoTjNBUHZxa25FR00zc1VMNENGYis0cWxrM0NBckh3dCtBVEc2?=
 =?utf-8?B?Q3dtNjRFV051bWppMUVxelF2dzZhb0ZoWGYydjhlVGNtRmd1M2FONm1oVWVI?=
 =?utf-8?B?TWtYVzdEajZ4anY1MjhmNDlqOTk2aUxXcmVKSjJ6TDN5NEpMby90ZWFKdTRE?=
 =?utf-8?B?VlpFbmE4OVZEN0Nnbk04WDFiWUYyOEUzSzdDMmRCbmxJMHp1eHJwMmtUZTI2?=
 =?utf-8?B?SDBSUFpvcXBvdW9QZ09KcTNEREN3L2hiOWlYNERmajF1MmRtYWtvc3RYeExR?=
 =?utf-8?B?TTJha2V4NEgwVHZHazh5U0M1blpBUENQNzZCRVZ3M0xyYjhFcW9NNFZQMnBn?=
 =?utf-8?B?SHFFUnJUeUhPN0ZUUWlmbUpMTUtEMm9TZmxxazRhbTNpOUpCTUNnZWhQVEg1?=
 =?utf-8?B?cEp4bHlaUzBGVUZLZmZrS0wrZnR6bDRDRmJzazRQajhhb1dHcytxMVlEQzZq?=
 =?utf-8?B?RWZmbnFUSVZ2RlBUL1liZnJpZ1M2bHFtRCtvYzRWL3QzbFI5NHBJMktnTnl5?=
 =?utf-8?B?SEFnZnpwTExlM3lSZEVuSk1wZncrTTA2cGdCZVg3Q0pWYm5OR1pYQkZPVUox?=
 =?utf-8?B?TTREZU9HR0NOTGNuVDJEZjFtMjBIMENjeUd1ck16RlE2WEtxUVdaSkNjTUhy?=
 =?utf-8?B?WExDSklIV1pibGI1MnJIVmQ3eStMb3UyYUpncjRFRGxXMENSbWdhQ0hJSng0?=
 =?utf-8?B?SVBqS0xGbUg5YXlNaW9LaGR4R0NDNG04Y1hiMUFjQXQwY3NtSEppNiswQWlz?=
 =?utf-8?B?RERQSUJYcjRoRVVhMk1lRzJrTXJtVjBqTjdmNmVXSVJRVTlUUWVaemZFMWlv?=
 =?utf-8?B?NUhHVnBvMEljSU14bVVaWHdtRDBPL3VCd1lTWkpMdXhKckFTaFYrVG03eG5E?=
 =?utf-8?B?ayttVFFSR3QxZnJ5NUxWRE5QY0hrb3pNeGNDMkthMDgrYUVKYXA3VnZMZXR6?=
 =?utf-8?B?RFFWejNvVXhkZTVqQ0lKMXBKbEE5TUpKL2lhN1pDejhxVlBVVzJ5U0xTSk4w?=
 =?utf-8?B?QkNaWGQ4ZGh2blBweFNCYmZGUW0zdHJmSjVMZlVMS3lHNFpvTkJtQ29MS3d6?=
 =?utf-8?B?N3VIcGxxaEtwQ1ZPUkhFZWw0cC9FZ0Zpb0xWWGtsTmhxazBVbVBReXpTaVBt?=
 =?utf-8?B?cnQ3L0VURzlVcFRSUWhYVE1hQ0NYWHIwS2Fxa3QxMjNBSzhscmlsUUR2UlR4?=
 =?utf-8?B?eThPazFySGdldmcwWmFDZ3BjdWJqZitVN3Z2WS9oaDJhL3FHdWY4eUNjdVNw?=
 =?utf-8?B?ZXZhcjA0Q1hEYVNVdGZJYno2cnZncGRTTUd1MXFWT3dWazdoMjVYdFI1Zlds?=
 =?utf-8?B?ZTAyUy9TUG9FWW9CclAvQklpYXhEVTZtQkdna05XK3ZWS3dIL0dobFhBUXJz?=
 =?utf-8?B?anVsdFFqRTdCN1NNK2ZjdmdKOG4yVC9CNXVBSjc0RG9vVG1UUmhRZmZWL3ov?=
 =?utf-8?B?d3BMbHJ6UUl5U2dUS3pFdDdEcG15WUlkS0xtVnQvRG5RSTh1Z2M2T3lWQWxl?=
 =?utf-8?B?bnp5Wjd4QTNGdkxUUWRzNk1DRmN4aHd3Wkk4aHF2SXl3TGg4NVNOVmhBcGp6?=
 =?utf-8?B?azI2RzcxRjU2a0EySWd3bVYzelVQSkVtZ2VqUDFMSVpKdGZHZCtWZ0I2dndK?=
 =?utf-8?B?dWdQT2NFSmxHajU2aU5HcGR4WExQRlRIaU5oZ2FLeUFmSmwxOW0wSUpMcDJt?=
 =?utf-8?B?REhrQncyM05XSE1lRVhOK2F0aVgxOE0rWFpJd3pJckNZVUdWZDBCRXB3aFQ1?=
 =?utf-8?B?cTFramtjK0JiTkZjL3BiVmdTUEUvMkc2ZlZHc1hkM0tlMWVueHpHMnh1WTNE?=
 =?utf-8?B?TFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <40026CF17D82E74AB8A8BFEB7486162D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ff1bd4d-5574-476e-8c69-08db31d7f150
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2023 11:06:13.8906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DsWbH7h2/2qtRjoMlByP1maVxtGqNazzIi28yt5uHuMGUF9hpQ6M3cfhkzRv3LZOOWeqo6uU6lA/gObt1HdCvn3EhbYec9AVqyMgkd840W0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Explain the magic numbers for
 AUX SYNC/precharge length
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

T24gVGh1LCAyMDIzLTAzLTMwIGF0IDA3OjIyICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
Cj4gT24gV2VkLCAyMDIzLTAzLTI5IGF0IDIwOjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3Rl
Ogo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiA+IAo+ID4gUmVwbGFjZSB0aGUgaGFyZGNvZGVkIGZpbmFsIG51bWJlcnMgaW4gdGhlIEFV
WCBTWU5DL3ByZWNoYXJnZQo+ID4gc2V0dXAsIGFuZCBkZXJpdmUgdGhvc2UgZnJvbSBudW1iZXJz
IGZyb20gdGhlIChlKURQIHNwZWNzLgo+ID4gCj4gPiBUaGUgbmV3IGZ1bmN0aW9ucyBjYW4gc2Vy
dmUgYXMgdGhlIHNpbmdsZSBwb2ludCBvZiB0cnV0aCBmb3IKPiA+IHRoZSBudW1iZXIgb2YgU1lO
QyBwdWxzZXMgd2UgdXNlLgo+ID4gCj4gPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKTGV0J3MgdGFrZSBjYXJlIG9mIHRoYXQgaW8vZmFz
dCB3YWtlIGNhbGN1bGF0aW9uIHNlcGFyYXRlbHkuIEkgdGhpbmsgd2UKd2FudCB0byBoYXZlIHRo
ZXNlIGluIGFzIGN1cnJlbnRseSBmYXN0IHdha2UgU1lOQyBwdWxzZSBjb3VudCBpcyBub3QKYWNj
b3JkaW5nIHRvIHNwZWMuCgpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+Cgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfYXV4LmMgfCAzMgo+ID4gKysrKysrKysrKysrKysrKysrKy0tCj4gPiDCoDEg
ZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYwo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jCj4gPiBpbmRl
eCBhZDBhYWM3MDcyMTkuLjM3NDQ5MjI5MzM5MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMKPiA+IEBAIC0xMTgsNiArMTE4LDMyIEBAIHN0
YXRpYyB1MzIgc2tsX2dldF9hdXhfY2xvY2tfZGl2aWRlcihzdHJ1Y3QKPiA+IGludGVsX2RwICpp
bnRlbF9kcCwgaW50IGluZGV4KQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpbmRleCA/IDAg
OiAxOwo+ID4gwqB9Cj4gPiDCoAo+ID4gK3N0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X3N5bmNfbGVu
KHZvaWQpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHByZWNoYXJnZSA9IDE2OyAvKiAx
MC0xNiAqLwo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHByZWFtYmxlID0gMTY7Cj4gPiArCj4gPiAr
wqDCoMKgwqDCoMKgwqByZXR1cm4gcHJlY2hhcmdlICsgcHJlYW1ibGU7Cj4gPiArfQo+ID4gKwo+
ID4gK3N0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X2Z3X3N5bmNfbGVuKHZvaWQpCj4gPiArewo+ID4g
K8KgwqDCoMKgwqDCoMKgaW50IHByZWNoYXJnZSA9IDE2OyAvKiAxMC0xNiAqLwo+ID4gK8KgwqDC
oMKgwqDCoMKgaW50IHByZWFtYmxlID0gODsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVy
biBwcmVjaGFyZ2UgKyBwcmVhbWJsZTsKPiA+ICt9Cj4gCj4gV2hhdCBkbyB5b3UgdGhpbmsgaWYg
d2UgbW92ZSB0aGlzIGludG8gaW50ZWxfZHBfYXV4LmggYW5kIHVzZSB0aGF0IHRvCj4gY2FsY3Vs
YXRlIGlvIHdha2UgdGltZSBhbmQgZmFzdCB3YWtlIHRpbWUgaW4KPiBpbnRlbF9wc3IuYzpfY29t
cHV0ZV9wc3IyX3dha2VfdGltZS4KPiAKPiA+ICsKPiA+ICtzdGF0aWMgaW50IGc0eF9kcF9hdXhf
cHJlY2hhcmdlX2xlbih2b2lkKQo+ID4gK3sKPiA+ICvCoMKgwqDCoMKgwqDCoGludCBwcmVjaGFy
Z2VfbWluID0gMTA7Cj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgcHJlYW1ibGUgPSAxNjsKPiA+ICsK
PiA+ICvCoMKgwqDCoMKgwqDCoC8qIEhXIHdhbnRzIHRoZSBsZW5ndGggb2YgdGhlIGV4dHJhIHBy
ZWNoYXJnZSBpbiAydXMgdW5pdHMKPiA+ICovCj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gKGlu
dGVsX2RwX2F1eF9zeW5jX2xlbigpIC0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBwcmVjaGFyZ2VfbWluIC0gcHJlYW1ibGUpIC8gMjsKPiA+ICt9Cj4gPiArCj4gPiDCoHN0YXRp
YyB1MzIgZzR4X2dldF9hdXhfc2VuZF9jdGwoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnQgc2VuZF9ieXRlcywKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1MzIgYXV4X2Nsb2NrX2RpdmlkZXIp
Cj4gPiBAQCAtMTQwLDcgKzE2Niw3IEBAIHN0YXRpYyB1MzIgZzR4X2dldF9hdXhfc2VuZF9jdGwo
c3RydWN0IGludGVsX2RwCj4gPiAqaW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHRpbWVvdXQgfAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9BVVhf
Q0hfQ1RMX1JFQ0VJVkVfRVJST1IgfAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAo
c2VuZF9ieXRlcyA8PCBEUF9BVVhfQ0hfQ1RMX01FU1NBR0VfU0laRV9TSElGVCkgfAo+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgzIDw8IERQX0FVWF9DSF9DVExfUFJFQ0hBUkdFXzJV
U19TSElGVCkgfAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChnNHhfZHBfYXV4X3By
ZWNoYXJnZV9sZW4oKSA8PAo+ID4gRFBfQVVYX0NIX0NUTF9QUkVDSEFSR0VfMlVTX1NISUZUKSB8
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChhdXhfY2xvY2tfZGl2aWRlciA8PAo+
ID4gRFBfQVVYX0NIX0NUTF9CSVRfQ0xPQ0tfMlhfU0hJRlQpOwo+ID4gwqB9Cj4gPiDCoAo+ID4g
QEAgLTE2NCw4ICsxOTAsOCBAQCBzdGF0aWMgdTMyIHNrbF9nZXRfYXV4X3NlbmRfY3RsKHN0cnVj
dCBpbnRlbF9kcAo+ID4gKmludGVsX2RwLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
RFBfQVVYX0NIX0NUTF9USU1FX09VVF9NQVggfAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgRFBfQVVYX0NIX0NUTF9SRUNFSVZFX0VSUk9SIHwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIChzZW5kX2J5dGVzIDw8IERQX0FVWF9DSF9DVExfTUVTU0FHRV9TSVpFX1NISUZUKSB8
Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQX0FVWF9DSF9DVExfRldfU1lOQ19QVUxT
RV9TS0woMjQpIHwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfQVVYX0NIX0NUTF9T
WU5DX1BVTFNFX1NLTCgzMik7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBEUF9B
VVhfQ0hfQ1RMX0ZXX1NZTkNfUFVMU0VfU0tMKGludGVsX2RwX2F1eF9md19zeW5jX2xlbigpKSB8
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBEUF9BVVhfQ0hfQ1RMX1NZTkNfUFVM
U0VfU0tMKGludGVsX2RwX2F1eF9zeW5jX2xlbigpKTsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDC
oMKgaWYgKGludGVsX3RjX3BvcnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19wb3J0KSkKPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0IHw9IERQX0FVWF9DSF9DVExfVEJUX0lPOwo+
IAoK
