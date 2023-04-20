Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3ED6E9843
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 17:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68AC510E661;
	Thu, 20 Apr 2023 15:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6DE10E70D
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 15:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682004420; x=1713540420;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=e8sT6p3Y0zpl0Yi2j/JzxO5GW2g9bEXxBmnrDeQq0ak=;
 b=EUvs937TRAkqjJo189izH5C7z8II764tBzxtjlCQsDEMIOJMWHJzWAF8
 emVsxrp1L4TDHrwdKVRTRpQzltTnM/ZjMOg1kFmw5E5O7gRUwioI6GQi8
 /eauwfngts/sMTusee25MBxI9vQZqBwFi6SwjaA+zh+y1nLs9hGWTqUUj
 lDkeO1iHPaqdJ9e50hYWTEBRTcgQ60SQKC2neiq/RFwOHwiqHQvuRPT0h
 9/gtujACINFHuVeSuV/ynA8AV9givB/vc+e9km7cNu97rvtDVe5ejeFlO
 UljTVmId/fUMWVgDvL1KvBImfJmyoUF9y9ZdjdiTRf7VUD3AxuethsjOk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344516533"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="344516533"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 08:26:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="938097485"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="938097485"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 20 Apr 2023 08:26:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:26:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:26:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 08:26:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 08:26:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bmq/cKIEYSAxbBBLFRtCRvgwHdisahYqoiNoEXysHf3LK/RhYkzPjLubsNSPqFQah7VWufmw0Dm6HH97BT/e6h7vM1D0Mz2UhNS+KHqov1JLA0Y0CipeI1RfGumIiun0yrNLRZ4m4+AS9GuhM8MhBcB1wxSuj+LYbr+Wp8FYDWyszns2StbbKnpOsRh5hXPgxTCFHSm7Ezwz+hQ2akfddsPoNkei+PqzAHW3h9dj2N91Rt+MLCh/I6eUynX+1cn8HXwA+3RQ51Puetqfy2P2d4TezQbSVVHYCk8n/yBVub2SvDoJCKaa5cSax9P3VScNlUXfCG36tGiUx/bS6w0J/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e8sT6p3Y0zpl0Yi2j/JzxO5GW2g9bEXxBmnrDeQq0ak=;
 b=TX8pz0WeiegZvRMLptFJcCJSRY2ZV6F9p1mJxrDIxAH3BFNXw20ZXaSH5M0aZMYzh86RzWjke5MmSC/F4CJT90lAq1wqbUHztdyPqTBrVkvTw4HENLmS+4GBSptBABZ6JmOrAzLQqlf24F2w7quKjKug7WpyiTnj9rFJKkbY2vUXMy9FlCWGI/3KFunzUIERxX/lnuhtOZnF3YRSUUvd294Wmx7t0AMMVuEYQ0AWuYxCx1daOO7+vFqZM+jgH60p/8ISpht0fZsGTYlZMr5wSfEebIqsc/ln/NOkAdpmKNPwjWtWcQucDzEUG9a57+jTa+yXMWJMqbFU1pFYVkD1PQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SN7PR11MB6996.namprd11.prod.outlook.com (2603:10b6:806:2af::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Thu, 20 Apr
 2023 15:26:45 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::d2ba:1911:4cd6:78c1]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::d2ba:1911:4cd6:78c1%6]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 15:26:45 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/mtl: Skip pcode qgv
 restrictions for MTL
Thread-Index: AQHZWTTyUWqwbilZ1keSYQQaYqovQ680hpuA
Date: Thu, 20 Apr 2023 15:26:44 +0000
Message-ID: <563c82cc1279c4149d8f62123aa42c7acf06b920.camel@intel.com>
References: <20230318005852.2303937-1-radhakrishna.sripada@intel.com>
 <20230318005852.2303937-5-radhakrishna.sripada@intel.com>
In-Reply-To: <20230318005852.2303937-5-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SN7PR11MB6996:EE_
x-ms-office365-filtering-correlation-id: 0cf1671a-b69d-4a39-fe6e-08db41b3a66e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PWekhxzdlUuBTYES1gqa/FV1JugXjNAKgDXAWqeId4FW0NJhUFKYHFXTLoWIFP9nkxYaS4kY1mjA0fv8+CavrAlNnu4+gzfICzBxerZYGCDItYerRJUU4tkwoJOua6ky9H5VlT7CzZ9b5QI1Bh+/8sdN41AlwBMoam0GgJ2Xtn8a/KEvLBzdxj8WInAORUIkqdM0QKqSaNNYYr2WCi/iGPXighlUAZk5kd1XO4OsCrD4Z+9g6R8EwUS+JGPWx0WLyGUSx7nX1e+u6jiwg4+ivLfFlOCdnTiswk27pybYiKcTPIajCpACeckUCAjk2PDhLZYijyIGPMIuegFU552pePLepXW4SsGInBFatQSbSXcdNeRF6Gha2XSLjTcq4qVHzOXtx4A9F2TegALYHnzf9aNyS3dy8L/Vxjo/bQtqT/CRPX37WjhcKP3d0+LqOvzaMmAjW5n5furWVWiTXZrj09hOMDzVXehvQVpfclatdDSTbQarMFJ4yDKE5RWUmaxcs/xRFDVYZ9C+vFGdgl+skn30FFYxGbJpNsEaHToxKtKbSbD2NU+LetAc12MPbempb8OmsWd00A2vQ2vawQ2ga8YN+dAsrTJWqTxF686bWvzTQ4+ODHZO7+40p3aIyZzy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(366004)(136003)(346002)(451199021)(66476007)(478600001)(71200400001)(8936002)(8676002)(316002)(82960400001)(41300700001)(66446008)(91956017)(66946007)(66556008)(76116006)(122000001)(110136005)(38100700002)(186003)(2906002)(4744005)(38070700005)(6512007)(36756003)(64756008)(83380400001)(26005)(6506007)(86362001)(5660300002)(2616005)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGEzRlBXT0dYb3dOWk82SkV4Y0JraStzVnlrN2daUEoybXlLVmg1cUg3SWFv?=
 =?utf-8?B?RFNGaUM0UjlJWmxUU1E4TTdnbHdNK09RaVNGZmQvdnpGb1hUL1VwOS9XMm5C?=
 =?utf-8?B?K1F3UzM2Z2dQc2FIempHSE8yQTMvZkFWdXVHamhmdi9NNDR5TENvaW81S2ZN?=
 =?utf-8?B?UVJPdU85RWlxWVZmcEVoajVmL1NYVzFBOTR3cExNN3JlUnBKLzhKMXdhMnMv?=
 =?utf-8?B?aG10Z0Y4VE5vcE93QlpRbnJUMHpWS1RLR1c5OUVHVWVIMGpqa2JhSTNITVZY?=
 =?utf-8?B?Y0RESXdXWnJxSitDb0JHSS9jMkVjSmxKTWhsdXZqSSt1dVJ5Z2w4THVjQ0ZG?=
 =?utf-8?B?NzJlTVl1SitPdzVVSDY2TEN1SWVqbVdLcUl4N0tIZ2N1akdzNjBQeVRsTDYv?=
 =?utf-8?B?WHhXN2dVNGhsbmlyUnAxUklKQXhRZEFXc2tvNXZlVU83c3lpbXd1djc5TWlJ?=
 =?utf-8?B?Q1hDZThVRXNLQlVzWUcyWEVVTTFYYUVvdXYxSkNCS3pRZnhDTXo2dlpuR0RS?=
 =?utf-8?B?enpVUDZnVFdVMnhKUFNYRnNaQTVlVXJ0YzVNTk9aaXp4aEgxZ1BmMUlDVUJp?=
 =?utf-8?B?MCs0Y2hKeWdxRm5abUk4elN4UUlGSVhrQTZxaTIxcEpUNGJjL1Y4ZlFwaHlV?=
 =?utf-8?B?MnhUNlE2Y0gyU3hqazl6c3hiMXBHL2JRN1l5U0M1UWZNUVhKUVkxaXVJQXJp?=
 =?utf-8?B?YkJFejlLNUhqYXNRSVZBaDdFUlFvdVQ5QllQTUs5QW9helJQQmF0eVNsZERY?=
 =?utf-8?B?RzNybU43NDVNZXdlQytPSzZ5WGwxTWxvdXVaZGhMRVFoSnlKeG1PNlNWdHM5?=
 =?utf-8?B?VEpBLyt3SXJkeTh3dzc1OVc5R3dKL2tDUFFUS2FzRjJTaWNLT29LRTQ5UGdi?=
 =?utf-8?B?U3NINTNjOFVyVEFYWnFLWnk0Z0NEQjlrbGpFNDVVaFp1R1MrbG5vSFJEaE9X?=
 =?utf-8?B?bkNHdU1WZVFCdkUza21aaWxXWTZwVG9pSkxwbXRYcEVYc20wT0szMDhCcTVl?=
 =?utf-8?B?ampIOEhIOHNLT2hzTXYxTERzSzRFdVdvcjFidk5SNmswL3NsWmkxTnFubFk0?=
 =?utf-8?B?N1lNaXUweW5YOXJrQUtKR2VtSW94OE15RmVzRDJiMkhJYWdUdkNnNHdJeFFV?=
 =?utf-8?B?K0oraTYrSnRMTldkbk5IL041b0VQa0Y1NFh3Q2poNVJBM3I1T3F6eWJoUTlj?=
 =?utf-8?B?WVFJRDZiOXV3RzQxNHN1TzN1Q2ZpUUdzay82YUtMb1RoOTZWcUMzYUV3bi91?=
 =?utf-8?B?QU1yeWNJTmdmVXdDeStrKzRxSlRobGorRWF5bExWMERVeTY5OFo1czZVUHZx?=
 =?utf-8?B?clg0TlVtN2pDWDV6MmxlRFNZOFJpbkx2emt5RVFUbnEvMkZSOFY2bnFHeDBN?=
 =?utf-8?B?UTYzVU1XaWhwOC93UUZsWWFNcGFXS0J2OVVJZTI0VzhLQS91c1ZScjBrNkpt?=
 =?utf-8?B?Wk52Q2x1MFBnTUhONFNkOXlaSU1HSGVWNDV0bTVYQTNBMzgyRGFwa3VBQm5S?=
 =?utf-8?B?R3E4b2Jhb3dDakJ3NXVpb0R1d2VqZzFWTExjRytYMks2R0FuMnFRVmduMUJX?=
 =?utf-8?B?elJBb1VGeXZEeXZhZmtDMjhlVVpOL0F5N1RPVis0eXFZYzNWeTZ1a2Vuckhx?=
 =?utf-8?B?NTltNUxXL1pFT0xIQ2c5eE9VcER0L0g5dVd1YlQ2RzAxaXovSzFQY3REdU1L?=
 =?utf-8?B?aHZiQW9Ib09aRjIwTHU5R2hMbDdzR0hLaTcxbFkwUUlRdzZvTVhtd0UvODJF?=
 =?utf-8?B?UVNCNFc4K2NpUkU3b2lnanRsTEgrWktDM1lJc2JLdTlXTWF6YjFhb2Q4bndJ?=
 =?utf-8?B?Wk1zMW92ZWtKdmJXMEl1VnRGUmMvbXFkT1FOeHhFeS9TODhNUHRnQm1uMEhm?=
 =?utf-8?B?SnRRUUtvNTV1ZkxnYzZiekRsTmNMcnNtc2ZvcWg4ekZFWHd5SEo3U2dyc2xZ?=
 =?utf-8?B?OTdwWi9YVTdlR2xtV2c1OTJHS1JON0VlQThoN2lwajgzYUFqWXFiK3JLYTFa?=
 =?utf-8?B?YTNENG9uaUw3VFZFQ0xrL1J5K3IrYks2UC8rMEQrNHNab2o5NUpKUm1GS0dL?=
 =?utf-8?B?R0hnVy81RlUzQW1aTTZIcjhrUFoweDZxcWo2eTdSWDVFZS9xdHU3VXkyRVFC?=
 =?utf-8?B?WG5Gc293eVZWV0N2eklhdXNFVkVsSGgxMFRDeGNuN0o5V0JnL2tIMHRwUXQx?=
 =?utf-8?Q?dZR3WJztOTQWLPYinS8yWKY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8C0D621AED9DC745B1AC2E3C8977713F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cf1671a-b69d-4a39-fe6e-08db41b3a66e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 15:26:45.0229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tQhWLtIYbxq50E93ux1q/ULBKz9ZWgHJC//Atsey+e7JFR2R/KLIupNbAwGxKQn7q+EkMpuSa9wg/XzRGMt4d1o0P1KVOng9qhrEzIKk11U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6996
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/mtl: Skip pcode qgv
 restrictions for MTL
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

T24gRnJpLCAyMDIzLTAzLTE3IGF0IDE3OjU4IC0wNzAwLCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3
cm90ZToNCj4gQ29tbXVuaWNhdGluZyBRR1YgcG9pbnRzIHJlc3RyaWN0aW9uIHRvIFBVbml0IGhh
cHBlbnMgdmlhIFBNIERlbWFuZA0KPiBpbnN0ZWFkIG9mIHRoZSBQY29kZSBtYWlsYm94IGluIHRo
ZSBwcmV2aW91cyBwbGF0Zm9ybXMuIEdWIHBvaW50DQo+IHJlc3RyaWN0aW9uIGlzIGhhbmRsZWQg
YnkgdGhlIFBNIGRlbWFuZCBjb2RlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5h
IFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gLS0tDQoNClRoYW5r
cyEgDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4NCg0KDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jIHwgMyArKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGluZGV4IDg3YzIwYmY1
MjEyMy4uYzI5MmU2M2JkY2JiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9idy5jDQo+IEBAIC0xNTAsNiArMTUwLDkgQEAgaW50IGljbF9wY29kZV9yZXN0cmljdF9x
Z3ZfcG9pbnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gwqB7DQo+IMKg
wqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiDCoA0KPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpID49IDE0KQ0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIDA7DQo+ICsNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIGJzcGVjIHNheXMgdG8ga2VlcCBy
ZXRyeWluZyBmb3IgYXQgbGVhc3QgMSBtcyAqLw0KPiDCoMKgwqDCoMKgwqDCoMKgcmV0ID0gc2ts
X3Bjb2RlX3JlcXVlc3QoJmRldl9wcml2LT51bmNvcmUsIElDTF9QQ09ERV9TQUdWX0RFX01FTV9T
U19DT05GSUcsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBwb2ludHNfbWFzaywNCg0K
