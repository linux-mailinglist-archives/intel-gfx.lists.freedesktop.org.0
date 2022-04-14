Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BF3500FEC
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 16:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F57F10FE2F;
	Thu, 14 Apr 2022 14:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AE610FE16;
 Thu, 14 Apr 2022 14:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649946170; x=1681482170;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wcOZ08M12WSd63gaezIShH6Ul4Xo33/RqAiEoJUbfpM=;
 b=BAuk0CLRAF68TyhSajEVm41chwDHij6U3D6swD+wNJQF2QLFHCcSiQrH
 eYZy+66ZDjJ4eGVx3qx+t6Eku2HiPg+Wc1fz6PdfOz82UTz3fLicTmk0q
 iWeE1zQkHN9MjXx3ObL3euDXerQpoROdmTMkPY85Di+LvT/CfqBRq7uYV
 /149n+CcmE+xqToJFaquQfAGzXlOEDqydbl0bY6SYOlhiF2KaTuqx/JnM
 WJN198PEVpp77XMqnNBe5qLY7nIzqRfHUoPwGkn0NVi2dx7DE74/8oLhC
 bAMdEyiAzxyGR5n7rfFMYhwfbj+94Cz7z/fKX45jnmPh1IpY9DtmPO8W8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262383632"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="262383632"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 07:22:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="573817803"
Received: from nplaweck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.236])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 07:22:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <YlgfXxjefuxiXjtC@kroah.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220414123033.654198-1-jani.nikula@intel.com>
 <YlgfXxjefuxiXjtC@kroah.com>
Date: Thu, 14 Apr 2022 17:22:47 +0300
Message-ID: <87a6cneoco.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/1] add support for enum module parameters
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
Cc: Andrew Morton <akpm@linux-foundation.org>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 14 Apr 2022, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> On Thu, Apr 14, 2022 at 03:30:32PM +0300, Jani Nikula wrote:
>> Hey, I've sent this before, ages ago, but haven't really followed
>> through with it. I still think it would be useful for many scenarios
>> where a plain number is a clumsy interface for a module param.
>> 
>> Thoughts?
>
> We should not be adding new module parameters anyway (they operate on
> code, not data/devices), so what would this be used for?

I think it's just easier to use names than random values, and this also
gives you range check on the input.

I also keep telling people not to add new module parameters, but it's
not like they're going away anytime soon.

If there's a solution to being able to pass device specific debug
parameters at probe time, I'm all ears. At least i915 has a bunch of
things which can't really be changed after probe, when debugfs for the
device is around. Module parameters aren't ideal, but debugfs doesn't
work for this.


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
