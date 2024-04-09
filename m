Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF65689D71D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 12:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF5810E68C;
	Tue,  9 Apr 2024 10:38:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A08boUVD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B3810E5F0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Apr 2024 10:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712659110; x=1744195110;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/1OgukHDBjn3P2bz6CBAK4Ow0RgPZvlDPHibDzJ7Sf0=;
 b=A08boUVDeM20K3R21/6H7NDYAsL06dKf80nMckXYa+CMJdIRjEfiCt52
 30FfSBXdy9HlPqTp24Quhb3kmjXp98LcvMNw1oS5KYNjW9lnQDvMW6C/a
 a+jG3U0XI2P45adCvn8fzSdyK6gwmXpyuVqFnJmSqv2JgBBGdGW7jmCs4
 1KtZaC32w+muy3PV3/17wfXeAyleWZ/9HljbgTQQoLRz9URjRLDOPFRS8
 a/XTC2x83FXdBjjtY2TU0qFnOhu4zk9hpho3XxcJEP3RVL1nT2vGigIh0
 gcsdBTGadZPbXBF90n0UDM0jTfnxXAx2xVTA6DLkjZTj8FwHRDfmML276 A==;
X-CSE-ConnectionGUID: jbqgtPs3QdWTMvu+4d3dSQ==
X-CSE-MsgGUID: 6l3ADU/USIShTUvHAJOzlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="30456833"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="30456833"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 03:38:30 -0700
X-CSE-ConnectionGUID: CUuns2aUTI28/l+8OsQ0sg==
X-CSE-MsgGUID: HmpoFdCYRyaIX9VP7Ap86A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24889804"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 03:38:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] drm/i915: use check_add_overflow() and drop local variants
In-Reply-To: <ZhPqIejwwbEppXUr@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240405202625.2525671-1-jani.nikula@intel.com>
 <ZhPqIejwwbEppXUr@intel.com>
Date: Tue, 09 Apr 2024 13:38:25 +0300
Message-ID: <87h6ga95y6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 08 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Apr 05, 2024 at 11:26:25PM +0300, Jani Nikula wrote:
>> Prefer common check_add_overflow() from overflow.h over the locally
>> rolled versions of it. While check_add_overflow() does require a
>> variable to assign to, unlike add_overflows_t(), it's still better than
>> having multiple versions around.
>> 
>> Cc: Kees Cook <keescook@chromium.org>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
