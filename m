Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5DA8D6261
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 15:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E224710E60C;
	Fri, 31 May 2024 13:07:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHs+GZFX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA68010E60C
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 13:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717160830; x=1748696830;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=kuB3ANG4t3zAuwUgBD30MndL80HOQ8cxqMosXHh4MPU=;
 b=iHs+GZFXR4rgfe03WIvTAmZOG6ePj6crwpOfh1rUoAumMULXDXZKtgRm
 lIT5RzdVFYazViXFD+hW03BtG063LaiWSbtGOR9K/aI+J7MTugpTP6g7m
 XWoFluViTJYP29KoyggjBtWRGh0oBdKpK5HUCmUAalqIAEEJrP9XhAzkx
 0tDc8APZ9OEj25Xs+kH+m1C6X65OEUjmm7DnugQNIvK1QBvcFSppI5Lfb
 exfUeMYQ+BchJrmi32bGZbKDJ6XIFdJky1ujy5fd89lr0Q4OkUiMR3NFT
 qJPSS4RzqoLCTOpB1Wwc4VXx56SvP3PD5hC7/N1t5DYPkd0/kft9UvK2P A==;
X-CSE-ConnectionGUID: sST/aBsgRgqWthr9XCg4oA==
X-CSE-MsgGUID: MFJEQbcQTJmjHzk590JMjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24824403"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24824403"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 06:07:09 -0700
X-CSE-ConnectionGUID: qG6v9QjyQdOnFv5BHM3Eiw==
X-CSE-MsgGUID: h71ORjlbSAqlMU2RsUMwKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36183691"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 06:07:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/7] drm/i915: Document which platforms have which CRC
 registers
In-Reply-To: <20240531115342.2763-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240531115342.2763-1-ville.syrjala@linux.intel.com>
 <20240531115342.2763-6-ville.syrjala@linux.intel.com>
Date: Fri, 31 May 2024 16:07:04 +0300
Message-ID: <87sexydtaf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 31 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Sprinkle some comments around to indicate which CRC registers
> are valid for which platforms.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


--=20
Jani Nikula, Intel
