Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BEA5FB042
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 12:17:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0379210E2DA;
	Tue, 11 Oct 2022 10:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B4310E2DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 10:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665483467; x=1697019467;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EwfWKYMDQiERDf5jxBU74uhgQSOx8hfLnaqoOJU1P+4=;
 b=CC9HEndsreL4LrwFHcxNYh9U3u24BWeHUEkemukrvaSYwjnW89VS5eQD
 rAtOM5ahVCUrKts3CDe9LG/ixZqZhbMnu4txI3QpsdABjjPYvPnV1rlwY
 B/z9piT2hNOHpp5tcNuOvVn8ab8SvM4UjxITZYZsY/kpSu6kORF6+z+Qg
 oPPI31wgefbxT9EmBTtfxKlRJaaeczmYCW7NvT5iIo/i1AdXiMLa7sICF
 r6nTqPHNcdGBhxfypoqx7hq4U+Lts4VnBKY8l2YLlt6nwO7nWhLj4BkPw
 +DHMmON7PEIc3iOWp3+q1LjLTkkPcV3ZG5w/Xra2lb8FfKdT4szN6e7gN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="390773088"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390773088"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 03:17:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="657297380"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="657297380"
Received: from milawils-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 03:17:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
In-Reply-To: <87h70ay8fr.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <Yz8FHapUF8BD7kkw@intel.com>
 <20221006204844.2831303-1-andrzej.hajda@intel.com>
 <Y0QswEzRwwv9Vops@ashyti-mobl2.lan> <Y0VAyikdFVTl0YhX@ashyti-mobl2.lan>
 <87h70ay8fr.fsf@intel.com>
Date: Tue, 11 Oct 2022 13:17:35 +0300
Message-ID: <87edvey88w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/display: remove drm_device
 aliases
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org,
 Ville Syrjala <ville.syrjala@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 11 Oct 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> On Mon, Oct 10, 2022 at 04:31:28PM +0200, Andi Shyti wrote:
>>> On Thu, Oct 06, 2022 at 10:48:44PM +0200, Andrzej Hajda wrote:
>>> > drm_device pointers are unwelcome.
>>> > 
>>> > Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> 
>>> Acked-by: Andi Shyti <andi.shyti@linux.intel.com>
>>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>>
>> Only this first patch is strictly related to display, I'm taking
>> the series in intel-gt-next. Anyone against?
>
> Absolutely against. That logic is backwards.
>
> drm-intel-gt-next is for stuff that's strictly about gt/gem. Everything
> else, especially stuff touching common code, needs to go through
> drm-intel-next.
>
> There's nothing here that's gt/gem specific.

To elaborate on this, we can do drm-intel-next -> drm-intel-gt-next
cross-merges. Not vice versa.

If you merge code to drm-intel-gt-next that other work in drm-intel-next
depends on, we'll need a drm-intel-gt-next pull request to drm-next and
a backmerge from drm-next to drm-intel-next. And that creates a
dependency outside of drm-intel.git, as well as potentially several
weeks' delay when drm-next is not open for pull requests.

BR,
Jani.


>
>
> BR,
> Jani.
>
>>
>> Andi
>>
>>> To me both versions were good...
>>> 
>>> Jani, Ville, could you please check on this patch?
>>> 
>>> Andi
>>> 
>>> > ---
>>> >  drivers/gpu/drm/i915/display/icl_dsi.c        |  9 ++--
>>> >  drivers/gpu/drm/i915/display/intel_display.c  |  9 ++--
>>> >  .../drm/i915/display/intel_display_debugfs.c  | 51 ++++++++-----------
>>> >  .../drm/i915/display/intel_display_power.c    |  3 +-
>>> >  drivers/gpu/drm/i915/display/intel_dp.c       |  7 ++-
>>> >  drivers/gpu/drm/i915/display/intel_hotplug.c  | 28 +++++-----
>>> >  .../gpu/drm/i915/display/intel_lpe_audio.c    |  5 +-
>>> >  drivers/gpu/drm/i915/display/intel_lvds.c     | 11 ++--
>>> >  drivers/gpu/drm/i915/display/intel_opregion.c |  7 ++-
>>> >  drivers/gpu/drm/i915/display/intel_pipe_crc.c |  9 ++--
>>> >  drivers/gpu/drm/i915/display/intel_psr.c      |  5 +-
>>> >  drivers/gpu/drm/i915/display/intel_tv.c       |  5 +-
>>> >  drivers/gpu/drm/i915/display/vlv_dsi.c        |  9 ++--
>>> >  drivers/gpu/drm/i915/i915_driver.c            | 17 +++----
>>> >  drivers/gpu/drm/i915/i915_irq.c               |  3 +-
>>> >  15 files changed, 74 insertions(+), 104 deletions(-)
>>> > 
>>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > index 47f13750f6fa66..e05e7cd6c4123a 100644
>>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> > @@ -1985,7 +1985,6 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
>>> >  
>>> >  void icl_dsi_init(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_dsi *intel_dsi;
>>> >  	struct intel_encoder *encoder;
>>> >  	struct intel_connector *intel_connector;
>>> > @@ -2010,7 +2009,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>> >  	connector = &intel_connector->base;
>>> >  
>>> >  	/* register DSI encoder with DRM subsystem */
>>> > -	drm_encoder_init(dev, &encoder->base, &gen11_dsi_encoder_funcs,
>>> > +	drm_encoder_init(&dev_priv->drm, &encoder->base, &gen11_dsi_encoder_funcs,
>>> >  			 DRM_MODE_ENCODER_DSI, "DSI %c", port_name(port));
>>> >  
>>> >  	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
>>> > @@ -2034,7 +2033,7 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>> >  	encoder->is_clock_enabled = gen11_dsi_is_clock_enabled;
>>> >  
>>> >  	/* register DSI connector with DRM subsystem */
>>> > -	drm_connector_init(dev, connector, &gen11_dsi_connector_funcs,
>>> > +	drm_connector_init(&dev_priv->drm, connector, &gen11_dsi_connector_funcs,
>>> >  			   DRM_MODE_CONNECTOR_DSI);
>>> >  	drm_connector_helper_add(connector, &gen11_dsi_connector_helper_funcs);
>>> >  	connector->display_info.subpixel_order = SubPixelHorizontalRGB;
>>> > @@ -2045,9 +2044,9 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
>>> >  
>>> >  	intel_bios_init_panel(dev_priv, &intel_connector->panel, NULL, NULL);
>>> >  
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>>> > -	mutex_unlock(&dev->mode_config.mutex);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>>> >  		drm_err(&dev_priv->drm, "DSI fixed mode info missing\n");
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> > index 8c3bd9ba0d7481..67e35a8e3db481 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> > @@ -878,7 +878,6 @@ static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
>>> >  
>>> >  void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_modeset_acquire_ctx *ctx = &dev_priv->reset_ctx;
>>> >  	struct drm_atomic_state *state;
>>> >  	int ret;
>>> > @@ -906,10 +905,10 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
>>> >  	 * Need mode_config.mutex so that we don't
>>> >  	 * trample ongoing ->detect() and whatnot.
>>> >  	 */
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  	drm_modeset_acquire_init(ctx, 0);
>>> >  	while (1) {
>>> > -		ret = drm_modeset_lock_all_ctx(dev, ctx);
>>> > +		ret = drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
>>> >  		if (ret != -EDEADLK)
>>> >  			break;
>>> >  
>>> > @@ -919,7 +918,7 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
>>> >  	 * Disabling the crtcs gracefully seems nicer. Also the
>>> >  	 * g33 docs say we should at least disable all the planes.
>>> >  	 */
>>> > -	state = drm_atomic_helper_duplicate_state(dev, ctx);
>>> > +	state = drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
>>> >  	if (IS_ERR(state)) {
>>> >  		ret = PTR_ERR(state);
>>> >  		drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
>>> > @@ -927,7 +926,7 @@ void intel_display_prepare_reset(struct drm_i915_private *dev_priv)
>>> >  		return;
>>> >  	}
>>> >  
>>> > -	ret = drm_atomic_helper_disable_all(dev, ctx);
>>> > +	ret = drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
>>> >  	if (ret) {
>>> >  		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
>>> >  			ret);
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> > index 372a5b427e4fbd..cfc056a05bbf17 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> > @@ -128,7 +128,6 @@ static int i915_vbt(struct seq_file *m, void *unused)
>>> >  static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_framebuffer *fbdev_fb = NULL;
>>> >  	struct drm_framebuffer *drm_fb;
>>> >  
>>> > @@ -147,8 +146,8 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>>> >  	}
>>> >  #endif
>>> >  
>>> > -	mutex_lock(&dev->mode_config.fb_lock);
>>> > -	drm_for_each_fb(drm_fb, dev) {
>>> > +	mutex_lock(&dev_priv->drm.mode_config.fb_lock);
>>> > +	drm_for_each_fb(drm_fb, &dev_priv->drm) {
>>> >  		struct intel_framebuffer *fb = to_intel_framebuffer(drm_fb);
>>> >  		if (fb == fbdev_fb)
>>> >  			continue;
>>> > @@ -163,7 +162,7 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>>> >  		i915_debugfs_describe_obj(m, intel_fb_obj(&fb->base));
>>> >  		seq_putc(m, '\n');
>>> >  	}
>>> > -	mutex_unlock(&dev->mode_config.fb_lock);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.fb_lock);
>>> >  
>>> >  	return 0;
>>> >  }
>>> > @@ -898,7 +897,6 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>>> >  static int i915_display_info(struct seq_file *m, void *unused)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_crtc *crtc;
>>> >  	struct drm_connector *connector;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> > @@ -906,22 +904,22 @@ static int i915_display_info(struct seq_file *m, void *unused)
>>> >  
>>> >  	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> >  
>>> >  	seq_printf(m, "CRTC info\n");
>>> >  	seq_printf(m, "---------\n");
>>> > -	for_each_intel_crtc(dev, crtc)
>>> > +	for_each_intel_crtc(&dev_priv->drm, crtc)
>>> >  		intel_crtc_info(m, crtc);
>>> >  
>>> >  	seq_printf(m, "\n");
>>> >  	seq_printf(m, "Connector info\n");
>>> >  	seq_printf(m, "--------------\n");
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	drm_for_each_connector_iter(connector, &conn_iter)
>>> >  		intel_connector_info(m, connector);
>>> >  	drm_connector_list_iter_end(&conn_iter);
>>> >  
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  
>>> >  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>>> >  
>>> > @@ -931,10 +929,9 @@ static int i915_display_info(struct seq_file *m, void *unused)
>>> >  static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	int i;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> >  
>>> >  	seq_printf(m, "PLL refclks: non-SSC: %d kHz, SSC: %d kHz\n",
>>> >  		   dev_priv->display.dpll.ref_clks.nssc,
>>> > @@ -979,7 +976,7 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>>> >  		seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
>>> >  			   pll->state.hw_state.mg_pll_tdc_coldst_bias);
>>> >  	}
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  
>>> >  	return 0;
>>> >  }
>>> > @@ -987,14 +984,13 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
>>> >  static int i915_ddb_info(struct seq_file *m, void *unused)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct skl_ddb_entry *entry;
>>> >  	struct intel_crtc *crtc;
>>> >  
>>> >  	if (DISPLAY_VER(dev_priv) < 9)
>>> >  		return -ENODEV;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> >  
>>> >  	seq_printf(m, "%-15s%8s%8s%8s\n", "", "Start", "End", "Size");
>>> >  
>>> > @@ -1018,7 +1014,7 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>>> >  			   entry->end, skl_ddb_entry_size(entry));
>>> >  	}
>>> >  
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  
>>> >  	return 0;
>>> >  }
>>> > @@ -1062,13 +1058,12 @@ static int i915_lpsp_status(struct seq_file *m, void *unused)
>>> >  static int i915_dp_mst_info(struct seq_file *m, void *unused)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_encoder *intel_encoder;
>>> >  	struct intel_digital_port *dig_port;
>>> >  	struct drm_connector *connector;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	drm_for_each_connector_iter(connector, &conn_iter) {
>>> >  		if (connector->connector_type != DRM_MODE_CONNECTOR_DisplayPort)
>>> >  			continue;
>>> > @@ -1155,12 +1150,11 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
>>> >  static int i915_displayport_test_active_show(struct seq_file *m, void *data)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = m->private;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector *connector;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_dp *intel_dp;
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	drm_for_each_connector_iter(connector, &conn_iter) {
>>> >  		struct intel_encoder *encoder;
>>> >  
>>> > @@ -1205,12 +1199,11 @@ static const struct file_operations i915_displayport_test_active_fops = {
>>> >  static int i915_displayport_test_data_show(struct seq_file *m, void *data)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = m->private;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector *connector;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_dp *intel_dp;
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	drm_for_each_connector_iter(connector, &conn_iter) {
>>> >  		struct intel_encoder *encoder;
>>> >  
>>> > @@ -1259,12 +1252,11 @@ DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_data);
>>> >  static int i915_displayport_test_type_show(struct seq_file *m, void *data)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = m->private;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector *connector;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_dp *intel_dp;
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	drm_for_each_connector_iter(connector, &conn_iter) {
>>> >  		struct intel_encoder *encoder;
>>> >  
>>> > @@ -1291,7 +1283,6 @@ DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
>>> >  static void wm_latency_show(struct seq_file *m, const u16 wm[8])
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = m->private;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	int level;
>>> >  	int num_levels;
>>> >  
>>> > @@ -1304,7 +1295,7 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
>>> >  	else
>>> >  		num_levels = ilk_wm_max_level(dev_priv) + 1;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> >  
>>> >  	for (level = 0; level < num_levels; level++) {
>>> >  		unsigned int latency = wm[level];
>>> > @@ -1325,7 +1316,7 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
>>> >  			   level, wm[level], latency / 10, latency % 10);
>>> >  	}
>>> >  
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  }
>>> >  
>>> >  static int pri_wm_latency_show(struct seq_file *m, void *data)
>>> > @@ -1408,7 +1399,6 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
>>> >  {
>>> >  	struct seq_file *m = file->private_data;
>>> >  	struct drm_i915_private *dev_priv = m->private;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	u16 new[8] = { 0 };
>>> >  	int num_levels;
>>> >  	int level;
>>> > @@ -1438,12 +1428,12 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
>>> >  	if (ret != num_levels)
>>> >  		return -EINVAL;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> >  
>>> >  	for (level = 0; level < num_levels; level++)
>>> >  		wm[level] = new[level];
>>> >  
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  
>>> >  	return len;
>>> >  }
>>> > @@ -1528,7 +1518,6 @@ i915_fifo_underrun_reset_write(struct file *filp,
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = filp->private_data;
>>> >  	struct intel_crtc *crtc;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	int ret;
>>> >  	bool reset;
>>> >  
>>> > @@ -1539,7 +1528,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>>> >  	if (!reset)
>>> >  		return cnt;
>>> >  
>>> > -	for_each_intel_crtc(dev, crtc) {
>>> > +	for_each_intel_crtc(&dev_priv->drm, crtc) {
>>> >  		struct drm_crtc_commit *commit;
>>> >  		struct intel_crtc_state *crtc_state;
>>> >  
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> > index 1e608b9e505593..4c1de91e56ff9d 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>>> > @@ -1148,10 +1148,9 @@ static void hsw_assert_cdclk(struct drm_i915_private *dev_priv)
>>> >  
>>> >  static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_crtc *crtc;
>>> >  
>>> > -	for_each_intel_crtc(dev, crtc)
>>> > +	for_each_intel_crtc(&dev_priv->drm, crtc)
>>> >  		I915_STATE_WARN(crtc->active, "CRTC for pipe %c enabled\n",
>>> >  				pipe_name(crtc->pipe));
>>> >  
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> > index 70b06806ec0d90..a060903891b201 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> > @@ -5229,7 +5229,6 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>> >  				     struct intel_connector *intel_connector)
>>> >  {
>>> >  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector *connector = &intel_connector->base;
>>> >  	struct drm_display_mode *fixed_mode;
>>> >  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>>> > @@ -5246,7 +5245,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>> >  	 * with an already powered-on LVDS power sequencer.
>>> >  	 */
>>> >  	if (intel_get_lvds_encoder(dev_priv)) {
>>> > -		drm_WARN_ON(dev,
>>> > +		drm_WARN_ON(&dev_priv->drm,
>>> >  			    !(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
>>> >  		drm_info(&dev_priv->drm,
>>> >  			 "LVDS was detected, not registering eDP\n");
>>> > @@ -5267,7 +5266,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>> >  		goto out_vdd_off;
>>> >  	}
>>> >  
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  	edid = drm_get_edid(connector, &intel_dp->aux.ddc);
>>> >  	if (!edid) {
>>> >  		/* Fallback to EDID from ACPI OpRegion, if any */
>>> > @@ -5305,7 +5304,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>>> >  	if (!intel_panel_preferred_fixed_mode(intel_connector))
>>> >  		intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>>> >  
>>> > -	mutex_unlock(&dev->mode_config.mutex);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>>> >  		drm_info(&dev_priv->drm,
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> > index 352a1b53b63ed6..907ab7526cb478 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>>> > @@ -178,14 +178,13 @@ static bool intel_hpd_irq_storm_detect(struct drm_i915_private *dev_priv,
>>> >  static void
>>> >  intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_connector *connector;
>>> >  	bool hpd_disabled = false;
>>> >  
>>> >  	lockdep_assert_held(&dev_priv->irq_lock);
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	for_each_intel_connector_iter(connector, &conn_iter) {
>>> >  		enum hpd_pin pin;
>>> >  
>>> > @@ -211,7 +210,7 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
>>> >  
>>> >  	/* Enable polling and queue hotplug re-enabling. */
>>> >  	if (hpd_disabled) {
>>> > -		drm_kms_helper_poll_enable(dev);
>>> > +		drm_kms_helper_poll_enable(&dev_priv->drm);
>>> >  		mod_delayed_work(system_wq, &dev_priv->display.hotplug.reenable_work,
>>> >  				 msecs_to_jiffies(HPD_STORM_REENABLE_DELAY));
>>> >  	}
>>> > @@ -222,7 +221,6 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
>>> >  	struct drm_i915_private *dev_priv =
>>> >  		container_of(work, typeof(*dev_priv),
>>> >  			     display.hotplug.reenable_work.work);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_connector *connector;
>>> >  	intel_wakeref_t wakeref;
>>> > @@ -232,7 +230,7 @@ static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
>>> >  
>>> >  	spin_lock_irq(&dev_priv->irq_lock);
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	for_each_intel_connector_iter(connector, &conn_iter) {
>>> >  		pin = intel_connector_hpd_pin(connector);
>>> >  		if (pin == HPD_NONE ||
>>> > @@ -370,14 +368,13 @@ static void i915_hotplug_work_func(struct work_struct *work)
>>> >  	struct drm_i915_private *dev_priv =
>>> >  		container_of(work, struct drm_i915_private,
>>> >  			     display.hotplug.hotplug_work.work);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_connector *connector;
>>> >  	u32 changed = 0, retry = 0;
>>> >  	u32 hpd_event_bits;
>>> >  	u32 hpd_retry_bits;
>>> >  
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
>>> >  
>>> >  	spin_lock_irq(&dev_priv->irq_lock);
>>> > @@ -392,7 +389,7 @@ static void i915_hotplug_work_func(struct work_struct *work)
>>> >  
>>> >  	spin_unlock_irq(&dev_priv->irq_lock);
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	for_each_intel_connector_iter(connector, &conn_iter) {
>>> >  		enum hpd_pin pin;
>>> >  		u32 hpd_bit;
>>> > @@ -429,10 +426,10 @@ static void i915_hotplug_work_func(struct work_struct *work)
>>> >  		}
>>> >  	}
>>> >  	drm_connector_list_iter_end(&conn_iter);
>>> > -	mutex_unlock(&dev->mode_config.mutex);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	if (changed)
>>> > -		drm_kms_helper_hotplug_event(dev);
>>> > +		drm_kms_helper_hotplug_event(&dev_priv->drm);
>>> >  
>>> >  	/* Remove shared HPD pins that have changed */
>>> >  	retry &= ~changed;
>>> > @@ -615,16 +612,15 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
>>> >  	struct drm_i915_private *dev_priv =
>>> >  		container_of(work, struct drm_i915_private,
>>> >  			     display.hotplug.poll_init_work);
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct intel_connector *connector;
>>> >  	bool enabled;
>>> >  
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	enabled = READ_ONCE(dev_priv->display.hotplug.poll_enabled);
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	for_each_intel_connector_iter(connector, &conn_iter) {
>>> >  		enum hpd_pin pin;
>>> >  
>>> > @@ -641,16 +637,16 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
>>> >  	drm_connector_list_iter_end(&conn_iter);
>>> >  
>>> >  	if (enabled)
>>> > -		drm_kms_helper_poll_enable(dev);
>>> > +		drm_kms_helper_poll_enable(&dev_priv->drm);
>>> >  
>>> > -	mutex_unlock(&dev->mode_config.mutex);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	/*
>>> >  	 * We might have missed any hotplugs that happened while we were
>>> >  	 * in the middle of disabling polling
>>> >  	 */
>>> >  	if (!enabled)
>>> > -		drm_helper_hpd_irq_event(dev);
>>> > +		drm_helper_hpd_irq_event(&dev_priv->drm);
>>> >  }
>>> >  
>>> >  /**
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>>> > index dca6003ccac80f..6a7ac60e4f7667 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>>> > @@ -80,8 +80,7 @@
>>> >  static struct platform_device *
>>> >  lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> > -	struct pci_dev *pdev = to_pci_dev(dev->dev);
>>> > +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>>> >  	struct platform_device_info pinfo = {};
>>> >  	struct resource *rsc;
>>> >  	struct platform_device *platdev;
>>> > @@ -108,7 +107,7 @@ lpe_audio_platdev_create(struct drm_i915_private *dev_priv)
>>> >  	rsc[1].flags    = IORESOURCE_MEM;
>>> >  	rsc[1].name     = "hdmi-lpe-audio-mmio";
>>> >  
>>> > -	pinfo.parent = dev->dev;
>>> > +	pinfo.parent = dev_priv->drm.dev;
>>> >  	pinfo.name = "hdmi-lpe-audio";
>>> >  	pinfo.id = -1;
>>> >  	pinfo.res = rsc;
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> > index e97e24f690a9f8..246787bbf5ef0a 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>>> > @@ -828,7 +828,6 @@ static void intel_lvds_add_properties(struct drm_connector *connector)
>>> >   */
>>> >  void intel_lvds_init(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_lvds_encoder *lvds_encoder;
>>> >  	struct intel_encoder *intel_encoder;
>>> >  	struct intel_connector *intel_connector;
>>> > @@ -841,7 +840,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>> >  
>>> >  	/* Skip init on machines we know falsely report LVDS */
>>> >  	if (dmi_check_system(intel_no_lvds)) {
>>> > -		drm_WARN(dev, !dev_priv->display.vbt.int_lvds_support,
>>> > +		drm_WARN(&dev_priv->drm, !dev_priv->display.vbt.int_lvds_support,
>>> >  			 "Useless DMI match. Internal LVDS support disabled by VBT\n");
>>> >  		return;
>>> >  	}
>>> > @@ -890,10 +889,10 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>> >  	intel_encoder = &lvds_encoder->base;
>>> >  	encoder = &intel_encoder->base;
>>> >  	connector = &intel_connector->base;
>>> > -	drm_connector_init(dev, &intel_connector->base, &intel_lvds_connector_funcs,
>>> > +	drm_connector_init(&dev_priv->drm, &intel_connector->base, &intel_lvds_connector_funcs,
>>> >  			   DRM_MODE_CONNECTOR_LVDS);
>>> >  
>>> > -	drm_encoder_init(dev, &intel_encoder->base, &intel_lvds_enc_funcs,
>>> > +	drm_encoder_init(&dev_priv->drm, &intel_encoder->base, &intel_lvds_enc_funcs,
>>> >  			 DRM_MODE_ENCODER_LVDS, "LVDS");
>>> >  
>>> >  	intel_encoder->enable = intel_enable_lvds;
>>> > @@ -944,7 +943,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>> >  	 * Attempt to get the fixed panel mode from DDC.  Assume that the
>>> >  	 * preferred mode is the right one.
>>> >  	 */
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC)
>>> >  		edid = drm_get_edid_switcheroo(connector,
>>> >  				    intel_gmbus_get_adapter(dev_priv, pin));
>>> > @@ -982,7 +981,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>> >  	if (!intel_panel_preferred_fixed_mode(intel_connector))
>>> >  		intel_panel_add_encoder_fixed_mode(intel_connector, intel_encoder);
>>> >  
>>> > -	mutex_unlock(&dev->mode_config.mutex);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	/* If we still don't have a mode after all that, give up. */
>>> >  	if (!intel_panel_preferred_fixed_mode(intel_connector))
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>>> > index caa07ef34f21ef..e0184745632c07 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>>> > @@ -463,7 +463,6 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>>> >  	struct intel_connector *connector;
>>> >  	struct drm_connector_list_iter conn_iter;
>>> >  	struct opregion_asle *asle = dev_priv->display.opregion.asle;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  
>>> >  	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
>>> >  
>>> > @@ -480,7 +479,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>>> >  	if (bclp > 255)
>>> >  		return ASLC_BACKLIGHT_FAILED;
>>> >  
>>> > -	drm_modeset_lock(&dev->mode_config.connection_mutex, NULL);
>>> > +	drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex, NULL);
>>> >  
>>> >  	/*
>>> >  	 * Update backlight on all connectors that support backlight (usually
>>> > @@ -488,13 +487,13 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>>> >  	 */
>>> >  	drm_dbg_kms(&dev_priv->drm, "updating opregion backlight %d/255\n",
>>> >  		    bclp);
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	for_each_intel_connector_iter(connector, &conn_iter)
>>> >  		intel_backlight_set_acpi(connector->base.state, bclp, 255);
>>> >  	drm_connector_list_iter_end(&conn_iter);
>>> >  	asle->cblv = DIV_ROUND_UP(bclp * 100, 255) | ASLE_CBLV_VALID;
>>> >  
>>> > -	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>>> > +	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
>>> >  
>>> >  
>>> >  	return 0;
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
>>> > index 8ac263f471bee1..1c74388c60d7bd 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
>>> > @@ -75,7 +75,6 @@ static int i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
>>> >  				     enum pipe pipe,
>>> >  				     enum intel_pipe_crc_source *source)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_encoder *encoder;
>>> >  	struct intel_crtc *crtc;
>>> >  	struct intel_digital_port *dig_port;
>>> > @@ -83,8 +82,8 @@ static int i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
>>> >  
>>> >  	*source = INTEL_PIPE_CRC_SOURCE_PIPE;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > -	for_each_intel_encoder(dev, encoder) {
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> > +	for_each_intel_encoder(&dev_priv->drm, encoder) {
>>> >  		if (!encoder->base.crtc)
>>> >  			continue;
>>> >  
>>> > @@ -111,7 +110,7 @@ static int i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
>>> >  				*source = INTEL_PIPE_CRC_SOURCE_DP_D;
>>> >  				break;
>>> >  			default:
>>> > -				drm_WARN(dev, 1, "nonexisting DP port %c\n",
>>> > +				drm_WARN(&dev_priv->drm, 1, "nonexisting DP port %c\n",
>>> >  					 port_name(dig_port->base.port));
>>> >  				break;
>>> >  			}
>>> > @@ -120,7 +119,7 @@ static int i9xx_pipe_crc_auto_source(struct drm_i915_private *dev_priv,
>>> >  			break;
>>> >  		}
>>> >  	}
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  
>>> >  	return ret;
>>> >  }
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> > index 16cf17b1e9d998..904a1049eff39a 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> > @@ -2063,13 +2063,12 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
>>> >  static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
>>> >  {
>>> >  	struct drm_connector_list_iter conn_iter;
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_modeset_acquire_ctx ctx;
>>> >  	struct drm_atomic_state *state;
>>> >  	struct drm_connector *conn;
>>> >  	int err = 0;
>>> >  
>>> > -	state = drm_atomic_state_alloc(dev);
>>> > +	state = drm_atomic_state_alloc(&dev_priv->drm);
>>> >  	if (!state)
>>> >  		return -ENOMEM;
>>> >  
>>> > @@ -2078,7 +2077,7 @@ static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
>>> >  
>>> >  retry:
>>> >  
>>> > -	drm_connector_list_iter_begin(dev, &conn_iter);
>>> > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
>>> >  	drm_for_each_connector_iter(conn, &conn_iter) {
>>> >  		struct drm_connector_state *conn_state;
>>> >  		struct drm_crtc_state *crtc_state;
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
>>> > index b2e93c2ad8f32d..cf7d5c1ab4069b 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_tv.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>>> > @@ -1925,7 +1925,6 @@ static void intel_tv_add_properties(struct drm_connector *connector)
>>> >  void
>>> >  intel_tv_init(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct drm_connector *connector;
>>> >  	struct intel_tv *intel_tv;
>>> >  	struct intel_encoder *intel_encoder;
>>> > @@ -1989,10 +1988,10 @@ intel_tv_init(struct drm_i915_private *dev_priv)
>>> >  	 */
>>> >  	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
>>> >  
>>> > -	drm_connector_init(dev, connector, &intel_tv_connector_funcs,
>>> > +	drm_connector_init(&dev_priv->drm, connector, &intel_tv_connector_funcs,
>>> >  			   DRM_MODE_CONNECTOR_SVIDEO);
>>> >  
>>> > -	drm_encoder_init(dev, &intel_encoder->base, &intel_tv_enc_funcs,
>>> > +	drm_encoder_init(&dev_priv->drm, &intel_encoder->base, &intel_tv_enc_funcs,
>>> >  			 DRM_MODE_ENCODER_TVDAC, "TV");
>>> >  
>>> >  	intel_encoder->compute_config = intel_tv_compute_config;
>>> > diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> > index dee0147a316ce7..5a741ea4505f7e 100644
>>> > --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> > +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>>> > @@ -1845,7 +1845,6 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
>>> >  
>>> >  void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_dsi *intel_dsi;
>>> >  	struct intel_encoder *intel_encoder;
>>> >  	struct drm_encoder *encoder;
>>> > @@ -1882,7 +1881,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>> >  
>>> >  	connector = &intel_connector->base;
>>> >  
>>> > -	drm_encoder_init(dev, encoder, &intel_dsi_funcs, DRM_MODE_ENCODER_DSI,
>>> > +	drm_encoder_init(&dev_priv->drm, encoder, &intel_dsi_funcs, DRM_MODE_ENCODER_DSI,
>>> >  			 "DSI %c", port_name(port));
>>> >  
>>> >  	intel_encoder->compute_config = intel_dsi_compute_config;
>>> > @@ -1965,7 +1964,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>> >  	intel_dsi_vbt_gpio_init(intel_dsi,
>>> >  				intel_dsi_get_hw_state(intel_encoder, &pipe));
>>> >  
>>> > -	drm_connector_init(dev, connector, &intel_dsi_connector_funcs,
>>> > +	drm_connector_init(&dev_priv->drm, connector, &intel_dsi_connector_funcs,
>>> >  			   DRM_MODE_CONNECTOR_DSI);
>>> >  
>>> >  	drm_connector_helper_add(connector, &intel_dsi_connector_helper_funcs);
>>> > @@ -1974,9 +1973,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>> >  
>>> >  	intel_connector_attach_encoder(intel_connector, intel_encoder);
>>> >  
>>> > -	mutex_lock(&dev->mode_config.mutex);
>>> > +	mutex_lock(&dev_priv->drm.mode_config.mutex);
>>> >  	intel_panel_add_vbt_lfp_fixed_mode(intel_connector);
>>> > -	mutex_unlock(&dev->mode_config.mutex);
>>> > +	mutex_unlock(&dev_priv->drm.mode_config.mutex);
>>> >  
>>> >  	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
>>> >  		drm_dbg_kms(&dev_priv->drm, "no fixed mode\n");
>>> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> > index fb3826dabe8b6b..f934ba37f0194f 100644
>>> > --- a/drivers/gpu/drm/i915/i915_driver.c
>>> > +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> > @@ -739,7 +739,6 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>>> >   */
>>> >  static void i915_driver_register(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_gt *gt;
>>> >  	unsigned int i;
>>> >  
>>> > @@ -749,7 +748,7 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>>> >  	intel_vgpu_register(dev_priv);
>>> >  
>>> >  	/* Reveal our presence to userspace */
>>> > -	if (drm_dev_register(dev, 0)) {
>>> > +	if (drm_dev_register(&dev_priv->drm, 0)) {
>>> >  		drm_err(&dev_priv->drm,
>>> >  			"Failed to register driver for userspace access!\n");
>>> >  		return;
>>> > @@ -1093,32 +1092,30 @@ static void i915_driver_postclose(struct drm_device *dev, struct drm_file *file)
>>> >  
>>> >  static void intel_suspend_encoders(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_encoder *encoder;
>>> >  
>>> >  	if (!HAS_DISPLAY(dev_priv))
>>> >  		return;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > -	for_each_intel_encoder(dev, encoder)
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> > +	for_each_intel_encoder(&dev_priv->drm, encoder)
>>> >  		if (encoder->suspend)
>>> >  			encoder->suspend(encoder);
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  }
>>> >  
>>> >  static void intel_shutdown_encoders(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	struct intel_encoder *encoder;
>>> >  
>>> >  	if (!HAS_DISPLAY(dev_priv))
>>> >  		return;
>>> >  
>>> > -	drm_modeset_lock_all(dev);
>>> > -	for_each_intel_encoder(dev, encoder)
>>> > +	drm_modeset_lock_all(&dev_priv->drm);
>>> > +	for_each_intel_encoder(&dev_priv->drm, encoder)
>>> >  		if (encoder->shutdown)
>>> >  			encoder->shutdown(encoder);
>>> > -	drm_modeset_unlock_all(dev);
>>> > +	drm_modeset_unlock_all(&dev_priv->drm);
>>> >  }
>>> >  
>>> >  void i915_driver_shutdown(struct drm_i915_private *i915)
>>> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>>> > index 87cb05b3b6ceab..72f4278d2d0ba1 100644
>>> > --- a/drivers/gpu/drm/i915/i915_irq.c
>>> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>>> > @@ -4384,7 +4384,6 @@ void intel_hpd_irq_setup(struct drm_i915_private *i915)
>>> >   */
>>> >  void intel_irq_init(struct drm_i915_private *dev_priv)
>>> >  {
>>> > -	struct drm_device *dev = &dev_priv->drm;
>>> >  	int i;
>>> >  
>>> >  	INIT_WORK(&dev_priv->l3_parity.error_work, ivb_parity_work);
>>> > @@ -4402,7 +4401,7 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>>> >  
>>> >  	intel_hpd_init_early(dev_priv);
>>> >  
>>> > -	dev->vblank_disable_immediate = true;
>>> > +	dev_priv->drm.vblank_disable_immediate = true;
>>> >  
>>> >  	/* Most platforms treat the display irq block as an always-on
>>> >  	 * power domain. vlv/chv can disable it at runtime and need
>>> > -- 
>>> > 2.34.1

-- 
Jani Nikula, Intel Open Source Graphics Center
