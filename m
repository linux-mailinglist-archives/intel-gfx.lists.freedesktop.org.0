Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A25668D940
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 14:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5334C10E513;
	Tue,  7 Feb 2023 13:25:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECA1810E15E;
 Tue,  7 Feb 2023 13:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675776325; x=1707312325;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0bqQ0nYpoYvCiNKiB3lbREzVtfltGmSJGrh8exKraB0=;
 b=KY79POQ+OKsKw7jD7sI6Yvt7Pgu9Jbeg4jH5YwYQ4apdzNpFOcGklW3d
 YrPgCupQwufZTC3rcVkgOYGEKmYiawTFq+1KoKfrHuoz5S6RfxBH2VqOM
 PVoVtbjDUTKy831eAOAuR3HkgM5OsOD33AGbdYR68SVyy1aN/oIq9hZ91
 MKPitOLArbLPR4BPrWRWaMe21gI7JLWZyLFdMsbUfilXuZyWTG9pNncC7
 sOPpxWUbVBla8a1tfk92BoMJuxfVi000S6nwlFfo3sTZMphErsdmNcLf0
 yNIdy3aRlxMhnI/76+wXdUeCMBL5etiCfQRn/DkHF1f2SWnptiHvrU7e9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="328145447"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328145447"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 05:25:24 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="840764818"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840764818"
Received: from zmrowka-mobl.ger.corp.intel.com (HELO localhost) ([10.213.7.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 05:25:22 -0800
Date: Tue, 7 Feb 2023 14:25:19 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230207132519.m6zt5fqjw7jysqdy@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Caleb Callaway <caleb.callaway@intel.com>
References: <20230203111636.4138202-1-tvrtko.ursulin@linux.intel.com>
 <20230203111636.4138202-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230203111636.4138202-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] intel_gpu_top: Do not repeat
 header lines in non-interactive output
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
Cc: Intel-gfx@lists.freedesktop.org, Caleb Callaway <caleb.callaway@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-02-03 at 11:16:34 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> If output is redirected to a file, or a pipe, lets not repeat the headers
> because that can usually mean user is trying to parse the data later and
> so repeated headers are a hindrance.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Caleb Callaway <caleb.callaway@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tools/intel_gpu_top.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 0a1de41b3374..e2a7f4753099 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1391,6 +1391,7 @@ static unsigned int stdout_level;
>  
>  #define STDOUT_HEADER_REPEAT 20
>  static unsigned int stdout_lines = STDOUT_HEADER_REPEAT;
> +static bool stdout_header_repeat;
>  
>  static void
>  stdout_open_struct(const char *name)
> @@ -1580,16 +1581,22 @@ static const struct print_operations term_pops = {
>  
>  static bool print_groups(struct cnt_group **groups)
>  {
> -	unsigned int headers = stdout_lines % STDOUT_HEADER_REPEAT + 1;
> +	static bool headers_printed = false;
>  	bool print_data = true;
>  
> -	if (output_mode == STDOUT && (headers == 1 || headers == 2)) {
> -		for (struct cnt_group **grp = groups; *grp; grp++)
> -			print_data = pops->print_group(*grp, headers);
> +	if (output_mode == STDOUT &&
> +	    (stdout_header_repeat || !headers_printed)) {
> +		unsigned int headers = stdout_lines % STDOUT_HEADER_REPEAT + 1;
> +
> +		if (headers == 1 || headers == 2)
> +			for (struct cnt_group **grp = groups; *grp; grp++)
> +				print_data = pops->print_group(*grp, headers);
> +
> +		headers_printed = print_data;
>  	}
>  
>  	for (struct cnt_group **grp = groups; print_data && *grp; grp++)
> -		pops->print_group(*grp, false);
> +		pops->print_group(*grp, 0);
>  
>  	return print_data;
>  }
> @@ -2512,6 +2519,8 @@ int main(int argc, char **argv)
>  		out = stdout;
>  	}
>  
> +	stdout_header_repeat = output_mode == STDOUT && isatty(fileno(out));
> +
>  	if (signal(SIGINT, sigint_handler) == SIG_ERR)
>  		fprintf(stderr, "Failed to install signal handler!\n");
>  
> -- 
> 2.34.1
> 
