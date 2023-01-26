Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E0C67D1CD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 17:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A78B10E946;
	Thu, 26 Jan 2023 16:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 209F710E946
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 16:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674751043; x=1706287043;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VamaiuhajIjetlNKKo19kXfsiuoQxGHEWlSOzaBFzL0=;
 b=WxAtRxsnjy9lcFr8RIf188AHofb5RQtXzEnQk3UJnMbQtHMo8hdwqzdx
 pg3jmb8iY7egMN+oF8KJiWg3klJnqpKp1I5ini42uTv1CG5KkKX1aSOB7
 qysfIzewdpCkKyNRrfyzbuR1E/Mkm+LzqNRpjtLdHNftxebb9YDkZJLun
 5AK8SOqbXMLyYP5nC+VBBs8zYZAlsZlQ4bdA/inJRiJuGsqAnP/1UTsDr
 9dzv706rIAyI21sXIN+EJkzebgYqcXjW0PpotV8j+o0lXEU/A7ELNU/Tz
 S89ecKkFbOKk4Zg4hWb6FlMQJvj+CrJHpvvvZAhIKx/Uckg7ucCgCcHZI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="354158782"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="354158782"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 08:36:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="786894160"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="786894160"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 26 Jan 2023 08:36:48 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 08:36:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 08:36:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 08:36:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 08:36:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+t6YARkTigqRctXy16/k0ujVMgzFqyOYdcPXK2X6etlwXZCNR4rbmzUldRROlesjP6UtWJ6GfLfSEQc92IDYm9WcglsUtG/ykKBoMouJaJqyMtFuNXRn24wDtQ7Rf9R1wXC8fMRAA1+5j+FxF0QWakMXrGy9S5byzDdiEYdBMJb0yGgRo0aRYKilh52UHVq7pjU13JQ6cbbvlJaqjgIX73wzphZqBiryO+aVmfnCtgdmgGR5eDLzd46K20vDqpxKZgIRw+I65D+Z6wTmrWDGhhPZrFMtWi1GSAS9Z9gBxhSB97u1mmf9mXJyRt0cHy/vN5hPgDg3uxv6FBkLEjB0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oQoEyUwC5suIMPu7fOu8dMJAy4jQqPVxE5ykd2gEquM=;
 b=lGNYNTKR/wgqIsu+i11NqzhxE0Om+BqF4LtoVc6XTjJx0ll4lmL3/Adsw2u7LYgz0yUwLkPoT2u9823dwwHofTxlFN5wl8Gli21sghz9BIA/txP4bWVzBuTxb4RrhlTfXw5pJZs7y+2NXgDvQa3KA0vt4K/n3SHE2gAPjElOBLcrJj2YuIx4PXGF1gnUnMPSQ2h0ZGo6KbVjmM3RC0iujj2cZMZ5xBi3yj08yuXZu08b0GO/oP8jkY50J72eMVyF+jskh5NlGEDa74ZuDmDpe6lIbAmb9vlfUV1zPE0uNifH4PWNlVXsP8S5LkghpCHgo5zau0tixYT7a3yYVNlSeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BL1PR11MB5477.namprd11.prod.outlook.com (2603:10b6:208:31f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 16:36:45 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6043.022; Thu, 26 Jan 2023
 16:36:45 +0000
Date: Thu, 26 Jan 2023 08:36:42 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230126163642.4ukp42gs6zyssgl6@ldmartin-desk2>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87357x5lir.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0065.namprd03.prod.outlook.com
 (2603:10b6:a03:331::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|BL1PR11MB5477:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b10b373-2e6d-4496-6c82-08daffbb830d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CsMfx/D06tqn4qclUVnFdQhRBb75VVmlGIqFjkYRiY/z2uBCmhhP9KieXpfu6Mi7+I1HtrvHWHoR+tGb7IXdCQEGpLzyQhQfMK5eJoz5psCxO7MCgI8C/l5lqTt/Jme9VHGwdL4A9/BjD+INte6YFR6YRGvN32JeIgUkv4zV6Nl1Ub3TYwsBZLXXTOgOaNPBZFtE7jjJUWgcJ4Ca77jSanA3v/loZI6abrdO4QpzdaLI4bY2H1oD7iHd5V5Es0tJV75ZbFVNtZQ2LY2W2iH8OX45XJJYnSoNtSjsuAiBiC4CMpBcPQGwUBo/ASXLtPKG4qg1DakFHm1bylCYv0SwWr3Had4JvK+UiYiSATiL13Sxg3R+LlzOFvuVQSh1fKqT7ywL48PksuiHM4v4Dmm94oiOV5JZghWN/OoRsklwrXzog2D9JfJv/JqcyyV3bFBq/P856SvtqimmF/c1gdr5esqIW7lh3jyLGWCN4050cYh3EasIrUvHe3i41SU3Pl0rU0+/TALTcjef7r6E7RSYwVR/SK+LV24BvghfdEKFZ4NM4uVaCXdT516bnNIfJUeIoVncBQUEWH5JpbtxbMCjja+hOZ+aMxjOn59eOY+aI+9VEjNXn8Yf1JzPStfrBt2gjA4IxeWq8Iln6UbRJYITFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199018)(66899018)(66574015)(83380400001)(186003)(9686003)(26005)(6512007)(2906002)(33716001)(6506007)(82960400001)(6666004)(1076003)(5660300002)(54906003)(316002)(86362001)(8676002)(8936002)(66476007)(4326008)(6916009)(66946007)(66556008)(38100700002)(41300700001)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bm1qQnRXMStpUkllOEZxR1hvQlgwVkplSUZOSjdSYjYvbXJORkRNWUxoREtD?=
 =?utf-8?B?Z1FLaHoxSVNPNDUzZlFsa1V3bjl6VDBubE1ya1F3SUVxZmRUMExEeWRDMGFo?=
 =?utf-8?B?U3Z2dlFMSHhPMGhib2pyUS91WDN3ZkNWSmJaWTRxWHJNUUI3YnlKQkViM3Vt?=
 =?utf-8?B?MnFzUzNwcnVMbDZ1bUsvSUM2OWY0d29ZQVo1aEI4UXpTOHRVSGR0ZXp1L3FC?=
 =?utf-8?B?WXBsT3BTSWM3dmNKVjIwNHVjSFJBcjA3Y2tVcHF4ZWdMbXV6YWc4QXJBTFN6?=
 =?utf-8?B?ZWtvWlVIZUQ2aTNSdW9mbitiMW1JSlpjWUw5ZDY3dmY1YVlOQkZyUjBKVS9L?=
 =?utf-8?B?bU9zMUhUQVpQMldvWUhuaHROSXZCMW52K240L0lSUGlqVlB3YTBHUTBuQmEz?=
 =?utf-8?B?MVY0V3VZZVBXSGxxZmd2ZjBOZmQzekZFcUE3VkJnRHYxL3dOMC9EWkFhTnMy?=
 =?utf-8?B?RUs4UTJZdGVteDNDK2hUU2Z6SUo0OUxaZUJVZjVtcnNUNEZwei9iNzBpWFUy?=
 =?utf-8?B?aWdIeVNCMkg2NXNNN2xKQWRveWwxYkxFSzJxcXNueGd5T0FBcEZxQXo2alBs?=
 =?utf-8?B?Tkg1bEs3OWlmZ21EWlVlanBnN2JSVXF6aGREWDB5eWtVSHNxU1Q2Skg5UUtk?=
 =?utf-8?B?M2MvR3BGRGsrWHpEeUNrb245OTBnbDNqbWd1RnpSMGtMS3pMVy9KcGRFM0tD?=
 =?utf-8?B?c25SMC91dUpOQytERTRqUnVnbG9hZkxqN0lzdFdzSjhJRjFybnhsU3NOZkVV?=
 =?utf-8?B?SWJmZGNXQ3I0TTl3cmdtOFVaQ0UwQVZ1MExGZ2JKZzV2UWJNeDl1blNBbjdi?=
 =?utf-8?B?THBIanF4VnVjeUdJL0ZndWpiMTlOYUh5VkgwaTZ0NkZNQ1hybERZNlFnYXJp?=
 =?utf-8?B?M2dkVU84WU41Q3pBT2RBaVZRTFIxc1p6R0lUU1dyRzNmYWlQc0poWXc0eGlQ?=
 =?utf-8?B?V1AxK2ZsRmcrZmUrdkx1SFYxUWp2cEkyYmNxUWRJNjFnekZIamJDVWY2cXV1?=
 =?utf-8?B?RDZLRm1wOTdxY2ZrdkRSZkxrcVkrVW03SEFrb3B6UVpKbTR6MUR0L05HQUM3?=
 =?utf-8?B?dTRTd1ROb3gyWmQxY0cyTzkwb1BTYS9ZVEFFaUljVlFXYWRaakhxYlVBTGhO?=
 =?utf-8?B?a3pLcW5zYlcwT0h4M1ZxYjREVHV6SVloRGt2WTlibmJrNmtVNGw2dE9pRHJz?=
 =?utf-8?B?WE9kRXFhdnFCZnR4WjNlSW9HREQrdEF2cUJYd2YrUm5oS3E3ajNmaVVJVXZW?=
 =?utf-8?B?bld2UmFrVHJQL2hhOVE0QkhhMFNtLzhyYTZ6YTgrT0hIakJyVndaNldFWjlE?=
 =?utf-8?B?emtxOStEQ3EyVmdaMFdFMno5azc3ei8wYUJNS2J6eklKR2tsY2N5ckdESG9w?=
 =?utf-8?B?bmV1Vy83Z0pKTEl1cUdybnR6ZXVGM0JPTnp1S1B1dEVxR1I0KzNOYlFRR1JO?=
 =?utf-8?B?cVpVZ2hPTkdqZVlIOW9qV1htZzN6dTRDZCt6TVhmQ3JuMUhybFN0c1U3UWpQ?=
 =?utf-8?B?dzNEV00yb3k0dTFFRTZqdGVvRnFKUU9CVnpJZTNvakxUOGppMnZGSUx2Qm5z?=
 =?utf-8?B?MW9OZ3dyTXFDUXBTR0RpdWhNcnRjM1NaeDlRV2xPWE5aTng3ZDJpWjlrRWlo?=
 =?utf-8?B?bnBkOHdmOXE5OTVrdHZrejdqdms1MnJla1N4Mmgzb0w4Z3NzQWlMU2c1VGQ1?=
 =?utf-8?B?dG9XS3J0SCtLeDdUNDNyNGlSL3N1QUJsakRGQlFONnhiZWRqdkZxN3N3VHhW?=
 =?utf-8?B?cC93Tms3T1B0VzVQcy81K2IwbTA2YWdTcndjVCtQb09vSzIvNFR4Q05CclF5?=
 =?utf-8?B?SUFOdm5YYWhoTzU5eCtXNmJoZjljc2x6UVM5ZklIK0RDdjJRS09XUU8wUlIx?=
 =?utf-8?B?b1J4Z3R0V3lRN0g0U3k3RGVseWw3TkU2ckhPUFBUV2l2bFV3MXF3MURzT3U2?=
 =?utf-8?B?S293SVgybEduNC9OZGZQN0phUG02M2tDbFhtVFVxSUNMYVVhZzU4MDNaRmtI?=
 =?utf-8?B?aXRJM041UjhwTjQzakdUTWFXaE5DZzVBTTdlVDZ5Y3lORGFxVDVCTDNhNVBH?=
 =?utf-8?B?UWtoT1RuVC9PMExYUFU2WEZQYWtQYWMzekM5eXM1R1NuNUlCK1BQNkp5WWx3?=
 =?utf-8?B?OGpuMXgxVXA1aHFheXJ0cVpxV3kwN083SHNMVWJHNVFWdnBad3BaT1daaDZu?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b10b373-2e6d-4496-6c82-08daffbb830d
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 16:36:45.2601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HO5dyMRTphDupvLOrrKtKn2LZhe1gnFTEKsMbsI7HtCD3qDcUjOEXvjGKrCdhSo1D14FeWqlDlSG13Qlk01WcZ53vAyKzciEV6cRazl/+p8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5477
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 26, 2023 at 06:05:32PM +0200, Jani Nikula wrote:
>On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
>>> On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
>>> > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>>> > > On Wed, 2023-01-25 at 12:44 +0200, Jouni Högander wrote:
>>> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> > > > > index 7d4a15a283a0..63b79c611932 100644
>>> > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
>>> > > > >  	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
>>> > > > >  }
>>> > > > >
>>> > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>>> > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
>>> > > > > +					const struct intel_crtc_state *crtc_state,
>>> > > > > +					const struct intel_plane_state *plane_state,
>>> > > > > +					int color_plane)
>>> > > > > +{
>>> > > > > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>>> > >
>>> > > Should you use i915 instead of dev_priv? I've heard and read elsewhere
>>> > > that this is generally a desired change.  Much easier to use always the
>>> > > same local name for this kind of thing.  Though this file is already
>>> > > interspersed with both versions...
>>> >
>>> > Basically the only reason to use dev_priv for new code is to deal with
>>> > some register macros that still have implicit dev_priv in
>>> > them. Otherwise, i915 should be used, and when convenient, dev_priv
>>> > should be converted to i915 while touching the code anyway (in a
>>> > separate patch, but while you're there).
>>>
>>> Thanks for the clarification! In this case we're not using any of the
>>> macros, AFAICT, so I guess it's better to go with i915 already? And I
>>> think it should even be in this same patch, since it's a new function
>>> anyway.
>>>
>>>
>>> > The implicit dev_priv dependencies in the register macros are a bit
>>> > annoying to fix, and it's been going slow. In retrospect maybe the right
>>> > thing would have been to just sed the parameter to all of them
>>> > everywhere and be done with it for good. Not too late now, I guess, and
>>> > I'd take the patches in a heartbeat if someone were to step up and do
>>> > it.
>>>
>>> I see that there is a boatload of register macros using it... I won't
>>> promise, but I think it would be a good exercise for a n00b like me to
>>> make this patch, though I already foresee another boatload of conflicts
>>> with the internal trees and everything...
>>
>> There were actually 10 boatloads of places to change:
>>
>>  187 files changed, 12104 insertions(+), 12104 deletions(-)
>>
>> ...but it _does_ compile. 😄
>>
>> Do you think this is fine? Lots of shuffle, but if you think it's okay,
>> I can send the patch out now.
>
>Heh, I said I'd take patchES, not everything together! ;)
>
>Rodrigo, Tvrtko, Joonas, thoughts?

If it's a sed or something that can be automated, I think it could be
ok as single patch as long as we find the right time to generate it,
when the trees are in sync.

I do remember doing a sed s/dev_priv/i915/ (or it was with a cocci
script, don't remember) a few years ago, and I'm
glad we are giving up the slow conversion and just ripping the
bandaid.

Lucas De Marchi
