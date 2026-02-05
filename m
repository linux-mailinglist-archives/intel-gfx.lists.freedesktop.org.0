Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMFVJWHPhGk45QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:12:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E926EF5B55
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F285210E93A;
	Thu,  5 Feb 2026 17:11:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cL9b1jvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9045E10E936;
 Thu,  5 Feb 2026 17:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770311518; x=1801847518;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Vdl0fZMPTue0rn+dQQa1er09bMDH1Epuaexi7vAk/x8=;
 b=cL9b1jvuhet/8pvNnYWFZ3ByM47f58c37t8Mj9p+vUk8KojrXJxJb2OR
 DqatdeLubuzgv04wxALWlm0JWOPvzF1JvoE1H8l9uw1T+gUyeCPueRG8U
 tLmF9Hv8NcRZYE53nQIKJ515E3uxfEiZg60h3wiAXtDP5z16iky21cVsC
 HOWB76lokuPfSRU3G7ZquYRRnrjgU/aN0Ac2hnZqWhzqx4IDs2CssC29A
 aVCHyabxNUi+Quq0/r9GgiRNbGzYSfedhK/uI0wzisXa0iq+gWP+YsSCl
 tJYYAtJd6psD9D9a7Iia5R+e3P4RXDlcuJrkf4OPsUCDh0uQoGOXXbIus g==;
X-CSE-ConnectionGUID: 1R/V8cNDTg+MlwmqEjLlzg==
X-CSE-MsgGUID: lCN8D977RtOHVygtqkfBlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71553788"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71553788"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:11:58 -0800
X-CSE-ConnectionGUID: k/ooZn8FQnymNiIgeBn5/w==
X-CSE-MsgGUID: KtegJtOZSAWImXI2eS7qOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="241273346"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Feb 2026 09:11:55 -0800
Date: Thu, 5 Feb 2026 18:11:52 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v5 5/6] lib/igt_device_scan: Omit AER statistics
 data from attributes
Message-ID: <20260205171152.xcstd5ubmqw6fs5p@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
 <20260205145427.1338534-13-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260205145427.1338534-13-janusz.krzysztofik@linux.intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[kamil.konieczny@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,kamilkon-DESK.igk.intel.com:mid]
X-Rspamd-Queue-Id: E926EF5B55
X-Rspamd-Action: no action

Hi Janusz,
On 2026-02-05 at 15:51:54 +0100, Janusz Krzysztofik wrote:
> Among attributes of a PCIe bridge upstream port of a discrete graphics
> card, there are three AER statistics attributes: aer_dev_correctable,
> aer_dev_nonfatal and aer_dev_fatal.  Each consists of a number of key-
> value pairs, while the library now expects only single value attributes.
> That affects formatting of lsgpu -p output.  In order to print that data
> correctly in a human readable form, extra formatting effort would be
> needed.  However, users of lsgpu, the only call site of that printing
> function of the igt_device_scan library, are not necessarily interested in
> that data.  Just drop those attributes from the printout.
> 
> v2: Hand over detection of AER attributes to a helper.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Regards,
Kamil

> ---
>  lib/igt_device_scan.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index 6fc02a565a..d7ec6c2b96 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -617,6 +617,13 @@ static bool is_link_attr(const char *name)
>  	       !strcmp(name, "current_link_width");
>  }
>  
> +static bool is_aer_attr(const char *name)
> +{
> +	return !strcmp(name, "aer_dev_correctable") ||
> +	       !strcmp(name, "aer_dev_nonfatal") ||
> +	       !strcmp(name, "aer_dev_fatal");
> +}
> +
>  static void dump_props_and_attrs(const struct igt_device *dev, bool omit_link)
>  {
>  	struct igt_map_entry *entry;
> @@ -632,6 +639,10 @@ static void dump_props_and_attrs(const struct igt_device *dev, bool omit_link)
>  		if (omit_link && is_link_attr(entry->key))
>  			continue;
>  
> +		/* omit multi-line AER statistics data */
> +		if (is_aer_attr(entry->key))
> +			continue;
> +
>  		_print_key_value((char *)entry->key, (char *)entry->data);
>  	}
>  	printf("\n");
> -- 
> 2.52.0
> 
