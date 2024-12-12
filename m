Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543B99EDDE1
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 04:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDDC10E059;
	Thu, 12 Dec 2024 03:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKzpSxZD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8035E10E059
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 03:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733973759; x=1765509759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=weGTm4xAJhJj0AS70uuh3I1gFhgAH9BigPD9X1NlIEI=;
 b=jKzpSxZDkgcRhnAFJQha0fjxmY0+zs7EbuMJ2EMWuVCp9ePnim9ELvqO
 wGnMxX0WhAa5QxTj5SiFP4k7L1978ChCci9ZuPfszoyCYN8gZ94aWJoH1
 jSyIS3h3m46O2X9W+q7USkgxZB0rhgQOwMAKYtqcFs6vtlzGUO8KUPd+m
 NehuyVgDAbqOlrs2+cxuLCzRPU3JERn8fOu6VpGN9VcrbI/fw9AKuRKdI
 OtVGir31wEmsQn6G1xVE5LRD2vSLYL8x3DrhRWEqaqRwDXxtCXrV9Eyl9
 qrxV4SKIvFQGS+k7oKn1ZzKgYm+tG98e7bwkdCiIc/cQ8/t9xYDtAtObf A==;
X-CSE-ConnectionGUID: l3kGX4RcQ/GFuDzKa6MNsg==
X-CSE-MsgGUID: gfmKGVezQPW4rh8KLVC52Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="33691231"
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="33691231"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 19:22:38 -0800
X-CSE-ConnectionGUID: vCmW7qyDQh+peobzmp0o0A==
X-CSE-MsgGUID: ATYmDJHxSWiBhdYa+xsLtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="100918351"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 19:22:36 -0800
Date: Thu, 12 Dec 2024 05:22:32 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v4 0/4] Implement Wa_14022698537
Message-ID: <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
 <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan>
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

On Thu, Dec 12, 2024 at 12:40:07AM +0100, Andi Shyti wrote:
> Hi Raag,
> 
> > Raag Jadav (4):
> >   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
> >   drm/i915/dg2: Introduce DG2_D subplatform
> >   drm/i915: Introduce intel_cpu_info.c for CPU IDs
> >   drm/i915/dg2: Implement Wa_14022698537
> 
> merged to drm-intel-next.

Thanks, appreciate it.

Andy usually picks the cover letter as well, we don't do that here?

Raag
