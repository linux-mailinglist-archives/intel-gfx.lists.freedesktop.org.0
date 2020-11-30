Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154762C850B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178C989C7F;
	Mon, 30 Nov 2020 13:24:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B04289C05
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:24:41 +0000 (UTC)
IronPort-SDR: iMuPRKankDfSQnUA+j/2wVLmutAnC/LcZGFxJb9XcplcGlMhqomyoLqcskNi6BCxxtJ+3o73y8
 hKA5EQOtk+EA==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="160403907"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="160403907"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 05:24:39 -0800
IronPort-SDR: qc5hfKEJ9+ASNA+8MZXJebAcNis5kw2bhaz3hO05x0dfywpgz+y9+cGYWvzVgxUn+Qzs7zSUM8
 kY39t4536CAw==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="538593788"
Received: from ekiperwa-mobl.ger.corp.intel.com (HELO [10.252.22.113])
 ([10.252.22.113])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 05:24:38 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201127195334.13134-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <099bfb02-f13e-4bab-659f-c3e847aeeed3@intel.com>
Date: Mon, 30 Nov 2020 13:24:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201127195334.13134-1-chris@chris-wilson.co.uk>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Differentiate oom failures
 from invalid map types
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

On 27/11/2020 19:53, Chris Wilson wrote:
> After a cursory check on the parameters to i915_gem_object_pin_map(),
> where we return a precise error, if the backend rejects the mapping we
> always return PTR_ERR(-ENOMEM). Let us also return a more precise error
> here so we can differentiate between running out of memory and
> programming errors (or situations where we may be trying different paths
> and looking for an error from an unsupported map).
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
