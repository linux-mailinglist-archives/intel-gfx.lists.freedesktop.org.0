Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 910217DF40D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 14:40:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127CF10E8BF;
	Thu,  2 Nov 2023 13:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7CB10E8BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 13:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698932449; x=1730468449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ymGQSRSj4AJZfhfjze2LfXPuI1lU6GvTNu1obFSqe24=;
 b=G006q9zuCvWYXZN/hRZdRMdGpIKqoCGb6lVqEP+xVfTLXtJYPtx2M7Kx
 Pj7ijCsNk3qc5ZJmHkS2Jx4omr1H9LwtEZjge6olM9ISA3qCq1eEvMUNr
 tS0+kSSOp2yRLjdnKJQEj0pPMDd3PlIaGEA8BuOwAsTewJa4v7l5bnpCn
 eyCPd0xQmXVkGG7DwqkMe66vcnGvCqA4tZwsmPXdzLKwsVYFpU6L0zmq4
 9o+uQFEULD69zxT5scNwBCfZYT1RRw3TB3G7WHSwwhcEW+tSkvuSPijUM
 6AyShAiD5RePZHTIkwK5fmdsErje0d8FmAkeaY+KQfT9zXzxDdAnqgppo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="1637339"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="1637339"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:40:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="851923255"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="851923255"
Received: from smile.fi.intel.com ([10.237.72.54])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 06:40:43 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.97-RC3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1qyXw6-0000000AhRq-0x11; Thu, 02 Nov 2023 15:40:38 +0200
Date: Thu, 2 Nov 2023 15:40:37 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZUOm1dRh216XN_B6@smile.fi.intel.com>
References: <cover.1698833543.git.jani.nikula@intel.com>
 <251ce78472dc3dffd522043dc366be0afa2ad75e.1698833543.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <251ce78472dc3dffd522043dc366be0afa2ad75e.1698833543.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/dsi: bxt/icl GPIO set value do
 not need gpio source
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
Cc: Hans de Goede <hdegoede@redhat.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 01, 2023 at 12:16:20PM +0200, Jani Nikula wrote:

In mine not published yet series it will be used for some of them IIRC.
I prefer to postpone this last patch.

The rest AFAIU you want to go before any rework done.
So, I can collect these into my v3 including Hans'
change.

-- 
With Best Regards,
Andy Shevchenko


