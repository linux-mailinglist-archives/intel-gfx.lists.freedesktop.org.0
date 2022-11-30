Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD9B63D6E1
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 14:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84ED10E454;
	Wed, 30 Nov 2022 13:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19B110E452
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 13:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669815487; x=1701351487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jyI7J1tRfhckv1e/bpE9Z/D6qBrpJSJCFMXS40wYVWk=;
 b=EGgjH9/07kPy8llOTTFwo6pWX0XHN5UpSgW62hlPaw++q+01377V2nmw
 6mpojyuwyunk03gWngu1yu9Obb9l8PWsLj2nUc7ftSDyVamSqjHVFJWJ5
 5FNJDxLyRjeAAZ/23jlsfar4Eojfdw4uLSJ6y7p7C1on8S/zfY9YQKMdy
 9lGAwLx8rfGvM7MqHL5OBfAJO32WhygI/IgkKUR8+alMAV4ZqEHHZ5JMm
 nyZfG4CcR+tnXcvXLtLNnd/LNBWhV5e//rf96O2RDZzn/EdEwsmbOq8um
 CC3UKmS1r2SlnyEEH026vpAszngqKA7ZTmPBYJ1klT6DHz0sm8kaI26WN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="379674390"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="379674390"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 05:37:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="712812042"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="712812042"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 30 Nov 2022 05:37:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 05:37:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 05:37:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 05:37:44 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 05:37:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArJWAMoBp1/agC4HE7X75pOWMDJ64M6pHYNcqHW8pl6yKVKeJD3VbWsPGr9HsKoi1zKDwwMkQHO1l3xOpJxFsXgdYdz52u5W0BjGUMLIFugeC21IuHNQxVi7vrg73WXQK84+JxHEwqQpDE5GawzOxU0xmzioLGvN49w2Fz/Kva7I2xOr9edTrtqPR56CqDCXC08jn03XmNMmWEuQgBq9DlPJbm9FWMceZAlSk+SsYmXIMG4bmxN+2RJxjJ3e+ZCMX+1bTtRFhqOY+5eQ0WwBDG9qMw7lCxPNl9g1sFTnK1pRlvqBD6ydbNsD4lzOeNrL1QXi6er5ZvWCut1MiLsHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jyI7J1tRfhckv1e/bpE9Z/D6qBrpJSJCFMXS40wYVWk=;
 b=blF7KDQTQWE8rR+df7WhVpckzzf89HotWLAuQ/WuYDxgGpidoFt6icXd8JoW+Xwgt6ODAemr6GXwBa7TJyJnhLIzHsAleaosi8eX44w15iT8CK6obN7QUwyTEf1dKxyiycpXVWrdia5HxUZglGfwDhm6Py9NboHQbvGGJUsz+t+w7oghVnIMKh3fuGyTU/LnGHzM8exWq/gEplvccpP34BgPPBhGB97KmgifwXKTJejlOUe8HVSJbscsF7NKDC5+DnF38sZQLPfY4UYP8KEXF7+aHWlyViyQ+lLnOci5xPnO1+AtRRWTDI/AnBSocPMBL/i72EE8WeUoa8pPpZ0BBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5368.namprd11.prod.outlook.com (2603:10b6:208:311::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 13:37:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 13:37:42 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Remove CONFIG_PM dependency from
 RC6.
Thread-Index: AQHZBGOVpqj1vLWY2kmrtVAzp1Z3tq5XWlYAgAAetwA=
Date: Wed, 30 Nov 2022 13:37:42 +0000
Message-ID: <a52e97690775c651b08b0095319bcc244e939fc3.camel@intel.com>
References: <20221130022928.196982-1-rodrigo.vivi@intel.com>
 <1813a272-a6e1-9b96-1d47-92302860f5b7@linux.intel.com>
In-Reply-To: <1813a272-a6e1-9b96-1d47-92302860f5b7@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4 (3.44.4-2.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|BL1PR11MB5368:EE_
x-ms-office365-filtering-correlation-id: 67299dcb-177d-48cd-5555-08dad2d80e50
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b3ccJxJTv9ekBvNkpjws2rGndk+erOek75Z6fasmYgI7+BZSoA0XE/ZA8QS4QXoWD29rIP66Y3IyHiA+RFVPpjqsEzWA3yDPDaRbTaoVs2DKfKbTwclA4QOAVUrTH3N82RDmHvKpjS2Xmk1KwrAQs4/7xNr9txS4UPgZZsuHpu6Q47Z6fIwyFUAS3I0YsacPy6QW3+Brqb3bbFK2abviwwRXGDnyQL6fW3t31Prw1dMxhVzlVxIe2FjO3xoEh6ZHhJ9L4iqaiNsxK33eZLSVtXBebBN23yJwl1sh6rPEnV/diTHn3TKYNcILv3qG4Y+YloZIHwiV6XMt8YYhxNyIbhMf0tiQ+n6C5Bc0ina2GLiiLBPogc5ubZEasEjxIZBspu8TVB5ndjGHZ9tfb9J4Ok2nqQ5QkRBETLQOp3PXb4W8tL45OknaF3zAN7BAdcktOfJ4thbi6d3pCi6kmMQF27YcZm84g3YDkV8kopSQX5sUt8oBo9ww+6f+OLV4tq0Pbg6xnB7woUV78a1k1zkbJ/mNsimSAyi3xa+qUu2j8mFZCVf7ai2xL9lpxBdY84euf7K4kGhkctHwXztxgvNFD/IG31sGgBlsMmjB4s7gtQ1GdANn49DG+C1NUYCK/ssbrRbLQbEJJjrFzLWuQLudhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199015)(2906002)(76116006)(8936002)(4001150100001)(71200400001)(26005)(41300700001)(83380400001)(91956017)(66476007)(2616005)(6512007)(66946007)(53546011)(6506007)(5660300002)(186003)(36756003)(86362001)(8676002)(66556008)(4326008)(64756008)(66446008)(82960400001)(38100700002)(122000001)(966005)(110136005)(316002)(38070700005)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTRwWEYzSXRTdmIrSUt2YTVKSzh0U1pFSDZnbWdWdlhnaCtRcHNuLytpR3NE?=
 =?utf-8?B?MitwclhlUU1EZ2xMZnIvelhmTWZaWXRZSkhrV1ZhQmZkVkYvVjU1dzE5L2F3?=
 =?utf-8?B?aFRrRVZwSzdBclpWbG9wRWM5YzB1WmtlVUJIL0FKTFV3a2Q5dHpzLytBdnp3?=
 =?utf-8?B?enQ2aXhYUXBNUG8xWGgxV0p4dXQ1S3NSWHYyc0dXQ2ZsNlBCMlhpVVV1UTUx?=
 =?utf-8?B?anZpM1BsSEoyRkk4NkN3U0UwODBkc3dKZ2Njb0MydWhLMWpueFNtS2pOamNh?=
 =?utf-8?B?L0pSM0luV3VsYkJsMHBpV3R4Wm5pU1FYU0ZBT1ZKKzFMV2tOS3dhOVNZbDl1?=
 =?utf-8?B?N2hIMlIzUjM3SjU5ZlNheVlNOFErRmN1M05iU1drcWtJRnIrVG5oTEdpR3Zz?=
 =?utf-8?B?bURSa2cxZGh5cVM3dXgxek10VTFIL21yS0QzcHpIWkhrQ0RtQnZJRGdlVVB6?=
 =?utf-8?B?NTVqdlhNTG1vWnBaRjMreGFRSi9UMU43dXlJVlpBb0RZVXd6WFVzQ1J4VURT?=
 =?utf-8?B?Z3hqeStVb2pjdUJPejJBUW5IU0YxMWF3alltZmFQS3dEK3kvU3A3WE5VMjNi?=
 =?utf-8?B?Sm5ZdEIxdVgxOVR6N0hiYS85azRraXdIdVIwc3BLUjByZ2ZUUVVRM01XQ21i?=
 =?utf-8?B?enMxTTRaa3FSRDVmUTcwaUMxMWNwSWRwUi9jeE00TE1WakZJN1g5S2VwOThB?=
 =?utf-8?B?bmJLajM2T00yd1Q1dkRVQncwV1RKcGFsa21tdDJKM2lMaFVYQkVjOXl5ZUVx?=
 =?utf-8?B?eXZMK0ZXcjllLzV1SEVvbUxMK2VqdUQrRFFsZ2xDaGJteHNhNDBqRE1meFdm?=
 =?utf-8?B?NFFuTXNKYTRDM1VuYzZ4N0c2alVKcUJweTR0bVo1aTNBWVJqZmcvYW1NelYx?=
 =?utf-8?B?YmU1WDdCNmN2SGVKR2VraDVRUXhhdXZ4THZ3N3FETWhlWDVmUWwrc2lzZW5x?=
 =?utf-8?B?Wkw2L05DNzRvT3R6Y3J2L1pFSTJ2L3hhenh3Z0VNY0h5eXowU3c1LzM3R1Vo?=
 =?utf-8?B?STlSejlEdHEzYlpZOE0zZEtGbVQ3U1hUV051SVVJK1pqZFFWSmtxWFV3elhJ?=
 =?utf-8?B?cWVoMzN5c0JLS2F1LzFrdUovWDA1TWl5Yk1TQVk0MEl5YmNFQXJrZml1TTZB?=
 =?utf-8?B?M0dtSkgvajhNRFMwZ1R5b01VLzVraVZTNExmYWNxcmhLQVBaQnF5Zm1YckMy?=
 =?utf-8?B?N2paWDNYc2IxSUFLWGhlTFdqR3Bma2JOVmlMZUtlVTdMaU41RGRQVGJmV1lC?=
 =?utf-8?B?S3pxT2I5RWdldHBESGdkYmhJVEJMR2pDQlY0SDFtVHYzK3lCb2VLM0p0UG1J?=
 =?utf-8?B?K093anZuNmdUbHJQUFQ4dVpqclg4WmhpRHk3NmFrbGpHYUVrZ3ZLM3VmbmNI?=
 =?utf-8?B?b3VOeURlK3V6YXRkL1lIdExKTWpibVJab1FEU243bS9ELzdPMDFFWjhOcG9w?=
 =?utf-8?B?RFhwOEZub2JMQkRWRmxFTVcyd0R4a3oyOEt3N2FmcE9ETldHK2NsV203bVdp?=
 =?utf-8?B?UW9PZnpiYTN4d1lrYTlnSm0yeTVLcnlDV1p3dFFCRTZRL3VxelNYNHpmaFhs?=
 =?utf-8?B?Y2pHbEl0UHA3UnY0bnp0SmdSbU5wZGtxV2JzUVg1dDV0Zk8zZ3dVa21oU3ZG?=
 =?utf-8?B?OFpUQUwxQmZ2U0kwYzIwMER1S01ucXVKYlZkMnpXV1gyS2tOamg3TzR0eU5V?=
 =?utf-8?B?Y2xSaGhMcEQrUkJEQ2xqRXk5UlRudzI5Nld1OWlkVFgzUXMzeFdmMk1NVXFG?=
 =?utf-8?B?MlovY0tsTGxaaUpQTnRaZGdyWXF4cUFGMVlBY3VZckxKNzNJRW1rMmdLMTNJ?=
 =?utf-8?B?d3VBd3B4alVhTzcxRFhLckRhZWpmMUFjbHVKVFcrWjVKZjBxWkhyYUpwa0Y1?=
 =?utf-8?B?SW15NWhNYnBMeGtTQWNqcDVzUkk2Q0tnT1ZSMHJicVMwSGZJbHMxQUx5MEpN?=
 =?utf-8?B?Wk1WeG5DOFdvSThHTnN2Vm8wQjY0c0NXQVJtUTR3dzJEMEY2dndEUytCaW9B?=
 =?utf-8?B?ZkRvQzdLM0puY3loamxZcC94ZjJnV2hOYkVFNXRrY0NHL1lJZzMwcW5SQk10?=
 =?utf-8?B?cVNkamUySzRmbFJNNE53OEIwMlFLZysybHVrL1VWa3RzN2U0SitZNVBrMjNs?=
 =?utf-8?B?NHNCeHdKZTdPeklOOU0rS0p6UGFzU25EZmhQeTFoSjJ3OGFxR1greVRSdG5B?=
 =?utf-8?B?N0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <495BB4137525E44A9A9A5BF4A778520E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67299dcb-177d-48cd-5555-08dad2d80e50
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 13:37:42.0948 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iJiIBwKYy9RrdhzdLB1yp4rRolZaXoUMaudYY5D6B0qlsVk6vnAqpgo8GV0TtnDTrOVo0JkppD+MMRtPOfLozg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5368
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove CONFIG_PM dependency from
 RC6.
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
Cc: "paul@crapouillou.net" <paul@crapouillou.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTExLTMwIGF0IDExOjQ3ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gDQo+IE9uIDMwLzExLzIwMjIgMDI6MjksIFJvZHJpZ28gVml2aSB3cm90ZToNCj4gPiBSQzYg
aXMgYSBzbGVlcCBzdGF0ZSB0aGF0IGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSBjcHUgc2xlZXAsDQo+
ID4gb3IgYW55IG9mIHRoZSBBUE0gb3IgQUNQSSBvciBhbnl0aGluZyByZWxhdGVkIHRvIHRoZQ0K
PiA+IENPTkZJR19QTS4NCj4gPiANCj4gPiBBIGxvbmcgdGltZSBhZ28gd2UgaGF2ZSByZW1vdmVk
IHRoZSBtb2R1bGUgcGFyYW1ldGVyDQo+ID4gdGhhdCBhbGxvd3MgdGhlIFJDNiBkaXNhYmxlbWVu
dC4gV2Ugd2FudCB0aGF0IGZlYXR1cmUgZW5hYmxlZA0KPiA+IGV2ZXJ5d2hlcmUuIEhvd2V2ZXIs
IGZvciBzb21lIHJlYXNvbiB0aGlzIENPTkZJR19QTSB3YXMgbG9uZw0KPiA+IGZvcmdvdHRlbiBi
ZWhpbmQuDQo+ID4gDQo+ID4gSWYgd2UgZW5kIHVwIG5lZWRpbmcga25vYnMgdG8gZGlzYWJsZSBS
QzYgd2Ugc2hvdWxkIGNyZWF0ZQ0KPiA+IGluZGl2aWR1YWwgb25lcywgcmF0aGVyIHRoYW4gcmVs
eWluZyBvbiB0aGlzIG1hc3RlciBvbmUuDQo+IA0KPiBEaWdnaW5nIGluIGhpc3Rvcnkgc2hvd3Mg
NWFiMzYzM2Q2OTA3ICgiZHJtL2k5MTU6IG1ha2UgcmM2IGluIHN5c2ZzIA0KPiBmdW5jdGlvbnMg
Y29uZGl0aW9uYWwiKSBhbmQgdGhlbiBpdCBhcHBlYXJzIHRoZSBpc3N1ZSBjb3VsZCBzdGlsbCBi
ZSANCj4gcHJlc2VudCwgc2luY2Ugd2Ugc3RpbGwgdXNlIHBvd2VyX2dyb3VwX25hbWUgd2hpY2gg
aXMgTlVMTCB3aGVuDQo+ICFDT05GSUdfUE0uDQoNCm9oLCBpbmRlZWQhDQpTbywgd2Ugc2hvdWxk
IHByb2JhYmx5IGdvIHdpdGggUGF1bCdzIHByb3Bvc2FsOg0KaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvYXJjaGl2ZXMvaW50ZWwtZ2Z4LzIwMjItTm92ZW1iZXIvMzExNTY5Lmh0bWwNCj4g
DQo+ICQgbHMgLWwgL3N5cy9jbGFzcy9kcm0vY2FyZDAvcG93ZXIvDQo+IHRvdGFsIDANCj4gLXJ3
LXItLXItLSAxIHJvb3Qgcm9vdCA0MDk2IE5vdiAzMCAxMTo0NSBhc3luYw0KPiAtcnctci0tci0t
IDEgcm9vdCByb290IDQwOTYgTm92IDMwIDExOjQ1IGF1dG9zdXNwZW5kX2RlbGF5X21zDQo+IC1y
dy1yLS1yLS0gMSByb290IHJvb3QgNDA5NiBOb3YgMzAgMTE6NDUgY29udHJvbA0KPiAtci0tci0t
ci0tIDEgcm9vdCByb290IDQwOTYgTm92IDMwIDExOjQ1IHJjNl9lbmFibGUNCj4gLXItLXItLXIt
LSAxIHJvb3Qgcm9vdCA0MDk2IE5vdiAzMCAxMTo0NSByYzZfcmVzaWRlbmN5X21zDQo+IC1yLS1y
LS1yLS0gMSByb290IHJvb3QgNDA5NiBOb3YgMzAgMTE6NDUgcnVudGltZV9hY3RpdmVfa2lkcw0K
PiAtci0tci0tci0tIDEgcm9vdCByb290IDQwOTYgTm92IDMwIDExOjQ1IHJ1bnRpbWVfYWN0aXZl
X3RpbWUNCj4gLXItLXItLXItLSAxIHJvb3Qgcm9vdCA0MDk2IE5vdiAzMCAxMTo0NSBydW50aW1l
X2VuYWJsZWQNCj4gLXItLXItLXItLSAxIHJvb3Qgcm9vdCA0MDk2IE5vdiAzMCAxMTo0NSBydW50
aW1lX3N0YXR1cw0KPiAtci0tci0tci0tIDEgcm9vdCByb290IDQwOTYgTm92IDMwIDExOjQ1IHJ1
bnRpbWVfc3VzcGVuZGVkX3RpbWUNCj4gLXItLXItLXItLSAxIHJvb3Qgcm9vdCA0MDk2IE5vdiAz
MCAxMTo0NSBydW50aW1lX3VzYWdlDQo+IA0KPiBPdGhlciB0aGFuIHJjNiBlbnRyaWVzIEkgZ3Vl
c3MgY29tZSBmcm9tIHNvbWV3aGVyZSBlbHNlIGJ1dCBJIGhhdmVuJ3QNCj4gbG9va2VkIGZyb20g
d2hlcmUgZXhhY3RseS4NCg0KDQpPdWNoISBFdmVyeXRoaW5nIGVsc2UgaGVyZSBjb21lcyBmcm9t
IHRoZSBwY2kncyBwbV9ydW50aW1lLg0KUHJvYmFibHkgb3VyIGJhZCBkZWNpc2lvbiB3YXMgdG8g
YWRkIHJjNiB0byBpdC4NCkJ1dCB3ZSBkbyBuZWVkIHRvIHN0aWNrIHRvIHRoYXQuDQoNCg0KPiAN
Cj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiBDYzogUGF1bCBDZXJjdWVpbCA8cGF1
bEBjcmFwb3VpbGxvdS5uZXQ+DQo+ID4gU2lnbmVkLW9mZi1ieTogUm9kcmlnbyBWaXZpIDxyb2Ry
aWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3N5c2ZzX3BtLmMgfCA2IC0tLS0tLQ0KPiA+IMKgIDEgZmlsZSBjaGFuZ2Vk
LCA2IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9zeXNmc19wbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF9zeXNmc19wbS5jDQo+ID4gaW5kZXggY2Y3MTMwNWFkNTg2Li43NzMyN2VkZTE4
YWQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3Rfc3lz
ZnNfcG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3N5c2Zz
X3BtLmMNCj4gPiBAQCAtMTY0LDcgKzE2NCw2IEBAIHN5c2ZzX2d0X2F0dHJpYnV0ZV9yX2Z1bmMo
c3RydWN0IGtvYmplY3QgKmtvYmosDQo+ID4gc3RydWN0IGF0dHJpYnV0ZSAqYXR0ciwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoA0KPiA+IE5VTEwpO8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBcDQo+ID4gwqDCoMKgwqDCoMKgwqDCoElOVEVMX0dUX0FUVFJfUk8oX25hbWUpDQo+ID4gwqAg
DQo+ID4gLSNpZmRlZiBDT05GSUdfUE0NCj4gPiDCoCBzdGF0aWMgdTMyIGdldF9yZXNpZGVuY3ko
c3RydWN0IGludGVsX2d0ICpndCwgZW51bQ0KPiA+IGludGVsX3JjNl9yZXNfdHlwZSBpZCkNCj4g
PiDCoCB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiA+
IEBAIC0zMjksMTEgKzMyOCw2IEBAIHN0YXRpYyB2b2lkIGludGVsX3N5c2ZzX3JjNl9pbml0KHN0
cnVjdA0KPiA+IGludGVsX2d0ICpndCwgc3RydWN0IGtvYmplY3QgKmtvYmopDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBndC0+aW5mby5pZCwgRVJSX1BUUihyZXQpKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+
IMKgIH0NCj4gPiAtI2Vsc2UNCj4gPiAtc3RhdGljIHZvaWQgaW50ZWxfc3lzZnNfcmM2X2luaXQo
c3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0DQo+ID4ga29iamVjdCAqa29iaikNCj4gPiAtew0K
PiA+IC19DQo+ID4gLSNlbmRpZiAvKiBDT05GSUdfUE0gKi8NCj4gPiDCoCANCj4gPiDCoCBzdGF0
aWMgdTMyIF9fYWN0X2ZyZXFfbWh6X3Nob3coc3RydWN0IGludGVsX2d0ICpndCkNCj4gPiDCoCB7
DQoNCg0K
