Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E89F557E17
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 16:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B0210E660;
	Thu, 23 Jun 2022 14:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CACD10E4C9;
 Thu, 23 Jun 2022 14:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655995681; x=1687531681;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9i9QEKKYWym3hS20IRHRRiTTUwozC+3SOb5tIyxL5Xs=;
 b=l+S26pIvNBazi0rXeH0OFt4VB62uOIzHKNR8wfrYWALlD4OGQecfXZbb
 oFt+KN1o4zDVcGCXKsY1A8kHicGYOxqX2a8UWsxHSNUJF3jypeurnkcI/
 ewL7qaDFAL/5GunS2IS3iNMgd3YqNcu+0uY9zjb7RF9Vl8NlQH2QfUtHb
 vAY5IOLP0reeKyg4ddS6ISw7l/53VvbNgVCMKPDhYCfPJB6IzrzMVXEvl
 jQTOJDAWi89IInoNzLphgWxbp2Eo9yAYC4R9gRIWR1xZaSMaVowfb7wkF
 cxvBUYJyEcQchU10HHS5A8jCXmedzQoboL/RbZyvc6XnIcEUCZNX0CbJR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280785002"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="280785002"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 07:48:00 -0700
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="765320402"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 07:48:00 -0700
Date: Thu, 23 Jun 2022 07:47:41 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220623144741.GC376@nvishwa1-DESK>
References: <20220622035650.29256-1-niranjana.vishwanathapura@intel.com>
 <20220622035650.29256-4-niranjana.vishwanathapura@intel.com>
 <6ac2f495-8ead-4824-f9af-1c03fb3770c4@linux.intel.com>
 <20220622151229.GY376@nvishwa1-DESK>
 <b347fb63-5200-9f5c-b0d6-ca51b7a064f9@linux.intel.com>
 <20220622164445.GZ376@nvishwa1-DESK>
 <e6ed0d2f-ee2a-2219-c2cc-49efc32f0560@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e6ed0d2f-ee2a-2219-c2cc-49efc32f0560@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/doc/rfc: VM_BIND uapi definition
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

On Thu, Jun 23, 2022 at 09:27:22AM +0100, Tvrtko Ursulin wrote:
>
>On 22/06/2022 17:44, Niranjana Vishwanathapura wrote:
>>On Wed, Jun 22, 2022 at 04:57:17PM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 22/06/2022 16:12, Niranjana Vishwanathapura wrote:
>>>>On Wed, Jun 22, 2022 at 09:10:07AM +0100, Tvrtko Ursulin wrote:
>>>>>
>>>>>On 22/06/2022 04:56, Niranjana Vishwanathapura wrote:
>>>>>>VM_BIND and related uapi definitions
>>>>>>
>>>>>>v2: Reduce the scope to simple Mesa use case.
>>>>>>v3: Expand VM_UNBIND documentation and add
>>>>>>��� I915_GEM_VM_BIND/UNBIND_FENCE_VALID
>>>>>>��� and I915_GEM_VM_BIND_TLB_FLUSH flags.
>>>>>>
>>>>>>Signed-off-by: Niranjana Vishwanathapura 
>>>>>><niranjana.vishwanathapura@intel.com>
>>>>>>---
>>>>>>�Documentation/gpu/rfc/i915_vm_bind.h | 243 
>>>>>>+++++++++++++++++++++++++++
>>>>>>�1 file changed, 243 insertions(+)
>>>>>>�create mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>
>>>>>>diff --git a/Documentation/gpu/rfc/i915_vm_bind.h 
>>>>>>b/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>new file mode 100644
>>>>>>index 000000000000..fa23b2d7ec6f
>>>>>>--- /dev/null
>>>>>>+++ b/Documentation/gpu/rfc/i915_vm_bind.h
>>>>>>@@ -0,0 +1,243 @@
>>>>>>+/* SPDX-License-Identifier: MIT */
>>>>>>+/*
>>>>>>+ * Copyright � 2022 Intel Corporation
>>>>>>+ */
>>>>>>+
>>>>>>+/**
>>>>>>+ * DOC: I915_PARAM_HAS_VM_BIND
>>>>>>+ *
>>>>>>+ * VM_BIND feature availability.
>>>>>>+ * See typedef drm_i915_getparam_t param.
>>>>>>+ */
>>>>>>+#define I915_PARAM_HAS_VM_BIND������� 57
>>>>>>+
>>>>>>+/**
>>>>>>+ * DOC: I915_VM_CREATE_FLAGS_USE_VM_BIND
>>>>>>+ *
>>>>>>+ * Flag to opt-in for VM_BIND mode of binding during VM creation.
>>>>>>+ * See struct drm_i915_gem_vm_control flags.
>>>>>>+ *
>>>>>>+ * The older execbuf2 ioctl will not support VM_BIND mode 
>>>>>>of operation.
>>>>>>+ * For VM_BIND mode, we have new execbuf3 ioctl which will 
>>>>>>not accept any
>>>>>>+ * execlist (See struct drm_i915_gem_execbuffer3 for more details).
>>>>>>+ *
>>>>>>+ */
>>>>>>+#define I915_VM_CREATE_FLAGS_USE_VM_BIND��� (1 << 0)
>>>>>>+
>>>>>>+/* VM_BIND related ioctls */
>>>>>>+#define DRM_I915_GEM_VM_BIND������� 0x3d
>>>>>>+#define DRM_I915_GEM_VM_UNBIND������� 0x3e
>>>>>>+#define DRM_I915_GEM_EXECBUFFER3��� 0x3f
>>>>>>+
>>>>>>+#define DRM_IOCTL_I915_GEM_VM_BIND 
>>>>>>DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_BIND, struct 
>>>>>>drm_i915_gem_vm_bind)
>>>>>>+#define DRM_IOCTL_I915_GEM_VM_UNBIND 
>>>>>>DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_VM_UNBIND, struct 
>>>>>>drm_i915_gem_vm_bind)
>>>>>>+#define DRM_IOCTL_I915_GEM_EXECBUFFER3 
>>>>>>DRM_IOWR(DRM_COMMAND_BASE + DRM_I915_GEM_EXECBUFFER3, struct 
>>>>>>drm_i915_gem_execbuffer3)
>>>>>>+
>>>>>>+/**
>>>>>>+ * struct drm_i915_gem_vm_bind_fence - Bind/unbind 
>>>>>>completion notification.
>>>>>>+ *
>>>>>>+ * A timeline out fence for vm_bind/unbind completion notification.
>>>>>>+ */
>>>>>>+struct drm_i915_gem_vm_bind_fence {
>>>>>>+��� /** @handle: User's handle for a drm_syncobj to signal. */
>>>>>>+��� __u32 handle;
>>>>>>+
>>>>>>+��� /** @rsvd: Reserved, MBZ */
>>>>>>+��� __u32 rsvd;
>>>>>>+
>>>>>>+��� /**
>>>>>>+���� * @value: A point in the timeline.
>>>>>>+���� * Value must be 0 for a binary drm_syncobj. A Value of 0 for a
>>>>>>+���� * timeline drm_syncobj is invalid as it turns a 
>>>>>>drm_syncobj into a
>>>>>>+���� * binary one.
>>>>>>+���� */
>>>>>>+��� __u64 value;
>>>>>>+};
>>>>>>+
>>>>>>+/**
>>>>>>+ * struct drm_i915_gem_vm_bind - VA to object mapping to bind.
>>>>>>+ *
>>>>>>+ * This structure is passed to VM_BIND ioctl and specifies 
>>>>>>the mapping of GPU
>>>>>>+ * virtual address (VA) range to the section of an object 
>>>>>>that should be bound
>>>>>>+ * in the device page table of the specified address space (VM).
>>>>>>+ * The VA range specified must be unique (ie., not 
>>>>>>currently bound) and can
>>>>>>+ * be mapped to whole object or a section of the object 
>>>>>>(partial binding).
>>>>>>+ * Multiple VA mappings can be created to the same section 
>>>>>>of the object
>>>>>>+ * (aliasing).
>>>>>>+ *
>>>>>>+ * The @start, @offset and @length should be 4K page 
>>>>>>aligned. However the DG2
>>>>>>+ * and XEHPSDV has 64K page size for device local-memory 
>>>>>>and has compact page
>>>>>>+ * table. On those platforms, for binding device 
>>>>>>local-memory objects, the
>>>>>>+ * @start should be 2M aligned, @offset and @length should 
>>>>>>be 64K aligned.
>>>>>
>>>>>Should some error codes be documented and has the ability to 
>>>>>programmatically probe the alignment restrictions been 
>>>>>considered?
>>>>>
>>>>
>>>>Currently what we have internally is that -EINVAL is returned if 
>>>>the sart, offset
>>>>and length are not aligned. If the specified mapping already 
>>>>exits, we return
>>>>-EEXIST. If there are conflicts in the VA range and VA range 
>>>>can't be reserved,
>>>>then -ENOSPC is returned. I can add this documentation here. But 
>>>>I am worried
>>>>that there will be more suggestions/feedback about error codes 
>>>>while reviewing
>>>>the code patch series, and we have to revisit it again.
>>>
>>>I'd still suggest documenting those three. It makes sense to 
>>>explain to userspace what behaviour they will see if they get it 
>>>wrong.
>>>
>>
>>Ok.
>>
>>>>>>+ * Also, on those platforms, it is not allowed to bind an 
>>>>>>device local-memory
>>>>>>+ * object and a system memory object in a single 2M section 
>>>>>>of VA range.
>>>>>
>>>>>Text should be clear whether "not allowed" means there will be 
>>>>>an error returned, or it will appear to work but bad things 
>>>>>will happen.
>>>>>
>>>>
>>>>Yah, error returned, will fix.
>>>>
>>>>>>+ */
>>>>>>+struct drm_i915_gem_vm_bind {
>>>>>>+��� /** @vm_id: VM (address space) id to bind */
>>>>>>+��� __u32 vm_id;
>>>>>>+
>>>>>>+��� /** @handle: Object handle */
>>>>>>+��� __u32 handle;
>>>>>>+
>>>>>>+��� /** @start: Virtual Address start to bind */
>>>>>>+��� __u64 start;
>>>>>>+
>>>>>>+��� /** @offset: Offset in object to bind */
>>>>>>+��� __u64 offset;
>>>>>>+
>>>>>>+��� /** @length: Length of mapping to bind */
>>>>>>+��� __u64 length;
>>>>>>+
>>>>>>+��� /**
>>>>>>+���� * @flags: Supported flags are:
>>>>>>+���� *
>>>>>>+���� * I915_GEM_VM_BIND_FENCE_VALID:
>>>>>>+���� * @fence is valid, needs bind completion notification.
>>>>>>+���� *
>>>>>>+���� * I915_GEM_VM_BIND_READONLY:
>>>>>>+���� * Mapping is read-only.
>>>>>>+���� *
>>>>>>+���� * I915_GEM_VM_BIND_CAPTURE:
>>>>>>+���� * Capture this mapping in the dump upon GPU error.
>>>>>>+���� *
>>>>>>+���� * I915_GEM_VM_BIND_TLB_FLUSH:
>>>>>>+���� * Flush the TLB for the specified range after bind completion.
>>>>>>+���� */
>>>>>>+��� __u64 flags;
>>>>>>+#define I915_GEM_VM_BIND_FENCE_VALID��� (1 << 0)
>>>>>>+#define I915_GEM_VM_BIND_READONLY��� (1 << 1)
>>>>>>+#define I915_GEM_VM_BIND_CAPTURE��� (1 << 2)
>>>>>>+#define I915_GEM_VM_BIND_TLB_FLUSH��� (1 << 2)
>>>>>
>>>>>What is the use case for allowing any random user to play with 
>>>>>(global) TLB flushing?
>>>>>
>>>>
>>>>I heard it from Daniel on intel-gfx, apparently it is a Mesa 
>>>>requirement.
>>>
>>>Okay I think that one needs clarifying.
>>>
>>
>>After chatting with Jason, I think we can remove it for now and
>>we can revisit it later if Mesa thinks it is required.
>
>IRC or some other thread?

#intel-gfx

Niranjana

>
>>>>>>+
>>>>>>+��� /** @fence: Timeline fence for bind completion signaling */
>>>>>>+��� struct drm_i915_gem_vm_bind_fence fence;
>>>>>
>>>>>As agreed the other day - please document in the main 
>>>>>kerneldoc section that all (un)binds are executed 
>>>>>asynchronously and out of order.
>>>>>
>>>>
>>>>I have added it in the latest revision of .rst file.
>>>
>>>Right, but I'd say to mention it in the uapi docs.
>>>
>>
>>Ok
>>
>>>>>>+
>>>>>>+��� /** @extensions: 0-terminated chain of extensions */
>>>>>>+��� __u64 extensions;
>>>>>>+};
>>>>>>+
>>>>>>+/**
>>>>>>+ * struct drm_i915_gem_vm_unbind - VA to object mapping to unbind.
>>>>>>+ *
>>>>>>+ * This structure is passed to VM_UNBIND ioctl and 
>>>>>>specifies the GPU virtual
>>>>>>+ * address (VA) range that should be unbound from the 
>>>>>>device page table of the
>>>>>>+ * specified address space (VM). The specified VA range 
>>>>>>must match one of the
>>>>>>+ * mappings created with the VM_BIND ioctl. TLB is flushed 
>>>>>>upon unbind
>>>>>>+ * completion. The unbind operation will force unbind the specified
>>>>>
>>>>>Do we want to provide TLB flushing guarantees here and why? 
>>>>>(As opposed to leaving them for implementation details.) If 
>>>>>there is no implied order in either binds/unbinds, or between 
>>>>>the two intermixed, then what is the point of guaranteeing a 
>>>>>TLB flush on unbind completion?
>>>>>
>>>>
>>>>I think we ensure that tlb is flushed before signaling the out fence
>>>>of vm_unbind call, then user ensure corretness by staging submissions
>>>>or vm_bind calls after vm_unbind out fence signaling.
>>>
>>>I don't see why is this required. Driver does not need to flush 
>>>immediately on unbind for correctness/security and neither for the 
>>>uapi contract. If there is no subsequent usage/bind then the flush 
>>>is pointless. And if the user re-binds to same VA range, against 
>>>an active VM, then perhaps the expectations need to be defined. Is 
>>>this supported or user error or what.
>>>
>>
>>After a vm_unbind, UMD can re-bind to same VA range against an active VM.
>>Though I am not sue with Mesa usecase if that new mapping is required for
>>running GPU job or it will be for the next submission. But ensuring the
>>tlb flush upon unbind, KMD can ensure correctness.
>
>Isn't that their problem? If they re-bind for submitting _new_ work 
>then they get the flush as part of batch buffer pre-amble.
>
>>Note that on platforms with selective TLB invalidation, it is not
>>as expensive as flushing the whole TLB. On platforms without selective
>>tlb invalidation, we can put some optimization later as mentioned
>>in the .rst file.
>>
>>Also note that UMDs can vm_unbind a mapping while VM is active.
>>By flushing the tlb, we ensure there is no inadvertent access to
>>mapping that no longer exists. I can add this to documentation.
>
>This one would surely be their problem. Kernel only needs to flush 
>when it decides to re-use the backing store.
>
>To be clear, overall I have reservations about offering strong 
>guarantees about the TLB flushing behaviour at the level of these two 
>ioctls. If we don't need to offer them it would be good to not do it, 
>otherwise we limit ourselves on the implementation side and more 
>importantly add a global performance hit where majority of userspace 
>do not need this guarantee to start with.
>
>I only don't fully remember how is that compute use case supposed to 
>work where new work keeps getting submitted against a running batch. 
>Am I missing something there?
>
>>>>>range from
>>>>>>+ * device page table without waiting for any GPU job to 
>>>>>>complete. It is UMDs
>>>>>>+ * responsibility to ensure the mapping is no longer in use 
>>>>>>before calling
>>>>>>+ * VM_UNBIND.
>>>>>>+ *
>>>>>>+ * The @start and @length musy specify a unique mapping 
>>>>>>bound with VM_BIND
>>>>>>+ * ioctl.
>>>>>>+ */
>>>>>>+struct drm_i915_gem_vm_unbind {
>>>>>>+��� /** @vm_id: VM (address space) id to bind */
>>>>>>+��� __u32 vm_id;
>>>>>>+
>>>>>>+��� /** @rsvd: Reserved, MBZ */
>>>>>>+��� __u32 rsvd;
>>>>>>+
>>>>>>+��� /** @start: Virtual Address start to unbind */
>>>>>>+��� __u64 start;
>>>>>>+
>>>>>>+��� /** @length: Length of mapping to unbind */
>>>>>>+��� __u64 length;
>>>>>>+
>>>>>>+��� /**
>>>>>>+���� * @flags: Supported flags are:
>>>>>>+���� *
>>>>>>+���� * I915_GEM_VM_UNBIND_FENCE_VALID:
>>>>>>+���� * @fence is valid, needs unbind completion notification.
>>>>>>+���� */
>>>>>>+��� __u64 flags;
>>>>>>+#define I915_GEM_VM_UNBIND_FENCE_VALID��� (1 << 0)
>>>>>>+
>>>>>>+��� /** @fence: Timeline fence for unbind completion signaling */
>>>>>>+��� struct drm_i915_gem_vm_bind_fence fence;
>>>>>
>>>>>I am not sure the simplified ioctl story is super coherent. If 
>>>>>everything is now fully async and out of order, but the input 
>>>>>fence has been dropped, then how is userspace supposed to 
>>>>>handle the address space? It will have to wait (in userspace) 
>>>>>for unbinds to complete before submitting subsequent binds 
>>>>>which use the same VA range.
>>>>>
>>>>
>>>>Yah and Mesa appararently will be having the support to handle it.
>>>>
>>>>>Maybe that's passable, but then the fact execbuf3 has no input 
>>>>>fence suggests a userspace wait between it and binds. And I am 
>>>>>pretty sure historically those were always quite bad for 
>>>>>performance.
>>>>>
>>>>
>>>>execbuf3 has the input fence through timline fence array support.
>>>
>>>I think I confused the field in execbuf3 for for the output 
>>>fence.. So that part is fine, async binds chained with input fence 
>>>to execbuf3. Fire and forget for userspace.
>>>
>>>Although I then don't understand why execbuf3 wouldn't support an 
>>>output fence? What mechanism is userspace supposed to use for 
>>>that? Export a fence from batch buffer BO? That would be an extra 
>>>ioctl so if we can avoid it why not?
>>>
>>
>>execbuf3 supports out fence as well through timeline fence array.
>
>Ah okay, I am uninformed in this topic, sorry.
>
>Regards,
>
>Tvrtko
