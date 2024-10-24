Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B569AEE31
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 19:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 664C710E97D;
	Thu, 24 Oct 2024 17:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VukFfJZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7005310E97D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 17:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729791261; x=1761327261;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=o7Mqf7vNWooNXgeUOQYkh83pIrhsfe/acjZ6jI8CO7s=;
 b=VukFfJZQlTg33k6rurTkHwa1wSeZSQMyw86thQP8KdUXWHN2ttw85Hxk
 YuNLNdecN8R8RZn4A9vBBExNiUYzcX42//hbqLguIThF/YTECmwVrdO0x
 yoWo1fxHvDxq6JHI7LGizhBM978WpHLSHJeN1u6Og9Hdso3jZ3FbZargv
 UvG1ptWUT5kvJaVIea4awr9ksPiAZsOOtNItDz9AFAu3ybOgpNOcu+CoE
 xMDf438H7m947ox6utjc33nXCbHXJzPfoOHgSmoolraCbZrhnS2GKsBzl
 87nqvX5hyW5TI71vuw6lObWBxb5tErkiA3dDSWs8/1gQHrDHcHUhqv46i Q==;
X-CSE-ConnectionGUID: qhiZ43tlQO6HhpAKg9qDFg==
X-CSE-MsgGUID: bKuDvGr5QhS5Qr8f4IrZkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="40811796"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="40811796"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 10:34:21 -0700
X-CSE-ConnectionGUID: w2EfoVR1Qt2cPqPJE1/VSQ==
X-CSE-MsgGUID: EFJ9inegQIOK8txBKWKPqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81495000"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 10:34:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 10:34:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 10:34:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 10:34:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U6PvoYxZqzdAymHR8kNIHYLM+gEhNJaK3z+3hJYzV4BAUDsoNuBLQ7W23DuHwiaH6RReu9rsDrd0xLNhbFylg3S3MJgvk2UqVxHXY9r9CGul9ESQGGx6qvmg1O9hO7+WSzUKLO7spvOIWKP6pDK7Tlqmc8s4JAjwAkbFqukMN98ZSHJWVACmuC/X7723uKLZrqXZHGhL/ejqNI0e8pW6E1IssalYB3Erc/Qzu/QBBKanv1K40nTnRqjf/CdPrSzW3G2Zg/2VN/gW7DQdgK4KNHl3ElHCJ64qaoUTvB/px6wb33aQy+/d7NOY9X2ahWO8yq06HybHpFDtbmBnb+DEXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nyY3ybolWDWzI7O4PBTu0UanVnUpsOayaEWkfLSH4IE=;
 b=EHhsM/+0r6YH1O2RHUGuqzGqVOBWQuz8edh5Zl0nG7k9OgM98L88XpFRuNZ4gsyWaSUxmKxnU+/tYwhz3jYh8rX5+ZkXvQiusm0wh2m4D7vCiSNamVxEOc539Fy0Oe62TgWmFe70iO/PeCAwQeH3DaSeSDGB8Q9y0M8sCfPp6q5yzq7+vOJQ2qYHn13qWLetsYE+9Yk/FEYyTFe02+PM542wV00B4H95KplKneq/EvZBBBMFRV0wMCCXQwmvBLm2f81tcgYD2bHsyiAV59qh+xCnnVsuA0i+OE9GTYsYrpkJ5Vi/yxNdjGAnkLUGde0rfI/mZ2Ca3dYV9NoEJVh0Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH0PR11MB8143.namprd11.prod.outlook.com (2603:10b6:610:193::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Thu, 24 Oct
 2024 17:34:18 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 17:34:18 +0000
Date: Thu, 24 Oct 2024 13:34:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
CC: "Nilawar, Badal" <badal.nilawar@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
Message-ID: <ZxqFFflwleAwP-ly@intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
 <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com>
 <ZxkMo6BVeb7xvhs2@intel.com>
 <3416b828-2040-4deb-8df7-e5a0e7db51b4@intel.com>
 <1f218b09-8385-4bc2-9296-28f7ec4ed2e8@intel.com>
 <CY5PR11MB6211F54A4FF6B214B71CC52E954E2@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6211F54A4FF6B214B71CC52E954E2@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW2PR16CA0048.namprd16.prod.outlook.com
 (2603:10b6:907:1::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH0PR11MB8143:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dc99e0c-d462-4199-42f9-08dcf45215dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8cJemp+PtDiNhcqI9vZTf2Zbx1xHxXl4Q5eKGM2LsKFyc2AsnswTCfMaUrX3?=
 =?us-ascii?Q?FnfkKjlxMwqI2D9UmfJn8ciUCQY7a937XQ6oHxxXpsng3rnqjZM2+wZCPMBP?=
 =?us-ascii?Q?Bj0N6Hz+zdp4p2WA8+wv3h+FV+GkqrRhVZEAjKa45Qc03zR6edIjieQJe1CO?=
 =?us-ascii?Q?L38mgBjPz4OsCCOg0rAQ92tck30A/z9w04QOrs70PTeCrOnqSryuwmz+uDLY?=
 =?us-ascii?Q?jOblQQ0Egh+VH058LW6uA9eiVWKy/3CRyLgMMsZiHDsHtihpnKF5sk2aFXxB?=
 =?us-ascii?Q?kZz1Z2N+lGZLn6PVVhhyRAgAinr0r5l8s9QbEUEbxowVnV9sjYEXtfFEUbjK?=
 =?us-ascii?Q?kXP9CR7AofSOcZMIUzyjIHmrkbQ54D3itu/mmswBO4Ll0+KQFKKh+S3Awc69?=
 =?us-ascii?Q?+jkVC23sU7GmYYnOrVvPobTcbg3uLIqoOQFh53S8qScbPPNuWL0FgjL+jnnd?=
 =?us-ascii?Q?QOQmmaAJPELHVHG9zLJgvRwHTiwE8yseiGwl26BLsSpn7pdgd2IL5bmF/fq4?=
 =?us-ascii?Q?RoxWlo2Cwxf7MD4dhFcldF2xxi7WnGrebxvsp9hMZazPg4DZU/Pklgl9mOOA?=
 =?us-ascii?Q?O1ggsilDkUU+5ZVYBoXUZC44hwvyZVvzdRL+pg40spGmyKctDsf1WzQns8GK?=
 =?us-ascii?Q?9IWCvOY5NS3TM2LypCQynrPtrfdzzC+yy4mL/JPNGSrjbJBV5fsw0CSr52ri?=
 =?us-ascii?Q?kBjc0GKUk/QuYSwvlYVKV+ZfQsibQGP1sM/ot9LCYyOURsvFVa475Bkv+ULu?=
 =?us-ascii?Q?pDO4A/k+7+qAkboKtad9rqcGzzPb4HJAzK5TwJ53Pfsq8EmOb7I8B2t1WApO?=
 =?us-ascii?Q?Ngscv5ikPqQe9o0P14g0gF7U+pwWSEvhoZvz0FMDZc6F6XKxqw9xoDhnuCZp?=
 =?us-ascii?Q?7w1zenvRtz8sSsnAmqsfHjdXjWUaxAhUSq3ZdyRf+/yCqi1jnVPryXyDRo9a?=
 =?us-ascii?Q?RHoS9kVWgeAJR16Drg9IbKkHo6mTYIELxuAIm5KXemfE2cRrLwTQ1rY80NlR?=
 =?us-ascii?Q?HGwm+tLblsYpiQJF3FZ81HpdMg/35s4RaFsgYNpzgyNEplbaDlTKXYUcL29x?=
 =?us-ascii?Q?qiUukMvhaCrQX2y+Uimn1pGS1qqjyEyejp0lXmN/hl3DFiuO2o9X14ZtIzwJ?=
 =?us-ascii?Q?Se8zpr/YHsC8tZal1q3MgRdUBp/MLAV0oddtLT51ORuPMFDtYFXgDAe8Ulln?=
 =?us-ascii?Q?6O0aMjq8KEZ4mezg2BkkfhB27mi29OHzyMdSWP42bD/dFc/Y+sIFYRCy/H6A?=
 =?us-ascii?Q?XshAK9TBrR9ojWonw7m4JnzGS/qe1TMCRs/DpRNvMDtAVQV2KC0R8w8YPywJ?=
 =?us-ascii?Q?sqOKzmY1Fk7oDRRgpVU2bjtS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bmg6X1Xbn6MBOvqRTOuwgXGtWYeKm0pYoajeCBiiYn7udim7OFzjSJfCeNR9?=
 =?us-ascii?Q?ZSFUEuZNhXTVBeOXdJZYWw9eVLFwfKThKmQtKzGHni5DmpyVMZr4+1kk/4KC?=
 =?us-ascii?Q?hFPFd6amjqt1q19okHaFFqeC0uzUl/3tfTE1TTX7WdnTaXYWB4/oKxnjucmI?=
 =?us-ascii?Q?kFpcq4DJW/w4VmuZgmeqmN+Pys1ZYA1+00CSLLCSQjpWTEed8h9ShdE3DLCJ?=
 =?us-ascii?Q?XiQjJCSGccMwW4VrlmvvuCh85y7c/uirjwcclWFyKpN1Oj27NRg2l3RMoAcE?=
 =?us-ascii?Q?rAHTfqUH9h+FxuFE+/ZcvsnYWNNX576um25fMaI61tcMrIXmelY86jR+qrn6?=
 =?us-ascii?Q?detPjHoEBIpB/Vl2t62vcZgNNSg7xL+MdpB/3kXM8RL+H5MBsKvJTLTm8NhO?=
 =?us-ascii?Q?MNGYOED4A/h0vR4NqFsO27L3MaFQPCI/I9DKmIoPE1Yw1+5kl8T/YWmyWTAm?=
 =?us-ascii?Q?48iQ1dHWgTf/MtODIxrJ7T384t1WAbB2J7QVBRfiEnhF4j1uNI+mAVOOYC6Z?=
 =?us-ascii?Q?h9nDm0Aeji7yP/dzYSuWFq9L5foehQFVtqDiMJlnYtmrJU2M+A5rppM0qEPG?=
 =?us-ascii?Q?abtMm1/5NXWzw6X2bBCd2a95VD+A9mk3F/P77+u0OKwA07qC3lsj271rtocO?=
 =?us-ascii?Q?EL1zwXseRB92MuJVjreVCUw2+vbO9OnAd3vYUqAqqeP6Fh7P4OdIB2cf1Y9K?=
 =?us-ascii?Q?mqC/oksNMiR5oXuS/8a3Nv4DADBwMkxXO/i6rSaAf2Znu83xQl/aCDjBNWCX?=
 =?us-ascii?Q?AOAMb84BlRW1PnzCLJDF09UDHchj+yjPZfzV+BRZbzMFsP3h1dLLDWbauOHt?=
 =?us-ascii?Q?aKCZqewDNEh3UKZx6xm6e8Lo9Ua/Q93EYVB2vFkp9S2xv+FIZJ54kPyCcdVX?=
 =?us-ascii?Q?wJfwWrNrK3jVcpwgES1OcIJE7k5pXH/JOZD0a03M4pX/Xsfu2zn9j70KG2XG?=
 =?us-ascii?Q?rSPGpWYDHc+sswbKnfZ5xySBWj2I1RW9UduaUN/WJNHzBqX4NF8wVZ3GF81x?=
 =?us-ascii?Q?rGhz0q/WmWkosYja/5O+pvICZiuwyYiEPipsCaBGdVibpzbrC1K5uGyB6PCP?=
 =?us-ascii?Q?75V2M9X8T7mspwcaxgKTbJrVNcpKkWtgpWYtptbSwLajSIOQ/iZeFKl0TwWb?=
 =?us-ascii?Q?ii06vfvFStDGhEK9rnJnKqAGq7HLvdKHINH9rBoD0OI8pgWevcDQp5UhwBcJ?=
 =?us-ascii?Q?Ou7dEU8ohXREX0noqh/296FQI6y33+AqLsF3VGj6gvs9RquxwlA/b5/U1W6d?=
 =?us-ascii?Q?qVWcxzkjQzY68TGZ+sjEiJ8s5CjN1sMqdibVKsdaKrcC5YXOhgHqHIufsXHe?=
 =?us-ascii?Q?htXdEh11JcVlaTK6+49hSKNUS+o3gy8E/tcy/gvkgb+IBh5ybxpqmUKkWF5c?=
 =?us-ascii?Q?idZs7E/Z64UQ0MLjK5l00YT5Gl36KP/J266w0VntYTQZvx5er19CfwqfhAWt?=
 =?us-ascii?Q?FOUuP/Y/cQcQ+mEnpwEofiJo9jUixNrh+nGbvpWhlNgz79z7K5zneqp8M598?=
 =?us-ascii?Q?jKQmE8sAGh3NpzFAMtGCP4a7h+GII+W0H8j04+JQwYCAdMyfyCNvvYjTPD2F?=
 =?us-ascii?Q?+QmmMdf6dUkudP3sHiC5xBDSUZlMoKJe05jMgGywhzKUfZtSbp4SABSiBuz8?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc99e0c-d462-4199-42f9-08dcf45215dc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 17:34:18.0204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h944DzSRPyYerDWKGnKH44UWwAlyD4Oq/Vw7ebFk5Efr/w2UBvcJTFl5Sie+QKiuTZ82fZ8Lnuzj9mRfHO2jYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8143
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

On Thu, Oct 24, 2024 at 10:28:38AM -0400, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Nilawar, Badal <badal.nilawar@intel.com>
> > Sent: Wednesday, October 23, 2024 9:42 PM
> > To: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>; intel-gfx@lists.freedesktop.org;
> > Gupta, Anshuman <anshuman.gupta@intel.com>;
> > chris.p.wilson@linux.intel.com
> > Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
> > 
> > 
> > 
> > On 23-10-2024 21:31, Nilawar, Badal wrote:
> > >
> > >
> > > On 23-10-2024 20:18, Rodrigo Vivi wrote:
> > >> On Wed, Oct 23, 2024 at 11:03:57AM +0530, Nilawar, Badal wrote:
> > >>>
> > >>>
> > >>> On 22-10-2024 22:39, Rodrigo Vivi wrote:
> > >>>> On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
> > >>>>> Hi Badal,
> > >>>>>
> > >>>>> On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
> > >>>>>> Encountering forcewake errors related to render power gating;
> > >>>>>
> > >>>>> Can you please expand your explanation here?
> > >>>>
> > >>>> yeap. More explanation please. All platforms? really?
> > >>>
> > >>> We are seeing Render forcewake timeouts on ADLP, ADLM, ADLN, TWL,
> > >>> DG1, rpl.
> > >>
> > >> Is this a regression? or a new issue?
> > >
> > > This is old issue, first reported year back.
> > >
> > >>
> > >> Is this happening with Xe on these platforms? or i915 only?
> > >
> > > i915 only. This is not reported on Xe kmd.
> > >
> > >>
> > >>> Issue disappears after disabling RPG. Instead of fully disabling RPG
> > >>> I am disabling it during active submissions i.e. during unpark.
> > >>> For MTL and ARL RPG is already disabled permanently.
> IMO this patch should be extended for MTL and ARL as well.
> Don't disable the RPG completely, only disable it during workload submission.
> That should save power on both MTL and ARL platforms, and right thing to do.
> And patch should add the Fixes tag accordingly to the commit which disables the RPG on MTL.
> @Vivi, Rodrigo what is your opinion on above ? it seems both MTL and ADL issues are same signature.
> MTL issue got disappear as RPG is disabled globally but that will burn power.
> If window does not have this issue then it is always difficult to get proper SV support.  
> But OS like window may not catch these kind of issues as they don't reload the their graphics driver like
> Linux reload module multiple times during selftest execution. Even chrome-os does not do that.
> Not a real world use case.

So we should change the tests without impacting the real world use case.

Let's try to grab the forcewake_all when using these self-tests, except the rc6 one.

> Thanks,
> Anshuman.
> > >>
> > >> uhm. Interesting. Why that is disabled on these platforms?
> > >
> > >  From commit log its temporary wa to avoid fw timeouts.
> > >
> > > perhaps we should be
> > >> doing the same for all GuC enabled platforms?
> > >
> > > I think so as temporary Wa.
> > 
> > Correction, DG1 we are not seeing this. I think we can go with platform check.
> > 
> > Regards,
> > Badal
> 
