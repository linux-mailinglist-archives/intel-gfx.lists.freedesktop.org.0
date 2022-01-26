Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C54BC49D581
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04605891DA;
	Wed, 26 Jan 2022 22:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40F189259
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643236520; x=1674772520;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RFgowNIi/5+Vth7Q3TAi6n9yR3FFYVhw1zFDWzT0DS0=;
 b=Js05u0eCB7nu43SogGBR39uzgvyID5MTkS6KaWP5rXEyKxe0cD1h38GS
 L2XYjYJafQ4lKd32xB74+P4O0gNFOv+zqxgpiR/A14oPfOfHPLka0LyrK
 8rHNZFCh8PBIWDkWm/Mu3/ajiOL11KwdN/vjzGkEa3h1n5b827tcRe1OU
 hYvYbILHa0FPYesDjjqJU2Rs+7x4DKOvKdKaQuFgU3zZIhI9ks0BJctcm
 ra0FhIOibkOi73j5MuBHFoYU1qa99YWrqXPzXeN564zyAgUs8N03wEIaV
 Fi75UQ8ckJZeaLt8HZXxc1gYW0FsEnlqRXGlEqBXnbh8fVvErCd3f0qax w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="309982233"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="309982233"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:35:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="535363277"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:35:20 -0800
Date: Wed, 26 Jan 2022 14:35:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220126223519.q4oii4mdvwhpfiue@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-7-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915: Only include i915_reg.h
 from .c files
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 24, 2022 at 06:08:26PM -0800, Matt Roper wrote:
>Several of our i915 header files, have been including i915_reg.h.  This
>means that any change to i915_reg.h will trigger a full rebuild of
>pretty much every file of the driver, even those that don't have any
>kind of register access.  Let's delete the i915_reg.h include from all
>headers and include an explicit include from the .c files that truly

if you're going to respin this or while applying, it may be good to
reword this sentence as we have too many "include".



Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
