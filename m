Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D371A17C8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4774A6E91B;
	Tue,  7 Apr 2020 22:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 565 seconds by postgrey-1.36 at gabe;
 Tue, 07 Apr 2020 21:54:20 UTC
Received: from smtpout1.mo804.mail-out.ovh.net
 (smtpout1.mo804.mail-out.ovh.net [79.137.123.220])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C186E90E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 21:54:20 +0000 (UTC)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.68])
 by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 74B77346DE87;
 Tue,  7 Apr 2020 23:44:51 +0200 (CEST)
Received: from smida.it (37.59.142.96) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 7 Apr 2020
 23:44:50 +0200
Date: Wed, 8 Apr 2020 00:44:49 +0300
From: Andi Shyti <andi@smida.it>
To: Andi Shyti <andi@etezian.org>
Message-ID: <20200407214449.GC207210@jack.zhora.eu>
References: <20200407214350.217495-1-andi@etezian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407214350.217495-1-andi@etezian.org>
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 43a76b1d-c61d-4e97-aa38-6679cf90373a
X-Ovh-Tracer-Id: 17605415368538903846
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgdduheehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdelnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesshhmihgurgdrihhtqeenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesshhmihgurgdrihhtpdhrtghpthhtoheprghnughirdhshhihthhisehinhhtvghlrdgtohhm
X-Mailman-Approved-At: Tue, 07 Apr 2020 22:08:57 +0000
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915/gt: move remaining debugfs
 interfaces into gt
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Please ignore... wrong patch! :/

Andi

On Wed, Apr 08, 2020 at 12:43:50AM +0300, Andi Shyti wrote:
> From: Andi Shyti <andi.shyti@intel.com>
> =

> The following interfaces:
> =

>   i915_wedged
>   i915_forcewake_user
>   i915_gem_interrupt
>   i915_rcs_topology
>   i915_sseu_status
> =

> are dependent on gt values. Put them inside gt/ and drop the
> "i915_" prefix name. This would be the new structure:
> =

>   dri/0/gt
>   |
>   +-- forcewake_user
>   |
>   +-- interrupt_info
>   |
>   +-- reset
>   |
>   +-- rcs_topology
>   |
>   \-- sseu_status
> =

> For backwards compatibility with existing igt (and the slight
> semantic difference between operating on the i915 abi entry
> points and the deep gt info):
> =

>   dri/0
>   |
>   +-- i915_wedged
>   |
>   \-- i915_forcewake_user
> =

> remain at the top level.
> =

> Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
> Hi,
> =

> this patch is the first of a series that aims to refactor the
> debugfs structure in the i915. Some changes will affect the
> debugfs framework as well.
> =

> It has gone through a series of offline reviews mainly from
> Tvrtko. Even though it hasn't been done publicly, I took the
> freedom to add Tvrtko's review.
> =

> Thanks Tvrtko and Chris for the review,
> Andi
> =

> Changelog
> =3D=3D=3D=3D=3D=3D=3D=3D=3D
> v6:
>  - i915_forcewake_user left intact in in the top level directory
>  - improved commit log
> v5:
>  - renamed from debugfs_gt_sseu.[ch] to debugfs_sseu.[ch]
>  - moved i915_rcs_topology from i915_debugfs.c to
>    gt/debugfs_sseu.c
>  - added Tvrtko's and Chris r-b.
> v4:
>  - interrupt and sseu debugfs interface are moved to their own
>    "debugfs_gt_irq" and "debugfs_gt_sseu" files
>  - reset functions are renamed to reset_show/store
> v3:
>  - better arrangement of what should stay in i915_debugfs and
>    what needs to be moved under gt/
>  - more use of the local "uncore" and "i915" variables to improve
>    readability
> v2:
>  - dropped changes on "drop_caches", they were indeed irrelevant
>  - improved interrupt info function
> =

>  drivers/gpu/drm/i915/Makefile            |   2 +
>  drivers/gpu/drm/i915/gt/debugfs_gt.c     |  50 +++-
>  drivers/gpu/drm/i915/gt/debugfs_gt_irq.c | 162 +++++++++++
>  drivers/gpu/drm/i915/gt/debugfs_gt_irq.h |  15 +
>  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c  |  32 +++
>  drivers/gpu/drm/i915/gt/debugfs_sseu.c   | 294 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/debugfs_sseu.h   |  16 ++
>  drivers/gpu/drm/i915/i915_debugfs.c      | 350 +----------------------
>  8 files changed, 571 insertions(+), 350 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_irq.c
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_gt_irq.h
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_sseu.c
>  create mode 100644 drivers/gpu/drm/i915/gt/debugfs_sseu.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 2fce8b0040f39..51929d6648e2c 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -79,6 +79,8 @@ gt-y +=3D \
>  	gt/debugfs_engines.o \
>  	gt/debugfs_gt.o \
>  	gt/debugfs_gt_pm.o \
> +	gt/debugfs_gt_irq.o \
> +	gt/debugfs_sseu.o \
>  	gt/gen6_ppgtt.o \
>  	gt/gen7_renderclear.o \
>  	gt/gen8_ppgtt.o \
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt.c b/drivers/gpu/drm/i915/=
gt/debugfs_gt.c
> index 1de5fbaa1cf9c..507fe5dcb360e 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt.c
> @@ -8,9 +8,53 @@
>  =

>  #include "debugfs_engines.h"
>  #include "debugfs_gt.h"
> +#include "debugfs_gt_irq.h"
>  #include "debugfs_gt_pm.h"
> -#include "uc/intel_uc_debugfs.h"
> +#include "debugfs_sseu.h"
>  #include "i915_drv.h"
> +#include "intel_gt_pm.h"
> +#include "intel_gt_requests.h"
> +#include "uc/intel_uc_debugfs.h"
> +
> +static int reset_show(void *data, u64 *val)
> +{
> +	struct intel_gt *gt =3D data;
> +	int ret =3D intel_gt_terminally_wedged(gt);
> +
> +	switch (ret) {
> +	case -EIO:
> +		*val =3D 1;
> +		return 0;
> +	case 0:
> +		*val =3D 0;
> +		return 0;
> +	default:
> +		return ret;
> +	}
> +}
> +
> +static int reset_store(void *data, u64 val)
> +{
> +	struct intel_gt *gt =3D data;
> +
> +	/* Flush any previous reset before applying for a new one */
> +	wait_event(gt->reset.queue,
> +		   !test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> +
> +	intel_gt_handle_error(gt, val, I915_ERROR_CAPTURE,
> +			      "Manually reset engine mask to %llx", val);
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(reset_fops, reset_show, reset_store, "%llu\n");
> +
> +static void __debugfs_gt_register(struct intel_gt *gt, struct dentry *ro=
ot)
> +{
> +	static const struct debugfs_gt_file files[] =3D {
> +		{ "reset", &reset_fops, NULL },
> +	};
> +
> +	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> +}
>  =

>  void debugfs_gt_register(struct intel_gt *gt)
>  {
> @@ -23,8 +67,12 @@ void debugfs_gt_register(struct intel_gt *gt)
>  	if (IS_ERR(root))
>  		return;
>  =

> +	__debugfs_gt_register(gt, root);
> +
>  	debugfs_engines_register(gt, root);
>  	debugfs_gt_pm_register(gt, root);
> +	debugfs_gt_register_sseu(gt, root);
> +	debugfs_gt_register_irq(gt, root);
>  =

>  	intel_uc_debugfs_register(&gt->uc, root);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_irq.c b/drivers/gpu/drm/i=
915/gt/debugfs_gt_irq.c
> new file mode 100644
> index 0000000000000..8aaf76dfc5739
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_irq.c
> @@ -0,0 +1,162 @@
> +// SPDX-License-Identifier: MIT
> +
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include "debugfs_gt.h"
> +#include "debugfs_gt_irq.h"
> +#include "i915_drv.h"
> +
> +static int interrupt_info_show(struct seq_file *m, void *data)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	intel_wakeref_t wakeref;
> +	int i;
> +
> +	wakeref =3D intel_runtime_pm_get(uncore->rpm);
> +
> +	if (IS_CHERRYVIEW(i915)) {
> +		seq_printf(m, "Master Interrupt Control:\t%08x\n",
> +			   intel_uncore_read(uncore, GEN8_MASTER_IRQ));
> +
> +		for (i =3D 0; i < 4; i++) {
> +			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
> +				   i, intel_uncore_read(uncore,
> +							GEN8_GT_IMR(i)));
> +			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
> +				   i, intel_uncore_read(uncore,
> +							GEN8_GT_IIR(i)));
> +			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
> +				   i, intel_uncore_read(uncore,
> +							GEN8_GT_IER(i)));
> +		}
> +
> +	} else if (INTEL_GEN(i915) >=3D 11) {
> +		seq_printf(m, "Master Interrupt Control:  %08x\n",
> +			   intel_uncore_read(uncore, GEN11_GFX_MSTR_IRQ));
> +
> +		seq_printf(m, "Render/Copy Intr Enable:   %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_RENDER_COPY_INTR_ENABLE));
> +		seq_printf(m, "VCS/VECS Intr Enable:      %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_VCS_VECS_INTR_ENABLE));
> +		seq_printf(m, "GUC/SG Intr Enable:\t   %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_GUC_SG_INTR_ENABLE));
> +		seq_printf(m, "GPM/WGBOXPERF Intr Enable: %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_GPM_WGBOXPERF_INTR_ENABLE));
> +		seq_printf(m, "Crypto Intr Enable:\t   %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_CRYPTO_RSVD_INTR_ENABLE));
> +		seq_printf(m, "GUnit/CSME Intr Enable:\t   %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_GUNIT_CSME_INTR_ENABLE));
> +
> +	} else if (INTEL_GEN(i915) >=3D 8) {
> +		seq_printf(m, "Master Interrupt Control:\t%08x\n",
> +			   intel_uncore_read(uncore, GEN8_MASTER_IRQ));
> +
> +		for (i =3D 0; i < 4; i++) {
> +			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
> +				   i, intel_uncore_read(uncore,
> +							GEN8_GT_IMR(i)));
> +			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
> +				   i, intel_uncore_read(uncore,
> +							GEN8_GT_IIR(i)));
> +			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
> +				   i, intel_uncore_read(uncore,
> +							GEN8_GT_IER(i)));
> +		}
> +
> +	} else if (IS_VALLEYVIEW(i915)) {
> +		seq_printf(m, "Master IER:\t%08x\n",
> +			   intel_uncore_read(uncore, VLV_MASTER_IER));
> +
> +		seq_printf(m, "Render IER:\t%08x\n",
> +			   intel_uncore_read(uncore, GTIER));
> +		seq_printf(m, "Render IIR:\t%08x\n",
> +			   intel_uncore_read(uncore, GTIIR));
> +		seq_printf(m, "Render IMR:\t%08x\n",
> +			   intel_uncore_read(uncore, GTIMR));
> +
> +		seq_printf(m, "PM IER:\t\t%08x\n",
> +			   intel_uncore_read(uncore, GEN6_PMIER));
> +		seq_printf(m, "PM IIR:\t\t%08x\n",
> +			   intel_uncore_read(uncore, GEN6_PMIIR));
> +		seq_printf(m, "PM IMR:\t\t%08x\n",
> +			   intel_uncore_read(uncore, GEN6_PMIMR));
> +
> +	} else if (!HAS_PCH_SPLIT(i915)) {
> +		seq_printf(m, "Interrupt enable:    %08x\n",
> +			   intel_uncore_read(uncore, GEN2_IER));
> +		seq_printf(m, "Interrupt identity:  %08x\n",
> +			   intel_uncore_read(uncore, GEN2_IIR));
> +		seq_printf(m, "Interrupt mask:      %08x\n",
> +			   intel_uncore_read(uncore, GEN2_IMR));
> +	} else {
> +		seq_printf(m, "Graphics Interrupt enable:		%08x\n",
> +			   intel_uncore_read(uncore, GTIER));
> +		seq_printf(m, "Graphics Interrupt identity:		%08x\n",
> +			   intel_uncore_read(uncore, GTIIR));
> +		seq_printf(m, "Graphics Interrupt mask:		%08x\n",
> +			   intel_uncore_read(uncore, GTIMR));
> +	}
> +
> +	if (INTEL_GEN(i915) >=3D 11) {
> +		seq_printf(m, "RCS Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_RCS0_RSVD_INTR_MASK));
> +		seq_printf(m, "BCS Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_BCS_RSVD_INTR_MASK));
> +		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_VCS0_VCS1_INTR_MASK));
> +		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_VCS2_VCS3_INTR_MASK));
> +		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_VECS0_VECS1_INTR_MASK));
> +		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_GUC_SG_INTR_MASK));
> +		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_GPM_WGBOXPERF_INTR_MASK));
> +		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_CRYPTO_RSVD_INTR_MASK));
> +		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
> +			   intel_uncore_read(uncore,
> +					     GEN11_GUNIT_CSME_INTR_MASK));
> +
> +	} else if (INTEL_GEN(i915) >=3D 6) {
> +		for_each_engine(engine, gt, id) {
> +			seq_printf(m,
> +				   "Graphics Interrupt mask (%s):	%08x\n",
> +				   engine->name, ENGINE_READ(engine, RING_IMR));
> +		}
> +	}
> +
> +	intel_runtime_pm_put(uncore->rpm, wakeref);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(interrupt_info);
> +
> +void debugfs_gt_register_irq(struct intel_gt *gt, struct dentry *root)
> +{
> +	static const struct debugfs_gt_file files[] =3D {
> +		{ "interrupt_info", &interrupt_info_fops, NULL },
> +	};
> +
> +	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> +}
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_irq.h b/drivers/gpu/drm/i=
915/gt/debugfs_gt_irq.h
> new file mode 100644
> index 0000000000000..f3d601b3d019b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_irq.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef DEBUGFS_GT_IRQ_H
> +#define DEBUGFS_GT_IRQ_H
> +
> +struct intel_gt;
> +struct dentry;
> +
> +void debugfs_gt_register_irq(struct intel_gt *gt, struct dentry *root);
> +
> +#endif /* DEBUGFS_GT_IRQ_H */
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i9=
15/gt/debugfs_gt_pm.c
> index aab30d908072d..c94a946e0adb1 100644
> --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> @@ -10,6 +10,7 @@
>  #include "debugfs_gt_pm.h"
>  #include "i915_drv.h"
>  #include "intel_gt.h"
> +#include "intel_gt_pm.h"
>  #include "intel_llc.h"
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
> @@ -17,6 +18,36 @@
>  #include "intel_sideband.h"
>  #include "intel_uncore.h"
>  =

> +static int forcewake_user_open(struct inode *inode, struct file *file)
> +{
> +	struct intel_gt *gt =3D inode->i_private;
> +
> +	atomic_inc(&gt->user_wakeref);
> +	intel_gt_pm_get(gt);
> +	if (INTEL_GEN(gt->i915) >=3D 6)
> +		intel_uncore_forcewake_user_get(gt->uncore);
> +
> +	return 0;
> +}
> +
> +static int forcewake_user_release(struct inode *inode, struct file *file)
> +{
> +	struct intel_gt *gt =3D inode->i_private;
> +
> +	if (INTEL_GEN(gt->i915) >=3D 6)
> +		intel_uncore_forcewake_user_put(gt->uncore);
> +	intel_gt_pm_put(gt);
> +	atomic_dec(&gt->user_wakeref);
> +
> +	return 0;
> +}
> +
> +static const struct file_operations forcewake_user_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D forcewake_user_open,
> +	.release =3D forcewake_user_release,
> +};
> +
>  static int fw_domains_show(struct seq_file *m, void *data)
>  {
>  	struct intel_gt *gt =3D m->private;
> @@ -597,6 +628,7 @@ void debugfs_gt_pm_register(struct intel_gt *gt, stru=
ct dentry *root)
>  		{ "drpc", &drpc_fops, NULL },
>  		{ "frequency", &frequency_fops, NULL },
>  		{ "forcewake", &fw_domains_fops, NULL },
> +		{ "forcewake_user", &forcewake_user_fops, NULL},
>  		{ "llc", &llc_fops, llc_eval },
>  		{ "rps_boost", &rps_boost_fops, rps_eval },
>  	};
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_sseu.c b/drivers/gpu/drm/i91=
5/gt/debugfs_sseu.c
> new file mode 100644
> index 0000000000000..61cad1e17e7b0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_sseu.c
> @@ -0,0 +1,294 @@
> +// SPDX-License-Identifier: MIT
> +
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include "debugfs_gt.h"
> +#include "debugfs_sseu.h"
> +#include "i915_drv.h"
> +
> +static void intel_sseu_copy_subslices(const struct sseu_dev_info *sseu,
> +				      int slice, u8 *to_mask)
> +{
> +	int offset =3D slice * sseu->ss_stride;
> +
> +	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
> +}
> +
> +static void cherryview_sseu_device_status(struct intel_gt *gt,
> +					  struct sseu_dev_info *sseu)
> +{
> +#define SS_MAX 2
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	const int ss_max =3D SS_MAX;
> +	u32 sig1[SS_MAX], sig2[SS_MAX];
> +	int ss;
> +
> +	sig1[0] =3D intel_uncore_read(uncore, CHV_POWER_SS0_SIG1);
> +	sig1[1] =3D intel_uncore_read(uncore, CHV_POWER_SS1_SIG1);
> +	sig2[0] =3D intel_uncore_read(uncore, CHV_POWER_SS0_SIG2);
> +	sig2[1] =3D intel_uncore_read(uncore, CHV_POWER_SS1_SIG2);
> +
> +	for (ss =3D 0; ss < ss_max; ss++) {
> +		unsigned int eu_cnt;
> +
> +		if (sig1[ss] & CHV_SS_PG_ENABLE)
> +			/* skip disabled subslice */
> +			continue;
> +
> +		sseu->slice_mask =3D BIT(0);
> +		sseu->subslice_mask[0] |=3D BIT(ss);
> +		eu_cnt =3D ((sig1[ss] & CHV_EU08_PG_ENABLE) ? 0 : 2) +
> +			 ((sig1[ss] & CHV_EU19_PG_ENABLE) ? 0 : 2) +
> +			 ((sig1[ss] & CHV_EU210_PG_ENABLE) ? 0 : 2) +
> +			 ((sig2[ss] & CHV_EU311_PG_ENABLE) ? 0 : 2);
> +		sseu->eu_total +=3D eu_cnt;
> +		sseu->eu_per_subslice =3D max_t(unsigned int,
> +					      sseu->eu_per_subslice, eu_cnt);
> +	}
> +#undef SS_MAX
> +}
> +
> +static void gen10_sseu_device_status(struct intel_gt *gt,
> +				     struct sseu_dev_info *sseu)
> +{
> +#define SS_MAX 6
> +	const struct intel_runtime_info *info =3D RUNTIME_INFO(gt->i915);
> +	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	int s, ss;
> +
> +	for (s =3D 0; s < info->sseu.max_slices; s++) {
> +		/*
> +		 * FIXME: Valid SS Mask respects the spec and read
> +		 * only valid bits for those registers, excluding reserved
> +		 * although this seems wrong because it would leave many
> +		 * subslices without ACK.
> +		 */
> +		s_reg[s] =3D intel_uncore_read(uncore, GEN10_SLICE_PGCTL_ACK(s)) &
> +			   GEN10_PGCTL_VALID_SS_MASK(s);
> +		eu_reg[2 * s] =3D intel_uncore_read(uncore,
> +						  GEN10_SS01_EU_PGCTL_ACK(s));
> +		eu_reg[2 * s + 1] =3D intel_uncore_read(uncore,
> +						  GEN10_SS23_EU_PGCTL_ACK(s));
> +	}
> +
> +	eu_mask[0] =3D GEN9_PGCTL_SSA_EU08_ACK |
> +		     GEN9_PGCTL_SSA_EU19_ACK |
> +		     GEN9_PGCTL_SSA_EU210_ACK |
> +		     GEN9_PGCTL_SSA_EU311_ACK;
> +	eu_mask[1] =3D GEN9_PGCTL_SSB_EU08_ACK |
> +		     GEN9_PGCTL_SSB_EU19_ACK |
> +		     GEN9_PGCTL_SSB_EU210_ACK |
> +		     GEN9_PGCTL_SSB_EU311_ACK;
> +
> +	for (s =3D 0; s < info->sseu.max_slices; s++) {
> +		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) =3D=3D 0)
> +			/* skip disabled slice */
> +			continue;
> +
> +		sseu->slice_mask |=3D BIT(s);
> +		intel_sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
> +
> +		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> +			unsigned int eu_cnt;
> +
> +			if (info->sseu.has_subslice_pg &&
> +			    !(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
> +				/* skip disabled subslice */
> +				continue;
> +
> +			eu_cnt =3D 2 * hweight32(eu_reg[2 * s + ss / 2] &
> +					       eu_mask[ss % 2]);
> +			sseu->eu_total +=3D eu_cnt;
> +			sseu->eu_per_subslice =3D max_t(unsigned int,
> +						      sseu->eu_per_subslice,
> +						      eu_cnt);
> +		}
> +	}
> +#undef SS_MAX
> +}
> +
> +static void gen9_sseu_device_status(struct intel_gt *gt,
> +				    struct sseu_dev_info *sseu)
> +{
> +#define SS_MAX 3
> +	const struct intel_runtime_info *info =3D RUNTIME_INFO(gt->i915);
> +	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
> +	struct intel_uncore *uncore =3D gt->uncore;
> +	int s, ss;
> +
> +	for (s =3D 0; s < info->sseu.max_slices; s++) {
> +		s_reg[s] =3D intel_uncore_read(uncore, GEN9_SLICE_PGCTL_ACK(s));
> +		eu_reg[2*s] =3D intel_uncore_read(uncore,
> +						GEN9_SS01_EU_PGCTL_ACK(s));
> +		eu_reg[2*s + 1] =3D intel_uncore_read(uncore,
> +						    GEN9_SS23_EU_PGCTL_ACK(s));
> +	}
> +
> +	eu_mask[0] =3D GEN9_PGCTL_SSA_EU08_ACK |
> +		     GEN9_PGCTL_SSA_EU19_ACK |
> +		     GEN9_PGCTL_SSA_EU210_ACK |
> +		     GEN9_PGCTL_SSA_EU311_ACK;
> +	eu_mask[1] =3D GEN9_PGCTL_SSB_EU08_ACK |
> +		     GEN9_PGCTL_SSB_EU19_ACK |
> +		     GEN9_PGCTL_SSB_EU210_ACK |
> +		     GEN9_PGCTL_SSB_EU311_ACK;
> +
> +	for (s =3D 0; s < info->sseu.max_slices; s++) {
> +		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) =3D=3D 0)
> +			/* skip disabled slice */
> +			continue;
> +
> +		sseu->slice_mask |=3D BIT(s);
> +
> +		if (IS_GEN9_BC(gt->i915))
> +			intel_sseu_copy_subslices(&info->sseu, s,
> +						  sseu->subslice_mask);
> +
> +		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> +			unsigned int eu_cnt;
> +			u8 ss_idx =3D s * info->sseu.ss_stride +
> +				    ss / BITS_PER_BYTE;
> +
> +			if (IS_GEN9_LP(gt->i915)) {
> +				if (!(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
> +					/* skip disabled subslice */
> +					continue;
> +
> +				sseu->subslice_mask[ss_idx] |=3D
> +					BIT(ss % BITS_PER_BYTE);
> +			}
> +
> +			eu_cnt =3D 2 * hweight32(eu_reg[2*s + ss/2] &
> +					       eu_mask[ss%2]);
> +			sseu->eu_total +=3D eu_cnt;
> +			sseu->eu_per_subslice =3D max_t(unsigned int,
> +						      sseu->eu_per_subslice,
> +						      eu_cnt);
> +		}
> +	}
> +#undef SS_MAX
> +}
> +
> +static void bdw_sseu_device_status(struct intel_gt *gt,
> +				   struct sseu_dev_info *sseu)
> +{
> +	const struct intel_runtime_info *info =3D RUNTIME_INFO(gt->i915);
> +	u32 slice_info =3D intel_uncore_read(gt->uncore, GEN8_GT_SLICE_INFO);
> +	int s;
> +
> +	sseu->slice_mask =3D slice_info & GEN8_LSLICESTAT_MASK;
> +
> +	if (sseu->slice_mask) {
> +		sseu->eu_per_subslice =3D info->sseu.eu_per_subslice;
> +		for (s =3D 0; s < fls(sseu->slice_mask); s++)
> +			intel_sseu_copy_subslices(&info->sseu, s,
> +						  sseu->subslice_mask);
> +		sseu->eu_total =3D sseu->eu_per_subslice *
> +				 intel_sseu_subslice_total(sseu);
> +
> +		/* subtract fused off EU(s) from enabled slice(s) */
> +		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> +			u8 subslice_7eu =3D info->sseu.subslice_7eu[s];
> +
> +			sseu->eu_total -=3D hweight8(subslice_7eu);
> +		}
> +	}
> +}
> +
> +static void print_sseu_info(struct seq_file *m, bool is_available_info,
> +			    const struct sseu_dev_info *sseu)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	const char *type =3D is_available_info ? "Available" : "Enabled";
> +	int s;
> +
> +	seq_printf(m, "  %s Slice Mask: %04x\n", type,
> +		   sseu->slice_mask);
> +	seq_printf(m, "  %s Slice Total: %u\n", type,
> +		   hweight8(sseu->slice_mask));
> +	seq_printf(m, "  %s Subslice Total: %u\n", type,
> +		   intel_sseu_subslice_total(sseu));
> +	for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> +		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
> +			   s, intel_sseu_subslices_per_slice(sseu, s));
> +	}
> +	seq_printf(m, "  %s EU Total: %u\n", type,
> +		   sseu->eu_total);
> +	seq_printf(m, "  %s EU Per Subslice: %u\n", type,
> +		   sseu->eu_per_subslice);
> +
> +	if (!is_available_info)
> +		return;
> +
> +	seq_printf(m, "  Has Pooled EU: %s\n", yesno(HAS_POOLED_EU(gt->i915)));
> +	if (HAS_POOLED_EU(gt->i915))
> +		seq_printf(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);
> +
> +	seq_printf(m, "  Has Slice Power Gating: %s\n",
> +		   yesno(sseu->has_slice_pg));
> +	seq_printf(m, "  Has Subslice Power Gating: %s\n",
> +		   yesno(sseu->has_subslice_pg));
> +	seq_printf(m, "  Has EU Power Gating: %s\n",
> +		   yesno(sseu->has_eu_pg));
> +}
> +
> +static int sseu_status_show(struct seq_file *m, void *unused)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	const struct intel_runtime_info *info =3D RUNTIME_INFO(gt->i915);
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct sseu_dev_info sseu;
> +	intel_wakeref_t wakeref;
> +
> +	if (INTEL_GEN(i915) < 8)
> +		return -ENODEV;
> +
> +	seq_puts(m, "SSEU Device Info\n");
> +	print_sseu_info(m, true, &info->sseu);
> +
> +	seq_puts(m, "SSEU Device Status\n");
> +	memset(&sseu, 0, sizeof(sseu));
> +	intel_sseu_set_info(&sseu, info->sseu.max_slices,
> +			    info->sseu.max_subslices,
> +			    info->sseu.max_eus_per_subslice);
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
> +		if (IS_CHERRYVIEW(i915))
> +			cherryview_sseu_device_status(gt, &sseu);
> +		else if (IS_BROADWELL(i915))
> +			bdw_sseu_device_status(gt, &sseu);
> +		else if (IS_GEN(i915, 9))
> +			gen9_sseu_device_status(gt, &sseu);
> +		else if (INTEL_GEN(i915) >=3D 10)
> +			gen10_sseu_device_status(gt, &sseu);
> +	}
> +
> +	print_sseu_info(m, false, &sseu);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(sseu_status);
> +
> +static int rcs_topology_show(struct seq_file *m, void *unused)
> +{
> +	struct intel_gt *gt =3D m->private;
> +	struct drm_printer p =3D drm_seq_file_printer(m);
> +
> +	intel_device_info_print_topology(&RUNTIME_INFO(gt->i915)->sseu, &p);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(rcs_topology);
> +
> +void debugfs_gt_register_sseu(struct intel_gt *gt, struct dentry *root)
> +{
> +	static const struct debugfs_gt_file files[] =3D {
> +		{ "sseu_status", &sseu_status_fops, NULL },
> +		{ "rcs_topology", &rcs_topology_fops, NULL },
> +	};
> +
> +	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> +}
> diff --git a/drivers/gpu/drm/i915/gt/debugfs_sseu.h b/drivers/gpu/drm/i91=
5/gt/debugfs_sseu.h
> new file mode 100644
> index 0000000000000..16da8fb5fe4fe
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/debugfs_sseu.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef DEBUGFS_SSEU_H
> +#define DEBUGFS_SSEU_H
> +
> +struct intel_gt;
> +struct dentry;
> +struct sseu_dev_info;
> +
> +void debugfs_gt_register_sseu(struct intel_gt *gt, struct dentry *root);
> +
> +#endif /* DEBUGFS_SSEU_H */
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index b22b4e9c3138b..9b6a50614110a 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -426,9 +426,8 @@ static void gen8_display_interrupt_info(struct seq_fi=
le *m)
>  static int i915_interrupt_info(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct intel_engine_cs *engine;
>  	intel_wakeref_t wakeref;
> -	int i, pipe;
> +	int pipe;
>  =

>  	wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
>  =

> @@ -474,15 +473,6 @@ static int i915_interrupt_info(struct seq_file *m, v=
oid *data)
>  			   I915_READ(DPINVGTT));
>  		intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, pref);
>  =

> -		for (i =3D 0; i < 4; i++) {
> -			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
> -				   i, I915_READ(GEN8_GT_IMR(i)));
> -			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
> -				   i, I915_READ(GEN8_GT_IIR(i)));
> -			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
> -				   i, I915_READ(GEN8_GT_IER(i)));
> -		}
> -
>  		seq_printf(m, "PCU interrupt mask:\t%08x\n",
>  			   I915_READ(GEN8_PCU_IMR));
>  		seq_printf(m, "PCU interrupt identity:\t%08x\n",
> @@ -493,19 +483,6 @@ static int i915_interrupt_info(struct seq_file *m, v=
oid *data)
>  		seq_printf(m, "Master Interrupt Control:  %08x\n",
>  			   I915_READ(GEN11_GFX_MSTR_IRQ));
>  =

> -		seq_printf(m, "Render/Copy Intr Enable:   %08x\n",
> -			   I915_READ(GEN11_RENDER_COPY_INTR_ENABLE));
> -		seq_printf(m, "VCS/VECS Intr Enable:      %08x\n",
> -			   I915_READ(GEN11_VCS_VECS_INTR_ENABLE));
> -		seq_printf(m, "GUC/SG Intr Enable:\t   %08x\n",
> -			   I915_READ(GEN11_GUC_SG_INTR_ENABLE));
> -		seq_printf(m, "GPM/WGBOXPERF Intr Enable: %08x\n",
> -			   I915_READ(GEN11_GPM_WGBOXPERF_INTR_ENABLE));
> -		seq_printf(m, "Crypto Intr Enable:\t   %08x\n",
> -			   I915_READ(GEN11_CRYPTO_RSVD_INTR_ENABLE));
> -		seq_printf(m, "GUnit/CSME Intr Enable:\t   %08x\n",
> -			   I915_READ(GEN11_GUNIT_CSME_INTR_ENABLE));
> -
>  		seq_printf(m, "Display Interrupt Control:\t%08x\n",
>  			   I915_READ(GEN11_DISPLAY_INT_CTL));
>  =

> @@ -514,15 +491,6 @@ static int i915_interrupt_info(struct seq_file *m, v=
oid *data)
>  		seq_printf(m, "Master Interrupt Control:\t%08x\n",
>  			   I915_READ(GEN8_MASTER_IRQ));
>  =

> -		for (i =3D 0; i < 4; i++) {
> -			seq_printf(m, "GT Interrupt IMR %d:\t%08x\n",
> -				   i, I915_READ(GEN8_GT_IMR(i)));
> -			seq_printf(m, "GT Interrupt IIR %d:\t%08x\n",
> -				   i, I915_READ(GEN8_GT_IIR(i)));
> -			seq_printf(m, "GT Interrupt IER %d:\t%08x\n",
> -				   i, I915_READ(GEN8_GT_IER(i)));
> -		}
> -
>  		gen8_display_interrupt_info(m);
>  	} else if (IS_VALLEYVIEW(dev_priv)) {
>  		intel_wakeref_t pref;
> @@ -556,20 +524,6 @@ static int i915_interrupt_info(struct seq_file *m, v=
oid *data)
>  		seq_printf(m, "Master IER:\t%08x\n",
>  			   I915_READ(VLV_MASTER_IER));
>  =

> -		seq_printf(m, "Render IER:\t%08x\n",
> -			   I915_READ(GTIER));
> -		seq_printf(m, "Render IIR:\t%08x\n",
> -			   I915_READ(GTIIR));
> -		seq_printf(m, "Render IMR:\t%08x\n",
> -			   I915_READ(GTIMR));
> -
> -		seq_printf(m, "PM IER:\t\t%08x\n",
> -			   I915_READ(GEN6_PMIER));
> -		seq_printf(m, "PM IIR:\t\t%08x\n",
> -			   I915_READ(GEN6_PMIIR));
> -		seq_printf(m, "PM IMR:\t\t%08x\n",
> -			   I915_READ(GEN6_PMIMR));
> -
>  		pref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
>  		seq_printf(m, "Port hotplug:\t%08x\n",
>  			   I915_READ(PORT_HOTPLUG_EN));
> @@ -603,40 +557,6 @@ static int i915_interrupt_info(struct seq_file *m, v=
oid *data)
>  			   I915_READ(SDEIIR));
>  		seq_printf(m, "South Display Interrupt mask:		%08x\n",
>  			   I915_READ(SDEIMR));
> -		seq_printf(m, "Graphics Interrupt enable:		%08x\n",
> -			   I915_READ(GTIER));
> -		seq_printf(m, "Graphics Interrupt identity:		%08x\n",
> -			   I915_READ(GTIIR));
> -		seq_printf(m, "Graphics Interrupt mask:		%08x\n",
> -			   I915_READ(GTIMR));
> -	}
> -
> -	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		seq_printf(m, "RCS Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_RCS0_RSVD_INTR_MASK));
> -		seq_printf(m, "BCS Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_BCS_RSVD_INTR_MASK));
> -		seq_printf(m, "VCS0/VCS1 Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_VCS0_VCS1_INTR_MASK));
> -		seq_printf(m, "VCS2/VCS3 Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_VCS2_VCS3_INTR_MASK));
> -		seq_printf(m, "VECS0/VECS1 Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_VECS0_VECS1_INTR_MASK));
> -		seq_printf(m, "GUC/SG Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_GUC_SG_INTR_MASK));
> -		seq_printf(m, "GPM/WGBOXPERF Intr Mask: %08x\n",
> -			   I915_READ(GEN11_GPM_WGBOXPERF_INTR_MASK));
> -		seq_printf(m, "Crypto Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_CRYPTO_RSVD_INTR_MASK));
> -		seq_printf(m, "Gunit/CSME Intr Mask:\t %08x\n",
> -			   I915_READ(GEN11_GUNIT_CSME_INTR_MASK));
> -
> -	} else if (INTEL_GEN(dev_priv) >=3D 6) {
> -		for_each_uabi_engine(engine, dev_priv) {
> -			seq_printf(m,
> -				   "Graphics Interrupt mask (%s):	%08x\n",
> -				   engine->name, ENGINE_READ(engine, RING_IMR));
> -		}
>  	}
>  =

>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
> @@ -1304,16 +1224,6 @@ static int i915_engine_info(struct seq_file *m, vo=
id *unused)
>  	return 0;
>  }
>  =

> -static int i915_rcs_topology(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	struct drm_printer p =3D drm_seq_file_printer(m);
> -
> -	intel_device_info_print_topology(&RUNTIME_INFO(dev_priv)->sseu, &p);
> -
> -	return 0;
> -}
> -
>  static int i915_shrinker_info(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
> @@ -1558,266 +1468,10 @@ i915_cache_sharing_set(void *data, u64 val)
>  	return 0;
>  }
>  =

> -static void
> -intel_sseu_copy_subslices(const struct sseu_dev_info *sseu, int slice,
> -			  u8 *to_mask)
> -{
> -	int offset =3D slice * sseu->ss_stride;
> -
> -	memcpy(&to_mask[offset], &sseu->subslice_mask[offset], sseu->ss_stride);
> -}
> -
>  DEFINE_SIMPLE_ATTRIBUTE(i915_cache_sharing_fops,
>  			i915_cache_sharing_get, i915_cache_sharing_set,
>  			"%llu\n");
>  =

> -static void cherryview_sseu_device_status(struct drm_i915_private *dev_p=
riv,
> -					  struct sseu_dev_info *sseu)
> -{
> -#define SS_MAX 2
> -	const int ss_max =3D SS_MAX;
> -	u32 sig1[SS_MAX], sig2[SS_MAX];
> -	int ss;
> -
> -	sig1[0] =3D I915_READ(CHV_POWER_SS0_SIG1);
> -	sig1[1] =3D I915_READ(CHV_POWER_SS1_SIG1);
> -	sig2[0] =3D I915_READ(CHV_POWER_SS0_SIG2);
> -	sig2[1] =3D I915_READ(CHV_POWER_SS1_SIG2);
> -
> -	for (ss =3D 0; ss < ss_max; ss++) {
> -		unsigned int eu_cnt;
> -
> -		if (sig1[ss] & CHV_SS_PG_ENABLE)
> -			/* skip disabled subslice */
> -			continue;
> -
> -		sseu->slice_mask =3D BIT(0);
> -		sseu->subslice_mask[0] |=3D BIT(ss);
> -		eu_cnt =3D ((sig1[ss] & CHV_EU08_PG_ENABLE) ? 0 : 2) +
> -			 ((sig1[ss] & CHV_EU19_PG_ENABLE) ? 0 : 2) +
> -			 ((sig1[ss] & CHV_EU210_PG_ENABLE) ? 0 : 2) +
> -			 ((sig2[ss] & CHV_EU311_PG_ENABLE) ? 0 : 2);
> -		sseu->eu_total +=3D eu_cnt;
> -		sseu->eu_per_subslice =3D max_t(unsigned int,
> -					      sseu->eu_per_subslice, eu_cnt);
> -	}
> -#undef SS_MAX
> -}
> -
> -static void gen10_sseu_device_status(struct drm_i915_private *dev_priv,
> -				     struct sseu_dev_info *sseu)
> -{
> -#define SS_MAX 6
> -	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> -	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
> -	int s, ss;
> -
> -	for (s =3D 0; s < info->sseu.max_slices; s++) {
> -		/*
> -		 * FIXME: Valid SS Mask respects the spec and read
> -		 * only valid bits for those registers, excluding reserved
> -		 * although this seems wrong because it would leave many
> -		 * subslices without ACK.
> -		 */
> -		s_reg[s] =3D I915_READ(GEN10_SLICE_PGCTL_ACK(s)) &
> -			GEN10_PGCTL_VALID_SS_MASK(s);
> -		eu_reg[2 * s] =3D I915_READ(GEN10_SS01_EU_PGCTL_ACK(s));
> -		eu_reg[2 * s + 1] =3D I915_READ(GEN10_SS23_EU_PGCTL_ACK(s));
> -	}
> -
> -	eu_mask[0] =3D GEN9_PGCTL_SSA_EU08_ACK |
> -		     GEN9_PGCTL_SSA_EU19_ACK |
> -		     GEN9_PGCTL_SSA_EU210_ACK |
> -		     GEN9_PGCTL_SSA_EU311_ACK;
> -	eu_mask[1] =3D GEN9_PGCTL_SSB_EU08_ACK |
> -		     GEN9_PGCTL_SSB_EU19_ACK |
> -		     GEN9_PGCTL_SSB_EU210_ACK |
> -		     GEN9_PGCTL_SSB_EU311_ACK;
> -
> -	for (s =3D 0; s < info->sseu.max_slices; s++) {
> -		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) =3D=3D 0)
> -			/* skip disabled slice */
> -			continue;
> -
> -		sseu->slice_mask |=3D BIT(s);
> -		intel_sseu_copy_subslices(&info->sseu, s, sseu->subslice_mask);
> -
> -		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> -			unsigned int eu_cnt;
> -
> -			if (info->sseu.has_subslice_pg &&
> -			    !(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
> -				/* skip disabled subslice */
> -				continue;
> -
> -			eu_cnt =3D 2 * hweight32(eu_reg[2 * s + ss / 2] &
> -					       eu_mask[ss % 2]);
> -			sseu->eu_total +=3D eu_cnt;
> -			sseu->eu_per_subslice =3D max_t(unsigned int,
> -						      sseu->eu_per_subslice,
> -						      eu_cnt);
> -		}
> -	}
> -#undef SS_MAX
> -}
> -
> -static void gen9_sseu_device_status(struct drm_i915_private *dev_priv,
> -				    struct sseu_dev_info *sseu)
> -{
> -#define SS_MAX 3
> -	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> -	u32 s_reg[SS_MAX], eu_reg[2 * SS_MAX], eu_mask[2];
> -	int s, ss;
> -
> -	for (s =3D 0; s < info->sseu.max_slices; s++) {
> -		s_reg[s] =3D I915_READ(GEN9_SLICE_PGCTL_ACK(s));
> -		eu_reg[2*s] =3D I915_READ(GEN9_SS01_EU_PGCTL_ACK(s));
> -		eu_reg[2*s + 1] =3D I915_READ(GEN9_SS23_EU_PGCTL_ACK(s));
> -	}
> -
> -	eu_mask[0] =3D GEN9_PGCTL_SSA_EU08_ACK |
> -		     GEN9_PGCTL_SSA_EU19_ACK |
> -		     GEN9_PGCTL_SSA_EU210_ACK |
> -		     GEN9_PGCTL_SSA_EU311_ACK;
> -	eu_mask[1] =3D GEN9_PGCTL_SSB_EU08_ACK |
> -		     GEN9_PGCTL_SSB_EU19_ACK |
> -		     GEN9_PGCTL_SSB_EU210_ACK |
> -		     GEN9_PGCTL_SSB_EU311_ACK;
> -
> -	for (s =3D 0; s < info->sseu.max_slices; s++) {
> -		if ((s_reg[s] & GEN9_PGCTL_SLICE_ACK) =3D=3D 0)
> -			/* skip disabled slice */
> -			continue;
> -
> -		sseu->slice_mask |=3D BIT(s);
> -
> -		if (IS_GEN9_BC(dev_priv))
> -			intel_sseu_copy_subslices(&info->sseu, s,
> -						  sseu->subslice_mask);
> -
> -		for (ss =3D 0; ss < info->sseu.max_subslices; ss++) {
> -			unsigned int eu_cnt;
> -			u8 ss_idx =3D s * info->sseu.ss_stride +
> -				    ss / BITS_PER_BYTE;
> -
> -			if (IS_GEN9_LP(dev_priv)) {
> -				if (!(s_reg[s] & (GEN9_PGCTL_SS_ACK(ss))))
> -					/* skip disabled subslice */
> -					continue;
> -
> -				sseu->subslice_mask[ss_idx] |=3D
> -					BIT(ss % BITS_PER_BYTE);
> -			}
> -
> -			eu_cnt =3D 2 * hweight32(eu_reg[2*s + ss/2] &
> -					       eu_mask[ss%2]);
> -			sseu->eu_total +=3D eu_cnt;
> -			sseu->eu_per_subslice =3D max_t(unsigned int,
> -						      sseu->eu_per_subslice,
> -						      eu_cnt);
> -		}
> -	}
> -#undef SS_MAX
> -}
> -
> -static void bdw_sseu_device_status(struct drm_i915_private *dev_priv,
> -				   struct sseu_dev_info *sseu)
> -{
> -	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> -	u32 slice_info =3D I915_READ(GEN8_GT_SLICE_INFO);
> -	int s;
> -
> -	sseu->slice_mask =3D slice_info & GEN8_LSLICESTAT_MASK;
> -
> -	if (sseu->slice_mask) {
> -		sseu->eu_per_subslice =3D info->sseu.eu_per_subslice;
> -		for (s =3D 0; s < fls(sseu->slice_mask); s++)
> -			intel_sseu_copy_subslices(&info->sseu, s,
> -						  sseu->subslice_mask);
> -		sseu->eu_total =3D sseu->eu_per_subslice *
> -				 intel_sseu_subslice_total(sseu);
> -
> -		/* subtract fused off EU(s) from enabled slice(s) */
> -		for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> -			u8 subslice_7eu =3D info->sseu.subslice_7eu[s];
> -
> -			sseu->eu_total -=3D hweight8(subslice_7eu);
> -		}
> -	}
> -}
> -
> -static void i915_print_sseu_info(struct seq_file *m, bool is_available_i=
nfo,
> -				 const struct sseu_dev_info *sseu)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	const char *type =3D is_available_info ? "Available" : "Enabled";
> -	int s;
> -
> -	seq_printf(m, "  %s Slice Mask: %04x\n", type,
> -		   sseu->slice_mask);
> -	seq_printf(m, "  %s Slice Total: %u\n", type,
> -		   hweight8(sseu->slice_mask));
> -	seq_printf(m, "  %s Subslice Total: %u\n", type,
> -		   intel_sseu_subslice_total(sseu));
> -	for (s =3D 0; s < fls(sseu->slice_mask); s++) {
> -		seq_printf(m, "  %s Slice%i subslices: %u\n", type,
> -			   s, intel_sseu_subslices_per_slice(sseu, s));
> -	}
> -	seq_printf(m, "  %s EU Total: %u\n", type,
> -		   sseu->eu_total);
> -	seq_printf(m, "  %s EU Per Subslice: %u\n", type,
> -		   sseu->eu_per_subslice);
> -
> -	if (!is_available_info)
> -		return;
> -
> -	seq_printf(m, "  Has Pooled EU: %s\n", yesno(HAS_POOLED_EU(dev_priv)));
> -	if (HAS_POOLED_EU(dev_priv))
> -		seq_printf(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);
> -
> -	seq_printf(m, "  Has Slice Power Gating: %s\n",
> -		   yesno(sseu->has_slice_pg));
> -	seq_printf(m, "  Has Subslice Power Gating: %s\n",
> -		   yesno(sseu->has_subslice_pg));
> -	seq_printf(m, "  Has EU Power Gating: %s\n",
> -		   yesno(sseu->has_eu_pg));
> -}
> -
> -static int i915_sseu_status(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> -	const struct intel_runtime_info *info =3D RUNTIME_INFO(dev_priv);
> -	struct sseu_dev_info sseu;
> -	intel_wakeref_t wakeref;
> -
> -	if (INTEL_GEN(dev_priv) < 8)
> -		return -ENODEV;
> -
> -	seq_puts(m, "SSEU Device Info\n");
> -	i915_print_sseu_info(m, true, &info->sseu);
> -
> -	seq_puts(m, "SSEU Device Status\n");
> -	memset(&sseu, 0, sizeof(sseu));
> -	intel_sseu_set_info(&sseu, info->sseu.max_slices,
> -			    info->sseu.max_subslices,
> -			    info->sseu.max_eus_per_subslice);
> -
> -	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
> -		if (IS_CHERRYVIEW(dev_priv))
> -			cherryview_sseu_device_status(dev_priv, &sseu);
> -		else if (IS_BROADWELL(dev_priv))
> -			bdw_sseu_device_status(dev_priv, &sseu);
> -		else if (IS_GEN(dev_priv, 9))
> -			gen9_sseu_device_status(dev_priv, &sseu);
> -		else if (INTEL_GEN(dev_priv) >=3D 10)
> -			gen10_sseu_device_status(dev_priv, &sseu);
> -	}
> -
> -	i915_print_sseu_info(m, false, &sseu);
> -
> -	return 0;
> -}
> -
>  static int i915_forcewake_open(struct inode *inode, struct file *file)
>  {
>  	struct drm_i915_private *i915 =3D inode->i_private;
> @@ -1862,10 +1516,8 @@ static const struct drm_info_list i915_debugfs_lis=
t[] =3D {
>  	{"i915_llc", i915_llc, 0},
>  	{"i915_runtime_pm_status", i915_runtime_pm_status, 0},
>  	{"i915_engine_info", i915_engine_info, 0},
> -	{"i915_rcs_topology", i915_rcs_topology, 0},
>  	{"i915_shrinker_info", i915_shrinker_info, 0},
>  	{"i915_wa_registers", i915_wa_registers, 0},
> -	{"i915_sseu_status", i915_sseu_status, 0},
>  	{"i915_rps_boost_info", i915_rps_boost_info, 0},
>  };
>  #define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
> -- =

> 2.25.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
