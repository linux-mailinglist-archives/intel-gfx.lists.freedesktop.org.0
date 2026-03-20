Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AIe2Ej55vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F39762DDD73
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D0EA10EBEF;
	Fri, 20 Mar 2026 16:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="U/tCSSDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6DE110EBEF
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:43:39 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id D8FA41A2F04;
 Fri, 20 Mar 2026 16:43:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id AEED8600E0;
 Fri, 20 Mar 2026 16:43:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id F2CE110450CB5; Fri, 20 Mar 2026 17:43:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774025017; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=19UBhbOGQu5MSJjUDSgMIWkx4Iflae6zKZHCmRba0zk=;
 b=U/tCSSDzuEjh7OJCT1fUtZfRm1MiJnY9xKQtHZIEoYmBbIXNiODf/MfJh/J4ar0dpaWLQX
 78DZ4ayZmqKFrpNQ5DVp96A2mFSZ7s11M4lUgv+qtUlQNp31DxkBy/sa0wZA415gpCXO7u
 JKgY+W4hhdOinrFLyRUBELn0Edl9x9DBU4Uo7QU4S1yXOn9kAmkZO3xPZU6pl2Pa9DxXH1
 1m8QKihcrgqPx2k5+COQT7zJlfwcZhMcI8Th38Wo+1gEXc80BbvIV4LqjtDT8wJrbp12IF
 UZsLtsTMrBQEVgddOO7YuwzB6hYcUQ4e8QN6QJnGgwjWNdagphzEZoCNLJ6aFg==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 59/65] accel/ivpu: implement IVPU_DBG_* as a dyndbg
 classmap
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
In-Reply-To: <20260313132103.2529746-60-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-60-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491476.6181.12723360930731783132.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1685;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=KgB7ix2nsEj7/LdPnxk5JMkHts8gbnr7iU+OHOLXafI=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjbhXDAy+lC6aQq4cvncwOGzPKhLLjkUp/a7
 4qYWJ+a2pSJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOJ5iRAAkhq/gMfOGU+0P3Vo+Oj3T8eAC4AzbjU
 OIO6hebffjcfJeSST53+cN3uew6wcyblJ84dE+eWnNO/2emH9C3+KEylPh4m5AG0uXWgTdju3SS
 Demwajbn1mU/0QT4hcxW2lCMlulsXXPBtXxlp0GYpFdfzKCarxVsI/ALknnPorv4RHO8pDTvlCW
 2rIN7d2Az2SeOYkCXnFwlnVYYulE8iKMbN4LYZg3kAnbUo9o0+8Nn+2nQV5d890kVyt1o9uCpJE
 A6h1s5/HfPt177v7buiDD43US6Z2Mz9E9yQGJUM5Pw0mU9y/RlKWEhMgv4RTr3bWPlbP56Ckaqf
 ZEKyDZNsh9va2upwZUl02whDpXDczGTUpJl3jUCob8l5wo4tt6mCOaQ/aKZ/nz2SjrRVTLfKZLe
 GoWPICfbUhXBLSDDn8ozTYU7cR7Onqfn/MoX9ig8Fsl1Fk55x4HKHGTee4xYapU8rMxzyjTf4zI
 FwS/i4tbCAfighnGPMszMxNv2rWRb0KMisuuO0eJUrV6RRMEZhrDGGJtFb8aIMphCi3Kmk/xloR
 puT+k7pHqCNlTVON9Ac1yR6wl7uGcjLSDKsveShjFccwy9vi4Xok82+fY5Ie/bK7+765Cvf6jFC
 tEXslzx0a3w1tBteA+JrxURwFUd8kuKPLwBthAefGGatzBpb8iEA=
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
X-Rspamd-Queue-Id: F39762DDD73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:24 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> [...]
> Anyway, to play nice with DRM, we change all the constants, from
> macros calling BIT(X), to an explicit "enum ivpu_dbg_category"
> starting at 16 to avoid DRM_UT_CORE..RES.  This is all in an indef to
> avoid changing the constants for the non-dyndbg case.
> 
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>

Hello,

I have a maybe dumb question: if you enable CONFIG_DRM_USE_DYNAMIC_DEBUG,
then the meaning of ivpu_dbg_mask will change no?

In one case you will have to use ivpu_dbg_mask=0x01 and in the other case
you need ivpu_dbg_mask=0x10. I think this is very missleading.

In this case, I think it will be way easier to completly change the
expected value for ivpu_dbg_mask to have the same behavior with or without
dyndbg.

In addition, I think this could be nice to have a "rule" like: "cores"
should use LSB for their classes, "drivers" should use MSB for theirs
clases.

This way, if DRM decide to create a new class there is less chance of
conflicts.

>
>
> diff --git a/drivers/accel/ivpu/ivpu_drv.h b/drivers/accel/ivpu/ivpu_drv.h
> index 5b34b6f50e69..ef5a96b961fc 100644
> --- a/drivers/accel/ivpu/ivpu_drv.h
> +++ b/drivers/accel/ivpu/ivpu_drv.h
> @@ -81,6 +85,41 @@
> [ ... skip 9 lines ... ]
> +
> +enum ivpu_dbg_category {
> +	/*
> +	 * since accels are drm-devices (CONFIG_DRM_ACCEL_*), adjust
> +	 * IVPU_DBG_* to avoid DRMs 0..10 class_id reservations.
> +	 */

Here that could be nice to start the enum at 48, so there is a real hole
between "core" and "drivers" categories.

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
