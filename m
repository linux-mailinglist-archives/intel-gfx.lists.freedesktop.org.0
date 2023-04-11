Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF116DE535
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 22:00:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4838310E64C;
	Tue, 11 Apr 2023 20:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0515810E0C8;
 Tue, 11 Apr 2023 20:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681243226; x=1712779226;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Vxu7ZJRTARFrkLRFN9qpriiPPez9xAicqFro/suGYwQ=;
 b=GPSb+CRxVzSuG1kafsq1cd4bqiq/oeiWOyLU/iNtzNu7IId6TBXh3sEJ
 NVbs9a3lRoHQE1lJ0Wss+Tn6E3gU882Bi3ubWlruQmUx6jl/sHR+ZV8O1
 XtSikDWgeNRphTd/8HHdMdwNMj3sKa7j8kPqttvgvh49wvfsLnZKaTxGz
 pZ3+tdTNt2jkAA3Dq8ZOP9Rr/w+JdWIL+V6eEatjqJHHNj50XJBFfBPL4
 PA3/oT30IJQlWIVbxOef4yoq1IaWhHKOFqM065DFEqaAMfchYlaixh+Ay
 Pf5/OHNzNvPkmd9Xq2EatsTQ8rDWhqEoRQ3fGAMuPQ9VepPwz9pkz0rCI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="332413816"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="332413816"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 13:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="682206834"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="682206834"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 11 Apr 2023 12:59:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 12:59:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 12:59:24 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 11 Apr 2023 12:59:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dT2lyssmFhvdSAZufGAzqvDFqkqut5LOrlg/od7h+qzlHxFEZto9lLkGqacdcO2Y6fSlmX/rCFC7Uc+O31EKeiUgkhfpiCfoJ6x09ZHlfX5ab62M4Ci/HIQEmHeayL4k8wLkm9fPiLRnDP3Lkku9cSC/Rvy6SLXhjqvHlQ/EkxZEQbQF+/XD6tb1RahxnIEMgRVPUcuRL3tBEK+jmfEijBXsHI4dBATF+MFdJcbBV5LXAb8IiT0bwin4VrlLrGNI0XWRxhEtWoneDGKIbV4dfBKELhvHJJy3EfYU+m8odHgJahJwTdrNPMbb0PjL1axmB/8HWJ8lh+dBMOZpFOmkug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/kKVUutpJ3EFbawsHOM1UPcM8Q0AN95j9fS7NoLcIc=;
 b=nojzIq9gAVzETgOp0DB6wBWSf7o2iA9iHbc1kyf/2jXIzq5gIMSzh91N1vcZ1WFnJF92xIB1IesQuXuH9u+4yAOaSC86xVoTqvJg3JC655QdY6poI9ricTxzNqqOnM/paBGLwPWol+SYp1hoXept303Wqjjf37ve+OowsvF82AkAgE5i/6WWElUoUB6wxRTkSEYg0TpCnzwY4/qGjC17ZRCYDwU4DMRtN58T5by7E0LCZ9oSh2hz5greT5dX3+QiAt0iF9W3lN36TyeMMJlPf1s4/dBPMsuf0QncbCltD88+jQf21rnmRVCDdormEeW5cIjAuUix8oWNHt86/C2CWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB7563.namprd11.prod.outlook.com (2603:10b6:510:286::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.36; Tue, 11 Apr
 2023 19:59:21 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::2629:fb12:6221:3745%6]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 19:59:21 +0000
Date: Tue, 11 Apr 2023 12:59:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
 <ZDVz2Ppm1DgVbZ0p@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZDVz2Ppm1DgVbZ0p@intel.com>
X-ClientProxiedBy: SJ0PR13CA0192.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB7563:EE_
X-MS-Office365-Filtering-Correlation-Id: c1ceb4cf-f380-4554-2433-08db3ac73d69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BycBxoV4seJJ9ZWBqn7RmdeuW0KROBKQHti+VXlmRGY98ZXVw8dyerSN7YlTI3pYk29oNG9a4cO6Ovox79LLQr8xzcOjj9tD+MV1rT8LRT4X2TdMOh0g5xH/06p1x8176cip+EoLtpRqRmGgzXF/2URwRzkQOdHAYPkoTApRdZ247YoPP7TpaOPl3MmACPsQ3Ot2UbjKI0ZFSzGJTwIrOapcgJUgXcNwXa0Nf2P/SQstZ2HW0TvWzz2TTzEpKTFEHwlu/BpF3Qxc5zYSm38kPvdROAsQzjp2lVg29gSyYu0ifrm95P3RdVWb7aB+LfYUod0JLdbIgvrPJ80Idzz6DOFD8D7UldcyfDeUPZ2baN9a/qu1RLx8cUDLH4zg4s8825y6wX/I94qTo2e/4ilfV6ZhLxRiu5gYBtEftIaTVYlcp//c8VaEC/QAYYI2P0xtIFHmPwvUqIBNpoFrNKHjFsK7C576283HzFmLib/7kopm6DbMZg0z/AWqnLcGYp/6EuaPCkTQrxfrBGajC4WMLb2fkbgeU4mZmlcaZHM44dXZzv6GGAkRwK+6YpBXP03a
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(36756003)(86362001)(41300700001)(316002)(6636002)(478600001)(66556008)(66946007)(4326008)(8676002)(6486002)(54906003)(66476007)(6862004)(82960400001)(5660300002)(2906002)(8936002)(38100700002)(186003)(6666004)(6512007)(6506007)(26005)(1076003)(9686003)(66574015)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?1xSFZ6IaSSMkQo/cda0wtFaiM09koL80aZd0gn1rJWHpttBpuvH8ArYCsW?=
 =?iso-8859-1?Q?sqsEulutjvLItrkgtedEGMqKlNqwqmuho2+T5WrPLGn5LeogfTKKFUjSjo?=
 =?iso-8859-1?Q?6m9nBR6JOpObMBZHVXwaY7k4RZeDEsDEC76m2lnUmLLSi3MPqx8yMYkJmP?=
 =?iso-8859-1?Q?aB4GX+6kfgCgq2mp8DWhOnfgEPxrTi77Bt6oi8KGrYpadN+bBdlcqgGgES?=
 =?iso-8859-1?Q?8xsydYXbe8RyyILxjY78IUHRTR0xpwnYCXXTmyQCauIcSXUnzDqunf5PZA?=
 =?iso-8859-1?Q?x0uHS9Ny5IEZEzE6eErOTNIzoVhHvAIDWT4C5N/vanIRODjf2Brsrmj6sI?=
 =?iso-8859-1?Q?1ueWYBGOiyyhUP2WEqL0r5GDeGPGmY6Hv7dyFUpkHMdo1+Q4E2oKKHF2SF?=
 =?iso-8859-1?Q?mM5CZbujR3BosM+MvdDZ+s1SmDx5z5BlcO9fwk+ohoKsmOGu+mb7woBRY1?=
 =?iso-8859-1?Q?JVaNGinipShc/XnZ5XdB7Z+yxFgK4x+FpaMm0nHt1xvhDj+RNRSAmoIdNL?=
 =?iso-8859-1?Q?+bBcuywB6l6XsUAykAziqNlm8RL26wQkn4vc9nSmR4zqy27X4sNgS0w86y?=
 =?iso-8859-1?Q?Me1jwFz1eDM0i+xp439c9L2saFLKHneM7gBdEqYC1yUxFuyVjky6AkP10B?=
 =?iso-8859-1?Q?QU1w/j4e2KlEuh089qGTR82otiAusq1ZjmKtVHJ7Lh4oOj/tIhnufaWi9t?=
 =?iso-8859-1?Q?xAqJenvfLp22uD6mxtyCCwYOLT48+iucpHsnwrLC5tElUsUFdsDJKIc9Ou?=
 =?iso-8859-1?Q?32q3ZoAO0eJ4d497KQHO6upgYepmtZ7DLLOYZe3shHs0tbVlsVqq8IyuaS?=
 =?iso-8859-1?Q?gHCt2O/QBU0qLQH/elABuCcuJQE6/MeKqM+Eru2Gp/eOVptuPiuJbLxK7/?=
 =?iso-8859-1?Q?jjCbcXb0GDjyBOrMHAbbhaG+AlYQouJB/EF/JNZNWOiNkkes/bp0+SSEqD?=
 =?iso-8859-1?Q?RYUj2ZIHBzliQAJlkSvdICkyw1p7FEI+BKFWZakkW+mVWf3sa+3X2aJ4xM?=
 =?iso-8859-1?Q?OhAnSB5PAYcUp/vBlLaTWc1sqPUsr38qruQjHgnZgyvUgHo9yqw5EDRayV?=
 =?iso-8859-1?Q?0p4UsXxg64MnP60VPxrohKlR2O7qfbHn/O9++DPc1/4KJzbnCQZ8n5UlFh?=
 =?iso-8859-1?Q?2EfubSKViIU9UHUzUlvztAwA7JOuTHGCdVRlrRelEuvg8HKAlDwwJUgTgA?=
 =?iso-8859-1?Q?Ci5lcUB1gJ23R/Crn5ljgX47FsMAD3E0vzc+XSMITiPhBjcfXSc5k6O9J+?=
 =?iso-8859-1?Q?xoOe3mCekpQ9AY8GLenGRmNW5grNeEiHjjMmVIh2O59N6fPFg9Ic00P5do?=
 =?iso-8859-1?Q?GV4JlOjclsZTk2sG03q7J4jze/qENPSOfFZlKYHhnzOeQnLkl99SLDN3ni?=
 =?iso-8859-1?Q?zaPfFdN9kZEooxzu4SBoKbL3+6d/1O3VyDbz2SamGK7HmqaPwIopvJIoep?=
 =?iso-8859-1?Q?g77vs0FIKqqkbY/2uX+ZLGSZwTNn2AfCFsIEpYljYgBkENkoe8F5ZzMdiV?=
 =?iso-8859-1?Q?1r54iMWCq+w9nwpNSIrujaOdi4V/ipbVQQaabEA9an7lpyA9HkNvz9w7FO?=
 =?iso-8859-1?Q?MAIunfF/u7oUWh6wN6LfjJUAc6V1PVGI4uibbSCqnEh8b9roiNhUDzPelQ?=
 =?iso-8859-1?Q?XUlP5xIecra8vO9+abty/sQb3NLBT+fm0DMFSwUohozX61w8aV1epjjQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1ceb4cf-f380-4554-2433-08db3ac73d69
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 19:59:21.0876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pzUOPaLq4NSTg3+hWADSOYKqLwSAYim/Dzs13WFnk2PLcFTAUYQA07ECN5aBAJYff1icfShhuKgpKjeymF+aH+mmfoAnxQ4k9m+3mhPDuDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7563
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 11, 2023 at 10:51:04AM -0400, Rodrigo Vivi wrote:
>On Tue, Apr 11, 2023 at 12:14:36PM +0300, Jani Nikula wrote:
>> On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> > On Tue, Apr 11, 2023 at 11:51:33AM +0300, Jani Nikula wrote:
>> >> On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> >> > On Mon, Apr 10, 2023 at 11:32:14AM -0700, José Roberto de Souza wrote:
>> >> >> Start to move the initialization of some lock from
>> >> >> i915_driver_early_probe().
>> >> >> No dkl function is called prior to intel_setup_outputs(), so this is
>> >> >> a good place to initialize it.
>> >> >
>> >> > I disagree. We don't want to sprinke these all over the place.
>> >>
>> >> I'm thinking if only foo.c uses a lock, foo.c should initialize it, not
>> >> someone else.
>> >
>> > Perhaps. But I think there should be some consistent place in the higher
>> > level code where all such things get called instead of dropping each one
>> > individually into some random spot in the overlall display init flow.
>>
>> Agreed.
>
>Ops, I just saw this now, right after I cc'ed you in the other thread.
>
>So, probably good to hold this and do the entire refactor together of all
>those locks initialization so we find this common consistent place apparently...

"internal" sw initialization of display-related stuff. It doesn't belong in
i915_driver_early_probe(), it makes harder to follow the sequence if we sprinkle
them around, like here in intel_setup_outputs.

But I don't see why this couldn't be done in a higher level "sw
initialization of display-related stuff".  Should we add an equivalent
of i915_driver_early_probe(), e.g.  intel_display_early_probe()[1],  and
move the display-related things from i915_driver_early_probe()?

In that case, from xe we would call this function rather than
initializing these fields in xe_display_create()

Lucas De Marchi

[1] I don't like the name, but it follows what is already there

>
>>
>> --
>> Jani Nikula, Intel Open Source Graphics Center
