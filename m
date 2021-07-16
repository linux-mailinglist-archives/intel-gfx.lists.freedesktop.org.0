Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9683CB7B5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 15:07:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8904A6E96C;
	Fri, 16 Jul 2021 13:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C706E96C
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 13:07:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="210776320"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="210776320"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 06:07:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="656394854"
Received: from kjmurthy-mobl.ger.corp.intel.com (HELO [10.213.193.231])
 ([10.213.193.231])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 06:07:38 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <da8d2b40-bceb-f32e-28bc-8652575835ba@linux.intel.com>
Date: Fri, 16 Jul 2021 14:07:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add missing docbook chapters
 for i915 uapi.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/07/2021 13:08, Maarten Lankhorst wrote:
> I noticed when grepping for DOC: that those were defined
> in the header, but not actually used. Fix it by removing
> all chapters and the internal annotation, so the docbook
> generated chapters are used.
> 
> Changes since v1:
> - Just remove the chapters, no need for those.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210709113842.651140-1-maarten.lankhorst@linux.intel.com
> ---
>   Documentation/gpu/driver-uapi.rst | 21 ---------------------
>   1 file changed, 21 deletions(-)
> 
> diff --git a/Documentation/gpu/driver-uapi.rst b/Documentation/gpu/driver-uapi.rst
> index 27d0fbe33e87..4411e6919a3d 100644
> --- a/Documentation/gpu/driver-uapi.rst
> +++ b/Documentation/gpu/driver-uapi.rst
> @@ -5,25 +5,4 @@ DRM Driver uAPI
>   drm/i915 uAPI
>   =============
>   
> -Engine Discovery uAPI
> ----------------------
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :doc: Engine Discovery uAPI
> -
> -Context Engine Map uAPI
> ------------------------
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :doc: Context Engine Map uAPI
> -
> -Virtual Engine uAPI
> --------------------
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :doc: Virtual Engine uAPI
> -

Hmm my idea was to have the above three laid out sequentially in the doc 
so the narrative makes sense. Otherwise they are at random locations in 
i915_drm.h so reader cannot get the nice story around high level 
operation and interactions between then. Initially I had this narrative 
right in this file but Daniel wanted it moved into i915_drm.h.

I didn't really understand the commit message to understand what wasn't 
right?

> -i915_drm.h
> -----------
>   .. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :internal:

This one I added to avoid duplicate sections. It won't be a problem if 
they are not referenced from driver-uapi.rst though.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
