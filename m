Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 429A520F029
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 10:06:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9520089DFA;
	Tue, 30 Jun 2020 08:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E8289DFA
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 08:06:37 +0000 (UTC)
IronPort-SDR: 6Uwm+YLVD0ncUfS7Qjj3jkII9/AOB/feYBBeckDd6qHtTWuHpYqpbnGcUSwetcFSsmgHbxDplX
 0ohxw6NAR7QQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="164182612"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="164182612"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 01:06:36 -0700
IronPort-SDR: gS+RTNcA2lwWWEWY5uwIhlZmATJQDw04Guh3UTRx67Qwb0c5keIKoSIbEzHrPwsg+796ZgciqI
 ig+K5o0Ns1hg==
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="454515998"
Received: from rgrotewx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 01:06:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ramalingam C <ramalingam.c@intel.com>, Oliver Barta <o.barta89@gmail.com>
In-Reply-To: <20200505121213.GA24840@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200504123524.7731-1-oliver.barta@aptiv.com>
 <20200505073809.GA24093@intel.com>
 <CALJK04P5A0TV=eQ3QnmXNGbe76i5eUB+hdDxtTkyhV8kfpPeNQ@mail.gmail.com>
 <20200505121213.GA24840@intel.com>
Date: Tue, 30 Jun 2020 11:06:30 +0300
Message-ID: <87k0zpm0zd.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: HDCP: retry link integrity check
 on failure
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 May 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
> On 2020-05-05 at 14:06:51 +0200, Oliver Barta wrote:
>> On Tue, May 5, 2020 at 9:38 AM Ramalingam C <ramalingam.c@intel.com> wrote:
>> >
>> > On 2020-05-04 at 14:35:24 +0200, Oliver Barta wrote:
>> > > From: Oliver Barta <oliver.barta@aptiv.com>
>> > >
>> > > A single Ri mismatch doesn't automatically mean that the link integrity
>> > > is broken. Update and check of Ri and Ri' are done asynchronously. In
>> > > case an update happens just between the read of Ri' and the check against
>> > > Ri there will be a mismatch even if the link integrity is fine otherwise.
>> >
>> > Thanks for working on this. Btw, did you face this sporadic link check
>> > failure or theoretically you are fixing it?
>> >
>> > IMO this change will rule out possible sporadic link check failures as
>> > mentioned in the commit msg. Though I haven't faced this issue at my
>> > testings.
>> >
>> > Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>> >
>> 
>> I found it by code inspection, the probability for this to happen is
>> very low. In order to test the patch I'm decreasing the value of
>> DRM_HDCP_CHECK_PERIOD_MS to just a few ms. Once you do that it happens
>> every few seconds.
> Ok. That make sense. Thanks for the explanation.

Finally pushed, thanks for the patch and reviews.

Ram, I was kind of expecting you to push this.

BR,
Jani.


>
> -Ram
>> 
>> Thanks,
>> Oliver
>> 
>> > >
>> > > Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_hdmi.c | 19 ++++++++++++++++---
>> > >  1 file changed, 16 insertions(+), 3 deletions(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > > index 010f37240710..3156fde392f2 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > > @@ -1540,7 +1540,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
>> > >  }
>> > >
>> > >  static
>> > > -bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>> > > +bool intel_hdmi_hdcp_check_link_once(struct intel_digital_port *intel_dig_port)
>> > >  {
>> > >       struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>> > >       struct intel_connector *connector =
>> > > @@ -1563,8 +1563,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>> > >       if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
>> > >                     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
>> > >                    (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
>> > > -             drm_err(&i915->drm,
>> > > -                     "Ri' mismatch detected, link check failed (%x)\n",
>> > > +             drm_dbg_kms(&i915->drm, "Ri' mismatch detected (%x)\n",
>> > >                       intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
>> > >                                                       port)));
>> > >               return false;
>> > > @@ -1572,6 +1571,20 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>> > >       return true;
>> > >  }
>> > >
>> > > +static
>> > > +bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>> > > +{
>> > > +     struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>> > > +     int retry;
>> > > +
>> > > +     for (retry = 0; retry < 3; retry++)
>> > > +             if (intel_hdmi_hdcp_check_link_once(intel_dig_port))
>> > > +                     return true;
>> > > +
>> > > +     drm_err(&i915->drm, "Link check failed\n");
>> > > +     return false;
>> > > +}
>> > > +
>> > >  struct hdcp2_hdmi_msg_timeout {
>> > >       u8 msg_id;
>> > >       u16 timeout;
>> > > --
>> > > 2.20.1
>> > >

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
