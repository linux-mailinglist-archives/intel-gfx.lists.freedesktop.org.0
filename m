Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E7415F5DF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 19:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08E86FB85;
	Fri, 14 Feb 2020 18:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5C976FB85;
 Fri, 14 Feb 2020 18:43:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 10:43:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="381524521"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by orsmga004.jf.intel.com with ESMTP; 14 Feb 2020 10:43:01 -0800
To: Dale B Stimson <dale.b.stimson@intel.com>, igt-dev@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
References: <20200213192606.63025-1-dale.b.stimson@intel.com>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <9d522af3-470d-52f2-51e1-fef2ffdcfaa8@intel.com>
Date: Fri, 14 Feb 2020 10:43:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200213192606.63025-1-dale.b.stimson@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915/gem_engine_topology.c -
 intel_get_current_engine invalid result
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 13/02/20 11:26, Dale B Stimson wrote:
> Function intel_get_current_engine() should return NULL (instead of
> engine 0) if there are no engines.
> 
> Function intel_init_engine_list() should not store potential engine
> data in the output structure unless the engine is present.
> 
> Function intel_init_engine_list() should arguably not filter the static
> engine list with gem_has_ring if fd == -1, so that subtests can still
> be individually invoked to show subtest FAIL instead of test notrun.
> 
> Symptom: A device open failure in gem_ctx_isolation resulted in
> an endless __for_each_physical_engine "per-engine" loop with the
> purported last potential engine being processed every time.
> 
> Diagnosis: device open (or debugfs open) failed, leaving fd == -1.
> Control skipped the rest of the initial igt_fixture block, after
> which an attempt was made to iterate through engines using macro
> __for_each_physical_engine.
> 
> Macro __for_each_physical_engine called intel_init_engine_list()
> to initialize the loop control data.  Because fd == -1,
> intel_init_engine_list() fell back to using __for_each_static_engine().
> All of the engines in the static engine list are rejected due to
> gem_has_ring returning false (because of fd == -1), leaving 0 engines.
> That resulted in loop control data with engine_data.nengines == 0
> and the data for the last engine considered stored at index 0.
> 
> Still in macro __for_each_physical_engine, intel_get_current_engine()
> was called to get the engine to process.  It should have returned NULL,
> but instead returned the engine entry at index 0, which
> had received information describing the last potential engine.
> This happened without end.
> 
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> ---
>   lib/i915/gem_engine_topology.c | 29 ++++++++++++++++-------------
>   1 file changed, 16 insertions(+), 13 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 9daa03df4..b8ed49bc9 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -156,10 +156,10 @@ static void query_engine_list(int fd, struct intel_engine_data *ed)
>   struct intel_execution_engine2 *
>   intel_get_current_engine(struct intel_engine_data *ed)
>   {
> -	if (!ed->n)
> -		ed->current_engine = &ed->engines[0];
> -	else if (ed->n >= ed->nengines)
> +	if (ed->n >= ed->nengines)
>   		ed->current_engine = NULL;
> +	else if (!ed->n)
> +		ed->current_engine = &ed->engines[0];
>   
>   	return ed->current_engine;
>   }
> @@ -222,18 +222,21 @@ struct intel_engine_data intel_init_engine_list(int fd, uint32_t ctx_id)
>   		igt_debug("using pre-allocated engine list\n");
>   
>   		__for_each_static_engine(e2) {
> -			struct intel_execution_engine2 *__e2 =
> -				&engine_data.engines[engine_data.nengines];
> -
> -			strcpy(__e2->name, e2->name);
> -			__e2->instance   = e2->instance;
> -			__e2->class      = e2->class;
> -			__e2->flags      = e2->flags;
> -			__e2->is_virtual = false;
> -
>   			if (igt_only_list_subtests() ||
> -			    gem_has_ring(fd, e2->flags))
> +			    (fd < 0) ||

Patch LGTM, Chris do you have any issues merging this before someone 
implements some tests for the infrastructure?

Acked-by: Antonio Argenziano <antonio.argenziano@intel.com>

> +			    gem_has_ring(fd, e2->flags)) {
> +				struct intel_execution_engine2 *__e2 =
> +					&engine_data.engines[
> +					engine_data.nengines];
> +
> +				strcpy(__e2->name, e2->name);
> +				__e2->instance   = e2->instance;
> +				__e2->class      = e2->class;
> +				__e2->flags      = e2->flags;
> +				__e2->is_virtual = false;
> +
>   				engine_data.nengines++;
> +                        }
>   		}
>   		return engine_data;
>   	}
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
