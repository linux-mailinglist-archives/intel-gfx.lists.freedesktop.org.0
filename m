Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0014C7D4FC3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750D810E366;
	Tue, 24 Oct 2023 12:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28A410E366
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150639; x=1729686639;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=B+XrKHbOoP/wlLQQMa+KylgjiPIxDoC3RWBJQj8ClrQ=;
 b=Op1Eskg/mSVa6ePi8gGKJvC7ko6/Y5L3F19UFPAOn+wFBi3RQGb4Uj2z
 z9FCYJqqWw4/fCM9Adpsc1fliz8LSPMpaVNIPUlvHmfArnFlvVZNkzLxH
 MNzlDzm6vxwJKYGFIybJPwOiD5aD5mY5ESJ6aoML6t7n8fRNwtvwp6E9c
 kz8zfA7OJOCg7sP0zft4SO2C3QYBPNAav0eOS5jE2+Ziv7gPhXgI3YJE5
 OhBw0bloqxVyZPiIZ1catiHbahMZj4A/9nhJSsi2tkxq7LmHATw/pQZeS
 1BRCIbec1xJSQYYR2zNb9BNfzraS2twsnh+vBJturGjua6DPTqez7GdrF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="385939033"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="385939033"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="6434938"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:30:31 -0700
Date: Tue, 24 Oct 2023 14:30:35 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZTe46z_1yTydolYw@ashyti-mobl2.lan>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023150256.438331-3-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/pmu: rearrange hrtimer pointer
 chasing
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

Hi Jani,

On Mon, Oct 23, 2023 at 06:02:56PM +0300, Jani Nikula wrote:
> Do the logical step of first getting from struct hrtimer to struct
> i915_pmu, and then from struct i915_pmu to struct drm_i915_private,
> instead of hrtimer->i915->pmu.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
