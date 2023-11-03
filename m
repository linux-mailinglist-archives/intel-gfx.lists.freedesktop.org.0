Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FC47DFFF0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 10:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABABC10E084;
	Fri,  3 Nov 2023 09:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D72610E084
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699003027; x=1730539027;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wGRcOaReElb8n0QCNmrZoI2eB7GhfiksoOHH+SAFEO4=;
 b=MT5AxjFoHy7OyXxF4pPXHXJtFeLt5OaTZOGC8V8HYfKjGqBtK5koEKTo
 tGhtEr0GdsdCf8VAv4tgtcD+SgrbR1UA8ci/wt6J16MLkO0idrIya17Qe
 8Ev3BNWE1GWxGm1j+dq0Kq5s+Wv0ggf8v94IpcmjuJ0KJ5U6u/RTff8Jf
 fJKBZDgYNlsCZ2gu0aJyfyd5K8KK6DRr/UbdrOhUJexZkyZrsWmcsXdPe
 v3DVnJhpRUaw1AqFeVcd98EMby6eaGn+MR5N9z748Y6JUsaKIvlG0ZIyE
 137FasFY7Fm+ogOeitvxraHK0THKBd4L3uYop5ranDFyl7XQjFOqIPAMo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="475149737"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="475149737"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:17:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="796567451"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="796567451"
Received: from bublath-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.179])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:17:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gareth Yu <gareth.yu@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231103052959.3537-1-gareth.yu@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231103052959.3537-1-gareth.yu@intel.com>
Date: Fri, 03 Nov 2023 11:17:01 +0200
Message-ID: <87r0l719iq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all
 GTs for debugfs
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
Cc: Gareth Yu <gareth.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Nov 2023, Gareth Yu <gareth.yu@intel.com> wrote:
> Print another SSEU information addition to the first one.
>
> Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc : Matt Roper <matthew.d.roper@intel.com>
> Cc : Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Superfluous space between Cc and :.

> Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c   | 13 ++++++++++---
>  drivers/gpu/drm/i915/i915_gpu_error.c |  6 +++++-
>  2 files changed, 15 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index e9b79c2c37d8..b5914a2c0597 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -63,13 +63,16 @@ static int i915_capabilities(struct seq_file *m, void=
 *data)
>  {
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>  	struct drm_printer p =3D drm_seq_file_printer(m);
> +	struct intel_gt *gt;
> +	unsigned int i;

Please just use plain int. Ditto below.

BR,
Jani.

>=20=20
>  	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>=20=20
>  	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>  	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INF=
O(i915), &p);
>  	i915_print_iommu_status(i915, &p);
> -	intel_gt_info_print(&to_gt(i915)->info, &p);
> +	for_each_gt(gt, i915, i)
> +		intel_gt_info_print(&gt->info, &p);
>  	intel_driver_caps_print(&i915->caps, &p);
>=20=20
>  	kernel_param_lock(THIS_MODULE);
> @@ -783,9 +786,13 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
>  static int i915_sseu_status(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> -	struct intel_gt *gt =3D to_gt(i915);
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i)
> +		intel_sseu_status(m, gt);
>=20=20
> -	return intel_sseu_status(m, gt);
> +	return 0;
>  }
>=20=20
>  static int i915_forcewake_open(struct inode *inode, struct file *file)
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915=
/i915_gpu_error.c
> index b4e31e59c799..2adc317af944 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -722,9 +722,13 @@ static void err_print_gt_info(struct drm_i915_error_=
state_buf *m,
>  			      struct intel_gt_coredump *gt)
>  {
>  	struct drm_printer p =3D i915_error_printer(m);
> +	struct drm_i915_private *i915 =3D gt->_gt->i915;
> +	struct intel_gt *gt_n;
> +	unsigned int n;
>=20=20
>  	intel_gt_info_print(&gt->info, &p);
> -	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
> +	for_each_gt(gt_n, i915, n)
> +		intel_sseu_print_topology(gt_n->i915, &gt_n->info.sseu, &p);
>  }
>=20=20
>  static void err_print_gt_display(struct drm_i915_error_state_buf *m,

--=20
Jani Nikula, Intel
