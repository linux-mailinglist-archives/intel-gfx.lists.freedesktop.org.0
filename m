Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC526470E5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 14:36:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DDB810E4A1;
	Thu,  8 Dec 2022 13:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73EC610E4A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 13:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670506610; x=1702042610;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=tZU98Uc/gMM2Jl//tekqFvFauJVNNE/LTf7mEhjizB4=;
 b=H1sMirIQ14cmqqGhR+MvpsWIWoHmKn7peVNvuVjFYjrZFkkf69taNwRB
 WRnyU7PxRqZnbw2V2gMa5NpuiiWW3HDC1ctJWQ+EHLZbKKIUxrd6ZICFC
 MaGOxC7G5DaVoHDVBDfgedhrRScanzFDPfKeJ9z6iHnYQpA8CTspDr1Mh
 IrouW3EzCgjU7gf2D45ua+pQt3z06Ns4vJLXAwQuYOOGjiLDz+G8YSy4l
 EY+QRoiYZH5dXJdz14bMXPJpDvh6DSz9RyWJD+q1Y7cm2yTpRZUbSR1I4
 wlGekhDAhcuu47ChRLwDcAunHv8lMSVbwJjz884SsmDZbtv25SAmQKNQP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="318312307"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="318312307"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 05:36:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="735792727"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="735792727"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2022 05:36:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 05:36:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 8 Dec 2022 05:36:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 8 Dec 2022 05:36:48 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 8 Dec 2022 05:36:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kRhS/yeGCwI+NWDfSGtiqxBhnjg5lxfJbzbGuC9fIJ3Xz5H3hNLA/eYmcS8kMywTqAnoN/XcKi4L47BEt581z9501YmJV3ffmNmA4lQdvcP3R4VkMnHtPvpCwDMOdueyvFN74if7MN1THBeS8Qs8BOkFPHo6S21LDirT/HkfR7pSGBCRbbeG/k5ckBN4SysHEqOcffnYVotGJw3Re46UADd+vSJsxwoeWu1ByIzfqw2dSbpsSluPY4dItl1IBBgsNV9rHemZnsfLKqDKB0gXn4b0oYbCRYElaCe5HoHw3DeyvYn6xItXMBMwA4N6hg+6zgGuOUa6mR8W6jhv9dMY1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tZU98Uc/gMM2Jl//tekqFvFauJVNNE/LTf7mEhjizB4=;
 b=YfHFjGJ2Lt0xpw2VRVxiApnW9nZW94d1taeyxf0PSb7lVMnNeuLxhLnExDl3Efh6FYQ+daHLxPo/QDKZr71ed+bDnbYQdkAWjILWmit9b0jDnzH0A/odv3Om93Wan/5LzhLKNgsemwpJ0nlgrvrzrXb6vpwT6P+vwosSB7Qae0umTCC1y1yNgZpO/HEA3BKbecNhcr+zaNoEGHhl23f6+ICazaFFIkpJmKDNBPUJOwmshYIL8n2eNjJOqcTx3rg7dinPNio5l1ozgssyPRmmgIziev7231M7yOjcKEvc4AvhC9vmzbZE9R/VP1px9AIUT1obijPfSXt4J2a5IQrHYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6143.namprd11.prod.outlook.com (2603:10b6:8:b1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 13:36:46 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 13:36:46 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/display: use fetch_and_zero if applicable
Thread-Index: AQHZCvYApfFkfHfPb0Ol2VrUq1o9h65j7GeAgAAR5gA=
Date: Thu, 8 Dec 2022 13:36:45 +0000
Message-ID: <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
 <877cz213fa.fsf@intel.com>
In-Reply-To: <877cz213fa.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4 (3.44.4-2.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|DM4PR11MB6143:EE_
x-ms-office365-filtering-correlation-id: a89f03ab-7393-46c7-dce7-08dad9214032
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ajYhPfUZY7xDxvz30ReJKu/8p9/v5q/BoIr27T/HxT5MoTKViAOvU5FKPRHfWBgY3xoe7yH+SOpqXespR8WacHrDJm07FxVjJbwxNjqnDH04gnHo19UVmjEA4YcgFC2rZTdHtIRyrPLAqflO7lPvJNcKbjEBz2n8brk1f7UF1ufq2o+RZeYBqClcPzOhWD1khmz12Box9+aLkU9qGctbyqB4FZoiD0Ed2vYuAFihle+gwXtyQ7wui+VRODkAGfEVGCfmT9mvsfnYAmUr0BF51rzp9w3kNsKtRXfEW955DT36BxWKKs6p12vIz88lRj5XpZGKp6xfoXJo6Klp6ihR8Sqpz/+3k54tsQ98nY9Rs+IIkI9B+kgJSHk/LCqUWQ5VZFYskX3C3jRb73KynLJ9hxUJlhy/6v+s8ZkJBO12RdJdlXT/oy282MC4DkXr1hye8aiBl6R2eLH4rnmMSSwNeitvTAthYrE3b8dO99E2Fq8K96+kXz75hsIGFbgneTDSj+EAAHyn0ij6vf8sqqL6rNY3qu193bfszE04kJE20LKGLGtxoTx33y59pZBszhTVL8T7see+7Rern3L8E1WV+d+6tjl/QlpQGvo0XHsRj4C7v60QWOxnwkp41oRNt+fQMHGq8WdmhXgncXbiGaM/XS7u4HKjQaJ6n0NFchx9jj/W0Ex91MyW95XwJAQIDSJvNf0cTmS30IWSwji5iAxqgg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(376002)(136003)(39860400002)(451199015)(41300700001)(2616005)(86362001)(478600001)(6486002)(122000001)(6506007)(186003)(83380400001)(316002)(110136005)(71200400001)(82960400001)(54906003)(38100700002)(8676002)(4326008)(36756003)(8936002)(26005)(2906002)(38070700005)(66476007)(6512007)(5660300002)(66446008)(76116006)(66946007)(66556008)(64756008)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TTNDQ2RZNk8xLzNPQ2tGeVFVd1FuN1djVHlvclhiVlVCTUFBa3NNN3p0ZVNj?=
 =?utf-8?B?ZnRGL0V1REExV0Z5dUw3YWJ3Wm9kZFV4bFgvODQ1K2haeUVjbXh5Yk5mM1ll?=
 =?utf-8?B?enN1Z3hDOU1CU2Z5ZFdvd1J2WkpXaWlSb21qT3dBbWU4SEFOS2xBSjNhOGV1?=
 =?utf-8?B?Y3UvTDJkNWNJSmc0VkxEem1oTFJCR0ZsNnMvalhNeWQrVmZ0ZFV3MTU0V2ZR?=
 =?utf-8?B?aVBZc1FTMURGclprdWpsUnF6SlRvRE9aclJMRWN4Vmp5UzFVL1I4OUZGZ0o4?=
 =?utf-8?B?VTZSd1hlcGljbjlERnhienJaOUxXWXFRcHdkclVUeTVmKyszRHBzaE0vVldk?=
 =?utf-8?B?RmppNUNwMHRMWlM4cFkrQzh2QmdwS25qWi85ODJMUTR4eFlmVXRSa3hzYVpJ?=
 =?utf-8?B?U2luZ1JCU1lJYlEzcW4ycnhsWHpRU1BuSVBwMzVkcDJ1Z2VXY0N2NlRnZDZN?=
 =?utf-8?B?K2FIYU5obWFDRVpMZm5pZS9wWVZDZW9nYUFnd2pOdEtLWHVIWmtaU3FpTHZU?=
 =?utf-8?B?RGF1Q3d3YTJvTTBjdWxFb2l2QzA1dkxTa0s4VTBpMlhwR3JBTHM0TmlPYmxE?=
 =?utf-8?B?dU1saTlTUm82L1Q4VUR2RWJXVjl2bTdSVWw1ekFVb3dtVkxJN3hIQjdyRERw?=
 =?utf-8?B?YlU3bEhMUDZxY1RYWXlqK2NuRmVpRnNXMWcxNXpxM1N4Q0Y0MENMM2MwWTll?=
 =?utf-8?B?MlYwNjhKWHF1ZlBIdW9PV3hHZzk2M1RDdE1ELzFwTGx5ZHEyd3UvTWhMMFo4?=
 =?utf-8?B?dTRjcnhhczJpeWZSS1JlcXlkeTBVNjhYREZwb2NqKzh2UlVtS0dKTm84ejdX?=
 =?utf-8?B?RHRwSWVKaTBrZzIxNldTS0VsVkpoRklpSXY0NHFwcyt0MTJteGhkMzU5UjJD?=
 =?utf-8?B?UEM4WlNMTEczaitjUXB3VHh1aU1QY1llNFE0NVQ0Sk1iMW5WdmZROEMvK0Zu?=
 =?utf-8?B?MFRNaTE5a3ZTWGpzQlBVK3JkTTRJZ09RNThXWWdrbUJwTFA0bjJab2kxR3RX?=
 =?utf-8?B?WlRtb0dReVlTSWZYY1RHQjcvU3Z0UU1RdWlDd25mSzNMS09pTE5TdHNyVGNX?=
 =?utf-8?B?ZWZsSjJMYXM2UlVJQXA0VHc2a2pUYnpJL2NDcjdsMzF6dlo0ZFJhczE0V3By?=
 =?utf-8?B?anhkdlo1eFh0bnJvb05VZnlIVHZ1TVMwdDFsa25leUpwdHhxUFpzSmRHSkJC?=
 =?utf-8?B?TGdDSFZpQ2Q1amx2bVdkSHhtSkljaEZEZG1rNml2K3A2OEE0U2FPVjVNREpV?=
 =?utf-8?B?QXBaMW4wR3JRMVNSK2laTTVldENCMEhnQnpZVGtEN0cyMTZuN3VWbUorZjc4?=
 =?utf-8?B?b0hpenJ3TXJHN044SE9uci9oS2VLRXNaR0ZOMkRQaE1PK2cwdXc3YXZyckJw?=
 =?utf-8?B?VmdPOTBKV0VBcWQ1VjlqRnRHTFFwT0owaEVqN1c1SFhEcVUwM1FaUEpSMUxG?=
 =?utf-8?B?QlpWZmNkNHNoQSt0bkNMTnB1cGNqb0tvSDZwVmtlcEtEWWhDanB1VzZwNXlW?=
 =?utf-8?B?TyszWmljTkVFSVdhN1J5MHMwdHVkZlRKR2tHUVhXVkVvV2QveEl4ZWcxVGUv?=
 =?utf-8?B?RmtRL25jb3pUZXFsVlpyajdtM3JzcGtud2Y3UmhsWGdOVmpNQ3dDQzZIN21K?=
 =?utf-8?B?bHNVUE1YaGtnRzRjWEdXdEJab0M5K0RTYUlSVlA3KzFnaTFkM2dmNi9rK2hC?=
 =?utf-8?B?MVhhckdid1ZIOHh3UnBTK3NlMEhOQlhZMnZTdGxWNkVwQ1FTRmhvbjFQaWZ1?=
 =?utf-8?B?L2V1UHNRTmdndFlGbXhkL2w4VVlsR2RQc1AweWJ2Vzk4cXBCOTdZVjg1aGRZ?=
 =?utf-8?B?eVQwSHRrdHZWWm5idE5pSlUyUmcwMHkvM09SKy9FSmJSVUVZZHkzTVRaZ3p2?=
 =?utf-8?B?M0VhNlc3bWNaQWdjZDVrZ1lsZk5mMDVPWmhwcjBTVFVOREtOT0VhSGVrRU4y?=
 =?utf-8?B?Nzl2SVZiZndPN2RRanBaa1FpMmFTWjdYbzZyRHg0cmYxZTU5Q2g0MTY1V1Nn?=
 =?utf-8?B?VEc0UUNIRi9mNW5GS1RQSHU4UHovQzlQVU15UWo2dnBzM3N1cnlMcE5UaWND?=
 =?utf-8?B?UjdaVTFTdFMyYTByNEIwQlFkWkhaczUrZEpvMHlDa1lHb2gzRDYyVnJTSnNs?=
 =?utf-8?B?RkJDTWc4VXRjeGliam9XeUFWdERCTk1DNnZ1YXRGZ01wUnJTUkdwZllNOXJQ?=
 =?utf-8?B?YkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FFE18509C105A4FB410AFF82F6ABE3E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a89f03ab-7393-46c7-dce7-08dad9214032
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2022 13:36:46.0101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKp5rU1EgsS62Zh2tbMsvqM2PCDON4dWcFrLO5IVR7f+laRjJQaickLZZ9JSJ1ECgczaeFdoYytvGWSdGPY2pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6143
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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

T24gVGh1LCAyMDIyLTEyLTA4IGF0IDE0OjMyICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAwOCBEZWMgMjAyMiwgQW5kcnplaiBIYWpkYSA8YW5kcnplai5oYWpkYUBpbnRlbC5j
b20+IHdyb3RlOg0KPiA+IFNpbXBsaWZ5IHRoZSBjb2RlLg0KPiANCj4gUGVyc29uYWxseSwgSSBh
YnNvbHV0ZWx5IGhhdGUgZmV0Y2hfYW5kX3plcm8oKS4NCj4gDQo+IEkgdW5kZXJzdGFuZCB0aGUg
cG9pbnQsIGJ1dCB0aGVyZSBhcmUgdHdvIG1haW4gdHJhcHM6DQo+IA0KPiBGaXJzdCwgdGhlIG5h
bWUgaW1wbGllcyBhdG9taWNpdHksIHdoaWNoIHRoZXJlIGlzIG5vbmUgYXQgYWxsLg0KPiANCj4g
U2Vjb25kLCB0aGUgbmFtZSBpbXBsaWVzIGl0J3MgcGFydCBvZiBhIGtlcm5lbCBjb3JlIGhlYWRl
ciwgd2hpY2ggaXQNCj4gaXNuJ3QsIGFuZCB0aGlzIGp1c3QgYW1wbGlmaWVzIHRoZSBmaXJzdCBw
b2ludC4NCj4gDQo+IEl0J3Mgc3VycHJpc2luZyBhbmQgbWlzbGVhZGluZywgYW5kIHRob3NlIGFy
ZSBub3QgdGhpbmdzIEkgbGlrZSBhYm91dA0KPiBpbnRlcmZhY2VzIGluIHRoZSBrZXJuZWwuDQo+
IA0KPiBJIHdvdWxkIG5vdCBsaWtlIHRvIHNlZSB0aGlzIHByb2xpZmVyYXRlLiBJZiBmZXRjaF9h
bmRfemVybygpIHdhcw0KPiBhdG9taWMNCj4gKmFuZCogcGFydCBvZiBhIGNvcmUga2VybmVsIGhl
YWRlciwgaXQgd291bGQgYmUgYSBkaWZmZXJlbnQgbWF0dGVyLg0KPiBCdXQNCj4gSSBkb24ndCB0
aGluayB0aGF0J3MgZ29pbmcgdG8gaGFwcGVuLCBleGFjdGx5IGJlY2F1c2UgaXQgd29uJ3QgYmUN
Cj4gYXRvbWljDQo+IGFuZCB0aGUgbmFtZSBpbXBsaWVzIGl0IGlzLg0KDQorMSBoZXJlLg0KDQpQ
bGVhc2UgbGV0J3MgZ28gdGhlIG90aGVyIHdheSBhcm91bmQgYW5kIHRyeSB0byBraWxsIG1hY3Jv
cyBsaWtlIHRoaXMuDQoNCndlIGVpdGhlciBraWxsIG9yIHdlIGVuc3VyZSB0aGlzIGdldHMgYWNj
ZXB0ZWQgaW4gdGhlIGNvcmUga2VybmVsDQpsaWJyYXJpZXMuDQoNCj4gDQo+IA0KPiBCUiwNCj4g
SmFuaS4NCj4gDQo+IA0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogSGFqZGEgPGFu
ZHJ6ZWouaGFqZGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCAxMiArKysrLS0tLS0tLS0NCj4gPiDCoDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiA+IGlu
ZGV4IDkwN2FiNzUyNmNiNDc4Li4yOTcyZDc1MzNkYTQ0ZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+ID4gQEAgLTMwNCwxMCAr
MzA0LDggQEAgc3RhdGljIHZvaWQgaTkxNV9kaWdwb3J0X3dvcmtfZnVuYyhzdHJ1Y3QNCj4gPiB3
b3JrX3N0cnVjdCAqd29yaykNCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIG9sZF9iaXRzID0gMDsN
Cj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcGluX2xvY2tfaXJxKCZkZXZfcHJpdi0+aXJx
X2xvY2spOw0KPiA+IC3CoMKgwqDCoMKgwqDCoGxvbmdfcG9ydF9tYXNrID0gZGV2X3ByaXYtPmRp
c3BsYXkuaG90cGx1Zy5sb25nX3BvcnRfbWFzazsNCj4gPiAtwqDCoMKgwqDCoMKgwqBkZXZfcHJp
di0+ZGlzcGxheS5ob3RwbHVnLmxvbmdfcG9ydF9tYXNrID0gMDsNCj4gPiAtwqDCoMKgwqDCoMKg
wqBzaG9ydF9wb3J0X21hc2sgPSBkZXZfcHJpdi0NCj4gPiA+ZGlzcGxheS5ob3RwbHVnLnNob3J0
X3BvcnRfbWFzazsNCj4gPiAtwqDCoMKgwqDCoMKgwqBkZXZfcHJpdi0+ZGlzcGxheS5ob3RwbHVn
LnNob3J0X3BvcnRfbWFzayA9IDA7DQo+ID4gK8KgwqDCoMKgwqDCoMKgbG9uZ19wb3J0X21hc2sg
PSBmZXRjaF9hbmRfemVybygmZGV2X3ByaXYtDQo+ID4gPmRpc3BsYXkuaG90cGx1Zy5sb25nX3Bv
cnRfbWFzayk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc2hvcnRfcG9ydF9tYXNrID0gZmV0Y2hfYW5k
X3plcm8oJmRldl9wcml2LQ0KPiA+ID5kaXNwbGF5LmhvdHBsdWcuc2hvcnRfcG9ydF9tYXNrKTsN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3Bpbl91bmxvY2tfaXJxKCZkZXZfcHJpdi0+aXJxX2xvY2sp
Ow0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2ludGVsX2VuY29kZXIoJmRl
dl9wcml2LT5kcm0sIGVuY29kZXIpIHsNCj4gPiBAQCAtMzc5LDEwICszNzcsOCBAQCBzdGF0aWMg
dm9pZCBpOTE1X2hvdHBsdWdfd29ya19mdW5jKHN0cnVjdA0KPiA+IHdvcmtfc3RydWN0ICp3b3Jr
KQ0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHNwaW5fbG9ja19pcnEoJmRldl9wcml2LT5p
cnFfbG9jayk7DQo+ID4gwqANCj4gPiAtwqDCoMKgwqDCoMKgwqBocGRfZXZlbnRfYml0cyA9IGRl
dl9wcml2LT5kaXNwbGF5LmhvdHBsdWcuZXZlbnRfYml0czsNCj4gPiAtwqDCoMKgwqDCoMKgwqBk
ZXZfcHJpdi0+ZGlzcGxheS5ob3RwbHVnLmV2ZW50X2JpdHMgPSAwOw0KPiA+IC3CoMKgwqDCoMKg
wqDCoGhwZF9yZXRyeV9iaXRzID0gZGV2X3ByaXYtPmRpc3BsYXkuaG90cGx1Zy5yZXRyeV9iaXRz
Ow0KPiA+IC3CoMKgwqDCoMKgwqDCoGRldl9wcml2LT5kaXNwbGF5LmhvdHBsdWcucmV0cnlfYml0
cyA9IDA7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaHBkX2V2ZW50X2JpdHMgPSBmZXRjaF9hbmRfemVy
bygmZGV2X3ByaXYtDQo+ID4gPmRpc3BsYXkuaG90cGx1Zy5ldmVudF9iaXRzKTsNCj4gPiArwqDC
oMKgwqDCoMKgwqBocGRfcmV0cnlfYml0cyA9IGZldGNoX2FuZF96ZXJvKCZkZXZfcHJpdi0NCj4g
PiA+ZGlzcGxheS5ob3RwbHVnLnJldHJ5X2JpdHMpOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qIEVuYWJsZSBwb2xsaW5nIGZvciBjb25uZWN0b3JzIHdoaWNoIGhhZCBIUEQgSVJRIHN0
b3Jtcw0KPiA+ICovDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2hwZF9pcnFfc3Rvcm1fc3dp
dGNoX3RvX3BvbGxpbmcoZGV2X3ByaXYpOw0KPiANCg0K
