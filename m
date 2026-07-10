Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8IhtDBNDUWrPBQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F81473D8A9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2026 21:08:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Wl5mKIJW;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5631D10E23B;
	Fri, 10 Jul 2026 19:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4084210E22A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 19:07:57 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-493ba701891so11288595e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2026 12:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1783710475; x=1784315275; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=v2c8ve1eOpm9ZGAfxSFM+Y9p3YLh5Tuis6XJ274g65g=;
 b=Wl5mKIJW+gypC41Qjfq43vp55ugRxhTI/puXySzvb/UBy6Wf0sZECZSiC7IpFaBlon
 dajsrN0KwFoTRqJPqaURB+TTNIK4bN7W1eOGU8+cN/An0tuG0wSf0tNXeR0x3JiEFi2o
 slHVuOs9ii291pEWAYcO5D9+TwntJYRI15kngmOoWgaQGgMyOMx5/GwihIu+i9cEBtx3
 8HXXDDWmB3uqcUNmlCrlLCP0RF6jSCLaXyK9SR3lovO7yRTxifZ79TkL2ZEuujv2C/aG
 /TR+AMSfqiR3yWoA64BoVfdY3OGr+jjE9u4Pqar6WzLysjaFNDdL5JB5viGWzyWAzc8t
 /8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783710475; x=1784315275;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to:content-type;
 bh=v2c8ve1eOpm9ZGAfxSFM+Y9p3YLh5Tuis6XJ274g65g=;
 b=aOCtiW2iPgO4XdwFYF05HUTc1h03WDUFUxi/t8QE28yUGXpIU2d/6Pp5jem6RUspJY
 NLYyo3QPtCFZKky02D4qMRcVJnW5wIotZeAXD2YEqOJji2p6phkwN5cx5fPH2YkfNKlD
 epAJVGviQw3yw5fuf/KvBAcfyZ+n5O8RtNFn665WH5tFEeSkYzef1y7Xmq6TC1BQP2mS
 Y3Xb5qW6PUQrlcshUsZ42uod/z+coroS1chTenZIN/OCTo6LI0DyysAz+yJ8i3y+lfdh
 DYD2LSaScmXNkUDDJ2jtHSEKCOY656D7BHs4fGTPsSzwt7H9bN4ahZnemN4WC5+wnNYb
 NUKg==
X-Forwarded-Encrypted: i=1;
 AHgh+RrmDJyzYHQp0M3YjEIjl+HUK1qRBGO91w4Vi7y5AtUzNCO8GhAvPexctHHPaTQvFDpf61KBbvETNMk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzFbAxCxWCu+Dtzgygmm4skA3vm1rGEzhIy9eR/ahp7f1HrWb9O
 AisUj+QMMzz2JqYkEzvTTW5MfALclI71Nl1yl6Abfg8jEQ6EAAyssZMs
X-Gm-Gg: AfdE7cm7kAe2T29j5KOkdYAfi1X9DUvyTrFFICnnXPAlyGhWeaDx/fpOEVwWN4Sz9Fr
 0/cQKMUJGIolBHpYmYrjtKdHXtT1T/iRb/u6mdphcbdYW1nlDPu6P1A2t3WXd+50XsEnA1hrMFn
 WAz5X7vJlCZocb7g2AcRzwDj9GV3UO0emBJi2XsIxfuuhquJ6EpTYqx8fCAcvcocV9FBnGc8vht
 fxlGpXoRKT/qTENT7CQeLnYiUF0heVxegn6gU6Se6q9FgO/f1Dwhb8+qYZCHjI9e2aB5Ae3k0t4
 gfHM3Qr2G/hOD/Sn2u6hsAcCVRCAfbrYTQ5+Pl9HSFY+N3ru49hY1Ms/OMbosZG3dDS5fm1nnK1
 y/O37QQ7w5+gbLF9084lw7bU3XSqiCOvesGTuzejUnFkZg/xTBQpz7ZGGhiuzq9syb4rSMrIOEz
 RDFyeyKLv4DZwsI83VeaqsWYt1Fg==
X-Received: by 2002:a05:600c:5489:b0:493:e97c:216e with SMTP id
 5b1f17b1804b1-493f8851d4emr810365e9.39.1783710475270; 
 Fri, 10 Jul 2026 12:07:55 -0700 (PDT)
Received: from able.fritz.box ([2a00:e180:154f:ec00:aa08:de24:db33:4496])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493f567eadfsm55000755e9.6.2026.07.10.12.07.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jul 2026 12:07:54 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: thomas.hellstrom@linux.intel.com, dakr@kernel.org, ecourtney@nvidia.com,
 simona@ffwll.ch, matthew.brost@intel.com, nat@pixelcluster.dev,
 airlied@gmail.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: Refcounting dma_resv and using that for drm_exec support in TTM
Date: Fri, 10 Jul 2026 20:52:40 +0200
Message-ID: <20260710190752.2355-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:thomas.hellstrom@linux.intel.com,m:dakr@kernel.org,m:ecourtney@nvidia.com,m:simona@ffwll.ch,m:matthew.brost@intel.com,m:nat@pixelcluster.dev,m:airlied@gmail.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,nvidia.com,ffwll.ch,intel.com,pixelcluster.dev,gmail.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,amd.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F81473D8A9

Hi everybody,

The idea of ref-counting dma_resv or ww_mutex came up multiple times from
different people, but so far at least I have abandoned that as to
complicated to implement considering how widely used that object is.

Thanks to AI I gave the task to refcount dma_resv to Claude Sonet 4 just
to check how horrible it would look like.

Well turns out that this is actually a cleanup we should most likely aim
for and I'm really wondering why we haven't done it like this in the
first place.

Not only resolves it a bunch of issues with dma_resv instances shared by
multiple GEM objects (we just recently had a bunch of patches for that on
the mailing list), but also allows TTM to implement it's delayed delete
handling without any zombie resurrection or similar hacks.

The patch set is totally work in progress and only survives a smoke test
with amdgpu, but I still wanted to check if the idea is valuable and
should be looked in further.

Please comment and/or tear apart :)

Cheers,
Christian.

