Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4448D4A704F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D869810E612;
	Wed,  2 Feb 2022 11:51:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7873A10E612
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643802699; x=1675338699;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=23trzbRJIiRS++eaZbYQ+U5ZxPdVGE+aLUF3G1iRl7s=;
 b=ZUzScdIV3BVtanGjwiWfiWtAmtwEqcniymPg0SanJgiLfTaNiUEafnol
 y2vZ7XoFPRlJhiMZNxEUnoD3Nb96TLEm3erFHDRt8V4l3KI5mXOR9OFGY
 rcHkC1OtcOeP7ZX5UlCsGa+25H8S/lQQ0/d25HguJK1fCRRDaGdxSARoW
 ehgFUuzTh6pv9ZYE9F7X4r6C9uBNyM7ojf4BcOtugr9NK/E7PjOrXpgBH
 f6U97jZFIlrMkElq34521e3FYxhkDtH8IE/iPLd3mpuaHvOSBsGISkqXi
 5WfwC+tM+sZ56WIfrsRjFOwrHctXM5mcpr7l32LS5G4CZrMv91tXAwKXu Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="231468757"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="231468757"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:51:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="565961419"
Received: from dolandox-mobl1.ger.corp.intel.com (HELO [10.213.211.99])
 ([10.213.211.99])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:51:37 -0800
Message-ID: <39e3d23e-3f15-2abf-df61-8ad2eda47d88@linux.intel.com>
Date: Wed, 2 Feb 2022 11:51:35 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 0/2] Compile out integrated
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2022 11:15, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Quicky and dirty hack based on some old ideas. Thought maybe the approach might
> interest the Arm port guys. But with IS_GEN_RANGE removed easy gains are not so
> big so meh.. Maybe some more easy wins with IS_DISPLAY_VER but I haven't looked
> into that side.
> 
>   3884664  449681    6720 4341065  423d49 i915.ko.tip
>   3599989  429034    6688 4035711  3d947f i915.ko.noigp
> 
> Note debug kconfig so everything is inflated. Whether or not the relative gain
> would change with production kconfig I am not sure.

Non debug build for the record:

    text    data     bss     dec     hex filename
2188446   20528    2944 2211918  21c04e i915.ko.tip
1926865   17776    2944 1947585  1db7c1 i915.ko.noigpu

So around ~12% of the driver eliminated as dead code with the easy and 
incomplete approach. Not bad considering no clean split on Gen12, gen 
based if-ladder are mostly untouched and no LTO.

Regards,

Tvrtko
