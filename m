Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LGhCuaZHWpYcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B65E5621099
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9362D11341C;
	Mon,  1 Jun 2026 14:40:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cFrVDbIH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E86F10F89A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2026 04:56:25 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-4905529b933so50994335e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 21:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780030584; x=1780635384; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=adBf9RrkQBUo5197wDvh+qHOpIDrsOpmy75Eg7+7V4w=;
 b=cFrVDbIHKBImb6R2qwG58jqaEr72Zx1avUsdjUF+QAF/l0r3SJXpeiOcf6w4Bgl3Qz
 uX15N9pzwoXTiO3GDEcvMwIfgPAKoJLwyc04geodB5bJpX4r0UuW9ScRUUkOPX1hRfz5
 25iMjbUlc7zX1mCCp+dVOW1Ez0q9cNGB3zXnL3Xslql7UgKaqnIPkbm254oIHVDzqxMx
 EPNsBfbhX5hfgiOCPWQvMnuBBsM1l4+mNRixn00g/u7ETqRqJoFdJmV99QhFlEKQZJqB
 wNdvU4KPeYfmVMwa8SvJWM2cRUCAZ98fEr811qC5wNoetA0oputIB54+C0ZjdxPxX4JH
 XK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780030584; x=1780635384;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=adBf9RrkQBUo5197wDvh+qHOpIDrsOpmy75Eg7+7V4w=;
 b=VMZjQuVk7SochWph8ydGzrEI4tdedeBRzu0/R7aNbGhqtwApHnd0IVeeaMK073KTIY
 4aBsP73i1TQpH8r4Sp5A3u7PVMp9sqZQNqkJAIvRhbHUuetW0EfBc9tSeizCyFID6UdQ
 vGXSvRXmGjX0WHVM7+nw09AtRwF38/eIYsvXn54zs2L0+OvGBs8G4NTH/x4R+cZe7dwW
 cYl32LJ9dKLEmvriK7j+6Y0vLcatwU4p7v+hWPuYYorvzvZy+tvcsZLHy/QDbvSzHDEj
 ofPdQAM8B5jVnOr/KkYrEcOPtf1ahVo02Vq7i6FhS3hdpyiAnOZsGp89egvAtUqiaC0J
 I9ww==
X-Gm-Message-State: AOJu0YwgnDZrx7NmXwcH2JgAG+XaCT5gOHbkngWegyJ9wOTVHP3D2I5+
 4pCWLyT+9dzR1jSTRVywkMPdwPEj8nhvVLyAmO6WBxnbvca+Xpa/wfym
X-Gm-Gg: Acq92OF3m98N5p9ci/6PG82iXWCnpoZGRun946YIjiQeNqTXTJ7DtHiWFWCbLwyIhPs
 cTr7fdFZJJw0Jr2oXyuBGZ7oEeM9VczDtnu7bMtHtzCY/mP7tO+RprC35tMeVapLQTu1Rszq/Eo
 ktoGSo2mctoCz1n1Wwgz2ceZXBJuO6Dlohdd8OJvvMQITTR/ZFXN6OBsTrDEzQFNkNRta4vfsst
 swYMhMttYpUeFl82lTYCWJa5yxFW0qtR6CL7cCJUx2qsTBMrDvijMboF1tqWuXxm560Rl5zY1de
 8Uvajz91gGpQkH6qDhz0UhUs/d1vx5nVvcW+vePCb2aNeUMDfFG74fXUN3cmCiXafAC9ht5hV26
 3qwFHM7lPOsJ/5DYmK7N6IRs3qMe951umnbXvAdepCMSO7Ht1dyW8cism1oDIbVR2BWTzPS9cGX
 CdQZBvrChHPIPUN4mTcaNnO1rYqdgBJgkxx39Py3wGlx8qZ5eK+2xixNpmBQ5yCX6Wulng0vg/l
 809
X-Received: by 2002:a05:600c:5806:b0:48a:5501:7995 with SMTP id
 5b1f17b1804b1-4909c0b019amr12400255e9.18.1780030583775; 
 Thu, 28 May 2026 21:56:23 -0700 (PDT)
Received: from JTOLLET-M-FKW7 (232.64.3.89.rev.sfr.net. [89.3.64.232])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4909c07ee36sm7973715e9.0.2026.05.28.21.56.22
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 28 May 2026 21:56:23 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Fri, 29 May 2026 06:56:21 +0200
Message-ID: <20260529045621.82540-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
References: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 01 Jun 2026 14:40:34 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	DATE_IN_PAST(1.00)[81];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:intel-xe@lists.freedesktop.org,m:arun.r.murthy@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: B65E5621099
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ankit, all,

Just checking whether anything else is needed from my side for this patch.

Patchwork shows rev5 with CI.BAT and CI.Full passing, and Arun's Reviewed-by is
present:
https://patchwork.freedesktop.org/patch/726364/

Thanks,
Jerome
