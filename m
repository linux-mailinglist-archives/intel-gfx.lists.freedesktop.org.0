Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL0GC7dkwWkjSwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DBE2F7866
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5D610E5A2;
	Mon, 23 Mar 2026 16:05:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BEub/dV/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0186B10E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 19:00:02 +0000 (UTC)
Received: by mail-pj1-f43.google.com with SMTP id
 98e67ed59e1d1-35b95a7444bso1948911a91.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 12:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773774001; x=1774378801; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1PcwMDnihsdnmKVOsfDRGKcGqZ39RTcsdWpVCxqwOIE=;
 b=BEub/dV/KEDCBqElcqY1iOT7telyykWiEskpih60A78hpRcaKAqkonDjbp/FfPnERU
 gNYFRqkTRb1BDz/wT34t5XhAVEtl6++7fhPl/vHLfgoRMHO7PaGU2HzgLV2XQhAvbW4V
 8c8dans6hLrK3tc/EwzY9lnFh256+3lLrGkrHghZuN4C5TRMIdk6Nm7T+EElgKi0S4nG
 jezs/OQJkE+O67njcjY0hKarERgDn0etL8nP6XNwVFvHLzzNGZJTXKewOnDleC0A7/LG
 o/RFdvhhLaFa4aN+Is2sE4mipG1QmjQwy5ABn4+jveIWUfyq44q62OPjphwAltHAaP5u
 KOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773774001; x=1774378801;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1PcwMDnihsdnmKVOsfDRGKcGqZ39RTcsdWpVCxqwOIE=;
 b=IThJl1IOQRO9sXrmOX7pZW+/q7IBME1vBNNC9gEoZtTuLc5pzWlllXMu6sUJmRzXTT
 K3FyQ9kZ+G3/Q15+dEAcB9GQjzCZszpKYRKkadtzqk5h2Og2dwtFoCgKnJIKuMordI8s
 Bf7QkWWb3BVQFDgWhqquXHqLKPQiylw3NU3nibE/+2NgyH0OzaonkhU/qxlvkdPPNkUQ
 9PTb/IWHTFSTx7+KmQDWfx5xoh7TSrhZNsteg//rz+fA35mKG52pIatXCT6Ho4zdQR+V
 l6g/pHKXwrCDpxWyyGbnqknozCmRGOGU5sNtmc6kh4mMK1uA982Apk+jlqeNwzht3pQh
 Uw+Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXw1ArmbevgI72jLLPWZFWto1oF68CPTJ+vTEowWRYBt7s/05aNEkWldBKleY1kvliY/R57Ul8ijRo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwS4fU1aI/fdYCoDHpQA01Vc5QaIgUBdn6OmLfnu6B+wuZ4wNo6
 252eLLS68UwreQDJK2GsZ4LERx4n0RQB/kpRFYRGTKq/40c5a9VDFZZc
X-Gm-Gg: ATEYQzyvMArc/OTX38Lceu1DTE3zXW2DztdPm7xH4JREUU8DVw6h+akId43MaGI+yJk
 UCiKO6rXfkvsBHKVHW3jTFNluw11d/C1ZFs5SJlXVOGDSsNMGZAW/tR3Qo+YUEO7pN56z92ewef
 BemplMXkvXT9Vn3awMVDIgnpojJ+ud3bMXQ+LmsDMspqnxdz1iF641bY44BqttkDTx0snQpKzXF
 /hm2cTMkgwIegLqox5bshljId725eW9dq6o3zfquML1PIpkGdBMgMGWPz9MmaP5jTsBE6AH9vhi
 v5rOj/1S2qooBEghf42cFzwQaI0QMcLh5WYzKhiqrsgwJ4EeiQfT24AAT4qq/wAFqDVZXHmtZii
 FTgOhLcDkCBQkWJCc02hzHB1iWw41jhrrATp3PsLobIwZHFBM2YdIoRfdV8qwCH/CxstNh3+LKo
 ZAykKY/4D1zIxTA8YDwHOCBFXsZveZ8EAB3cBbqlFfMAJRMhM7Goj4jP41C1nFSs6MIYnl2ck5V
 dCMjaCP+9D3BhjeCe2YmnYOt5CQ+TF65AU+CSq4VjngXqDPdE8nsP6xLgn6pZ4CH6YmRw==
X-Received: by 2002:a17:90b:1dcd:b0:34c:35ce:3c5f with SMTP id
 98e67ed59e1d1-35bb9e45688mr490920a91.5.1773774001443; 
 Tue, 17 Mar 2026 12:00:01 -0700 (PDT)
Received: from 2045D.localdomain (76.sub-72-110-123.myvzw.com. [72.110.123.76])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-35bba5a2c60sm196240a91.9.2026.03.17.11.59.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2026 12:00:01 -0700 (PDT)
From: Gui-Dong Han <hanguidong02@gmail.com>
To: gregkh@linuxfoundation.org,
	dakr@kernel.org,
	rafael@kernel.org
Cc: linux-kernel@vger.kernel.org, driver-core@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-sound@vger.kernel.org,
 akaieurus@gmail.com, me@ziyao.cc, Gui-Dong Han <hanguidong02@gmail.com>
Subject: [PATCH 0/4] debugfs: disallow NULL string creation and fix callers
Date: Wed, 18 Mar 2026 02:59:09 +0800
Message-ID: <20260317185920.43387-1-hanguidong02@gmail.com>
X-Mailer: git-send-email 2.43.0
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[141];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:rafael@kernel.org,m:linux-kernel@vger.kernel.org,m:driver-core@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-sound@vger.kernel.org,m:akaieurus@gmail.com,m:me@ziyao.cc,m:hanguidong02@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.freedesktop.org,gmail.com,ziyao.cc];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B4DBE2F7866
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A recent bug report [1] highlighted a NULL pointer dereference when
reading a debugfs string file created with a NULL pointer. The community
discussed the issue and agreed that creating string nodes with NULL is
invalid and should be forbidden at creation time [2]. Since no fix was
submitted following the discussion, I have implemented the agreed
solution.

Patch 1 modifies debugfs_create_str() to reject NULL pointers, returning
early and triggering a WARN_ON to expose offending callers.

Patch 2 is a code hygiene fix. While modifying the file, I noticed the
EXPORT_SYMBOL_GPL for debugfs_create_str() was misplaced far away from
the function body. This patch moves it to the correct location.

I carefully audited existing callers across the kernel tree. Some
drivers passing NULL have already been independently identified and
fixed [3]. The remaining two subsystems (soundwire and drm/i915) are
addressed in patches 3 and 4 by initializing their respective string
parameters to empty strings (""). The existing logic in both subsystems
correctly and safely handles empty strings.

[1] https://lore.kernel.org/lkml/17647e4c.d461.19b46144a4e.Coremail.yangshiguang1011@163.com/
[2] https://lore.kernel.org/lkml/2025122221-gag-malt-75ba@gregkh/
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8cc27f5c6dd1

Gui-Dong Han (4):
  debugfs: check for NULL pointer in debugfs_create_str()
  debugfs: fix placement of EXPORT_SYMBOL_GPL for debugfs_create_str()
  soundwire: debugfs: initialize firmware_file to empty string
  drm/i915/display: initialize string params to empty strings

 drivers/gpu/drm/i915/display/intel_display_params.h | 4 ++--
 drivers/soundwire/debugfs.c                         | 5 +++--
 fs/debugfs/file.c                                   | 7 +++++--
 3 files changed, 10 insertions(+), 6 deletions(-)

-- 
2.43.0

