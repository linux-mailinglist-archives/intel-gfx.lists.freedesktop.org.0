Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35839A82313
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 13:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3972010E847;
	Wed,  9 Apr 2025 11:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jVfcSeHw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 638BC10E845;
 Wed,  9 Apr 2025 11:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744196796; x=1775732796;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+MXrckIZbAc9JP53Ust0xYzdoqRKc2gKtegeeCJaovw=;
 b=jVfcSeHwDORTjsjR27B5EFrcFZrZcvj1yEFSV1d0BwuvWHcDzTWMiXYO
 DwscXdVGK26Y+Piy5zrhCLau4G1tiA7pIgd0YpYYWIjlIg+xxGtgMHWAX
 gkqn4Fw9eqFSxhL5/7DadwNEToBBRAq16SklmfUcBah6i08+28iKokfNx
 zLe44JHYP+hZC2jw84qiIxeNGXeqWMWtrOsJ6GBQDtwwOeZAZNFOfMkPg
 CF5toUy7Ij9AMoX5FBFT2lk36IoEXpMyVnA5xUt9l+b8HkihnekTlubit
 UUaiZaxC+ekDocExtKEcVK9crJR6Mib78eBS+l4+Y+ojk+rN/roIkm1vn Q==;
X-CSE-ConnectionGUID: wMF3/T0rReS1xGmNesXqrw==
X-CSE-MsgGUID: E8XxedbZSwaa/PSYW1uOng==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45789291"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45789291"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:06:34 -0700
X-CSE-ConnectionGUID: RNJ9/O/vSaCVaZx9KQ2kIw==
X-CSE-MsgGUID: I9DMBeHGRvagNZMg+OYJJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128547669"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Apr 2025 04:06:32 -0700
Date: Wed, 9 Apr 2025 13:06:29 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Riana Tauro <riana.tauro@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
Message-ID: <20250409110629.pbnp4dudv3dhnb5t@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Riana Tauro <riana.tauro@intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
 <20250407234406.4084642-3-vinay.belgaumkar@intel.com>
 <a4046beb-7973-49b1-b7e7-ea407a007f3e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a4046beb-7973-49b1-b7e7-ea407a007f3e@intel.com>
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

Hi,
On 2025-04-09 at 15:28:59 +0530, Riana Tauro wrote:
> Hi Vinay
> 
> On 4/8/2025 5:14 AM, Vinay Belgaumkar wrote:
> > Add a basic test that uses PMU to read GT actual and requested
> > frequencies while running a workload.
> > 
> > v2: Rebase and comments (Riana)
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Riana Tauro <riana.tauro@intel.com>
> > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > ---
> >   tests/intel/xe_pmu.c | 128 ++++++++++++++++++++++++++++++++++++++++++-
> >   1 file changed, 127 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
> > index 175bbf374..fbac9c798 100644
> > --- a/tests/intel/xe_pmu.c
> > +++ b/tests/intel/xe_pmu.c
> > @@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
> >   	close(pmu_fd);
> >   }
> > +/**
> > + * SUBTEST: gt-frequency
> > + * Description: Validate we can collect accurate frequency PMU stats
> > + *		while running a workload.
> > + */
> > +static void test_gt_frequency(int fd, struct drm_xe_engine_class_instance *eci)
> > +{
> > +	struct xe_cork *cork = NULL;
> > +	uint64_t end[2], start[2];
> > +	unsigned long config_rq_freq, config_act_freq;
> > +	double min[2], max[2];
> > +	uint32_t gt = eci->gt_id;
> > +	uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
> > +	uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
> > +	uint32_t vm;
> > +	int pmu_fd[2];
> > +
> > +	config_rq_freq = get_event_config(gt, NULL, "gt-requested-frequency");
> > +	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
> > +
> > +	config_act_freq = get_event_config(gt, NULL, "gt-actual-frequency");
> > +	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
> > +
> > +	vm = xe_vm_create(fd, 0, 0);
> > +
> > +	cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
> > +	xe_cork_sync_start(fd, cork);
> > +
> > +	/*
> > +	 * Set GPU to min frequency and read PMU counters.
> > +	 */
> > +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
> > +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
> > +
> > +	pmu_read_multi(pmu_fd[0], 2, start);
> > +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> > +	pmu_read_multi(pmu_fd[0], 2, end);
> > +
> > +	min[0] = (end[0] - start[0]);
> > +	min[1] = (end[1] - start[1]);
> > +
> > +	/*
> > +	 * Set GPU to max frequency and read PMU counters.
> > +	 */
> > +	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
> > +	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
> > +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
> > +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
> > +
> > +	pmu_read_multi(pmu_fd[0], 2, start);
> > +	usleep(SLEEP_DURATION * USEC_PER_SEC);
> > +	pmu_read_multi(pmu_fd[0], 2, end);
> > +
> > +	max[0] = (end[0] - start[0]);
> > +	max[1] = (end[1] - start[1]);
> > +
> > +	xe_cork_sync_end(fd, cork);
> > +
> > +	/*
> > +	 * Restore min/max.
> > +	 */
> > +	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
> > +	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
> > +
> > +	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
> > +		 min[0], min[1]);
> > +	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
> > +		 max[0], max[1]);
> > +
> > +	close(pmu_fd[0]);
> > +	close(pmu_fd[1]);
> > +
> > +	if (cork)
> > +		xe_cork_destroy(fd, cork);
> > +
> > +	xe_vm_destroy(fd, vm);
> > +
> > +	close(pmu_fd[0]);
> > +	close(pmu_fd[1]);
> > +
> > +	assert_within_epsilon(min[0], orig_min, tolerance);
> > +	/*
> > +	 * On thermally throttled devices we cannot be sure maximum frequency
> > +	 * can be reached so use larger tolerance downwards.
> > +	 */
> > +	assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
> > +}
> > +
> >   static unsigned int enable_and_provision_vfs(int fd)
> >   {
> >   	unsigned int gt, num_vfs;
> > @@ -429,8 +517,9 @@ static void disable_vfs(int fd)
> >   igt_main
> >   {
> > -	int fd, gt;
> > +	int fd, gt, num_gts;
> >   	struct drm_xe_engine_class_instance *eci;
> > +	uint32_t *stash_min, *stash_max;
> >   	igt_fixture {
> >   		fd = drm_open_driver(DRIVER_XE);
> > @@ -482,6 +571,43 @@ igt_main
> >   			disable_vfs(fd);
> >   	}
> > +	igt_subtest_group {

Add here:
	bool has_freq0_node, needs_restore = false;

> > +		igt_fixture {
> > +			igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));

Move this require into subtest. If you need it here then remember its
value for later use:
	has_freq0_node = xe_sysfs_gt_has_node(fd, 0, "freq0");

> > +			num_gts = xe_number_gt(fd);
> > +

So here start with if:

	if (has_freq0_node) {

> > +			stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> > +			stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
> > +
> > +			xe_for_each_gt(fd, gt) {
> > +				stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
> > +				stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
> This can be moved inside the igt_subtest with local variables since it's
> only one test. The subtest group is executed for all the other tests too
> 
> Thanks
> Riana> +			}
> > +		}
> > +
> > +		igt_describe("Validate PMU GT freq measured is within the tolerance");
> > +		igt_subtest_with_dynamic("gt-frequency") {

needs_restore = true;

> > +			xe_for_each_gt(fd, gt) {
> > +				igt_dynamic_f("gt%u", gt)
> > +				xe_for_each_engine(fd, eci) {
> > +					if (gt == eci->gt_id) {
> > +						test_gt_frequency(fd, eci);
> > +						break;
> > +					}
> > +				}
> > +			}
> > +		}
> > +
> > +		igt_fixture {

			if (needs_restore) {
				
> > +			xe_for_each_gt(fd, gt) {
> > +				xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
> > +				xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
> > +			}
> > +			free(stash_min);
> > +			free(stash_max);

			} /* restore */

Regards,
Kamil

> > +		}
> > +	}
> > +
> >   	igt_fixture {
> >   		close(fd);
> >   	}
> 
