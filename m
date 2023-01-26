Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FD467D09A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:49:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7955210E294;
	Thu, 26 Jan 2023 15:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A2010E294;
 Thu, 26 Jan 2023 15:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674748139; x=1706284139;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ugb7T0SPF1Dh5K7kEvqKPf0QACAXwhf6gAhoLN/G3ZU=;
 b=iXG9xsSSegW09EXM6GrIfNqelFbF1jq8NNQZDptjNuVSxruMNR3WiF7J
 Z9p80fWX7C9BVTPxpgRnLreGvt5+tlmOGKJ6DLQomblEnWHozrBgkfxYK
 wcJS1UzkD/BZpLx5AES6W0ZFbl1+hBoZbmqXI6osnF7lJjDBM+YBEMcUQ
 TzQYZczxFo9vjhOVB/qTrUHEgnhfOBKpKJNDp9Z1HMmSo+M+KeWxWvs41
 VdNVBgwJgnm3DL8rZkQ7ybcRAZJ7I4REzSkSqEnb/X+o+Qy4/3jtO+y8N
 vyIX/J1BMs/0AvMreVM3+19NFFNEAGYZ+Y3O4aGN3sDCQ0ndgyWp6yu+C w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="391374626"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="391374626"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:48:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="836765721"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="836765721"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:48:57 -0800
Date: Thu, 26 Jan 2023 16:48:54 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230126154854.evcd2ej357u5ifbo@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230112174730.1101192-4-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/4] intel_gpu_top: Add command line
 switch to start in physical engine mode
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

On 2023-01-12 at 17:47:29 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Default mode is to aggreate engines per class but some users would prefer
> to be able to start in physical engine mode too.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  man/intel_gpu_top.rst | 3 +++
>  tools/intel_gpu_top.c | 9 +++++++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 3317e04816b4..b24216c0ae91 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -48,6 +48,9 @@ OPTIONS
>  -d
>      Select a specific GPU using supported filter.
>  
> +-p
> +   Default to showing physical engines instead of classes.
> +
>  RUNTIME CONTROL
>  ===============
>  
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index c4d98de4fe31..e91b47baf72b 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1268,6 +1268,7 @@ usage(const char *appname)
>  		"\t[-s <ms>]       Refresh period in milliseconds (default %ums).\n"
>  		"\t[-L]            List all cards.\n"
>  		"\t[-d <device>]   Device filter, please check manual page for more details.\n"
> +		"\t[-p]            Default to showing physical engines instead of classes.\n"
>  		"\n",
>  		appname, DEFAULT_PERIOD_MS);
>  	igt_device_print_filter_types();
> @@ -2446,6 +2447,7 @@ int main(int argc, char **argv)
>  {
>  	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
>  	struct clients *clients = NULL;
> +	bool physical_engines = false;
>  	int con_w = -1, con_h = -1;
>  	char *output_path = NULL;
>  	struct engines *engines;
> @@ -2456,7 +2458,7 @@ int main(int argc, char **argv)
>  	char *codename = NULL;
>  
>  	/* Parse options */
> -	while ((ch = getopt(argc, argv, "o:s:d:JLlh")) != -1) {
> +	while ((ch = getopt(argc, argv, "o:s:d:pJLlh")) != -1) {
>  		switch (ch) {
>  		case 'o':
>  			output_path = optarg;
> @@ -2467,6 +2469,9 @@ int main(int argc, char **argv)
>  		case 'd':
>  			opt_device = strdup(optarg);
>  			break;
> +		case 'p':
> +			physical_engines = true;
> +			break;
>  		case 'J':
>  			output_mode = JSON;
>  			break;
> @@ -2508,7 +2513,7 @@ int main(int argc, char **argv)
>  	case INTERACTIVE:
>  		pops = &term_pops;
>  		interactive_stdin();
> -		class_view = true;
> +		class_view = !physical_engines;
>  		break;
>  	case STDOUT:
>  		pops = &stdout_pops;
> -- 
> 2.34.1
> 
