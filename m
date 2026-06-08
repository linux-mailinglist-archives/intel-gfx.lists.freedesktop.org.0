Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S0NtOcpDJ2p2uAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 00:35:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1B565AFF7
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 00:35:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=HUGQByq+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7FAA10F9E9;
	Mon,  8 Jun 2026 22:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD64010F9E9;
 Mon,  8 Jun 2026 22:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1780958149;
 bh=qnS2Rl0CqNQ+Lqtu7CcV+DZOMbWi9Dtj9JXbo93dy58=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HUGQByq+dTMHqoMEiRhml6VVtJAGaMzDl+NQBaD3kMnr+EbDNG1IKyynMuCNmZ+ln
 Zks6Rnz9qi9oIn/k+AK3lJ2QXtGerWzbsKsu8VL94CB+1cXK2SEt4sgoKLEb4Sdp0A
 Z4tkabSqt9+lkAjii4a/Z9r/8rzCvK8/xV4HvsAY5WxBo6RP0dLH8owNAHeJhTfy+a
 rfuo71OJOUbRfoz1yS3vasCspbxLl9h2RrHbzqSngeLH0vYo4UhGfFBAFZLfmycQeU
 5cchIjn6nARf5t/PnjFbEK1ZqPJUTc4TJm69bCNNmSz1wcW2vzVi28f9c1Q7VLhvAp
 TngcDaeILrg1A==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id ED680978C;
 Tue,  9 Jun 2026 00:35:48 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Tue, 9 Jun 2026 00:35:48 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: Imre Deak <imre.deak@intel.com>
Cc: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/tc: Disable outputs instead of modesetting them
 on link reset
Date: Tue,  9 Jun 2026 00:35:48 +0200
Message-ID: <20260608223548.2574-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <aia3UtOtXD65T8Eq@ideak-desk.lan>
References: <20260605212837.4265-1-alexander.kaplan@sms-medipool.de>
 <aia3UtOtXD65T8Eq@ideak-desk.lan>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A1B565AFF7

Hi Imre,

first of all, thanks a lot for taking the time to look into this.
I really appreciate it.
This isn't really a niche case, just an early one.
I'm one of the first with Panther Lake, and setups like this will be
common once these machines are out there.

I'm afraid your patch is for a different issue, though.
For some background: this is Panther Lake (NUC 16 Pro) driving an LG OLED
TV through Synaptics VMM7100 based USB-C to HDMI 2.1 PCON adapters.
I have two such dongles and a TB4 dock here, all VMM7100 based, and all
three needed a series of fixes to work at all on this machine (DSC, FRL,
link training quirks).
This wedge is just the nastiest one, because almost every sink disconnect
on these adapters loses the signal until a reboot.
A few more fixes for the same path are on their way.

I did the test you asked for.
I rebooted latest drm-tip with your patch applied and drm.debug=0x15e,
and reproduced the problem by power-cycling the TV while the output was
active.
The full boot log up to the wedge is on the first ticket [1], with the
reproduction steps.

On PTL this never reaches the -EINVAL / WARN you get on the ADL/MTL
reports.
The recovery modeset computes a valid (degraded) config and commits it
against the dead link, link training fails, and the pipe is re-enabled
regardless, leaving the output enabled on a disconnected port.
After that the TC PHY ownership stays held, intel_tc_port_connected()
returns false and AUX is rejected, so the reconnect HPD never produces a
successful detect.
Keeping the DSC caps doesn't help here.
The caps we lose are dfp.*/EDID (the PCON FRL bandwidth) via
intel_dp_unset_edid(), not dsc_dpcd, and the second failure mode above is
independent of the sink caps anyway.

Same trigger, your patch vs. this one:

  with your patch (wedge):
  link_reset_work: TypeC DP-alt sink disconnected, resetting link
      connectors_changed=1
      disabling pipe A
      [DPRX] Link Training failed at link rate = 810000, lane count = 2
      enabling pipe A
  TV back on:
      DP-1 hotplug event (retry 0..5), detect never succeeds, wedged

  with this patch (recovers):
  link_reset_work: TypeC DP-alt sink disconnected, resetting link
      disabling pipe A
      TC port mode reset (dp-alt -> disconnected), PHY released
  TV back on:
      DP-1 status disconnected -> connected, detect works
      enabling pipe A, output back, no reboot

> The driver cannot disable an output that userspace has enabled. The TC
> port reset above should also result in a hotplug notification, which
> userspace should handle reconfiguring and re-enabling the output as
> needed.

I'd argue that's effectively what this ends up doing.
reset_link_commit() already re-drives the output today (the
connectors_changed modeset above), it isn't only a notification, and that
re-commit is what leaves the zombie behind.
Disabling instead releases the PHY, and as the second snippet shows, the
reconnect HPD then leads to a normal detect and userspace re-enables the
output the usual way.
With the re-commit the zombie keeps connected() false and every detect
fails, so userspace never gets the chance.

That said, if disabling from the reset work is the wrong layer for you,
I'm happy to rework it.
For example not re-enabling the pipe when link training fails in this
path, or whichever direction you prefer.
Just let me know.

Also, the patch you have here isn't quite current anymore.
I've since extended the same approach to also cover the TB4 dock (the
tbt-alt case), so I'd like to send a v2 that's almost identical plus that
small follow-up once we've settled the direction.

One side note: the original submission didn't get CI coverage, my address
isn't on the allowlist yet. I've asked i915-ci-infra@ to add it.

[1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14807

Thanks again,
Alexander

