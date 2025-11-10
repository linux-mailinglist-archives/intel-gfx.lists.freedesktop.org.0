Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA03C48177
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 17:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70BC10E2BB;
	Mon, 10 Nov 2025 16:48:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PhcL2Clt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7501110E03B;
 Mon, 10 Nov 2025 16:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762793327; x=1794329327;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=0KEtLRTNyhlxyzDtHSuAa4y+KfGpeg3Yepra2j12dMs=;
 b=PhcL2CltzImqXlbhdJ52PAeqgBA3Kv1IlIzkhleZUmpL6fqO4AAYEc/w
 mg5bYkXbjaV1bHN1lgPTOpsVkm2FZQONRlpfDlHFBq9lD5LCxN7iKpqzH
 fwui5qlLlhXfZPdXdJGreYMNcdtUi5WDr5HP+uLFWk0blpGqX+Q3m3WXT
 8hMndbwE4ODJnC/+8oz4JVY1I3bKhbYF7w6tkqsDicArm3H5a5UDzEbK7
 alLrhneEP8k1d6JSggOM7JzKKiH7ww/Iv21ayalF8cnL3+RMoRsQt6Ps3
 NhkDC7ES7eotNGwBlIANMvNpMUtAvRFn7Muju7icUw05on/Yp+nhpcrhf A==;
X-CSE-ConnectionGUID: BE7x6oyWTSm3Qy6I+HjaZw==
X-CSE-MsgGUID: d/WbA+cLQNmiDTJQPh21Gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76194001"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="76194001"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:48:47 -0800
X-CSE-ConnectionGUID: xg6OVFAfSOefWOW9QzpS2g==
X-CSE-MsgGUID: KhzeYQ24QhuDJuacldwgyA==
X-ExtLoop1: 1
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 08:48:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jakub Prussak <Jakub.Prussak@synaptics.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Cc: PPD-Penguins <ppdpenguins@synaptics.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Subject: Re: Cache coherency issues when reading from intel Xe buffer.
In-Reply-To: <PH0PR03MB6299572C46068849DBDD3A88E9C2A@PH0PR03MB6299.namprd03.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <PH0PR03MB6299572C46068849DBDD3A88E9C2A@PH0PR03MB6299.namprd03.prod.outlook.com>
Date: Mon, 10 Nov 2025 18:48:42 +0200
Message-ID: <ac533b9a7b0f8aa2bb3a0f037db1a65ac7fc5807@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 06 Nov 2025, Jakub Prussak <Jakub.Prussak@synaptics.com> wrote:
> Hello,
>
> For some time, users of DisplayLink USB-3 docking stations face
> corruptions Ubuntu 24.04 on machines with Intel i915+Xe driver (LENOVO
> IdeaPad Pro 5 16IMH9 in our case)
> Machines using only i915 driver are fine.

AFAICT all IdeaPad Pro 5 16IMH9 models have Meteorlake GPU, and you
should be using i915 driver with that. The attached dmesg only appears
to have the i915 driver anyway. So how's the xe driver related here?

> DisplayLink driver is using evdi kernel
> module(https://github.com/DisplayLink/evdi/blob/main/module) that
> works as drm output slave. It is using drm_prime exported buffers from
> i915 driver.

Mmh, can you reproduce any of this running upstream kernels without
out-of-tree modules? It's highly unlikely anyone from our side would
start debugging scenarios with out-of-tree modules.

> We had checked a way evdi access dma-buf exported buffer, e.g. if it
> is reading it within dma_buf_begin_cpu_access/dma_buf_end_cpu_access.
> 
> Also, we ruled out access to the buffer before all dma_fence's on
> drm_plane are signaled.
> Another approach was to wait on dma_resv resv object from
> drm_gem_object's dma_buf_attachment, again with no luck.
> The issue is reproducible with evdi's evdi_gem_object and generic
> drm_gem_shmem_object implementations of drm_gem_object. Corruptions
> are visible with all compositors - XServer, Gnome/mutter, weston.
> Other kernel module facing this issue is udl.
> Nothing was helpful and we suspect some cache coherency issues.
>
> The problem can be reproduced on the latest kernel on computers with
> new Intel devices, and a lot of our users face this problem
> (https://github.com/DisplayLink/evdi/issues/524). The way to reproduce
> it requires installing EVDI module
> (https://github.com/DisplayLink/evdi), loading it and creating a
> virtual screen (this can be achieved with this sample app:
> https://github.com/jakub-prussak-synaptics/evdipp). Once a virtual
> screen is created, the artifacts should be visible while moving the
> window around on that screen (see the attached picture or user reports
> mentioned earlier). Similar issue appears with devices using UDL
> driver on Intel platform. Attached are device information files and a
> dmesg output when reproducing this issue.

I had a glance at the github issue. First, "new Intel devices" is quite
vague. Which devices exactly? 'lspci -vnn -d :*:0300'. Also we can see
both i915 and xe drivers in some lsmod listings, but there's no info
which drivers are being used with which devices. That's not actionable.

Second, seems to me there are a lot of people having issues with
non-Intel GPUs as well. What makes you say this is related to i915 or xe
drivers?


BR,
Jani.


-- 
Jani Nikula, Intel
