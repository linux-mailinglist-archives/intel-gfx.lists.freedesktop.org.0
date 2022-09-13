Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D3D5B6C42
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 13:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E33D10E6B8;
	Tue, 13 Sep 2022 11:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA2210E6A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 11:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663067783; x=1694603783;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=gJBIDt7OM4+gb7cCmEnCEPhFlJIiXxYO+jdSCOqAUIo=;
 b=AA/ox3U9Ol103ZLTLoHRFNZmueCBmz/CDbHDsNECjrSV4ifQbUjA29C2
 iAY/PnJgvDrsDhrKSmmA934FN8FAxFzHrMu6gvY0XZdu9//6NS/mGN/gz
 33tGDJq5emr6GVxTLSpJf/zcW7t2q3wJqseOwJIDLBMfrhaHcwOu3Iwly
 6ctjmrgFqFgq4gUnxsVtbEMAGrBT9BIkqKncTgRi9QzHVNOGALx5FkHBA
 +i4mbqbQqv4pfCa6AjYrA+xIHvP0FPcL8X1N849WN7CMP3IDMAT4NPjcK
 8P3KiyoYDc85QwkGCe821w/Hh19Vh+caaK9CAJp+yyikfc51utI2N2LgR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298113184"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="298113184"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 04:16:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="791900330"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 13 Sep 2022 04:16:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 04:16:22 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 13 Sep 2022 04:16:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 13 Sep 2022 04:16:22 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 13 Sep 2022 04:16:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RflnS7CnebnTiqX1aRvH5S3N61YgG2jKjDRi27zPUv+RNS71xy36G992iFW9vCNCvE2SA+52sEfPnGXoPT4iLCP3g6KY1jQyOi+2MsIAj6PLhsK3AqFuWLEGcs6yipqMH3aA6FibKoCCk1JCNP87GFE1deJuXe1sfjQeuB+f0Le7f1Q1GuDRJ+KV+X72yl4NwnpNDOgVv/WIykoIZaXZBkmbu1wbteKFP3kHVIRwc0jQT9KvhsWsuWqpG2lM+1F+JyK96cAvwYbS0pgteW7+MB9qYsL+fFe6oTvZ4PRC74N0t8dpyBEn58Ph9pWxR8a9YzdesKnWcsFZ+OGLJp2l3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1BMl9t/vknoXz6gWEh8nVD4KZYo2rKixoByUM7UpYws=;
 b=Nvm7Ya3FUCSUMrJqQsYlGTCPtcHT16xUSWySI9LfEctz91VMaOCLrCQkwmj00auFj73JJx2j5N0cUBMOpulIznq5GM7OTzoEdiGEmCU2kv/JN3Mdq9cwhnP0738xyOGLnHd1vD4MXynbzRNeEBMxva3sDa7Kb7OJce1u0uRq984siZ8P6NhW+IO0M965u/tE73MA/ajrdA31cbSTu1EhbjnRT2tSM4QhBVOMmSariohdmTsIGhpw+pURQ/uGXYy4z288Lp2acXgRlkXwHfsASs2hYqLNi4ONguH3fJ2+C2+TWdSn01Jbq8R6JqH0z2aaulemhXXq2MuV6oB7acIpeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.18; Tue, 13 Sep
 2022 11:16:13 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d%5]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 11:16:13 +0000
Date: Tue, 13 Sep 2022 08:17:02 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20220913111702.unfmxysm26rgjxqe@gjsousa-mobl2>
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
 <20220908-if-ladder-v1-2-9949a713ca08@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220908-if-ladder-v1-2-9949a713ca08@intel.com>
X-ClientProxiedBy: BYAPR02CA0001.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::14) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW3PR11MB4554:EE_
X-MS-Office365-Filtering-Correlation-Id: 2604a041-a9c9-49fb-7672-08da95795e63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ogz+TYra6169YoWYfxqeExdVCbTpzLZS5d6DmxA/Sf22u2N/dHhwhgljVZSowLvVCw2MG++9CtKKwPOUOZ+FV7IlTRuDU9cFnhk5W4pFrB/4lI8ctAE7DRautANAhouWrUzxwFXYGYMKemKgZAkssQg0muf2vybPbqIrw5A5uB/c4JRoQNz2YxAxNyHSzOJ0XY8pqNf6bNkWh7tr804RtQSlH3fHIk0VhePicPx/y1nMQ9ryl6OegJ7gH2Xgo0Z+MZWaEMiY8ySEwH1SI4YBxoYkj6uZ6uQr6XAE+oEwQfzjVSHA4kGDFROXLTveKee8j9kEmOfCWLoqae2uZpHns7GUfBAYAYojqA4QIffeCMpTxvV0IcxVrbZce/m9pJD6HNyhP548V0mSTS52YMtXI70cCZFYo17jPh8Ztn22w2+B+Pkc0uRChd1jFzu6rQLZdxeUnDMOgAC5uBIGZbep/qYuMHhqthYdEcoHybMf+N23jVxu9vsAf4gPd3WdwK+yIarZbBVpA8pyR21XP80ZC/qj0X+/6zDB3Qpnv9w2gscbG/b4jYjuBmwA6plgf1JxNd3+0ViYA6BiVOJGKG3wUQ+gL4Pom7rq7AsdnxTa8PSCMYQtjBw5KTpczcxFPO910mb1W6FaOpkDC7rvNYNpe9AUqzlqt/bYn7MQiigsiVd+FSdm8ZqYGHzAhdb0Va0l7u+aHoC4i04oa/oM9andQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(366004)(376002)(39860400002)(136003)(396003)(451199015)(8676002)(66476007)(2906002)(86362001)(9686003)(41300700001)(316002)(1076003)(186003)(6486002)(6506007)(6512007)(82960400001)(26005)(5660300002)(66946007)(44832011)(8936002)(83380400001)(33716001)(478600001)(66556008)(6666004)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZS9zSGpweHJBQnlMbHJQc00yMDE4eTBUbDZEcnd2UllxZnJhTHl4Y094cXRy?=
 =?utf-8?B?L28vVEc2Vmc4bXhJZWVmbjBPSy9UMy82VEd3UGlKdmRVSVB3d3dQU1g5NUlT?=
 =?utf-8?B?RTR1c3Z3bnZOcWV6N0V3WHh4ZGdEOUNiQlJLazYxOURXNW05eU9QSTRoNkw5?=
 =?utf-8?B?NDVlRzZ3eUpNSW5iNWhnOGVHeDlsSWJDam43dnZMM3hWRFhVN0FwUmcweFZ0?=
 =?utf-8?B?YW9idnNyMTlZelZQMmJSYjg5YUhWQ1lsRXNIelZQREZacURLaHNLZDFhMUxI?=
 =?utf-8?B?U1dnMUpTTGdUc0dNcEM2K3JvVjl4RzNIRDNBTlprQUwzNEZUc2orK0ZMZWdl?=
 =?utf-8?B?NGp4ZWN5Z0poMlZwWHlaODBrc2t5UGJXWEw1VWtnZUl4VkJWN01YMU1CUkFo?=
 =?utf-8?B?VW9oT0xIb2l2TU1laDV4OG1XVWRFaWZoQnZiQjIwWkhDeC82QmpPVEI0UWdR?=
 =?utf-8?B?eEZvTnNlTUYrNVp6QWEycW5DeTAxYjh5UlJvRjZJYlFYVWlCS21NQi82SVBW?=
 =?utf-8?B?RlZ6a2F0ZGlrQmxhQzRyaUZHclNkeE41aExlenBrYllURjkvVk9CTHJLeFFU?=
 =?utf-8?B?ZWF6ckxDY2s1ZUV3NkNQUUFZcFo4VmJCOThRNnpVWWRna3VheWpYTU96cXJ3?=
 =?utf-8?B?UjZpeTc3OGxEMzM1bDZob2I3cmd4QzZWZFhYbmNmRit4L0FVdzhVWVplUFdG?=
 =?utf-8?B?WVdyR05SL2hGdWR5TzNWQXZxbzYrZTh3T29jYlA4ZnNQaFZ6blgrWW1pWkZx?=
 =?utf-8?B?NWROcHkwNENNQjk1dEtqbWtnLzRGSlNBTnUxcWVYQlJVREZCLzcyVFZITHJO?=
 =?utf-8?B?NW5RZmhUYitKRzAxWUo4aU8wOFpYelc4MElFRkoxTlNKQlJiTVQ0ckhxbUxw?=
 =?utf-8?B?Q1F5ZkxZNTVqajlFbWVqL0xXZDBCcVF5U2dPQmxLa2hTZTlKVlhkQlhjN3gv?=
 =?utf-8?B?RnFHSGJFdHV4TGlDRUQ0eVFrcEw5a2gxWkxlWTAzMGFZN1hSRlJNMkhsV09J?=
 =?utf-8?B?dW1HMUlZMDVMeElHNjhtaksreE1GL3FkRmRpaGVIY053UjZRUkRQS1BFQnRi?=
 =?utf-8?B?NWxIZDhKNlJoUGJKbmpBVUl1SkdvRWlTMWNqWWU4UWJzcXdQMnBaNG9YTFVC?=
 =?utf-8?B?Mm0xOHI1aklEOFNobTJRNVY4UjJUOTVUdUd6cmYvbmhXaWpZT2RjQzZmN1h1?=
 =?utf-8?B?Z3VINlErMmNneFlZNVVudEs2a1hMN2JtZndFblNRZWpudVdabEF0QmdPMUZr?=
 =?utf-8?B?WExVS2JEMDRTa2ZjTW9pSG1mVC9OdVVtU0tLWXBpMlRsdlpDZXpRTENsVW85?=
 =?utf-8?B?QWJNODMrK242aFluNkRER2RxcWZITFhZa3Q3alEzTkJnei9jWERvRlNqY3J2?=
 =?utf-8?B?c2tnQ0IvT1pFTnd1Wi8wekV4VFZLU1YwdElrM1NsdlNWWHNwMzdmQU9xSlNI?=
 =?utf-8?B?b2NzbzNGRDdRcWJtSEZUd25tUVh5a1BDdWV4Qkd5bzFqT0ROdm9Sd1JJWEhp?=
 =?utf-8?B?MmJLdThsaUVaK1hpSTI5cUk5TFZhMXZZSU54Z1JWcGo2TUtBRi9Mckhac3Ry?=
 =?utf-8?B?UmFNb1hEVHNmSTFMcDFVYmNkVlhHWjVUYmQ3WXdUeWhrNExPTFBnT3FlbzhK?=
 =?utf-8?B?c1JiSzdObUFoZzdTdlpScXlJMkZzQkhqV1dpcVJvVjhJNmVmbmRBck4vckI0?=
 =?utf-8?B?cmNKc3pWVHRBSUpTWEFSOHRiTmFXeUpmQk9OR3FYdGZmcGlFVEpubUZka0lO?=
 =?utf-8?B?MFBKZWVlLzByMW9XRXlleUVZUTZ2L1VrVExzdDJ1cWI3YS9PMFUydFVzbEJH?=
 =?utf-8?B?ajNTNE8xOWxpT2t3OGgvUElYRy9tc3NSNUhmOTBTSDNQb0lINHRDTGQzZWZ1?=
 =?utf-8?B?dGVWOU9JNEZ0ME5QWFpiR0JuczBtNmN4MkFSci9mcXFUWDVjdjhFL2pqQlA2?=
 =?utf-8?B?QVFjSlhmSytRR0ViU1Y3L2hDQkFKbmhVdjJYODAwNno1SFJQK0FNV2RaYjA0?=
 =?utf-8?B?Vnd3NGRGbGFIcnRja1IwZUswcVUxTVlOY0h0bzZGVGMybE4wOXdlY1VlUjBs?=
 =?utf-8?B?c3Fwdk1oZFZ0OGZOb0lKVlRPVFNwWVpvQXhKeTV3QmV4dHlHN29JQmxmT0cz?=
 =?utf-8?B?SngybVl0bTJ2bGI2ZFdXdFB0KzJzcWVnUUdFTnhIdC9keHhEakdrb1lSMGM2?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2604a041-a9c9-49fb-7672-08da95795e63
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 11:16:13.6941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U8kFoH8gKskjIq3yKxOlAwA40HknLI6+Ybo1LrkmSfqRoObM1MnQSjfS6B/i1Vhu+4Koxami3kFnjbp/gg+7HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4554
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 2/3] drm/i915/gt: Extract per-platform
 function for frequency read
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

Hi, Lucas.

On Thu, Sep 08, 2022 at 01:08:15PM -0700, Lucas De Marchi wrote:
> Instead of calling read_clock_frequency() to walk the if/else ladder
> per platform, move the ladder to intel_gt_init_clock_frequency() and
> use one function per branch.

I think the split of current code into separate functions looks good. However,
maybe the correct place to do that would be inside read_clock_frequency()
instead of intel_gt_init_clock_frequency(), since read_clock_frequency() is used
inside intel_gt_check_clock_frequency().

> 
> With the new logic, it's now clear the call to
> gen9_get_crystal_clock_freq() was just dead code, as gen9 is handled by
> another function and there is no version 10. Remove that function and
> the caller.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> index 93608c9349fd..ebddbf7542bc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> @@ -26,26 +26,6 @@ static u32 read_reference_ts_freq(struct intel_uncore *uncore)
>  	return base_freq + frac_freq;
>  }
>  
> -static u32 gen9_get_crystal_clock_freq(struct intel_uncore *uncore,
> -				       u32 rpm_config_reg)
> -{
> -	u32 f19_2_mhz = 19200000;
> -	u32 f24_mhz = 24000000;
> -	u32 crystal_clock =
> -		(rpm_config_reg & GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_MASK) >>
> -		GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT;
> -
> -	switch (crystal_clock) {
> -	case GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_19_2_MHZ:
> -		return f19_2_mhz;
> -	case GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_24_MHZ:
> -		return f24_mhz;
> -	default:
> -		MISSING_CASE(crystal_clock);
> -		return 0;
> -	}
> -}
> -
>  static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
>  					u32 rpm_config_reg)
>  {
> @@ -72,95 +52,101 @@ static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
>  	}
>  }
>  
> -static u32 read_clock_frequency(struct intel_uncore *uncore)
> +static u32 gen11_read_clock_frequency(struct intel_uncore *uncore)
>  {
> -	u32 f12_5_mhz = 12500000;
> -	u32 f19_2_mhz = 19200000;
> -	u32 f24_mhz = 24000000;
> +	u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
> +	u32 freq = 0;
>  
> -	if (GRAPHICS_VER(uncore->i915) >= 11) {
> -		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
> -		u32 freq = 0;
> +	/*
> +	 * Note that on gen11+, the clock frequency may be reconfigured.
> +	 * We do not, and we assume nobody else does.
> +	 *
> +	 * First figure out the reference frequency. There are 2 ways
> +	 * we can compute the frequency, either through the
> +	 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
> +	 * tells us which one we should use.
> +	 */
> +	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
> +		freq = read_reference_ts_freq(uncore);
> +	} else {
> +		u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
> +
> +		freq = gen11_get_crystal_clock_freq(uncore, c0);
>  
>  		/*
> -		 * First figure out the reference frequency. There are 2 ways
> -		 * we can compute the frequency, either through the
> -		 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
> -		 * tells us which one we should use.
> -		 */
> -		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
> -			freq = read_reference_ts_freq(uncore);
> -		} else {
> -			u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
> -
> -			if (GRAPHICS_VER(uncore->i915) >= 11)
> -				freq = gen11_get_crystal_clock_freq(uncore, c0);
> -			else
> -				freq = gen9_get_crystal_clock_freq(uncore, c0);
> -
> -			/*
> -			 * Now figure out how the command stream's timestamp
> -			 * register increments from this frequency (it might
> -			 * increment only every few clock cycle).
> -			 */
> -			freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
> -				      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
> -		}
> -
> -		return freq;
> -	} else if (GRAPHICS_VER(uncore->i915) >= 9) {
> -		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
> -		u32 freq = 0;
> -
> -		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
> -			freq = read_reference_ts_freq(uncore);
> -		} else {
> -			freq = IS_GEN9_LP(uncore->i915) ? f19_2_mhz : f24_mhz;
> -
> -			/*
> -			 * Now figure out how the command stream's timestamp
> -			 * register increments from this frequency (it might
> -			 * increment only every few clock cycle).
> -			 */
> -			freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
> -				      CTC_SHIFT_PARAMETER_SHIFT);
> -		}
> -
> -		return freq;
> -	} else if (GRAPHICS_VER(uncore->i915) >= 5) {
> -		/*
> -		 * PRMs say:
> -		 *
> -		 *     "The PCU TSC counts 10ns increments; this timestamp
> -		 *      reflects bits 38:3 of the TSC (i.e. 80ns granularity,
> -		 *      rolling over every 1.5 hours).
> +		 * Now figure out how the command stream's timestamp
> +		 * register increments from this frequency (it might
> +		 * increment only every few clock cycle).
>  		 */
> -		return f12_5_mhz;
> +		freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
> +			      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
> +	}
> +
> +	return freq;
> +}
> +
> +static u32 gen9_read_clock_frequency(struct intel_uncore *uncore)
> +{
> +	u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
> +	u32 freq = 0;
> +
> +	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
> +		freq = read_reference_ts_freq(uncore);
>  	} else {
> +		freq = IS_GEN9_LP(uncore->i915) ? 19200000 : 24000000;
> +
>  		/*
> -		 * PRMs say:
> -		 *
> -		 *     "The value in this register increments once every 16
> -		 *      hclks." (through the “Clocking Configuration”
> -		 *      (“CLKCFG”) MCHBAR register)
> +		 * Now figure out how the command stream's timestamp
> +		 * register increments from this frequency (it might
> +		 * increment only every few clock cycle).
>  		 */
> -		return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
> +		freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
> +			      CTC_SHIFT_PARAMETER_SHIFT);
>  	}
> +
> +	return freq;
>  }
>  
> -void intel_gt_init_clock_frequency(struct intel_gt *gt)
> +static u32 gen5_read_clock_frequency(struct intel_uncore *uncore)
>  {
>  	/*
> -	 * Note that on gen11+, the clock frequency may be reconfigured.
> -	 * We do not, and we assume nobody else does.
> +	 * PRMs say:
> +	 *
> +	 *     "The PCU TSC counts 10ns increments; this timestamp
> +	 *      reflects bits 38:3 of the TSC (i.e. 80ns granularity,
> +	 *      rolling over every 1.5 hours).
>  	 */
> -	gt->clock_frequency = read_clock_frequency(gt->uncore);
> -	if (gt->clock_frequency)
> -		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
> +	return 12500000;
> +}
> +
> +static u32 read_clock_frequency(struct intel_uncore *uncore)
> +{
> +	/*
> +	 * PRMs say:
> +	 *
> +	 *     "The value in this register increments once every 16
> +	 *      hclks." (through the “Clocking Configuration”
> +	 *      (“CLKCFG”) MCHBAR register)
> +	 */
> +	return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
> +}
> +
> +void intel_gt_init_clock_frequency(struct intel_gt *gt)
> +{
> +	if (GRAPHICS_VER(gt->i915) >= 11)
> +		gt->clock_frequency = gen11_read_clock_frequency(gt->uncore);
> +	else if (GRAPHICS_VER(gt->i915) >= 9)
> +		gt->clock_frequency = gen9_read_clock_frequency(gt->uncore);
> +	else if (GRAPHICS_VER(gt->i915) >= 5)
> +		gt->clock_frequency = gen5_read_clock_frequency(gt->uncore);
> +	else
> +		gt->clock_frequency = read_clock_frequency(gt->uncore);
>  
>  	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
>  	if (GRAPHICS_VER(gt->i915) == 11)
>  		gt->clock_period_ns = NSEC_PER_SEC / 13750000;
> +	else if (gt->clock_frequency)
> +		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
>  
>  	GT_TRACE(gt,
>  		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms\n",
> 
> -- 
> b4 0.10.0-dev-df873
