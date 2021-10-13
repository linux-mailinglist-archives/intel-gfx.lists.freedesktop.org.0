Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2024842CC23
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 22:53:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE0D6EB5F;
	Wed, 13 Oct 2021 20:53:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04B9C6EB5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 20:53:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="291023941"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="291023941"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 13:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="460924332"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 13 Oct 2021 13:40:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Oct 2021 23:40:11 +0300
Date: Wed, 13 Oct 2021 23:40:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YWdEK+dlwCJehkw0@intel.com>
References: <20211007203517.3364336-2-imre.deak@intel.com>
 <20211008001915.3508011-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211008001915.3508011-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 01/11] drm/i915: Add a table with a
 descriptor for all i915 modifiers
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

On Fri, Oct 08, 2021 at 03:19:08AM +0300, Imre Deak wrote:
>  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);

Side note: 
We have quite a few of these 'int plane' things still around. I'd 
like to see them all renamed to 'color_plane' so that we don't get
confused between diffrent kinds of planes.

The rules that I've been going for everywhere:
- int color_plane == plane of a planar/compressed framebuffer
- struct intel_plane *plane == representation of the piece of
  hardware that does the scanout
- enum plane plane_id == standalone version of plane->id
- enum i9xx_plane_id i9xx_plane == standalone version of plane->i9xx_plane

-- 
Ville Syrjälä
Intel
