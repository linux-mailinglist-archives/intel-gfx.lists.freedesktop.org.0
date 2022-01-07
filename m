Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76EA4487AE6
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 18:03:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F99D11AFA5;
	Fri,  7 Jan 2022 17:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A40311AFA5
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 17:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641575010; x=1673111010;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ozE4MpnN/nrxR8u1j0XXFDak/FsnZRVv8PbEIlpxBl8=;
 b=IJqI4PZnx8eUTh97NhDUKVZD5BKaKHmHQ+kGGGMWOvh/cjvR2oVCF26I
 FkV2uSwayYOARF3ggRjBEbZA2St7GLy9qUHy3jW7UZqm1sKoyjnRVSIy5
 MmEnIjHep/0vb4wr5ZHFP+SdP7VBx9kQRdgdgvD15odiOAP3CMPkvFf6X
 D8ucEnUhcvgHz16VUDCXPPJWPaOwAeFgB9gtBK/L0oYFhhuOAD0201bbA
 4hR8slzyK26tXUrHJmGj0IgpZmI1/1ohI5fv3QKYZcVioi7QS+RI7Y2jl
 49irnhhA8O1Y2pYVtUD4Jf9WkSvl1JBkf57O0DDzOtW/0i1uXORHaDSks A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="243097594"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="243097594"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 09:03:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="618748979"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jan 2022 09:03:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 7 Jan 2022 09:03:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 7 Jan 2022 09:03:28 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 7 Jan 2022 09:03:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 7 Jan 2022 09:03:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X/ZWdEfGVMccNnjvIWZ8zVD2poIVMM0P4l6kYrrMfw1eMVhakdCgp5QZtvjM362CR1+zodm9hiCLnFGZ0JKluk0WKc1dG+n2fg6esXksvd+1xHdGDznOh26m6RycTH4ubYsXv8YlTxAh3jCOCBYw95+SppFtKxbihXYgvZ6Tl6KnvrBJqGqgFxZiC/OrqK/zgTc2URGmRrGE3l4W9TOn+Udphq0WFt8c7t5IrR0yXlK+M96VnVMZHj/gToLR9JY8HXra24sHLYdzkyzvWcG2P1g5E8HY/cghGKTcOZ5dR3+PpBtXYc1NoKWu+bBZ4b6ipDpqxyRofW+pPy/X78Yn/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ozE4MpnN/nrxR8u1j0XXFDak/FsnZRVv8PbEIlpxBl8=;
 b=ogK5Sr8GBcHkPxAj3NJAxgqVBwM0giwVsjHiGsQ902FkztfD4AV6677nXvd28cBwH8OGYeVgXr1H5Sr3OG5FzOXnIsoSZSVpS10PAG2AXG1NACH0ffz+0ectTRcqJTcqoFsabomBIHOnK2sts5pvaxKiD7DyvEFTKvBZGpEYad9lgLyy+fmeSoeE8G1AXgDtAfyrR3sEVmbeTGiDplB3qGWCCjEVSdX4kJ56phv1rohphtZ7fO5N2cZK1JBCq99U0l0FvPKbUHWE+fDFQ0qOF84RZ80eayOfjTJu9v3TxfrSuhda7/WMISIa1tTOJx3WPPT0Yv7dgWihtO7CnIF4Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4039.namprd11.prod.outlook.com (2603:10b6:a03:18b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Fri, 7 Jan
 2022 17:03:26 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4867.011; Fri, 7 Jan 2022
 17:03:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
Thread-Index: AQHX3/Ueewn73SRF5061jq6P87GJy6wn02QAgABnhACAGGKigIABIMoAgAAYIICAEU9sgIABzo2AgAEN3wCAAJYwAIAA8nYAgACGkQA=
Date: Fri, 7 Jan 2022 17:03:26 +0000
Message-ID: <d8a7381a0c881dc6ced854aff7468f9b74089b56.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-8-alan.previn.teres.alexis@intel.com>
 <20211208002215.GA17960@jons-linux-dev-box>
 <bf9b1af14a700959ca58e615d7d15cb9300ab56f.camel@intel.com>
 <fb0f6eace4bd1c243544a0804ffa9fa5b16159a6.camel@intel.com>
 <c0fa7466-ecdc-4768-0584-6937e7f0d71a@linux.intel.com>
 <baaf6bcf51c487817392142913f31655138b6596.camel@intel.com>
 <8257f42f-7bbd-c033-28f1-f43f21cc81af@linux.intel.com>
 <0267e249fbc650069e4c6d29438ce32289d535cb.camel@intel.com>
 <4da5fd63-d74f-2004-082b-a75cbdb024ad@linux.intel.com>
 <798a8740d1692541ee822535dbe880ce17b2bbbc.camel@intel.com>
 <3bdab0a4-f182-28bb-0206-8d6d4b34c690@linux.intel.com>
In-Reply-To: <3bdab0a4-f182-28bb-0206-8d6d4b34c690@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d2c159fd-44ea-4057-2ca0-08d9d1ff9f08
x-ms-traffictypediagnostic: BY5PR11MB4039:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB40393694EE4DB84A0E7BCC938A4D9@BY5PR11MB4039.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6AXESdXmCHUoVB2jlih8j5jIG60lO5L0ODYgi41O8G/pwsV3vSntx3sbbVDRc75Iq139mnIUMB9hYgC1mP33aMsJMW2p3fzqcZcWXyubO4RJh4pzBdV00nzVMLiEba7BQP3HHK/fO4CFWC1kXayVqYcDCblV9iewG/BfduPOGSRyvycbFPzXASL0f30OvkKTkAB0NkaQ+Rui77ggiiXXYKqMYFVtMLigskV0x5zFvtZAzjgezmBB4MApwcMgeP5N5rCZjWmqG+2pIA38rNThxQyKCBN+gduKIVuY+CjapO2VjoZExU3idrJVl1NM7hIn4Ay6+DkFCFhYKS+54SVjdYftuGyniLzl5CHbTIZOqk49h8rbHpPpy73kMVVvaY9Q6MHGZ6DBt5k3AiF2eH1z+/SRptXKCtebIPo3CgxSw8pTGFO7rsyb+bZQ98iIYyablBJ17jkB0hu65J5581WlSpHzBnOUSYi/klNbXuUaqitU1dRs71HArfqxI5bGaAGY6iFY2xDbcT56viFeWnOCVtlVgxr9d5U/2Ad8+9Kyte5c6K1SYWwmjjG879dn9Qa5H91bRChlJ24eRfrUGxeAb/kZzGs/iJiDTUEHNon1GxIVecZ2AlIn0i5+DXIgZEcjDM7sFEAfF+GQgKkCftuWJva008MrR5n2mo+YR2mmI+i8kZZ0duZayKcCebHkrVfPxjvQjWy1s49z5fUdq+IO3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(66556008)(66946007)(508600001)(8676002)(6486002)(38070700005)(5660300002)(53546011)(26005)(6512007)(6506007)(76116006)(36756003)(186003)(64756008)(66446008)(4326008)(71200400001)(316002)(2906002)(2616005)(122000001)(83380400001)(86362001)(110136005)(82960400001)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2M4RjBsd2pYb2tTbEdHaXhkTXpYTDdieEw2Z1RIQkF2WmU1S2toRVhLekRa?=
 =?utf-8?B?MjUyMkVkQ1FPN2p2Q3Blbm1YeUhuR1VubmFIbU91UmtxRFkwS0Q0TFhmTS9U?=
 =?utf-8?B?OEdCeWpaTXloZUlpMDNDbWQzQ2hnN0h3amM3ZG5TRUJIbGUzVDBSaHZ3VkFp?=
 =?utf-8?B?SWJkSG1za2xMM3BxUXRWVXhRd3FIUnVDdHZtcFI1S1hFYTZCMVc2RUY5QjZT?=
 =?utf-8?B?SnhOYWtzN1c0WE44cEdJeTNhOFJxRVJWNUJkT1NFSmN1NHJzSzVvd2dVYk9v?=
 =?utf-8?B?dVRKcTg5UUVzSkVuNlRmejhCQjE5UUUxc3c2YTIrckljdmVOR0JsbUtjUG9N?=
 =?utf-8?B?anVpcmRpejVPYVMyandENk40RFB5cXJ6SG03TjlPNlNoYXZVTkVZSDhZNkhz?=
 =?utf-8?B?dTJMMFRHbUVnc1VkS1pwZmQyT2ljR3NxOFcwQ2NCQWxLVUlKQXI0WnI4MkN1?=
 =?utf-8?B?UHpxdDJOMkhjMWtQRHVEa0hPYVBhcGh2dFh1dGpwTFA2cS81cHBhQU9mUDUx?=
 =?utf-8?B?cVdkWFkra0JOemxHZncyc1QzMVRPUUNVUlBUMmlUN0hRK2dEZndHd2JvTWs4?=
 =?utf-8?B?emRaUmtTMG5yOU85Y1pURG9rNnlVaTBFTTFvU2JmZW5SWFNVbkhCOTNRb0g0?=
 =?utf-8?B?YzRwMFFHKzFkanZpSllLMVBnSzNzV1lYZTVxbklnck5HZXh5YktidkQvblVk?=
 =?utf-8?B?MFNjcFl1MTlMRWN0VVVmbVUxWWtvTFZRT05Qa09wQmN4MHA3TXBucDNZQUdk?=
 =?utf-8?B?eklBUjgrc2M3M2ZON3B4c3NXNWl2S2NBb0JONzhxT0lhSGx6TEo2cUpwdEIx?=
 =?utf-8?B?ZzhybzFncXZhK1Y2V1ArQTNSdnBnd0NZZjhtbG5CVi9nK3JJYVRiMHBqVWMv?=
 =?utf-8?B?eDk1YXYwbUh1dSs2TVpDQ2E3a2s0Tm1QUnhVVGptRzJLMGw5UXRHM1RrVU5U?=
 =?utf-8?B?eWRoZCtUVkRhM1pTWkt1cStEUVR2MUNkNkZoV2RzWGoxNmQ0S2owL2xDMkN3?=
 =?utf-8?B?b0dtbDdteHl2aWNxSTBlRXBpc2ZPS3BnQ3MybG1USG8wdUh3QnUrTFN3N0p5?=
 =?utf-8?B?eVVQN1VYdlVQeGlGeWJmT1gwcWwyeE9ZMmtnc05pck90RHVKS1hITVR6dkJM?=
 =?utf-8?B?ZWZ2NHExVmE3cjFWcmlPN2xwUGhodEZ5dkh5dVdEWk1zY0lCUFdVU3lMWnZh?=
 =?utf-8?B?eFA4SVhNRUR2V1lkcTljRkltTzNpdGJ1N1EwVGRCa3NaRXlubWUrN1RoQzA2?=
 =?utf-8?B?WXVsL29Hd213M2wwYlJlV09MZzNydDR2SWxMV0RaUDA4ZHJNZWRzSUI1MCs5?=
 =?utf-8?B?clZiTGRqL21Ua1lJNmhCSWhYV1FRa0hFM3F6aEE0cHRkTmhiMXRrUUVuaDNC?=
 =?utf-8?B?NUlOWXpXTXgwMmw4MlBYVmdJYmt6QytrWEdhUjhvT05saVQwNVJZNnlLenRH?=
 =?utf-8?B?WTYycGtaazE0ME1IaDRvVXBFdzBIRHNPV1ZzMDczdXZuN2loN1gyNVhkZ3Zs?=
 =?utf-8?B?YnFyc3h0ZTlIdTJ3Rm9pVVdkWS9CaFlPQy8xaVVQaXBMVDJ5WStESUE5VjFU?=
 =?utf-8?B?RkpvaE5Sc2padmx3TkhDOXpBTUtvVXJxUC92VXoydEtGNDhJck1uaU84N2RW?=
 =?utf-8?B?T1RzL1c1R0M3eVFXWVhnZVpVRnhzQUpKcFJTTkhJWGdaMG9aN0g4WEpmTUZE?=
 =?utf-8?B?Y0J5enZCdEFHZmhjT3ZTL1NpWHo1NG1NOXI2ZUUvdTF6cm4vamhEcm0vYUgv?=
 =?utf-8?B?b1VzUjBianM0QUxyK1hJZUJoRHdlandydTJnaHdpV1J3MytkdERNdWtlSGZI?=
 =?utf-8?B?UDRXWlA5cXgwbC9xZndPNGlJVTlXLzREMThlT05QR254MXNhZzN1eXAxUUF0?=
 =?utf-8?B?anQvcWt1MXNZTm5YdHpoaE83RzNydlQwV3ZIdU9tRmNvSzV3enZ5ZldUNG5B?=
 =?utf-8?B?aWk3SmRPRHFBc1Nvcy9vKzJuVWhsYUlIL0xsMTVoTkZjTnpyeG5UaXNNSytX?=
 =?utf-8?B?RkgvaDI2MFlTbzJPc3lEYlpueFF1UVJjN2MvZnJTNklQVTA3SW9CNGNIVXZG?=
 =?utf-8?B?Yy9ZWmEwZDY0UENsRFYzSFRreHBDY1VOQnVuREhZNTNmM1NrTEExRU9NbG84?=
 =?utf-8?B?UlNoeHhTdFpXRVF2cUY3MmRENkNTQU5NTkdHWnZELzR1NXRBWlV4NThWbHNG?=
 =?utf-8?B?OEJMU1J3MG5jTVhDazlzR1hEMElrQ0xJTFVvT3d0YTlIVWtXSHNGZ0xUOEdM?=
 =?utf-8?B?bE53Qm1wdTJXdXI0T0h3TU1HcE96QVZ1enllU1RPaXZhcmdZT3cvR0h3T0hp?=
 =?utf-8?B?bmNXelRYQ2hHeU1qd2dSZzI4cW0vSE9ZQlc0YVkxbFFsNVBiZHRjdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4CE4950CDB83F2458975C677788F5110@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c159fd-44ea-4057-2ca0-08d9d1ff9f08
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2022 17:03:26.3833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fEbVVYGqIMijw6FuaSWKbSC5r0HK/JaMUFVo4sGL3ZXvGwDYT9YhZuNurGm//bWIVOe2mibtB76ctcC64+4pGc/otu6/gWdqPVRjbb1DqOKwTdMWb4Pa3nFsyoOt6qD8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4039
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915/guc: Print the GuC error capture
 output register list.
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

DQpPbiBGcmksIDIwMjItMDEtMDcgYXQgMDk6MDMgKzAwMDAsIFR2cnRrbyBVcnN1bGluIHdyb3Rl
Og0KPiBPbiAwNi8wMS8yMDIyIDE4OjMzLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdyb3Rl
Og0KPiA+IE9uIFRodSwgMjAyMi0wMS0wNiBhdCAwOTozOCArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6DQo+ID4gPiBPbiAwNS8wMS8yMDIyIDE3OjMwLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJl
dmluIHdyb3RlOg0KPiA+ID4gPiBPbiBUdWUsIDIwMjItMDEtMDQgYXQgMTM6NTYgKzAwMDAsIFR2
cnRrbyBVcnN1bGluIHdyb3RlOg0KPiA+ID4gPiA+ID4gVGhlIGZsb3cgb2YgZXZlbnRzIGFyZSBh
cyBiZWxvdzoNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gMS4gZ3VjIHNlbmRzIG5vdGlmaWNh
dGlvbiB0aGF0IGFuIGVycm9yIGNhcHR1cmUgd2FzIGRvbmUgYW5kIHJlYWR5IHRvIHRha2UuDQo+
ID4gPiA+ID4gPiAJLSBhdCB0aGlzIHBvaW50IHdlIGNvcHkgdGhlIGd1YyBlcnJvciBjYXB0dXJl
ZCBkdW1wIGludG8gYW4gaW50ZXJpbSBzdG9yZQ0KPiA+ID4gPiA+ID4gCSAgKGxhcmdlciBidWZm
ZXIgdGhhdCBjYW4gaG9sZCBtdWx0aXBsZSBjYXB0dXJlcykuDQo+ID4gPiA+ID4gPiAyLiBndWMg
c2VuZHMgbm90aWZpY2F0aW9uIHRoYXQgYSBjb250ZXh0IHdhcyByZXNldCAoYWZ0ZXIgdGhlIHBy
aW9yKQ0KPiA+ID4gPiA+ID4gCS0gdGhpcyB0cmlnZ2VycyBhIGNhbGwgdG8gaTkxNV9ncHVfY29y
ZWR1bXAgd2l0aCB0aGUgY29ycmVzcG9uZGluZyBlbmdpbmUtbWFzaw0KPiA+ID4gPiA+ID4gICAg
ICAgICAgICAgIGZyb20gdGhlIGNvbnRleHQgdGhhdCB3YXMgcmVzZXQNCj4gPiA+ID4gPiA+IAkt
IGk5MTVfZ3B1X2NvcmVkdW1wIHByb2NlZWRzIHRvIGdhdGhlciBlbnRpcmUgZ3B1IHN0YXRlIGlu
Y2x1ZGluZyBkcml2ZXIgc3RhdGUsDQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgZ2xvYmFsIGdw
dSBzdGF0ZSwgZW5naW5lIHN0YXRlLCBjb250ZXh0IHZtYXMgYW5kIGFsc28gZW5naW5lIHJlZ2lz
dGVycy4gRm9yIHRoZQ0KPiA+ID4gPiA+ID4gICAgICAgICAgICAgIGVuZ2luZSByZWdpc3RlcnMg
bm93IGNhbGwgaW50byB0aGUgZ3VjX2NhcHR1cmUgY29kZSB3aGljaCBtZXJlbHkgbmVlZHMgdG8g
dmVyaWZ5DQo+ID4gPiA+ID4gPiAJICB0aGF0IEd1QyBoYWQgYWxyZWFkeSBkb25lIGEgc3RlcCAx
IGFuZCB3ZSBoYXZlIGRhdGEgcmVhZHkgdG8gYmUgcGFyc2VkLg0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IFdoYXQgYWJvdXQgdGhlIHRpbWUgYmV0d2VlbiB0aGUgYWN0dWFsIHJlc2V0IGFuZCByZWNl
aXZpbmcgdGhlIGNvbnRleHQNCj4gPiA+ID4gPiByZXNldCBub3RpZmljYXRpb24/IExhdHRlciB3
aWxsIGNvbnRhaW4gaW50ZWxfY29udGV4dC0+Z3VjX2lkIC0gY2FuIHRoYXQNCj4gPiA+ID4gPiBi
ZSByZS1hc3NpZ25lZCBvciAicmV0aXJlZCIgaW4gYmV0d2VlbiB0aGUgdHdvIGFuZCBzbyBjYXVz
ZSBwcm9ibGVtcyBmb3INCj4gPiA+ID4gPiBtYXRjaGluZyB0aGUgY29ycmVjdCAob3IgYW55KSB2
bWFzPw0KPiA+ID4gPiA+IA0KPiA+ID4gPiBOb3QgaXQgY2Fubm90IGJlY2F1c2UgaXRzIG9ubHkg
YWZ0ZXIgdGhlIGNvbnRleHQgcmVzZXQgbm90aWZpY2F0aW9uIHRoYXQgaTkxNSBzdGFydHMNCj4g
PiA+ID4gdGFraW5nIGFjdGlvbiBhZ2FpbnN0IHRoYXQgY290bmV4dCAtIGFuZCBldmVuIHRoYXQg
aGFwcGVucyBhZnRlciB0aGUgaTkxNV9ncHVfY29kZWR1bXAgKGVuZ2luZS1tYXNrLW9mLWNvbnRl
eHQpIGhhcHBlbnMuDQo+ID4gPiA+IFRoYXQncyB3aGF0IGkndmUgb2JzZXJ2ZWQgaW4gdGhlIGNv
ZGUgZmxvdy4NCj4gPiA+IA0KPiA+ID4gVGhlIGZhY3QgaXQgaXMgIm9ubHkgYWZ0ZXIiIGlzIGV4
YWN0bHkgd2h5IEkgYXNrZWQuDQo+ID4gPiANCj4gPiA+IFJlc2V0IG5vdGlmaWNhdGlvbiBpcyBp
biBhIENUIHF1ZXVlIHdpdGggb3RoZXIgc3R1ZmYsIHJpZ2h0PyBTbyBjYW4gYmUNCj4gPiA+IHNv
bWUgdW5yZWxhdGVkIHRpbWUgYWZ0ZXIgdGhlIGFjdHVhbCByZXNldC4gQ291bGQgaGF2ZSBjb250
ZXh0IGJlDQo+ID4gPiByZXRpcmVkIGluIHRoZSBtZWFudGltZSBhbmQgZ3VjX2lkIHJlbGVhc2Vk
IGlzIHRoZSBxdWVzdGlvbi4NCj4gPiA+IA0KPiA+ID4gQmVjYXVzZSBpOTE1IGhhcyBubyBpZGVh
IHRoZXJlIHdhcyBhIHJlc2V0IHVudGlsIHRoaXMgZGVsYXllZCBtZXNzYWdlDQo+ID4gPiBjb21l
cyBvdmVyLCBidXQgaXQgY291bGQgc2VlIHVzZXIgaW50ZXJydXB0IHNpZ25hbGluZyBlbmQgb2Yg
YmF0Y2gsDQo+ID4gPiBhZnRlciB0aGUgcmVzZXQgaGFzIGhhcHBlbmVkLCB1bmJla25vd24gdG8g
aTkxNSwgcmlnaHQ/DQo+ID4gPiANCj4gPiA+IFBlcmhhcHMgdGhlIGFuc3dlciBpcyBndWNfaWQg
Y2Fubm90IGJlIHJlbGVhc2VkIHZpYSB0aGUgcmVxdWVzdCByZXRpcmUNCj4gPiA+IGZsb3dzLiBP
ciBHdUMgc2lnbmFsaW5nIHJlbGVhc2Ugb2YgZ3VjX2lkIGlzIGEgdGhpbmcsIHdoaWNoIGlzIHRo
ZW4NCj4gPiA+IG9yZGVyZWQgdmlhIHRoZSBzYW1lIENUIGJ1ZmZlci4NCj4gPiA+IA0KPiA+ID4g
SSBkb24ndCBrbm93LCBqdXN0IGFza2luZy4NCj4gPiA+IA0KPiA+IEFzIGxvbmcgYXMgdGhlIGNv
bnRleHQgaXMgcGlubmVkLCB0aGUgZ3VjLWlkIHdvbnQgYmUgcmUtYXNzaWduZWQuIEFmdGVyIGEg
Yml0IG9mIG9mZmxpbmUgYnJhaW4tZHVtcA0KPiA+IGZyb20gSm9obiBIYXJyaXNvbiwgdGhlcmUg
YXJlIG1hbnkgZmFjdG9ycyB0aGF0IGNhbiBrZWVwIHRoZSBjb250ZXh0IHBpbm5lZCAocmVjb3Vu
dHMpIGluY2x1ZGluZw0KPiA+IG5ldyBvciBvdXN0YW5kaW5nIHJlcXVlc3RzLiBTbyBhIGd1Yy1p
ZCBjYW4ndCBnZXQgcmUtYXNzaWduZWQgYmV0d2VlbiBhIGNhcHR1cmUtbm90aWZ5IGFuZCBhDQo+
ID4gY29udGV4dC1yZXNldCBldmVuIGlmIHRoYXQgb3V0c3RhbmRpbmcgcmVxdWVzdCBpcyB0aGUg
b25seSByZWZjb3VudCBsZWZ0IHNpbmNlIGl0IHdvdWxkIHN0aWxsDQo+ID4gYmUgY29uc2lkZXJl
ZCBvdXRzdGFuZGluZyBieSB0aGUgZHJpdmVyLiBJIGFsc28gdGhpbmsgd2UgbWF5IGFsc28gYmUg
dGFsa2luZyBwYXN0IGVhY2ggb3RoZXINCj4gPiBpbiB0aGUgc2Vuc2UgdGhhdCB0aGUgZ3VjLWlk
IGlzIHNvbWV0aGluZyB0aGUgZHJpdmVyIGFzc2lnbnMgdG8gYSBjb250ZXh0IGJlaW5nIHBpbm5l
ZCBhbmQgb25seQ0KPiA+IHRoZSBkcml2ZXIgY2FuIHVuLWFzc2lnbiBpdCAoYm90aCBhc3NpZ25p
bmcgYW5kIHVuYXNpZ25pbmcgaXMgdmlhIEgyRyBpbnRlcmFjdGlvbnMpLg0KPiA+IEkgZ2V0IHRo
ZSBzZW5zZSB5b3UgYXJlIGFzc3VtaW5nIHRoZSBHdUMgY2FuIHVuLWFzc2lnbiB0aGUgZ3VjLWlk
J3Mgb24gaXRzIG93biAtIHdoaWNoIGlzbid0DQo+ID4gdGhlIGNhc2UuIEFwb2xvZ2llcyBpZiBp
IG1pcy1hc3N1bWVkLg0KPiANCj4gSSBkaWQgbm90IHRoaW5rIEd1QyBjYW4gcmUtYXNzaWduIGNl
LT5ndWNfaWQuIEkgYXNrZWQgYWJvdXQgcmVxdWVzdC9jb250ZXh0IGNvbXBsZXRlL3JldGlyZSBo
YXBwZW5pbmcgYmVmb3JlIHJlc2V0L2NhcHR1cmUgbm90aWZpY2F0aW9uIGlzIHJlY2VpdmVkLg0K
PiANCj4gVGhhdCB3b3VsZCBiZSB0aGUgdGltZSB3aW5kb3cgYmV0d2VlbiB0aGUgbGFzdCBpbnRl
bF9jb250ZXh0X3B1dCwgc28gbGFzdCBpOTE1X3JlcXVlc3RfcHV0IGZyb20gcmV0aXJlLCBhdCB3
aGljaCBwb2ludCBBRkFJQ1QgR3VDIGNvZGUgcmVsZWFzZXMgdGhlIGd1Y19pZC4gRXhlY3V0aW9u
IHRpbWVsaW5lIGxpa2U6DQo+IA0KPiA+IC0tLS0tLSBycTEgLS0tLS0tfC0tLS0tLSBycTIgLS0t
LS0tfA0KPiAgICAgXiBlbmdpbmUgcmVzZXQJCSAgICBeIHJxMiwgcnExIHJldGlyZSwgZ3VjIGlk
IHJlbGVhc2VkDQo+IA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAkJXiBHdUMgcmVzZXQgbm90aWZ5IHJlY2VpdmVkIC0gZ3VjX2lk
IG5vdCBrbm93biBhbnkgbW9yZT8NCj4gICANCj4gWW91IGFyZSBzYXlpbmcgc29tZXRoaW5nIGlz
IGd1YXJhbnRlZWQgdG8gYmUgaG9sZGluZyBvbnRvIHRoZSBndWNfaWQgYXQgdGhlIHBvaW50IG9m
IHJlY2VpdmluZyB0aGUgbm90aWZpY2F0aW9uPyAiVGhlcmUgYXJlIG1hbnkgZmFjdG9ycyB0aGF0
IGNhbiBrZWVwIHRoZSBjb250ZXh0IHBpbm5lZCIgLSB3aGF0IGlzIGl0IGluIHRoaXMgY2FzZT8g
T3IgdGhlIGNhc2UgY2Fubm90IGhhcHBlbj8NCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28N
Cg0KYWJvdmUgY2hhcnQgaXMgaW5jb3JyZWN0OiBHdUMgcmVzZXQgbm90aWZpY2F0aW9uIGlzIHNl
bnQgZnJvbSBHdUMgdG8gaG9zdCBiZWZvcmUgaXQgc2VuZHMgdGhlIGVuZ2luZSByZXNldCBub3Rp
ZmljYXRpb24gDQouLi5hbGFuDQoNCg0KDQoNCg0K
