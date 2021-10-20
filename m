Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E22E434E6B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 16:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192366E9C1;
	Wed, 20 Oct 2021 14:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADEB86E9B7;
 Wed, 20 Oct 2021 14:58:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315002574"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="315002574"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 07:58:46 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="532712994"
Received: from mmazarel-mobl1.ger.corp.intel.com (HELO [10.249.254.139])
 ([10.249.254.139])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 07:58:44 -0700
Message-ID: <b5757f6b-a55b-61ae-883f-aeae7757e67a@linux.intel.com>
Date: Wed, 20 Oct 2021 16:58:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>
References: <20211018174508.2137279-1-matthew.auld@intel.com>
 <20211018174508.2137279-7-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211018174508.2137279-7-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: expand on the kernel-doc for
 cache_dirty
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


On 10/18/21 19:45, Matthew Auld wrote:
> Add some details around non-LLC platforms and cflushing, when dealing
> with the flush-on-acquire, which is potentially security sensitive.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 11 ++++++++
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  | 27 +++++++++++++++++++
>   2 files changed, 38 insertions(+)

Lgtm.

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>


