Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IV+OMQ1gKGqpCwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 20:48:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A585663685
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 20:48:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=gUCIjIAD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536B210E389;
	Tue,  9 Jun 2026 18:48:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0385B10E389;
 Tue,  9 Jun 2026 18:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781030919;
 bh=LwPA+aKCQgEX7hlIXUQnN0hhNWKVb9eeWJ7+ORxY/ec=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gUCIjIAD7LP8LYBCnO7ZQCq7EZi0/i2HvBhHwjle+4hpE+1dCrpSK2OhrK9TUdT2d
 zwv9l2wgNIrHZB/PqQExK5eg2fB4ScPuikX/e9MCnR2CsQPNSp42tf4W2fz/Vi9fjA
 bzndA8qziX5Ym38cV7g42oQ92o5uGwDbowE8ttRXO/ceJidQoe+01g9+aMjd66vl5s
 lQsGupJMQegUCmwcRncm8qU1BiO6KiULgKgCHKOxh0znZhbYqWWstlyuJHMYwAqlYS
 vWeywXQ+0Y8QGNHyzpd9wqpIqhgEa1BWcyq6oTw2bUESiUAg7/tMMa6VAE5BnJ7IwW
 9hQQWMZKyYQEA==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id 8065ED2B9;
 Tue,  9 Jun 2026 20:48:39 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Tue, 9 Jun 2026 20:48:38 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: Imre Deak <imre.deak@intel.com>
Cc: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/tc: Disable outputs instead of modesetting them
 on link reset
Date: Tue,  9 Jun 2026 20:48:38 +0200
Message-ID: <20260609184838.4335-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <aigjtXiFqvxTGUnD@ideak-desk.lan>
References: <20260605212837.4265-1-alexander.kaplan@sms-medipool.de>
 <aia3UtOtXD65T8Eq@ideak-desk.lan>
 <20260608223548.2574-1-alexander.kaplan@sms-medipool.de>
 <aigjtXiFqvxTGUnD@ideak-desk.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sms-medipool.de:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0A585663685

Hi Imre,

You're right, sorry for the noise.
The fix doesn't belong in the kernel here.

I turned on KWin's DRM debug logging and reproduced again on latest drm-tip with your DSC cap patch.
KWin does react to the disconnect, it just never emits the disabling modeset, because DP-1 is its only output:

  [kernel] 19:57:15.58  [CONNECTOR:512:DP-1] status updated from connected to disconnected
  [kernel] 19:57:15.58  [CONNECTOR:512:DP-1] generating connector hotplug event
  [kwin]   19:57:15     Received change event for monitored drm device "/dev/dri/card0"
  [kwin]   19:57:15     Removing output KWin::DrmOutput(...)
           -> no atomic commit from user space, CRTC pipe A stays active
  [kernel] 19:57:17.63  intel_tc_port_link_reset_work Port D/TC#1: TypeC DP-alt sink disconnected, resetting link
  [kernel] 19:57:18.13  [CONNECTOR:512:DP-1] Link Training failed at link rate = 810000, lane count = 2
  [kernel] 19:57:18.32  intel_enable_transcoder enabling pipe A   <- re-enabled on the dead link
  [kernel] 19:57:36+    DP-1 hotplug retry 0..5 -> detect never succeeds -> wedged

So KWin tears down its output object on the hotplug, but for the last output it drops it internally without committing a CRTC off, so the pipe is never disabled.
About 2 s later the TC link reset worker re-enables that still active pipe on the dead link.
Had the CRTC been disabled, the pipe and its TC link ref would be gone before the worker runs, which I think avoids the wedge.
So this one is mine to fix in user space.
I'll check whether current KWin already handles last output removal differently, and otherwise write the fix there.
Thanks for pushing back.

The full boot log up to the wedge and the KWin log are on the ticket [1].

On a separate note, I have a few other small display fixes for this same hardware (Synaptics VMM7100 PCON on Panther Lake), still blocked from submitting by the CI allowlist.
If you have the bandwidth I'd welcome a quick gut check, otherwise I'll post them properly once I'm allowlisted:

  - a DP quirk so the PCON doesn't get stuck at 2 lanes / 6 bpc after a failed RBR link training handshake
  - FRL deep color plus preferring DSC over a 6 bpc uncompressed output, which gets 4K@120 RGB 12 bpc working
  - reading the PCON max FRL bandwidth only for HDMI DFPs in the DP core, it is read unconditionally today
  - a drm_dp_cec fix so CEC tunneling works on these dongles, they do support CEC and it is fully functional to my TV

No worries if you don't have time.
The allowlist route is fine too.

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14807

Thanks,
Alexander

