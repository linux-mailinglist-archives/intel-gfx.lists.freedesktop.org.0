Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D40984697
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 15:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4A910E2B6;
	Tue, 24 Sep 2024 13:14:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZIsUh4Wc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87E3610E1E0;
 Tue, 24 Sep 2024 13:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727183671; x=1758719671;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bR48d6EuGNJKY2nreoztNUuGOfVAEX0QakdJdlimIEM=;
 b=ZIsUh4Wce/oDNH75hi8MFP9drBgBNvIOScpCOrcNHP1e77Z78Rxm32q6
 I3jZIwuPrk3reiA/JF1cEQJ+CY6IBxE2Z0Gu/eEWgXDIReWdOgzLHWlrl
 EXyoCsH23bs0EAm1TnMq+xx14ximw8h8a9RHgapn2Qtt1wPklD6RLjQp1
 CsmlxqueHM5vaaJj33njefbJxNlLe8vrxpV/LCRAG2eragpfiYmBlvkh+
 KJJlwv5gFyWWG7Ec0izscqcSSAwq3ha2Cm4M9K9mVfsMgZNAt8m2Wa6jJ
 wmGPmZK9PoS0N2CPlHg8RY5pCMSgp+IVDBDQPRuc3Rd8/f9JSGQ3tBTXw w==;
X-CSE-ConnectionGUID: IYJzE58kQbix0Dr1xt2FFQ==
X-CSE-MsgGUID: w15RC/GKSTqyywePfxPLBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="36841686"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="36841686"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 06:14:31 -0700
X-CSE-ConnectionGUID: WvteCXsPRfyaDilDrZUxNw==
X-CSE-MsgGUID: 5zch7FtzRZuGOuHJMt6NMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="76178572"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 06:14:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 06:14:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 06:14:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 06:14:30 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 06:14:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f4HtNM8FLrQXAzLmFFi7sijbW6tc4r5TMISOZV0sSuF4W68KyAp3NjDt6KcJSJLq0FhHseQ0Uz19hsl01di4n46pnRuwDtMpO03GzeYJoqSRNLWk2zBb4DnITtgdGsrwg8MM5JWsHDR/YvKaq54lIWsAVgcyA+0hzMFjiyih+9MSM0utxJ4tBMnfQChl6Gh+lhCmxYdpbWH6nMaHLWVX8516LNn9hmEldqVr1s762XJsLXV1LZpnm+jpKMiX/kFT9f3MhnF/3II4ziwXaN7IT1MYeFYoYeo/3qz4qYMz2xjve0hhKcpNsWmqaMwnPsUGHVspG3gMBlg6mQNWdKFK6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Inf/BQbr7wZJ+lniRxaGyevXm68sl9EkNhHK1N6DJV4=;
 b=N1zNCHB1mRAg22iej8Zw7kkjcm6L/amdMbMz8Li/WvEXaSy7K/jsHFVCCfIx1f8BgDGt4FcEric67nXHZ7RnggbFMngMvRvK/9FaGTafMg8L7ccToDwnVqw3TQD0YU/HJJvENUnFiqrZnJ19FFEE8dGJHq/6diZw83UtB9WYT/llOhPUop2D7lvGcze7zwYpvFJY2f2b6rLH3E8bpvoL43eQgmlf2ICOcmUbRp83ndobxw7V5s6+bfKHNT5GXouaFQPnIM4C8T1RK5CIedwdMD8h+ncXadWuR34W+uURjA1OM3/diO0UOjmwesEaa7xczk6d2HJa2O3sNc3D36iCcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB7988.namprd11.prod.outlook.com (2603:10b6:510:243::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 13:14:27 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%5]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 13:14:27 +0000
Date: Tue, 24 Sep 2024 08:14:22 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87wmj14c0q.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0298.namprd03.prod.outlook.com
 (2603:10b6:303:b5::33) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB7988:EE_
X-MS-Office365-Filtering-Correlation-Id: 765fb990-83e5-444a-d8a8-08dcdc9ad100
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ekq/m8dGfNQj5Xv4SYnoefKaH010mZVh2tCv4hsTsSQMGQ3mgbErIGMgBu?=
 =?iso-8859-1?Q?qUpVkcz98OvVd2QJ1nbq3Fs9OrI8vloFKZBZOsWxdbLolaER5DhgOmnU7I?=
 =?iso-8859-1?Q?m3lOk5Uo81RJW4pQbv1WvmhnW/3AjNyNTP5BWDlXnq2US+gaW2NwE5l4Ig?=
 =?iso-8859-1?Q?gOhNSQ7FRVvXoT8TsmtxV1NZ38r2ACV9LGH8JbeMzgcHQ7BXVHvM8M5oAr?=
 =?iso-8859-1?Q?FZH+cZ8auSwfmd4XSxgmHnuEp8codCwL5pTr/2i/s0Pb0pb7frfJfFo0Ml?=
 =?iso-8859-1?Q?dA/NnGuh9UlBf6Aw4N2UldSx6dA/VPVCIO0KLbJoa26ETFeejjq7cDzR2F?=
 =?iso-8859-1?Q?l3N8R8apWJUztLhXrsl/jpLyqOGytOSeAot5hLlPogFUS6jFUhTPaSGQPt?=
 =?iso-8859-1?Q?PKYlptdEUO3pggkTLUnPevA6RjKJKdz0QlV/6Wzx+qlpAen+gVVRHLWW/I?=
 =?iso-8859-1?Q?8XFkWXcRkUHMqjFBKIAgsYcxC+4Ia2a0ROiQz0IaOMfMCePYKbbHW7dDbO?=
 =?iso-8859-1?Q?Bhdk3EEy5QxyEy6/gcTj7/KPzbpWxt68wQ2udr1Hc+/UZz4WbrqUpdJEQU?=
 =?iso-8859-1?Q?yV95UCn5YZk7ThnwebXzMtzdikk3Vc3De9WqY3QSQ+hfOyQCcIsd84cKdw?=
 =?iso-8859-1?Q?kaGn2lPGRf69gGnylowxYaV+RGoSllvjtjgZJmkhA8bD0DKqsFEer+9HqZ?=
 =?iso-8859-1?Q?d8K23W5qhvxlge8E79aBrvb9CcYs5Pvy7l8FPVKFYiaiy7Bi9Dyv8hj+mm?=
 =?iso-8859-1?Q?Uqh1n2yv81uOOSz8zQw3+mUTAdI2hzUkcZd8eckaM0syG4UbK5oXn7AY7a?=
 =?iso-8859-1?Q?900wPhzrZqT4OGfJcpsFDsB4OM2zGN99Uu6//aS97LdKCfJdArW2ufOesT?=
 =?iso-8859-1?Q?JAe/wuK+AEQ/1uPku+JYGDjpRlHlFo1+GQHaunR1H+Zwrr1n2sxZaySLk3?=
 =?iso-8859-1?Q?oxwz+vnixZmGJjLMxXASj/3g2VBoIB8fhXUnTHQymkifaO4gqOLceGtM5x?=
 =?iso-8859-1?Q?KoFU8thQXgv4bz3zIMsYycxoCHGwsyBjL1+7/6XLQmx7lMg79CPECHJY4i?=
 =?iso-8859-1?Q?dYvhIUcVUg2hwze7W9hF7RnlQ6Xt8s4Q5SF0rjVz2OqaVj88wECyplYbpP?=
 =?iso-8859-1?Q?9lcpApe7ifgqguDU3bn0QSXQdgvFrHXFQzifwBdBO9evkXCLMr+jtCCWZC?=
 =?iso-8859-1?Q?jrA9GQnggVke11FxDSZKzCOo3tPKx8scyOhhu2r26Nmy6jjuaCqgKeD8DG?=
 =?iso-8859-1?Q?0lbadcKhCck/PQhLk2g5k7JtlKy5VNgJpQbzlon/Lt1qhAIcL04uU2FLSU?=
 =?iso-8859-1?Q?Xyj3YM0bILR7Fcy1AGXhPcjz/smi2lqlEv30IuYpkdQFrzlwahWz68ZQIQ?=
 =?iso-8859-1?Q?HKn9+l6/UIHC0ih+yedjFdbVF6eIfVyw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?quAWrnlwm1XkNfH3yn4f7koiWW3ufFn3GERgIAGJ/7BPJK4aRFWurcgtdY?=
 =?iso-8859-1?Q?oq9yWujhAtOBGHlFmWhjzOxXJ1FCBvLj9i77NZzuKFJOCBYgQ47yLz3YgV?=
 =?iso-8859-1?Q?kSwM//gRcPnXdQGVY+DZcwTVVS6hTy0I1WS7k5DozA6i+gVBvwpp/rpOdA?=
 =?iso-8859-1?Q?/r6TeNBtvR8H6ogZVJJsvVcSsztZKDzOfTzIuh6gSbugrguV0tlOsxMqyZ?=
 =?iso-8859-1?Q?vEy5MhZ8LgMiXL1nePcMF/zKE5zn2LbkLoek9WTOzcITunWvH/JKFz7Dwe?=
 =?iso-8859-1?Q?/lahVS12VJ5PjZJJ6yNk7SNYER5P63zXTV0PmMqCYFRCtkRdiH1cvdx4Yj?=
 =?iso-8859-1?Q?9SwtB4IdfeX/OUhAXRESbjccHoMA9pO/DIB2BhUXGmN6jiaEN82bq8WSEv?=
 =?iso-8859-1?Q?rWQ4ZKGQ1FmXoKnGr3+/j4qRotlh3KTTl1jhzEKxawX9bj7of48eq6RL+C?=
 =?iso-8859-1?Q?1xfmdy6XbPJzZovBUWq/oNnH0+MuSQD1J5IGJt3D6mxSZgOZLUHRCKvD33?=
 =?iso-8859-1?Q?9T4sXHKtJIqHhxXv+ZYmd31BetJHoJ/646Zbh3wPZ9ULWXhriyMGA6uvMX?=
 =?iso-8859-1?Q?hhyB0aZlW4CAh715UlyvDRNxbTXxscsV6GhqxpRZ+bdQT98M/7NCVPcUET?=
 =?iso-8859-1?Q?4PHo3C5JMRw1mhy3xqe9npoUhO7xtZu05W9XJ6GrAztdA8vw69Tczv54bc?=
 =?iso-8859-1?Q?Tr0Bc3z5FP8nrS7HndNQnv1+e7lChpHO6YSgTZ3zTPwqsNtUSXVagcpzbm?=
 =?iso-8859-1?Q?THn/zLoIdZiSe1kbhv6IG77TnEfa6qooTtx5cyirvDAmNBgf24z6qAtOr5?=
 =?iso-8859-1?Q?m40/B+U65uJhAI31j+OO0+NTlsF0ykfUKzxnHLNdisbhCaZX/RNJI5HIeP?=
 =?iso-8859-1?Q?Ml7ivRaUCHC/IHbd9c11mxt+33r+7N8mPURhZ8gEoJcxm1Kecj1grZ+Ffj?=
 =?iso-8859-1?Q?iZeYwCUXOiVzglBtaFxWws92Osno8OF2SGg9JYZKKMb8dFdF2thYwjfrST?=
 =?iso-8859-1?Q?6nIkbsbSPlTon9ZxN0KIo8VTZoQD5Rx2NFW0Rezdmc9zQPqNheAohBCpkL?=
 =?iso-8859-1?Q?APpVVsQPlcHsWbVRiomLmZ772yrkd0vrSrnRPOyEWhoqI7N2R6Nvn+/PCW?=
 =?iso-8859-1?Q?tRYIduYn0Uz2hK7y/qaiDTwuTZ9HR3I4YbUCDKSGYVcBKi0gxuhCg+iMmY?=
 =?iso-8859-1?Q?THrSihTCQPEDcLc4Gq6eLY4qYqgvcV98I8ZFEjF6HgZz+8ARlGbca+0y8M?=
 =?iso-8859-1?Q?YxpPJRajbGM3qwwOGfs/0ZW9Ff3E12BYlVsAEb7NVSl/NNJARhB9LvBG/N?=
 =?iso-8859-1?Q?RCPTV+EtG1ZNfc0Rj5lTd0dYI1ZKp5brazdZ58vrErorYkEKA8z7GGA/oD?=
 =?iso-8859-1?Q?+8F5BNouy1IT3CSesSxJFMzZ8sJY/EXZMBKQ/qvKepvjd/9c7HzQyLvUvn?=
 =?iso-8859-1?Q?Kzw6xQFPCPoObkzj2rpFXHnLvzOVxMRC6In/3EHUgH9bes2Wp8Ytw/DlSt?=
 =?iso-8859-1?Q?3TbOp+yUUHiQ+SFmhpi5q3KcHgdu6QrTDMv5l+Nby16sW6/rn9hoSOjxp4?=
 =?iso-8859-1?Q?OcJCMCBna90bcG+lVuOEUYnCSa66MH1UUaRwgFyPzUNdB6DW08cEcHuv/D?=
 =?iso-8859-1?Q?OGYRAvCBzCUkI8dA6636b0743RJFm0GP0j8Vil+/2Cp4yWCLZklQhqmw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 765fb990-83e5-444a-d8a8-08dcdc9ad100
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 13:14:27.1593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oI4vdYO3l7nHDTkdxF1ljUbaHy2/hRyZUj3RMoROh55/ngNN5TKdvHJ5hB29cexTAIPF7pSdJ4ubgc/nrJTY0Ker6UIMSrg08jGLNRU+HrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7988
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

On Tue, Sep 24, 2024 at 12:49:25PM GMT, Jani Nikula wrote:
>On Thu, 29 Aug 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
>> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
>>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
>>> > v2 of [1]. Please read the cover letter there.
>>> >
>>> > This addresses review comments and adds a few more commits on top, in particular
>>> > the last one showcasing the approach.
>>> >
>>> > The main question remains, is this what we want?
>>>
>>> I don't know why, but the 'is' thing is still strange.
>>>
>>> I know I know... I'm bad with naming myself.
>>>
>>> I think about 'platform' but that get too big
>>>
>>> if (display->platform.BROADWELL)
>>>
>>> I think about 'gen' but then it is overloaded....
>>>
>>> then I think about 'ip' is worse...
>>>
>>> 'version'?
>>>
>>> 'name'?
>>>
>>> if (display->name.HASWELL)...
>>>
>>> ....
>>>
>>> But well, I like the overall simplification here in general.
>>> Without a better name to suggest, I guess let's just move ahead...
>>
>> One slight concern with the is.foo is whether it complicates finding
>> things with eg. cscope. But I suppose for platforms that doesn't matter
>> all that much. For the has_foo stuff it'd be much more relevant.
>
>It does make finding things harder with cscope and gnu global, but git
>grep for is.FOO is pretty accurate.
>
>> Anyways, can't think of anything particularly elegant myself either,
>> so go ahead I guess.
>
>So I haven't yet. I just still have that slightly uneasy feeling about
>whether this is a good thing or not. That doesn't usually make me shy
>away from things, because you can fix stuff later, but getting this
>wrong causes so much churn everywhere.
>
>The fact that it's not a macro makes it less flexible for future
>changes. The display->is.FOO is somewhat legible, but could be
>better. Would all lowercase make it better? I don't know.
>
>More alternatives? Not elegant for sure, but just alternatives:
>
>- Lowercase names:
>
>	if (display->is.rocketlake)

what I really dislike is a struct named "is". Going full mesa-way would
be slightly better IMO:

	if (display->is_rockelake)

or

	if (display->platform_rocketlake)

or

	if (display->platform.rocketlake)

>
>  Does not help with flexibility or cscope.
>
>- Lowercase macros for display, e.g. is_rocketlake().
>
>	if (is_rocketlake(display))
>
>- Macros based on just the platform name, e.g. ROCKETLAKE().
>
>	if (ROCKETLAKE(display))
>
>  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().
>
>	if (PLATFORM_ROCKETLAKE(display))
>
>  But that can get a bit long in some if ladders etc.

Does it matter much? I think those would be the exception, particularly
because platform checks are kind of rare these days.

grepping for LUNARLAKE in xe reveals only 2 users (+ few workarounds),
because wherever we can we check by graphics/display version rather than
platform.

Then simply using something similar to what we already have in xe, would
be great IMO:

	if (display->platform == PLATFORM_LUNARLAKE)

it may be verbose, but shouldn't be much used to matter in the end.

Lucas De Marchi

>
>- Go through the trouble of making the existing IS_FOO() macros _Generic
>  and accept either i915 or display pointer. This does postpone making
>  any further changes, but fairly soon there will need to be two sets of
>  macros, separate for i915 and display, even though named the same.
>
>  Also, the _Generic thing would look up the platform definitions from
>  different places, which could be error prone.
>
>
>Yeah, procrastination...
>
>
>BR,
>Jani.
>
>
>
>
>-- 
>Jani Nikula, Intel
