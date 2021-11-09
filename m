Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6BE44B1DB
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 18:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF2A6E437;
	Tue,  9 Nov 2021 17:19:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 582576E3C1;
 Tue,  9 Nov 2021 17:19:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="229964406"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="229964406"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 09:19:27 -0800
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="470051535"
Received: from mbodox-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.139.13])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 09:19:27 -0800
Date: Tue, 9 Nov 2021 09:19:26 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20211109171926.vrb5juvp64mv65b4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211109121759.170915-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211109121759.170915-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use per device iommu check
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
 Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 09, 2021 at 12:17:59PM +0000, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>On igfx + dgfx setups, it appears that intel_iommu=igfx_off option only
>disables the igfx iommu. Stop relying on global intel_iommu_gfx_mapped
>and probe presence of iommu domain per device to accurately reflect its
>status.

nice, I was just starting to look into thus but for another reason: we
are adding support for other archs, like aarch64, and the global from here
was a problem

should we change drivers/gpu/drm/i915/Kconfig.debug to stop selecting
CONFIG_INTEL_IOMMU and CONFIG_INTEL_IOMMU_DEFAULT_ON?


thanks
Lucas De Marchi
