Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDpfE15kwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBB92F75C0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A016E10E508;
	Mon, 23 Mar 2026 16:03:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="nd/Pq6GT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D3310EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:10 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id
 5614622812f47-4670464029eso1288853b6e.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408189; x=1774012989; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q0sBYQSvT/W3L1mc7F8xF1oVUSz9OX/m/AEikTG2UrU=;
 b=nd/Pq6GT3nGpTT+SwcRtjUEdQPnAKTWNE/CT6RIuMu974vq71a2L+kutdFp51duJaI
 ew2wY7xP83poJz+C2RAo1aQNVIaRZifelsnced5HP7ZmTWxVmln6S/qE1SeDZeHPiina
 /pybKCTDVCV9HmTeqp0IA4wy1Xxuizzb3C+Eo3VUDTcxfW8ReddsXeiBdiaj606ohT6y
 bBTxKmAJKpgP0Gj52vj4xZxwgtaMTH3R7RtZXDWNxWQ8YdjiT9DzwDpVxyIOEt4LlNwd
 YuZiU55aaIIhxaSCOdiP7aWWI7vdIkfaiuSopAjzOaGFJ0mNNZGAJPLOUTjTG7UzqL3c
 6QCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408189; x=1774012989;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Q0sBYQSvT/W3L1mc7F8xF1oVUSz9OX/m/AEikTG2UrU=;
 b=EEvrH2wB+UNWYD3NqKVkCzQ96yFndh3MwNQL54ID6RY0RYSFNjE07aIghVMJGQexvr
 wmxJfDjtK32BaKrw3yudrohUwGd5t4iC/Szjk5UsE1V/sJDzOEBqKbkv3Q250+MKPhYp
 HwXuzJcB25gw10I/XFCHByOK2ESi7S3nk3GlEOl6GqJ3+5OlsuAqBcoqnzgy3thchkHr
 DzjLo7riYScTi6MMCLj70Nk0YPSr2pCbq6LlZhNP6Wl5fQp2ck3EfH2OLxO8XHDA7Bnb
 BPV1rRMqgQlnWQpM1hjGCMhqyRqluB/iTWLVmHMaq2rPiasYDrx8SpNnWqMQ0cwohabj
 SpTw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWp8KJmdtKGfUxcXcw5ZcVTC1H8/5jg4jWu9+aJ/lFhixU6iR27kZ7uS5z4ADp6YSVxzwwj7HliLPk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw5izgZVSGdFO/6bFoVCeo0WB51N/YbncKJLQmOBGGolJ0M+vuZ
 rEf+J+NxhQBvzE/rrZOsj3Poa4DNp9TPmlSxTXQiVJIa+bjtsOiwa1Vt
X-Gm-Gg: ATEYQzwNtJtk7HeJHGTCqZ2KePbsFwuUekm5rWYFraINVes8Y+oK/0RC8742gUgXCNm
 xRpOQmuqHC1b7ldl+S8JCMz+Rg1X/hWvRbaIw+FLHGgS3xSRUahifaH5Gn6rIiJCt+rhmPCRQJS
 QJ9ziV5SG01ABXd82R0ya/kSAYNFZ7Bs2u46KwsRYaI0zsy0ZuHhLdf54XmBL/MaEFOpiJAmenD
 k0fb/H352jOiVjQrAvHMJp3n4Idi1aQI/zCi51e9BOs1Umf49oNl2WU2SnCfE12IdjvWyUV0kcj
 lB321rUmSLwYXSjaX70n8pKjKJ/9R1G/lfA0bCk6I5SGmtt3/4LIcm63jTC1QJxApNU3b9Xvv/x
 sU9KjY9pqSl2yQvXjlUfjg9QROSG+2DA87XXextk15ZjZiat90xxH8ZEYO4rfWFx0iIl2xtE21T
 GJP/XQGYNrVDnvfS7MZ+S9gHN746hFhXCxCyccz4Dfsd2RfJ3k1kxGDlXGmqw=
X-Received: by 2002:a05:6808:4f49:b0:467:1941:1f18 with SMTP id
 5614622812f47-4675715ea52mr1607049b6e.14.1773408189500; 
 Fri, 13 Mar 2026 06:23:09 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:09 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Jim Cromie <jim.cromie@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 07/65] dyndbg: reword "class unknown,
 " to "class:_UNKNOWN_"
Date: Fri, 13 Mar 2026 07:19:32 -0600
Message-ID: <20260313132103.2529746-8-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:23 +0000
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
X-Spamd-Result: default: False [2.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:akpm@linux-foundation.org,m:linux-kernel@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,linux-foundation.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.965];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: EFBB92F75C0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a dyndbg classname is unknown to a kernel module (as before
previous patch), the callsite is un-addressable via >control queries.

The control-file displays this condition as "class unknown,"
currently.  That spelling is sub-optimal/too-generic, so change it to
"class:_UNKNOWN_" to loudly announce the erroneous situation, and to
make it uniquely greppable.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 lib/dynamic_debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
index 6b1e983cfedc..a9caf84ddb22 100644
--- a/lib/dynamic_debug.c
+++ b/lib/dynamic_debug.c
@@ -1166,7 +1166,7 @@ static int ddebug_proc_show(struct seq_file *m, void *p)
 		if (class)
 			seq_printf(m, " class:%s", class);
 		else
-			seq_printf(m, " class unknown, _id:%d", dp->class_id);
+			seq_printf(m, " class:_UNKNOWN_ _id:%d", dp->class_id);
 	}
 	seq_putc(m, '\n');
 
-- 
2.53.0

