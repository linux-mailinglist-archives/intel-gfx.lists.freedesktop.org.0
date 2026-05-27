Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Pi7Kqy1FmrFpgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 11:13:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C23B5E19D2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 11:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C8710E1C1;
	Wed, 27 May 2026 09:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="XPY+IUJX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D77F610E1C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 09:13:12 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-4903974854dso51217845e9.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 02:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1779873191; x=1780477991; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GiwSnMH0uD4dcvsaFEOR1H76SV4MyXpNl2wdQbok5/A=;
 b=XPY+IUJXlQlubPbGhbETLmv0ctlzwxGd+FAleOrFBEjvJFwKhYPsxP/SOYCy3WLrn5
 mqBSw/AvyfFe7pi6MCJkeQmXZcUGvZgjqc/ABO06TFponXKWt8WB55UzhjfvdrdyVq5K
 qPeUhP/oI1sWiYFy/FHdeaOPaxzXSNtiNh40jqc/vwAdbH1hOUiWXqG5jDplXq+q9mZ8
 b4GEaeoIdq9HXwjkXYGDvXa/vvbuRUx4dlLfMry6tHQNHgJ9QfVyIxx5tf+JO/ZyUIeH
 2Qgmj8G8bRXYNjb41/2rB3g+P4f7V9KijOiOMF9baAB0u/hXJTe3J/w58U/yGVe/qnXt
 Lj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779873191; x=1780477991;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=GiwSnMH0uD4dcvsaFEOR1H76SV4MyXpNl2wdQbok5/A=;
 b=qZq5g74xtpQqsfdB1Gk8BkpKlEY8VM5r3qazs6O8sdv9YNo65eN+94sRRxuMW6r5uw
 TY7+hbzNZEVSnJaFkSIytW70NLp9POXdDf+XCpC+J/06lOeZ7lWVXjf1sUHYE5TBOSpE
 NMNyE/XGzvlJsJUsY7JRrZswuak4wKLDSNH3VDMGOQkqRDyy4O9FESobWRB83PKHwPtW
 kxtRWIggihoAwi+7V3OCM/IskH3B4BhsfCjRY8NWUPI4MywqcsnsEcF6o2LNk7FU8mfh
 1FP2eDyyENP5S6pNhGi1CN6XwivjbU3Bme9juLAF5Uv2gAP2JJZmc/CIaS3ww6sRTfIp
 P56Q==
X-Gm-Message-State: AOJu0YxJsQmEVQ5jymJxlo7zR3j9R1Jnf6qGOz7isp4JA3wMWyH2ad8C
 FYH9XTj28IRRm2rgaHxF2VKHerdJAeuQEjWOiiWmI1VVgX/TbEcNFrODyHWfRH6l+wPzjsZ6oOm
 yhY4LhK0=
X-Gm-Gg: Acq92OHkDR3eYHR0yBnPjpOjwx9k0ZRxCLjolpvZgESDK8rlUl+Q4rLhBypdrk8708Y
 pI/OYAx333FnLzy1aWW+97shGa3zKC9OYkI/YSVuU56VbP8cbI50pHhfwD17UjyJhjWYmYD3dNL
 e/4wKK+g1/P+q5pyvFfBFcemovixkh+nWWQVOFYUDTJ+gVzVntiQxRswR2lIQaglwciMF41NCtC
 85q9N1dfjVgzpsxRfQihVLTDgEyWQr/qLc6hehliPoAHt6IEBE+cbLKZtBABBZzcG/HZYlx6BKK
 tXQGdrbLDEJwI/c1f6oZ425tDme758NYM5al/7JRdcUBg3yEVGLrFSMlAnFPqcS+GRXwh9pECOm
 rvxObx4Qg35rC9Jd14rEwSoN9ZUCA9Zgmpjzn+blJ5in3Jj/7nSkH8WzG42mijgGy6Ast6pKGFa
 Z3c5JqJQEbw/JeAkTKns7jcq2+Dw==
X-Received: by 2002:a05:600c:45ce:b0:490:59cc:999f with SMTP id
 5b1f17b1804b1-49059cc9aa2mr231653355e9.4.1779873191383; 
 Wed, 27 May 2026 02:13:11 -0700 (PDT)
Received: from linux ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-490454db285sm356216775e9.5.2026.05.27.02.13.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2026 02:13:10 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: john.harrison@igalia.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Marco Crivellari <marco.crivellari@suse.com>
Subject: Re: [PATCH 2/9] drm/i915/display: Use an unbound workqueue for atomic
 clean up
Date: Wed, 27 May 2026 11:12:47 +0200
Message-ID: <20260527091247.133439-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260520235820.2313192-3-John.Harrison@Igalia.com>
References: <20260520235820.2313192-3-John.Harrison@Igalia.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[suse.com:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:john.harrison@igalia.com,m:intel-xe@lists.freedesktop.org,m:marco.crivellari@suse.com,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[marco.crivellari@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[marco.crivellari@suse.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:mid,suse.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 4C23B5E19D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello,

> Prevents this kind of message being seen:
> <4> [71024.774936] workqueue: intel_atomic_cleanup_work [xe] hogged CPU for >10000us 35 times, consider switching to WQ_UNBOUND

> -	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI | WQ_PERCPU, 0);
> +	display->wq.cleanup = alloc_workqueue("i915_cleanup", WQ_HIGHPRI | WQ_PERCPU | WQ_UNBOUND, 0);

To be unbound you must remove WQ_PERCPU and keep only WQ_UNBOUND.

Thanks!

