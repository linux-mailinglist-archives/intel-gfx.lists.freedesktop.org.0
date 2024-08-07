Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CECB94AA7F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C97110E554;
	Wed,  7 Aug 2024 14:41:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CbxOR9Ui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A8510E554
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 14:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723041717; x=1754577717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uF0P1/0prNT0cHAr34E+GZcqsXZKfGM/b/Bf3mVRmWQ=;
 b=CbxOR9UilHiF51lT8E5dmHYnqGNZU7ql/PH58kCh8jKNDhP+A8sXYbNe
 ZruIb/H+CRI/kfpk+Jr115B+tJV13LWTAN5AcjqC7Z2Kv4syUszFQp/f9
 NNlMD9dEQabnhdb48vUPPsO9wzhw1+rquEZzbVgazbLZgt3RHKq7BWhI5
 5EQsgfo0A4z9Pi4LYlWpNfxf+HLOAgGPd27UsNb8z6/NPpOKkUlYjsCYe
 AQp4JR6uCJF0ZuBCuLtuVnSIsr3FSogepMdAV6cn0ot8hWedsJ88h/WrK
 SbPrAj67qse60K0e/88xKMo8YBFJq9TDOvv6Y7Jw2l1+P4i+f+j/ZpzcF Q==;
X-CSE-ConnectionGUID: TOIJLhC7SXWnycSZ5QV89Q==
X-CSE-MsgGUID: 12OXrgqjQBiLLGFemx3fAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="21263216"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="21263216"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:41:56 -0700
X-CSE-ConnectionGUID: llJqtkrvQeWEHqRenwAiVw==
X-CSE-MsgGUID: r/DT/CzjRG6sDsq8VWK8UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="87799756"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.8])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:41:54 -0700
Date: Wed, 7 Aug 2024 15:41:50 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: remove a few __i915_printk() uses
Message-ID: <ZrOHrpyB_3kePuSq@ashyti-mobl2.lan>
References: <cover.1722951405.git.jani.nikula@intel.com>
 <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <82857a0c04d3c11ca6758f05c13a3cec4f1a2f01.1722951405.git.jani.nikula@intel.com>
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

Hi Jani,

On Tue, Aug 06, 2024 at 04:38:30PM +0300, Jani Nikula wrote:
> __i915_printk() does nothing for notice/info levels. Just use the
> regular drm_notice() and drm_info() calls.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

With the commit log improvements suggested by Tvrtko and
yourself:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
