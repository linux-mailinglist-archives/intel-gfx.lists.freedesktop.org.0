Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41AF8D15F8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 10:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A8B10E1F0;
	Tue, 28 May 2024 08:11:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gj6P1l6Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDCF910E1F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 08:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716883913; x=1748419913;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9CpfadXQgHZQWYlFFen98U4zEu5fkspvT+SbH/zuaxo=;
 b=gj6P1l6ZpfvuLmB0c0ix3YMXki0jExuLUnghsCbJeRhdnUa3iFNOtLT/
 Jdq0snD44biC/yQ8Tuu6uDHBc6Dg8SBG+/GzMLTrvn7/AT0frAW/STk6u
 K0S8k3mmwOiWAy50E2WoaYHBMmjwhrPAl+yyP40bYijS5DkjAqt+eaW7D
 IhzrQ5Li24pMI3kNp1ZCZNEwn6wqFd4Cn+HhqOrjKW/4bL5h8jYhfZqxD
 e7Soi6CtFaZuLY5P2nHfdDB5qwPeTlQovGr6oJMEOvFzjWcCljhkJw+XN
 ZH7tH5IxA/ncr4/c4522kGf1UVTe+Sz2GhiSXSYGUd6aqZUNpfCt/VgfX g==;
X-CSE-ConnectionGUID: 4tsBW1kxScaWUxSvVurl4g==
X-CSE-MsgGUID: vXyeQ9ikRjuQ06+OeAATIQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="11722768"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="11722768"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:11:52 -0700
X-CSE-ConnectionGUID: uxFL0gF9TT6I6XclJfoogQ==
X-CSE-MsgGUID: EacPVewQQfWfx1cDrVOzMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35051747"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:11:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH 0/6] drm/i915/pps: pass dev_priv explicitly to PPS regs
In-Reply-To: <SJ1PR11MB61298FEABCEB9B75B23BB659B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716806471.git.jani.nikula@intel.com>
 <SJ1PR11MB61298FEABCEB9B75B23BB659B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 28 May 2024 11:11:48 +0300
Message-ID: <87r0dml5iz.fsf@intel.com>
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

On Tue, 28 May 2024, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Monday, May 27, 2024 4:12 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; ville.syrjala@linux.intel.com
>> Subject: [PATCH 0/6] drm/i915/pps: pass dev_priv explicitly to PPS regs
>>
>> Continue avoiding the implicit dev_priv local variable.
>>
>
> LGTM
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

-- 
Jani Nikula, Intel
