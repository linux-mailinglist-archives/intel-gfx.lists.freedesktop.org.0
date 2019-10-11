Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D285D43ED
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 17:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6559A6EC53;
	Fri, 11 Oct 2019 15:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD6C6EC53
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 15:14:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 08:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; 
 d="p7s'?scan'208";a="369445147"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 11 Oct 2019 08:14:31 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 11 Oct 2019 08:14:08 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.173]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.114]) with mapi id 14.03.0439.000;
 Fri, 11 Oct 2019 08:14:08 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Expose engine properties via sysfs
Thread-Index: AQHVgCg/XSxYYy9Pd0iDAqQZ3smAAqdWAhEA
Date: Fri, 11 Oct 2019 15:14:07 +0000
Message-ID: <a00580675e7831293c3553087f7cded368c05935.camel@intel.com>
References: <20191011113620.4671-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191011113620.4671-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expose engine properties via sysfs
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
Content-Type: multipart/mixed; boundary="===============1720381486=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1720381486==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-0Abbxmiznu/yoDpXNZOF"

--=-0Abbxmiznu/yoDpXNZOF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-10-11 at 12:36 +0100, Chris Wilson wrote:
> Preliminary stub to add engines underneath /sys/class/drm/cardN/, so
> that we can expose properties on each engine to the sysadmin.
>=20
> To start with we have basic analogues of the i915_query ioctl so that
> we
> can pretty print engine discovery from the shell, and flesh out the
> directory structure. Later we will add writeable sysadmin properties
> such
> as per-engine timeout controls.
>=20
> An example tree of the engine properties on Braswell:
>     /sys/class/drm/card0
>     =E2=94=94=E2=94=80=E2=94=80 engine
>         =E2=94=9C=E2=94=80=E2=94=80 bcs0
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 capabilities
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 class
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 instance
>         =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 name
>         =E2=94=9C=E2=94=80=E2=94=80 rcs0
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 capabilities
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 class
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 instance
>         =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 name
>         =E2=94=9C=E2=94=80=E2=94=80 vcs0
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 capabilities
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 class
>         =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 instance
>         =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 name
>         =E2=94=94=E2=94=80=E2=94=80 vecs0
>             =E2=94=9C=E2=94=80=E2=94=80 capabilities
>             =E2=94=9C=E2=94=80=E2=94=80 class
>             =E2=94=9C=E2=94=80=E2=94=80 instance
>             =E2=94=94=E2=94=80=E2=94=80 name
>=20
> v2: Include stringified capabilities
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                |   3 +-
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 177
> +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.h |  14 ++
>  drivers/gpu/drm/i915/i915_sysfs.c            |   3 +
>  4 files changed, 196 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_sysfs.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile
> b/drivers/gpu/drm/i915/Makefile
> index e791d9323b51..cd9a10ba2516 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -78,8 +78,9 @@ gt-y +=3D \
>  	gt/intel_breadcrumbs.o \
>  	gt/intel_context.o \
>  	gt/intel_engine_cs.o \
> -	gt/intel_engine_pool.o \
>  	gt/intel_engine_pm.o \
> +	gt/intel_engine_pool.o \
> +	gt/intel_engine_sysfs.o \
>  	gt/intel_engine_user.o \
>  	gt/intel_gt.o \
>  	gt/intel_gt_irq.o \
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> new file mode 100644
> index 000000000000..f6e4822f8928
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> @@ -0,0 +1,177 @@
> +/*
> + * SPDX-License-Identifier: MIT
> + *
> + * Copyright =C2=A9 2019 Intel Corporation
> + */
> +
> +#include <linux/kobject.h>
> +#include <linux/sysfs.h>
> +
> +#include "i915_drv.h"
> +#include "intel_engine.h"
> +#include "intel_engine_sysfs.h"
> +
> +struct kobj_engine {
> +	struct kobject base;
> +	struct intel_engine_cs *engine;
> +};
> +
> +static struct intel_engine_cs *kobj_to_engine(struct kobject *kobj)
> +{
> +	return container_of(kobj, struct kobj_engine, base)->engine;
> +}
> +
> +static ssize_t
> +name_show(struct kobject *kobj, struct kobj_attribute *attr, char
> *buf)
> +{
> +	return sprintf(buf, "%s\n", kobj_to_engine(kobj)->name);
> +}
> +
> +static struct kobj_attribute name_attr =3D
> +__ATTR(name, 0444, name_show, NULL);
> +
> +static ssize_t
> +class_show(struct kobject *kobj, struct kobj_attribute *attr, char
> *buf)
> +{
> +	return sprintf(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
> +}
> +
> +static struct kobj_attribute class_attr =3D
> +__ATTR(class, 0444, class_show, NULL);
> +
> +static ssize_t
> +inst_show(struct kobject *kobj, struct kobj_attribute *attr, char
> *buf)
> +{
> +	return sprintf(buf, "%d\n", kobj_to_engine(kobj)-
> >uabi_instance);
> +}
> +
> +static struct kobj_attribute inst_attr =3D
> +__ATTR(instance, 0444, inst_show, NULL);
> +
> +static ssize_t repr_trim(char *buf, ssize_t len)
> +{
> +	/* Trim off the trailing space and replace with a newline */
> +	if (len > PAGE_SIZE)
> +		len =3D PAGE_SIZE;
> +	if (len > 0)
> +		buf[len - 1] =3D '\n';
> +
> +	return len;
> +}
> +
> +static ssize_t
> +caps_show(struct kobject *kobj, struct kobj_attribute *attr, char
> *buf)
> +{
> +	static const char *vcs_repr[] =3D {
> +	       [ilog2(I915_VIDEO_CLASS_CAPABILITY_HEVC)] =3D "hevc",
> +	       [ilog2(I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC)] =3D
> "sfc",
> +	};
> +	static const char *vecs_repr[] =3D {
> +	       [ilog2(I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC)] =3D
> "sfc",
> +	};

Is this something we can add as some sort of property directly to the
capability definitions? Keeping a separate definition here seems like a
maintainability concern.

> +	struct intel_engine_cs *engine =3D kobj_to_engine(kobj);
> +	const char **repr;
> +	int num_repr, n;
> +	ssize_t len;
> +
> +	switch (engine->class) {
> +	case VIDEO_DECODE_CLASS:
> +		repr =3D vcs_repr;
> +		num_repr =3D ARRAY_SIZE(vcs_repr);
> +		break;
> +
> +	case VIDEO_ENHANCEMENT_CLASS:
> +		repr =3D vecs_repr;
> +		num_repr =3D ARRAY_SIZE(vecs_repr);
> +		break;
> +
> +	default:
> +		repr =3D NULL;
> +		num_repr =3D 0;
> +		break;
> +	}
> +
> +	len =3D 0;
> +	for_each_set_bit(n,
> +			 (unsigned long *)&engine->uabi_capabilities,
> +			 BITS_PER_TYPE(typeof(engine-
> >uabi_capabilities))) {
> +		if (n < num_repr && repr[n])
> +			len +=3D snprintf(buf + len, PAGE_SIZE - len,
> +					"%s ", repr[n]);
> +		else
> +			len +=3D snprintf(buf + len, PAGE_SIZE - len,
> +					"[%d] ", n);
> +	}
> +	return repr_trim(buf, len);
> +}
> +
> +static struct kobj_attribute caps_attr =3D
> +__ATTR(capabilities, 0444, caps_show, NULL);
> +
> +static void kobj_engine_release(struct kobject *kobj)
> +{
> +	kfree(kobj);
> +}
> +
> +static struct kobj_type kobj_engine_type =3D {
> +	.release =3D kobj_engine_release,
> +	.sysfs_ops =3D &kobj_sysfs_ops
> +};
> +
> +static struct kobject *
> +kobj_engine(struct kobject *dir, struct intel_engine_cs *engine)
> +{
> +	struct kobj_engine *ke;
> +
> +	ke =3D kzalloc(sizeof(*ke), GFP_KERNEL);
> +	if (!ke)
> +		return NULL;
> +
> +	kobject_init(&ke->base, &kobj_engine_type);
> +	ke->engine =3D engine;
> +
> +	if (kobject_add(&ke->base, dir, "%s", engine->name)) {
> +		kobject_put(&ke->base);
> +		return NULL;
> +	}
> +
> +	/* xfer ownership to sysfs tree */
> +	return &ke->base;
> +}
> +
> +void intel_engines_add_sysfs(struct drm_i915_private *i915)
> +{
> +	static const struct attribute *files[] =3D {
> +		&name_attr.attr,
> +		&class_attr.attr,
> +		&inst_attr.attr,
> +		&caps_attr.attr,
> +		NULL
> +	};
> +
> +	struct device *kdev =3D i915->drm.primary->kdev;
> +	struct intel_engine_cs *engine;
> +	struct kobject *dir;
> +
> +	dir =3D kobject_create_and_add("engine", &kdev->kobj);
> +	if (!dir)
> +		return;
> +
> +	for_each_uabi_engine(engine, i915) {
> +		struct kobject *kobj;
> +
> +		kobj =3D kobj_engine(dir, engine);
> +		if (!kobj)
> +			goto err_engine;
> +
> +		if (sysfs_create_files(kobj, files))
> +			goto err_engine;
> +
> +		if (0) {
> +err_engine:

Can you explain why we need this goto/if 0 over a simple print/break
under the if(sysfs_create_files()) call above? At a glance this just
seems overly complicated.

Thanks,
Stuart

> +			dev_err(kdev, "Failed to add sysfs engine
> '%s'\n",
> +				engine->name);
> +			break;
> +		}
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.h
> b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.h
> new file mode 100644
> index 000000000000..ef44a745b70a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.h
> @@ -0,0 +1,14 @@
> +/*
> + * SPDX-License-Identifier: MIT
> + *
> + * Copyright =C2=A9 2019 Intel Corporation
> + */
> +
> +#ifndef INTEL_ENGINE_SYSFS_H
> +#define INTEL_ENGINE_SYSFS_H
> +
> +struct drm_i915_private;
> +
> +void intel_engines_add_sysfs(struct drm_i915_private *i915);
> +
> +#endif /* INTEL_ENGINE_SYSFS_H */
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c
> b/drivers/gpu/drm/i915/i915_sysfs.c
> index bf039b8ba593..7b665f69f301 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -30,6 +30,7 @@
>  #include <linux/stat.h>
>  #include <linux/sysfs.h>
> =20
> +#include "gt/intel_engine_sysfs.h"
>  #include "gt/intel_rc6.h"
> =20
>  #include "i915_drv.h"
> @@ -616,6 +617,8 @@ void i915_setup_sysfs(struct drm_i915_private
> *dev_priv)
>  		DRM_ERROR("RPS sysfs setup failed\n");
> =20
>  	i915_setup_error_capture(kdev);
> +
> +	intel_engines_add_sysfs(dev_priv);
>  }
> =20
>  void i915_teardown_sysfs(struct drm_i915_private *dev_priv)

--=-0Abbxmiznu/yoDpXNZOF
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTEwMTExNTE0MDRaMCMGCSqGSIb3DQEJ
BDEWBBQCdk627gC2Dumh3SUSZipgfVRAVDANBgkqhkiG9w0BAQEFAASCAQC2EZQcDEFXkIoHE9gy
t2MJkoO9UfsKXxsBJpyseX7uURMRDWthvpUvE/Woo+JtmlCepNHN7hY6Yip9eT2jxiHmEI9at+wE
+JllSHupZNt+3OUFRDkrTGLaLSTS1Zam5cvCfRhpdu4anOCKKqg5T0qV0neRES4jBmstWStTIywD
A85dpIIS9YfqBDd9jr6Z4gcy1xQ0POuJuZLy3Mi+m6y/27/rtqzbfhvPxHKHdttyb4iw5zExt+y5
R29BY8sV5LOocnxV08dNHTt4PUXUxvTUcm3KLKVw17HVc+tiQT+CnjMc82trBFdy6b1DRJzhDBCK
acKrgMOpsiPzuHMcRLqaAAAAAAAA


--=-0Abbxmiznu/yoDpXNZOF--

--===============1720381486==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1720381486==--
