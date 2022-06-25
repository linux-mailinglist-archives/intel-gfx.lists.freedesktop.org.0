Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 131CD55ABEC
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jun 2022 21:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764B210EA6C;
	Sat, 25 Jun 2022 19:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A9B10EA24;
 Sat, 25 Jun 2022 19:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656183758; x=1687719758;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qpkbmOgTjcjtuw9SH3qNd7Y336mEh59W/RN5oB11Wtk=;
 b=TUTzPN/S8fd32Oj0/9gwbimrH96c1rDmvxhSeJ6gJVyN+DPliDE5F92t
 eJN288ZA7u8LiKn4ZUPpVDUMFlldaFwfLg05QVKMnO5Jiu08vY2zBncQC
 wDMz9IzO0zgEcgBibHn5TsGB0QY7/0Bagq4cnfn0cUya9MKPYKlTkVjm4
 fNpMNKT7JlNN03HZrZUwbnlJC5xB3I+fGn1YwZmVmxutDCLcGv5SV6Qb1
 pTVPEAY1zRKd1ZbsZRxhX/JtMT6I60z+O6XZaWmBir35zAH9bWy4hRi76
 gr4krb8iSxc3d7Q6P6/Y66gpRY5xZ9qqGIYiaJyhgQ7j/jzF6g6bgCpxs A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10389"; a="367527939"
X-IronPort-AV: E=Sophos;i="5.92,222,1650956400"; d="scan'208";a="367527939"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2022 12:02:37 -0700
X-IronPort-AV: E=Sophos;i="5.92,222,1650956400"; d="scan'208";a="593692079"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2022 12:02:37 -0700
Date: Sat, 25 Jun 2022 12:02:19 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20220625190217.GF376@nvishwa1-DESK>
References: <20220624174936.1065-1-niranjana.vishwanathapura@intel.com>
 <20220624174936.1065-4-niranjana.vishwanathapura@intel.com>
 <YrYZfnN2HVF4a3+f@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YrYZfnN2HVF4a3+f@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/doc/rfc: VM_BIND uapi definition
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
Cc: paulo.r.zanoni@intel.com, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, thomas.hellstrom@intel.com,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 24, 2022 at 10:07:26PM +0200, Daniel Vetter wrote:
>On Fri, Jun 24, 2022 at 10:49:36AM -0700, Niranjana Vishwanathapura wrote:
>> VM_BIND and related uapi definitions
>>
>> v2: Reduce the scope to simple Mesa use case.
>> v3: Expand VM_UNBIND documentation and add
>>     I915_GEM_VM_BIND/UNBIND_FENCE_VALID
>>     and I915_GEM_VM_BIND_TLB_FLUSH flags.
>> v4: Remove I915_GEM_VM_BIND_TLB_FLUSH flag and add additional
>>     documentation for vm_bind/unbind.
>> v5: Remove TLB flush requirement on VM_UNBIND.
>>     Add version support to stage implementation.
>> v6: Define and use drm_i915_gem_timeline_fence structure for
>>     all timeline fences.
>>
>> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
>> ---
>>  Documentation/gpu/rfc/i915_vm_bind.h | 286 +++++++++++++++++++++++++++
>>  1 file changed, 286 insertions(+)
>>  create mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
>>
>> diff --git a/Documentation/gpu/rfc/i915_vm_bind.h b/Documentation/gpu/rfc/i915_vm_bind.h
>> new file mode 100644
>> index 000000000000..c784dc0c48b3
>> --- /dev/null
>> +++ b/Documentation/gpu/rfc/i915_vm_bind.h
>> @@ -0,0 +1,286 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright � 2022 Intel Corporation
>> + */
>> +
>> +/**
>> + * DOC: I915_PARAM_HAS_VM_BIND
>> + *
>> + * VM_BIND feature availability.
>> + * See typedef drm_i915_getparam_t param.
>> + * bit[0]: If set, VM_BIND is supported, otherwise not.
>> + * bits[8-15]: VM_BIND implementation version.
>> + * Version 0 requires in VM_UNBIND call, UMDs to specify the exact mapping
>> + * created previously with the VM_BIND call. i.e., i915 will not support
>> + * splitting/merging of the mappings created with VM_BIND call (See
>> + * struct drm_i915_gem_vm_bind and struct drm_i915_gem_vm_unbind).
>
>I think this would read a lot clearer when you make it an itemized list
>(or whatever it's called) like we do for atomic properties. Also it reads
>a bit strange, so
>
> * The following versions of VM_BIND have been defined already:
> *
> * 0: In VM_UNBIND calls the UMD must specify the exact mappings created
> *    previously with VM_BIND, the ioctl will not support unbinding
> *    multiple mappings or splitting them. Similar restriction applies to
> *    VM_BIND.
> *
> * 1: The restrictions on unbinding partial or multiple mappings is
> *    lifted, similarly binding will replace any mappings in the given range.
>
>Pls check I got the formatting right, I didn't check with sphinx :-)
>
>Bikeshed aside: This is a bit a strange encoding, usually we just use a
>simple number and start with 1 (so that 0 is reserved for "doesn't exist")
>and then have a #define for each version.
>

Thanks Daniel,

Ok, will eloborate and define the versions.

>> + */
>> +#define I915_PARAM_HAS_VM_BIND		57
>> +
>> +/**
>> + * DOC: I915_VM_CREATE_FLAGS_USE_VM_BIND
>> + *
>> + * Flag to opt-in for VM_BIND mode of binding during VM creation.
>> + * See struct drm_i915_gem_vm_control flags.
>> + *
>> + * The older execbuf2 ioctl will not support VM_BIND mode of operation.
>> + * For VM_BIND mode, we have new execbuf3 ioctl which will not accept any
>> + * execlist (See struct drm_i915_gem_execbuffer3 for more details).
>> + *
>
>Empty line here.

Ok, will fix.

>
>> + */
>> +#define I915_VM_CREATE_FLAGS_USE_VM_BIND	(1 << 0)
>> +
>> +/* VM_BIND related ioctls */
>> +#define DRM_I915_GEM_VM_BIND		0x3d
>> +#define DRM_I915_GEM_VM_UNBIND		0x3e
>> +#define DRM_I915_GEM_EXECBUFFER3	0x3f
>> +
>> +#define DRM_IOCTL_I915_GEM_VM_BIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct drm_i915_gem_vm_bind)
>> +#define DRM_IOCTL_I915_GEM_VM_UNBIND		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct drm_i915_gem_vm_bind)
>> +#define DRM_IOCTL_I915_GEM_EXECBUFFER3		DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct drm_i915_gem_execbuffer3)
>> +
>> +/**
>> + * struct drm_i915_gem_timeline_fence - An input or output timeline fence.
>> + *
>> + * The operation will wait for input fence to signal.
>> + *
>> + * The returned output fence will be signaled after the completion of the
>> + * operation.
>> + */
>> +struct drm_i915_gem_timeline_fence {
>> +	/** @handle: User's handle for a drm_syncobj to wait on or signal. */
>> +	__u32 handle;
>> +
>> +	/**
>> +	 * @flags: Supported flags are:
>> +	 *
>> +	 * I915_TIMELINE_FENCE_WAIT:
>> +	 * Wait for the input fence before the operation.
>> +	 *
>> +	 * I915_TIMELINE_FENCE_SIGNAL:
>> +	 * Return operation completion fence as output.
>> +	 */
>> +	__u32 flags;
>> +#define I915_TIMELINE_FENCE_WAIT            (1<<0)
>> +#define I915_TIMELINE_FENCE_SIGNAL          (1<<1)
>> +#define __I915_TIMELINE_FENCE_UNKNOWN_FLAGS (-(I915_TIMELINE_FENCE_SIGNAL << 1))
>> +
>> +	/**
>> +	 * @value: A point in the timeline.
>> +	 * Value must be 0 for a binary drm_syncobj. A Value of 0 for a
>> +	 * timeline drm_syncobj is invalid as it turns a drm_syncobj into a
>> +	 * binary one.
>> +	 */
>> +	__u64 value;
>> +};
>> +
>> +/**
>> + * struct drm_i915_gem_vm_bind - VA to object mapping to bind.
>> + *
>> + * This structure is passed to VM_BIND ioctl and specifies the mapping of GPU
>> + * virtual address (VA) range to the section of an object that should be bound
>> + * in the device page table of the specified address space (VM).
>> + * The VA range specified must be unique (ie., not currently bound) and can
>> + * be mapped to whole object or a section of the object (partial binding).
>> + * Multiple VA mappings can be created to the same section of the object
>> + * (aliasing).
>> + *
>> + * The @start, @offset and @length should be 4K page aligned. However the DG2
>					s/should/must/ here
>

ok

>> + * and XEHPSDV has 64K page size for device local-memory and has compact page
>> + * table. On those platforms, for binding device local-memory objects, the
>> + * @start should be 2M aligned, @offset and @length should be 64K aligned.
>	     ^^ this should is really a recommendation, right?
>						       ^^s/should/must on
>						       the 2nd one here,
>						       it's mandatory
>

No, it is not a recommendation, will change it to 'must'.
This was discussed in an earlier thread with Matt Auld. On 64K lmem platforms,
vm_bind will impose same restrictions as current i915 driver does for soft
pinning (ie., require 2M alignment for @start and reserve the whole 2M block).

>> + * Also, on those platforms, error -ENOSPC will be returned if user tries to
>> + * bind a device local-memory object and a system memory object in a single 2M
>> + * section of VA range.
>> + *
>> + * Error code -EINVAL will be returned if @start, @offset and @length are not
>> + * properly aligned. Error code of -ENOSPC will be returned if the VA range
>> + * specified can't be reserved.
>
>To check my understanding: ENOSPC can only happen on vm_bind ver 0, not on
>vm_bind ver 1 right? We should make sure userspace doesn't rely on this in
>some way.
>

Yah, will update.

>> + *
>> + * The bind operation can get completed asynchronously and out of submission
>> + * order. When I915_GEM_VM_BIND_FENCE_VALID flag is set, the @fence will be
>
>"submission order" reads strange for something which is not an engine
>(well was in the past). I think you wan here something like
>
>VM_BIND IOCLT calls executed on different cpu threads concurrently are not
>ordered.  Furthermore parts of the VM_BIND operation can be done
>asynchronously, if I915_GEM_VM_BIND_FENCE_VALID is set.
>

Hmm...current plan was to do vm_bind asynchronously when an object move is
underway, without regard to whether user has specified out fence or not.
I think this is not correct as there always should be an out fence if binding
is done asynchronously.

So, I will change the design as below.
1. When an out fence is specified by UMD,
        1a. i915 will bind asynchronously if the object move is underway.
        1b. i915 will bind synchronously otherwise.
   Out fence is signaled after the binding is complete.
2. When out fence is not specified by UMD,
        2a. i915 will bind synchronously if object is not being moved.
        2b. i915 will return -EAGAIN if object is being moved.

Does that look good?

>> + * signaled upon completion of bind operation.
>> + */
>> +struct drm_i915_gem_vm_bind {
>> +	/** @vm_id: VM (address space) id to bind */
>> +	__u32 vm_id;
>> +
>> +	/** @handle: Object handle */
>> +	__u32 handle;
>> +
>> +	/** @start: Virtual Address start to bind */
>> +	__u64 start;
>> +
>> +	/** @offset: Offset in object to bind */
>> +	__u64 offset;
>> +
>> +	/** @length: Length of mapping to bind */
>> +	__u64 length;
>> +
>> +	/**
>> +	 * @flags: Supported flags are:
>> +	 *
>> +	 * I915_GEM_VM_BIND_FENCE_VALID:
>> +	 * @fence is valid, needs bind completion notification.
>
>I guess we have a rule that FENCE_VALID can be set if and only if
>FENCE_WAIT flag in the embedded fence structure is also set? Since we do
>not put this into the extension chain like with execbuf it's always there,
>but could be empty. ioctl input validation needs to be really careful here
>and make sure these fields are all cleared if we don't have a fence.
>

Yah, given that now we have a generic timeline fence, we can check the
drm_i915_gem_timeline_fence.flags to see if valid fence is specified or
not. I will remove this FENCE_VALID flag here and in vm_unbind struct.

>> +	 *
>> +	 * I915_GEM_VM_BIND_READONLY:
>> +	 * Mapping is read-only.
>> +	 *
>> +	 * I915_GEM_VM_BIND_CAPTURE:
>> +	 * Capture this mapping in the dump upon GPU error.
>> +	 */
>> +	__u64 flags;
>> +#define I915_GEM_VM_BIND_FENCE_VALID	(1 << 0)
>> +#define I915_GEM_VM_BIND_READONLY	(1 << 1)
>> +#define I915_GEM_VM_BIND_CAPTURE	(1 << 2)
>> +
>> +	/**
>> +	 * @fence: Timeline fence for bind completion signaling.
>> +	 *
>> +	 * It is an out fence, hence using I915_TIMELINE_FENCE_WAIT flag
>> +	 * is invalid, and an error will be returned.
>> +	 */
>> +	struct drm_i915_gem_timeline_fence fence;
>> +
>> +	/** @extensions: 0-terminated chain of extensions */
>> +	__u64 extensions;
>> +};
>> +
>> +/**
>> + * struct drm_i915_gem_vm_unbind - VA to object mapping to unbind.
>> + *
>> + * This structure is passed to VM_UNBIND ioctl and specifies the GPU virtual
>> + * address (VA) range that should be unbound from the device page table of the
>> + * specified address space (VM). VM_UNBIND will force unbind the specified
>> + * range from device page table without waiting for any GPU job to complete.
>> + * It is UMDs responsibility to ensure the mapping is no longer in use before
>> + * calling VM_UNBIND.
>> + *
>> + * If the specified mapping is not found, the ioctl will simply return without
>> + * any error.
>> + *
>> + * The unbind operation can get completed asynchronously and out of submission
>> + * order. When I915_GEM_VM_UNBIND_FENCE_VALID flag is set, the @fence will be
>> + * signaled upon completion of unbind operation.
>
>Same here as above.
>
>> + */
>> +struct drm_i915_gem_vm_unbind {
>> +	/** @vm_id: VM (address space) id to bind */
>> +	__u32 vm_id;
>> +
>> +	/** @rsvd: Reserved, MBZ */
>> +	__u32 rsvd;
>> +
>> +	/** @start: Virtual Address start to unbind */
>> +	__u64 start;
>> +
>> +	/** @length: Length of mapping to unbind */
>> +	__u64 length;
>> +
>> +	/**
>> +	 * @flags: Supported flags are:
>> +	 *
>> +	 * I915_GEM_VM_UNBIND_FENCE_VALID:
>> +	 * @fence is valid, needs unbind completion notification.
>> +	 */
>> +	__u64 flags;
>> +#define I915_GEM_VM_UNBIND_FENCE_VALID	(1 << 0)
>> +
>> +	/**
>> +	 * @fence: Timeline fence for unbind completion signaling.
>> +	 *
>> +	 * It is an out fence, hence using I915_TIMELINE_FENCE_WAIT flag
>> +	 * is invalid, and an error will be returned.
>> +	 */
>> +	struct drm_i915_gem_timeline_fence fence;
>> +
>> +	/** @extensions: 0-terminated chain of extensions */
>> +	__u64 extensions;
>> +};
>> +
>> +/**
>> + * struct drm_i915_gem_execbuffer3 - Structure for DRM_I915_GEM_EXECBUFFER3
>> + * ioctl.
>> + *
>> + * DRM_I915_GEM_EXECBUFFER3 ioctl only works in VM_BIND mode and VM_BIND mode
>> + * only works with this ioctl for submission.
>> + * See I915_VM_CREATE_FLAGS_USE_VM_BIND.
>> + */
>> +struct drm_i915_gem_execbuffer3 {
>> +	/**
>> +	 * @ctx_id: Context id
>> +	 *
>> +	 * Only contexts with user engine map are allowed.
>> +	 */
>> +	__u32 ctx_id;
>> +
>> +	/**
>> +	 * @engine_idx: Engine index
>> +	 *
>> +	 * An index in the user engine map of the context specified by @ctx_id.
>> +	 */
>> +	__u32 engine_idx;
>> +
>> +	/** @rsvd1: Reserved, MBZ */
>> +	__u32 rsvd1;
>> +
>> +	/**
>> +	 * @batch_count: Number of batches in @batch_address array.
>> +	 *
>> +	 * 0 is invalid. For parallel submission, it should be equal to the
>> +	 * number of (parallel) engines involved in that submission.
>> +	 */
>> +	__u32 batch_count;
>
>I think this is a leftover from the old parallel engine design, where
>userspace stitched together the parallel batches? With the new design we
>have in execbuf2 the batch_count is fixed at context creation time (that's
>why document how that works is important), and so specifying this again in
>execbuf3 could only lead to bugs and hence the field here should be
>dropped.

Ok, will remove.

>
>> +
>> +	/**
>> +	 * @batch_address: Array of batch gpu virtual addresses.
>> +	 *
>> +	 * If @batch_count is 1, then it is the gpu virtual address of the
>> +	 * batch buffer. If @batch_count > 1, then it is a pointer to an array
>> +	 * of batch buffer gpu virtual addresses.
>
>We derive the number of batchbuffers a context needs from
>ctx->parallel.num_children + 1. No need for userspace to supply this on
>every execbuf, but the rules about the address still are the same.
>

My only worry is if the number of batch addresses provided is not equal
to 'ctx->parallel.num_children + 1', then we can get into harder to debug
GPU hangs (where as with batch_count, we can return an error). Besides,
without explicit batch_count here, treating this field differently when
one batch case vs multiple batch case makes the uapi look bit complicated.

But, I guess, user can error up and get into harder to debug GPU hangs
even with batch_count. I think removing the batch_count and properly
documenting this batch_address field here should be good. Will update.

>> +	 */
>> +	__u64 batch_address;
>> +
>> +	/**
>> +	 * @flags: Supported flags are:
>> +	 *
>> +	 * I915_EXEC3_SECURE:
>> +	 * Request a privileged ("secure") batch buffer/s.
>> +	 * It is only available for DRM_ROOT_ONLY | DRM_MASTER processes.
>
>Do we actually still need this for any userspace? Iirc the only user was
>SNA, which isn't a thing anymore since about gen9 or so. Or am I mistaken?
>A quick git grep doesn't show up anything.
>
>igt probably uses it for lots of fun stuff, might be time to remove it on
>the execbuf2 side too on modern platforms since it's kinda a risky thing
>to do (and flat out not a good idea on secure boot platforms even when
>you're root).
>

Yah, looks like it is only used on very old platforms, will remove this
flag.

>> +	 */
>> +	__u64 flags;
>> +#define I915_EXEC3_SECURE	(1 << 0)
>> +
>> +	/** @rsvd2: Reserved, MBZ */
>> +	__u32 rsvd2;
>> +
>> +	/** @fence_count: Number of fences in @timeline_fences array. */
>> +	__u32 fence_count;
>> +
>> +	/**
>> +	 * @timeline_fences: Pointer to an array of timeline fences.
>> +	 *
>> +	 * Timeline fences are of format struct drm_i915_gem_timeline_fence.
>> +	 */
>> +	__u64 timeline_fences;
>> +
>> +	/** @rsvd3: Reserved, MBZ */
>> +	__u64 rsvd3;
>> +
>> +	/** @extensions: Zero-terminated chain of extensions. */
>
>Maybe add "See struct i915_users_extension" here and make it clear that
>this is what this points to.
>

Ok.

>> +	__u64 extensions;
>> +};
>> +
>> +/**
>> + * struct drm_i915_gem_create_ext_vm_private - Extension to make the object
>> + * private to the specified VM.
>> + *
>> + * See struct drm_i915_gem_create_ext.
>> + */
>> +struct drm_i915_gem_create_ext_vm_private {
>> +#define I915_GEM_CREATE_EXT_VM_PRIVATE		2
>> +	/** @base: Extension link. See struct i915_user_extension. */
>> +	struct i915_user_extension base;
>> +
>> +	/** @vm_id: Id of the VM to which the object is private */
>> +	__u32 vm_id;
>> +};
>
>With the nits addressed:
>
>Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thanks,
Niranjana

>
>> --
>> 2.21.0.rc0.32.g243a4c7e27
>>
>
>-- 
>Daniel Vetter
>Software Engineer, Intel Corporation
>http://blog.ffwll.ch
