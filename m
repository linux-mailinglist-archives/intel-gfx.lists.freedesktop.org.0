Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D3CB0896B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 11:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AEF10E2F8;
	Thu, 17 Jul 2025 09:38:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGNNdho+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE2B10E2F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 09:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752745092; x=1784281092;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yY9rvf6zGlEh7pTDb+ef4H3q/ebarE2TbAR8hArvwE8=;
 b=kGNNdho+aSkfUImwflO+kVhzgtJMEnFbRxfwzH/QbpVXCTKJ4i2GuIHM
 QwpRA1UW7jSQk0MqxIvyn2qyTVS1lg6S5Rn1NGA5CVj+3hkqDp++B7PRc
 WHXT+D9OQ+nJMqdPsVL7DHHMTwSesB+fMTnjxk46va/lqTR22Qm6dyqp2
 gLqBOp4wlypnBqbjdpE/iNyVZyM4s4RvLudhTvP/FmvLlkiMGj00hkyW1
 7AB84rRo0Vcv+W4vZ9Owikl6/+xGwNJmvtpRSTuiXgQGeRfG2e/F7HIXg
 aV78PQWb06Cj2yxjonDOtVdA7llyWVrmjw2nBib9EA55MsTp7T7iIxVN5 A==;
X-CSE-ConnectionGUID: Mf4oM7FqRcKGI2/Ok/RFxQ==
X-CSE-MsgGUID: rdfAIscxSXeQ3oVVNXmZNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55162314"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="55162314"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 02:38:12 -0700
X-CSE-ConnectionGUID: /RW53WwYSsekVUYQqb8dZw==
X-CSE-MsgGUID: 8fDHeLqfRUWPxiHIyR16tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="157817418"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.117])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 02:38:11 -0700
Date: Thu, 17 Jul 2025 11:38:08 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, intel-gfx@lists.freedesktop.org,
 andi.shyti@linux.intel.com, krzysztof.karas@intel.com
Subject: Re: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
Message-ID: <aHjEgLQVfuxqv9CV@ashyti-mobl2.lan>
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-2-sebastian.brzezinka@intel.com>
 <htvnnxraq3dichhoa22cvvhxh4qzv3wyg7gyxxdwn7i7gye37a@hig3vattgvdh>
 <DBDK1X31YM2T.1DZCWWEZYALZI@intel.com>
 <cetvl5iy2fhmaiwkr7lbsrs24afdke76vhcrxvdepdqvdujhvm@bc7ntlhdcnhd>
 <DBE65MGKVYSZ.3BBT6U2CJN2EW@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DBE65MGKVYSZ.3BBT6U2CJN2EW@intel.com>
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

> >> >>  out:
> >> >>  	reloc_cache_reset(&eb->reloc_cache, eb);
> >> >> -	return remain;
> >> >> +	return ret;
> >> >
> >> > now, this function is also returning a different value, not the
> >> > remaining bytes anymore but 0 on success and -error on failure.
> >> > Is this something you wanted?
> >> Function still returning the same value as before, but now we
> >> don't reuse variable. Regardless, the caller treats any return
> >> value the same. Still, the return value is either 0, an error,
> >> or an offset, just like before.
> >
> > Even when this is true:
> Yep, the funny part is that you have an unsigned value for offset,
> but it's cast to signed to check for errors and return, there was
> no actual offset in that variable, just an error code,and I didn’t
> really modify it, just used the 'ret' variable.

oh, yes, yes, sorry, I completely misread it (or actually
distractedly read it). You are right here. Besides all functions
using this are indeed using it as success/error and this would
have been my next question :-)

Andi
