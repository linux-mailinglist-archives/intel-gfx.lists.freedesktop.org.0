Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CM5DIm5yd2n7ggEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:55:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBFB89296
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 14:55:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9E310E43B;
	Mon, 26 Jan 2026 13:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Bz7FAYJO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E8710E34D
 for <intel-gfx@lists.freedesktop.org>; Sun, 25 Jan 2026 00:12:03 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-82311f4070cso1354016b3a.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Jan 2026 16:12:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769299923; x=1769904723; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=S13bvTkOJ8+hfUIaAAD5yR0hRksywvnKTFVvNAS0+Hk=;
 b=Bz7FAYJOTmt0HtG4PmWKeATFDjEHAzoAO6mIA7OiazEsFPGQ1d1f+NsX91gf5oDF+B
 cx52uMnNC0ZAUshp/2DPKiKKsPlYnh67nc4rOTRRoOlFBL+qSIWI11Flpa45EpRt3zu7
 IHTKx4hS+d/WS3EHebFkB9zvSnqTPe9RMlHqPBPJdZmh+Kqa+wJCeCE0edKXFBsyZSij
 V6Wic8T8GzstB5VgurulG0/TiCTqU9rX20AhENZAtX/9p7fLgsc+/YPsDXsFJYEuPPsr
 Iih42AtdB6dSQfSen+ed9zqoLLeLZVRGT5pXfklQp+yM8cRZ7R3pgCHvoWB0gwj21iUJ
 sJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769299923; x=1769904723;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S13bvTkOJ8+hfUIaAAD5yR0hRksywvnKTFVvNAS0+Hk=;
 b=UrE7ZGk7wp1QD2P2dMEIvXuXS4b+aRnTcMJouolyNQHj2xggQ3XJUKxHvjJiDUX/7K
 hHKQVklqgAPA7VK7IUAW2/LSkgF+Uy6O2YAQcAN1keWU3lq87z8UvoErmjFW0MGzfSlw
 r0IzK08mndwCFZ0Hm7jXrGDGVEHcTywHsy7XVLAfRGIW+jxde8NpW8tXw2JkHGyqPNlY
 bGcF45pLBHSB/BMZN1jQFkSabdZZJWnvog+CHJVsBr9rJmr+CmqRS/wXkGGVzX9f1lNl
 w5g9KxWFGydBbe+IXe7JpcAPuAFAGVNdo3c3gvvV8LBlP+QHWnoyzJx9SPuUsq2cDA5d
 A5UA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX8+FRjYVMf/TmBIp8k7ukMBOlx12J/a+I+4z+bxh0rUNlFF1nGl++vug8JYYs9PwVJYpiTmnnnqO8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxho3gayIhPgPdUa3sVVQQFLmEMbPv6ltmRdOnKnKreOHLeH3ds
 7xr0mibms/m1XmoS4Kz0KXO2Z39L8/QCYqRkjqHVeNSWTM8aZ6wo5bTR6AP+
X-Gm-Gg: AZuq6aI3qwFRbIhsJyMGJf6L3/HsqodK0ph+ZOijrHKG3trZwNWApAV4S/C3RI/AIya
 Pf96is3EUgWESZrNbsSkDX3ORT9BiVnw9/da7D1vVGnzQ5nQK+XEsvFtKYmwNNeZflrZyTT9dfe
 6HfnUrcKDisv93AsDqa1FqNSfWdxYJQw1nZKllwPW8Ant1SrHWUntD7e3uKOEWjsURBLAkthzIN
 mcJPyQFPdgofylW1m3eGit1GQPSIARkw2KWBoE2UZspDlhSC+lEHgkNnio3XPPfizFYb2WrPQSF
 HaaXViqP5TI4gW5+varvkNIzfSt2/WfRQ7Q+MHU6OJwjjwby5QqRvCZ0B73zl+CmjNg863kkSQp
 JN1cytPKk4GFM+wha8BM2vjXqOiXAVI2YzvEau6tk94Y5Pv0yEPU8fxlHifB0L6NVI11rEwzBmQ
 M6wFe8w+Zw9R8voRs=
X-Received: by 2002:a05:6a00:4091:b0:823:1444:7873 with SMTP id
 d2e1a72fcca58-823412bf321mr213136b3a.32.1769299922979; 
 Sat, 24 Jan 2026 16:12:02 -0800 (PST)
Received: from at.. ([171.61.161.234]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-8231876e5d0sm5608273b3a.61.2026.01.24.16.11.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Jan 2026 16:12:02 -0800 (PST)
From: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>
To: 
Cc: Atharva Tiwari <atharvatiwarilinuxdev@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for eGPUs on Apple Products
Date: Sun, 25 Jan 2026 00:10:59 +0000
Message-ID: <20260125001111.1269-1-atharvatiwarilinuxdev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 26 Jan 2026 13:55:54 +0000
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	DATE_IN_PAST(1.00)[37];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atharvatiwarilinuxdev@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,intel.com,ursulin.net,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[atharvatiwarilinuxdev@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 5CBFB89296
X-Rspamd-Action: no action

This series adds support for eGPUs on Apple products, by
enabling apple-set-os on all apple devices.

A side effect of this patch is that the iGPU becomes enabled on iMacs.
However, iMacs can’t use the iGPU for rendering (They can't link-train
the internal display), so displays must be disabled on iMacs.


Atharva Tiwari (2):
  efi/libstub: enable apple-set-os for all apple devices
  drm/i915/display: Disable display for iMac's

 drivers/firmware/efi/libstub/x86-stub.c       | 22 +++++--------------
 .../drm/i915/display/intel_display_device.c   |  7 ++++++
 2 files changed, 12 insertions(+), 17 deletions(-)

-- 
2.43.0

