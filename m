Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA9663407A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 16:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B556610E416;
	Tue, 22 Nov 2022 15:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E094E10E416;
 Tue, 22 Nov 2022 15:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669131810; x=1700667810;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=upTqDhnYPbQQtcnEG3sH1opy5XLziUPK5oFbYqhMYmU=;
 b=Mav6QeQaKqHkh1lCBDOuK0zyZjWNtCd+fa3uSgC0yXzQUNIZ/5U+RR4C
 55ciOYWa+4xnONlOg7EtpSdOCJ1yq/9vBOet2lCvAWKf42nJwlMtreP3p
 GIQZeHU+1RYbjVygMY4l8OQTabjqGeXZuBSaI2jygGoAI+sbWSW7JCdMD
 Ezf+hEYKbyESSmIVEFyg+LXIbcyo417PPWZY5rBVMSa3bVlPJxqRxZSlF
 QIUPabBpdMqGaIyxS1qxOhaznl4kW+9UsfOtK1cpLrREa1oFWOgKGO/dP
 kOeMzpVz9VhQ/GGSltMgSWJdp5Why8tLEptXtA9buPFaTj8NYkZZ+goy1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="294235544"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="294235544"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 07:43:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="643762489"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="643762489"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga007.fm.intel.com with ESMTP; 22 Nov 2022 07:43:25 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1oxVQh-00FtHg-2h; Tue, 22 Nov 2022 17:43:23 +0200
Date: Tue, 22 Nov 2022 17:43:23 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jakob Koschel <jakobkoschel@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mathias Nyman <mathias.nyman@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Message-ID: <Y3zuG9bRePqCzbxz@smile.fi.intel.com>
References: <20221122153516.52577-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221122153516.52577-1-andriy.shevchenko@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v3 1/4] i915: Move list_count() to list.h
 for broader use
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
Cc: Kevin Cernekee <cernekee@gmail.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 22, 2022 at 05:35:13PM +0200, Andy Shevchenko wrote:
> Some of the existing users, and definitely will be new ones, want to
> count existing nodes in the list. Provide a generic API for that by
> moving code from i915 to list.h.

Sorry for the noise, forgot to squash one part, so it get's not compilable.

-- 
With Best Regards,
Andy Shevchenko


