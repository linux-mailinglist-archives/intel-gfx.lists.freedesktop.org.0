Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D62544AE657
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 02:47:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B27410E133;
	Wed,  9 Feb 2022 01:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F6910E133
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 01:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644371223; x=1675907223;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d9xdvUljVUQWgj9eg1pt+ZUrkKhrbO5Xr3A9fmdeqHo=;
 b=ZV44WPjtq7xjtwSNisglROxWJoXKNPQ0/6Ihe+KMVGWPL6EEkrfqgVYU
 0sTGfTJ99+knbRvZpP+XhlWxmfzGI85c9mzXeiYiU86gYf+7pI55LKWrp
 1R0RUFZBi9MI7iPqfs5k6vi8WFvYsuD3mcnDA8JPZrDYAL+BBXeqnSquC
 qeKiwH3cLdLSHEBaZNay81jYrG1xKY/LuQ2ixqHW2+FUj/OJzZ9iLIbwF
 31khLXsTHX4hBfsDHzn0m0VMV7Iukoy50Pe5ZJrQFcm3V0I4Y1lL0V0Qw
 8OP+Oo3/ePqS77koQSf3RzHxHK+Pp+l/M1FgIh8wvHBIx/c30bawqMYad w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="246682068"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="246682068"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 17:47:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="771180365"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 08 Feb 2022 17:47:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 17:47:02 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 17:47:02 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.020;
 Tue, 8 Feb 2022 17:47:02 -0800
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/gem: Don't try to map and fence large
 scanout buffers (v6)
Thread-Index: AQHYGWfxrkoSi8qk+UOhmAeDzwS3QqyIdo8AgAANpQCAABswAIAAA02AgAA9usCAANCNgIAAjxTA
Date: Wed, 9 Feb 2022 01:47:01 +0000
Message-ID: <ade4bb83c6d240b8a5cf5c079ef58581@intel.com>
References: <c8691153-023c-941d-d8b7-831220caa6e6@linux.intel.com>
 <20220204012210.1517091-1-vivek.kasireddy@intel.com>
 <YgD7UiFEdeWl/dsS@intel.com>
 <4475de33-22b3-edbb-2995-f72e9bcc4162@linux.intel.com>
 <YgEdkkHHgtSfQrJU@intel.com>
 <78a464bd-a591-ac9b-51ca-b4f227d42ada@linux.intel.com>
 <f18c6bed0a3845fb885fda0d16a8a841@intel.com> <YgIDEVl2AsnBzPCn@intel.com>
In-Reply-To: <YgIDEVl2AsnBzPCn@intel.com>
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

>=20
> On Tue, Feb 08, 2022 at 05:10:42AM +0000, Kasireddy, Vivek wrote:
> > Hi Tvrtko, Ville,
> >
> > > On 07/02/2022 13:24, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Feb 07, 2022 at 11:47:16AM +0000, Tvrtko Ursulin wrote:
> > > >>
> > > >> On 07/02/2022 10:58, Ville Syrj=E4l=E4 wrote:
> > > >>> On Thu, Feb 03, 2022 at 05:22:10PM -0800, Vivek Kasireddy wrote:
> > > >>>> On platforms capable of allowing 8K (7680 x 4320) modes, pinning=
 2
> > > >>>> or more framebuffers/scanout buffers results in only one that is
> > > >>>> mappable/ fenceable. Therefore, pageflipping between these 2 FBs
> > > >>>> where only one is mappable/fenceable creates latencies large eno=
ugh
> > > >>>> to miss alternate vblanks thereby producing less optimal framera=
te.
> > > >>>>
> > > >>>> This mainly happens because when
> > > >>>> i915_gem_object_pin_to_display_plane()
> > > >>>> is called to pin one of the FB objs, the associated vma is
> > > >>>> identified as misplaced and therefore i915_vma_unbind() is calle=
d
> > > >>>> which unbinds and evicts it. This misplaced vma gets subseqently
> > > >>>> pinned only when
> > > >>>> i915_gem_object_ggtt_pin_ww() is called without PIN_MAPPABLE. Th=
is
> > > >>>> results in a latency of ~10ms and happens every other vblank/rep=
aint cycle.
> > > >>>> Therefore, to fix this issue, we try to see if there is space to
> > > >>>> map at-least two objects of a given size and return early if the=
re
> > > >>>> isn't. This would ensure that we do not try with PIN_MAPPABLE fo=
r
> > > >>>> any objects that are too big to map thereby preventing unncessar=
y unbind.
> > > >>>>
> > > >>>> Testcase:
> > > >>>> Running Weston and weston-simple-egl on an Alderlake_S (ADLS)
> > > >>>> platform with a 8K@60 mode results in only ~40 FPS. Since upstre=
am
> > > >>>> Weston submits a frame ~7ms before the next vblank, the latencie=
s
> > > >>>> seen between atomic commit and flip event are 7, 24 (7 + 16.66),=
 7,
> > > >>>> 24..... suggesting that it misses the vblank every other frame.
> > > >>>>
> > > >>>> Here is the ftrace snippet that shows the source of the ~10ms la=
tency:
> > > >>>>                 i915_gem_object_pin_to_display_plane() {
> > > >>>> 0.102 us   |    i915_gem_object_set_cache_level();
> > > >>>>                   i915_gem_object_ggtt_pin_ww() {
> > > >>>> 0.390 us   |      i915_vma_instance();
> > > >>>> 0.178 us   |      i915_vma_misplaced();
> > > >>>>                     i915_vma_unbind() {
> > > >>>>                     __i915_active_wait() {
> > > >>>> 0.082 us   |        i915_active_acquire_if_busy();
> > > >>>> 0.475 us   |      }
> > > >>>>                     intel_runtime_pm_get() {
> > > >>>> 0.087 us   |        intel_runtime_pm_acquire();
> > > >>>> 0.259 us   |      }
> > > >>>>                     __i915_active_wait() {
> > > >>>> 0.085 us   |        i915_active_acquire_if_busy();
> > > >>>> 0.240 us   |      }
> > > >>>>                     __i915_vma_evict() {
> > > >>>>                       ggtt_unbind_vma() {
> > > >>>>                         gen8_ggtt_clear_range() {
> > > >>>> 10507.255 us |        }
> > > >>>> 10507.689 us |      }
> > > >>>> 10508.516 us |   }
> > > >>>>
> > > >>>> v2: Instead of using bigjoiner checks, determine whether a scano=
ut
> > > >>>>       buffer is too big by checking to see if it is possible to =
map
> > > >>>>       two of them into the ggtt.
> > > >>>>
> > > >>>> v3 (Ville):
> > > >>>> - Count how many fb objects can be fit into the available holes
> > > >>>>     instead of checking for a hole twice the object size.
> > > >>>> - Take alignment constraints into account.
> > > >>>> - Limit this large scanout buffer check to >=3D Gen 11 platforms=
.
> > > >>>>
> > > >>>> v4:
> > > >>>> - Remove existing heuristic that checks just for size. (Ville)
> > > >>>> - Return early if we find space to map at-least two objects.
> > > >>>> (Tvrtko)
> > > >>>> - Slightly update the commit message.
> > > >>>>
> > > >>>> v5: (Tvrtko)
> > > >>>> - Rename the function to indicate that the object may be too big=
 to
> > > >>>>     map into the aperture.
> > > >>>> - Account for guard pages while calculating the total size requi=
red
> > > >>>>     for the object.
> > > >>>> - Do not subject all objects to the heuristic check and instead
> > > >>>>     consider objects only of a certain size.
> > > >>>> - Do the hole walk using the rbtree.
> > > >>>> - Preserve the existing PIN_NONBLOCK logic.
> > > >>>> - Drop the PIN_MAPPABLE check while pinning the VMA.
> > > >>>>
> > > >>>> v6: (Tvrtko)
> > > >>>> - Return 0 on success and the specific error code on failure to
> > > >>>>     preserve the existing behavior.
> > > >>>>
> > > >>>> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > >>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > >>>> Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > >>>> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> > > >>>> ---
> > > >>>>    drivers/gpu/drm/i915/i915_gem.c | 120 +++++++++++++++++++++++=
+-----
> ---
> > > >>>>    1 file changed, 90 insertions(+), 30 deletions(-)
> > > >>>>
> > > >>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c
> > > >>>> b/drivers/gpu/drm/i915/i915_gem.c index e3a2c2a0e156..39f0d17550=
c3
> > > >>>> 100644
> > > >>>> --- a/drivers/gpu/drm/i915/i915_gem.c
> > > >>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
> > > >>>> @@ -46,6 +46,7 @@
> > > >>>>    #include "gem/i915_gem_mman.h"
> > > >>>>    #include "gem/i915_gem_region.h"
> > > >>>>    #include "gem/i915_gem_userptr.h"
> > > >>>> +#include "gem/i915_gem_tiling.h"
> > > >>>>    #include "gt/intel_engine_user.h"
> > > >>>>    #include "gt/intel_gt.h"
> > > >>>>    #include "gt/intel_gt_pm.h"
> > > >>>> @@ -876,6 +877,92 @@ static void discard_ggtt_vma(struct i915_vm=
a *vma)
> > > >>>>    	spin_unlock(&obj->vma.lock);
> > > >>>>    }
> > > >>>>
> > > >>>> +static int
> > > >>>> +i915_gem_object_fits_in_aperture(struct drm_i915_gem_object *ob=
j,
> > > >>>> +				 u64 alignment, u64 flags)
> > > >>>> +{
> > > >>>> +	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> > > >>>> +	struct i915_ggtt *ggtt =3D to_gt(i915)->ggtt;
> > > >>>> +	struct drm_mm_node *hole;
> > > >>>> +	u64 hole_start, hole_end, start, end;
> > > >>>> +	u64 fence_size, fence_alignment;
> > > >>>> +	unsigned int count =3D 0;
> > > >>>> +
> > > >>>> +	/*
> > > >>>> +	 * If the required space is larger than the available
> > > >>>> +	 * aperture, we will not able to find a slot for the
> > > >>>> +	 * object and unbinding the object now will be in
> > > >>>> +	 * vain. Worse, doing so may cause us to ping-pong
> > > >>>> +	 * the object in and out of the Global GTT and
> > > >>>> +	 * waste a lot of cycles under the mutex.
> > > >>>> +	 */
> > > >>>> +	if (obj->base.size > ggtt->mappable_end)
> > > >>>> +		return -E2BIG;
> > > >>>> +
> > > >>>> +	/*
> > > >>>> +	 * If NONBLOCK is set the caller is optimistically
> > > >>>> +	 * trying to cache the full object within the mappable
> > > >>>> +	 * aperture, and *must* have a fallback in place for
> > > >>>> +	 * situations where we cannot bind the object. We
> > > >>>> +	 * can be a little more lax here and use the fallback
> > > >>>> +	 * more often to avoid costly migrations of ourselves
> > > >>>> +	 * and other objects within the aperture.
> > > >>>> +	 */
> > > >>>> +	if (!(flags & PIN_NONBLOCK))
> > > >>>> +		return 0;
> > > >>>> +
> > > >>>> +	/*
> > > >>>> +	 * We only consider objects whose size is at-least a quarter o=
f
> > > >>>> +	 * the aperture to be too big and subject them to the new
> > > >>>> +	 * heuristic below.
> > > >>>> +	 */
> > > >>>> +	if (obj->base.size < ggtt->mappable_end / 4)
> > > >>>> +		return 0;
> > > >>>
> > > >>> That seems a fairly arbitrary thing to put here. Maybe something =
the
> > > >>> caller should check/specify?
> > > >>
> > > >> I have no strong opinion on this one. In my mind I categorised it
> > > >> under "is it a large framebuffer" heuristics. Previously it was le=
ss
> > > >> than one half of aperture always okay, now one quarter, plus 2x ho=
le
> > > >> check if larger. Both are heuristics. I even mentioned earlier if =
2x
> > > >> should be an input parameter as well, but again, given it's not an
> > > >> exported function couldn't really justify it.
> > > >
> > > > Is there any point in even having this extra check? If we don't thi=
nk
> > > > checking this is worth the hassle then why call the function at all=
?
> > >
> > > The "/4" one? It was my suggestion to avoid the hole search if we can=
 know based on
> size
> > > it cannot be a frame buffer that would be affected by the ping-ping p=
roblem. Granted
> that
> > > was before the rbtree hole search, when it was traversing the un-orde=
red linked list of
> > > holes. What is the correct size threshold I don't know.
> > >
> > > >>>> +
> > > >>>> +	if (HAS_GMCH(i915) || DISPLAY_VER(i915) < 11 ||
> > > >>>> +	    !i915_gem_object_is_framebuffer(obj))
> > > >>>> +		return 0;
> > > >>>
> > > >>> None of that seems appropriate for a generic gem function with th=
is
> > > >>> name.
> > > >>
> > > >> It's not exported though, maybe remove i915_gem prefix to avoid an=
y
> > > >> ideas of it being generic?
> > > >
> > > > These checks don't even seem to doing anything useful. HAS_GMCH sho=
uld
> > > > already be covered by always setting PIN_MAPPABLE and hence O_NONBL=
OCK
> > [Kasireddy, Vivek] I can drop the HAS_GMCH(i915) check given that it is=
 redundant.
> >
> > > > is never even tried, the pre-icl vs. icl+ check should not exist at
> > [Kasireddy, Vivek] My aim was to narrow down the list of situations in =
which the
> > ping-pong problem becomes more pronounced and may lead to performance
> > issues. Therefore, I added the DISPLAY_VER(i915) check since 8K/bigjoin=
er is
> > feasible only on those newer platforms.
>=20
> Like I said before bigjoiner is irrelevant. The only thing that
> matters is the size of the mapping vs. mappable aperture size.
[Kasireddy, Vivek] Ok, got it.

>=20
> >
> > > > all IMO, and if this is only called for framebuffers then why does =
the
> > > > code pretend that is not the case?
> > [Kasireddy, Vivek] Oh, I added the i915_gem_object_is_framebuffer() che=
ck after I
> > found that there are other callers (for example, reloc_iomap() in i915_=
gem_execbuffer.c)
> > of i915_gem_object_ggtt_pin_ww() that may not be working on an fb.
> >
> > Also, I figured size < ggtt->mappable_end / 4 or a similar check is nee=
ded as we do
> > not want to subject all FBs through this performance critical path.
>=20
> Why not?
[Kasireddy, Vivek] Oh, I just thought that it makes sense to avoid the expe=
nsive hole search
for smaller FBs that are unlikely to exhaust the mappable aperture space. A=
nd, I also wanted
to preserve the behavior prior to this patch. However, I guess I could drop=
 this check as well
given that the hole search via rbtree traversal may not be that bad in term=
s of time.

What about the i915_gem_object_is_framebuffer() check? Should I keep it giv=
en the smaller
size and transient nature of batchbuffers that go through this path?

Thanks,
Vivek

>=20
> --
> Ville Syrj=E4l=E4
> Intel
