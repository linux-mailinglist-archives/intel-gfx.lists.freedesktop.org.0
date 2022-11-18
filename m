Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 409C062EA77
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 01:42:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEAEB10E053;
	Fri, 18 Nov 2022 00:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8EB010E053
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 00:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668732109; x=1700268109;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Rt1n9cheEEpCgWFDd24tMHwf3E7nvgqp2knDZ1pq9Ac=;
 b=AU3EVdGYj9r6vETt30FfcQwq4T9bAXZrWsnI+tTXyWyrs0C8sUEERJno
 BIGNvNnNSCsHxm/fSVLbm/n/9bezJPKE1RHIL2fuIiQVgYOm03WLgPgtR
 Xr2DCoBSX8ysulWDWWiq/bWOKnCPw9dZOz3+4vXQbVNcEpXJR4HmEecPC
 Q8LQ0qyTjmCaJOIWO4n77hZU2Gw+fIrM8BAo38Ft+JB9mmICH5GFoIjda
 4GtEAVBO0TH+EmfWW6wmys6g6wnpQzkKYySpHBHg+Sf0iPTjfOFJpkJFI
 0Ct6IVEKhFL/gEm1WLUwnXYKiTNEoUGs41QqosLqiBpvke2tWDsE+CNdx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="311718930"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="311718930"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 16:41:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="617823950"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="617823950"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 17 Nov 2022 16:41:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 16:41:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 16:41:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 16:41:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZcOYAWFwxiJAuTWx/t3HqwKgucrG1ysPibEkcP+Z7sn2DmlDpfvzhLUeGHLrV/LtkWqsJ6dTZ3+mfz+GseicFUe/qrpkyFaHRIYw8QkZa8qQjdlNSUu9JWY9Uo0/U5imWLgBiIO3DyeMOJhVuvqj6D0bzfB3Xxkrddd3Orgh2/zzHWCO+6DmvpqLpgIl985FNrYyYvZigvcszQJVgowPIIvCFKpQKNPmi1DNgGoM/4eoaXy5W4rBg5E04cBY/D8HxvhGrMjjFZYJNwBIp6pVK9BpowOYsZKYSZt47gaNZcVSpcPpV5iatoLnFVXKWL/bwpQcXQ6tkIVdsdPH9iUl+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rt1n9cheEEpCgWFDd24tMHwf3E7nvgqp2knDZ1pq9Ac=;
 b=kZvldvIpdI6weRVWId4oczJIrZdnM5gtKGVIGgRpDC+w0HrxpnnUgDttPKQvJ4j193+s+dOYC75iThSIdBXMdHs+fq48LzBTfK0uFplqV4EyGaHhGuv1lMk7Ekf3l8OqU9Oe0Q3PDQDvaJ/FcJHlNiHgGkOK5HVNULFq6l8EpaS/OfFZbXZEWJ8oyVPHZ+tR6QfLkR0KAkD5Jsn5hnl7cYMwtBlAzR5/yceRE/iIbxIzgZwCtGKggzmMGP6qGVJHxRJl613wgzJ259TnghOunmbDF1aOxVKo0a0YNlsTgFEmmwRXgLIR+wQVcP2vomXcFgjFSwtBSFpAM8mEU97jsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Fri, 18 Nov
 2022 00:41:43 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5813.019; Fri, 18 Nov 2022
 00:41:43 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
Thread-Index: AQHY+uWN8SqFG03TA0eOKkcHNoHIi65D1/SA
Date: Fri, 18 Nov 2022 00:41:43 +0000
Message-ID: <16d825e78b90802a9ee2f6a04e262133fa1a8fbd.camel@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
 <20221118003631.1523764-3-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221118003631.1523764-3-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: 75937277-988c-4ea6-2ad7-08dac8fdaa32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1tWKUH7PB1edRkeer/nVfG3aiTeUAsY0TB3XHohPjt/clXmB7xfUYb0eJpOp7nh5mA/2o57bZ45SoB7KvzA+CL1iUTu0RWSswB8Mytv7sslFhESpi34FSRf4bcaUJxZyuQElW9vBvRSIJlO4wmpKhJtAZdPWcOe2yEBLcUcJQFzgLzYxtOdj8k53hLAoBqMaUm/Zek8ULyas0kZ3dpYs0m+fOqezYg+xuKhHHB+I61uVDmMmHaWoigTjivpdpXrJuAOzq64hfYoGYBa0RbyEdncGpFaRPBnmBx4FyieoQ6dtzpJ6HcGyiCC5VWlLgseM21pH8N0sL6jMiq2m+eBH047vKsCKrx6dKqSRF18Wy9OgRoqIvlY5fjqntphOODid8L1vE05v7tc5GmZx0ggE5V66J4qG0VabMpFrYh87B4Slkb3U2M2xqcWyrpnDoFA1+CojCtNFl/O+DbcqYP+qM4dte+m/fas94+gRDbY6UY5L7AwnpF5C3f3RK7YLPsLSTlxP1ifW4DZSClNMLGdQQd11bAkAmqs/+fCDOmNkewa7d2pdl4jVPsHemLQNA5PZAQl/jg9u5bVM9NI4/11FyYN8kl0x4Lx2vFEi1NXnWf+Yu7mem/zue1F9bm7zyQMkdrZfZkgPYSWsXHmbaXpd5F4gEMp7f7sPH+WsjSBTEx0wIi+aFIPE95VD4XsdJUgNwPI6Uqj4QNuVP1GU8D2Qfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(346002)(39860400002)(396003)(451199015)(71200400001)(478600001)(6486002)(41300700001)(2616005)(26005)(8676002)(66476007)(66446008)(66946007)(36756003)(64756008)(8936002)(66556008)(76116006)(6512007)(91956017)(5660300002)(186003)(6916009)(6506007)(316002)(2906002)(83380400001)(15650500001)(4001150100001)(82960400001)(86362001)(122000001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmZmV1gyYkpaR0VKVTZLNEZxYzhDRkJpZXczQ3BWVlR5d1FRMENSTXNadkFE?=
 =?utf-8?B?YXpobmE1N0ZhcEZWQ0owQWVNZjk2MzhadzMzajZwOWQzN041aGRxeVhsd200?=
 =?utf-8?B?TENKZGl0Q0x0SFA4YVRydEtoSGpHc2kzSVdqZE5aY1A1WkdXbzErcmtxeWtr?=
 =?utf-8?B?QTNMcktZZVFGNHBxY1VyZmM1WHFnV2NQYjNYZDJPRUFlZXBRWjFZR0Npd3ND?=
 =?utf-8?B?bTZPNmhrSHpDOVJhbUx3SGYvYjlaM2lBckZ3bm9UMEpuWmQ3ckMwUm44N3Rj?=
 =?utf-8?B?cFhBd1hIbHpHUnZTVjQ5ekVvOU9tY3BmUm55OW82amw3QWZiUE56dTFYNjdR?=
 =?utf-8?B?QXR0T09mZ2ZCS3pSZE01R1NscytpejRPeUdEM3pocUtlcmsyL1dCTHFvazhw?=
 =?utf-8?B?dC92cFdnMnZ1ZHJWdlRjeGNSbDB6N0tvUldNRWtwZ0ZrVkt4LzJZS3BJUDh4?=
 =?utf-8?B?cy9LSEV4RkNoNHFuYUdSNk1FbE05ZHB1aGhVNzVMZHgySmc2c2FEMEg3V3p4?=
 =?utf-8?B?MGhXYmRyRHdkY09OZGREdUR5OTJJbEltc3Y0cXVNaHpOSEMwK3hvVjBJSjdu?=
 =?utf-8?B?Z25ZKzRpZm5nVFZ5RnZtemhOZFFySXBvSDBmVi9TQW1MMmt2bjVnYXM0ZE01?=
 =?utf-8?B?SFVYU0plK04wNDFiZzlIdE80bzNIZ3NtTnU3RS9HTW83Tkp4TFJkVlRadUtC?=
 =?utf-8?B?NXMxZTk1NHlsV1NWelVITG04azZ2WkVvUno0Z3hlcW16UDZMQzFLMk83VTEy?=
 =?utf-8?B?WWNpN0tvRStxV3NmQjJqMjlxd3RYOHUvQ1gvdEd4TFpmY1pQbmtuZmgrWC9p?=
 =?utf-8?B?UWs4Mk01bmNmUm16UTNodUp5aHR2dThuN20rVlVXcmhSallkOWcrYVU2Yzky?=
 =?utf-8?B?aTI4WGl3NlhpRmhHUjBNWDV6V2VvNEZrbE9TVDVnbjRqd3hRck1JVE5zZU5W?=
 =?utf-8?B?NTNTNmlCejVKZzM1VFFCYWF2UmVoMERkaVpNcjNsZ1BsWWhuUml5S0YvVGZt?=
 =?utf-8?B?U0krZGNWMVdlZXBBbTEralhkMVVwejVCeDVtWHBhdnhTZ1M3YW14Z3V3VXZ3?=
 =?utf-8?B?T1JEK2MxcEwrL0hkb1IveDNVdHF3bXVodlVBSHhJTjNZbXM3Z05FZG1aRm5B?=
 =?utf-8?B?TUFEdzZ0M05sTW1XNEVLY255QXZ4WW91UU1hMmJPeFE1RjRJSGwydHJHYzdu?=
 =?utf-8?B?bTBvN2p2NWo2aEYvNVR1ZElaRTI5djBIS0ExcTlKTnlscDB2VjFCREtocUhS?=
 =?utf-8?B?K05FY3BVdW9CR01EUU9LaGRmZ3QyeGpBRW9vUEl1UDBvY3lLRmlJQUFUMFRR?=
 =?utf-8?B?M0ZWdXFsTmgxSFFkeFdsMEQzSnRtUWZSblIrZEhQMUJHMmNROFZYR2Q1ckg3?=
 =?utf-8?B?aTFZK2NUeWM2N1czMXN1eXVIZ2VncVhHbXVsemNsR1hFZDJqQWpBbUFramtV?=
 =?utf-8?B?VVB0bkpmeVd6NkJQYVdYa2J4c2cwRWRWU29yb200ZkxTaHkrbE5QVVRYZStn?=
 =?utf-8?B?RHlkdVlZK2s3Wm5rakY2N3NaNlpvNWFMV0hTWTZITm1KODlwQjBoMHFUa2Yy?=
 =?utf-8?B?MkdDaFlldGZLRC9aUTB4anh1RzVRdXZ5RnRtbnJ5emU3YnJmRURJcThiQnN4?=
 =?utf-8?B?WGc2SEFtLzVXTmNEY2ZGZEdaUHkrNXNuMCtCR1lLR2VpMGh0VXlBbXFYaGZP?=
 =?utf-8?B?NWVTSVFhQUhYdFFJM1F0cFB3QXNkbDRPYUJGc3NLbkVPUFhmMlNCQUtOUEw4?=
 =?utf-8?B?RFRDYTJVdFcvVFlsRmM4bkJFaHdtSG0wREtObEYwWFJ2cVlMemxJNERSNG40?=
 =?utf-8?B?M1k5bGd3S2RVZmVRWUdwZjROUk1GV3hUUXVDMDZnemE0SDh4dTZHdG5wRm9k?=
 =?utf-8?B?RVJxcFphRTVDQVRHbmhSZnJPaTcvbS9DdGRER2JiVFZDZE5XZHNVdzlycHJs?=
 =?utf-8?B?RVVRc3hiUnU3LzlXNkw3WUw2WXUyLzdQVGtKZTMyb1NjOUFJaFNsWS9BKzhn?=
 =?utf-8?B?c3QydUxoeDdwZzkza0xsWGY2T3FDK0d4WTUvcFRMUm8xRm40djRETkk5aUJu?=
 =?utf-8?B?RXBybEtFbEx6TGhTd29sRExXNHNhbGFCeEkwMEpSRFEwR2FTMUJObk1UOS9B?=
 =?utf-8?B?eWVJeWMrWG5vUHJVSk51cEVveWxkVjREdXVDQ1dKdlFkZ0ppcEVQUmtHbDRY?=
 =?utf-8?Q?mtx6GpsKinL+tnlkObOJcOc=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <36AC7C833C5EFD41A132CAACE501C070@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75937277-988c-4ea6-2ad7-08dac8fdaa32
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 00:41:43.3573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wUpzmWUB9f9D9txtoso66lQF5Qvo0+rwmjpYzXxSsHQGwL+l3jBR+KisBl+bUKp3ITFTswleHebSW46tWEBR1+rK+Y8nKc56T90L/Qng22Y9kac1AUPbRUYr5znH+TAA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
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

T24gVGh1LCAyMDIyLTExLTE3IGF0IDE2OjM2IC0wODAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4g
QSBkcml2ZXIgYnVnIHdhcyByZWNlbnRseSBkaXNjb3ZlcmVkIHdoZXJlIHRoZSBzZWN1cml0eSBm
aXJtd2FyZSB3YXMNCj4gcmVjZWl2aW5nIGludGVybmFsIEhXIHNpZ25hbHMgaW5kaWNhdGluZyB0
aGF0IHNlc3Npb24ga2V5IGV4cGlyYXRpb25zDQo+IGhhZCBvY2N1cnJlZC4gQXJjaGl0ZWN0dXJh
bGx5LCB0aGUgZmlybXdhcmUgd2FzIGV4cGVjdGluZyBhIHJlc3BvbnNlDQo+IGZyb20gdGhlIEd1
QyB0byBhY2tub3dsZWRnZSB0aGUgZXZlbnQgd2l0aCB0aGUgZmlybXdhcmUgc2lkZS4NCj4gSG93
ZXZlciB0aGUgT1Mgd2FzIGluIGEgc3VzcGVuZGVkIHN0YXRlIGFuZCBHdUMgaGFkIGJlZW4gcmVz
ZXQuDQo+IEludGVybmFsIHNwZWNpZmljYXRpb25zIGFjdHVhbGx5IHJlcXVpcmVkIHRoZSBkcml2
ZXIgdG8gZW5zdXJlDQo+IHRoYXQgYWxsIGFjdGl2ZSBzZXNzaW9ucyBiZSBwcm9wZXJseSBjbGVh
bmVkIHVwIGluIHN1Y2ggY2FzZXMgd2hlcmUNCj4gdGhlIHN5c3RlbSBpcyBzdXNwZW5kZWQgYW5k
IHRoZSBHdUMgcG90ZW50aWFsbHkgdW5hYmxlIHRvIHJlc3BvbmQuDQo+IA0KPiBUaGlzIHBhdGNo
IGFkZHMgdGhlIGdsb2JhbCB0ZWFyZG93biBjb2RlIGluIGk5MTUncyBzdXNwZW5kX3ByZXBhcmUN
Cj4gY29kZSBwYXRoLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJl
dmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9weHAvaW50ZWxfcHhwX3BtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
cHhwL2ludGVsX3B4cF9wbS5jDQo+IEBAIC0xNCw3ICsxNCw3IEBAIHZvaWQgaW50ZWxfcHhwX3N1
c3BlbmRfcHJlcGFyZShzdHJ1Y3QgaW50ZWxfcHhwICpweHApDQo+ICAJaWYgKCFpbnRlbF9weHBf
aXNfZW5hYmxlZChweHApKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gLQlweHAtPmFyYl9pc192YWxp
ZCA9IGZhbHNlOw0KPiArCWludGVsX3B4cF9lbmQocHhwKTsNCj4gIA0KPiAgCWludGVsX3B4cF9p
bnZhbGlkYXRlKHB4cCk7DQo+ICB9DQpXZSBkaXNjb3ZlcmVkIHRoYXQgZGVwZW5kaW5nIG9uIHRo
ZSBydW50aW1lLXBtIGJlaGF2aW9yIG9mIHRoZSBwbGF0Zm9ybSwgdGhpcyBwYXRjaCB1bmNvdmVy
cyBhIGhhbmcgb24gdGhlIG1laSBjb21wb25lbnQNCmRyaXZlciAod2hlbiBjYWxsaW5nIHRoZSBt
ZWktcHhwJ3MgaW50ZXJmYWNlIGZvciBzZW5kaW5nIG1lc3NhZ2VzIHRvIHRoZSBmaXJtd2FyZSBm
cm9tIHdpdGhpbiB0aGUgc3VzcGVuZC1wcmVwYXJlDQpjYWxsc3RhY2spLg0KDQpBcyBzb29uIGFz
IHRoYXQgbWVpIHBhdGNoIGlzIGZpdCBmb3IgcHVibGljYXRpb24gd2Ugc2hhbGwgZWl0aGVyIG1l
cmdlIHRoZSBwYXRjaGVzIGludG8gYSBzaW5nbGUgc2VyaWVzIG9yIHByb3ZpZGUgYQ0KbGluayBm
cm9tIGhlcmUuDQoNCi4uLmFsYW4NCg0K
