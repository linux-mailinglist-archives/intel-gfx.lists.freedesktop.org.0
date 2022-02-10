Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B06F4B0274
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 02:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E6810E3C8;
	Thu, 10 Feb 2022 01:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575E810E3C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 01:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644457319; x=1675993319;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eTjxuYwNAf0cAshnQeC8xzSXQqjTxpRyyKi9SRoreLU=;
 b=XV0UnquiGuHUlbgnQZwRAZwNsyxSAAxY2fSCn6RApYeQ/vewSnixpbL5
 klEojgVDRst5vSriMz4U637EyDKCLj/o9FiXM39r0ls3/OmbHYHQ5RhMh
 UD6vrXS597fiTrOhANCNwc3+YxejkZZ4THR+CcO4YCKjHdqfN3y8qHina
 fzXg7hHD4oxlToArTOeH6LmWRFhQ7kgEWZnmH08C/YOHXGRFFSBUvT3PA
 YzjfkUu/lkq/TJZYEHb1fqxV4uZe4kuKUkLuz5muE6IcQ4CNCyzlnQ93q
 1BvC1vI0htZfYITkEkstYE4Bt2Jk+iWhyicWYTd65+p0M+TAjsb12QBdX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="249138421"
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="249138421"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 17:41:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,357,1635231600"; d="scan'208";a="629504505"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 09 Feb 2022 17:41:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 17:41:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 9 Feb 2022 17:41:57 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.020;
 Wed, 9 Feb 2022 17:41:57 -0800
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/gem: Don't try to map and fence large
 scanout buffers (v6)
Thread-Index: AQHYGWfxrkoSi8qk+UOhmAeDzwS3QqyIdo8AgAANpQCAABswAIAAA02AgAA9usCAANCNgIAAjxTAgAEkfQCAAGaFIA==
Date: Thu, 10 Feb 2022 01:41:57 +0000
Message-ID: <da676c1331f14e7e92759f47197b7ef4@intel.com>
References: <c8691153-023c-941d-d8b7-831220caa6e6@linux.intel.com>
 <20220204012210.1517091-1-vivek.kasireddy@intel.com>
 <YgD7UiFEdeWl/dsS@intel.com>
 <4475de33-22b3-edbb-2995-f72e9bcc4162@linux.intel.com>
 <YgEdkkHHgtSfQrJU@intel.com>
 <78a464bd-a591-ac9b-51ca-b4f227d42ada@linux.intel.com>
 <f18c6bed0a3845fb885fda0d16a8a841@intel.com> <YgIDEVl2AsnBzPCn@intel.com>
 <ade4bb83c6d240b8a5cf5c079ef58581@intel.com> <YgNwclYjc+yTgtUI@intel.com>
In-Reply-To: <YgNwclYjc+yTgtUI@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Don't try to map and
 fence large scanout buffers (v6)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

> On Wed, Feb 09, 2022 at 01:47:01AM +0000, Kasireddy, Vivek wrote:
> > Hi Ville,
> >
> > >
> > > On Tue, Feb 08, 2022 at 05:10:42AM +0000, Kasireddy, Vivek wrote:
> > > > Hi Tvrtko, Ville,
> > > >
> > > > > On 07/02/2022 13:24, Ville Syrj=E4l=E4 wrote:
> > > > > > On Mon, Feb 07, 2022 at 11:47:16AM +0000, Tvrtko Ursulin wrote:
> > > > > >>
> > > > > >> On 07/02/2022 10:58, Ville Syrj=E4l=E4 wrote:
> > > > > >>> On Thu, Feb 03, 2022 at 05:22:10PM -0800, Vivek Kasireddy wro=
te:
> > > > > >>>> On platforms capable of allowing 8K (7680 x 4320) modes, pin=
ning 2
> > > > > >>>> or more framebuffers/scanout buffers results in only one tha=
t is
> > > > > >>>> mappable/ fenceable. Therefore, pageflipping between these 2=
 FBs
> > > > > >>>> where only one is mappable/fenceable creates latencies large=
 enough
> > > > > >>>> to miss alternate vblanks thereby producing less optimal fra=
merate.
> > > > > >>>>
> > > > > >>>> This mainly happens because when
> > > > > >>>> i915_gem_object_pin_to_display_plane()
> > > > > >>>> is called to pin one of the FB objs, the associated vma is
> > > > > >>>> identified as misplaced and therefore i915_vma_unbind() is c=
alled
> > > > > >>>> which unbinds and evicts it. This misplaced vma gets subseqe=
ntly
> > > > > >>>> pinned only when
> > > > > >>>> i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE=
. This
> > > > > >>>> results in a latency of ~10ms and happens every other vblank=
/repaint cycle.
> > > > > >>>> Therefore, to fix this issue, we try to see if there is spac=
e to
> > > > > >>>> map at-least two objects of a given size and return early if=
 there
> > > > > >>>> isn't. This would ensure that we do not try with PIN_MAPPABL=
E for
> > > > > >>>> any objects that are too big to map thereby preventing unnce=
ssary unbind.
> > > > > >>>>
> > > > > >>>> Testcase:
> > > > > >>>> Running Weston and weston-simple-egl on an Alderlake_S (ADLS=
)
> > > > > >>>> platform with a 8K@60 mode results in only ~40 FPS. Since up=
stream
> > > > > >>>> Weston submits a frame ~7ms before the next vblank, the late=
ncies
> > > > > >>>> seen between atomic commit and flip event are 7, 24 (7 + 16.=
66), 7,
> > > > > >>>> 24..... suggesting that it misses the vblank every other fra=
me.
> > > > > >>>>
> > > > > >>>> Here is the ftrace snippet that shows the source of the ~10m=
s latency:
> > > > > >>>>                 i915_gem_object_pin_to_display_plane() {
> > > > > >>>> 0.102 us   |    i915_gem_object_set_cache_level();
> > > > > >>>>                   i915_gem_object_ggtt_pin_ww() {
> > > > > >>>> 0.390 us   |      i915_vma_instance();
> > > > > >>>> 0.178 us   |      i915_vma_misplaced();
> > > > > >>>>                     i915_vma_unbind() {
> > > > > >>>>                     __i915_active_wait() {
> > > > > >>>> 0.082 us   |        i915_active_acquire_if_busy();
> > > > > >>>> 0.475 us   |      }
> > > > > >>>>                     intel_runtime_pm_get() {
> > > > > >>>> 0.087 us   |        intel_runtime_pm_acquire();
> > > > > >>>> 0.259 us   |      }
> > > > > >>>>                     __i915_active_wait() {
> > > > > >>>> 0.085 us   |        i915_active_acquire_if_busy();
> > > > > >>>> 0.240 us   |      }
> > > > > >>>>                     __i915_vma_evict() {
> > > > > >>>>                       ggtt_unbind_vma() {
> > > > > >>>>                         gen8_ggtt_clear_range() {
> > > > > >>>> 10507.255 us |        }
> > > > > >>>> 10507.689 us |      }
> > > > > >>>> 10508.516 us |   }
> > > > > >>>>
> > > > > >>>> v2: Instead of using bigjoiner checks, determine whether a s=
canout
> > > > > >>>>       buffer is too big by checking to see if it is possible=
 to map
> > > > > >>>>       two of them into the ggtt.
> > > > > >>>>
> > > > > >>>> v3 (Ville):
> > > > > >>>> - Count how many fb objects can be fit into the available ho=
les
> > > > > >>>>     instead of checking for a hole twice the object size.
> > > > > >>>> - Take alignment constraints into account.
> > > > > >>>> - Limit this large scanout buffer check to >=3D Gen 11 platf=
orms.
> > > > > >>>>
> > > > > >>>> v4:
> > > > > >>>> - Remove existing heuristic that checks just for size. (Vill=
e)
> > > > > >>>> - Return early if we find space to map at-least two objects.
> > > > > >>>> (Tvrtko)
> > > > > >>>> - Slightly update the commit message.
> > > > > >>>>
> > > > > >>>> v5: (Tvrtko)
> > > > > >>>> - Rename the function to indicate that the object may be too=
 big to
> > > > > >>>>     map into the aperture.
> > > > > >>>> - Account for guard pages while calculating the total size r=
equired
> > > > > >>>>     for the object.
> > > > > >>>> - Do not subject all objects to the heuristic check and inst=
ead
> > > > > >>>>     consider objects only of a certain size.
> > > > > >>>> - Do the hole walk using the rbtree.
> > > > > >>>> - Preserve the existing PIN_NONBLOCK logic.
> > > > > >>>> - Drop the PIN_MAPPABLE check while pinning the VMA.
> > > > > >>>>
> > > > > >>>> v6: (Tvrtko)
> > > > > >>>> - Return 0 on success and the specific error code on failure=
 to
> > > > > >>>>     preserve the existing behavior.
> > > > > >>>>
> > > > > >>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > >>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > >>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > > > >>>> Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > > > >>>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > > > >>>> ---
> > > > > >>>>    drivers/gpu/drm/i915/i915_gem.c | 120
> ++++++++++++++++++++++++-----
> > > ---
> > > > > >>>>    1 file changed, 90 insertions(+), 30 deletions(-)
> > > > > >>>>
> > > > > >>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c
> > > > > >>>> b/drivers/gpu/drm/i915/i915_gem.c index e3a2c2a0e156..39f0d1=
7550c3
> > > > > >>>> 100644
> > > > > >>>> --- a/drivers/gpu/drm/i915/i915_gem.c
> > > > > >>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > > > >>>> @@ -46,6 +46,7 @@
> > > > > >>>>    #include "gem/i915_gem_mman.h"
> > > > > >>>>    #include "gem/i915_gem_region.h"
> > > > > >>>>    #include "gem/i915_gem_userptr.h"
> > > > > >>>> +#include "gem/i915_gem_tiling.h"
> > > > > >>>>    #include "gt/intel_engine_user.h"
> > > > > >>>>    #include "gt/intel_gt.h"
> > > > > >>>>    #include "gt/intel_gt_pm.h"
> > > > > >>>> @@ -876,6 +877,92 @@ static void discard_ggtt_vma(struct i91=
5_vma
> *vma)
> > > > > >>>>    	spin_unlock(&obj->vma.lock);
> > > > > >>>>    }
> > > > > >>>>
> > > > > >>>> +static int
> > > > > >>>> +i915_gem_object_fits_in_aperture(struct drm_i915_gem_object=
 *obj,
> > > > > >>>> +				 u64 alignment, u64 flags)
> > > > > >>>> +{
> > > > > >>>> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> > > > > >>>> +	struct i915_ggtt *ggtt =3D to_gt(i915)->ggtt;
> > > > > >>>> +	struct drm_mm_node *hole;
> > > > > >>>> +	u64 hole_start, hole_end, start, end;
> > > > > >>>> +	u64 fence_size, fence_alignment;
> > > > > >>>> +	unsigned int count =3D 0;
> > > > > >>>> +
> > > > > >>>> +	/*
> > > > > >>>> +	 * If the required space is larger than the available
> > > > > >>>> +	 * aperture, we will not able to find a slot for the
> > > > > >>>> +	 * object and unbinding the object now will be in
> > > > > >>>> +	 * vain. Worse, doing so may cause us to ping-pong
> > > > > >>>> +	 * the object in and out of the Global GTT and
> > > > > >>>> +	 * waste a lot of cycles under the mutex.
> > > > > >>>> +	 */
> > > > > >>>> +	if (obj->base.size > ggtt->mappable_end)
> > > > > >>>> +		return -E2BIG;
> > > > > >>>> +
> > > > > >>>> +	/*
> > > > > >>>> +	 * If NONBLOCK is set the caller is optimistically
> > > > > >>>> +	 * trying to cache the full object within the mappable
> > > > > >>>> +	 * aperture, and *must* have a fallback in place for
> > > > > >>>> +	 * situations where we cannot bind the object. We
> > > > > >>>> +	 * can be a little more lax here and use the fallback
> > > > > >>>> +	 * more often to avoid costly migrations of ourselves
> > > > > >>>> +	 * and other objects within the aperture.
> > > > > >>>> +	 */
> > > > > >>>> +	if (!(flags & PIN_NONBLOCK))
> > > > > >>>> +		return 0;
> > > > > >>>> +
> > > > > >>>> +	/*
> > > > > >>>> +	 * We only consider objects whose size is at-least a quart=
er of
> > > > > >>>> +	 * the aperture to be too big and subject them to the new
> > > > > >>>> +	 * heuristic below.
> > > > > >>>> +	 */
> > > > > >>>> +	if (obj->base.size < ggtt->mappable_end / 4)
> > > > > >>>> +		return 0;
> > > > > >>>
> > > > > >>> That seems a fairly arbitrary thing to put here. Maybe someth=
ing the
> > > > > >>> caller should check/specify?
> > > > > >>
> > > > > >> I have no strong opinion on this one. In my mind I categorised=
 it
> > > > > >> under "is it a large framebuffer" heuristics. Previously it wa=
s less
> > > > > >> than one half of aperture always okay, now one quarter, plus 2=
x hole
> > > > > >> check if larger. Both are heuristics. I even mentioned earlier=
 if 2x
> > > > > >> should be an input parameter as well, but again, given it's no=
t an
> > > > > >> exported function couldn't really justify it.
> > > > > >
> > > > > > Is there any point in even having this extra check? If we don't=
 think
> > > > > > checking this is worth the hassle then why call the function at=
 all?
> > > > >
> > > > > The "/4" one? It was my suggestion to avoid the hole search if we=
 can know based
> on
> > > size
> > > > > it cannot be a frame buffer that would be affected by the ping-pi=
ng problem.
> Granted
> > > that
> > > > > was before the rbtree hole search, when it was traversing the un-=
ordered linked list
> of
> > > > > holes. What is the correct size threshold I don't know.
> > > > >
> > > > > >>>> +
> > > > > >>>> +	if (HAS_GMCH(i915) || DISPLAY_VER(i915) < 11 ||
> > > > > >>>> +	    !i915_gem_object_is_framebuffer(obj))
> > > > > >>>> +		return 0;
> > > > > >>>
> > > > > >>> None of that seems appropriate for a generic gem function wit=
h this
> > > > > >>> name.
> > > > > >>
> > > > > >> It's not exported though, maybe remove i915_gem prefix to avoi=
d any
> > > > > >> ideas of it being generic?
> > > > > >
> > > > > > These checks don't even seem to doing anything useful. HAS_GMCH=
 should
> > > > > > already be covered by always setting PIN_MAPPABLE and hence
> O_NONBLOCK
> > > > [Kasireddy, Vivek] I can drop the HAS_GMCH(i915) check given that i=
t is
> redundant.
> > > >
> > > > > > is never even tried, the pre-icl vs. icl+ check should not exis=
t at
> > > > [Kasireddy, Vivek] My aim was to narrow down the list of situations=
 in which the
> > > > ping-pong problem becomes more pronounced and may lead to performan=
ce
> > > > issues. Therefore, I added the DISPLAY_VER(i915) check since 8K/big=
joiner is
> > > > feasible only on those newer platforms.
> > >
> > > Like I said before bigjoiner is irrelevant. The only thing that
> > > matters is the size of the mapping vs. mappable aperture size.
> > [Kasireddy, Vivek] Ok, got it.
> >
> > >
> > > >
> > > > > > all IMO, and if this is only called for framebuffers then why d=
oes the
> > > > > > code pretend that is not the case?
> > > > [Kasireddy, Vivek] Oh, I added the i915_gem_object_is_framebuffer()=
 check after I
> > > > found that there are other callers (for example, reloc_iomap() in
> i915_gem_execbuffer.c)
> > > > of i915_gem_object_ggtt_pin_ww() that may not be working on an fb.
> > > >
> > > > Also, I figured size < ggtt->mappable_end / 4 or a similar check is=
 needed as we do
> > > > not want to subject all FBs through this performance critical path.
> > >
> > > Why not?
> > [Kasireddy, Vivek] Oh, I just thought that it makes sense to avoid the =
expensive hole
> search
> > for smaller FBs that are unlikely to exhaust the mappable aperture spac=
e. And, I also
> wanted
> > to preserve the behavior prior to this patch. However, I guess I could =
drop this check as
> well
> > given that the hole search via rbtree traversal may not be that bad in =
terms of time.
> >
> > What about the i915_gem_object_is_framebuffer() check? Should I keep it=
 given the
> smaller
> > size and transient nature of batchbuffers that go through this path?
>=20
> Hmm. I guess if we don't have any real idea on the cost of this then
> maybe we should not do it there, for the moment at least. I'm just
> pondering if this whole thing should just be a seaprate function
> each current caller of i915_gem_object_ggtt_pin_ww() should call
> explicitly... But maybe we want framebuffers in partcular to undergo
> the same restrictions always whether it's execbuffer or display
> activity that's trying to pin them.
>=20
> However, now that I think about this I'm wondering if we should do
> all this stuff a bit later. I mean why are we even bothering with
> these checks if the vma is already bound and not misplaced?
[Kasireddy, Vivek] As I explain in the commit message, Weston flips
between two 8K FBs: FB1 and FB2 where
FB1 is mappable/fenceable and therefore not misplaced.
FB2 is NOT mappable and hence identified as misplaced.

And, when i915_gem_object_pin_to_display_plane() is called to pin
these FBs -- as part of pageflips -- this is what it does:
vma =3D ERR_PTR(-ENOSPC);
        if ((flags & PIN_MAPPABLE) =3D=3D 0 &&
            (!view || view->type =3D=3D I915_GGTT_VIEW_NORMAL))
                vma =3D i915_gem_object_ggtt_pin_ww(obj, ww, view, 0, align=
ment,
                                                  flags | PIN_MAPPABLE |
                                                  PIN_NONBLOCK);
        if (IS_ERR(vma) && vma !=3D ERR_PTR(-EDEADLK))
                vma =3D i915_gem_object_ggtt_pin_ww(obj, ww, view, 0,
                                                  alignment, flags);

FB1 gets pinned in the first call to i915_gem_object_ggtt_pin_ww() (which
has PIN_MAPPABLE) and FB2 gets pinned in the second -- which does=20
not have PIN_MAPPABLE as the first call fails because there is no=20
space left in the aperture. However, during the next pageflips, FB1=20
does not cause any issues but FB2 gets identified as misplaced
(because it fails the check
(flags & PIN_MAPPABLE && !i915_vma_is_map_and_fenceable(vma))
in the first call resulting in a costly unbind/eviction. It subsequently ge=
ts
pinned outside of mappable aperture in the second call though.

My solution -- with this patch -- is to just find out if there is enough sp=
ace
in the mappable aperture for both FB1 and FB2 when either of them are getti=
ng
pinned -- with PIN_MAPPABLE. Neither of them are pinned into the aperture
if there is no room for both. One could argue that since there is room for =
FB1
in the aperture, we should let it be but I am not sure if this inconsistenc=
y
(i.e no FB2 but only FB1 in aperture) is OK with userspace apps.

> the vma_is_misplaced() case already has the same mappable_size/2
> check so that should probably be replaced with this thing, and then
[Kasireddy, Vivek] Right, this check seems redundant and can be removed.

> additionally we could do something like this:
>=20
>   if (vma_is_miplaced()) {
>   	...
>   	if (flags & PIN_NONBLOCK)
>   		already have a check here;
> + } else if (!vma_is_bound()) {
> + 	if (flags & PIN_NONBLOCK)
> + 		check here too;
[Kasireddy, Vivek] Since it is the same check, I think doing it once
before if (i915_vma_misplaced()) should be ok as well.

Thanks,
Vivek

> + }
>=20
> --
> Ville Syrj=E4l=E4
> Intel
