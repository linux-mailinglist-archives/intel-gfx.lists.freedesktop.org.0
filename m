Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v4M2NRVULGrbPQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 20:46:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BCC67BD6C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 20:46:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=FAv+zyHm;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E17E410F66A;
	Fri, 12 Jun 2026 18:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C4E10F669;
 Fri, 12 Jun 2026 18:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781289999;
 bh=Yr+B3omF5fQAuX1py0YmKEcqJKai7imIOgG+2AC64mQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FAv+zyHmLd5LR5whgReY+0FYuJSqlU9WO7X8fWT4Gnlf0U0odyxrAIJTBKTX6NeIB
 +aNqaLFo784BW+Sk5iB5YSD/wyAr4bFak3/gbGoQkd+XkLMA2NT0dC9tl27wE1ilU7
 QYOkwpugw3JLXLYUhCk/oDQOZ+SXgy0mAabkPobgoGucuFEvdBerzE3XKV3B90RJyf
 wweeslLYiLpqGs7Whk3bsqCWTP2qe4tLqEoDFYTalMdyb0yB8MvakUpz9Gb4fiHrC3
 Cl3BqHrXt5lEFeufNb6qUhnDj/CyzEKE8VYnCpmAYADXD1oCBC8iYjXrs8TZ8wuJKy
 TXhf95Srp83Kg==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id B642118835;
 Fri, 12 Jun 2026 20:46:39 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Fri, 12 Jun 2026 20:46:38 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: Re: [PATCH 1/3] drm/i915/dp: Prefer DSC over a 6 bpc uncompressed
 output
Date: Fri, 12 Jun 2026 20:46:38 +0200
Message-ID: <20260612184638.7667-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <aiw0oaqf6Obrg054@ideak-desk.lan>
References: <aiw0oaqf6Obrg054@ideak-desk.lan>
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
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,sms-medipool.de:dkim,sms-medipool.de:mid,sms-medipool.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 59BCC67BD6C

On Fri, Jun 12, 2026 at 07:32:33PM +0300, Imre Deak wrote:
> So, this would be a generalization for/instead of the HDR logic above
> using a intel_dp_in_hdr_mode() ? 30 : 24 limit (which would also apply a
> lower max-bpc limit for HDR as well).

Hi Imre,

yes, it follows the same pattern as the HDR logic, with one deliberate
difference.
The extra crtc_state->pipe_bpp check makes an explicit max bpc property
request below 8 win over the new limit, so the uncompressed 6 bpc path
stays reachable.
That keeps the current uAPI behavior under IGT kms_dither and leaves an
escape hatch for sinks with a broken DSC implementation.
The HDR limit currently wins over a lower property request, so a merge
into an intel_dp_in_hdr_mode() ? 30 : 24 block would, as you say, make
HDR honor such a request as well.
If that behavior change for HDR is acceptable I am happy to merge the
two blocks in a v2, otherwise I would keep them separate.

> There could be other reasons to prefer DSC, like a more finegrained BW
> allocation on MST links. But there are also reasons to prefer non-DSC
> mode like power saving (no need to enable either a DSC encoder in the
> source or a DSC decoder downstream), or reliability issues related to
> DSC.
>
> There's been a lot of talk internally about the above aspects and how to
> handle them in a way suitable in all scenarios. Hence, I'm not sure if
> adding more policies to the driver like the above bpp limit/DSC
> preference is too ad-hoc/early or not at this point.

I understand the hesitation about adding more policy, but for this
series the patch is less a quality preference and more a dependency of
patches 2 and 3.
Those open up RGB configurations on FRL links where previously only the
4:2:0 fallback existed, and for modes like 4k120 on a 4 lane HBR3 link
the only uncompressed fit is 6 bpc.
Both tested Synaptics PCON device families output corrupted FRL timings
for exactly that configuration and the TV shows a black screen, while
the same mode works with DSC.
So without patch 1 the series would trade the previous 4:2:0 picture
for a black screen on this hardware.

I also think the 6 bpc case is narrow enough that it does not really
open the general DSC versus non-DSC question.
6 bpc is a DP and eDP panel concept, HDMI only defines 8, 10, 12 and 16
bpc output depths.
A PCON that has to forward an 18 bpp stream to an HDMI sink has no
valid HDMI output format for it, which would explain why both device
families fail in the same way.
Windows and macOS drive 4k120 on these devices via DSC, and they have
no other choice, RGB 8 bpc at a 1188 MHz pixel clock needs 28.5 Gbps
against the 25.92 Gbps payload of a 4 lane HBR3 link.
There is also precedent for forcing DSC where the uncompressed 18 bpp
path is broken, commit 55eaef164174 ("drm/i915/dp_mst: Handle the
Synaptics HBlank expansion quirk") does the same for the affected MST
docks.
And only modes which do not fit through the link at 8 bpc are affected
at all, so in the uncompressed case the link already runs at the top of
its capability.
For the power and reliability concerns the max bpc property acts as the
userspace override, setting it to 6 restores today's behavior.

If the general form is still considered too early, I could narrow the
limit to HDMI sinks behind a PCON, gating it on
intel_dp_has_hdmi_sink().
There 6 bpc is not a valid output format on the HDMI side, so the
change is a correctness fix rather than a preference, and it would
still unblock patches 2 and 3.
Just let me know which shape you prefer.

Thanks,
Alex

