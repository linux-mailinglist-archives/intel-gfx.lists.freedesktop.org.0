Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAenA914vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64772DDA72
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5203D10EB81;
	Fri, 20 Mar 2026 16:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="na/UHZbp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F8B510EB6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:42:00 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 588B6C5668D;
 Fri, 20 Mar 2026 16:42:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id D3560600E0;
 Fri, 20 Mar 2026 16:41:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 08EC710450CB3; Fri, 20 Mar 2026 17:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024917; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=tBb8G4iVQqneoaxtx3KstRHCNuo2y0iZkF3wbfaRCxE=;
 b=na/UHZbp1tvYB5Zgv5vYqz+RZ98im3EbgVM7FnecmXzXfhLxPBxCsAeLIZqPXUeH5w+tZi
 kG92C34Y5FesaCacOOPf1Z7MsGC3J8mHHag1YezJY+LEfurgM7iTHkglsA9K/mYx0EizmM
 PZ5hgRm4edei+qv5itIUI6Bc03aXfNNsYKkzajcZg1FwLzv57g23xCUcqLXOVhJViRByBb
 5RqChs1yE4xT9Kmv88IJsSdKxcWpZSKFgZXtrZ0RXD54UfJk7YFwfOfSZseVBSMFRuOJOn
 MMIVjsbzYF2/hqZQxYjg1yUfdAJvJuQclThQbC5SPjnchM/TeTYW9+zPHq04xw==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 20/65] selftests-dyndbg: add a dynamic_debug
 run_tests target
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
In-Reply-To: <20260313132103.2529746-21-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-21-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491436.6181.1302108073417304649.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=617;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=4FGYIZj4jeMs13vy3bZeZW/6B7jYNN4IjnVUCixotOQ=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjXnoFgy9PxuncgCjFS6oj11/EXF8EtgChbg
 w3zURjrm9WJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOKTSRAAxZbv1cWSuVJoGcSh68D2E+KJ6P33eWN
 McRc1e9K7MIyhrXT0wiwh/t8FLhD8h2CfIduB0go5VMWgx1574Hp/TRqR39r8zIGEPC8bz1NKRf
 TkCgFR7INlE1eimDXYCzpIq2ZgItBB2OyaOWYrNB5+J7u14O6nMZxeLe3+PIAyj7Z+mPJQMZVEF
 VWqiGblXU7cuFKca+f95GXNIaGlzCIMCpAGzEVHUatlLxve3BARU2xtgVHzp4co9TkYh9E+8Ndn
 Y13g/akYlyZoaDpagoct57+u8la3KfQ4kUs3blNkFHslS5S4RRFqqnZJGEvdYsSNVH6gffHop+P
 AxGb9gm8l7iSKsMggKf0aC7OlN9nZn4Jkk5MKC54ZBAQ6KoaTgk1ZOyO5W9JlOWzSy7GI6PP8UO
 EBJzONA4E3cNk1vSgyN/dPsdjVsC7qPS8lZj1r/p1MJ2rTEZrY+Y8r29tYYkslXQXiIaJwv+UtK
 s5wTKNCcv00kNfIFD7D0bYQ2S6MKmyB8C3BCsXCWxI4Uwm4ll9mRh1U34mu3og8/svKtFCtmACR
 CA89WubDj8cpDEABTQC7lQK+FfSKwKXdw00qU+6qZlSHH4cSVNcqk6wTGFFEAKAUAKPi9atl6n1
 OMxr5fXsp5DKINKXrxbcu5G3bvFMtTP0k+hclm6lgRdSEIE74FeY=
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D64772DDA72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:45 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> Add a selftest script for dynamic-debug.  The config requires
> CONFIG_TEST_DYNAMIC_DEBUG=m and CONFIG_TEST_DYNAMIC_DEBUG_SUBMOD=m,
> which tacitly requires either CONFIG_DYNAMIC_DEBUG=y or
> CONFIG_DYNAMIC_DEBUG_CORE=y
> 
> ATM this has just basic_tests(), which modify pr_debug() flags in the
> builtin params module.  This means they're available to manipulate and
> observe the effects in "cat control".
> 
> [...]

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
