Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNG4CNh4vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:42:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09B92DDA31
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FDE10EB66;
	Fri, 20 Mar 2026 16:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="DADgRnDB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4083410EB76;
 Fri, 20 Mar 2026 16:41:57 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-03.galae.net (Postfix) with ESMTPS id 2C9084E4273A;
 Fri, 20 Mar 2026 16:41:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 0222F600E0;
 Fri, 20 Mar 2026 16:41:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 8949F10450CB2; Fri, 20 Mar 2026 17:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024914; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=flcUBo2gDv14/Dcbspe4hLZsUmRO6oCu2ydk55bztLY=;
 b=DADgRnDBI6Turp8B6+93Gz0ZVgV7esIK+f1hXBAQMFWer7+2uG3x5PEyKDlE5KgQuk4eNb
 mlaehVZC/mZzh5inwm+AJNKdXdZR9jGSCI/UPIi80HgNVpUe9Ha8IHfSNkeg19afQ/oiWT
 jbpXHabAfPhZWUL0KjryKfToEeIjQkep/0edLvbVVVeAlcKvaYPIK4rBDdgtqVjL6TG0r6
 cdpHcW+sgRV7UbyIAaBTsCSH4NevL4fhVHBpPor1s0nF0RLxk1T6EJ9dZ0oopH7QoyGI7+
 18kJwf4JRSVf25Nxnat/t5k8xHIE5KO3OXaxCckMS9JNuB3O1SsjWAq3ssPzdg==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 19/65] dyndbg-API: remove
 DD_CLASS_TYPE_(DISJOINT|LEVEL)_NAMES and code
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
In-Reply-To: <20260313132103.2529746-20-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-20-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491434.6181.11890337294367473264.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=429;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=1pgdbshmE/Cq0nlfaNfGi8txJNcbpdrUoKURG+brXsk=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjXquxHUtG4nlEXHRTG+cLbsIxIFMqa+75fx
 hTqQFFfEA6JAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141xsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOL3NxAApjJLmyYJYDlzy0eWBTTuXZkRgqSa5Mo
 IZNgfziDrXMnhcxPkRZpA6gT1Ac+y5Qk3PLwGnuiATk6VrlNyEx5xDv0R3+ZyOCMSZ4igQ53g8o
 oeWWXp9uJ0Cm7se7I4EAHVnrLZcb+pGv617pgP/7yc51icSEQ6qpFhcxRYCu18BnGr40aIZeDOb
 FjLKmS5jwPsosbU6sBjHi2d+ChEy2u0yrzNndzOD3B1oH1OYW6qPXUzLoWeOz9RHs5wANf/aY+a
 SHJQwf93DOJemuUSsV9x2RRkJUOpB27/Ns9xuMOdCAZVC6FDfik2dipLEvkIJmy7rNnHyLX/sLn
 8S6Ob6TShbbimsb0amH+joj1h3sd1vgH8vCu/oplroSVW9M1ZKmDNqoUkj3GNpt3ZHBEQ8gciTe
 VoBjN8JUeaA4JUA05cNhLkkPAprKc0MKpvy7D/EL/zwaQVZ07VK+GoAOzx3YIQrt8iCrKk+Hj3n
 ABrae9kASiebqXVdoZfRhHM73a1JW30yMUv3gI4Y4Q0lTn4WeiUmfnhiZfOvwbtzYmSrSsvUS4I
 P0RYZxKwT4bBG5Kc6vWTC8n0qEm7GypNoOfI/8FzjV1ujYc/Hv2BkA0COiP2ij/p2MI0SOJaIi9
 rBgQpEi3Bi2VH5v2jO88o5oZ1xnAb3/99CQ565k3Swr+mXVso0xY=
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
X-Rspamd-Queue-Id: E09B92DDA31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:44 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> Remove the DD_CLASS_TYPE_*_NAMES classmap types and code.
> 
> These 2 classmap types accept class names at the PARAM interface, for
> example:
> 
>   echo +DRM_UT_CORE,-DRM_UT_KMS > /sys/module/drm/parameters/debug_names
> 
> [...]

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
