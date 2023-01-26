Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7E567D069
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:39:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A186210E936;
	Thu, 26 Jan 2023 15:39:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A4D10E93A;
 Thu, 26 Jan 2023 15:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674747582; x=1706283582;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qPNbAeQw+NNws2uWvflGhi9yfz250F4VhiypZjY/L4Q=;
 b=ngjW4N0TDAEqitGKdYrVSMR9pjbDJGO+0oxaU7xSJWGOZOURqhoegDpW
 jRA9hEnV6pnNj336igi3cTf1YVsNiXcGm78j7qkcRnykzettZA4I99vrz
 q8V0+sWHRYAUnXVl0Ce4M0xrR1Kftsl1kzPs1bNvXwmZ4UfS5cXQMhdv/
 kWVRdEHsYtuB4mrf83SOCr4y1IwltISn/QnYOwIAQlk0WVdwvuTTx1acp
 pPjy+xRfTGR1xSjN8luD+PR2PA4cjrgNhdZSMJ67kTPGXloWtzXb7esDr
 4C/gOVrj8mmbSkJxDxkdsMWF2iWy65j1SfsuiuriPDwmLDGV5acCXk8lW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="326870647"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="326870647"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:39:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="656209197"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; d="scan'208";a="656209197"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 07:39:40 -0800
Date: Thu, 26 Jan 2023 16:39:38 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230126153938.3iotcb52eawnwbcl@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230112174730.1101192-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] intel_gpu_top: Fix man
 page formatting
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-01-12 at 17:47:27 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> New lines are not respected when rst2man generates the page so try to work
> around that by followin advice from the Internet.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  man/intel_gpu_top.rst | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 748c7740c800..b0c95446a011 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -53,13 +53,14 @@ RUNTIME CONTROL
>  
>  Supported keys:
>  
> -    'q'    Exit from the tool.
> -    'h'    Show interactive help.
> -    '1'    Toggle between aggregated engine class and physical engine mode.
> -    'n'    Toggle display of numeric client busyness overlay.
> -    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> -    'i'    Toggle display of clients which used no GPU time.
> -    'H'    Toggle between per PID aggregation and individual clients.
> +|
> +|    'q'    Exit from the tool.
> +|    'h'    Show interactive help.
> +|    '1'    Toggle between aggregated engine class and physical engine mode.
> +|    'n'    Toggle display of numeric client busyness overlay.
> +|    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> +|    'i'    Toggle display of clients which used no GPU time.
> +|    'H'    Toggle between per PID aggregation and individual clients.
>  
>  DEVICE SELECTION
>  ================
> -- 
> 2.34.1
> 
