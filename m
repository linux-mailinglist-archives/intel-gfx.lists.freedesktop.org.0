Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF3B3A50C94
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 21:33:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0CB10E32B;
	Wed,  5 Mar 2025 20:33:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BedULbBk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B5910E328;
 Wed,  5 Mar 2025 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741206788; x=1772742788;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tjX7tncB3FXf/OkurjU7pa1h10JYcstNmIBb5HbBPOc=;
 b=BedULbBkHepGDTKcxwtExS61qorxouY8gZ1cjJ8x9SpO+yccnd8vlmLT
 o70zW52vuyFcWvqV7k6/BfjI9zDPSPZ1KCNqzxCMMRTE+SQ3pqtPvW1Oe
 QrCNln1E1oK3Sgd9oeKdOE5rqnDsyH4EMlhLr/xUNWAy8Aw11jNVUMls1
 xnstckh5R98FkaRvAuD8+HEitn67BGSXkLwsdIqFsZgmw7wT+DNzwyP+H
 W0/N3ADTQAscBWr3q4vus2Sd5kj9RXcRDh8dtl/tItuRbkRamRT1QFXV0
 PpnDV8c2p7viqpfCO3MNE9e4m2HSUVO/mTkI6GgwskcMc5zkXHJWaFCYi Q==;
X-CSE-ConnectionGUID: P7leF4WcQFO1+dhC7TKpEg==
X-CSE-MsgGUID: 4YicqSrmT7uQqqWH3iqVsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52829070"
X-IronPort-AV: E=Sophos;i="6.14,224,1736841600"; d="scan'208";a="52829070"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 12:33:04 -0800
X-CSE-ConnectionGUID: yypHtl8XSO2FZIdmm3WnUA==
X-CSE-MsgGUID: 62HEZzVjR6GyFitiNoKXag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="156008148"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 12:33:04 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 12:33:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 12:33:03 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 12:33:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=arMazNi6AkToDKEa2l6UKmcl7MBHXZZeLVOdkipm9AUvyotTB1O1wVItiu69iJWAqeXu/tvAsph3gXkIxp2LhNNikb4DBE0yccrsw6QDWab6aXx60oW9BJwVNccELmMm6RQY18JT2ENetXCde5FH67QDj6aGA8NEVLiu3sjxhQpN0HJm4Mf50RFJFPLWgwBSjk2qb7U8AY8ipaNrtUml/XqKK5JJW/CYoE+CDya5MuELLBpHlfHyTpP4s/zcHZkm8aocAmwMwkbiFo6LKSA/OhP7cYLClNysf9rEDaTrbpr+5pHA3w5lDDUqO8WwSpFJ79EhZmNtlyE4bot1t9vboA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikfUI403B5hB+MD/pI+VdXYHliLg7C+6zNLiB5b2meE=;
 b=JwN7y40peeaRgm5kBt+YZXwJ9USzxkL8HEiU7eu7w6dW85RZrLzc4DSbnAmV+7QmfYIhiwwjwXqT3iIX+ftOXZ8sgNqGUTEUpy9tnIAq/Csk3a55tP+ZaxqNoYqzzcAOGkTaswIQoNu2KSX0GAoXkERwRLnYs2I7sSsKXGzIx95gnqWzdtV2ClalVA5IfuJe0ZRGRTnTU7fwiu3Z/8dfyVWtdsHsH+vkuABOMZnHsJNq+ZjGCyEf/ufuN95wGudptfx+M10jTnErhV3x/tPly5ouCMEem+y2QvOYGWbUqZ0VvwVhj1MU2AU0RAXNSBif38gHF7/t+XCFRldckJui/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 LV2PR11MB6069.namprd11.prod.outlook.com (2603:10b6:408:17a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8489.28; Wed, 5 Mar 2025 20:32:41 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%6]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 20:32:40 +0000
Date: Wed, 5 Mar 2025 14:32:36 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: "Knop, Ryszard" <ryszard.knop@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "rk@dragonic.eu" <rk@dragonic.eu>,
 "daniel@fooishbar.org" <daniel@fooishbar.org>, Sima Vetter <sima@ffwll.ch>
Subject: Re: Discussion: Moving away from Patchwork for Intel i915/Xe CI
Message-ID: <qiilvo4yumvostcmeehx3ifolg5e7jt5h363c4tninmttaxk4c@hpgpbwdb4e2j>
References: <814f9bcb9c7ee22af45bd5278255af247c6664fa.camel@intel.com>
 <871pvbxt40.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <871pvbxt40.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0160.namprd03.prod.outlook.com
 (2603:10b6:303:8d::15) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|LV2PR11MB6069:EE_
X-MS-Office365-Filtering-Correlation-Id: 13b89b1d-2c96-4093-2550-08dd5c24dfa6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fX8IhR9NBh6JYFBLGuJMONNcI+y5GQPZYre+YstNl707uxgIwKmp+e2jrPs8?=
 =?us-ascii?Q?zLlU1+WDieqYT3azaHp+WRgeyVyu9RWXVwk83jXzNjwvkCO8x2MEgyLGzg6n?=
 =?us-ascii?Q?Cq0x5Qpmkdn2E9o+t53V0p+xIXhTftZBbuT1VowXAn8ZB7+J4rZmfZ+4mLZz?=
 =?us-ascii?Q?+vmZ2lHZjGaL83va3zaKsA6I7MvmdXHwFCqxKCOnBzIy0P8VdcT8ly11CFYn?=
 =?us-ascii?Q?4r4ULqcnynSDxuNpaTdvgRMvvk+2k9xDDCRw+Wc0fAdXIGcK7+Y2SAAenwo7?=
 =?us-ascii?Q?3W0pBfJ1bIztsIR+F/0WeaZX1u2byHWaqMmJ+4Jb8FmYNutE9P7OyFAfxogS?=
 =?us-ascii?Q?ynWvUt3BFpiXCQsFevQwmbSWG2CwG+8NnbU/tNkTkt4URJI6M15UeDlxRMDq?=
 =?us-ascii?Q?H3EaeVbhvQGxHuFAgz7RXYMZp58qSNB6o8mRCInT7X0aQcqWhcesbEFlCtxm?=
 =?us-ascii?Q?9LRqS0k/7axgVwlIS2/bk3EplVkw8GJ2xPF4VXEYb+ULxvI2JpUC+Do041df?=
 =?us-ascii?Q?8JhL4Vlb4yO3antSkYBfdYuJ5VvNw+R0xQ7+VglBlnsyLicJEOemjSZWp+sA?=
 =?us-ascii?Q?Vt7gVAQB8EmeaVTWihPvyyaqZFK8paiMcd1ZaeKfqsl0UDQTNRKWpcR/pT1d?=
 =?us-ascii?Q?c8dBHG01jY+3+AYY6I+34IB2B6kLavhk2NfX0p42MB/u+aXJMt841mx/dy+L?=
 =?us-ascii?Q?fTBWVIYVgElKbFxCI/jdJQUBBWGVp4qDOvyjlF23RuqRR9n0zkmgnsDhYs3V?=
 =?us-ascii?Q?E9V1VzeMsPFi107+gqgZFRfS+WVKaYz5aevtM1CcCE13PUCPv3e92vqaNhpO?=
 =?us-ascii?Q?P63xdrkvu88Y+w/twvQ/dSHE8beRZprsQE29SdHZlzUYuNWtFPqwMxG/8YUD?=
 =?us-ascii?Q?weURviUsKNfg2HoKq9eM+85O7NdHXovKYrW1gZxm5aCOeMBtgV1QERnMUfzb?=
 =?us-ascii?Q?mr3r84KHAg+VIxdybAV574DKV5Zrno0Pf56ACHea5UUWNwBY2Kau3toJF5aw?=
 =?us-ascii?Q?vvQpA9HoGlT73uFZyg4NgayiRmdqZnKdLVTOZu5qePQ6cGuw/jmD1+6XFnUY?=
 =?us-ascii?Q?2Q3ev/bguVXlCiydJ/7yFz53Cihl1QecVfRHCczExLiTm3bu/AzbjxV8fZxJ?=
 =?us-ascii?Q?sMcGtg63m06u8+kZxxg+HCAQb6jfOeJ5Jr1D278vLXHwwKONwB8vQGlPXA9X?=
 =?us-ascii?Q?OthYsoTD7ARXUNt/YoQHxEVgklo512PTHDS7NyewbFhZtg7Tqm8c+iVAQ3Ly?=
 =?us-ascii?Q?39O80UOf4a25GXBhvhqhaRAfGlv1g1HS1wwXZiCNTGjqpiGFjX4En4952y2y?=
 =?us-ascii?Q?j7EwmXHCOv/KhfklDk58FzUaYRNkIZpWfDzzzb6peY3R9Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CGNiOFuPglvYfHNsroVLzDvKW4XGDsRgJL1InmYfx6ze0DbZVB4Mbx4B9BTy?=
 =?us-ascii?Q?8FG9w2+iQwl4Pf+7o9ynxaXOQSH2matB7QN1siGGYmBFE4dK4wuW++Qxx3aJ?=
 =?us-ascii?Q?w3/gshi9AcROvKdEdA0coAMQZVJDyi/KQO4j+HC78kRslkUhKXqjL1mlE8X+?=
 =?us-ascii?Q?UdlZloL1jeslrRZuvFocL1AL8RCBd9IjBg6xbK3KTmHWE/cGjzOvVN1vZ0XN?=
 =?us-ascii?Q?yqBaaaqAFpM+64cdmbYQR9D1xBVxqg9/NhAZpq6r2lbGycaIA8aRV04Oe93B?=
 =?us-ascii?Q?fJP9iEfXpSwZO3K3Afd3H221smSO1GrkgMV5nGBqm5FBe2M0I6/BYFlg5oYT?=
 =?us-ascii?Q?3tBh+brDNQzWm0I+c4VgyszXE4gNJcPr09c5hmYhNxHpe9mfrIQoE+G3bqUT?=
 =?us-ascii?Q?m7JSw/MYgNQf9HrMeWVFzbz59Xpal3Usn0p1+A/xOF0wTe7L+QuQvqFzIgFu?=
 =?us-ascii?Q?OL5bH8IFBf/IYiNJ+zyavPWrsUmrxzfq/mD/DA4sgGgPkmhmTgHU6CQZ5Uj0?=
 =?us-ascii?Q?4V4xRmEuAmkKcc2GfzjyzZcknQiU+nVQH90RRaXf1Brz4MdSOvniJ+Lwr9xf?=
 =?us-ascii?Q?W5uYIjvM0yMiEwBkprLrsQzAXbAcuBpN1rhCHsT2fFsyJDylFPzyR7rpyfg+?=
 =?us-ascii?Q?5HIxt65bWmclZ3VJzLYrQaHDp6Mk+vnB6ZD4VhNojND3ZxR6iJYmYEGLIL3Y?=
 =?us-ascii?Q?EU3ByX0fQNCGB4Jsjt1/iA5AxPFSV8sFT+nHY8C4wTHNhH7TvelePSxXSpor?=
 =?us-ascii?Q?u/Nmkytpi3LpZVuKjQBrb99gc95FRY0POOSP3EstIBDkgnuU22XvGkM822J2?=
 =?us-ascii?Q?fs2GdYK/RU2sigN4ZMUzafZ6WdZXC5LspvsiINfXIBHZ7IBsMVSpBGocWhqc?=
 =?us-ascii?Q?jrmQ9lOWZn3AA10xfnS2fLkHxDvQyMILIlRVMpF2S9ODR/rLutqR88H6wHOt?=
 =?us-ascii?Q?yyj+aRUXf3nV4TRn/bLDBF634ewKU7FwkmdYTjZxxzwSlMgAf/t8lh3KL61J?=
 =?us-ascii?Q?OYn61zJ0aecBXCypS79co9QEbFQZmpTcm68z0x1FpVHRuviVT+hizcHmxi9G?=
 =?us-ascii?Q?Pr82o+AsqADcecUSVGh6Qn9mIOcuaPpGOlHQezIILiWTbCQi+jKxE4IPJLi7?=
 =?us-ascii?Q?Ck7FSDTTcbNNuNFCcOQbhYdYBOXOqAedWa4yrO/13qq2KMLWFNdbI3Qjx8l2?=
 =?us-ascii?Q?DzxHM1BuWuu12g4Eh9MXIIAtBU0txpF5O84Er7LJ9WBEwMLmtwy49uqrFcuY?=
 =?us-ascii?Q?vT3mpoxDY9M0qwiNPIz8Z16LIIlR0iL+/P1wDs1wM1MLSNVbM1hLF9PaI8Zg?=
 =?us-ascii?Q?oI+68IfBzsy0vVG+iXkOf6dnWgsZRxC7E/cc42PL2jcAWxvPWvT1LLxc1lOw?=
 =?us-ascii?Q?bkfBjR8gSno+KeiQmBeZde7QNa8VxK2AXuz70umxi44FW/8GY59Aon0kncKB?=
 =?us-ascii?Q?szcDWtrHnyQCl5/fTncP0SPtzjDd6dMZ4W4H77UHo4vCC0cWKYdv+s46I5uN?=
 =?us-ascii?Q?kDuOk6DMth83/0lthV/6/bzOS0Dm1B8B7ewoOQyk+x3RtR7zOhW1ZdcsxcCt?=
 =?us-ascii?Q?xfrl26Cd+kcb/F/qtfrNVrc3sDwOrzvQx/KIqewO5/88mAUDzFpzYvZiZqWq?=
 =?us-ascii?Q?jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13b89b1d-2c96-4093-2550-08dd5c24dfa6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 20:32:39.9851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8IwtnNalRlHVTd/LkBj26Wa6qv+By6I2xuy/0fEEc06y+XiLlwFyXHVSSnka/0BBnhLMoFXfweNY6Hx4LlvEmk9zd2iwtN99CauYfM7w+J0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6069
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

On Wed, Mar 05, 2025 at 07:52:31PM +0200, Jani Nikula wrote:
>On Wed, 05 Mar 2025, "Knop, Ryszard" <ryszard.knop@intel.com> wrote:
>> Hey everyone,
>>
>> Patchwork has been having lots of issues recently, dropping patches,
>> being unusably slow and generally starting to become more of a pain
>> than help. Over on the CI side we are also not super fond of it and we
>> don't have enough resources to maintain it properly. Lucas has
>> suggested using public-inbox archives directly, and with some recent
>> tools like b4/lei making common ML workflows feasible without
>> reinventing the wheel, we are considering setting up a bridge between
>> MLs and GitHub/GitLab to instead drive CI using more modern tools.
>
>I am supportive of this change.
>
>> We have not decided whether to drop Patchwork yet - this is a thread to
>> gather people's thoughts if this sounds like a good idea.
>>
>> The workflow would look like this:
>>
>> - A drm-tip mirror would be set up on GitHub/fd.o GitLab, automatically
>> pulling all changes from drm-tip upstream fd.o GitLab as a secondary
>> source.
>> - For each new series on lore.kernel.org a bridge would create a PR by
>> taking the latest mirrored drm-tip source, then applying a new series
>> with `b4 shazam`.
>
>There's a small catch here. Patchwork is currently more clever about

for some notion of clever. Try giving this kind of feedback in the
mailing list:

"oh, in addition to what you did, you also need this:

----8<----
<diff>
----8<----"

It will a) mangle the author for the entire series b) not do right thing
with the patch and the series won't apply anymore (afair it tries to
replace the patch with what you gave as diff). Also, what should go in
the subject? Is it v{n}, v{n+1} or v{n}.1? There may be an answer, not
documented anywhere, but for me relying on "this is what b4 does" rather
than a specific behavior in this forked patchwork instance is much
better.  At least with b4 we can set expectations or have hope of
eventually tweaking it.

Lucas De Marchi

>handling series revisions when only some of the patches in a series are
>updated by way of replying to the individual patch. For example [1][2].
>
>I've been meaning to report it to upstream b4, but haven't gotten around
>to it yet. But I wouldn't consider this a blocker.
>
>[1] https://lore.kernel.org/r/20250305114820.3523077-2-imre.deak@intel.com
>[2] https://patchwork.freedesktop.org/series/145782/
>
>> - That PR would then go through the normal CI flow, with CI checks
>> being reported on that PR, instead of sending all the reports to the
>> mailing list.
>> - On the mailing list, the bridge would send an ack that a series has
>> been seen and where are its results. You would no longer receive
>> multiple emails with KBs of logs in your email client, but everything
>> would be available from PR checks (as status checks and links to full
>> logs only, no trimming and "last 1000 lines only").
>
>\o/
>
>> - Mirrors, PRs and checks for public mailing lists would be public,
>> much like on the current public Patchwork instance.
>> - Logs behind links will be stored for a few months (3-6, depends on
>> traffic and how the situation evolves). GitHub Checks themselves (check
>> status, shortlogs and links) have a hard retention period of 400 days.
>> - Not sure about PR retention: we need a mechanism to correctly
>> identify merged series somehow, then to trim these from the list.
>> Expected retention time?
>
>With the velocity of the driver development, the test results go stale
>in a matter of a week or two. I normally wouldn't merge patches older
>than that without a fresh test round.
>
>IMO a long retention isn't necessary. At most a few months? The patches
>will still stay on the list forever.
>
>> - Not sure about reporting on "CI finished": Maybe we could send one
>> more email with a summary of checks when the entire workflow has been
>> finished?
>
>I've previously suggested one short mail as an acknowledgement with a
>URL to the results, and another mail when testing has ended one way or
>another. I think it would be a good starting point.
>
>> On GitHub vs fd.o GitLab: I'm thinking more of GitHub here:
>>
>> - GitHub generally performs better with large repositories.
>> - Extra fallback drm-tip source for fd.o downtime periods.
>> - Bonus points: We can store public Intel CI tags directly in that
>> mirror for moderate periods of time without abusing fd.o servers.
>>
>> Either option would work fine though, so opinions here would be
>> appreciated :)
>
>I think eventually we will want to consider accepting contributions via
>gitlab merge requests directly.
>
>It would also be interesting if maintainers/committers could merge the
>contributions via gitlab UI already when CI applied the patches from the
>mailing list and created the merge request.
>
>In the merge request case, they'd have to be against individual repos
>that feed into drm-tip, *not* merge requests against drm-tip
>directly. So for testing CI would have to recreate drm-tip the same way
>as 'dim push-branch' currently does.
>
>I don't think these are hard requests at this time, and should not block
>the forward progress, but it's maybe something you want to consider so
>you're not inadvertently creating problems for your future self!
>
>> CI itself would not run in the native forge CI either way, but rather
>> on our Jenkins infra, as it does today. If there's ever a need to
>> switch forges, it would require reworking the bridging/reporting bits,
>> but not *all* the bits.
>>
>> We don't want to self-host another forge as we don't have enough people
>> and free time to do that properly. Codeberg, etc are not an option due
>> to the drm-tip repo size.
>>
>> And that's the initial idea. Thoughts? Do you like any of this, or does
>> it sound like a downgrade from what we have today?
>
>I think it sounds good overall. I don't like the flood of mails, and
>they don't have complete information anyway. I'm hopeful using
>github/gitlab would make the whole CI slightly more transparent too.
>
>I wouldn't mind sunsetting fdo patchwork at all.
>
>
>BR,
>Jani.
>
>-- 
>Jani Nikula, Intel
