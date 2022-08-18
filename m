Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC1598F74
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Aug 2022 23:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7AE10E100;
	Thu, 18 Aug 2022 21:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBCD10E048
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Aug 2022 21:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660857925; x=1692393925;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W9hJWhDz45PDgPH3uGNpXz9Vm2n6PZ0uXSbUa0X2Lr4=;
 b=VIsv+qrHzRWvWkQyT6KpHuGVvPIvy7FLydrrpx0Wg0hDERNGLYA8u2Kv
 pE0P7PT/PZKstYvl3fvbYrR+/VuUJ++mOpus7b+z6nHOm6lq88K3cd7H6
 sdrM9LxjT5ZyZk+YAhTFvUZe1kc25Z31V2vEJqKJsyUi5pQxciFrvuMgu
 4FYQs9Z6U2PqnybWCif1z0AXbxZ21uYlLtZd5FVRJA4GcHwETr1tal2Gy
 S3Gneg5ijQDltQLRC9KHsFLmEvwlpFD+Ee2IBQc4yJbTGtOtTXdHixwXG
 3zCXEMnKPMusVfWjw4uOZi9FaVB+Q2et8eZt3hgmmKXxAxgvCGdicZSWF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="318897421"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="318897421"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 14:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="558700088"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 18 Aug 2022 14:25:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 14:25:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 18 Aug 2022 14:25:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 18 Aug 2022 14:25:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 18 Aug 2022 14:25:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zlby8InwhdS3SGidu+j/PAg0DuywYljP7yJqvDsoESe+u5S0F0WDz3/jKe9Poy40SOlL8sLV8NXznpGMUr3Nf1JacLp871X7+Yws9UqBACYx07d5YGFRiU5Vktt+RI2XVrS0N2MxDtQWs3wwY/XLiIlUf8WARwYZ2BO8Cwi52AN1oFdfbBhcs46pnNMVD3/Wo8yuto8d5FXY22E6rKGYfbnXgY0iLgve36LkLvRtgXYzq2Fi/0V8i4cjI+0dWoh1VEPmy+y7K/gl90eY4qvf42MVKD8TDYPCQ6xPhzD/OyrD38aq+vRwYzNUywvgL6860z1TBm1ASe2aDG5jALE8bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CVvlOFITg2/gCZOqTt6C2RW0MoXOExafo4CfGKve5YM=;
 b=UT+zTRlurD2ZcXlw264f4o5AEyLGRJREKdc77IHZ8clu25YkR3gJdGKlQlrWyhpoOsrEPHMfkywYlTBZboKXp6lEsfUR6170Q/bnu6SA5xcLq+QmGOjNhbxnCwA1wTX8qjyMi7gckxA9V8W2Fnoj13FBH8TyXDjPnHVTVEtbfUWhnlsWLyqK8iwMqwC472QE/v/EsoiDfcRrPqkC2swR3Sfwat9WTDAeq+19FFL63oPWKVc7m1qKP4G8AVV6VsvRj0u5RWZfXrVUTsBWDMvrpgo55Ntmkfr4o27R+aGkbGdTF6EGMxr/HlpNQbDTHpFwOfzTq9SAHAAXW7aTBo6cgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.28; Thu, 18 Aug
 2022 21:25:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Thu, 18 Aug 2022
 21:25:21 +0000
Date: Thu, 18 Aug 2022 14:25:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220818212519.6kz6fajdlc4mei6t@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <20220817012322.rm4xuqdt7vxtmtov@ldmartin-desk2.lan>
 <875yirqsav.fsf@intel.com> <87pmgzpa25.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87pmgzpa25.fsf@intel.com>
X-ClientProxiedBy: BY3PR10CA0008.namprd10.prod.outlook.com
 (2603:10b6:a03:255::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 333b33d7-fd90-4e17-a7f9-08da8160280f
X-MS-TrafficTypeDiagnostic: LV2PR11MB6072:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BaWFBLsc8l69cwU6INZtPR/Slm/rCDOKkfwbb0ZsWv8PcsdAl0kw2ubcDGo9D2ezjSFbPBZQ2ckMzduxciui9RxB6aP8/ZZNMw5gTK7cQo4Ua2kgb8ejgzszYrEqWyLT8EDZUO7IQ2FpjBz7RMCNRYInVrfxUpmu4TIH4oRiVfXCeaY9x91Q+C2W5pQAx9xHTIVnGIwcW7UASmXoa8aLl2gIrgXGL01U3Rt66MR98lDnwt/OERDJn8eESJBhftMBcwxyVi2kuZ1Q5oSjog9k0pil7S7P0m/T4WQ9RU+6XNoXcGP8Ks5zExRUPy4/74vXWhnSnX1N8KJ0juchg025bQxQZAFt3Xu6rMHc+rzPC0vrpmomL3fw8IoDp3ASEcmCpOwHgkRmIScA5qRkENFpw6e8VLbfOdP7y/I/2+8Eu3c7clVFBFI9V6sBY6MuouzJuiKqJx0lE91zRlZJjKwyT6XO32EbSAMI2Y+HFTgMPlywpe5R/ZadZhQMwd9ps9TWtH0P8bsiROXh6HdSMKB9ld+TJAyJZ5471CAMOptZ2I8i/U8M0L6R9g4mM16fiTm5m6jo2GQ0b881yvFC0lDty3HRQ+bLC8N6H0bXP8fR30OnlBNb21Nm9pAraNeI3OeDQAuIoz9F2zvwmtfv11t/0igN6kLjawA41yBwX90hNucopO54uiI8XCE1cMQfCgwqhb5Y3pXlWFz4kUWhPcTxRA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(346002)(39860400002)(376002)(316002)(4326008)(6636002)(66556008)(6862004)(8676002)(2906002)(38100700002)(66476007)(8936002)(82960400001)(5660300002)(66946007)(186003)(41300700001)(86362001)(6506007)(36756003)(478600001)(6486002)(9686003)(6512007)(26005)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?grBgRMlrkew3jbWrK5tdDBgNNA2gs2GMl9dBPD9kzebvhoJNtKeqZskXdrmG?=
 =?us-ascii?Q?U3/iXYRAvbmlHyh50H4/1Eb/oXbJh7hh11iTbBFJB6WvuMY0Ji3GvjtqULDb?=
 =?us-ascii?Q?6d15m0ciZurW1tT7RUaRTzVoMka2h66p29NVPoj1e11eNFDM3fT4ElZkpO44?=
 =?us-ascii?Q?3IqSLAN3Zi2+z79D2rC1xYWBEqwJysPjqXuOCXMiO6mpMTK+tdvBWbAqVp4M?=
 =?us-ascii?Q?pF7hAr9sO8cF/iT6GI/nrHHFsW54vP1MTRMw3mukS/0eZ8ZvsPH5+Tzgv6TJ?=
 =?us-ascii?Q?snLgoYM2tBSkYpUjJx5G4OFelX6IboJ8LYthj5dTZtnx6D7PZaB50CRRyjp+?=
 =?us-ascii?Q?jrhhreCdBWvZFHwGHyjMwSjjJwoqdITA56Ch/DZkKukzRcGdYqL16eIZ45WV?=
 =?us-ascii?Q?Gj1+ny5y1ipxk9WH1AQwVkQFYDuG6XcywvU4WpsibBV9xt52ZsawOLk+Rg1N?=
 =?us-ascii?Q?AwFnBwUo89eF5sgmmteIU3+fyWiH4Vim8yTGHhE4x/e2qXRcje9/ixWvm6Wp?=
 =?us-ascii?Q?E3MqwSZYtukBQmMXzQkhvvfcd1G1jyi0ANXn54uhQUuRXI5pApYa3sonwIxT?=
 =?us-ascii?Q?C+LclFR/4k+XT8wL5ktHoIV2FWEAhm4PGW1tf9gc0ISM0vgp9/FM1j5Qsku2?=
 =?us-ascii?Q?WG0Dt6eEqAkrHz5ebiHxzlhQK548vdER130xy8I0ppke/GJ5Yy7zPjhZVmRz?=
 =?us-ascii?Q?1hMzZvkxBD/yb1cUi1E9WdpHAkRXcY9Ir/BsRcFx9TExBgUEMhc0SSPhrKwK?=
 =?us-ascii?Q?Vej39zl0IDfPp7G+tvdXD0zTq8bNYbliEA/B+1D0uFU9LJFrWGlOImGcrwZy?=
 =?us-ascii?Q?g2lLLwmTwNqOsOCrymcTJPSkgZPySKV8v1b7d6BPT5U0MiO9YJ7hInxyh0so?=
 =?us-ascii?Q?ZpJ3R5ZYllLUezGGJ9KQqTF2YW8DxXyYFRBzDvGlSDmlocfN8//4sJM5EXSQ?=
 =?us-ascii?Q?035bvs4bYa4jbZo854nxIllqY7feNKlnW7coGvAUU2c4ul3G6cl3C8uEbPVv?=
 =?us-ascii?Q?JsGKadh7n81ARTotzSjJx70OjvFElNvhd/37On3pqwLUPvUeRBafcyufpXCg?=
 =?us-ascii?Q?4c79pgU85IgCaLdc0onyvFT8ccef197U4XxooCwJ2LF3TlfMrKn0Ssz+ay6g?=
 =?us-ascii?Q?+uggtoC2vZ07t2VYYKxTw+XN5Xn0RvjvKJCLhpKgod5HACw5XM+N1u7Ojap+?=
 =?us-ascii?Q?ACKYcLc0nemNpYb0pd1vsQTCXpi5KO5VcvWdOfEuKnTowonjrMASLZjKSrJN?=
 =?us-ascii?Q?nFBhyQC59qo6toN1FvpJ/m4Y3MQBuDZSfITKpnioj6E64hWRjnwZmApdPku0?=
 =?us-ascii?Q?+fHjQJwWwwok1Njh8q3He7AkO7lCQKga6bDKu8EL/PSZ6tTGouXFD1XKol91?=
 =?us-ascii?Q?pUiEaThQWof4eGWXzIemB2nm8QJCMNzxgKEAQwNcUpnDWWhuiOUcUAwBYF/r?=
 =?us-ascii?Q?pXm3N6LMuIEq7bIq6Enfo0aZwAF8qY7Vw9betJDE6XQuXAs6xgXzIuJ7hGbn?=
 =?us-ascii?Q?BmLVXyX6TZFxDXSbjVvLYgSVWBYewELGZsFPzIKRnuGChfLmxHO/lMQmU4Mx?=
 =?us-ascii?Q?GzVUjYyR/g+ZlDN+uZT7kYX8EefOucWf6ZK/7Mexdd0VOkQQhOyEuYpgGob3?=
 =?us-ascii?Q?jA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 333b33d7-fd90-4e17-a7f9-08da8160280f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 21:25:21.6554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5nVFmfLG017CNj2EMyh+1i6+c3qY9te+kYL+A1RakIT5MWEFxThJJpd20MMEQRcrc/tk64R2hs9IUaZHuNaDixnR2NLnBtpyHsdaIW47gs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 17, 2022 at 11:07:46AM +0300, Jani Nikula wrote:
>On Wed, 17 Aug 2022, Jani Nikula <jani.nikula@intel.com> wrote:
>> On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Thu, Aug 11, 2022 at 06:07:12PM +0300, Jani Nikula wrote:
>>>>In another long-overdue cleanup, add a display sub-struct to
>>>>drm_i915_private, and start moving display related members there. Start
>>>>with display funcs that need a rename anyway to not collide with the new
>>>>display member.
>>>>
>>>>Add a new header under display/ for defining struct intel_display.
>>>>
>>>>Rename struct drm_i915_display_funcs to intel_display_funcs while at it.
>
>[...]
>
>>>>+struct intel_display_funcs {
>>>
>>> in the same line as comment above. Maybe we could give this struct a
>>> better name? Because it's already inside a intel_display.funcs.crtc
>>>
>>> display->funcs.crtc->get_pipe_config()
>>> display->funcs.crtc->get_initial_plane_nfig()
>>> display->funcs.crtc->enable()
>>> display->funcs.crtc->disable()
>>> display->funcs.crtc->commit_modeset_enables()
>>>
>>> and then call this `struct intel_crtc_funcs`.
>>>
>>> This can be done later as this commit itself is basically moving things
>>> with the same name inside a substruct.
>>
>> I guess my question is, are the functions inside "crtc enough" to be
>> called intel_crtc_funcs? Though intel_display_funcs is really too
>> generic too.
>>
>> Maybe I'll just go with crtc.
>
>Mmh, except we already have a bunch of struct drm_crtc_funcs with
><platform>_crtc_funcs in intel_crtc.c. Too confusing.
>
>struct intel_random_collection_of_display_funcs. :p
>
>The easy choice *for now* would be to stick with the struct
>intel_display_funcs and live with the display->funcs.display tautology.

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>


thanks
Lucas De Marchi

>
>BR,
>Jani.
>
>
>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
