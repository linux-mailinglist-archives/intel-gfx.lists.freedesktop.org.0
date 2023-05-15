Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA84702A08
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF98E10E193;
	Mon, 15 May 2023 10:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67DD10E193
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684145209; x=1715681209;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=IvaZxNuZZWwktaesP2y3WQexNRY2HgdNHzoOGVX0qGE=;
 b=oIM9XwiTUzslHP/PAdexcP2JDj4pxZ+OXgECSb6h95CCk/yDQUMDW1ag
 LOZeG2vBEtew2BgTq0+OskVPT0N+KjBZrhU1KAoIrurbRQkq6mV/mPDe5
 5qQFUImYrEyy90KIce3lmhudlbBkY85VwdF7cgzVpSqqIRdxorQFx4eeA
 sxLpTkG+ZO+lb+1W/hy86MCfJ7frIgV99ngox9G/ppPIghk2+IQGFyrEG
 LzezCz4Ry+679jSgl2XxRx6w5aRpra1HoYQSYM+251sedqOGArEeqK7ym
 bjL5jLulai5fhOGKO0pcATnEh+ChIX94LAcg6QkRaO5ugHLcwllhJgtvv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330780328"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="330780328"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:05:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="700903526"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="700903526"
Received: from lveltman-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:05:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <168389933649.81732.10815246258922734589@gjsousa-mobl2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230512102310.1398406-1-jani.nikula@intel.com>
 <20230512102310.1398406-3-jani.nikula@intel.com>
 <168389933649.81732.10815246258922734589@gjsousa-mobl2>
Date: Mon, 15 May 2023 13:05:55 +0300
Message-ID: <87mt25j4e4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/irq: split out display irq
 handling
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

On Fri, 12 May 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Used "git show --color-moved ..." to help me review this one and changes look
> sane to me.

Also, thanks for clueing me in on 'git show --color-moved'. It's
fantastic!

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
