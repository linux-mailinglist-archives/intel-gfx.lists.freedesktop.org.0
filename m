Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOpVEFtzymmB9AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ECC35B740
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 858C610E71D;
	Mon, 30 Mar 2026 12:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a5T1QWkE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com
 [209.85.160.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62DDB10EB82
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:54:47 +0000 (UTC)
Received: by mail-oa1-f44.google.com with SMTP id
 586e51a60fabf-40ef10ec84cso1059734fac.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551286; x=1775156086; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6DJe7q9AzKIA5JE9j9dS7BkLMe6yLjsp/ulkOtgleYM=;
 b=a5T1QWkE1WYGGaGnep2uw4lBcZR5x+eI79MI3AtB/f9cfIs6ZYu69AtXkyYavZcsZW
 oyd5Mqc1mwTU7Hr6yGOt7tGo8HGeeYsS7c+SV4ByBFHni1HRtAMtoc4oLUH9zvTZ6mkd
 yAYaaX44lP+AUbq0w+dAhcqutllk8AKAcfF1IgdznZu+IaF4Tpzek2/Q0JepWJsQuCKO
 RqPrKc02R6fSB0D7bTink3u7Mv5TjCvJvtkvndQsiGxjM1a8nRFfsESjWeHbapClkIcL
 ac7i/oK9w6k1inxCTmNAy+7nkeQ1IyXM0bWRBaRloUWG8inJmDjzWLQO7HD3HDoiulrV
 Qm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551286; x=1775156086;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=6DJe7q9AzKIA5JE9j9dS7BkLMe6yLjsp/ulkOtgleYM=;
 b=s7MmFLOz3vqgwaweanLN4wVsCKiUiOb9OQ49wXuxAb8fxya4Xe4pAuL/w0Ouyg7aMD
 Sq2c0JL+0x/ZLS3Js+Yz9VUTJOgTn8fuXO79JIAhG8TIQGe6/u5vEmxo0n7QoMYifkls
 LG2Qw29VdFoCI/70lqlkCh9gUbXRoCFzj87MrW33jsVCKFwRQe0tBHVQve/6mMHfatK2
 RlBKdpeZbK6911ReWInyzjSxLSXaAMNRT1K9DaDfa6HbnchWFCSN5lOyBlgtNdAeCWFc
 iWcEmFNq1lsr/VPmBHmh2/md6jPvBbMJY+DjCnjjrV9J8RIOc4tKs0FYO1MAQRu2WR2C
 hjqA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW14X1lQBR+xybT6fwoWdAqWXyfU9YNBIAa/qKsZl9OxYRO6FwhTNj8/AlnrfNNCQwgkJut53eT7pQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxUmS+UlcAPSXV5BD2Jsp1YjraWny2P4Tao9+RzS3HBs7oFySyZ
 1kYmCxVPvfLVs1o4OtoHd8DRJ9cGORBlVafZ2PybcPx5neQf2qbkrQDP
X-Gm-Gg: ATEYQzxXTUOqjGP9BsiSa30B9lO6jdwEtt/mFyYP8KarS3zpjWC4qkDfuytUCJYqY8g
 tglEBBcr5dGdZ40i2VxrUI0tP3ZysBgjxAYJwTn8LBNl+9/XZP8b69mVVJARXVmlRLoTgV1DGUZ
 6S0nPkFuQzHdB408FeUrqL1tmL/J08lsior/3s4rEEt3qfpDVj6PYfLUOiqwUw4CeW+eO8eAPqA
 8yLW12PbtoPgpcmwKYIdmHJbDmoXqDowAwgfEMJbOEE9yiKOXlMwVbuZCyk0u27v9Kpq4BW9zE+
 kIIPuloq4A1VQVYg2ywAuXORv3YWfz1P7j2nST46frdHYFjEYoAPxyItw5rFUnIou6AQzNqr9rY
 5XxU6q9xHbY5GJImjpYoitH+Et5NPyHvIhYnRSbSeXBaPLnvh6jQWuhY4Pe6+opAHNZPAZpcyEb
 Sy8FYYFQUnyg1d8Rvte6SgivNfMAmpvw7ZMgCShYqwzYAXhxx5
X-Received: by 2002:a05:6870:458c:b0:417:4c0a:1ff4 with SMTP id
 586e51a60fabf-41ca6d15f6amr4828699fac.10.1774551286631; 
 Thu, 26 Mar 2026 11:54:46 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.54.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:54:45 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 11/69] dyndbg: make ddebug_class_param union members same
 size
Date: Thu, 26 Mar 2026 12:53:15 -0600
Message-ID: <20260326185413.1205870-12-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E7ECC35B740
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

struct ddebug_class_param keeps a ref to the state-storage of the
param; make both class-types use the same unsigned long storage type.

ISTM this is simpler and safer; it avoids an irrelevant difference,
and if 2 users somehow get class-type mixed up (or refer to the wrong
union member), at least they will both see the same value.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 include/linux/dynamic_debug.h | 2 +-
 lib/dynamic_debug.c           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index a10adac8e8f0..441305277914 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -104,7 +104,7 @@ struct _ddebug_info {
 struct ddebug_class_param {
 	union {
 		unsigned long *bits;
-		unsigned int *lvl;
+		unsigned long *lvl;
 	};
 	char flags[8];
 	const struct ddebug_class_map *map;
diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index a9caf84ddb22..ffa1cf7c2c72 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -811,7 +811,7 @@ int param_get_dyndbg_classes(char *buffer, const struct kernel_param *kp)
 
 	case DD_CLASS_TYPE_LEVEL_NAMES:
 	case DD_CLASS_TYPE_LEVEL_NUM:
-		return scnprintf(buffer, PAGE_SIZE, "%d\n", *dcp->lvl);
+		return scnprintf(buffer, PAGE_SIZE, "%ld\n", *dcp->lvl);
 	default:
 		return -1;
 	}
-- 
2.53.0

