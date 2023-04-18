Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AFF6E59AD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 08:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5828F10E6C6;
	Tue, 18 Apr 2023 06:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FF310E6A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 06:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681800700; x=1713336700;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+YF7EI961ZixuOTknFQ02TQocjArHRuIco9BIr5yuc0=;
 b=cH9UdXJxkBTLlzVupynqkaGkVTCA7HU8leY85toWEL06P1E194hkUZG8
 yG3YfcW4koR4Y3hMwQdS7bVg94ifSk04RCUzNerNSmAiznOk75rrxUISe
 1kQ7WFRosvBrKOlOkeqlnMAJvhLhCZGaFzG6wBT0zLGOgiyY7Jy8RQw/b
 5X5tnQ/kxDCxKdWZNfBuk9LcSeJ3zwrE0HWikYErrfAzncRd+CfGPKCEO
 s0FoHT6yyu9QJsPVivf9masaHIaaFkfYT5zabH51OjganG9HyNmcganV7
 4pvD4EysYuwwMmX5MvFXLN0ftrvUkP64dhN5jv7X+PPD0yeaFPTv4CQNA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="343844746"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="343844746"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="1020697183"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="1020697183"
Received: from rmenchon-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.143])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 23:51:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <ZD0Km2kVxcbxQw5W@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230417085742.793379-1-jani.nikula@intel.com>
 <ZD0Km2kVxcbxQw5W@ashyti-mobl2.lan>
Date: Tue, 18 Apr 2023 09:51:35 +0300
Message-ID: <87v8htd6o8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: use intel_de_rmw() for panel
 unlock
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 17 Apr 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> On Mon, Apr 17, 2023 at 11:57:42AM +0300, Jani Nikula wrote:
>> Use rmw where needed.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
