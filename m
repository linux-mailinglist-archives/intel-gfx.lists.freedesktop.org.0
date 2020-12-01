Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2B42C971E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 06:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64B36E483;
	Tue,  1 Dec 2020 05:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663516E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 05:46:20 +0000 (UTC)
IronPort-SDR: TFPVn8wRCZ0cJEnM5A/kZa3TmUywIQBUmy9fY1/F8BO+u6foDFaEqCW7gt9LzhbMYG/oQkwI1Z
 sC3XLngyZN9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="234374466"
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; d="scan'208";a="234374466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 21:46:19 -0800
IronPort-SDR: QnSg7Q/7Xd6GNIaKG2Z64mhTDp0U1LbiK+yu/btG5qhFuV+/3dB1pneZtExkelwTOGH6pBXK9J
 VHyGAvFXb9qQ==
X-IronPort-AV: E=Sophos;i="5.78,383,1599548400"; d="scan'208";a="334947122"
Received: from mehronek-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.169.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 21:46:19 -0800
Date: Mon, 30 Nov 2020 21:46:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20201201054618.brmf3ugxhivest6q@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201127145748.29491-1-chris@chris-wilson.co.uk>
 <20201128045229.kvxiqjin7k67zkod@ldmartin-desk1>
 <20201130141954.GS6112@intel.com>
 <20201130173104.xw5gzrs3t6rmpby6@ldmartin-desk1>
 <20201130174639.GU6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201130174639.GU6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: re-order if/else ladder
 for hpd_irq_setup"
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 30, 2020 at 07:46:39PM +0200, Ville Syrj=E4l=E4 wrote:
>On Mon, Nov 30, 2020 at 09:31:04AM -0800, Lucas De Marchi wrote:
>> On Mon, Nov 30, 2020 at 04:19:54PM +0200, Ville Syrj=E4l=E4 wrote:
>> >On Fri, Nov 27, 2020 at 08:52:29PM -0800, Lucas De Marchi wrote:
>> >> On Fri, Nov 27, 2020 at 02:57:48PM +0000, Chris Wilson wrote:
>> >> >We now use ilk_hpd_irq_setup for all GMCH platforms that do not have
>> >> >hotplug. These are early gen3 and gen2 devices that now explode on b=
oot
>> >> >as they try to access non-existent registers.
>> >>
>> >> humn... true, my bad. But I don't think a revert is the right fix. It
>> >> would be much better if we would not be setting up the hpd setup
>> >> function at all for platforms that do not have hotplug. I think a
>> >> separate early check for I915_HAS_HOTPLUG() would be deserved.
>> >
>> >I think it generally leads to much less convoluted logic when we keep
>> >gmch vs. rest separate. So I'm confused as to what we're even trying
>> >to achieve here?
>>
>> 1) Stop trying to setup hotplug in a platform that doesn't have hotplug
>> was the main focus. Later it would be better to move some of these
>> hotplug to display/  as they are clearly display related and account for
>> a great portion of i915_irq.c.
>>
>> I left the I915_HAS_HOTPLUG() in the middle by
>> mistake, it should had been an earlier call.
>>
>> 2) semi-related is the move of GMCH to the middle and I guess this is
>> what you're complaining here. I find it's cumbersome to have it
>> separate as we go and extend these checks for newer platforms. Almost
>> everywhere we settled on having last platform first in the if/else
>> ladders - this makes it much more clear on how/where to add a new
>> platform.
>
>You never touch the gmch path for new platforms. What could be more
>clear than that?

the second level branch mixing the code path for new and old platform
instead of following the convention we settled on.  But I'm ok with
moving it back as a HAS_* check in the middle of GEN_* check is proving
controversial.

Lucas De Marchi

>
>-- =

>Ville Syrj=E4l=E4
>Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
