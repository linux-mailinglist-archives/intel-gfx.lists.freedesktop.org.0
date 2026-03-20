Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SBMzCFB5vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:44:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B32D92DDE0F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2584410EC07;
	Fri, 20 Mar 2026 16:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="OJu+/q7l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39FD10EC02;
 Fri, 20 Mar 2026 16:43:51 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 8B0924E4274D;
 Fri, 20 Mar 2026 16:43:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 5EFE3600E0;
 Fri, 20 Mar 2026 16:43:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 1C0EC10450CB3; Fri, 20 Mar 2026 17:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774025029; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=x2jomYIVcHsmbCXSkgnfVSZ1ezBsyA+cu8Tfc/iGI+E=;
 b=OJu+/q7l7Q+uT9hCnBfuRF2A7regTlfo5s6pf4wF/CLgOs1TBNEeggG/p0Wxk/Sw+vMDaQ
 gvk0lMOJgeDoWx6OYDwXdgH3os8pIAEm3k9uihhTLOeB3bSLxpmmSXH8Vt1MOFYf0yucMX
 lJEJCS7tV6F6RMzjDqJfOHef772FODw/nJSM1fOFXgmZWpKJtX7H58DrykbgyCX0wHDrVe
 GZE7d1c+5BHdKR0O17QK72fEnZRs0dm5bAcTaQUbJ5VJk8XFwjg9EDdTWUHQqg5wAdZtuw
 tZusADkGcDvLkCj6florrw7qIH30jZ8R/bmrLpe6/3aaahlc+ypRFnWCYvWJ2Q==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 63/65] drm_buddy: fix 64-bit truncation in
 power-of-2 rounding
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
In-Reply-To: <20260313132103.2529746-64-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-64-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491483.6181.11788631907510647484.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1336;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=6aSbIg/8iFip1SYs4zO/D0GiF2Q/h3bYhaGjD6Gxw10=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjcUC7u6+1kFI700lYOn5R9e7bbxwF+r6Qn5
 rjLQs95CFOJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab143BsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOIkVw//c+i84OcoNXvQJKPre7SbJ6CPMKXQrGo
 hHDotwlGy49qjt+lRX64zbXpmPW+qDpnow2FYunCZiEadvNs/vcRKWSa+1bkuLVlQ/uyR/y42Qf
 xCevqDZBD4B2fqd9SyrK/Zkd7yVfGR5JI+2eTe6NPnnCbfxJIR5A9HFlpKH6AhhkzsqtHd6Q8BF
 eTL7h4wU1n02cQcM2htb/FXAQspJivxl2NWU5yarof9ZsdRZNffROPfpq72P7Zb+PTAZfS9RcQt
 MyaGT8Vm6bMXYXQaXSxZw5O0L9wocQUgMqrPios2+6NEbmqG7w2N5ewhCOGaZft8g+R3WCV+SRR
 ZIJQuGvPJSWym7ef5an3d1vdUD8S9Ome++z64S8mGRk46xg1ovEASNCWb4Ot440Y4B6edWhKrMa
 8yixIETD5yz/AEB505CPnBMl8QED4upGIlVKez6bzok9rHXsPN6SCCAcpqzn6y+4Vee9JoLJfvn
 eaIiCpPBoPwoQt2pW7jLMEDQGgr1m7Xw58FWC1oreoX7MRENyQW3CudegJDsLSFcO/R+gx3zz95
 0PLlI3KWGlQr40g4ZbUcIiVbEQ3HRJL1rJB/2AHAz1qv6xVhYEs3D7qc5mpObQ1Thki+kFJIJ4z
 xpgW6rf89twloUqXAJ3MXHqIkJ6clzQYt7EXx0ZoRK+2PAez4C+8=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B32D92DDE0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:28 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> [...]
> drm_test_buddy_alloc_exceeds_max_order() uses the on a u64 value,
> where they silently truncate the 10GB allocation, giving unexpected
> success in DRM-CI.  (see below the snip).
> 
> Fix this by replacing the standard macros with safe 64-bit
> power-of-two calculations using ilog2().

This is a general DRM bug, if you send a new iteration, can you move it at
then start so it can be applied easly?

>
>
> diff --git a/drivers/gpu/buddy.c b/drivers/gpu/buddy.c
> index b27761246d4b..ff158cc1d27e 100644
> --- a/drivers/gpu/buddy.c
> +++ b/drivers/gpu/buddy.c
> @@ -915,7 +915,7 @@ static int __alloc_contig_try_harder(struct gpu_buddy *mm,
>  	u64 modify_size;
>  	int err;
>  
> -	modify_size = rounddown_pow_of_two(size);
> +	modify_size = 1ULL << ilog2(size);

Thanks for catching this issue!

To avoid this kind of issue later / in other parts of the kernel, maybe you
can change the macro itself to properly handle u64? I am thinking about
something similar to ilog2[1]:

( \
	(sizeof(n) <= 4) ?		\
	__rounddown_pow_of_two_u32(n) :	\
	__rounddown_pow_of_two_u64(n)	\
)

[1]:https://elixir.bootlin.com/linux/v6.19.8/source/include/linux/log2.h#L156-L164

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
