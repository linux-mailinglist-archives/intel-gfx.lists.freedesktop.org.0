Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tNtyD0HSKmooxgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 17:20:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BF6673054
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 17:20:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b=opECYIuR;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FF010E7BB;
	Thu, 11 Jun 2026 15:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D66410E7BB;
 Thu, 11 Jun 2026 15:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781191227;
 bh=xOV2aUFkVma787OXRJ1Qw2lSfZjRs5JNr/yEhO5HvRo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=opECYIuRdPjgIpdwkhR4V7GXAEPDTsa/psaVl9SkNGp7wRp/EBzAexyYgkdyD3gsr
 NI4YBgL1Ua+wdrdmM5yTIBoSFYxX3VSz419VAM++gbCb1+be0cnFIA/hsEMJI/vrlA
 Wpgb/MKi6b2V4ZsOnaZK9nA0xdmWRS4wkm4malS0PzGS1xsrtuRgugnoCMI2xv5BUQ
 +8ctmlC8fkr7q4jJT3cqHgs/dvZ5QGF+opmGiB7nTTiXS8ZiI4Mg/kgMtqgzFtzcYJ
 ciYYHRS4dYNvGU0tCW7lGtSemZR2wjT+HiWhdqn9WN97DYbzjeYfh+Mt1aRnYAWRfw
 Tpz4ESiVte+AQ==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id CB85A151DB;
 Thu, 11 Jun 2026 17:20:27 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Thu, 11 Jun 2026 17:20:25 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: Imre Deak <imre.deak@intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: Re: [PATCH 2/2] drm/i915/dp: Skip RBR for sinks with the
 NO_LINK_RATE_RBR quirk
Date: Thu, 11 Jun 2026 17:20:25 +0200
Message-ID: <20260611152025.25115-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <airFbeAOC7_czAe5@ideak-desk.lan>
References: <airFbeAOC7_czAe5@ideak-desk.lan>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B7BF6673054

On Thu, Jun 11, 2026 at 05:25:49PM +0300, Imre Deak wrote:
> Thanks for the tests and root causing of the issue.
>
> I think the right solution to avoid using a problematic link
> configuartion is to rely on the existing mechanism which is the link
> training fallback logic. A quirk in this patch would add another way,
> which is less generic and would potentially disable the link config on a
> non-affected device as well (I did read your test results above, but I
> still think it's possible that another device would use the same
> OUI/device ID without this issue).

Hi Imre,

thanks for the review, that is a fair point.
I agree that the fallback logic is the better place for this and I am
dropping the series.

I read the cover letter of [1].
If I understand the plan correctly, the follow-up switch to a
bandwidth ordered configuration selection would already avoid the
greeter case described here.
A 1080p60 mode would then pick a 5.4 Gbps configuration such as
2x270000 instead of the 6.48 Gbps 4x162000, and 2x270000 is what the
device trains today with the quirk applied.
The remaining modes that still compute to 4x162000 would fail
training once and then be handled by the per-configuration fallback.
That fully covers this device, so nothing is lost by dropping the
quirk.

Until then carrying the patch locally works fine for me.

One offer regarding testing.
This PCON fails channel equalization at 4x RBR deterministically on
every boot, so I have a reliable reproducer for the fallback paths on
PTL with the xe driver.
Feel free to ping me whenever the fallback rework or any other part
of the series could use a Tested-by on real failing hardware.

[1] https://lore.kernel.org/all/20260428125233.1664668-1-imre.deak@intel.com

Thanks,
Alex

