Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B757D362C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 14:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3884C10E1C3;
	Mon, 23 Oct 2023 12:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FD210E1C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 12:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698063286; x=1729599286;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yn0snyng4EHPQ0yCzsGQEvC6knhWzxqwdi1nFyXI8ZI=;
 b=Wu4m8JGLTIKDFyi1xW/L8T174w+VKlZxtEYQ+uWlSbx9zmEZCR+UOCjR
 lu2IFs0CErm5E5WN2F8O+42tn4m3sjujv5FUdv3H31iA+MXKH6BdV2NAx
 GfCW5wLeBLMZjun956KzbcgXpEz83BluZNj/caqRZPR32/T6A+NN8Z8VM
 fV0cp6yBLEhdP/LlemKzFATn+j/6+2h8cl6HT0ueUrXcBsbKEl8KoAIww
 JXje5vBVylu7pK7OUrHPrtsJ9XJdx91gkAmCrra5IWcS1sL8JOws0+q63
 3CQUv/sTfst3vc81yfSh+mKGmrb/Vvh0nOgZr6BebhvZARNt+/o4I0g17 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386639703"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="386639703"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 05:14:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="823947135"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="823947135"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 05:14:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <ZSq0TBL5E2fKTAnm@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231011162102.1030354-1-jani.nikula@intel.com>
 <ZSq0TBL5E2fKTAnm@ashyti-mobl2.lan>
Date: Mon, 23 Oct 2023 15:14:41 +0300
Message-ID: <87msw9bkni.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop including i915_utils.h from
 intel_runtime_pm.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 14 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> On Wed, Oct 11, 2023 at 07:21:02PM +0300, Jani Nikula wrote:
>> Remove an unnecessary include.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks for the reviews, pushed to din.

BR,
Jani.

-- 
Jani Nikula, Intel
