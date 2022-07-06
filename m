Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C72C567D7C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 06:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C94810E621;
	Wed,  6 Jul 2022 04:49:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952C910EA3B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 04:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657082971; x=1688618971;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4DEVpot3/0ivTx4D/c3XMXAII4xNhOF+A4IE68NZMms=;
 b=VEBJBQr/qs5fTBCXlmCVGl/hlTnr9STvA1AMpTUKVf8GMNGo3VxutryA
 Ev3RmMLW/6tmwv2KKA9bwbxCqpanTYy1fnzYKGfHAP3swkBzCePPEl8sm
 3WhgmLcj3HP56F7ASzpX9LIdQR51Chxu7udpyeey66Qrlz+CVr62LGY3f
 0CvzCrsURqg3JNu5UhO42zxVcfZkBtWHfBstcNhClF9hnIMHvM1wcxhpu
 jDSoJBkaGSFHZBS6tOu8VmegV4rANVH3rwdRRLfeQXwY3iZICA0p2a3J4
 XRYQ8EuMrSYDEhGX91hcjT61PJajjiZiWXcB6kn4etnGpSWRX62FKfdQT g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="347626715"
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="347626715"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 21:49:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="567906735"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 05 Jul 2022 21:49:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 21:49:25 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 21:49:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 21:49:25 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 21:49:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CpkLOclpDXeNCzlmfUjzXufoM14mvYBSilGjgBQnicabMdTI/a9BKiYuhEvFXRHDBjZZC/tMQDb7xvc906hhigZYr1ah3UneUIFinCZ2GRhtCFDacpvWz5UcmeEy9HZk5LRw2aA4x0jhmYXgBniNQ7SujFXqlnUP6audOKVE3c4bxqOqjLg91x+FitpqhJBh0qKZz2MLzQIDj0c3Nf4+2OISAqoryO+wXuPQDXAiSV6a+wAjiOnKk9lT2zKgmpuL4kRlal0E57TsX9HbVHlKAUa7aW9Zmydwkm7Nj9yV2ZdupiDcQ4ULU3z0V7bTGMcZ/Ubfn8OTkJYJrU0hqZuOCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4DEVpot3/0ivTx4D/c3XMXAII4xNhOF+A4IE68NZMms=;
 b=dwOsX67rsBbW3lxlJVuJoyktnBxwL6Avh74sfzMsvdmytvG5HbA3OuCHCFiPOC+urR9jni/lpWfsEMInLV8t55X5GYMzuReYhNqFSnsneKHQoQBR0K0YVSEtSLwa4DQYGsH91CJRWw8akGNUEfQiZXWadYPlMKdLchGod13Dor65rr03N5Cpviwh5ZeSQglHkDzVgQKmpohpx5M2CyLADQtvj/QIgryi56o3StXdS9dpOyh7FeD4X03JFM5yLwSZZQuUZlgfFieSwfcZ2Ew9HgJO28S/g4Rjw5GBs0YbZuXhguNIrKJygNvxkzVhj1PyvyitlIEacc/VohTAqpwSwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MWHPR11MB0013.namprd11.prod.outlook.com (2603:10b6:301:67::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Wed, 6 Jul 2022 04:49:22 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f812:ea66:9a83:ad0c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::f812:ea66:9a83:ad0c%5]) with mapi id 15.20.5395.022; Wed, 6 Jul 2022
 04:49:22 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 13/15] drm/i915/huc: report HuC as loaded even if load
 still in progress
Thread-Index: AQHYfFefMjoc+lm4RUWKKu/s0cDlta1w7wcA
Date: Wed, 6 Jul 2022 04:49:22 +0000
Message-ID: <50de6b908440fb69f315554bb37253d003e54fa7.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-14-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-14-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 508115b1-530c-4f93-ff24-08da5f0ae550
x-ms-traffictypediagnostic: MWHPR11MB0013:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yQQ8iPQ/HXMKP+U2nKVSZ7Ppk2NjsD5+7izT7QRr3SGivVUCYctP8MBrIuPoHAI/uoUk5dJ5z+G7jTgXJPE8Sa5uz5lwZSnwsU6oo2QI5FmEn396FVPISPjrkOEZaWUm6ytAkuz0bKsj0/7uQjhZUuNRAVZewh0Jg7X5ru9EO+1IeboW4pwzb4nzvcZElWqBYH3NzftxI0vVF2ptxVSh+ZENgeT70ZU+ReIOVVKvT+HS73EQ/gikZgjfLAvD9BTS74tPbRsq5+kQVPrzlVWO2UaheeFPJSOekgcDdKQcMkgnOts3UQHC8BPTLbeRhbOrzlh1dW43H3lxPMIGsMj+OgXzNVCkwaPOZA3QAcznGYlBk0pv7FbKwQgp4nX0bCOe0fp9JzQjM0Nn5hD6pr/oTBKtu7TuDYuUm3QhXUFmAWlc4UagwL0GLKMvN1fzMQX4dg2yTkLRHTP9qJGnScrLAsNh9an+NJpa8xDKDufDH9Gq7+1bqBUoddOcixAzAtbYSSfE3UwAldvYGQJJWCtKLksmWm1vzbX/quQkWZt3Yurqss+tFzz9/OlPFTZhRhi03snsnVX41qJCqjRAZV0loPG9kIby/y+P7fD6ppPGiOeFNwpobAjpEr58Mx/kPM4pboaHnP85K/5B5tNtc2iVboqyI5YBFvO6ScqaoANWsiVtzZa7vu3VxX83mgM55r0iy4XfqcQ3+lEQrnybK6sBTo2CYbSDgcJwt6KuooNfOz5d9MYSg1o02noH3d81mlqntVGrwdkKyfCgQaKzL8XOVN5DLY6NFuP5VHy2ZD2nTjzXGDs9nKY3jnRlJ7tBmIS7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(39860400002)(346002)(376002)(366004)(110136005)(38070700005)(478600001)(38100700002)(71200400001)(36756003)(4326008)(8676002)(66446008)(66476007)(91956017)(66556008)(66946007)(64756008)(76116006)(6486002)(5660300002)(86362001)(8936002)(82960400001)(107886003)(41300700001)(2906002)(6506007)(83380400001)(186003)(6512007)(316002)(26005)(122000001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3UzYklwQlRnSGxLTHFmaEtDUjlEL0lqMVk2M0l1YTZEbkFJdlJjRm1xWjdR?=
 =?utf-8?B?eGZrTFREWS9uKy9oSVRiYVk0V3NjZHY4aXRVd3JjUjZiQUZyVVBhYlFXVmt3?=
 =?utf-8?B?TU5jbldkN3dudEx3ZFlLSTRWbXM4TVUxUTVSRDFCc3dXL2pBWXRFcDdCa2Mv?=
 =?utf-8?B?V0YvNllseUl6TnJCZWJDam85cG9vK2hwZVYwQjExTGQ2dVRnc0VlNVdJZGVw?=
 =?utf-8?B?cGhNVVZMSXNZL1ViUVZ3YkZGdWhPOVlPZ2toaW9jM0ZIMlFsNTMzQ3VDNUVq?=
 =?utf-8?B?VWl0UG9EbDdwd3hPS0dUYlBGaHhGOFpZaEJ6ZE4rMjM1SzhyRHZlakRqRzkr?=
 =?utf-8?B?MDBJd3RxOFdTMG9DbXllRGp0Q1l2Q0QzQWo0M2tGL0NoWklYQlRYeWV4Nmoz?=
 =?utf-8?B?ZEtHK3JyM1RqL2NYZVp6VnhnbXZHSFlRK3lqK3JRY1ZXNDNkc0hkSDVzQ3cv?=
 =?utf-8?B?QVpuL1kvaW5GTE1IbGZOeDJod3JrVWpDRzltQXJlUjdwZUI5czV0cWVwRG5G?=
 =?utf-8?B?MGxMNGlkNXVCS0pKczdhMC95bFhwT1YxUG1mdTVrUS9yK2cvcEoyeDNKckNz?=
 =?utf-8?B?T3lXTHRVa3Q2cE5SYVJmM3ZQTE9DaVZFWVFuT3R3dFQxOUQ3NklTWW5oeGUz?=
 =?utf-8?B?ZW0vTU1wbURGbmtlZ3JPcHhpSkg1aGpuR0d5SE9EejFCRjJBKzZtMFNzTTZq?=
 =?utf-8?B?a2NOVk96YkRFZUF2YVJBRlp4SEsrZVE2THNuUTM3MUo3RGNFUko3WTcxUWxL?=
 =?utf-8?B?MzRUQUNzS2RybkxUa2gxMGJHTGdpS1IxbnFEZDBMWXNvMG9tNmZPaXI5WFE4?=
 =?utf-8?B?YVBBdGtBcXlGdkFlKzJvRWRRd1BlbVh1Z0lDK2dxcCtBZW9GNjRVQnFVVXVE?=
 =?utf-8?B?VFlUekdGWUpmdWhyWHdVZGRlajMvbWhOVmordnRFVGZnYkx2WjY3VFNTdFR2?=
 =?utf-8?B?R0xQblJLSzJYUlM2b3V4Y3hDRXNLcEJoOVRmK21OcHMwc1RPZFlRNlAvb2Er?=
 =?utf-8?B?SWdseDRKYkw1ZTYrTXM4QmFEYXpueThaaUhvd05HOXJhNk9aY2JjQ3hzc3gv?=
 =?utf-8?B?ZjQyZnNUUkF5WVd2WFhnMzBXQk92eUlSanFIY1VVc05sWUtya1BSTHpUS1lx?=
 =?utf-8?B?allId3kwOWJhOEtPZ21wVnhRVXViZW41RTQzblNBQStiMkNaaTNzR0x3RDQ2?=
 =?utf-8?B?UDRueTBGYXJRUS9Mai9tRVlxM2ZlL2JGK3NZU2o3b2o4amJWaEtwZnRlcmdQ?=
 =?utf-8?B?Ykx3VEhQUkpJSmdxWjR0Kzc0RDNzVW5Ub3FORkRyS3h4RXdsa2IwaDQ5Rmxa?=
 =?utf-8?B?a1NTNDhXdXNIZXNkb0lpZmhldUxWcWt2MkFwanN6QUwzTXYwMFhDT0g4WGJ3?=
 =?utf-8?B?alVZMExxeG1STlh0R0YyUHRpa2NUdkxGcU1zUjJucy80enlRd1BpMmx4S21S?=
 =?utf-8?B?T0pMajZsUFNGUzRoM0RvOXVtYlZCNmJoZnBjN3ZYakpJclZGenVEbmxFdGpM?=
 =?utf-8?B?bUh4Y0RISWFwa1pLNjArTUtsTE9LUE1ReDYxbHRNS2o0Sk15THpKZlZ0RXUy?=
 =?utf-8?B?ZC9zN2g4MDE2R2xDK3RlcmtEZklWV21yeFlhYUNrUUVSaHBXQXhwVTcybWtj?=
 =?utf-8?B?Q2ovdXFBOHdaM3BoR0hvM1NGbVBLdHdNRmxyQU1sUlBzV29iZmxQTTN2MXU3?=
 =?utf-8?B?V241QytFWGFGWHlIdm1MeDB6TnZmUlI5em5GR3pEQnRzSzJrbGZSS1VvZzdQ?=
 =?utf-8?B?Zmc3MnhZNFEyZ0gwVDFNazB5Z0xPcEU2RndRUGtqbEFsOWtKRGRpZ2VyOU5a?=
 =?utf-8?B?aVNrUVlTekhZNDN6cnpxekNXVlFlV2crVldCaUJBWk8xM0VteE1MQXhoSEM1?=
 =?utf-8?B?cXdjaW9XMjVoVENIN1VDOWpKMGZmaGdvWHFLOVc0MkJWSitMVkhoTFMzSTNo?=
 =?utf-8?B?bTZFYmFtWHVidkhLMlVERjhQK1B1aWc0ZHpJTVdlRG9PQ0d2OHRuOHVDVDFq?=
 =?utf-8?B?VnVpWjc4K2VZMkVreUFWRTFRdHUyeTFONHUraGh2b2tzeXp0RHU0UHJPYk8w?=
 =?utf-8?B?RUdBVlgxalhuUS8xSGRJVUtsa2tYbUpMaUFxK0tValVBUFBVb05qcUF0R0ZE?=
 =?utf-8?B?UHlHS2V0M1c1STdhK0RCditMSFFaZzdUa0RPc3dWcmtOOGNoRTJCbTVOR0s0?=
 =?utf-8?Q?6dueLH4O8KfZ8PWp4uAe/u55zge1oZfVRPDDfzpRPw+H?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F8CC62BD0D2C174D8DFB1765FFF1F56A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 508115b1-530c-4f93-ff24-08da5f0ae550
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2022 04:49:22.7631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3qxQM0lShYfvqX2fh23jqxDNMAtp1MYvO0qhJzPoPf3Ti6bRYGPYheFbCeL1Er1QhbEUA1UYTqutXweLafepqeKmNJrGSuYd29TM1uy2uFip8h+XI7I50MFQz1E14i52
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/15] drm/i915/huc: report HuC as loaded
 even if load still in progress
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

DQpPbiBUaHUsIDIwMjItMDYtMDkgYXQgMTY6MTkgLTA3MDAsIENlcmFvbG8gU3B1cmlvLCBEYW5p
ZWxlIHdyb3RlOg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfaHVjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYw0KPiBpbmRl
eCAwNzVlYzk3YjQ1OWQuLjMzYmZhYzkxZmEwMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfaHVjLmMNCj4gQEAgLTQyNiw3ICs0MjYsMTAgQEAgaW50IGludGVsX2h1Y19j
aGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjKQ0KPiAgCQlicmVhazsNCj4gIAl9DQo+
ICANCj4gLQlyZXR1cm4gaW50ZWxfaHVjX2lzX2F1dGhlbnRpY2F0ZWQoaHVjKTsNCj4gKwlpZiAo
aW50ZWxfaHVjX2lzX2F1dGhlbnRpY2F0ZWQoaHVjKSkNCj4gKwkJcmV0dXJuIDE7DQo+ICsNCj4g
KwlyZXR1cm4gIWk5MTVfc3dfZmVuY2VfZG9uZSgmaHVjLT5kZWxheWVkX2xvYWQuZmVuY2UpOw0K
PiANCg0KQXJlIHdlIHN1cmUgd2UgZG9udCBoYXZlIGEgcmFjZSBjb25kaXRpb24gaGVyZT8gUGVy
aGFwcyBhIGxlc3MgY2xlYW5lciBidXQgbWlnaHQgdGlnaGVyIGNoZWNrIG1pZ2h0IGJlOg0KDQoJ
CWlmIChpOTE1X3N3X2ZlbmNlX2RvbmUoLi4pICYmIGludGVsX2h1Y19pc19hdXRoZW50aWNhdGVk
KC4uKSkNCgkJcmV0dXJuIDENCgllbHNlIGlmICghaTkxNV9zd19mZW5jZV9kb25lKC4uKSkNCgkJ
cmV0dXJuIDENCg0KCXJldHVybiAwOw0KDQpUbyBzcGVlZCB0aGluZ3MgdXAgYSBsaXR0bGUsIHBs
ZWFzZSBhY2NlcHQgYSBjb25kaXRpb25hbCBSLWIgaWYgeW91IGNhbiByZXBseSBiYWNrIHdpdGgg
d2h5IHdlIG1pZ2h0IG5vdCBuZWVkIHRvIHdvcnJ5DQphYm91dCB0aGUgcmFjZSBjb25kaXRpb24g
b3IgaWYgaSBhbSBqdXN0IHJlYWRpbmcgdGhpcyBpbmNvcnJlY3RseS4NCg0KUmV2aWV3ZWQtYnk6
IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KDQoNCj4g
IH0NCj4gIA0KPiAgc3RhdGljIGJvb2wgaHVjX2hhc19kZWxheWVkX2xvYWQoc3RydWN0IGludGVs
X2h1YyAqaHVjKQ0KPiAtLSANCj4gMi4yNS4xDQo+IA0KDQo=
