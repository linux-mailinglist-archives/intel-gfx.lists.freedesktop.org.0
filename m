Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636EC9B76F1
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 09:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2A6E10E402;
	Thu, 31 Oct 2024 08:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkrL4fdd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7DC510E402
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 08:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730365147; x=1761901147;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZFNil0vFgf+JrhpAZj4cOCXwH0IQW2PrHr5fdxpq0sU=;
 b=fkrL4fddYrmMH0FcZHbAOjW1TdQ8G5snOn7tfDc71n/abexFEMSwmZAU
 gtDBexMw77Vt66GRXCeG46kqnusO8+MFT8Yjh2JGWjOQ3c/nOtmSYxo5q
 stSV+2FieXFd0bfFJqtjHslpw3oYSi1ACC/3xoxkiE3KcS9O8+abV9RHR
 b507dXjy5qNSv7uxHXSq9LVtsbMwqd5Xi+fNc79mcOBRU57mtajxKPhM4
 u+NYSsShe+tYVla1dErYI9Dga1nxdjdTEFaF026gLQ7C0YTLL7TQaI+qm
 Xa4p+neC+GA1vz+QVIuuMZGpoFgXZaOJL3vKwtlOyGYRDfW7IRO8Z6imJ A==;
X-CSE-ConnectionGUID: rDG07Q/VRsmpxy81ALLwhg==
X-CSE-MsgGUID: TTFGspkfQWa4qF/DIxaOCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="47569185"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="47569185"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 01:59:06 -0700
X-CSE-ConnectionGUID: 8FPhOkTTSHySX352jLsKqQ==
X-CSE-MsgGUID: 3ZJ0TPXURfevJhw7Sp/pYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="113417643"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 01:59:04 -0700
Date: Thu, 31 Oct 2024 10:59:01 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v3 0/4] Implement Wa_14022698537
Message-ID: <ZyNG1XzXPg7hW72l@black.fi.intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <874j4tl9hp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874j4tl9hp.fsf@intel.com>
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

On Wed, Oct 30, 2024 at 08:40:50PM +0200, Jani Nikula wrote:
> On Wed, 30 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > This series implements Wa_14022698537 for DG2 along with its prerequisites
> > in i915. Now that we have a common pciids.h in place, this can be extended
> > to xe as well. Detailed description in commit message.
> 
> Okay, so this bumps the requirements during development, but where's the
> implementation for xe? What's it going to look like?

The requirement is only for i915. What I mean here is, if the requirement
arises for xe in the future, this *can* be implemented without significant
refactoring now that we have a common pciids.h in place.

I know it's not the best choice of words but I thought you wouldn't mind :)

Raag
