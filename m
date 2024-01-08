Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A035826A8C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 10:20:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E61310E1D7;
	Mon,  8 Jan 2024 09:20:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D320E10E1D7
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 09:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704705643; x=1736241643;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IjDC1dgd3xxXGpjTCSkqysLtMuJF8hGCxDZk5F1/Qz0=;
 b=Ecxw/84iytA63jf48v0YxftxyqANqclvhbubeSQ/iuh8Xl62y/ppXnZ4
 VvuclE6RrCMDH6W8iBKsv/VD5WpDkoKA/nYW0q56WxPn6yS4Xc5N5kcif
 BPYe7w/HJhv1n9f2ZgnvGnN95HyY1CA6yBwvwOLf3d6kXowLYm6MMKWMa
 gTmR6YZij6XmdkMn4e8pYUYo0AoEaTXe6F+h23062iqKjJa3SPQuNQq/T
 o816BSJRgszWFQLRCPBVLUBi4SGjlwOVjRqGmbgVIbq0J3exUhN1az4ND
 1lf/T8CfiyZYYSB4KRIzC9gS6MuG/vmNTepLWZ8x+U4OUQ/P4dAv+7pAu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="5184182"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="5184182"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 01:20:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="954574087"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="954574087"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 01:20:41 -0800
Date: Mon, 8 Jan 2024 11:20:52 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH 07/12] drm/i915: Prevent modesets during driver
 init/shutdown
Message-ID: <ZZu+dP0Hd4edWaOa@ideak-desk.fi.intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-8-imre.deak@intel.com>
 <f57800e48f4427cf2772ee2bb42e57b772001c78.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f57800e48f4427cf2772ee2bb42e57b772001c78.camel@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 08, 2024 at 10:31:07AM +0200, Hogander, Jouni wrote:
> On Thu, 2024-01-04 at 10:30 +0200, Imre Deak wrote:

> > An unexpected modeset or connector detection by a user (user space
> > or FB console) during the initialization/shutdown sequence is
> > possible either via a hotplug IRQ handling work or via the connector
> > sysfs (status/detect) interface. These modesets/detections should be
> > prevented by disabling/flushing all related hotplug handling work
> > and unregistering the interfaces that can start them at the
> > beginning of the shutdown sequence. Some of this - disabling all
> > related intel_hotplug work - will be done by the next patch, but
> > others - for instance disabling the MST hotplug works - require a
> > bigger rework.
> >
> > It makes sense - for diagnostic purpose, even with all the above
> > work and interface disabled - to detect and reject any such user
> > access. This patch does that for modeset accesses and a follow-up
> > patch for connector detection.
> >
> > After the display is disabled during the shutdown sequence, no
> > modeset should happen so it's disabled for both users and the
> > shutdown thread.
>
> Can you please explain in commit message why
> intel_display_driver_disable_user_access and
> intel_display_driver_resume_access are allowing modeset for "current"
> process?

Is it ok if I add the following instead of the last paragraph?:

"""
During driver loading/unloading/system suspend/shutdown and during
system resume after calling intel_display_driver_disable_user_access()
or intel_display_driver_resume_access() correspondigly, the current
thread is allowed to modeset (as this thread requires to do an
initial/restoring modeset or a disabling modeset), other threads (the
user threads) are not allowed to modeset.

During driver loading/system resume after calling
intel_display_driver_enable_user_access() all threads are allowed to
modeset.

During driver unloading/system suspend/shutdown after calling
intel_display_driver_suspend_access() no threads are allowed to modeset
(as the HW got disabled and should stay in this state).
"""

> 
> BR,
> 
> Jouni Högander
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  3 +
> >  .../gpu/drm/i915/display/intel_display_core.h |  7 ++
> >  .../drm/i915/display/intel_display_driver.c   | 74
> > +++++++++++++++++++
> >  .../drm/i915/display/intel_display_driver.h   |  6 ++
> >  drivers/gpu/drm/i915/i915_driver.c            | 16 +++-
> >  5 files changed, 104 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 927d124457b61..31a6a82c12616 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6310,6 +6310,9 @@ int intel_atomic_check(struct drm_device *dev,
> >         int ret, i;
> >         bool any_ms = false;
> >
> > +       if (!intel_display_driver_check_access(dev_priv))
> > +               return -ENODEV;
> > +
> >         for_each_oldnew_intel_crtc_in_state(state, crtc,
> > old_crtc_state,
> >                                             new_crtc_state, i) {
> >                 /*
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 47297ed858223..0b130ca9e6698 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -28,6 +28,8 @@
> >  #include "intel_opregion.h"
> >  #include "intel_wm_types.h"
> >
> > +struct task_struct;
> > +
> >  struct drm_i915_private;
> >  struct drm_property;
> >  struct drm_property_blob;
> > @@ -298,6 +300,11 @@ struct intel_display {
> >                 const struct intel_audio_funcs *audio;
> >         } funcs;
> >
> > +       struct {
> > +               bool any_task_allowed;
> > +               struct task_struct *allowed_task;
> > +       } access;
> > +
> >         struct {
> >                 /* backlight registers and fields in struct
> > intel_panel */
> >                 struct mutex lock;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 1974f2394a518..b2441ab9822c2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -45,6 +45,7 @@
> >  #include "intel_hdcp.h"
> >  #include "intel_hotplug.h"
> >  #include "intel_hti.h"
> > +#include "intel_modeset_lock.h"
> >  #include "intel_modeset_setup.h"
> >  #include "intel_opregion.h"
> >  #include "intel_overlay.h"
> > @@ -276,6 +277,71 @@ int intel_display_driver_probe_noirq(struct
> > drm_i915_private *i915)
> >         return ret;
> >  }
> >
> > +static void set_display_access(struct drm_i915_private *i915,
> > +                              bool any_task_allowed,
> > +                              struct task_struct *allowed_task)
> > +{
> > +       struct drm_modeset_acquire_ctx ctx;
> > +       int err;
> > +
> > +       intel_modeset_lock_ctx_retry(&ctx, NULL, 0, err) {
> > +               err = drm_modeset_lock_all_ctx(&i915->drm, &ctx);
> > +               if (err)
> > +                       continue;
> > +
> > +               i915->display.access.any_task_allowed =
> > any_task_allowed;
> > +               i915->display.access.allowed_task = allowed_task;
> > +       }
> > +
> > +       drm_WARN_ON(&i915->drm, err);
> > +}
> > +
> > +void intel_display_driver_enable_user_access(struct drm_i915_private
> > *i915)
> > +{
> > +       set_display_access(i915, true, NULL);
> > +}
> > +
> > +void intel_display_driver_disable_user_access(struct
> > drm_i915_private *i915)
> > +{
> > +       set_display_access(i915, false, current);
> > +}
> > +
> > +void intel_display_driver_suspend_access(struct drm_i915_private
> > *i915)
> > +{
> > +       set_display_access(i915, false, NULL);
> > +}
> > +
> > +void intel_display_driver_resume_access(struct drm_i915_private
> > *i915)
> > +{
> > +       set_display_access(i915, false, current);
> > +}
> > +
> > +bool intel_display_driver_check_access(struct drm_i915_private
> > *i915)
> > +{
> > +       char comm[TASK_COMM_LEN];
> > +       char current_task[TASK_COMM_LEN + 16];
> > +       char allowed_task[TASK_COMM_LEN + 16] = "none";
> > +
> > +       if (i915->display.access.any_task_allowed ||
> > +           i915->display.access.allowed_task == current)
> > +               return true;
> > +
> > +       snprintf(current_task, sizeof(current_task), "%s[%d]",
> > +                get_task_comm(comm, current),
> > +                task_pid_vnr(current));
> > +
> > +       if (i915->display.access.allowed_task)
> > +               snprintf(allowed_task, sizeof(allowed_task),
> > "%s[%d]",
> > +                        get_task_comm(comm, i915-
> > >display.access.allowed_task),
> > +                        task_pid_vnr(i915-
> > >display.access.allowed_task));
> > +
> > +       drm_dbg_kms(&i915->drm,
> > +                   "Reject display access from task %s (allowed to
> > %s)\n",
> > +                   current_task, allowed_task);
> > +
> > +       return false;
> > +}
> > +
> >  /* part #2: call after irq install, but before gem init */
> >  int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
> >  {
> > @@ -326,6 +392,8 @@ int intel_display_driver_probe_nogem(struct
> > drm_i915_private *i915)
> >         intel_vga_disable(i915);
> >         intel_setup_outputs(i915);
> >
> > +       intel_display_driver_disable_user_access(i915);
> > +
> >         drm_modeset_lock_all(dev);
> >         intel_modeset_setup_hw_state(i915, dev-
> > >mode_config.acquire_ctx);
> >         intel_acpi_assign_connector_fwnodes(i915);
> > @@ -393,6 +461,8 @@ void intel_display_driver_register(struct
> > drm_i915_private *i915)
> >
> >         intel_audio_init(i915);
> >
> > +       intel_display_driver_enable_user_access(i915);
> > +
> >         intel_display_debugfs_register(i915);
> >
> >         /*
> > @@ -440,6 +510,8 @@ void intel_display_driver_remove_noirq(struct
> > drm_i915_private *i915)
> >         if (!HAS_DISPLAY(i915))
> >                 return;
> >
> > +       intel_display_driver_suspend_access(i915);
> > +
> >         /*
> >          * Due to the hpd irq storm handling the hotplug work can re-
> > arm the
> >          * poll handlers. Hence disable polling after hpd handling is
> > shut down.
> > @@ -493,6 +565,8 @@ void intel_display_driver_unregister(struct
> > drm_i915_private *i915)
> >          */
> >         drm_kms_helper_poll_fini(&i915->drm);
> >
> > +       intel_display_driver_disable_user_access(i915);
> > +
> >         intel_audio_deinit(i915);
> >
> >         drm_atomic_helper_shutdown(&i915->drm);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h
> > b/drivers/gpu/drm/i915/display/intel_display_driver.h
> > index c276a58ee3293..42cc4af6d3fd5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> > @@ -32,5 +32,11 @@ int __intel_display_driver_resume(struct
> > drm_i915_private *i915,
> >                                   struct drm_atomic_state *state,
> >                                   struct drm_modeset_acquire_ctx
> > *ctx);
> >
> > +void intel_display_driver_enable_user_access(struct drm_i915_private
> > *i915);
> > +void intel_display_driver_disable_user_access(struct
> > drm_i915_private *i915);
> > +void intel_display_driver_suspend_access(struct drm_i915_private
> > *i915);
> > +void intel_display_driver_resume_access(struct drm_i915_private
> > *i915);
> > +bool intel_display_driver_check_access(struct drm_i915_private
> > *i915);
> > +
> >  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index 166476948c896..068ca48e05323 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1006,6 +1006,7 @@ void i915_driver_shutdown(struct
> > drm_i915_private *i915)
> >         intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED,
> > true);
> >         if (HAS_DISPLAY(i915)) {
> >                 drm_kms_helper_poll_disable(&i915->drm);
> > +               intel_display_driver_disable_user_access(i915);
> >
> >                 drm_atomic_helper_shutdown(&i915->drm);
> >         }
> > @@ -1015,6 +1016,8 @@ void i915_driver_shutdown(struct
> > drm_i915_private *i915)
> >         intel_runtime_pm_disable_interrupts(i915);
> >         intel_hpd_cancel_work(i915);
> >
> > +       intel_display_driver_suspend_access(i915);
> > +
> >         intel_suspend_encoders(i915);
> >         intel_shutdown_encoders(i915);
> >
> > @@ -1082,8 +1085,10 @@ static int i915_drm_suspend(struct drm_device
> > *dev)
> >          * properly. */
> >         intel_power_domains_disable(dev_priv);
> >         intel_fbdev_set_suspend(dev, FBINFO_STATE_SUSPENDED, true);
> > -       if (HAS_DISPLAY(dev_priv))
> > +       if (HAS_DISPLAY(dev_priv)) {
> >                 drm_kms_helper_poll_disable(dev);
> > +               intel_display_driver_disable_user_access(dev_priv);
> > +       }
> >
> >         pci_save_state(pdev);
> >
> > @@ -1094,6 +1099,8 @@ static int i915_drm_suspend(struct drm_device
> > *dev)
> >         intel_runtime_pm_disable_interrupts(dev_priv);
> >         intel_hpd_cancel_work(dev_priv);
> >
> > +       intel_display_driver_suspend_access(dev_priv);
> > +
> >         intel_suspend_encoders(dev_priv);
> >
> >         /* Must be called before GGTT is suspended. */
> > @@ -1243,14 +1250,19 @@ static int i915_drm_resume(struct drm_device
> > *dev)
> >         intel_display_driver_init_hw(dev_priv);
> >
> >         intel_clock_gating_init(dev_priv);
> > +
> > +       intel_display_driver_resume_access(dev_priv);
> > +
> >         intel_hpd_init(dev_priv);
> >
> >         /* MST sideband requires HPD interrupts enabled */
> >         intel_dp_mst_resume(dev_priv);
> >         intel_display_driver_resume(dev_priv);
> >
> > -       if (HAS_DISPLAY(dev_priv))
> > +       if (HAS_DISPLAY(dev_priv)) {
> > +               intel_display_driver_enable_user_access(dev_priv);
> >                 drm_kms_helper_poll_enable(dev);
> > +       }
> >         intel_hpd_poll_disable(dev_priv);
> >
> >         intel_opregion_resume(dev_priv);
> 
