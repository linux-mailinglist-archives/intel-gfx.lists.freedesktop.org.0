Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5CF7AB1FB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 14:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B4210E06D;
	Fri, 22 Sep 2023 12:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBD810E06D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 12:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695385079; x=1726921079;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=kN/+JDZxQEYhLiQOe05ed5yJFdCkOLhmfXTTghVTryo=;
 b=LnLgm5HMIfAZWss+ZWWoxoUrYeQMgn+Vb76qJJRg86zkhYDGoMZ20cOs
 7BRRRc/glSw1U7vclBWq3ZMJNO24qc8pjS3VfN+6xg/iH4dZh3yjne1qv
 Hl40ZeT7OU9NMgU+vzhzywV72twrE8KUCQF1BnDEeE0Xp7sAM/WleOx8P
 evBrp/pPwp3k27/O5cmO2W9AUNLQnfuKWh9PITuxGCW1T0Sd+m7BqWKDB
 7BWSi3w0jHnmFjeixbps6JujbpoUzXhsHidD1O5bwhRdqmQHVE8LdI8qv
 6lP5YH4beYu+J45ldcfDw3trhgC6zuHvpNVlY9A0tcDc/yi7I5RvuZyLF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="384649521"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="384649521"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 05:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="750822853"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="750822853"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 05:17:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 05:17:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 05:17:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 05:17:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 05:17:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CN/O17NkTxrViw3flHQe1dtkUzVNlv+5buxI0pkCko1KmveWrbQR8MKvxIwQOqGUVMUK/kfVCtgpDNR62t061gFe2hpwF5mxxvcUiZPXlQ10i/Zgbx6uOeWgr+sAk6yftFmxvxr2ZuYj6nOUAJy2H6PuwepUMH6HrupTmHXrv2OQ0/Vh4wOdpQZP0rzyiiuZ3Iivr3SNwyQoNmWUyOxbXWNkBaBcxqbSe/QMGAgKwKuSANf39JrXLgaqxeHCuN0TCP76vuDtcizJovOT/1MQ6YDgr31y59Z3nQvXHaoP+ZV1jc9voiEk6HQSJQHAyoLTl1lvjIB0yvSFJ/6LjQIwHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5TV15bspyQqvlXMXphZ8bhaJEvabXuyr8H7V5fjmD4Q=;
 b=jwI0r1PN+2mU497sF9u5InCVcRgkRJyDa0FnLVZCF3VJhzLRiiaEvfXcCgfUMCqRVvqtuE7h3y+VdjjyIwHucabEWyJfm4GcdDM3mNlU9x6OofW4h0XBjtWgqlbotIbeBCWaYnhvYnKiNqhtff6rThgAAAPaSkSUFXJhyBhYP/Ja2DvS+pIzVtxIzF0Lek1vv+oqUvCXrlEwxN9tvMu6qeRpz6l0PgDo/R9cjqe+3VfRi4BAzsRpYhr4klxfJa0vjtpR1HOGJpn4oy23Id4T1ome98dvtRHl7dXoZBKxOJpzyj74x568OxhL9NZzgjIH+1DnKHkL+1yf0oqByrlgmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB8121.namprd11.prod.outlook.com (2603:10b6:510:234::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Fri, 22 Sep
 2023 12:17:55 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 12:17:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5e2c29a6-083e-4f84-932e-a14fed53086c@intel.com>
References: <20230921143028.483008-1-shekhar.chauhan@intel.com>
 <169533011276.1903.10121233791745587247@gjsousa-mobl2>
 <5e2c29a6-083e-4f84-932e-a14fed53086c@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <matthew.d.roper@intel.com>
Date: Fri, 22 Sep 2023 09:17:47 -0300
Message-ID: <169538506796.1821.18234276438047673572@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR20CA0003.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB8121:EE_
X-MS-Office365-Filtering-Correlation-Id: 0137d883-b62b-48b3-16c9-08dbbb65f2ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M6m+VBwOcYJSXsJdMgpX21NJ15/K3zPSshpONAB/cZyA5rDX3Wa8x9N+JH/XCR0dQXgD6EK8OTjR4z2T/ngU69+ZzbX+j2/qgDrDjxxVY2s9MjP1yKfuTckT0gWfRc8M0Qgua5l38J+QKrgkaxOmZOzNnj+2B1q/QaWA3Li7WgE5j9yOYxZeU/cQcl1rS6R/uD2mt6ZWNmlLJScWnsnFtel4BuewigbXjg6BwLFVkHDQ0z+na/x7XAYmVxnsr82aSXbrbit+pMd7H2fEGEUjFW7GmF18j7Xtb2t2dXdWLxHFSnpnVRVY10Hs1fSimXRwvMU9L3sfz46PtHSQxyqfZiIlJdh8XefLbNN5IL0EfwwTwbPve0OxDc4HRx4RMpivF06imHyfTCtHWsWsLhrqoZBvyne/Gk+VoZELFgFToWgqWMdMjS8inpg5ECCP2TvtJg7G+Wg+n3jPx8PPqUppuHufonGuxfPM5eTS2KrbZ7cJO1VfVlj9s+GlfDMmQvkv/casMEsPWz/YO7O7Ew5XLLj1NAxUF+PINU46zr6b0PEXHOxB3b5OxauZeekNEtRrI31RGnVwFSA2fxoRRQV1Fw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(366004)(136003)(376002)(396003)(1800799009)(186009)(451199024)(26005)(9686003)(6486002)(6512007)(82960400001)(86362001)(33716001)(38100700002)(478600001)(8936002)(316002)(44832011)(5660300002)(66556008)(6636002)(66946007)(8676002)(66476007)(6666004)(83380400001)(6506007)(2906002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnJSSnczQUFrbUphYXRld2NUd1RKNFpSUmtRaUQ5RUlCNmRMY05kVlFsMkQz?=
 =?utf-8?B?NVdoVVF2dnk3ZkhmNDQyQ0NJT2w0REp1emc1dTFONFREdTE4cGxLRzFUVXpa?=
 =?utf-8?B?QUdvc0RRWDBVczVIZWRnN3QwWlJBZU0vdDQxU3hJTytqZUVtRXhMZGxVdUlo?=
 =?utf-8?B?MHlEem9jS1Q3SXQ4cFBhc2F4UTcrdnZUWlFPQ3hkUGNnNUZVNG5ZQ0k3M1JT?=
 =?utf-8?B?bTdFZ1BNQ1d4b00wdmhPK2YzUGVmOVVKSVUxNCtydTkwWk5Ebjc1ZklDbmJN?=
 =?utf-8?B?Nk5PcXY2eUczT3ZSSjczK1BiWjRFTmxsSUYxak9YM09zYzF2dGwyWWQyRnIr?=
 =?utf-8?B?TWVxMi9nWml2VktaMHVDSFJjc1B6U3hhek94eFN1MXhtTllqT0hzZGE3K3Vw?=
 =?utf-8?B?SDExVndtQ1pSVEc5MDZSaUVSMkdHVjFGRmp4MEFWaHQ4NEJETUNRbTFLdGdO?=
 =?utf-8?B?T0NyZFY4aEpDVkRaUnFBS0RlSTR3dVR3b2NKWmtNaWU0TFg4ckJYRWlaVjI3?=
 =?utf-8?B?Vi9ncVh0Wk45dUdvVW9GV3FvN2ZoQU53dTlRUEhodVp1RFB6U0pCckxVZGVt?=
 =?utf-8?B?QUhFMEp6SGYyaEZpT0JZbk5xTFE0V2Y5MWhnT0ZNTkVUd0lad3dhRTJ2Vjkr?=
 =?utf-8?B?SHN3aitSUnkvanVYb2c0V1NmY3V3OG9nSjhNeThZWlB6M1pnL2liNjc4Z0tN?=
 =?utf-8?B?a09aVWxCUzFhSzk2VEErWnJrMDlKVCtDWHNRQ0xCSW1kRzJXdXZDUTF5VVg0?=
 =?utf-8?B?VFFPTGd2T1pZSHpwdCs2djFkV21PSlhwSUUyNlF4bmNjYzJNQXVQTHY3NG1S?=
 =?utf-8?B?NXhtMU9uUEZZblJNUUgrVXI3ZkZtQm5MdUNleGdhU0NoWXN5ZWYzdml5QlpM?=
 =?utf-8?B?NWFDSU9QMS91L2ZEMUorMXJhdS9wY0ExTXMwUGlvOU81dUdjTmtaWUloZGVM?=
 =?utf-8?B?Tmt6dHFQZWdOdnVEWFd5UERnTU9ZYUZUWnRuTDNOZGdORHZNT1JORFFReE5E?=
 =?utf-8?B?VmU2L24yd2VtSWx5bE0rbC94UnBxMGJOWUUzMXBBRDQraHlsb3J6cHZlQWVs?=
 =?utf-8?B?RWNVaE9NWThTcEg2emFzU2dPV2h3eWY3V21uNWdVK25sMFRKbW1KenVtbTcz?=
 =?utf-8?B?T3lXK0g2d2FFbEMydzF4a29wZGp6YmJkM0xOaVBJN2pmOCtPczlmMmlqd09m?=
 =?utf-8?B?MWpJMXpDczZqeWNsTUhEdGdQZjU1TXNDb0gxUmgvcHRUR1ZxWG9JQUxCQ3RE?=
 =?utf-8?B?S3BSb2Q3TEhzd0xVUE5sRWJ5WDY0RzNpczh6aXNLdTllcGxraHN1dXJiSXp4?=
 =?utf-8?B?Nm40MVlmM25Ebm9QeXVlbzZjRDFOaDlvdjZjUFA4MDZucUIyS01kZ3hWaUta?=
 =?utf-8?B?YXoxOG1CN3Yyb0ZVSnZvRU13QUQydDFndzl3UEs0azdCMCtMa1ZlQWlwaUpY?=
 =?utf-8?B?TFhRVEFJSGJTNVVXSW5TRGhvZHVmTVpTdUpoZHlqYWFBYWJ5ZHhtSUZ5b256?=
 =?utf-8?B?OXpwY3lzR2U3WUN2VTdqRmUyWEVFYzdzZEZmR2EzbmN2V0pkaHRNOUV5czJm?=
 =?utf-8?B?NGxhR0tOWUEySEY5d0FxMVkwWHIwNzdhTUxXZEV1RlV1YjQ2eEJTLzlIRTZN?=
 =?utf-8?B?VGxZblJxWEZjL3FKK2xacEZTUHArY0pDbWtKbVA1dTh0TmlwVk9YQTdGNGhq?=
 =?utf-8?B?V0JwbkgrQUJFRVBJOU10OFlqRjZJTHZsalpmblBBNkdIK3ZvY1hIbURsemo5?=
 =?utf-8?B?UTBEdkJIWkVhNCtnTTk0SmkwUjUzdVVUYnJSQVd4MGQ0bHpMMGxKU3lNSU16?=
 =?utf-8?B?azRhTG9MY01ub3RITFhEcC9wR3JRZjdJQW9aZ1NpSll6c3EwWHYrV0U3ckND?=
 =?utf-8?B?cHNad2daRHFWRy9VUkkwN2VGcXdYemlTWWxKRUVBdzdjdVBCaDcxeEozYWJF?=
 =?utf-8?B?UjBBaDR5SWRIaXlZQzdYRVljRVI1cjZseFA1a0pzYWw0TG0yZEFmQWNVa24x?=
 =?utf-8?B?c0wyOFRYNU84Z0d0ZTFBVXlGNWNpNFlvNGxueEdwMDd6QmJ0UmF1VDRieHQ1?=
 =?utf-8?B?SStrVU8wU3oxUDhyNldVM2ZOWWc4ZXl3dktyeURJMkNoSUdtR012bWpjRnR5?=
 =?utf-8?B?YjQyTXV6SHpNZlprM3JVS0hTelNydWxuZTl1ZzRXWWJIMmcxYXRvYzRpdkRs?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0137d883-b62b-48b3-16c9-08dbbb65f2ad
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 12:17:54.6819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AxaqNB4d3Y1I9VP2eSeZ7fYl89yCbBJ5faB92BfrBAQa0G3+9dBBFodOd5n0zFTODT4cQZ9pWV3VMiPsqRt3gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_18028616096
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

Quoting Chauhan, Shekhar (2023-09-22 01:04:36-03:00)
>Quoting Gustavo Sousa:
>
>On 9/22/2023 02:31, Gustavo Sousa wrote:
>> Quoting Shekhar Chauhan (2023-09-21 11:30:28-03:00)
>>> Drop UGM per set fragment threshold to 3
>>>
>>> BSpec: 54833
>>> Signed-off-by: Shekhar Chauhan<shekhar.chauhan@intel.com>
>>> ---
>>> drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>>> drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>>> 2 files changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/=
i915/gt/intel_gt_regs.h
>>> index a00ff51c681d..431c575c532b 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> @@ -1230,6 +1230,7 @@
>>> #define   DISABLE_D8_D16_COASLESCE                REG_BIT(30)
>>> #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT        REG_BIT(15)
>>> #define LSC_CHICKEN_BIT_0_UDW                        MCR_REG(0xe7c8 + 4=
)
>>> +#define   UGM_FRAGMENT_THRESHOLD_TO_3                REG_BIT(58 - 32)
>>> #define   DIS_CHAIN_2XSIMD8                        REG_BIT(55 - 32)
>>> #define   FORCE_SLM_FENCE_SCOPE_TO_TILE                REG_BIT(42 - 32)
>>> #define   FORCE_UGM_FENCE_SCOPE_TO_TILE                REG_BIT(41 - 32)
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/=
drm/i915/gt/intel_workarounds.c
>>> index 660d4f358eab..992041e3776c 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -2914,6 +2914,9 @@ general_render_compute_wa_init(struct intel_engin=
e_cs *engine, struct i915_wa_li
>>>                   * Wa_22015475538:dg2
>>>                   */
>>>                  wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_=
2XSIMD8);
>>> +
>>> +                /* Wa_18028616096:dg2 */
>> This is not a blocker, but I would prefer to remove the ":dg2" suffix.
>>
>> There was an effort to remove them from our driver[1], but it kinda of
>> stalled. I myself agree that we would be better off without them.
>>
>> [1]https://lore.kernel.org/all/20221222082557.1364711-1-lucas.demarchi@i=
ntel.com
>Ack'ed in the new version.
>>
>>> +                wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGME=
NT_THRESHOLD_TO_3);
>> This workaround applies to (i) DG2 G10 from stepping C0 to forever and
>> (ii) any stepping of DG2 G12. Here you are applying this workaround to
>> any variant of DG2.
>>
>> It should be moved out of this "if" statement and rather be guarded by
>> something like:
>>
>>         if ((IS_DG2_G10(i915) && IS_GRAPHICS_STEP(i915, STEP_C0, STEP_FO=
REVER)) ||
>>             IS_DG2_G12(i915))
>>
>> Note that we are there is still a pending decision for G11, so we may
>> need to update this in the future.
>
>I believe we're only supporting production steppings for DG2,=20
>henceforth, not really interacting with the "older" steppings.
>
>Please have a look:
>
>https://lore.kernel.org/intel-gfx/20230816214201.534095-7-matthew.d.roper@=
intel.com/

Oh, I missed that. Thanks!

So I believe we would have the following condition instead:

	if (IS_DG2_G10(i915) || IS_DG2_G12(i915))

, because we do not know yet if this will also apply to DG2 G11.

--
Gustavo Sousa

>
>Although, I could be wrong, if I am, I'll send in another version,=20
>modifying the patch as you've suggested.
>
>> --
>> Gustavo Sousa
>>
>>>          }
>>>
>>>          if (IS_DG2_G11(i915)) {
>>> --=20
>>> 2.34.1
>>>
>--=20
>-shekhar
