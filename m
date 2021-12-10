Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DA8246F7F4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 01:22:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8FD10E1AE;
	Fri, 10 Dec 2021 00:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724BB10E1AE;
 Fri, 10 Dec 2021 00:22:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="262345165"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="262345165"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 16:22:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; d="scan'208";a="516541412"
Received: from tuedungt-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 16:21:57 -0800
Date: Fri, 10 Dec 2021 02:21:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YbKdoQWaVYzRUobN@intel.intel>
References: <20211209132512.47241-1-andi.shyti@linux.intel.com>
 <20211209132512.47241-9-andi.shyti@linux.intel.com>
 <20211209235904.GV2219399@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209235904.GV2219399@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 08/11] drm/i915/pxp: Use to_gt() helper
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
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> > -static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
> > +static  struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
> 
> Was dropping the inline here intentional?  It doesn't seem like there's
> any reason to drop it, and if it was intentional the whitespace isn't
> quite right.

No, it wasn't intentional and it's strange that checkpatch
didn't catch it. I will resend this one.

Thanks!
Andi
