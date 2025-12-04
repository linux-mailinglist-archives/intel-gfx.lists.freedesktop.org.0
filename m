Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E13CA3BC2
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 14:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2E110E8E5;
	Thu,  4 Dec 2025 13:12:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WX/maE16";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC2810E8E5;
 Thu,  4 Dec 2025 13:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764853957; x=1796389957;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yzn+1AsUQDR+KiSTZy0JHTsAPzWFCcJC6z8twIpEGQE=;
 b=WX/maE16kxKVjugWQA59jmNldFEyhXQuZrvQot7sIcnzeYqM4wph96Ne
 5oK/zN4NQ5sRD0FT+/YKUWORTRcagqY8eloYi3kSn9FLOmczUHzCFbGI1
 gciVcRmgci52hpOEnELUrd57YbL1iS+lHZ9MXuhRA3AXs/6nPHkD6xLdb
 tvvdaQSSKKXS9Unjcs72R6Blot7fWjbUyhkxAWQ2erzfEIrj6GpR1WBSE
 qU+iMm0trHaxbqqaIHVmbIrnrzvshRQMlYToDfERbXjVbz9PuPjR78dCD
 6HBk+2VlRffBVoxBCUdFXN6LW0j346ztgWI+TguvPGN+hyM/FWtmi2xVy Q==;
X-CSE-ConnectionGUID: q7Ay7nU7R5SWXDATCfOx9Q==
X-CSE-MsgGUID: EiqXjjSSQYKlGwc50D9tcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="92349288"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="92349288"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 05:12:37 -0800
X-CSE-ConnectionGUID: dFrp0SgFT6GFEkd5wv3Kqw==
X-CSE-MsgGUID: /a4KhDnpR4myWSVclzK9gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194796921"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 05:12:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 00/25] drm/vblank: refactoring and cleanups
In-Reply-To: <bc51a369-5420-41c4-b377-9cceab297da9@suse.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1764845757.git.jani.nikula@intel.com>
 <9bcf199f-f83b-4ffe-8498-315b13e52d4c@suse.de>
 <a6d77ee74e3d93d7cd2a4019e092a3bcd97eaa49@intel.com>
 <31e8b266-c3c3-4073-b7ce-1fe2aecb5180@suse.de>
 <bc51a369-5420-41c4-b377-9cceab297da9@suse.de>
Date: Thu, 04 Dec 2025 15:12:32 +0200
Message-ID: <ed850fb377eefb178e7324c198fe076471eec082@intel.com>
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

On Thu, 04 Dec 2025, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> And another thing I noticed is that this series didn't go to dri-devel.

*facepalm*

Should I just resend the entire series?

>> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

Thanks a lot for the reviews, and sorry about the goof-ups.

BR,
Jani.


-- 
Jani Nikula, Intel
