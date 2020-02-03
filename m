Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D7C150715
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 14:23:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C3A6EBF6;
	Mon,  3 Feb 2020 13:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0676F6EBF2
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 13:23:20 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 05:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="225161328"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 03 Feb 2020 05:23:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Feb 2020 15:23:17 +0200
Date: Mon, 3 Feb 2020 15:23:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200203132317.GZ13686@intel.com>
References: <20200201094641.3572295-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200201094641.3572295-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: Skip the cdclk modeset if
 no pipes attached
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 01, 2020 at 09:46:41AM +0000, Chris Wilson wrote:
> If the display is not driving any pipes, we cannot change the bclk and
> doing so risks chasing NULL pointers:
> =

> <6> [278.907105] snd_hda_intel 0000:00:0e.0: DSP detected with PCI class/=
subclass/prog-if info 0x040100
> <6> [278.909936] snd_hda_intel 0000:00:0e.0: bound 0000:00:02.0 (ops i915=
_audio_component_bind_ops [i915])
> <7> [278.910078] i915 0000:00:02.0: [drm:intel_power_well_enable [i915]] =
enabling power well 2
> <1> [278.910228] BUG: kernel NULL pointer dereference, address: 000000000=
0000080
> <1> [278.910243] #PF: supervisor read access in kernel mode
> <1> [278.910251] #PF: error_code(0x0000) - not-present page
> <6> [278.910260] PGD 0 P4D 0
> <4> [278.910267] Oops: 0000 [#1] PREEMPT SMP PTI
> <4> [278.910276] CPU: 0 PID: 5 Comm: kworker/0:0 Tainted: G     U        =
    5.5.0-CI-CI_DRM_7853+ #1
> <4> [278.910289] Hardware name: Intel Corp. Geminilake/GLK RVP2 LP4SD (07=
), BIOS GELKRVPA.X64.0062.B30.1708222146 08/22/2017
> <4> [278.910312] Workqueue: events azx_probe_work [snd_hda_intel]
> <4> [278.910327] RIP: 0010:__ww_mutex_lock.constprop.15+0x5e/0x1090
> <4> [278.910338] Code: 75 88 be a7 03 00 00 65 48 8b 04 25 28 00 00 00 48=
 89 45 c8 31 c0 4c 89 c3 e8 5e b3 6d ff 44 8b 3d 2f 24 37 02 45 85 ff 75 0a=
 <4d> 3b 6d 58 0f 85 3f 07 00 00 48 85 db 74 22 49 8b 95 80 00 00 00
> <4> [278.910362] RSP: 0018:ffffc9000008bc10 EFLAGS: 00010246
> <4> [278.910371] RAX: 0000000000000246 RBX: ffffc9000008bd30 RCX: 0000000=
000000001
> <4> [278.910382] RDX: 0000000000000000 RSI: ffffffff82647c60 RDI: ffff888=
17b27d848
> <4> [278.910393] RBP: ffffc9000008bcc0 R08: 0000000000000000 R09: 0000000=
000000001
> <4> [278.910404] R10: ffffc9000008bce0 R11: 0000000000000000 R12: fffffff=
f8168f0fc
> <4> [278.910414] R13: 0000000000000028 R14: ffffc9000008bd60 R15: 0000000=
000000000
> <4> [278.910425] FS:  0000000000000000(0000) GS:ffff88817bc00000(0000) kn=
lGS:0000000000000000
> <4> [278.910437] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [278.910446] CR2: 0000000000000080 CR3: 00000001650da000 CR4: 0000000=
000340ef0
> <4> [278.910456] Call Trace:
> <4> [278.910468]  ? mark_held_locks+0x49/0x70
> <4> [278.910479]  ? ww_mutex_lock+0x39/0x70
> <4> [278.910487]  ww_mutex_lock+0x39/0x70
> <4> [278.910497]  drm_modeset_lock+0x6c/0x120
> <4> [278.910575]  glk_force_audio_cdclk+0x7d/0x140 [i915]
> <4> [278.910656]  i915_audio_component_get_power+0xf2/0x110 [i915]
> <4> [278.910673]  snd_hdac_display_power+0x7d/0x120 [snd_hda_core]
> <4> [278.910686]  azx_probe_work+0x88/0x7e0 [snd_hda_intel]
> =

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index e3efd81c5855..3d92849811e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -810,16 +810,14 @@ void intel_init_audio_hooks(struct drm_i915_private=
 *dev_priv)
>  	}
>  }
>  =

> -static int glk_force_audio_cdclk_commit(struct intel_atomic_state *state,
> +static int glk_force_audio_cdclk_commit(struct intel_crtc *crtc,
> +					struct intel_atomic_state *state,
>  					bool enable)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_cdclk_state *cdclk_state;
> -	struct intel_crtc *crtc;
>  	int ret;
>  =

>  	/* need to hold at least one crtc lock for the global state */
> -	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);

Was thinking a simple 'return 0' would do the trick, but maybe we
don't want to call this at all. OTOH not sure why we would even
register the audio component if there are no pipes. Does the audio
driver get confused if we don't do that?

>  	ret =3D drm_modeset_lock(&crtc->base.mutex, state->base.acquire_ctx);
>  	if (ret)
>  		return ret;
> @@ -843,8 +841,13 @@ static void glk_force_audio_cdclk(struct drm_i915_pr=
ivate *dev_priv,
>  {
>  	struct drm_modeset_acquire_ctx ctx;
>  	struct drm_atomic_state *state;
> +	struct intel_crtc *crtc;
>  	int ret;
>  =

> +	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> +	if (!crtc)
> +		return;
> +
>  	drm_modeset_acquire_init(&ctx, 0);
>  	state =3D drm_atomic_state_alloc(&dev_priv->drm);
>  	if (WARN_ON(!state))
> @@ -853,7 +856,9 @@ static void glk_force_audio_cdclk(struct drm_i915_pri=
vate *dev_priv,
>  	state->acquire_ctx =3D &ctx;
>  =

>  retry:
> -	ret =3D glk_force_audio_cdclk_commit(to_intel_atomic_state(state), enab=
le);
> +	ret =3D glk_force_audio_cdclk_commit(crtc,
> +					   to_intel_atomic_state(state),
> +					   enable);

I guess I'd order these state,crtc,enable to match more what we've been
doing elsewhere.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	if (ret =3D=3D -EDEADLK) {
>  		drm_atomic_state_clear(state);
>  		drm_modeset_backoff(&ctx);
> -- =

> 2.25.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
