Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8062D8D15F2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 10:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D53810E138;
	Tue, 28 May 2024 08:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbvLxJtA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BAA10E1F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 08:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716883890; x=1748419890;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9wpDH4gIIRoLyjX885t8ULQwtvF8qZsktiCqmKKgKGo=;
 b=LbvLxJtAee5zwd9x3AYFnWPbnyitIJnLdoJKxKhSfnMNG/rgHC2mMxvt
 zpYJJfyghenU9aDZcYsM/oI4ThHEkrKEhej3EHMCLzjyYv+96sCX+TV3h
 KDXyPqf15+MmQkc4dnt1eVI5a+e5YSKEIWlbtV/ip4tZiQqSkHtmlh5AV
 Te0tZzz8o+h1vgXoar20oFakuife1ppI00xlryo9A/8cleYW9SlLbCX08
 y8rcZ72MyZHwRXPem/iAr/hLNdoVJpCLm6y3gghiPCI0w40tHqyBlR29g
 hLXiCX2o3COfSAwJj6gQ2zpoHg2z7QQMaWM90tC4/9nFRmZBJu/Hwj8q2 w==;
X-CSE-ConnectionGUID: fv8nTcEuRPOA3eozy4UfMw==
X-CSE-MsgGUID: 1k2jDLs7TkCvA0WXRzchHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24625899"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="24625899"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:11:30 -0700
X-CSE-ConnectionGUID: /gwt4FckSo6+ZBA0djgbHQ==
X-CSE-MsgGUID: tUM10AEUS9izN5SzXSFASQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39801882"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 01:11:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH 00/11] drm/i915: pass dev_priv explicitly to DIP regs
In-Reply-To: <SJ1PR11MB6129A87D55BBEE6D3E197417B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1716808214.git.jani.nikula@intel.com>
 <SJ1PR11MB6129A87D55BBEE6D3E197417B9F12@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Tue, 28 May 2024 11:11:25 +0300
Message-ID: <87ttiil5jm.fsf@intel.com>
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
>> Sent: Monday, May 27, 2024 4:41 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 00/11] drm/i915: pass dev_priv explicitly to DIP regs
>>
>> Continue removing implicit dev_priv references.
>>
>
> LGTM
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.


-- 
Jani Nikula, Intel
