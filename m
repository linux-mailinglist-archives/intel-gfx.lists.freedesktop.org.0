Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lXRjISuWKmootAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 13:04:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C755767120F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 13:04:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=mVoMeNkI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B265310EE85;
	Thu, 11 Jun 2026 11:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9A910EE75;
 Thu, 11 Jun 2026 11:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781175846;
 bh=sbqTH6csCbYzGVd++Hm2MAfMl1HHDKWuOAqr7ifXNfQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mVoMeNkI1xgrP7xlwdAP749yeOOecY1LF/Dw+i8lNLEEUlNFugBXcR+82Mo+A3qZn
 ag0Bl7i+iUymb+s0WruPuQgOSeksice3vxHUWTyFMx0xwJNJNMI0+QFEN+7BpbVERu
 uLNKDTjKvpI3TA3GctnD7cbbwzhmQR+pd3n0kQA1QgAjM6FBYD9yMy1hg7ja3cDTI0
 6GPFsGhNIZd7X3ikXmOHXDJpuwSTopdPvbfB/ZcpSCKD6HPosnP9eoKTQtXVz8H7/y
 LJjMPwtzkiAJWe+cqvZlORbzZKB9CF/CgDDvWBIbEUgWEMKcObXfmmdfz1dqNY15Xf
 JtijXr5QvuNPA==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id E3A3D141C6;
 Thu, 11 Jun 2026 13:04:05 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Thu, 11 Jun 2026 13:04:04 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: Hans Verkuil <hverkuil+cisco@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Hans Verkuil <hverkuil@kernel.org>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Kaplan <alexander.kaplan@sms-medipool.de>
Subject: Re: [PATCH] drm/dp: Service the CEC tunneling IRQ flags without
 CEC_IRQ in ESI1
Date: Thu, 11 Jun 2026 13:04:04 +0200
Message-ID: <20260611110404.11637-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <e3b30034-70c2-43ce-be46-938e2b07d5ba@kernel.org>
References: <e3b30034-70c2-43ce-be46-938e2b07d5ba@kernel.org>
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[sms-medipool.de,reject];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[sms-medipool.de:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sms-medipool.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.kaplan@sms-medipool.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,cisco];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,sms-medipool.de:dkim,sms-medipool.de:mid,sms-medipool.de:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C755767120F

On 11/06/2026 09:01, Hans Verkuil wrote:
> I saw that you added a quirk for this device in this patch series:
>
> https://lore.kernel.org/all/20260610174807.6231-2-alexander.kaplan@sms-medipool.de/
>
> Should we add a quirk for this as well? It's not worth it if that's a lot of work,
> but if it is easy to add, then I think that's the better approach for this.

Hi Hans,

thanks for the suggestion. A quirk would indeed be easy to add.
drm_dp_cec.c already reads the branch ident for its status debugfs,
so gating the relaxed ESI check on a DPCD quirk entry is a handful
of lines.

However, while validating which devices such a quirk should cover,
I found a firmware problem that makes me withdraw this patch
instead.

I tested all three Synaptics VMM7100 based devices I have:

- Club3D CAC-2505 (branch ID "SYNAq", FW 7.1): CEC works with my
  patch. This is the device the patch was written for.
- A USB-C to HDMI dongle with the macOS 4K120 firmware (branch ID
  "SYNAq", FW 7.2): announces CEC capability but never services the
  tunneling registers. TX requests and incoming bus traffic are
  both ignored.
- A Thunderbolt 4 dock (branch ID "SYNAa", FW 6.5): same dead stub.

On the one working device the firmware causes an audible audio
dropout of roughly 100 ms for every CEC message it handles while
CEC tunneling is enabled.
This affects its own transmissions, directed traffic and even
broadcasts it does not ack.
My LG TV broadcasts its vendor ID and polls for playback devices
every 14 seconds, around the clock.
With a configured CEC adapter that means a dropout every few
seconds during audio playback.
I verified this by correlating heard dropouts against monitored
CEC messages, 9 out of 9 matched to the second with no false
positives.
With tunneling disabled the same bus traffic causes no dropouts
at all.

The dropout length matches the frame time on the CEC wire and AUX
stays fully responsive during the stall.
It also reproduces with the kernel completely uninvolved when I
drive the DPCD tunneling registers directly from userspace.
So the stall happens inside the dongle MCU while it bit-bangs the
CEC line and I see no host-reachable way to fix or mitigate it.

That changes the picture for the patch.
The only known device family with working CEC tunneling has this
defect.
Merging it would hand users working CEC plus broken audio, and
setups like Kodi configure CEC automatically, so exactly those
users would then have to disable CEC again to get clean audio.
That is a bad trade, even behind a quirk.

My guess is that Synaptics never shipped the CEC firmware glue
before.
The CAC-2505 is a recent product and probably carries the newest
firmware branch, the other two devices are older designs.
If a future firmware shows up with working CEC and without the
audio stall, I will resubmit this together with the device quirk
you suggested.

Sorry for the noise, and thanks for the review.

Alexander

