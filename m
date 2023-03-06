Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A90866ACFA4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 21:58:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3A710E478;
	Mon,  6 Mar 2023 20:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B0F10E256;
 Mon,  6 Mar 2023 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678136302; x=1709672302;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h6cgX8CyjSm/MG4jqDf8fqwxmN9I9o3Ae7dthw4Zd5U=;
 b=CjJmGNQHLwUjJM05N//qKMiLf1w93ShUEjBoUwr1MwmCKsTtBhWbB9+i
 uhv4KgqEJ4+Iq61VUTJuiDToGo1U2lhYB2keDcKk6bGlvHi7aB/Zmz+k6
 l760s/sD4NJiedBlEY8i5iUK6Mh4syjKSTtsTG6H37JFxscUQ6jMr24c2
 BDDaURx5XllqH5rzVvmHQhZf2uZYSKxkTeUpgcTRpBnDcpjW6OnPow7+k
 aEh7arXUeYCsVvUxSNxf/yKJ2c1Yu/rLIrlrucvOcUxt6ate/AHogLRz/
 2bgVOfjPfagsRolM/NXJBCECxdD36H9nD5iqa6sjwlU/hUQdUEGG+kST7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="323981720"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="323981720"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 12:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="708795400"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="708795400"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 06 Mar 2023 12:58:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 22:58:18 +0200
Date: Mon, 6 Mar 2023 22:58:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ZAZT6jJlsiTF1A5a@intel.com>
References: <20230306141638.196359-1-maarten.lankhorst@linux.intel.com>
 <edae44735190c4d5fbbe8959f999ad7ca65f3677.camel@intel.com>
 <073f5ef3-523a-2997-c7e9-771cce8f4c24@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <073f5ef3-523a-2997-c7e9-771cce8f4c24@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/xe/display: Do not use i915
 frontbuffer tracking implementation
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 06, 2023 at 09:23:50PM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> On 2023-03-06 16:23, Souza, Jose wrote:
> > On Mon, 2023-03-06 at 15:16 +0100, Maarten Lankhorst wrote:
> >> As a fallback if we decide not to merge the frontbuffer tracking, allow
> >> i915 to keep its own implementation, and do the right thing in Xe.
> >>
> >> The frontbuffer tracking for Xe is still done per-fb, while i915 can
> >> keep doing the weird intel_frontbuffer + i915_active thing without
> >> blocking Xe.
> > Please also disable PSR and FBC with this or at least add a way for users to disable those features.
> > Without frontbuffer tracker those two features will break in some cases.
> 
> FBC and PSR work completely as expected. I don't remove frontbuffer 
> tracking; I only remove the GEM parts.
> 
> Explicit invalidation using pageflip or CPU rendering + DirtyFB continue 
> to work, as I validated on my laptop with FBC.

Neither of which are relevant to the removal of the gem hooks.

Like I already said ~10 times in the last meeting, we need a proper
testcase. Here's a rough idea what it should do:

prepare a batch with
1. spinner
2. something that clobbers the fb

Then
1. grab reference crc
2. execbuffer
3. dirtyfb
4. wait long enough for fbc to recompress
5. terminate spinner
6. gem_sync
7. grab crc and compare with reference

No idea what the current status of PSR+CRC is, so not sure
whether we can actually test PSR or not.

-- 
Ville Syrjälä
Intel
