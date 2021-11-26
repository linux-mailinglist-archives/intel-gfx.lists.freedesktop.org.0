Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 695FA45EDCA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 13:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACAA6E4AD;
	Fri, 26 Nov 2021 12:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8816E4AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Nov 2021 12:20:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="235477939"
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="235477939"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 04:20:50 -0800
X-IronPort-AV: E=Sophos;i="5.87,265,1631602800"; d="scan'208";a="498387715"
Received: from slee54-mobl2.amr.corp.intel.com (HELO [10.209.166.109])
 ([10.209.166.109])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 04:20:49 -0800
Message-ID: <398b3993-804d-2f7f-8a53-b3452f444cbc@linux.intel.com>
Date: Fri, 26 Nov 2021 12:20:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211126110843.2028582-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211126110843.2028582-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gemfs: don't mark huge_opt as
 static
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 26/11/2021 11:08, Matthew Auld wrote:
> vfs_kernel_mount() modifies the passed in mount options, leaving us with
> "huge", instead of "huge=within_size". Normally this shouldn't matter
> with the usual module load/unload flow, however with the core_hotunplug
> IGT we are hitting the following, when re-probing the memory regions:

Doh and thanks for fixing it. I obviously figured out it changes the 
string but did not grasp all the consequences.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> i915 0000:00:02.0: [drm] Transparent Hugepage mode 'huge'
> tmpfs: Bad value for 'huge'
> [drm] Unable to create a private tmpfs mount, hugepage support will be disabled(-22).
> 
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/4651
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gemfs.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gemfs.c b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> index dbdbdc344d87..182da3c04771 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gemfs.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gemfs.c
> @@ -12,6 +12,7 @@
>   
>   int i915_gemfs_init(struct drm_i915_private *i915)
>   {
> +	char huge_opt[] = "huge=within_size"; /* r/w */
>   	struct file_system_type *type;
>   	struct vfsmount *gemfs;
>   	char *opts;
> @@ -33,8 +34,6 @@ int i915_gemfs_init(struct drm_i915_private *i915)
>   	opts = NULL;
>   	if (intel_vtd_active()) {
>   		if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE)) {
> -			static char huge_opt[] = "huge=within_size"; /* r/w */
> -
>   			opts = huge_opt;
>   			drm_info(&i915->drm,
>   				 "Transparent Hugepage mode '%s'\n",
> 
