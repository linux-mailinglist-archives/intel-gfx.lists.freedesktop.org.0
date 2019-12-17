Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFCEE1238CA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 22:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329336E154;
	Tue, 17 Dec 2019 21:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 694636E157
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 21:42:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 13:42:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="209848114"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga008.jf.intel.com with ESMTP; 17 Dec 2019 13:42:31 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.250])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBHLgUnF014450; Tue, 17 Dec 2019 21:42:30 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
 <20191217012316.13271-4-daniele.ceraolospurio@intel.com>
Date: Tue, 17 Dec 2019 22:42:29 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0cyo83j9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20191217012316.13271-4-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915/guc/ct: Group
 request-related variables in a sub-structure
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Dec 2019 02:23:13 +0100, Daniele Ceraolo Spurio  
<daniele.ceraolospurio@intel.com> wrote:

> For better isolation of the request tracking from the rest of the
> CT-related data.
>
> v2: split to separate patch, move next_fence to substructure (Michal)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

with some nits below (we may fix them later)

/snip/

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index 6e3d789b9f01..29a026dc3a13 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -48,12 +48,15 @@ struct intel_guc_ct {
>  	/* buffers for sending(0) and receiving(1) commands */
>  	struct intel_guc_ct_buffer ctbs[2];
> -	u32 next_fence; /* fence to be used with next send command */
> +	struct {
> +		u32 next_fence; /* fence to be used with next request to send */

nit: strictly speaking this is "last" fence
      we just use it to generate next one

> -	spinlock_t lock; /* protects pending requests list */
> -	struct list_head pending_requests; /* requests waiting for response */
> -	struct list_head incoming_requests; /* incoming requests */
> -	struct work_struct worker; /* handler for incoming requests */
> +		spinlock_t lock; /* protects pending requests list */

nit: do we want to use this lock to protect "next/last" fence ?
      if yes, then maybe lock shall be first ?

> +		struct list_head pending; /* requests waiting for response */
> +
> +		struct list_head incoming; /* incoming requests */
> +		struct work_struct worker; /* handler for incoming requests */
> +	} requests;
>  };
> void intel_guc_ct_init_early(struct intel_guc_ct *ct);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
