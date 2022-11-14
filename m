Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E4D627A17
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 11:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2254310E097;
	Mon, 14 Nov 2022 10:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A320610E028;
 Mon, 14 Nov 2022 10:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668420643; x=1699956643;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Zc1y8BWK7mjmeSrhkG74pWOJjIpoWMU+QYmFu9YybfI=;
 b=LOlu3FglsgA6OizjvqDy2TC1E2My0RUfvkLc3UmgUU8kuPSmulMHTetd
 t+/VqQbkcYQKYhMySqrUrpr2VTErTEtTlMyPE756QVM9RYvGc1WK7bycz
 FpowoQ/XQTrnDQP7bby5FZNCPT9E4vUqrjfY808zm8n4p/qD8zaepnIeU
 ozWhOb652J4mWESn7PR2DkO2tA0cWqwn4RT1suaetBgWiGo95OzqqYEHe
 kWuB5iVLxAsGVhOgTZK7ayUxWP1ZQuZzQnpx8GY9CUtkJeCABB4ExUdtj
 0TPQrRfijJ8RlwkoN/ZsmXK5cT9gxKKgx75Uw8+k/gniTyUoIpvD6GOJK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="309558985"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="309558985"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 02:10:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="589312433"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="589312433"
Received: from dsmahang-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.240])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 02:10:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Daniel Vetter <daniel.vetter@ffwll.ch>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
In-Reply-To: <33ef1207-aad7-b7cd-61ac-327e9afb0699@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221114102327.6d53341e@canb.auug.org.au>
 <33ef1207-aad7-b7cd-61ac-327e9afb0699@redhat.com>
Date: Mon, 14 Nov 2022 12:10:37 +0200
Message-ID: <87cz9p4zj6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-intel tree with
 Linus' tree
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 14 Nov 2022, Hans de Goede <hdegoede@redhat.com> wrote:
> Hi,
>
> On 11/14/22 00:23, Stephen Rothwell wrote:
>> Hi all,
>> 
>> Today's linux-next merge of the drm-intel tree got a conflict in:
>> 
>>   drivers/gpu/drm/i915/display/intel_backlight.c
>> 
>> between commit:
>> 
>>   b1d36e73cc1c ("drm/i915: Don't register backlight when another backlight should be used (v2)")
>> 
>> from Linus' tree and commit:
>> 
>>   801543b2593b ("drm/i915: stop including i915_irq.h from i915_trace.h")
>> 
>> from the drm-intel tree.
>
> This is weird, because the:
>
>    b1d36e73cc1c ("drm/i915: Don't register backlight when another backlight should be used (v2)")
>
> commit is in 6.1-rc1, so there can only be a conflict it 6.1-rc1 has not
> been back-merged into drm-intel yet ?

That's the reason it *is* a conflict, right?

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
