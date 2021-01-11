Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD692F1EA6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 20:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB0689DE6;
	Mon, 11 Jan 2021 19:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62D889DE3;
 Mon, 11 Jan 2021 19:09:00 +0000 (UTC)
IronPort-SDR: yYRJr41oVV70Eu9lzJiBeP5Z61JCcmlM7IqNxMvd+RLP4Fh1hOhToGBxpmyjjPD3RRHAgItqsV
 8w+cgegXaGdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="157697944"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="157697944"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:09:00 -0800
IronPort-SDR: x8OKXI5OZ6oXbRp5kghbmzTVfHgMf41WuozxTfXnORmeWBmzptdRz7p3ipEc1UQR4ZnnrT2eiR
 Ec/TvW8G+ZWw==
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="352713907"
Received: from libresli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.207.39])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:08:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87h7nnwauw.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210107225207.28091-1-lyude@redhat.com>
 <20210107225207.28091-5-lyude@redhat.com> <87h7nnwauw.fsf@intel.com>
Date: Mon, 11 Jan 2021 21:08:48 +0200
Message-ID: <87eeirwatb.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 4/4] drm/dp: Revert "drm/dp: Introduce
 EDID-based quirks"
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
Cc: David Airlie <airlied@linux.ie>, Chris Wilson <chris@chris-wilson.co.uk>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Maxime Ripard <mripard@kernel.org>,
 Sean Paul <seanpaul@chromium.org>, "open
 list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 07 Jan 2021, Lyude Paul <lyude@redhat.com> wrote:
>> This reverts commit 0883ce8146ed6074c76399f4e70dbed788582e12. Originally
>> these quirks were added because of the issues with using the eDP
>> backlight interfaces on certain laptop panels, which made it impossible
>> to properly probe for DPCD backlight support without having a whitelist
>> for panels that we know have working VESA backlight control interfaces
>> over DPCD. As well, it should be noted it was impossible to use the
>> normal sink OUI for recognizing these panels as none of them actually
>> filled out their OUIs, hence needing to resort to checking EDIDs.
>>
>> At the time we weren't really sure why certain panels had issues with
>> DPCD backlight controls, but we eventually figured out that there was a
>> second interface that these problematic laptop panels actually did work
>> with and advertise properly: Intel's proprietary backlight interface for
>> HDR panels. So far the testing we've done hasn't brought any panels to
>> light that advertise this interface and don't support it properly, which
>> means we finally have a real solution to this problem.
>>
>> As a result, we now have no need for the force DPCD backlight quirk, and
>> furthermore this also removes the need for any kind of EDID quirk
>> checking in DRM. So, let's just revert it for now since we were the only
>> driver using this.
>>
>> v3:
>> * Rebase
>> v2:
>> * Fix indenting error picked up by checkpatch in
>>   intel_edp_init_connector()
>>
>> Signed-off-by: Lyude Paul <lyude@redhat.com>
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>
> Still stands.

PS. You'll still need drm or drm-misc maintainer ack if you want to
merge this through drm-intel-next.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
