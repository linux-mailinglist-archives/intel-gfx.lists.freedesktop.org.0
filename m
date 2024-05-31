Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BDC8D5CB2
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 10:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A1B10E6E8;
	Fri, 31 May 2024 08:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0dzir3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3ADF10E570;
 Fri, 31 May 2024 08:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717144137; x=1748680137;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2oQpsWUOHSnWUR8hL9MrB54DlwOZA9HaXi7waZtTkq4=;
 b=K0dzir3wvvycjduOKEf/gSmwGfK4HFbTkShfDl3klXVF0L7kfMZbC+72
 yJu1imHnesHssNVreoddCBBSc6+FNiqGNB2VcgsK3yD62nUqNP5/peyaM
 zjNCZtLjW3u7Ahaqd8ZaqbDeurJRTy0LQdHjv4FuWfKxyyMV6cKT9R6WR
 R0mfBc4pDa/QlZMCMbteyEbZCa7VIz/rPPkPp7lquAUY4nPEXcV0Y7rC+
 3Q7nrFZyP2zOsWD9+OGTXzxXXXVifaWmMEH6ETfrYrVGZ/WoIrfYxzvHu
 xaK44kk1Iqm//tZ0cHalQIUGWr+DkTdxSzw7ZYF5u2O3h/vLtKkyeebN9 Q==;
X-CSE-ConnectionGUID: gfiCMseyS1Kw3igoHgKIYQ==
X-CSE-MsgGUID: 6QZ/4IdCQdyMGrdvUsg+BQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="31173264"
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="31173264"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 01:28:56 -0700
X-CSE-ConnectionGUID: UIWK05pBQcSyLCA/XFhi2A==
X-CSE-MsgGUID: yN/iumMNTbW7Rr7upAj+kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,203,1712646000"; d="scan'208";a="40539273"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 01:28:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com
Subject: Re: [PATCH 00/10] drm/i915: identify all platforms in display probe
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716399081.git.jani.nikula@intel.com>
Date: Fri, 31 May 2024 11:28:49 +0300
Message-ID: <87zfs6fkqm.fsf@intel.com>
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

On Wed, 22 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Add independent platform probe in display, in preparation for breaking
> free from i915 and xe code.

Merged to din, thanks for the review.

BR,
Jani.


-- 
Jani Nikula, Intel
