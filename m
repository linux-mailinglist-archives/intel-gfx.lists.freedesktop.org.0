Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 672D87B9D2A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 15:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC1B10E16D;
	Thu,  5 Oct 2023 13:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F72A10E16D
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 13:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696511002; x=1728047002;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OhUWzlFYfgNIByHDtOoZa8q86pD836mzuE4RwE/NfJs=;
 b=kJ+nGugR2uh8HQKbRAmiTSU32ug+ZRlKjdMazk2glyPLHpx0rO1rOQhN
 Sb93gIfBzTsoNj9zg9x44DFXxJasrEKBEASv2OEzFioxdMWQCDF3cfgr6
 Cwdta05lg+xsRksgOsz/jkVUD9AabUh8WWLdOZVa3xJcRo9LAV+lh076A
 Dqr2sQEMZ2cPnV/ob9U8ZPPakUaaa6S2qjj7OrztxtL7sKPIlHYM28+La
 BXxfWvSXhA1vYXUulQQEHLkobA+XGqq08ZEd9dCZTrv5LbsHcPAnOjtHr
 8juDdjjFLuPX1zgDXhP2WDlvGBABl49CaN4B1qhWrHuDhKZHuV4bXIqJx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="5050731"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="5050731"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:03:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895449588"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895449588"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:01:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231005054500.2053070-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
 <20231005054500.2053070-2-jouni.hogander@intel.com>
Date: Thu, 05 Oct 2023 16:03:16 +0300
Message-ID: <87il7lcjcb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [RFC PATCH 1/4] drm/i915/display: Add framework to
 add parameters specific to display
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

On Thu, 05 Oct 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently all module parameters are handled by i915_param.c/h. This
> is a problem for display parameters when Xe driver is used. Add
> a mechanism to add parameters specific to the display. This is mainly
> copied from i915_[debugfs]_params.[ch]. Parameters are not yet moved. This
> is done by subsequent patches.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  .../gpu/drm/i915/display/intel_display_core.h |   2 +
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  .../display/intel_display_debugfs_params.c    | 239 ++++++++++++++++++
>  .../display/intel_display_debugfs_params.h    |  14 +
>  .../drm/i915/display/intel_display_device.c   |   8 +
>  .../drm/i915/display/intel_display_device.h   |   1 +
>  .../drm/i915/display/intel_display_params.c   |  95 +++++++
>  .../drm/i915/display/intel_display_params.h   |  58 +++++
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +
>  10 files changed, 423 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_pa=
rams.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_pa=
rams.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index dec78efa452a..3c26e9ae3722 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -85,6 +85,7 @@ i915-$(CONFIG_DEBUG_FS) +=3D \
>  	i915_debugfs.o \
>  	i915_debugfs_params.o \
>  	display/intel_display_debugfs.o \
> +	display/intel_display_debugfs_params.o \
>  	display/intel_pipe_crc.o
>  i915-$(CONFIG_PERF_EVENTS) +=3D i915_pmu.o
>=20=20
> @@ -247,6 +248,7 @@ i915-y +=3D \
>  	display/intel_display.o \
>  	display/intel_display_driver.o \
>  	display/intel_display_irq.o \
> +	display/intel_display_params.o \
>  	display/intel_display_power.o \
>  	display/intel_display_power_map.o \
>  	display/intel_display_power_well.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 53e5c33e08c3..f2c84ae52217 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -19,6 +19,7 @@
>  #include "intel_cdclk.h"
>  #include "intel_display_device.h"
>  #include "intel_display_limits.h"
> +#include "intel_display_params.h"
>  #include "intel_display_power.h"
>  #include "intel_dpll_mgr.h"
>  #include "intel_fbc.h"
> @@ -517,6 +518,7 @@ struct intel_display {
>  	struct intel_hotplug hotplug;
>  	struct intel_opregion opregion;
>  	struct intel_overlay *overlay;
> +	struct intel_display_params params;
>  	struct intel_vbt_data vbt;
>  	struct intel_wm wm;
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index f05b52381a83..e929a8bf0555 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -17,6 +17,7 @@
>  #include "intel_de.h"
>  #include "intel_crtc_state_dump.h"
>  #include "intel_display_debugfs.h"
> +#include "intel_display_debugfs_params.h"
>  #include "intel_display_power.h"
>  #include "intel_display_power_well.h"
>  #include "intel_display_types.h"
> @@ -1100,6 +1101,7 @@ void intel_display_debugfs_register(struct drm_i915=
_private *i915)
>  	intel_hpd_debugfs_register(i915);
>  	intel_psr_debugfs_register(i915);
>  	intel_wm_debugfs_register(i915);
> +	intel_display_debugfs_params(i915);
>  }
>=20=20
>  static int i915_panel_show(struct seq_file *m, void *data)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c =
b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> new file mode 100644
> index 000000000000..62bd61e8ea37
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> @@ -0,0 +1,239 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#include <linux/kernel.h>
> +
> +#include <drm/drm_drv.h>
> +
> +#include "intel_display_debugfs_params.h"
> +#include "i915_drv.h"
> +#include "intel_display_params.h"
> +
> +/* int param */
> +static int intel_display_param_int_show(struct seq_file *m, void *data)
> +{
> +	int *value =3D m->private;
> +
> +	seq_printf(m, "%d\n", *value);
> +
> +	return 0;
> +}
> +
> +static int intel_display_param_int_open(struct inode *inode, struct file=
 *file)
> +{
> +	return single_open(file, intel_display_param_int_show, inode->i_private=
);
> +}
> +
> +static ssize_t intel_display_param_int_write(struct file *file,
> +					     const char __user *ubuf, size_t len,
> +					     loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	int *value =3D m->private;
> +	int ret;
> +
> +	ret =3D kstrtoint_from_user(ubuf, len, 0, value);
> +	if (ret) {
> +		/* support boolean values too */
> +		bool b;
> +
> +		ret =3D kstrtobool_from_user(ubuf, len, &b);
> +		if (!ret)
> +			*value =3D b;
> +	}
> +
> +	return ret ?: len;
> +}
> +
> +static const struct file_operations intel_display_param_int_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D intel_display_param_int_open,
> +	.read =3D seq_read,
> +	.write =3D intel_display_param_int_write,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
> +static const struct file_operations intel_display_param_int_fops_ro =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D intel_display_param_int_open,
> +	.read =3D seq_read,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
> +/* unsigned int param */
> +static int intel_display_param_uint_show(struct seq_file *m, void *data)
> +{
> +	unsigned int *value =3D m->private;
> +
> +	seq_printf(m, "%u\n", *value);
> +
> +	return 0;
> +}
> +
> +static int intel_display_param_uint_open(struct inode *inode, struct fil=
e *file)
> +{
> +	return single_open(file, intel_display_param_uint_show, inode->i_privat=
e);
> +}
> +
> +static ssize_t intel_display_param_uint_write(struct file *file,
> +				     const char __user *ubuf, size_t len,
> +				     loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	unsigned int *value =3D m->private;
> +	int ret;
> +
> +	ret =3D kstrtouint_from_user(ubuf, len, 0, value);
> +	if (ret) {
> +		/* support boolean values too */
> +		bool b;
> +
> +		ret =3D kstrtobool_from_user(ubuf, len, &b);
> +		if (!ret)
> +			*value =3D b;
> +	}
> +
> +	return ret ?: len;
> +}
> +
> +static const struct file_operations intel_display_param_uint_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D intel_display_param_uint_open,
> +	.read =3D seq_read,
> +	.write =3D intel_display_param_uint_write,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
> +static const struct file_operations intel_display_param_uint_fops_ro =3D=
 {
> +	.owner =3D THIS_MODULE,
> +	.open =3D intel_display_param_uint_open,
> +	.read =3D seq_read,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
> +/* char * param */
> +static int intel_display_param_charp_show(struct seq_file *m, void *data)
> +{
> +	const char **s =3D m->private;
> +
> +	seq_printf(m, "%s\n", *s);
> +
> +	return 0;
> +}
> +
> +static int intel_display_param_charp_open(struct inode *inode, struct fi=
le *file)
> +{
> +	return single_open(file, intel_display_param_charp_show, inode->i_priva=
te);
> +}
> +
> +static ssize_t intel_display_param_charp_write(struct file *file,
> +				      const char __user *ubuf, size_t len,
> +				      loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	char **s =3D m->private;
> +	char *new, *old;
> +
> +	old =3D *s;
> +	new =3D strndup_user(ubuf, PAGE_SIZE);
> +	if (IS_ERR(new)) {
> +		len =3D PTR_ERR(new);
> +		goto out;
> +	}
> +
> +	*s =3D new;
> +
> +	kfree(old);
> +out:
> +	return len;
> +}
> +
> +static const struct file_operations intel_display_param_charp_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D intel_display_param_charp_open,
> +	.read =3D seq_read,
> +	.write =3D intel_display_param_charp_write,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
> +static const struct file_operations intel_display_param_charp_fops_ro =
=3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D intel_display_param_charp_open,
> +	.read =3D seq_read,
> +	.llseek =3D default_llseek,
> +	.release =3D single_release,
> +};
> +
> +#define RO(mode) (((mode) & 0222) =3D=3D 0)
> +
> +static struct dentry *
> +intel_display_debugfs_create_int(const char *name, umode_t mode,
> +			struct dentry *parent, int *value)
> +{
> +	return debugfs_create_file_unsafe(name, mode, parent, value,
> +					  RO(mode) ? &intel_display_param_int_fops_ro :
> +					  &intel_display_param_int_fops);
> +}
> +
> +static struct dentry *
> +intel_display_debugfs_create_uint(const char *name, umode_t mode,
> +			 struct dentry *parent, unsigned int *value)
> +{
> +	return debugfs_create_file_unsafe(name, mode, parent, value,
> +					  RO(mode) ? &intel_display_param_uint_fops_ro :
> +					  &intel_display_param_uint_fops);
> +}
> +
> +static struct dentry *
> +intel_display_debugfs_create_charp(const char *name, umode_t mode,
> +			  struct dentry *parent, char **value)
> +{
> +	return debugfs_create_file(name, mode, parent, value,
> +				   RO(mode) ? &intel_display_param_charp_fops_ro :
> +				   &intel_display_param_charp_fops);
> +}
> +
> +#define _intel_display_param_create_file(parent, name, mode, valp)	\
> +	do {								\
> +		if (mode)						\
> +			_Generic(valp,					\
> +				 bool * : debugfs_create_bool,		\
> +				 int * : intel_display_debugfs_create_int, \
> +				 unsigned int * : intel_display_debugfs_create_uint, \
> +				 unsigned long * : debugfs_create_ulong, \
> +				 char ** : intel_display_debugfs_create_charp) \
> +				(name, mode, parent, valp);		\
> +	} while (0)

I'd try to take the opportunity to convert the param types to ones
supported by debugfs directly, and discard the i915 local crap (yes, I
wrote them) to add more types.

At least debugfs_create_str() has been added since I wrote the charp
thing.

> +
> +/* add a subdirectory with files for each intel display param */
> +void intel_display_debugfs_params(struct drm_i915_private *i915)
> +{
> +	struct drm_minor *minor =3D i915->drm.primary;
> +	struct intel_display_params *params =3D &i915->display.params;
> +	struct dentry *dir;
> +	char dirname[16];
> +
> +	snprintf(dirname, sizeof(dirname), "%s_params", i915->drm.driver->name);
> +	dir =3D debugfs_lookup(dirname, minor->debugfs_root);
> +	if (!dir)
> +		dir =3D debugfs_create_dir(dirname, minor->debugfs_root);
> +	if (IS_ERR(dir))
> +		return;
> +
> +	/*
> +	 * Note: We could create files for params needing special handling
> +	 * here. Set mode in params to 0 to skip the generic create file, or
> +	 * just let the generic create file fail silently with -EEXIST.
> +	 */
> +
> +#define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_fi=
le(dir, #x, mode, &params->x);
> +	INTEL_DISPLAY_PARAMS_FOR_EACH(REGISTER);
> +#undef REGISTER
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h =
b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
> new file mode 100644
> index 000000000000..0e33f4e90ddc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_DEBUGFS_PARAMS__
> +#define __INTEL_DISPLAY_DEBUGFS_PARAMS__
> +
> +struct dentry;
> +struct drm_i915_private;
> +
> +void intel_display_debugfs_params(struct drm_i915_private *i915);
> +
> +#endif /* __INTEL_DISPLAY_DEBUGFS_PARAMS__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/driver=
s/gpu/drm/i915/display/intel_display_device.c
> index a6a18eae7ae8..7b7d8e41e5be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -12,6 +12,7 @@
>  #include "intel_de.h"
>  #include "intel_display.h"
>  #include "intel_display_device.h"
> +#include "intel_display_params.h"
>  #include "intel_display_power.h"
>  #include "intel_display_reg_defs.h"
>  #include "intel_fbc.h"
> @@ -937,6 +938,13 @@ void intel_display_device_probe(struct drm_i915_priv=
ate *i915)
>  		DISPLAY_RUNTIME_INFO(i915)->ip.rel =3D rel;
>  		DISPLAY_RUNTIME_INFO(i915)->ip.step =3D step;
>  	}
> +
> +	intel_display_params_copy(&i915->display.params, &intel_display_modpara=
ms);
> +}
> +
> +void intel_display_device_remove(struct drm_i915_private *i915)
> +{
> +	intel_display_params_free(&i915->display.params);
>  }
>=20=20
>  void intel_display_device_info_runtime_init(struct drm_i915_private *i91=
5)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/driver=
s/gpu/drm/i915/display/intel_display_device.h
> index 44733c9d5812..f5a614a553a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -151,6 +151,7 @@ struct intel_display_device_info {
>  };
>=20=20
>  void intel_display_device_probe(struct drm_i915_private *i915);
> +void intel_display_device_remove(struct drm_i915_private *i915);
>  void intel_display_device_info_runtime_init(struct drm_i915_private *i91=
5);
>=20=20
>  void intel_display_device_info_print(const struct intel_display_device_i=
nfo *info,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> new file mode 100644
> index 000000000000..530cc80d0928
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -0,0 +1,95 @@
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the
> + * "Software"), to deal in the Software without restriction, including
> + * without limitation the rights to use, copy, modify, merge, publish,
> + * distribute, sub license, and/or sell copies of the Software, and to
> + * permit persons to whom the Software is furnished to do so, subject to
> + * the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the
> + * next paragraph) shall be included in all copies or substantial portio=
ns
> + * of the Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER D=
EALINGS
> + * IN THE SOFTWARE.
> + */

Please convert all of these to SPDX.

> +
> +#include <linux/string_helpers.h>
> +
> +#include <drm/drm_print.h>
> +
> +#include "intel_display_params.h"
> +#include "i915_drv.h"
> +
> +#define intel_display_param_named(name, T, perm, desc) \
> +	module_param_named(name, intel_display_modparams.name, T, perm); \
> +	MODULE_PARM_DESC(name, desc)
> +#define intel_display_param_named_unsafe(name, T, perm, desc) \
> +	module_param_named_unsafe(name, intel_display_modparams.name, T, perm);=
 \
> +	MODULE_PARM_DESC(name, desc)
> +
> +struct intel_display_params intel_display_modparams __read_mostly =3D {

Please make this static.

If any place in code really needs access to the original raw module
params rather than the copied device params, then add accessor
functions.

(This has been on my todo list for i915 a long time, but I think here we
could start with all the ones that aren't needed directly.)

> +#define MEMBER(T, member, value, ...) .member =3D (value),
> +	INTEL_DISPLAY_PARAMS_FOR_EACH(MEMBER)
> +#undef MEMBER
> +};
> +/*
> + * Note: As a rule, keep module parameter sysfs permissions read-only
> + * 0400. Runtime changes are only supported through i915 debugfs.
> + *
> + * For any exceptions requiring write access and runtime changes through=
 module
> + * parameter sysfs, prevent debugfs file creation by setting the paramet=
er's
> + * debugfs mode to 0.
> + */
> +
> +static void _param_dup_charp(char **valp)
> +{
> +	*valp =3D kstrdup(*valp, GFP_ATOMIC);
> +}
> +
> +static void _param_nop(void *valp)
> +{
> +}
> +
> +#define _param_dup(valp)				\
> +	_Generic(valp,					\
> +		 char ** : _param_dup_charp,		\
> +		 default : _param_nop)			\
> +		(valp)
> +
> +void intel_display_params_copy(struct intel_display_params *dest,
> +		      const struct intel_display_params *src)
> +{
> +	*dest =3D *src;
> +#define DUP(T, x, ...) _param_dup(&dest->x);
> +	INTEL_DISPLAY_PARAMS_FOR_EACH(DUP);
> +#undef DUP
> +}
> +
> +static void _param_free_charp(char **valp)
> +{
> +	kfree(*valp);
> +	*valp =3D NULL;
> +}
> +
> +#define _param_free(valp)				\
> +	_Generic(valp,					\
> +		 char ** : _param_free_charp,		\
> +		 default : _param_nop)			\
> +		(valp)
> +
> +/* free the allocated members, *not* the passed in params itself */
> +void intel_display_params_free(struct intel_display_params *params)
> +{
> +#define FREE(T, x, ...) _param_free(&params->x);
> +	INTEL_DISPLAY_PARAMS_FOR_EACH(FREE);
> +#undef FREE
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> new file mode 100644
> index 000000000000..4c241f265c10
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -0,0 +1,58 @@
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> + * DEALINGS IN THE SOFTWARE.
> + */
> +
> +#ifndef _INTEL_DISPLAY_PARAMS_H_
> +#define _INTEL_DISPLAY_PARAMS_H_
> +
> +#include <linux/types.h>
> +#include <linux/cache.h> /* for __read_mostly */
> +
> +struct drm_printer;
> +
> +/*
> + * Invoke param, a function-like macro, for each intel display param, wi=
th
> + * arguments:
> + *
> + * param(type, name, value, mode)
> + *
> + * type: parameter type, one of {bool, int, unsigned int, unsigned long,=
 char *}
> + * name: name of the parameter
> + * value: initial/default value of the parameter
> + * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not =
create
> + *       debugfs file
> + */
> +#define INTEL_DISPLAY_PARAMS_FOR_EACH(param)
> +
> +#define MEMBER(T, member, ...) T member;
> +struct intel_display_params {
> +	INTEL_DISPLAY_PARAMS_FOR_EACH(MEMBER);
> +};
> +#undef MEMBER
> +
> +extern struct intel_display_params intel_display_modparams __read_mostly;
> +
> +void intel_display_params_copy(struct intel_display_params *dest,
> +			       const struct intel_display_params *src);
> +void intel_display_params_free(struct intel_display_params *params);
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 78501a83ba10..a86b10093dc4 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -907,6 +907,8 @@ static void i915_driver_release(struct drm_device *de=
v)
>  	intel_runtime_pm_driver_release(rpm);
>=20=20
>  	i915_driver_late_release(dev_priv);
> +
> +	intel_display_device_remove(dev_priv);
>  }
>=20=20
>  static int i915_driver_open(struct drm_device *dev, struct drm_file *fil=
e)

--=20
Jani Nikula, Intel
