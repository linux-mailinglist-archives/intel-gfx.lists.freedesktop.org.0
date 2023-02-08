Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2252A68EEFD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 13:31:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905E710E76C;
	Wed,  8 Feb 2023 12:31:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00EBB10E769;
 Wed,  8 Feb 2023 12:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675859506; x=1707395506;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=6KZsL++023J+OB6Ik+OVKqYUV01/584WDCGmA8ZCfkU=;
 b=BPkLW0MY05QlTfuWuOv/k+rcTrPWDF9EY1plxrW63X/3CuzlUkHNYZhI
 XnZ3YnBIPjZMPe8gtWd8fOm8NVDIQKu5fFI2UzWJbxrbS4PWjdZMEqgkf
 NKzzi2IlCSqvp7cWELtRv574rYaj+/g7VfGcNgiUtstdnoqtLrGwS5RaG
 +oI9vtNZGlniKMOx1Ut8DTglckm9anQYx+MxwXeh6fyv0abkFGqb0hTv/
 U6A6QKYPA9xlR8WOcXw6l0CGsI7T5nTuFoWNUSwoJ9yqVGsotgYnVV13N
 wBIip0o7+buZQTpNNl7oLh99KGSdD+yECKXpfCcGLj1tp1So3mOHlsUcZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="327479613"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="327479613"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 04:31:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730849017"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="730849017"
Received: from kwolowsk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.9.40])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 04:31:44 -0800
Date: Wed, 8 Feb 2023 13:31:42 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230208123142.zudgou6bjt7qbin4@kamilkon-desk1>
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

Hi Tvrtko,

one small nit, see below.

On 2023-02-03 at 11:16:34 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> If output is redirected to a file, or a pipe, lets not repeat the headers
> because that can usually mean user is trying to parse the data later and
> so repeated headers are a hindrance.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Caleb Callaway <caleb.callaway@intel.com>
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
----------------------------------- ^
Remove this initialization (use checkpatch from Linux kernel).

Please correct and resend (you can keep my r-b).

Regards,
Kamil

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
