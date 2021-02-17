Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 167B931E90E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Feb 2021 12:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C2E89B03;
	Thu, 18 Feb 2021 11:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2370 seconds by postgrey-1.36 at gabe;
 Wed, 17 Feb 2021 15:12:00 UTC
Received: from gofer.mess.org (gofer.mess.org [88.97.38.141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94BE892F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 15:12:00 +0000 (UTC)
Received: by gofer.mess.org (Postfix, from userid 1000)
 id 56BECC63F2; Wed, 17 Feb 2021 15:11:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mess.org; s=2020;
 t=1613574719; bh=dztq0Nyqo1+adtpnKxUcWBY0vQ2qnbdytmHPz6zf4b8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rBfHTa/z9hzpA2Mtqe4ZK7WyF+mhBLMw1SmUveU91GcWkx1dPOAyGOqMMqY/mHemS
 g0/jaO8B7QmGtOXAmM5qqcSST4Vue+CjJDmQHP7vp9i15PQNbCOk10MUU9fgkn4KUG
 pRZauiMoGhDZHRgJ98bwZj3DHtiN4ReVRat56mlv82vWuujQ1KhVuNMMqIml1YjKec
 RKhvkcWWyEI91fk6Dd203/kjRW2XNwq4Tgk+mFq2AaA9yBi9Xrioc6np1Gl4aQxhAb
 cXJdC3nimC63XThDAJOkGJpyAWfVOMybD0x7VHLhlViy39L8kgcfOAC0XjhQ0FfAa3
 n11ew4t9g2zqA==
Date: Wed, 17 Feb 2021 15:11:59 +0000
From: Sean Young <sean@mess.org>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <20210217151159.GA29680@gofer.mess.org>
References: <91b0f6c8-79ca-d04f-1ae0-66bf954dd421@redhat.com>
 <8d24dad6-cb2a-da91-bd38-887a7aa3282f@xs4all.nl>
 <20210217143223.GA28632@gofer.mess.org>
 <1c081320-d040-12b7-fbd6-e6b8c03c2ae8@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1c081320-d040-12b7-fbd6-e6b8c03c2ae8@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Approved-At: Thu, 18 Feb 2021 11:42:33 +0000
Subject: Re: [Intel-gfx] Issue with cec_register_adapter calling
 request_module() from an async context when called from intel_dp_detect
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, Feb 17, 2021 at 04:04:11PM +0100, Hans de Goede wrote:
> On 2/17/21 3:32 PM, Sean Young wrote:
> > On Wed, Feb 17, 2021 at 01:41:46PM +0100, Hans Verkuil wrote:
> >> Hi Hans,
> >>
> >> On 17/02/2021 13:24, Hans de Goede wrote:
> >>> <resend with the linux-media list added to the Cc>
> >>>
> >>> Hi Hans,
> >>>
> >>> Fedora has a (opt-in) system to automatically collect backtraces from software
> >>> crashing on users systems.
> >>>
> >>> This includes collecting kernel backtraces (including once triggered by
> >>> WARN macros) while looking a the top 10 of the most reported backtrace during the
> >>> last 2 weeks report from ABRT: https://retrace.fedoraproject.org/faf/problems/
> >>>
> >>> I noticed the following backtrace:
> >>> https://retrace.fedoraproject.org/faf/problems/8150/
> >>> which has been reported 170000 times by Fedora users who have opted-in during the
> >>> last 14 days.
> >>>
> >>> The issue here is that cec_register_adapter ends up calling request_module()
> >>> from an async context, triggering this warn in kernel/kmod.c __request_module():
> >>>
> >>>         /*
> >>>          * We don't allow synchronous module loading from async.  Module
> >>>          * init may invoke async_synchronize_full() which will end up
> >>>          * waiting for this task which already is waiting for the module
> >>>          * loading to complete, leading to a deadlock.
> >>>          */
> >>>         WARN_ON_ONCE(wait && current_is_async());
> >>>
> >>> The call-path leading to this goes like this:
> >>>
> >>>  ? kvasprintf+0x6d/0xa0
> >>>  ? kobject_set_name_vargs+0x6f/0x90
> >>>  rc_map_get+0x30/0x60
> >>
> >> It's not CEC, it is rc_map_get that calls request_module() for rc-cec.ko.
> >>
> >> I've added Sean Young to the CC list.
> >>
> >> Sean, is it possible to treat rc-cec as a built-in if MEDIA_CEC_RC is set?
> >>
> >> I think this issue is very specific to CEC. I would not expect to see this
> >> with any other rc keymap.
> > 
> > So CEC creates an RC device with a keymap (cec keymap, of course) and then
> > the keymap needs to be loaded. We certainly don't want all keymaps as
> > builtins, that would be a waste.
> > 
> > The cec keymap is scanned once to build a map from cec codes to linux
> > keycodes; making it builtin is not ideal, and makes the build system a
> > bit messy.
> > 
> > I don't think we can load the keymap later, user space may start remapping
> > the keymap from udev.
> > 
> > Possibly we could create the cec or rc device later but this could be a bit
> > messy.
> > 
> > Could CEC specify:
> > 
> > #if IS_ENABLED(CONFIG_MEDIA_CEC_RC)
> > MODULE_SOFTDEP("rc-cec")
> > #endif
> 
> That would need to be:
> 
> MODULE_SOFTDEP("pre: rc-cec")
> 
> I see that the drm_kms_helper and i915 drivers both depend on the cec module already,
> so yes if that module will request for rc-cec to be loaded before it is loaded
> (and thus before i915 is loaded) then that should work around this.
> 
> Assuming the user is using a module-loader which honors the softdep...
> 
> Also this assumes that rc_map_get is smart enough to not call request_module()
> if the module is already loaded, is that the case ?

Yes, see rc_map_get().

Thanks,

Sean
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
