Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1288DA4EF01
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 22:04:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8248810E6AF;
	Tue,  4 Mar 2025 21:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DUufpyI0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD4510E6B5
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 21:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741122259; x=1772658259;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5tyemKFBMKf+Xq+mKeKHeMxv8AOYPNz410953SFOeUM=;
 b=DUufpyI07Ebzl1y8eqH3kQidSBZUx9uO6KD/UhcUVwM91kf9raO07O7r
 j4JMxuPj6O8mLxAYXEsRV+RDDs5XzOG1T1eBNVhT9nuJ3q/OJwppl1uDp
 /iyM8lKAuNp4HdTV4OyaNxDc2FjIrlUsZlAT2kUkpRiiUjNv4YG33YRuZ
 U0WUFJzYm37rWKuaRfCEm58iedlRVbhnondkDnT6a8fhoXRXN8sg0PfRC
 CKdQYVjv6nTKDIiZ0Dlzyxm2eyY0Y0qCitjmLqyKTpvomCWAeETfIJM35
 L7hP6FvW4Vat4w06NKz+RPSn8gUWe6SsI/jnjxwZYGs7sweZerijqhllv A==;
X-CSE-ConnectionGUID: 5UCKwKPRS2KBcAFiM2rsUw==
X-CSE-MsgGUID: t/sgOIrLSCi+HW+vmft2tQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41242492"
X-IronPort-AV: E=Sophos;i="6.14,221,1736841600"; d="scan'208";a="41242492"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 13:04:19 -0800
X-CSE-ConnectionGUID: Zqni6nY+QvGV7WPv+h3XPw==
X-CSE-MsgGUID: GcyvsI9ZSqy9EYUSMjmBpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,221,1736841600"; d="scan'208";a="119172018"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 13:04:17 -0800
Date: Tue, 4 Mar 2025 22:04:14 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/12] drm/i915: some GT register fixes and cleanups
Message-ID: <Z8dqzgKy7hx4gHJ7@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
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

Hi Ville,

> Ville Syrjälä (12):
>   drm/i915: Bump RING_FAULT engine ID bits
>   drm/i915: Relocate RING_FAULT bits
>   drm/i915: Use REG_BIT() & co. for ring fault registers
>   drm/i915: Document which RING_FAULT bits apply to which platforms
>   drm/i915: Introduce RING_FAULT_VADDR_MASK
>   drm/i915: Extract gen8_report_fault()
>   drm/i915: Use REG_BIT() & co. for CHV EU/slice fuse bits
>   drm/i915: Reoder CHV EU/slice fuse bits
>   drm/i915: Use REG_BIT() & co. for BDW+ EU/slice fuse bits
>   drm/i915: Reoder BDW+ EU/slice fuse bits
>   drm/i915: Use REG_BIT() & co. for gen9+ timestamp freq registers
>   drm/i915: Reoder gen9+ timestamp freq register bits

merged to drm-intel-gt-next.

Thanks,
Andi
