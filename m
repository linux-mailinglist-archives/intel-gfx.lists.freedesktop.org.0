Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0638C96154
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 09:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F7510E2E0;
	Mon,  1 Dec 2025 08:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0DB410E2D9;
 Mon,  1 Dec 2025 08:17:25 +0000 (UTC)
Received: from mobile-access-d98cd5-49.dhcp.inet.fi ([217.140.213.49]
 helo=[192.168.8.139])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1vPz62-00000000V7f-44lj; Mon, 01 Dec 2025 10:17:23 +0200
Message-ID: <887d097ec191f6cdb1f89e9d91de1bb657bcd434.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Date: Mon, 01 Dec 2025 10:17:22 +0200
In-Reply-To: <3599d0ec168d7ce7030582706acba66b616ab9f3.1764076995.git.jani.nikula@intel.com>
References: <cover.1764076995.git.jani.nikula@intel.com>
 <3599d0ec168d7ce7030582706acba66b616ab9f3.1764076995.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=4.0.2
Subject: Re: [PATCH v2 5/5] drm/{i915,xe}/display: drop intel_wakeref.h usage
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

On Tue, 2025-11-25 at 15:24 +0200, Jani Nikula wrote:
> Drop the display dependency on intel_wakeref.h header. The contract in
> the parent interface is that -ENOENT means there's no tracking. It
> doesn't actually require us to use a shared macro for it. Duplicate the
> macro in the few places that need this instead of inlining, primarily
> for documentation reasons.
>=20
> This allows us to remove the xe compat intel_wakeref.h header.
>=20
> v2: Define INTEL_WAKEREF_DEF in intel_display_power.h
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h     | 5 +++--
>  drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h | 6 ------
>  drivers/gpu/drm/xe/display/xe_display_rpm.c            | 4 +++-
>  3 files changed, 6 insertions(+), 9 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.=
h
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 6f8d921b4482..d616d5d09cbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -9,8 +9,6 @@
>  #include <linux/mutex.h>
>  #include <linux/workqueue.h>
> =20
> -#include "intel_wakeref.h"
> -
>  enum aux_ch;
>  enum port;
>  struct i915_power_well;
> @@ -19,6 +17,9 @@ struct intel_encoder;
>  struct ref_tracker;
>  struct seq_file;
> =20
> +/* -ENOENT means we got the ref, but there's no tracking */
> +#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
> +
>  /*
>   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instanc=
es
>   * consecutive, so that the pipe,transcoder,port -> power domain macros
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/dri=
vers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> deleted file mode 100644
> index 910a8a60da64..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2023 Intel Corporation
> - */
> -
> -#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/dr=
m/xe/display/xe_display_rpm.c
> index 9416ec784e39..b3db40035499 100644
> --- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> @@ -5,11 +5,13 @@
> =20
>  #include "intel_display_core.h"
>  #include "intel_display_rpm.h"
> -#include "intel_wakeref.h"
>  #include "xe_device.h"
>  #include "xe_device_types.h"
>  #include "xe_pm.h"
> =20
> +/* -ENOENT means we got the ref, but there's no tracking */
> +#define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
> +
>  static struct ref_tracker *xe_display_rpm_get(const struct drm_device *d=
rm)
>  {
>  	return xe_pm_runtime_resume_and_get(to_xe_device(drm)) ? INTEL_WAKEREF_=
DEF : NULL;

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
