Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8B4679F67
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 18:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9695A10E0A9;
	Tue, 24 Jan 2023 17:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05DC10E097
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674579685; x=1706115685;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wT94fqMB9S2W+0lQD9akR/Gd443HJxSgNHtLofRnrcc=;
 b=MexcQVYXcqmTn3+0tKUl9ew8DjZudweYFK/RX1WO/G84/usxHCPnI9do
 DbkJGphWqDmWKVG7xpYskT99jhZc+xynfSygkOJxq7VfYU9nfkun9g6jN
 voTFEXDriHVJBvkFWMAAS1+4xK1MYitxGXjsbzAd9AclPP6LQsBCLhHfe
 XUomRP0XbQ1IMa1WwyO+41CAbVTORAqhEROCpznFUrsoiynJaCaavPEul
 xFNOntyPtFEOuGpg5IZerRuba5qg4lsHEbBCjUJ8nVEqqj/4g7SvRReCs
 lGk8Gfhep6sjrbHY2EKGBqHfd6GmkROm+UWzVBUgsnwH4R/pLQcXniXB8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="388688878"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="388688878"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 09:01:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="692654390"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="692654390"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 24 Jan 2023 09:01:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 09:01:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 09:01:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 09:01:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 09:01:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fAGnMsbtSTWA4peU7QiuRotT8+4LAUqTc9OBn8WFW6ucmRBCpQuCVwE1CZcfrhS1CCT1DxgULWbOKtYZuAq+iPM2eYYQxf9IonHJOPCykCdbp13J6GuUbnXMpd0MUV0RJaTi7DQJgmbWtTUtZq+Iwm9ynpJdNNnb+He+FUJ7kbVGWnArZtbcMKuXl2K/MTV3nMj0Y8ZZjIlNJsofv3D/M0N01XmVPZIrgfsRdBNjHVj/sPxjl617AL6MMr1pc2EXZ578DP4al9JV7AC3hrhAKYzc/7fB1WBcPFMbZACmXa5e3/9NIxfLwLEd3JS5w+6O6r921W+Rq40KTZ4Hz3XH8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6KXwzfRLhfq1u1XD3DVQEI+4MbUgmVaGKfYsGnn4Pc0=;
 b=kQ6/RJfuo4Ezars1/rAoXUUSlZ7XkkKIaInnVn3HMYQq8EbHcji6HxAP89TuoXEMaT1MIqMex04b4CpgYqY8wSMeQFZn5WvfrG2KiBUfPd0TZ/XLTYxXaQraz8NPXdLrAl3tAza8NrK6Vww2DLaS2xxyWxV9Urreu6Tc5BzseVy78VeijgkPJOE+8QDeVjQtWpboU3pxCBmFYTKfdQjfo5hqw6sfSKroDLUdvNDOdoUFb3Urd7/7rOmYcPUBzesHWbLJ3c0xuyyJlzYu+ttiqLDUTQGorHkfgN9W3q8hkMuaHJUwLEpGlmeK86agRkl+6a6KqivHSKyr63W8YXItxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB5200.namprd11.prod.outlook.com (2603:10b6:a03:2df::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Tue, 24 Jan 2023 17:01:16 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 17:01:16 +0000
Date: Tue, 24 Jan 2023 09:01:13 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y9AO2blTxfzNiT9H@mdroper-desk1.amr.corp.intel.com>
References: <20230124142212.18498-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230124142212.18498-1-nirmoy.das@intel.com>
X-ClientProxiedBy: BY5PR20CA0021.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB5200:EE_
X-MS-Office365-Filtering-Correlation-Id: c70ef2a5-4640-41f0-fb67-08dafe2c9b12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C4KN5ZWOPt7vniv5XQkHt5VNuD7YZAY5bYw9dBX2v5/knUhk4QgzJJiuQW3/qgqjYj8/WkZMNsNxYjhO2QeyClseu8ZSTdwCQNhGwnnGIG3Gavc8XdEn+4FmArSqSFayP/NGG7Eh0qqx1tN7XiRo27fszZX1VuSd7bYnfgPrTbHapJRHUtPRcxEPmUsNOuZBAebz72REXgV955IyXLS2S1u/ICvRjvwSDod8a0vK+E4++0XRs489Qr24/tzy9gQhDVFo9K+4HRFejCq8Bf2ZuQpQPCwIGQTMxLoVwl+2USSBOt6kAcwTtrB7bcQtbHi4TWTUHsxF9Mv65Dmx9KB6hH5+WdRqVwDYAX3IhdsDpTAvGebGmvY0rKsiXq1gl5DU2idF+h0mMVe62G/BHHuARmqL7bRbNyjTNJsMr9BNk1NLVfsINkbzRyAM7h7wufp/D1ZLH/EzUDUMw92YapO+ovrrZxNSjgxIPJa3+enbqADU26v4z5S1N2ZH0wgpx8HLwoAuZKjkg10DxRKA9rbv/REMJ6l9ZH56czr0IiUAwwZrKAf+ZBbTrqieqronTLW7xjr2F/4QKRP2I6fFyw9flwfq4NIsFJMoRDcigmGQg/BjT/sq/Doh7mgJvo8y0YUDSCxfqApGkt3YFPEqaMHHNQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(396003)(39860400002)(366004)(346002)(451199015)(83380400001)(86362001)(38100700002)(2906002)(82960400001)(41300700001)(5660300002)(8936002)(4326008)(6862004)(6506007)(107886003)(6666004)(6512007)(8676002)(66946007)(186003)(6636002)(316002)(66556008)(478600001)(6486002)(66476007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4JfmcpMSIC6FQDl13cv7zbBPoQTi7GeEk+ldOQS+A81gjC/3JKz6TTDDztyR?=
 =?us-ascii?Q?7y80PTj5R8QMu9KjUJpxuX68AdUbBWh079VCVbzrrmvGDO9hW/cCwzxpx5uo?=
 =?us-ascii?Q?wzcZvg4ueuGVHhLF2DvZ20WPWWe3uJkdCcV3bK/TWQx81YnqyEzWOlziSW7K?=
 =?us-ascii?Q?4E8W5Hts1NTCL6/FMEJHaj1LXu0zKu7G4OBegljvMj3LnyQVvuI6KXA9A1OD?=
 =?us-ascii?Q?g21WpTbXvq3njEwechwTvoWBxgjng5CvEdieTVFHcTEd7ZgL20WHq5dO0WWC?=
 =?us-ascii?Q?UfHrpx/MBvLXIlMeYWqdUTWildYLbaOJhWdOFLji/O31Fpgn/QDNi8feCn8W?=
 =?us-ascii?Q?oWRBWKpOeq/TPQ+LDc1XJhc/8CVLcq4CvF0iDdGIf6tux3cGQBOzPLkxLnR5?=
 =?us-ascii?Q?GmwU5/0BanyIvY/9ilO3G06SiCFNTvH6bWsDwVirRAmIAA9+tqqDRoL0Qw9t?=
 =?us-ascii?Q?TqYALRByQiCYPgKYQC+89W5udGXReLJri+6dLSTeNHt8VwqUGKtQ6ruhf/DR?=
 =?us-ascii?Q?1xPwislH0b3iPNoeIPe5mRvWYWBVAZHqDpFBytXPEzWO26UnyDxTMvz4H8nL?=
 =?us-ascii?Q?agpIdvHBk6Ry88K5bRWsQE0LvbW6l0/MdaOum+iBl4rygN6DCknpaA83OrHV?=
 =?us-ascii?Q?jwNQ14p96Ut50oQV5nYdZLrOb9yH6/6SIH4MoGr/PQfU06RJ5WmlcWgPBm5F?=
 =?us-ascii?Q?vMSZIlMqas3XGBVWIb8lrkrRALnMT3vqMaEt9o9p6NNNeb8q9D8HpCs2xJfx?=
 =?us-ascii?Q?nBjD34ZEVABoUkXHW9KL6F4KWV0XuU2+RaM7baOnkqM+mu1f2eGkQCigM6C9?=
 =?us-ascii?Q?8GSRwJ0ebneeMK/vhdzrOyz04+qtB1+5ynHg1YLdKFU2lpw3q1dt2eBUiwYi?=
 =?us-ascii?Q?RBFVYLgozundwIZ1b/KT2mYFXZvbn9brKYo+ESlc5dFkXxRwK3GFSEzzKXo0?=
 =?us-ascii?Q?0VWN8AZGDAP4XkWmIipUR04JZyZ3PA/FCspkj8cGiNupWr3tL4xuSZWrjufx?=
 =?us-ascii?Q?JWG8+n3563H1ibUDgtBavfrDRoZ8qjg8JO7Nym+PMBcXn7yDriToPR6PnOw0?=
 =?us-ascii?Q?hlw1pu4nsVXMN3x6cU6vhafPhps/cVP80kifG54py+Z2ZWmLTuqEHc0PD4is?=
 =?us-ascii?Q?5OtA7jEqpMMuKMlmVFjohbN0OJmW4h6L7pookWCsq0Q2wturLi57JPF3rWwY?=
 =?us-ascii?Q?vPuk1A8JhIt3ufrHfmBYWhEmh8IogdxHwr/a48hxVBAj0yOebWAo3ytuCJ0c?=
 =?us-ascii?Q?T5ui1FOAPO/83TBuQiW4PLQZdqraK/v/k2JBcHOrjK/vl8fBTixFHN+Qic9v?=
 =?us-ascii?Q?0+K+gIcIujM9Qm/w+Q+gbzCSVxkBzdj+vhYc1glu/f3+Im+KH35ydVde38Ds?=
 =?us-ascii?Q?E8zFWEAOfq70QrqBd/pZuSpCHhuakkbidD3kQ5E7SeR5KQdnpgSdywdNB2VV?=
 =?us-ascii?Q?/jw6mx22dB5zIHJZriw9gT6JoWMiZ5CX7wXSpMhStvoegshJeQt3WxZ2HGZS?=
 =?us-ascii?Q?2iu0iLsu5hJVGST4bau7/tKSXPebRXjI3qp34j8/9C7VN6u8dlVOHhXSAuls?=
 =?us-ascii?Q?D8aVq200aDODIep5m6h/XKfV3qgoc2gaGsN4RU9E+ok137hdCmP+dYD1nXfb?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c70ef2a5-4640-41f0-fb67-08dafe2c9b12
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 17:01:16.2731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hDzRgS8ReZCtXtyD0iLqFaWJ4esJiAGAtb5vGAFyH6tOp00qN5PF5Nx69wFTfFLnOltZEjoysxyvS46czvZoNd0wrNaQJMA+RXxsGC2v4Fs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5200
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xehpsdv/selftests: Flush all tiles
 on test exit
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 24, 2023 at 03:22:12PM +0100, Nirmoy Das wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> We want to idle all tiles when exiting selftests.

This test doesn't sound like it's specific to "xehpsdv."  Was the patch
title supposed to be "xehp" (the architecture, not the platform)?  For
that matter, we haven't even enabled multiple tiles on xehpsdv/pvc yet,
so MTL is actually the only platform with multiple GTs at the moment.


Matt

> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  .../gpu/drm/i915/selftests/igt_flush_test.c   | 28 +++++++++++--------
>  1 file changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> index b484e12df417..29110abb4fe0 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
> @@ -14,21 +14,27 @@
>  
>  int igt_flush_test(struct drm_i915_private *i915)
>  {
> -	struct intel_gt *gt = to_gt(i915);
> -	int ret = intel_gt_is_wedged(gt) ? -EIO : 0;
> +	struct intel_gt *gt;
> +	unsigned int i;
> +	int ret = 0;
>  
> -	cond_resched();
> +	for_each_gt(gt, i915, i) {
> +		if (intel_gt_is_wedged(gt))
> +			ret = -EIO;
>  
> -	if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> -		pr_err("%pS timed out, cancelling all further testing.\n",
> -		       __builtin_return_address(0));
> +		cond_resched();
>  
> -		GEM_TRACE("%pS timed out.\n",
> -			  __builtin_return_address(0));
> -		GEM_TRACE_DUMP();
> +		if (intel_gt_wait_for_idle(gt, HZ * 3) == -ETIME) {
> +			pr_err("%pS timed out, cancelling all further testing.\n",
> +			       __builtin_return_address(0));
>  
> -		intel_gt_set_wedged(gt);
> -		ret = -EIO;
> +			GEM_TRACE("%pS timed out.\n",
> +				  __builtin_return_address(0));
> +			GEM_TRACE_DUMP();
> +
> +			intel_gt_set_wedged(gt);
> +			ret = -EIO;
> +		}
>  	}
>  
>  	return ret;
> -- 
> 2.39.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
