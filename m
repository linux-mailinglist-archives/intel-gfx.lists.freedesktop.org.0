Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F91A30CC7
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 14:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12AFE10E074;
	Tue, 11 Feb 2025 13:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H7oOD4YG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FFF10E074
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 13:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739280349; x=1770816349;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DtJyPo4uzIfJzujV7nX2jCACx0OkucgvvYZJ9mJY0UE=;
 b=H7oOD4YGLtoj+GFjON94TOL163BsFvxku4MCVAh1MWgGoI13tlLZj1C2
 sTbazuk+dCDCCJEN8g5G2jrPYuxcMySfkHHS0Iy8oKH/407N1ArYkrNiK
 UxSll5R7BANvbdqPfxnx8lYg/78ZIY9n+iuifyn+YKzEojmZdSJWmYPvc
 kJngZrlMt0DBHzbLqcqKWLHJwgfPav8bOQNWvZMTwZxdw3vdxnuMOT8JL
 PoQYz4vja7KuMndJ7mFergDl8vtD2MsRQhVkodiJSrw7VXPtFCaYiCUds
 Pey8QbhrfEtv0mGzcor21JflPrcfi5zR0gsWRF8Qfg17vNIx5vinLPOkQ g==;
X-CSE-ConnectionGUID: /OLDXzldRweDd/tjGi0zoQ==
X-CSE-MsgGUID: 3SWm2nRtQu2qK9x9DE0tkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="50881310"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="50881310"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:25:49 -0800
X-CSE-ConnectionGUID: a+YuWWlJQFa7Uakgka+JDA==
X-CSE-MsgGUID: x1uOYovcSoeaULXznsd+vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="117532071"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 05:25:48 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pcode: Fix the coding style
In-Reply-To: <Z6oLeQjRUatMGgAs@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250210140924.1364158-1-nitin.r.gote@intel.com>
 <Z6oLeQjRUatMGgAs@ashyti-mobl2.lan>
Date: Tue, 11 Feb 2025 15:25:44 +0200
Message-ID: <87ed041ulj.fsf@intel.com>
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

On Mon, 10 Feb 2025, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Nitin,
>
> On Mon, Feb 10, 2025 at 07:39:24PM +0530, Nitin Gote wrote:
>> Prefer binary operator at the end of the previous
>> line instead of putting operator at the start of
>> the next line as per coding style.
>
> I'm not finding any documentation for this change, where did you
> take it?

If not documented, it's the prevalent style, anyway.

BR,
Jani.


-- 
Jani Nikula, Intel
