Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD3A6361C3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 15:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD6510E55F;
	Wed, 23 Nov 2022 14:29:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC4810E206;
 Wed, 23 Nov 2022 14:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669213751; x=1700749751;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EHIebqLa03sscCy2G1HPFRaMhMaapA0LRQ/7aYLe60o=;
 b=G8OIed8geIR27pcldNZfZLR20Ryv3jqRC8obyEbFoloAw13rrxQ7cy39
 W7TTgDle9CDrAinLxNvWUK1QybykdvFKGWcU3Z2BrShi5XpWJwRzdK67r
 YiW6Izjw+ayZt2c+UyHcmBFE2wfIiBrrcXMw/7ufnqxbJrgAMXaxG3DFE
 a4Zg4d4FN9W4lPOFhCUei0cdx1ogUtJdO2nOAfyHzTGy16MBoUHy6UfUi
 zuHrD5ScuUEZ9EIkc89GQe+L2kui1x46aBhn9vShDNl61eaewDwQgs4mh
 rQnSB9dhGK/ky7IAe20UxXjnlFAfI/1GpuWk/PgKg6XXo3E70fwheceEv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="314110717"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="314110717"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 06:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="766737472"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="766737472"
Received: from mattu-haswell.fi.intel.com (HELO [10.237.72.199])
 ([10.237.72.199])
 by orsmga004.jf.intel.com with ESMTP; 23 Nov 2022 06:29:05 -0800
Message-ID: <3c56ee14-2ff6-8b45-4407-8e7828ed4236@linux.intel.com>
Date: Wed, 23 Nov 2022 16:30:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.2
Content-Language: en-US
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jakob Koschel <jakobkoschel@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20221122153516.52577-1-andriy.shevchenko@linux.intel.com>
 <20221122153516.52577-4-andriy.shevchenko@linux.intel.com>
From: Mathias Nyman <mathias.nyman@linux.intel.com>
In-Reply-To: <20221122153516.52577-4-andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 4/4] xhci: Convert to use list_count()
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
 Mathias Nyman <mathias.nyman@intel.com>, Hans de Goede <hdegoede@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22.11.2022 17.35, Andy Shevchenko wrote:
> The list API now provides the list_count() to help with counting
> existing nodes in the list. Utilise it.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
> v3: no change
> v2: no change
>   drivers/usb/host/xhci-ring.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 

Acked-by: Mathias Nyman <mathias.nyman@linux.intel.com>
