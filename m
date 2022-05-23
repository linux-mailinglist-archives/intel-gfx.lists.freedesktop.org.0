Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC504530B02
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 10:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E8910E5CE;
	Mon, 23 May 2022 08:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E262E10E5CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 08:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653293169; x=1684829169;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PwoJvgT/ceClRIlkdGzUL6EpH0/QamZVlZ+yE5okEN0=;
 b=cQ2RrRLy14l9jNLI4DHY5LgNlEic0uGyP/+9o6b0IvYTfahlMSAKBwov
 kUIgrxL1PCR5S193J4geF8RO7NXfg2XHHNBUVwkRym1+g6dMDVYvt8aWZ
 CqDf1Q7/MQrJShvjIRP2wXZUNecjoDSx/Ry2G0AK43Nbmor8bx9jx31x2
 y6lGNdTwz0/RBORlb/zg7rQDMLti/bfDPHTxdHt34KfroBLRdQvYOh/gs
 byaXw2NeURH+KVABbBOF4f5ThxIATmfFychiZmxaYK1dWUl8ZtyeCzgNo
 kc+yyF7GlFgk8jGlJkyL/oLA3Qoa2Qe8MuSEmxbXK7Fc+GZ3Dm8ZWTCvc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="260745690"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="260745690"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 01:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="571958677"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 23 May 2022 01:06:08 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 23 May 2022 01:06:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 23 May 2022 01:06:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 23 May 2022 01:06:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/rZ1vbZTAQ6Fp0bl27RxP3L+mUM0nGPtO+LaH3a0grV3Pf+z4VLwhuL6/9w+FYWnimbaNsupG5hgmQNBUVX6meuqsIvdgjma64U0171pcaYuy1p7oO9HL8deUexftfqvxD5Ry2Hf5wI4lXm4JAkEZkaQ2EgkIZMjF5Goe6q/gOpprzKBF0r0RcAuCDLXI28GY1+nYy6XDlfkgQ/xS1f+JDeRiBtg7D9QKXcX2XryDWLWpGpPMwI/4zEmxY740HsN/XNFSGlixs8CLPBGeEVpibPjxcNMMY+9XPUE4X8A1xxaxsmSIoXVM38a5dPyVWsWic/xYfjHRdOSyC/QxeZ6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PwoJvgT/ceClRIlkdGzUL6EpH0/QamZVlZ+yE5okEN0=;
 b=F0eQW5XjJzgIVQGZLbgezxo/Z9vJVf/PjFZRuQMwuA/TVbV4c9sHaZgkbvZfemiT4vED1+d+WUOOS69Y+hXYKo2qn/gQI0Z1MxhRg2Y8k/8+505/aV9BxjjUf7EQ6rjczPnPwPPxFPTnnsbW8nWM32LV6kp69+LSxCsIyCnTWCKIlhl7Ww85IuoqEzTEI9SbbD4yx6CZcd+dUbZW409nL3eL/nlZqXZvT/tJZWimgp52g8Y02OlspRC5a17FdyzYDS3rb8zsBet1Z5PuuodKwf1K0ze1XhMDZj8lZCuChxS0+nAnSZZbXYzWPoOTkbId0l2Ji21n9LUUwl9rbLFgXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by IA1PR11MB6124.namprd11.prod.outlook.com (2603:10b6:208:3ec::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.22; Mon, 23 May
 2022 08:06:06 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::859f:cb33:294d:d652]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::859f:cb33:294d:d652%9]) with mapi id 15.20.5273.022; Mon, 23 May 2022
 08:06:05 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Write zero wms if we disable
 planes for icl+
Thread-Index: AQHYaqZpuo800M2piUaEg24SNDsmja0sIpeA
Date: Mon, 23 May 2022 08:06:05 +0000
Message-ID: <96f4549835dfd27301b2a695e60e81fdb6397e67.camel@intel.com>
References: <20220518105946.28179-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220518105946.28179-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cba98fa5-e9e0-4f95-1394-08da3c93165e
x-ms-traffictypediagnostic: IA1PR11MB6124:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <IA1PR11MB6124053BF91066FEECDBE917F6D49@IA1PR11MB6124.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e0IK0hnPqOnbsBbI8K/F4zs4BGtlH/hpwpwbmg1o5q3l2NF5eSuy1iL6o6+mOrx33PvdnVMrxCQHz8jQthDOgjo+Ly6fR4lsP/tsMr0EEwOQ+3CCjWoeHh9NmtETmnPL6T0JbLYqb21MLhaJyo5vvq+lphR1kHaVFA3FCyX5Xu6GQnJdWWvwTWRnGnWXDXKR2MgU997S6QpSlD3wfR6joGIG4rIS6joIsEQDsI3Hx2PmMEKwHd8qVb9V43M9cUDYlnm7u7tnx4p5IqBFgBkpFI6Y1CVMMnKbw9j1SyYqOpA1fRMDPrfxgULB2djG7G6mD8e19o0lSjMs7mXeXKVNuRE6ZVfrmErXIJVcnSiilkv/9tbQxvYgtkSbImNLtmbvfNzBLdTBkTf6pOZ6eYMpd/suJR6YuUCP5Eu2AmpEsspnE6kIxMRolkvGsgEZXNAAtD+f0E5m1Q+VZuHFpX864/MNANg3Nnyje8k1CClHdA2gzb+OfAWDWojFOETrbWzMhpTaUEQwSi8710cHunCV8P/B7N5j/Q0X9JF4A8kqtvIa6qdyGX1aC+BdFzrMYJ0SkLU3wxELpAk4KOfNaeKEB4U0crsbAs3r6NxEg4mqIanj/h2BM1CZXM5wOt4F0oH3S6gW7VWl2UelGbldBGs1cqcH5NWJlgcy3eDHfbbBmassYmInIWIkXLfShoXEsXvKGD0aBN6J9VO/lT+4pWUYZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(66946007)(83380400001)(76116006)(8676002)(316002)(91956017)(66556008)(66476007)(66446008)(64756008)(2616005)(6506007)(508600001)(71200400001)(26005)(6512007)(86362001)(110136005)(6486002)(8936002)(5660300002)(82960400001)(38070700005)(122000001)(38100700002)(36756003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGEzK0hKZ0dSNVBHakxVVDdMbWJESklZTkE4bWdrVTJOZkd4ajV5TDN3UTJY?=
 =?utf-8?B?ZVZyMFlXQUFqUGNWRWxYNjZwMXI4MkRRQnB0SEhSTmdzVTVsZzkxTkRFaEV0?=
 =?utf-8?B?R3BXUnpxY3V2bm5pcmNRVExnaFhic3E0OGVVOVJla3Q2NEUwcHhJY0NmMFpJ?=
 =?utf-8?B?NTNPaTljakRkcUZDd0hyMVVXQVRDSDA3TTl4ZHE2SEc5a3N6dEdYYVk3VXpO?=
 =?utf-8?B?MkNQeWNYUlh0OHRIOGttMEc0VHJRSnU1MXRDd2UwdDZOanROKzBVNE9HeElI?=
 =?utf-8?B?a2Zjb1pFazE5aEJncUs5NmlvNWM3MW5nRlMrZkYyVk90S1JxbW92TEpaamtD?=
 =?utf-8?B?V25kN2FZUngwYjNMQmZ6YWZzaUtNMEo4bXBRSmVqWk9UdnlDa1ZyTGV0NmtN?=
 =?utf-8?B?ZkVHU2l3TzV0UUN4SDE5YVBlbTlRMEpxOEczT3RmRVd2ODl1R1BPK2RJLzM3?=
 =?utf-8?B?czZOaGR5UXNpVnl4eUxMQ2tCQnc1Zk5SQU9UWmNlQzBUMkhIeWZjUXVwdVRz?=
 =?utf-8?B?S2czOEkvZXhTQURTS3Npc3JodDlNNG9mYlkvVGxxSU9aQkZEWWxTZldiOUNv?=
 =?utf-8?B?eTBmU21sbFdCTStvakk4YXNSMDJIL2REdk9WS2tERlFTblNWRVN6czBYeUFY?=
 =?utf-8?B?QUp6WmhlbTRWSWdDelp1YWRudE9CYTR5NTlQaDczbXlaVUk3bXdnQ2JBSE0r?=
 =?utf-8?B?dkwvellyR3hXVU9lWHljMldGWXVyZjBCSVZpS2QyTysrVEgwaTlMUERweGZo?=
 =?utf-8?B?WFNtRTBKZmVDWVZOVFFiRlVyVXhPRDk2K0xBQzdCWXJmUzNIcm4xNGZDdHpP?=
 =?utf-8?B?dlpzOGRCdWFlQ256cCtyS2pPTHBOSitZTy9Ka2NFd2lCTlhnZkhUclhHZVBR?=
 =?utf-8?B?NEhKZGtUZFA2cHVWQUliOGd2aHdTemFsMzlxbnRCSEVTUXNNa0RhQ1JFTS9u?=
 =?utf-8?B?NkRncjFQRG5PeUFMQURqTDVscTc4OHJ0UVdOT3R5WUhHUU9aOExjcDAvdXlJ?=
 =?utf-8?B?cXRySGJGQU5RKzFFa0VHQkhrY2xITEl2c3kwTklCTzBOMzdjK1V4Y2ljbTBx?=
 =?utf-8?B?MHFaN1BQOVovVnpTZXBoR3FybE9TdVY1bkpISGRDZUU3Y1hvb1kzaGtLaXdI?=
 =?utf-8?B?Mm5JSFA2QnBIT1JwTzhnQnR6YVk0d2RnQ0FJNllaKzdKVjZiUm1paTVzdHpY?=
 =?utf-8?B?L0RUUDBsUTZ2Y3ZNNkdyNUtoQzNRaHNPTGNEOFJPY0lHS2Fxd3RLVDZxSEpp?=
 =?utf-8?B?Q0prL2xjN1IvYWV3TDZUaFdKTUtxS0FsWXFYeENpY1pXeEdjakx5WE9MTS8x?=
 =?utf-8?B?TTdiaGdHZDByeERKWU4waEx5cmRYSWVibnlaN0Y4RmVueXY4RTFzVTM4dTcw?=
 =?utf-8?B?VWtYaDFSdUdhTVJhaFpwT1J2ZS9TdGZ3a1QreTBvL2paSFJqeVFTRThPUTNB?=
 =?utf-8?B?TDBGUGE2S2xmVjRIem5jVW5yQlVIM1k5djI5MlpyNGxVR2NXZmhrTExqVmh3?=
 =?utf-8?B?L2lKL0lGTkhpUWdLT3JyTHZ0dFFnMDkxd0VPZ2xyQVpYL1djR0VvVzdmdUlx?=
 =?utf-8?B?TWtOeElBSnJTR1pvTTRVWkQwd2FYSGRvdmJGTnJCc1R0NE5XREgxUTZKTzBs?=
 =?utf-8?B?SngwWHRqNmVmcmt6WUV5aWVOamp2OFZzSmVadk4xRjA2eWVYbDQ4d0tPVzhY?=
 =?utf-8?B?QjEwaGtHL3BaZWpSdmgwTkVYN0xPbEhFcXJiQlI3ZGsvdWdMaTRreE8zN28v?=
 =?utf-8?B?UnpmZndpT1d2NExHc1ZXZCtFVTdsY2lqVlh3bzBqNEs3a1RsYmJ2VlJEUTFS?=
 =?utf-8?B?dGtKMmw5alRWTzFCeGw5NGFxRnQxVHlHNGl2a3IxbE50WVA4SWZZODgxWkM3?=
 =?utf-8?B?dERpS2tMc05zZElBUlFYS0oydHloUnFEVVJyOFhRaXU3amRhbG1MOUMxVGtv?=
 =?utf-8?B?N3pVcms3VEdaTjZxQUJMUEpBOG15VGIvZFg0TURUQWIwU1NobGlhZlF1NnZO?=
 =?utf-8?B?dVFORmNPOUcxVzAyQlFYbTg4Z1FNVHNqR2MycmMxcGo2THZ3eTNqSU0xdTd3?=
 =?utf-8?B?RVNkdjA4dDY3UWFHcGhrWEVXc1h1cDNKNDYvdEdzZXNrdkdlc0l4M0duc3dm?=
 =?utf-8?B?V2JaUjQxUnQ0c2Z4NlI0TVhDRm1Zd0w4YTdhS3hZWllCMExXaDBhK1dCUC83?=
 =?utf-8?B?SDJJd0QrMFU1YThtMks1UTFsL2N2STUxbiswMDBzSlNucENBM0ZVK290VERv?=
 =?utf-8?B?K2VycHBYSzdPdU9ndXF0ME15Wm1HWFpERjZjN09YU0wxekdKRnFuRnd0ekdq?=
 =?utf-8?B?cDE3dGhXVE0yNW1hb3JqZ0piZWVYcnM2Q2IxTE5xZktoRGJ6MThFRkk4dWlR?=
 =?utf-8?Q?9ZlrRq12TSUCHp87Wg1FA7HQowgkvy/h2g9Vc?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C12E3B4E737E004B89FA044C8ACE02B4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cba98fa5-e9e0-4f95-1394-08da3c93165e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2022 08:06:05.9313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dZkvSY67CxQecipxXVQTYmUr+h6TO4jah0NwqlflFSOqiNmhhN5Rv0PPHhKF4TvcHm8JVVY0rCKGOKkSvXikqsNZF/0hopHVnN+YcdpaPac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6124
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Write zero wms if we disable
 planes for icl+
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

SGkgU3Rhbg0KDQpQbHMgc2VlIHNvbWUgY29tbWVudHMgaW5saW5lLi4NCg0KQlINClZpbm9kDQoN
Ck9uIFdlZCwgMjAyMi0wNS0xOCBhdCAxMzo1OSArMDMwMCwgU3RhbmlzbGF2IExpc292c2tpeSB3
cm90ZToNCj4gT3RoZXJ3aXNlIHdlIHNlZW0gdG8gZ2V0IEZJRk8gdW5kZXJydW5zLiBJdCBpcyBi
ZWluZyBkaXNhYmxlZA0KPiBhbnl3YXksIHNvIGtpbmQgb2YgbG9naWNhbCB0byB3cml0ZSB0aG9z
ZSBhcyB6ZXJvZXMsIGV2ZW4gaWYNCj4gZGlzYWJsaW5nIGlzIHRlbXBvcmFyeS4NCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxh
bmUuYyAgICB8ICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAg
ICAgICAgICAgfCA0NiArKysrKysrKysrKysrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5oICAgICAgICAgICAgICAgfCAgMiArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQ5
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4IGNhYTAz
MzI0YTczMy4uYzAyNTExODljMDQyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAtNjMzLDcgKzYzMyw3IEBA
IGljbF9wbGFuZV9kaXNhYmxlX2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCWlm
IChpY2xfaXNfaGRyX3BsYW5lKGRldl9wcml2LCBwbGFuZV9pZCkpDQo+ICAJCWludGVsX2RlX3dy
aXRlX2Z3KGRldl9wcml2LCBQTEFORV9DVVNfQ1RMKHBpcGUsIHBsYW5lX2lkKSwgMCk7DQo+ICAN
Cj4gLQlza2xfd3JpdGVfcGxhbmVfd20ocGxhbmUsIGNydGNfc3RhdGUpOw0KPiArCXNrbF93cml0
ZV96ZXJvX3BsYW5lX3dtKHBsYW5lLCBjcnRjX3N0YXRlKTsNCj4gIA0KPiAgCWludGVsX3BzcjJf
ZGlzYWJsZV9wbGFuZV9zZWxfZmV0Y2gocGxhbmUsIGNydGNfc3RhdGUpOw0KPiAgCWludGVsX2Rl
X3dyaXRlX2Z3KGRldl9wcml2LCBQTEFORV9DVEwocGlwZSwgcGxhbmVfaWQpLCAwKTsNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wbS5jDQo+IGluZGV4IGVlMDA0N2ZkYzk1ZC4uMjQ3MGMwMzdiZmFlIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTU4ODUsNiArNTg4NSw1MiBAQCB2
b2lkIHNrbF93cml0ZV9wbGFuZV93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJ
CSAgICBQTEFORV9OVjEyX0JVRl9DRkcocGlwZSwgcGxhbmVfaWQpLCBkZGJfeSk7DQo+ICB9DQo+
ICANCj4gK3ZvaWQgc2tsX3dyaXRlX3plcm9fcGxhbmVfd20oc3RydWN0IGludGVsX3BsYW5lICpw
bGFuZSwNCj4gKwkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+ICt7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShwbGFuZS0+YmFzZS5kZXYpOw0KPiArCWludCBsZXZlbCwgbWF4X2xldmVsID0gaWxrX3dtX21h
eF9sZXZlbChkZXZfcHJpdik7DQo+ICsJZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5p
ZDsNCj4gKwllbnVtIHBpcGUgcGlwZSA9IHBsYW5lLT5waXBlOw0KPiArCXN0cnVjdCBza2xfcGlw
ZV93bSBwaXBlX3dtOw0KPiArCWNvbnN0IHN0cnVjdCBza2xfZGRiX2VudHJ5ICpkZGIgPQ0KPiAr
CQkmY3J0Y19zdGF0ZS0+d20uc2tsLnBsYW5lX2RkYltwbGFuZV9pZF07DQo+ICsJY29uc3Qgc3Ry
dWN0IHNrbF9kZGJfZW50cnkgKmRkYl95ID0NCj4gKwkJJmNydGNfc3RhdGUtPndtLnNrbC5wbGFu
ZV9kZGJfeVtwbGFuZV9pZF07DQo+ICsNCj4gKwlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPD0gbWF4
X2xldmVsOyBsZXZlbCsrKSB7DQo+ICsJCXBpcGVfd20ucGxhbmVzW3BsYW5lX2lkXS53bVtsZXZl
bF0uYmxvY2tzID0gMDsNCj4gKwkJcGlwZV93bS5wbGFuZXNbcGxhbmVfaWRdLndtW2xldmVsXS5s
aW5lcyA9IDA7DQo+ICsJfQ0KPiArDQo+ICsJcGlwZV93bS5wbGFuZXNbcGxhbmVfaWRdLnRyYW5z
X3dtLmJsb2NrcyA9IDA7DQo+ICsJcGlwZV93bS5wbGFuZXNbcGxhbmVfaWRdLnRyYW5zX3dtLmxp
bmVzID0gMDsNCg0KV2hhdCBhYm91dCB0aGUgb3RoZXIgbWVtYmVycyBvZiBzdHJ1Y3Qgc2tsX3Bs
YW5lX3dtIC0gdXZfd20sIHNhZ3Yud20sIHNhZ3YudHJhbnNfd20/DQpPciBtZW1zZXQgdG8gMCB0
byB0aGUgc2l6ZW9mKHNrbF93bV9sZXZlbCkgYmV0dGVyPw0KDQo+ICsNCj4gKwlmb3IgKGxldmVs
ID0gMDsgbGV2ZWwgPD0gbWF4X2xldmVsOyBsZXZlbCsrKQ0KPiArCQlza2xfd3JpdGVfd21fbGV2
ZWwoZGV2X3ByaXYsIFBMQU5FX1dNKHBpcGUsIHBsYW5lX2lkLCBsZXZlbCksDQo+ICsJCQkJICAg
c2tsX3BsYW5lX3dtX2xldmVsKCZwaXBlX3dtLCBwbGFuZV9pZCwgbGV2ZWwpKTsNCj4gKw0KPiAr
CXNrbF93cml0ZV93bV9sZXZlbChkZXZfcHJpdiwgUExBTkVfV01fVFJBTlMocGlwZSwgcGxhbmVf
aWQpLA0KPiArCQkJICAgc2tsX3BsYW5lX3RyYW5zX3dtKCZwaXBlX3dtLCBwbGFuZV9pZCkpOw0K
PiArDQo+ICsJaWYgKEhBU19IV19TQUdWX1dNKGRldl9wcml2KSkgew0KPiArCQljb25zdCBzdHJ1
Y3Qgc2tsX3BsYW5lX3dtICp3bSA9ICZwaXBlX3dtLnBsYW5lc1twbGFuZV9pZF07DQo+ICsNCj4g
KwkJc2tsX3dyaXRlX3dtX2xldmVsKGRldl9wcml2LCBQTEFORV9XTV9TQUdWKHBpcGUsIHBsYW5l
X2lkKSwNCj4gKwkJCQkgICAmd20tPnNhZ3Yud20wKTsNCj4gKwkJc2tsX3dyaXRlX3dtX2xldmVs
KGRldl9wcml2LCBQTEFORV9XTV9TQUdWX1RSQU5TKHBpcGUsIHBsYW5lX2lkKSwNCj4gKwkJCQkg
ICAmd20tPnNhZ3YudHJhbnNfd20pOw0KPiArCX0NCj4gKw0KPiArCXNrbF9kZGJfZW50cnlfd3Jp
dGUoZGV2X3ByaXYsDQo+ICsJCQkgICAgUExBTkVfQlVGX0NGRyhwaXBlLCBwbGFuZV9pZCksIGRk
Yik7DQoNCkFzIHRoZSBwbGFuZSB3bSB2YWx1ZXMgYXJlIGhhcmRjb2RlIHRvIDAganVzdCBiZWZv
cmUgdGhpcyBsaW5lLCB0aGVzZSBkZGIgZW50cmllcyBtaWdodCBub3QgYmUNCnJlcHJlc2VudGlu
ZyB0aGUgYWNjdXJhdGUgaW5mb3JtYXRpb24gYW55bW9yZS4gRG9lcyB0aGF0IGV2ZW4gbWF0dGVy
Pw0KDQpPciBpcyBpdCBiZXR0ZXIgaWYgd2UgaWdub3JlL3NraXAgemVyby1pbmcgdGhlIHdtIHZh
bHVlcyBkdXJpbmcgdGhlIGRpc2FibGUgcGxhbmVzIGNvbXBsZXRlbHkgaWYgaXQNCmRvZXNudCBt
YXR0ZXIgYW5kIGp1c3QgcmVseSBvbiBkaXNhYmxpbmcgdGhlIHBsYW5lIGJpdCBpbiBwbGFuZV9j
dGw/DQoNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxMSkNCj4gKwkJc2ts
X2RkYl9lbnRyeV93cml0ZShkZXZfcHJpdiwNCj4gKwkJCQkgICAgUExBTkVfTlYxMl9CVUZfQ0ZH
KHBpcGUsIHBsYW5lX2lkKSwgZGRiX3kpOw0KPiArfQ0KPiArDQo+ICsNCj4gIHZvaWQgc2tsX3dy
aXRlX2N1cnNvcl93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgew0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmgNCj4gaW5kZXggNTA2MDRjZjczOThjLi5mYjBhYzRmMTQzYWIgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uaA0KPiBAQCAtNjEsNiArNjEsOCBAQCBib29sIHNrbF93bV9sZXZl
bF9lcXVhbHMoY29uc3Qgc3RydWN0IHNrbF93bV9sZXZlbCAqbDEsDQo+ICBib29sIHNrbF9kZGJf
YWxsb2NhdGlvbl9vdmVybGFwcyhjb25zdCBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZGRiLA0KPiAg
CQkJCSBjb25zdCBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqZW50cmllcywNCj4gIAkJCQkgaW50IG51
bV9lbnRyaWVzLCBpbnQgaWdub3JlX2lkeCk7DQo+ICt2b2lkIHNrbF93cml0ZV96ZXJvX3BsYW5l
X3dtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICsJCQkgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gIHZvaWQgc2tsX3dyaXRlX3BsYW5lX3dt
KHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICB2b2lkIHNrbF93cml0ZV9jdXJzb3Jfd20oc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSwNCg==
