Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41F18C9FD9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 17:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346D710E66C;
	Mon, 20 May 2024 15:42:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RN2NUZqh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F6F210E72F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 15:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716219754; x=1747755754;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1LjQ5pAMFeVw+iMB+WjNBlHjncyFESbSwiOgyPn4wBY=;
 b=RN2NUZqhXGVCK3Yra6/qwFYNmqh47N3b7Pjc2ZgfnSnmaenkNfs/pen1
 hiG5wpSKN3gWc8RYEq8QcGv2trxBLH+f3hA3AZc/Hs/OXY2W2zwsfYMLk
 +Jp/pNtdmidmXNCLS5pM0ClDZpUUMgMqya5SmEyYR/aUmz5QSUAs+BsDq
 N3ol51+EWyuH67MUomu4OIV7Xj2WDMbA983cJEE6U8kiJQRAgEx/gVW4F
 cxEyzi+bOnxyfrpRSVg9c1KfSwJzt4pW1CaFEW/4nFYwJgjILrTh55+Iy
 Wwy8K8IFxDjhFIshBaVHUbXuW/u9CPhgkAC7tI406xDht9Nr9zcYXxVDY A==;
X-CSE-ConnectionGUID: YzxlP3cPQhOLthFiM7czdg==
X-CSE-MsgGUID: NVMrZAvKSTmUB3UuXaA0Kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="23766136"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="23766136"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 08:42:33 -0700
X-CSE-ConnectionGUID: 84QKifLDTKygqz8PfLe8zQ==
X-CSE-MsgGUID: qRJ5xoNPRjG6/0b87ayoDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37111543"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 08:42:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>,
 intel-gfx@lists.freedesktop.org
Subject: Re: Is it possible to distinguish between HDMI and DVI in i915?
In-Reply-To: <20240520134215.GF15976@comp..>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240520134215.GF15976@comp..>
Date: Mon, 20 May 2024 18:42:28 +0300
Message-ID: <875xv8sd5n.fsf@intel.com>
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

On Mon, 20 May 2024, Arkadiusz Drabczyk <arkadiusz@drabczyk.org> wrote:
> My Asus Z97-A motherboard has DVI and HDMI connectors but i915 shows
> 2x HDMI ports (and the 3rd one for DP but a separate DP1 is also
> shown). Would it be possible to distinguish between DVI and HDMI in
> the driver code for example by reading some undocumented VBT registers
> or testing port characteristics or something?

Please file a bug as described at [1], attach dmesg with drm.debug=14
and VBT as described in the link, and we'll be able to tell you more.

Thanks,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html



-- 
Jani Nikula, Intel
