Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B63653020
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 12:23:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69DCD89907;
	Wed, 21 Dec 2022 11:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D520889907
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 11:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671621745; x=1703157745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=en1YFM1RD5wuEQtHzcgJ7pOPX5M0psK4OE9DRWvPYlw=;
 b=KM+etLgHZQ1/YAxLS7wkeWZFvwqVbqmLIASwpd5XQLL+QsBHf0B75mGQ
 GG1ySbIj0ugQIu6zIHHNwXNNjtZNoyQV6/kSKZNRBDEvZRq3sl2rOsVYO
 pX3tYnPu8Ra9NLWFiyzQQv32t5G8vVY8JklbrH3yjaM/CzwCdKFq3z6i6
 HRWc+femZu2lfb++cevHUIRPVDNHx66O8rz7hloea4Z8MjUwvoeTsM+SK
 bqbObC4kOZ4QrZG3eVfwSvpcaQ+eQjOQ96bOcxBtg1BY3uwDlZ5bXYZNF
 5kLuMnCKqp0I8kQV7RNiKD9tHhZCM+rvXyt9xp9WFbaldLWVQAtZpDfn6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321760392"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321760392"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:22:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="644803350"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="644803350"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 21 Dec 2022 03:22:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 03:22:24 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 03:22:24 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 03:22:24 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 03:22:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nFkihnFO1mi0jFQn684lyY3ER86qHdQt3LzSWy4ApWYEMUBNe5Q7yjMVH4XrwjAfvnrGRV2O6Vo6U1Q+RvVdE3UKqr4ndT5fkHM59LN0T34RP5trIyGJAxZgCF3QY6RnFEwqJRqCIMxKaHQDV1vy0yLX0QDV6tpr6v5+gyExpyarI4aO6OaKjIwIqWdRgLQr4HEe6bfzJllJZykpGwyOkkS29HqoCPa7/F1CShtQ2WInLSiGcdZM5wEUBD2Lt8rOH2ufp5oy7HjkseGq5C37ncPnY2yO8MHIkHkKoxKHN7AjBh6QmzYQ2A26+rXBLglI+D0JKVIsJBoqwoX0+WCunA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=en1YFM1RD5wuEQtHzcgJ7pOPX5M0psK4OE9DRWvPYlw=;
 b=eoqqxLRqrHR/e4lTUjPm2bVqHDY7RsRVUKAF3zsF5/ap+8OIRXp+Q9rDOkTW2TSoc/ERi4f5/KAaSH+3g3e2/UDtfbO4ijtzMna/eH3ikp3v4J9L7OZ+5tFC93FwZJajtrC6j2UUiAoRtJjsRZNHUI7nPTSFHTi0R6kC9VY0g5EgxemNesZe3noCobv1XVrawHCnhDl3zvz2BTDW8eXRQu/hmbkwHZUiHA3hgP9z5XQElFwmqsKF3a24q+GAEErvquRhiDLoHUXqiqJjDKxzvPd579bJmwjjK/UmPlPa/+CZs9JHUrMBEEWy+yP7E8ggWKskBkKnIzTsL27ZxPlrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH0PR11MB5442.namprd11.prod.outlook.com (2603:10b6:610:d1::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Wed, 21 Dec 2022 11:22:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 11:22:19 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Thread-Topic: [PATCH] drm/i915/fbdev: Implement fb_dirty for intel custom fb
 helper
Thread-Index: AQHZA/Azr6e9Mfmq0UuOMKQXzOlaVK54TBCAgAAJBwA=
Date: Wed, 21 Dec 2022 11:22:19 +0000
Message-ID: <5414078eeb44fc589416b7bd6e6766962e4a61cc.camel@intel.com>
References: <20221129124302.291759-1-jouni.hogander@intel.com>
 <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
In-Reply-To: <287763d0-a708-efa2-f84e-bf50d4a58d64@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH0PR11MB5442:EE_
x-ms-office365-filtering-correlation-id: 83c29fc6-4d13-4d4d-54e1-08dae3459f7b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vdynoo+dw/O5bvDDJ7x+VchB6qWVuFSo4R0medQRA/rvqOlyFQJJaUyIL/BTOSHUgz/m02sQO6O06aQ4CXNRT8O2CZYce8QUmHokWqCfrY3YlEnKEFaT/G+VF99Wh3ce7U2i9RvkLzoeh+/DxQr6uXvfPqc/jUFRRWamf6t6oL6Iw/JigWRTVfxkUBDndA1BXTvC/Vc9WVTUWqhnN16x6wxoO2BonyNI1gWkzC3kusJYNhE56CMGS5mFa2a3tDeom8gE/tfNZAlRddHiECaUMkzhdFdl+azSKFbOv91d5A0VtUDJPWoF7Vl66jYQkYPGe1yTfy9GCB76T96Joz99CLFEquUC3nrJmoKRruoEtunUsxTbmemI82oLEkZvwSXDt5xD4KxyN+v/rPZSdleA/0QsFTgOZze7aq7KMpROUEuXMxhJYJgWIisbtL1jU/NKaTwtEhQjl0DemBmwCqiZkVQzc2Oz/EvieGjLhCywHPUIop0irLo+/IN3KWRvG/4wSlky1qqTU1Ck/2a22e3ikgErCfKcPVGULM+JlfMvZryPAkdx0QWT5xlxQDiiIj6TdEre+cIpGnVVKn9HkuJRNlaEscflcbP2d6axdXiE6VIOYxSlXtPxSXeewh54LUDMG9d9ZA3Lo3h4uV5t4fe2y740+el3eHxQBqktrQYdAMUzXS5kgcKpg/t33VaDJvQu6qCmDAxCjNEkGShSjgEariI0CQS27RpJqNcVxm+nzeM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(346002)(396003)(136003)(451199015)(41300700001)(2906002)(8936002)(66476007)(4326008)(5660300002)(66946007)(66556008)(76116006)(38070700005)(64756008)(66446008)(86362001)(8676002)(110136005)(316002)(4001150100001)(54906003)(91956017)(6506007)(122000001)(6512007)(26005)(186003)(82960400001)(71200400001)(38100700002)(36756003)(66574015)(83380400001)(2616005)(6486002)(478600001)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RjlBay9EY3F3WHRKc3ZhNW1WcWxhVHRDRXZibE1sSkswQ294cytWM0hXRTJ3?=
 =?utf-8?B?SXY5d3NkdkcvaHoxbzRpVlU5alhvU3FhMXRYQlhVRGZ2NDhHOWJwclptRFM3?=
 =?utf-8?B?R0ZnTEpqSVJxMDUvUzFpbW15Vk0vVWIxdURaMzA2d1NYS1plS2Z4cGx4M0Rk?=
 =?utf-8?B?SVZEa0dPZStnMGxBY2dOZUdVdXBXSHRPQ0tLVFdzRnBwSnBvL2ZqUVVQN0JH?=
 =?utf-8?B?YldJWm9yWkZscVhUOFRXcXNyR2VnaGZYUFJqc1J4ZU9WdTkzN3hvMVpuUUww?=
 =?utf-8?B?THlYeXZmVXl2VnlkdUFtYVBjVzVhaXV6OWRmQzY0S2RBdlhsd2VUaC9lOTVF?=
 =?utf-8?B?SHBQSkIxZGl3VFJiSVRvSmJiVU9YNjYvR1o2WXBnNkVNRXQvZjZrTkhWSUgw?=
 =?utf-8?B?WWJSbjUwUFBsSGkzOVFHS21UcG9OcmM1Z215bjBQVFJYUHZMOFhQV0Q3R1pw?=
 =?utf-8?B?UVk1V2x6S2tyODNzL2lwWEg0ZHI5dURFcGZhcUMwM1VTaE9sT2sxWk1RWEY2?=
 =?utf-8?B?U2tXS0hVMFdlUXAwSGxhb0ZYZi9obXhGRUVyVUYxamttNnI2QWlsSWZzYjBY?=
 =?utf-8?B?ZC9QcTZjRERDUUUxa3QrNUZ0T1JVMXFzT1dibm5SNXA4aUR4Y0x3V1NuVzVr?=
 =?utf-8?B?ZHM0VlROWXJycUgxVytOTGxmSDJvZ0ZWc0t5ckJSTDhzZjdSSHh3OFhtaWF3?=
 =?utf-8?B?Q3pHRm5qTEdUZXZkRVRxOVltck9aVUFxVFVsbHZTdkI2V29US0JwTk81OTRO?=
 =?utf-8?B?K0NsaHROSVV4Z094YWZkZkVSWU8vOFdPY0Y3WExVVk0wOFd3eFdiYWVvVWtV?=
 =?utf-8?B?bTlWRlovcms1bzJrR3NBUHgxRENiMTJ3T25zYUF6STdZeTJzQ3puaXcrcHhr?=
 =?utf-8?B?VVBLSXRpZnE1YnhvZTd2TGU3VVFsZERFamt5d044bFA2cklpUnVjbWg5QkZp?=
 =?utf-8?B?RVpaMW5KOHNpbktISmMyTitsZVhSTFRudHpETEhjUDgzOTNOem5nUlNvTXZw?=
 =?utf-8?B?UGpDbW96MHRwanpJNi84K2FXNWJxcUorZE5ZYWRlUTdLUlo3Tll0UU5CTlJt?=
 =?utf-8?B?QVIxU3A0WVhGL0VYUWI0S2crZ0gxNnk2cVZXSzBNN1pNZXhZY3l1L3J6RmZ0?=
 =?utf-8?B?Zm5aVlJZM01mdEdvWE5lcGI4ZldOQ0VmYWgwODBudTAwWlpmQ0pwdGtneFNn?=
 =?utf-8?B?S2VMaDNjMVNUSDBRZE9FbWROL2oxNVc2OTErVitURno5QUVjTnFUYU9BUlEr?=
 =?utf-8?B?MHRXUGg3M3J4QXZBbmY5bEx3MG9GTnpucHRLWkFza1F2NHBOM1JiVXFmdDF3?=
 =?utf-8?B?aDNaNU12R3JEMnp5MUpva01EczZVNVB6RkFycDBQM21FWmtrSC9sMlRFUHNn?=
 =?utf-8?B?R3BYSHFKZkJLdERrTk1LazM4R2w2VzFNU0tVSU04dXpLY2dIRU5raGRISjNu?=
 =?utf-8?B?ekV1L2l2NDRJUW9GWHBuTkxwMVBUNWNmaEpENEJnMVIza042eTZsN1M4UHhC?=
 =?utf-8?B?dkI0ZEtlTG4yY3hUbGZycmxPNXdvdEdJWVMvbThOb1FZUzFSN3BrT0ZFdHND?=
 =?utf-8?B?YlpXNUhYa2V6TW1seFdTUWsxNkpwN0RTUVFaeUdmUllrQWJDbThMaWpPWVJx?=
 =?utf-8?B?elNUM1RtWTFmbDVseGQwclMxOUE0VzlMWEMyY3BZYlJCSmU2eU11Tk5IdG9h?=
 =?utf-8?B?RmRIWFAzT0xHNnR5WWRzcWZwT0hhcFlndUFnSXE1Y2dkcHRjTE5lcDN2UXVl?=
 =?utf-8?B?ZFpXb0JQVkN5bGpKMkJKcythbkhpM0dFdE1kVXcra1hKRWdYZGpXdXJzWXFF?=
 =?utf-8?B?RWcyeHRBMXBTdDhNVTYxckxHamRtbTQvR0V3dW82bzdOL2hSeTcvVzBzL1BZ?=
 =?utf-8?B?TmtLd2x3dDY0WkpZSkxudzBKVU12SThyNWJoQ0lvWjkveUJxVkNpNXNSbGRX?=
 =?utf-8?B?SFpFL3FuVjIxanZ2T2sreFYxdnQxK3BjWTA5VjlXWDAycVVYZlBJK21zeElh?=
 =?utf-8?B?clc3MTBlUHlhZTRoNXNHVEVYdXdxb09FaURPTkpFRHl6YmNWRzZETFJvSmhV?=
 =?utf-8?B?Z2hmeEwzWG9zUkI4N25vNlZXWXgrc21CcEE4dys3MUhsSWl5N1I5TGNWQnh1?=
 =?utf-8?B?dHVvaDBYZWg3dkNoSXNwT1FhUGxVVElXOFNNQVB1eG1Lcnl6MTUxVGwrZkZZ?=
 =?utf-8?B?TGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <22D646D75983F0468FB76CECA9C3AE1A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83c29fc6-4d13-4d4d-54e1-08dae3459f7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2022 11:22:19.3786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8s/bDrjfSblBzQ36JX4tn9trlDBlghnV81b1x4hMmszVnRDtOWuQAm6suyY2mwLXs3m5RF9By4OhVIEs2CHWJYfwLr0VbpQcG68FEHIzcek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5442
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTEyLTIxIGF0IDExOjQ5ICswMTAwLCBUaG9tYXMgWmltbWVybWFubiB3cm90
ZToNCj4gSGkNCj4gDQo+IEFtIDI5LjExLjIyIHVtIDEzOjQzIHNjaHJpZWIgSm91bmkgSMO2Z2Fu
ZGVyOg0KPiA+IEFmdGVyIHNwbGl0dGluZyBnZW5lcmljIGRybV9mYl9oZWxwZXIgaW50byBpdCdz
IG93biBmaWxlIGl0J3MgbGVmdA0KPiA+IHRvDQo+ID4gaGVscGVyIGltcGxlbWVudGF0aW9uIHRv
IGhhdmUgZmJfZGlydHkgZnVuY3Rpb24uIEN1cnJlbnRseSBpbnRlbA0KPiA+IGZiIGRvZXNuJ3Qg
aGF2ZSBpdC4gVGhpcyBpcyBjYXVzaW5nIHByb2JsZW1zIHdoZW4gUFNSIGlzIGVuYWJsZWQuDQo+
ID4gDQo+ID4gSW1wbGVtZW50IHNpbXBsZSBmYl9kaXJ0eSBjYWxsYmFjayB0byBkZWxpdmVyIG5v
dGlmaWNhdGlvbnMgdG8gcHNyDQo+ID4gYWJvdXQgdXBkYXRlcyBpbiBmYiBjb25zb2xlLg0KPiAN
Cj4gSSdtIGEgYml0IGNvbmZ1c2VkIGFib3V0IGk5MTUncyB1c2Ugb2YgZmJfZGlydHkgaGVyZS4g
SG93IGlzIHRoaXMgDQo+IHN1cHBvc2VkIHRvIGludGVyYWN0IHdpdGggbW1hcD/CoCBpOTE1IGRv
ZXNuJ3QgdXNlIGRlZmVycmVkIEkvTyBzbw0KPiBmYmRldiANCj4gbW1hcCB3aWxsIG5ldmVyIGNh
bGwgZmJfZGlydHkgaWYgdXNlcnNwYWNlIHdyaXRlcyB0byBtbWFwJ2VkIHBhZ2VzLg0KPiBJcyAN
Cj4gdGhpcyBvbmx5IHJlcXVpcmVkIGZvciB0aGUga2VybmVsJ3MgZ3JhcGhpY3MgY29uc29sZT8N
Cg0KWWVzLCB0aGlzIGZpeCBpcyB0YXJnZXRlZCBmb3Iga2VybmVsJ3MgZ3JhcGhpY3MgY29uc29s
ZS4NCg0KUGxlYXNlIGNoZWNrIG5ldyBzZXQgSSBqdXN0IHNlbnQuDQoNCj4gQmVzdCByZWdhcmRz
DQo+IFRob21hcw0KPiANCj4gPiANCj4gPiBDYzogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJt
YW5uQHN1c2UuZGU+DQo+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmRldi5jIHwgOSArKysrKysrKysNCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJkZXYuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmRldi5jDQo+ID4gaW5kZXggNTU3NWQ3YWJkYzA5Li43YzdmYmEzZmU2OWUgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gQEAg
LTMyOCw4ICszMjgsMTcgQEAgc3RhdGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2Zi
X2hlbHBlcg0KPiA+ICpoZWxwZXIsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+
ID4gwqAgfQ0KPiA+IMKgIA0KPiA+ICtzdGF0aWMgaW50IGludGVsZmJfZGlydHkoc3RydWN0IGRy
bV9mYl9oZWxwZXIgKmhlbHBlciwgc3RydWN0DQo+ID4gZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4g
PiArew0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChoZWxwZXItPmZiLT5mdW5jcy0+ZGlydHkpDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBoZWxwZXItPmZiLT5mdW5j
cy0+ZGlydHkoaGVscGVyLT5mYiwgTlVMTCwNCj4gPiAwLCAwLCBjbGlwLCAxKTsNCj4gPiArDQo+
ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+ID4gK30NCj4gPiArDQo+ID4gwqAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcm1fZmJfaGVscGVyX2Z1bmNzIGludGVsX2ZiX2hlbHBlcl9mdW5jcyA9
IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3Byb2JlID0gaW50ZWxmYl9jcmVhdGUsDQo+ID4g
K8KgwqDCoMKgwqDCoMKgLmZiX2RpcnR5ID0gaW50ZWxmYl9kaXJ0eSwNCj4gPiDCoCB9Ow0KPiA+
IMKgIA0KPiA+IMKgIHN0YXRpYyB2b2lkIGludGVsX2ZiZGV2X2Rlc3Ryb3koc3RydWN0IGludGVs
X2ZiZGV2ICppZmJkZXYpDQo+IA0KPiAtLSANCj4gVGhvbWFzIFppbW1lcm1hbm4NCj4gR3JhcGhp
Y3MgRHJpdmVyIERldmVsb3Blcg0KPiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdt
YkgNCj4gTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55DQo+IChIUkIgMzY4
MDksIEFHIE7DvHJuYmVyZykNCj4gR2VzY2jDpGZ0c2bDvGhyZXI6IEl2byBUb3Rldg0KDQpCUiwN
Cg0KSm91bmkgSMO2Z2FuZGVyDQo=
