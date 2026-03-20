Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qONOIOV4vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C1A2DDACB
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3B110EB95;
	Fri, 20 Mar 2026 16:42:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="OA020VLJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFBD10EB92;
 Fri, 20 Mar 2026 16:42:08 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 395971A2F12;
 Fri, 20 Mar 2026 16:42:07 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 0EF0C600E0;
 Fri, 20 Mar 2026 16:42:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 64CAF10450CB3; Fri, 20 Mar 2026 17:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024925; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=h0QNJQG/3WKaW/52wkWw1slRz5hMExRYxI7slzuC4zU=;
 b=OA020VLJPWu1W2b/712CD1EZ19/F9/EaaVPAGeenQVMsKK9oRhuVh0H/LUwauKWakbYCUX
 QdIL1pOr6pokGBLYwgoIF8/H676NEjtmWbP+MSP2A7dERIpqf2U/p3oK9ivw05KnU17Epl
 CX58/pFy6bMCGY3V7s4XWzVPcMuAginbaw9k8v3g/WxhRJncNgZmcyD6bnnY8k7E5m7XiZ
 GM5dbdfmnlYYYU4GSoW797IF1P9CT7/js7HBVrmcRjRkLiBHPsSn2+d0OndO66LEyEw4/8
 AvWzAcdIDHXvE5jGlWk/fVkCriXxXH8gQWcKtYNXaYeFZ/mIJBmnp+03pJPTYQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 23/65] dyndbg: detect class_id reservation
 conflicts
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
In-Reply-To: <20260313132103.2529746-24-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-24-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491441.6181.263040777501322141.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=543;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=CIvJSImYuPllnYr3tEXciufivs3QI+eKhL46huALdGA=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjX0wB5jba+wC+2OEGFItK0t1XrP1tjHsBUa
 ZXF4ZSTliKJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOJj+BAAsP4Y9Jd5uZ1TqT06FkC0QdY6mMG9LIZ
 t/l8Nf2l15ziPbQ7lfaMcfkar0/S7aTNOGLVfo2wTkWALmw2vv8YtGezZSz5DEefMOgPMC9UzsA
 yzkqVh6f5Q5QZjIkOXbQebBsKsx4abr+4WRgq/J44k3hBLpxgxn4bb4mXtRasLSVbh6zczY0ZCc
 GaDyr2VJSCO5sWTrzHNQ6olbQHYsfllBHEDfgGCk3G6PFFJGI1tVGDI09uKkhtauHnAy+/MjpS7
 bxbQA7glCYCgCjUA26KE9DuN+ypYQwrgwgzc3hy0RtMKPXUgznS9Di/MSG2aB+ShbrvhU7/sctN
 yOGoc93rTVJs4NP8ocZSnGCevD6EswJ+FtVPUeNUj1RsqGjZHQYX3xm24aKm0pxcMajvvTxWa+v
 woWGTLopwQsYaISODEmm8P7epTZ9ZgD26Ob8l5oArQUXIuaWvSaQglhccnHwxlHky1jxzUYrzan
 aSrTBqnLLXcNAY3waFWOvpNyMhFLFrWtc5Jd4yzqu2N6bf1hJCKGr9Fqj+YHyH+X2bLI5/4XcE5
 zd1RhrbSogf6iQr6agamvhoZwPXFUgYEyxeoreQlxk9RKVRNUkEC4XyKd67dQTeYzxJFwV2glG7
 jUBmDqjD04JCrhsVJTTXs3J+B45HivNsoSDD0SwLa4ndTGkyiHDs=
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
X-Rspamd-Queue-Id: 55C1A2DDACB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:48 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> If a module _DEFINEs 2 or more classmaps, it must devise them to share
> the per-module 0..62 class-id space; ie their respective base,+length
> reservations cannot overlap.
> 
> To detect conflicts at modprobe, add ddebug_class_range_overlap(),
> call it from ddebug_add_module(), and WARN and return -EINVAL when
> they're detected.
> 
> [...]

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
