Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ED815CEC1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 00:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8616E42C;
	Thu, 13 Feb 2020 23:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C4B76E42C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 23:44:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 15:44:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227415910"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.254.179.240])
 ([10.254.179.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 13 Feb 2020 15:44:01 -0800
To: intel-gfx@lists.freedesktop.org,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
 <20200212003124.33844-10-daniele.ceraolospurio@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <856d97da-3f5c-f276-8ac0-3d84ee3f6d5c@Intel.com>
Date: Thu, 13 Feb 2020 15:44:00 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200212003124.33844-10-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 09/10] drm/i915/uc: consolidate firmware
 cleanup
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

On 2/11/2020 16:31, Daniele Ceraolo Spurio wrote:
> We are quite trigger happy in cleaning up the firmware blobs, as we do
> so from several error/fini paths in GuC/HuC/uC code. We do have the
> __uc_cleanup_firmwares cleanup function, which unwinds
> __uc_fetch_firmwares and is already called both from the error path of
> gem_init and from gem_driver_release, so let's stop cleaning up from
> all the other paths.
>
> The fact that we're not cleaning the firmware immediately means that
> we can't consider firmware availability as an indication of
> initialization success. A "READY_TO_LOAD" status has been added to
Is it not worth updating the commit message to use the name that is 
actually in the code now?

Otherwise:
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> indicate that the initialization was successful, to be used to
> selectively load HuC only if HuC init has completed (HuC init failure
> is not considered a fatal error).
>
> v2: s/ready_to_load/loadable (Michal), only run guc/huc_fini if the
>      fw is in loadable state
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com> #v1
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c   | 12 +++++-------
>   drivers/gpu/drm/i915/gt/uc/intel_huc.c   |  5 +++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c    |  2 +-
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c |  7 +++++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h | 18 +++++++++++++++---
>   5 files changed, 29 insertions(+), 15 deletions(-)
>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
