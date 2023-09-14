Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AD97A0416
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 14:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F9110E56E;
	Thu, 14 Sep 2023 12:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5859810E56F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 12:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694695251; x=1726231251;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZSkymDq9ECOAsahBNqxc7VfV+RthIBGJWIoScd2THGY=;
 b=VVKzovq3wse02kc5rUebOMsg+eBK1GxeCxSRXjzuGjlg+Vhy4g4nITOJ
 tAZ2P2R0aoUVY4Qn2e8SjsnvwRajYPlS7KHVh2kGw0uA5ngTNr79jjY2d
 BTBnZBjggY1MHZt8+tENpNy9HN2AcGdLRgnxedMu8rwNSbEfN/+Ofih/a
 OFhI7aZ6/ERslEYtISV0UtIllPwqYh4p31+QsAQpOfUOkCDA3dgw8N126
 Jzr/ZtYdvy7rb6R+da25UDo4g/wPyBF57gWobz9Pg/ritynSQh2CIQvWr
 EFozOyw3RmbP5XooTCwLkGCUkrlDmi2CuxT//f4OxDBcFgFpKzTa0QWww A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="442967642"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="442967642"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 05:40:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918233148"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="918233148"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 05:40:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 05:40:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 05:40:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 05:40:48 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 05:40:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NlvFMoPIhVtaIr+J9LnKvvX6rxLOC5Bd03IIyC4+XYlL7rxaIr70YRu13d4APcZkQ9Sg9I7m2RxDQ5IIqvOXZEw+TZmzNZcR5fIDXf9Zq8xZrnUTN/yi5F0JUh3VjKuYE+ggPr+VNB656uJWRj5wVZpkUjzyoI4NrEB/HETIaxnISm/E9u4B5q6KVO0IU5FfflZDHHycqKQce1CVeXyeyo35eT39glleoGkxt8LypS3NohrM+o67vWQrITEeH4TvWie96ZgxMIbJ/9gTAdEvyJ174Sk624Sd2a2cXfaKa52oqSB1ypvnfNhEEZ4DmnnxUT2S+Hl6reRhE83zlwt2/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z5N/H2cHC24mJg3c34KB99bEdC3WvUbiDFNyVgWUY5Q=;
 b=O+7v4QdPeN+BVk+pG+gPdg62r0mRDItIERfL90AgVw6jv7DUgRH9ox6iTbNxVpDqVSmB3MUIQac37WJCXcQUKQV0E7BUwmds7uofztM2TH4hF/mR0Y490PUxv1nK9qzraQkmSyJtyI5sjQwQ7T7fpYClXd/WWXsJm7CHfmtGmniPkDsTgLkWSHyZFsAfrtnOnKihvDZ3CW0Cou2ql7EsNlCFB1MEF1U4JofPgYnRAUZArDVt7PbQPQz4EnfyR8ouJNphXcZ2uXUIsthmY8FWPZSUxooV1j+LWhvx/IXbzfLViBqXuFYuCL85+geXNqzxeTeYGzsvLzHa3/qSknxOdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB6714.namprd11.prod.outlook.com (2603:10b6:303:20f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Thu, 14 Sep
 2023 12:40:44 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Thu, 14 Sep 2023
 12:40:44 +0000
Date: Thu, 14 Sep 2023 08:40:40 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQL/SBEn8sc4K7hf@intel.com>
References: <cover.1694684044.git.jani.nikula@intel.com>
 <a7d53a403822b43c7d78689a10480b47ccc0534d.1694684044.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a7d53a403822b43c7d78689a10480b47ccc0534d.1694684044.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0003.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB6714:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d4865ea-fc9b-479b-bc6f-08dbb51fd010
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GeMk3MJ+cGnkClFV71JAfgnXBPbXSzJSY5WHnoX/dwmgUWnG7NxWtJa+x8o7AJjGlJUBh0+WS7TlEubhkp1XkhvTNBjzPTOUs8oRAGsQVbTHc6V84EnthPKj+K77RDPhb1DEPnC9PSx6gvm6a3MAhBj6BtckFXp0V0eIl7+9MNngpEIMIcpg0WF2p4LqVzyu/xOL0K96wReptwhtI0zAAGT85xvO0E1bS/HZP/fiLp0IjYT+TmKy8VfW+yP2me2uh29lSdlSbLoBW7kC0lu8sEmtt+Ua7hY+aMSXdnFe4ElONcUEDxz76i6+kRt28zN4jUZf9FKEp5H/bNtV6vYNG1Ue/GNr7DjUuYPbLdBLuWAqye4hG0JHCnSWzAaG9sEf4jGZ/UThl2wj64awmFPuiUNzdkr14HqRNbMFfX9WLq5na6apBSELXh7Q47Z8xc6bYds0JDjMmHVXftlKZVpq3TludpDDNsxstUypMgr6mH+LfHjVTxohAiVtTPJkUgk91wMz9uDzgp047HIY33tw22ECeMPSpCJBr4XMzokWEGsWrTp0qfpusfOtNATQPNT3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(136003)(366004)(1800799009)(186009)(451199024)(6486002)(6666004)(6506007)(82960400001)(36756003)(86362001)(38100700002)(4326008)(478600001)(41300700001)(2616005)(83380400001)(66556008)(66946007)(6512007)(6862004)(6636002)(8936002)(316002)(8676002)(26005)(2906002)(66476007)(44832011)(5660300002)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J8CRFZnnW9T3+5B1/WSmXDhB7zCtI6gEMGjTR3NGuc1dQzPLrDd6ugibydjI?=
 =?us-ascii?Q?zX61TLfUVeeyTLShgEthQUAIPrpgj6LOPKFblQiuNk0U8rG8Ir15SjsfrTc1?=
 =?us-ascii?Q?dnS5iuwFftgTNuFZAdZemAMtaTfEg6zb/QG1vuWkmrUNmHUlrOb/Wt4nfnOG?=
 =?us-ascii?Q?zYwAIw7EZvxbVklQjUw4xwPDRsxTJ9LVthtkkgrUOQZwHSJ/qfZE9PzPZTut?=
 =?us-ascii?Q?LvT/jEye6lGaTPlkrr3oh+okHyde18fd/h4BC6dRRzwHjnAMfrk8g42a6m3k?=
 =?us-ascii?Q?V7382QulFEjdtjryUn3Iyg6x0jbwuwOh/USRAowB7h/4FKRTscoSzb/+IBQq?=
 =?us-ascii?Q?/8iq0OYKbTzKPfKag+N/X51yCNarh+DpxsicwCUrrgbRZ+9Tx/JYQqqTLRbV?=
 =?us-ascii?Q?rV4yi0/uZ1hBqKRBzjgpj/7qKJ2wxYaUUAgIe7DH/Xu85Ovax0jr+CojtHZT?=
 =?us-ascii?Q?nQLU6LnW93zZiksDmWmKTUeTvnhzzDkPMOdaEp0eZd/S+vQIh8+EmDthVxkS?=
 =?us-ascii?Q?7LuIqwAPlUgBFZZJQdHcUMo2UkvwSUYBBUpmb46zByq7rhAeMSBIgSPg14OU?=
 =?us-ascii?Q?KYApmTbCinRXcFHEzcFt/GoeiPeJHSvnNzHPXX0GX+HkFd+ivPxN0bzUhe/0?=
 =?us-ascii?Q?AKtIPD072SoKDPnSyTJX6T5OdBYRzHg4OEuSskxE8kFFbqmK0VfeoRcVMvUx?=
 =?us-ascii?Q?B8rs9rjYcIsP/z/DrynSeByUWGmw6OYPhX4d/to+9kpA4+HrJ22I+g82GerB?=
 =?us-ascii?Q?nk7M8nuUamJCq2kmf1fcdmJrwLaWRd9zEtrpW9XWyCEiSWxY07Hnqr9h8uUh?=
 =?us-ascii?Q?9hyLJUBchbCpb2aIALUmGlFweiBAo3YR4+mQNFtjc6n4HUUYOAI+44O2/UiK?=
 =?us-ascii?Q?Av5L0utKJEGvQWKveYLbQGWfEfYRATilHEtaYwDbE1TuEXrtQRYQm8HuMPTB?=
 =?us-ascii?Q?xCJ+kR4E+/9v7aXaohKdUjUlntKalUtSl1L2up80IgVqfKpk5460woChRyrS?=
 =?us-ascii?Q?UUM9oh4YDnaCZOOE4iQYiiISfXMURo3YpTi4HQeCMC2XDTmRx/CvgTT6pWx4?=
 =?us-ascii?Q?bTGniwXluwy4klbuCEI1tcoa1dFt1kVIyNy4ApPOpGVYkoiwemCuTEjh92yT?=
 =?us-ascii?Q?MvcVnDKxREEMiir4o9Uh5NKVuX09F4m5x8yLk8QdhWToHf5fry18DL6m0dXG?=
 =?us-ascii?Q?mnf5oceG+1JYAs5IkiAkLSTD7gZNctjJazqN7WH1BVV123FNBwFgMjyd5fTb?=
 =?us-ascii?Q?2nYr3mBRRReXFXsjnsrm6h0MgYtHn4ndFxkvczMTB1Oq+cn94yH63/fk389Y?=
 =?us-ascii?Q?/zu8bWXGTkAVRtgeUPW99HrVFCa4p2mlbzWXYu8g9fUyC1W126LhiPeCm+hp?=
 =?us-ascii?Q?Tz93oGNYBdXgwhBTM7QlrQz7q0KCc2np1Yjyb2ROQ9oB63o5wT++iNvctAAS?=
 =?us-ascii?Q?isNcPhxPloNfY/NO37MRhHEvmp12rYMG5DILzG15+XqsrHXXHxz2S6s5FCka?=
 =?us-ascii?Q?vx3H8sOXX5mSi/4TQ/on54YW40u4Yo/Vt/pBsD8EIdF4I5qeCH8idXjsvDfJ?=
 =?us-ascii?Q?iTtFZia91wIrVrKDNCsj4t2JMImoZ5AFYhrweFMR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d4865ea-fc9b-479b-bc6f-08dbb51fd010
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 12:40:44.5885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Qr1Bw4JfAi9H+6lc5QlsPZ8LH+Blalt+MxeuJySNjLpPp3N/s6Jqny6Fm1iCB/jk/tDQgvvmyvRQPxdG3ByJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6714
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/fbc: replace GEM_BUG_ON() to
 drm_WARN_ON()
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

On Thu, Sep 14, 2023 at 12:34:57PM +0300, Jani Nikula wrote:
> Avoid using GEM_BUG_ON() in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 817e5784660b..1cb9eec29640 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -333,12 +333,14 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 = fbc->i915;
>  
> -	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
> -					 i915_gem_stolen_node_offset(&fbc->compressed_fb),
> -					 U32_MAX));
> -	GEM_BUG_ON(range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
> -					 i915_gem_stolen_node_offset(&fbc->compressed_llb),
> -					 U32_MAX));
> +	drm_WARN_ON(&i915->drm,
> +		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
> +					  i915_gem_stolen_node_offset(&fbc->compressed_fb),
> +					  U32_MAX));
> +	drm_WARN_ON(&i915->drm,
> +		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
> +					  i915_gem_stolen_node_offset(&fbc->compressed_llb),
> +					  U32_MAX));
>  	intel_de_write(i915, FBC_CFB_BASE,
>  		       i915_gem_stolen_node_address(i915, &fbc->compressed_fb));
>  	intel_de_write(i915, FBC_LL_BASE,
> -- 
> 2.39.2
> 
