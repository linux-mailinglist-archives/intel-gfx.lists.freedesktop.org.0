Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB206B8EB0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B44E10E74C;
	Tue, 14 Mar 2023 09:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46DE10E74C
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678786065; x=1710322065;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=LrYKNCzyiGzx1Sai23hDLGgJVDRLdMuDauFKgJ+MuHw=;
 b=oECb9r+zc/9pypJx6dUn3H+bCzdeaZscavArLaIfD32X5GDwPuwwxOuH
 sgwuCpW4/t0kKWXu+UyNeLuojpO7u6phwP39fhmjLCnmp1sxdnZbOFrRh
 DbFizimrwlRFZBamZf29lIa6PCo/hhxlAOYfCoivE4RLiNJe+FraouzZ3
 v2adVOej9spixv4g/V01k8qLDg31ddZTNRRlM7i2WuGlyDdS5NhQP5aBl
 lHoMcJgVj9MlWryBDs63mgGWgiQRRBMwd5WJqO5zGbyncPR1orP2bqQYF
 7aeG8ItDT7RQHlM/lEnJ/zAjWFdq2+AwJ2hJ+OgUhZMGQU2aVAJu115Hh Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="325739472"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="325739472"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="853105706"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="853105706"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 Mar 2023 02:27:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 02:27:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 02:27:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 02:27:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F8p7cPHvTJaqDKmHu2zZnmJbgRwZlAH6u0ZhH/hZe80ml3lAb9VRKnNjmxANwVmWYFYnwZpezLQiT/Z/uaEEUw0VGHgsLVczZd54j6owLBoIzdsCzmrBLSau0gLRcBW/TPy8ZG20hsmifHJJYFrE8qo0si37Uvgz6dIQmgQPCQjxfKVff9BL4pMWtctfwP2SgeVEcPwvYlxD6tWOZZT5YkuXCcXEdN0g4F/3g1QHDwGMH9zGK08h+XV6dpP6SWfinZG/c+MhyIRH+EZo+TX8uQfw2K+X0eKst8CTFfihMTKO6kBjJHhSSMiOyWoXs97QebtpxxCb8MOV4N19r38N2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LrYKNCzyiGzx1Sai23hDLGgJVDRLdMuDauFKgJ+MuHw=;
 b=dgopx0dGs+KKCUrE168ScmdKcfErnNDd/1EcM33AvNYGqIEJ+8pPv0/JGAXFiMlTGDtj5bI57xv+xQowH62NL15roA+G5cqNn6qyLuispbt8TlBrh34R7BpURanUH2mD2TGoGhvXI7H77f5HxfncETrcYXGLuAnsXchrwts+J6+Dl8BO+TxS4zeEZzZhxKOuwlp4nOED+3E6uoq4KVHv4fR/fPG53/QXpNICuizFtP9iQtzB920LgGmH7HDVygsTrE9rxccAjLlLtNNaZH+WpUPNzf/xKavVFML6dr1n2aAMU2aCK66JkIDHVj41ETo55Af0TKyPUdGTLGnsn7tijA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SN7PR11MB7665.namprd11.prod.outlook.com (2603:10b6:806:340::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 09:27:35 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6156.029; Tue, 14 Mar 2023
 09:27:35 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Power management SAGV/QGV calculation rounding
 fix
Thread-Index: AQHZU15Jg8ZjaeQo906b7iPhUF7uVa76B6yA
Date: Tue, 14 Mar 2023 09:27:35 +0000
Message-ID: <7ddeaf24abf10e7e2728150310e154f4366a076c.camel@intel.com>
References: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SN7PR11MB7665:EE_
x-ms-office365-filtering-correlation-id: 09e9b433-b2fb-4a51-a15e-08db246e5887
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +IoCflCYt1H61OnaQmMIgyFD+4pOskAoqe2UASAFW9Wu/f3npJyy1rjNiWpihZoxD9N2AgQ72lyme/GIXwoyH8MUTqSDzF9divJI/2GAc+wRqbVnrXUzVm7okDZ6v5sohFnYrHtHC5M6unEOR3R8RmiKPVO9KpckZ+mqP+qbtDsJihPFZC+xJVptDCEiYELAGxp5ZccrxgCOdkadCG6ECr01neuAVnseSTxd61+oR2q3opY6pPYHSUGhXsUI2CYf6jpL/le8SAn6zkawuWLFDJdx0a2Vo/YJUFuTUuI4wPad+y1d0VbPKxiDqhXWdm4WC7UaqQP4MMiGCXhkBMLPmYQgdW/2QLnATUnk+EjoetxDwGR46fVHNypy745f8HRKtZXxEPbeR36VoHUU4PcWDbOqJT28nXclC6vZmAn3VeVxYjSgYdWACrTx6YIyOrLvslwUjvknYEhngEStTOW9M8GiO/RxZ04Wh2Wsb8UZp+GobHKD7M9T1jq72v+/foZSssIzvz1x8JWNQ2D1pMTY44mke2fyRN1pl0Xlk/GDARG9AX6MYWtcwaHa9Y0OtJDAnX4ldFcGuqcQpWg8GsZ2M+axL/5HZX7eR9RELdpHJgUxSNrvLXrZUGBYHEYbUxnMRLTT2nOMh8sCNBaQRpQ6DBG9wqIkpzQ0k41XILKlrAhtCn1Hc36eeDaRCT2edHQQXdy8eOZ9qyotOmiK8DDSzQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199018)(86362001)(36756003)(186003)(6512007)(26005)(4326008)(41300700001)(2616005)(5660300002)(8936002)(71200400001)(316002)(54906003)(478600001)(110136005)(91956017)(6486002)(76116006)(66946007)(64756008)(66556008)(8676002)(38100700002)(66446008)(82960400001)(122000001)(66476007)(38070700005)(2906002)(6506007)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGljekJ3N0tsVHEzUEFaVVN5Lytpb3lxNjVtbkxITUxCK3lXeXpHVmJ6eWN0?=
 =?utf-8?B?bm95bWpOdi9UTUJsck1FZHZVdlVON0pQRFJkdDdHNEJSb3R4NlhjTWVCZWw4?=
 =?utf-8?B?VmZTQ3V3cGtlOE9QeHVNQVptZ2VreThOcW5wb3NpMHcrNWNKcW5Ua2dlK0pu?=
 =?utf-8?B?UTZGZlJtb0drSDdiQWZhSENKSlpHZklKbTFudkhEYmFoUVk0WVFmOGtsRlVK?=
 =?utf-8?B?ZFZIcnhvZGZ4RGsxWmEzOWdwRWFsb3U5YWtKZHBnS0tWY0dFeHNjSzNxWkda?=
 =?utf-8?B?ejFXU2NVcDg1UU1tbjY1Z3VHVHVYV0pWbkFSU1RBVWwyTW5Ub3JncUgrUk9C?=
 =?utf-8?B?OGVaVVZ2UDlIMnhrL0xadDB5UXJaOW5tODZXcVJQLzRyUTMyU0RBZ2psZWJz?=
 =?utf-8?B?aE5TQllSNU5mTzcwYmxlWStWM1N1KzdpTG1zbnlndzR4YUs3MlRoTGNPcUVu?=
 =?utf-8?B?aDl5blFNdFN5bS9LUFFLeGlkTi92Nkg2WkxYMnZDbUlyWG9WVGFNOFRvSTk4?=
 =?utf-8?B?dGNCdk5CbFNLSnhXZWx3aWM0WU0xYnlUZE84cGtrT2ljT2VBc2RmVE1mNE1h?=
 =?utf-8?B?MHJmbDRWb1NXR2t6cGJncFBKdkFoZElNMHl4TTdoRk5vN0d3NmlEcHdHeUJN?=
 =?utf-8?B?TTVud0pXbTU0Z3Q1SU9jR0Q2Vld4UG52TUNHUEVuamhPSjVXcWRBRTFZRzF0?=
 =?utf-8?B?L1VYTk5LRWJXS2JBSU9NOENLSFZtbUdRbGdta3JkUW1LQUdzallXZjlEOGR5?=
 =?utf-8?B?bUNYN1ZzeS8rOGxzSEFOM1BFWW1vRmQ4QllidEJFWCt5czR6NnNSOXF4OWJL?=
 =?utf-8?B?dU1CK0JBUmVXMSsyaW8vbE5meVpwNDBQa2c1VWlRb0FhVVdEa2YrNU5oK1Yw?=
 =?utf-8?B?MGZHVXMvR1pRL3Y3SUdaYVZMWGx0TDFDNkNuYU16YTkyVTIxK3hmQlEwN0FP?=
 =?utf-8?B?VEFZU0UvM0huTnY3NUNXeEZVWlNVbFlYWCsrYnJBOTZWKzZ6SC9vVndEZUpE?=
 =?utf-8?B?WmxSclRRVXlVZXZMRXVmVnRmYklCaGJEUWJGaEMxR1lWVUZwUVNyY2puZjRq?=
 =?utf-8?B?UzFOenhxOFZMd0UwS29FcXlKQ2tWMVRZV0JuT0VBMUVIZE11YkRnU1VNQVAr?=
 =?utf-8?B?M2hOQ3l4SEdZUFUvMFBkbWhtY1lnMjhGaEtXc054L2ZGeUJ0aDJDeXJaWVFu?=
 =?utf-8?B?VUQ5NjYyQ29MQ2Z3MExyaHdqekpnM1J2NXFoUjVqVUFkMkJOVE5TQlpRZ2FJ?=
 =?utf-8?B?WURZTGFBTkVhQmhaWUVYelJoTWg4TVk4YmNGYXM2ZXYzMUJFQVNVaVV2SnFh?=
 =?utf-8?B?bWFrV1JBN25zcUJwKytlSy9UczBlUHJhNUY4ZmQvUmpST2tvYTRSNzFFaHly?=
 =?utf-8?B?T0N2cWJhL3hXL0dWV082VW9IUzdrSlJvVnRVVlN1ZEt6YnlpZGpMUnkzMTlB?=
 =?utf-8?B?QjZXdVYzQmFseVNFU1hhalF3MG1WVG0yRk9LOTdCWkJxMXdrQTlTWGQvVE8y?=
 =?utf-8?B?anpUbGpKcnE3aE83ZUV5djk0NWp3UnJicGZ6VjFyQTl3UnJTUEtIQnZreHZn?=
 =?utf-8?B?OGdUeGhaY2phcnFqdG5OZVRMWmI0MFY3T0lRNUxuMnhab04wQnduM2JsZDJK?=
 =?utf-8?B?QmtGdko3VWY2dExQOGwyNGtpOTdJODJmd2pIbTJZNzlxdUkrVjhPWko2aTFU?=
 =?utf-8?B?eUcrUm0vejc3bmQ0N0MwQUQ1d3N2a2FYZVRDWkJRZjUwVHl5d1RqTm1kV2pU?=
 =?utf-8?B?NURuL20wdm5ZaTdOcll0b0ZxSXRRY0tLN2NUSlRoYkJQVWZ0ZFdrRzE0aEZM?=
 =?utf-8?B?Tkk1NG9SRkVIdGpYS0s3S2JBRlBuQ3JGNEpHMXJveXc3M2hwaVBOR01lQWxM?=
 =?utf-8?B?NGFURVpnRzhncDdwdk5RemFMNjJCTnV1RndnVzE3bkU1blVBbzRsUzJHM1RY?=
 =?utf-8?B?aHhTSEUybkFNSDNoaFQ4d0VFQ28vTkdZZTliRkZCbC9vbThiK0ZQbk4wTE91?=
 =?utf-8?B?RE0rUkVKV01ZbWRFdXIyY2U3L3RFZHJGSlRENlc2OXhGZkhuQXVHNjROeEZK?=
 =?utf-8?B?Q0owOVozZ1BVRmRMbVZPbytpbFMxMFVmOTg3UzZIUC96OGhEcFEwd1FKZHpY?=
 =?utf-8?B?TlFNT3FFcU91aDlPc0JlMXA1Z0s5VjBkNzYvZHZ0YS9OZ01wK00xNHlTdU1t?=
 =?utf-8?Q?KJIqspfUio6Abs9RvEq3AZs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EA452B13032167468DD9B9A76B8508DA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09e9b433-b2fb-4a51-a15e-08db246e5887
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 09:27:35.2717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ofKkRxKurTibJA0lhfoWDVQAF4JUsJotHq8PXt+rJaD2AHNPUvQpAaBsRGY2tHpOy33a7obPfnRWy/Y5n0RYp9wY/BjQDMEFlK34ssJhjOI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7665
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Power management SAGV/QGV
 calculation rounding fix
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
Cc: "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3RhbiwKCgoKT24gRnJpLCAyMDIzLTAzLTEwIGF0IDE2OjQwICswMjAwLCBTdGFuaXNsYXYg
TGlzb3Zza2l5IHdyb3RlOgo+IEN1cnJlbnRseSBpbiBvdXIgYmFuZHdpZHRoIGNhbGN1bGF0aW9u
cyBmb3IgUUdWCj4gcG9pbnRzIHdlIHJvdW5kIHVwIHRoZSBjYWxjdWxhdGlvbnMuCj4gUmVjZW50
bHkgdGhlcmUgd2FzIGFuIHVwZGF0ZSB0byBCU3BlYywgcmVjb21tZW5kaW5nCj4gdG8gZmxvb3Ig
dGhvc2UgY2FsY3VsYXRpb25zLgo+IFRoZSByZWFzb25pbmcgYmVoaW5kIHRoaXMgd2FzIHRoYXQs
IG92ZXJlc3RpbWF0aW5nCj4gQlcgZGVtYW5kIHdpdGggdGhhdCByb3VuZGluZyBjYW4gY2F1c2Ug
U0FHViB0byB1c2UKPiBuZXh0IFFHViBwb2ludCwgZXZlbiB0aG91Z2ggdGhlIGxlc3MgZGVtYW5k
aW5nIGNvdWxkCj4gYmUgdXNlZCwgdGh1cyByZXN1bHRpbmcgaW4gd2FzdGUgb2YgcG93ZXIuCj4g
Cj4gQlNwZWM6IDY0NjM2Cj4gCj4gU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8
c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAxMCArKysrKy0tLS0tCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMKPiBpbmRleCAyMDIzMjFmZmJlMmEuLjg3MjNkZGQ0ZDU2OCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiBAQCAtNTAsNyAr
NTAsNyBAQCBzdGF0aWMgaW50IGRnMV9tY2hiYXJfcmVhZF9xZ3ZfcG9pbnRfaW5mbyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkY2xrX3JlZmVyZW5jZSA9IDY7IC8qIDYgKiAxNi42NjYgTUh6ID0gMTAwIE1IeiAqLwo+
IMKgwqDCoMKgwqDCoMKgwqBlbHNlCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBk
Y2xrX3JlZmVyZW5jZSA9IDg7IC8qIDggKiAxNi42NjYgTUh6ID0gMTMzIE1IeiAqLwo+IC3CoMKg
wqDCoMKgwqDCoHNwLT5kY2xrID0gRElWX1JPVU5EX1VQKCgxNjY2NyAqIGRjbGtfcmF0aW8gKiBk
Y2xrX3JlZmVyZW5jZSkgKyA1MDAsIDEwMDApOwo+ICvCoMKgwqDCoMKgwqDCoHNwLT5kY2xrID0g
KCgxNjY2NyAqIGRjbGtfcmF0aW8gKiBkY2xrX3JlZmVyZW5jZSkgKyA1MDApIC8gMTAwMDsKPiDC
oAo+IMKgwqDCoMKgwqDCoMKgwqB2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgmZGV2X3ByaXYtPnVu
Y29yZSwgU0tMX01DX0JJT1NfREFUQV8wXzBfMF9NQ0hCQVJfUENVKTsKPiDCoMKgwqDCoMKgwqDC
oMKgaWYgKHZhbCAmIERHMV9HRUFSX1RZUEUpCj4gQEAgLTg3LDcgKzg3LDcgQEAgc3RhdGljIGlu
dCBpY2xfcGNvZGVfcmVhZF9xZ3ZfcG9pbnRfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+
IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGRjbGsgPSB2YWwgJiAweGZmZmY7Cj4gLcKgwqDCoMKgwqDC
oMKgc3AtPmRjbGsgPSBESVZfUk9VTkRfVVAoKDE2NjY3ICogZGNsaykgKyAoRElTUExBWV9WRVIo
ZGV2X3ByaXYpID4gMTEgPyA1MDAgOiAwKSwgMTAwMCk7Cj4gK8KgwqDCoMKgwqDCoMKgc3AtPmRj
bGsgPSAoKDE2NjY3ICogZGNsaykgKyAoRElTUExBWV9WRVIoZGV2X3ByaXYpID4gMTEgPyA1MDAg
OiAwKSkgLyAxMDAwOwo+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9ycCA9ICh2YWwgJiAweGZmMDAw
MCkgPj4gMTY7Cj4gwqDCoMKgwqDCoMKgwqDCoHNwLT50X3JjZCA9ICh2YWwgJiAweGZmMDAwMDAw
KSA+PiAyNDsKPiDCoAo+IEBAIC0xNzksNyArMTc5LDcgQEAgc3RhdGljIGludCBtdGxfcmVhZF9x
Z3ZfcG9pbnRfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gwqDCoMKg
wqDCoMKgwqDCoHZhbDIgPSBpbnRlbF91bmNvcmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIE1UTF9NRU1fU1NfSU5GT19RR1ZfUE9JTlRfSElHSChwb2ludCkpOwo+IMKgwqDCoMKg
wqDCoMKgwqBkY2xrID0gUkVHX0ZJRUxEX0dFVChNVExfRENMS19NQVNLLCB2YWwpOwo+IC3CoMKg
wqDCoMKgwqDCoHNwLT5kY2xrID0gRElWX1JPVU5EX1VQKCgxNjY2NyAqIGRjbGspLCAxMDAwKTsK
PiArwqDCoMKgwqDCoMKgwqBzcC0+ZGNsayA9ICgxNjY2NyAqIGRjbGspIC8gMTAwMDsKCk5vdCBy
ZWxhdGVkIHRvIHRoaXMgcGF0Y2guIEJ1dCBhcyBwZXIgQnNwZWMgNjQ2MzEgYW5kIDY0NjM2CiAg
c3AtPmRjbGsgPSAoMTY2NjcgKiBkY2xrICsgNTAwKSAvIDEwMDA7CgpEb2VzIHRoYXQgbmVlZCB0
byBiZSBjb3JyZWN0ZWQgYXMgd2VsbD8KCkJSCnZpbm9kCgoKPiDCoMKgwqDCoMKgwqDCoMKgc3At
PnRfcnAgPSBSRUdfRklFTERfR0VUKE1UTF9UUlBfTUFTSywgdmFsKTsKPiDCoMKgwqDCoMKgwqDC
oMKgc3AtPnRfcmNkID0gUkVHX0ZJRUxEX0dFVChNVExfVFJDRF9NQVNLLCB2YWwpOwo+IMKgCj4g
QEAgLTQyNSw3ICs0MjUsNyBAQCBzdGF0aWMgaW50IGljbF9nZXRfYndfaW5mbyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdAo+IGludGVsCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3QgPSBtYXhfdChpbnQsIHNwLT50
X3JjLCBzcC0+dF9ycCArIHNwLT50X3JjZCArCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGNscGNoZ3JvdXAgLSAx
KSAqIHFpLnRfYmwgKyBzcC0+dF9yZHByZSk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBidyA9IERJVl9ST1VORF9VUChzcC0+ZGNsayAqIGNscGNoZ3Jv
dXAgKiAzMiAqIG51bV9jaGFubmVscywgY3QpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYncgPSAoc3AtPmRjbGsgKiBjbHBjaGdyb3VwICogMzIgKiBu
dW1fY2hhbm5lbHMpIC8gY3Q7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBiaS0+ZGVyYXRlZGJ3W2pdID0gbWluKG1heGRlYncsCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYncgKiAoMTAwIC0gc2EtPmRlcmF0aW5nKSAv
IDEwMCk7Cj4gQEAgLTUyNyw3ICs1MjcsNyBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdAo+IGludGVsCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3QgPSBtYXhfdChp
bnQsIHNwLT50X3JjLCBzcC0+dF9ycCArIHNwLT50X3JjZCArCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGNscGNo
Z3JvdXAgLSAxKSAqIHFpLnRfYmwgKyBzcC0+dF9yZHByZSk7Cj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBidyA9IERJVl9ST1VORF9VUChzcC0+ZGNsayAq
IGNscGNoZ3JvdXAgKiAzMiAqIG51bV9jaGFubmVscywgY3QpOwo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYncgPSAoc3AtPmRjbGsgKiBjbHBjaGdyb3Vw
ICogMzIgKiBudW1fY2hhbm5lbHMpIC8gY3Q7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBiaS0+ZGVyYXRlZGJ3W2pdID0gbWluKG1heGRlYncs
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYncgKiAoMTAwIC0gc2EtPmRl
cmF0aW5nKSAvIDEwMCk7Cgo=
