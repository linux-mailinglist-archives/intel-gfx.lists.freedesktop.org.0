Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE9368D94C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 14:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C562D10E501;
	Tue,  7 Feb 2023 13:29:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 706C910E500;
 Tue,  7 Feb 2023 13:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675776551; x=1707312551;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0FY8vfq26Vt/7PQdukR9Mdk5g+H21k9qwWYwYJbq7iE=;
 b=Ng8C5A4beDjRC4BE0QNB3M7OPg4oETVEqlfzlq+XTIlvfHMTLITOMcWp
 5j8mlZLOVnrUScrifeBcycj0pM7lCejtP+P8Moxl439rA9NV5LrCZ6G7P
 SxUIirwEyN9T2Vyv3BhMZ+qUO3ScycV67ueqUnYbdpQIaDnoHhFnoHPF6
 nqI+lV2yYR5S9hvBTEZ5OX+TTNE+JzRqJSSvmBZ2tJaeTJq9AduIukeHf
 jeWlDaTifv7LwvhnF5zxJ4FYYUg7kedn4CsZIYaCRtTrB7y/QXuLCwHyn
 1mLwFbA7LK5sEAgLTuDixppmuFuVLN+Sj7T7NQ4XaFqo4iYzo8O4JZ/9V g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="313150570"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="313150570"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 05:29:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644449097"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="644449097"
Received: from zmrowka-mobl.ger.corp.intel.com (HELO localhost) ([10.213.7.46])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 05:29:09 -0800
Date: Tue, 7 Feb 2023 14:29:07 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230207132907.cagijhyexj5zteyu@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org,
 Caleb Callaway <caleb.callaway@intel.com>
References: <20230203111636.4138202-4-tvrtko.ursulin@linux.intel.com>
 <20230203113119.4139041-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230203113119.4139041-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] intel_gpu_top: Add CSV output
 format
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

On 2023-02-03 at 11:31:19 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Add CSV output mode.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Caleb Callaway <caleb.callaway@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  man/intel_gpu_top.rst |  3 ++
>  tools/intel_gpu_top.c | 78 +++++++++++++++++++++++++++++++++++++++++--
>  2 files changed, 78 insertions(+), 3 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 69834756b81e..2d041457a95e 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -31,6 +31,9 @@ OPTIONS
>  -h
>      Show help text.
>  
> +-c
> +    Output CSV formatted data.
> +
>  -J
>      Output JSON formatted data.
>  
> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
> index a980cc7043dc..2e1365959d8b 100644
> --- a/tools/intel_gpu_top.c
> +++ b/tools/intel_gpu_top.c
> @@ -1268,6 +1268,7 @@ usage(const char *appname)
>  		"\n"
>  		"\tThe following parameters are optional:\n\n"
>  		"\t[-h]            Show this help text.\n"
> +		"\t[-c]            Output CSV formatted data.\n"
>  		"\t[-J]            Output JSON formatted data.\n"
>  		"\t[-l]            List plain text data.\n"
>  		"\t[-o <file|->]   Output to specified file or '-' for standard out.\n"
> @@ -1283,6 +1284,7 @@ usage(const char *appname)
>  static enum {
>  	INTERACTIVE,
>  	TEXT,
> +	CSV,
>  	JSON
>  } output_mode;
>  
> @@ -1457,6 +1459,22 @@ text_add_member(const struct cnt_group *parent, struct cnt_item *item,
>  	return len > 0 ? len : 0;
>  }
>  
> +static unsigned int
> +csv_add_member(const struct cnt_group *parent, struct cnt_item *item,
> +	       unsigned int headers)
> +{
> +	int len = 0;
> +
> +	if (headers)
> +		fprintf(out, "%s %s", parent->display_name, item->unit);
> +	else
> +		len = fprintf(out, "%f",
> +			      pmu_calc(&item->pmu->val, item->d, item->t,
> +				       item->s));
> +
> +	return len > 0 ? len : 0;
> +}
> +
>  static void
>  term_open_struct(const char *name)
>  {
> @@ -1540,6 +1558,46 @@ print_group(struct cnt_group *grp, unsigned int headers)
>  	return consumed;
>  }
>  
> +static unsigned int csv_count, prev_csv_count;
> +
> +static void csv_close_struct(void)
> +{
> +	assert(text_level > 0);
> +	if (--text_level == 0) {
> +		csv_count = prev_csv_count = 0;
> +		text_lines++;
> +		fputs("\n", out);
> +		fflush(out);
> +	}
> +}
> +
> +static bool
> +csv_print_group(struct cnt_group *grp, unsigned int headers)
> +{
> +	unsigned int consumed = 0;
> +	struct cnt_item *item;
> +
> +	if (!present_in_group(grp))
> +		return false;
> +
> +	text_open_struct(grp->name);
> +
> +	for (item = grp->items; item->name; item++) {
> +		if (!item->pmu || !item->pmu->present)
> +			continue;
> +
> +		if (csv_count != prev_csv_count)
> +			fprintf(out, ",");
> +		prev_csv_count = csv_count++;
> +
> +		consumed += csv_add_member(grp, item, headers);
> +	}
> +
> +	csv_close_struct();
> +
> +	return consumed;
> +}
> +
>  static bool
>  term_print_group(struct cnt_group *grp, unsigned int headers)
>  {
> @@ -1570,6 +1628,13 @@ static const struct print_operations text_pops = {
>  	.print_group = print_group,
>  };
>  
> +static const struct print_operations csv_pops = {
> +	.open_struct = text_open_struct,
> +	.close_struct = csv_close_struct,
> +	.add_member = csv_add_member,
> +	.print_group = csv_print_group,
> +};
> +
>  static const struct print_operations term_pops = {
>  	.open_struct = term_open_struct,
>  	.close_struct = term_close_struct,
> @@ -1582,11 +1647,12 @@ static bool print_groups(struct cnt_group **groups)
>  	static bool headers_printed = false;
>  	bool print_data = true;
>  
> -	if (output_mode == TEXT &&
> +	if ((output_mode == TEXT || output_mode == CSV) &&
>  	    (text_header_repeat || !headers_printed)) {
> +		const unsigned int header_lines = output_mode == TEXT ? 2 : 1;
>  		unsigned int headers = text_lines % TEXT_HEADER_REPEAT + 1;
>  
> -		if (headers == 1 || headers == 2)
> +		if (headers > 0 && headers <= header_lines)
>  			for (struct cnt_group **grp = groups; *grp; grp++)
>  				print_data = pops->print_group(*grp, headers);
>  
> @@ -2469,7 +2535,7 @@ int main(int argc, char **argv)
>  	char *codename = NULL;
>  
>  	/* Parse options */
> -	while ((ch = getopt(argc, argv, "o:s:d:pJLlh")) != -1) {
> +	while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
>  		switch (ch) {
>  		case 'o':
>  			output_path = optarg;
> @@ -2483,6 +2549,9 @@ int main(int argc, char **argv)
>  		case 'p':
>  			physical_engines = true;
>  			break;
> +		case 'c':
> +			output_mode = CSV;
> +			break;
>  		case 'J':
>  			output_mode = JSON;
>  			break;
> @@ -2532,6 +2601,9 @@ int main(int argc, char **argv)
>  	case TEXT:
>  		pops = &text_pops;
>  		break;
> +	case CSV:
> +		pops = &csv_pops;
> +		break;
>  	case JSON:
>  		pops = &json_pops;
>  		break;
> -- 
> 2.34.1
> 
