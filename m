Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9536696D4FD
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 11:58:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCD010E84B;
	Thu,  5 Sep 2024 09:58:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HpcCzhfG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620DF10E84A;
 Thu,  5 Sep 2024 09:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725530324; x=1757066324;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=aZFTDTjknid9BMvLImZZ1eixtmKl6TlEVYbS9i32W38=;
 b=HpcCzhfGKn+Y/sBrXjnDm+igQE8YWhMsI37vKJcLbw0cQPsfUUfK5m/Q
 49I+TVPhbxnn1W9oLeX/8KFOgd3hoHbBwK5EfGiyaakhh3QuBmMx9Vndt
 Nad/78G0u7ch8whYKCpB6K7peO75ycNXmR5zPtoRd46uETZlDJj6vuHZq
 qGiyA3VYwVlg6DNRIHw8iEA3CZP9ShA8FFAjVUi0Zp8Ms5keAlSmWoT9+
 2lZHcEdJx7p7xy02/Dm/vsaw+sv3xPBb4+xtw7lAH5LxWC1DSFCSX9S/O
 WWfes4M1AS1SzBXcjCL+5SCFRQjVxnIVWpBG59is190WN7XJL0EaM81Vx Q==;
X-CSE-ConnectionGUID: JjNJEYjmRJyimDDm9n+Sug==
X-CSE-MsgGUID: poQ+gTpSQeegdqIWe7RNRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="27158471"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="27158471"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 02:58:44 -0700
X-CSE-ConnectionGUID: 0T+xA6YGQ2S/teMtTNzFUg==
X-CSE-MsgGUID: oAttPQ79TgO+nOpD/RCS0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70171877"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 02:58:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/7] drm/i915/wm: move struct intel_watermark_params to
 i9xx_wm.c
In-Reply-To: <d1fb6ed8e3808f3d7daa19f5eb5fa46fb697d0ab.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724689818.git.jani.nikula@intel.com>
 <d7408290c909eb67fc7a935469a3c6287b58587d.1724689818.git.jani.nikula@intel.com>
 <d1fb6ed8e3808f3d7daa19f5eb5fa46fb697d0ab.camel@coelho.fi>
Date: Thu, 05 Sep 2024 12:58:39 +0300
Message-ID: <87bk12qv5c.fsf@intel.com>
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

On Thu, 05 Sep 2024, Luca Coelho <luca@coelho.fi> wrote:
> On Mon, 2024-08-26 at 19:31 +0300, Jani Nikula wrote:
>> The definition is only used within i9xx_wm.c, hide it there.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks for the reviews, pushed the lot to drm-intel-next.

BR,
Jani.


-- 
Jani Nikula, Intel
