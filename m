Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGitMed4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2A82DDAE3
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFF110EB9B;
	Fri, 20 Mar 2026 16:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="UBUDePkX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0721610EB96;
 Fri, 20 Mar 2026 16:42:12 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id ECBD81A2F12;
 Fri, 20 Mar 2026 16:42:10 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id C37EF600E0;
 Fri, 20 Mar 2026 16:42:10 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5B32E10450CB4; Fri, 20 Mar 2026 17:42:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024929; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=Kqg2HZTJVWRR2tS3YPa3wsykd6O3Rjp63yhxGf4aQLw=;
 b=UBUDePkXFRvC4BduDw8vBce1a7apZwkjDdXFHqH4YwHPejGrwFsCG9WPNrhvhLBThQDdLF
 wyw2iVhu8yPDpw1pHx1w14XXeJjvvtXoXX0sJmHQdW+Txujf4wDQKD1ZAJjuRuvwUt81fK
 ZHRGuWgGSBCrfPzd9jlkjT9+m15fkBY2g+11r+uZ/yngTRVU2Kzwo1CEFFlMwEKGzUXX01
 BRYxMeJDUpwfYauQpEoInNZCVuziWQpm0Y8PbUCbAH4kTr+XPtgKwQpxSR9G7vaFtp7BCG
 BEE4ZRdako+EA0EWGkDZcNPOzwjSqw6M56PTG0AGwOXliWdjAJz+A/wUg/ExbQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 24/65] dyndbg: check DYNAMIC_DEBUG_CLASSMAP_DEFINE
 args at compile-time
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
In-Reply-To: <20260313132103.2529746-25-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-25-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491443.6181.60919381684088042.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=863;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=oFQ+J0egVKr5tAsqlN3xmdslSXlZ+Q9/RF3kItKtNpo=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjXWhAQEZgjNAhw7byoorKb1SXNHYTCk3a8y
 vFv2uoevhaJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOIGpRAAhRSCEMRibwWdWaqxbC784J4wZWmSm4/
 4xhIf1/1NhCHQwc5UZ875/uKr2l2lyD1WxKpFsvLzQmR1Pg3CsighN4hNkyF/zuS/qgXEn2w41z
 CrrpcvW1kssfq1kdTVDbolTcCXKATw4plJ79dwJGvQyhyBolxlH28txwqCsPAbJr0eC43/lN4fz
 YqcVCgjz3XLNFb5vA1CB/vsoA3XUsUyHUGfqyefaBJUigWCnM2FO4Vfgj8eFx9a/HDUluObM4Bg
 UmqynVfSeYtKXrdEvGP2A8kpPyXz9Qk9siNA8MCBs1p3QGhTtOExc2iuBvB7RmlLthed4ReRqDk
 oKGK1Uo9DfT6Qhz15coscf/rMjq0HAuDYrGDPlZ/1YOza/2Eeh9+q7ghv5/qgcW1531CavAC7pQ
 izM1zFJNjGkgjqQS74dvzW4QyvPmxeyWrLa7hZUq0uH6DT00xvV3DfXGjk5LpbO7JHDOlVnJZzH
 xi3GbHuuUjhwY1MJVBsxPGwweAoRprd/QZeeWbqi9t4e9lUE8bwQoRDJFUZK+0UTwXGrW9Nhlwg
 eyPRRlBUGS/9y/wuP0NzrTUw3oZl/gwXLJOgAn21tb3SxW3qB1xvi2us61NaJ0H/GJqhR9rmO6N
 TYT8SCqt0JFsGH2geTFRKVV5F3YuA66agnKE7TxS9+leGkKi6NWE=
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
X-Rspamd-Queue-Id: 9C2A82DDAE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:49 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> diff --git a/lib/test_dynamic_debug.c b/lib/test_dynamic_debug.c
> index 1ba4be9a403a..b2bdfdfb6ba1 100644
> --- a/lib/test_dynamic_debug.c
> +++ b/lib/test_dynamic_debug.c
> @@ -146,8 +146,19 @@ DYNDBG_CLASSMAP_DEFINE(classid_range_conflict, 0, D2_CORE + 1, "D3_CORE");
> [ ... skip 4 lines ... ]
> +/*
> + * Exersize compile-time arg-checks in DYNAMIC_DEBUG_CLASSMAP_DEFINE.
> + * These will break compilation.
> + */
> +DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_base_neg, 0, -1, "NEGATIVE_BASE_ARG");
> +DYNAMIC_DEBUG_CLASSMAP_DEFINE(fail_base_big, 0, 100, "TOOBIG_BASE_ARG");

Maybe add a:

DYNAMIC_DEBUG_CLASSMAP_DEFINE(cat_disjoint_bits, 0, 61, "TOOLONG");

So you can also check that an overflow is really checked.

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
