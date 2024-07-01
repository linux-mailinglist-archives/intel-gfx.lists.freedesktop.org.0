Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B54891D91E
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 09:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E7210E336;
	Mon,  1 Jul 2024 07:38:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bz4qvbDD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F296B10E336
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2024 07:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719819496; x=1751355496;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/MZYJYIJBri6bhco9K25deQERYpTrC2jQ7HMG+DKT6E=;
 b=Bz4qvbDDAxgNUMhPePJ6JRhEeKZa2cIVezFVTlnC7NtCdU8eXiacgHK9
 H/sHCbhaMy9tvIA7SVerRuhmjubOQds7yZEUpQ3flJ8NyGPnWFq0yWZY2
 COa/655Na9yoRdi56RmkBj3GTTuL3pROjcIEGZ3n9Wjd/TQ3eFtBvl7sK
 TpmI5Vfz5X/TybauMH0OyXiMAtS2fnFnTAVTssssMPSyY0TIChxn3Kccs
 VLJbJ1gw0izHpENppsLfnqTi0VqWmffz4vex1Lczo4eWaEhcC0syirWWH
 7liBWpa3nmcAtXgsdSupRVu/iYPbnmtyKHzGYWScg83b6dwTvHBrGNYUT Q==;
X-CSE-ConnectionGUID: oGOMIgH1TFuMowNOCzlz9A==
X-CSE-MsgGUID: gqx1LtauRoOHsdCbH4cyWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="28324746"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="28324746"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 00:38:16 -0700
X-CSE-ConnectionGUID: JMrYNO5LSNKOsTNygDiJQA==
X-CSE-MsgGUID: 98hQ4fmkRySs+zrDCjU6AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="50029235"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 00:38:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display: For MTL+ platforms skip mg dp
 programming
In-Reply-To: <MW4PR11MB7054DA0FFABFEFECC7ECC04BEFD62@MW4PR11MB7054.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240625111840.597574-1-mika.kahola@intel.com>
 <171934390705.2542.10983050954904919169@gjsousa-mobl2>
 <MW4PR11MB7054DA0FFABFEFECC7ECC04BEFD62@MW4PR11MB7054.namprd11.prod.outlook.com>
Date: Mon, 01 Jul 2024 10:38:10 +0300
Message-ID: <8734otblzx.fsf@intel.com>
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

On Wed, 26 Jun 2024, "Kahola, Mika" <mika.kahola@intel.com> wrote:
> Merged and marked as stable i.e with added line in commit message
>
> Cc: stable@vger.kernel.org

Reminder, the commit message trailers go together, without blank lines
in between.

BR,
Jani.

-- 
Jani Nikula, Intel
