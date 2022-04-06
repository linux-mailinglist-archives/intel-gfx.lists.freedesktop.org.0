Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26C14F6190
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 16:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E032F10E33C;
	Wed,  6 Apr 2022 14:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7C910E487
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 14:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649255292; x=1680791292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=q/eosBchT/uSlhDx9/nxVOIs4axdeylitGiEGp0EuOI=;
 b=m+i6O0MHYuRN6B3gdLzOyugnWjCmFz583KnqUCfa2gnDpstTeLm2i9y7
 9JxU/4RlPs9aD7kwHXwg1fTNRTqu6UwW8ldzrYkNCWQtDW7XRIpX2eDx5
 VQASgkJIvzNd38mklAvmo48a7vk/f3lw2I0HjyYYo5OIEbhg/Z+asNUFo
 hNRhz8squYE40rofQDOpv8QwvCcfzRDSAhwGDPdSx4iBbbQYguetd1Q3Q
 fl/0Am2IPZranMMLMvr9N4yFzmBgat/IRu/BcEXoDzsqU55W/y1u2GkCx
 qsAP21wDczlbrXnM/u9+AIeo3a3qJXW8aiX92WJYASUvIQtxvlkKnz8le A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="243200765"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="243200765"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 07:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="524489543"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2022 07:15:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 07:15:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Apr 2022 07:15:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Apr 2022 07:15:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BONGTwqkyd4h8FBTiCx/MWh84jgbCKsw2eWZ0gnWQOBYH9FINBJ4o1aXCNdcOlJLRBmINzDYZGCNel4GIIkERcrcXAVC5aThxQhImH2hhOILAGvub0/PUKyNGfU6X1pQ7z5BMVddguMMp6NE2wqrq2JmbC3tpkFlTpcRoI2TpfwY1rXHYTJwlMQBJh+DHrqKDQrpJphK05dKfXYjNVT5IrcnPtvy0bVTLY3lYdwqu5470zdlWYlXTD42lzqV3BDn6P/P5h1qcw6uVMnsDNDkUsn9srsnX9VSySCHVvOmOpsg/MFB4j8FBB2fIy6KtKJpBrhxN8uMVpQXRMdlhvLQLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q/eosBchT/uSlhDx9/nxVOIs4axdeylitGiEGp0EuOI=;
 b=nHg0s+GlvyS6oU6J0EdIhUWfXt9C0svsQC7Nx34nJR0oVIYmviQ8uJDOLkpe2bRNLf5yjibYg/G3VWNOMOp6BasEaHI2TOTXcDLbboiFuMJmORvvqrIBAnwaiT3cOt/psEIuSKhfwJ78Q9Ui1W8HPD5utITEVwLRuK0t1lBDkuv5gkXxeZOut/R8iTI9GVaaDHaqgsjEMaOb6P/fFL3dzz5Ycixs3Ns6D3a5nTHeOlYQcjnwfpvCNOtFnQc50aRwv/EVewgO5IXrPI+F3HRMkNKk0u0k1SCPIsXR7ranxThVlMklYudRCweIZGjc+8snWYAEpMasSo1gGlx76w54PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CO1PR11MB4945.namprd11.prod.outlook.com (2603:10b6:303:9c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.21; Wed, 6 Apr
 2022 14:15:28 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%7]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 14:15:28 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [PATCH] drm/i915: program wm blocks to at least blocks required
 per line
Thread-Index: AQHYSbSYiEPeU/SmNUGg/JKV45vY8qzi5boAgAAEiICAAAPbgA==
Date: Wed, 6 Apr 2022 14:15:28 +0000
Message-ID: <52f99a1675a7abe80de884873fa1ddb84c0f78f5.camel@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
 <Yk2dQ7VIKWFHfFDl@intel.com>
In-Reply-To: <Yk2dQ7VIKWFHfFDl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc203fbd-3269-4546-2936-08da17d7e71d
x-ms-traffictypediagnostic: CO1PR11MB4945:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO1PR11MB4945412ABA040CBFE3E971E6F6E79@CO1PR11MB4945.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: airEWxJY1PMuW6uGO0GIQi+NV89XOI/+307VraaxkVDX08tnEikLrASHOxYKAM6pjOztnagN51snC4VKqwlLKtBqZ9+MJfeEcop4DuxSDUtTeFBOyZ+xyNWcZDkHILD/Ef3wY/ehDcZr1OlWa2GZ4m1WwTRMB5ZM7O/Ux+ITBv+13fAy6i4Gh946glvIL5h+LswApbz+DmXxcCjoDH3oz2aX3MKJBOTNf1pldvhIYHpIqOC4tR5Jbd17+1f1RIolohuQ1CiT85kkAC0VjkdJ86jtTIiPC3G8Dh7Cn7osjktEKkpCkHNRatvAUIJ9vXnzPuB2yiQ105bgcyOHBqQ9xSws7WN+wLUiFz4kpuXRNQ8nXNEGZm2gwwmUVayfFq7LEgeSrFl2tSLZThgqABMd/I0elbCOPV9+88nXkIvKzT/3HuitmdYe93d5ei8iZBehRWN5FJQBfyzxPtxvqGqjhUJkAobvlUYlO5lKGXm0bagfLmZV0MwO6BQpVdnthzVV7F3I+zg1OhAE4uKgVHBxqp+bn3b3uH9jjElD44Z3usA2RWCkavZCOSH4u4i8KqGGm5+9egvgNSu4IPaEVV+KHXMIgvbSWWp/e+lx7NkSVifZMyIrW+/nI6DHkSCfWRzlvlrqoXG+6F/BCznela2aoYOzL1sDYVUBBTEESE5zIO6G0lRPYSVsaXCVWCipK55xGq/+dBX9oDwKRY982gP6uQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(91956017)(316002)(66446008)(66556008)(66946007)(76116006)(110136005)(6636002)(66574015)(36756003)(186003)(26005)(83380400001)(8936002)(2616005)(38100700002)(38070700005)(2906002)(86362001)(6512007)(6506007)(64756008)(66476007)(8676002)(4326008)(508600001)(122000001)(82960400001)(6486002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0RYQTFKTHlYb2xkdDNsNmc3a1UwT2ZqalFvQW5mYWlBSGFrdHJrN1crUVNn?=
 =?utf-8?B?d1ZUUVJlRFd0S1pld0tKL0p4SFZpdmZCMENxSSt3ZkNzV1B5Q2EyMStYWmRW?=
 =?utf-8?B?RDZwRmh2OG9FOG56OGgrSWJlOUx2NmVXOGhLWnhOVVQzN3FHNk5Udzg1bkhI?=
 =?utf-8?B?ZjNaNURyVVJ3b040ekNURktBbzhDa1djY09QZ1dJYXZoRks4Ykk0L2FKZlI3?=
 =?utf-8?B?NXF6V0J1a2xYcTByK0lCN1NuYXBuNjRwd0FpSU9pQUhSZ1JvZEduM3N4WEZ5?=
 =?utf-8?B?ZmpCRy9YWEZOZS80NGhZdTlBcnFJZFZzNVJoYXBVVUk4K3Q3MmthVm1hU2Vs?=
 =?utf-8?B?SnUyYitTM3BHMnhDVTVRVHg1b2hmdks5eVI1U0hVM0o5VnBTZVpGVW1OSUlP?=
 =?utf-8?B?SEhtOFVDTmpyaU1JNDRPVzB5amIvVVRGeDBjVFNqWXFCY2QzWHZUd0JmZDJK?=
 =?utf-8?B?cFd1c0huV0JiaDFZVFBBVHRGK29udCsvZE5CMUVmZGxVckZ3WlZtRnR5SE5E?=
 =?utf-8?B?K1Y3Qno5a0E2YzFVcjIyUlEvSWttNGgrTWVFbGg5dkhod211QXkwM1N3ZWxL?=
 =?utf-8?B?OEFwV25aeVBwNXZOaThEN3BTQjhwckFsN25jUzl4bEJaV0JudDVPSG5KZVRJ?=
 =?utf-8?B?TUdOVzFXVTNlcG85VTVlTVZlRW5PcG5BbWprMHdpQlBxcUx4N2NWaFpGSTgv?=
 =?utf-8?B?Y0YrTm8xSy9HQzI0L2I4cEFkU0psYlgrS0NENlFRMkJOSGw1NmY1Z0E5RGUx?=
 =?utf-8?B?SjRaUkRvZkptMDNIU1B0cllWTUZvYmtxYkk0NklrdGkxeHhtWVF6bzZRVmtZ?=
 =?utf-8?B?SWZKWG9jSUhQSmw4cTFqMEZqd3dkV2hRV3VsK2tqdXJJelQxMGl1QW8vNU1h?=
 =?utf-8?B?cEpmeVZETFZOUmN1S3NCL1ZyWmN4SEdPQVBMOEFaTEJKWkxRbkVqTXhDVUho?=
 =?utf-8?B?Ykk0VjlIOW1xZTNoSnRlUFlEQWdXTzBtK2Z2eGJOSTRibll3aWZPUlhGV1Fn?=
 =?utf-8?B?SklqUStaRlg4Mkl6NEhKd2JJZzlWblhSY2Y2c05QZll5cjBYb1N3UVExTktF?=
 =?utf-8?B?SXorY1ViTnJBWlp4RlBRUGJlcE14UUNsd2FqSzlEVlNpRzZEVkN5VkFtdkpn?=
 =?utf-8?B?UjRROXJjdW1kYjR2OXo3bVg2S0V6cnZXNjljZmdmN2FWMDFXbGNIdVZvMGhV?=
 =?utf-8?B?SThPdzRPRWo0MVJKL3Ywa001V2FRUU1UNnEyQ0ZEY2dpK1RaZUxCdXYzS205?=
 =?utf-8?B?aFYybjFTK0lTa0szejNxVTBaN1dsUk9kYSsvTWF5anVCeDRSRmYvTzJIcVds?=
 =?utf-8?B?cm9hY3pzTnJ4N3FjbEFlZldVVE8vOVVrVlM1Q1VyMmNZMHNEc3ZhMG9pMDE4?=
 =?utf-8?B?VjhiYVd0YkVJbE8xeDdSMTBNQUh2VXNFOUE5eWtRVkxBaGVqcStPczhyZHZ2?=
 =?utf-8?B?c2IyTnRmb29OcHJUMTl1eW5LNk95K1haUW1tT081VUhadGR0WDJtZ0J3aVhV?=
 =?utf-8?B?aXJ3YkJVNWJXSDJhQk9kcEhFbk1SQkE5QWFRS1lxRkxXbGpMV2xuK3hSZXhp?=
 =?utf-8?B?bmw1UEM2U25RN1d1RHZ5d3ArQ2hOOUpraDB4KytKRmNFNytyRlZvSmlzcjl4?=
 =?utf-8?B?UDFCVWY0TWdJUlNqaGg5KzJEZ245U3AwSkY3WnZpRG9tWDFWRkFsV0k1aTVr?=
 =?utf-8?B?UmhwV0kwUUF6NGdyNzNVNEtLanBhUjJwZmE5anE4UmZGWHNnTGkxRW9jZURt?=
 =?utf-8?B?bE1INHVNYU9RblNnWWF1aXc1Z2JTQlp5a3ZpR1liazZ2STkvWks0MGhpQVU3?=
 =?utf-8?B?NXdlQ200Q0czbUpJODJ0MTljV0plbG50dVo0SUMyQSt3b0lNeCs2UERrU2RO?=
 =?utf-8?B?Y2JtOGpLQ2U4VVNYS2lHblNITjhJMlpseWNrZ1FPajlCbHdDdG8vNFlQSmVB?=
 =?utf-8?B?L1lNR1d6b3pKZk5iYnEraVdHN3FzMVM4VDJZdHpsa2tGbUNieDV3dHVsMHA0?=
 =?utf-8?B?dXo1cHZYUFFESkVTSVIvMm12ZVZSWE0wL254bUFwNmNRQ05BWWZxV3F0alVY?=
 =?utf-8?B?cFFZc09ReGRSZ056bjRLNVg2QUl0dW1wM3djcU9ldWsrNno1R0YzOFZVaE91?=
 =?utf-8?B?c0lySDNtZEJlNjNNRzErUzZiblJCRExLRXdlYVRzOCt2QXZXbTdKQlpWbzls?=
 =?utf-8?B?UVZKbGNlQUtvNE0ySGtyNzVQQWJLWFl5MTRoRHlScVRQTXBzOGNlRkRWS2VP?=
 =?utf-8?B?Mm9xbklEWERxN2NMNjEvU1JRNU5Qb0lDcEZtb1ZaRGwzUldyQU1YTHNDWU5X?=
 =?utf-8?B?b3Q4YTBUNUU1UWw4blZVVm1oclB5OFBZc3lsRnZLaVNPQ3hNVlJjVlllb1F6?=
 =?utf-8?Q?ST6lsKtq2MUG3htfdgSXf73v4zPXKtXAQvp/o?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2FD8046652B4084C93DB54A45B34D529@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc203fbd-3269-4546-2936-08da17d7e71d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 14:15:28.8577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EP2mP+ZY8B39ex/EuKnbyCKA/Ne67P4IABWQ0s+7IyVw8CKk3QZtZhG5/CAQenXaAI2tBDP3vVHQc2bRSaHpXHOtV2w1Xn+JDctoQ4eXR7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4945
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: program wm blocks to at least
 blocks required per line
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

T24gV2VkLCAyMDIyLTA0LTA2IGF0IDE3OjAxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgQXByIDA2LCAyMDIyIGF0IDA0OjQ1OjI2UE0gKzAzMDAsIExpc292c2tpeSwg
U3RhbmlzbGF2IHdyb3RlOg0KPiA+IE9uIFdlZCwgQXByIDA2LCAyMDIyIGF0IDAzOjQ4OjAyUE0g
KzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIE1vbiwgQXByIDA0LCAyMDIy
IGF0IDA0OjQ5OjE4UE0gKzAzMDAsIFZpbm9kIEdvdmluZGFwaWxsYWkgd3JvdGU6DQo+ID4gPiA+
IEluIGNvbmZpZ3VyYXRpb25zIHdpdGggc2luZ2xlIERSQU0gY2hhbm5lbCwgZm9yIHVzZWNhc2Vz
IGxpa2UNCj4gPiA+ID4gNEsgNjAgSHosIEZJRk8gdW5kZXJydW5zIGFyZSBvYnNlcnZlZCBxdWl0
ZSBmcmVxdWVudGx5LiBMb29rcw0KPiA+ID4gPiBsaWtlIHRoZSB3bTAgd2F0ZXJtYXJrIHZhbHVl
cyBuZWVkIHRvIGJ1bXBlZCB1cCBiZWNhdXNlIHRoZSB3bTANCj4gPiA+ID4gbWVtb3J5IGxhdGVu
Y3kgY2FsY3VsYXRpb25zIGFyZSBwcm9iYWJseSBub3QgdGFraW5nIHRoZSBEUkFNDQo+ID4gPiA+
IGNoYW5uZWwncyBpbXBhY3QgaW50byBhY2NvdW50Lg0KPiA+ID4gPiANCj4gPiA+ID4gQXMgcGVy
IHRoZSBCc3BlYyA0OTMyNSwgaWYgdGhlIGRkYiBhbGxvY2F0aW9uIGNhbiBob2xkIGF0IGxlYXN0
DQo+ID4gPiA+IG9uZSBwbGFuZV9ibG9ja3NfcGVyX2xpbmUgd2Ugc2hvdWxkIGhhdmUgc2VsZWN0
ZWQgbWV0aG9kMi4NCj4gPiA+ID4gQXNzdW1pbmcgdGhhdCBtb2Rlcm4gSFcgdmVyc2lvbnMgaGF2
ZSBlbm91Z2ggZGJ1ZiB0byBob2xkDQo+ID4gPiA+IGF0IGxlYXN0IG9uZSBsaW5lLCBzZXQgdGhl
IHdtIGJsb2NrcyB0byBlcXVpdmFsZW50IHRvIGJsb2Nrcw0KPiA+ID4gPiBwZXIgbGluZS4NCj4g
PiA+ID4gDQo+ID4gPiA+IGNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiA+ID4gPiBjYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5v
ZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiA+ID4g
LS0tDQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMTkgKysrKysr
KysrKysrKysrKysrLQ0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0K
PiA+ID4gPiBpbmRleCA4ODI0ZjI2OWU1ZjUuLmFlMjhhOGM2M2NhNCAxMDA2NDQNCj4gPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+ID4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gPiA+IEBAIC01NDc0LDcgKzU0NzQsMjQg
QEAgc3RhdGljIHZvaWQgc2tsX2NvbXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiA+ID4gKmNydGNfc3RhdGUsDQo+ID4gPiA+ICAJCX0NCj4gPiA+ID4gIAl9
DQo+ID4gPiA+ICANCj4gPiA+ID4gLQlibG9ja3MgPSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChz
ZWxlY3RlZF9yZXN1bHQpICsgMTsNCj4gPiA+ID4gKwkvKg0KPiA+ID4gPiArCSAqIExldHMgaGF2
ZSBibG9ja3MgYXQgbWluaW11bSBlcXVpdmFsZW50IHRvIHBsYW5lX2Jsb2Nrc19wZXJfbGluZQ0K
PiA+ID4gPiArCSAqIGFzIHRoZXJlIHdpbGwgYmUgYXQgbWluaW11bSBvbmUgbGluZSBmb3IgbGlu
ZXMgY29uZmlndXJhdGlvbi4NCj4gPiA+ID4gKwkgKg0KPiA+ID4gPiArCSAqIEFzIHBlciB0aGUg
QnNwZWMgNDkzMjUsIGlmIHRoZSBkZGIgYWxsb2NhdGlvbiBjYW4gaG9sZCBhdCBsZWFzdA0KPiA+
ID4gPiArCSAqIG9uZSBwbGFuZV9ibG9ja3NfcGVyX2xpbmUsIHdlIHNob3VsZCBoYXZlIHNlbGVj
dGVkIG1ldGhvZDIgaW4NCj4gPiA+ID4gKwkgKiB0aGUgYWJvdmUgbG9naWMuIEFzc3VtaW5nIHRo
YXQgbW9kZXJuIHZlcnNpb25zIGhhdmUgZW5vdWdoIGRidWYNCj4gPiA+ID4gKwkgKiBhbmQgbWV0
aG9kMiBndWFyYW50ZWVzIGJsb2NrcyBlcXVpdmFsZW50IHRvIGF0IGxlYXN0IDEgbGluZSwNCj4g
PiA+ID4gKwkgKiBzZWxlY3QgdGhlIGJsb2NrcyBhcyBwbGFuZV9ibG9ja3NfcGVyX2xpbmUuDQo+
ID4gPiA+ICsJICoNCj4gPiA+ID4gKwkgKiBUT0RPOiBSZXZpc2l0IHRoZSBsb2dpYyB3aGVuIHdl
IGhhdmUgYmV0dGVyIHVuZGVyc3RhbmRpbmcgb24gRFJBTQ0KPiA+ID4gPiArCSAqIGNoYW5uZWxz
JyBpbXBhY3Qgb24gdGhlIGxldmVsIDAgbWVtb3J5IGxhdGVuY3kgYW5kIHRoZSByZWxldmFudA0K
PiA+ID4gPiArCSAqIHdtIGNhbGN1bGF0aW9ucy4NCj4gPiA+ID4gKwkgKi8NCj4gPiA+ID4gKwli
bG9ja3MgPSBza2xfd21faGFzX2xpbmVzKGRldl9wcml2LCBsZXZlbCkgPw0KPiA+ID4gPiArCQkJ
bWF4X3QodTMyLCBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChzZWxlY3RlZF9yZXN1bHQpICsgMSwN
Cj4gPiA+ID4gKwkJCQkgIGZpeGVkMTZfdG9fdTMyX3JvdW5kX3VwKHdwLT5wbGFuZV9ibG9ja3Nf
cGVyX2xpbmUpKSA6DQo+ID4gPiA+ICsJCQlmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChzZWxlY3Rl
ZF9yZXN1bHQpICsgMTsNCj4gPiA+IA0KPiA+ID4gVGhhdCdzIGxvb2tzIHJhdGhlciBjb252b2x1
dGVkLg0KPiA+ID4gDQo+ID4gPiAgIGJsb2NrcyA9IGZpeGVkMTZfdG9fdTMyX3JvdW5kX3VwKHNl
bGVjdGVkX3Jlc3VsdCkgKyAxOw0KPiA+ID4gKyAvKiBibGFoICovDQo+ID4gPiArIGlmIChoYXNf
bGluZXMpDQo+ID4gPiArCWJsb2NrcyA9IG1heChibG9ja3MsIGZpeGVkMTZfdG9fdTMyX3JvdW5k
X3VwKHdwLT5wbGFuZV9ibG9ja3NfcGVyX2xpbmUpKTsNCj4gPiANCj4gPiBXZSBwcm9iYWJseSBu
ZWVkIHRvIGRvIHNpbWlsYXIgcmVmYWN0b3JpbmcgaW4gdGhlIHdob2xlIGZ1bmN0aW9uIDstKQ0K
PiA+IA0KPiA+ID4gQWxzbyBzaW5jZSBBcnQgc2FpZCBub3RoaW5nIGxpa2UgdGhpcyBzaG91bGQg
YWN0dWFsbHkgYmUgbmVlZGVkDQo+ID4gPiBJIHRoaW5rIHRoZSBjb21tZW50IHNob3VsZCBtYWtl
IGl0IGEgYml0IG1vcmUgY2xlYXIgdGhhdCB0aGlzDQo+ID4gPiBpcyBqdXN0IGEgaGFjayB0byB3
b3JrIGFyb3VuZCB0aGUgdW5kZXJydW5zIHdpdGggc29tZSBzaW5nbGUNCj4gPiA+IG1lbW9yeSBj
aGFubmVsIGNvbmZpZ3VyYXRpb25zLg0KPiA+IA0KPiA+IEl0IGlzIGFjdHVhbGx5IG5vdCBxdWl0
ZSBhIGhhY2ssIGJlY2F1c2Ugd2UgYXJlIG1pc3NpbmcgdGhhdCBjb25kaXRpb24NCj4gPiBpbXBs
ZW1lbnRhdGlvbiBmcm9tIEJTcGVjIDQ5MzI1LCB3aGljaCBpbnN0cnVjdHMgdXMgdG8gc2VsZWN0
IG1ldGhvZDINCj4gPiB3aGVuIGRkYiBibG9ja3MgYWxsb2NhdGlvbiBpcyBrbm93biBhbmQgdGhh
dCByYXRpbyBpcyA+PSAxLg0KDQpJbiB0aGUgc2xpZGVzIHNlbnQgYnkgQXJ0LCBJdCBpcyBtZW50
aW9uZWQgdGhhdCBkcml2ZXIgc2hvdWxkIGJlIHVzaW5nIHRoZSB3bSByZXN1bHRzIHRvIGFycml2
ZSBhdA0Kb3B0aW11bSBkZGIgYWxsb2NhdGlvbnMuIFNvIEkgZ3Vlc3MgdGhlIGJlc3Qgc29sdXRp
b24gd291bGQgYmUgdG8gaWRlbnRpZnkgdGhlIGV4dHJhIGxhdGVuY3kgYmVjYXVzZQ0Kb2YgdGhl
IHNpbmdsZSBEUkFNIGNoYW5uZWwgYW5kIGNhbGN1bGF0ZSB0aGUgd20uDQoNCj4gDQo+IFRoZSBk
ZGIgYWxsb2NhdGlvbiBpcyBub3QgeWV0IGtub3duLCBzbyB3ZSdyZSBpbXBsZW1lbnRpbmcgdGhl
DQo+IGFsZ29yaXRobSAxMDAlIGNvcnJlY3RseS4NCj4gDQo+IEFuZCB0aGlzIHBhdGNoIGRvZXMg
bm90IGltcGxlbWVudCB0aGF0IG1pc2lzbmcgcGFydCBhbnl3YXkuDQoNClRoYW5rcy4gVXBkYXRl
ZCB0aGUgcGF0Y2ggYXMgcGVyIHlvdXIgY29tbWVudHMgYW5kIFYyIHNlbnQuDQoNCkJSDQpWaW5v
ZA0KDQo+ID4gTWVhbiB0aGlzIG9uZToNCj4gPiANCj4gPiAiSWYgKCdwbGFuZSBidWZmZXIgYWxs
b2NhdGlvbicgaXMga25vd24gYW5kIChwbGFuZSBidWZmZXIgYWxsb2NhdGlvbiAvIHBsYW5lIGJs
b2NrcyBwZXIgbGluZSkNCj4gPiA+PTEpDQo+ID4gU2VsZWN0ZWQgUmVzdWx0IEJsb2NrcyA9IE1l
dGhvZCAyIg0KPiA+IA0KPiA+IFN0YW4NCj4gPiANCj4gPiA+IA0KPiA+ID4gPiAgCWxpbmVzID0g
ZGl2X3JvdW5kX3VwX2ZpeGVkMTYoc2VsZWN0ZWRfcmVzdWx0LA0KPiA+ID4gPiAgCQkJCSAgICAg
d3AtPnBsYW5lX2Jsb2Nrc19wZXJfbGluZSk7DQo+ID4gPiA+ICANCj4gPiA+ID4gLS0gDQo+ID4g
PiA+IDIuMjUuMQ0KPiA+ID4gDQo+ID4gPiAtLSANCj4gPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+
ID4gSW50ZWwNCg==
