Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9288988788
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64AA110ECB3;
	Fri, 27 Sep 2024 14:49:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQtLt+zH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C503C10EC93;
 Fri, 27 Sep 2024 14:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727448588; x=1758984588;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=YhiP/7CgcsgOca1Ds9TlMXl53d6biiEEK9C77NyZEvk=;
 b=hQtLt+zHv68csfsjtdwxiG8kiXRdtkZLmCAw/tCOZCsD+K/84yA5wc0l
 SlD/rHk3G7SKgB5e6HbAqsbnRu7TNF0hi1+sXShq4f0PRtYNeVRfk166z
 cNPVWbtuIx7nccd0i2v6V2VJ044K0bKeQG11ukXuOnHfLxbObeplTir2I
 L/1JSLLQbmyLR2ccxOSBc1lNKDqdQc/s9AXMCRA5+fZmsdKxzuc3a7jWX
 sBkFOGk8M7enlLpwNXKdZEUsXiC6LjrPqa/zgHf3zu8VlVy9whbN9K3MJ
 Z6JwczWRUoxbATwdddk6pB6RtGW61/6NYLOzGSoNo1qcggcXfYiy6QS1C w==;
X-CSE-ConnectionGUID: bEP6mwK1Qju6kPaGK8E94w==
X-CSE-MsgGUID: bPooSAIgSwW3eX5BRISz/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="37977293"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="37977293"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:49:48 -0700
X-CSE-ConnectionGUID: 7TqzZAGPRvSra6OL7h9G8w==
X-CSE-MsgGUID: mpnSInGMQwGgXRT2UgRkTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="77386925"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 07:49:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 07:49:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 07:49:47 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 07:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QgJ8xRjsC+hcX9ZmTxMR8BdA/WBHN2RI7aMh6lcShrpT8alqJjmUFLuwbDIMxwN29IuLxUmVjH1hJkV+5gnH6gup++tipPeFMFsB6wjlaoOQw9H+oC7xe/Y1LNyPd/pCnA7V6FPe5S0aCsFd/OMgc8x01SM4aXAFyPN8x/A1tRIWPv94g8z0+zJiisvrlbet+vG6jDoMdcc5SkT2JH4+XiKuUdA0FZEnaust/vyGY2fJTp0g5neLMU5W5UajzDry2dwdaItzMtoXreTVv884IzXXXN192Lj/ilrNTJ9g+Qzl8aphaL8IwYsGgGpyeLiTlH4ZV97onk6JP9r1SRPb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJGtXRhhnj4J+qk4ZEn88hybPdmi94iW20M05t8lmLY=;
 b=KlonRLkQO+5HmjE9I2Hhg91vzXnRTQgcjV+T9iuFXWIRlUm+wg5J6puJmIGAJOUdpCLn7uOql2OS1uz/P13SHQq/zeXYsr0/2daQ/RNIGpb4mDiugqymWhR6ZvsewU9nVUAYE59Zlpnam+1kF3cTUr0/P2d/WQPzjyelWeCq7IJ/RiikaqEfWa4fwbTWJHfur5sOgKlVxofBeSOepmrGNgvLLZ15Zm7uS4V6dtrzx+L3tQrnM0DDSVFf6Q1IJs0qpzz8DKKoAUAKTDuoj/FFtdsh4eDSAND0BI7VNCmCVnENm2cRnkQ1st6MaIcPhq/KtooyyahtshB7UxXwAsqf4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2864.namprd11.prod.outlook.com (2603:10b6:805:63::26)
 by DS7PR11MB6176.namprd11.prod.outlook.com (2603:10b6:8:98::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.27; Fri, 27 Sep 2024 14:49:42 +0000
Received: from SN6PR11MB2864.namprd11.prod.outlook.com
 ([fe80::c58f:66d9:46c0:d83d]) by SN6PR11MB2864.namprd11.prod.outlook.com
 ([fe80::c58f:66d9:46c0:d83d%6]) with mapi id 15.20.7982.016; Fri, 27 Sep 2024
 14:49:42 +0000
Date: Fri, 27 Sep 2024 10:49:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <ZvbGARm3OSe38HUV@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <Zs-LdJYx_lVDt9PC@intel.com> <ZtCb5yc6KCy1S6bo@intel.com>
 <87wmj14c0q.fsf@intel.com>
 <m4uj2hvgkcuingb6rqqth7jc3qpa4g77xebi2wtyyt3a6hadqg@fufb76wcea6j>
 <87ldzh41hb.fsf@intel.com> <ZvV2ssfgHA8jvTro@intel.com>
 <87zfntxpew.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87zfntxpew.fsf@intel.com>
X-ClientProxiedBy: MW2PR2101CA0008.namprd21.prod.outlook.com
 (2603:10b6:302:1::21) To SN6PR11MB2864.namprd11.prod.outlook.com
 (2603:10b6:805:63::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2864:EE_|DS7PR11MB6176:EE_
X-MS-Office365-Filtering-Correlation-Id: 9877a3a1-5976-4ddc-a3ad-08dcdf039e7b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?qYAe3kOJyf+mcrDUzAd9/ktWdzhM95frb5dRPyh+U1Oh+k4mXwLWYNtZws?=
 =?iso-8859-1?Q?JFtV1kYMk3/sqt+iFr6XKsZRl2ue98rC8IpCZ+Vs15XY6u5Jyo8nB3Nb3g?=
 =?iso-8859-1?Q?3HWO4ropqXTsfX7vb3SwBjXQqDquKCylXOFas2hjBycEXD/6/jadBaZ5f2?=
 =?iso-8859-1?Q?1L5/R695d1+PX8i4V7//aWC99j7g9Qwj4TE13xHTl3Vh2OeodoEZX6hnTF?=
 =?iso-8859-1?Q?jvWBpH3g0GO/DVfKGpQ8q2IoGJBb1E4OBaYxv9l2/GEZ7336a8ElrggxQz?=
 =?iso-8859-1?Q?t9nshdmzxP8C4Dq8KUXa09LWFmUumxDCc3Qjb6DwIPNWuDdF13PSY50Lgs?=
 =?iso-8859-1?Q?zo2leeK4JKLGkwmq8XZxZh5WYZIhsbA/aHvQLl9Z8AYrg/PCgzodon0o70?=
 =?iso-8859-1?Q?QSIw4qPnNDaKzi4ThFBqCSE+Mkv9iW4ELvu7VZdOHEuKIXiqQjdhcy4IEf?=
 =?iso-8859-1?Q?aXCzsfPaL/6rLLypa5JDByxen6TR49IawVSl8EelJ+Bq7DXxF0dxV5bGS+?=
 =?iso-8859-1?Q?NXENvsnbSknXFwf0llqgpb3UVQ/V5gexSbh3zXvYRPep1cH1jBSCLjdQQu?=
 =?iso-8859-1?Q?ebd385GFRub8bwbR1X3CX4UQojVULGF88AZGBNJ98h4Zo4A3OZUmKqRiFJ?=
 =?iso-8859-1?Q?dtIZrekb3n8/sPeXqrhDd+EEypmHkbiP5EMzU4YipATgJQChjubCUQrDfd?=
 =?iso-8859-1?Q?QkiGxnxz2+HgYhTzkhH0zsbPgikwxkU7bvwlcGXpyW5siETTegkFqIHr25?=
 =?iso-8859-1?Q?4tX4EYBtqW4O68F55k4TSRnTNm8BNki4WoSM5DK3YGxObDPwULQKCSxCEr?=
 =?iso-8859-1?Q?K3N6tLybGX3MVDFmeVXSuSYl67cjy+piWU3zyTOsL7zH8xFmRRvI5jP+3C?=
 =?iso-8859-1?Q?PCUi5VjsD/uWjikzSrWV82CW9UraIVqho6g2zWvc+S7C4qF53upJ0hNa92?=
 =?iso-8859-1?Q?IoCJwcOwO66Et1Wz8cff8azdV9gxhaZQYszReg7sN/qs9BCVaNoigoChzZ?=
 =?iso-8859-1?Q?6Dh7NVW9RP3SUa9r9MgeuvP/14B5zfnNST2sqhqSM3Mb0v7MddaXsQt2B1?=
 =?iso-8859-1?Q?WTvH86ohZ3rvctS3+SAIqmpdC/x5yUD/+wOJHxzbmlMhqxKj4iNGGmOjKa?=
 =?iso-8859-1?Q?5c5wX5uBFnU7COEsaMjzmHFFWpWuKNczMCkyJE+aBNzMtIO8MkwDK3uWxH?=
 =?iso-8859-1?Q?Rd9fyLsjQUfpiIAyXQr9PKQmZVrLoQ2V6huwKOQRLopnTpiYCanmFD3DgJ?=
 =?iso-8859-1?Q?XZmYXCroSpjKWJG0Vwxfm6uNjJgw87NnM8OOvKpuMyRNd/kpwYE0WyDKkN?=
 =?iso-8859-1?Q?7aKD8NYiNtecpTJk5cRR0F5Qaw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?mcoMEEf/MQZKLfBxvpp9esOpqymIh3rg1tdEnqs9c01jVqWNluVk+KJhJw?=
 =?iso-8859-1?Q?rh1AF46cYd0yjrW4f4FWJs6/bxfm20Ybc8yo0raRglwvbgjOsM4GR6rkMC?=
 =?iso-8859-1?Q?WDRcMp+NJeFEjRUN90wjxpRn6E7DPbb1A0xaSt5mBb/Ntxt1C55qULAlNN?=
 =?iso-8859-1?Q?ERpFqm4kBwNHDOkQVJ2/sJvJdC+RPgLq6dboWoKe0gOp+SOPME6BCX1vV8?=
 =?iso-8859-1?Q?TTB17Fx2g6VKhqetE5ey7e7fvD7J9LnrxkDqBkPRmi5nCIaLvG4VoGG90z?=
 =?iso-8859-1?Q?hAZoxTjcKJ0ldP2C/uM9J26YSfib5KnQbapm9QexP90rgJKdUjggkPgBiK?=
 =?iso-8859-1?Q?ljL4OA/h6az8L8IBRcXvouUdiR0G4tqi/HvsuUHZ5GgwPyBPngzaV7tyZN?=
 =?iso-8859-1?Q?QOhr6DisYYrYFTulKL2w54hNYWdxJV9mnADBzDXeUkQ3JC8gMjGGu1BqTY?=
 =?iso-8859-1?Q?akREeaRKc+s/fK+GTHPeXsYbRe5HIIYXULlQxAI3a7m/wj99fSoFY1XpSh?=
 =?iso-8859-1?Q?/eA2tngrJyeqE9g1B7tVEoI80ODKWIwRjzOOqpiFEzcyhzSfTBNt+FJY2L?=
 =?iso-8859-1?Q?7laOX/VyOCIJX/x+OPszqIfZ6fjvP3HCkINQK+flQkPlAtzkdWTYe3PiW7?=
 =?iso-8859-1?Q?bb0/kcHUdJjBs1uI4R4CLmZzzCQb3fEtpgJo43UnLW+8j+m0CzuovH6799?=
 =?iso-8859-1?Q?UTtDp9MgPJzmw9gof3ZbL/EdaN/o9SEed5UK1HeGHlYWDiEdA9+ogbnivJ?=
 =?iso-8859-1?Q?dZEzua00iUxAT9b29n1QixLQ0tQAarYpwoSLy4hcfIWwg2sTzk0VKlioK0?=
 =?iso-8859-1?Q?4vpdLWkeH4A+J8R90BKwksP+2AZvwOPifJO3htdWQmiIYmuEmRVMqCAUe9?=
 =?iso-8859-1?Q?JDJIM7AS0ZHfUnc3zZGfoJ0zdzFNeo361WQ5L5JOy7TJjdDiBd0K06nIyp?=
 =?iso-8859-1?Q?LFLfwx3nCGLlO8yC1eiZ29h+3LJNqc+AJRJ+h6eZI9YSDU1Y8vHW4HJfsA?=
 =?iso-8859-1?Q?jIBtYOf6C+e+t5Lc6Fd18mKWZLaQenCFsLdLuW8/0XWi5QY+C+qYoyrcd3?=
 =?iso-8859-1?Q?Akc8/LDTn0lNV7JYLdgx5b+uPCL/GLauvAfv40vBtveAFctdfBWEhIvtG0?=
 =?iso-8859-1?Q?DMkp1vqO9Y9bHPTVVFFasATZyY+JWhdcnjYGuXvb2yvUdFSLnwKAJTknmw?=
 =?iso-8859-1?Q?KzenRtSgkGokSgcIEzh0OciNgNcg/pPPuVLJxx3jsDnAbBMBhitPNzVisr?=
 =?iso-8859-1?Q?yIVMMsurYi2VAPKkeOHXXixHS+g52hC31jYLF1VM0oaGMQZ0o1eUdQ0+/N?=
 =?iso-8859-1?Q?xiCTfSPNWCGXqnq6iUx2Ykt/N4idLvW4fwQzAh5Lv9KSL2M6ZLKvaNAuXH?=
 =?iso-8859-1?Q?6x0JrNUvtxJwapbzisnoTKEffPGWUN1x/mD/6r03R/6xssDK9FL7cG+YNb?=
 =?iso-8859-1?Q?cz7nFDwV9IYrWW419sxHiIE828dHMYmNvpVNBr9Fyx+mCn3IPQY/SVC7Kd?=
 =?iso-8859-1?Q?WeNstD0P4B06ct9JlyoS2LmtAQTaoj8neIpkOIvQKlBLPXRV/oJAqsPRiv?=
 =?iso-8859-1?Q?W9gPPhKDVyLfe1DF+0Yxb5TQYns8+dKWVrCkDh1zZNSKtcPLi2qRGJsbHF?=
 =?iso-8859-1?Q?qXlMp1Z0gp+VmMLbZy1hlj+4VICsZKQnFty9Y4ahuHSzKdyW5EcC15SA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9877a3a1-5976-4ddc-a3ad-08dcdf039e7b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 14:49:42.7202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vCeEPHvJdTOwT0oZ/NyKOMNSVOe4sijKRkpsmQ9qsEJr3buh9v3hc8hFmLLMffn3v4As4FvCAG/18qDXjItdbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6176
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

On Fri, Sep 27, 2024 at 03:16:23PM +0300, Jani Nikula wrote:
> On Thu, 26 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, Sep 24, 2024 at 04:37:04PM +0300, Jani Nikula wrote:
> >> On Tue, 24 Sep 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> >> > On Tue, Sep 24, 2024 at 12:49:25PM GMT, Jani Nikula wrote:
> >> >>On Thu, 29 Aug 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> >>> On Wed, Aug 28, 2024 at 04:41:24PM -0400, Rodrigo Vivi wrote:
> >> >>>> On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
> >> >>>> > v2 of [1]. Please read the cover letter there.
> >> >>>> >
> >> >>>> > This addresses review comments and adds a few more commits on top, in particular
> >> >>>> > the last one showcasing the approach.
> >> >>>> >
> >> >>>> > The main question remains, is this what we want?
> >> >>>>
> >> >>>> I don't know why, but the 'is' thing is still strange.
> >> >>>>
> >> >>>> I know I know... I'm bad with naming myself.
> >> >>>>
> >> >>>> I think about 'platform' but that get too big
> >> >>>>
> >> >>>> if (display->platform.BROADWELL)
> >> >>>>
> >> >>>> I think about 'gen' but then it is overloaded....
> >> >>>>
> >> >>>> then I think about 'ip' is worse...
> >> >>>>
> >> >>>> 'version'?
> >> >>>>
> >> >>>> 'name'?
> >> >>>>
> >> >>>> if (display->name.HASWELL)...
> >> >>>>
> >> >>>> ....
> >> >>>>
> >> >>>> But well, I like the overall simplification here in general.
> >> >>>> Without a better name to suggest, I guess let's just move ahead...
> >> >>>
> >> >>> One slight concern with the is.foo is whether it complicates finding
> >> >>> things with eg. cscope. But I suppose for platforms that doesn't matter
> >> >>> all that much. For the has_foo stuff it'd be much more relevant.
> >> >>
> >> >>It does make finding things harder with cscope and gnu global, but git
> >> >>grep for is.FOO is pretty accurate.
> >> >>
> >> >>> Anyways, can't think of anything particularly elegant myself either,
> >> >>> so go ahead I guess.
> >> >>
> >> >>So I haven't yet. I just still have that slightly uneasy feeling about
> >> >>whether this is a good thing or not. That doesn't usually make me shy
> >> >>away from things, because you can fix stuff later, but getting this
> >> >>wrong causes so much churn everywhere.
> >> >>
> >> >>The fact that it's not a macro makes it less flexible for future
> >> >>changes. The display->is.FOO is somewhat legible, but could be
> >> >>better. Would all lowercase make it better? I don't know.
> >> >>
> >> >>More alternatives? Not elegant for sure, but just alternatives:
> >> >>
> >> >>- Lowercase names:
> >> >>
> >> >>	if (display->is.rocketlake)
> >> >
> >> > what I really dislike is a struct named "is". Going full mesa-way would
> >> > be slightly better IMO:
> >> >
> >> > 	if (display->is_rockelake)
> >> >
> >> > or
> >> >
> >> > 	if (display->platform_rocketlake)
> >> >
> >> > or
> >> >
> >> > 	if (display->platform.rocketlake)
> >> 
> >> Fair enough.
> >> 
> >> >From implementation POV having a sub-struct is easier than not.
> >
> > how the subplatform would appear in this case?
> 
> For example, RPL-S:
> 
> 
> 	if (display->platform.alderlake_s_raptorlake_s)
> 
> But the main platform also matches its subplatforms:
> 
> 	if (display->platform.alderlake_s)
> 
> This is the same as with the patches at hand. Except for the
> uppercase/lowercase difference, and s/is/platform/.

Yeap, let's go with that then!

> 
> >> >>  Does not help with flexibility or cscope.
> >> >>
> >> >>- Lowercase macros for display, e.g. is_rocketlake().
> >> >>
> >> >>	if (is_rocketlake(display))
> >> >>
> >> >>- Macros based on just the platform name, e.g. ROCKETLAKE().
> >> >>
> >> >>	if (ROCKETLAKE(display))
> >> >>
> >> >>  or change IS_ to something else e.g. PLATFORM_ROCKETLAKE().
> >> >>
> >> >>	if (PLATFORM_ROCKETLAKE(display))
> >> >>
> >> >>  But that can get a bit long in some if ladders etc.
> >> >
> >> > Does it matter much? I think those would be the exception, particularly
> >> > because platform checks are kind of rare these days.
> >> 
> >> Well, they're maybe the exception for new platforms, but i915 display
> >> does have to deal with a lot of legacy with a lot of platform checks.
> >> 
> >> > grepping for LUNARLAKE in xe reveals only 2 users (+ few workarounds),
> >> > because wherever we can we check by graphics/display version rather than
> >> > platform.
> >> 
> >> i915 display has only one use of IS_LUNARLAKE(), but there are 1k+ other
> >> uses of IS_<PLATFORM>.
> >> 
> >> Incidentally, this is the reason I'm procrastinating about the change at
> >> all.
> >> 
> >> > Then simply using something similar to what we already have in xe, would
> >> > be great IMO:
> >> >
> >> > 	if (display->platform == PLATFORM_LUNARLAKE)
> >> >
> >> > it may be verbose, but shouldn't be much used to matter in the end.
> >> 
> >> The downside with that is that you can't deal with subplatforms as
> >> easily. It becomes
> >> 
> >> 	if (display->platform == PLATFORM_LUNARLAKE ||
> >> 	    (display->platform == PLATFORM_ALDERLAKE_P &&
> >> 	     display->subplatform == SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N))
> >> 
> >> or similar. Definitely not a fan.
> >
> > unless the subplatform already includes the platform?
> 
> Oh, yeah, it would.
> 
> > But well, I also don't have a good suggestion here.
> > The '.is' struct is strange indeed, but at least covers all the past
> > and future strange cases.
> >
> > But I also wouldn't mind if we decide to get the verbose path,
> > but try to at least making the subplatform already infering the
> > platform in a way that this case could only be:
> >
> >        if (display->platform == PLATFORM_LUNARLAKE ||
> >             display->subplatform == SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N)
> >
> >
> > or perhaps do in a way that we don't even need the subplatform struct?
> >
> >        if (display->platform == PLATFORM_LUNARLAKE ||
> >             display->platform == SUBPLATFORM_ALDERLAKE_P_ALDERLAKE_N)
> 
> How would that even be possible? display->platform can't be multiple
> things at the same time, unless it's a bitmask. If it's a bitmask, you
> need a way to nicely check for it instead of having it everywhere.
> 
> The alternatives are using a macro, or using bitfields - which is
> exactly what the patch at hand does. We've come full circle.

yeap, forget about this...

> 
> 
> BR,
> Jani.
> 
> 
> >
> >> 
> >> 
> >> BR,
> >> Jani.
> >> 
> >> 
> >> >
> >> > Lucas De Marchi
> >> >
> >> >>
> >> >>- Go through the trouble of making the existing IS_FOO() macros _Generic
> >> >>  and accept either i915 or display pointer. This does postpone making
> >> >>  any further changes, but fairly soon there will need to be two sets of
> >> >>  macros, separate for i915 and display, even though named the same.
> >> >>
> >> >>  Also, the _Generic thing would look up the platform definitions from
> >> >>  different places, which could be error prone.
> >> >>
> >> >>
> >> >>Yeah, procrastination...
> >> >>
> >> >>
> >> >>BR,
> >> >>Jani.
> >> >>
> >> >>
> >> >>
> >> >>
> >> >>-- 
> >> >>Jani Nikula, Intel
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
