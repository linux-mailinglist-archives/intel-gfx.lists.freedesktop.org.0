Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP0WHQp5vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4BE2DDBF5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C043B10EBC4;
	Fri, 20 Mar 2026 16:42:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="QBGi33PF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19F410EBC7;
 Fri, 20 Mar 2026 16:42:47 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id A45F01A2F12;
 Fri, 20 Mar 2026 16:42:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 7849D600E0;
 Fri, 20 Mar 2026 16:42:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id C8E9E10450CB2; Fri, 20 Mar 2026 17:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024965; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=D2eov9mYgoOzrdqvxhU1NeQE4IQQdBebEx/n/f8G0ME=;
 b=QBGi33PFaeySJZjofVkltE3FOtnyClXGNlUTbAongG5IFlHUyubUklxGvwt+qhccNaCXnd
 C/XrqMFGJ+xXH84I8AJAlKUnjcgXsc9OmsomvNEagi63cc7p6Yo9UJ0widhWKSs8lPgt8O
 ZvOkjUDHRLXRzqUOTWteo+oP6DIK8j1FvEr0S4Wfa2wj8wvKDv90hqihpqyMXih2twXJu1
 iFuyNQ/KnuE/J7XsP20H2xGZVqLZFAl2CP2p9UyXzXwp8hypgPMTyVO1DQVz3bXSeMZ1H4
 SDlI4hDk6TT1ematey90MIOWvDnmHO5kWba7GfGU5FF32ssE6TrdOQmdV1mlzQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 44/65] drm-dyndbg: add DRM_CLASSMAP_USE to Xe
 driver
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
In-Reply-To: <20260313132103.2529746-45-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-45-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491459.6181.310434310040242842.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=341;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=wkPeMfWFdMwsBgB9lnGrK7e21ulZjCPnOjdFb/W3iHU=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjZECJCyxwaADPwvoKLVgXSmGrbG/LHfkNEY
 OOLqtoJH9SJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142RsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLagw//Vow/v1/XrmcXv+zlbKHhvVk+B8Crvu5
 fRj5VwFXcHlCNIzMK96hsTYCOGpoTRn2gi3WfY2RIAKOR87MW20IcmiTwvlIl6tYs1iVijR9BRw
 BPXJVcYwiAIYEc2Ss5DmVOXAjhBbI0tEtIrJg/b5eAZ0ZilgNvz7VWi4leVrngtLtmm9SH2QXV9
 9l2PN5RhL5QePGKPCCI92s2dH3HLVEIxWZuj0WME9Edhasl79/4B+G0jTBh1cmgPHacbZjgVjV4
 ZkpfEhbUw+ZfisYf1SYsNxQE5/lbkUm0wyFlDm9l96fGDiwznT2IlHRuLNW8bvht3Pb5c/Ml4OB
 JVPkAkeGmozCyHqyQjT2+/N3HyQZA9WYkZ9Vr2NEf8UxqSosAvvgeHN2nB+htYW1HIzBNEl5YQF
 wXg8h8e+dGJhmfBobo3TORbZ3wQIizg7PFxxukEkXB/cCbOqKfVN50B3Iw9jSG5VjebJAvtv+n7
 h/q41NpF/pvHZFCk4LwwGkSU0nNEIJRhceH4vAc5hQaQCMJUbSz2i5vlRtGJ8+ZlmZPnIzStc3u
 HcYWIi+qAhuro1FM/CDstjLAHH56c6hb9gJGEhBNaS/LW0iu+oFisy9iIhsglf8LzB2MeD83hpJ
 uLxZTDzQVKQbMxyD8fOA/7CSHPx9cRMOZDFCKBRDpDySS8fFkjb4=
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
X-Rspamd-Queue-Id: 4B4BE2DDBF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:09 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> Invoke DRM_CLASSMAP_USE from xe_drm_client.c.  When built with
> CONFIG_DRM_USE_DYNAMIC_DEBUG=y, this tells dydnbg that Xe has
> drm.debug callsites.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
