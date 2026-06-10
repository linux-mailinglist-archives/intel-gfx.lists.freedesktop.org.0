Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5GsiOtGjKWqQbAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:50:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750BC66C0D8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:50:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=oU0yDmQp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08EF810EB85;
	Wed, 10 Jun 2026 17:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFDA10EB80;
 Wed, 10 Jun 2026 17:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113805;
 bh=EMMDHhskv1+L9gE5Bz3TLUe7zsR5V4Dwz/Pv0wgUmvo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oU0yDmQpRgo8WHZNCJ41k893Y913oOhYJEh2g02dVvfhmkCeHCorNzDBpGxSkn6QN
 YAis46RYZiyzfRbMHDH/+7XnqI5PgBksBwy3VYqFQpoKqDTaIxMVknVJ6lJfmuvkdl
 NvsiroieoAiTdpmevkqbLVq4t44xhtdet/2vSK8krME9DG4ucasYbemHnPnV0iwM3Y
 UCtAF9+0ijDxQturApRXdSqjExPWeW6MejuRvAakeoYRaklXnnot6zOUOhX39Qvzkw
 A7t1RX3uEVP+ensGFkYIpcs7a4W0vDftbBhUtBEWOSBqrdd1GbZHrs6mwSbFb4HWTE
 0HqoYkwT9XoIw==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id C802711D57;
 Wed, 10 Jun 2026 19:50:05 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:50:04 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: Jani Nikula <jani.nikula@linux.intel.com>, Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 alexander.kaplan@sms-medipool.de
Subject: Re: [PATCH] drm/i915/tc: Disable outputs instead of modesetting them
 on link reset
Date: Wed, 10 Jun 2026 19:50:03 +0200
Message-ID: <20260610175003.6352-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <b912629b7fc5844a9e9d3262308835ec3745854e@intel.com>
References: <b912629b7fc5844a9e9d3262308835ec3745854e@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,sms-medipool.de:dkim,sms-medipool.de:mid,sms-medipool.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 750BC66C0D8

On Wed, 10 Jun 2026, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> If you're referring to [1], please just send the patches. We can let the
> individual patches through CI.

Hi Jani,

thanks for the offer :-)

[1] is solved in the meantime and it turned out not to be a kernel bug
at all, my patch was aiming at the wrong layer.
Imre was right from the beginning and pointed me in the right
direction.
The real bug is in KWin: on a sink disconnect it keeps the output
enabled and never commits the disable, which is what left the TC PHY
wedged (the no-signal state with all the VMM7100 dongles and the TB4
dock).
I have a KWin fix running here that I can confirm resolves the issue
entirely, verified across all the scenarios that used to trigger the
wedge, and I will submit it as a merge request to KWin.
So please consider [1] withdrawn.

The patches you meant are now on the lists:

[2] drm/i915/dp: Fix FRL rate selection and deep color for HDMI sinks
    behind FRL PCONs
    https://lore.kernel.org/r/20260610174413.5881-1-alexander.kaplan@sms-medipool.de
[3] drm/dp: Avoid RBR on Synaptics VMM7100 PCONs failing channel EQ
    https://lore.kernel.org/r/20260610174807.6231-1-alexander.kaplan@sms-medipool.de
[4] drm/dp: Read the PCON max FRL bandwidth only for HDMI DFPs
    https://lore.kernel.org/r/20260610174819.6258-1-alexander.kaplan@sms-medipool.de
[5] drm/dp: Service the CEC tunneling IRQ flags without CEC_IRQ in ESI1
    https://lore.kernel.org/r/20260610174833.6284-1-alexander.kaplan@sms-medipool.de

There is also an unrelated ALSA fix from the same machine:

[6] ALSA: hda/hdmi: disable KAE for Intel Panther Lake
    https://lore.kernel.org/r/20260610174834.6301-1-alexander.kaplan@sms-medipool.de

If something in there is not correct to spec, I am glad about a
pointer in the right direction.
Which ones you let through CI I leave to you.

Thanks a lot!

Alexander

[1] https://lore.kernel.org/r/20260605212837.4265-1-alexander.kaplan@sms-medipool.de

