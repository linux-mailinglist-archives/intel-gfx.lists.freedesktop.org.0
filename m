Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBFB4E5105
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 12:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF8710E682;
	Wed, 23 Mar 2022 11:08:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E4E10E682
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 11:08:30 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id h196so718648qke.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 04:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VuX/klc8NUKH6fYfyCArxRFqf3dOLY91qR1r6h5fcpw=;
 b=hrrnhm4nzLQv65X0YPwk6N41ZN+0Jw43l3cs19iSEAJGRxoLnG2sVUTGuZq4/cUn1Q
 AnNSRvslF0vvEp43DQMatw3Y28UkMQiVPFVJgEamQ+zBGbTDGIoAgPy4t3UYI+D8yRTP
 8JQewoYYjjqXKE+10cZ1UdcIZf3KszapAzzjitGceXbpM7weulSENsVyFREEytDJVbz8
 kSXqTsXRIfTiMNe/4XGtOipmB2KzMya1TFn5kRESpi5fQg6WbJ64iUQLbdmG+DfS8jh5
 wtahxcnjww5zHS/dM7DDM3KnF2yxmakOBysnHzZIngCVD4R0DuhG1+hD2oF6rrR+conr
 F3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VuX/klc8NUKH6fYfyCArxRFqf3dOLY91qR1r6h5fcpw=;
 b=qkLsgDVjFJwkTVWLAXujKwXbbhWyQ2mCiM9UlfFzggjx2kK5dm/dYorfsgBYd15Plr
 zKgfC0rpGOZfsYNxPSWNL6YqbNaHRXuQr1WAwgFGnag0cZ+HpXDExaG6Txk0asVNyjqb
 GwvU689e8eH9lj0crdMTBhehfEFI7me2EdN4YE+bt3GDNnSFWy7sexkJHhT0ysI0Y/W6
 3UmRDqLnyQPgFh4aBzfawYBYFfPy50bmraloQdaSvSl9SMSfbY+wiahO1qL1WdkwcLx9
 51RxLQdkbAQfmBJ7O7J0OTaAfkarOKHebMEEUPV/pXI+iywY9ZXOTzKrc4DxMagwoXrK
 Tavg==
X-Gm-Message-State: AOAM5328ijr/KjZAWrilMuzkKkrtqOaSkITJMNFuAKhM9cx2dzTrnsv/
 Tgn+AgESN6ZWqwhJ+5TFDRhEfQYcBMHND/gay+8nQCC1EY2MFw==
X-Google-Smtp-Source: ABdhPJzE3htWepw2XGF1rCNuLx9Hia3XE4YxVMHQUla7WuZc/+2bgClFRAYmpK1J3Gm2qkh4AtVSr2u80DxSfN6bNew=
X-Received: by 2002:a05:620a:f0d:b0:67e:1961:b061 with SMTP id
 v13-20020a05620a0f0d00b0067e1961b061mr18206469qkl.82.1648033709332; Wed, 23
 Mar 2022 04:08:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220323094329.56352-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220323094329.56352-1-gwan-gyeong.mun@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 23 Mar 2022 11:08:02 +0000
Message-ID: <CAM0jSHPwwRu5wVh5u0Ofb0P-qgvHXq-0A0c8M2L8Je6KkGHCRw@mail.gmail.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Decouple engine->sanitize
 callback on removing the status page
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 23 Mar 2022 at 09:44, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> w=
rote:
>
> From: Chris Wilson <chris@chris-wilson.co.uk>
>
> We have to be careful not to call into the submission backend's sanitize
> callback if we abort the module load and free the status page. Since we
> are only using the sanitize callback to cleanup the status page when we
> suspect its contents may have been lost (first load, upon resume etc)
> let us move the callback to engine->status_page and remove it as we free
> the status page.
>
> <3> [306.359604] BUG: KASAN: slab-out-of-bounds in xcs_sanitize+0x4a/0x11=
0 [i915]
> <3> [306.360346] Write of size 4096 at addr ffff88806d5e8000 by task i915=
_module_loa/1052
> <3> [306.360561]
> <4> [306.360627] CPU: 1 PID: 1052 Comm: i915_module_loa Tainted: G     U =
           5.12.0-rc2-g249f72def27bf-kasan_218+ #1
> <4> [306.360650] Hardware name: GIGABYTE GB-BXBT-1900/MZBAYAB-00, BIOS F6=
 02/17/2015
> <4> [306.360667] Call Trace:
> <4> [306.360688]  dump_stack+0xa4/0xe5
> <4> [306.360727]  ? xcs_sanitize+0x4a/0x110 [i915]
> <4> [306.361274]  print_address_description.constprop.9+0x3a/0x60
> <4> [306.361311]  ? xcs_sanitize+0x4a/0x110 [i915]
> <4> [306.361855]  ? xcs_sanitize+0x4a/0x110 [i915]
> <4> [306.362408]  kasan_report.cold.14+0x7c/0xd8
> <4> [306.362456]  ? xcs_sanitize+0x4a/0x110 [i915]
> <4> [306.363015]  kasan_check_range+0x1c1/0x1e0
> <4> [306.363056]  memset+0x1f/0x40
> <4> [306.363093]  xcs_sanitize+0x4a/0x110 [i915]
> <4> [306.363661]  gt_sanitize+0x2f7/0x6d0 [i915]
> <4> [306.364221]  ? __pm_runtime_suspend+0x186/0x2e0
> <4> [306.364270]  intel_gt_suspend_late+0x126/0x2c0 [i915]
> <4> [306.364833]  i915_gem_suspend_late+0x9d/0x470 [i915]
> <4> [306.365402]  ? intel_wakeref_auto+0x3ba/0x520 [i915]
> <4> [306.365939]  ? i915_gem_suspend+0x180/0x180 [i915]
> <4> [306.366521]  i915_gem_driver_remove+0x25/0x1f0 [i915]
> <4> [306.367071]  ? lockdep_hardirqs_on+0xbf/0x130
> <4> [306.367124]  i915_driver_remove+0xba/0xf0 [i915]
> <4> [306.367670]  i915_pci_remove+0x34/0x70 [i915]
> <4> [306.368224]  pci_device_remove+0xa3/0x1e0
> <4> [306.368275]  device_release_driver_internal+0x1e0/0x4a0
> <4> [306.368320]  driver_detach+0xbc/0x180
> <4> [306.368364]  bus_remove_driver+0x15e/0x2d0
> <4> [306.368404]  pci_unregister_driver+0x28/0x220
> <4> [306.368456]  i915_exit+0x1b/0x26 [i915]
> <4> [306.369055]  __x64_sys_delete_module+0x257/0x370
> <4> [306.369093]  ? __ia32_sys_delete_module+0x370/0x370
> <4> [306.369146]  ? lockdep_hardirqs_on+0xbf/0x130
> <4> [306.369185]  do_syscall_64+0x33/0x80
> <4> [306.369212]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> <4> [306.369237] RIP: 0033:0x7f7a7020fbcb
> <4> [306.369259] Code: 73 01 c3 48 8b 0d c5 82 0c 00 f7 d8 64 89 01 48 83=
 c8 ff c3 66 2e 0f 1f 84 00 00 00 00 00 90 f3 0f 1e fa b8 b0 00 00 00 0f 05=
 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 95 82 0c 00 f7 d8 64 89 01 48
> <4> [306.369281] RSP: 002b:00007ffc22d2ef78 EFLAGS: 00000206 ORIG_RAX: 00=
000000000000b0
> <4> [306.369315] RAX: ffffffffffffffda RBX: 000055724a324db0 RCX: 00007f7=
a7020fbcb
> <4> [306.369334] RDX: 00007f7a702d8be0 RSI: 0000000000000800 RDI: 0000557=
24a324e18
> <4> [306.369352] RBP: 00007f7a70392702 R08: 0000000000000000 R09: 00007f7=
a702d8da0
> <4> [306.369370] R10: 000055724a2ee010 R11: 0000000000000206 R12: 0000000=
000000000
> <4> [306.369388] R13: 00007ffc22d2f670 R14: 0000000000000000 R15: 0000000=
000000000
>

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4105

> Fixes: b436a5f8b6c8 ("drm/i915/gt: Track all timelines created using the =
HWSP")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c            | 7 +++++--
>  drivers/gpu/drm/i915/gt/intel_engine_types.h         | 4 +++-
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 +---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c                | 4 ++--
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c      | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c    | 4 ++--
>  6 files changed, 14 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/=
i915/gt/intel_engine_cs.c
> index 98b61ff13c95..7e3a65b0661c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -844,6 +844,9 @@ static void cleanup_status_page(struct intel_engine_c=
s *engine)
>
>         i915_gem_object_unpin_map(vma->obj);
>         i915_gem_object_put(vma->obj);
> +
> +       /* no longer in control, nothing left to sanitize */
> +       engine->status_page.sanitize =3D NULL;
>  }
>
>  static int pin_ggtt_status_page(struct intel_engine_cs *engine,
> @@ -1542,8 +1545,8 @@ void intel_engines_reset_default_submission(struct =
intel_gt *gt)
>         enum intel_engine_id id;
>
>         for_each_engine(engine, gt, id) {
> -               if (engine->sanitize)
> -                       engine->sanitize(engine);
> +               if (engine->status_page.sanitize)
> +                       engine->status_page.sanitize(engine);
>
>                 engine->set_default_submission(engine);
>         }
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/d=
rm/i915/gt/intel_engine_types.h
> index eac20112709c..268249efd76c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -53,6 +53,7 @@ struct intel_gt;
>  struct intel_ring;
>  struct intel_uncore;
>  struct intel_breadcrumbs;
> +struct intel_engine_cs;
>
>  typedef u32 intel_engine_mask_t;
>  #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
> @@ -61,6 +62,8 @@ struct intel_hw_status_page {
>         struct list_head timelines;
>         struct i915_vma *vma;
>         u32 *addr;
> +
> +       void (*sanitize)(struct intel_engine_cs *engine);
>  };
>
>  struct intel_instdone {
> @@ -445,7 +448,6 @@ struct intel_engine_cs {
>         void            (*irq_disable)(struct intel_engine_cs *engine);
>         void            (*irq_handler)(struct intel_engine_cs *engine, u1=
6 iir);
>
> -       void            (*sanitize)(struct intel_engine_cs *engine);
>         int             (*resume)(struct intel_engine_cs *engine);
>
>         struct {
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drive=
rs/gpu/drm/i915/gt/intel_execlists_submission.c
> index e23c1d0e980b..c3b850e23c4b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -3328,8 +3328,6 @@ static void execlists_shutdown(struct intel_engine_=
cs *engine)
>
>  static void execlists_release(struct intel_engine_cs *engine)
>  {
> -       engine->sanitize =3D NULL; /* no longer in control, nothing to sa=
nitize */
> -
>         execlists_shutdown(engine);
>
>         intel_engine_cleanup_common(engine);
> @@ -3520,7 +3518,7 @@ int intel_execlists_submission_setup(struct intel_e=
ngine_cs *engine)
>         }
>
>         /* Finally, take ownership and responsibility for cleanup! */
> -       engine->sanitize =3D execlists_sanitize;
> +       engine->status_page.sanitize =3D execlists_sanitize;
>         engine->release =3D execlists_release;
>
>         return 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915=
/gt/intel_gt_pm.c
> index eeead40485fb..a38124748a7d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -189,8 +189,8 @@ static void gt_sanitize(struct intel_gt *gt, bool for=
ce)
>         intel_uc_reset_prepare(&gt->uc);
>
>         for_each_engine(engine, gt, id)
> -               if (engine->sanitize)
> -                       engine->sanitize(engine);
> +               if (engine->status_page.sanitize)
> +                       engine->status_page.sanitize(engine);
>
>         if (reset_engines(gt) || force) {
>                 for_each_engine(engine, gt, id)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gp=
u/drm/i915/gt/intel_ring_submission.c
> index 5423bfd301ad..a8d4398ea024 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -1121,7 +1121,7 @@ static void setup_common(struct intel_engine_cs *en=
gine)
>         setup_irq(engine);
>
>         engine->resume =3D xcs_resume;
> -       engine->sanitize =3D xcs_sanitize;
> +       engine->status_page.sanitize =3D xcs_sanitize;
>
>         engine->reset.prepare =3D reset_prepare;
>         engine->reset.rewind =3D reset_rewind;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_submission.c
> index e1612c393781..156a5a9e6a55 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3676,7 +3676,7 @@ static inline void guc_init_lrc_mapping(struct inte=
l_guc *guc)
>
>  static void guc_release(struct intel_engine_cs *engine)
>  {
> -       engine->sanitize =3D NULL; /* no longer in control, nothing to sa=
nitize */
> +       tasklet_kill(&engine->sched_engine->tasklet);
>
>         intel_engine_cleanup_common(engine);
>         lrc_fini_wa_ctx(engine);
> @@ -3809,7 +3809,7 @@ int intel_guc_submission_setup(struct intel_engine_=
cs *engine)
>         lrc_init_wa_ctx(engine);
>
>         /* Finally, take ownership and responsibility for cleanup! */
> -       engine->sanitize =3D guc_sanitize;
> +       engine->status_page.sanitize =3D guc_sanitize;
>         engine->release =3D guc_release;
>
>         return 0;
> --
> 2.34.1
>
