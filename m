Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GNhMCRV5vWkA+QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE21B2DDC41
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CEC610EBCE;
	Fri, 20 Mar 2026 16:42:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="daala/+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC6910EBCE
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:42:57 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 3F8251A2F1D;
 Fri, 20 Mar 2026 16:42:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 14BD6600E0;
 Fri, 20 Mar 2026 16:42:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 8AB3410450CB2; Fri, 20 Mar 2026 17:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024974; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=vuM93yFcK8Og2NuhifgfWuJmx39Au6OJxpQzxL1IK+s=;
 b=daala/+8SR3WoOhCloqhPcZsqeDmve0wpozYuMaFdefPnAvUMVVFwxJiTKAF1Y050nob0M
 AsnN1GBqPkft3oHbYfzVWtJ7vADF//djiXlCkirPtBzRHy2GScqRVpMwamoqdfQ4euMEvv
 JBoSnkcZxbxECssvtZ078KocjvVBVRSjCaPcrq6xgqcw52PriGQMkeAgRUUgj7R1ET+w9k
 pe25wHCzXU7W2/MplEwL1HiKK/nYe6y2xWaLxmgxdPK3uQ85ypChcP0n0gIU2mQ5+5IrND
 vV4tqemRwnEtu1Nf55KVsCI3MEHIHT4OeXzb5Ei8VRZfYWjLjLGfPoBfu9mdfg==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 47/65] drm-dyndbg: add DRM_CLASSMAP_USE to bochs
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
In-Reply-To: <20260313132103.2529746-48-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-48-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491463.6181.3427349753006208958.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=342;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=pxMqA0J3IBhgqs0DNeM6Q2nq4S9HaJWpGP5CYzt+3JI=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjZQVP1i8M/yNvo5nZOmnpTDEja87uAc67Uk
 O6D094DPuKJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab142RsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOK2jA//UIn3SphVsIpbo7V6E3Vk2ORGBdwbmlD
 aiLcaWxmLM/OQitt2Q+TW0qI556qSgLP27ffU88vpR8IhszeETf636Vgdwacu6rQmA469Zzrmbu
 tITLOa1OR0O5dTkF0t9JVTQOpLv/QhGNm1UgL2cCP1HFwAW4zo+IAO3yQX0TXCoRvsg4saLo9//
 9QT9YY7cc4koLL4fEwXiQmNMDmmLU3yWHhQPI7ZJrlGrorrzN77QOPJVICekL18KYB/MLbmdREh
 Gy6Qvm6SdXYU1fYaTc70lcBv8reuFTAz5A0aeIqF+IKiRQLp9YlM0Tmu4dEFBwa84/QrcqtZseW
 bu5MVtk5FNGRNorPBp0ruTtdG90Bh1SbJeqetRcryR4DaVP9mZYf+vl+k0X0FTCxmQfsCwLiD9f
 tEXQUWFd3aKQuP9SzQ6uqeEpQAlarbvTdgfqAyNhpqzBY3I/cqW9NoAVXgIH5C3AUM+dXhQpwXq
 Hef8tIJhz0GHygWPivjc2lb3OU+Wt/g59Rrt/7tto0cXc1NlSR4hNovIiAgIv9dqQpdxrJi9+ZW
 nkkztSsUyJin46/OgE4hFLDe+n64WvnVA5GvDlU3NvHyOq2yx9ud7iS+hVYOb0vWfMhcGRXL+J3
 PApxqUrtoA1pCJj3mJROkBHNgHbFtZ9xZLAf3KZYm5PgPQxYGBRY=
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
X-Rspamd-Queue-Id: EE21B2DDC41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:12 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> tiny/bochs has 5 DRM_UT_* debugs, make them controllable when
> CONFIG_DRM_USE_DYNAMIC_DEBUG=y by telling dyndbg that the module has
> class'd debugs.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
