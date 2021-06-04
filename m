Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C739BEF8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 19:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2156F87D;
	Fri,  4 Jun 2021 17:39:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E56496F878
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 17:39:38 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 h22-20020a05600c3516b02901a826f84095so1076958wmq.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 10:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=QPXdlhTT0qQvSoe4p6XPs2PPGdg+0rP+jlY4SCyo+eA=;
 b=UvW2eVKTUiR9LRbzkdW5xuSdiXsgcTWwMnkf6v1y8vkRaREIBbjNZXAlulwAx3WP/h
 1nyU1dF2uL4VqDfuNRjEhqrCJRMStgs5qr49u6zD2m2z6doK5Xy8PYFsTXGkoLrkj2tR
 pAopGebd8NcjMBBVrr1bR8OuPAqaB6WU4b3P8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=QPXdlhTT0qQvSoe4p6XPs2PPGdg+0rP+jlY4SCyo+eA=;
 b=I56lzh+uhxEgAE838VBCfufg+ChD0ssSCDp3cATC0iOlvdYichSWxxMMEZcLEw0hpd
 Md3eSANfFCDad2GEm2p/mOGSyLaJNxaeZ7I4xIpggtPQwRyI2r7u/KYcSWKHtMMj6viR
 9yO4NksV2IAM2Ggfq8TELkNqDSZJIolHlZmSVENv09C1d8oN02itFMSwE6bsB+4in/MM
 SKwhkjqg3KJE9zBwXFGyRTzJ522DAlLg04GT8x7/I92E+z5KEMDyHo0PCWkKt4msfBe6
 pXjW8WZEMWeBtzCDk8mCJIdVVzWfKEuGx7n3x5qxabND73am529Cosh6xRuem5Yewowd
 OQfg==
X-Gm-Message-State: AOAM530q3g+IVt8TdXF+H/VRjRQozoWDLCNMktEDc1bu7JA91Rf7H3mX
 sUgyB3lJsgPEY2o6mO02yB7KAw==
X-Google-Smtp-Source: ABdhPJwAUN9Hz15So4IazjHo2zCMAK/ngIJMxrhZDkABZaW4N0GZ33uMVlRoF7TjxqPTr0kVp7vG8w==
X-Received: by 2002:a1c:7715:: with SMTP id t21mr4747029wmi.101.1622828377500; 
 Fri, 04 Jun 2021 10:39:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 125sm9986205wmb.34.2021.06.04.10.39.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jun 2021 10:39:36 -0700 (PDT)
Date: Fri, 4 Jun 2021 19:39:34 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YLplVgu7y8fzaFF0@phenom.ffwll.local>
References: <20210526233357.9165-1-matthew.brost@intel.com>
 <20210526233357.9165-2-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526233357.9165-2-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] drm/doc/rfc: i915 GuC submission /
 DRM scheduler
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 carl.zhang@intel.com, jason.ekstrand@intel.com, daniel.vetter@intel.com,
 mesa-dev@lists.freedesktop.org, christian.koenig@amd.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 26, 2021 at 04:33:56PM -0700, Matthew Brost wrote:
> Add entry for i915 GuC submission / DRM scheduler integration plan.
> Follow up patch with details of new parallel submission uAPI to come.
> =

> v2:
>  (Daniel Vetter)
>   - Expand explaination of why bonding isn't supported for GuC
>     submission
>   - CC some of the DRM scheduler maintainers
>   - Add priority inheritance / boosting use case
>   - Add reasoning for removing in order assumptions
>  (Daniel Stone)
>   - Add links to priority spec
> =

> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Luben Tuikov <luben.tuikov@amd.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: Steven Price <steven.price@arm.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Dave Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: dri-devel@lists.freedesktop.org
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

You have a one-line hunk in the next patch that probably should be here.
With that moved.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Also did you get an ack from Carl on these?
-Daniel

> ---
>  Documentation/gpu/rfc/i915_scheduler.rst | 85 ++++++++++++++++++++++++
>  Documentation/gpu/rfc/index.rst          |  4 ++
>  2 files changed, 89 insertions(+)
>  create mode 100644 Documentation/gpu/rfc/i915_scheduler.rst
> =

> diff --git a/Documentation/gpu/rfc/i915_scheduler.rst b/Documentation/gpu=
/rfc/i915_scheduler.rst
> new file mode 100644
> index 000000000000..7faa46cde088
> --- /dev/null
> +++ b/Documentation/gpu/rfc/i915_scheduler.rst
> @@ -0,0 +1,85 @@
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +I915 GuC Submission/DRM Scheduler Section
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +Upstream plan
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +For upstream the overall plan for landing GuC submission and integrating=
 the
> +i915 with the DRM scheduler is:
> +
> +* Merge basic GuC submission
> +	* Basic submission support for all gen11+ platforms
> +	* Not enabled by default on any current platforms but can be enabled via
> +	  modparam enable_guc
> +	* Lots of rework will need to be done to integrate with DRM scheduler so
> +	  no need to nit pick everything in the code, it just should be
> +	  functional, no major coding style / layering errors, and not regress
> +	  execlists
> +	* Update IGTs / selftests as needed to work with GuC submission
> +	* Enable CI on supported platforms for a baseline
> +	* Rework / get CI heathly for GuC submission in place as needed
> +* Merge new parallel submission uAPI
> +	* Bonding uAPI completely incompatible with GuC submission, plus it has
> +	  severe design issues in general, which is why we want to retire it no
> +	  matter what
> +	* New uAPI adds I915_CONTEXT_ENGINES_EXT_PARALLEL context setup step
> +	  which configures a slot with N contexts =

> +	* After I915_CONTEXT_ENGINES_EXT_PARALLEL a user can submit N batches to
> +	  a slot in a single execbuf IOCTL and the batches run on the GPU in
> +	  paralllel
> +	* Initially only for GuC submission but execlists can be supported if
> +	  needed
> +* Convert the i915 to use the DRM scheduler
> +	* GuC submission backend fully integrated with DRM scheduler
> +		* All request queues removed from backend (e.g. all backpressure
> +		  handled in DRM scheduler)
> +		* Resets / cancels hook in DRM scheduler
> +		* Watchdog hooks into DRM scheduler
> +		* Lots of complexity of the GuC backend can be pulled out once
> +		  integrated with DRM scheduler (e.g. state machine gets
> +		  simplier, locking gets simplier, etc...)
> +	* Execlist backend will do the minimum required to hook in the DRM
> +	  scheduler so it can live next to the fully integrated GuC backend
> +		* Legacy interface
> +		* Features like timeslicing / preemption / virtual engines would
> +		  be difficult to integrate with the DRM scheduler and these
> +		  features are not required for GuC submission as the GuC does
> +		  these things for us
> +		* ROI low on fully integrating into DRM scheduler
> +		* Fully integrating would add lots of complexity to DRM
> +		  scheduler
> +	* Port i915 priority inheritance / boosting feature in DRM scheduler
> +		* Used for i915 page flip, may be useful to other DRM drivers as
> +		  well
> +		* Will be an optional feature in the DRM scheduler
> +	* Remove in-order completion assumptions from DRM scheduler
> +		* Even when using the DRM scheduler the backends will handle
> +		  preemption, timeslicing, etc... so it is possible for jobs to
> +		  finish out of order
> +	* Pull out i915 priority levels and use DRM priority levels
> +	* Optimize DRM scheduler as needed
> +
> +New uAPI for basic GuC submission
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +No major changes are required to the uAPI for basic GuC submission. The =
only
> +change is a new scheduler attribute: I915_SCHEDULER_CAP_STATIC_PRIORITY_=
MAP.
> +This attribute indicates the 2k i915 user priority levels are statically=
 mapped
> +into 3 levels as follows:
> +
> +* -1k to -1 Low priority
> +* 0 Medium priority
> +* 1 to 1k High priority
> +
> +This is needed because the GuC only has 4 priority bands. The highest pr=
iority
> +band is reserved with the kernel. This aligns with the DRM scheduler pri=
ority
> +levels too.
> +
> +Spec references:
> +----------------
> +https://www.khronos.org/registry/EGL/extensions/IMG/EGL_IMG_context_prio=
rity.txt
> +https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/chap5.=
html#devsandqueues-priority
> +https://spec.oneapi.com/level-zero/latest/core/api.html#ze-command-queue=
-priority-t
> +
> +New parallel submission uAPI
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> +Details to come in a following patch.
> diff --git a/Documentation/gpu/rfc/index.rst b/Documentation/gpu/rfc/inde=
x.rst
> index 05670442ca1b..91e93a705230 100644
> --- a/Documentation/gpu/rfc/index.rst
> +++ b/Documentation/gpu/rfc/index.rst
> @@ -19,3 +19,7 @@ host such documentation:
>  .. toctree::
>  =

>      i915_gem_lmem.rst
> +
> +.. toctree::
> +
> +    i915_scheduler.rst
> -- =

> 2.28.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
