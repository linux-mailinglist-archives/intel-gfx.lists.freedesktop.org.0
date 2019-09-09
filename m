Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B995BAD4A5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 10:18:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E4D89938;
	Mon,  9 Sep 2019 08:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F8489938
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 08:17:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 01:17:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; 
 d="gz'50?scan'50,208,50";a="196122250"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 09 Sep 2019 01:17:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i7Ery-0008Rf-NA; Mon, 09 Sep 2019 16:17:54 +0800
Date: Mon, 9 Sep 2019 16:17:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <201909091524.f3sbaNv5%lkp@intel.com>
References: <20190906093256.26198-11-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tmp4agoaejk5jvvh"
Content-Disposition: inline
In-Reply-To: <20190906093256.26198-11-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH v15 10/13] drm/i915/perf: execute OA
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


--tmp4agoaejk5jvvh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lionel,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.3-rc8 next-20190904]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-Vulkan-performance-query-support/20190907-052009
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-f004-201936 (attached as .config)
compiler: gcc-7 (Debian 7.4.0-11) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/i915_perf.c: In function 'i915_oa_stream_init':
>> drivers/gpu/drm/i915/i915_perf.c:2697:3: error: ignoring return value of 'i915_active_request_retire', declared with attribute warn_unused_result [-Werror=unused-result]
      i915_active_request_retire(&stream->active_config_rq, 0,
      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
            &stream->config_mutex);
            ~~~~~~~~~~~~~~~~~~~~~~
   cc1: all warnings being treated as errors

vim +/i915_active_request_retire +2697 drivers/gpu/drm/i915/i915_perf.c

  2556	
  2557	/**
  2558	 * i915_oa_stream_init - validate combined props for OA stream and init
  2559	 * @stream: An i915 perf stream
  2560	 * @param: The open parameters passed to `DRM_I915_PERF_OPEN`
  2561	 * @props: The property state that configures stream (individually validated)
  2562	 *
  2563	 * While read_properties_unlocked() validates properties in isolation it
  2564	 * doesn't ensure that the combination necessarily makes sense.
  2565	 *
  2566	 * At this point it has been determined that userspace wants a stream of
  2567	 * OA metrics, but still we need to further validate the combined
  2568	 * properties are OK.
  2569	 *
  2570	 * If the configuration makes sense then we can allocate memory for
  2571	 * a circular OA buffer and apply the requested metric set configuration.
  2572	 *
  2573	 * Returns: zero on success or a negative error code.
  2574	 */
  2575	static int i915_oa_stream_init(struct i915_perf_stream *stream,
  2576				       struct drm_i915_perf_open_param *param,
  2577				       struct perf_open_properties *props)
  2578	{
  2579		struct drm_i915_private *dev_priv = stream->dev_priv;
  2580		int format_size;
  2581		int ret;
  2582	
  2583		/* If the sysfs metrics/ directory wasn't registered for some
  2584		 * reason then don't let userspace try their luck with config
  2585		 * IDs
  2586		 */
  2587		if (!dev_priv->perf.metrics_kobj) {
  2588			DRM_DEBUG("OA metrics weren't advertised via sysfs\n");
  2589			return -EINVAL;
  2590		}
  2591	
  2592		if (!(props->sample_flags & SAMPLE_OA_REPORT)) {
  2593			DRM_DEBUG("Only OA report sampling supported\n");
  2594			return -EINVAL;
  2595		}
  2596	
  2597		if (!dev_priv->perf.ops.enable_metric_set) {
  2598			DRM_DEBUG("OA unit not supported\n");
  2599			return -ENODEV;
  2600		}
  2601	
  2602		/* To avoid the complexity of having to accurately filter
  2603		 * counter reports and marshal to the appropriate client
  2604		 * we currently only allow exclusive access
  2605		 */
  2606		if (dev_priv->perf.exclusive_stream) {
  2607			DRM_DEBUG("OA unit already in use\n");
  2608			return -EBUSY;
  2609		}
  2610	
  2611		if (!props->oa_format) {
  2612			DRM_DEBUG("OA report format not specified\n");
  2613			return -EINVAL;
  2614		}
  2615	
  2616		mutex_init(&stream->config_mutex);
  2617	
  2618		stream->sample_size = sizeof(struct drm_i915_perf_record_header);
  2619	
  2620		format_size = dev_priv->perf.oa_formats[props->oa_format].size;
  2621	
  2622		stream->engine = props->engine;
  2623	
  2624		INIT_ACTIVE_REQUEST(&stream->active_config_rq,
  2625				    &stream->config_mutex);
  2626	
  2627		stream->sample_flags |= SAMPLE_OA_REPORT;
  2628		stream->sample_size += format_size;
  2629	
  2630		stream->oa_buffer.format_size = format_size;
  2631		if (WARN_ON(stream->oa_buffer.format_size == 0))
  2632			return -EINVAL;
  2633	
  2634		stream->oa_buffer.format =
  2635			dev_priv->perf.oa_formats[props->oa_format].format;
  2636	
  2637		stream->periodic = props->oa_periodic;
  2638		if (stream->periodic)
  2639			stream->period_exponent = props->oa_period_exponent;
  2640	
  2641		if (stream->ctx) {
  2642			ret = oa_get_render_ctx_id(stream);
  2643			if (ret) {
  2644				DRM_DEBUG("Invalid context id to filter with\n");
  2645				return ret;
  2646			}
  2647		}
  2648	
  2649		ret = alloc_noa_wait(stream);
  2650		if (ret) {
  2651			DRM_DEBUG("Unable to allocate NOA wait batch buffer\n");
  2652			goto err_noa_wait_alloc;
  2653		}
  2654	
  2655		ret = i915_perf_get_oa_config_and_bo(stream, props->metrics_set,
  2656						     &stream->oa_config,
  2657						     &stream->initial_oa_config_bo);
  2658		if (ret) {
  2659			DRM_DEBUG("Invalid OA config id=%i\n", props->metrics_set);
  2660			goto err_config;
  2661		}
  2662	
  2663		/* PRM - observability performance counters:
  2664		 *
  2665		 *   OACONTROL, performance counter enable, note:
  2666		 *
  2667		 *   "When this bit is set, in order to have coherent counts,
  2668		 *   RC6 power state and trunk clock gating must be disabled.
  2669		 *   This can be achieved by programming MMIO registers as
  2670		 *   0xA094=0 and 0xA090[31]=1"
  2671		 *
  2672		 *   In our case we are expecting that taking pm + FORCEWAKE
  2673		 *   references will effectively disable RC6.
  2674		 */
  2675		stream->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
  2676		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
  2677	
  2678		ret = alloc_oa_buffer(stream);
  2679		if (ret)
  2680			goto err_oa_buf_alloc;
  2681	
  2682		ret = i915_mutex_lock_interruptible(&dev_priv->drm);
  2683		if (ret)
  2684			goto err_lock;
  2685	
  2686		stream->ops = &i915_oa_stream_ops;
  2687		dev_priv->perf.exclusive_stream = stream;
  2688	
  2689		mutex_lock(&stream->config_mutex);
  2690		ret = dev_priv->perf.ops.enable_metric_set(stream);
  2691		if (ret) {
  2692			DRM_DEBUG("Unable to enable metric set\n");
  2693			/*
  2694			 * Ignore the return value since we already have an error from
  2695			 * the enable vfunc.
  2696			 */
> 2697			i915_active_request_retire(&stream->active_config_rq, 0,
  2698						   &stream->config_mutex);
  2699		} else {
  2700			ret = i915_active_request_retire(&stream->active_config_rq, 0,
  2701							 &stream->config_mutex);
  2702		}
  2703	
  2704		mutex_unlock(&stream->config_mutex);
  2705		mutex_unlock(&dev_priv->drm.struct_mutex);
  2706	
  2707		i915_gem_object_put(stream->initial_oa_config_bo);
  2708		stream->initial_oa_config_bo = NULL;
  2709		if (ret)
  2710			goto err_enable;
  2711	
  2712		DRM_DEBUG("opening stream oa config uuid=%s\n", stream->oa_config->uuid);
  2713	
  2714		hrtimer_init(&stream->poll_check_timer,
  2715			     CLOCK_MONOTONIC, HRTIMER_MODE_REL);
  2716		stream->poll_check_timer.function = oa_poll_check_timer_cb;
  2717		init_waitqueue_head(&stream->poll_wq);
  2718		spin_lock_init(&stream->oa_buffer.ptr_lock);
  2719	
  2720		return 0;
  2721	
  2722	err_enable:
  2723		mutex_lock(&dev_priv->drm.struct_mutex);
  2724		mutex_lock(&stream->config_mutex);
  2725		dev_priv->perf.ops.disable_metric_set(stream);
  2726		mutex_unlock(&stream->config_mutex);
  2727		dev_priv->perf.exclusive_stream = NULL;
  2728		mutex_unlock(&dev_priv->drm.struct_mutex);
  2729	
  2730	err_lock:
  2731		free_oa_buffer(stream);
  2732	
  2733	err_oa_buf_alloc:
  2734		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
  2735		intel_runtime_pm_put(&dev_priv->runtime_pm, stream->wakeref);
  2736	
  2737		free_oa_configs(stream);
  2738	
  2739		if (stream->initial_oa_config_bo)
  2740			i915_gem_object_put(stream->initial_oa_config_bo);
  2741	
  2742	err_config:
  2743		free_noa_wait(stream);
  2744	
  2745	err_noa_wait_alloc:
  2746		if (stream->ctx)
  2747			oa_put_render_ctx_id(stream);
  2748	
  2749		return ret;
  2750	}
  2751	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--tmp4agoaejk5jvvh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
5bx3URvslZOpTc1Y3LNx0bp0UG9oDTbq+NE5yi7Oe+N84d/4nVvk6OsvWYx1rJvIMNIuiqxF
kJni7fm9EtQVOHEbgjBITvatk2DumprpAo4Xd2xQvVe3iXnjl12e/CPm5oC/X5LY2r54AKkQ
BNtovNwPB0WR0BYWZa1qSXZAl4AFUdYmeDXx+sfjp+vd7vXp85ersUyx+V/UB9bOSTVE+P0E
X4kh+oipjPfljqv5WaJpn7CWjWy3WWe6XlhCYOUjaeARZ9YMcFZ6yMddHDhnf9xf9NEAelvT
Vf4Gjcspqg/q1djQOFQfHQPIdEX2j8SanYvGQ7aOh5/4z7jnY57SuJ59JBU400xDn1XadTxN
M2W7xiPZJeKaNtL1Vg2NNJSJ2n2zcR2DTKswYN0hH7/Pmm6SnaNAvl1RAN+QT9I3cIqA7qrt
w0lNK++q5Ewwu0E+1tq0OWg7qnKgBmG/08t4KF2v9y19CNFVgOk4xH4QYQ9wZg7Y03jypYAM
+LJfhxkoCRMT/n1nIm3eJI16xjdDTGQFFgMpiSXyA7umet7Vw5lkOWYzxucXD0+uDYtM3+63
rnobyasaW4VTedD2EpQY+2KdIzknuDxi+5S86vjB2AiPRU7Ly6b96+PX693vP//4AyIH6Wcr
+92Ylhn49VlTZTR+pvogk+SKzedj/LQMqR1LIJNta9nf/M3WOafLKYaCpuzfnhRFy7RqA0jr
5oFllhgAKVlj7AqifkIfKJ4WAGhaAOBp7es2J4eKidaMqP4MeJW644TgbbBjP9AvWTZdkd/8
lteilt+3QqPme7YlzLNRtuIGZrYoKPEoIPMkPc1hylZqyVaI6fxQTRoUJqg+mzEHdOT8OccD
M8zBoTe45qjVsimxrT9wP7Cdrad4nZCpxthRIjjD32yZYQ2n1oyUtOu0ErBmQdUAgNhQ1Ljz
PW7oAtMBd44HB9UHdSzBm0Me+E5LnLoZv6nEUxExENUZKMIiKkbMK9nwCbxCS8fjWbXkrFcc
SBYbnhnF8uMAmpvMRaINJgBhFuQxUy9iLdU0adnkrSG2rCX0Bgxj7gbcUl5++qs0miDpBmkr
8F6TCS7NCggGYvfgypZKC8ky+xioFYBRxtSSLWCHAfngneJSXxUO/jShlOHIFxJb8+IXVjBr
iD524M1WRkDWwqlzuqe2NIFxmCL4kh2ceuARlGEg5zWTxsQyHk8PrSr9fLEQyykAieknqSWe
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

--tmp4agoaejk5jvvh
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--tmp4agoaejk5jvvh--
