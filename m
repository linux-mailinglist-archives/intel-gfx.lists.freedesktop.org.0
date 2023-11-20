Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D907F106F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 11:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3745610E399;
	Mon, 20 Nov 2023 10:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E2510E399
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 10:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700476279; x=1732012279;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XvfAw/QIz09z8X2/hoyckXgWHkNvQbcyVt6Sv2Dhzqo=;
 b=l5RXMEh6AdcsQTD0fTZfOLWY70Opsyo/hIL6H2UdTqJXr8NjzGDbdnUk
 ndzXTNWdenouWMAhBFXadOO9kZBkwWYY5vFL0cnwm55zILSzTK/SJ3Mi7
 vXhMoMhvoPuuOsb9qrRK3z4aaSrBuSMDQjQaHrH4tTA07C733HVcUZJW8
 8Z2BYKHxULAAFGf2Ib6ji0YFexkIqloq74ZQMHnyLmZQjcLTrpTOQ7ydk
 st6YLu62+vSuAL39LLVXEit749pnAZroElbpBFMhudK78VqZnTkU2xcSx
 afaxkzdKYcXpIVvJgPbm6v3G5fDHho6fpux/12ccmMM0GDWng7aiAjhil A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="477803230"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="477803230"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 02:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; 
   d="scan'208";a="7511184"
Received: from avmoskal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.194])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 02:31:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
In-Reply-To: <qttczeukv7fu4dnq3rh7xua5vimhhu6kfqwhqbf3aes2aze5ty@pejh24rjpnvk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230130100806.1373883-1-chaitanya.kumar.borah@intel.com>
 <20230130100806.1373883-2-chaitanya.kumar.borah@intel.com>
 <qttczeukv7fu4dnq3rh7xua5vimhhu6kfqwhqbf3aes2aze5ty@pejh24rjpnvk>
Date: Mon, 20 Nov 2023 12:30:57 +0200
Message-ID: <878r6spvha.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC v4 1/2] drm/i915: Add RPL-U sub platform
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Nov 2023, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Mon, Jan 30, 2023 at 03:38:05PM +0530, Chaitanya Kumar Borah wrote:
>>Separate out RPLU device ids and add them to both RPL and
>>newly created RPL-U subplatforms.
>>
>>v2: (Matt)
>>    - Sort PCI-IDs numerically
>>    - Name the sub-platform to accurately depict what it is for
>>    - Make RPL-U part of RPL subplatform
>>
>>v3: revert to RPL-U subplatform (Jani)
>>
>>v4: (Jani)
>>    - Add RPL-U ids to RPL-P platform
>
> humn...
>
>>diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
>>index 4a4c190f7698..5824e1d7d162 100644
>>--- a/include/drm/i915_pciids.h
>>+++ b/include/drm/i915_pciids.h
>>@@ -684,14 +684,18 @@
>> 	INTEL_VGA_DEVICE(0xA78A, info), \
>> 	INTEL_VGA_DEVICE(0xA78B, info)
>>
>>+/* RPL-U */
>>+#define INTEL_RPLU_IDS(info) \
>>+	INTEL_VGA_DEVICE(0xA721, info), \
>>+	INTEL_VGA_DEVICE(0xA7A1, info), \
>>+	INTEL_VGA_DEVICE(0xA7A9, info)
>>+
>> /* RPL-P */
>> #define INTEL_RPLP_IDS(info) \
>>+	INTEL_RPLU_IDS(info), \
>
> drive by comment while reviewing other stuff. Why was U added to the
> P macro? That looks odd. Adding it to the rpl subplatform, together with P would
> be ok, but in this macro it looks wrong. Doing it the other way I think the
> only affected place would be the early-quirks, which would need a separate entry,
> but admitedly they should had been INTEL_RPL_IDS() with all the
> variants.

It's been 10 months, I have no recollection, but this is what I found in
old mails [1].

BR,
Jani.

[1] https://lore.kernel.org/r/87mt686m1o.fsf@intel.com

>
>
> Lucas De Marchi

-- 
Jani Nikula, Intel
