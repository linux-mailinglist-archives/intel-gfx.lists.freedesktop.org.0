Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FB13F0734
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 16:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C7736E910;
	Wed, 18 Aug 2021 14:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9C86E910
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 14:55:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="238440164"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="238440164"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 07:55:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="521081515"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 18 Aug 2021 07:55:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Aug 2021 17:55:21 +0300
Date: Wed, 18 Aug 2021 17:55:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YR0fWUHZk9/4o33s@intel.com>
References: <20210818004216.220279-1-jose.souza@intel.com>
 <20210818004216.220279-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210818004216.220279-8-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/display/skl+: Drop frontbuffer
 rendering support
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

On Tue, Aug 17, 2021 at 05:42:15PM -0700, José Roberto de Souza wrote:
> By now all the userspace applications should have migrated to atomic
> or at least be calling DRM_IOCTL_MODE_DIRTYFB.
> 
> With that we can kill frontbuffer rendering support in i915 for
> modern platforms.
> 
> So here converting legacy APIs into atomic commits so it can be
> properly handled by driver i915.
> 
> Several IGT tests will fail with this changes, because some tests
> were stressing those frontbuffer rendering scenarios that no userspace
> should be using by now, fixes to IGT should be sent soon.

Blocking atomic commits instead of the current lightweight frontbuffer
interface sounds like a terrible plan. How unusable is X with this
approach?

-- 
Ville Syrjälä
Intel
