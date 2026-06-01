Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMzxAvqZHWpOcgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7796210C7
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 16:40:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D58113430;
	Mon,  1 Jun 2026 14:40:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c6GaRZ6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44718113149
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2026 10:17:48 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id
 af79cd13be357-91550ec5026so13811085a.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Jun 2026 03:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780309067; x=1780913867; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Uyi2sYWA7KnoTyDbcBaVRwZrLhvu1wK8b394EY11sq8=;
 b=c6GaRZ6j+HxLvwfoAgRNBzYfbkJSZ2wLcMeDsccQO4gGeHl0fNLV2/Z4BT1cHxKAGs
 j2j9w740mE6aveYd9zuQlROVzsRCp6jZSXNnjtkq7sYDjW/fEStuHqKLSPMA0wg5tIPm
 nfJ6sFFrEqCJJLnRboeCmMxOkJcP6IUIZd6/mgj12TbOlSDjmqDCvWuFKKb1RhCc0bWe
 z5Ud12MDIu67bEBphcsWoTD1FT4uyg4z+ExrcmcKMUtxxlii9Mfk36NGyJU/PIIXQdDl
 0DcOVfCKK6xbglJfp5pV4IM4ZgUL9ekmBaRJ/7bnmRnzwkJXFlwpu2pVpqNKL3dFAsGo
 obxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780309067; x=1780913867;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Uyi2sYWA7KnoTyDbcBaVRwZrLhvu1wK8b394EY11sq8=;
 b=RsPlOsih/xPCwMZKpI8U1KRJafMnVnGelXROX/8DWG1U9VTBah4VPvGplubRFlvNWH
 0YT3CYU5Tr3ryUEVcZ82zew8Q0yNtPfwPv0gaByMSmgpl/Y6Q4KaA1ApJbTToZjcSA9D
 8wAFpTXyVPJPfY/jYk/o+HLZnj9OimQ6lVF6QAl/wQrt6Jm00mQQEAPFPHfGCof3ifrf
 UGvPAsPDg2O4dUdCSjhHdly7fAsyLUOcpVL38IMxw3LiX56RR5s8CtLQzUgrjUHQGVh0
 mk8nk5dhiSY7ALxeS+GFI9MOnCSYX/Uju5QbeKbl03zLu8HvISWAG55wSufk1sqc7Q3n
 YqrQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ/ycAuzo6SY1/zG61CirnhAY7206x1w1jFH4t8cb3Jiq/T57ZbE3sLpjhgmASokzi3rYHRb5ePMpy8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyM7JTl4mrFfhowsC9WAk15gL2ZZKq+Rf98jejuc6WA2gEQg9Jz
 TxKI2qsKsTfLlX9z1SwIDoajC1w5yVdSsK8tJlsvkVw11MBpe0cQdGxh
X-Gm-Gg: Acq92OH0u12Cg29nZLYvH6J9/ua1jZcfuTpxiLEhEIsEQ+SZxdy6G+aTiAeOBRmm5TK
 yEqgTc6A0nCl3fPfsqvb8ODTNOejUt7+LHDWzBbBToJUFTuEv9HEUUd0hGvlfGpjYUtNpeqZ5vn
 c9RlnOA6legUaemaPh5ec+L2l00yGwZjqK1uHOdbBLRstfKKa+Rqk/GP2EgMZidpJGfMigoS0gJ
 Gf6WlgLbgAZQrcyr5ipv8VfRzHlsaAx5YsS+8XWPR8hhgahxr7IKfpwxjxwbPm0RtE2cpygNyvF
 Erqs0+VkSo4mwGH1V14+mdcxVls6MoUhhoDP/auRqASgYqMATSqYMYsBhKCtlrcLYvhwIs+PPUu
 H7nWSigrq55m/Ufc+TG5wOR6iLOra0o/XsHDiRUk6cMbP9uAnJscyGWfpgBB0Nm4jLXAQBccQF+
 /g13sivngLPKz6wOhT1lhPwN1TQgGhuXUAWm3Qyd2Ijr1HQHM3NWcsQ2jLQGMvxN1vBYtwH2PUe
 SxJ35Lwcq8FJf714vGS
X-Received: by 2002:a05:620a:6111:b0:915:4ca0:1210 with SMTP id
 af79cd13be357-9154ca013ffmr513150185a.3.1780309067135; 
 Mon, 01 Jun 2026 03:17:47 -0700 (PDT)
Received: from debian-t14-gen1-fuhrysteve.fuhry.app
 (6.sub-75-230-138.myvzw.com. [75.230.138.6])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-91532486089sm976503585a.17.2026.06.01.03.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Jun 2026 03:17:46 -0700 (PDT)
From: "Stephen J. Fuhry" <fuhrysteve@gmail.com>
To: arun.r.murthy@intel.com
Cc: Stephen Fuhry <fuhrysteve@gmail.com>,
	intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Refcount for fec enable/disable
Date: Mon,  1 Jun 2026 06:17:43 -0400
Message-ID: <20260601101743.1676771-1-fuhrysteve@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260519070959.648987-1-arun.r.murthy@intel.com>
References: <20260519070959.648987-1-arun.r.murthy@intel.com>
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
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:arun.r.murthy@intel.com,m:fuhrysteve@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: BB7796210C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Stephen Fuhry <fuhrysteve@gmail.com>

Tested-by: Stephen Fuhry <fuhrysteve@gmail.com>
