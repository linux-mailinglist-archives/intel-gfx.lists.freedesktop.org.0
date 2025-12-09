Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C591CAF3AD
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 09:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA6F210E48B;
	Tue,  9 Dec 2025 08:01:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjjbE9ho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E7510E48B
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Dec 2025 08:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765267260; x=1796803260;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0i0t+fXtrR742ErZR9sdstAyycvG7rjQvub61Y3IxLw=;
 b=PjjbE9hoBTSG8NxoCiqK7y+VjXZCMw5iMEjRY5NVG5IbGaHcEOc13oFc
 P7XWd9YqsreQ2GRvksqAwu8f+qiB+EKjtFRMbCNAK+yF62RpgB59d0rTQ
 0h3dA+VZPO4PwsBDWrIQSnmUZS9Q5H0WXl1CSko64IARlKdhhbp8xexl0
 ixfCUdWbrpxJwz4Est2yjN5JCgIhq4/vLdG/b4ZX2Jxj1ulPRA0ppTBBn
 zJbeesPalQC9Cq2GYxqbl2q7uI5iB+KHFe64EAyceAaDe7O2hN/hLAgeC
 iUMZroKScdri2Wk2N0utIll8YWb+jBCA5DcgP942gsL8uPNINUGuZ4kl/ w==;
X-CSE-ConnectionGUID: ycTD54O7Q2u6prqg2D6BtQ==
X-CSE-MsgGUID: rYjXNN7jSiSYQ1g0ASy67g==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="84627316"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="84627316"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:00:59 -0800
X-CSE-ConnectionGUID: igrm1nvVRruEpw/M4157pA==
X-CSE-MsgGUID: 6N8G6sR+RO6VMAysMof6ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="200602719"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:00:58 -0800
Date: Tue, 9 Dec 2025 10:00:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 3/3] drm: Avoid undefined behavior on u16
 multiplication in drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Message-ID: <aTfXN-N8apskuGLE@intel.com>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-4-krzysztof.karas@intel.com>
 <aTcHvk1QhPNfKT89@intel.com>
 <rn5ehfx4ujqwm3kbu3ryvtayinmmfbgdzaithxbkrrsg2onbco@nw4bkwywhrws>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rn5ehfx4ujqwm3kbu3ryvtayinmmfbgdzaithxbkrrsg2onbco@nw4bkwywhrws>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Dec 09, 2025 at 07:47:09AM +0000, Krzysztof Karas wrote:
> Hi Ville,
> 
> On 2025-12-08 at 19:15:42 +0200, Ville Syrjälä wrote:
> > On Thu, Dec 04, 2025 at 02:38:27PM +0000, Krzysztof Karas wrote:
> > > vpos (int) field multiplied by crtc_htotal (u16) may cause
> > > implicit promotion of the latter and overflow the result causing
> > > undefined behavior.
> > 
> > How is that undefined?
> Good question. It is well defined in C standard to wrap silently
> to fit in the new type, so operations may complete. I think this
> might have been caused by working with static analyzer at the
> time, which imprinted word "undefined" in my brain, so it made
> sense to use it here as well.
> 
> I believe "unexpected" may better describe the problem.
> I'll change that in the v6 of this series.

If you really want it then at least make it a (int) to match the 
other types in the expression. But personally I'd just drop the whole
thing since this is just normal C, and this does nothing to avoid any
overflows (which there won't be anyway unless some other code is super
buggy and returns nonsense hpos/vpos values).

-- 
Ville Syrjälä
Intel
