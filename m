Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ShAJFCUbKGoi+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6023660C13
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:54:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=N4UIH4te;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66B1E10E3BA;
	Tue,  9 Jun 2026 13:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891BD10E1D5
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 09:32:01 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-beb1bee8c16so689491966b.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2026 02:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1780997520; x=1781602320; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LWQ2fsM6Lbb4TBMtDn9FvYlyKisjzRyBmoFcUvRD0XE=;
 b=N4UIH4textgHlMBwUepUMU7K51La9r1t2qQA1NmFChkJjhYybqY795BWkqEpu0Nwd7
 TTG3+ceCRiZJnhmI+IrJkl0Mpt9Q1nb/QTpP9yb9bqqjxJpn6pCj31svF3pA+W1jjN+Y
 16kdNS83miU7esRvyIQ14Jb1ZPRTOzZq5n/Iv9Z0GzIMKpOrI0dAF3WM19X9rX+SeXJp
 9HHXhEA1n1TpxMLOaMH5fZAUuK/xYkkoklELqoN+kOWN4ORXvb5YZq7vKbeKM8iEq6rH
 U7w3RKamlysjzV4+HVIYK47y6iw71NjNvL+9pno/eKCNLBph7qp8/dIEondusXB0T47C
 fiDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780997520; x=1781602320;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=LWQ2fsM6Lbb4TBMtDn9FvYlyKisjzRyBmoFcUvRD0XE=;
 b=ikkRWn/0KJFsqhd0TUBukkskBCOx1NUm/Azst34MqA9FuPdUDvcAJ3mkutcLzqq3Ia
 xYZxRw7FTqddOOPZb/WXjlRkltG4mJY3JpjeExy8Ulk9m5tJ7u9BcHS2k62Zm7XgiFd2
 oUR97emfXUKqy2T0nZp/aPBoJ15Uto60kVznCxsgBv13sDRTFO1t4zT2mhFCnThDwD6h
 hu1FH7JpAJAhcu3qXZZGwNNq6WWxYz5U/bIHpdFlIlMxBiL5OdEv/C/pvB5Le7SzLHC1
 M6YIBmDJXki4vebuD/VFz4o0KDHNT5QGbEklGIhCYstott1uaytmehc8EY4kfwO2FGYB
 JQHw==
X-Gm-Message-State: AOJu0Yz7+QTDlS6J2MVPt/k5B49ajXmOIaURIO0MEyCASQb0WToMm3OG
 T4pWGIMh/PqEW7Mkm7Y//8JJBUxL1W/k99W5Y+AkMKm47O8Q0FOl/j/Z1Jrm8mwyCQVpsw==
X-Gm-Gg: Acq92OGDcdK/jnEA6JYEUuFjzmxqfPHW8OEMXxhvtYaURQ4VpTl0aiMkoQa2i6wjpIH
 qOu5yOsHRapjuAyj3FHwZZW4KQ0GwUuW8YQRMKFcogl9wwKcWP7elObjKXzqwYfxag5+G51PP59
 HB9guUmgT9L+qjfQKRE74wMqgU21x++7GZabw+Q6ZYyVFUyHlPm8N9KRLn+meZJdioGocZr+RRe
 2IZyy1E9321nWUw9NV2DV0rN5D8zIiSpuRGNwwKrafikDNYI6bsfTHJp+7hUmsqSt1EiFKbBhZT
 tD8WIXOJd8B0z/8c1ZFU26SNfkrWR36u4mTCHXVaK2lGrecshlYF1mmyQ9PYAUirFrRVBB4x5h+
 wKsmmRWzx70zAIzQfGssFveKgmuCwI5U6aN58ZH+MN7ZcAAzrTcPz5bLQYTBUGHZuO78p8eaNa5
 S7M4PtkQRvsnbrplHfKykjIAiYd77+0N5qmPyWBLaiCJ8nIDg4tprXypgrN/w7ULKRGK9ZjaQWv
 4Kq1HJO5g==
X-Received: by 2002:a17:906:318e:b0:bd3:7514:14f3 with SMTP id
 a640c23a62f3a-bf3a6b0f103mr559535366b.11.1780997519627; 
 Tue, 09 Jun 2026 02:31:59 -0700 (PDT)
Received: from JTOLLET-M-FKW7.cisco.com
 ([2603:5004:20a0:100c:4e0a:b38b:df87:2d8a])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bf0559f1f62sm1027272266b.57.2026.06.09.02.31.58
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Tue, 09 Jun 2026 02:31:59 -0700 (PDT)
From: Jerome Tollet <jerome.tollet@gmail.com>
To: ankit.k.nautiyal@intel.com,
	ville.syrjala@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 arun.r.murthy@intel.com
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
Date: Tue,  9 Jun 2026 11:31:56 +0200
Message-ID: <20260609093156.86410-1-jerome.tollet@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260529045621.82540-1-jerome.tollet@gmail.com>
References: <20260520022544.3097252-1-ankit.k.nautiyal@intel.com>
 <20260529045621.82540-1-jerome.tollet@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 09 Jun 2026 13:54:41 +0000
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop.org,m:arun.r.murthy@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerometollet@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D6023660C13

Hi Ankit, Ville,

Just following up now that my previous ping appears to have been approved by
the lists only on June 1.

Patchwork still shows rev5 as New, with CI passing and Arun's Reviewed-by
present:
https://patchwork.freedesktop.org/patch/726364/

Is there anything still blocking this from being picked up?

Thanks,
Jerome
