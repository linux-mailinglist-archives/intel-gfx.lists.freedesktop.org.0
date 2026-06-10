Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id j8iSIrejKWqNbAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:49:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F066C0CF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:49:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sms-medipool.de header.s=mail header.b="B9i/Gdfw";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=sms-medipool.de
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F53B10EB72;
	Wed, 10 Jun 2026 17:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.sms-medipool.de (mail.sms-medipool.de [178.63.14.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240F210EB72;
 Wed, 10 Jun 2026 17:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sms-medipool.de;
 s=mail; t=1781113780;
 bh=SobVMaaOZ4bAiwKbe1akFUaGQ92+eLF2QbU9ACda2/E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B9i/Gdfwpxqr2AfBOjhtZFOR8kjeR5TFtiHj1dFGh4DHfBKY/p3IYSo/JeE2vND2+
 DBmfkaArAsleaeK/rScZCRST6Ao4gIS956PiOQdBEQ2WB1+xVO925ygkN6XzIIoY1s
 t0lpYzH7Sb6pnMdaW6k2Ai7vzT/8eaLM9+Vq4ZcmPBEpbQJLuAs1inrHiFAIg7zhhi
 CLvsKghHWtCDhNqLoMVpy5wBz6k0v3Lhn6hOtteGRsihiUMqFoyMdyhljxioRBuv+t
 zJtqtZWoiF3/khHrQHqGt5hl33blhV9IMjZgsXxyRPCa13yegOU92B57TmFoZuorgi
 EaF5+hATcbuvg==
Received: from mail.stoss-medica.de (mail.stoss-medica.de [213.147.17.40])
 by mail.sms-medipool.de (Postfix) with ESMTPS id D0CEC11D55;
 Wed, 10 Jun 2026 19:49:39 +0200 (CEST)
Received: from NUC16-Linux.sb.golima.de ([95.88.98.111])
 by mail.stoss-medica.de (Kerio Connect 10.0.8 patch 2) with ESMTP;
 Wed, 10 Jun 2026 19:49:39 +0200
From: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, alexander.kaplan@sms-medipool.de
Subject: Re: [PATCH 0/3] drm/i915/dp: Fix FRL rate selection and deep color
 for HDMI sinks behind FRL PCONs
Date: Wed, 10 Jun 2026 19:49:38 +0200
Message-ID: <20260610174938.6335-1-alexander.kaplan@sms-medipool.de>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
References: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
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
X-Rspamd-Queue-Id: 091F066C0CF

All parts of this fix set are now on the lists, for reference:

[1] this series
[2] drm/dp: Avoid RBR on Synaptics VMM7100 PCONs failing channel EQ
    https://lore.kernel.org/r/20260610174807.6231-1-alexander.kaplan@sms-medipool.de
[3] drm/dp: Read the PCON max FRL bandwidth only for HDMI DFPs
    https://lore.kernel.org/r/20260610174819.6258-1-alexander.kaplan@sms-medipool.de
[4] drm/dp: Service the CEC tunneling IRQ flags without CEC_IRQ in ESI1
    https://lore.kernel.org/r/20260610174833.6284-1-alexander.kaplan@sms-medipool.de

Each part can be merged independently.

Alexander

