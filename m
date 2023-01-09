Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94FD66220F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 10:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0564E10E3A3;
	Mon,  9 Jan 2023 09:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD3210E3A3
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 09:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673257800; x=1704793800;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZGHDIyGbUDrEYX9A8BUeLYYsnXwqrFMlBn+Qf+aNiIY=;
 b=ZA6vdgF66g2GvixKQ+JsqxmWiVtfh72LAdwu4+1fMGXoGTwNGW/2Wohc
 Bkxjt8051Tl5AOfjFio1vCFYFOjHmlFeg7IEhP9xLMrq69NQKntmvyYuG
 t6l0ezZWERcjSMPiuLxIBWYiUBMVvIycD2F4MCEAgpeuuFpkGNyD+ZYeN
 T8B4CSLh6qneqSDVI6MvC0K/sqDkzyzeYbFEMazwTLf+1mebzDPhfs2w6
 DRqrxPpSV/8QUY3GzBpRFk4YQA9/du9BBs8bH0qvaXZGXr3r2PPaUhTeQ
 2LGDgyTiUmhl37w3XYjSsbLmpEioE46iQZlOShnoj4JCqdOBl3oe/g9D8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="303196961"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="303196961"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 01:49:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="719884851"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="719884851"
Received: from gtmcgeac-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.11.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 01:49:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230105125446.960504-5-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-5-mika.kahola@intel.com>
Date: Mon, 09 Jan 2023 11:49:41 +0200
Message-ID: <87y1qc11hm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 04/21] drm/i915/mtl: Add Support for C10
 PHY message bus and pll programming
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

On Thu, 05 Jan 2023, Mika Kahola <mika.kahola@intel.com> wrote:
> +static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port, int lane, u32 *val)
> +{
> +	enum phy phy = intel_port_to_phy(i915, port);
> +
> +	if (__intel_wait_for_register(&i915->uncore,

There's now an __intel_de_ variant of this that should be used within
display/.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
