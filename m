Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19454602980
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 12:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7289910E5ED;
	Tue, 18 Oct 2022 10:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB69A10E7BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 10:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666089590; x=1697625590;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=lzXb7AHTO48IZ3S+XyWFsLcfa2guUZPB+Oqhyo+jfTk=;
 b=iaF/aoK/gMY62pzjjHTUZgQNZ6kZUWvd7U2Fgbhr0cYAC9PEf/4Y/A/R
 +VC2Nbg0mTJuD8OQ0Q7mfKYyAMCAa+nW72cql5+MQ1LA1uEBKXEwCOkHi
 E/6QIL/1CsIOQ2c1cSad/iwR8GgeqdWOJnu5Hbcsd/xfJkAWE5IFYQuXb
 GQcReb4EFkEY7W0xJRvB7OA8HokdnCP/Nk3sKkt/3BZ00KQ7MaxJDlhcS
 O+v7ngH87Smjhl3Gq4LAjlCaYxIzzQPsfHhdZIml025+Vm0GRrL18lkxi
 pzVWR/3pG49M2FR8+WVjVpbrN639fPRCvdbHRaCQIoKN77AECQWhCjuuk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="368094575"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="368094575"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 03:39:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="691743959"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="691743959"
Received: from ineznano-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.44.87])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 03:39:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <MWHPR1101MB21577E28B65A5BCE10020C9BEF249@MWHPR1101MB2157.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929131747.2592092-1-mika.kahola@intel.com>
 <20220929131747.2592092-4-mika.kahola@intel.com>
 <87k05lw6lq.fsf@intel.com>
 <MWHPR1101MB21577E28B65A5BCE10020C9BEF249@MWHPR1101MB2157.namprd11.prod.outlook.com>
Date: Tue, 18 Oct 2022 13:39:44 +0300
Message-ID: <87mt9tiff3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/mtl: Add support for C10 phy
 programming
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

On Fri, 14 Oct 2022, "Kahola, Mika" <mika.kahola@intel.com> wrote:
> Maybe these could be moved into intel_cx0_reg_defs.h file?

Register definitions to intel_cx0_regs.h. See

$ find drivers/gpu/drm/i915/ -name "*_regs.h"

Any common helpers such as REG_FIELD_GET8() and friends to
i915_reg_defs.h where we already have some other sized helpers.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
