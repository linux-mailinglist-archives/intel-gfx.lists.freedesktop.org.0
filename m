Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C6134FC66
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Mar 2021 11:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9686EA10;
	Wed, 31 Mar 2021 09:16:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EFAF6EA10;
 Wed, 31 Mar 2021 09:16:20 +0000 (UTC)
IronPort-SDR: IW9uxwXy+LoP/kB8xiHxdj2hKr3Bsxj1nSvhYBZk0j1EIe0tpnX+DHq1SFz4gXRvTkD0J+U+10
 AdDBbNIuAJFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="192065142"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192065142"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 02:16:19 -0700
IronPort-SDR: B1fPA5GIe+gG6wwAiqUk4A3m8+eUWcxgl2fm2rBOuEE8mZDv+XH8SJPaLORloYLvGmH427pe4b
 uunDKy+eFzCQ==
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="412058991"
Received: from jlowe-mobl.ger.corp.intel.com (HELO [10.213.201.218])
 ([10.213.201.218])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 02:16:18 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
References: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <876b4758-0240-50b6-5343-5b84f7096f25@linux.intel.com>
Date: Wed, 31 Mar 2021 10:16:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Document how
 to use JSON output
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 31/03/2021 10:12, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Put a note on how to use JSON output into the man page.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> References: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/100
> ---
>   man/intel_gpu_top.rst | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index f6d74852558b..94fdc6520fd3 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -81,6 +81,11 @@ Filter types: ::
>       pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
>                vendor is hex number or vendor name
>   
> +JSON OUTPUT
> +===========
> +
> +To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point an JSON array element and will avoid "Multiple root elements" JSON validation error.
> +

Or as an alternative we make the tool do this, but it'd need a signal 
handler to print the closing bracket at which point I thought it could 
be a complication too far. Could be convinced either way I guess.

Regards,

Tvrtko

>   LIMITATIONS
>   ===========
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
