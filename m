Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7A1847A51
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 21:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9857C10E4A4;
	Fri,  2 Feb 2024 20:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hIOwhQ+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF9210E4A4
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 20:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706904888; x=1738440888;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=lGW840ogVbmgyHaComgLYeeCHbPOvNaeAZjEu1IHRS0=;
 b=hIOwhQ+8CB37wmvPw0FpLJ20Eo5+KmoBGyVjzXDP3oAdUP9cXcJLa7eO
 dnhBj4RONi3zZhlDWDoy/JhmVhuLx7Dv5AhCcY9qafg68VKIgYdUx3D5R
 P/mDuZowiGhKUZ75RsD0hSNmX1axsiGBukv2VSuHbfR5VoPkiqN8rdzUV
 T0iT5Atq9fZ4JXCeCHkhVgMCL7u/sbd3vGZ1KRi7NzyMU9f+bLbXC4ZWT
 5OBSieKHPerPAwJ92m9+eU2vrD5G5ysigrcg0aILk0hJ7P/w9AKi+pJZb
 D4CgkakIWXBxFqN4TWBmO/yOhEvl7wjEu394qdDGF68dN5QiFDfDP9zEG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="435373662"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="435373662"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 12:14:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="231435"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 12:14:45 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 12:14:44 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 12:14:44 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 12:14:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7VZKrgYJKXYKxEVn+m8Lq/xqJ9I3e3dIcEOyO9zi1n3SsUMj+L14kGcLGuJZ+1bHLIyeB3tLalJQnYJvkr+zptwP3bOzgqSWNhei3k/LHwWc4SIgomwEpbNrY+6/0hHPbzsLzA51KaKSYGAnGv/4iLZCyVEba5BbhMocHDYWy422Cyha+C6upqVz+G3nw4ZfOgnUas5CsZjqMeUUGsPdCjBqOXb9GmEn3nEpLzczWoWqojaj1Tbnk347KlQ8es0fDvdTJFAydxO6lgfW8Gc0rx5XjwPIBIUtrqxbC4C3cZE4xRUAkVL24Y5mw7iPNH3a0CyuIJeG6mOQ1qIglhnhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rNsFgyXf67Dp1IQ1v/AFPZnvOozfVsF5OpHwfCzPVmg=;
 b=imm5KZRW9Tu2Zkei5I6lpCRNZ34lLKhIYMUr+NfY9IVHMkGJxHHzIA8aYnI8fVfXI4hNelP9mBnpGdra+Urj8o6f6VFf6+7AyI1Y9jMZF6agkwBqWQMYJxLvu1D015mwywe4w4gXw08LpN6PlgkZ7mUES5b7NLE3H/BCjearsorAziAI5bE/jAlb8q6KGK/vlK4RUzj/h97OCpQ/ESpXO4vhANiNDakod01XVBzIqU7JPG20xeWl6bYnup8X+rf5y+KtrcC/P3/DZiyMymbrh1BDci7JZ7PMxKRs4uN6atzUdJo66kjU0PTU89M41oh5/idKOX6CXGBnZ9M4/gtlAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8343.namprd11.prod.outlook.com (2603:10b6:610:180::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.28; Fri, 2 Feb
 2024 20:14:43 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954%7]) with mapi id 15.20.7249.025; Fri, 2 Feb 2024
 20:14:43 +0000
Date: Fri, 2 Feb 2024 14:14:40 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Sasha Levin <sashal@kernel.org>
CC: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Greg KH
 <greg@kroah.com>, <stable-commits@vger.kernel.org>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 <intel-gfx@lists.freedesktop.org>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>
Subject: Re: Re: Re: Patch "drm: Fix color LUT rounding" has been added to
 the 6.7-stable tree
Message-ID: <jywz4vli3vxiq62enzeu4gfiv3adhndn5unpew4nxgitwo7zup@esnk7etqceg5>
References: <20240201170320.69864-1-sashal@kernel.org>
 <ZbvdXx7-GSUljUh1@intel.com> <2024020119-user-aviation-b3c5@gregkh>
 <ZbvkbJFs-hQ1wi4o@intel.com>
 <2024020120-unclog-junction-8a5f@gregkh>
 <Zb0d7xIFMhZpTXsW@intel.com>
 <4rfubhgx5ro6uyril7labgxoovuj26funttdts6bbcrbdfjxlj@mrwxtts657g2>
 <Zb1E0YF0KwOTO8Vi@sashalap>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zb1E0YF0KwOTO8Vi@sashalap>
X-ClientProxiedBy: BYAPR05CA0074.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8343:EE_
X-MS-Office365-Filtering-Correlation-Id: daeb9fdb-f8e0-4994-f339-08dc242b97e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bI5mUqjUmc/FqdMZ4mPIag9TpUle64KHpZ3YlWRzjeO8+g4CzyP0VuUMg5CeoLAVishFxBpyhkiQnnU7xoPiXJDeL9gNYm1vgHwQ8RhW5/xmpmEVHMRVylgvEV7asmx1cmhJhLfkIJBZxhS6BeHDsTMco0nCqlyox9omO0HIyRPhmnUkj++3DA4mNsnmeppoDqsblJpvTXSv47SQhvyX9KWROWohuSlaaFfrtRECQ75hEtmGYAcJc2vChTYrprNhF6/3mXnEgG0MLwLEYe4zVnATHSZPl8YuDDoy0wqBDKKZf9+HjRXEvVW293pUeU2MzhMYt/DdH1xNuRWWjvJ/2SdjlZqRRzx9kBoVZ5FYEC3u/ISj/vfkWsHr3KCc46OgKLKq3wSoNOxXYn71ZiGNLXl9WWUpUS2k1I7iZ4PFaNCUyd7G6qd8L7Uqa+aLhqTqYWI9QEJk+lOUUue2OPdGOx93e49btQZULIq7u2VyOLaYV9yl4LSzUmQ7goom6DGxTcA+nx0Lk7jqfzOT69ZXusAUBgGZg1+uDBcNlFSbei6QQd/gpKnRR2k8YlFHIgQ7SgX9fWhHudX02Nh8UaaROQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(376002)(136003)(39860400002)(396003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(2906002)(478600001)(7416002)(5660300002)(6486002)(82960400001)(966005)(33716001)(4326008)(66476007)(316002)(41300700001)(66556008)(6512007)(66946007)(9686003)(6506007)(86362001)(6916009)(8936002)(8676002)(38100700002)(54906003)(26005)(66574015);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?X9+XC2HJCAIjdJ4Um6lXDBHVOuTsvgoYBQ78iuf+ejYsQvFyjLgU4oMBwH?=
 =?iso-8859-1?Q?QVcXwuVbnPXmGAW8JVzFV5ojVdIj5FUhKnQLZddZw6Qeqoz2+FDoKmNUix?=
 =?iso-8859-1?Q?r8jBxykaudXQNtz7bSU93VKAXxzNfVkvWHBt/JFPf/PNpOGnz9ePInlO+B?=
 =?iso-8859-1?Q?xKaNVJ7bcrWzuI3c/COC47XG4u/HB/iZrB7OXd4dcLOb/g/yNhrpnWPJD5?=
 =?iso-8859-1?Q?ofnM2t+XwJL3AglZN7TBzPtBvgnFmyq81B0kFgwWYVJDQiMOjqLw4GvFXX?=
 =?iso-8859-1?Q?+HPm1SMcR/ezvVQdVWCxObSRYMvP+KZ4Am+T6x1l0+02XejxNN4Q6Yj0QW?=
 =?iso-8859-1?Q?ykcRJruyt1H7J9f7CRzHsG+L2NOZ7I0enqACpP2jk6118Oblrl/VWRzI1H?=
 =?iso-8859-1?Q?gi2ZvplT48YN0T5VQPuUFnWZ3/KkAlTv6iGbqLdBkWVCwxpBIDNNGc/bEg?=
 =?iso-8859-1?Q?2OoohRT/hh/V7OiHbvllUrWmp6mY1+s1MdpK4zaks8XP/3m94fO9B+f/2S?=
 =?iso-8859-1?Q?9ubhMHugcstN0RefcSPdU9q0poDUnDOztTFegRCd2WxHbQUqBLfK8xutZf?=
 =?iso-8859-1?Q?kBM88a+0DjVUvi1emCCfdrLPOm7NrmFXH47WBlAaf9i+cVKELJTzDFmWwV?=
 =?iso-8859-1?Q?yiZDlDej+dgLadkeGSrP2oX1pv99xEPFu8RSzsNwprC8HNae0rcVyfdaaW?=
 =?iso-8859-1?Q?QXGkUlRd6MeT7CW9XIteDxIPONPSyIFpI0uUz3ArXb7SpEgijNp9DblKrf?=
 =?iso-8859-1?Q?B1KbDJfWOWk6q3MCFUlb0P5TQN0l8so7gfnhQ9n1tQrLM0qbe/TPvyk4lv?=
 =?iso-8859-1?Q?BUBeqrQXrJdOYqIZMguijual+X5If4kKasKJWj+nOWzM1Q+8DdE9WfXlHF?=
 =?iso-8859-1?Q?F+KpCehKEnsWMz0O6CK4akXcPNv0G0KDpHEDSxhzGsbtrdUDiAXBAKu1tW?=
 =?iso-8859-1?Q?03sS+vP3KmqoyH3rVlrY4Oh73vz4VIag+mq43/5JZmsEfng6d2g8n68Q5A?=
 =?iso-8859-1?Q?JzmCiVoQ9wcoSDnr6TjRbemrdj4wpT5dQNQ4bAIKQ4C5nbXm0pzUQc+M8K?=
 =?iso-8859-1?Q?TijpKnUL4dnQzk8EdyJjbGNeDYUsSnV7XT5mza7a+jd1WqbqHL6YCLfvnv?=
 =?iso-8859-1?Q?GFalTjxYzYAJvVnphxO0KXbQnLz7Hfa3vL8GadVCRqNtoZu0GKpHaFKMmJ?=
 =?iso-8859-1?Q?bVKFri1Ddpk+a+h/NnPBwB8BZ/+w/EHovrENBrJC4mlBjA1T64Kz4xNpEI?=
 =?iso-8859-1?Q?2cKqz5Yhu3npN8Gn5XZVmncdIzY+uixOGHJ2E48gb1s6UnZRHwvMF32YQd?=
 =?iso-8859-1?Q?VClFO1gMkqMzdrwVEvMbToqqRoGugb6YDFMomPGeqW/zBcTxbj6VgRtseh?=
 =?iso-8859-1?Q?0NQjg/H/P04TmaAIDP0A4DgbVP9giKnLKotryHy8B41sy7GBvHeAT8rXWP?=
 =?iso-8859-1?Q?/hJimfTUEYxRwpbNn2PANLtNWzC00FhZ+wUmcVStWiNxI3G+3KrKh3LyHX?=
 =?iso-8859-1?Q?8Qfl3s4cPuu1Dbn6r2jloIhgN37Tfyxq0axv5jWOp7il3BTkhNFs5JKeoa?=
 =?iso-8859-1?Q?PhMwg/pu2A7naqylE8G22/qTOBPS7yWo8dSHra+F0x7zfWKEVx3HfW4YCR?=
 =?iso-8859-1?Q?zLlWsbOlUv/jNQalM1lO7l94u28kfnTsepBt7ZPWyxjoIAZRgwZQqt3Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: daeb9fdb-f8e0-4994-f339-08dc242b97e4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 20:14:43.1742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: by1oRKGVNw0ba9OSt+j0DohWPzSNsDMLdPjkpFMSLjNEbwWvF3emN4YYQVO3LqGU8mZINLHceLde9UP5SWmkKVLp70ozl86KrXSkSGMfnVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8343
X-OriginatorOrg: intel.com
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

On Fri, Feb 02, 2024 at 02:38:57PM -0500, Sasha Levin wrote:
>On Fri, Feb 02, 2024 at 11:35:33AM -0600, Lucas De Marchi wrote:
>>On Fri, Feb 02, 2024 at 06:53:03PM +0200, Ville Syrjälä wrote:
>>>On Thu, Feb 01, 2024 at 11:17:28AM -0800, Greg KH wrote:
>>>>On Thu, Feb 01, 2024 at 08:35:24PM +0200, Ville Syrjälä wrote:
>>>>>On Thu, Feb 01, 2024 at 10:16:48AM -0800, Greg KH wrote:
>>>>>> On Thu, Feb 01, 2024 at 08:05:19PM +0200, Ville Syrjälä wrote:
>>>>>> > On Thu, Feb 01, 2024 at 12:03:20PM -0500, Sasha Levin wrote:
>>>>>> > > This is a note to let you know that I've just added the patch titled
>>>>>> > >
>>>>>> > >     drm: Fix color LUT rounding
>>>>>> > >
>>>>>> > > to the 6.7-stable tree which can be found at:
>>>>>> > >     http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary
>>>>>> > >
>>>>>> > > The filename of the patch is:
>>>>>> > >      drm-fix-color-lut-rounding.patch
>>>>>> > > and it can be found in the queue-6.7 subdirectory.
>>>>>> > >
>>>>>> > > If you, or anyone else, feels it should not be added to the stable tree,
>>>>>> > > please let <stable@vger.kernel.org> know about it.
>>>>>> >
>>>>>> > I guess I wasn't clear enough in the other mail...
>>>>>> >
>>>>>> > NAK for all of backports of this patch.
>>>>>>
>>>>>> Ok, but why?  It seems that you are fixing a real issue here, right?  If
>>>>>> not, the changelog is not clear with that at all...
>>>>>>
>>>>>> I'll go drop it now, thanks.
>>>>>
>>>>>Because backporting it would require other backports that depend on
>>>>>the rounding behaviour.
>>>>>
>>>>>Can I somehow fully opt out of these automagic backports?
>>>>>If I want my stuff backported I'll ask for it.
>>>>
>>>>You can, just let me know what exact files should be ignored, or you can
>>>>send a patch against this file:
>>>>	https://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git/tree/ignore_list
>>>
>>>I think we should add at least i915 and xe there. cc: maintainers
>>
>>It does feel a little wild to decide a patch needs to be backported
>>based on the commit title starting with "Fix", or whatever way was used
>>here. We always relied on patches being backported based on a) having a
>>Fixes: trailer and  b) the commit pointed out in that trailer
>>being present in that stable version. Or the others options shown
>>in Documentation/process/stable-kernel-rules.rst
>>
>>Looking at the commit in question, c6fbb6bca10838485b820e8a26c23996f77ce580
>>there's no such a trailer. Did I miss something from
>>Documentation/process/stable-kernel-rules.rst?
>
>Where did you see anything about the Fixes: trailer in the document
>you've pointed to?

End of "Option 1":

    Note, such tagging is unnecessary if the stable team can derive the
    appropriate versions from Fixes: tags.

Lucas De Marchi

>
>-- 
>Thanks,
>Sasha
