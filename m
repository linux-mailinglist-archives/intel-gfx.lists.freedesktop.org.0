Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 190364BC3B9
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 01:51:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3B110EADB;
	Sat, 19 Feb 2022 00:51:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F027410EAD1;
 Sat, 19 Feb 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645231888; x=1676767888;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QrzdkA16/TQxhvFmf8OVI8YSXhqMj8VDcyeZ6izBl6U=;
 b=a5AX0UwZcHHe098BGqTT06OvqUOp35J9CdX/5OSLZwkt/7oE9tSEs/mi
 4f5hGahT0gfjH/yX/eCsq+DrZSpLjbnU2ht+esL1pZ7S69c2avmPRqZrk
 KXtuMoziG7icVJF12dwe3jz9byVNht+ZENnknlA2etXW92FFuqIgcAmcZ
 HYtZ/0sCM1CSXiNAsIlWgyRrYy/olj3IrrF0Fbz+gzOkiFIS8Mvp4QHN2
 TA+2UawIEQDULjH1Emo+JhME1T8PHLEMxZbZlSNofM6LzH9mfdMQO3Wt8
 hQLP0ldqdKA3b3HctQvVKFXfziOQ0W/L0vka+knXu2Oqj8kmVUdtinwTi Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="231223960"
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="231223960"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 16:51:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,380,1635231600"; d="scan'208";a="778168112"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 16:51:27 -0800
Date: Fri, 18 Feb 2022 16:51:27 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220219005127.GI34157@unerlige-ril-10.165.21.154>
References: <20220106165536.57208-1-tvrtko.ursulin@linux.intel.com>
 <20220106165536.57208-8-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220106165536.57208-8-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Expose client engine
 utilisation via fdinfo
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Chris Healy <cphealy@gmail.com>, David M Nieto <David.Nieto@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 06, 2022 at 04:55:36PM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Similar to AMD commit
>874442541133 ("drm/amdgpu: Add show_fdinfo() interface"), using the
>infrastructure added in previous patches, we add basic client info
>and GPU engine utilisation for i915.
>
>Example of the output:
>
>  pos:    0
>  flags:  0100002
>  mnt_id: 21
>  drm-driver: i915
>  drm-pdev:   0000:00:02.0
>  drm-client-id:      7
>  drm-engine-render:  9288864723 ns
>  drm-engine-copy:    2035071108 ns
>  drm-engine-video:   0 ns
>  drm-engine-video-enhance:   0 ns
>
>v2:
> * Update for removal of name and pid.
>
>v3:
> * Use drm_driver.name.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Cc: David M Nieto <David.Nieto@amd.com>
>Cc: Christian König <christian.koenig@amd.com>
>Cc: Daniel Vetter <daniel@ffwll.ch>
>Cc: Chris Healy <cphealy@gmail.com>
>Acked-by: Christian König <christian.koenig@amd.com>
>---
> Documentation/gpu/drm-usage-stats.rst  |  6 +++
> Documentation/gpu/i915.rst             | 27 ++++++++++
> drivers/gpu/drm/i915/i915_driver.c     |  3 ++
> drivers/gpu/drm/i915/i915_drm_client.c | 73 ++++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_drm_client.h |  4 ++
> 5 files changed, 113 insertions(+)
>
>diff --git a/Documentation/gpu/drm-usage-stats.rst b/Documentation/gpu/drm-usage-stats.rst
>index c669026be244..6952f8389d07 100644
>--- a/Documentation/gpu/drm-usage-stats.rst
>+++ b/Documentation/gpu/drm-usage-stats.rst
>@@ -95,3 +95,9 @@ object belong to this client, in the respective memory region.
>
> Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
> indicating kibi- or mebi-bytes.
>+
>+===============================
>+Driver specific implementations
>+===============================
>+
>+:ref:`i915-usage-stats`
>diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
>index b7d801993bfa..29f412a0c3dc 100644
>--- a/Documentation/gpu/i915.rst
>+++ b/Documentation/gpu/i915.rst
>@@ -708,3 +708,30 @@ The style guide for ``i915_reg.h``.
>
> .. kernel-doc:: drivers/gpu/drm/i915/i915_reg.h
>    :doc: The i915 register macro definition style guide
>+
>+.. _i915-usage-stats:
>+
>+i915 DRM client usage stats implementation
>+==========================================
>+
>+The drm/i915 driver implements the DRM client usage stats specification as
>+documented in :ref:`drm-client-usage-stats`.
>+
>+Example of the output showing the implemented key value pairs and entirety of
>+the currenly possible format options:

s/currenly/currently/

lgtm, for the series 

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh


