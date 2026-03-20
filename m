Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IFsKdp4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499BF2DDA40
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A5F10EB7E;
	Fri, 20 Mar 2026 16:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="ocSjgAMt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E954410EB6E;
 Fri, 20 Mar 2026 16:41:50 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id CE4994E4274D;
 Fri, 20 Mar 2026 16:41:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id A2585600E0;
 Fri, 20 Mar 2026 16:41:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 4862810450CB4; Fri, 20 Mar 2026 17:41:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024908; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=laMgpJfQHZokOk75NFMqDMaRUchD5XtOL8eloeuh3pE=;
 b=ocSjgAMtajZIgJWEqQboZcvie/xROZvh/v4jNLPmV0gPayP14l7x0WV0pNLINiTMblH3E5
 MWIdD8GFuXR4CnZkbFfGTTHz08tNadd61iS4KLhlv4aKpjfcrL3rmtsj6CJYyPfeAphc3y
 nrtxW6uo4uEAYguf2nQrfQ/YKV2izxFtp9kAWwOuFfHmgJ13RweqTk9o0LymaI+SJnT7dU
 1iDCOJitiFRKM/R0mJFaAXa1yxSpBt+Julefhz+VgS8TO9ftLXZbMjG9vakl2h+u2Phxk3
 YA+Q38beS2vbeZ4VlauPgGyhjz+x1svGW9a4Nyn1bk2NWABkAunoGVhsCWMu6A==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 16/65] dyndbg,module: make proper substructs in
 _ddebug_info
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
In-Reply-To: <20260313132103.2529746-17-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-17-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491432.6181.1032037030316089534.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1686;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=/GdooZcaEPyXq57IbxjdjNFltvhwvy1JmB1hYJJo8As=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjXStmzVi3vZAfXqYQ8twIpokaekDkfMxrx/
 MmUidtsamiJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLLSg/+MvXdk+PLt9a64e350jI8s+D/RuWhtus
 O8NEMDQaVBUvehxQsJRGtOczmElXKYqTi5hHhF7p9dIF3IqIpWsv9L3s7YWzsF0ZdfuR36qSZJ9
 zxMHJhLYHIsuLearyDB77vqZnel9+mpIjn8MipbudaKSGbYDOFg9b2gP+DzD1ppNycsq72B0e+1
 ec/2gSrtQlaCo96hPCnApRddXxcczcthe71ErR6WHZIslSVWMS5fsFewi1peymxnChaBJ9PcZs8
 9N19k0fZrS0+cRYtVdrNzvHSJnTP5KNvt3/5XTFbFptGeLutgdIRbt8hBXpuFd6yIW4KHgnRigC
 8aL3OEAVO179Qx94QjaSfQNQM+6NoZZQ5a2dLlZTffkcXRbG4WnaE4L24bO60Sxg/QEGBHB0o4q
 J79zikGOok5TcjpAP+BcNDnkZRk7XykCbZELc3pi0lMYpdZ69Qs6YcwBh0udB8371t1MMFScbSP
 fI52LgkK/MlTAXl+B/1pKAw1oO3CqlC3RJCe0J3i/Ue6haJK0ad8I19+/q7SotkEYxTsfaLj2co
 txxXWqpgTzEuF9hRl0xHD+77Q818XP+fBkTXJqSmpjTm3IdrbzjGwC9n/JnHQ90yH5wdraNcPdy
 vB+hKQ55JEtTgNUsyVVyqoHTWg1aVFzERyVvK0Ttq2Syu6ciACsY=
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
X-Rspamd-Queue-Id: 499BF2DDA40
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:41 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
> index 9fd36339db52..b84518b70a6e 100644
> --- a/include/linux/dynamic_debug.h
> +++ b/include/linux/dynamic_debug.h
> @@ -83,30 +83,42 @@ enum class_map_type {
> [ ... skip 3 lines ... ]
> -struct ddebug_class_map {
> -	struct module *mod;
> -	const char *mod_name;	/* needed for builtins */
> +struct _ddebug_class_map {
> +	struct module *mod;	/* NULL for builtins */
> +	const char *mod_name;

mod_name is not needed for builtins anymore?

> @@ -125,8 +137,8 @@ struct ddebug_class_param {
>   */
>  #define DECLARE_DYNDBG_CLASSMAP(_var, _maptype, _base, ...)		\
>  	static const char *_var##_classnames[] = { __VA_ARGS__ };	\
> -	static struct ddebug_class_map __aligned(8) __used		\
> -		__section("__dyndbg_classes") _var = {			\
> +	static struct _ddebug_class_map __aligned(8) __used		\

Maybe a dumb question: in a previous patch you added ALIGN(8) for the same
__section, both are really needed?

>
> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> index cb7bfe8729a7..f47fdb769d7a 100644
> --- a/lib/dynamic_debug.c
> +++ b/lib/dynamic_debug.c
> @@ -1254,18 +1255,18 @@ static void ddebug_attach_module_classes(struct ddebug_table *dt, struct _ddebug
> [ ... skip 13 lines ... ]
>  		}
>  	}
>  	if (nc) {
> -		dt->num_classes = nc;
> +		dt->info.maps.len = nc;
>  		vpr_info("module:%s attached %d classes\n", dt->mod_name, nc);

IIUC, maps and classes are the same thing, can you do a s/classes/maps/ in
the vpr_*?

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
