Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIUjHEllmGmJHgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 14:44:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D0C167F32
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 14:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97C0810E7FA;
	Fri, 20 Feb 2026 13:44:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YgOGGEjo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6982310E6F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Feb 2026 15:45:14 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-48371bb515eso14920205e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Feb 2026 07:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1771515913; x=1772120713; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kvn6+xidEf2AX4Gd05o3pBBmbJYOag8CH+EN06HuqDE=;
 b=YgOGGEjo0YbeOj0heM57cHSlgk8D7X/5FBIByS0jA2Fq34DHrF/uTzS2PdBUprCkuI
 7fl4hywTTx73+DuPcJLYCXg6g8I9udolAeO4DZ0e4x4RJN6jY44NQKFkdDaGz9zOenT6
 d+vDadmxdsPbzw/KehTbofdUg3y6t4Zu/OM4hgrOibplH7DzmLWF3r8x/9fuZgWCriMA
 xSiokWh+Ayq3Ctyf1Jyq5EKglf9kF2GP06epPMuvwuua9pzyoahOuzrui/Cwo4otcAUK
 z5BibnzTjt44ZrwCtUzCBgz7CEaaapTsAyNNjkpLk/MB0brLqNk88If1okv708ue3Yct
 L3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771515913; x=1772120713;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kvn6+xidEf2AX4Gd05o3pBBmbJYOag8CH+EN06HuqDE=;
 b=j63O35KUs5PsftpFXa7QEPvF7Xkl93kcuNViFT5GNo+imG+jmHgw/qNKfw0OrOPcIX
 MNR1U79UQscxqbsMW60zXefaxAKiNtzY7Z91RMdBNOjSa1UB09pAmJpEOEGrJBIjogvm
 6aCqQpXHUpiFOk8LuwSyi9pnIqsuYNdr/efqRWsXVw1HFHnwcZRKCSIIsRsX1xhM6fWh
 Txs8krn7S29jvA9xcZ8sRxDWvDkMiOEtvmD3Ot25haPphNi56ibUrc7aaJ2L+HyKtpAs
 ZPIYx5oJrnVQ8B745g0jnOUZbJoa4Ym8C+XTZ9CUBXo1IsujxFzaMB+1luNhNDuLt42u
 wmww==
X-Forwarded-Encrypted: i=1;
 AJvYcCUR1sTCQpmjnFb1vvXKPwEf3Nl/uiu4c8Hx+ivWfgg/O7LgMuK4T6uLi9K/DqBvQ2Uf6oEYC5w7H+g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyTrAna2lm789v9FsyExumh6OAlvqhzsaOCx3X14tJyXubEZ8Di
 bYvPZCuipS4Yf86xK4kJ1tQsGfZjVU+Uxu/rg2rpiKWdRsUOW5I7yMjT
X-Gm-Gg: AZuq6aI854yPnoNuPKx/4b4rg51YIMrUduIM9/LkCZl2nMhMDMH8tGQFm5Qwbm3VUJE
 81SQcSshFBw7+CbgpOlZyTwpZFyzRI9SdMjIm47K3bLHKgx+HC0giIETw9QloMFi/x3Flc0zvaC
 ffri/ZrQJyOnPpD5h5ORUFFiIDfaps3UQq9yywCusMjyf6kx3LxBSZIeG+vLKJFKrJQ43EJprNH
 Sql7fZ+h5R3UQYQi44NXsRLvVF6Y16wQFvTDb/g1Ev9LSdzgcxgiloxuB04WVYZxEgONQHEW39f
 RZEZluBP+LNMcPm+61tVmQCvI3MTch+6d3qu4Wl89LNQ9GIuUJukYZpKfQnoLoMYUdOyTuhjcj5
 19z0/ilKu5JdyKoWYlFsYflvZnfd88rkaAGvTkXloiBwy6CDqNptFFnNbQTf5Ui0k7yspY9btfy
 BF2Bi5Dd5tsRO8csSdZ3JKFsQP3/BBS7Y6rI/2dvhZS6BxeJo9xuCbyrjZnQ==
X-Received: by 2002:a05:600c:3542:b0:477:54cd:200e with SMTP id
 5b1f17b1804b1-48398a678cfmr103810525e9.1.1771515912461; 
 Thu, 19 Feb 2026 07:45:12 -0800 (PST)
Received: from JTOLLET-M-FKW7 (130.64.3.89.rev.sfr.net. [89.3.64.130])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-483a31d1e8esm17527205e9.12.2026.02.19.07.45.11
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Thu, 19 Feb 2026 07:45:12 -0800 (PST)
From: Jerome Tollet <jerome.tollet@gmail.com>
X-Google-Original-From: Jerome Tollet <jtollet@cisco.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: =?UTF-8?q?J=C3=A9r=C3=B4me=20Tollet?= <jerome.tollet@gmail.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 intel-xe@lists.freedesktop.org
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Thu, 19 Feb 2026 16:45:11 +0100
Message-ID: <20260219154511.86817-1-jtollet@cisco.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <73e0de50-b7e3-4315-ab81-0a3ecebc2363@intel.com>
References: <73e0de50-b7e3-4315-ab81-0a3ecebc2363@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 20 Feb 2026 13:44:31 +0000
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
X-Spamd-Result: default: False [2.19 / 15.00];
	BROKEN_CONTENT_TYPE(1.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:jerome.tollet@gmail.com,m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop.org,m:jerometollet@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 18D0C167F32
X-Rspamd-Action: no action

From: Jérôme Tollet <jerome.tollet@gmail.com>

Hi Ankit,

Thanks for the reminder. I apologize for fragmenting the discussion - I'll make sure to continue in the original thread going forward.

To summarize the testing results for that thread:
- SCDC polling patch alone: Works perfectly
- The v2 delay patch is not needed

I'll post this confirmation in the proper thread.

Thanks,
Jerome
