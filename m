Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64E6703074
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 16:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FAFD10E204;
	Mon, 15 May 2023 14:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C835110E204
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684162042; x=1715698042;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=pJg2UADvuO8jsd5h9uxuTi84TdPyNAe4UhO+YrfcY28=;
 b=LAiRfOvoNJHFDotdXTt3ahMeJjGNiPo7wN/WofHcpXEeligs0R0T/KXc
 Gkx6v7cADiEzwgcV8IoNidvygPkH5JFP297cK8mSF2A7ciE7NAznVlGRa
 pMWbuEpNFo+sJQ+bYl+SV04bwEK9v3fb6dxemq7QhzbFy658HQfW5PQ45
 vLJpXPrTzlQ+dpUlB7/Izv3YjD9QJ7UandZm7lwU+mXVTN24QyhHELD7+
 sBmRF+mg3fEPXuM5eimFyoepMmQb+8fEQneCMYDWPXykGH1jmoGUqO7Qa
 s3wzBbXRLdP6qDULdDk5kUeepa/B3eV7M8XzOMREk9u4Qtpfcrg88L63C A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="379379595"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="379379595"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 07:47:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="947441381"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="947441381"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2023 07:47:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 15 May 2023 07:47:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 15 May 2023 07:47:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 15 May 2023 07:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XAfZeAIuFUtXSd5A+bUCCVW+arh2l9s5rMJRfLqrNIJvUGkUtY+gpctd5Wl4hJIhmW9e1fYJeO7Xveil6rnsVxE3vED45Ow6Qm219L2Pl7O+/bdeD8T+eIgYAfrsCVVYIQp0HoZWguOLcae49saXH4WwKnmMmVs2owlQIPIInU6WG3nJCA14VI6EFA3ZPmAKX4fGmsMo+iEyrZRc3aOqq7sbzbZBd5+eRRkV2hI8m902QNO8bveQxFKwAIaz41lowuLvXgHeH/MFBOYbZ7q09i7SKiqxvi9KHpyHVKwuDpOtpPZM1554/tEWNWys9FU8l67Dg+4uT2ftMDjR0Y1IiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dHBqTXYXW51bz5IP+0+iTTKnZ3lMkWMvdUUSXOBJqmI=;
 b=md595Xeh2AQoSf+9EhL7QO6rkk0Vnx59KmPheB/dDMeIHGMhPaEKXBxHHBkZJ515yJvf5NP4H60TZPQqwlsAdkb2erFkJCJCinFbtVAqp0N8buJwULdvQRp36DhLuMoSmCf3RyIMJ8vPegq6EmxwADx0DpRvK1bKVxyj5/ifgf4be4785Z1i/KH1iH3gJJTUcPq6pwQrAiDoHwchN2T2FO1LL/xNkVsG8PnuPtgbyOIw/hSl+VAj6mUHGUE/FoXfQusk+BL/iSPG04LVkZ+O16UN+O7ObH+w2tJUz/HKH83ztaO89iEi/cLiEchghaCgqPuyyn6nCrKC/rqA6ywifg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB7399.namprd11.prod.outlook.com (2603:10b6:8:101::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.30; Mon, 15 May
 2023 14:47:15 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::7c95:635b:8059:9e68%3]) with mapi id 15.20.6387.030; Mon, 15 May 2023
 14:47:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3473435b-7d4b-94a9-37b2-4249683c199d@intel.com>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
 <20230513021438.185352-2-radhakrishna.sripada@intel.com>
 <3473435b-7d4b-94a9-37b2-4249683c199d@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>, Radhakrishna Sripada
 <radhakrishna.sripada@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 15 May 2023 11:47:10 -0300
Message-ID: <168416203039.13184.2955182911965351453@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::13) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB7399:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cc9c849-7c2c-41bb-13f0-08db555345cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GQYggI03E4MI1bVhiIn02Zyt7xRkppn7BqwnbBt+fG5QMz92ytM3EUDbip7xdBA6SjZqlAGWoYL1nk9UPm3PftdSrBf5hzAllpJKZFZa2oEuh4tVNZ7HugolSrJzlcgPf487mW/g/y7fh35uSmWVsRAPG2J1TDTi79xSfzVa39nOjI9vGwE/NTOO/qzZHSHYBF+tAk93GINYPVG4FQEVDNt9qgct8MHbPhVG2m536Aio0xUhyV5saym9K35gPVH93gBOnXSWsspAvFCK+l/KXbXneY3RbDuaDSxX4WMeEC3m1sNZcNch3qPmp2DuCJ4UXwj6D3Lv5DoSlm0NkpZyD/r37KjgNnOfWc2HVCPPGICha3D2lunt23mj3DzH6bbNyd1e5U2CnTEPyysH6/KBQBY+9//hOeQ+N8sQ8SPYZFmhotQDyv2PPglLUxDhARC1nxUqJ3QODW3G8aT8QZvJEP0Qvj2bbCxWoYurfHQ/SZDAFf6yzpDb3TC98CfD030YYrSFqmd4GBgdXmG34/riEeJhHNJvDfQWe9fcTGKXncKdWu5JW+C5S3Tz+9ZBeZ0O
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199021)(86362001)(186003)(33716001)(2906002)(107886003)(9686003)(6512007)(6506007)(26005)(6666004)(83380400001)(6486002)(478600001)(8936002)(8676002)(110136005)(5660300002)(82960400001)(4326008)(44832011)(41300700001)(66556008)(66946007)(316002)(66476007)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1RMVEM4eVM5S2xXK2hSd1dDK0NoY3ovRGd3MTdLWEJBOFBSS05nTzlSQ3lL?=
 =?utf-8?B?aGxobW5wVGJIT3RBTWhDMktIQmVzbVlOb2wvWVd6VVZCVDcxcXh6Vi9mV3Bx?=
 =?utf-8?B?bkhKV3VlUHdxd1F5WW96c0dtaUZIT3dkRFRDNktSS3hjWGJLU2NSaFJxczAw?=
 =?utf-8?B?NkVBa1pXRzBUbHdJTGdXa05qTktrMjNQZXp1NDZiMlBvK1pCYy9VRU5lNVVn?=
 =?utf-8?B?T2hKZzlhTnVtbVg3QWhnL0FpNnhUbTcvZnVhWVRtOGNmdDczSGVhOE5NTm5V?=
 =?utf-8?B?eG5aQVdLS1Fka1g5K2NzOFJOSlZ6WUkrR0wzTE5SM3dOSjgyY2N0M3R6SnV5?=
 =?utf-8?B?Vm12UnVuMUhRK3BVQzNFUTNvcElIVTRKVUUzRXVnRXdaYW9QY2lpRTBWcWFX?=
 =?utf-8?B?VEtXdkQ4Ylh5akJJZkFoOGFBOGg0MXBJR3FWY0JHMUd6bHkxZUNEZXJEckYx?=
 =?utf-8?B?bS9GS3JTZEdab1Q4OWVmSmxwUkNGTzVpcnZhQzd3Q0hYMXZjd1BpUTBRbmFE?=
 =?utf-8?B?cE5MRXZuaWdMWEN4SGtNSzV5Q240cWxManRBdkc0SEhld09XeDk5a0hVUUVX?=
 =?utf-8?B?S25NeFNoM2xSUFFhTHhoODNMS0RPbDVKdVRCdnorZmx3RCs5ZjFOVy9Db1NT?=
 =?utf-8?B?MmRIUFBXN0VvRTJDQ2x4ZXVJdXVTOU5pVmpERm9aeTIyVU9ZeVFvcTdxeWhs?=
 =?utf-8?B?dXhhM3U3U3huZG1wQVgzYXZrMTZWZTU2ZjFYZ1Y3QzFHVzV2bDdkMzlWS1kr?=
 =?utf-8?B?M0hsYVVxcnd4b0NNK3JLUUxvZkpLVUhkY0RjVTZhaFh6bFZrK0ZlM0ZNU1NY?=
 =?utf-8?B?ajJTTUJ5a2lIeUxKd0VpVEwvYWQwbnViQ0wrS1dUWnI5Vi9hUHJQWDVTa2Vm?=
 =?utf-8?B?Y1djbUNQTGpSWGRETGx6aXRPeGlvUnVoWmtvWmhqNmpBQXBvUzdWMnVqTHp2?=
 =?utf-8?B?ZGU5ckc2eWU3OU01OXNqaW5QempUckR1S0U0TUVrbGI2RXAzakxSS1M4Tnlr?=
 =?utf-8?B?L1R0dGlteWltSzk5aDJsaC9JYVlIWmplVzllejVsc0NjVElPR1g2TDEwc2hZ?=
 =?utf-8?B?cVNVTzJ4QXlGR2oxRGJMa2hBMEdIc21oQUc0WERyRWVob0E5OXduZ2VhdHBU?=
 =?utf-8?B?dWpoNHBud1czOGZBYzhtMFJHOGJoNDZDcHBhZDUySVJRbUZNTkdYakR2T1pV?=
 =?utf-8?B?Qjg0aEZJQ0xjaG1DNjZLenYwRnA2Q2N2OUJXZTF4dUVHbFI1KzA1K3o3dW4v?=
 =?utf-8?B?SWZuT1JjNWhBTGovUnlUR24wZFZHU2o1SzhVay9jWEpySjFHcU9mTEFsVkM5?=
 =?utf-8?B?ZWN5SlVLT2ppQlpBdW8zM1NkcXNxMCtRNGluM28rUnpSaVEwQUM2OEsycTBU?=
 =?utf-8?B?cUhJT3c5b2JsSm44YXA0K3NJc2hlNXR6dkhJWlpTQXNkTGl2a29oN3ZiUFM1?=
 =?utf-8?B?WWZqeHUwR3pXNmZhaGd6Z0hTclZYVVovKzRMTzcydkh3Q2h0emFyQis2R0VP?=
 =?utf-8?B?OEMzeHl2NStQYUxqOURod0lLbWdIckNTTXUzWVBETG4rSDNPbnFrZFM2YXo2?=
 =?utf-8?B?OTcwMVRoRmd2WXRyd1BYRUY1blAzQjZ2ZTNqUjlTRnZHeXkrRlNad0tjSzZV?=
 =?utf-8?B?bmRObUVOWEN4VENjMDNnSmE4cFlodXlwVUhNTGtzcjNMYXVvdHhEbWhGQkV6?=
 =?utf-8?B?L0NhRzl0V1AzYjlHNzkzcjRFbStucW5UUDBGWHRXUGl3cnhHY0ROcERWSndX?=
 =?utf-8?B?OHIvOUp0Q2x1aXN1UkNMNk1SZldnVk82K2FoOHpKa2dXK2ZvS3NkQ2VlTGlI?=
 =?utf-8?B?ZFpZbk5oVE1SeC83K2N2UFJ2SVlaYjNLNWYxT2tCbjZaeEJZRm41c012NWkz?=
 =?utf-8?B?QTY2b0N6MXYveDdNQWFZV1ZmRTl0NCtwakdNekFyR0Jab3g5SWc5TFlxUVBR?=
 =?utf-8?B?ZVVUbk92anZSUVlXSkJlOHI0b1J4dHdVZzVyQ2hMTFA5dC9neXNBS1lmMGNh?=
 =?utf-8?B?YUdCY0dJYWI1eUpoMzlQMnQ4MXNidzAwM0lqM1RUK2R0RTl2aG8zcTVQWWhq?=
 =?utf-8?B?Sm1DVTVsTkxaUFRBQlRObjYza1FNOWFDZ0pwYWVaOUxYdEFzS1AvNUd1OXE2?=
 =?utf-8?B?bTdsVndZcFZ0OCs0dVBJVkxyVnlqVENtekxNNEgzTTA4Mys3bU1zRFlsLzMv?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cc9c849-7c2c-41bb-13f0-08db555345cd
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2023 14:47:14.7425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: agWS5IJ4ETXSeAsYQ6RAInonmGNhfc5Pz06H7UTUoIS1RgD24mCCFkJfRoyQfQY24a5roy1eIMevx4CR7GVQbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Add MTL performance
 tuning changes
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Kalvala, Haridhar (2023-05-14 08:13:10)
>
>On 5/13/2023 7:44 AM, Radhakrishna Sripada wrote:
>> MTL reuses the tuning parameters for DG2. Extend the dg2
>> performance tuning parameters to MTL.
>>
>> v2: Add DRAW_WATERMARK tuning parameter.
>>
>> Bspec: 68331
>> Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/d=
rm/i915/gt/intel_workarounds.c
>> index 786349e95487..72dab970de5b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -817,6 +817,10 @@ static void mtl_ctx_workarounds_init(struct intel_e=
ngine_cs *engine,
>>   {
>>           struct drm_i915_private *i915 =3D engine->i915;
>>  =20
>> +        dg2_ctx_gt_tuning_init(engine, wal);
>> +
>> +        wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
>
>Hi RK,
>
>I am not sure but have doubt w.r.t DRAW_WATERMARK are we not doing same=20
>in [ Patch V2 1/2].
>
>Thank you,
>
>Haridhar Kalvala

Yeah, I think this should be executed only for B0+ steps.

--
Gustavo Sousa

>
>> +
>>           if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>               IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>                   /* Wa_14014947963 */
>> @@ -1754,7 +1758,7 @@ static void gt_tuning_settings(struct intel_gt *gt=
, struct i915_wa_list *wal)
>>                   wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOS=
TCACHEEN);
>>           }
>>  =20
>> -        if (IS_DG2(gt->i915)) {
>> +        if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {
>>                   wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHIN=
G_OPT_DIS);
>>                   wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>>           }
>> @@ -2944,7 +2948,7 @@ static void
>>   add_render_compute_tuning_settings(struct drm_i915_private *i915,
>>                                      struct i915_wa_list *wal)
>>   {
>> -        if (IS_DG2(i915))
>> +        if (IS_DG2(i915) || IS_METEORLAKE(i915))
>>                   wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACK=
ID_CTRL_512);
>>  =20
>>           /*
>
>--=20
>Regards,
>Haridhar Kalvala
>
