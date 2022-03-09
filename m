Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B00E4D2616
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 02:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D37310E201;
	Wed,  9 Mar 2022 01:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F95310E201
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 01:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646790403; x=1678326403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PuAzsntRWsEBzAf/t3dXnLH1JGaKnSD+1uPKDL/vMmI=;
 b=LJBj40rcOU8Iy+QBkFpX6vokswapyTvZ+l7xMXSQ3icgOEElKGplpVRa
 hqeTkWlkPtxfYjLU5eBKOVPA7CI4IUKeCJ/dRsZhx3/R8XZucpL1lFo6u
 YGWAmx0sccrzZH2JD/YPtOWXhoDJGIaQI4/16x/LJGWgqUXlse+PyI3HA
 1jVlqLlJ27EynAF7oDLAF1fz+n3Fn8WT9YrkBluWxDB2HoEp2F5VS/nmp
 19drekwquhO7bFccXKiokfFvjb7mfIFcULuwt2V6jBu1UY1PdJxVet0GM
 X/RrD4Pak/s/M60OmnXOli1S5bd+X2HsxqFr5p4Aiu1sRAfe+mJuTfXqM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="255052588"
X-IronPort-AV: E=Sophos;i="5.90,166,1643702400"; d="scan'208";a="255052588"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 17:46:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,166,1643702400"; d="scan'208";a="780921252"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 08 Mar 2022 17:46:42 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 17:46:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 17:46:42 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 17:46:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4E8jTB3qBIUqia78GNuFKaKcWCXl7G/PMK79riyXZDUnChMHDrzWJnZkHS4CHPz5ckWuDFzqLJc0ZZngmXt0IAafbcNgnFZLwlpOMChSaoyzav38UyQ9BZQoEHJkn50dMOfXAIzChZ+PlAFuddx9z4DZk5tProFRQ99nvYuAx5a4OUPXeWYGIwYe8S0xAd/IIpc25QXt/A6zTtQCKN4LumU1jyixhidIbD0XaLZsRS8wet5mHI4j71DOc36D/xJ0x2HvJ2+59jbLXSbdFl0EFGlUvzZuXSdl2gKi2aUK8FvH4ZU5QDhJdoeIH8WHzygHbcvTH00JTjYCWcEVAmLaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PuAzsntRWsEBzAf/t3dXnLH1JGaKnSD+1uPKDL/vMmI=;
 b=UdHFW62SkNDbwwj5tsLnDCIK354nbIi/hl8MgsAyUOoSRHAzsIejstGvq2svM6kyO4tzP/y9SLHkoagH6Vyc6BAULotVzBvwmrmSDvxnWNEBNq7iPRKrdz/HrKtT+Dzv5FZv2f6PF9wQRBemp0mOOgpHQfu7B3jqfgKlpiWVxJeiN8uCqs9bAABj7TFsUChCqkhlwsDrVmY0RGv1s1qEKRnH+cs6RQDJApTbQFtIUF3xaiai+7bcvDjFoMjO2KFEjzQijCPr4PWcX7xjTUVT2LnmAEcXxg3116ut28e7vpQGNjesUbOlAihHymlh7rWI8gA/8FLyZqI5L7YarZOjOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5290.namprd11.prod.outlook.com (2603:10b6:408:137::5)
 by BN6PR11MB1316.namprd11.prod.outlook.com (2603:10b6:404:3c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 01:46:28 +0000
Received: from BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::5cb2:8b85:7945:64c]) by BN9PR11MB5290.namprd11.prod.outlook.com
 ([fe80::5cb2:8b85:7945:64c%5]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 01:46:28 +0000
From: "Katragadda, MastanX" <mastanx.katragadda@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
Thread-Index: AQHYLsSP/ejgBQQqOkGNOJS9LQ2Ql6ytXLYAgAAc0YCACNZVIA==
Date: Wed, 9 Mar 2022 01:46:28 +0000
Message-ID: <BN9PR11MB52901044F528E28982D92C04970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
 <1715f90c-6790-cbd7-9e8f-ac371d61b5dd@linux.intel.com>
 <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
In-Reply-To: <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3362ebf9-8879-44d2-d568-08da016ea0f8
x-ms-traffictypediagnostic: BN6PR11MB1316:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB13169CE9BA532EADB51BD1B7970A9@BN6PR11MB1316.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NPp41A3WQT/p7yJKLozTzetnhvWj3S+Up/Ftym9sOi/j1OyeTGc2tgikmZrDvdcHLJD81rJ2kvX4bwJHUbMK/OlPVu+wzi6f8vWj1RLHDKB/+MuQHtGnRXtsLWD4mNJz5bJNvgQHwQw4eVs2tUnVks2Juc7Cf9TL3ke+g7HpSS2Z03uSavAierljire53dPakU/qYbYwmDrk9dl73Op+DW8F8yeynEKAtR5WMOyx2292HzjQiIikU6LY3VpS0nf/VCjWs+kJNFht+qME5Np5q1PkyckGgMPYoFlSA0e9VJZlU+kiuwjyKVu7F7g3ZoHaDu5KXZjb6S11KSr5jxFVudZ/H2UtptuZHO6kaoVPPt4PT88zS+tHIejH/hqVIgTtEjtDYFkwdhK2YF/wFPrf9/bdl3n3sKj210iFp8KBZ75i5FwhDdKHlbR7xAgNk5aEG/JwohERK7zJ6sQOSRbFfULaQ01Bl8Dhc2mtLTC86qMoozbvBrhVgjz/cFcAnfuH+PADmZyanDcOWjWFZ9NYjLNmBfuc4E9GrRcfomRiav1YWS86HAkRjmMdNxJk2/09JvtykZULb9oKLQ6GjfW5Kxr9EXrRLb8piIqIH6BomXH/u7pSbtCqvRvFKlHvC37OQiShE3dVgVSPJi1yKGvlqg4IDsGzNzEevD2r9RkoRrOAOV+C//YlaQ/BHURM3Ml9PMFI6rF1ugNLDm2GUghqUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(6506007)(7696005)(33656002)(55236004)(53546011)(52536014)(8936002)(508600001)(5660300002)(9686003)(66446008)(66556008)(2906002)(186003)(26005)(8676002)(76116006)(66476007)(64756008)(4326008)(71200400001)(66946007)(38070700005)(110136005)(122000001)(82960400001)(55016003)(38100700002)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGlKRjBSZU0yTWhLcFlzVGhObW96R1dMa29WcGM3Smtlb2hkUWxqRTFjTXFh?=
 =?utf-8?B?SlFaUVlVK2NEZjBRU2dHekRxUjRVajVlSStKU05oOHh2eEdnMHd0R0txUkRS?=
 =?utf-8?B?aU9EZ3A4aFREY0tXS3RYTTdBYWRiL003VmtaTG5RY1JzeHdxVHppK3E0MTl0?=
 =?utf-8?B?ejhRa1JaeUlwSnFheFdmRzhEM2U1Y1NUYi9pZnROcCtKZEdtNVhueXkxd2ww?=
 =?utf-8?B?dW4rTWp3WSs2Sk5HZ0tmN2dzdDMyczBXU2MxVWQxUlZCT3Y4Nlk4STdVWDB5?=
 =?utf-8?B?NDBqTnIxSERtQXd1dFVpNGx2RXlQNWZ5dnpxa0FQUy9aSzlsbDVkTlljZWRs?=
 =?utf-8?B?b0lWenE0eUdSNGZXMEczSTZwNDl4dEVJVEsySWlGQldIclVWQ1pxYW1WYkFH?=
 =?utf-8?B?VDZPaWw0YkJFcVV1TkpKendaeEorekxiSVNXYnVtdEV1Nnh0SGN0N0Y0bUVO?=
 =?utf-8?B?ci9DbHdDOCtKVWU1bGJpTjg3cDRmbTRQUnFiNk50NXhSS2tTUmZqTC9laDMx?=
 =?utf-8?B?cko1dW9Dc1pqaEpTcjh4Tk5uTzgzVWd4WHlGSjJBcm4zSVpJSm9TckZncmlO?=
 =?utf-8?B?TUd3VVNkNHlkK1EyVldYeFd5ZzdNQi9BTmRvaEhGWXpHRElzQVBSUmdUV2da?=
 =?utf-8?B?U3NQdktJZlJyZDNIYWE1YlRmb3N1ajMxLytFcHRaRnRhSVZ2b3Z2M3ZDYVNl?=
 =?utf-8?B?OGFZOFJyQUJ2a1cxZ1pZeWtpbzRBRnRja1ZCYlJGTlJTZ3MyM3piTFFkN05D?=
 =?utf-8?B?ZkVFZnBaSHRRL25tajhtdS85MU9GRGVOTEZ1VmdWVEVsUmcydEtZOUNJMEx3?=
 =?utf-8?B?akFob21mU2ZiTW9YRUpLYmREMDVFQlNscTZOdUFRNDN4Wk5zalRacEZ5dmxD?=
 =?utf-8?B?TzROeUFma0Rua1FGdXVvNk5zdml1TTlkWjRxbWU0bmp3Q3ZrSVBscTNYVEJz?=
 =?utf-8?B?aEZubWt1UUtkclF5Zk1rWnN0Kzg3YVVtRjVOcTlCWjNZV3dyanBtZVgzQ2xV?=
 =?utf-8?B?cmJYcE5EcUhxQU5SZEQ2Mjd3SkR5Z2thZ0JmeUszd1FiUmxBK29RQVR4QjZ2?=
 =?utf-8?B?RGRxbzIzeGxheWMvVzhtZlFzdzRlbVNxWGhQV2xneHl6NmozRENoOHdXQlFY?=
 =?utf-8?B?VGdIem9tSTlkbktudnFITnZhTzNGbTNKMU1TRjFuSzRaMURTRi9RZTBrSld0?=
 =?utf-8?B?THE2V1dkRThtWXFOYVl0eDBoZGhOQ3pKMCtXVTA3c2hieEFvRmtPOStEbEdF?=
 =?utf-8?B?UEs1cmV5TEZQK0ZvbWo0S2J6WkRsTzF3M2E4YkpOcThCWWhCNHlicVVvSnBk?=
 =?utf-8?B?RlZWQ0JZazVEMTJLczZzV3k2M0Rudy9sSEwwUmtQb2NXWW91VjJkcFFudTlI?=
 =?utf-8?B?VVZJdTRvUy8wampNMmJqMlBRUnBJMVZ1T1JjanV6RmZyOGxtQVo5clFmR2Mv?=
 =?utf-8?B?bFZXWmNqV3V1Mk8rR0Y1WG4rSGtFZERuNk9qK0UvL3J4amN5M1NNZ2ZBZnB3?=
 =?utf-8?B?Z21LaEU4eWc5cUFPWUlpZVRtRHhXU1YveURnbmh6T2srcGtPY1V2V2QwNTZM?=
 =?utf-8?B?cmZZRFhKWkRkYTZlL0ZuRmU1NWV4ZWZRVVRrRlFjdnZYNEcrNTVmRlovbjl1?=
 =?utf-8?B?dFRybjZWSE9GR0RxVlRZa2syeDZkV3ZXZVJVb21XVk80aXdxamJENnFuU3NT?=
 =?utf-8?B?dll6cmc5MUhjRmxtZSs4MytBQm1kQUhuclFGcmsxL3ZXUUtHem81Rnd1b0s0?=
 =?utf-8?B?eE4rQ25CcXBCMGh4TjBNREhaY0hBL3oxVlVDSTRweXV2ZEhGWWhhWkRVNmhS?=
 =?utf-8?B?REJPTFFqVXRReERGcDk5RjhIaU42ajRjcUxmTEJjSmdiK3lUdmk3Q21jaEdG?=
 =?utf-8?B?eVg3NlFKd0VHYkt3Yy9ZMjdBRmxzSVcvbXFsa0ZDS1FqL3lEZWhGSTdOaTZh?=
 =?utf-8?B?bDBSOEN5d3V0OEwybmRtVFJNT2VidWduSHliRDQ5bmFINzVTcWQ5WXVUV3BT?=
 =?utf-8?B?NThiOTNNbkM4UkEwZXF2dm9XNURIVGJZVGNHV1Rzb20yTWtyTmJzSlZRV3VL?=
 =?utf-8?B?OFVncjU2K3FHcHNoZDZXSG5sQXJwb2pqVndzVm1oSEQ0T1BOb201OXVYSGE1?=
 =?utf-8?B?S2VRNkx5NG1Ud2hlR3NYa2dGSmZIY09mdjZ0YUVzNXBYVkExZWRlZUpWU0Q2?=
 =?utf-8?B?TTREZGhka3d0bXVwQzZPME5jVENyV1Qva0tBVUxaUjE0ZFcyeTVKdUlGK1Nt?=
 =?utf-8?B?R0FxdnJSM1dpN2JoUlNVVlBZZVZ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3362ebf9-8879-44d2-d568-08da016ea0f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 01:46:28.4414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LjTN7nHy8oOG3TmXaaJbfMifYtC1nV6BKozNmuy1SELnoSKdGNxrzCqg/BH+huT52awGd0HSE2vvRT8o3qMtflNkwgIAPg5fGZFWSYQG0J8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1316
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
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
Cc: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDMvMDMvMjAyMiAwOTowMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+IA0KPiArIE1hdHQN
Cj4gDQo+IE9uIDAzLzAzLzIwMjIgMDY6MDQsIE1hc3RhbiBLYXRyYWdhZGRhIHdyb3RlOg0KPj4g
SW50ZWwgSUQ6IFBTSVJULVBUSzAwMDI0MjkNCj4+DQo+PiBBIG1pc3NpbmcgYm91bmRzIGNoZWNr
IGluIHZtX2FjY2VzcygpY2FuIGxlYWQgdG8gYW4gb3V0LW9mLWJvdW5kcyANCj4+IHJlYWQgb3Ig
d3JpdGUgaW4gdGhlIGFkamFjZW50IG1lbW9yeSBhcmVhLlRoZSBsZW4gYXR0cmlidXRlIGlzIG5v
dCANCj4+IHZhbGlkYXRlZCBiZWZvcmUgdGhlIG1lbWNweSBhdMKgIFsxXW9yIFsyXSBvY2N1cnMu
DQo+IA0KPiBzL1sxXW9yIFsyXS9sYXRlciBpbiB0aGUgZnVuY3Rpb24vID8NCj4gDQo+Pg0KPj4g
W8KgIDE4My42Mzc4MzFdIEJVRzogdW5hYmxlIHRvIGhhbmRsZSBwYWdlIGZhdWx0IGZvciBhZGRy
ZXNzOiANCj4+IGZmZmZjOTAwMDBjODYwMDANCj4+IFvCoCAxODMuNjM3OTM0XSAjUEY6IHN1cGVy
dmlzb3IgcmVhZCBhY2Nlc3MgaW4ga2VybmVsIG1vZGUgW8KgIA0KPj4gMTgzLjYzNzk5N10gI1BG
OiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJlc2VudCBwYWdlIFvCoCAxODMuNjM4MDU5XSAN
Cj4+IFBHRCAxMDAwMDAwNjcgUDREIDEwMDAwMDA2NyBQVUQgMTAwMjU4MDY3IFBNRCAxMDYzNDEw
NjcgUFRFIDAgW8KgIA0KPj4gMTgzLjYzODE0NF0gT29wczogMDAwMCBbIzJdIFBSRUVNUFQgU01Q
IE5PUFRJDQo+PiBbwqAgMTgzLjYzODIwMV0gQ1BVOiAzIFBJRDogMTc5MCBDb21tOiBwb2MgVGFp
bnRlZDogR8KgwqDCoMKgwqAgRCAgICAgICAgICAgDQo+PiA1LjE3LjAtcmM2LWNpLWRybS0xMTI5
NisgIzENCj4+IFvCoCAxODMuNjM4Mjk4XSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlv
biBDb2ZmZWVMYWtlIENsaWVudCANCj4+IFBsYXRmb3JtL0NvZmZlZUxha2UgSCBERFI0IFJWUCwg
QklPUyBDTkxTRldSMS5SMDAuWDIwOC5CMDAuMTkwNTMwMTMxOQ0KPj4gMDUvMzAvMjAxOQ0KPj4g
W8KgIDE4My42Mzg0MzBdIFJJUDogMDAxMDptZW1jcHlfZXJtcysweDYvMHgxMCBbwqAgMTgzLjY0
MDIxM10gUlNQOiANCj4+IDAwMTg6ZmZmZmM5MDAwMTc2M2Q0OCBFRkxBR1M6IDAwMDEwMjQ2IFvC
oCAxODMuNjQxMTE3XSBSQVg6IA0KPj4gZmZmZjg4ODEwOWMxNDAwMCBSQlg6IGZmZmY4ODgxMTFi
ZWNlNDAgUkNYOg0KPj4gMDAwMDAwMDAwMDAwMGZmYw0KPj4gW8KgIDE4My42NDIwMjldIFJEWDog
MDAwMDAwMDAwMDAwMTAwMCBSU0k6IGZmZmZjOTAwMDBjODYwMDAgUkRJOiANCj4+IGZmZmY4ODgx
MDljMTQwMDQNCj4+IFvCoCAxODMuNjQyOTQ2XSBSQlA6IDAwMDAwMDAwMDAwMDBmZmMgUjA4OiA4
MDAwMDAwMDAwMDAwMTZiIFIwOTogDQo+PiAwMDAwMDAwMDAwMDAwMDAwDQo+PiBbwqAgMTgzLjY0
Mzg0OF0gUjEwOiBmZmZmYzkwMDAwYzg1MDAwIFIxMTogMDAwMDAwMDAwMDAwMDA0OCBSMTI6IA0K
Pj4gMDAwMDAwMDAwMDAwMTAwMA0KPj4gW8KgIDE4My42NDQ3NDJdIFIxMzogZmZmZjg4ODExMWJl
ZDE5MCBSMTQ6IGZmZmY4ODgxMDljMTQwMDAgUjE1OiANCj4+IDAwMDAwMDAwMDAwMDEwMDANCj4+
IFvCoCAxODMuNjQ1NjUzXSBGUzrCoCAwMDAwN2ZlNWVmODA3NTQwKDAwMDApIEdTOmZmZmY4ODg0
NWIzODAwMDAoMDAwMCkNCj4+IGtubEdTOjAwMDAwMDAwMDAwMDAwMDANCj4+IFvCoCAxODMuNjQ2
NTcwXSBDUzrCoCAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMyBb
wqAgDQo+PiAxODMuNjQ3NDgxXSBDUjI6IGZmZmZjOTAwMDBjODYwMDAgQ1IzOiAwMDAwMDAwMTBm
ZjAyMDA2IENSNDoNCj4+IDAwMDAwMDAwMDAzNzA2ZTANCj4+IFvCoCAxODMuNjQ4Mzg0XSBEUjA6
IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogDQo+PiAwMDAwMDAw
MDAwMDAwMDAwDQo+PiBbwqAgMTgzLjY0OTI3MV0gRFIzOiAwMDAwMDAwMDAwMDAwMDAwIERSNjog
MDAwMDAwMDBmZmZlMGZmMCBEUjc6IA0KPj4gMDAwMDAwMDAwMDAwMDQwMA0KPj4gW8KgIDE4My42
NTAxNDJdIENhbGwgVHJhY2U6DQo+PiBbwqAgMTgzLjY1MDk4OF3CoCA8VEFTSz4NCj4+IFvCoCAx
ODMuNjUxNzkzXcKgIHZtX2FjY2VzcysweDFmMC8weDJhMCBbaTkxNV0gW8KgIDE4My42NTI3MjZd
wqAgDQo+PiBfX2FjY2Vzc19yZW1vdGVfdm0rMHgyMjQvMHgzODAgW8KgIDE4My42NTM1NjFdwqAg
DQo+PiBtZW1fcncuaXNyYS4wKzB4ZjkvMHgxOTAgW8KgIDE4My42NTQ0MDJdwqAgdmZzX3JlYWQr
MHg5ZC8weDFiMCBbwqAgDQo+PiAxODMuNjU1MjM4XcKgIGtzeXNfcmVhZCsweDYzLzB4ZTAgW8Kg
IDE4My42NTYwNjVdwqAgDQo+PiBkb19zeXNjYWxsXzY0KzB4MzgvMHhjMCBbwqAgMTgzLjY1Njg4
Ml3CoCANCj4+IGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDQ0LzB4YWUNCj4+IFvC
oCAxODMuNjU3NjYzXSBSSVA6IDAwMzM6MHg3ZmU1ZWY3MjUxNDIgW8KgIDE4My42NTkzNTFdIFJT
UDogDQo+PiAwMDJiOjAwMDA3ZmZlMWU4MWM3ZTggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDoN
Cj4+IDAwMDAwMDAwMDAwMDAwMDANCj4+IFvCoCAxODMuNjYwMjI3XSBSQVg6IGZmZmZmZmZmZmZm
ZmZmZGEgUkJYOiAwMDAwNTU3MDU1ZGZiNzgwIFJDWDogDQo+PiAwMDAwN2ZlNWVmNzI1MTQyDQo+
PiBbwqAgMTgzLjY2MTEwNF0gUkRYOiAwMDAwMDAwMDAwMDAxMDAwIFJTSTogMDAwMDdmZmUxZTgx
ZDg4MCBSREk6IA0KPj4gMDAwMDAwMDAwMDAwMDAwNQ0KPj4gW8KgIDE4My42NjE5NzJdIFJCUDog
MDAwMDdmZmUxZTgxZTg5MCBSMDg6IDAwMDAwMDAwMDAwMDAwMzAgUjA5OiANCj4+IDAwMDAwMDAw
MDAwMDAwNDYNCj4+IFvCoCAxODMuNjYyODMyXSBSMTA6IDAwMDA1NTcwNTVkZmMyZTAgUjExOiAw
MDAwMDAwMDAwMDAwMjQ2IFIxMjogDQo+PiAwMDAwNTU3MDU1ZGZiMWMwDQo+PiBbwqAgMTgzLjY2
MzY5MV0gUjEzOiAwMDAwN2ZmZTFlODFlOTgwIFIxNDogMDAwMDAwMDAwMDAwMDAwMCBSMTU6IA0K
Pj4gMDAwMDAwMDAwMDAwMDAwMA0KPj4gW8KgIDE4My42NjQ1NjZdwqAgPC9UQVNLPg0KPj4NCj4+
IENoYW5nZXMgc2luY2UgdjE6DQo+PiDCoMKgwqDCoMKgIC0gVXBkYXRlZCBpZiBjb25kaXRpb24g
d2l0aCByYW5nZV9vdmVyZmxvd3NfdCBbQ2hyaXMgV2lsc29uXQ0KPj4NCj4+IFNpZ25lZC1vZmYt
Ynk6IE1hc3RhbiBLYXRyYWdhZGRhIDxtYXN0YW54LmthdHJhZ2FkZGFAaW50ZWwuY29tPg0KPj4g
U3VnZ2VzdGVkLWJ5OiBBZGFtIFphYnJvY2tpIDxhZGFtemFAbWljcm9zb2Z0LmNvbT4NCj4+IFJl
cG9ydGVkLWJ5OiBKYWNrc29uIENvZHkgPGNvZHkuamFja3NvbkBpbnRlbC5jb20+DQo+PiBDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+PiBDYzogQmxvb21maWVs
ZCBKb24gPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4NCj4+IENjOiBEdXR0IFN1ZGVlcCA8c3Vk
ZWVwLmR1dHRAaW50ZWwuY29tPg0KPiANCj4gRml4ZXM6IDlmOTA5ZTIxNWZlYSAoImRybS9pOTE1
OiBJbXBsZW1lbnQgdm1fb3BzLT5hY2Nlc3MgZm9yIGdkYiANCj4gYWNjZXNzIGludG8gbW1hcHMi
KQ0KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjUuOCsNCj4gDQo+IFJpZ2h0Pw0K
PiANCj4gVGhlcmUgd2FzIGEgc2VsZnRlc3QgYWRkZWQgd2l0aCB0aGUgcmVmZXJlbmNlZCBwYXRj
aCBhbmQgaXQgc291bmRzIA0KPiBsaWtlIGl0IHdvdWxkIGJlIGEgZ29vZCBpZGVhIHRvIGV4dGVu
ZCBpdCB0byBjb3ZlciB0aGlzIHNjZW5hcmlvLsKgIEFzIA0KPiBhIHNlcGFyYXRlIHBhdGNoIHRo
b3VnaCBzbyB0aGlzIG9uZSBpcyBlYXN5IHRvIGJhY2twb3J0Lg0KDQpBZ3JlZWQsIGEgc2ltcGxl
IHJlZ3Jlc3Npb24gdGVzdChlaXRoZXIgc2VsZnRlc3Qgb3IgaWd0KSBmb3IgdGhpcyB3b3VsZCBi
ZSBuaWNlLCBpZiBwb3NzaWJsZS4NCg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiAN
Cj4+IC0tLQ0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8
IDIgKy0NCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jDQo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMNCj4+
IGluZGV4IGVmZTY5ZDZiODZmNC4uYzNlYTI0M2Q0MTRkIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYw0KPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYw0KPj4gQEAgLTQ1NSw3ICs0NTUsNyBAQCB2bV9h
Y2Nlc3Moc3RydWN0IHZtX2FyZWFfc3RydWN0ICphcmVhLCB1bnNpZ25lZCANCj4+IGxvbmcgYWRk
ciwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVBQ0NFUzsNCj4+IMKgwqDCoMKgwqAg
YWRkciAtPSBhcmVhLT52bV9zdGFydDsNCj4+IC3CoMKgwqAgaWYgKGFkZHIgPj0gb2JqLT5iYXNl
LnNpemUpDQo+PiArwqDCoMKgIGlmIChyYW5nZV9vdmVyZmxvd3NfdCh1NjQsIGFkZHIsIGxlbiwg
b2JqLT5iYXNlLnNpemUpKQ0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOw0K
DQpPdGhlciB1c2VycyBsaWtlIHR0bV9ib192bV9hY2Nlc3MgYXJlIGFsc28gY2hlY2tpbmcgaWYg
bGVuIDw9IDAsIHNob3VsZCB3ZSBhbHNvIGFkZCBhbiBleHBsaWNpdCBjaGVjayBmb3IgdGhhdCBo
ZXJlPyBPdGhlcndpc2UgTEdUTS4NCg0KSSB0aGluayBubyBuZWVkIHRvIGFkZCBoZXJlIGxlbjw9
MCwgIHdlIGFscmVhZHkgdmFsaWRhdGluZyBzYW1lICByYW5nZV9vdmVyZmxvd3NfdCAuIGNvbnZl
cnRlZCBmb2xsb3dpbmcgY29uZGl0aW9uIHRvIHJhbmdlX292ZXJmbG93X3QuDQoNCmlmIChsZW4g
PCAxIHx8IGxlbiA+IG9iai0+YmFzZS5zaXplIHx8DQoJICAgIGFkZHIgPj0gb2JqLT5iYXNlLnNp
emUgfHwNCgkgICAgYWRkciArIGxlbiA+IG9iai0+YmFzZS5zaXplKQ0KDQo+PiDCoMKgwqDCoMKg
IGk5MTVfZ2VtX3d3X2N0eF9pbml0KCZ3dywgdHJ1ZSk7DQo=
