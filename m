Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 942256A8B06
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 22:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 665F910E55C;
	Thu,  2 Mar 2023 21:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6D710E55C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 21:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677791503; x=1709327503;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=vpPi4SoRZp5K2Bwo08WsfTG0h8+WYRkAymgO/yGHiu4=;
 b=KusyNtZfKd0qpca1pmK+Vz298jtOqqDDeHl20SqXZEWuWt6JrTUpGGCp
 9qzgzYyYqvS4301MbU5YunWeM93JP/8owQ3RN8wpiM4FE3n7+UTXOdmLi
 sLdg5Pupg/jBBKDJe1S/ZUf1HBQiu4/o5m2tcgX0axsLFNiysAnwsYocQ
 Jm3Q55CZeZqYomwU9I2C15Z2/8vjb7nSG9Q8BPFDpAHDyXu81thi+WCXS
 xRI5FsVeCnHOSg0D+qUaeqpVgys7aXjXgz+A2DqtO1l77OFKYY9cx7U8W
 MIiTb34ZCnHYAo+YT/qlHKZ93ryUZ5v65uM8HyjPvKciyojAKvLsT5EjA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="399663659"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="399663659"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:11:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="764172444"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="764172444"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.9.21])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 13:11:42 -0800
Date: Thu, 02 Mar 2023 13:01:21 -0800
Message-ID: <87h6v2yiji.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230228022329.3615793-10-umesh.nerlige.ramappa@intel.com>
References: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>	<20230228022329.3615793-10-umesh.nerlige.ramappa@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v3 9/9] drm/i915/perf: Add support for OA
 media units
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Feb 2023 18:23:29 -0800, Umesh Nerlige Ramappa wrote:
>

Hi Umesh,

> @@ -1632,11 +1647,28 @@ free_noa_wait(struct i915_perf_stream *stream)
>	i915_vma_unpin_and_release(&stream->noa_wait, 0);
>  }
>
> +/*
> + * intel_engine_lookup_user ensures that most of engine specific checks are
> + * taken care of, however, we can run into a case where the OA unit catering to
> + * the engine passed by the user is disabled for some reason. In such cases,
> + * ensure oa unit corresponding to an engine is functional. If there are no
> + * engines in the group, the unit is disabled.
> + */
> +static bool oa_unit_functional(const struct intel_engine_cs *engine)
> +{
> +	return engine->oa_group && engine->oa_group->num_engines;

This doesn't add anything above engine_supports_oa() below: if
engine->oa_group is true for engine X, engine->oa_group->num_engines must
at least be 1 because the oa_group must at least contain X. (Of course
oa_group->num_engines can still be 0 but engine->oa_group->num_engines must
be > 0).

We can see this in oa_init_gt where num_engines++ and oa_group assignment
is done together:

static int oa_init_gt(struct intel_gt *gt)
{
	...

	for_each_engine_masked(engine, gt, ALL_ENGINES, tmp) {
		u32 index = __oa_engine_group(engine);

		engine->oa_group = NULL;
		if (index < num_groups) {
			g[index].num_engines++;
			engine->oa_group = &g[index];
		}
	}
}

Therefore in read_properties_unlocked these checks are sufficient:

	props->engine = intel_engine_lookup_user(perf->i915, class, instance);
	if (!props->engine) {
		return -EINVAL;
	}

	if (!engine_supports_oa(props->engine)) {
		return -EINVAL;
	}

The oa_unit_functional check is not needed.


> +}
> +
>  static bool engine_supports_oa(const struct intel_engine_cs *engine)
>  {
>	return engine->oa_group;
>  }
>
> +static bool engine_supports_oa_format(struct intel_engine_cs *engine, int type)
> +{
> +	return engine->oa_group && engine->oa_group->type == type;
> +}
> +

/snip/

> @@ -4186,6 +4227,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
>		return -EINVAL;
>	}
>
> +	if (!oa_unit_functional(props->engine))
> +		return -ENODEV;
> +
> +	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
> +	f = &perf->oa_formats[i];
> +	if (!engine_supports_oa_format(props->engine, f->type)) {
> +		DRM_DEBUG("Invalid OA format %d for class %d\n",
> +			  f->type, props->engine->class);
> +		return -EINVAL;
> +	}
> +

Thanks.
--
Ashutosh
