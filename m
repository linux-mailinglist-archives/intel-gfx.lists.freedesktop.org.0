Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOUKMzt5vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48B62DDD64
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1037910EBF6;
	Fri, 20 Mar 2026 16:43:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="1eFpiqnh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD0410EBEE;
 Fri, 20 Mar 2026 16:43:33 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 144A34E4274C;
 Fri, 20 Mar 2026 16:43:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id DA110600E0;
 Fri, 20 Mar 2026 16:43:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 0D6DD10450CB7; Fri, 20 Mar 2026 17:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774025010; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=l2/0qMEBnz0wEmduXn1YsXP2N4tpgW+UrcJak/YgRgA=;
 b=1eFpiqnhu8jL4QqYMk6Nj90WcnVMM2T/PV9py5O9JjZNijPE4lk2fTxsbiYBVAQsN+bMGz
 5RVvz8sl0Cr4IsioMNyXp2IlteJ1GIudA9VwNLJoddLyi2cfkOeIX6ZvQoo2qmHyB7dng/
 sNHigPctiv5ygRxKDuPaYNv6Cez9bb+xpaVtNluY0BgzbpiXzAucIIIPdbd5iDXFt2uUdf
 iM5prkP8TvAOXlvZm5EOBdtN09uMF1TSIqEfpnI+gxuqQH8yn/2Xxcawkummj3Z6OZgUxZ
 ZnNlg5yYVZuTzxWVHDcfy82ue2tKxbq1fTZxBFVxh/ZOwElhp7gRZJuEG+LndQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 57/65] drm-dyndbg: add DRM_CLASSMAP_USE to the
 drm_gem_shmem_helper driver
From: Louis Chauvet <louis.chauvet@bootlin.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, 
 tzimmermann@suse.de, maarten.lankhorst@linux.intel.com, 
 jani.nikula@intel.com, ville.syrjala@linux.intel.com, 
 christian.koenig@amd.com, matthew.auld@intel.com, 
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
In-Reply-To: <20260313132103.2529746-58-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-58-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491473.6181.4769114576501981136.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=364;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=bNyBURlttc/XExJGQqT9iSQSmZSoEUxSyBmQgzWQcg4=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjbLeUiTGg/m1oYfAr2LZw5X9Yuk7DqnfmMp
 BlPpdYsXdyJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOKcMg/9GjEOamwfWm0vXiAnHTLBB3HbRXVrE1K
 CzMvlNm6g3AhUGsf38q82m0FT4g0yOBL+PjslJdRFY8B/R37jUoP1Xjl1YlM89bEadTLah8dX6l
 H6BQCkQv1UW5mpv6FYJkYciaCoBbSlG1MtrFYzO4jG45qTh1jIIbk7dIdrETbt+5uN0uDZZcI1M
 MTBDTUU1jHDU6qSx21EYdKfkzypbvWx2DMl3DhpKpHAmkg6nOplZ0a6rD50+WkWqxEJmLy89byz
 n67deb7NIp5SvDtQzriPhjH+4+/5RcJtaLA+VBHxU6G7Ff5iTBBLsfsgcP11MQwgReRoDDi3YgV
 xfq66DMhvdNonnpflXrptT4KK94n5TS34Uj2G7TDqixHIfS47kInqFZpXycrBxm7yt86Um/lPKq
 5LRCapOGoEWuPvuWlEzQbGM97nLZUWqzdqnjay8T+8bIchKYtJKpK+yZu495WFroGM6dyV+9PDL
 Kij4cRzVdlL33QpLZb7WRi7SnDZljnn5vfvDEDlGtsVxY9VEAn0N1K8SNT81q4aITPhkQzIgrRq
 F02xxrLbkZWDWyaj+GeqvHwkP9KJi9DBom2vuMNjfjaliwWU8b8+MPgCw4KC3rX68RhBI7LZrvC
 RxzD4ECSricuetZo2kWkkvJEQoiw4LcFfM8UiGGQbQntT3Y/bHP0=
X-Developer-Key: i=louis.chauvet@bootlin.com; a=openpgp;
 fpr=8B7104AE9A272D6693F527F2EC1883F55E0B40A5
X-Last-TLS-Session-Version: TLSv1.3
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A48B62DDD64
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:22 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> The drm_gem_shmem_helper driver has a number of DRM_UT_* debugs, make
> them controllable when CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling
> dyndbg that the module uses them.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
