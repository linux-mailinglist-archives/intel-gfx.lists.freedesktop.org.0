Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD4D59F7E8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 12:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB83B10E0EB;
	Wed, 24 Aug 2022 10:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C48910E0EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 10:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661337345; x=1692873345;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LubNfzAkSPCBDmzq9+wRFGLZj67AHm2SrA6tvuG8C0A=;
 b=c1TcMUFnq4CJJuPb0XHd200Bl4obLX3fLuc5gUXGYgB9tJFL4bU4vCAz
 Byu+gWdsy8/IhQ4nEvch/0xG7n9stINnNlE/rmNO33uuIPr6IoaZu8Fj+
 AffuzIe+im412KNa9E3MdszQSMJtFtXTZHzWqxQ3RrPtzaur8+yGi+fD3
 bdLFkWax2q/fFv1RX22hNQgHzzUFnpQ1TQ6ZR3+7+4u36D1B6WnUNzKx5
 YUY701W0yX1/QS9YFpeBjsX0X3CL6MB0Xj4CmC1oslDR5LOWskLygETHD
 v4m30AzIiZIbQ16vD0bQWDpUko5YjBoXWGX2T1cgdM+sBN46Rox9pQevi Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="355659044"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="355659044"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 03:35:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="670448568"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 03:35:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220817041643.jfyuaugrlok7w3mu@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <32be38d0fcf6dd695b1488c0b78fd6fc09280d62.1660230121.git.jani.nikula@intel.com>
 <20220817041643.jfyuaugrlok7w3mu@ldmartin-desk2.lan>
Date: Wed, 24 Aug 2022 13:35:39 +0300
Message-ID: <871qt6j5dw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 13/39] drm/i915: move dpll under display.dpll
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

On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Thu, Aug 11, 2022 at 06:07:24PM +0300, Jani Nikula wrote:
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>index 748d2a84e20e..f12ff36fef07 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>@@ -12,6 +12,7 @@
>>
>> #include "intel_display.h"
>> #include "intel_dmc.h"
>>+#include "intel_dpll_mgr.h"
>> #include "intel_gmbus.h"
>>
>> struct drm_i915_private;
>>@@ -24,6 +25,7 @@ struct intel_color_funcs;
>> struct intel_crtc;
>> struct intel_crtc_state;
>> struct intel_dpll_funcs;
>>+struct intel_dpll_mgr;
>
> if you include intel_dpll_mgr.h you don't need the fwd declaration?

Funny as it is, intel_dpll_mgr.h does not define or forward declare
struct intel_dpll_mgr. :)

BR,
Jani.

>
>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>
> Lucas De Marchi

-- 
Jani Nikula, Intel Open Source Graphics Center
