Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C7E636E48
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 00:23:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F37B710E651;
	Wed, 23 Nov 2022 23:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B2610E651
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 23:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669245783; x=1700781783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dexYLEm1galzHf4uTbJHJ/i/s4ADbRrdxkDrrMSyUms=;
 b=P2rQ0NECcowRj+uIkuZRTcuir6JDMpJWV0W4giEOzy+GXr6cqU19rw35
 VkvvrTMmVQpSYf96Iwaptipv0QM6WEQv5xZvU2TrffOV67uMD4ikUdvhu
 yh6xagpGMlNDLVufONBfEY/2P88fkCbQrWhFlNcS7J9vM2HADGEPSVX2f
 Y8kAGNsEOhXT7jWXwuGKfnGvT7PgMlFU7vWNpJTEzBEjsY8MRvl4dvmHD
 xjQ/vBELKwjIpiIqtPTFTtzCMAQv3YCwnNquIApB3rQDOdXoeTIYC8bNt
 Q5rfW5VfNStuNoKGalD1QbVvUea7tN61+LRBZt+nmDAJ7eWABFh5yJ4hU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="312876679"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="312876679"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 15:23:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636077198"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636077198"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 23 Nov 2022 15:23:02 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 15:23:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 15:23:01 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 15:23:01 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 15:23:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k9wCTvGM2iq1HmTXW9ZwVrqsLu2tw0x89+oPDtzsbYz5TVHTjBfbpOycaEouj2Hj6Y+NHPbavTXTdOS/1xDA53lZOd2QpjaLHzXWFhPYuC8YrbTKvk9MlX1IF31g+h9kHTD0TNQbw9YjaxwRM03Mbo82VmKIFGVq03xIJbsz3uQlGQnPkHv6VB8D/L94JQeah/VuUSgJ8uDVlcKhEw68fOgNQkNC8Tum7OmUKojfTr4D+R3k+ODbk11taxOPzBLeavOO/MuFMiwLKyPe/xRylW3gjT4l+XQ+aHifJgYJp4L4SPmJ/oDkuGmcJOXLEp3pI5YmEHJv/zhmaCtu6iXiMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dexYLEm1galzHf4uTbJHJ/i/s4ADbRrdxkDrrMSyUms=;
 b=PdoEZlasxyabjbSU3l9HYNrVoo7bmdwPq4MXYWStNIwR/NlUZ+WbRrUm7vcKNEe+RtVykkkUwKlXQfEhw3Xp9Qql4aj4HFcDqCtvhoNUE49L3xaxO/5Ej13ns5CI6rwp2J0f7Q++yx35R+NcjYslt+0hcSN01S+Y9FIbcTzrqVYeUBf9FbYRDfb3+MdetyC8wVmUvmTY5i5GLkDnoFg+YWY1Jx2uCbQCd7iicB6kcK2DavdL4Q+E2elIZiG/rHQYmtapB6OcI+MFx/xALNI+e75droRfJVjHQPKcmY04Zcf3nxx+Ln0Wq9akBnOAnC/XBrzojCcfoPoGORMHZ5qgDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.11; Wed, 23 Nov
 2022 23:22:59 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%3]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 23:22:59 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY+huC07hRuiUUpkeQbbJYwqcxJq5DR+AAgABuNACABZGagIAAKSCAgAA/eYCAAZM/AIAAD3YAgAAWkICAAcf7AA==
Date: Wed, 23 Nov 2022 23:22:59 +0000
Message-ID: <8c51abaf741f2761270159c1bc7fb97324fd802e.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
 <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
 <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
 <Y30NguDBLK1eoroO@intel.com>
 <9cd96cddf9904ec14cdf42ed17352a1a712abbd1.camel@intel.com>
 <b8fa83788f7df781d534b6710c429999491d6772.camel@intel.com>
In-Reply-To: <b8fa83788f7df781d534b6710c429999491d6772.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SJ0PR11MB5024:EE_
x-ms-office365-filtering-correlation-id: e5f8b3aa-3913-4ec5-ecb3-08dacda9a90b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Cn2hTE063Mt2X2/LprwdrqGXvN0xgoYpTs6NLTEGFizFIoYMRo4p1A2dK0MhzeifDtPiTTuMh5wL45jJPwLLPy922OYDIQn/0QHwp7TRPj/EW+m73IgKOfBLJcbTWuqY62v082sWp3HwtvUeZyvp6od1w+H1d2tFUVIsy9qI+RI+M2ka5+va7rrDA4tud7gSTVjxrQyaHSXOcmQT1wCX8ane9FzKv+HJwflkfGAeR3pGOT//PSO+xaxlWZ7mnWmciLRGutBLuBnuuKdl5UKLPAf8rC+wafxi+uN7J1wAOIP9FV7rn6k08cLTnZWO6WY5gr7k8E/+cPN99jQ4aWNa68UeiZjeUpeQwsjMFVXODwaCH+d6BEjIpPYkkN47injB9Ean9Q1F4K667XslhYclluFpx/PDuzo8iIbEyoN2olUqp6WS6lm/rFwhcaYk6lLQG4kX5OSMh3oVnBSc8p6xJPfVHkxRp+euAfrrZF7wxVmmmzF7qWp1DR+BuPmQrzf/2YbVSqbEcJY0i18r2qnvjwwBhRyzmTIBPm6543FfNQg4/W2+RFGrRGzMhA67snCA8sSw0V4UKh0+KCpUqLF5r8UGHoxPosBkEPiED4HEhh5qbUMG04d3o+MqwqVjARw8d79jBOZULvBwyqFBdamTYr8d2VtckRoThFxfV9gShBxQdTtKMqthDwSSEnm2M3W
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199015)(6486002)(36756003)(38070700005)(38100700002)(86362001)(82960400001)(83380400001)(122000001)(2906002)(66446008)(54906003)(8676002)(478600001)(110136005)(316002)(66556008)(64756008)(6636002)(76116006)(91956017)(4001150100001)(5660300002)(8936002)(41300700001)(4326008)(66476007)(66946007)(2616005)(186003)(71200400001)(26005)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3dGbFVydUFVRGE3RGl1Z2d4dHUxRHg0dFozbk15bVY2OXFDb3Byc2RIdmh2?=
 =?utf-8?B?dXhiSUN4WHlnSTd4TDdIbFdVMm9NbTRJZG1mWjVlcHpaVmRRNTYxR0x0RFpt?=
 =?utf-8?B?RWsxenlVU2FQTmhpeUJReGs0MlNDR0ludDBMRkR3S0RueWNMcWxKOWpTUXBm?=
 =?utf-8?B?RDdkU3FPWUM4dWM3T2tjZjJHdnc4UmQyeGsweUV1THVJWFg3SjBxVWIwdjJn?=
 =?utf-8?B?REIxSXVDZ204YTArbEV2akdpR3E2OUI3TFBWMCttZG8vSFY3MGhlNlArdUh0?=
 =?utf-8?B?WVVrM2ZaV1NOOHdzY0hkeGNtTngrQndDRUM5QkpwdUdybER5V1RFODFESURv?=
 =?utf-8?B?c2xlSE1KUG4veDgyd0pOcTl1Q1Z3ZWVGUEhYZ1l1NUtyZnRnUVJYMGJWNnJn?=
 =?utf-8?B?aXlLQys3WnREdXo2QlNVTWdURWEzbWhGYUlxZmxQMFBJTXdKMThCaVdZTnRj?=
 =?utf-8?B?a3dlRlJEdWZwaG0rbHk2ZnJqVU0rUHRHYmlDQittc25IL24yZXdKcGp4bk1D?=
 =?utf-8?B?T2lyejU4dkI3SGIxYWlPMXFmeGw1SWxiSmpGV2VuUXdBT25STUlBQXB6aWhz?=
 =?utf-8?B?SENDY2RDT2hVVk1DdG4yK2RHaTZIdGQ1eUI3ajFRTjRCSWR6R0pCTjZ6Y1Av?=
 =?utf-8?B?TWdHVzVlUzdMTWhHUFhBdk9xNGtmY0xuTWxQZUREcjVpdWlJblh0V1VjRU1r?=
 =?utf-8?B?TS9oc3NyZEYwNnVVL2JxSEdPdE10MkVPanJCeUpRTHVpSERBUE9vdjdVM2JD?=
 =?utf-8?B?ZFlwZVJFYzRIRzVoR3kzRkFGUXZqdmdHK1g2ZGcvdDhoQUJVUUsyeWpERjN5?=
 =?utf-8?B?VFlkMzlMemdQeHdXZkYvN0xuNC9MME9UREpVOVdzVW5yTHRscGlGeHpsMXc5?=
 =?utf-8?B?ZklOVEZ1OEFnRVArc3Q3Wm1La1h5S3o0NmNBaFg2cVVaZWFRNllicTl4QnNL?=
 =?utf-8?B?cXlrcDF2cFl5SENSVzFlSElEakhEaTVDSjdkN2I1bW1IeDlPa0RZZFJqdk1t?=
 =?utf-8?B?NUhWWHY0Zkt3ZGJWS0VuaDJVTlFEWmxpOE5hYjZ5RGl6dEZVV1ovMkFSbDQz?=
 =?utf-8?B?YU1NeDhTNUJwL242cWdPN3pqdXpmMmIxeXIraTJOaG1GT2JmZDJYSWFjcy9K?=
 =?utf-8?B?Qm5nV0VaNkoyS2Zta0RTVzVMeTN1NXRRL3h4RVlCeE1HMFVkUmxJaEpHS1pF?=
 =?utf-8?B?aVk1K2Ixb1JZc0hvcDZvdC9LUkVDejdidlFUVGhLMVZHWXZIVktpRTFPSnZ2?=
 =?utf-8?B?RGZXUXh1K2cvWm91NUg4aExvZGNHOS9nK1FtZkQ0Rlh5eWhGcTl3ZE0wUWc1?=
 =?utf-8?B?dFRQUEVpSHFvb096cDExRmtTZGpqNGROZStZczlWbFhSaEpkNGd0YkR6SkRL?=
 =?utf-8?B?cjNXN1ZkRVVZdFh0OE10QlpIMVdWdDJVSEh1QUYzaXpvUzFhSDlxS2lmamVz?=
 =?utf-8?B?TXBxZytyQzhSZFhLTDdBT1hyRmlHU2h5cW5FSlRidFdZbjBOYlRBZDE2ZEY4?=
 =?utf-8?B?aFdaT1FYcmRQOVdBUXFKOTV0Q0s0emgwazREWVlKVUxlUXdiVG5Xd21wQnBz?=
 =?utf-8?B?a0huNEpJOUpkU1diNVJFRk1qVFB3dHg1T2xTWFNHMGJPbnc0bWYxRUdSeFFi?=
 =?utf-8?B?Qkl4UmtKcGZ5QnhESHlZVVF2c0w5S2lEQ28wQ0VsTU9wSXArWitWRnFZVWQ3?=
 =?utf-8?B?NWJrbWI5aXBsY2Z6djVTejBOMTMxOWRlVjRkbHIvMnBkd2F4SXdyL2YzRU1K?=
 =?utf-8?B?QTF1QzlrUTd2dG1lb1pLSWxrWWthRHlJOHFnQmlUN245RXptWERqcEw5Q0cv?=
 =?utf-8?B?TmgyMExPSEQ2QndBWTVkN2pqaUk1N2lGaVdpeElzckNKWmxRY2F4dVludS8w?=
 =?utf-8?B?MFF5RWlHN2lBN2FtTGpBVUFjd3RwRVVrbUJtUTJHeUc1cG9DRnh1OTZLRnVj?=
 =?utf-8?B?aG15RnVzNm81OGg5cWhQZEQ4TGxGR0JwbDdRcURUV2dvOGVza1pvTVFNZVdl?=
 =?utf-8?B?K0QzYktrcXdJRW5kSEhnOW5Zdkh3YzhKdyt0a3RxM2hSZm5wNnFIREsrTzlE?=
 =?utf-8?B?NUVnUlpudHdnd3ZQQzUyVVZtQkN4dnJoQ3JLbm1YWUF3b1BNQ0xDclJuMEtw?=
 =?utf-8?B?U01payt1Z3d1bHp0ZHhkZndrdG03ZFpPdHUzMlJaNHVPcEtLTmFyeXpRRFps?=
 =?utf-8?Q?UuM/BPrHudJMoQjOwM6/IdI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA714C8324CDDC428391F91DE997AB05@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5f8b3aa-3913-4ec5-ecb3-08dacda9a90b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2022 23:22:59.5019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a3dxPAk/qZhXQ46XtQNYt1FkwrX9+7elfYJnBltS/qTgkSve0qqq4tXuY0MLdtbYGibssqg4KEGPWUv9DzPleT96MkQ3l52gq+Ei2cxhGnJHrR/vdKoz23pDCaO941Fs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

dHlwbyBjb3JyZWN0aW9uLi4uDQoNCk9uIFR1ZSwgMjAyMi0xMS0yMiBhdCAxMjoxMyAtMDgwMCwg
QWxhbiBQcmV2aW4gVGVyZXMgQWxleGlzIHdyb3RlOg0KPiBBZnRlciBhIG1vcmUgY29tcHJlaGVu
c2l2ZSBvZmZsaW5lIGRpc2N1c3Npb24gd2l0aCBEYW5pZWxlIGFuZCBSb2RyaWdvLCBkZXNpZ24g
ZGlyZWN0aW9uIHdhcyBtYWRlIHRvIGdvIHdpdGggT3B0aW9uMg0KPiB3aGVyZSB3ZSBlbGV2YXRl
IHB4cCB0byBhIGdsb2JhbCBzdWJzeXN0ZW0gYW5kIHdpdGhpbiBpdCBpdCBlc3RhYmxpc2ggYSBw
b2ludGVyIHRvIHRoZSBjb3JyZWN0IGd0IGZvciBweHAtY29udHJvbHMuIFRoaXMNCj4gYWxzbyBy
ZWZsZWN0cyB0aGUgY3VycmVudCBIVyBhcmNoaXRlY3R1cmVzIHdoZXJlIHRoZSBQWFAgZmVhdHVy
ZSAod2hlbiB2aWV3ZWQgYXMgYSBzZXJ2aWNlIGZvciBjb250ZXh0cyBhbmQgYnVmZmVycykgaXMN
Cj4gZ2xvYmFsIHRvIGFsbCBzdWJzeXN0ZW1zIGluY2x1ZGluZyBhbnkgd29ya2xvYWQgb24gYW55
IHRpbGUsIGRlc3BpdGUgaXRzIHNpbmdsZSBjb250cm9sLWtub2JzIGJlaW5nIG9ubHkgaW4gdGhl
IG1lZGlhDQo+IHRpbGUgKGJlY2F1c2UgUFhQIGNvbnRyb2xzIG5lZWRzIHRvIGJlIGdsb2JhbCB0
byB0aGUgR1BVIHRvIGF2b2lkIGFueSByYWNlcykuDQo+IA0KPiBUaGlzIHdvdWxkIG1lYW4gd2Ug
bW92ZSAnc3RydWN0IGludGVsX3B4cCcgdG8gYmUgdW5kZXIgaTkxNSBzbyB0aGF0IGFsbCBzdWJz
eXN0ZW1zIHRoYXQgbmVlZCB0byBjYWxsIGludG8gUFhQIHdvdWxkIG5vdw0KPiBwYXNzIGluIGk5
MTUgYXMgaXRzIHBhcmFtZXRlci4gUFhQIGludGVybmFsbHkgd291bGQgaGF2ZSBhIHBvaW50ZXIg
dG8gdGhlIGNvcnJlY3QgR1QgKG1lZGlhLXRpbGUgZm9yIE1UTCBhbmQgZ3QwIGZvcg0KdHlwbzog
InBhc3MgaW4gaTkxNS0+cHhwIGFzIGl0cyBwYXJhbWV0ZXIiDQo+IHByaW9yKS4NCj4gDQo+IEl0
IHdvdWxkIGFsc28gbWVhbiB0aGF0IGNlcnRhaW4gY29kZSB3aWxsIHN0aWxsIGxvb2vCoGEgbGl0
dGxlIGtsdWRneSBvciBuZWVkcyBhdHRlbnRpb246DQo+ICAtIHBvd2VyLXJlbGF0ZWQgb3BlcmF0
aW9ucyBsaWtlIGluaXQvZmluaSBhbmQgc3VzcGVuZC9yZXN1bWUgd291bGQgbm93IG5lZWQgdG8g
Y2FsbGVkIGVpdGhlciBiZWZvcmUgb3IgYWZ0ZXIgYWxsLWd0DQo+IGVxdWl2YWxlbnRzIHRvIGVu
c3VyZSBwcm9wZXIgZmxvdy4NCj4gIC0gS0NSIElSUSB3aWxsIGFsdGhvdWdoIGJlaW5nIGEgZ3Qg
bGV2ZWwgSVJRIHdpbGwgbm93IHJlcXVpcmUgcGFzc2luZyBpOTE1IGludG8gdGhlIHB4cCBzdWJz
eXN0ZW0uDQo+IA0KPiAqTk9URTogYWJvdmUgbGlzdCwgZXZlbiBpZiBpIG1pc3NlZCBhbnksIHdv
dWxkIHN0aWxsIGJlIG5vd2hlcmUgbmVhciB0aGUgYW1vdW50IG9mIG90aGVyIGV4dGVybmFsIGZh
Y2luZyBpbnRlcmZhY2VzIHRoYXQNCj4gd291bGQgYmUgY2FsbGVkIGJ5IGdsb2JhbCBzdWJzeXN0
ZW1zIHRoYXQgd291bGQgbm93IGxvb2sgY2xlYW4gd2l0aCBpOTE1LT5weHAgYXMgaXRzIHBhcmFt
Lg0KPiANCj4gLi4uYWxhbg0KDQo=
