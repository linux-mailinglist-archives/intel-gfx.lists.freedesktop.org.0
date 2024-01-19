Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE71832969
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 13:16:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A15A10EA27;
	Fri, 19 Jan 2024 12:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9537410E9D6;
 Fri, 19 Jan 2024 12:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705666567; x=1737202567;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sTUVEZP0Rso76WJH+fkVigYwq+lRny6wr2XPBjLM76I=;
 b=HPzFGyQj3mXxJZZx99zxL0/YQVuC/Qyb9418gnt4EIj6ui8xNckhZk5v
 FHQafgUcvt4DwxmKDm4utmmtMxZw7QZZBt6CvmK6BapZK/hml500sJRKx
 ca/42BmrXGs9cLHvpJ8cNqqoToNYSHeWvA5qijMa5FWxzTdSzqE+F9cl5
 HZu6tfgbzapu84HS1El0dMH86KH8sDzUrurELWwP49XQGei+K9K9TM2ps
 qJY6RfQGljAW5okPOEnBGnFmQ5xFps0a7uM0l/rfuufr2aI3uEeMxVinU
 bQ2VCvbgqV8WrZaiEiYJqx+2Qf6j4mQq0RJi7FZo9H8vh3nxSHFxJME1/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="19314372"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="19314372"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2024 04:16:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="734536799"
X-IronPort-AV: E=Sophos;i="6.05,204,1701158400"; d="scan'208";a="734536799"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jan 2024 04:16:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 19 Jan 2024 04:16:02 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 19 Jan 2024 04:16:02 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 19 Jan 2024 04:16:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l/dR4nbrAPO+Puf3Zba34hUwc8Sc5eo08NnvVwTZppEaV/IG5H4ma/aSFUXzdvdj+zkqaE5EeSXO+whKyce1TXQf98Qcb7J33zsbEtzlxg6hxis6RRh44Zs8uLuEcvmI4lmbzLXkqjY8vVRiUPdObtf3MaUiG+FDo7l+AsW4R8I9B3GV1um6Fqw8XKMNVZn0G0KWLG6D++0QUmEG6Knj7zs3BcyL8cxFiu4X3XNOm8O2hEj2c6398wV9ncMy921gfei7ipM615VWE/hUaHiNhjfbc7I4OYo06Ncel0D2+QJQDw9F3cw6jCazg6Ls5MUViwzgLLjrwHoVv4fCu9yq7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTUVEZP0Rso76WJH+fkVigYwq+lRny6wr2XPBjLM76I=;
 b=Fd4I9xtAwQ0VAnl+y0Gawj9l7RlWmMn+1CTzeVcvDKjwuQqF0q5Ffw/vQtKOuqYhNWOsuBPywohKlKZeAD7UpRlNWpPx9TD7cuANQ2B3lUtMSIEUz27s7Cencoi+T+9qWMvQb6dOkgUVpZU9/yoJvR8BNKyn0CKe1EXibP7S96dT75C+HAmAX/NyNkOLXWfmk3CFfgW36LvKzVLkG6eA9hMgFODoMDtb6NxlFGSGlQLMCesr8FeJ7d6vmyHlMym65wFalj2OH6QVwSBW2hYPHyQWAEQp817vHrlmxipTQSQmovacDw3pNKZrW14Nj3JaPj7H841zulZnSzTSuTEzpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BL1PR11MB5398.namprd11.prod.outlook.com (2603:10b6:208:31c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.26; Fri, 19 Jan
 2024 12:15:55 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca1a:739f:f7d4:866d%3]) with mapi id 15.20.7202.024; Fri, 19 Jan 2024
 12:15:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/4] drm/i915/display: On Xe2 always enable decompression
 with tile4
Thread-Topic: [PATCH 4/4] drm/i915/display: On Xe2 always enable decompression
 with tile4
Thread-Index: AQHaSiMp8OxS78D4wka01zw2rC8EkrDhDfHg
Date: Fri, 19 Jan 2024 12:15:55 +0000
Message-ID: <MW4PR11MB7054A298AC75397FFE0882A3EF702@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-5-juhapekka.heikkila@gmail.com>
In-Reply-To: <20240118152745.162960-5-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BL1PR11MB5398:EE_
x-ms-office365-filtering-correlation-id: 5fb3453c-411d-4bc6-c20d-08dc18e86309
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uRfr6DaAPrKaYAg/svEPlwjaHU/DcNI2Ce0VNsWI66SqNLTHJaESjRUhRIfFkKHYEk9vWySNjPOeiFhXSdpguEI+QxxiGJop4yjU4droILbyWklBHEXzyUFnFl0EJp8JJTtBsxLcF6TGWfYhS17MkDWSSscyyxsCJUotn4yg2toFsbMLexf0thfVKjSVhPuIxe2Yysiz9bTrRsBOzL3zAMNrwKxQT5l/Pn6igQS3r09rjt06guaC+rwr8j54msJK+h0sEHtdQQ3WUeI+SodWyHz2R4lbJgw8Ghz/MJoT/PKYk9JFgOqDDRFBi0HPYQiMF5+MggQc36cy968CccOc12/AJSl5R/VC1KkzPVsXoER33fxM0qjnhCYRAztGHyotyQU0v0V9aEviVgh5wVlLcPU7t2GFQV3vHoD5XMadE/WD9tq1x8TaofI17p1vg2lnYu/iLCPhRnGuqUroWQ/1G67bSTgTozaprI+PlGBmYycaJMLmACuUZ+xyiANjPXyQ+wfcfDIotJ/brj2Y0x4M5B9M70hIMOe6SBfudfkvVhYjp48uJPcSZ64OIe42azinbd5BQ6mPfwhdHvsDtII84qw1hpqGW4DQ/Xbq2tq9H3Pr/XD9GnUVkeEYfHp8ABCI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(136003)(39860400002)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(53546011)(478600001)(26005)(71200400001)(6506007)(7696005)(9686003)(83380400001)(2906002)(5660300002)(41300700001)(66556008)(76116006)(66946007)(66476007)(66446008)(64756008)(316002)(110136005)(52536014)(8676002)(8936002)(38070700009)(38100700002)(122000001)(86362001)(33656002)(82960400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZHRENlptL3d0enE0R1htZmxpTVhUM1prZWxlVTVsOEgya1VoWnQyU3lqTnNu?=
 =?utf-8?B?Mnp5OVVpNklRMWx4aTZJS3k3Nml3cG9zN0tRM1N6enJWMDBpWitRSXJ1UXBz?=
 =?utf-8?B?T2I3bzFWUHY4WDhvbjhpMHRGSzlEbkt1ZFI4NjRSRTJkVmJQTzBTSkVVQlpq?=
 =?utf-8?B?NVRhNmNJdGQ1Uk81YjY4aHR5Ny9EQ0FNaHQrNlMzNGFqM3VDUktJRXNDZFF2?=
 =?utf-8?B?eG8zMlhOK0ZhVElVNm5iM0lpeGhWYkNFa2pRem1DczYvSXNSMTh3NnRhN2E0?=
 =?utf-8?B?M2pMSHdtaGpvMG0wNWlJa2I0RkY5blFXRzlXTWh4RlJVbGwrMFl3MFNWZGRi?=
 =?utf-8?B?bnRyd2xCQS93WTF1UkdDU0Y4RHcwZ2g2d01WZE9TYlgzYTVBY1BnL3d2S1lx?=
 =?utf-8?B?a0tFY0ZLa09Od2g0Z1o3cmkzVnpOMm1LcStTWkdPUDA5alJUVFVpUnNnd1dT?=
 =?utf-8?B?aVdqejhUcjJkaDd0SXhBelFxU25nQ243ZFh6Z25ab1dXRFVLbTFJQnJGQTBL?=
 =?utf-8?B?WWZrdzhIeWhYcDd6dnE5YTRiN01oUWtzdzRIejlYTGIvcHBIK2dyajIzMGsr?=
 =?utf-8?B?Vk1CdVZIZy9lUlc0T1BOYldxN2QxQjN0MUl5dGU2eHpJMWVDMUx6RUxUcVdr?=
 =?utf-8?B?azVPbHB6bS9FQ2Jlb1EwMEd1VmFzY3pOOWJoV1Zaa0YxTVFqRm5qUW1EZ3Iv?=
 =?utf-8?B?NDlwMENlNEd0ZXNrUkMvMHl3NktTTXBQU2ZYUGdtTW1RVzJvL0lXNlNiS2JY?=
 =?utf-8?B?T1RwQjdseElKN2M5M25DL2dDYzVaM1dXNWhIUVVkYmtJQ2NzVkZacGpIZWJy?=
 =?utf-8?B?c3N5THcvQnBCOHRhbFpvMytZcnp1cllyai9vOVoxK0hSVnRpRm96d0hKTEg4?=
 =?utf-8?B?SHNuZzJ3TjF1YkdIWk9URmhIS2NTMUlvaGRXbmhYMTl4bEZESlZRTHRGdXYy?=
 =?utf-8?B?eWU2Q1VhTDlwWGppL21nZmlHMDU3TGsvQjZ2a0prNCtFQTZQZ0lreis1ZHlY?=
 =?utf-8?B?L1pPL2djU1NhZXRBT3ZyR09jMWJEcXptWGVhcnpTcWdYUGpZT0V1dG9kT3Y3?=
 =?utf-8?B?TlIrYzBsMFNzWktHMU5VVTBNaTFRV1IwMGczeU9IK1RLUVZNTzB3MDNRcm5M?=
 =?utf-8?B?bnBNT2ZPdHZBR1hhTTFIaFBmaWhJY3BxaCtMVEs5MzZMS2dXa0lyQVR1WWRB?=
 =?utf-8?B?UFJmWmRUQjQvQUZVbG5lblJzMUZWbHRaa3I2NGFVSC91Rm5hVm4yejJUQzNW?=
 =?utf-8?B?bVllZEdrTURZWXBld3B5Vk9CR045L3ltOS9NL2luWDBDOS9vWHlrOHFMclpB?=
 =?utf-8?B?OWdxRjdEYTdMN3RrODJoa3c2dzJramtCd3BRRnBNaE1xT21tMndMTVJueGlD?=
 =?utf-8?B?amxMMERWdzZzRGJkeTBJSUtLajhBN08rV2Z3QTk5cm9samxZNlRnd0g0YkdW?=
 =?utf-8?B?ME9JaWFZRi8vZ3FJZWIvTlE5QlkxMFVKWTgyMmdHTHVJRTUxS2tiQ3pBaENv?=
 =?utf-8?B?a2xSWnhWVE5PY1pyWUd6Z1pXVEJRRW1FejMwcndHZXpkWnpuc1RNVzVST0V0?=
 =?utf-8?B?WjliZ29nQzkxTVlFRGJmRWdLeXhWaGhjeGk0VEFJQmtmRGhmNmRSeVdyNnJV?=
 =?utf-8?B?aWdzSjBZRXhHRlFBNTB4aVN0LzMzU3RiZFppZWQvaGxIajBQS1hDdVFVZi8w?=
 =?utf-8?B?azc4SXhKckR0RGREUGlIOEZnS1A5TGFvSGttbXkwM3BoUE5VQXNKWEZ0S3Fo?=
 =?utf-8?B?QVlORUhZNnJmdXkya2dmS1hEK0Y5NnlYZDhxL2pyRnFFMlJpczJ4ZFVVcEFw?=
 =?utf-8?B?ZkJnaFlUdkQ4T29VWE9EaEhxWnV2TE9Rb3lWRFlnVVRiY2MrWFh1VkNadjAv?=
 =?utf-8?B?SlRrd0ZTdnlKVDdVQ051cVJjOW0xNVRkNWt2a2NNSXVNSlNPc2JmUU4wWFNT?=
 =?utf-8?B?U3ZtMEsvdlg5ZUJPWkpGMTd2V1pmOHI5d2ZadHRjbDVRT29VK09wdFk4amZj?=
 =?utf-8?B?YkRzdDhvTTEzR0luaFVzQm03WW1zdnpsbTZxUHg5dXo4SWZzS1JFUWhJMjJi?=
 =?utf-8?B?OWFZd0dVbGRCcm5SNGV6cFpMMmVzQlBkZ0M0LzROYzh4U1BPUisycXlrSFJV?=
 =?utf-8?Q?lKu9mET9KU3JOim0O789EUT1g?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb3453c-411d-4bc6-c20d-08dc18e86309
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2024 12:15:55.2226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jdjMZ4I7mKiu4UhLHiEz7xQRpWJx9TgE2M4xuk1hEnIzsjvYJ8ZdntsesNnKQlb214ysWPh22lVBwkZjf7NxLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5398
X-OriginatorOrg: intel.com
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEp1aGEtUGVra2Eg
SGVpa2tpbGENCj4gU2VudDogVGh1cnNkYXksIEphbnVhcnkgMTgsIDIwMjQgNToyOCBQTQ0KPiBU
bzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCA0LzRdIGRybS9pOTE1L2Rpc3BsYXk6IE9uIFhl
MiBhbHdheXMgZW5hYmxlIGRlY29tcHJlc3Npb24gd2l0aCB0aWxlNA0KPiANCj4gV2l0aCBYZTIg
YWx3YXlzIHRyZWF0IHRpbGU0IGFzIGlmIGl0IHdhcyB1c2luZyBmbGF0IGNjcy4NCj4gDQoNCkxv
b2tzIG9rIHRvIG1lLg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVr
a2EuaGVpa2tpbGFAZ21haWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgNSArKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggNTExZGMxNTQ0ODU0Li40MzIwOTkw
OTU5M2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2ts
X3VuaXZlcnNhbF9wbGFuZS5jDQo+IEBAIC05NDgsNiArOTQ4LDExIEBAIHN0YXRpYyB1MzIgc2ts
X3BsYW5lX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4g
IAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDEzKQ0KPiAgCQlwbGFuZV9jdGwgfD0gYWRs
cF9wbGFuZV9jdGxfYXJiX3Nsb3RzKHBsYW5lX3N0YXRlKTsNCj4gDQo+ICsJaWYgKEdSQVBISUNT
X1ZFUihkZXZfcHJpdikgPj0gMjAgJiYNCj4gKwkgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9S
TUFUX01PRF80X1RJTEVEKSB7DQo+ICsJCXBsYW5lX2N0bCB8PSBQTEFORV9DVExfUkVOREVSX0RF
Q09NUFJFU1NJT05fRU5BQkxFOw0KPiArCX0NCj4gKw0KPiAgCXJldHVybiBwbGFuZV9jdGw7DQo+
ICB9DQo+IA0KPiAtLQ0KPiAyLjI1LjENCg0K
