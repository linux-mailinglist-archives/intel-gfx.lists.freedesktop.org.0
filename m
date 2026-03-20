Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC6OLhF5vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EF22DDC23
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1220710EBCA;
	Fri, 20 Mar 2026 16:42:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="VfVvPUka";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A0910EBCC;
 Fri, 20 Mar 2026 16:42:54 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id A38234E4274C;
 Fri, 20 Mar 2026 16:42:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 7855A600E0;
 Fri, 20 Mar 2026 16:42:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5A3D110450CB6; Fri, 20 Mar 2026 17:42:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024972; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=Ng4JhdsTJJyshZU7Z8wG7ah3v/b7t8Ek/DzG/SwNHls=;
 b=VfVvPUka2Z6GE97Ejs5S/Zgot1NwEWyzSWCBWrZSo8+4KmfUV4QFCRDgCh1nU7gqF0gb2M
 IJLPK5iZKhpQlisg+hYC9Wpy6vcsdOcU34BPAu3eE6FkBWFgirSzMLO2wex2/4hMIGxMtm
 k7AeSqqxCBFOnK/MhI74wIPdlr8ph9IqxqzE4ul8DYhUFUs3D1JREUEVaJ6Xrzk4OpsD3c
 ffyl/0VyiT7bXIzdJRL/Hx5A82fkt1xrwGDYfKaJvU7smjEtAm85+hyuj28TojNZiuaXLS
 0B1XlLx5sgDALbjdxaqbUl7N2ieyky6y+C/r8PNk//PyBR0a4Hzo716NRxmueQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 46/65] drm-dyndbg: add DRM_CLASSMAP_USE to
 simpledrm
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
In-Reply-To: <20260313132103.2529746-47-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-47-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491462.6181.11857331396045294184.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=351;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=jRGHvGCSK73Yf22bn0ZMUkzfIexa3s85Q39fOenYGFE=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjZCQDTtNcfg9X2biz9bNBG1caPcGcLZ48mz
 ZrwfQChxC+JAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142RsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLX5w/+JAkpfQWOg4UH0cLGl0Ae/Av7CYRGxxb
 hWkw8ED3Q5BbhIBYvbR5LQbWABZZVDdZUwxdFi+ovzTwgl2gOLU+cHYYiYDrkwyH2x0/1n0HYS9
 zqb2lSbTxOiiqcYAPmjJifBgMWYIt/Cy1MyIb/6/lYkJ6YEh5RuMw3z9WrYHeB6k5gkN6/qEbU8
 d7hW+Lu2PHzOrJujarHIVlvvkdsfV8ZDKSuE5j6Ky+W+MzKbciY2hOKxSJw6MRh91xm5aHXR8ft
 eOvkukNwF+93mmJHVBOW+uUjduefn8o5zCb/kcZ37hVRYLXvx/vxrGIMvEuINiJhDGv6C8rrd9I
 CxrTaJp5krF5GuFDKVnhonVh96oNoTzIUjjETfdjmWA0OnNeERHd3jRFnf0KOGm1e5w/zwc26hk
 UybD7WGENj8bKUVah/LlKnCpI19HbR93BYlnZmOtiVzsUvfRUUlKlAo7dES68EATBOAScl+SzGS
 0JYateK5Wk3B4G6pidAy6YqoEEv2HMyDA5wEDv+ki7uwvyfPosCM0zfl3zf9qwdIJTYb3vZzHbS
 oQ4vTWx7lO7GWz0kpsJTTCVa7HOc6fvoVsQE+aS0WS19/z1h7wROp6mnZxFl/qJS/d+xXqqEzyh
 B5CFy8WaZddDlVnsjzQLt3COqlB8Lsa3dWgQvl/P3Jr62MG7pwKQ=
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
X-Rspamd-Queue-Id: 91EF22DDC23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:11 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> tiny/simpledrm has 3 DRM_UT_DRIVER debugs, make them controllable when
> CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
> class'd debugs.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
