Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 242FD7E9D91
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 14:45:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC7010E377;
	Mon, 13 Nov 2023 13:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 320 seconds by postgrey-1.36 at gabe;
 Thu, 09 Nov 2023 22:43:45 UTC
Received: from beige.pear.relay.mailchannels.net
 (beige.pear.relay.mailchannels.net [23.83.216.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F7E10E34C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 22:43:44 +0000 (UTC)
X-Sender-Id: dreamhost|x-authsender|kjlx@templeofstupid.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id 1571B1425A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 22:38:04 +0000 (UTC)
Received: from pdx1-sub0-mail-a219.dreamhost.com (unknown [127.0.0.6])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id C81DE142952
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 22:38:03 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1699569483; a=rsa-sha256;
 cv=none;
 b=bV+6grFpWHvEzbtyUHMc51i5DyLBer69Tc6WavRpvEJxIxjur8yXz6jh5MgyeMTK9eSgJu
 hs0/opdPh62z1Qx2z6gMBLBnYiS6r+P9YCc0bx30gYsUaZ1d87+gNR/sjbGH3DBaDtdit5
 MER0dpTNdoMBwianTnz4LchiYyHIwGFbm7bZS8l4VcwMQhhbTCL/CrK93RG3P6iCB19en0
 XdrZmLde4ePcp6pnAobKHI7Khd/B9GJbqXMUdQdz/5nUYwN8qUNSfXRqMgcwgd9VNAk4Bh
 TLJSVI2LOjhECpDA60NHzKdYfCS2u4X5kIC4cP7lG7Z9nUlkG8t0jpNE5hCZ/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1699569483;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=8FdBTqj7EnOPCatPq6Ewwon91Yw3IOaAcb1fC3zTNWc=;
 b=dT43mdYlA08dv8vbA5+yN5SnMZooDaZmCc7Kj/iLTYCTjw7V/3xWjxqnb/2CxN3tbaktJU
 DQEBsWCQ6nXHt326BkoWe1DDfpwHNFSAb58AoYHFbmAcUGxW7ngxLLF2lZrccCMCn8FYMa
 wwuRAnCNIJWlD5Am5aUh9P4pvNFPSQKjJiDhhdlDNwifx1fHcbR9Q1YByhGNh95ctu6K2z
 udQBwoj91oDsoYGaZeTX1gqOku/Gq+JtcK6HYuKk+oMCzsHdKvV4K7dHPtg24Wj/qydDDT
 DukPN/AdX3wp75L+5Iie0NGYrVd22GAXiTVyjefrjx+ZUU8YE+jDAdzNJtgOBg==
ARC-Authentication-Results: i=1; rspamd-6c48c794c6-p5xgd;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=kjlx@templeofstupid.com
X-Sender-Id: dreamhost|x-authsender|kjlx@templeofstupid.com
X-MC-Relay: Good
X-MailChannels-SenderId: dreamhost|x-authsender|kjlx@templeofstupid.com
X-MailChannels-Auth-Id: dreamhost
X-Well-Made-Broad: 70758e8930dea816_1699569483938_1013059145
X-MC-Loop-Signature: 1699569483938:1153836429
X-MC-Ingress-Time: 1699569483937
Received: from pdx1-sub0-mail-a219.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.117.123.8 (trex/6.9.2); Thu, 09 Nov 2023 22:38:03 +0000
Received: from kmjvbox.templeofstupid.com (c-73-231-176-24.hsd1.ca.comcast.net
 [73.231.176.24])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: kjlx@templeofstupid.com)
 by pdx1-sub0-mail-a219.dreamhost.com (Postfix) with ESMTPSA id 4SRH0W1QM9zs1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Nov 2023 14:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=templeofstupid.com;
 s=dreamhost; t=1699569483;
 bh=8FdBTqj7EnOPCatPq6Ewwon91Yw3IOaAcb1fC3zTNWc=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=jzPgAP7uZ6rT3mB5778Ifk3l3q2mOMiYDkuhop9ZKq+5ttWMlmoNDQ8EHme+aRYKD
 CKYw/PGY2R/JRoSsw8BcPWrEHhtq15gAN8ef5lPkynJM33OiiIKyD75hZH9ZLOvYNb
 QM5SIlEFURBw9NOa5W3yRHj9XE3GSfVHdE4vlQrOijeKEF2C1EsxF9AGZclfjr3qZV
 hhdyFKp2HkQwlJ7Y0/lGMGW4p5aQb01Cvv/5SYK4cZcjErbrcyDNHL5p7EE7uC6RLG
 xN1D1Wkaze8YkLJHZeFh193QhX1HHG5Q0viRff8kKl7RVGoDca1WhtK6uUphAR3YOu
 lvM6maUVzg3ng==
Received: from johansen (uid 1000) (envelope-from kjlx@templeofstupid.com)
 id e0044 by kmjvbox.templeofstupid.com (DragonFly Mail Agent v0.12);
 Thu, 09 Nov 2023 14:37:28 -0800
Date: Thu, 9 Nov 2023 14:37:28 -0800
From: Krister Johansen <kjlx@templeofstupid.com>
To: Miklos Szeredi <miklos@szeredi.hu>, linux-fsdevel@vger.kernel.org
Message-ID: <d80c0df75fc601ffd3f957084574f10abaf3bedc.1699564053.git.kjlx@templeofstupid.com>
References: <cover.1699564053.git.kjlx@templeofstupid.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1699564053.git.kjlx@templeofstupid.com>
X-Mailman-Approved-At: Mon, 13 Nov 2023 13:45:43 +0000
Subject: [Intel-gfx] [PATCH 1/2] fuse: ensure submount_lookup is initialized
 on alloc
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
Cc: Miklos Szeredi <mszeredi@redhat.com>, linux-kselftest@vger.kernel.org,
 German Maglione <gmaglione@redhat.com>,
 Bernd Schubert <bernd.schubert@fastmail.fm>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, linux-kernel@vger.kernel.org,
 lkft-triage@lists.linaro.org, Max Reitz <mreitz@redhat.com>,
 Greg Kurz <groug@kaod.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@linaro.org>, regressions@lists.linux.dev
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When introduced, the submount lookup reference tracking neglected to set
an initial value in the fuse inode as part of fuse_inode_alloc.  Users
running with SLUB_DEBUG enabled caught and reported this error.  Fix by
ensuring that this value is always initialized to NULL.

Signed-off-by: Krister Johansen <kjlx@templeofstupid.com>
Cc: stable@vger.kernel.org
Fixes: 513dfacefd71 ("fuse: share lookup state between submount and its parent")
---
 fs/fuse/inode.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fuse/inode.c b/fs/fuse/inode.c
index 243bda3cfdf6..d7ebc322e55b 100644
--- a/fs/fuse/inode.c
+++ b/fs/fuse/inode.c
@@ -103,6 +103,7 @@ static struct inode *fuse_alloc_inode(struct super_block *sb)
 	fi->state = 0;
 	mutex_init(&fi->mutex);
 	spin_lock_init(&fi->lock);
+	fi->submount_lookup = NULL;
 	fi->forget = fuse_alloc_forget();
 	if (!fi->forget)
 		goto out_free;
-- 
2.25.1

