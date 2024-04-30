Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A8D8B6EAD
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 11:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C8110F455;
	Tue, 30 Apr 2024 09:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DZ+DkRBm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F6B10F455
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 09:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714470103; x=1746006103;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=NY3PwxGmosjvedGFiDqu9MtnHGyL1FgHvtTgb+PS7Q4=;
 b=DZ+DkRBmV3UZ3wTa4dhpbij7/j4aW+Ffv7iGeBOx2mQsKF2a3a50V0R7
 bNO7bh6EPAp1zIm0/IK+Pzdck/QMbf+wTHKIQpw8+GS4tT5czHXjJ2GCe
 J1TBS38djb1Gs50qyNXOqxSkjcGigapwhJXg8PRS0EmkL3pl39kBLNrwj
 FUl6tWK0J7POrvTm6Ce7x9kKfEtGOo7P2+h0TErnspDq5FPJl31APewrS
 l7/jgSirHklM/F9oTaTV6Q8PeE0q0ixdfnSsh+rS7zmDk9vvkwOGa07oD
 4fDRD69GGY9B9x6PA6dnTQwk64s9NDUcLGOa643cJhNdEYNXK3TaFZJtI Q==;
X-CSE-ConnectionGUID: JZLu3n3/RU6PjdHbRwfNtw==
X-CSE-MsgGUID: K63Qg/IDQzu0wUFulEW+xQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27616702"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="27616702"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:41:42 -0700
X-CSE-ConnectionGUID: 1LeDAdDRTLWvtt1gAhJSBQ==
X-CSE-MsgGUID: hcU2rRKNSzO9n6Rx4BwbVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26493072"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 02:41:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915: pass dev_priv explicitly to PALETTE
In-Reply-To: <Zi-tYlK6-qBNAtxH@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714399071.git.jani.nikula@intel.com>
 <bf07d29cefef23ebd5d54fbb0d3bf7e41d132d93.1714399071.git.jani.nikula@intel.com>
 <Zi-tYlK6-qBNAtxH@intel.com>
Date: Tue, 30 Apr 2024 12:41:38 +0300
Message-ID: <87edan2nn1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 29 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Apr 29, 2024 at 05:02:15PM +0300, Jani Nikula wrote:
>> Avoid the implicit dev_priv local variable use, and pass dev_priv
>> explicitly to the PALETTE register macro.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Pushed the series to din, thanks for the review!

BR,
Jani.


-- 
Jani Nikula, Intel
