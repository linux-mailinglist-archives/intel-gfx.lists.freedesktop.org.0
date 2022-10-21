Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCA1607B4D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 17:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8036810E30C;
	Fri, 21 Oct 2022 15:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8283D10E1E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 15:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666366788; x=1697902788;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MbpkKgkQJmmZ9GL1zm7Fup3Vb4DQtZP3lZ5f7YYZkDo=;
 b=L2hivuTp6onA19N4RpIs37mk7j/mnV5oR0C80t5TZCH11e/ELJv65S79
 2bhXztYm/I6OpX/27+O67vhl74YIdTOFVVW/Ns83JTbyjoWivF0trxjby
 9rvr6iBXXWiM7rFoNYcPljLuiAvUH15GvHBQcI2Q9J/Y09bc1oIac4lUw
 MUwsRuMfl+dO4ysNpyY1jRN+M96Qw2eZNwXUR2WruJs7uizSN/JRNiOMH
 3qrGlkgn5mKEWIpgoizJlFG+LwzH5O+Modp7ivqgIYa1lwAgNnt6mvhzf
 YgcaxSEmkm1F34hiVwE6d6Uk6vTvpAlx0zCpunugXxKlXASZNnGsxiczD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="308716818"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="308716818"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 08:39:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="625385265"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="625385265"
Received: from apierro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.37.148])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 08:39:34 -0700
Date: Fri, 21 Oct 2022 17:39:32 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y1K9NCH8hiqaS0Zc@ashyti-mobl2.lan>
References: <20221013133001.3639326-1-andrzej.hajda@intel.com>
 <20221013133001.3639326-3-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013133001.3639326-3-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: add
 igt_vma_move_to_active_unlocked
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

[...]

> +static inline int __must_check
> +igt_vma_move_to_active_unlocked(struct i915_vma *vma, struct i915_request *rq,
> +				unsigned int flags)
> +{
> +	int err;
> +
> +	i915_vma_lock(vma);
> +	err = _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> +	i915_vma_unlock(vma);
> +	return err;
> +}
> +

there are calls to i915_vma_move_to_active also outside
selftests, why not having a i915_move_to_active_unlocked() in
i915_vma.h?

Besides here you break also the bisect, because between patch 1
and 2 the i915_move_to_avtive would also call
i915_request_await_object(). Right or am I getting confused?

Andi

[...]
