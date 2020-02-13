Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92CF15CEB8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 00:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF2776F89A;
	Thu, 13 Feb 2020 23:42:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09076F89A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 23:42:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 15:42:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227415651"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.254.179.240])
 ([10.254.179.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 13 Feb 2020 15:42:43 -0800
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200212003124.33844-1-daniele.ceraolospurio@intel.com>
 <20200212003124.33844-8-daniele.ceraolospurio@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <15b855d9-8c6e-1bff-4f87-a414aacb10ce@Intel.com>
Date: Thu, 13 Feb 2020 15:42:42 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200212003124.33844-8-daniele.ceraolospurio@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 07/10] drm/i915/guc: Apply new uC status
 tracking to GuC submission as well
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
> To be able to differentiate the before and after of our commitment to
> GuC submission, which will be used in follow-up patches to early set-up
> the submission structures.
>
> v2: move functions to guc_submission.h (Michal)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 12 ++++----
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  7 +----
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 ++----
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.h | 19 +++++++++++-
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 14 ++++-----
>   drivers/gpu/drm/i915/gt/uc/intel_uc.h         | 30 +++++++------------
>   drivers/gpu/drm/i915/gvt/scheduler.c          |  2 +-
>   drivers/gpu/drm/i915/i915_drv.h               |  6 ----
>   drivers/gpu/drm/i915/intel_gvt.c              |  2 +-
>   9 files changed, 48 insertions(+), 53 deletions(-)

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
