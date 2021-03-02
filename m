Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B977329C2C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 12:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE58D89362;
	Tue,  2 Mar 2021 11:23:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 055C289362
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 11:23:02 +0000 (UTC)
IronPort-SDR: FiNkyCKfsxmTiSJvkT8QPQis3wPjl9/mHDVb16QmHHrRahziP3XqjrTq9VT5MicKwjH+3hrWjx
 T3Mh2WD6M4yQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="248188522"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="248188522"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:23:01 -0800
IronPort-SDR: gYPQfzGUIzCbeEEod0Q3cXRf4AY6kF3H1qYFrNCcbYTon9820SVYBDQTfUhKBVwAkqpo9d3wXI
 4AIuObKS6Kbg==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="406669171"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.214.243.215])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:23:00 -0800
MIME-Version: 1.0
In-Reply-To: <20210226095154.806669-1-tvrtko.ursulin@linux.intel.com>
References: <20210226095154.806669-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 02 Mar 2021 11:22:56 +0000
Message-ID: <161468417659.13469.5222569680314625474@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Wedge the GPU if command parser
 setup fails
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-26 09:51:54)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Commit 311a50e76a33 ("drm/i915: Add support for mandatory cmdparsing")
> introduced mandatory command parsing but setup failures were not
> translated into wedging the GPU which was probably the intent.
> 
> Possible errors come in two categories. Either the sanity check on
> internal tables has failed, which should be caught in CI unless an
> affected platform would be missed in testing; or memory allocation failure
> happened during driver load, which should be extremely unlikely but for
> correctness should still be handled.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 311a50e76a33 ("drm/i915: Add support for mandatory cmdparsing")
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> ---
> To catchup with referenced patch we'd need to copy stable from v5.4+.
> Failures are very unlikely but I think it would still be prudent to do so.
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c |  8 +++++++-
>  drivers/gpu/drm/i915/i915_cmd_parser.c    | 19 +++++++++++++------
>  drivers/gpu/drm/i915/i915_drv.h           |  2 +-
>  3 files changed, 21 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 577ebd4a324f..ac6478c4ede4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -696,6 +696,11 @@ static int engine_setup_common(struct intel_engine_cs *engine)
>                 goto err_status;
>         }
>  
> +       err = intel_engine_init_cmd_parser(engine);
> +       if (err) {
> +               goto err_cmd_parser;
> +       }

-{}

> +
>         i915_sched_init(&engine->sched,
>                         engine->i915->drm.dev,
>                         engine->name,
> @@ -703,7 +708,6 @@ static int engine_setup_common(struct intel_engine_cs *engine)
>                         ENGINE_PHYSICAL);
>  
>         intel_engine_init_execlists(engine);
> -       intel_engine_init_cmd_parser(engine);
>         intel_engine_init__pm(engine);
>         intel_engine_init_retire(engine);
>  
> @@ -720,6 +724,8 @@ static int engine_setup_common(struct intel_engine_cs *engine)
>  
>         return 0;
>  
> +err_cmd_parser:
> +       intel_breadcrumbs_free(engine->breadcrumbs);
>  err_status:
>         cleanup_status_page(engine);
>         return err;
> diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> index ced9a96d7c34..13905891aff7 100644
> --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> @@ -940,7 +940,7 @@ static void fini_hash_table(struct intel_engine_cs *engine)
>   * struct intel_engine_cs based on whether the platform requires software
>   * command parsing.
>   */
> -void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
> +int intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
>  {
>         const struct drm_i915_cmd_table *cmd_tables;
>         int cmd_table_count;
> @@ -948,7 +948,7 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
>  
>         if (!IS_GEN(engine->i915, 7) && !(IS_GEN(engine->i915, 9) &&
>                                           engine->class == COPY_ENGINE_CLASS))
> -               return;
> +               return 0;
>  
>         switch (engine->class) {
>         case RENDER_CLASS:
> @@ -1013,19 +1013,19 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
>                 break;
>         default:
>                 MISSING_CASE(engine->class);
> -               return;
> +               goto out;
>         }
>  
>         if (!validate_cmds_sorted(engine, cmd_tables, cmd_table_count)) {
>                 drm_err(&engine->i915->drm,
>                         "%s: command descriptions are not sorted\n",
>                         engine->name);
> -               return;
> +               goto out;
>         }
>         if (!validate_regs_sorted(engine)) {
>                 drm_err(&engine->i915->drm,
>                         "%s: registers are not sorted\n", engine->name);
> -               return;
> +               goto out;
>         }
>  
>         ret = init_hash_table(engine, cmd_tables, cmd_table_count);
> @@ -1033,10 +1033,17 @@ void intel_engine_init_cmd_parser(struct intel_engine_cs *engine)
>                 drm_err(&engine->i915->drm,
>                         "%s: initialised failed!\n", engine->name);
>                 fini_hash_table(engine);
> -               return;
> +               goto out;
>         }
>  
>         engine->flags |= I915_ENGINE_USING_CMD_PARSER;
> +
> +out:
> +       if (intel_engine_requires_cmd_parser(engine) &&
> +           !intel_engine_using_cmd_parser(engine))
> +               return -EINVAL;

Ah. I see, a catch all to pick up the allocation failures.


> +       else

No else after return

Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
-Chris
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
