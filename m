Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE83F53CA8C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 15:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116F310E16B;
	Fri,  3 Jun 2022 13:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56EBE10E16B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 13:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654262399; x=1685798399;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Gxye36KI7xRiIbHZ6F/F1nBtPct1i/MSWbvVyQ7xwro=;
 b=cL59d+CLSTRdBaGhe3Mc6EGRwNpNKovCI9ABB1WA7uojMZA/o3SBrsiI
 UZKBMpfm8NbpvL3IPYQtCsTIH/TJ4zRAT+OZgt0oPqJWRTe245a417KN/
 FMpP3UTpVBmb0QG0WOHCKhOduZUmMPoVcFeIMNiQNSzKQejAgJVV9D6wh
 NQY0y334Kswn7eVNcmGgx21+T7J9rtnKNdz3fpAZE8z0fP/UjCj6QGF89
 ii81crCZSyoluag38w9V+ouO1KrW3WQs6rGEurJNK0C7MeLWhVpNLyZcV
 Qf/508llI+XBj+AJREhhplBW/qmZZywpGbhLe21NF42oQ+OEJklFquwyR A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256725433"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="256725433"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:19:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="607394986"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 06:19:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220603093830.1529520-1-gwan-gyeong.mun@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220603093830.1529520-1-gwan-gyeong.mun@intel.com>
Date: Fri, 03 Jun 2022 16:19:52 +0300
Message-ID: <87h751opdz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/6] Fixes integer overflow or integer
 truncation issues in page lookups,
 ttm place configuration and scatterlist creation
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
Cc: thomas.hellstrom@linux.intel.com, chris@chris-wilson.co.uk,
 matthew.auld@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Jun 2022, Gwan-gyeong Mun <gwan-gyeong.mun@intel.com> wrote:
> This patch series fixes integer overflow or integer truncation issues in
> page lookups, ttm place configuration and scatterlist creation, etc.
> We need to check that we avoid integer overflows when looking up a page,
> and so fix all the instances where we have mistakenly used a plain integer
> instead of a more suitable long.

So when are we going to start moving the helpers, both existing and the
ones being added here, from i915_utils.h to proper kernel headers? We
just keep adding more and more. This needs to stop.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
