Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 620D87B58AF
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 19:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C535B10E263;
	Mon,  2 Oct 2023 17:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D227510E263
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 17:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696267166; x=1727803166;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=J0uDCAznEdIyL7whdmo0m+pTUG3ecWrL81Fdvuy8JiA=;
 b=imF/Gs92/j/xd+USTVgZxptJ9nhpoMZeTtG2hohTdupX3Z1IQ2u7Zemr
 65qpBUo3CZWMFiOYTOtOFJBuDcWSqZKGJ5Di7SFoiCAfpb7JKllztogRa
 9lKc7torcGvOKYOSbvNO4AFAC8aPD82VACT8TAoUuH3cLq/u2iNXuRWTw
 GYyUPzFPaMqwx5wD2JJESdqAynoFTvY7/W0ApgmVQE7MPMw7z67LQqs5K
 EpsKrcg69kqGSo7noGKbLXXCOvk+kotI6j/WDSL7Z/4q08Bitb9VvYEIh
 CAyLDNVaDWs0E1zetq/AoC+9DpGq37ElUOB7eqKYHWlTzd+RBbXCikCs5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="4268591"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="4268591"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 10:19:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="1581238"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 10:18:25 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 10:19:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 10:19:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 10:19:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4EOqgJ75VcWcQbsZydI/SN5Ipp6rR0ZSwQIKlCjdlYz3uHQ3szNY+0SgkvcljG8i/GwZdo0O3xjesMdn7HcJJnEetqWMH9yDQblNoKFrPan/KmFArTl5xGtxx708RaAhsS2Hqs0G077C1P7DRPFjFuH3V2r5RUUdGMM4cfa2ssuKuQug+m/OQoINE19wBXZVtwkkSi6Uk7piofSfz/lHLVWTVEgi5Be88mFco+PxBf7ImUGq6aiO9DmfOPuGryf88DenFB0cc1z7hzeeLkizswtxi6TfpgO6wulAERTdFmrmkvAJoxkpLQQgMdxbqTgpFc3IACiuNA3ag77JdEH1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M82TyDQyzl7vtCrED0jp3eejFPJVA8LVYMSmOsucyp8=;
 b=C9PRHEr9TsByLhU+i3iQvP6R3VqW7n+ge7nsAItnK1K5Coi6smyls88fYBZApi+vsA4b5ExPJQ1LhkzdRB541Cp32ArAvAR7LmhmpY3/n7hlzVK99BM5kqDHCrpzlUWHF2URL5g4j6ZlRC9WRQsiKgrstu+XhYguHMsdktpfqfzCgxBjhvYudYqRyu6AarmrL2VdOVaz5S+kGAbOWLamOfg6TGNp0ozS9lREiI2zW7WE0KKW99AwiuVX1TT+nFj88RsFtQpUu9JgCQry8ToSwgqrOAK/SlU9rTQ/uzNuSoV1k/PKPy7LurHxD9wQnNuHulKM7fOEtZeXa8IMWYk5Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) by
 CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.28; Mon, 2 Oct 2023 17:19:03 +0000
Received: from DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::cc5d:d2c9:b39a:3de7]) by DM4PR11MB5373.namprd11.prod.outlook.com
 ([fe80::cc5d:d2c9:b39a:3de7%3]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 17:19:03 +0000
Date: Mon, 2 Oct 2023 19:18:59 +0200
From: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <3jvolprf2zagtsgwc4wrt7oabugg6txi46hmd65nxfsuyecs6i@t37bfbgho3uj>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <ZRrOA6v1katsED65@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZRrOA6v1katsED65@ashyti-mobl2.lan>
X-ClientProxiedBy: BE1P281CA0174.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:66::20) To DM4PR11MB5373.namprd11.prod.outlook.com
 (2603:10b6:5:394::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5373:EE_|CO1PR11MB4868:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f95d7ca-e5a8-47d9-8e7a-08dbc36bacbb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aS/ElXMtRAk3sr8DjvCEBYoDzoGMprIHixPCRh/3yeFCAncdxu55W1oEMvaSw4MGaCGyiQMCVQ/fTDDtCX2OXeG6KKuy2o3QftSswVFHTWrBjqA7RK2TDzCrKweHi8VhmoeBOdpAYH82xWI8dcLDoBOOnJkeC18x/wDUBcidkr0eh7eCK+oXmkCQeDoe9+Te164URf3Rq7OA8Mac5dqlf7riTjuhRDjs1FXfG3pOzzuDGYo/jlgAAS4PZuzINM2H9VcWJ7Dk/zEL86ocpvYCCH2s771JeLRZ8aPjAHO2+0EKeMt1S+jr8gnO9mIotOQElVm86RhTFjZ0q4PL2b8azoBvZwQyNLhxIUhlQlQBoDsOl/oED1UO53ZqwtoI3Lkr1sgeB7+XrRsChpvF9uclvPD9iyMRwv0VipaTl26WRJeISWCCDJPIk1byvpvE0UgAw8jP4sUhfWq7RYGaeji4WEQxNxnZTtbaCG1OsvN2olINXkMuOdSyWkhpan/9DAXwSOCCTG5qQF7rMGtROZqE+RC+YQI3DbmGuXDUrdh0JU0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5373.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(136003)(366004)(396003)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(86362001)(66476007)(66946007)(54906003)(38100700002)(316002)(6916009)(82960400001)(66556008)(966005)(2906002)(4744005)(478600001)(5660300002)(83380400001)(41300700001)(4326008)(6666004)(6486002)(9686003)(6512007)(6506007)(26005)(8676002)(8936002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aldLdjhRZFFGQlFlNWxZWWZkcjhkeFNNaHI1SERaayttTVI4MFRzVGZNSVUr?=
 =?utf-8?B?VnFBc1VySnNjU01pUitKR0dOQ0FtYXQ2Tm1INytiTkFPV0cvMWJ2TUU2VmQ4?=
 =?utf-8?B?UmNaazllMFV2VityTzVaSGJkSkZJa0hGYnFnRXhhRWhJRmZ2Ty9IU29pNGFT?=
 =?utf-8?B?N2JjaFI0S0ZSejQwNGJSZFE1YTIvcXdKTU9kbFJBakEvSmoxVVF3Tk4zTDF3?=
 =?utf-8?B?VWpOK1YyUGc2Rlh6Y1A5MjlVRHJ0NmRmQncwWUVyU2gwV041NGgzdEZBdlFL?=
 =?utf-8?B?Ni9Nb0tPR3AyMnBiMzZlajZJYUVXcnUxbVlKRE9XcCt2YmVNZ2l4aHZUMm8r?=
 =?utf-8?B?ZEpLT1MzQURZRVNObDl2M3J6bFBlM0xMQjhRc0hYOTBOcEQ4dUFEVUtFd3o0?=
 =?utf-8?B?TCtRQTk1dHVHRnliU1l0SE5JMm96VVYzVzhrMm9OcStkRUhENStaU3FzRFhG?=
 =?utf-8?B?WSttQWEwamNoaUs4U1c2TjV5NGRqMzY4ZXhQQVlMMVdwZFFvS29Hblk4cStH?=
 =?utf-8?B?c3NKVWpaZ3d6NGRWYkIzSW9kMVBYTUVsVGxuV28zbThURDFmZXM4MThZQkRB?=
 =?utf-8?B?Q0tNWjduU1cvSkQ0L3RLOFdIR0IveDM2VjNCUTBKckh2QTh3RGxqVXRCKzRD?=
 =?utf-8?B?ZWN0NTYyMUxmUFgvNUk5Z0I4R3pkZXJHbWRCSnlXZFVSWlV0MzY3SXZVUi9a?=
 =?utf-8?B?UzgrMnN2bCtHZENaTXNaN2dUQ1VDUng1OVdJbGFIYlBsVnVMa2h2c3RlR2Nq?=
 =?utf-8?B?STVzUW9ubjJvVHJ1bHZHc3Iva3lBZGwwS2tYa2xrTHczNEt0ZkhNU1lLSCtw?=
 =?utf-8?B?TFBYY2lVT3pDcnNteWc0SlBmb0xvVDc2VVI2eXZETnlDalZkTlp4MW1USWVT?=
 =?utf-8?B?VUNJVWhRYkcwVHlmNmJEaWhtQitUb0Rock1jdE54L2d6U3VPeFNzcVM0Mnp2?=
 =?utf-8?B?a2IxclZZRVFpbkFsbis1cWdwbjJvaEp4TERiWEsrbmlLYkN4S1N2M0RJckk2?=
 =?utf-8?B?S2tUengzK2JlYmRBaHhTalBoRUZXZlo5UTVWL3YwZStITVhBVnFCMThHa0Mw?=
 =?utf-8?B?Y1d6RmxiMjRxa0IzUFBOK2x4N2hwUXdtQ0NOVzBvbEJyRXc5T0hsZ3V0WXZh?=
 =?utf-8?B?RjRlQVdZUGdIRG9za2t0RjJsMGJ6Z0pxVUsxZDl5dURJeGN4NTczczlDWUV0?=
 =?utf-8?B?Q1k0STN5NGlFVkFzU0Vrc3U4RG1IaFRrK2I1UEg4NmtaZHZoZkNoeVJ6RUpk?=
 =?utf-8?B?Y08xQjFNRGpXaWowRkh3QmJxUUpNVHNrUVNSOXoyRlRZZTFUSlR3aHI5RG50?=
 =?utf-8?B?QzVOM1cvZzVVQzBXWGJ1QURobkl5K05EVmFIdlloRlNRenMxZ2JtRlRMelB1?=
 =?utf-8?B?aFJ1dHBLMUsydlVQQW5SSVU3aHBnbUFXeFlNVGE1UGtSSmtybk5yMWQ2ejZz?=
 =?utf-8?B?M1hsQjVvMW9tWHFIVXFhOFFENlZuZlBQdWNWU2tUUFZxbEc0amRLRHA5dDBK?=
 =?utf-8?B?bGlLdm5wYlV2S2NuM3B3VnpVRytDVEIrVGV3VHRrZnRDYm1KV0N5VGNSTDV4?=
 =?utf-8?B?SzJhWks3N0p6V2tOMDRwVDB0N1VjM0dOS0Z4cEtNZ2lSSnlQQk9peEdsdnRF?=
 =?utf-8?B?VDZBcnpXVC85Z29jeXc3N2drblRGUHI1N2MzeUFYejFhT1B5cmdvNFNBaDYz?=
 =?utf-8?B?S2UzMnJmWTlZQjVEcnBQdjdtM25LZFFMTFdTSkdWMStBVm9JRUpoRmZXdURW?=
 =?utf-8?B?OHpoN3U2RTQ1bVNlUkRuQithZGs4VlprblF6Ni9VRTVwcmoxd0poTWJQb0JY?=
 =?utf-8?B?U1BmU2hSdG5IVkw4R1UwM2VHNFdBcGZJS2duTEloVS9JMWJ5ditlOUd5R3J0?=
 =?utf-8?B?SVh1a3l4eW5Zd294YzdUZmlaSWtFaWJLUTZ6VGVhSFNqOTJUbVU5VWpjMG9X?=
 =?utf-8?B?cGVVVUpmYkRwemVVNGJHakptQ0hNT3pOdnl2dFh5ZVMxby9WblhCM05aVVhz?=
 =?utf-8?B?RlVEZ1dnSDM4OG9Zd3NCQjFKNFNKaDFCQXFzZ0F5bFhuekNYVXdsNEV3TzFs?=
 =?utf-8?B?cmNRYWxLeXRxaHRWK3kxaXZlUWJNL1laMHhkT3BWYzFEQ0JhZkNzbWdhbjVG?=
 =?utf-8?B?ME01bGx4d2I4NzRscUtTdGt6TWhSRjUzVWNYVnFoeXlRb1UzZ25EcytXL3h4?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f95d7ca-e5a8-47d9-8e7a-08dbc36bacbb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5373.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 17:19:03.0931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9s3+wxlg2YYrMFpYxdLpd97Ld02k6fqH93N0XxE/clXsidFDaYy1+VaGrHqqfknUnmiOQc4D57qWu5vQ7UKk5Ak6m0UCyerTHFxImI1351A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915: nuke i915->gt0
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 02, 2023 at 04:04:51PM +0200, Andi Shyti wrote:
> Hi Jani,
> 
> adding a few folks in Cc for some extra eyes on this series.
> 
> On Mon, Oct 02, 2023 at 11:47:01AM +0300, Jani Nikula wrote:
> > Chopping up [1] to more digestable pieces. Start off with nuking
> > i915->gt0.
> > 
> > [1] https://patchwork.freedesktop.org/series/124418/
> > 
> > Jani Nikula (3):
> >   drm/i915/mocs: use to_gt() instead of direct &i915->gt
> >   drm/i915: allocate i915->gt0 dynamically
> >   drm/i915/gt: remove i915->gt0 in favour of i915->gt[0]
> > 
> >  drivers/gpu/drm/i915/gt/intel_gt.c               | 10 +++++++---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c             |  4 ++--
> >  drivers/gpu/drm/i915/i915_drv.h                  | 10 ++--------
> >  drivers/gpu/drm/i915/selftests/mock_gem_device.c |  1 -
> >  4 files changed, 11 insertions(+), 14 deletions(-)
> 
> Michal, Michal and Tomasz, can you please check here?
> 
> Thanks,
> Andi

Acked-by: Michał Winiarski <michal.winiarski@intel.com>

-Michał
