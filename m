Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F5E54CC94
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 17:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E5310FF46;
	Wed, 15 Jun 2022 15:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E12910FF46;
 Wed, 15 Jun 2022 15:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655306449; x=1686842449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0wdUKGYTkFfUkB0EFW209PIeEdGrS2xK1mfkRFnQ4hw=;
 b=jAyMqPoRpJrmnXfHem+mGvYf2H73WNlZC1Ny/o/99IQYFxCW2+xNTzQh
 Fx8+H+bCrTcLmw88xZifdObGS3tKjzNlF1pjA+AZEKdqd2YLtfDZCA2KO
 ZA9sfLlM4nPph/N1ngP9PphxLtKjHCxSSpA/QhLjD5KBi87tFMc4llJ66
 Dx/sDHuJPK8JA3ts7R7Y0Pk10D9MerlFyLRCsdox2IZ19mQ3sdNlsI07Z
 mG082KfzjFn48HJlxW0JsGNFB2Nw6bYcqmGiCWTn+znnE5VEgr1iH8XXy
 O3g/zU+KvWt+3G526dYbVTgjDBX8vTgWsFZcYCedkh+x7JsI5dPmbsEFp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="262018737"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="262018737"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:20:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="911717183"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:20:48 -0700
Date: Wed, 15 Jun 2022 08:20:29 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220615152028.GO376@nvishwa1-DESK>
References: <459c327d-5796-f9e4-4442-a51714525c73@linux.intel.com>
 <20220613174956.GH376@nvishwa1-DESK>
 <5ebcd237-a6df-add2-070a-056ccb83427a@linux.intel.com>
 <20220613233947.GA15145@jons-linux-dev-box>
 <652e76fa-d647-6267-dc6e-ba0be914415d@linux.intel.com>
 <20220614154341.GK376@nvishwa1-DESK>
 <ca635918-018e-db86-8ece-23f4fc4e2032@linux.intel.com>
 <61ca0001-cf34-670e-3f06-f45a330c609a@linux.intel.com>
 <20220614164209.GM376@nvishwa1-DESK>
 <79a7b37c-2403-4915-f5f5-bc2cfd3a3d49@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <79a7b37c-2403-4915-f5f5-bc2cfd3a3d49@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/doc/rfc: VM_BIND uapi definition
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

On Wed, Jun 15, 2022 at 08:22:23AM +0100, Tvrtko Ursulin wrote:
>
>On 14/06/2022 17:42, Niranjana Vishwanathapura wrote:
>>On Tue, Jun 14, 2022 at 05:07:37PM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 14/06/2022 17:02, Tvrtko Ursulin wrote:
>>>>
>>>>On 14/06/2022 16:43, Niranjana Vishwanathapura wrote:
>>>>>On Tue, Jun 14, 2022 at 08:16:41AM +0100, Tvrtko Ursulin wrote:
>>>>>>
>>>>>>On 14/06/2022 00:39, Matthew Brost wrote:
>>>>>>>On Mon, Jun 13, 2022 at 07:09:06PM +0100, Tvrtko Ursulin wrote:
>>>>>>>>
>>>>>>>>On 13/06/2022 18:49, Niranjana Vishwanathapura wrote:
>>>>>>>>>On Mon, Jun 13, 2022 at 05:22:02PM +0100, Tvrtko Ursulin wrote:
>>>>>>>>>>
>>>>>>>>>>On 13/06/2022 16:05, Niranjana Vishwanathapura wrote:
>>>>>>>>>>>On Mon, Jun 13, 2022 at 09:24:18AM +0100, Tvrtko Ursulin wrote:
>>>>>>>>>>>>
>>>>>>>>>>>>On 10/06/2022 17:14, Niranjana Vishwanathapura wrote:
>>>>>>>>>>>>>On Fri, Jun 10, 2022 at 05:48:39PM +0300, 
>>>>>>>>>>>>>Lionel Landwerlin wrote:
>>>>>>>>>>>>>>On 10/06/2022 13:37, Tvrtko Ursulin wrote:
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>On 10/06/2022 08:07, Niranjana Vishwanathapura wrote:
>>>>>>>>>>>>>>>>VM_BIND and related uapi definitions
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>Signed-off-by: Niranjana Vishwanathapura
>>>>>>>>>>>>>>>><niranjana.vishwanathapura@intel.com>
>>>>>>>>>>>>>>>>---
>>>>>>>>>>>>>>>>� Documentation/gpu/rfc/i915_vm_bind.h | 490
>>>>>>>>>>>>>>>>+++++++++++++++++++++++++++
>>>>>>>>>>>>>>>>� 1 file changed, 490 insertions(+)
>>>>>>>>>>>>>>>>� create mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>>diff --git
>>>>>>>>>>>>>>>>a/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>>>>>>>>>>>b/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>>>>>>>>>>>new file mode 100644
>>>>>>>>>>>>>>>>index 000000000000..9fc854969cfb
>>>>>>>>>>>>>>>>--- /dev/null
>>>>>>>>>>>>>>>>+++ b/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>>>>>>>>>>>@@ -0,0 +1,490 @@
>>>>>>>>>>>>>>>>+/* SPDX-License-Identifier: MIT */
>>>>>>>>>>>>>>>>+/*
>>>>>>>>>>>>>>>>+ * Copyright � 2022 Intel Corporation
>>>>>>>>>>>>>>>>+ */
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+/**
>>>>>>>>>>>>>>>>+ * DOC: I915_PARAM_HAS_VM_BIND
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * VM_BIND feature availability.
>>>>>>>>>>>>>>>>+ * See typedef drm_i915_getparam_t param.
>>>>>>>>>>>>>>>>+ * bit[0]: If set, VM_BIND is supported, otherwise not.
>>>>>>>>>>>>>>>>+ * bits[8-15]: VM_BIND implementation version.
>>>>>>>>>>>>>>>>+ * version 0 will not have VM_BIND/UNBIND
>>>>>>>>>>>>>>>>timeline fence array support.
>>>>>>>>>>>>>>>>+ */
>>>>>>>>>>>>>>>>+#define I915_PARAM_HAS_VM_BIND������� 57
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+/**
>>>>>>>>>>>>>>>>+ * DOC: I915_VM_CREATE_FLAGS_USE_VM_BIND
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * Flag to opt-in for VM_BIND mode of 
>>>>>>>>>>>>>>>>binding during VM creation.
>>>>>>>>>>>>>>>>+ * See struct drm_i915_gem_vm_control flags.
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * The older execbuf2 ioctl will not
>>>>>>>>>>>>>>>>support VM_BIND mode of operation.
>>>>>>>>>>>>>>>>+ * For VM_BIND mode, we have new execbuf3
>>>>>>>>>>>>>>>>ioctl which will not accept any
>>>>>>>>>>>>>>>>+ * execlist (See struct
>>>>>>>>>>>>>>>>drm_i915_gem_execbuffer3 for more details).
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ */
>>>>>>>>>>>>>>>>+#define I915_VM_CREATE_FLAGS_USE_VM_BIND��� (1 << 0)
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+/**
>>>>>>>>>>>>>>>>+ * DOC: I915_CONTEXT_CREATE_FLAGS_LONG_RUNNING
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * Flag to declare context as long running.
>>>>>>>>>>>>>>>>+ * See struct drm_i915_gem_context_create_ext flags.
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * Usage of dma-fence expects that they
>>>>>>>>>>>>>>>>complete in reasonable amount of time.
>>>>>>>>>>>>>>>>+ * Compute on the other hand can be long
>>>>>>>>>>>>>>>>running. Hence it is not appropriate
>>>>>>>>>>>>>>>>+ * for compute contexts to export request
>>>>>>>>>>>>>>>>completion dma-fence to user.
>>>>>>>>>>>>>>>>+ * The dma-fence usage will be limited to
>>>>>>>>>>>>>>>>in-kernel consumption only.
>>>>>>>>>>>>>>>>+ * Compute contexts need to use user/memory fence.
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * So, long running contexts do not 
>>>>>>>>>>>>>>>>support output fences. Hence,
>>>>>>>>>>>>>>>>+ * I915_EXEC_FENCE_SIGNAL (See
>>>>>>>>>>>>>>>>&drm_i915_gem_exec_fence.flags) is expected
>>>>>>>>>>>>>>>>+ * to be not used. DRM_I915_GEM_WAIT ioctl
>>>>>>>>>>>>>>>>call is also not supported for
>>>>>>>>>>>>>>>>+ * objects mapped to long running contexts.
>>>>>>>>>>>>>>>>+ */
>>>>>>>>>>>>>>>>+#define I915_CONTEXT_CREATE_FLAGS_LONG_RUNNING�� (1u << 2)
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+/* VM_BIND related ioctls */
>>>>>>>>>>>>>>>>+#define DRM_I915_GEM_VM_BIND������� 0x3d
>>>>>>>>>>>>>>>>+#define DRM_I915_GEM_VM_UNBIND������� 0x3e
>>>>>>>>>>>>>>>>+#define DRM_I915_GEM_EXECBUFFER3��� 0x3f
>>>>>>>>>>>>>>>>+#define DRM_I915_GEM_WAIT_USER_FENCE��� 0x40
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+#define DRM_IOCTL_I915_GEM_VM_BIND
>>>>>>>>>>>>>>>>DRM_IOWR(DRM_COMMAND_BASE +
>>>>>>>>>>>>>>>>DRM_I915_GEM_VM_BIND, struct
>>>>>>>>>>>>>>>>drm_i915_gem_vm_bind)
>>>>>>>>>>>>>>>>+#define DRM_IOCTL_I915_GEM_VM_UNBIND
>>>>>>>>>>>>>>>>DRM_IOWR(DRM_COMMAND_BASE +
>>>>>>>>>>>>>>>>DRM_I915_GEM_VM_UNBIND, struct
>>>>>>>>>>>>>>>>drm_i915_gem_vm_bind)
>>>>>>>>>>>>>>>>+#define DRM_IOCTL_I915_GEM_EXECBUFFER3
>>>>>>>>>>>>>>>>DRM_IOWR(DRM_COMMAND_BASE +
>>>>>>>>>>>>>>>>DRM_I915_GEM_EXECBUFFER3, struct
>>>>>>>>>>>>>>>>drm_i915_gem_execbuffer3)
>>>>>>>>>>>>>>>>+#define DRM_IOCTL_I915_GEM_WAIT_USER_FENCE
>>>>>>>>>>>>>>>>DRM_IOWR(DRM_COMMAND_BASE +
>>>>>>>>>>>>>>>>DRM_I915_GEM_WAIT_USER_FENCE, struct
>>>>>>>>>>>>>>>>drm_i915_gem_wait_user_fence)
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+/**
>>>>>>>>>>>>>>>>+ * struct drm_i915_gem_vm_bind - VA to 
>>>>>>>>>>>>>>>>object mapping to bind.
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * This structure is passed to VM_BIND
>>>>>>>>>>>>>>>>ioctl and specifies the mapping of GPU
>>>>>>>>>>>>>>>>+ * virtual address (VA) range to the
>>>>>>>>>>>>>>>>section of an object that should be bound
>>>>>>>>>>>>>>>>+ * in the device page table of the 
>>>>>>>>>>>>>>>>specified address space (VM).
>>>>>>>>>>>>>>>>+ * The VA range specified must be unique
>>>>>>>>>>>>>>>>(ie., not currently bound) and can
>>>>>>>>>>>>>>>>+ * be mapped to whole object or a section
>>>>>>>>>>>>>>>>of the object (partial binding).
>>>>>>>>>>>>>>>>+ * Multiple VA mappings can be created to
>>>>>>>>>>>>>>>>the same section of the object
>>>>>>>>>>>>>>>>+ * (aliasing).
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * The @queue_idx specifies the queue to
>>>>>>>>>>>>>>>>use for binding. Same queue can be
>>>>>>>>>>>>>>>>+ * used for both VM_BIND and VM_UNBIND
>>>>>>>>>>>>>>>>calls. All submitted bind and unbind
>>>>>>>>>>>>>>>>+ * operations in a queue are performed 
>>>>>>>>>>>>>>>>in the order of submission.
>>>>>>>>>>>>>>>>+ *
>>>>>>>>>>>>>>>>+ * The @start, @offset and @length should
>>>>>>>>>>>>>>>>be 4K page aligned. However the DG2
>>>>>>>>>>>>>>>>+ * and XEHPSDV has 64K page size for device
>>>>>>>>>>>>>>>>local-memory and has compact page
>>>>>>>>>>>>>>>>+ * table. On those platforms, for binding
>>>>>>>>>>>>>>>>device local-memory objects, the
>>>>>>>>>>>>>>>>+ * @start should be 2M aligned, @offset and
>>>>>>>>>>>>>>>>@length should be 64K aligned.
>>>>>>>>>>>>>>>>+ * Also, on those platforms, it is not
>>>>>>>>>>>>>>>>allowed to bind an device local-memory
>>>>>>>>>>>>>>>>+ * object and a system memory object in a
>>>>>>>>>>>>>>>>single 2M section of VA range.
>>>>>>>>>>>>>>>>+ */
>>>>>>>>>>>>>>>>+struct drm_i915_gem_vm_bind {
>>>>>>>>>>>>>>>>+��� /** @vm_id: VM (address space) id to bind */
>>>>>>>>>>>>>>>>+��� __u32 vm_id;
>>>>>>>>>>>>>>>>+
>>>>>>>>>>>>>>>>+��� /** @queue_idx: Index of queue for binding */
>>>>>>>>>>>>>>>>+��� __u32 queue_idx;
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>I have a question here to which I did not find
>>>>>>>>>>>>>>>an answer by browsing the old threads.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>Queue index appears to be an implicit
>>>>>>>>>>>>>>>synchronisation mechanism, right? Operations on
>>>>>>>>>>>>>>>the same index are executed/complete in order of
>>>>>>>>>>>>>>>ioctl submission?
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>Do we _have_ to implement this on the kernel
>>>>>>>>>>>>>>>side and could just allow in/out fence and let
>>>>>>>>>>>>>>>userspace deal with it?
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>It orders operations like in a queue. Which is kind
>>>>>>>>>>>>>>of what happens with existing queues/engines.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>If I understood correctly, it's going to be a
>>>>>>>>>>>>>>kthread + a linked list right?
>>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>Yes, that is correct.
>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>-Lionel
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>>>Arbitrary/on-demand number of queues will add
>>>>>>>>>>>>>>>the complexity on the kernel side which should
>>>>>>>>>>>>>>>be avoided if possible.
>>>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>>It was discussed in the other thread. Jason 
>>>>>>>>>>>>>prefers this over putting
>>>>>>>>>>>>>an artificial limit on number of queues (as user can
>>>>>>>>>>>>>anyway can exhaust
>>>>>>>>>>>>>the memory). I think complexity in the driver is manageable.
>>>>>>>>>>>>
>>>>>>>>>>>>You'll need to create tracking structures on demand, with
>>>>>>>>>>>>atomic replace of last fence, ref counting and locking of
>>>>>>>>>>>>some sort, more or less?
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>We will have a workqueue, an work item and a 
>>>>>>>>>>>linked list per queue.
>>>>>>>>>>>VM_BIND/UNBIND call will add the mapping request to the
>>>>>>>>>>>specified queue's
>>>>>>>>>>>linked list and schedule the work item on the 
>>>>>>>>>>>workqueue of that queue.
>>>>>>>>>>>I am not sure what you mean by last fence and replacing it.
>>>>>>>>>>>
>>>>>>>>>>>>>The other option being discussed in to have 
>>>>>>>>>>>>>the user create those
>>>>>>>>>>>>>queues (like creating engine map) before hand 
>>>>>>>>>>>>>and use that in vm_bind
>>>>>>>>>>>>>and vm_unbind ioctls. This puts a limit on the 
>>>>>>>>>>>>>number of queues.
>>>>>>>>>>>>>But it is not clean either and not sure it is worth
>>>>>>>>>>>>>making the interface
>>>>>>>>>>>>>more complex.
>>>>>>>>>>>>>https://www.spinics.net/lists/dri-devel/msg350448.html
>>>>>>>>>>>>
>>>>>>>>>>>>What about the third option of a flag to return a fence (of
>>>>>>>>>>>>some sort) and pass in a fence? That way userspace can
>>>>>>>>>>>>imagine zero or N queues with very little effort on the
>>>>>>>>>>>>kernel side. Was this considered?
>>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>>I am not clear what fence you are talking about 
>>>>>>>>>>>here and how does that
>>>>>>>>>>>help with the number of vm_bind queues. Can you eloborate?
>>>>>>>>>>
>>>>>>>>>>It is actually already documented that bind/unbind will support
>>>>>>>>>>input and output fences - so what are these queues on top of what
>>>>>>>>>>userspace can already achieve by using them? Purely 
>>>>>>>>>>a convenience or
>>>>>>>>>>there is more to it?
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>>Oh, the vm_bind queues are discussed in this thread.
>>>>>>>>>https://lists.freedesktop.org/archives/intel-gfx/2022-June/299217.html
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>Apparently Vulkan has requirement for multiple queues, each queue
>>>>>>>>>processing vm_bind/unbind calls in the order of submission.
>>>>>>>>
>>>>>>>>I don't see how that answers my question so I will take 
>>>>>>>>the freedom to
>>>>>>>>repeat it. What are these queues on top of what 
>>>>>>>>userspace can already
>>>>>>>>achieve by using in-out fences? Purely a convenience or 
>>>>>>>>there is more to it?
>>>>>>>>
>>>>>>>>Queue1:
>>>>>>>>
>>>>>>>>out_fence_A = vm_bind A
>>>>>>>>out_fence_B = vm_bind B, in_fence=out_fence_A
>>>>>>>>execbuf(in_fence = out_fence_B)
>>>>>>>>
>>>>>>>>Queue2:
>>>>>>>>
>>>>>>>>out_fence_C = vm_bind C
>>>>>>>>out_fence_D = vm_bind D, in_fence=out_fence_C
>>>>>>>>execbuf(in_fence = out_fence_D)
>>>>>>>>
>>>>>>>>Parallel bind:
>>>>>>>>out_fence_E = vm_bind E
>>>>>>>>out_fence_F = vm_bind F
>>>>>>>>merged_fence = fence_merge(out_fence_E, out_fence_F)
>>>>>>>>execbuf(in_fence = merged_fence)
>>>>>>>>
>>>>>>>
>>>>>>>Let's say you do this and only 1 queue:
>>>>>>>
>>>>>>>VM_BIND_A (in_fence=fence_A)
>>>>>>>VM_BIND_B (in_fence=NULL)
>>>>>>>
>>>>>>>With 1 queue VM_BIND_B in blocked on fence_A, hence the 
>>>>>>>need for than 1
>>>>>>>queue.
>>>>>>
>>>>>>I don't follow - there isn't a concept of a queue exposed in 
>>>>>>uapi in what I have described so the above two run in 
>>>>>>parallel there, if we ignore fence_A in your example doesn't 
>>>>>>even exist before you pass it to bind A so something is not 
>>>>>>right.
>>>>>>
>>>>>>>e.g.
>>>>>>>VM_BIND_A (queue_id=0, in_fence=fence_A)
>>>>>>>VM_BIND_B (queue_id=1, in_fence=NULL)
>>>>>>>
>>>>>>>Now VM_BIND_B can immediately be executed regardless of 
>>>>>>>fence_A status.
>>>>>>
>>>>>>In my examples userspace can serialise or not as it sees fit 
>>>>>>using fences. The "parallel bind" examples two binds run in 
>>>>>>parallel. Userspace can create multiple such parallel 
>>>>>>"queues" if it wanted.
>>>>>>
>>>>>>Parallel bind 1 and 2 interleaved:
>>>>>>out_fence_A = vm_bind A
>>>>>>out_fence_B = vm_bind B
>>>>>>out_fence_C = vm_bind C
>>>>>>out_fence_D = vm_bind D
>>>>>>// all binds can run in parallel
>>>>>>merged_fence_1 = fence_merge(out_fence_A, out_fence_B)
>>>>>>merged_fence_2 = fence_merge(out_fence_C, out_fence_D)
>>>>>>execbuf(in_fence = merged_fence_1) // after A&B to finish
>>>>>>execbuf(in_fence = merged_fence_2) // after C&D finish
>>>>>>
>>>>>>There is a huge disconnect somewhere but I don't know where.
>>>>>>
>>>>>
>>>>>Note that Vulkan has requirement that VM_BIND and VM_UNBIND
>>>>>operations will also have 'in' fences associated with them
>>>>>and not just the 'out' fences (which your example above shows).
>>>>
>>>>I gave more examples earlier:
>>>>
>>>>"""
>>>>Queue1:
>>>>
>>>>out_fence_A = vm_bind A
>>>>out_fence_B = vm_bind B, in_fence=out_fence_A
>>>>execbuf(in_fence = out_fence_B)
>>>>"""
>>>>
>>>>Clearly I showed both in and out fence.
>>>>
>>
>>Ok, guess I missed that.
>>
>>>>>Yes, one of the solution discussed was not to have any queue_idx
>>>>>at all (assume single queue) and let the vm_bind/unbind operations
>>>>>submitted run and complete out of submission order. That way
>>>>>a vm_bind/unbind sumitted later will not be blocked by a vm_bind/unbind
>>>>>submitted earlier.
>>>>>But removing the ordering here comes at a cost. Having the operations
>>>>>run in submission order has some benefits. These are discussed in the
>>>>>other thread.
>>>>>https://lists.freedesktop.org/archives/intel-gfx/2022-June/299217.html
>>>>
>>>>That is some messed up deep quoting in that link. Could you 
>>>>please summarize the cost which queues in the uapi intended to 
>>>>avoid?
>>>>
>>>>In any case it is not just for me. A significant addition is 
>>>>proposed for the driver so there should be a clear summary of 
>>>>cost vs benefit rather than a messy thread.
>>>>
>>
>>Say, user has a bunch of mappings to bind or unbind which must be done
>>in the submission order. If we have only one queue which runs the
>>operations out of submission order, then user has to insert in and out
>>fences for each of the operation in the bunch. But by having a in order
>>processing queues, user needs to insert 'in' fence only for the first
>>submission and 'out' fence only for the last submission in that bunch.
>>
>>Also, having in order processing queues allows user to unbind a VA
>>mapping and re-use the same VA in a subsequent bind operation without
>>having any dependency (dependency is met by the fact that they are
>>process in the submission order).
>
>Okay so it is a convenience thing and maybe more performance efficient.
>
>Has a) the performance impact of requiring fences with every 
>bind/unbind been looked at, so we know if it is worth adding code to 
>the driver to handle queues and b) do you have the queued 
>implementation sketched out so amount of kernel code required can be 
>judged?

No, this sparse requirement (in/out fences) is fairely new and the
queue request came up during this review. I will prototype this
once I post the existing set of vm_bind features in i915 for review.

Niranjana

>
>Regards,
>
>Tvrtko
