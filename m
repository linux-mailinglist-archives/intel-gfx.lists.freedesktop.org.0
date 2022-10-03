Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8595A5F32ED
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 17:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A00210E408;
	Mon,  3 Oct 2022 15:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC68E10E41D;
 Mon,  3 Oct 2022 15:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664812423; x=1696348423;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gC8m0zYeZVlKkkTc8qqST/RNP20W4HgOjyiGybIErxQ=;
 b=gIOYu2Istv3h1j1hLf+z9ra/8wCpfcG4vnRqaJL0ppZpsW1HwjZBNfPp
 sWIfRYKWv/zNFlF/5OD0EnsWWbQgoqAtchxD8g/DlNVj+QbB9sLOxG1x2
 XMGoSuc2dfslmN4T/uzP3elRavGhuzjc7P+ECCtro+Zdp3ggkpuVRINlQ
 JaXXesXdN1X2mcdcO//fMGO9XH+WTS373wOXkkYuQMacttNX+2DhlBaNG
 MP1fFsF2f63Mrh41iw8X2A5AdhBrs26L2g50S11nmT7k1T/lK9g9edZrI
 QQpMUYIl+rVYoWkIazfBrJf8KP8uZNd17hTMgDzJ3LlXzjXcumL1qpthY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304182582"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="304182582"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 08:53:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="618774563"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618774563"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.81])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 08:53:40 -0700
Date: Mon, 3 Oct 2022 17:53:37 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Message-ID: <YzsFgcxgwHGgqvW0@ashyti-mobl2.lan>
References: <20221003061245.12716-1-niranjana.vishwanathapura@intel.com>
 <20221003061245.12716-11-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221003061245.12716-11-niranjana.vishwanathapura@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 10/17] drm/i915/vm_bind: Abstract out
 common execbuf functions
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 thomas.hellstrom@intel.com, matthew.auld@intel.com, daniel.vetter@intel.com,
 christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Niranjana,

[...]

> +	for_each_child(ce, child) {
> +		err = intel_context_pin_ww(child, ww);
> +		GEM_BUG_ON(err);	/* perma-pinned should incr a counter */
> +	}
> +
> +	for_each_child(ce, child) {
> +		err = eb_pin_timeline(child, throttle, nonblock);
> +		if (err)
> +			goto unwind;
> +		++i;
> +	}

any reason for having two separate for_each_child here?

Andi

> +	err = eb_pin_timeline(ce, throttle, nonblock);
> +	if (err)
> +		goto unwind;
> +
> +	return 0;
> +
> +unwind:
> +	for_each_child(ce, child) {
> +		if (j++ < i) {
> +			mutex_lock(&child->timeline->mutex);
> +			intel_context_exit(child);
> +			mutex_unlock(&child->timeline->mutex);
> +		}
> +	}
> +	for_each_child(ce, child)
> +		intel_context_unpin(child);

[...]
