Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3294B3D2C
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Feb 2022 20:47:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BB610E1A2;
	Sun, 13 Feb 2022 19:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AEA610E1A2
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Feb 2022 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644781625; x=1676317625;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8/NgN+fZawhtMXseUJaznZWTFYap/DSWuYxfTqeIXwA=;
 b=P90TNyaUE60DN2QDwuhiCNY8B25wEpdVmO4MtCW9IuJfWR9J294WnCrL
 P9UDz/XPxqjltlHwteUEi0g6QQgo5MpJURr9UoIP0whs2ld2yUqJEobUv
 d6epLAAkZQpoMnRWA8M0BvtExFQHOpfyrBR47lkHTQDgePZdVTLHU8fZn
 KhUWfhkOw7c/IhOnL1O0NRPdFJkuoT41iygv5hidW80AVZfwETMaa93Bt
 T79joO8GYYkSR2NEOZtvpqr5os5ufnxOlaw3cDmOJWAc0XW1qghz8wPIA
 DP86tHS1cfsoyruZbKZ4chpliT3pyAuYr8KYDe5O6JZonAunTfHM74eV+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="336396444"
X-IronPort-AV: E=Sophos;i="5.88,366,1635231600"; d="scan'208";a="336396444"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2022 11:47:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,366,1635231600"; d="scan'208";a="634702054"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 13 Feb 2022 11:47:04 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 13 Feb 2022 11:47:04 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 13 Feb 2022 11:47:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 13 Feb 2022 11:47:03 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 13 Feb 2022 11:47:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FxZlpWG7duw6p0xNKJpNsYnvwYWahwbJf3Xo6zkglcGHkT07/tlpEOz4Xjpt27oxJo6PUuW5CjLteI8SR2F7MTRc+09chZT98UC07H8XtFJek8SH9Mx9hZ03deGmEwT9M9v56cppRYFzSAd5tMEzpkIdEFQFv9iDQKG/PpDgOZqLhDV+FUpX2Tu4oVeEQBn+4/OK6+XRMdu7B1/ruL0t0fscWi4nQM+k3nAf4t2QwfNGE2JeOXnqb5jOOI+VgOu3oqfpbqQEPiiKmA2Dja31Z6AqWkZwRuYaxak/hGK6KfTN8L/BM4uC/1lzveW+1mvIBeMXRcPtvl4Yv8F4GhqG4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8/NgN+fZawhtMXseUJaznZWTFYap/DSWuYxfTqeIXwA=;
 b=j8DpETPDdam64/ygQo1AM56LrPG9DlteYpb1H1vXmZ2Z3Gd5G2i1gZ7Y38+svyqUEqKTSelXoR55HInYuWJmz07cozI2LI4UrhQk9B4e6z389ppguNKNaUYNdZ7bTtGduU2q8+viyARgSj8zBd0mhjQS9KCndG5N6qLNkkSmZcNm4hL7QjTKaGRRMRfbXCqUgj36XydwP8heC8OoTemitrFEN0/BgwVYi7zdkaz4RNIchL5pVgeli8xTWnmvfhH+MRKUYON2Vc4pppaOlUPc6DTqKIRBoXCosR7zdMTLadFox8N7QUL6LW1QwElU7UCQK71BYtkY+CKeFNdAowxBEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM5PR11MB1386.namprd11.prod.outlook.com (2603:10b6:3:11::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Sun, 13 Feb
 2022 19:47:01 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::20ea:e883:512e:a34a]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::20ea:e883:512e:a34a%4]) with mapi id 15.20.4975.017; Sun, 13 Feb 2022
 19:47:00 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 07/10] drm/i915/guc: Extract GuC error
 capture lists on G2H notification.
Thread-Index: AQHYEqH6rw9MBE6CQEaFD5H32WQeBKyNqlCAgARV74A=
Date: Sun, 13 Feb 2022 19:47:00 +0000
Message-ID: <df189b62fad353301c33ea2c37fba1391e11a6d7.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-8-alan.previn.teres.alexis@intel.com>
 <20220211013629.GA34157@unerlige-ril-10.165.21.154>
In-Reply-To: <20220211013629.GA34157@unerlige-ril-10.165.21.154>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc0e18f3-425c-4a89-c2a7-08d9ef299a22
x-ms-traffictypediagnostic: DM5PR11MB1386:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB1386D39ED6FF410AE645C87D8A329@DM5PR11MB1386.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JQpb0wzwQmHag8njNHYeVUMMeaTVj5ewwBGG53E1r4yWTUlCEc81keYr6Rc+YHXr9UwAwJks0MYWGxMbk06R7rhd4c2FATlmv3Jfz82sMxMfk1I7BMVVDQVAlteUx4Qi7vi53dNmhmna+oduEMKr5Zm5c9dQTQVNG1pPhnSP/3UMrkAu4iKKfwr7v3GEInRmjJdyd+ty1HVHAqZY2N6k7IoQ7SWEUSaoVdylA7eZ5t8m6O31q3CDLMeNh6vE++xAigrTGNN1l/isdnX8f2ILnaQo0SXFNSVghFkAnSN1gh3fowCbnVa9L/mWbURssEkxVsu0wKoGnCL8rwi37bISY7RNCgQWNEYMYz7/fiqsrg7BVkANTa5XAUdEBMighNBA2OXcWyfCAWyZM12H9yNHxEBlDZAhWdhlmkEfKsLy+OjHU6G4Tzy6693jiq4R8QU+32YgS9QInVDlcGBb3asUYc6v9a9yh6KVTdl3bqzPKZiZi+ATY2wa8doo5NT76tdT1gtgOV2FhHEUEebP3zw6Wjgtrre7/PTLbXWXMbclSCP2QFu8+g3D0jiOtWJ3GVSeqgvBHLE7KRLX530N+QncU/xIignF7Yyzsejlw2cphztzLq5S9QLYzKzvBuyNocYysWAq/5QefaeZaT7XzAttAQ7SgKOxoEj51g1fLrt+im86SjCUY1gWkU3W86/nyDamDTMmnFyFZ5bhxUTn1Df2eg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(38100700002)(86362001)(122000001)(8936002)(186003)(26005)(508600001)(82960400001)(2906002)(6512007)(38070700005)(6506007)(71200400001)(2616005)(76116006)(66446008)(66556008)(36756003)(6486002)(6636002)(316002)(37006003)(66476007)(6862004)(8676002)(4326008)(66946007)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OUE2azgxUElMQUE2dDFJbUNiUU5lRHp2Z24vMHNZUjRYU095UUVxNGtmMmor?=
 =?utf-8?B?Y1I2TlVyTHE2VTVkbTQ5Q3pHbWIwcFNPM1kzVzJkU0VCN1R6NXRybDExOHpQ?=
 =?utf-8?B?ZFNRYmZpbG1UUWtuUFlOL3NiLzhibXNTNWcrb0paWUNqWVVmdmZRS20vK2Za?=
 =?utf-8?B?dTRjZEZqcGFrVUZEakNtemRxUytueHJoQTlZZzIrdzdoZ1FsT3l2NlZ3TWdY?=
 =?utf-8?B?a0I5cjVRK1VJWEQ3RFpZWXo5d0xheGlCUHgzVkNESG1kc2dxa3VGVGVDTEdQ?=
 =?utf-8?B?cTBoVWFBeURKL3hGQlRiOVEwQmRXaC92UkJkUEhSSThLejJjUlFMK1NFYktU?=
 =?utf-8?B?NFdJdSszblpPM0orcWhSSk8vRmw3TEd1cTFPeHpqSnFYODFLT254T0N5aXBN?=
 =?utf-8?B?WUtaTGNkTDRqeFBIc2V0OTNvOE9jZnFsNWpPY3JDbVVoYmZnTkY4QnJoa2xr?=
 =?utf-8?B?Vkg4bDQxanYxRGp6U1UyQmFqWU1HT0lMbDVub1lkWlo2eW1zd1U5T1pwdDhK?=
 =?utf-8?B?ZytWZUg3WGVWbWg2Vk1QUGhDZ0dkNWRHZXpXc1BXNjJkN3BKQmNvWU1MZ3U5?=
 =?utf-8?B?dThTVzV0NGJKUVJsdmlLMjFxczJjWHpCT3VNcnNnVzJvWjN6MEttRFlRT2dm?=
 =?utf-8?B?Z3ZPU0tBTHR2aUVUWE5vTzZuc1NWN04rN29QYkM4ejU2UUlzalU2Q01Td08w?=
 =?utf-8?B?RklRb21mUGVabitXWExYSEg3NDhZVGxmN21OR3V2ZmVGTFpJYVRSQmlLQjNT?=
 =?utf-8?B?WjlLLzQ1R0Nnams5WDFBR1ZiKzZCeVdhU25JMEcvZkFaRUR1ajRXUUhNa0Js?=
 =?utf-8?B?Q2VoY2VxOVNxZkpCTXRUQVhaZjRZUzVKV3BVTnJsR1VJOXdpSXMyczNMQVht?=
 =?utf-8?B?VllVa1pvazNrVjNjZzBRSHU1TnRvVVhqT0ZCUk8wZUdFdkFnVVNTdzVMcDdL?=
 =?utf-8?B?VG4rZ0d2TnF3cTVjZmRzWDRXUjRNMkc4MWg5SUI0WWhrUHNNSnUzV1ZQVVU4?=
 =?utf-8?B?V0ZHMitaKzdmMWk3TFZidXR0SCtNcEkwLzR1UnplNGdFeHYzY0l5RXFwbjh4?=
 =?utf-8?B?WDFORnRTdW5CWUtCdW4xcDRXbGljZ3JULzViVVhsQThmdjVQVUE1Y2JZTUox?=
 =?utf-8?B?M21iODM2T2hsYTFYZExzYmVnOUpPT0pBV1IxeWtkS3BmQ2RwM2NBaWRqQUpn?=
 =?utf-8?B?ZDBENkowbmtSVnlGK3VNY2dMaVBWLzFTczEyUzVObURBTlNRMjRIWE0zZ3FO?=
 =?utf-8?B?d3RLYnZIVFQwdDc4T3dycjZ6emtuRzRTN1o0SXV2TjM4ZnVqZ1ZJNEZ2dUkx?=
 =?utf-8?B?b2VmVHNaelBwdDg5bWh5KzJVSUxlL0dsMUhwb0lGem5xYUprS3Z0TTNMZ3Fi?=
 =?utf-8?B?bmdtZXBNTzgvTjlROXU5Z3kwYVNJZUQvWW0zZGFVUU5oZjJ0WWtGRWlpT1FP?=
 =?utf-8?B?V2dQeGdDMW82bmxrZW1SbEY3RzYyRTVHWmxhbjFpMkV1dVN3SlB0dmRnWHlr?=
 =?utf-8?B?d0VXT1g2aDEwOHhZdXoxRE0xVWVJWEowQzRJd2dEdnVhUDJ1Ykl0UnNCeWdC?=
 =?utf-8?B?c1dhU0xXRW5kc0pYVmMrNi9GejViYVViYTNtZ1BuTzZXdXBZKzlyZGpKUHdB?=
 =?utf-8?B?SXlJcHZMUEh3dmpFQUxVcEF6TmF1STVCU1h6QnFWdUJtV0tFNXdiK3FFdk5Y?=
 =?utf-8?B?N0tOYURBdmlHOHhIYmJibDFEbjZzWGhqYTNWRFZBV0VERHNnZHNLa1JKejJD?=
 =?utf-8?B?OHFNajBWcEp0a0JPYWNvblp4cExFenBFalZnWjF2Z3A0WmNZbGRtV1picGxB?=
 =?utf-8?B?b3l6Y05zVHA2MUVJbkwvczVSMGRtNXFjSVFXLzFINSt2akUxU0ViaVNMWW45?=
 =?utf-8?B?Vko0UWMzYUNBU1c4WGE0ODIyUWYyMEVlcTMrY0JzMXd4dDh2N0hTNUlzUTE0?=
 =?utf-8?B?b0FHN09vbnJNSUsxMktKTlNQMi85NUNLV1JrbkYvd3VKdVRiWndLOUplNkNT?=
 =?utf-8?B?OHVMZnp0YktXNlNKLzF4VTZrZURJTTVBcFVQS1d5UGNpU0E3enhybXE3Wk1s?=
 =?utf-8?B?NnVhT1RpWk1MWlFrdHJGczFOZnhBT0V2TWN4WVp1WTQxdEdibndKY1pWTEdv?=
 =?utf-8?B?ekxBajB6ci83empJemo0ZzhHaHNEVW9QQTZsM3BMajJVRWdDL0ZyY1FjTHhX?=
 =?utf-8?B?aUoyWlhHNGlrZ3lVYkQraWhqRmdoMVg2eUZxVE1EdWt2c21LOFF4ZTBoSlM1?=
 =?utf-8?B?Q1JRMnZPd1ZoSHo0QXFZSkxLelVmZ2dONkowdU8wbHMwcVBSU2FQK2htdzl0?=
 =?utf-8?B?V29OVWExUWdlTFgvOHdvYjJZRm8zcWpJcHk0L29yMlBZdlVLMVBmdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <48BA0618669B1F48B8E9BEC1404CFD9B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc0e18f3-425c-4a89-c2a7-08d9ef299a22
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2022 19:47:00.5021 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B7nw2ezZ6BeARq70Q4r3EPN4weLeUqOKXpGy9NlOD9EpWDSitbSKaAFDvwdO2TcNNQ41Hw3XYSMux0SEoRrdv90kzK23hP1kuOJn6+78zrfr+JwDqtk4hSi4FzAGAblA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1386
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915/guc: Extract GuC error
 capture lists on G2H notification.
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

VGhhbmtzIFVtZXNoIGZvciByZXZpZXdpbmcgdGhlIHBhdGNoLg0KQW0gZml4aW5nIGFsbCB0aGUg
cmVzdCBidXQgYSBjb3VwbGUgb2YgY29tbWVudHMuDQpSZXNwb25zZXMgdG8gdGhlIGxhdHRlciBh
bmQgb3RoZXIgcXVlc3Rpb25zIGJlbG93Og0KDQouLi5hbGFuDQoNCj4gPiArZW51bSBpbnRlbF9n
dWNfc3RhdGVfY2FwdHVyZV9ldmVudF9zdGF0dXMgew0KPiA+ICsJSU5URUxfR1VDX1NUQVRFX0NB
UFRVUkVfRVZFTlRfU1RBVFVTX1NVQ0NFU1MgPSAweDAsDQo+ID4gKwlJTlRFTF9HVUNfU1RBVEVf
Q0FQVFVSRV9FVkVOVF9TVEFUVVNfTk9TUEFDRSA9IDB4MSwNCj4gPiArfTsNCj4gPiArDQo+ID4g
KyNkZWZpbmUgSU5URUxfR1VDX1NUQVRFX0NBUFRVUkVfRVZFTlRfU1RBVFVTX01BU0sgICAgICAw
eDENCj4gDQo+IE1BU0sgaXMgbm90IG5lZWRlZC4gU2VlIGJlbG93DQoNCkFsYW46IE9oIHdhaXQs
IGFjdHVhbGx5IHRoZSBtYXNrIGZvciB0aGUgY2FwdHVyZSBzdGF0dXMgaXMgMHgwMDAwMDBGRg0K
KGFib3ZlIGlzIGEgdHlwbykuIEknbGwgZml4IGFib3ZlICBtYXNrIGFuZCBzaGFsbCBub3QgY2hh
bmdlIHRoZSANCmNvZGUgYmVsb3cgYmVjYXVzZSB0aGUgdXBwZXIgMjQgYml0cyBvZiB0aGUgZmly
c3QgZHdvcmQgb2YgdGhpcyBtc2cgDQppcyBub3QgZGVmaW5lZC4NCg0KLi4uDQoNCg0KPiA+ICtz
dGF0aWMgaW50IGd1Y19jYXB0dXJlX2J1Zl9jbnQoc3RydWN0IF9fZ3VjX2NhcHR1cmVfYnVmc3Rh
dGUgKmJ1ZikNCj4gPiArew0KPiA+ICsJaWYgKGJ1Zi0+cmQgPT0gYnVmLT53cikNCj4gPiArCQly
ZXR1cm4gMDsNCj4gPiArCWlmIChidWYtPndyID4gYnVmLT5yZCkNCj4gPiArCQlyZXR1cm4gKGJ1
Zi0+d3IgLSBidWYtPnJkKTsNCj4gPiArCXJldHVybiAoYnVmLT5zaXplIC0gYnVmLT5yZCkgKyBi
dWYtPndyOw0KPiA+ICt9DQo+IA0KPiBJcyB0aGlzIGEgY2lyY3VsYXIgYnVmZmVyIHNoYXJlZCBi
ZXR3ZWVuIEd1QyBhbmQga21kPyBTaW5jZSB0aGUgc2l6ZSBpcyANCj4gYSBwb3dlciBvZiAyLCB0
aGUgYWJvdmUgZnVuY3Rpb24gaXMgc2ltcGx5Og0KPiANCkFsYW46IG5vdCB0aGlzIGlzIG5vdCBh
IGNpcmN1bGFyIGJ1ZmZlciwgc28gSSdsbCBrZWVwIHRoZSBhYm92ZQ0KdmVyc2lvbi4NCj4gc3Rh
dGljIHUzMiBndWNfY2FwdHVyZV9idWZfY291bnQoc3RydWN0IF9fZ3VjX2NhcHR1cmVfYnVmc3Rh
dGUgKmJ1ZikNCj4gew0KPiAJcmV0dXJuIChidWYtPndyIC0gYnVmLT5yZCkgJiAoYnVmLT5zaXpl
IC0gMSk7DQo+IH0NCj4gDQoNCi4uLg0KDQo+ID4gK3N0YXRpYyBpbnQNCj4gPiArZ3VjX2NhcHR1
cmVfbG9nX3JlbW92ZV9kdyhzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIHN0cnVjdCBfX2d1Y19jYXB0
dXJlX2J1ZnN0YXRlICpidWYsDQo+ID4gKwkJCSAgdTMyICpkdykNCj4gPiArew0KPiA+ICsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsNCj4gPiAr
CWludCB0cmllcyA9IDI7DQo+ID4gKwlpbnQgYXZhaWwgPSAwOw0KPiA+ICsJdTMyICpzcmNfZGF0
YTsNCj4gPiArDQo+ID4gKwlpZiAoIWd1Y19jYXB0dXJlX2J1Zl9jbnQoYnVmKSkNCj4gPiArCQly
ZXR1cm4gMDsNCj4gPiArDQo+ID4gKwl3aGlsZSAodHJpZXMtLSkgew0KPiA+ICsJCWF2YWlsID0g
Z3VjX2NhcHR1cmVfYnVmX2NudF90b19lbmQoYnVmKTsNCj4gDQo+IFNob3VsZG4ndCB0aGlzIGJl
IGF2YWlsID0gZ3VjX2NhcHR1cmVfYnVmX2NudChidWYpPw0KPiANCg0KQWxhbiA6IFRoZSAiZ3Vj
X2NhcHR1cmVfbG9nX2dldF9bZm9vXSIgZnVuY3Rpb25zIG9ubHkgY2FsbCBhYm92ZQ0KZ3VjX2Nh
cHR1cmVfbG9nX3JlbW92ZV9kdyB3aGVuIHRoZXJlIGlzbnQgc3VmZmljaWVudCBzcGFjZSB0bw0K
Y29weSBvdXQgYW4gZW50aXJlIHN0cnVjdHVyZSBmcm9tIHRoZSBzcGFjZSBiZXR3ZWVuIHRoZSBy
ZWFkIHBvaW50ZXINCmFuZCB0aGUgZW5kIG9mIHRoZSBzdWJyZWdpb24gKGJlZm9yZSB0aGUgd3Jh
cC1hcm91bmQpLiBUaG9zZSBmdW5jdGlvbg0Kd291bGQgcG9wdWxhdGUgdGhlIHN0cnVjdHVyZSBk
d29yZCBieSBkd29yZCBieSBjYWxsaW5nIGFib3ZlIGZ1bmMuDQooTk9URSB0aGUgYnVmZmVyIGFu
ZCBhbGwgZXJyb3IgY2FwdHVyZSBvdXRwdXQgc3RydWN0cyBhcmUgZHdvcmQNCmFsaWduZWQpLiBU
aGF0cyB3aHkgYWJvdmUgZnVuY3Rpb24gdHJpZXMgdHdpY2UgYW5kIHJlc2V0cyBidWYtPnJkID0g
MA0KaWYgd2UgZmluZCBubyBzcGFjZSBsZWZ0IGF0IHRoZSBlbmQgb2YgdGhlIHN1YnJlZ2lvbiAo
aS5lLiBuZWVkIHRvDQp3cmFwIGFyb3VuZCkgLSB3aGljaCBjYW4gb25seSBiZSBkb25lIGJ5IGNh
bGxpbmcNCiJndWNfY2FwdHVyZV9idWZfY250X3RvX2VuZCIuDQoNCi4uLg0KDQo+ID4gKw0KPiA+
ICsJLyogQm9va2tlZXBpbmcgc3R1ZmYgKi8NCj4gPiArCWd1Yy0+bG9nX3N0YXRlW0dVQ19DQVBU
VVJFX0xPR19CVUZGRVJdLmZsdXNoICs9IGxvZ19idWZfc3RhdGVfbG9jYWwuZmx1c2hfdG9fZmls
ZTsNCj4gPiArCW5ld19vdmVyZmxvdyA9IGludGVsX2d1Y19jaGVja19sb2dfYnVmX292ZXJmbG93
KGd1YywNCj4gPiArCQkJCQkJCSZndWMtPmxvZ19zdGF0ZVtHVUNfQ0FQVFVSRV9MT0dfQlVGRkVS
XSwNCj4gPiArCQkJCQkJCWZ1bGxfY291bnQpOw0KPiANCj4gSSBhbSBub3Qgc3VyZSBob3cgdGhl
IG92ZXJmbG93IGxvZ2ljIHdvcmtzIGhlcmUgYW5kIHdoZXRoZXIgaXQgaXMgDQo+IGFwcGxpY2Fi
bGUgdG8gdGhlIGVycm9yIGNhcHR1cmUgYnVmZmVyLiBJcyB0aGUgZ3VjIGxvZyBidWZmZXIgb25l
IGJpZyANCj4gYnVmZmVyIHdoZXJlIHRoZSBlcnJvciBjYXB0dXJlIGlzIGp1c3QgYSBwb3J0aW9u
IG9mIHRoYXQgYnVmZmVyPyBJZiBzbywgDQo+IGlzIHRoZSB3cmFwIGFyb3VuZCBhcHBsaWNhYmxl
IHRvIGp1c3QgdGhlIGVycm9yY2FwdHVyZSBidWZmZXIgb3IgdG8gdGhlIA0KPiB3aG9sZSBidWZm
ZXI/DQo+IA0KQWxhbjogWWVzLCB0aGUgZ3VjIGxvZyBidWZmZXIgaXMgb25lIGJpZyBsb2cgYnVm
ZmVyIGJ1dCB0aGVyZSBhcmUgMyBpbmRlcGVuZGVudA0Kc3VicmVnaW9ucyB3aXRoaW4gdGhhdCBh
cmUgcG9wdWxhdGVkIHdpdGggZGlmZmVyZW50IGNvbnRlbnQgYW5kIGFyZSB1c2VkDQppbiBkaWZm
ZXJlbnQgd2F5cyBhbmQgdGltaW5ncy4gRWFjaCBndWMtbG9nIHN1YnJlZ2lvbiAoZ2VuZXJhbC1s
b2dzLA0KY3Jhc2gtZHVtcCBhbmQgZXJyb3ItY2FwdHVyZSkgaGFzIGl0J3Mgb3duIHJlYWQgYW5k
IHdyaXRlIHBvaW50ZXJzLg0KDQoNCj4gQWxzbyB3aGF0IGlzIHRoZSB3cmFwX29mZnNldCBmaWVs
ZCBpbiBzdHJ1Y3QgZ3VjX2xvZ19idWZmZXJfc3RhdGU/DQoNCkFsYW46IFRoaXMgaXMgdGhlIGJ5
dGUgb2Zmc2V0IG9mIGEgbG9jYXRpb24gaW4gdGhlIHN1YnJlZ2lvbiB0aGF0IGlzIHRoZSAxc3Qg
Ynl0ZQ0KYWZ0ZXIgdGhlIGxhc3QgdmFsaWQgZ3VjIGVudHJ5IHdyaXR0ZW4gYnkgR3VjIGZpcm13
YXJlIGJlZm9yZSBhIHdyYXBhcm91bmQNCndhcyBkb25lLiBUaGlzIHdvdWxkIGdlbmVyYXRlIGEg
dGlueSBob2xlIGF0IHRoZSBlbmQgb2YgdGhlIHN1YnJlZ2lvbiBmb3IgYmV0dGVyDQpjYWNoZWxp
bmUgYWxpZ25tZW50IHdoZW4gZmx1c2hpbmcgZW50cmllcyBpbnRvIHRoZSBzdWJyZWdpb24uIEhv
d2V2ZXIsDQp0aGUgZXJyb3ItY2FwdHVyZSBzdWJyZWdpb24gaXMgZHdvcmQgYWxpZ25lZCBhbmQg
YWxsIG9mIHRoZSBvdXRwdXQgc3RydWN0dXJlcw0KdXNlZCBmb3IgZXJyb3ItY2FwdHVyZSBhcmUg
YWxzbyBkd29yZCBhbGlnbmVkIHNvIHRoaXMgY2FuIG5ldmVyIGhhcHBlbiBmb3IgdGhlDQplcnJv
ci1jYXB0dXJlIHN1YnJlZ2lvbi4NCg0KDQo+IA0K
