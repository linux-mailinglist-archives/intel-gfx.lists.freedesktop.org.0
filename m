Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAb6EOt4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165602DDAEF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDBF10EB9D;
	Fri, 20 Mar 2026 16:42:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="yUs8Q+YW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ABFA10EB99;
 Fri, 20 Mar 2026 16:42:15 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 245E14E4274C;
 Fri, 20 Mar 2026 16:42:14 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id E7C29600E0;
 Fri, 20 Mar 2026 16:42:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 9E66010450CB5; Fri, 20 Mar 2026 17:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024932; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=S7QKYFkdGmt21Q5w/0Gy0s0gEip8hNwwF1SafTCqptQ=;
 b=yUs8Q+YWvn0s5Rfbz+8hfItCz5EOAYxfTBeYV7YCQrq4ZOKYwUjX92TxWgsrYq3bvsDYq8
 yGc8eZIZeCmkCt0Igms1ZIJu/tsQADqVFac/0TAgsScGhi6/XGaQ8WFPPuZ4G/lJEyfbez
 UYQBkDHyzduJZbFwW283Zz9gn8VED6DY3rFeYgyWaWVGnCpjRtKntDicjAjroSZPSIjrDV
 7qXCkbXpHVs8KrKtk50XnT1pHDUuoOXeat1PgKoOc+ELwFIsZcfVeEAg7r4KFWY8ojsXPU
 mQecgPXkMjA03HfAzO+tO8sQyHJU1soN9whazgTyUG0oI6143WaxSL36/9Ox2Q==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 25/65] dyndbg-test: change do_prints testpoint to
 accept a loopct
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
In-Reply-To: <20260313132103.2529746-26-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-26-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491445.6181.17476474646230121112.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=564;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=D8Z6vQ8f3S7TR6K6EECvygVJXXr3o/f6eREwPfBXuQc=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjYCc0ma02xdM3ReceM8XIBs+YHio2nhctfn
 sJT7wd7c++JAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142BsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOIxiBAAhvLs6RL4qKRZHF2hqjsfT8XJJGk7HEI
 uaD3mgqpekgVCgsCucjnAU1xxvtHz/RVun1qojFPYm43fHl8qGX1bUH0TvYznNm9P8dz/ByZqCz
 67TwNLdHz3ohxeIOenziTaD0SkhVXO+lXltB6JBR0sQOQFwWZX/AlibWTHjLa09JTj2T83VCQGH
 OcYii8o4QbNiE7/Rm+eQwhIU2Y9LfaZ+wQSCdE4i1sB1A2VLc0ReWnfz/ryJgfoyrldcxU0PLvK
 TEan5Oi/0oaydKQyC6/Spuss+SBSsZateSJLPXRsIO34dxU76Fs6PK3QUWiJTXcDsAxjKFBi9sV
 LGDhvbZ2igtrZ7lBNNx5M6fIi5ig7RXLD5m2ptmQiJUVEmIK0F+us3T4WsSpmlZUPAwp7eZ/Vv0
 E2iDvg0LkECqYag1Zwh4o81gT6cnEJp/kwzrWyae1UrQZxpHSUB50NaJyDI8Ywp1iCmybJwy93M
 qQoJQnfzqbALZ5LtdYoUobZFnol1jLA3XxDUlR8SfwqXafELezceHGQcWPagm3FmW3SzvCciaSi
 sPeXmWML2HQTNJkZ7duWUMuY7rMgEAyGUbgPtId9kPUKHAvQ4kRh4tVH0yFbOAIB9WsSb3LAvKX
 MoNd3JmmpLLQwzHNp8HXE3e0qOl+MNUwSTOgJ4EaEi+dCJHy/7YM=
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
X-Rspamd-Queue-Id: 165602DDAEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:50 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> echo 1000 > /sys/module/test_dynamic_debug/parameters/do_prints
> 
> This allows its use as a scriptable load generator, to generate
> dynamic-prefix-emits for flag combinations vs undecorated messages.
> This will make it easy to assess the cost of the prefixing.
> 
> Reading the ./do_prints node also prints messages (once) to the-log.

s/the-log/the logs/ ?

>

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
