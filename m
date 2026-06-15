Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vSLQI7hxMmpA0AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:06:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114E569841C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:06:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ddNz9s11;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7921910EF33;
	Wed, 17 Jun 2026 10:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C84A10E512
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2026 15:31:16 +0000 (UTC)
Received: by mail-qk1-f170.google.com with SMTP id
 af79cd13be357-9157b840d37so35470885a.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2026 08:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781537475; x=1782142275; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FXObSinxGqcj+ceUNFdr8EDig9lUL9VyLWIR4Uh3ABU=;
 b=ddNz9s11v1Ck9GT9JU5kcCOhe9Neu9fOG5hQpMzyMk4JehY03G74BfxsAxfiHqANCl
 /zBXGkIBWVTAeu18sJJ9yDIzM11Jji+UR9B7tiracwC67T3b+rbIB4wXhMyicv3jiGhJ
 DOlUUQjWte8G52zcH0cLfr7rg79QY8VT9Gnl4pbbJDxeyUBSej9k6myAfj6rk4xbDBOI
 ufS6bbNUzAMi/uKkcx36dhbbcTpLbSZ2NRBxwI4wNjEmxVkVl39gShQ8kOG6Bp+sLStG
 MSp63bSpIKg+ihDBvLa6A+rOIQISLhsOq+zYE1ZxQMKy4/44lX2wffHQe7W6Yu8ed7IP
 AvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781537475; x=1782142275;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=FXObSinxGqcj+ceUNFdr8EDig9lUL9VyLWIR4Uh3ABU=;
 b=IT+F9eofpgL/UHaDOtCipc9B8Pqe+keOXruKEzzumk4FR2SyGjSn5DwYVHPCa2Uj1d
 T42scacm0ej8xLtnS926QhlxgUdQrsXOdlAiybYFHvyckAe1L+Nw0q2xuppjjHCducj2
 E9wvMpYyerHnBXxtCUPczlim8gVrBeirOuSetG0gNBYN/Zn+8A9wFiXpbZguDg551dy/
 UM483K55z2SsxDbNxkbA/B409srjiBiEVoJo3Mk5hWm5hz2GutLaXsTcQoj3dfew68rb
 CQaQGLzbXyWdpfa68GN9/iGKD9pqyKbJdXeo3rs9OMd8fwiiFeiY2mBqz1iNlaalD8L1
 4DDg==
X-Forwarded-Encrypted: i=1;
 AFNElJ847CMsrBgO/HFrgRpYT5UullLQAb6rQBD6xVm/AoK+3BspnF1NZeJ6jkf0vduAi/22AYi4XcArYzI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyoFCMqbC8VMs5R15oVN2QIGfJfEuue+jjytoBa3Fo6wQD3Mo/F
 G/AfpNcd/ZQBRRc+p4j3qh3d3JozhdGwl+gdvJ+6uLgO+pkJoexKXrYX
X-Gm-Gg: Acq92OE1vK2HO9DNBMuOWDw8stbbgd4GJTpufxdKMw84WWgGil6ekhYYdMekdnbkoCl
 qLL1KQ2xZTWgtzk4/W32rfUxJpKjL7/S6LwlG+/rkf7lkXCvk5vEuoMHoRFuF6KClH1CO5cOpCE
 Xk6raq0Zcnl13P4gaxq4t3yHa8ulklTGOHvKb9D6euSS30LJti/kcuZgkmv5HvLumyUn7HQQdhF
 Z+2y81EZoxO2AuhR2LewyUd7qjikhZKoAHihsxFOrx60LHzm/mQfb02mHsPYuIUQdsZ01l0ysQ9
 6NYCD0asF0Tos1bVNEE6QYwp4bhrINjmhVh3YM80qtUPBftGw9hiN/XmW3dCZNgJAR1/BXe+Jbk
 Pb3OL9sAefewjpkJ4bIGcC3voxZQ3+dWZh9VNDcgg51IujGptmH41NsoIvyS5Yk+0ylV8A8FPNV
 zNzI/2aaLPSH5thhf02rKwB1E+dzcb+BwSIOdqmCAuxCaRpFmncG4xmnYzOwdiUFTpw2vH1qLuE
 1+XPnff9FrjpBVP1vfddlvGQJySngTxAq9Bi9wQH+8cTGTyEdvixN7arSLiVudO0Z+aXBIifv3I
X-Received: by 2002:a05:620a:2714:b0:911:295d:59a1 with SMTP id
 af79cd13be357-9161bd4df47mr1340145985a.8.1781537471396; 
 Mon, 15 Jun 2026 08:31:11 -0700 (PDT)
Received: from debian-t14-gen1-fuhrysteve.fuhry.app
 (6.sub-75-230-138.myvzw.com. [75.230.138.6])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-9161a035855sm1138721985a.32.2026.06.15.08.31.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2026 08:31:10 -0700 (PDT)
From: Steve Fuhry <fuhrysteve@gmail.com>
X-Google-Original-From: Steve Fuhry <steve@tpastream.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Cc: "Stephen J . Fuhry" <fuhrysteve@gmail.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [2/2] drm/i915/display: Refcount for fec enable/disable
Date: Mon, 15 Jun 2026 11:31:08 -0400
Message-ID: <20260615153108.10548-1-steve@tpastream.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260612091807.2123172-3-arun.r.murthy@intel.com>
References: <20260612091807.2123172-1-arun.r.murthy@intel.com>
 <20260612091807.2123172-2-arun.r.murthy@intel.com>
 <20260612091807.2123172-3-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 17 Jun 2026 10:06:45 +0000
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	DATE_IN_PAST(1.00)[42];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arun.r.murthy@intel.com,m:fuhrysteve@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,tpastream.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 114E569841C

From: Stephen J. Fuhry <fuhrysteve@gmail.com>

Tested the full series (1/2 + 2/2) on top of linux-source-7.0
(7.0.10-1~bpo13+1, Debian trixie-backports) with a local adaptation
for the for_each_intel_crtc API difference between 7.0.x and drm-tip.

Test: cold replug of a ThinkPad USB-C Dock Gen2 driving two monitors
over DP-MST (10s unplugged), with USB_QUIRK_NO_LPM applied for
17ef:a391 and 17ef:a392.

Result: zero fec_enable fastset mismatches in dmesg (previously 40
hits in a ~3s window on unpatched drm-tip for the same replug) and no
i915/DRM events at all — displays recovered without a full modeset.

Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>

