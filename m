Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692237E08B7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 20:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C484810E19A;
	Fri,  3 Nov 2023 19:04:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D20810E19A;
 Fri,  3 Nov 2023 19:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699038258; x=1730574258;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=P3wKUfE9+lIhbZsARtBH/8DOpYI5TxnKJzbkSAhOLx0=;
 b=Jwlcku4r0/Pi8DFCWS9koG3jmUfQ1PxTeCrV5VQFwlxUZfkgmhPS8Fqr
 CDq4RziQJYP9AVrfgPXI8WOu/8l1ALk0Eqia6hYYVI1hUnUPVNzLcehID
 tTa8UWbWyG9NeDWb7JuFDNwF6PDWOBrkF2b8aHEWkC7EtuQhWlvt6lczN
 3JurPHfL3SfdxztDXuEEEuK4zPPpsYfiS/ezb+9P/qP6gDOEj2EnJBONy
 ylQPNtt90OZsPojyLRAulApgDXpZoqPtIBZDwXnem56h8lnEw1T+8J4Bh
 Mw+ZFgI6JjqMwmOwTC5YA6ryOe0EoWU6pLAPq3i6Vlu2SWMhRI5/o8+f2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="368343284"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="368343284"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 12:04:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="796710755"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="796710755"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga001-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Nov 2023 12:04:15 -0700
Date: Fri, 3 Nov 2023 20:04:12 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231103190412.ualena5oru4lhlmn@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
 <20231012081547.852052-10-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231012081547.852052-10-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 9/9] tools/intel_gpu_top:
 Add ability to show memory region breakdown
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
Cc: Intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,
On 2023-10-12 at 09:15:47 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Similar as we can toggle between aggregated engines and clients, add the
> capability to toggle between aggregated and per memory region stats.
> 
> It starts in aggregated mode by default and interactive command 'm' and
> command line switch '-m' can be used to toggle that.
> 
> Both only affect the interactive view, while JSON output always contains
> separate memory regions.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  man/intel_gpu_top.rst |  4 ++++
>  tools/intel_gpu_top.c | 55 ++++++++++++++++++++++++++++++++++---------
>  2 files changed, 48 insertions(+), 11 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 9499f87f1b4d..44a54a5f219d 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -55,6 +55,9 @@ OPTIONS
>  -p
>     Default to showing physical engines instead of aggregated classes.
>  
> +-m
> +   Default to showing all memory regions separately.
> +
>  RUNTIME CONTROL
>  ===============
>  
> @@ -68,6 +71,7 @@ Supported keys:
>  |    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
>  |    'i'    Toggle display of clients which used no GPU time.
>  |    'H'    Toggle between per PID aggregation and individual clients.
> +|    'm'    Toggle between aggregated memory regions and full breakdown.
>  
>  DEVICE SELECTION
>  ================
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index 2c09895c79dd..046ead15a122 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -138,6 +138,7 @@ struct intel_clients {
>  
>  static struct termios termios_orig;
>  static bool class_view;
> +static bool aggregate_regions;
>  
>  /* Maps i915 fdinfo names to indices */
>  static const char *memory_region_map[] = {
> @@ -1050,6 +1051,7 @@ usage(const char *appname)
>  		"\t[-L]            List all cards.\n"
>  		"\t[-d <device>]   Device filter, please check manual page for more details.\n"
>  		"\t[-p]            Default to showing physical engines instead of classes.\n"
> +		"\t[-m]            Default to showing all memory regions.\n"
>  		"\n",
>  		appname, DEFAULT_PERIOD_MS);
>  	igt_device_print_filter_types();
> @@ -2032,6 +2034,7 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  
>  	if (output_mode == INTERACTIVE) {
>  		int len, num_active = 0;
> +		unsigned int i;
>  
>  		if (lines++ >= con_h)
>  			return lines;
> @@ -2042,11 +2045,17 @@ print_clients_header(struct igt_drm_clients *clients, int lines,
>  		if (lines++ >= con_h || len >= con_w)
>  			return lines;
>  
> -		if (iclients->regions)
> -			len += printf("     MEM      RSS ");
> +		if (iclients->regions) {
> +			if (aggregate_regions) {
> +				len += printf("     MEM      RSS ");
> +			} else {
> +				len += printf("     RAM      RSS ");
> +				if (iclients->regions->num_regions > 1)
> +					len += printf("    VRAM     VRSS ");
> +			}
> +		}
>  
>  		if (iclients->classes.num_engines) {
> -			unsigned int i;
>  			int width;
>  
>  			for (i = 0; i <= iclients->classes.max_engine_id; i++) {
> @@ -2120,15 +2129,26 @@ print_client(struct igt_drm_client *c, struct engines *engines, double t, int li
>  		len = printf("%*s ", clients->max_pid_len, c->pid_str);
>  
>  		if (iclients->regions) {
> -			uint64_t sz;
> +			if (aggregate_regions) {
> +				uint64_t sz;
>  
> -			for (sz = 0, i = 0; i <= c->regions->max_region_id; i++)
> -				sz += c->memory[i].total;
> -			len += print_size(sz);
> +				for (sz = 0, i = 0;
> +				     i <= c->regions->max_region_id; i++)
> +					sz += c->memory[i].total;
> +				len += print_size(sz);
>  
> -			for (sz = 0, i = 0; i <= c->regions->max_region_id; i++)
> -				sz += c->memory[i].resident;
> -			len += print_size(sz);
> +				for (sz = 0, i = 0;
> +				     i <= c->regions->max_region_id; i++)
> +					sz += c->memory[i].resident;
> +				len += print_size(sz);
> +			} else {
> +				len += print_size(c->memory[0].total);
> +				len += print_size(c->memory[0].resident);
> +				if (c->regions->num_regions > 1) {
> +					len += print_size(c->memory[1].total);
> +					len += print_size(c->memory[1].resident);
> +				}
> +			}
>  		}
>  
>  		for (i = 0; i <= iclients->classes.max_engine_id; i++) {
> @@ -2405,6 +2425,13 @@ static void process_normal_stdin(void)
>  			else
>  				header_msg = "Showing individual clients.";
>  			break;
> +		case 'm':
> +			aggregate_regions ^= true;
> +			if (aggregate_regions)
> +				header_msg = "Aggregating memory regions.";
> +			else
> +				header_msg = "Showing memory regions.";
> +			break;
>  		};
>  	}
>  }
> @@ -2453,6 +2480,7 @@ static void show_help_screen(void)
>  "    's'    Toggle between sort modes (runtime, total runtime, pid, client id).\n"
>  "    'i'    Toggle display of clients which used no GPU time.\n"
>  "    'H'    Toggle between per PID aggregation and individual clients.\n"
> +"    'm'    Toggle between aggregated memory regions and full breakdown.\n"
>  "\n"
>  "    'h' or 'q'    Exit interactive help.\n"
>  "\n");
> @@ -2580,6 +2608,7 @@ int main(int argc, char **argv)
>  {
>  	unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
>  	bool physical_engines = false;
> +	bool separate_regions = false;
>  	struct intel_clients iclients;
>  	int con_w = -1, con_h = -1;
>  	char *output_path = NULL;
> @@ -2592,7 +2621,7 @@ int main(int argc, char **argv)
>  	struct timespec ts;
>  
>  	/* Parse options */
> -	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
> +	while ((ch = getopt(argc, argv, "o:s:d:mpcJLlh")) != -1) {
>  		switch (ch) {
>  		case 'o':
>  			output_path = optarg;
> @@ -2606,6 +2635,9 @@ int main(int argc, char **argv)
>  		case 'p':
>  			physical_engines = true;
>  			break;
> +		case 'm':
> +			separate_regions = true;
> +			break;
>  		case 'c':
>  			output_mode = CSV;
>  			break;
> @@ -2649,6 +2681,7 @@ int main(int argc, char **argv)
>  		fprintf(stderr, "Failed to install signal handler!\n");
>  
>  	class_view = !physical_engines;
> +	aggregate_regions = !separate_regions;
>  
>  	switch (output_mode) {
>  	case INTERACTIVE:
> -- 
> 2.39.2
> 
