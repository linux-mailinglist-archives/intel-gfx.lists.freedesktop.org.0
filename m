Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 134D8760634
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 05:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B7510E150;
	Tue, 25 Jul 2023 03:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D489410E150
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 03:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690254119; x=1721790119;
 h=from:to:subject:date:message-id:references:in-reply-to:
 reply-to:content-transfer-encoding:mime-version;
 bh=ffy18JJWf59xKFqk85rLF1bZFAxv8iyvPrHDwX3Qb1M=;
 b=IXEQbD83dx1r9NNJDltWO0SfD+sYF5MB50ZksTIc/SdF/dYy/NN0ltbB
 tryjdZsnweW1nyKD3vnD2OPAhAQPDyRB4F3k5fNQ8Mwes8lj5mnxe6E47
 fuUDjDPJV+1O1ogfrt0ZbYfZnD9lbk2sua+aEwbLV70HWq/dLrMzbrIe9
 HQEPrz63hj62KngE3M/mOzjDYa3WnvDQNBNV5SkoPiDipk7BbO45p64T3
 COy882C5nC//tj6JgRd1wuDkPNNNvQhbLx6eTrgmY0GGgrVW7v7HtjO6F
 6sBqnZDF4mKEcBYJcQ8tRrSxet9zwux4ojrpUJXUeZ7ocO9PS3NmF6qr/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="371210448"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="371210448"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 20:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="719895105"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="719895105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2023 20:01:59 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 20:01:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 20:01:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 24 Jul 2023 20:01:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 24 Jul 2023 20:01:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EvUrQyaHtUqNms3335n1/INO0VUFqG6tzwi0E0ry8J42ie9aDXVXu+YPkNDEy+mcecV1TdvsY7sTY7V/W7u5JpCs3N++4bcjfVr67t/aKEAvLeHl0fNee0IORf9sUoBjwpG79/Z5/r2oV955j4muywkcF0dNN0DHjR26QSmnSZg4J7BuoaSdlJGfpiKACHxvA0pFn3EX7fPz6kekwPGA1eBXQ6SDwOOeSM8+NAyE7ctCXFr3PQYx9VuVlAlSPnTTjR1l648bvYkda7JOiKMY1/W9z8JgmCoh1P+OhdeRedNo9q4L1wjAsU9XKIUAD2kEbEHPMoYRlwkC7GkMHElfOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ig5EelGQZomGzO+JET3c+mDAJK58PzXJ64kzWvSHvy8=;
 b=TxHZIbblekq18l410Jw0aaRWTVV79jmKuJ86j84m9X/mOaGm86+3GKIakMEQ0yLLZO7NPG4LjvJSMgk4HdgL3rpXnnNCeVidrTJcEbg/PfbeMBnhicBj+Yse4qYPMeDz6A+I8R8zJXmry4OWfXlq4A+Jm9DGt0N+CXOcDb7E9Cz/4sTZDecIeVrtulJ9Q6+ezaVyTwA4I7HN1QMLvL4R1AtT4R34E7v4ccH5YFmIRFsSBWVfMPLrc9oojOUeUbFiAakpyJH3OuHYT+TyLsRYvYnljAGSerzNDnoVM32dbtZpGOBQizGlCg5r3jha0silbloqtjnT0a/R/DrYOGiSrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB2710.namprd11.prod.outlook.com (2603:10b6:a02:c7::24)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.31; Tue, 25 Jul
 2023 03:01:57 +0000
Received: from BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::a6fc:a0a0:446d:92c2]) by BYAPR11MB2710.namprd11.prod.outlook.com
 ([fe80::a6fc:a0a0:446d:92c2%7]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 03:01:57 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/3] drm/i915/uncore: optimize
 CONFIG_DRM_I915_DEBUG_MMIO=n more
Thread-Index: AQHZrlzL3hyTEKJmPkSvz1Rnp0afa6+slDUAgAATh4CAAByuAIAdJY/g
Date: Tue, 25 Jul 2023 03:01:56 +0000
Message-ID: <BYAPR11MB27106C9C24B64ABF55A4F245A303A@BYAPR11MB2710.namprd11.prod.outlook.com>
References: <cover.1688463863.git.jani.nikula@intel.com>
 <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
 <5e84ec16-537d-3df8-a47b-fb91f254a7ff@linux.intel.com>
 <87bkgpxn12.fsf@intel.com>
 <33aa69d3-c94d-f0d2-3ab2-0bdde23850c5@linux.intel.com>
In-Reply-To: <33aa69d3-c94d-f0d2-3ab2-0bdde23850c5@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB2710:EE_|CY8PR11MB7826:EE_
x-ms-office365-filtering-correlation-id: 213b276c-8964-4e4b-38eb-08db8cbb81e7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C3/lNTvC+/DSHv2qDg1JTPn1DxVzdeYoYY8DAaRX2M3YrV2AfsyfDlPezIAWTB5XCcC3DNbPG+X8ITG0mL8fmCDxenAfNHqASQruUN43BbhMSxqF01PHlnnDPPIKBK0NmH238el7yJtPf2S4RrCDcFl1OChM3kju0+OiLs/V5c30gKFv50IUdr9fsHQjRl4YVyMI2IHfm5FUlgCZIk5AROQZCXwIupEOUVoHLta96hTgFWVc3hjDTpZZ0z8Yrvud9TEtCx/6Ki2qvCA868RjWBrwbI5QBzsV/ocqeBl9JlxxR05d7rLeP0XBpM3ktd4b8AZkHQ1w6ptiAxXRcIryUevrrJh9zcejpdZ2vNc5aaFOUvoEphSc68xvMJ47IdhXcHsFEG6T0fQhgP/Dyv+tCSRX0qi+1HYrszkT/hU8NIB6o57rlwg3VK2bukXpPAm8NcBWRH0a0UObPbzbF2U/UzBjTasNyvCbrqPN/7UQZb6cWOcNztr3WR13q8/XG9ieIAMdXFsuwrkA+pQw60Ai8zTiVKBXD50+yOK3uaL0wFjdxdR08w163evRHtM20GaLHFuCWa2d5exBbDbcfoQGRKm62STHCkpYKnZRFMf4/i/LRlVoaxYabK5RPVad6vje
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2710.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(136003)(396003)(366004)(376002)(451199021)(8796002)(8676002)(8936002)(316002)(5660300002)(52536014)(66556008)(122000001)(64756008)(66476007)(66946007)(76116006)(66446008)(110136005)(38100700002)(82960400001)(26005)(33656002)(6506007)(41300700001)(53546011)(83380400001)(186003)(478600001)(2906002)(9686003)(7696005)(86362001)(71200400001)(38070700005)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L3hswpePcB9SH+Bs7JhJDIPs6aR3wv98fjqMItuELLyrKa5Czif5uz1U8ZnQ?=
 =?us-ascii?Q?uRKV/VKxUCnNWImXimiJRjhsEEK+btT95Au1fBUCzcGvED86HsnPvVNjbwnS?=
 =?us-ascii?Q?WvTdlSghtomEO2CIWsYayTXbSvKdhgLt3SbHvd/esW5vx/aeOm/JSl7gtsnw?=
 =?us-ascii?Q?iWhKT+vNhNYPn+Y5M1vC+0Dt95xE8Rdx8zQvBS2g5g0FNWgjHJxtfzoI/7Hc?=
 =?us-ascii?Q?88Ek8Z/ASWL9Rrl7DMurEWG1FfXxIJy/lxGaVseOK4mt+KRFHsZmFu+tfHlS?=
 =?us-ascii?Q?M+6GxGZ6WYhsPIjEtCoSXkbKNfXkM2wTfrNG81zSDElEMNYO6ltNOxWOsS6B?=
 =?us-ascii?Q?3t23/lVtK8rnHbnimbhPkMNQmoEAKfV9gfTqON58k3tFHsy/Dha9qhPZlRhr?=
 =?us-ascii?Q?xnw8boqMXellsj9w858RIEPWvgmltmK/3FX9tA3l5u88iflNHvgZpvVN9Q86?=
 =?us-ascii?Q?fupJJUw7A62tzozAs7CCnGP3C7ZFQnLpkkF9cEbTQ3hsjSLJkxIFJgiY44w3?=
 =?us-ascii?Q?N4dTBT4GcKQDws9oaoESc7YU8n0+xMmggduZYUxhbkZ7wkQE8zcDEQ5/Xkn4?=
 =?us-ascii?Q?GqQLYyl+TIA2N5JFYXV8yFxQhxOq9oN5cQqSu1ejkbFXyt6V3csyDZrU0QHf?=
 =?us-ascii?Q?HAoErKGLkrZCMdIrBEIadyvWNyh9zZA6m5klg9a1+5GN0mGLuvpYHQn6JwmI?=
 =?us-ascii?Q?KbYwfqscCghhECdi79XlcNLQXd0M8d/10rqhax/IuNZYMHS/uZbQ+mYAkFCJ?=
 =?us-ascii?Q?+y92u/zde4HhAVlyJ3ZOiIOQO0JJUyEv2FYkGS9MrM2hHV1f0KLH82vXxEEs?=
 =?us-ascii?Q?0ueqW5W2ZHLuRB+wICUwVgmeNd5IvTU/a8rDxuE9tUoOkuxo5wJ36WQlzyE8?=
 =?us-ascii?Q?4glsuR+B+HQKxX7Ww5i1XvkiuSfgPuF3yPtWRMIa8luhRB1ogwvQ6fASaW4n?=
 =?us-ascii?Q?F9VMQK4IaXRXXuS0L69kxouexDnOzhV4g9cBjZtgBx36hj4YE/1VTsgwvkyo?=
 =?us-ascii?Q?k0jQv+u6uGo2XOR0xjxp1YMXGx7gNiNm9G28RLoUP4rHKMTxZWfAnesoSBHM?=
 =?us-ascii?Q?5aK+BT1u719LsyKoXo73SY02AHLeVX5MtcaBT4eKh+VeFXBYzpoiD/59EyQm?=
 =?us-ascii?Q?xHYI5p7tL338UOfE7UIgmpVk54lBD/ueAzBOk0bTJutAoLAtjugCaepSQ9jf?=
 =?us-ascii?Q?edfhN8ZP6MPLjUViaiRnJpd7aHT2Rd+r9HALpYGVOIB6CxZPYLJmYtKyXuNU?=
 =?us-ascii?Q?FQNmky1WfCLEHGyJA+R+0iIMqM7KYJo/I9dPtHNrMO71payEIF9AN2I0dttf?=
 =?us-ascii?Q?XzPLeDnxMr6ej6LMoi5p4a1gbZEVFIgTmOTMT1a9578j/TytZREn161jsgXh?=
 =?us-ascii?Q?Mngf2BVWL6nGpGQdZHZyR/Hpp+voL3mWgfh7j2tUdrUMecXnk8i7gr5DIhK4?=
 =?us-ascii?Q?HnfNAZKWYklYbtPXx1esBpyevOPRhbCXJ9JHaKwS1vtDJn6PSnkC5cSPOCL9?=
 =?us-ascii?Q?XqaUlHyxFesLNOpUHjpUuzKP5LE4pa+StzbdUkX5fVtwvwZE0yPVn8dvWSGn?=
 =?us-ascii?Q?36nxdLGuP/8OmUjkMPgl9UrNyiibmcZjEagdUZha?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2710.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 213b276c-8964-4e4b-38eb-08db8cbb81e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2023 03:01:56.8854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6AD49YqbJkj9KtSxQ8utWyGjBZt4MefuhLjm+hlNauEmlfNj0fSfqomysxTR6SAn/xFe2dqUeCdd7VDBCfZ7QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/uncore: optimize
 CONFIG_DRM_I915_DEBUG_MMIO=n more
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
Reply-To: "4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com"
 <4e087e216d86e6be8109bb443d1ac6c9ced1f777.1688463863.git.jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>On 06/07/2023 13:06, Jani Nikula wrote:
>> On Thu, 06 Jul 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wro=
te:
>>> On 04/07/2023 10:48, Jani Nikula wrote:
>>>> While the default for the mmio_debug parameter depends on=20
>>>> CONFIG_DRM_I915_DEBUG_MMIO, we look it up and include all the code=20
>>>> for unclaimed reg debugging even when CONFIG_DRM_I915_DEBUG_MMIO=3Dn. =
Fix it.
>>>>
>>>> Cc: Lee Shawn C <shawn.c.lee@intel.com>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/intel_uncore.c | 3 ++-
>>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c=20
>>>> b/drivers/gpu/drm/i915/intel_uncore.c
>>>> index dfefad5a5fec..da2edde4b6f6 100644
>>>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>>>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>>>> @@ -1929,7 +1929,8 @@ static inline bool __must_check
>>>>    unclaimed_reg_debug_header(struct intel_uncore *uncore,
>>>>    			   const i915_reg_t reg, const bool read)
>>>>    {
>>>> -	if (likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>>>> +	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO) ||
>>>> +	    likely(!uncore->i915->params.mmio_debug) || !uncore->debug)
>>>>    		return false;
>>>
>>> But now it would not be possible to enable mmio_debug, if Kconfig=20
>>> _default_ is 'n'. What am I missing?
>>=20
>> You're not missing anything, I am. *facepalm*
>>=20
>> The question is, are the first two acceptable without the third?
>
>What are 1st, 2nd and 3rd in your counting?
>
>This area is confusing me a little bit.
>
>If I look at unclaimed_reg_debug it appears unclaimed register debug depen=
ds on mmio_debug.
>
>But if I look at the message output by
>intel_uncore_arm_unclaimed_mmio_detection it appears that on detecting an =
unclaimed register we suggest to enable mmio_debug.
>
>Isn't that a contradiction?
>
>Regards,
>
>Tvrtko

Hi Jani, Tvrtko,

We are still waiting for these patches to fix issue. May I get your help to=
 re-visit this series? Thanks!

Best regards,
Shawn

