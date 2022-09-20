Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2315BE789
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 15:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D952F10E1B1;
	Tue, 20 Sep 2022 13:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B18C10E1B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 13:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663681791; x=1695217791;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6Y9Qq45zA7JBbg9NeqbGJjPqQfEBUKC4HRJnmYADzgI=;
 b=NqUy6oMFWT0y5dUJuXN70qzKpwkEB2VERCvko7RzLwnCQkWRnZGiAchw
 p+IQPXlVl6CXExlpFns9ej89xNGDIa+QB6pNt18nRPI36sb7j9TXBA73f
 lUiD30/MqeuuniR5F1p6RuWfvbpyM+Bx7IVVihodIpBPq8Jtq+My9OguO
 s2PByFNqVPm/TreQM9DxqISJ+BbOMDUIhpDUpQI48OO3LvPJY5KiUA8HH
 8BNzMlQSpnpft8LYi9HajQmP7bKnXtNUVKM2apE7arw3faFVsKIY8km4K
 jfTTyCafzjz7TmPbMBJloFluznO/DA/z6FAbPpy69vQxebapVbJO0Ix+E Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="282726735"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="282726735"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 06:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="614398349"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 20 Sep 2022 06:49:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 06:49:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 06:49:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 06:49:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=afn+vY5B+u96fFPYldoeq8X1bvD7qVOi+Uq7nQr6nKnTuwkpjelbs0mAjmQQPu2Z1StWCRAhtlm/W9xxO3Qj/21M5lYibU58qJHPbyL9L03YAqopDDgOfxPidlJcmDaMRux85yu6TTo9YvfAgGEvByMRX8mL3EXrdFQ+EHHshWSU0Cui7l+HTGa+0uuZlEUJ0bcnBnb1WEnQpBaTcpc4RUtLcggwVxw14yKU4RculhzSd0fg9jQdkXqjHxZqGiVrjBFwM/1Vi7M8FAIyoOREQ7BtoIXcIIVe+vELlqrd5eZoqjSLEL+3Fk26gVQ+YGNGo32n5yX4WBwvM9CJWvp3VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6Y9Qq45zA7JBbg9NeqbGJjPqQfEBUKC4HRJnmYADzgI=;
 b=J+kgfeR3K7ljB5Vc9zNrSBfaRtwwO7lgqxcHDYTBGUBCjWYCjv82fmiLy6teB76dT+O+bT7QGjRYTYUntoDx01guVF7LmALn3w1XP7ADIsDRCwqgndwrJcAc2X99HKNe1kAx9O20gkVL4cVBA0MtRu0a+RYJYSgOjkBS3oba/nD+uAWTXlrxVad0BAw/zk/eyCkte8Af+B7MH76bibX5tcuLkN0ByIOFv6N/+dn/VOAwdOzdoQU306LgeLYQOMXyaAnVZcasqpJGs1Bqfq0N2d3f8oHh/IG4eGX3hBBQDLy0jUaGduwwWIiB5YjL7D2DPHqcUK/KIE1Mxp517hzo7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Tue, 20 Sep
 2022 13:49:47 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d12c:3dcb:ca31:672b]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d12c:3dcb:ca31:672b%7]) with mapi id 15.20.5632.019; Tue, 20 Sep 2022
 13:49:47 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual EDP scenario
Thread-Index: AQHYyac29ZGd8DuZJUCi+Z19SgQbwK3hwY+AgAAhG7CAAAlNAIAGZ8wQ
Date: Tue, 20 Sep 2022 13:49:47 +0000
Message-ID: <PH7PR11MB59813932FC99E7402988D620F94C9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20220916083102.18559-1-animesh.manna@intel.com>
 <20220916083102.18559-2-animesh.manna@intel.com> <YyQ6nSbIvO2WxO2K@intel.com>
 <PH7PR11MB598191FC5E2ACA27BA1CD305F9489@PH7PR11MB5981.namprd11.prod.outlook.com>
 <87r10br1zj.fsf@intel.com>
In-Reply-To: <87r10br1zj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA0PR11MB4734:EE_
x-ms-office365-filtering-correlation-id: ac3b5f5a-c9ab-4a5a-778c-08da9b0efb60
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WvXarUUXjcWuGy66LugIERVeb9Dw3aMTUvUOxE2GftjDPT+Su6shL3+KZecNueJW3gQsRLD3Xpska+bbrLy+eA0hC6ANn37Ylo6nbYJMXNKg8VCCYr0rKosfaajdVy09TnpVi4mEM27Ow1MhKpBULSAkkErR4Uf+jKau1fH+Ijmv6024SLkoYjMOT+N29z6NrI+QkPJ3zSUNij63tQaUIlgRv9ABjhHenoR6li9WbAM9CnpONCt681sjlDKO1zxnEfKHYSYLhmfJ40EkhLaiPFBh3Cj2jta3Sxq0GORKOrXqY3iS6SuVAFS3QamltxN3uTKJ5JVHIVWGycFmMpKYRRvGM2OaaMQXacgVE17kl8DsGkwuLOoOndBQOsJMkWOiP7XGX9P32QpjKgoiBDatzAF9tF8Rh94FhYyKv+EI+i/EG+M6jH2Hxko69sLb7UdCVa19+cQX6M6rxB3k/0MjbiJvEorGyuIBMuMkuWa3v5s3JovCBIDMp2CCVvgvkMgI2l7vS9iejdJGT3Ktyp7XMmx4S3UtpPWSmBYxEP1Pp0JTXZIXvaLIJka5pVJvX6jWutkEIMXbdes4Pvk0l9qzIk9hKTvMR0ineX9Ih4V9licq+eCfPim5eauPJ4ewLTqqmLeFwt23aFlKtauEN93ET877uF/3sgB6neKI+zKTWLL3JmaaSPczB1JusLp4T87Y0PhMeGkZXSDNGmAWxQ8FPg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(136003)(366004)(39860400002)(451199015)(186003)(7696005)(83380400001)(6506007)(53546011)(9686003)(26005)(86362001)(66946007)(66476007)(66556008)(64756008)(66446008)(55016003)(52536014)(5660300002)(8676002)(4326008)(76116006)(966005)(478600001)(41300700001)(71200400001)(122000001)(54906003)(110136005)(316002)(82960400001)(38070700005)(8936002)(33656002)(38100700002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eC9OTEdrNytoNnJpc3NFRG5yUlVuOEp2NG9XTWtudXlCZHRoM000elROZ1VM?=
 =?utf-8?B?QW9SeWhiVGpoOFhrdng5dXRkY3pUVmVmOXNjMWJFbUdVWmxoK2w1MDFIR1Br?=
 =?utf-8?B?ZU5mZ1d0dTNMcWE1cis2em5CVytkZ1F4L01rRGdnMjYrSFUvOHgyTXl4Vk05?=
 =?utf-8?B?ZlE2QjRoQWE1azhocnpWQkdia3I0SzNOK04yYUF6U1J0Y3hvWFYrdUI3bzla?=
 =?utf-8?B?VXdoMU95RzBKRXJmZmhTeXJ2SC8vNjBxTnY3TWZ2dThSYm5NVFZlM2p2S1ZX?=
 =?utf-8?B?dVVVVE56R0xkRXlia1ArZjJHRktyaVZtN1lDdURBdXRDZG90bDRYS0ZpVlBS?=
 =?utf-8?B?NGFyajJIa1lyTktyU2pSYW5EamtkSjhwS1BSSmt1MFE1RGYvd1ZINkJjQklX?=
 =?utf-8?B?Zm1OKzVXOHM3WmQyMTJrbUd2V1dmUllEQWRwcEk2SDVLRGxOVHZJSWYwcTBW?=
 =?utf-8?B?UDdYb2w2YzA1dEZZUnBKR0dWdjBoeUg2dlJ2UWFuOTc0Q1p1K2VFL0JRVGlK?=
 =?utf-8?B?bXp5akxXczlyZTZ5eUZ4Q1cxSzJ3NnkrVHV5ZGJXZ2d3bFJTM1hZZTN3TG1O?=
 =?utf-8?B?REcvMkxlNCthN1VtaFNOeFhXaUpka1NCQnA2L1Jnc3E1dExXSXZuaEF4RFRh?=
 =?utf-8?B?TElibDFRTWlYZ1ZZSGgrUWxmNHQyeWV1ZFF3QVEyMFROcm9ndkRWelpqWnpj?=
 =?utf-8?B?Y0ppNzBqd2hPY25LM1JiVnZyeHRnMTd4YXFTbXJVcDNkd2tkZ1lneU1IVGNx?=
 =?utf-8?B?MURoMHFienlOSXIvVkl5U29CRldTUVp2YWNXQmNSVkpPMWlWRG5GbzJhUDVw?=
 =?utf-8?B?ZzdHbkdSUzFZeTEvcXkrRjc4UUs1a1Q1dVkxU3hLYTdtSE55VXVvZDFZdU1J?=
 =?utf-8?B?UWxZVkF3ZEpwdDhQWWVSSHRjbXg3cis4bHhSdHBJYUt4aENnREZyNUtpZDFR?=
 =?utf-8?B?Mms0aG5GRHhqRlpLdGtESVpKSVcyUXo3U3h4c3Q2b0wyRFRUSmF6UFhMeU5a?=
 =?utf-8?B?VDZ0MGxZd0R0ZGRxTytHcXMrUEpoRTV2N1BYWk9TMFo4R21oYTgyWG5KMlNs?=
 =?utf-8?B?V3J2c01rMUk4QzdtVnNFM01rNlI2WFVnV1Q3Mit5WVdXMGp0c082dmZLa1V4?=
 =?utf-8?B?Y1NOeGV4eVg4WEloR0VLNURNSVB5RlJ6djFyMjJMeTgwK2FHbDlDMXBqZ25Q?=
 =?utf-8?B?WmJWbElBNGhkd2t4YjlidGJzamlsT2Q3SUc4YVp3OXB5TzhCdFJ3dGNCbU9B?=
 =?utf-8?B?U0J3YVJRVEx2bHdBalNqSWllSkZTdEg1VWJsaDVVK0tOem5JOXJrdVl2SVJH?=
 =?utf-8?B?c2d2cStYdjVKOWNJNksza1U1UmQ5eU51c284a3NIRkJsSlEvRjJtWmpuREdT?=
 =?utf-8?B?SGRvSVQxL1lIeURkSWNidU96UXV2YnRIdkczQ2liZ2tXZ01mb0hCQTFBcnIw?=
 =?utf-8?B?aUd5VUxyaXdrazRnL1hVNEs4QmVSVUFka1RlLzB2UTZYeDJFSEsySVJOT2Jm?=
 =?utf-8?B?bGFoSWg0bXR0SGFHcFBBWkZFVWtBUEY5bVcrcG91VjEwMlFWQitlNWU0RmdB?=
 =?utf-8?B?ZEsvbStOOVE4Qi9neFAzNHMxSDhSV3dhRzljQjBsT3hoNmdjbmFCcHRSMEhq?=
 =?utf-8?B?NlhHTFlVTlI1SGpGVTZVc1pjOHk3WDV5YzVJSTRPZUhzRHRWSWtlNG9pcTNo?=
 =?utf-8?B?bXBYbm1HUHBMbU5TaXpmNEM2WFhkaExiRmtsSk1pTXZSZUlrbGpyamc5OVkz?=
 =?utf-8?B?STBXekpyTUtrUXNXaXlmSGtleVNqSEQzQmJrSW54THNhdTdaeGdTblYrRVl5?=
 =?utf-8?B?QVczVnpBTi95czBrN1BndVc1bDQ3eUsvcHlybWFsNzd5T01PaEtWaHFCendK?=
 =?utf-8?B?L21PUm0waENOU2hMdHA1RHVBU3RZYVdIeXRpbG1KSGxORk81cU9SL0lYUW04?=
 =?utf-8?B?RmZkR2dnS013bmlTZXJmRmpwOFl6YjFlSjFhcFpITC9nd0tsbHRxbE10aTd4?=
 =?utf-8?B?Q0hHb2VFd1l0aCtzUkIyZjlLTVBwell3RmVhZ2ZLWFNxZ01uYWt0N290UFds?=
 =?utf-8?B?TFF4VGFYekcxME4rdjJ5R3NOZUJ1RVp2d05qTitYOFl5MGR3Wkx0RkxYeEdR?=
 =?utf-8?Q?xmXQldImY4HmJVMuKUVc/fTtg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac3b5f5a-c9ab-4a5a-778c-08da9b0efb60
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 13:49:47.5128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8tSh+lRC9amzRPKXrbKHGdudnHLMTsxeKvUWN5rSWz0yZwyEPqkSfgscaXvkBtIc9Eby42cz4Ih4vo/2kAmWQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4734
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDE2LCAyMDIy
IDU6MDAgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IFZpbGxlIFN5cmrDpGzDpA0KPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENj
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFu
a2FyQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IFtQQVRDSCAyLzJdIGRybS9pOTE1L3Bwczog
RW5hYmxlIDJuZCBwcHMgZm9yIGR1YWwgRURQIHNjZW5hcmlvDQo+IA0KPiBPbiBGcmksIDE2IFNl
cCAyMDIyLCAiTWFubmEsIEFuaW1lc2giIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4gd3JvdGU6
DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4+IFNlbnQ6IEZyaWRheSwg
U2VwdGVtYmVyIDE2LCAyMDIyIDI6MjggUE0NCj4gPj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IE5pa3VsYSwgSmFuaQ0KPiA+PiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgU2hhbmth
ciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4+IFN1YmplY3Q6IFJlOiBbUEFUQ0gg
Mi8yXSBkcm0vaTkxNS9wcHM6IEVuYWJsZSAybmQgcHBzIGZvciBkdWFsIEVEUA0KPiA+PiBzY2Vu
YXJpbw0KPiA+Pg0KPiA+PiBPbiBGcmksIFNlcCAxNiwgMjAyMiBhdCAwMjowMTowMlBNICswNTMw
LCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+PiA+ID5Gcm9tIGRpc3BsYXkgZ2VuMTIgb253YXJk
cyB0byBzdXBwb3J0IGR1YWwgRURQIHR3byBpbnN0YW5jZXMgb2YgcHBzDQo+IGFkZGVkLg0KPiA+
PiA+IEN1cnJlbnRseSBiYWNrbGlnaHQgY29udHJvbGxlciBhbmQgcHBzIGluc3RhbmNlIGNhbiBi
ZSBtYXBwZWQNCj4gPj4gPiB0b2dldGhlciBmb3IgYSBzcGVjaWZpYyBwYW5lbC4gRXh0ZW5kZWQg
c3VwcG9ydCBmb3IgZ2VuMTIgZm9yIGR1YWwgRURQDQo+IHVzYWdlLg0KPiA+PiA+DQo+ID4+ID4g
djE6IEluaWl0YWwgcmV2aXNpb24NCj4gPj4gPiB2MjogQ2FsbGVkIGludGVsX2Jpb3NfcGFuZWxf
aW5pdCB3L28gUE5QSUQgYmVmb3JlIGludGVsX3Bwc19pbml0Lg0KPiA+PiA+IFtKYW5pXQ0KPiA+
PiA+DQo+ID4+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4+
ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
ID4+ID4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4+ID4gU2ln
bmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4+
ID4gLS0tDQo+ID4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
IHwgNyAtLS0tLS0tDQo+ID4+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmggfCA3ICsrKysrKysNCj4gPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jICAgfCA5ICsrKysrKy0tLQ0KPiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bwcy5jICB8IDIgKy0NCj4gPj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gPj4gPg0KPiA+PiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+PiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPj4gPiBpbmRleCAyOGJk
YjkzNmNkMWYuLjVmZDRjMDlkZmE5NiAxMDA2NDQNCj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4+ID4gQEAgLTcwNiwxMyArNzA2LDYgQEAg
c3RhdGljIGludCBmYWxsYmFja19nZXRfcGFuZWxfdHlwZShzdHJ1Y3QNCj4gPj4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwNCj4gPj4gPiAgICAgcmV0dXJuIDA7DQo+ID4+ID4gIH0NCj4gPj4gPg0K
PiA+PiA+IC1lbnVtIHBhbmVsX3R5cGUgew0KPiA+PiA+IC0gICBQQU5FTF9UWVBFX09QUkVHSU9O
LA0KPiA+PiA+IC0gICBQQU5FTF9UWVBFX1ZCVCwNCj4gPj4gPiAtICAgUEFORUxfVFlQRV9QTlBJ
RCwNCj4gPj4gPiAtICAgUEFORUxfVFlQRV9GQUxMQkFDSywNCj4gPj4gPiAtfTsNCj4gPj4gPiAt
DQo+ID4+ID4gIHN0YXRpYyBpbnQgZ2V0X3BhbmVsX3R5cGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsDQo+ID4+ID4gICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBpbnRl
bF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gPj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgY29uc3Qgc3RydWN0IGVkaWQgKmVkaWQpIGRpZmYgLS1naXQNCj4gPj4gPiBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaA0KPiA+PiA+IGluZGV4IGUzNzU0MDVhNzgyOC4u
ZGEwMWIxMzI2MGFlIDEwMDY0NA0KPiA+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmgNCj4gPj4gPiBAQCAtMjMxLDYgKzIzMSwxMyBAQCBzdHJ1Y3QgbWlw
aV9wcHNfZGF0YSB7DQo+ID4+ID4gICAgIHUxNiBwYW5lbF9wb3dlcl9jeWNsZV9kZWxheTsNCj4g
Pj4gPiAgfSBfX3BhY2tlZDsNCj4gPj4gPg0KPiA+PiA+ICtlbnVtIHBhbmVsX3R5cGUgew0KPiA+
PiA+ICsgICBQQU5FTF9UWVBFX09QUkVHSU9OLA0KPiA+PiA+ICsgICBQQU5FTF9UWVBFX1ZCVCwN
Cj4gPj4gPiArICAgUEFORUxfVFlQRV9QTlBJRCwNCj4gPj4gPiArICAgUEFORUxfVFlQRV9GQUxM
QkFDSywNCj4gPj4gPiArfTsNCj4gPj4gPiArDQo+IA0KPiBJIGRvbid0IHdhbnQgZW51bSBwYW5l
bF90eXBlIGV4cG9zZWQgZnJvbSBpbnRlbF9iaW9zLmMgYXQgYWxsLCB0aGVyZSdzIG5vIHJlYXNv
bg0KPiBmb3IgdGhhdC4NCg0KSGkgSmFuaSwNCg0KVGhhbmtzIGZvciB5b3VyIGlucHV0cy4gSSBo
YXZlIG1hZGUgdGhlIGNoYW5nZXMgYXMgcGVyIHlvdXIgc3VnZ2VzdGlvbi4NCkkgaGF2ZSBhIGRv
dWJ0IHdoaWNoIGlzIG1lbnRpb25lZCBiZWxvdywgY3VycmVudGx5IGhhdmUgc2VudCB0byB0cnli
b3QgZm9yIHF1aWNrIGZlZWRiYWNrLg0KaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoLzUwMzc1OS8/c2VyaWVzPTEwODc4NiZyZXY9MQ0KDQo+IA0KPiA+PiA+ICB2b2lkIGlu
dGVsX2Jpb3NfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOyAgdm9pZA0K
PiA+PiA+IGludGVsX2Jpb3NfaW5pdF9wYW5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsDQo+ID4+ID4gICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfcGFuZWwg
KnBhbmVsLCBkaWZmIC0tZ2l0DQo+ID4+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gPj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiA+PiA+IGluZGV4IGMxOWU5OWVlMDZiNi4uNmY3YWZhNzVlYzRkIDEwMDY0NA0KPiA+
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+PiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+PiA+IEBA
IC01MjIyLDYgKzUyMjIsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9lZHBfaW5pdF9jb25uZWN0b3Io
c3RydWN0DQo+ID4+ID4gaW50ZWxfZHANCj4gPj4gKmludGVsX2RwLA0KPiA+PiA+ICAgICAgICAg
ICAgIHJldHVybiBmYWxzZTsNCj4gPj4gPiAgICAgfQ0KPiA+PiA+DQo+ID4+ID4gKyAgIGludGVs
X2Jpb3NfaW5pdF9wYW5lbChkZXZfcHJpdiwgJmludGVsX2Nvbm5lY3Rvci0+cGFuZWwsDQo+ID4+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICBlbmNvZGVyLT5kZXZkYXRhLCBOVUxMKTsNCj4g
Pj4NCj4gPj4gV2UgZG9uJ3Qgd2FudCB0byBnbyBmb3IgdGhlIGZhbGxiYWNrIHR5cGUgaGVyZSBp
ZiB3ZSB0aGUgVkJUIHdhbnRzIHVzDQo+ID4+IHRvIHVzZSBwbnBpZC4gTWF5YmUgd2Ugc2hvdWxk
IGp1c3QgcmVtb3ZlIHRoZSBmYWxsYmFjayB0eXBlIGVudGlyZWx5Pw0KPiA+PiBPciBwZXJoYXBz
IG9ubHkgdXNlIGl0IGlmIHRoZSBWQlQgcGFuZWwgdHlwZSBpcyBlbnRpcmVseSBpbnZhbGlkPw0K
PiA+DQo+ID4gT2ssIENhbiBJIGFkZCBsaWtlIGJlbG93Pw0KPiA+IElmICghUEFORUxfVFlQRV9G
QUxMQkFDSykNCj4gPiAgICAgICAgIGludGVsX3Bwc19pbml0KGludGVsX2RwKTsNCj4gPg0KPiA+
IEJ1dCB0byByZWFkIEVESUQgcHBzX2luaXQgc2hvdWxkIGJlIGNhbGxlZCBiZWZvcmUgaXQuIE9y
IGVsc2UgSSBjYW4gZW5hYmxlIGJvdGgNCj4gdGhlIHBwcyBhbmQgbGF0ZXIgZGlzYWJsZSB0aGUg
dW51c2VkIG9uZS4NCj4gDQo+IFRoZSBmaXJzdCBjYWxsIHNob3VsZCBpbml0IGV2ZXJ5dGhpbmcg
aWYgaXQgY2FuIChwYW5lbCB0eXBlIGlzICpub3QqIHBucGlkKS4gRmFsbGJhY2sgaXMNCj4gZmlu
ZSBpbiB0aGF0IGNhc2UgdG9vLg0KDQpGaXJzdCB0aW1lIGludGVsX2Jpb3NfaW5pdF9wYW5lbCgp
IHdpbGwgYmUgY2FsbGVkIHdpdGggbnVsbCBlZGlkIGFuZCBwYW5lbCB0eXBlIHdpbGwgYmUgc2V0
IHRvIFBBTkVMX1RZUEVfRkFMTEJBQ0suDQogIA0KPiANCj4gSWYgcGFuZWwgdHlwZSBpbmRpY2F0
ZXMgcG5waWQsIGludGVsX2Jpb3NfaW5pdF9wYW5lbCgpIHNob3VsZCBzZXQgdGhlIHBwcyBpZCB0
bywgc2F5LA0KPiAtMSwgc28gaW50ZWxfcHBzX2luaXQoKSBvciBtb3JlIHNwZWNpZmljYWxseQ0K
PiBieHRfcG93ZXJfc2VxdWVuY2VyX2lkeCgpIGNhbiB1c2Ugc29tZSBkZWZhdWx0IG9yIGxvb2sg
YXQgdGhlIGhhcmR3YXJlIG9yDQo+IHdoYXRldmVyLg0KDQpDdXJyZW50bHkgY2hlY2tpbmcgZm9y
IFBBTkVMX1RZUEVfUE5QSUQgaW4gaW50ZWxfYmlvc19pbml0X3BhbmVsKCkgYW5kIHNldHRpbmcg
cHBzIGlkIHRvIC0xLg0KQnV0IEkgYW0gbm90IHN1cmUgd2h5IHNwZWNpYWwgaGFuZGxpbmcgaXMg
bmVlZGVkIGluIGJ4dF9wb3dlcl9zZXF1ZW5jZXJfaWR4KCkuDQpJcyBiYWNrbGlnaHRfY29udHJv
bGxlciB2YWx1ZSBjYW4gYmUgdXNlZCB0byBkZXJpdmUgcHBzIGluc3RhbmNlIGZvciBQQU5FTF9U
WVBFX1BOUElELg0KIA0KPiANCj4gaW50ZWxfYmlvc19pbml0X3BhbmVsKCkgc2hvdWxkIHByb2Jh
Ymx5IGFsc28gcmV0dXJuIGEgdmFsdWUgb24gcG5waWQgaW5kaWNhdGluZw0KPiBpbnRlbF9lZHBf
aW5pdF9jb25uZWN0b3IoKSBzaG91bGQgY2FsbA0KPiBpbnRlbF9iaW9zX2luaXRfcGFuZWwoKSBh
Z2FpbiwgdGhpcyB0aW1lIHdpdGggRURJRC4gKE5vdGU6IEkga2luZCBvZiBsaWtlIHNlcGFyYXRp
bmcNCj4gcmV0dXJuaW5nIHRoZSB2YWx1ZSBhbmQgc2V0dGluZyB0aGUgcHBzIGlkIHRvIC0xLiBJ
IGRvbid0IHdhbnQNCj4gaW50ZWxfZWRwX2luaXRfY29ubmVjdG9yKCkgdG8gbG9vayBhdCBwcHMg
aWQsIHRoYXQncyBmb3IgcHBzLCBhbmQgSSBkb24ndCB3YW50IHRvDQo+IHBhc3MgZmxhZ3MgYWxs
IHRoZSB3YXkgdG8gYnh0X3Bvd2VyX3NlcXVlbmNlcl9pZHgoKQ0KPiBlaXRoZXIuKQ0KDQpGb3Ig
UEFORUxfVFlQRV9QTlBJRCBhbSByZXR1cm5pbmcgYm9vbGVhbiByZXRyeSwgd2l0aCB0aGF0IGRv
buKAmXQgbmVlZCB0byBtb3ZlIHBhbmV0IHR5cGUgZW51bSB0byBpbnRlbF9iaW9zLmguDQpJZiB0
aGUgcmV0cnkgaXMgdHJ1ZSB3aWxsIGNhbGwgaW50ZWxfYmlvc19pbml0X3BhbmVsKCkgd2l0aCBl
ZGlkIHRvIGNoZWNrIGZvciBQQU5FTF9UWVBFX1BOUElELiANCg0KUmVnYXJkcywNCkFuaW1lc2gN
Cg0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4NCj4gPiBSZWdhcmRzLA0KPiA+
IEFuaW1lc2gNCj4gPg0KPiA+PiA+ICsNCj4gPj4gPiAgICAgaW50ZWxfcHBzX2luaXQoaW50ZWxf
ZHApOw0KPiA+PiA+DQo+ID4+ID4gICAgIC8qIENhY2hlIERQQ0QgYW5kIEVESUQgZm9yIGVkcC4g
Ki8gQEAgLTUyNTUsOSArNTI1OCw5IEBAIHN0YXRpYw0KPiA+PiA+IGJvb2wgaW50ZWxfZWRwX2lu
aXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kcA0KPiA+PiAqaW50ZWxfZHAsDQo+ID4+ID4gICAg
ICAgICAgICAgZWRpZCA9IEVSUl9QVFIoLUVOT0VOVCk7DQo+ID4+ID4gICAgIH0NCj4gPj4gPiAg
ICAgaW50ZWxfY29ubmVjdG9yLT5lZGlkID0gZWRpZDsNCj4gPj4gPiAtDQo+ID4+ID4gLSAgIGlu
dGVsX2Jpb3NfaW5pdF9wYW5lbChkZXZfcHJpdiwgJmludGVsX2Nvbm5lY3Rvci0+cGFuZWwsDQo+
ID4+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICBlbmNvZGVyLT5kZXZkYXRhLCBJU19FUlIo
ZWRpZCkgPyBOVUxMIDogZWRpZCk7DQo+ID4+ID4gKyAgIGlmIChpbnRlbF9jb25uZWN0b3ItPnBh
bmVsLnZidC5wYW5lbF90eXBlID09IFBBTkVMX1RZUEVfRkFMTEJBQ0spDQo+ID4+ID4gKyAgICAg
ICAgICAgaW50ZWxfYmlvc19pbml0X3BhbmVsKGRldl9wcml2LCAmaW50ZWxfY29ubmVjdG9yLT5w
YW5lbCwNCj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5jb2Rlci0+
ZGV2ZGF0YSwgSVNfRVJSKGVkaWQpID8gTlVMTCA6DQo+ID4+IGVkaWQpOw0KPiA+PiA+DQo+ID4+
ID4gICAgIGludGVsX3BhbmVsX2FkZF9lZGlkX2ZpeGVkX21vZGVzKGludGVsX2Nvbm5lY3RvciwN
Cj4gPj4gPg0KPiA+PiA+IGludGVsX2Nvbm5lY3Rvci0+cGFuZWwudmJ0LmRycnNfdHlwZQ0KPiA+
PiAhPSBEUlJTX1RZUEVfTk9ORSwgZGlmZg0KPiA+PiA+IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+PiA+IGluZGV4IGI5NzJmYTZlYzAwZC4uNGI4NDEzMzgy
YzVkIDEwMDY0NA0KPiA+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHBzLmMNCj4gPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bwcy5jDQo+ID4+ID4gQEAgLTE0MzAsNyArMTQzMCw3IEBAIHZvaWQgaW50ZWxfcHBzX2luaXQo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPj4gPiAgICAgaW50ZWxfZHAtPnBwcy5pbml0
aWFsaXppbmcgPSB0cnVlOw0KPiA+PiA+ICAgICBJTklUX0RFTEFZRURfV09SSygmaW50ZWxfZHAt
PnBwcy5wYW5lbF92ZGRfd29yaywNCj4gPj4gPiBlZHBfcGFuZWxfdmRkX3dvcmspOw0KPiA+PiA+
DQo+ID4+ID4gLSAgIGlmIChJU19HRU1JTklMQUtFKGk5MTUpIHx8IElTX0JST1hUT04oaTkxNSkp
DQo+ID4+ID4gKyAgIGlmIChJU19HRU1JTklMQUtFKGk5MTUpIHx8IElTX0JST1hUT04oaTkxNSkg
fHwNCj4gPj4gPiArRElTUExBWV9WRVIoaTkxNSkgPj0NCj4gPj4gPiArMTIpDQo+ID4+ID4gICAg
ICAgICAgICAgaW50ZWxfZHAtPmdldF9wcHNfaWR4ID0gYnh0X3Bvd2VyX3NlcXVlbmNlcl9pZHg7
DQo+ID4+ID4gICAgIGVsc2UgaWYgKElTX1ZBTExFWVZJRVcoaTkxNSkgfHwgSVNfQ0hFUlJZVklF
VyhpOTE1KSkNCj4gPj4gPiAgICAgICAgICAgICBpbnRlbF9kcC0+Z2V0X3Bwc19pZHggPSB2bHZf
cG93ZXJfc2VxdWVuY2VyX3BpcGU7DQo+ID4+ID4gLS0NCj4gPj4gPiAyLjI5LjANCj4gPj4NCj4g
Pj4gLS0NCj4gPj4gVmlsbGUgU3lyasOkbMOkDQo+ID4+IEludGVsDQo+IA0KPiAtLQ0KPiBKYW5p
IE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo=
