Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D2B3D9359
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 18:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7786E5B6;
	Wed, 28 Jul 2021 16:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1886E56A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 16:41:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="210816344"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="210816344"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 09:41:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="665997066"
Received: from hseyedro-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.213.174.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 09:41:04 -0700
Date: Wed, 28 Jul 2021 12:41:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YQGIn49JEZ+jA+mD@intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
 <20210506161930.309688-5-imre.deak@intel.com>
 <CAKMK7uHWTF0hUWAhMeoLBD6t-HFkLx8qxzaDXJOb2fpt1cfUBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uHWTF0hUWAhMeoLBD6t-HFkLx8qxzaDXJOb2fpt1cfUBQ@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v2 04/10] drm/i915/xelpd: First stab at DPT
 support
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
Cc: Wilson Chris P <Chris.P.Wilson@intel.com>,
 Auld Matthew <matthew.auld@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 28, 2021 at 08:50:20AM +0200, Daniel Vetter wrote:
> On Thu, May 6, 2021 at 6:19 PM Imre Deak <imre.deak@intel.com> wrote:
> >
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Add support for DPT (display page table). DPT is a
> > slightly peculiar two level page table scheme used for
> > tiled scanout buffers (linear uses direct ggtt mapping
> > still). The plane surface address will point at a page
> > in the DPT which holds the PTEs for 512 actual pages.
> > Thus we require 1/512 of the ggttt address space
> > compared to a direct ggtt mapping.
> >
> > We create a new DPT address space for each framebuffer and
> > track two vmas (one for the DPT, another for the ggtt).
> >
> > TODO:
> > - Is the i915_address_space approaach sane?
> > - Maybe don't map the whole DPT to write the PTEs?
> > - Deal with remapping/rotation? Need to create a
> >   separate DPT for each remapped/rotated plane I
> >   guess. Or else we'd need to make the per-fb DPT
> >   large enough to support potentially several
> >   remapped/rotated vmas. How large should that be?
> =

> I know this code predates efforts to split up intel_display.c, but
> adding entirely new feature to intel_display.c like this isn't cool.
> Please move this to intel_display_pt.c or something like that and give
> it a reasonable interface. Minimal kerneldoc as bonus would be great
> too.
> =

> I'm feeling like dim should reject any patch which has a positive
> diffstat on intel_display.c until this file is in better shape. Would
> be harsh, but we seem to be stuck in one step forward, one step back
> mode.

I like this idea, although that would mean more intel-only stuff in dim
what is not good :/

> -Daniel
> =

> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> > Cc: Wilson Chris P <Chris.P.Wilson@intel.com>
> > Cc: Tang CQ <cq.tang@intel.com>
> > Cc: Auld Matthew <matthew.auld@intel.com>
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > Reviewed-by: Wilson Chris P <Chris.P.Wilson@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c |   7 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  | 352 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_display.h  |   1 +
> >  .../drm/i915/display/intel_display_types.h    |  15 +-
> >  drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
> >  .../drm/i915/display/skl_universal_plane.c    |  19 +-
> >  drivers/gpu/drm/i915/gt/gen8_ppgtt.h          |   7 +
> >  drivers/gpu/drm/i915/gt/intel_ggtt.c          |   7 +-
> >  drivers/gpu/drm/i915/gt/intel_gtt.h           |   5 +
> >  9 files changed, 392 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driver=
s/gpu/drm/i915/display/intel_atomic_plane.c
> > index 7bfb26ca0bd07..36f52a1d7552f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -102,7 +102,8 @@ intel_plane_duplicate_state(struct drm_plane *plane)
> >
> >         __drm_atomic_helper_plane_duplicate_state(plane, &intel_state->=
uapi);
> >
> > -       intel_state->vma =3D NULL;
> > +       intel_state->ggtt_vma =3D NULL;
> > +       intel_state->dpt_vma =3D NULL;
> >         intel_state->flags =3D 0;
> >
> >         /* add reference to fb */
> > @@ -125,7 +126,9 @@ intel_plane_destroy_state(struct drm_plane *plane,
> >                           struct drm_plane_state *state)
> >  {
> >         struct intel_plane_state *plane_state =3D to_intel_plane_state(=
state);
> > -       drm_WARN_ON(plane->dev, plane_state->vma);
> > +
> > +       drm_WARN_ON(plane->dev, plane_state->ggtt_vma);
> > +       drm_WARN_ON(plane->dev, plane_state->dpt_vma);
> >
> >         __drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
> >         if (plane_state->hw.fb)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 5d53ee4c58f5b..99a921ea2e81b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -67,6 +67,7 @@
> >  #include "gem/i915_gem_object.h"
> >
> >  #include "gt/intel_rps.h"
> > +#include "gt/gen8_ppgtt.h"
> >
> >  #include "g4x_dp.h"
> >  #include "g4x_hdmi.h"
> > @@ -124,6 +125,176 @@ static void ilk_pfit_enable(const struct intel_cr=
tc_state *crtc_state);
> >  static void intel_modeset_setup_hw_state(struct drm_device *dev,
> >                                          struct drm_modeset_acquire_ctx=
 *ctx);
> >
> > +struct i915_dpt {
> > +       struct i915_address_space vm;
> > +
> > +       struct drm_i915_gem_object *obj;
> > +       struct i915_vma *vma;
> > +       void __iomem *iomem;
> > +};
> > +
> > +#define i915_is_dpt(vm) ((vm)->is_dpt)
> > +
> > +static inline struct i915_dpt *
> > +i915_vm_to_dpt(struct i915_address_space *vm)
> > +{
> > +       BUILD_BUG_ON(offsetof(struct i915_dpt, vm));
> > +       GEM_BUG_ON(!i915_is_dpt(vm));
> > +       return container_of(vm, struct i915_dpt, vm);
> > +}
> > +
> > +#define dpt_total_entries(dpt) ((dpt)->vm.total >> PAGE_SHIFT)
> > +
> > +static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
> > +{
> > +       writeq(pte, addr);
> > +}
> > +
> > +static void dpt_insert_page(struct i915_address_space *vm,
> > +                           dma_addr_t addr,
> > +                           u64 offset,
> > +                           enum i915_cache_level level,
> > +                           u32 flags)
> > +{
> > +       struct i915_dpt *dpt =3D i915_vm_to_dpt(vm);
> > +       gen8_pte_t __iomem *base =3D dpt->iomem;
> > +
> > +       gen8_set_pte(base + offset / I915_GTT_PAGE_SIZE,
> > +                    vm->pte_encode(addr, level, flags));
> > +}
> > +
> > +static void dpt_insert_entries(struct i915_address_space *vm,
> > +                              struct i915_vma *vma,
> > +                              enum i915_cache_level level,
> > +                              u32 flags)
> > +{
> > +       struct i915_dpt *dpt =3D i915_vm_to_dpt(vm);
> > +       gen8_pte_t __iomem *base =3D dpt->iomem;
> > +       const gen8_pte_t pte_encode =3D vm->pte_encode(0, level, flags);
> > +       struct sgt_iter sgt_iter;
> > +       dma_addr_t addr;
> > +       int i;
> > +
> > +       /*
> > +        * Note that we ignore PTE_READ_ONLY here. The caller must be c=
areful
> > +        * not to allow the user to override access to a read only page.
> > +        */
> > +
> > +       i =3D vma->node.start / I915_GTT_PAGE_SIZE;
> > +       for_each_sgt_daddr(addr, sgt_iter, vma->pages)
> > +               gen8_set_pte(&base[i++], pte_encode | addr);
> > +}
> > +
> > +static void dpt_clear_range(struct i915_address_space *vm,
> > +                           u64 start, u64 length)
> > +{
> > +}
> > +
> > +static void dpt_bind_vma(struct i915_address_space *vm,
> > +                        struct i915_vm_pt_stash *stash,
> > +                        struct i915_vma *vma,
> > +                        enum i915_cache_level cache_level,
> > +                        u32 flags)
> > +{
> > +       struct drm_i915_gem_object *obj =3D vma->obj;
> > +       u32 pte_flags;
> > +
> > +       /* Applicable to VLV (gen8+ do not support RO in the GGTT) */
> > +       pte_flags =3D 0;
> > +       if (vma->vm->has_read_only && i915_gem_object_is_readonly(obj))
> > +               pte_flags |=3D PTE_READ_ONLY;
> > +       if (i915_gem_object_is_lmem(obj))
> > +               pte_flags |=3D PTE_LM;
> > +
> > +       vma->vm->insert_entries(vma->vm, vma, cache_level, pte_flags);
> > +
> > +       vma->page_sizes.gtt =3D I915_GTT_PAGE_SIZE;
> > +
> > +       /*
> > +        * Without aliasing PPGTT there's no difference between
> > +        * GLOBAL/LOCAL_BIND, it's all the same ptes. Hence uncondition=
ally
> > +        * upgrade to both bound if we bind either to avoid double-bind=
ing.
> > +        */
> > +       atomic_or(I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND, &vma->fla=
gs);
> > +}
> > +
> > +static void dpt_unbind_vma(struct i915_address_space *vm, struct i915_=
vma *vma)
> > +{
> > +       vm->clear_range(vm, vma->node.start, vma->size);
> > +}
> > +
> > +static void dpt_cleanup(struct i915_address_space *vm)
> > +{
> > +       struct i915_dpt *dpt =3D i915_vm_to_dpt(vm);
> > +
> > +       i915_gem_object_put(dpt->obj);
> > +}
> > +
> > +static struct i915_address_space *
> > +intel_dpt_create(struct drm_gem_object *obj)
> > +{
> > +       struct drm_i915_private *i915 =3D to_i915(obj->dev);
> > +       size_t size =3D DIV_ROUND_UP_ULL(obj->size, 512);
> > +       struct drm_i915_gem_object *dpt_obj;
> > +       struct i915_address_space *vm;
> > +       struct i915_dpt *dpt;
> > +       int ret;
> > +
> > +       size =3D round_up(size, 4096);
> > +
> > +       if (HAS_LMEM(i915))
> > +               dpt_obj =3D i915_gem_object_create_lmem(i915, size, 0);
> > +       else
> > +               dpt_obj =3D i915_gem_object_create_stolen(i915, size);
> > +       if (IS_ERR(dpt_obj))
> > +               return ERR_CAST(dpt_obj);
> > +
> > +       ret =3D i915_gem_object_set_cache_level(dpt_obj, I915_CACHE_NON=
E);
> > +       if (ret) {
> > +               i915_gem_object_put(dpt_obj);
> > +               return ERR_PTR(ret);
> > +       }
> > +
> > +       dpt =3D kzalloc(sizeof(*dpt), GFP_KERNEL);
> > +       if (!dpt) {
> > +               i915_gem_object_put(dpt_obj);
> > +               return ERR_PTR(-ENOMEM);
> > +       }
> > +
> > +       vm =3D &dpt->vm;
> > +
> > +       vm->gt =3D &i915->gt;
> > +       vm->i915 =3D i915;
> > +       vm->dma =3D i915->drm.dev;
> > +       vm->total =3D (size / sizeof(gen8_pte_t)) * I915_GTT_PAGE_SIZE;
> > +       vm->is_dpt =3D true;
> > +
> > +       i915_address_space_init(vm, VM_CLASS_DPT);
> > +
> > +       vm->insert_page =3D dpt_insert_page;
> > +       vm->clear_range =3D dpt_clear_range;
> > +       vm->insert_entries =3D dpt_insert_entries;
> > +       vm->cleanup =3D dpt_cleanup;
> > +
> > +       vm->vma_ops.bind_vma    =3D dpt_bind_vma;
> > +       vm->vma_ops.unbind_vma  =3D dpt_unbind_vma;
> > +       vm->vma_ops.set_pages   =3D ggtt_set_pages;
> > +       vm->vma_ops.clear_pages =3D clear_pages;
> > +
> > +       vm->pte_encode =3D gen8_ggtt_pte_encode;
> > +
> > +       dpt->obj =3D dpt_obj;
> > +
> > +       return &dpt->vm;
> > +}
> > +
> > +static void intel_dpt_destroy(struct i915_address_space *vm)
> > +{
> > +       struct i915_dpt *dpt =3D i915_vm_to_dpt(vm);
> > +
> > +       i915_vm_close(&dpt->vm);
> > +}
> > +
> >  /* returns HPLL frequency in kHz */
> >  int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
> >  {
> > @@ -974,6 +1145,9 @@ unsigned int intel_surf_alignment(const struct drm=
_framebuffer *fb,
> >  {
> >         struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
> >
> > +       if (intel_fb_uses_dpt(fb))
> > +               return 512 * 4096;
> > +
> >         /* AUX_DIST needs only 4K alignment */
> >         if (is_ccs_plane(fb, color_plane))
> >                 return 4096;
> > @@ -1027,6 +1201,62 @@ static bool intel_plane_uses_fence(const struct =
intel_plane_state *plane_state)
> >                  plane_state->view.gtt.type =3D=3D I915_GGTT_VIEW_NORMA=
L);
> >  }
> >
> > +static struct i915_vma *
> > +intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> > +                    const struct i915_ggtt_view *view,
> > +                    bool uses_fence,
> > +                    unsigned long *out_flags,
> > +                    struct i915_address_space *vm)
> > +{
> > +       struct drm_device *dev =3D fb->dev;
> > +       struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +       struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
> > +       struct i915_vma *vma;
> > +       u32 alignment;
> > +       int ret;
> > +
> > +       if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
> > +               return ERR_PTR(-EINVAL);
> > +
> > +       alignment =3D 4096 * 512;
> > +
> > +       atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> > +
> > +       ret =3D i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
> > +       if (ret) {
> > +               vma =3D ERR_PTR(ret);
> > +               goto err;
> > +       }
> > +
> > +       vma =3D i915_vma_instance(obj, vm, view);
> > +       if (IS_ERR(vma))
> > +               goto err;
> > +
> > +       if (i915_vma_misplaced(vma, 0, alignment, 0)) {
> > +               ret =3D i915_vma_unbind(vma);
> > +               if (ret) {
> > +                       vma =3D ERR_PTR(ret);
> > +                       goto err;
> > +               }
> > +       }
> > +
> > +       ret =3D i915_vma_pin(vma, 0, alignment, PIN_GLOBAL);
> > +       if (ret) {
> > +               vma =3D ERR_PTR(ret);
> > +               goto err;
> > +       }
> > +
> > +       vma->display_alignment =3D max_t(u64, vma->display_alignment, a=
lignment);
> > +
> > +       i915_gem_object_flush_if_display(obj);
> > +
> > +       i915_vma_get(vma);
> > +err:
> > +       atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> > +
> > +       return vma;
> > +}
> > +
> >  struct i915_vma *
> >  intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
> >                            bool phys_cursor,
> > @@ -1630,6 +1860,49 @@ static void intel_plane_disable_noatomic(struct =
intel_crtc *crtc,
> >         intel_wait_for_vblank(dev_priv, crtc->pipe);
> >  }
> >
> > +static struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
> > +{
> > +       struct drm_i915_private *i915 =3D vm->i915;
> > +       struct i915_dpt *dpt =3D i915_vm_to_dpt(vm);
> > +       intel_wakeref_t wakeref;
> > +       struct i915_vma *vma;
> > +       void __iomem *iomem;
> > +
> > +       wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> > +       atomic_inc(&i915->gpu_error.pending_fb_pin);
> > +
> > +       vma =3D i915_gem_object_ggtt_pin(dpt->obj, NULL, 0, 4096,
> > +                                      HAS_LMEM(i915) ? 0 : PIN_MAPPABL=
E);
> > +       if (IS_ERR(vma))
> > +               goto err;
> > +
> > +       iomem =3D i915_vma_pin_iomap(vma);
> > +       i915_vma_unpin(vma);
> > +       if (IS_ERR(iomem)) {
> > +               vma =3D iomem;
> > +               goto err;
> > +       }
> > +
> > +       dpt->vma =3D vma;
> > +       dpt->iomem =3D iomem;
> > +
> > +       i915_vma_get(vma);
> > +
> > +err:
> > +       atomic_dec(&i915->gpu_error.pending_fb_pin);
> > +       intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> > +
> > +       return vma;
> > +}
> > +
> > +static void intel_dpt_unpin(struct i915_address_space *vm)
> > +{
> > +       struct i915_dpt *dpt =3D i915_vm_to_dpt(vm);
> > +
> > +       i915_vma_unpin_iomap(dpt->vma);
> > +       i915_vma_put(dpt->vma);
> > +}
> > +
> >  static void
> >  intel_find_initial_plane_obj(struct intel_crtc *intel_crtc,
> >                              struct intel_initial_plane_config *plane_c=
onfig)
> > @@ -1675,12 +1948,12 @@ intel_find_initial_plane_obj(struct intel_crtc =
*intel_crtc,
> >                         continue;
> >
> >                 state =3D to_intel_plane_state(c->primary->state);
> > -               if (!state->vma)
> > +               if (!state->ggtt_vma)
> >                         continue;
> >
> >                 if (intel_plane_ggtt_offset(state) =3D=3D plane_config-=
>base) {
> >                         fb =3D state->hw.fb;
> > -                       vma =3D state->vma;
> > +                       vma =3D state->ggtt_vma;
> >                         goto valid_fb;
> >                 }
> >         }
> > @@ -1707,7 +1980,7 @@ intel_find_initial_plane_obj(struct intel_crtc *i=
ntel_crtc,
> >                            &intel_state->view);
> >
> >         __i915_vma_pin(vma);
> > -       intel_state->vma =3D i915_vma_get(vma);
> > +       intel_state->ggtt_vma =3D i915_vma_get(vma);
> >         if (intel_plane_uses_fence(intel_state) && i915_vma_pin_fence(v=
ma) =3D=3D 0)
> >                 if (vma->fence)
> >                         intel_state->flags |=3D PLANE_HAS_FENCE;
> > @@ -10551,25 +10824,60 @@ int intel_plane_pin_fb(struct intel_plane_sta=
te *plane_state)
> >                 plane->id =3D=3D PLANE_CURSOR &&
> >                 INTEL_INFO(dev_priv)->display.cursor_needs_physical;
> >
> > -       vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> > -                                        &plane_state->view.gtt,
> > -                                        intel_plane_uses_fence(plane_s=
tate),
> > -                                        &plane_state->flags);
> > -       if (IS_ERR(vma))
> > -               return PTR_ERR(vma);
> > -
> > -       plane_state->vma =3D vma;
> > +       if (!intel_fb_uses_dpt(fb)) {
> > +               vma =3D intel_pin_and_fence_fb_obj(fb, phys_cursor,
> > +                                                &plane_state->view.gtt,
> > +                                                intel_plane_uses_fence=
(plane_state),
> > +                                                &plane_state->flags);
> > +               if (IS_ERR(vma))
> > +                       return PTR_ERR(vma);
> > +
> > +               plane_state->ggtt_vma =3D vma;
> > +       } else {
> > +               struct intel_framebuffer *intel_fb =3D to_intel_framebu=
ffer(fb);
> > +
> > +               vma =3D intel_dpt_pin(intel_fb->dpt_vm);
> > +               if (IS_ERR(vma))
> > +                       return PTR_ERR(vma);
> > +
> > +               plane_state->ggtt_vma =3D vma;
> > +
> > +               vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt=
, false,
> > +                                          &plane_state->flags, intel_f=
b->dpt_vm);
> > +               if (IS_ERR(vma)) {
> > +                       intel_dpt_unpin(intel_fb->dpt_vm);
> > +                       plane_state->ggtt_vma =3D NULL;
> > +                       return PTR_ERR(vma);
> > +               }
> > +
> > +               plane_state->dpt_vma =3D vma;
> > +
> > +               WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_v=
ma);
> > +       }
> >
> >         return 0;
> >  }
> >
> >  void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
> >  {
> > +       struct drm_framebuffer *fb =3D old_plane_state->hw.fb;
> >         struct i915_vma *vma;
> >
> > -       vma =3D fetch_and_zero(&old_plane_state->vma);
> > -       if (vma)
> > -               intel_unpin_fb_vma(vma, old_plane_state->flags);
> > +       if (!intel_fb_uses_dpt(fb)) {
> > +               vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> > +               if (vma)
> > +                       intel_unpin_fb_vma(vma, old_plane_state->flags);
> > +       } else {
> > +               struct intel_framebuffer *intel_fb =3D to_intel_framebu=
ffer(fb);
> > +
> > +               vma =3D fetch_and_zero(&old_plane_state->dpt_vma);
> > +               if (vma)
> > +                       intel_unpin_fb_vma(vma, old_plane_state->flags);
> > +
> > +               vma =3D fetch_and_zero(&old_plane_state->ggtt_vma);
> > +               if (vma)
> > +                       intel_dpt_unpin(intel_fb->dpt_vm);
> > +       }
> >  }
> >
> >  /**
> > @@ -11092,6 +11400,10 @@ static void intel_user_framebuffer_destroy(str=
uct drm_framebuffer *fb)
> >         struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> >
> >         drm_framebuffer_cleanup(fb);
> > +
> > +       if (intel_fb_uses_dpt(fb))
> > +               intel_dpt_destroy(intel_fb->dpt_vm);
> > +
> >         intel_frontbuffer_put(intel_fb->frontbuffer);
> >
> >         kfree(intel_fb);
> > @@ -11262,6 +11574,18 @@ static int intel_framebuffer_init(struct intel=
_framebuffer *intel_fb,
> >         if (ret)
> >                 goto err;
> >
> > +       if (intel_fb_uses_dpt(fb)) {
> > +               struct i915_address_space *vm;
> > +
> > +               vm =3D intel_dpt_create(&obj->base);
> > +               if (IS_ERR(vm)) {
> > +                       ret =3D PTR_ERR(vm);
> > +                       goto err;
> > +               }
> > +
> > +               intel_fb->dpt_vm =3D vm;
> > +       }
> > +
> >         ret =3D drm_framebuffer_init(&dev_priv->drm, fb, &intel_fb_func=
s);
> >         if (ret) {
> >                 drm_err(&dev_priv->drm, "framebuffer init failed %d\n",=
 ret);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu=
/drm/i915/display/intel_display.h
> > index fc0df4c63e8de..bf12e77bcd175 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -44,6 +44,7 @@ struct drm_mode_fb_cmd2;
> >  struct drm_modeset_acquire_ctx;
> >  struct drm_plane;
> >  struct drm_plane_state;
> > +struct i915_address_space;
> >  struct i915_ggtt_view;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 6d8cdaa367485..7fe96777dc671 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -128,6 +128,8 @@ struct intel_framebuffer {
> >         struct intel_fb_view normal_view;
> >         struct intel_fb_view rotated_view;
> >         struct intel_fb_view remapped_view;
> > +
> > +       struct i915_address_space *dpt_vm;
> >  };
> >
> >  struct intel_fbdev {
> > @@ -610,7 +612,8 @@ struct intel_plane_state {
> >                 enum drm_scaling_filter scaling_filter;
> >         } hw;
> >
> > -       struct i915_vma *vma;
> > +       struct i915_vma *ggtt_vma;
> > +       struct i915_vma *dpt_vma;
> >         unsigned long flags;
> >  #define PLANE_HAS_FENCE BIT(0)
> >
> > @@ -1972,9 +1975,15 @@ intel_wait_for_vblank_if_active(struct drm_i915_=
private *dev_priv, enum pipe pip
> >                 intel_wait_for_vblank(dev_priv, pipe);
> >  }
> >
> > -static inline u32 intel_plane_ggtt_offset(const struct intel_plane_sta=
te *state)
> > +static inline bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
> >  {
> > -       return i915_ggtt_offset(state->vma);
> > +       return fb && DISPLAY_VER(to_i915(fb->dev)) >=3D 13 &&
> > +               fb->modifier !=3D DRM_FORMAT_MOD_LINEAR;
> > +}
> > +
> > +static inline u32 intel_plane_ggtt_offset(const struct intel_plane_sta=
te *plane_state)
> > +{
> > +       return i915_ggtt_offset(plane_state->ggtt_vma);
> >  }
> >
> >  static inline struct intel_frontbuffer *
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm=
/i915/display/intel_fbc.c
> > index b2f3ac846f5b6..1847a161cb374 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -737,11 +737,11 @@ static void intel_fbc_update_state_cache(struct i=
ntel_crtc *crtc,
> >         cache->fence_y_offset =3D intel_plane_fence_y_offset(plane_stat=
e);
> >
> >         drm_WARN_ON(&dev_priv->drm, plane_state->flags & PLANE_HAS_FENC=
E &&
> > -                   !plane_state->vma->fence);
> > +                   !plane_state->ggtt_vma->fence);
> >
> >         if (plane_state->flags & PLANE_HAS_FENCE &&
> > -           plane_state->vma->fence)
> > -               cache->fence_id =3D plane_state->vma->fence->id;
> > +           plane_state->ggtt_vma->fence)
> > +               cache->fence_id =3D plane_state->ggtt_vma->fence->id;
> >         else
> >                 cache->fence_id =3D -1;
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drive=
rs/gpu/drm/i915/display/skl_universal_plane.c
> > index 0d34a5ad4e2b9..6df3e745f830d 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -934,6 +934,21 @@ static u32 glk_plane_color_ctl(const struct intel_=
crtc_state *crtc_state,
> >         return plane_color_ctl;
> >  }
> >
> > +static u32 skl_surf_address(const struct intel_plane_state *plane_stat=
e,
> > +                           int color_plane)
> > +{
> > +       const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > +       u32 offset =3D plane_state->view.color_plane[color_plane].offse=
t;
> > +
> > +       if (intel_fb_uses_dpt(fb)) {
> > +               WARN_ON(offset & 0x1fffff);
> > +               return offset >> 9;
> > +       } else {
> > +               WARN_ON(offset & 0xfff);
> > +               return offset;
> > +       }
> > +}
> > +
> >  static void
> >  skl_program_plane(struct intel_plane *plane,
> >                   const struct intel_crtc_state *crtc_state,
> > @@ -944,7 +959,7 @@ skl_program_plane(struct intel_plane *plane,
> >         enum plane_id plane_id =3D plane->id;
> >         enum pipe pipe =3D plane->pipe;
> >         const struct drm_intel_sprite_colorkey *key =3D &plane_state->c=
key;
> > -       u32 surf_addr =3D plane_state->view.color_plane[color_plane].of=
fset;
> > +       u32 surf_addr =3D skl_surf_address(plane_state, color_plane);
> >         u32 stride =3D skl_plane_stride(plane_state, color_plane);
> >         const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >         int aux_plane =3D skl_main_to_aux_plane(fb, color_plane);
> > @@ -983,7 +998,7 @@ skl_program_plane(struct intel_plane *plane,
> >         }
> >
> >         if (aux_plane) {
> > -               aux_dist =3D plane_state->view.color_plane[aux_plane].o=
ffset - surf_addr;
> > +               aux_dist =3D skl_surf_address(plane_state, aux_plane) -=
 surf_addr;
> >
> >                 if (DISPLAY_VER(dev_priv) < 12)
> >                         aux_dist |=3D skl_plane_stride(plane_state, aux=
_plane);
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h b/drivers/gpu/drm/i91=
5/gt/gen8_ppgtt.h
> > index 76a08b9c1f5c8..b9028c2ad3c7d 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> > +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.h
> > @@ -6,8 +6,15 @@
> >  #ifndef __GEN8_PPGTT_H__
> >  #define __GEN8_PPGTT_H__
> >
> > +#include <linux/kernel.h>
> > +
> > +struct i915_address_space;
> >  struct intel_gt;
> > +enum i915_cache_level;
> >
> >  struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt);
> > +u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> > +                        enum i915_cache_level level,
> > +                        u32 flags);
> >
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i91=
5/gt/intel_ggtt.c
> > index dcb3b299cf4aa..35069ca5d7deb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > @@ -18,6 +18,7 @@
> >  #include "i915_vgpu.h"
> >
> >  #include "intel_gtt.h"
> > +#include "gen8_ppgtt.h"
> >
> >  static int
> >  i915_get_ggtt_vma_pages(struct i915_vma *vma);
> > @@ -187,9 +188,9 @@ static void gmch_ggtt_invalidate(struct i915_ggtt *=
ggtt)
> >         intel_gtt_chipset_flush();
> >  }
> >
> > -static u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> > -                               enum i915_cache_level level,
> > -                               u32 flags)
> > +u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> > +                        enum i915_cache_level level,
> > +                        u32 flags)
> >  {
> >         gen8_pte_t pte =3D addr | _PAGE_PRESENT;
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915=
/gt/intel_gtt.h
> > index 44ce27c516319..ca00b45827b74 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> > @@ -248,6 +248,7 @@ struct i915_address_space {
> >         struct dma_resv resv; /* reservation lock for all pd objects, a=
nd buffer pool */
> >  #define VM_CLASS_GGTT 0
> >  #define VM_CLASS_PPGTT 1
> > +#define VM_CLASS_DPT 2
> >
> >         struct drm_i915_gem_object *scratch[4];
> >         /**
> > @@ -258,6 +259,9 @@ struct i915_address_space {
> >         /* Global GTT */
> >         bool is_ggtt:1;
> >
> > +       /* Display page table */
> > +       bool is_dpt:1;
> > +
> >         /* Some systems support read-only mappings for GGTT and/or PPGT=
T */
> >         bool has_read_only:1;
> >
> > @@ -354,6 +358,7 @@ struct i915_ppgtt {
> >  };
> >
> >  #define i915_is_ggtt(vm) ((vm)->is_ggtt)
> > +#define i915_is_dpt(vm) ((vm)->is_dpt)
> >
> >  int __must_check
> >  i915_vm_lock_objects(struct i915_address_space *vm, struct i915_gem_ww=
_ctx *ww);
> > --
> > 2.27.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> =

> =

> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
