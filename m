Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 403F749D55A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F7989F41;
	Wed, 26 Jan 2022 22:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED0E89804
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 22:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643235587; x=1674771587;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VZaM0hYG2LZkmRQCRkuzl8LZ/DLkhJbTLLBQM+4Bs58=;
 b=WG+JQDEQFpt8I0xcVUCFaAb1rupbks+4Rr2zcIMuTJYaompvyFU3XnT+
 paPf1efobTZMZJ/zIMHt+1YYe4QgbbW+YBXRkTNHhKRyRtEdZRn5PwK9x
 SH+qUThMhQ4r338Trsel86va4l6b678sPUppMNJ99zo08A8jeFh84rcRv
 K9mX4LsR4KKYfmqG+uNO3EsTMazSR2cV6T9Pue0xYYvAqcrPr/dG5YDwP
 rFMjTQILF8iLuEDh0wHb8z8k1ilfnfoopz0K7uUtrACBvRBMgQnl/xYZe
 tXBhVBbD/tHlUugtHyGeUXP1kTECXrHVCLJQCSBFEjj8a6Q14tf7FPLz4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="333020692"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="333020692"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:19:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="696389474"
Received: from richardt-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.143.219])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 14:19:43 -0800
Date: Wed, 26 Jan 2022 14:19:43 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220126221943.nlvn2nesvda3uyn4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/perf: Express OA register
 ranges with i915_range
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 24, 2022 at 06:08:22PM -0800, Matt Roper wrote:
>Let's use 'struct i915_range' to express sets of b-counter and mux
>registers in the perf code.  This makes the code more similar to how we
>handle things like multicast register ranges, forcewake tables, shadow
>tables, etc. and also lets us avoid needing symbolic register name
>definitions for the various range end points.  With this change, many of
>the OA register definitions are no longer used in the code, so we can
>drop their #define's for simplicity.
>
>v2:  Drop 'inline' from reg_in_range_table().  (Jani)
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


I didn't come up with an idea to review the table ranges, but agree with
the change:

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
