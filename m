Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBC938B378
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 17:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF01B6E40A;
	Thu, 20 May 2021 15:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DABC6E40B;
 Thu, 20 May 2021 15:46:44 +0000 (UTC)
IronPort-SDR: RxQ7n5zrnAAPb6OpmNp7Sn8pizYw1QHryLnR5ti8L8hv6sonAfmLQSWuWbZOG9e8oHU/qR7cKI
 5ftqEXuYxDdQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="222349312"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="222349312"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:46:43 -0700
IronPort-SDR: XkeDosH7L2Q7O4+K5e1L6SIYESuRG9f87EF+TKzfe1nNod2COiuFm1yFvSkQMtNMfVCMPsrao0
 4sBSkFO2490g==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="440501562"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:46:43 -0700
Date: Thu, 20 May 2021 08:39:31 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20210520153931.GA7971@sdutt-i7>
References: <20210518235830.133834-1-matthew.brost@intel.com>
 <20210518235830.133834-3-matthew.brost@intel.com>
 <5b8ab744-4906-945d-cbca-1ce4c40f2fcb@gmail.com>
 <20210519165121.GA2585@sdutt-i7>
 <521a34ba-52d4-a9c2-97bb-48873174fc49@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <521a34ba-52d4-a9c2-97bb-48873174fc49@amd.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [Mesa-dev] [RFC 2/2] drm/doc/rfc: i915 new parallel
 submission uAPI plan
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
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jason.ekstrand@intel.com, daniel.vetter@intel.com,
 mesa-dev@lists.freedesktop.org, karl@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 20, 2021 at 01:11:59PM +0200, Christian K=F6nig wrote:
> Am 19.05.21 um 18:51 schrieb Matthew Brost:
> > On Wed, May 19, 2021 at 01:45:39PM +0200, Christian K=F6nig wrote:
> > > Oh, yeah we call that gang submit on the AMD side.
> > > =

> > > Had already some internal discussions how to implement this, but so f=
ar
> > > couldn't figure out how to cleanly introduce that into the DRM schedu=
ler.
> > > =

> > > Can you briefly describe in a few words how that is supposed to work =
on the
> > > Intel side?
> > > =

> > Sure, I've done a quick PoC internally and have been able to hook this
> > into the DRM scheduler.
> > =

> > Basically each BB still maps to a single job as each job is somewhat
> > unique (e.g. each job has its own ring, lrc, seqno, etc...). However all
> > the jobs configured to run in parallel map to a single sched_entity
> > which maintains the order each job was generated from the execbuf IOCTL
> > (1 - N). When the backend receives jobs 1 to N - 1 it basically just
> > updates some internal state. When the backend sees job N (last job) it
> > actually does the submit for jobs 1 - N which with GuC submission is a
> > simple command moving the LRC tail of the N jobs.
> > =

> > Daniel has suggested that we create a single job for the NN BBs but that
> > would be huge rework to the internals of the i915 and likely won't
> > happen by the time this code first lands.
> > =

> > Also worth noting one way a job isn't really a treated individually is
> > the excl slot with dma-resv. In that case we create a composite fence of
> > all jobs (dma_fence_array).
> =

> Yeah, that's something we have discussed as well.
> =

> How do you prevent the scheduler from over committing to a single ring
> buffer in this scenario?
> =


Each job has its own ring, the execbuf IOCTL throttles itself for each
job if there isn't space in the ring. This is exactly the same as
non-parallel submits.

I think this is what you were asking? If not, maybe try explaining the
question a bit more.

Matt

> Christian.
> =

> > =

> > Matt
> > =

> > > Thanks,
> > > Christian.
> > > =

> > > Am 19.05.21 um 01:58 schrieb Matthew Brost:
> > > > Add entry fpr i915 new parallel submission uAPI plan.
> > > > =

> > > > v2:
> > > >    (Daniel Vetter):
> > > >     - Expand logical order explaination
> > > >     - Add dummy header
> > > >     - Only allow N BBs in execbuf IOCTL
> > > >     - Configure parallel submission per slot not per gem context
> > > > =

> > > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > Cc: Tony Ye <tony.ye@intel.com>
> > > > CC: Carl Zhang <carl.zhang@intel.com>
> > > > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > > > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > > ---
> > > >    Documentation/gpu/rfc/i915_parallel_execbuf.h | 144 ++++++++++++=
++++++
> > > >    Documentation/gpu/rfc/i915_scheduler.rst      |  53 ++++++-
> > > >    2 files changed, 196 insertions(+), 1 deletion(-)
> > > >    create mode 100644 Documentation/gpu/rfc/i915_parallel_execbuf.h
> > > > =

> > > > diff --git a/Documentation/gpu/rfc/i915_parallel_execbuf.h b/Docume=
ntation/gpu/rfc/i915_parallel_execbuf.h
> > > > new file mode 100644
> > > > index 000000000000..8c64b983ccad
> > > > --- /dev/null
> > > > +++ b/Documentation/gpu/rfc/i915_parallel_execbuf.h
> > > > @@ -0,0 +1,144 @@
> > > > +#define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_con=
text_engines_parallel_submit */
> > > > +
> > > > +/*
> > > > + * i915_context_engines_parallel_submit:
> > > > + *
> > > > + * Setup a slot to allow multiple BBs to be submitted in a single =
execbuf IOCTL.
> > > > + * Those BBs will then be scheduled to run on the GPU in parallel.=
 Multiple
> > > > + * hardware contexts are created internally in the i915 run these =
BBs. Once a
> > > > + * slot is configured for N BBs only N BBs can be submitted in eac=
h execbuf
> > > > + * IOCTL and this is implict behavior (e.g. the user doesn't tell =
the execbuf
> > > > + * IOCTL there are N BBs, the execbuf IOCTL know how many BBs ther=
e are based on
> > > > + * the slots configuration).
> > > > + *
> > > > + * Their are two currently defined ways to control the placement o=
f the
> > > > + * hardware contexts on physical engines: default behavior (no fla=
gs) and
> > > > + * I915_PARALLEL_IMPLICT_BONDS (a flag). More flags may be added t=
he in the
> > > > + * future as new hardware / use cases arise. Details of how to use=
 this
> > > > + * interface below above the flags.
> > > > + *
> > > > + * Returns -EINVAL if hardware context placement configuration inv=
alid or if the
> > > > + * placement configuration isn't supported on the platform / submi=
ssion
> > > > + * interface.
> > > > + * Returns -ENODEV if extension isn't supported on the platform / =
submission
> > > > + * inteface.
> > > > + */
> > > > +struct i915_context_engines_parallel_submit {
> > > > +	struct i915_user_extension base;
> > > > +
> > > > +	__u16 engine_index;	/* slot for parallel engine */
> > > > +	__u16 width;		/* number of contexts per parallel engine */
> > > > +	__u16 num_siblings;	/* number of siblings per context */
> > > > +	__u16 mbz16;
> > > > +/*
> > > > + * Default placement behvavior (currently unsupported):
> > > > + *
> > > > + * Rather than restricting parallel submission to a single class w=
ith a
> > > > + * logically contiguous placement (I915_PARALLEL_IMPLICT_BONDS), a=
dd a mode that
> > > > + * enables parallel submission across multiple engine classes. In =
this case each
> > > > + * context's logical engine mask indicates where that context can =
placed. It is
> > > > + * implied in this mode that all contexts have mutual exclusive pl=
acement (e.g.
> > > > + * if one context is running CS0 no other contexts can run on CS0).
> > > > + *
> > > > + * Example 1 pseudo code:
> > > > + * CSX[Y] =3D engine class X, logical instance Y
> > > > + * INVALID =3D I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALI=
D_NONE
> > > > + * set_engines(INVALID)
> > > > + * set_parallel(engine_index=3D0, width=3D2, num_siblings=3D2,
> > > > + *		engines=3DCS0[0],CS0[1],CS1[0],CS1[1])
> > > > + *
> > > > + * Results in the following valid placements:
> > > > + * CS0[0], CS1[0]
> > > > + * CS0[0], CS1[1]
> > > > + * CS0[1], CS1[0]
> > > > + * CS0[1], CS1[1]
> > > > + *
> > > > + * This can also be though of as 2 virtual engines:
> > > > + * VE[0] =3D CS0[0], CS0[1]
> > > > + * VE[1] =3D CS1[0], CS1[1]
> > > > + *
> > > > + * Example 2 pseudo code:
> > > > + * CS[X] =3D generic engine of same class, logical instance X
> > > > + * INVALID =3D I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALI=
D_NONE
> > > > + * set_engines(INVALID)
> > > > + * set_parallel(engine_index=3D0, width=3D2, num_siblings=3D3,
> > > > + *		engines=3DCS[0],CS[1],CS[2],CS[0],CS[1],CS[2])
> > > > + *
> > > > + * Results in the following valid placements:
> > > > + * CS[0], CS[1]
> > > > + * CS[0], CS[2]
> > > > + * CS[1], CS[0]
> > > > + * CS[1], CS[2]
> > > > + * CS[2], CS[0]
> > > > + * CS[2], CS[1]
> > > > + *
> > > > + *
> > > > + * This can also be though of as 2 virtual engines:
> > > > + * VE[0] =3D CS[0], CS[1], CS[2]
> > > > + * VE[1] =3D CS[0], CS[1], CS[2]
> > > > +
> > > > + * This enables a use case where all engines are created equally, =
we don't care
> > > > + * where they are scheduled, we just want a certain number of reso=
urces, for
> > > > + * those resources to be scheduled in parallel, and possibly acros=
s multiple
> > > > + * engine classes.
> > > > + */
> > > > +
> > > > +/*
> > > > + * I915_PARALLEL_IMPLICT_BONDS - Create implict bonds between each=
 context.
> > > > + * Each context must have the same number sibling and bonds are im=
plictly create
> > > > + * of the siblings.
> > > > + *
> > > > + * All of the below examples are in logical space.
> > > > + *
> > > > + * Example 1 pseudo code:
> > > > + * CS[X] =3D generic engine of same class, logical instance X
> > > > + * INVALID =3D I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALI=
D_NONE
> > > > + * set_engines(INVALID)
> > > > + * set_parallel(engine_index=3D0, width=3D2, num_siblings=3D1,
> > > > + *		engines=3DCS[0],CS[1], flags=3DI915_PARALLEL_IMPLICT_BONDS)
> > > > + *
> > > > + * Results in the following valid placements:
> > > > + * CS[0], CS[1]
> > > > + *
> > > > + * Example 2 pseudo code:
> > > > + * CS[X] =3D generic engine of same class, logical instance X
> > > > + * INVALID =3D I915_ENGINE_CLASS_INVALID, I915_ENGINE_CLASS_INVALI=
D_NONE
> > > > + * set_engines(INVALID)
> > > > + * set_parallel(engine_index=3D0, width=3D2, num_siblings=3D2,
> > > > + *		engines=3DCS[0],CS[2],CS[1],CS[3], flags=3DI915_PARALLEL_IMPLI=
CT_BONDS)
> > > > + *
> > > > + * Results in the following valid placements:
> > > > + * CS[0], CS[1]
> > > > + * CS[2], CS[3]
> > > > + *
> > > > + * This can also be though of as 2 virtual engines:
> > > > + * VE[0] =3D CS[0], CS[2]
> > > > + * VE[1] =3D CS[1], CS[3]
> > > > + *
> > > > + * This enables a use case where all engines are not equal and cer=
tain placement
> > > > + * rules are required (i.e. split-frame requires all contexts to b=
e placed in a
> > > > + * logically contiguous order on the VCS engines on gen11+ platfor=
ms). This use
> > > > + * case (logically contiguous placement, within a single engine cl=
ass) is
> > > > + * supported when using GuC submission. Execlist mode could suppor=
t all possible
> > > > + * bonding configurations but currently doesn't support this exten=
sion.
> > > > + */
> > > > +#define I915_PARALLEL_IMPLICT_BONDS			(1<<0)
> > > > +/*
> > > > + * Do not allow BBs to be preempted mid BB rather insert coordinat=
ed preemption
> > > > + * points on all hardware contexts between each set of BBs. An exa=
mple use case
> > > > + * of this feature is split-frame on gen11+ hardware. When using t=
his feature a
> > > > + * BB must be submitted on each hardware context in the parallel g=
em context.
> > > > + * The execbuf2 IOCTL enforces the user adheres to policy.
> > > > + */
> > > > +#define I915_PARALLEL_NO_PREEMPT_MID_BATCH		(1<<1)
> > > > +#define __I915_PARALLEL_UNKNOWN_FLAGS	(-(I915_PARALLEL_NO_PREEMPT_=
MID_BATCH << 1))
> > > > +	__u64 flags;		/* all undefined flags must be zero */
> > > > +	__u64 mbz64[3];		/* reserved for future use; must be zero */
> > > > +
> > > > +	/*
> > > > +	 * width (i) * num_siblings (j) in length
> > > > +	 * index =3D j + i * num_siblings
> > > > +	 */
> > > > +	struct i915_engine_class_instance engines[0];
> > > > +} __attribute__ ((packed));
> > > > +
> > > > diff --git a/Documentation/gpu/rfc/i915_scheduler.rst b/Documentati=
on/gpu/rfc/i915_scheduler.rst
> > > > index 7faa46cde088..64c539486ee4 100644
> > > > --- a/Documentation/gpu/rfc/i915_scheduler.rst
> > > > +++ b/Documentation/gpu/rfc/i915_scheduler.rst
> > > > @@ -82,4 +82,55 @@ https://nam11.safelinks.protection.outlook.com/?=
url=3Dhttps%3A%2F%2Fspec.oneapi.com%2Flevel-zero%2Flatest%2Fcore%2Fapi.html=
%23ze-command-queue-priorit&amp;data=3D04%7C01%7Cchristian.koenig%40amd.com=
%7C49a7557f4e494090755608d91ae758a6%7C3dd8961fe4884e608e11a82d994e183d%7C0%=
7C0%7C637570403202969375%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj=
oiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3Ddn3PVdxYQpkpWIr=
u5eAXHgbfuLDkppAA5daV5sHQF7s%3D&amp;reserved=3D0
> > > >    New parallel submission uAPI
> > > >    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> > > > -Details to come in a following patch.
> > > > +The existing bonding uAPI is completely broken with GuC submission=
 because
> > > > +whether a submission is a single context submit or parallel submit=
 isn't known
> > > > +until execbuf time activated via the I915_SUBMIT_FENCE. To submit =
multiple
> > > > +contexts in parallel with the GuC the context must be explictly re=
gistered with
> > > > +N contexts and all N contexts must be submitted in a single comman=
d to the GuC.
> > > > +These interfaces doesn't support dynamically changing between N co=
ntexts as the
> > > > +bonding uAPI does. Hence the need for a new parallel submission in=
terface. Also
> > > > +the legacy bonding uAPI is quite confusing and not intuitive at al=
l.
> > > > +
> > > > +The new parallel submission uAPI consists of 3 parts:
> > > > +
> > > > +* Export engines logical mapping
> > > > +* A 'set_parallel' extension to configure contexts for parallel
> > > > +  submission
> > > > +* Extend execbuf2 IOCTL to support submitting N BBs in a single IO=
CTL
> > > > +
> > > > +Export engines logical mapping
> > > > +------------------------------
> > > > +Certain use cases require BBs to be placed on engine instances in =
logical order
> > > > +(e.g. split-frame on gen11+). The logical mapping of engine instan=
ces can change
> > > > +based on fusing. Rather than making UMDs be aware of fusing, simpl=
y expose the
> > > > +logical mapping with the existing query engine info IOCTL. Also th=
e GuC
> > > > +submission interface currently only supports submitting multiple c=
ontexts to
> > > > +engines in logical order which is a new requirement compared to ex=
eclists.
> > > > +Lastly, all current platforms have at most 2 instances and the log=
ical order is
> > > > +the same a uABI order. This will change on platforms with more tha=
n 2 instances.
> > > > +
> > > > +A single bit will be added to drm_i915_engine_info.flags indicatin=
g that the
> > > > +logical instance has been returned and a new field,
> > > > +drm_i915_engine_info.logical_instance, returns the logical instanc=
e.
> > > > +
> > > > +A 'set_parallel' extension to configure contexts for parallel subm=
ission
> > > > +------------------------------------------------------------------=
------
> > > > +The 'set_parallel' extension configures a slot for parallel submis=
sion of N BBs.
> > > > +It is setup step that should be called before using any of the con=
texts. See
> > > > +I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE or I915_CONTEXT_ENGINES_EXT_=
BOND for
> > > > +similar existing examples. Once a slot is configured for parallel =
submission the
> > > > +execbuf2 IOCTL can be called submiting N BBs in a single IOCTL. In=
itially only
> > > > +support GuC submission. Execlist support can be added later if nee=
ded.
> > > > +
> > > > +Add I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT and
> > > > +i915_context_engines_parallel_submit to the uAPI to implement this=
 extension.
> > > > +
> > > > +Extend execbuf2 IOCTL to support submitting N BBs in a single IOCTL
> > > > +-------------------------------------------------------------------
> > > > +Contexts that have been configured with the 'set_parallel' extensi=
on are allowed
> > > > +to submit N BBs in a single execbuf2 IOCTL. The BBs are either the=
 last N
> > > > +objects in the drm_i915_gem_exec_object2 list or the first N if
> > > > +I915_EXEC_BATCH_FIRST is set. The number of BBs is implict based o=
n the slot
> > > > +submitted and how it has been configured by 'set_parallel' or othe=
r extensions.
> > > > +No uAPI changes in the execbuf IOCTL but worth mentioning the new =
behavior of
> > > > +the IOCTL.
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
