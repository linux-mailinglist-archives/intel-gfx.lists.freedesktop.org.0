Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NrwOft4vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EF32DDB73
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D36310EBB1;
	Fri, 20 Mar 2026 16:42:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="jtoB6G+F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A537C10EBB7;
 Fri, 20 Mar 2026 16:42:32 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id A9130C5668D;
 Fri, 20 Mar 2026 16:42:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 2F423600E0;
 Fri, 20 Mar 2026 16:42:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 8319810450CB4; Fri, 20 Mar 2026 17:42:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024949; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=yD2ZHkct5J8xohGZ34CV6pOkH44KEsHeRfSAPWnzwYA=;
 b=jtoB6G+Fgwkj/OnPlyl8+iXN5b7l2lST1hmVraa/BtxmwjoE4Gi0FEB0U3KVzoWoeZ0TIr
 lMlh/lNf/5sDXdRcMiVbJAwEi5DE8HOMTUIkVScJYWMPriHhQvYyQliuAkJcy4SFUCBUk5
 cbo371cQF3mavPXSfsk7ApMrBM0f2i5l81nLKhUj9J0WNr4AAfH7zSo5gzNFydu4Egzu3A
 N1Wii+XO+pYwhBvNz8Dpuy2nkDwLyqJWIm+hLrA28xnqXmuvW/n0l6Az2dEWER6AG1/O3M
 kGP7Q9R02hSnzhjCJPUlrvNtNkyulsVMOw+ii0j1TbSnn95IallIw3nrv2/siQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 32/65] dyndbg: Harden classmap and callsite validation
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
In-Reply-To: <20260313132103.2529746-33-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-33-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491454.6181.12972283720507136037.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1748;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=hTdO5+Y6+/USFcbbiltBlmx0KtNxG8aJ50xB5n8PCgQ=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjY1qIUZp91y9fbfkyLGBz3vHNetE6v2iKq2
 Uk8eg16GCeJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142BsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLAcA//bTUkPcGczgzsdOP+SW0gUCfJZJlQ9fe
 KXAIYqL/Jj/kfKABeXbwbpzHZKh/EhcJty4pZmizntgzBzJhFENeEzaAakufiFPRoISJOjlUZhN
 HUZnoTFYmi+gjt5Yh4CrA1WICmqzAonL1fkcrGLS9CQoOJy7A2MxjwPAKS271AYSwA868CGguUc
 q/OR2NNTSFH1A44/dNvlCiEheEAfbzY3ts5+gX67exvUYj01xzljY2HIY2e8/Muj+BzLuJP8p2j
 MMNF5i08xAnjhBBxmYO+ta9JCUByeZn2qFtotNql212YwZ4LhuxONaDpOib4ggB6ZR4pjAX/RA6
 WRYQZPME7SF74p9duCSqkbL6uvM1B7fBY/UUPK9fyo9093KlkU06YUa4fpWWUEBQ6brVhLa9eKd
 Yl4Ai4cwhRh9KdOqE7bDpTrouBeuOyVT38UGoLwOQy8Vt/YAcRNwQqUQOKTlmIKDFrH9LkVezLY
 D2lZbrhupfT/OiXo4jApVhcydijISMgYElMJon2EUdOs2bLxBVbOEIdyffICiUMe6D60KRyXg8o
 ekMn5c+6zS7B2qYT/kWeauoSjbdiACNWG4e2oPDpCRkI1AsiDkKGBxI1RYUVKRp7y9SyVtDx5WA
 qcv2iDNHuyyvjIZDho+nMHYI078H3t+Yr3rgDwKvrVAeOGz2ArPw=
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
X-Rspamd-Queue-Id: 98EF32DDB73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:57 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
> index 0d1245aefc69..28684cfc0937 100644
> --- a/include/linux/dynamic_debug.h
> +++ b/include/linux/dynamic_debug.h
> @@ -262,6 +262,8 @@ struct _ddebug_class_param {
>  
>  #define __DYNAMIC_DEBUG_CLASSMAP_USE(_var, _offset, _uname)		\
>  	extern struct _ddebug_class_map _var;				\
> +	static_assert((_offset) >= 0 && (_offset) < _DPRINTK_CLASS_DFLT, \
> +		      "classmap use offset must be in 0..62");		\

Can't you also check the offset+base?

>
> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> index 2083a8546460..635df6edb4cf 100644
> --- a/lib/dynamic_debug.c
> +++ b/lib/dynamic_debug.c
> @@ -1404,9 +1404,8 @@ static void ddebug_apply_class_users(const struct _ddebug_info *di)
>  	(__dst)->info._vec.len = __nc;					\
>  })
>  
> -static int __maybe_unused
> -ddebug_class_range_overlap(struct _ddebug_class_map *cm,
> -			   u64 *reserved_ids)
> +static int ddebug_class_range_overlap(struct _ddebug_class_map *cm,
> +				      u64 *reserved_ids)

I think you can remove the __maybe_unused earlier in the series (23/65
seems to use it).

> @@ -1454,10 +1471,33 @@ static int ddebug_add_module(struct _ddebug_info *di)
> [ ... skip 5 lines ... ]
> +	/* validate class map types and the per-module 0..62 class_id space */
> +	for_subvec(i, cm, &dt->info, maps) {
> +		if (cm->map_type > DD_CLASS_TYPE_LEVEL_NUM) {
> +			pr_err("module %s has unknown classmap type %d\n", dt->info.mod_name, cm->map_type);
> +			goto cleanup;
> +		}

I think this check could be inserted earlier.

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
