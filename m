Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WaZGEisPRWq16AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:59:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BB36EDBA0
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:59:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Pg6Uf/8z";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2103F10EB7D;
	Wed,  1 Jul 2026 12:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881DE10E032
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2026 06:17:10 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-47488efcf30so60997f8f.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Jun 2026 23:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782713829; x=1783318629; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gD8QxoDHBMynsX/nmz6FeNsnsEwmzfTNM7CnqhTDUtg=;
 b=Pg6Uf/8zAOysXf7zhpINXifyDVSEdfQLkzKTAbsDMJzrsZBOZSRsoYCEA7jrkp0K4M
 XjQ+kIlI6/I6Qc/lwZX8Qq7LRNi4ILjxy4i2526vHzrRh1SXuV6U+LOGeXIBfUljcfLB
 euoC5PyxK/Fu4suld3oTtdafLh8DcQVMLSTtZuIQwSRim5Y6KNpkARNeT3Tvhg+ytaVI
 IAtKjDgU59Fi4WnrUwOxQVd9hOUs65t9cc0asskD9tTEXlPckK6xRi9ezG6vCOnqlEGB
 JD9oPl89y6or5v1Mt7lzIvcQUO7yg16yr0YEkr1ilPY+mX3iMzBVmwP78kGhwde9EJFX
 5gAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782713829; x=1783318629;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=gD8QxoDHBMynsX/nmz6FeNsnsEwmzfTNM7CnqhTDUtg=;
 b=denhlg2O+XZVOolKvRzsZXj+szBvSv9QMqwBf7XtHHwYOGDJQ3nkFVHiNLpi2MA0Xe
 NveWIWPCvpaPAqCq3QirQMzxgjpFTG8We8ebLMq7j8y9ys5bfk4PO97Iu3l5roTBjRh/
 12BLjTh2lwc3IvAca2bsXWQ9nDhN/kdssm92BhAjoF95M8noLA1uotkMaJci/L2tONR1
 zL+rSkT85/0g57gpqC4jNzYG194nKM6zapSapfCwLvW5rxKQZCXSJ4aOTlZRpjeJuTOW
 +Ub0J7wp49texVzPuvhIVNLnfiCStRqEq3Tp5hlbPh/KFIMH6jBGgLyEH+3KjWAYb0JJ
 2pkw==
X-Gm-Message-State: AOJu0YzsGlb3LtLdOeyF9A2kYXD+d44FCsJ6Twpwo01BsgPt2f+VCi+2
 z7N0mDwQ4d89/PXug5u5T6JfkzImEsfZxkH9az+AjANzxPZ1PNW4aDnA
X-Gm-Gg: AfdE7cklJo8MkhTvmz7jStG0T/KZ+dsbCihlWHUjpumFAPTcQLSlm0oQjL3kMvHtpET
 zyp5CX1OsCR7wizsfWx5FR6dWYSJ0yGfnGOTkMUySEZxdeFkO/VKMkUlB6i/oOfT8MF2pGaxVZ6
 +FquxndNmdfse90CvDEgEnmpevBHwmW6qBtzrQ2tCzMOVno17CcJ/dMPrhFo/2J8LqMfO78h3oN
 NsE9ir8jFbJ2def1g7X6ENR/eFWuN0nq+6iI3B2uWtLMykDd1vjaobG3oJCgIaV+S59AgkC6W0G
 zKGqTuKpwt6ss1Jpr6U2Z70/leTFFXylwIAhByIKPgk4EHLGrMwtaUR4dYOKYIyL0MURUWIhZ8x
 IA7WAzcRZfZNbVmxyikFGyZyFOnlubqBqaYCE9wJq6Ryi5GCSXS7dibsTMtZAVZesnGfAjENy0F
 Y8RmoQLs56SDz7DLzNC8SwYw0YZStInBN6yW16IueqiOsKwquiBgh1lTwWtEKSn9q7/g==
X-Received: by 2002:a05:600c:c047:b0:492:3e66:6c84 with SMTP id
 5b1f17b1804b1-4926fc95e86mr104276025e9.30.1782713828484; 
 Sun, 28 Jun 2026 23:17:08 -0700 (PDT)
Received: from JTOLLET-M-FKW7 (232.64.3.89.rev.sfr.net. [89.3.64.232])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-49268f7670bsm281334725e9.0.2026.06.28.23.17.06
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Sun, 28 Jun 2026 23:17:06 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com, arun.r.murthy@intel.com
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Mon, 29 Jun 2026 08:17:05 +0200
Message-ID: <20260629061705.55335-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
References: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
	DATE_IN_PAST(1.00)[54];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:intel-xe@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:arun.r.murthy@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E9BB36EDBA0

Hi Ankit,

I noticed commit b7d51d65e4f1 ("drm/i915/hdmi: Poll for 200 msec for
TMDS_Scrambler_Status") is in drm-intel-next since June 11.

Now that 7.2-rc1 is out and the patch does not seem to be in
for-linux-next/drm-next yet, could you let me know what the expected next
step is? Is there anything still needed from my side?

Thanks,
Jerome
