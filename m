Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4895EAC8F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Sep 2022 18:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BDC10E71A;
	Mon, 26 Sep 2022 16:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B7210E71A
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664209953; x=1695745953;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Aub5GIqRPqF+LhAaPJqdwHKBO2wDY1XaZeJCBGGnCxk=;
 b=aa4mTU77xLnVVrpDnisW5tSohBMLee0DTSGulLJfjhSZh/I9jUGxmukE
 C7dEaTyYdxiHsEl5O7qG0HSCjwQScpGaE3k2dLb5HtAVnnEmqEuDxbz8M
 CGxkAIs18viRPulU3gBnL6v3dSuFeesAJndQEBwcxPd8oTgPhPFQykjIU
 zDjosOhB+vhU95Zo6ebROlxMMvy7eH8379cl1GUcEFgaIietynNlgoZB8
 fHnjF/OEcgoMc37OtVpbKOJT35PqVJodmXlpYOnQO49MVENkGEOoade99
 C1hzdvn1hIbiUQHn8lJQ1XX72R9V9NOd9gMK25VL+fa+R2gY51CcZKYNx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="362904637"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="362904637"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:32:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="710182734"
X-IronPort-AV: E=Sophos;i="5.93,346,1654585200"; d="scan'208";a="710182734"
Received: from lsabisze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.243])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 09:32:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220926145852.4wc6vttbaspx5yw3@ldmartin-desk2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220916082642.3451961-1-jani.nikula@intel.com>
 <20220916152638.u3rnatqrq52x5d32@ldmartin-desk2.lan>
 <87edw7rdgy.fsf@intel.com>
 <20220920072450.2b6wizrw2i5tyk5k@ldmartin-desk2.lan>
 <87tu4u30o7.fsf@intel.com>
 <20220926145852.4wc6vttbaspx5yw3@ldmartin-desk2.lan>
Date: Mon, 26 Sep 2022 19:32:11 +0300
Message-ID: <874jwu2j1w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix device info for devices
 without display
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

On Mon, 26 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>In the mean time, okay to merge this one?
>
>
> Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
