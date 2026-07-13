Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6F1/ITQ9Vmoz2AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 15:44:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8897554C8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 15:44:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=web.de header.s=s29768273 header.b=XMe8ZXs7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=web.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B33310ED5C;
	Tue, 14 Jul 2026 13:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 471 seconds by postgrey-1.36 at gabe;
 Mon, 13 Jul 2026 14:19:25 UTC
Received: from mout.web.de (mout.web.de [212.227.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD15E10E9D4;
 Mon, 13 Jul 2026 14:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
 s=s29768273; t=1783952364; x=1784557164; i=markus.elfring@web.de;
 bh=IN1IQs896HSaIw9gEbrqKaClxJt5RzMdKHMvraSsIio=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:From:
 Subject:Content-Type:Content-Transfer-Encoding:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=XMe8ZXs7zCFP/vE711QwNaskgpui8XRA47RmP96VKfI2Mrxu9RbAvoJxcyUVWnP8
 +nif3uskbWqW91VULMIyKrP8MjY4dU8w0Nbi/TWBJgjc1h6lHkb4M/I5AJT77vgVD
 rG2JYdhBkDAH+80DRJfznG6cIciUY7mDSp5l2WbzgFm9x+61TLh7zPrE1mq5n0Pb0
 W//HxW+RsDr7M0AqHBss4H4VBz65dvm4dGDpYGkD4FH38wnmU2EgvhN847kYjRgmq
 XxH/Pt0NFV+b42sITT7cg1PJiwqeuf0G21I/y+r/z4XqNViGbGmMvnAtj9ck+jzEL
 NkobrNND4ISwmOt4Yw==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from client.hidden.invalid by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MDvDi-1wqwnw3duG-008vCf; Mon, 13
 Jul 2026 16:05:56 +0200
Message-ID: <e81277a0-93f8-45e9-9fa4-7c2c2df9c311@web.de>
Date: Mon, 13 Jul 2026 16:05:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Language: en-GB, de-DE
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
From: Markus Elfring <Markus.Elfring@web.de>
Subject: [PATCH] drm/i915/bios: Move a variable assignment behind a null
 pointer check in intel_bios_encoder_supports_dp_dual_mode()
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:AGCv3si7pPH/jwVPGEDa/a4Gmy9w8/cL73mE/HY67HNX3d+sY5Z
 C58P4Nn/oryUeQvtlygm8FWT6oHpeLcG5NB32NY1LS2cMxuuoM/Q+uuk5csqXMhickScT22
 FR1fQY5SId6UI3OHX/d3XpVU4MCuKMRJ183DRjXpdGSJyZip8N29wQU7E/M+Xf9vZqzLnLX
 hhRuAMHLP5GL40agOxRTQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:L4PpSTV5B50=;FGD+QjUfHjCINE5eWaDBf2cIgE1
 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
X-Mailman-Approved-At: Tue, 14 Jul 2026 13:44:17 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[web.de,quarantine];
	R_DKIM_ALLOW(-0.20)[web.de:s=s29768273];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[lists.freedesktop.org,gmail.com,linux.intel.com,intel.com,ffwll.ch,ursulin.net];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[web.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Markus.Elfring@web.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[web.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DF8897554C8

From: Markus Elfring <elfring@users.sourceforge.net>
Date: Mon, 13 Jul 2026 15:56:46 +0200

The address of a data structure member was determined before
a corresponding null pointer check in the implementation of
the function =E2=80=9Cintel_bios_encoder_supports_dp_dual_mode=E2=80=9D.

Thus avoid the risk for undefined behaviour by reducing the scope for
the variable =E2=80=9Cchild=E2=80=9D behind condition checks.

This issue was detected by using the Coccinelle software.

Fixes: 044cbc7a74c136f12a80c855cadd1b085084aef1 ("drm/i915/bios: Nuke DEVI=
CE_TYPE_DP_DUAL_MODE_BITS")
Cc: stable@vger.kernel.org
Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
=2D--
 drivers/gpu/drm/i915/display/intel_bios.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
index 97cbae2e547e..1c4760373514 100644
=2D-- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3514,8 +3514,6 @@ bool intel_bios_is_port_present(struct intel_display=
 *display, enum port port)
=20
 bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_enc=
oder_data *devdata)
 {
-	const struct child_device_config *child =3D &devdata->child;
-
 	if (!devdata)
 		return false;
=20
@@ -3523,6 +3521,8 @@ bool intel_bios_encoder_supports_dp_dual_mode(const =
struct intel_bios_encoder_da
 	    !intel_bios_encoder_supports_hdmi(devdata))
 		return false;
=20
+	const struct child_device_config *child =3D &devdata->child;
+
 	if (dvo_port_type(child->dvo_port) =3D=3D DVO_PORT_DPA)
 		return true;
=20
=2D-=20
2.55.0

