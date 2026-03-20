Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFgBBN94vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26012DDA89
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F26210EB89;
	Fri, 20 Mar 2026 16:42:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="t6OfVK2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 457D910EB86
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:42:03 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 31E741A2F12;
 Fri, 20 Mar 2026 16:42:02 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 090E2600E0;
 Fri, 20 Mar 2026 16:42:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5969A10450CB2; Fri, 20 Mar 2026 17:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024920; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=44AF4bbjrYBBrPr1WLqpIIZ8N/FkWKpJDtl576ddRZc=;
 b=t6OfVK2qdr6LLeRYAnD0CbqtTkapiOa8Z6vgcNHdfTYRY7MOykoYrRkEUOhgYnXG4drcJZ
 fkvgN9/QKCDQwLCb96/qbXllRybr/JnxH2Da8h3Hq6kN9jhWdAuOtGgJnAO33tflYexruT
 heVRTxy1gew/efkTnYJAskebw1llKUqKQ84gh1nEK/6u2OX42tWCjUbk0m/NGom60AvEXO
 WEtpaFCLmbRPDOO4k3Ma0rd1UH5jSkvit37EB+T22ZhOREzHb1LhDemsUNJOk7zWcmk180
 WpkbQ68zIXs42aGu+xz4kXqDHdGBT5QZESCidT091cBX2g/d7Unrk7+2z1w5tw==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 22/65] dyndbg-API: replace DECLARE_DYNDBG_CLASSMAP
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
In-Reply-To: <20260313132103.2529746-23-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-23-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491440.6181.10370884123666440440.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1481;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=33zhYJFjZ6oOW3ObErBjPueURcxer5n64/AM2e3Z3+0=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjXAeS139Pn6dfFXt70/MiK4mhx9g1hktlr+
 gKFTUDy1UyJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOKaNw//S2cBr3uSG9mScz8L8MJGZwOohV95F0L
 hVYktJO+JeyTM35JI015tizstU7phXiAguLuXAyBERLfUpNWjk+TcQBnqmZsBpv912JT9qnFcnw
 Y0mrl41h/D47yFD9XlfEdUOovxp6DIi5oRrBii3Rka3eDk99z1yNlBKGFu+IXiiNKGkp0YEn5YU
 7N7PKwRc2EvNbM7+KQBkCrdRvVId+bySvsu7qGaLXfRwvrjsDNlJ091skBtYVpbvuWvmQ0pk1uE
 QNDUPMuGGtQ0NwKYZm1Dwp79BkJMhbLkHUPRLiLPdN+V07JMSrX2DNvOIkBjgu4fw9MvPWJjmXS
 9YYTU8Oh4KhlAvuaBo0vjfEI4/e7O5q/2ldPt+ahkggdAQ9kpnYIq5uolR03yv3jvLtTjcPh0+p
 b9XC3bixMUV4B4wlyKMPPxOBAmGGZpI7NSIom1SVjyIDDfyQgGGVHm9sE1Y5PW3YPJqsXBCIqP5
 mFojOSYhCn4GGI2ckzZiZsfkbsbQwRmpTszdkcgmYYqpXEPia0VHV8sTDRNIw0x9n1dKxPqemUa
 DXL2d2d8rVXOeyUB8cbHt/MZyNi3K4soWbUHxkmJlSqayDGkvdR2mAOR3LLJXQ4Y+k+pw0hWWQG
 FNVs1J4UeI5We+irzHIMvyYXgrBv0i2waeYpkDpA1+7lkmw1mNUE=
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
X-Rspamd-Queue-Id: B26012DDA89
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:47 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
> index 80160028461a..74ed18a038bd 100644
> --- a/include/linux/dynamic_debug.h
> +++ b/include/linux/dynamic_debug.h
> @@ -81,10 +84,18 @@ struct _ddebug_class_map {
>  	enum ddebug_class_map_type map_type;
>  };
>  
> +struct _ddebug_class_user {
> +	char *mod_name;
> +	struct _ddebug_class_map *map;
> +	const int offset;	/* user offset to re-number the used map */
> +};

Is it usefull at this point?

> @@ -137,6 +223,25 @@ struct _ddebug_class_param {
> [ ... skip 14 lines ... ]
> +	extern struct _ddebug_class_map _var;				\
> +	static struct _ddebug_class_user __aligned(8) __used		\
> +	__section("__dyndbg_class_users") _uname = {			\
> +		.mod_name = KBUILD_MODNAME,				\
> +		.map = &(_var),						\
> +		.offset = _offset					\

I think this offset is useless at this point, or did I miss something?

>
> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> index e8ffc2b5b330..66f4bfe39e89 100644
> --- a/lib/dynamic_debug.c
> +++ b/lib/dynamic_debug.c
> @@ -1190,6 +1292,22 @@ static void ddebug_attach_module_classes(struct ddebug_table *dt, struct _ddebug
> [ ... skip 13 lines ... ]
> +		return -EINVAL;
> +	}
> +	*reserved_ids |= range;
> +	return 0;
> +}
> +

Can you introduce this function when it is used?

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
