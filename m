Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3793596AAC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 09:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACFE112431;
	Wed, 17 Aug 2022 07:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99478112431
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 07:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660722882; x=1692258882;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BIXOA1rTUYuI9UEOFOKWsJaks0bgMtFQImhZjPp3JUE=;
 b=N6NkZCl82Nc8D9Y/rOSz9P3dU3Kt+tIErdI9Oxl90ZT69Ibyku75kpeJ
 ew6Nkv2KGCfnKcULB7e91vL6I0kLGltNCO4LJWuIVmXbbjG1ttAf0MDA7
 oR0g+MrOivQWv69UGS91qwalvNdfMedPWnshd4Fm24oNWL+5J8fHx+auW
 /3QqT6iVMegG8HG2B6fv//GmMyNEJJl6wih4u+/+ii05lKaHSAYv6oaQ4
 Kduk0DjzKetQPv5XdI9d0z3tiSsq0YkH3cxJyuTtG5kgWniCZlw5qt1cA
 vi5qSlU80/yLijx1mAJYM/Bl2idhmPqZlGFlGyFOuvz+D/TrhpGGOqcyP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="356427877"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="356427877"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:54:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="636260862"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:54:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220817072137.kbad5gapqgxvq6ld@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <c6e7bdc0a0d86a99f19d07beed273707793c3739.1660230121.git.jani.nikula@intel.com>
 <20220817043221.p3awhzpxjtwnfmxw@ldmartin-desk2.lan>
 <87y1vnpd72.fsf@intel.com>
 <20220817072137.kbad5gapqgxvq6ld@ldmartin-desk2.lan>
Date: Wed, 17 Aug 2022 10:54:38 +0300
Message-ID: <87tu6bpao1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 24/39] drm/i915: move mipi_mmio_base to
 display.dsi
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 17 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Aug 17, 2022 at 10:00:01AM +0300, Jani Nikula wrote:
>>On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Thu, Aug 11, 2022 at 06:07:35PM +0300, Jani Nikula wrote:
>>>>-#define _MIPIA_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb000)
>>>>-#define _MIPIC_DEVICE_READY		(dev_priv->mipi_mmio_base + 0xb800)
>>>>+#define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
>>>
>>> ugh, and I thought we wouldn't have so many implicit params anymore.
>>> Mind adding a "TODO: remove implicit dev_priv parameter" ?
>>
>>It's been on my private todo list like 10 years. :(
>
> and we are finally removing that from the todo list soon. right? :)

Maybe the perfect has been the enemy of the good here, too.

The simple thing to do is to just pass i915 to all register macros that
need it, and be done with it. It's a little bit of churn here and there,
not too bad.

But then some register macros need it, some don't, and it's all case by
case. What if we passed i915 to *all* register macros instead? Some
wouldn't need it and it would be all the same. But some could
benefit. See e.g. how HDCP_CONF() in intel_hdcp_regs.h adapts to
platforms. It's not really a style we use anywhere else, but should we
do that more instead of having it inline in code?

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
