Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1142FC1EDCB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 08:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8569B10E8B1;
	Thu, 30 Oct 2025 07:53:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D3110E8B1;
 Thu, 30 Oct 2025 07:53:47 +0000 (UTC)
Received: from mobile-access-b04845-99.dhcp.inet.fi ([176.72.69.99]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vENTc-00000001vnU-48Yi; Thu, 30 Oct 2025 09:53:45 +0200
Message-ID: <48a9915ab06052daa1f05776b160d55353a7032d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Thu, 30 Oct 2025 09:53:44 +0200
In-Reply-To: <d8bc62b3a81afa05c849dde9b0f633572eaf5611.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
 <d8bc62b3a81afa05c849dde9b0f633572eaf5611.1761146196.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-5 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 1/6] drm/i915: split out separate files for jiffies
 timeout and wait helpers
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

On Wed, 2025-10-22 at 18:17 +0300, Jani Nikula wrote:
> Add i915_jiffies.h and intel_display_jiffies.h for jiffies timeout and
> wait helpers, and use them separately from i915 and display. This helps
> reduce the display dependency on i915_utils.h.
>=20
> Long term, both msecs_to_jiffies_timeout() and
> wait_remaining_ms_from_jiffies() really belong in core kernel headers,
> but for now unblock display refactoring.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  .../drm/i915/display/intel_display_jiffies.h  | 43 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>  .../drm/i915/display/intel_dp_link_training.c |  1 +
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  1 +
>  drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  1 +
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  5 ++-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  1 +
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |  1 +
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  |  1 +
>  drivers/gpu/drm/i915/i915_config.c            |  2 +-
>  drivers/gpu/drm/i915/i915_jiffies.h           | 16 +++++++
>  drivers/gpu/drm/i915/i915_utils.h             | 34 ---------------
>  .../gpu/drm/i915/selftests/i915_selftest.c    |  1 +
>  15 files changed, 73 insertions(+), 37 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_jiffies.h
>  create mode 100644 drivers/gpu/drm/i915/i915_jiffies.h
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_jiffies.h b/drive=
rs/gpu/drm/i915/display/intel_display_jiffies.h
> new file mode 100644
> index 000000000000..c060c567e262
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_jiffies.h
> @@ -0,0 +1,43 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#ifndef __INTEL_DISPLAY_JIFFIES_H__
> +#define __INTEL_DISPLAY_JIFFIES_H__
> +
> +#include <linux/jiffies.h>
> +
> +static inline unsigned long msecs_to_jiffies_timeout(const unsigned int =
m)
> +{
> +	unsigned long j =3D msecs_to_jiffies(m);
> +
> +	return min_t(unsigned long, MAX_JIFFY_OFFSET, j + 1);
> +}
> +
> +/*
> + * If you need to wait X milliseconds between events A and B, but event =
B
> + * doesn't happen exactly after event A, you record the timestamp (jiffi=
es) of
> + * when event A happened, then just before event B you call this functio=
n and
> + * pass the timestamp as the first argument, and X as the second argumen=
t.
> + */
> +static inline void
> +wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_w=
ait_ms)
> +{
> +	unsigned long target_jiffies, tmp_jiffies, remaining_jiffies;
> +
> +	/*
> +	 * Don't re-read the value of "jiffies" every time since it may change
> +	 * behind our back and break the math.
> +	 */
> +	tmp_jiffies =3D jiffies;
> +	target_jiffies =3D timestamp_jiffies +
> +			 msecs_to_jiffies_timeout(to_wait_ms);
> +
> +	if (time_after(target_jiffies, tmp_jiffies)) {
> +		remaining_jiffies =3D target_jiffies - tmp_jiffies;
> +		while (remaining_jiffies)
> +			remaining_jiffies =3D
> +			    schedule_timeout_uninterruptible(remaining_jiffies);
> +	}
> +}
> +
> +#endif /* __INTEL_DISPLAY_JIFFIES_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b0aeb6c2de86..78e21bfd29bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -64,6 +64,7 @@
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_driver.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 27f3716bdc1f..316b42b5a946 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -29,6 +29,7 @@
> =20
>  #include "i915_utils.h"
>  #include "intel_display_core.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/=
i915/display/intel_hdcp.c
> index 531ee122bf82..0f624004104f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -22,6 +22,7 @@
>  #include "i915_utils.h"
>  #include "intel_connector.h"
>  #include "intel_de.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/=
drm/i915/display/intel_pmdemand.c
> index d806c15db7ce..7ade35e05eb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -12,6 +12,7 @@
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_de.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_trace.h"
>  #include "intel_pmdemand.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 327e0de86f1e..0c2f48626d0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -12,6 +12,7 @@
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_de.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_power_well.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 2fc0c1c0bb87..0e534be375ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -12,6 +12,7 @@
>  #include "intel_color.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> +#include "intel_display_jiffies.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_vblank.h"
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i=
915/gem/i915_gem_mman.c
> index 75f5b0e871ef..4542135b20d5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -16,12 +16,13 @@
>  #include "i915_gem_evict.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gem_ioctls.h"
> -#include "i915_gem_object.h"
>  #include "i915_gem_mman.h"
> +#include "i915_gem_object.h"
> +#include "i915_gem_ttm.h"
> +#include "i915_jiffies.h"
>  #include "i915_mm.h"
>  #include "i915_trace.h"
>  #include "i915_user_extensions.h"
> -#include "i915_gem_ttm.h"
>  #include "i915_vma.h"
> =20
>  static inline bool
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i9=
15/gem/i915_gem_ttm.c
> index 57bb111d65da..d119e54e5be1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_buddy.h>
> =20
>  #include "i915_drv.h"
> +#include "i915_jiffies.h"
>  #include "i915_ttm_buddy_manager.h"
>  #include "intel_memory_region.h"
>  #include "intel_region_ttm.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/g=
pu/drm/i915/gt/intel_engine_heartbeat.c
> index 8d4bb95f8424..dcd3a3047aa4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -4,6 +4,7 @@
>   */
> =20
>  #include "i915_drv.h"
> +#include "i915_jiffies.h"
>  #include "i915_request.h"
> =20
>  #include "intel_context.h"
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/d=
rm/i915/gt/selftest_execlists.c
> index 0454eb1814bb..376f201a7650 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -11,6 +11,7 @@
>  #include "gt/intel_reset.h"
>  #include "gt/selftest_engine_heartbeat.h"
> =20
> +#include "i915_jiffies.h"
>  #include "i915_selftest.h"
>  #include "selftests/i915_random.h"
>  #include "selftests/igt_flush_test.h"
> diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i9=
15_config.c
> index 24e5bb8a670e..3cb615ffa96d 100644
> --- a/drivers/gpu/drm/i915/i915_config.c
> +++ b/drivers/gpu/drm/i915/i915_config.c
> @@ -6,7 +6,7 @@
>  #include <linux/kernel.h>
> =20
>  #include "i915_config.h"
> -#include "i915_utils.h"
> +#include "i915_jiffies.h"
> =20
>  unsigned long
>  i915_fence_context_timeout(const struct drm_i915_private *i915, u64 cont=
ext)
> diff --git a/drivers/gpu/drm/i915/i915_jiffies.h b/drivers/gpu/drm/i915/i=
915_jiffies.h
> new file mode 100644
> index 000000000000..18a4eaea897a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_jiffies.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#ifndef __I915_JIFFIES_H__
> +#define __I915_JIFFIES_H__
> +
> +#include <linux/jiffies.h>
> +
> +static inline unsigned long msecs_to_jiffies_timeout(const unsigned int =
m)
> +{
> +	unsigned long j =3D msecs_to_jiffies(m);
> +
> +	return min_t(unsigned long, MAX_JIFFY_OFFSET, j + 1);
> +}
> +
> +#endif /* __I915_JIFFIES_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i91=
5_utils.h
> index a0c892e4c40d..44de4a4aa84a 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -100,40 +100,6 @@ static inline bool is_power_of_2_u64(u64 n)
>  	return (n !=3D 0 && ((n & (n - 1)) =3D=3D 0));
>  }
> =20
> -static inline unsigned long msecs_to_jiffies_timeout(const unsigned int =
m)
> -{
> -	unsigned long j =3D msecs_to_jiffies(m);
> -
> -	return min_t(unsigned long, MAX_JIFFY_OFFSET, j + 1);
> -}
> -
> -/*
> - * If you need to wait X milliseconds between events A and B, but event =
B
> - * doesn't happen exactly after event A, you record the timestamp (jiffi=
es) of
> - * when event A happened, then just before event B you call this functio=
n and
> - * pass the timestamp as the first argument, and X as the second argumen=
t.
> - */
> -static inline void
> -wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_w=
ait_ms)
> -{
> -	unsigned long target_jiffies, tmp_jiffies, remaining_jiffies;
> -
> -	/*
> -	 * Don't re-read the value of "jiffies" every time since it may change
> -	 * behind our back and break the math.
> -	 */
> -	tmp_jiffies =3D jiffies;
> -	target_jiffies =3D timestamp_jiffies +
> -			 msecs_to_jiffies_timeout(to_wait_ms);
> -
> -	if (time_after(target_jiffies, tmp_jiffies)) {
> -		remaining_jiffies =3D target_jiffies - tmp_jiffies;
> -		while (remaining_jiffies)
> -			remaining_jiffies =3D
> -			    schedule_timeout_uninterruptible(remaining_jiffies);
> -	}
> -}
> -
>  #define KHz(x) (1000 * (x))
>  #define MHz(x) KHz(1000 * (x))
> =20
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu=
/drm/i915/selftests/i915_selftest.c
> index 9c276c9d0a75..8460f0a70d04 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -30,6 +30,7 @@
> =20
>  #include "i915_driver.h"
>  #include "i915_drv.h"
> +#include "i915_jiffies.h"
>  #include "i915_selftest.h"
>  #include "i915_wait_util.h"
>  #include "igt_flush_test.h"
