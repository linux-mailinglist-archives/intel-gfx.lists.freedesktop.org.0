Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F206CD9CE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 14:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F0B10E51E;
	Wed, 29 Mar 2023 12:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCBE10E51E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 12:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680094796; x=1711630796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5IUCd75+tHgs/Eb+ZQ8fsTAwgUR1ckM30P6JcrJcU5Q=;
 b=ZFdGsWZo0f3K13Qoslzc5SRGBmccU+o0LHdyZrFt2EZM85OjZInSu5rT
 ydjTrH9l5D8J2qfrW0xSt76S5GreNcLLOviOXIobL54aCdNk+ByF16Bid
 KvGBgRg6KyYKnTGWXa+IRGD2iXGFfdSaBTEadhuZNB/wsewXBY9LuUaqC
 Cpq8vXJlkGWOOXQk2KDi7t8Qv4wiHWynq6XV1agAPD1FahueBAWSarGQ/
 8IWtULiF/5mPD9iYP9mPO/bk/PDWfECLfDTW0GLSDQAEXpMaObtRY1Dq3
 2N8KgMLxQrXUket9GHBi7DODW4EOJMPf/MtQsFho5NADNAFDeimBGVsPL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="343287189"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="343287189"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:59:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="1014009998"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014009998"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 29 Mar 2023 05:59:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 05:59:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 05:59:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 05:59:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FuH9TSDT35NbglIp2a5sZcWqEOU4C3zGl5Pg4fwfz+RLZH69sypvsJ3Qwts7/zKhPZ6ku8iso1Uo6RLG1/Ugo/cnudf4A0FiRFF7QfPPRyMWeEmEiPUt/IbcJAsGSQ9pYFnOHJqEQvNAMZbBZ0iodnHiDKt0jyMmHh8zdKEL0EKQ3QteFrGfuXrwU/es3U7nIbJrcxGOQNJX+vyafB1xEBytZl0GBfWRCJwIlk9/zxZC/e3xsYNEKL+EBx9H25pw8E4tI+neF2MGC564yYk1RHt6tyh+KxekyyBFEUv5dfl4TiPeMIyYPxoi7IscC0TRaIHXHhHbcQftO8rxke9lnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5IUCd75+tHgs/Eb+ZQ8fsTAwgUR1ckM30P6JcrJcU5Q=;
 b=Alw3cbtn9AzZhdD2Bon9lyQyX1o8pyXt4FqG/9OQpzQPpltA1oY4kLIux6wLCcNsOoPihXHTTDbRI93fM7xYLSPpCWexB7cvGq18v+TRdWlhEsguPbANZy90P7NRQ1xXhSTNjPw8s38bwP6/521Be7EwLc2i/cE1kwXqz4j/oNVANUl8AWO+8X41jix1qE+C19w5+VdNvoXpzYGJcHOkj0o/qj0yrred297Gt7PENjEjQEfQUs7WClmmxUqjYj8e4z0xcfp2seGC+5+tbVfXdRd+909yMuvGArceIgVT3P3QD/9N8RPr0gH6er8DMtdXhi1AAiRvaf45T/5XnO12WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BY1PR11MB8080.namprd11.prod.outlook.com (2603:10b6:a03:528::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.33; Wed, 29 Mar
 2023 12:59:48 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Wed, 29 Mar 2023
 12:59:48 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 6/6] drm/i915/psr: Implement Display WA
 #1136
Thread-Index: AQHZYiNQ/tGmcCh+70iDhMQs4NEU7K8RtksAgAACGwA=
Date: Wed, 29 Mar 2023 12:59:48 +0000
Message-ID: <6d8f6c441c786c8657e91ede08d0017c629a397f.camel@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
 <20230329094532.221450-7-jouni.hogander@intel.com>
 <ZCQ0fuLJRnsGSRs0@intel.com>
In-Reply-To: <ZCQ0fuLJRnsGSRs0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BY1PR11MB8080:EE_
x-ms-office365-filtering-correlation-id: 808ebfe4-4339-4dc7-c0df-08db30557a3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GZRlz1q+dTvPCDcAKpWrm89tabW4CzaqgXZ9BjF5IdLxry0fUVquDVZRFURiao0yDCJQdHoVDnGiTGkbbubXkTSMGQcA0nG5lkfg8O9Evl/ELTRcYAdq685I6VjFd/dewVt8uaRziCrjcq7VzYTj6zH8yzoHZKn3PoFUcIRCSUcMwY6H5O6DSaLRpWMx42gvEK82TE4cMOCPP1y66veR9bG7lf9cz6giGYf4PJU0oJwHH0qRG9Q8bbk8xCnNL7LObA5ySCpYIgK+V1O1iw2uo4AQ/cBKcEaMM4hnvdhNwHd8MDucEs5DWJD5CVF9EQwgXCYiNR8dHTBnuIz5XSLAZpRBcGxSx0ElVfulmiFllFAcruRyY/904j8MPll1NqHvEuEEzV30JId0uVnMBNXOP94xWp3XtCT8k1OoKJAqiuuPTg670Dy63av8qblhHFTNHYMhZTyGq5VBIKlabYZmXk5XSvaWcvTWqYBvcbjtiqnGTVPLWFlGLbAGSC4Ddki69Q/xQfSBJMTWr2K/iw/mEIIFa+27LJnq0yefdOmUY4ZE4BqlAXVIyn3kMVN4abSVY/Gh3sOwUBmwJRfQwtvF6vXzylTzSjiweoU321z1kcEBIkNZH6i6SEGy3ei+hVa8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(346002)(39860400002)(376002)(366004)(451199021)(66476007)(71200400001)(26005)(6506007)(6512007)(6486002)(6916009)(478600001)(316002)(186003)(91956017)(66574015)(76116006)(66556008)(66946007)(83380400001)(66446008)(8676002)(64756008)(2616005)(4326008)(41300700001)(8936002)(5660300002)(2906002)(82960400001)(38100700002)(122000001)(86362001)(38070700005)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWJyUDVaOEJrNzBWcjNFbnkzTUFUSnZxbmRFdlF2Z3oyNEx0M1BaNDgrVVJU?=
 =?utf-8?B?VkppSnAzcjRvMWtwa3cyelZXTVVrL1l5c3VIQlVrb1VoSk04NHdnS2VYSklW?=
 =?utf-8?B?V2J4bTBZZWR3MjV6SDFpbUxvSFg0ZGRaN3pGVXljOGVYZldoMnJlc1F2NFB1?=
 =?utf-8?B?TE5Yb0tqWEJTMVdYUXk5YVdVdlc5NG40bU5hcXVHbDM2Q1E4VU9MSU56bm5O?=
 =?utf-8?B?WTNVWTJoS1VrZmE5d0hQb3JiR3dXa1RmY1ZnenZncWVZY1BDdzFPOXhNcGhU?=
 =?utf-8?B?K01YUzFLT3d3dTZvV2tYVHdJTm1FT1pqcjU2WGczUHJ4eDJzUUU5bHRLT25W?=
 =?utf-8?B?YlR0M1BDMWU4eDlsUkc5Z3htK3FyOWttdjdBTmE2cCtTRjh6YmxtNGZNRzR1?=
 =?utf-8?B?UlBBU1RaejBFK1lhSU9uRU8yUHE3WC8zcmh0UldBQTFQc2pQVVgyaFdFQVNp?=
 =?utf-8?B?dURXY1B5anNBK3NETG9HdU9GZHBEMkJUU292dmN0R2VRd3l2WWRieUpLRU0y?=
 =?utf-8?B?S05zdmpRSkFsRlc2eStWQkhiZVZyc3N6dDdNeUNXZWlZRXNlVkpXaE00TG5F?=
 =?utf-8?B?WERwUXFnVUxZemgybWJFNVh1aENEUVZCZzlmdkIrb2k0VHF1SXNqaVI2K3dy?=
 =?utf-8?B?WTJoS3hHbWpjTGxaQ2pPL3duNzlOSzFNZklWSmpEQnkxdXFOa1M3aHc1UG0z?=
 =?utf-8?B?eXZrK2FFMlJ0VlRnazRkU0RCa3N2aEtURVhGNTVTWjVGbTNyTC8xQnFXZWo5?=
 =?utf-8?B?ak52cjM2cFFaYWxMdEU4MDJ1dmRMTWVhTzIrdG01Zkd6ZjVBeUJZaE5VTXVi?=
 =?utf-8?B?LzF4V0pGaEV0bmZtRlp2dUgzTjBpNUZ2eE9iMTFpSkZmZVNjRmk3YVR6ZzVM?=
 =?utf-8?B?QlA2YUVnN1NXZW1YNjJ5QkI5R2t1NFhOQWxYZmFoSkVITWpyNmJjWXJUTU5F?=
 =?utf-8?B?dGVrYVg1bDhrRTBjWXEwekNLdGRLZG4rOUlnZ212S2FNZ3FrdklyZ1FFRGY1?=
 =?utf-8?B?WVdHNTB4VDhsZnF1aHZKR0J6elJkenh1aHZSZmtGTVRISk1wWnBHdWFsem5p?=
 =?utf-8?B?YkFYdG5yYzNxZSs0M0xvOE56c2ZCdUVscGw5dGc1Rkg0YTlnbHc5VFhXckJE?=
 =?utf-8?B?V0JpS2JWYXo0QXJPOUh0a2cxS2R6OURzdHVOclVxT0lrMUh6Q2g1dXRHdllx?=
 =?utf-8?B?M2xsSGd1MlVWeGh4blRKWEFpK3YyUmlhay9kcmRLSzk5RURuRVkyUTFPMHp1?=
 =?utf-8?B?VEFCOXBjMEJac244RlRzMDBGdXdOdEFoWFV6N2xreWJubVRwa0trNjVBMEdH?=
 =?utf-8?B?WFFIMEZMTm9NZ3R6QWoxaksyZmx0TGxrazZPMWRFdnFFYmhMM0hiY081clFP?=
 =?utf-8?B?elRrNmNLK2grSlR1eCtQTmpyblpiUzlqU2h0QTcwVFV1QllqRXJUVTEvTUhJ?=
 =?utf-8?B?dmtySGl6SWIzUmNSNXlwL3BEdjg5WG80c2NNQkViNHJ5REtrTEZOYUpJU2Vo?=
 =?utf-8?B?Sk5oY3BQaU9KYy96YkJkdFRMSjlWTDd0NGswM2I5ZlN1QkxsRTJGcG5nWmZW?=
 =?utf-8?B?TG9vUWRQbFN5STFTdUJNRUlHbE12ekh2S2tqZWN1NHNBNXdzbjdDeXcvR0ZQ?=
 =?utf-8?B?bmt5WFByKzB0WldqVXBTUHJQenpHNkE5dVNxalpTNmJXSURYaG5uQzlaamlY?=
 =?utf-8?B?dzNYN1BEZ1h0Y3dmQ0ZDdVg2Ym5nR3JyY01LNFc5WWhiUndzemZtUzcrSEhK?=
 =?utf-8?B?amNhckVCTFBqSnVmUGtKZWRHWWpNKzd3bUNzVU5zVDRhMlE0bnhoemowZm9p?=
 =?utf-8?B?OTZOYWhrc1VDbEhtaEdxRk1ybXRkbEZDdk1VM1cxMDJOSW5pR0R0YkRTdkFs?=
 =?utf-8?B?YmFsZDJyUFl6WTFmUy9UM0pSZCtTbEJSYmZEWXlaT2JMeVY4cjlnU3BWdXBp?=
 =?utf-8?B?U1lFQjhoUy9yaiticXYxZ0plaGlBRXhiSTdRWTJzbzJwdkd0ZWxDak5lbm5s?=
 =?utf-8?B?emEyak5Jd2FhczZ0OUtjc3ZPZktuSU04eEsxMUdiYTBUYWUvaCtkdWtTSkFC?=
 =?utf-8?B?eHZTcUhVdVpvYWVmUmpzb0NEOTRLKzZudXN1cUFHTFdXcjBGWTgxMVJDU3lQ?=
 =?utf-8?B?cEpNcXhPQ1o1U25Lb3JWaDMwTjN1WmZFUUFnNng3WThuRjI3NS9TcHkzYjRn?=
 =?utf-8?B?Znc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <542B18F80058414AA58E1D530071F6C0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 808ebfe4-4339-4dc7-c0df-08db30557a3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2023 12:59:48.3686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3iO+AqdJ6uVNyHiHNO9VF3uat9S9S3KowT/i6VLlDluke9uhixaa92F1LfRg3T9njtwLO8fVm8r4iR722GAegt1Q64eP2CsiZ3OzbSRY5rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8080
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 6/6] drm/i915/psr: Implement Display WA
 #1136
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

T24gV2VkLCAyMDIzLTAzLTI5IGF0IDE1OjUyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMjksIDIwMjMgYXQgMTI6NDU6MzJQTSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gSW1wbGVtZW50IERpc3BsYXkgV0EgIzExMzYgZm9yIFNLTC9CWFQuCj4g
Cj4gUHJlLUlDTCBpcyBtb3JlIGFjY3VyYXRlIG5vdy4KCk9rIEkgd2lsbCBtb2RpZnkgdGhlIGNv
bW1pdCBtZXNzYWdlIGFuZCBhZGQgeW91ciByYi4KCj4gCj4gTWF5YmUgYWxzbyBtZW50aW9uIGhl
cmUgdGhhdCB0aGUgY2hpY2tlbiBiaXQgYXBwcm9hY2gKPiBtaWdodCB3b3JrIGZvciBLQkwrIGJ1
dCBpbXBsZW1lbnRpbmcgdGhhdCBpcyBsZWZ0Cj4gb3V0IGZvciB0aGUgdGltZSBiZWluZy4KPiAK
PiA+IAo+ID4gQnNwZWM6IDIxNjY0Cj4gPiAKPiA+IHYyOiBIYW5kbGUgZGlzYWJsZSBwc3IgaW4g
cHJlL3Bvc3QgcGxhbmUgaG9va3MKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gPiAtLS0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgIHwgNyArKysr
KysrCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwg
NSAtLS0tLQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Ywo+ID4gaW5kZXggZjg2ZDlmODM0MjlmLi41MmY3M2M2NWQzNjUgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMTk2OCwxMSArMTk2OCwx
NCBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdAo+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
LSBQU1IgZGlzYWJsZWQgaW4gbmV3IHN0YXRlCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAqIC0gQWxsIHBsYW5lcyB3aWxsIGdvIGluYWN0aXZlCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqIC0gQ2hhbmdpbmcgYmV0d2VlbiBQU1IgdmVyc2lvbnMKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiAtIERpc3BsYXkgV0EgIzExMzY6IHNr
bCwgYnh0Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBuZWVkc190b19kaXNhYmxlIHw9Cj4gPiBpbnRlbF9j
cnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBuZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0+aGFzX3Bz
cjsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbmVlZHNfdG9fZGlzYWJsZSB8
PSAhbmV3X2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoG5lZWRzX3RvX2Rpc2FibGUgfD0gbmV3X2NydGNfc3RhdGUtPmhhc19wc3Iy
ICE9Cj4gPiBwc3ItPnBzcjJfZW5hYmxlZDsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBuZWVkc190b19kaXNhYmxlIHw9IERJU1BMQVlfVkVSKGk5MTUpIDwgMTEgJiYKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbmV3X2NydGNfc3Rh
dGUtPndtX2xldmVsX2Rpc2FibGVkOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaWYgKHBzci0+ZW5hYmxlZCAmJiBuZWVkc190b19kaXNhYmxlKQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyX2Rpc2Fi
bGVfbG9ja2VkKGludGVsX2RwKTsKPiA+IEBAIC0yMDA3LDYgKzIwMTAsMTAgQEAgc3RhdGljIHZv
aWQKPiA+IF9pbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZQo+ID4gKnN0YXRlLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBrZWVwX2Rpc2FibGVkIHw9IHBzci0+c2lua19ub3RfcmVsaWFibGU7Cj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGtlZXBfZGlzYWJsZWQgfD0gIWNydGNfc3RhdGUtPmFjdGl2
ZV9wbGFuZXM7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIERp
c3BsYXkgV0EgIzExMzY6IHNrbCwgYnh0ICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKga2VlcF9kaXNhYmxlZCB8PSBESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMSAmJgo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRl
LT53bV9sZXZlbF9kaXNhYmxlZDsKPiA+ICsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKCFwc3ItPmVuYWJsZWQgJiYgIWtlZXBfZGlzYWJsZWQpCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfZW5hYmxlX2xv
Y2tlZChpbnRlbF9kcCwKPiA+IGNydGNfc3RhdGUpOwo+ID4gwqAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+ID4gaW5kZXggN2UyZTc2YWZi
ZjJhLi41Mjk2YTIwZDYyZDMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF93YXRlcm1hcmsuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMKPiA+IEBAIC0yMjgxLDExICsyMjgxLDYgQEAgc3RhdGljIGlu
dCBza2xfd21fY2hlY2tfdmJsYW5rKHN0cnVjdAo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqBjcnRjX3N0
YXRlLT53bV9sZXZlbF9kaXNhYmxlZCA9IGxldmVsIDwgaTkxNS0KPiA+ID5kaXNwbGF5LndtLm51
bV9sZXZlbHMgLSAxOwo+ID4gwqAKPiA+IC3CoMKgwqDCoMKgwqDCoC8qCj4gPiAtwqDCoMKgwqDC
oMKgwqAgKiBGSVhNRSBhbHNvIHJlbGF0ZWQgdG8gc2tsKyB3L2EgMTEzNiAoYWxzbyB1bmltcGxl
bWVudGVkCj4gPiBhcyBvZgo+ID4gLcKgwqDCoMKgwqDCoMKgICogbm93KSBwZXJoYXBzPwo+ID4g
LcKgwqDCoMKgwqDCoMKgICovCj4gPiAtCj4gPiDCoMKgwqDCoMKgwqDCoMKgZm9yIChsZXZlbCsr
OyBsZXZlbCA8IGk5MTUtPmRpc3BsYXkud20ubnVtX2xldmVsczsgbGV2ZWwrKykKPiA+IHsKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZW51bSBwbGFuZV9pZCBwbGFuZV9pZDsK
PiA+IMKgCj4gPiAtLSAKPiA+IDIuMzQuMQo+IAoK
