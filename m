Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6933027B0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 17:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89AC6E30C;
	Mon, 25 Jan 2021 16:22:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CFE36E0BF
 for <Intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 16:22:31 +0000 (UTC)
IronPort-SDR: OSAjaMknEys04yFTCPovF4+cNQBzd76mgd7+PRwK0IHF5UU10krVYRPSgqnmYKDpOLrWQXYCsE
 pXMUjNFW976g==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="241289142"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="241289142"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 08:22:30 -0800
IronPort-SDR: ireIzn7zQvHsMsqgEVLkZz769hZd2siuM/fkof0KUGN6AXkydhXGbOizjuPKOMjjsukqa2XJoy
 5gI+Sh63Glrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="504201289"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 25 Jan 2021 08:22:28 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 25 Jan 2021 08:22:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 25 Jan 2021 08:22:28 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 25 Jan 2021 08:22:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e4YZwZ3tt682xnfvUp2iFFWjZIlsS7RS9zm3mOJpjK1QpvEurY4gtQIqcTzyHrb6yYh6Pdk27eb9qZ9p/oNe7426qdwGK3sYY8Lr/9bqspTXCQRmUNrbQf6rb5Mcx0/V0xffhzI/XHbuye53gU3e5lI+WN9FIReLmaqaGwEtUO7uJGSEUBThFxEhSSRcAhq5vrtdUgAardrzsgNI65w+5SYvSM7k5lJ2Tb8czu4tcyQzb+obZHHMoXqIXWaje0O/L5gQ2UbbCxIPEbIO+zHrHrG8A8zYCpD+Y0L8/t1q7L6hk8FSSIQBJ/rDIVXTz3jLxuEOjh+eSkI3fpz4qRT5hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G1JXHX/FCMv8hR35eal9hp6bha4V4o8Ah7ZaY5rg9vE=;
 b=QCfg2mFs6IVVF7U0BPbFN7/wnYUErIIp8OW+85xxHu+AvJY27aMHLqCU8F7R/m0G8dIvqDy+OFjYyrIQNco3gwGHeVUpNvYvpLxcotp530pB6LxWXhYEvevno4QUu5CKB0Gp4yGBURaige2QtGYuNzS8n8kaEnuf9H1Q5PQintmkqhNza8CZSeNxGaa+qTnl+10w/zIAEhMkzrBrB8nI0FgWBsBkTtN48Ohb4ANtMYOlfMhLA/7bP6+Pc6lCQ/uqHx/vP7fqOLGTFrlcPRXI+/qrDDu2olhhlcO+0Ne/LKJTbc1Ppt6cdYhT40XzEadqDQDEebzQ8PwxztnIil7VsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G1JXHX/FCMv8hR35eal9hp6bha4V4o8Ah7ZaY5rg9vE=;
 b=w0Kkgc3IGdAseIC7u0FzrzbF0SL0i8QRte2vciQL72VObmxLeogXllGhkrzdxQ4tyNvl2JnUpneylTTvWvHCvkUk2EaQOb9lRXnS3G1b5C2F4GcxPROvGSTABjquojBy631xYyHqTfqngUWqLmz/Eju/Z/+GRCBFswfJs0hK6OQ=
Received: from DM6PR11MB2683.namprd11.prod.outlook.com (2603:10b6:5:c6::13) by
 DM6PR11MB3850.namprd11.prod.outlook.com (2603:10b6:5:13c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.16; Mon, 25 Jan 2021 16:22:26 +0000
Received: from DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2]) by DM6PR11MB2683.namprd11.prod.outlook.com
 ([fe80::29b9:554:9ed:83b2%6]) with mapi id 15.20.3784.017; Mon, 25 Jan 2021
 16:22:26 +0000
From: "Gaurav, Kumar" <kumar.gaurav@intel.com>
To: "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>, "Huang, Sean Z"
 <sean.z.huang@intel.com>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>, "Bommu, Krishnaiah"
 <krishnaiah.bommu@intel.com>
Thread-Topic: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component - Mesa
 single session
Thread-Index: AQHW7jbI6IEpJJ186UqvrtKnj+CEZqo1SOOAgAB8nlCAAr5KAIAAC7Yg
Date: Mon, 25 Jan 2021 16:22:26 +0000
Message-ID: <DM6PR11MB2683D4C44008F6D1E1A5A1AD97BD9@DM6PR11MB2683.namprd11.prod.outlook.com>
References: <20210119074320.28768-1-sean.z.huang@intel.com>
 <afa3b62b-a625-21a4-6f28-66087b7283dd@intel.com>
 <DM6PR11MB2683FB8AEBC4F5626114729997BF9@DM6PR11MB2683.namprd11.prod.outlook.com>
 <797ff94f-9c19-bf66-3860-7b7e076cf223@intel.com>
In-Reply-To: <797ff94f-9c19-bf66-3860-7b7e076cf223@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [98.208.38.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1aee6d56-3fea-452e-ff9f-08d8c14d67b6
x-ms-traffictypediagnostic: DM6PR11MB3850:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB38501993C644BC639EBBFB1B97BD9@DM6PR11MB3850.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O2HTJv4g/wp9MR+Qu70jmaecG5oIjtTLtBMjvaDXLEMrggVesL/Lg/hfRqWNjfONND92B2aJ4Cer5AOMCDSebkaope4OuSjl5WIHMSxy3KrSEVXYPBUeTtGdN/OqqAbPjHgOYk9M/ECyRidzA4TfYHP0nc9mD4l53w7pPPWNPP/AojNNn9RqAbdXXD4p0gydswgaUidQ2lr+JmDWMNgLiuVyS1s2VvLI9yafTwMgKeyurk0HIDeIGxFgm6nSYk3wTvCfeMC9obA81KMdN4DkxZF1WvvfqCncMU05gZbzGg/fu7Za5nSctK52v1MN2OQcbE/zSuZwfxwL+dRpdcAaJ9MtQ+1DrwYc0i8aB5a9gLYMYwFzybA8LUTjBlI+Kx88nsEXPXVRJ6UCt4yTZ1+0SUUHA+KDTQPL0sr+S1XtCSs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2683.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(54906003)(66476007)(66556008)(76116006)(316002)(66446008)(64756008)(110136005)(5660300002)(52536014)(66946007)(186003)(33656002)(4326008)(2906002)(478600001)(966005)(7696005)(8676002)(9686003)(83380400001)(8936002)(26005)(86362001)(71200400001)(53546011)(55016002)(6506007)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZERpejhnTHNsM3B4b3NldUU3QXdqYm1GMHIrSkJabmxsRTJxaTRzbzZqQWRi?=
 =?utf-8?B?dWVWYWx4emJsczNPSlV5U0d2OTA2eE5qNDNiMnR3ZllPQXFuQm0vM1ArcWFi?=
 =?utf-8?B?VmhlRWRWMW9KYmUvVTJ0L3ZXUFBUVDlKazZDOCtHdFY3eFpLbDFIZjF4Qmhv?=
 =?utf-8?B?SEpWaTMvb1p0NWFDZUVOdUFoNm9qak44OEJrTjh1YTRHZ2NZV2l0clFYTld5?=
 =?utf-8?B?SkdiNFN3OCttR1FMUEhaMEZMc2hRRUc0NXZhUm5FWXlzQ0w2MXk3TXJtUmdo?=
 =?utf-8?B?TnRVMGFWQy8zakJiSDN1Q20rNGtrSk5ORzNVWXVRVE15S3ArdmZZcHdkZllU?=
 =?utf-8?B?cHN1c3M4eDJIQlVwQVQ3a1BUVEJONk82YURHbEJtL3o1YjBXa1Q0VlMxa0E4?=
 =?utf-8?B?c3lXWFVGRnJPa3ZTYjY3QlN1bTRDNktjRXV5dE1wckljV3J2UFFzTjF4M3Nr?=
 =?utf-8?B?cXhkbDQrZVlsUmZJSmpDWDRwOXpaU1Fjak5pM2tZUGQwZlBxR0l2MkJFR1Jk?=
 =?utf-8?B?U29FNStIcHlpZllnNGdkZ1hpamNQb3c0b1Y1eU0xWDY0bzB3MjRVeFdhc09h?=
 =?utf-8?B?Y2dZYUw2L2VGZnZrTVFjNFJibW9FSFVlL3BJU285d29JVExZd3hYei9TWk16?=
 =?utf-8?B?b0gzdW1qeGtIaHZ4RFRCMXRHbDVGV1ZIZzJUSE5ockswZGdSODBReVRTQVVh?=
 =?utf-8?B?Qk1rUVFJTkRsZEliZUo5VmVTaTR0K3BVclhWeFdKUU5vWnBtakRldDRXVG1Z?=
 =?utf-8?B?VzBjc0Y5R29mL0Z1dFVvZ2dqbzNZaFBMSXYvWTVJM2pNdFJVTHdqWVNHazU4?=
 =?utf-8?B?VjFmRzlmVE11OHo4SG5RYkQxR2YwMC9VRkx2MWFMaFA0Tmc0ZDVlcm1zeGc5?=
 =?utf-8?B?SzVPY3F5eDBhUXUzRlFBcUV4Ym5LV011V1F1VW1HZDFoYkloeEpla2pyek10?=
 =?utf-8?B?NzFUTUcxMG9MWVJUZkVoZzUwY2lsaUY4MjRtSXR3cndRdjJuSEZZVlhobG5H?=
 =?utf-8?B?S2tsSXRNdkl3TjFqeGZDREJtbGtkazdLbThMMmR5YXpVVWI1NWdaVGF5bEw1?=
 =?utf-8?B?S3Y0c3RwTnlsSE5pNjVhSnpEcU9yLytvYVYrSGVYZG84YTR4NWUrZnB4TXlN?=
 =?utf-8?B?NnE5ekpEVUpJMnBpTEdIWDUwRjZ2dFpMRzVMZm01YmV1YUVBL0grNWxZSVBa?=
 =?utf-8?B?ZnkwNjhuUkpNVHBJWndkektJa1Q1MlhoOU0xQTdabGgxaVkxK0xGK1lWaUFR?=
 =?utf-8?B?anpDeFZVUjFjUU8wQnlkSU04WjBiM2V2MjdzZDE5R1ZlUjNKL3JzOE5qZ2tG?=
 =?utf-8?Q?zLzRY0esIl7g0=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2683.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aee6d56-3fea-452e-ff9f-08d8c14d67b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2021 16:22:26.8234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uPYN/uJkK1umbMPdwlLEmEC70EEic9dZ2hxu+jSf/vAZaETnBZvxorkZ0BRicgevmOnTO8bbW628vWXFlgdN2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3850
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component -
 Mesa single session
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
Cc: "Ekstrand, Jason" <jason.ekstrand@intel.com>, "Lahtinen,
 Joonas" <joonas.lahtinen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Krishnaish

Actually, Rodrigo requested GET_PARAM for this API(due to IGT tests) so I believe GET_PARAM is getting implemented. Krishnaiah? 

-----Original Message-----
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 
Sent: Monday, January 25, 2021 7:38 AM
To: Gaurav, Kumar <kumar.gaurav@intel.com>; Huang, Sean Z <sean.z.huang@intel.com>; Intel-gfx@lists.freedesktop.org
Cc: Lahtinen, Joonas <joonas.lahtinen@intel.com>; Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Ekstrand, Jason <jason.ekstrand@intel.com>
Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component - Mesa single session

Okay, if the get_param is too much at the point, can we at least have a define to reflect that this is a special number from the kernel?

Thanks,

-Lionel

On 23/01/2021 23:47, Gaurav, Kumar wrote:
> Yes, this should not be problem since MESA is already using MI_SET_APPID with app_id 0xf.
>
> I proposed this earlier but I was told that MESA team will not be comfortable in querying app_id or session_states.
> Although check for proper session_state should be part of context robustness check.
>
> -----Original Message-----
> From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Sent: Saturday, January 23, 2021 6:19 AM
> To: Huang, Sean Z <sean.z.huang@intel.com>; 
> Intel-gfx@lists.freedesktop.org
> Cc: Gaurav, Kumar <kumar.gaurav@intel.com>; Lahtinen, Joonas 
> <joonas.lahtinen@intel.com>; Joonas Lahtinen 
> <joonas.lahtinen@linux.intel.com>; Ekstrand, Jason 
> <jason.ekstrand@intel.com>
> Subject: Re: [Intel-gfx] [RFC-v23 00/13] Introduce Intel PXP component 
> - Mesa single session
>
> Hi,
>
> One of the thing that came up during UMD review is that the default session ID is actually uAPI :
> https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8064#note_77
> 6201 Could we expose it through a get_param on the context?
>
> Thanks,
>
> -Lionel
>
> On 19/01/2021 09:43, Huang, Sean Z wrote:
>> PXP (Protected Xe Path) is an i915 component, available on
>> GEN12+ that helps to establish the hardware protected session
>> and manage the status of the alive software session, as well as its 
>> life cycle.
>>
>> This patch series is to allow the kernel space to create and manage a 
>> single hardware session (a.k.a. default session or arbitrary session).
>> So user can allocate the protected buffer, which is encrypted with 
>> the leverage of the arbitrary hardware session.
>>
>>
>> rev23:
>>       #09, #12
>>       - Require user space to explicitly set recoverable flag to
>>         false for protected context creation.
>>
>>       #13
>>       - Add Cc of reviewers in commit message.
>>
>>
>> Anshuman Gupta (1):
>>     drm/i915/pxp: Add plane decryption support
>>
>> Bommu Krishnaiah (2):
>>     drm/i915/uapi: introduce drm_i915_gem_create_ext
>>     drm/i915/pxp: User interface for Protected buffer
>>
>> Huang, Sean Z (9):
>>     drm/i915/pxp: Introduce Intel PXP component
>>     drm/i915/pxp: set KCR reg init during the boot time
>>     drm/i915/pxp: Implement funcs to create the TEE channel
>>     drm/i915/pxp: Create the arbitrary session after boot
>>     drm/i915/pxp: Func to send hardware session termination
>>     drm/i915/pxp: Enable PXP irq worker and callback stub
>>     drm/i915/pxp: Destroy arb session upon teardown
>>     drm/i915/pxp: Enable PXP power management
>>     drm/i915/pxp: Expose session state for display protection flip
>>
>> Vitaly Lubart (1):
>>     mei: pxp: export pavp client to me client bus
>>
>>    drivers/gpu/drm/i915/Kconfig                  |  21 ++
>>    drivers/gpu/drm/i915/Makefile                 |   9 +
>>    drivers/gpu/drm/i915/display/intel_sprite.c   |  21 +-
>>    drivers/gpu/drm/i915/gem/i915_gem_context.c   |  13 +
>>    drivers/gpu/drm/i915/gem/i915_gem_context.h   |   5 +
>>    .../gpu/drm/i915/gem/i915_gem_context_types.h |   2 +
>>    drivers/gpu/drm/i915/gem/i915_gem_create.c    |  68 +++++-
>>    .../gpu/drm/i915/gem/i915_gem_object_types.h  |   5 +
>>    drivers/gpu/drm/i915/gt/intel_gt.c            |   5 +
>>    drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  14 ++
>>    drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   4 +
>>    drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>>    drivers/gpu/drm/i915/i915_drv.c               |   7 +-
>>    drivers/gpu/drm/i915/i915_drv.h               |   6 +
>>    drivers/gpu/drm/i915/i915_reg.h               |   2 +
>>    drivers/gpu/drm/i915/pxp/intel_pxp.c          | 193 +++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp.h          |  70 ++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_arb.c      | 208 ++++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_arb.h      |  17 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c      | 223 +++++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h      |  19 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_context.c  |  28 +++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_context.h  |  15 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_pm.c       |  65 +++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_pm.h       |  31 +++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 202 +++++++++++++++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_tee.h      |  17 ++
>>    drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  38 +++
>>    drivers/misc/mei/Kconfig                      |   2 +
>>    drivers/misc/mei/Makefile                     |   1 +
>>    drivers/misc/mei/pxp/Kconfig                  |  13 +
>>    drivers/misc/mei/pxp/Makefile                 |   7 +
>>    drivers/misc/mei/pxp/mei_pxp.c                | 230 ++++++++++++++++++
>>    drivers/misc/mei/pxp/mei_pxp.h                |  18 ++
>>    include/drm/i915_component.h                  |   1 +
>>    include/drm/i915_pxp_tee_interface.h          |  45 ++++
>>    include/uapi/drm/i915_drm.h                   |  66 +++++
>>    37 files changed, 1686 insertions(+), 8 deletions(-)
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_arb.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_context.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee.h
>>    create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>>    create mode 100644 drivers/misc/mei/pxp/Kconfig
>>    create mode 100644 drivers/misc/mei/pxp/Makefile
>>    create mode 100644 drivers/misc/mei/pxp/mei_pxp.c
>>    create mode 100644 drivers/misc/mei/pxp/mei_pxp.h
>>    create mode 100644 include/drm/i915_pxp_tee_interface.h
>>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
