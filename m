Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A814220B27
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:11:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633536EAA2;
	Wed, 15 Jul 2020 11:11:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D2C36EAA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:11:13 +0000 (UTC)
IronPort-SDR: 0uHXzYSD2i7rTs1Sz0EMWBXOZMs7CO+Ns6IB6urdXXEsu67R0RNLXPLTXLJbjy1vmf+n+FwviW
 afpV11YCZ3jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="128686978"
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="128686978"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 04:11:12 -0700
IronPort-SDR: /bxQx4WT0UA3/CWG88WKI3nqwdQikt7XazKTArTQA3di9onUgurjkPR2NzqyMStt8zxZ+9L4F4
 8zp5gebM2uMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,355,1589266800"; d="scan'208";a="308217267"
Received: from unknown (HELO [10.252.47.234]) ([10.252.47.234])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2020 04:11:11 -0700
To: intel-gfx@lists.freedesktop.org
References: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6f8e6d8b-291c-e744-c569-9307cc22b493@intel.com>
Date: Wed, 15 Jul 2020 14:11:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200708131751.334457-1-lionel.g.landwerlin@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v12 0/3] drm/i915: timeline semaphore support
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

Ping?

On 08/07/2020 16:17, Lionel Landwerlin wrote:
> Hi all,
>
> This is resuming the work on trying to get timeline semaphore support
> for i915 upstream, now that some selftests have been added to
> dma-fence-chain.
>
> There are a few fix from the last iteration and a rebase following the
> changes in the upstream execbuf code.
>
> Cheers,
>
> Lionel Landwerlin (3):
>    drm/i915: introduce a mechanism to extend execbuf2
>    drm/i915: add syncobj timeline support
>    drm/i915: peel dma-fence-chains wait fences
>
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 333 +++++++++++++++---
>   drivers/gpu/drm/i915/i915_drv.c               |   3 +-
>   drivers/gpu/drm/i915/i915_getparam.c          |   1 +
>   include/uapi/drm/i915_drm.h                   |  65 +++-
>   4 files changed, 342 insertions(+), 60 deletions(-)
>
> --
> 2.27.0


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
