Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1A7A4205
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Aug 2019 06:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707ED6E042;
	Sat, 31 Aug 2019 04:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E7236E042
 for <intel-gfx@lists.freedesktop.org>; Sat, 31 Aug 2019 04:04:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 21:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,449,1559545200"; 
 d="gz'50?scan'50,208,50";a="211147297"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2019 21:04:39 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i3ucx-0000pu-Bf; Sat, 31 Aug 2019 12:04:39 +0800
Date: Sat, 31 Aug 2019 12:04:06 +0800
From: kbuild test robot <lkp@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <201908311135.tZUy72Nd%lkp@intel.com>
References: <20190830144726.18291-9-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qfufl36dg74afwai"
Content-Disposition: inline
In-Reply-To: <20190830144726.18291-9-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH v12 08/11] drm/i915/perf: execute OA
 configuration from command stream
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--qfufl36dg74afwai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lionel,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3-rc6 next-20190830]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-Vulkan-performance-query-support/20190831-033234
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-h002-201934 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/i915_perf.c: In function 'i915_oa_stream_init':
>> drivers/gpu/drm/i915/i915_perf.c:2695:3: error: ignoring return value of 'i915_active_request_retire', declared with attribute warn_unused_result [-Werror=unused-result]
      i915_active_request_retire(&stream->active_config_rq,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            &stream->config_mutex);
            ~~~~~~~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors

vim +/i915_active_request_retire +2695 drivers/gpu/drm/i915/i915_perf.c

  2553	
  2554	/**
  2555	 * i915_oa_stream_init - validate combined props for OA stream and init
  2556	 * @stream: An i915 perf stream
  2557	 * @param: The open parameters passed to `DRM_I915_PERF_OPEN`
  2558	 * @props: The property state that configures stream (individually validated)
  2559	 *
  2560	 * While read_properties_unlocked() validates properties in isolation it
  2561	 * doesn't ensure that the combination necessarily makes sense.
  2562	 *
  2563	 * At this point it has been determined that userspace wants a stream of
  2564	 * OA metrics, but still we need to further validate the combined
  2565	 * properties are OK.
  2566	 *
  2567	 * If the configuration makes sense then we can allocate memory for
  2568	 * a circular OA buffer and apply the requested metric set configuration.
  2569	 *
  2570	 * Returns: zero on success or a negative error code.
  2571	 */
  2572	static int i915_oa_stream_init(struct i915_perf_stream *stream,
  2573				       struct drm_i915_perf_open_param *param,
  2574				       struct perf_open_properties *props)
  2575	{
  2576		struct drm_i915_private *dev_priv = stream->dev_priv;
  2577		int format_size;
  2578		int ret;
  2579	
  2580		/* If the sysfs metrics/ directory wasn't registered for some
  2581		 * reason then don't let userspace try their luck with config
  2582		 * IDs
  2583		 */
  2584		if (!dev_priv->perf.metrics_kobj) {
  2585			DRM_DEBUG("OA metrics weren't advertised via sysfs\n");
  2586			return -EINVAL;
  2587		}
  2588	
  2589		if (!(props->sample_flags & SAMPLE_OA_REPORT)) {
  2590			DRM_DEBUG("Only OA report sampling supported\n");
  2591			return -EINVAL;
  2592		}
  2593	
  2594		if (!dev_priv->perf.ops.enable_metric_set) {
  2595			DRM_DEBUG("OA unit not supported\n");
  2596			return -ENODEV;
  2597		}
  2598	
  2599		/* To avoid the complexity of having to accurately filter
  2600		 * counter reports and marshal to the appropriate client
  2601		 * we currently only allow exclusive access
  2602		 */
  2603		if (dev_priv->perf.exclusive_stream) {
  2604			DRM_DEBUG("OA unit already in use\n");
  2605			return -EBUSY;
  2606		}
  2607	
  2608		if (!props->oa_format) {
  2609			DRM_DEBUG("OA report format not specified\n");
  2610			return -EINVAL;
  2611		}
  2612	
  2613		mutex_init(&stream->config_mutex);
  2614	
  2615		stream->sample_size = sizeof(struct drm_i915_perf_record_header);
  2616	
  2617		format_size = dev_priv->perf.oa_formats[props->oa_format].size;
  2618	
  2619		stream->engine = props->engine;
  2620	
  2621		mutex_init(&stream->config_mutex);
  2622		INIT_ACTIVE_REQUEST(&stream->active_config_rq,
  2623				    &stream->config_mutex);
  2624	
  2625		stream->sample_flags |= SAMPLE_OA_REPORT;
  2626		stream->sample_size += format_size;
  2627	
  2628		stream->oa_buffer.format_size = format_size;
  2629		if (WARN_ON(stream->oa_buffer.format_size == 0))
  2630			return -EINVAL;
  2631	
  2632		stream->oa_buffer.format =
  2633			dev_priv->perf.oa_formats[props->oa_format].format;
  2634	
  2635		stream->periodic = props->oa_periodic;
  2636		if (stream->periodic)
  2637			stream->period_exponent = props->oa_period_exponent;
  2638	
  2639		if (stream->ctx) {
  2640			ret = oa_get_render_ctx_id(stream);
  2641			if (ret) {
  2642				DRM_DEBUG("Invalid context id to filter with\n");
  2643				return ret;
  2644			}
  2645		}
  2646	
  2647		ret = alloc_noa_wait(stream);
  2648		if (ret) {
  2649			DRM_DEBUG("Unable to allocate NOA wait batch buffer\n");
  2650			goto err_noa_wait_alloc;
  2651		}
  2652	
  2653		ret = i915_perf_get_oa_config_and_bo(stream, props->metrics_set,
  2654						     &stream->oa_config,
  2655						     &stream->initial_oa_config_bo);
  2656		if (ret) {
  2657			DRM_DEBUG("Invalid OA config id=%i\n", props->metrics_set);
  2658			goto err_config;
  2659		}
  2660	
  2661		/* PRM - observability performance counters:
  2662		 *
  2663		 *   OACONTROL, performance counter enable, note:
  2664		 *
  2665		 *   "When this bit is set, in order to have coherent counts,
  2666		 *   RC6 power state and trunk clock gating must be disabled.
  2667		 *   This can be achieved by programming MMIO registers as
  2668		 *   0xA094=0 and 0xA090[31]=1"
  2669		 *
  2670		 *   In our case we are expecting that taking pm + FORCEWAKE
  2671		 *   references will effectively disable RC6.
  2672		 */
  2673		stream->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
  2674		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
  2675	
  2676		ret = alloc_oa_buffer(stream);
  2677		if (ret)
  2678			goto err_oa_buf_alloc;
  2679	
  2680		ret = i915_mutex_lock_interruptible(&dev_priv->drm);
  2681		if (ret)
  2682			goto err_lock;
  2683	
  2684		stream->ops = &i915_oa_stream_ops;
  2685		dev_priv->perf.exclusive_stream = stream;
  2686	
  2687		mutex_lock(&stream->config_mutex);
  2688		ret = dev_priv->perf.ops.enable_metric_set(stream);
  2689		if (ret) {
  2690			DRM_DEBUG("Unable to enable metric set\n");
  2691			/*
  2692			 * Ignore the return value since we already have an error from
  2693			 * the enable vfunc.
  2694			 */
> 2695			i915_active_request_retire(&stream->active_config_rq,
  2696						   &stream->config_mutex);
  2697		} else {
  2698			ret = i915_active_request_retire(&stream->active_config_rq,
  2699							 &stream->config_mutex);
  2700		}
  2701	
  2702		mutex_unlock(&stream->config_mutex);
  2703		mutex_unlock(&dev_priv->drm.struct_mutex);
  2704	
  2705		i915_gem_object_put(stream->initial_oa_config_bo);
  2706		stream->initial_oa_config_bo = NULL;
  2707		if (ret)
  2708			goto err_enable;
  2709	
  2710		DRM_DEBUG("opening stream oa config uuid=%s\n", stream->oa_config->uuid);
  2711	
  2712		hrtimer_init(&stream->poll_check_timer,
  2713			     CLOCK_MONOTONIC, HRTIMER_MODE_REL);
  2714		stream->poll_check_timer.function = oa_poll_check_timer_cb;
  2715		init_waitqueue_head(&stream->poll_wq);
  2716		spin_lock_init(&stream->oa_buffer.ptr_lock);
  2717	
  2718		return 0;
  2719	
  2720	err_enable:
  2721		mutex_lock(&dev_priv->drm.struct_mutex);
  2722		mutex_lock(&stream->config_mutex);
  2723		dev_priv->perf.ops.disable_metric_set(stream);
  2724		mutex_unlock(&stream->config_mutex);
  2725		dev_priv->perf.exclusive_stream = NULL;
  2726		mutex_unlock(&dev_priv->drm.struct_mutex);
  2727	
  2728	err_lock:
  2729		free_oa_buffer(stream);
  2730	
  2731	err_oa_buf_alloc:
  2732		i915_oa_config_put(stream->oa_config);
  2733	
  2734		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
  2735		intel_runtime_pm_put(&dev_priv->runtime_pm, stream->wakeref);
  2736	
  2737		free_oa_configs(stream);
  2738	
  2739		i915_gem_object_put(stream->initial_oa_config_bo);
  2740	
  2741	err_config:
  2742		free_noa_wait(stream);
  2743	
  2744	err_noa_wait_alloc:
  2745		if (stream->ctx)
  2746			oa_put_render_ctx_id(stream);
  2747	
  2748		return ret;
  2749	}
  2750	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--qfufl36dg74afwai
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2RYPAgA=

--qfufl36dg74afwai
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--qfufl36dg74afwai--
